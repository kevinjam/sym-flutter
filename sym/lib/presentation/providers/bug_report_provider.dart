import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/errors/result.dart';
import '../../domain/entities/bug_report.dart';
import '../../domain/repositories/bug_report_repository.dart';
import '../../data/providers/bug_report_providers.dart';

// Bug Report State
class BugReportState {
  final bool isLoading;
  final List<BugReportCategory> categories;
  final List<SeverityLevel> severityLevels;
  final List<BugReport> reports;
  final String? error;
  final bool reportSubmitted;

  const BugReportState({
    this.isLoading = false,
    this.categories = const [],
    this.severityLevels = const [],
    this.reports = const [],
    this.error,
    this.reportSubmitted = false,
  });

  BugReportState copyWith({
    bool? isLoading,
    List<BugReportCategory>? categories,
    List<SeverityLevel>? severityLevels,
    List<BugReport>? reports,
    String? error,
    bool? reportSubmitted,
  }) {
    return BugReportState(
      isLoading: isLoading ?? this.isLoading,
      categories: categories ?? this.categories,
      severityLevels: severityLevels ?? this.severityLevels,
      reports: reports ?? this.reports,
      error: error,
      reportSubmitted: reportSubmitted ?? this.reportSubmitted,
    );
  }
}

// Bug Report Notifier
class BugReportNotifier extends StateNotifier<BugReportState> {
  final BugReportRepository _bugReportRepository;

  BugReportNotifier(this._bugReportRepository) : super(const BugReportState()) {
    loadCategories();
    loadSeverityLevels();
  }

  Future<void> loadCategories() async {
    state = state.copyWith(isLoading: true, error: null);
    
    final result = await _bugReportRepository.getBugReportCategories();
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (categories) => state = state.copyWith(
        isLoading: false,
        categories: categories,
        error: null,
      ),
    );
  }

  Future<void> loadSeverityLevels() async {
    final result = await _bugReportRepository.getSeverityLevels();
    
    result.fold(
      (failure) => state = state.copyWith(
        error: failure.toString(),
      ),
      (severityLevels) => state = state.copyWith(
        severityLevels: severityLevels,
        error: null,
      ),
    );
  }

  Future<void> submitBugReport({
    required String category,
    required String severity,
    required String title,
    required String description,
    String? stepsToReproduce,
    String? expectedBehavior,
    String? actualBehavior,
    required DeviceInfo deviceInfo,
  }) async {
    state = state.copyWith(isLoading: true, error: null, reportSubmitted: false);
    
    final request = CreateBugReportRequest(
      category: category,
      severity: severity,
      title: title,
      description: description,
      stepsToReproduce: stepsToReproduce,
      expectedBehavior: expectedBehavior,
      actualBehavior: actualBehavior,
      deviceInfo: deviceInfo,
    );
    
    final result = await _bugReportRepository.createBugReport(request);
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
        reportSubmitted: false,
      ),
      (response) => state = state.copyWith(
        isLoading: false,
        error: null,
        reportSubmitted: true,
      ),
    );
  }

  Future<void> loadUserReports() async {
    state = state.copyWith(isLoading: true, error: null);
    
    final result = await _bugReportRepository.getUserBugReports();
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (reports) => state = state.copyWith(
        isLoading: false,
        reports: reports,
        error: null,
      ),
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  void clearReportSubmitted() {
    state = state.copyWith(reportSubmitted: false);
  }
}

// Providers
final bugReportProvider = StateNotifierProvider<BugReportNotifier, BugReportState>((ref) {
  final repository = ref.watch(bugReportRepositoryProvider);
  return BugReportNotifier(repository);
});
