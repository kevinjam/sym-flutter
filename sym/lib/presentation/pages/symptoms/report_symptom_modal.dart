import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/patient_symptom_provider.dart';
import '../../providers/medication_provider.dart';

class ReportSymptomModal extends ConsumerStatefulWidget {
  const ReportSymptomModal({super.key});

  @override
  ConsumerState<ReportSymptomModal> createState() => _ReportSymptomModalState();
}

class _ReportSymptomModalState extends ConsumerState<ReportSymptomModal> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  String _selectedSeverity = 'moderate';
  String? _selectedCategory;
  String? _selectedDuration;
  String? _selectedMedicationId;

  final List<String> _severityOptions = ['mild', 'moderate', 'severe'];
  final List<String> _categoryOptions = [
    'gastrointestinal',
    'cardiovascular',
    'respiratory',
    'neurological',
    'dermatological',
    'musculoskeletal',
    'psychological',
    'other'
  ];
  final List<String> _durationOptions = [
    'minutes',
    'hours',
    'days',
    'weeks',
    'months'
  ];

  @override
  void initState() {
    super.initState();
    // Load medications when modal opens
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadMedications();
    });
  }

  Future<void> _loadMedications() async {
    // Load medications from the same provider used in Medications tab
    await ref.read(medicationProvider.notifier).loadMedications();
    
    final medicationState = ref.read(medicationProvider);
    
    if (medicationState.medications.isNotEmpty) {
      setState(() {
        _availableMedications = medicationState.medications.map((medication) {
          final medicationName = medication.name;
          final dosage = medication.dosage;
          final displayName = '$medicationName ($dosage)';
          return {
            'id': medication.id,
            'name': displayName,
          };
        }).toList();
      });
    } else {
      // Fallback to empty list if no medications found
      setState(() {
        _availableMedications = [];
      });
    }
  }

  List<Map<String, String>> _availableMedications = [];

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      await ref.read(patientSymptomProvider.notifier).reportSymptom(
        name: _nameController.text.trim(),
        description: _descriptionController.text.trim().isEmpty 
            ? null 
            : _descriptionController.text.trim(),
        severity: _selectedSeverity,
        category: _selectedCategory,
        duration: _selectedDuration,
        patientMedicationId: null, // Set to null since we're using regular medication IDs
      );

      if (mounted) {
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Symptom reported successfully'),
            backgroundColor: Colors.green,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final symptomState = ref.watch(patientSymptomProvider);
    final medicationState = ref.watch(medicationProvider);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    
    // Debug: Print medication state
    print('Medication State - Loading: ${medicationState.isLoading}');
    print('Medication State - Error: ${medicationState.error}');
    print('Medication State - Medications count: ${medicationState.medications.length}');
    if (medicationState.medications.isNotEmpty) {
      print('First medication: ${medicationState.medications.first.id}');
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Report Symptom'),
        actions: [
          if (symptomState.error != null)
            IconButton(
              icon: const Icon(Icons.error, color: Colors.red),
              onPressed: () {
                ref.read(patientSymptomProvider.notifier).clearError();
              },
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              // Symptom Name
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Symptom Name *',
                  hintText: 'e.g., Headache, Nausea, Fatigue',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a symptom name';
                  }
                  if (value.trim().length < 2) {
                    return 'Symptom name must be at least 2 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Related Medication dropdown
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Related Medication (Optional)',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.grey[800]!.withOpacity(0.3),
                            Colors.grey[900]!.withOpacity(0.3),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.grey[600]!.withOpacity(0.3),
                          width: 1,
                        ),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: _selectedMedicationId,
                          hint: Text(
                            _availableMedications.isEmpty
                              ? 'Loading medications...'
                              : 'Select medication',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 16,
                            ),
                          ),
                          dropdownColor: Colors.grey[800],
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey[400],
                          ),
                          isExpanded: true,
                          items: _availableMedications.map((medication) {
                            return DropdownMenuItem<String>(
                              value: medication['id'],
                              child: Text(
                                medication['name']!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedMedicationId = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Description
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Description (Optional)',
                  hintText: 'Describe your symptoms in detail',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
                maxLength: 500,
              ),
              const SizedBox(height: 16),

              // Severity
              Container(
                decoration: BoxDecoration(
                  color: isDark ? const Color(0xFF1A1A1A) : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isDark ? const Color(0xFF333333) : Colors.grey.shade300,
                  ),
                ),
                child: DropdownButtonFormField<String>(
                  value: _selectedSeverity,
                  decoration: InputDecoration(
                    labelText: 'Severity *',
                    labelStyle: TextStyle(
                      color: isDark ? Colors.white70 : Colors.grey.shade700,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    prefixIcon: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.orange.withOpacity(0.8),
                            Colors.red.withOpacity(0.6),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.warning,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  dropdownColor: isDark ? const Color(0xFF1A1A1A) : Colors.white,
                  style: TextStyle(
                    color: isDark ? Colors.white : Colors.black87,
                    fontSize: 16,
                  ),
                items: _severityOptions.map((severity) {
                  return DropdownMenuItem(
                    value: severity,
                    child: Text(severity.capitalize()),
                  );
                }).toList(),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _selectedSeverity = value;
                      });
                    }
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select severity';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 16),

              // Category
              Container(
                decoration: BoxDecoration(
                  color: isDark ? const Color(0xFF1A1A1A) : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isDark ? const Color(0xFF333333) : Colors.grey.shade300,
                  ),
                ),
                child: DropdownButtonFormField<String>(
                  value: _selectedCategory,
                  decoration: InputDecoration(
                    labelText: 'Category (Optional)',
                    labelStyle: TextStyle(
                      color: isDark ? Colors.white70 : Colors.grey.shade700,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    prefixIcon: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue.withOpacity(0.8),
                            Colors.purple.withOpacity(0.6),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.category,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  dropdownColor: isDark ? const Color(0xFF1A1A1A) : Colors.white,
                  style: TextStyle(
                    color: isDark ? Colors.white : Colors.black87,
                    fontSize: 16,
                  ),
                items: [
                  const DropdownMenuItem<String>(
                    value: null,
                    child: Text('Select category (optional)'),
                  ),
                  ..._categoryOptions.map((category) {
                    return DropdownMenuItem(
                      value: category,
                      child: Text(category.capitalize()),
                    );
                  }).toList(),
                ],
                  onChanged: (value) {
                    setState(() {
                      _selectedCategory = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 16),

              // Duration
              Container(
                decoration: BoxDecoration(
                  color: isDark ? const Color(0xFF1A1A1A) : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isDark ? const Color(0xFF333333) : Colors.grey.shade300,
                  ),
                ),
                child: DropdownButtonFormField<String>(
                  value: _selectedDuration,
                  decoration: InputDecoration(
                    labelText: 'Duration (Optional)',
                    labelStyle: TextStyle(
                      color: isDark ? Colors.white70 : Colors.grey.shade700,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    prefixIcon: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.green.withOpacity(0.8),
                            Colors.teal.withOpacity(0.6),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.schedule,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  dropdownColor: isDark ? const Color(0xFF1A1A1A) : Colors.white,
                  style: TextStyle(
                    color: isDark ? Colors.white : Colors.black87,
                    fontSize: 16,
                  ),
                items: [
                  const DropdownMenuItem<String>(
                    value: null,
                    child: Text('Select duration (optional)'),
                  ),
                  ..._durationOptions.map((duration) {
                    return DropdownMenuItem(
                      value: duration,
                      child: Text(duration.capitalize()),
                    );
                  }).toList(),
                ],
                  onChanged: (value) {
                    setState(() {
                      _selectedDuration = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 24),

              // Error Display
              if (symptomState.error != null)
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    border: Border.all(color: Colors.red.shade200),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    symptomState.error!,
                    style: TextStyle(color: Colors.red.shade700),
                  ),
                ),

              const SizedBox(height: 24),

              // Submit Button
              Container(
                height: 56,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      theme.primaryColor,
                      theme.primaryColor.withOpacity(0.8),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: theme.primaryColor.withOpacity(0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: symptomState.isLoading ? null : _submitForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: symptomState.isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        )
                      : const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_circle_outline,
                              color: Colors.white,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Report Symptom',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                ),
              ),
              const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
