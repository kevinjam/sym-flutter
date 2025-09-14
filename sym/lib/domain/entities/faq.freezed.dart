// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FAQ _$FAQFromJson(Map<String, dynamic> json) {
  return _FAQ.fromJson(json);
}

/// @nodoc
mixin _$FAQ {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this FAQ to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FAQ
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FAQCopyWith<FAQ> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQCopyWith<$Res> {
  factory $FAQCopyWith(FAQ value, $Res Function(FAQ) then) =
      _$FAQCopyWithImpl<$Res, FAQ>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String question,
      String answer,
      String category,
      int priority,
      bool isActive,
      List<String> tags,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$FAQCopyWithImpl<$Res, $Val extends FAQ> implements $FAQCopyWith<$Res> {
  _$FAQCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FAQ
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answer = null,
    Object? category = null,
    Object? priority = null,
    Object? isActive = null,
    Object? tags = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FAQImplCopyWith<$Res> implements $FAQCopyWith<$Res> {
  factory _$$FAQImplCopyWith(_$FAQImpl value, $Res Function(_$FAQImpl) then) =
      __$$FAQImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String question,
      String answer,
      String category,
      int priority,
      bool isActive,
      List<String> tags,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$FAQImplCopyWithImpl<$Res> extends _$FAQCopyWithImpl<$Res, _$FAQImpl>
    implements _$$FAQImplCopyWith<$Res> {
  __$$FAQImplCopyWithImpl(_$FAQImpl _value, $Res Function(_$FAQImpl) _then)
      : super(_value, _then);

  /// Create a copy of FAQ
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answer = null,
    Object? category = null,
    Object? priority = null,
    Object? isActive = null,
    Object? tags = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$FAQImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FAQImpl implements _FAQ {
  const _$FAQImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.question,
      required this.answer,
      required this.category,
      this.priority = 0,
      this.isActive = true,
      final List<String> tags = const [],
      required this.createdAt,
      required this.updatedAt})
      : _tags = tags;

  factory _$FAQImpl.fromJson(Map<String, dynamic> json) =>
      _$$FAQImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String question;
  @override
  final String answer;
  @override
  final String category;
  @override
  @JsonKey()
  final int priority;
  @override
  @JsonKey()
  final bool isActive;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'FAQ(id: $id, question: $question, answer: $answer, category: $category, priority: $priority, isActive: $isActive, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FAQImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      question,
      answer,
      category,
      priority,
      isActive,
      const DeepCollectionEquality().hash(_tags),
      createdAt,
      updatedAt);

  /// Create a copy of FAQ
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FAQImplCopyWith<_$FAQImpl> get copyWith =>
      __$$FAQImplCopyWithImpl<_$FAQImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FAQImplToJson(
      this,
    );
  }
}

abstract class _FAQ implements FAQ {
  const factory _FAQ(
      {@JsonKey(name: '_id') required final String id,
      required final String question,
      required final String answer,
      required final String category,
      final int priority,
      final bool isActive,
      final List<String> tags,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$FAQImpl;

  factory _FAQ.fromJson(Map<String, dynamic> json) = _$FAQImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get question;
  @override
  String get answer;
  @override
  String get category;
  @override
  int get priority;
  @override
  bool get isActive;
  @override
  List<String> get tags;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of FAQ
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FAQImplCopyWith<_$FAQImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FAQCategory _$FAQCategoryFromJson(Map<String, dynamic> json) {
  return _FAQCategory.fromJson(json);
}

/// @nodoc
mixin _$FAQCategory {
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this FAQCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FAQCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FAQCategoryCopyWith<FAQCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQCategoryCopyWith<$Res> {
  factory $FAQCategoryCopyWith(
          FAQCategory value, $Res Function(FAQCategory) then) =
      _$FAQCategoryCopyWithImpl<$Res, FAQCategory>;
  @useResult
  $Res call({String name, String icon, int count});
}

/// @nodoc
class _$FAQCategoryCopyWithImpl<$Res, $Val extends FAQCategory>
    implements $FAQCategoryCopyWith<$Res> {
  _$FAQCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FAQCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FAQCategoryImplCopyWith<$Res>
    implements $FAQCategoryCopyWith<$Res> {
  factory _$$FAQCategoryImplCopyWith(
          _$FAQCategoryImpl value, $Res Function(_$FAQCategoryImpl) then) =
      __$$FAQCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String icon, int count});
}

/// @nodoc
class __$$FAQCategoryImplCopyWithImpl<$Res>
    extends _$FAQCategoryCopyWithImpl<$Res, _$FAQCategoryImpl>
    implements _$$FAQCategoryImplCopyWith<$Res> {
  __$$FAQCategoryImplCopyWithImpl(
      _$FAQCategoryImpl _value, $Res Function(_$FAQCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FAQCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = null,
    Object? count = null,
  }) {
    return _then(_$FAQCategoryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FAQCategoryImpl implements _FAQCategory {
  const _$FAQCategoryImpl(
      {required this.name, required this.icon, this.count = 0});

  factory _$FAQCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$FAQCategoryImplFromJson(json);

  @override
  final String name;
  @override
  final String icon;
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'FAQCategory(name: $name, icon: $icon, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FAQCategoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, icon, count);

  /// Create a copy of FAQCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FAQCategoryImplCopyWith<_$FAQCategoryImpl> get copyWith =>
      __$$FAQCategoryImplCopyWithImpl<_$FAQCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FAQCategoryImplToJson(
      this,
    );
  }
}

abstract class _FAQCategory implements FAQCategory {
  const factory _FAQCategory(
      {required final String name,
      required final String icon,
      final int count}) = _$FAQCategoryImpl;

  factory _FAQCategory.fromJson(Map<String, dynamic> json) =
      _$FAQCategoryImpl.fromJson;

  @override
  String get name;
  @override
  String get icon;
  @override
  int get count;

  /// Create a copy of FAQCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FAQCategoryImplCopyWith<_$FAQCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FAQResponse _$FAQResponseFromJson(Map<String, dynamic> json) {
  return _FAQResponse.fromJson(json);
}

/// @nodoc
mixin _$FAQResponse {
  Map<String, List<FAQ>> get faqs => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;

  /// Serializes this FAQResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FAQResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FAQResponseCopyWith<FAQResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQResponseCopyWith<$Res> {
  factory $FAQResponseCopyWith(
          FAQResponse value, $Res Function(FAQResponse) then) =
      _$FAQResponseCopyWithImpl<$Res, FAQResponse>;
  @useResult
  $Res call({Map<String, List<FAQ>> faqs, int total, List<String> categories});
}

/// @nodoc
class _$FAQResponseCopyWithImpl<$Res, $Val extends FAQResponse>
    implements $FAQResponseCopyWith<$Res> {
  _$FAQResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FAQResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faqs = null,
    Object? total = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      faqs: null == faqs
          ? _value.faqs
          : faqs // ignore: cast_nullable_to_non_nullable
              as Map<String, List<FAQ>>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FAQResponseImplCopyWith<$Res>
    implements $FAQResponseCopyWith<$Res> {
  factory _$$FAQResponseImplCopyWith(
          _$FAQResponseImpl value, $Res Function(_$FAQResponseImpl) then) =
      __$$FAQResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<FAQ>> faqs, int total, List<String> categories});
}

/// @nodoc
class __$$FAQResponseImplCopyWithImpl<$Res>
    extends _$FAQResponseCopyWithImpl<$Res, _$FAQResponseImpl>
    implements _$$FAQResponseImplCopyWith<$Res> {
  __$$FAQResponseImplCopyWithImpl(
      _$FAQResponseImpl _value, $Res Function(_$FAQResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FAQResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faqs = null,
    Object? total = null,
    Object? categories = null,
  }) {
    return _then(_$FAQResponseImpl(
      faqs: null == faqs
          ? _value._faqs
          : faqs // ignore: cast_nullable_to_non_nullable
              as Map<String, List<FAQ>>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FAQResponseImpl implements _FAQResponse {
  const _$FAQResponseImpl(
      {required final Map<String, List<FAQ>> faqs,
      required this.total,
      required final List<String> categories})
      : _faqs = faqs,
        _categories = categories;

  factory _$FAQResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FAQResponseImplFromJson(json);

  final Map<String, List<FAQ>> _faqs;
  @override
  Map<String, List<FAQ>> get faqs {
    if (_faqs is EqualUnmodifiableMapView) return _faqs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_faqs);
  }

  @override
  final int total;
  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'FAQResponse(faqs: $faqs, total: $total, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FAQResponseImpl &&
            const DeepCollectionEquality().equals(other._faqs, _faqs) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_faqs),
      total,
      const DeepCollectionEquality().hash(_categories));

  /// Create a copy of FAQResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FAQResponseImplCopyWith<_$FAQResponseImpl> get copyWith =>
      __$$FAQResponseImplCopyWithImpl<_$FAQResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FAQResponseImplToJson(
      this,
    );
  }
}

abstract class _FAQResponse implements FAQResponse {
  const factory _FAQResponse(
      {required final Map<String, List<FAQ>> faqs,
      required final int total,
      required final List<String> categories}) = _$FAQResponseImpl;

  factory _FAQResponse.fromJson(Map<String, dynamic> json) =
      _$FAQResponseImpl.fromJson;

  @override
  Map<String, List<FAQ>> get faqs;
  @override
  int get total;
  @override
  List<String> get categories;

  /// Create a copy of FAQResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FAQResponseImplCopyWith<_$FAQResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FAQCategoriesResponse _$FAQCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _FAQCategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$FAQCategoriesResponse {
  Map<String, FAQCategory> get categories => throw _privateConstructorUsedError;

  /// Serializes this FAQCategoriesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FAQCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FAQCategoriesResponseCopyWith<FAQCategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQCategoriesResponseCopyWith<$Res> {
  factory $FAQCategoriesResponseCopyWith(FAQCategoriesResponse value,
          $Res Function(FAQCategoriesResponse) then) =
      _$FAQCategoriesResponseCopyWithImpl<$Res, FAQCategoriesResponse>;
  @useResult
  $Res call({Map<String, FAQCategory> categories});
}

/// @nodoc
class _$FAQCategoriesResponseCopyWithImpl<$Res,
        $Val extends FAQCategoriesResponse>
    implements $FAQCategoriesResponseCopyWith<$Res> {
  _$FAQCategoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FAQCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<String, FAQCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FAQCategoriesResponseImplCopyWith<$Res>
    implements $FAQCategoriesResponseCopyWith<$Res> {
  factory _$$FAQCategoriesResponseImplCopyWith(
          _$FAQCategoriesResponseImpl value,
          $Res Function(_$FAQCategoriesResponseImpl) then) =
      __$$FAQCategoriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, FAQCategory> categories});
}

/// @nodoc
class __$$FAQCategoriesResponseImplCopyWithImpl<$Res>
    extends _$FAQCategoriesResponseCopyWithImpl<$Res,
        _$FAQCategoriesResponseImpl>
    implements _$$FAQCategoriesResponseImplCopyWith<$Res> {
  __$$FAQCategoriesResponseImplCopyWithImpl(_$FAQCategoriesResponseImpl _value,
      $Res Function(_$FAQCategoriesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FAQCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$FAQCategoriesResponseImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<String, FAQCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FAQCategoriesResponseImpl implements _FAQCategoriesResponse {
  const _$FAQCategoriesResponseImpl(
      {required final Map<String, FAQCategory> categories})
      : _categories = categories;

  factory _$FAQCategoriesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FAQCategoriesResponseImplFromJson(json);

  final Map<String, FAQCategory> _categories;
  @override
  Map<String, FAQCategory> get categories {
    if (_categories is EqualUnmodifiableMapView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categories);
  }

  @override
  String toString() {
    return 'FAQCategoriesResponse(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FAQCategoriesResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of FAQCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FAQCategoriesResponseImplCopyWith<_$FAQCategoriesResponseImpl>
      get copyWith => __$$FAQCategoriesResponseImplCopyWithImpl<
          _$FAQCategoriesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FAQCategoriesResponseImplToJson(
      this,
    );
  }
}

abstract class _FAQCategoriesResponse implements FAQCategoriesResponse {
  const factory _FAQCategoriesResponse(
          {required final Map<String, FAQCategory> categories}) =
      _$FAQCategoriesResponseImpl;

  factory _FAQCategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$FAQCategoriesResponseImpl.fromJson;

  @override
  Map<String, FAQCategory> get categories;

  /// Create a copy of FAQCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FAQCategoriesResponseImplCopyWith<_$FAQCategoriesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FAQApiResponse _$FAQApiResponseFromJson(Map<String, dynamic> json) {
  return _FAQApiResponse.fromJson(json);
}

/// @nodoc
mixin _$FAQApiResponse {
  bool get success => throw _privateConstructorUsedError;
  FAQResponse get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this FAQApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FAQApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FAQApiResponseCopyWith<FAQApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQApiResponseCopyWith<$Res> {
  factory $FAQApiResponseCopyWith(
          FAQApiResponse value, $Res Function(FAQApiResponse) then) =
      _$FAQApiResponseCopyWithImpl<$Res, FAQApiResponse>;
  @useResult
  $Res call({bool success, FAQResponse data, String? message});

  $FAQResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$FAQApiResponseCopyWithImpl<$Res, $Val extends FAQApiResponse>
    implements $FAQApiResponseCopyWith<$Res> {
  _$FAQApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FAQApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FAQResponse,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of FAQApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FAQResponseCopyWith<$Res> get data {
    return $FAQResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FAQApiResponseImplCopyWith<$Res>
    implements $FAQApiResponseCopyWith<$Res> {
  factory _$$FAQApiResponseImplCopyWith(_$FAQApiResponseImpl value,
          $Res Function(_$FAQApiResponseImpl) then) =
      __$$FAQApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, FAQResponse data, String? message});

  @override
  $FAQResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$FAQApiResponseImplCopyWithImpl<$Res>
    extends _$FAQApiResponseCopyWithImpl<$Res, _$FAQApiResponseImpl>
    implements _$$FAQApiResponseImplCopyWith<$Res> {
  __$$FAQApiResponseImplCopyWithImpl(
      _$FAQApiResponseImpl _value, $Res Function(_$FAQApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FAQApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_$FAQApiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FAQResponse,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FAQApiResponseImpl implements _FAQApiResponse {
  const _$FAQApiResponseImpl(
      {required this.success, required this.data, this.message});

  factory _$FAQApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FAQApiResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final FAQResponse data;
  @override
  final String? message;

  @override
  String toString() {
    return 'FAQApiResponse(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FAQApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  /// Create a copy of FAQApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FAQApiResponseImplCopyWith<_$FAQApiResponseImpl> get copyWith =>
      __$$FAQApiResponseImplCopyWithImpl<_$FAQApiResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FAQApiResponseImplToJson(
      this,
    );
  }
}

abstract class _FAQApiResponse implements FAQApiResponse {
  const factory _FAQApiResponse(
      {required final bool success,
      required final FAQResponse data,
      final String? message}) = _$FAQApiResponseImpl;

  factory _FAQApiResponse.fromJson(Map<String, dynamic> json) =
      _$FAQApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  FAQResponse get data;
  @override
  String? get message;

  /// Create a copy of FAQApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FAQApiResponseImplCopyWith<_$FAQApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FAQCategoriesApiResponse _$FAQCategoriesApiResponseFromJson(
    Map<String, dynamic> json) {
  return _FAQCategoriesApiResponse.fromJson(json);
}

/// @nodoc
mixin _$FAQCategoriesApiResponse {
  bool get success => throw _privateConstructorUsedError;
  FAQCategoriesResponse get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this FAQCategoriesApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FAQCategoriesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FAQCategoriesApiResponseCopyWith<FAQCategoriesApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQCategoriesApiResponseCopyWith<$Res> {
  factory $FAQCategoriesApiResponseCopyWith(FAQCategoriesApiResponse value,
          $Res Function(FAQCategoriesApiResponse) then) =
      _$FAQCategoriesApiResponseCopyWithImpl<$Res, FAQCategoriesApiResponse>;
  @useResult
  $Res call({bool success, FAQCategoriesResponse data, String? message});

  $FAQCategoriesResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$FAQCategoriesApiResponseCopyWithImpl<$Res,
        $Val extends FAQCategoriesApiResponse>
    implements $FAQCategoriesApiResponseCopyWith<$Res> {
  _$FAQCategoriesApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FAQCategoriesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FAQCategoriesResponse,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of FAQCategoriesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FAQCategoriesResponseCopyWith<$Res> get data {
    return $FAQCategoriesResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FAQCategoriesApiResponseImplCopyWith<$Res>
    implements $FAQCategoriesApiResponseCopyWith<$Res> {
  factory _$$FAQCategoriesApiResponseImplCopyWith(
          _$FAQCategoriesApiResponseImpl value,
          $Res Function(_$FAQCategoriesApiResponseImpl) then) =
      __$$FAQCategoriesApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, FAQCategoriesResponse data, String? message});

  @override
  $FAQCategoriesResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$FAQCategoriesApiResponseImplCopyWithImpl<$Res>
    extends _$FAQCategoriesApiResponseCopyWithImpl<$Res,
        _$FAQCategoriesApiResponseImpl>
    implements _$$FAQCategoriesApiResponseImplCopyWith<$Res> {
  __$$FAQCategoriesApiResponseImplCopyWithImpl(
      _$FAQCategoriesApiResponseImpl _value,
      $Res Function(_$FAQCategoriesApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FAQCategoriesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_$FAQCategoriesApiResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FAQCategoriesResponse,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FAQCategoriesApiResponseImpl implements _FAQCategoriesApiResponse {
  const _$FAQCategoriesApiResponseImpl(
      {required this.success, required this.data, this.message});

  factory _$FAQCategoriesApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FAQCategoriesApiResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final FAQCategoriesResponse data;
  @override
  final String? message;

  @override
  String toString() {
    return 'FAQCategoriesApiResponse(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FAQCategoriesApiResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  /// Create a copy of FAQCategoriesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FAQCategoriesApiResponseImplCopyWith<_$FAQCategoriesApiResponseImpl>
      get copyWith => __$$FAQCategoriesApiResponseImplCopyWithImpl<
          _$FAQCategoriesApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FAQCategoriesApiResponseImplToJson(
      this,
    );
  }
}

abstract class _FAQCategoriesApiResponse implements FAQCategoriesApiResponse {
  const factory _FAQCategoriesApiResponse(
      {required final bool success,
      required final FAQCategoriesResponse data,
      final String? message}) = _$FAQCategoriesApiResponseImpl;

  factory _FAQCategoriesApiResponse.fromJson(Map<String, dynamic> json) =
      _$FAQCategoriesApiResponseImpl.fromJson;

  @override
  bool get success;
  @override
  FAQCategoriesResponse get data;
  @override
  String? get message;

  /// Create a copy of FAQCategoriesApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FAQCategoriesApiResponseImplCopyWith<_$FAQCategoriesApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
