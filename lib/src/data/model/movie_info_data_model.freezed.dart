// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieInfoDataModel _$MovieInfoDataModelFromJson(Map<String, dynamic> json) {
  return _MovieInfoDataModel.fromJson(json);
}

/// @nodoc
class _$MovieInfoDataModelTearOff {
  const _$MovieInfoDataModelTearOff();

  _MovieInfoDataModel call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'belongs_to_collection') CollectionDataModel? collection,
      int? budget,
      List<GenreDataModel>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: 'imdb_id') String? imdbId,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'release_date') String? releaseDate,
      int? revenue,
      int? runtime,
      String? tatus,
      String? tagline,
      String? title,
      bool? video,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount,
      @JsonKey(name: 'production_companies') List<CompanyDataModel>? companies,
      @JsonKey(name: 'production_countries') List<CountryDataModel>? countries,
      @JsonKey(name: 'spoken_languages') List<LanguageDataModel>? languages}) {
    return _MovieInfoDataModel(
      adult: adult,
      backdropPath: backdropPath,
      collection: collection,
      budget: budget,
      genres: genres,
      homepage: homepage,
      id: id,
      imdbId: imdbId,
      originalLanguage: originalLanguage,
      originalTitle: originalTitle,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      releaseDate: releaseDate,
      revenue: revenue,
      runtime: runtime,
      tatus: tatus,
      tagline: tagline,
      title: title,
      video: video,
      voteAverage: voteAverage,
      voteCount: voteCount,
      companies: companies,
      countries: countries,
      languages: languages,
    );
  }

  MovieInfoDataModel fromJson(Map<String, Object?> json) {
    return MovieInfoDataModel.fromJson(json);
  }
}

/// @nodoc
const $MovieInfoDataModel = _$MovieInfoDataModelTearOff();

/// @nodoc
mixin _$MovieInfoDataModel {
  bool? get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'belongs_to_collection')
  CollectionDataModel? get collection => throw _privateConstructorUsedError;
  int? get budget => throw _privateConstructorUsedError;
  List<GenreDataModel>? get genres => throw _privateConstructorUsedError;
  String? get homepage => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'imdb_id')
  String? get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  int? get revenue => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  String? get tatus => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'production_companies')
  List<CompanyDataModel>? get companies => throw _privateConstructorUsedError;
  @JsonKey(name: 'production_countries')
  List<CountryDataModel>? get countries => throw _privateConstructorUsedError;
  @JsonKey(name: 'spoken_languages')
  List<LanguageDataModel>? get languages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieInfoDataModelCopyWith<MovieInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieInfoDataModelCopyWith<$Res> {
  factory $MovieInfoDataModelCopyWith(
          MovieInfoDataModel value, $Res Function(MovieInfoDataModel) then) =
      _$MovieInfoDataModelCopyWithImpl<$Res>;
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'belongs_to_collection') CollectionDataModel? collection,
      int? budget,
      List<GenreDataModel>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: 'imdb_id') String? imdbId,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'release_date') String? releaseDate,
      int? revenue,
      int? runtime,
      String? tatus,
      String? tagline,
      String? title,
      bool? video,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount,
      @JsonKey(name: 'production_companies') List<CompanyDataModel>? companies,
      @JsonKey(name: 'production_countries') List<CountryDataModel>? countries,
      @JsonKey(name: 'spoken_languages') List<LanguageDataModel>? languages});

  $CollectionDataModelCopyWith<$Res>? get collection;
}

/// @nodoc
class _$MovieInfoDataModelCopyWithImpl<$Res>
    implements $MovieInfoDataModelCopyWith<$Res> {
  _$MovieInfoDataModelCopyWithImpl(this._value, this._then);

  final MovieInfoDataModel _value;
  // ignore: unused_field
  final $Res Function(MovieInfoDataModel) _then;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? collection = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? tatus = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? companies = freezed,
    Object? countries = freezed,
    Object? languages = freezed,
  }) {
    return _then(_value.copyWith(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      collection: collection == freezed
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as CollectionDataModel?,
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreDataModel>?,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imdbId: imdbId == freezed
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int?,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      tatus: tatus == freezed
          ? _value.tatus
          : tatus // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      companies: companies == freezed
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<CompanyDataModel>?,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryDataModel>?,
      languages: languages == freezed
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguageDataModel>?,
    ));
  }

  @override
  $CollectionDataModelCopyWith<$Res>? get collection {
    if (_value.collection == null) {
      return null;
    }

    return $CollectionDataModelCopyWith<$Res>(_value.collection!, (value) {
      return _then(_value.copyWith(collection: value));
    });
  }
}

