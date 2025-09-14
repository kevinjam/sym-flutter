import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/errors/result.dart';
import '../../domain/entities/faq.dart';
import '../../domain/repositories/faq_repository.dart';
import '../../data/providers/faq_providers.dart';

// FAQ State
class FAQState {
  final bool isLoading;
  final Map<String, List<FAQ>> faqs;
  final Map<String, FAQCategory> categories;
  final String? error;
  final String? selectedCategory;
  final String? searchQuery;

  const FAQState({
    this.isLoading = false,
    this.faqs = const {},
    this.categories = const {},
    this.error,
    this.selectedCategory,
    this.searchQuery,
  });

  FAQState copyWith({
    bool? isLoading,
    Map<String, List<FAQ>>? faqs,
    Map<String, FAQCategory>? categories,
    String? error,
    String? selectedCategory,
    String? searchQuery,
  }) {
    return FAQState(
      isLoading: isLoading ?? this.isLoading,
      faqs: faqs ?? this.faqs,
      categories: categories ?? this.categories,
      error: error,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }
}

// FAQ Notifier
class FAQNotifier extends StateNotifier<FAQState> {
  final FAQRepository _faqRepository;

  FAQNotifier(this._faqRepository) : super(const FAQState()) {
    loadFAQs();
    loadCategories();
  }

  Future<void> loadFAQs({String? category, String? search}) async {
    state = state.copyWith(isLoading: true, error: null);
    
    final result = await _faqRepository.getFAQs(
      category: category,
      search: search,
    );
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (faqResponse) => state = state.copyWith(
        isLoading: false,
        faqs: faqResponse.faqs,
        selectedCategory: category,
        searchQuery: search,
        error: null,
      ),
    );
  }

  Future<void> loadCategories() async {
    final result = await _faqRepository.getCategories();
    
    result.fold(
      (failure) => state = state.copyWith(
        error: failure.toString(),
      ),
      (categoriesResponse) => state = state.copyWith(
        categories: categoriesResponse.categories,
        error: null,
      ),
    );
  }

  void selectCategory(String? category) {
    state = state.copyWith(selectedCategory: category);
    loadFAQs(category: category, search: state.searchQuery);
  }

  void searchFAQs(String? query) {
    state = state.copyWith(searchQuery: query);
    loadFAQs(category: state.selectedCategory, search: query);
  }

  void clearSearch() {
    state = state.copyWith(searchQuery: null);
    loadFAQs(category: state.selectedCategory);
  }

  void clearFilters() {
    state = state.copyWith(selectedCategory: null, searchQuery: null);
    loadFAQs();
  }
}

// Providers
final faqProvider = StateNotifierProvider<FAQNotifier, FAQState>((ref) {
  final repository = ref.watch(faqRepositoryProvider);
  return FAQNotifier(repository);
});
