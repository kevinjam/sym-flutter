import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/errors/failures.dart';
import '../../domain/entities/health_report.dart';
import '../../domain/repositories/health_report_repository.dart';
import '../../data/providers/health_report_providers.dart';

class HealthReportState {
  final bool isLoading;
  final bool isCreating;
  final bool isUpdating;
  final bool isDeleting;
  final List<HealthReport> reports;
  final List<ReportType> reportTypes;
  final HealthSummary? healthSummary;
  final HealthReport? selectedReport;
  final String? error;
  final bool hasMore;
  final int currentPage;
  final String? selectedReportType;
  final String? selectedStartDate;
  final String? selectedEndDate;

  const HealthReportState({
    this.isLoading = false,
    this.isCreating = false,
    this.isUpdating = false,
    this.isDeleting = false,
    this.reports = const [],
    this.reportTypes = const [],
    this.healthSummary,
    this.selectedReport,
    this.error,
    this.hasMore = false,
    this.currentPage = 1,
    this.selectedReportType,
    this.selectedStartDate,
    this.selectedEndDate,
  });

  HealthReportState copyWith({
    bool? isLoading,
    bool? isCreating,
    bool? isUpdating,
    bool? isDeleting,
    List<HealthReport>? reports,
    List<ReportType>? reportTypes,
    HealthSummary? healthSummary,
    HealthReport? selectedReport,
    String? error,
    bool? hasMore,
    int? currentPage,
    String? selectedReportType,
    String? selectedStartDate,
    String? selectedEndDate,
  }) {
    return HealthReportState(
      isLoading: isLoading ?? this.isLoading,
      isCreating: isCreating ?? this.isCreating,
      isUpdating: isUpdating ?? this.isUpdating,
      isDeleting: isDeleting ?? this.isDeleting,
      reports: reports ?? this.reports,
      reportTypes: reportTypes ?? this.reportTypes,
      healthSummary: healthSummary ?? this.healthSummary,
      selectedReport: selectedReport ?? this.selectedReport,
      error: error ?? this.error,
      hasMore: hasMore ?? this.hasMore,
      currentPage: currentPage ?? this.currentPage,
      selectedReportType: selectedReportType ?? this.selectedReportType,
      selectedStartDate: selectedStartDate ?? this.selectedStartDate,
      selectedEndDate: selectedEndDate ?? this.selectedEndDate,
    );
  }
}

class HealthReportNotifier extends StateNotifier<HealthReportState> {
  final HealthReportRepository _repository;

  HealthReportNotifier(this._repository) : super(const HealthReportState());

  // Load health summary
  Future<void> loadHealthSummary(String patientId) async {
    state = state.copyWith(isLoading: true, error: null);
    
    final result = await _repository.getHealthSummary(patientId);
    
    result.fold(
      (failure) {
        state = state.copyWith(
          isLoading: false,
          error: _getErrorMessage(failure),
        );
      },
      (summary) {
        state = state.copyWith(
          isLoading: false,
          healthSummary: summary,
          error: null,
        );
      },
    );
  }

  // Load health reports
  Future<void> loadHealthReports({
    required String patientId,
    bool refresh = false,
    int? page,
    int? limit,
    String? reportType,
    String? startDate,
    String? endDate,
    String? sortBy,
    String? sortOrder,
  }) async {
    if (refresh) {
      state = state.copyWith(
        isLoading: true,
        error: null,
        reports: [],
        currentPage: 1,
        selectedReportType: reportType ?? state.selectedReportType,
        selectedStartDate: startDate ?? state.selectedStartDate,
        selectedEndDate: endDate ?? state.selectedEndDate,
      );
    } else {
      state = state.copyWith(isLoading: true, error: null);
    }

    final result = await _repository.getPatientHealthReports(
      patientId: patientId,
      page: page ?? state.currentPage,
      limit: limit ?? 10,
      reportType: reportType ?? state.selectedReportType,
      startDate: startDate ?? state.selectedStartDate,
      endDate: endDate ?? state.selectedEndDate,
      sortBy: sortBy ?? 'reportDate',
      sortOrder: sortOrder ?? 'desc',
    );

    result.fold(
      (failure) {
        state = state.copyWith(
          isLoading: false,
          error: _getErrorMessage(failure),
        );
      },
      (response) {
        final newReports = refresh 
            ? response.reports 
            : [...state.reports, ...response.reports];
            
        state = state.copyWith(
          isLoading: false,
          reports: newReports,
          hasMore: response.pagination.hasNext,
          currentPage: response.pagination.currentPage,
          error: null,
        );
      },
    );
  }

