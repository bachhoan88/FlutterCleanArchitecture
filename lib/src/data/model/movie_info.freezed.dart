// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MovieInfo _$MovieInfoFromJson(Map<String, dynamic> json) {
  return _MovieInfo.fromJson(json);
}

/// @nodoc
class _$MovieInfoTearOff {
  const _$MovieInfoTearOff();

// ignore: unused_element
  _MovieInfo call(
      {bool adult,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'belongs_to_collection') Collection collection,
      int budget,
      List<Genre> genres,
      String homepage,
      int id,
      @JsonKey(name: 'imdb_id') String imdbId,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      double popularity,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') String releaseDate,
      int revenue,
      int runtime,
      String tatus,
      String tagline,
      String title,
      bool video,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount,
      @JsonKey(name: 'production_companies') List<Company> companies,
      @JsonKey(name: 'production_countries') List<Country> countries,
      @JsonKey(name: 'spoken_languages') List<Language> languages}) {
    return _MovieInfo(
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

// ignore: unused_element
  MovieInfo fromJson(Map<String, Object> json) {
    return MovieInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MovieInfo = _$MovieInfoTearOff();

/// @nodoc
mixin _$MovieInfo {
  bool get adult;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @JsonKey(name: 'belongs_to_collection')
  Collection get collection;
  int get budget;
  List<Genre> get genres;
  String get homepage;
  int get id;
  @JsonKey(name: 'imdb_id')
  String get imdbId;
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @JsonKey(name: 'original_title')
  String get originalTitle;
  String get overview;
  double get popularity;
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @JsonKey(name: 'release_date')
  String get releaseDate;
  int get revenue;
  int get runtime;
  String get tatus;
  String get tagline;
  String get title;
  bool get video;
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @JsonKey(name: 'production_companies')
  List<Company> get companies;
  @JsonKey(name: 'production_countries')
  List<Country> get countries;
  @JsonKey(name: 'spoken_languages')
  List<Language> get languages;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MovieInfoCopyWith<MovieInfo> get copyWith;
}

/// @nodoc
abstract class $MovieInfoCopyWith<$Res> {
  factory $MovieInfoCopyWith(MovieInfo value, $Res Function(MovieInfo) then) =
      _$MovieInfoCopyWithImpl<$Res>;
  $Res call(
      {bool adult,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'belongs_to_collection') Collection collection,
      int budget,
      List<Genre> genres,
      String homepage,
      int id,
      @JsonKey(name: 'imdb_id') String imdbId,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      double popularity,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') String releaseDate,
      int revenue,
      int runtime,
      String tatus,
      String tagline,
      String title,
      bool video,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount,
      @JsonKey(name: 'production_companies') List<Company> companies,
      @JsonKey(name: 'production_countries') List<Country> countries,
      @JsonKey(name: 'spoken_languages') List<Language> languages});

  $CollectionCopyWith<$Res> get collection;
}

/// @nodoc
class _$MovieInfoCopyWithImpl<$Res> implements $MovieInfoCopyWith<$Res> {
  _$MovieInfoCopyWithImpl(this._value, this._then);

  final MovieInfo _value;
  // ignore: unused_field
  final $Res Function(MovieInfo) _then;

  @override
  $Res call({
    Object adult = freezed,
    Object backdropPath = freezed,
    Object collection = freezed,
    Object budget = freezed,
    Object genres = freezed,
    Object homepage = freezed,
    Object id = freezed,
    Object imdbId = freezed,
    Object originalLanguage = freezed,
    Object originalTitle = freezed,
    Object overview = freezed,
    Object popularity = freezed,
    Object posterPath = freezed,
    Object releaseDate = freezed,
    Object revenue = freezed,
    Object runtime = freezed,
    Object tatus = freezed,
    Object tagline = freezed,
    Object title = freezed,
    Object video = freezed,
    Object voteAverage = freezed,
    Object voteCount = freezed,
    Object companies = freezed,
    Object countries = freezed,
    Object languages = freezed,
  }) {
    return _then(_value.copyWith(
      adult: adult == freezed ? _value.adult : adult as bool,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath as String,
      collection:
          collection == freezed ? _value.collection : collection as Collection,
      budget: budget == freezed ? _value.budget : budget as int,
      genres: genres == freezed ? _value.genres : genres as List<Genre>,
      homepage: homepage == freezed ? _value.homepage : homepage as String,
      id: id == freezed ? _value.id : id as int,
      imdbId: imdbId == freezed ? _value.imdbId : imdbId as String,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage as String,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle as String,
      overview: overview == freezed ? _value.overview : overview as String,
      popularity:
          popularity == freezed ? _value.popularity : popularity as double,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      releaseDate:
          releaseDate == freezed ? _value.releaseDate : releaseDate as String,
      revenue: revenue == freezed ? _value.revenue : revenue as int,
      runtime: runtime == freezed ? _value.runtime : runtime as int,
      tatus: tatus == freezed ? _value.tatus : tatus as String,
      tagline: tagline == freezed ? _value.tagline : tagline as String,
      title: title == freezed ? _value.title : title as String,
      video: video == freezed ? _value.video : video as bool,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
      companies:
          companies == freezed ? _value.companies : companies as List<Company>,
      countries:
          countries == freezed ? _value.countries : countries as List<Country>,
      languages:
          languages == freezed ? _value.languages : languages as List<Language>,
    ));
  }

  @override
  $CollectionCopyWith<$Res> get collection {
    if (_value.collection == null) {
      return null;
    }
    return $CollectionCopyWith<$Res>(_value.collection, (value) {
      return _then(_value.copyWith(collection: value));
    });
  }
}

/// @nodoc
abstract class _$MovieInfoCopyWith<$Res> implements $MovieInfoCopyWith<$Res> {
  factory _$MovieInfoCopyWith(
          _MovieInfo value, $Res Function(_MovieInfo) then) =
      __$MovieInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool adult,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'belongs_to_collection') Collection collection,
      int budget,
      List<Genre> genres,
      String homepage,
      int id,
      @JsonKey(name: 'imdb_id') String imdbId,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      double popularity,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') String releaseDate,
      int revenue,
      int runtime,
      String tatus,
      String tagline,
      String title,
      bool video,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount,
      @JsonKey(name: 'production_companies') List<Company> companies,
      @JsonKey(name: 'production_countries') List<Country> countries,
      @JsonKey(name: 'spoken_languages') List<Language> languages});

  @override
  $CollectionCopyWith<$Res> get collection;
}