/// @nodoc
abstract class _$MovieInfoDataModelCopyWith<$Res>
    implements $MovieInfoDataModelCopyWith<$Res> {
  factory _$MovieInfoDataModelCopyWith(
          _MovieInfoDataModel value, $Res Function(_MovieInfoDataModel) then) =
      __$MovieInfoDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'belongs_to_collection') CollectionDataModel? collection,
      int? budget,
      List<GenreDataModel>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: 'imdb_id') String? imdbId,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'release_date') String? releaseDate,
      int? revenue,
      int? runtime,
      String? tatus,
      String? tagline,
      String? title,
      bool? video,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount,
      @JsonKey(name: 'production_companies') List<CompanyDataModel>? companies,
      @JsonKey(name: 'production_countries') List<CountryDataModel>? countries,
      @JsonKey(name: 'spoken_languages') List<LanguageDataModel>? languages});

  @override
  $CollectionDataModelCopyWith<$Res>? get collection;
}

/// @nodoc
class __$MovieInfoDataModelCopyWithImpl<$Res>
    extends _$MovieInfoDataModelCopyWithImpl<$Res>
    implements _$MovieInfoDataModelCopyWith<$Res> {
  __$MovieInfoDataModelCopyWithImpl(
      _MovieInfoDataModel _value, $Res Function(_MovieInfoDataModel) _then)
      : super(_value, (v) => _then(v as _MovieInfoDataModel));

  @override
  _MovieInfoDataModel get _value => super._value as _MovieInfoDataModel;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? collection = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? tatus = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? companies = freezed,
    Object? countries = freezed,
    Object? languages = freezed,
  }) {
    return _then(_MovieInfoDataModel(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      collection: collection == freezed
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as CollectionDataModel?,
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreDataModel>?,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imdbId: imdbId == freezed
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int?,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      tatus: tatus == freezed
          ? _value.tatus
          : tatus // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      companies: companies == freezed
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<CompanyDataModel>?,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryDataModel>?,
      languages: languages == freezed
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguageDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieInfoDataModel implements _MovieInfoDataModel {
  const _$_MovieInfoDataModel(
      {this.adult,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'belongs_to_collection') this.collection,
      this.budget,
      this.genres,
      this.homepage,
      this.id,
      @JsonKey(name: 'imdb_id') this.imdbId,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'original_title') this.originalTitle,
      this.overview,
      this.popularity,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'release_date') this.releaseDate,
      this.revenue,
      this.runtime,
      this.tatus,
      this.tagline,
      this.title,
      this.video,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'vote_count') this.voteCount,
      @JsonKey(name: 'production_companies') this.companies,
      @JsonKey(name: 'production_countries') this.countries,
      @JsonKey(name: 'spoken_languages') this.languages});

  factory _$_MovieInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieInfoDataModelFromJson(json);

  @override
  final bool? adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'belongs_to_collection')
  final CollectionDataModel? collection;
  @override
  final int? budget;
  @override
  final List<GenreDataModel>? genres;
  @override
  final String? homepage;
  @override
  final int? id;
  @override
  @JsonKey(name: 'imdb_id')
  final String? imdbId;
  @override
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @override
  final String? overview;
  @override
  final double? popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  final int? revenue;
  @override
  final int? runtime;
  @override
  final String? tatus;
  @override
  final String? tagline;
  @override
  final String? title;
  @override
  final bool? video;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int? voteCount;
  @override
  @JsonKey(name: 'production_companies')
  final List<CompanyDataModel>? companies;
  @override
  @JsonKey(name: 'production_countries')
  final List<CountryDataModel>? countries;
  @override
  @JsonKey(name: 'spoken_languages')
  final List<LanguageDataModel>? languages;

  @override
  String toString() {
    return 'MovieInfoDataModel(adult: $adult, backdropPath: $backdropPath, collection: $collection, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, tatus: $tatus, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount, companies: $companies, countries: $countries, languages: $languages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieInfoDataModel &&
            const DeepCollectionEquality().equals(other.adult, adult) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality()
                .equals(other.collection, collection) &&
            const DeepCollectionEquality().equals(other.budget, budget) &&
            const DeepCollectionEquality().equals(other.genres, genres) &&
            const DeepCollectionEquality().equals(other.homepage, homepage) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imdbId, imdbId) &&
            const DeepCollectionEquality()
                .equals(other.originalLanguage, originalLanguage) &&
            const DeepCollectionEquality()
                .equals(other.originalTitle, originalTitle) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality().equals(other.revenue, revenue) &&
            const DeepCollectionEquality().equals(other.runtime, runtime) &&
            const DeepCollectionEquality().equals(other.tatus, tatus) &&
            const DeepCollectionEquality().equals(other.tagline, tagline) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.video, video) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality().equals(other.voteCount, voteCount) &&
            const DeepCollectionEquality().equals(other.companies, companies) &&
            const DeepCollectionEquality().equals(other.countries, countries) &&
            const DeepCollectionEquality().equals(other.languages, languages));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(adult),
        const DeepCollectionEquality().hash(backdropPath),
        const DeepCollectionEquality().hash(collection),
        const DeepCollectionEquality().hash(budget),
        const DeepCollectionEquality().hash(genres),
        const DeepCollectionEquality().hash(homepage),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(imdbId),
        const DeepCollectionEquality().hash(originalLanguage),
        const DeepCollectionEquality().hash(originalTitle),
        const DeepCollectionEquality().hash(overview),
        const DeepCollectionEquality().hash(popularity),
        const DeepCollectionEquality().hash(posterPath),
        const DeepCollectionEquality().hash(releaseDate),
        const DeepCollectionEquality().hash(revenue),
        const DeepCollectionEquality().hash(runtime),
        const DeepCollectionEquality().hash(tatus),
        const DeepCollectionEquality().hash(tagline),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(video),
        const DeepCollectionEquality().hash(voteAverage),
        const DeepCollectionEquality().hash(voteCount),
        const DeepCollectionEquality().hash(companies),
        const DeepCollectionEquality().hash(countries),
        const DeepCollectionEquality().hash(languages)
      ]);

  @JsonKey(ignore: true)
  @override
  _$MovieInfoDataModelCopyWith<_MovieInfoDataModel> get copyWith =>
      __$MovieInfoDataModelCopyWithImpl<_MovieInfoDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieInfoDataModelToJson(this);
  }
}