  // Load more reports (pagination)
  Future<void> loadMoreReports(String patientId) async {
    if (state.isLoading || !state.hasMore) return;

    await loadHealthReports(
      patientId: patientId,
      page: state.currentPage + 1,
    );
  }

  // Load report types
  Future<void> loadReportTypes() async {
    state = state.copyWith(isLoading: true, error: null);
    
    final result = await _repository.getReportTypes();
    
    result.fold(
      (failure) {
        state = state.copyWith(
          isLoading: false,
          error: _getErrorMessage(failure),
        );
      },
      (types) {
        state = state.copyWith(
          isLoading: false,
          reportTypes: types,
          error: null,
        );
      },
    );
  }

  // Get specific health report
  Future<void> getHealthReport(String reportId) async {
    state = state.copyWith(isLoading: true, error: null);
    
    final result = await _repository.getHealthReport(reportId);
    
    result.fold(
      (failure) {
        state = state.copyWith(
          isLoading: false,
          error: _getErrorMessage(failure),
        );
      },
      (report) {
        state = state.copyWith(
          isLoading: false,
          selectedReport: report,
          error: null,
        );
      },
    );
  }

  // Create health report
  Future<void> createHealthReport(CreateHealthReportRequest request) async {
    state = state.copyWith(isCreating: true, error: null);
    
    final result = await _repository.createHealthReport(request);
    
    result.fold(
      (failure) {
        state = state.copyWith(
          isCreating: false,
          error: _getErrorMessage(failure),
        );
      },
      (report) {
        state = state.copyWith(
          isCreating: false,
          reports: [report, ...state.reports],
          error: null,
        );
      },
    );
  }

  // Update health report
  Future<void> updateHealthReport(String reportId, UpdateHealthReportRequest request) async {
    state = state.copyWith(isUpdating: true, error: null);
    
    final result = await _repository.updateHealthReport(reportId, request);
    
    result.fold(
      (failure) {
        state = state.copyWith(
          isUpdating: false,
          error: _getErrorMessage(failure),
        );
      },
      (updatedReport) {
        final updatedReports = state.reports.map<HealthReport>((report) {
          return report.id == reportId ? updatedReport : report;
        }).toList();
        
        state = state.copyWith(
          isUpdating: false,
          reports: updatedReports,
          selectedReport: state.selectedReport?.id == reportId ? updatedReport : state.selectedReport,
          error: null,
        );
      },
    );
  }

  // Delete health report
  Future<void> deleteHealthReport(String reportId) async {
    state = state.copyWith(isDeleting: true, error: null);
    
    final result = await _repository.deleteHealthReport(reportId);
    
    result.fold(
      (failure) {
        state = state.copyWith(
          isDeleting: false,
          error: _getErrorMessage(failure),
        );
      },
      (_) {
        state = state.copyWith(
          isDeleting: false,
          reports: state.reports.where((report) => report.id != reportId).toList(),
          selectedReport: state.selectedReport?.id == reportId ? null : state.selectedReport,
          error: null,
        );
      },
    );
  }

  // Filter reports by type
  void filterByReportType(String? reportType) {
    state = state.copyWith(selectedReportType: reportType);
  }

  // Filter reports by date range
  void filterByDateRange(String? startDate, String? endDate) {
    state = state.copyWith(
      selectedStartDate: startDate,
      selectedEndDate: endDate,
    );
  }

  // Clear filters
  void clearFilters() {
    state = state.copyWith(
      selectedReportType: null,
      selectedStartDate: null,
      selectedEndDate: null,
    );
  }

  // Clear error
  void clearError() {
    state = state.copyWith(error: null);
  }

  // Clear selected report
  void clearSelectedReport() {
    state = state.copyWith(selectedReport: null);
  }

  String _getErrorMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Server error. Please try again.';
      case NetworkFailure:
        return 'Network error. Please check your connection.';
      case CacheFailure:
        return 'Cache error. Please try again.';
      default:
        return 'An unexpected error occurred.';
    }
  }
}

// Provider
final healthReportProvider = StateNotifierProvider<HealthReportNotifier, HealthReportState>((ref) {
  final repository = ref.watch(healthReportRepositoryProvider);
  return HealthReportNotifier(repository);
});