/// @nodoc
class __$MovieInfoCopyWithImpl<$Res> extends _$MovieInfoCopyWithImpl<$Res>
    implements _$MovieInfoCopyWith<$Res> {
  __$MovieInfoCopyWithImpl(_MovieInfo _value, $Res Function(_MovieInfo) _then)
      : super(_value, (v) => _then(v as _MovieInfo));

  @override
  _MovieInfo get _value => super._value as _MovieInfo;

  @override
  $Res call({
    Object adult = freezed,
    Object backdropPath = freezed,
    Object collection = freezed,
    Object budget = freezed,
    Object genres = freezed,
    Object homepage = freezed,
    Object id = freezed,
    Object imdbId = freezed,
    Object originalLanguage = freezed,
    Object originalTitle = freezed,
    Object overview = freezed,
    Object popularity = freezed,
    Object posterPath = freezed,
    Object releaseDate = freezed,
    Object revenue = freezed,
    Object runtime = freezed,
    Object tatus = freezed,
    Object tagline = freezed,
    Object title = freezed,
    Object video = freezed,
    Object voteAverage = freezed,
    Object voteCount = freezed,
    Object companies = freezed,
    Object countries = freezed,
    Object languages = freezed,
  }) {
    return _then(_MovieInfo(
      adult: adult == freezed ? _value.adult : adult as bool,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath as String,
      collection:
          collection == freezed ? _value.collection : collection as Collection,
      budget: budget == freezed ? _value.budget : budget as int,
      genres: genres == freezed ? _value.genres : genres as List<Genre>,
      homepage: homepage == freezed ? _value.homepage : homepage as String,
      id: id == freezed ? _value.id : id as int,
      imdbId: imdbId == freezed ? _value.imdbId : imdbId as String,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage as String,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle as String,
      overview: overview == freezed ? _value.overview : overview as String,
      popularity:
          popularity == freezed ? _value.popularity : popularity as double,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      releaseDate:
          releaseDate == freezed ? _value.releaseDate : releaseDate as String,
      revenue: revenue == freezed ? _value.revenue : revenue as int,
      runtime: runtime == freezed ? _value.runtime : runtime as int,
      tatus: tatus == freezed ? _value.tatus : tatus as String,
      tagline: tagline == freezed ? _value.tagline : tagline as String,
      title: title == freezed ? _value.title : title as String,
      video: video == freezed ? _value.video : video as bool,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
      companies:
          companies == freezed ? _value.companies : companies as List<Company>,
      countries:
          countries == freezed ? _value.countries : countries as List<Country>,
      languages:
          languages == freezed ? _value.languages : languages as List<Language>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MovieInfo implements _MovieInfo {
  _$_MovieInfo(
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

  factory _$_MovieInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieInfoFromJson(json);

  @override
  final bool adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  @override
  @JsonKey(name: 'belongs_to_collection')
  final Collection collection;
  @override
  final int budget;
  @override
  final List<Genre> genres;
  @override
  final String homepage;
  @override
  final int id;
  @override
  @JsonKey(name: 'imdb_id')
  final String imdbId;
  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @override
  final int revenue;
  @override
  final int runtime;
  @override
  final String tatus;
  @override
  final String tagline;
  @override
  final String title;
  @override
  final bool video;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;
  @override
  @JsonKey(name: 'production_companies')
  final List<Company> companies;
  @override
  @JsonKey(name: 'production_countries')
  final List<Country> countries;
  @override
  @JsonKey(name: 'spoken_languages')
  final List<Language> languages;

  @override
  String toString() {
    return 'MovieInfo(adult: $adult, backdropPath: $backdropPath, collection: $collection, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, tatus: $tatus, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount, companies: $companies, countries: $countries, languages: $languages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieInfo &&
            (identical(other.adult, adult) ||
                const DeepCollectionEquality().equals(other.adult, adult)) &&
            (identical(other.backdropPath, backdropPath) ||
                const DeepCollectionEquality()
                    .equals(other.backdropPath, backdropPath)) &&
            (identical(other.collection, collection) ||
                const DeepCollectionEquality()
                    .equals(other.collection, collection)) &&
            (identical(other.budget, budget) ||
                const DeepCollectionEquality().equals(other.budget, budget)) &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)) &&
            (identical(other.homepage, homepage) ||
                const DeepCollectionEquality()
                    .equals(other.homepage, homepage)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imdbId, imdbId) ||
                const DeepCollectionEquality().equals(other.imdbId, imdbId)) &&
            (identical(other.originalLanguage, originalLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.originalLanguage, originalLanguage)) &&
            (identical(other.originalTitle, originalTitle) ||
                const DeepCollectionEquality()
                    .equals(other.originalTitle, originalTitle)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.posterPath, posterPath) ||
                const DeepCollectionEquality()
                    .equals(other.posterPath, posterPath)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.revenue, revenue) ||
                const DeepCollectionEquality()
                    .equals(other.revenue, revenue)) &&
            (identical(other.runtime, runtime) ||
                const DeepCollectionEquality()
                    .equals(other.runtime, runtime)) &&
            (identical(other.tatus, tatus) ||
                const DeepCollectionEquality().equals(other.tatus, tatus)) &&
            (identical(other.tagline, tagline) ||
                const DeepCollectionEquality()
                    .equals(other.tagline, tagline)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)) &&
            (identical(other.voteAverage, voteAverage) ||
                const DeepCollectionEquality()
                    .equals(other.voteAverage, voteAverage)) &&
            (identical(other.voteCount, voteCount) ||
                const DeepCollectionEquality()
                    .equals(other.voteCount, voteCount)) &&
            (identical(other.companies, companies) ||
                const DeepCollectionEquality()
                    .equals(other.companies, companies)) &&
            (identical(other.countries, countries) ||
                const DeepCollectionEquality()
                    .equals(other.countries, countries)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(adult) ^
      const DeepCollectionEquality().hash(backdropPath) ^
      const DeepCollectionEquality().hash(collection) ^
      const DeepCollectionEquality().hash(budget) ^
      const DeepCollectionEquality().hash(genres) ^
      const DeepCollectionEquality().hash(homepage) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imdbId) ^
      const DeepCollectionEquality().hash(originalLanguage) ^
      const DeepCollectionEquality().hash(originalTitle) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(posterPath) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(revenue) ^
      const DeepCollectionEquality().hash(runtime) ^
      const DeepCollectionEquality().hash(tatus) ^
      const DeepCollectionEquality().hash(tagline) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(video) ^
      const DeepCollectionEquality().hash(voteAverage) ^
      const DeepCollectionEquality().hash(voteCount) ^
      const DeepCollectionEquality().hash(companies) ^
      const DeepCollectionEquality().hash(countries) ^
      const DeepCollectionEquality().hash(languages);

  @JsonKey(ignore: true)
  @override
  _$MovieInfoCopyWith<_MovieInfo> get copyWith =>
      __$MovieInfoCopyWithImpl<_MovieInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieInfoToJson(this);
  }
}

