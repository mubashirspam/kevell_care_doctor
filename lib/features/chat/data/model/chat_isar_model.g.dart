// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_isar_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetChatIsarPersonModelCollection on Isar {
  IsarCollection<ChatIsarPersonModel> get chatIsarPersonModels =>
      this.collection();
}

const ChatIsarPersonModelSchema = CollectionSchema(
  name: r'ChatIsarPersonModel',
  id: 5943075227734766471,
  properties: {
    r'profileImagelink': PropertySchema(
      id: 0,
      name: r'profileImagelink',
      type: IsarType.string,
    ),
    r'username': PropertySchema(
      id: 1,
      name: r'username',
      type: IsarType.string,
    )
  },
  estimateSize: _chatIsarPersonModelEstimateSize,
  serialize: _chatIsarPersonModelSerialize,
  deserialize: _chatIsarPersonModelDeserialize,
  deserializeProp: _chatIsarPersonModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'username': IndexSchema(
      id: -2899563114555695793,
      name: r'username',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'username',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _chatIsarPersonModelGetId,
  getLinks: _chatIsarPersonModelGetLinks,
  attach: _chatIsarPersonModelAttach,
  version: '3.1.0+1',
);

int _chatIsarPersonModelEstimateSize(
  ChatIsarPersonModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.profileImagelink;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.username;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _chatIsarPersonModelSerialize(
  ChatIsarPersonModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.profileImagelink);
  writer.writeString(offsets[1], object.username);
}

ChatIsarPersonModel _chatIsarPersonModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ChatIsarPersonModel();
  object.id = id;
  object.profileImagelink = reader.readStringOrNull(offsets[0]);
  object.username = reader.readStringOrNull(offsets[1]);
  return object;
}

P _chatIsarPersonModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _chatIsarPersonModelGetId(ChatIsarPersonModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _chatIsarPersonModelGetLinks(
    ChatIsarPersonModel object) {
  return [];
}

void _chatIsarPersonModelAttach(
    IsarCollection<dynamic> col, Id id, ChatIsarPersonModel object) {
  object.id = id;
}

extension ChatIsarPersonModelQueryWhereSort
    on QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QWhere> {
  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterWhere>
      anyUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'username'),
      );
    });
  }
}

extension ChatIsarPersonModelQueryWhere
    on QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QWhereClause> {
  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterWhereClause>
      usernameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'username',
        value: [null],
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterWhereClause>
      usernameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'username',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterWhereClause>
      usernameEqualTo(String? username) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'username',
        value: [username],
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterWhereClause>
      usernameNotEqualTo(String? username) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'username',
              lower: [],
              upper: [username],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'username',
              lower: [username],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'username',
              lower: [username],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'username',
              lower: [],
              upper: [username],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterWhereClause>
      usernameGreaterThan(
    String? username, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'username',
        lower: [username],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterWhereClause>
      usernameLessThan(
    String? username, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'username',
        lower: [],
        upper: [username],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterWhereClause>
      usernameBetween(
    String? lowerUsername,
    String? upperUsername, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'username',
        lower: [lowerUsername],
        includeLower: includeLower,
        upper: [upperUsername],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterWhereClause>
      usernameStartsWith(String UsernamePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'username',
        lower: [UsernamePrefix],
        upper: ['$UsernamePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterWhereClause>
      usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'username',
        value: [''],
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterWhereClause>
      usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'username',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'username',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'username',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'username',
              upper: [''],
            ));
      }
    });
  }
}

extension ChatIsarPersonModelQueryFilter on QueryBuilder<ChatIsarPersonModel,
    ChatIsarPersonModel, QFilterCondition> {
  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      profileImagelinkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'profileImagelink',
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      profileImagelinkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'profileImagelink',
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      profileImagelinkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profileImagelink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      profileImagelinkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'profileImagelink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      profileImagelinkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'profileImagelink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      profileImagelinkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'profileImagelink',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      profileImagelinkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'profileImagelink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      profileImagelinkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'profileImagelink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      profileImagelinkContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'profileImagelink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      profileImagelinkMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'profileImagelink',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      profileImagelinkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profileImagelink',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      profileImagelinkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'profileImagelink',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      usernameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'username',
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      usernameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'username',
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      usernameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      usernameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      usernameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      usernameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'username',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      usernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      usernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      usernameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      usernameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'username',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterFilterCondition>
      usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'username',
        value: '',
      ));
    });
  }
}

extension ChatIsarPersonModelQueryObject on QueryBuilder<ChatIsarPersonModel,
    ChatIsarPersonModel, QFilterCondition> {}

extension ChatIsarPersonModelQueryLinks on QueryBuilder<ChatIsarPersonModel,
    ChatIsarPersonModel, QFilterCondition> {}

extension ChatIsarPersonModelQuerySortBy
    on QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QSortBy> {
  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterSortBy>
      sortByProfileImagelink() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileImagelink', Sort.asc);
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterSortBy>
      sortByProfileImagelinkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileImagelink', Sort.desc);
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterSortBy>
      sortByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterSortBy>
      sortByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension ChatIsarPersonModelQuerySortThenBy
    on QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QSortThenBy> {
  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterSortBy>
      thenByProfileImagelink() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileImagelink', Sort.asc);
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterSortBy>
      thenByProfileImagelinkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileImagelink', Sort.desc);
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterSortBy>
      thenByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QAfterSortBy>
      thenByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension ChatIsarPersonModelQueryWhereDistinct
    on QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QDistinct> {
  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QDistinct>
      distinctByProfileImagelink({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'profileImagelink',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QDistinct>
      distinctByUsername({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'username', caseSensitive: caseSensitive);
    });
  }
}

extension ChatIsarPersonModelQueryProperty
    on QueryBuilder<ChatIsarPersonModel, ChatIsarPersonModel, QQueryProperty> {
  QueryBuilder<ChatIsarPersonModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ChatIsarPersonModel, String?, QQueryOperations>
      profileImagelinkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'profileImagelink');
    });
  }

  QueryBuilder<ChatIsarPersonModel, String?, QQueryOperations>
      usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'username');
    });
  }
}