abstract class _MovieInfoDataModel implements MovieInfoDataModel {
  const factory _MovieInfoDataModel(
      {bool? adult,
      @JsonKey(name: 'backdrop_path')
          String? backdropPath,
      @JsonKey(name: 'belongs_to_collection')
          CollectionDataModel? collection,
      int? budget,
      List<GenreDataModel>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: 'imdb_id')
          String? imdbId,
      @JsonKey(name: 'original_language')
          String? originalLanguage,
      @JsonKey(name: 'original_title')
          String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path')
          String? posterPath,
      @JsonKey(name: 'release_date')
          String? releaseDate,
      int? revenue,
      int? runtime,
      String? tatus,
      String? tagline,
      String? title,
      bool? video,
      @JsonKey(name: 'vote_average')
          double? voteAverage,
      @JsonKey(name: 'vote_count')
          int? voteCount,
      @JsonKey(name: 'production_companies')
          List<CompanyDataModel>? companies,
      @JsonKey(name: 'production_countries')
          List<CountryDataModel>? countries,
      @JsonKey(name: 'spoken_languages')
          List<LanguageDataModel>? languages}) = _$_MovieInfoDataModel;

  factory _MovieInfoDataModel.fromJson(Map<String, dynamic> json) =
      _$_MovieInfoDataModel.fromJson;

  @override
  bool? get adult;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'belongs_to_collection')
  CollectionDataModel? get collection;
  @override
  int? get budget;
  @override
  List<GenreDataModel>? get genres;
  @override
  String? get homepage;
  @override
  int? get id;
  @override
  @JsonKey(name: 'imdb_id')
  String? get imdbId;
  @override
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @override
  String? get overview;
  @override
  double? get popularity;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  int? get revenue;
  @override
  int? get runtime;
  @override
  String? get tatus;
  @override
  String? get tagline;
  @override
  String? get title;
  @override
  bool? get video;
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int? get voteCount;
  @override
  @JsonKey(name: 'production_companies')
  List<CompanyDataModel>? get companies;
  @override
  @JsonKey(name: 'production_countries')
  List<CountryDataModel>? get countries;
  @override
  @JsonKey(name: 'spoken_languages')
  List<LanguageDataModel>? get languages;
  @override
  @JsonKey(ignore: true)
  _$MovieInfoDataModelCopyWith<_MovieInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