abstract class _MovieInfo implements MovieInfo {
  factory _MovieInfo(
          {bool adult,
          @JsonKey(name: 'backdrop_path') String backdropPath,
          @JsonKey(name: 'belongs_to_collection') Collection collection,
          int budget,
          List<Genre> genres,
          String homepage,
          int id,
          @JsonKey(name: 'imdb_id') String imdbId,
          @JsonKey(name: 'original_language') String originalLanguage,
          @JsonKey(name: 'original_title') String originalTitle,
          String overview,
          double popularity,
          @JsonKey(name: 'poster_path') String posterPath,
          @JsonKey(name: 'release_date') String releaseDate,
          int revenue,
          int runtime,
          String tatus,
          String tagline,
          String title,
          bool video,
          @JsonKey(name: 'vote_average') double voteAverage,
          @JsonKey(name: 'vote_count') int voteCount,
          @JsonKey(name: 'production_companies') List<Company> companies,
          @JsonKey(name: 'production_countries') List<Country> countries,
          @JsonKey(name: 'spoken_languages') List<Language> languages}) =
      _$_MovieInfo;

  factory _MovieInfo.fromJson(Map<String, dynamic> json) =
      _$_MovieInfo.fromJson;

  @override
  bool get adult;
  @override
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @override
  @JsonKey(name: 'belongs_to_collection')
  Collection get collection;
  @override
  int get budget;
  @override
  List<Genre> get genres;
  @override
  String get homepage;
  @override
  int get id;
  @override
  @JsonKey(name: 'imdb_id')
  String get imdbId;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  String get overview;
  @override
  double get popularity;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  int get revenue;
  @override
  int get runtime;
  @override
  String get tatus;
  @override
  String get tagline;
  @override
  String get title;
  @override
  bool get video;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  @JsonKey(name: 'production_companies')
  List<Company> get companies;
  @override
  @JsonKey(name: 'production_countries')
  List<Country> get countries;
  @override
  @JsonKey(name: 'spoken_languages')
  List<Language> get languages;
  @override
  @JsonKey(ignore: true)
  _$MovieInfoCopyWith<_MovieInfo> get copyWith;
}