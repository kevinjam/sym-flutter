import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/entities/medication.dart';
import '../../../presentation/providers/medication_provider.dart';

class AddMedicationModal extends ConsumerStatefulWidget {
  const AddMedicationModal({super.key});

  @override
  ConsumerState<AddMedicationModal> createState() => _AddMedicationModalState();
}

class _AddMedicationModalState extends ConsumerState<AddMedicationModal> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _dosageController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _instructionsController = TextEditingController();
  final _notesController = TextEditingController();
  
  String _selectedCategory = 'Other';
  String _selectedDosageForm = 'tablet';
  String _selectedPriority = 'medium';
  List<String> _scheduleTimes = [];
  List<String> _linkedSymptoms = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _dosageController.dispose();
    _descriptionController.dispose();
    _instructionsController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _addScheduleTime() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((time) {
      if (time != null) {
        final timeString = '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
        if (!_scheduleTimes.contains(timeString)) {
          setState(() {
            _scheduleTimes.add(timeString);
          });
        }
      }
    });
  }

  void _removeScheduleTime(String time) {
    setState(() {
      _scheduleTimes.remove(time);
    });
  }

  void _addSymptom() {
    final symptomController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add Symptom'),
        content: TextField(
          controller: symptomController,
          decoration: const InputDecoration(
            hintText: 'Enter symptom name',
            labelText: 'Symptom',
          ),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              final value = symptomController.text.trim();
              if (value.isNotEmpty && !_linkedSymptoms.contains(value)) {
                setState(() {
                  _linkedSymptoms.add(value);
                });
                Navigator.of(context).pop();
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  void _removeSymptom(String symptom) {
    setState(() {
      _linkedSymptoms.remove(symptom);
    });
  }

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) return;
    if (_scheduleTimes.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please add at least one schedule time')),
      );
      return;
    }

    final request = CreateMedicationRequest(
      name: _nameController.text.trim(),
      dosage: _dosageController.text.trim(),
      scheduleTimes: _scheduleTimes,
      linkedSymptoms: _linkedSymptoms,
      description: _descriptionController.text.trim().isEmpty ? null : _descriptionController.text.trim(),
      category: _selectedCategory,
      dosageForm: _selectedDosageForm,
      priority: _selectedPriority,
    );

    await ref.read(medicationProvider.notifier).createMedication(request);
    
    if (mounted) {
      final error = ref.read(medicationProvider).error;
      if (error != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error), backgroundColor: Colors.red),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Medication added successfully!'), backgroundColor: Colors.green),
        );
        Navigator.of(context).pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(medicationProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Medication'),
        actions: [
          TextButton(
            onPressed: state.isLoading ? null : _submitForm,
            child: state.isLoading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Text('Save'),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Basic Information
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Basic Information',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        labelText: 'Medication Name',
                        hintText: 'e.g., Aspirin, Ibuprofen',
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter medication name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _dosageController,
                      decoration: const InputDecoration(
                        labelText: 'Dosage',
                        hintText: 'e.g., 500mg, 1 tablet',
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter dosage';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _descriptionController,
                      decoration: const InputDecoration(
                        labelText: 'Description (optional)',
                        hintText: 'Brief description of the medication',
                      ),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Category and Form
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Category & Form',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: _selectedCategory,
                      decoration: const InputDecoration(
                        labelText: 'Category',
                      ),
                      items: const [
                        DropdownMenuItem(value: 'Blood Pressure', child: Text('Blood Pressure')),
                        DropdownMenuItem(value: 'Diabetes', child: Text('Diabetes')),
                        DropdownMenuItem(value: 'Heart Disease', child: Text('Heart Disease')),
                        DropdownMenuItem(value: 'Pain Management', child: Text('Pain Management')),
                        DropdownMenuItem(value: 'Mental Health', child: Text('Mental Health')),
                        DropdownMenuItem(value: 'Respiratory', child: Text('Respiratory')),
                        DropdownMenuItem(value: 'Gastrointestinal', child: Text('Gastrointestinal')),
                        DropdownMenuItem(value: 'Antibiotics', child: Text('Antibiotics')),
                        DropdownMenuItem(value: 'Vitamins', child: Text('Vitamins')),
                        DropdownMenuItem(value: 'Other', child: Text('Other')),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedCategory = value!;
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: _selectedDosageForm,
                      decoration: const InputDecoration(
                        labelText: 'Dosage Form',
                      ),
                      items: const [
                        DropdownMenuItem(value: 'tablet', child: Text('Tablet')),
                        DropdownMenuItem(value: 'capsule', child: Text('Capsule')),
                        DropdownMenuItem(value: 'liquid', child: Text('Liquid')),
                        DropdownMenuItem(value: 'injection', child: Text('Injection')),
                        DropdownMenuItem(value: 'inhaler', child: Text('Inhaler')),
                        DropdownMenuItem(value: 'cream', child: Text('Cream')),
                        DropdownMenuItem(value: 'other', child: Text('Other')),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedDosageForm = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Schedule
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Schedule',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FilledButton.icon(
                          onPressed: _addScheduleTime,
                          icon: const Icon(Icons.add),
                          label: const Text('Add Time'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    if (_scheduleTimes.isEmpty)
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            'No schedule times added yet',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      )
                    else
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: _scheduleTimes.map((time) {
                          return Chip(
                            label: Text(time),
                            deleteIcon: const Icon(Icons.close, size: 18),
                            onDeleted: () => _removeScheduleTime(time),
                          );
                        }).toList(),
                      ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Linked Symptoms
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Linked Symptoms (Optional)',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FilledButton.icon(
                          onPressed: _addSymptom,
                          icon: const Icon(Icons.add),
                          label: const Text('Add'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    if (_linkedSymptoms.isEmpty)
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            'No symptoms linked yet',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      )
                    else
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: _linkedSymptoms.map((symptom) {
                          return Chip(
                            label: Text(symptom),
                            deleteIcon: const Icon(Icons.close, size: 18),
                            onDeleted: () => _removeSymptom(symptom),
                          );
                        }).toList(),
                      ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Additional Settings
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Additional Settings',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: _selectedPriority,
                      decoration: const InputDecoration(
                        labelText: 'Priority',
                      ),
                      items: const [
                        DropdownMenuItem(value: 'low', child: Text('Low')),
                        DropdownMenuItem(value: 'medium', child: Text('Medium')),
                        DropdownMenuItem(value: 'high', child: Text('High')),
                        DropdownMenuItem(value: 'critical', child: Text('Critical')),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedPriority = value!;
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _instructionsController,
                      decoration: const InputDecoration(
                        labelText: 'Instructions (optional)',
                        hintText: 'e.g., Take with food, Avoid dairy...',
                      ),
                      maxLines: 2,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _notesController,
                      decoration: const InputDecoration(
                        labelText: 'Notes (optional)',
                        hintText: 'Additional notes about this medication...',
                      ),
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
