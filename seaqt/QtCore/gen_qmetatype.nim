import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QMetaTypeTypeEnum* = distinct cint
template Bool*(_: type QMetaTypeTypeEnum): untyped = 1
template Int*(_: type QMetaTypeTypeEnum): untyped = 2
template UInt*(_: type QMetaTypeTypeEnum): untyped = 3
template LongLong*(_: type QMetaTypeTypeEnum): untyped = 4
template ULongLong*(_: type QMetaTypeTypeEnum): untyped = 5
template Double*(_: type QMetaTypeTypeEnum): untyped = 6
template Long*(_: type QMetaTypeTypeEnum): untyped = 32
template Short*(_: type QMetaTypeTypeEnum): untyped = 33
template Char*(_: type QMetaTypeTypeEnum): untyped = 34
template Char16*(_: type QMetaTypeTypeEnum): untyped = 56
template Char32*(_: type QMetaTypeTypeEnum): untyped = 57
template ULong*(_: type QMetaTypeTypeEnum): untyped = 35
template UShort*(_: type QMetaTypeTypeEnum): untyped = 36
template UChar*(_: type QMetaTypeTypeEnum): untyped = 37
template Float*(_: type QMetaTypeTypeEnum): untyped = 38
template SChar*(_: type QMetaTypeTypeEnum): untyped = 40
template Nullptr*(_: type QMetaTypeTypeEnum): untyped = 51
template QCborSimpleType*(_: type QMetaTypeTypeEnum): untyped = 52
template Void*(_: type QMetaTypeTypeEnum): untyped = 43
template VoidStar*(_: type QMetaTypeTypeEnum): untyped = 31
template QChar2*(_: type QMetaTypeTypeEnum): untyped = 7
template QString*(_: type QMetaTypeTypeEnum): untyped = 10
template QByteArray*(_: type QMetaTypeTypeEnum): untyped = 12
template QBitArray2*(_: type QMetaTypeTypeEnum): untyped = 13
template QDate2*(_: type QMetaTypeTypeEnum): untyped = 14
template QTime2*(_: type QMetaTypeTypeEnum): untyped = 15
template QDateTime2*(_: type QMetaTypeTypeEnum): untyped = 16
template QUrl2*(_: type QMetaTypeTypeEnum): untyped = 17
template QLocale2*(_: type QMetaTypeTypeEnum): untyped = 18
template QRect2*(_: type QMetaTypeTypeEnum): untyped = 19
template QRectF2*(_: type QMetaTypeTypeEnum): untyped = 20
template QSize2*(_: type QMetaTypeTypeEnum): untyped = 21
template QSizeF2*(_: type QMetaTypeTypeEnum): untyped = 22
template QLine2*(_: type QMetaTypeTypeEnum): untyped = 23
template QLineF2*(_: type QMetaTypeTypeEnum): untyped = 24
template QPoint2*(_: type QMetaTypeTypeEnum): untyped = 25
template QPointF2*(_: type QMetaTypeTypeEnum): untyped = 26
template QEasingCurve2*(_: type QMetaTypeTypeEnum): untyped = 29
template QUuid2*(_: type QMetaTypeTypeEnum): untyped = 30
template QVariant2*(_: type QMetaTypeTypeEnum): untyped = 41
template QRegularExpression2*(_: type QMetaTypeTypeEnum): untyped = 44
template QJsonValue2*(_: type QMetaTypeTypeEnum): untyped = 45
template QJsonObject2*(_: type QMetaTypeTypeEnum): untyped = 46
template QJsonArray2*(_: type QMetaTypeTypeEnum): untyped = 47
template QJsonDocument2*(_: type QMetaTypeTypeEnum): untyped = 48
template QCborValue2*(_: type QMetaTypeTypeEnum): untyped = 53
template QCborArray2*(_: type QMetaTypeTypeEnum): untyped = 54
template QCborMap2*(_: type QMetaTypeTypeEnum): untyped = 55
template Float16*(_: type QMetaTypeTypeEnum): untyped = 63
template QModelIndex2*(_: type QMetaTypeTypeEnum): untyped = 42
template QPersistentModelIndex2*(_: type QMetaTypeTypeEnum): untyped = 50
template QObjectStar*(_: type QMetaTypeTypeEnum): untyped = 39
template QVariantMap*(_: type QMetaTypeTypeEnum): untyped = 8
template QVariantList*(_: type QMetaTypeTypeEnum): untyped = 9
template QVariantHash*(_: type QMetaTypeTypeEnum): untyped = 28
template QVariantPair*(_: type QMetaTypeTypeEnum): untyped = 58
template QByteArrayList*(_: type QMetaTypeTypeEnum): untyped = 49
template QStringList*(_: type QMetaTypeTypeEnum): untyped = 11
template QFont*(_: type QMetaTypeTypeEnum): untyped = 4096
template QPixmap*(_: type QMetaTypeTypeEnum): untyped = 4097
template QBrush*(_: type QMetaTypeTypeEnum): untyped = 4098
template QColor*(_: type QMetaTypeTypeEnum): untyped = 4099
template QPalette*(_: type QMetaTypeTypeEnum): untyped = 4100
template QIcon*(_: type QMetaTypeTypeEnum): untyped = 4101
template QImage*(_: type QMetaTypeTypeEnum): untyped = 4102
template QPolygon*(_: type QMetaTypeTypeEnum): untyped = 4103
template QRegion*(_: type QMetaTypeTypeEnum): untyped = 4104
template QBitmap*(_: type QMetaTypeTypeEnum): untyped = 4105
template QCursor*(_: type QMetaTypeTypeEnum): untyped = 4106
template QKeySequence*(_: type QMetaTypeTypeEnum): untyped = 4107
template QPen*(_: type QMetaTypeTypeEnum): untyped = 4108
template QTextLength*(_: type QMetaTypeTypeEnum): untyped = 4109
template QTextFormat*(_: type QMetaTypeTypeEnum): untyped = 4110
template QTransform*(_: type QMetaTypeTypeEnum): untyped = 4112
template QMatrix4x4*(_: type QMetaTypeTypeEnum): untyped = 4113
template QVector2D*(_: type QMetaTypeTypeEnum): untyped = 4114
template QVector3D*(_: type QMetaTypeTypeEnum): untyped = 4115
template QVector4D*(_: type QMetaTypeTypeEnum): untyped = 4116
template QQuaternion*(_: type QMetaTypeTypeEnum): untyped = 4117
template QPolygonF*(_: type QMetaTypeTypeEnum): untyped = 4118
template QColorSpace*(_: type QMetaTypeTypeEnum): untyped = 4119
template QSizePolicy*(_: type QMetaTypeTypeEnum): untyped = 8192
template FirstCoreType*(_: type QMetaTypeTypeEnum): untyped = 1
template LastCoreType*(_: type QMetaTypeTypeEnum): untyped = 63
template FirstGuiType*(_: type QMetaTypeTypeEnum): untyped = 4096
template LastGuiType*(_: type QMetaTypeTypeEnum): untyped = 4119
template FirstWidgetsType*(_: type QMetaTypeTypeEnum): untyped = 8192
template LastWidgetsType*(_: type QMetaTypeTypeEnum): untyped = 8192
template HighestInternalId*(_: type QMetaTypeTypeEnum): untyped = 8192
template QReal*(_: type QMetaTypeTypeEnum): untyped = 6
template UnknownType*(_: type QMetaTypeTypeEnum): untyped = 0
template User*(_: type QMetaTypeTypeEnum): untyped = 65536


type QMetaTypeTypeFlagEnum* = distinct cint
template NeedsConstruction*(_: type QMetaTypeTypeFlagEnum): untyped = 1
template NeedsDestruction*(_: type QMetaTypeTypeFlagEnum): untyped = 2
template RelocatableType*(_: type QMetaTypeTypeFlagEnum): untyped = 4
template MovableType*(_: type QMetaTypeTypeFlagEnum): untyped = 4
template PointerToQObject*(_: type QMetaTypeTypeFlagEnum): untyped = 8
template IsEnumeration*(_: type QMetaTypeTypeFlagEnum): untyped = 16
template SharedPointerToQObject*(_: type QMetaTypeTypeFlagEnum): untyped = 32
template WeakPointerToQObject*(_: type QMetaTypeTypeFlagEnum): untyped = 64
template TrackingPointerToQObject*(_: type QMetaTypeTypeFlagEnum): untyped = 128
template IsUnsignedEnumeration*(_: type QMetaTypeTypeFlagEnum): untyped = 256
template IsGadget*(_: type QMetaTypeTypeFlagEnum): untyped = 512
template PointerToGadget*(_: type QMetaTypeTypeFlagEnum): untyped = 1024
template IsPointer*(_: type QMetaTypeTypeFlagEnum): untyped = 2048
template IsQmlList*(_: type QMetaTypeTypeFlagEnum): untyped = 4096
template IsConst*(_: type QMetaTypeTypeFlagEnum): untyped = 8192
template NeedsCopyConstruction*(_: type QMetaTypeTypeFlagEnum): untyped = 16384
template NeedsMoveConstruction*(_: type QMetaTypeTypeFlagEnum): untyped = 32768


import ./gen_qmetatype_types
export gen_qmetatype_types

import
  ./gen_qcompare_types,
  ./gen_qdatastream_types,
  ./gen_qdebug_types,
  ./gen_qobjectdefs_types
export
  gen_qcompare_types,
  gen_qdatastream_types,
  gen_qdebug_types,
  gen_qobjectdefs_types

type cQMetaType*{.exportc: "QMetaType", incompleteStruct.} = object

proc fcQMetaType_registerNormalizedTypedef(normalizedTypeName: struct_seaqt_string, typeVal: pointer): void {.importc: "QMetaType_registerNormalizedTypedef".}
proc fcQMetaType_typeChar(typeName: cstring): cint {.importc: "QMetaType_type_char".}
proc fcQMetaType_type_QByteArray(typeName: struct_seaqt_string): cint {.importc: "QMetaType_type_QByteArray".}
proc fcQMetaType_typeName(typeVal: cint): cstring {.importc: "QMetaType_typeName".}
proc fcQMetaType_sizeOfType(typeVal: cint): cint {.importc: "QMetaType_sizeOf_type".}
proc fcQMetaType_typeFlags(typeVal: cint): cint {.importc: "QMetaType_typeFlags".}
proc fcQMetaType_metaObjectForType(typeVal: cint): pointer {.importc: "QMetaType_metaObjectForType".}
proc fcQMetaType_createType(typeVal: cint): pointer {.importc: "QMetaType_create_type".}
proc fcQMetaType_destroyTypeData(typeVal: cint, data: pointer): void {.importc: "QMetaType_destroy_type_data".}
proc fcQMetaType_constructTypeWhereCopy(typeVal: cint, where: pointer, copy: pointer): pointer {.importc: "QMetaType_construct_type_where_copy".}
proc fcQMetaType_destructTypeWhere(typeVal: cint, where: pointer): void {.importc: "QMetaType_destruct_type_where".}
proc fcQMetaType_isRegisteredType(typeVal: cint): bool {.importc: "QMetaType_isRegistered_type".}
proc fcQMetaType_isValid(self: pointer): bool {.importc: "QMetaType_isValid".}
proc fcQMetaType_isRegistered(self: pointer): bool {.importc: "QMetaType_isRegistered".}
proc fcQMetaType_registerType(self: pointer): void {.importc: "QMetaType_registerType".}
proc fcQMetaType_id(self: pointer): cint {.importc: "QMetaType_id".}
proc fcQMetaType_sizeOf(self: pointer): int64 {.importc: "QMetaType_sizeOf".}
proc fcQMetaType_alignOf(self: pointer): int64 {.importc: "QMetaType_alignOf".}
proc fcQMetaType_flags(self: pointer): cint {.importc: "QMetaType_flags".}
proc fcQMetaType_metaObject(self: pointer): pointer {.importc: "QMetaType_metaObject".}
proc fcQMetaType_name(self: pointer): cstring {.importc: "QMetaType_name".}
proc fcQMetaType_createX(self: pointer): pointer {.importc: "QMetaType_create".}
proc fcQMetaType_destroyData(self: pointer, data: pointer): void {.importc: "QMetaType_destroy_data".}
proc fcQMetaType_constructWhere(self: pointer, where: pointer): pointer {.importc: "QMetaType_construct_where".}
proc fcQMetaType_destructData(self: pointer, data: pointer): void {.importc: "QMetaType_destruct_data".}
proc fcQMetaType_compareLhsRhs(self: pointer, lhs: pointer, rhs: pointer): pointer {.importc: "QMetaType_compare_lhs_rhs".}
proc fcQMetaType_equalsLhsRhs(self: pointer, lhs: pointer, rhs: pointer): bool {.importc: "QMetaType_equals_lhs_rhs".}
proc fcQMetaType_isDefaultConstructible(self: pointer): bool {.importc: "QMetaType_isDefaultConstructible".}
proc fcQMetaType_isCopyConstructible(self: pointer): bool {.importc: "QMetaType_isCopyConstructible".}
proc fcQMetaType_isMoveConstructible(self: pointer): bool {.importc: "QMetaType_isMoveConstructible".}
proc fcQMetaType_isDestructible(self: pointer): bool {.importc: "QMetaType_isDestructible".}
proc fcQMetaType_isEqualityComparable(self: pointer): bool {.importc: "QMetaType_isEqualityComparable".}
proc fcQMetaType_isOrdered(self: pointer): bool {.importc: "QMetaType_isOrdered".}
proc fcQMetaType_saveStreamData(self: pointer, stream: pointer, data: pointer): bool {.importc: "QMetaType_save_stream_data".}
proc fcQMetaType_loadStreamData(self: pointer, stream: pointer, data: pointer): bool {.importc: "QMetaType_load_stream_data".}
proc fcQMetaType_hasRegisteredDataStreamOperators(self: pointer): bool {.importc: "QMetaType_hasRegisteredDataStreamOperators".}
proc fcQMetaType_saveStreamTypeData(stream: pointer, typeVal: cint, data: pointer): bool {.importc: "QMetaType_save_stream_type_data".}
proc fcQMetaType_loadStreamTypeData(stream: pointer, typeVal: cint, data: pointer): bool {.importc: "QMetaType_load_stream_type_data".}
proc fcQMetaType_fromName(name: struct_seaqt_string): pointer {.importc: "QMetaType_fromName".}
proc fcQMetaType_debugStreamDbgRhs(self: pointer, dbg: pointer, rhs: pointer): bool {.importc: "QMetaType_debugStream_dbg_rhs".}
proc fcQMetaType_hasRegisteredDebugStreamOperator(self: pointer): bool {.importc: "QMetaType_hasRegisteredDebugStreamOperator".}
proc fcQMetaType_debugStreamDbgRhsTypeId(dbg: pointer, rhs: pointer, typeId: cint): bool {.importc: "QMetaType_debugStream_dbg_rhs_typeId".}
proc fcQMetaType_hasRegisteredDebugStreamOperatorTypeId(typeId: cint): bool {.importc: "QMetaType_hasRegisteredDebugStreamOperator_typeId".}
proc fcQMetaType_convertFromTypeFromToTypeTo(fromType: pointer, fromVal: pointer, toType: pointer, to: pointer): bool {.importc: "QMetaType_convert_fromType_from_toType_to".}
proc fcQMetaType_canConvert(fromType: pointer, toType: pointer): bool {.importc: "QMetaType_canConvert".}
proc fcQMetaType_view(fromType: pointer, fromVal: pointer, toType: pointer, to: pointer): bool {.importc: "QMetaType_view".}
proc fcQMetaType_canView(fromType: pointer, toType: pointer): bool {.importc: "QMetaType_canView".}
proc fcQMetaType_convertFromFromTypeIdToToTypeId(fromVal: pointer, fromTypeId: cint, to: pointer, toTypeId: cint): bool {.importc: "QMetaType_convert_from_fromTypeId_to_toTypeId".}
proc fcQMetaType_compareLhsRhsTypeIdResult(lhs: pointer, rhs: pointer, typeId: cint, resultVal: ptr cint): bool {.importc: "QMetaType_compare_lhs_rhs_typeId_result".}
proc fcQMetaType_equalsLhsRhsTypeIdResult(lhs: pointer, rhs: pointer, typeId: cint, resultVal: ptr cint): bool {.importc: "QMetaType_equals_lhs_rhs_typeId_result".}
proc fcQMetaType_hasRegisteredConverterFunction(fromType: pointer, toType: pointer): bool {.importc: "QMetaType_hasRegisteredConverterFunction".}
proc fcQMetaType_hasRegisteredMutableViewFunction(fromType: pointer, toType: pointer): bool {.importc: "QMetaType_hasRegisteredMutableViewFunction".}
proc fcQMetaType_unregisterConverterFunction(fromVal: pointer, to: pointer): void {.importc: "QMetaType_unregisterConverterFunction".}
proc fcQMetaType_unregisterMutableViewFunction(fromVal: pointer, to: pointer): void {.importc: "QMetaType_unregisterMutableViewFunction".}
proc fcQMetaType_unregisterMetaType(typeVal: pointer): void {.importc: "QMetaType_unregisterMetaType".}
proc fcQMetaType_iface(self: pointer): pointer {.importc: "QMetaType_iface".}
proc fcQMetaType_ifaceConst(self: pointer): pointer {.importc: "QMetaType_iface_const".}
proc fcQMetaType_createTypeCopy(typeVal: cint, copy: pointer): pointer {.importc: "QMetaType_create_type_copy".}
proc fcQMetaType_idInt(self: pointer, param1: cint): cint {.importc: "QMetaType_id_int".}
proc fcQMetaType_createCopy(self: pointer, copy: pointer): pointer {.importc: "QMetaType_create_copy".}
proc fcQMetaType_constructWhereCopy(self: pointer, where: pointer, copy: pointer): pointer {.importc: "QMetaType_construct_where_copy".}
proc fcQMetaType_new(typeVal: cint): ptr cQMetaType {.importc: "QMetaType_new_type".}
proc fcQMetaType_new2(d: pointer): ptr cQMetaType {.importc: "QMetaType_new_d".}
proc fcQMetaType_new3(): ptr cQMetaType {.importc: "QMetaType_new".}
proc fcQMetaType_new4(fromVal: pointer): ptr cQMetaType {.importc: "QMetaType_new_from".}

proc registerNormalizedTypedef*(_: type gen_qmetatype_types.QMetaType, normalizedTypeName: openArray[byte], typeVal: gen_qmetatype_types.QMetaType): void =
  fcQMetaType_registerNormalizedTypedef(struct_seaqt_string(data: if len(normalizedTypeName) > 0: addr normalizedTypeName[0] else: nil, len: csize_t(len(normalizedTypeName))), typeVal.h)

proc typeX*(_: type gen_qmetatype_types.QMetaType, typeName: cstring): cint =
  fcQMetaType_typeChar(typeName)

proc typeX*(_: type gen_qmetatype_types.QMetaType, typeName: openArray[byte]): cint =
  fcQMetaType_type_QByteArray(struct_seaqt_string(data: if len(typeName) > 0: addr typeName[0] else: nil, len: csize_t(len(typeName))))

proc typeName*(_: type gen_qmetatype_types.QMetaType, typeVal: cint): cstring =
  (fcQMetaType_typeName(typeVal))

proc sizeOf*(_: type gen_qmetatype_types.QMetaType, typeVal: cint): cint =
  fcQMetaType_sizeOfType(typeVal)

proc typeFlags*(_: type gen_qmetatype_types.QMetaType, typeVal: cint): cint =
  cint(fcQMetaType_typeFlags(typeVal))

proc metaObjectForType*(_: type gen_qmetatype_types.QMetaType, typeVal: cint): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaType_metaObjectForType(typeVal), owned: false)

proc createX*(_: type gen_qmetatype_types.QMetaType, typeVal: cint): pointer =
  fcQMetaType_createType(typeVal)

proc destroy*(_: type gen_qmetatype_types.QMetaType, typeVal: cint, data: pointer): void =
  fcQMetaType_destroyTypeData(typeVal, data)

proc construct*(_: type gen_qmetatype_types.QMetaType, typeVal: cint, where: pointer, copy: pointer): pointer =
  fcQMetaType_constructTypeWhereCopy(typeVal, where, copy)

proc destruct*(_: type gen_qmetatype_types.QMetaType, typeVal: cint, where: pointer): void =
  fcQMetaType_destructTypeWhere(typeVal, where)

proc isRegistered*(_: type gen_qmetatype_types.QMetaType, typeVal: cint): bool =
  fcQMetaType_isRegisteredType(typeVal)

proc isValid*(self: gen_qmetatype_types.QMetaType): bool =
  fcQMetaType_isValid(self.h)

proc isRegistered*(self: gen_qmetatype_types.QMetaType): bool =
  fcQMetaType_isRegistered(self.h)

proc registerType*(self: gen_qmetatype_types.QMetaType): void =
  fcQMetaType_registerType(self.h)

proc id*(self: gen_qmetatype_types.QMetaType): cint =
  fcQMetaType_id(self.h)

proc sizeOf*(self: gen_qmetatype_types.QMetaType): int64 =
  fcQMetaType_sizeOf(self.h)

proc alignOf*(self: gen_qmetatype_types.QMetaType): int64 =
  fcQMetaType_alignOf(self.h)

proc flags*(self: gen_qmetatype_types.QMetaType): cint =
  cint(fcQMetaType_flags(self.h))

proc metaObject*(self: gen_qmetatype_types.QMetaType): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaType_metaObject(self.h), owned: false)

proc name*(self: gen_qmetatype_types.QMetaType): cstring =
  (fcQMetaType_name(self.h))

proc createX*(self: gen_qmetatype_types.QMetaType): pointer =
  fcQMetaType_createX(self.h)

proc destroy*(self: gen_qmetatype_types.QMetaType, data: pointer): void =
  fcQMetaType_destroyData(self.h, data)

proc construct*(self: gen_qmetatype_types.QMetaType, where: pointer): pointer =
  fcQMetaType_constructWhere(self.h, where)

proc destruct*(self: gen_qmetatype_types.QMetaType, data: pointer): void =
  fcQMetaType_destructData(self.h, data)

proc compare*(self: gen_qmetatype_types.QMetaType, lhs: pointer, rhs: pointer): gen_qcompare_types.QPartialOrdering =
  gen_qcompare_types.QPartialOrdering(h: fcQMetaType_compareLhsRhs(self.h, lhs, rhs), owned: true)

proc equals*(self: gen_qmetatype_types.QMetaType, lhs: pointer, rhs: pointer): bool =
  fcQMetaType_equalsLhsRhs(self.h, lhs, rhs)

proc isDefaultConstructible*(self: gen_qmetatype_types.QMetaType): bool =
  fcQMetaType_isDefaultConstructible(self.h)

proc isCopyConstructible*(self: gen_qmetatype_types.QMetaType): bool =
  fcQMetaType_isCopyConstructible(self.h)

proc isMoveConstructible*(self: gen_qmetatype_types.QMetaType): bool =
  fcQMetaType_isMoveConstructible(self.h)

proc isDestructible*(self: gen_qmetatype_types.QMetaType): bool =
  fcQMetaType_isDestructible(self.h)

proc isEqualityComparable*(self: gen_qmetatype_types.QMetaType): bool =
  fcQMetaType_isEqualityComparable(self.h)

proc isOrdered*(self: gen_qmetatype_types.QMetaType): bool =
  fcQMetaType_isOrdered(self.h)

proc save*(self: gen_qmetatype_types.QMetaType, stream: gen_qdatastream_types.QDataStream, data: pointer): bool =
  fcQMetaType_saveStreamData(self.h, stream.h, data)

proc load*(self: gen_qmetatype_types.QMetaType, stream: gen_qdatastream_types.QDataStream, data: pointer): bool =
  fcQMetaType_loadStreamData(self.h, stream.h, data)

proc hasRegisteredDataStreamOperators*(self: gen_qmetatype_types.QMetaType): bool =
  fcQMetaType_hasRegisteredDataStreamOperators(self.h)

proc save*(_: type gen_qmetatype_types.QMetaType, stream: gen_qdatastream_types.QDataStream, typeVal: cint, data: pointer): bool =
  fcQMetaType_saveStreamTypeData(stream.h, typeVal, data)

proc load*(_: type gen_qmetatype_types.QMetaType, stream: gen_qdatastream_types.QDataStream, typeVal: cint, data: pointer): bool =
  fcQMetaType_loadStreamTypeData(stream.h, typeVal, data)

proc fromName*(_: type gen_qmetatype_types.QMetaType, name: openArray[byte]): gen_qmetatype_types.QMetaType =
  gen_qmetatype_types.QMetaType(h: fcQMetaType_fromName(struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc debugStream*(self: gen_qmetatype_types.QMetaType, dbg: gen_qdebug_types.QDebug, rhs: pointer): bool =
  fcQMetaType_debugStreamDbgRhs(self.h, dbg.h, rhs)

proc hasRegisteredDebugStreamOperator*(self: gen_qmetatype_types.QMetaType): bool =
  fcQMetaType_hasRegisteredDebugStreamOperator(self.h)

proc debugStream*(_: type gen_qmetatype_types.QMetaType, dbg: gen_qdebug_types.QDebug, rhs: pointer, typeId: cint): bool =
  fcQMetaType_debugStreamDbgRhsTypeId(dbg.h, rhs, typeId)

proc hasRegisteredDebugStreamOperator*(_: type gen_qmetatype_types.QMetaType, typeId: cint): bool =
  fcQMetaType_hasRegisteredDebugStreamOperatorTypeId(typeId)

proc convert*(_: type gen_qmetatype_types.QMetaType, fromType: gen_qmetatype_types.QMetaType, fromVal: pointer, toType: gen_qmetatype_types.QMetaType, to: pointer): bool =
  fcQMetaType_convertFromTypeFromToTypeTo(fromType.h, fromVal, toType.h, to)

proc canConvert*(_: type gen_qmetatype_types.QMetaType, fromType: gen_qmetatype_types.QMetaType, toType: gen_qmetatype_types.QMetaType): bool =
  fcQMetaType_canConvert(fromType.h, toType.h)

proc view*(_: type gen_qmetatype_types.QMetaType, fromType: gen_qmetatype_types.QMetaType, fromVal: pointer, toType: gen_qmetatype_types.QMetaType, to: pointer): bool =
  fcQMetaType_view(fromType.h, fromVal, toType.h, to)

proc canView*(_: type gen_qmetatype_types.QMetaType, fromType: gen_qmetatype_types.QMetaType, toType: gen_qmetatype_types.QMetaType): bool =
  fcQMetaType_canView(fromType.h, toType.h)

proc convert*(_: type gen_qmetatype_types.QMetaType, fromVal: pointer, fromTypeId: cint, to: pointer, toTypeId: cint): bool =
  fcQMetaType_convertFromFromTypeIdToToTypeId(fromVal, fromTypeId, to, toTypeId)

proc compare*(_: type gen_qmetatype_types.QMetaType, lhs: pointer, rhs: pointer, typeId: cint, resultVal: ptr cint): bool =
  fcQMetaType_compareLhsRhsTypeIdResult(lhs, rhs, typeId, resultVal)

proc equals*(_: type gen_qmetatype_types.QMetaType, lhs: pointer, rhs: pointer, typeId: cint, resultVal: ptr cint): bool =
  fcQMetaType_equalsLhsRhsTypeIdResult(lhs, rhs, typeId, resultVal)

proc hasRegisteredConverterFunction*(_: type gen_qmetatype_types.QMetaType, fromType: gen_qmetatype_types.QMetaType, toType: gen_qmetatype_types.QMetaType): bool =
  fcQMetaType_hasRegisteredConverterFunction(fromType.h, toType.h)

proc hasRegisteredMutableViewFunction*(_: type gen_qmetatype_types.QMetaType, fromType: gen_qmetatype_types.QMetaType, toType: gen_qmetatype_types.QMetaType): bool =
  fcQMetaType_hasRegisteredMutableViewFunction(fromType.h, toType.h)

proc unregisterConverterFunction*(_: type gen_qmetatype_types.QMetaType, fromVal: gen_qmetatype_types.QMetaType, to: gen_qmetatype_types.QMetaType): void =
  fcQMetaType_unregisterConverterFunction(fromVal.h, to.h)

proc unregisterMutableViewFunction*(_: type gen_qmetatype_types.QMetaType, fromVal: gen_qmetatype_types.QMetaType, to: gen_qmetatype_types.QMetaType): void =
  fcQMetaType_unregisterMutableViewFunction(fromVal.h, to.h)

proc unregisterMetaType*(_: type gen_qmetatype_types.QMetaType, typeVal: gen_qmetatype_types.QMetaType): void =
  fcQMetaType_unregisterMetaType(typeVal.h)

proc iface*(self: gen_qmetatype_types.QMetaType): pointer =
  fcQMetaType_iface(self.h)

proc iface2*(self: gen_qmetatype_types.QMetaType): pointer =
  fcQMetaType_ifaceConst(self.h)

proc createX*(_: type gen_qmetatype_types.QMetaType, typeVal: cint, copy: pointer): pointer =
  fcQMetaType_createTypeCopy(typeVal, copy)

proc id*(self: gen_qmetatype_types.QMetaType, param1: cint): cint =
  fcQMetaType_idInt(self.h, param1)

proc createX*(self: gen_qmetatype_types.QMetaType, copy: pointer): pointer =
  fcQMetaType_createCopy(self.h, copy)

proc construct*(self: gen_qmetatype_types.QMetaType, where: pointer, copy: pointer): pointer =
  fcQMetaType_constructWhereCopy(self.h, where, copy)

proc create*(T: type gen_qmetatype_types.QMetaType,
    typeVal: cint): gen_qmetatype_types.QMetaType =
  let tmp = gen_qmetatype_types.QMetaType(h: fcQMetaType_new(typeVal), owned: true)
  tmp
proc create*(T: type gen_qmetatype_types.QMetaType,
    d: pointer): gen_qmetatype_types.QMetaType =
  let tmp = gen_qmetatype_types.QMetaType(h: fcQMetaType_new2(d), owned: true)
  tmp
proc create*(T: type gen_qmetatype_types.QMetaType): gen_qmetatype_types.QMetaType =
  let tmp = gen_qmetatype_types.QMetaType(h: fcQMetaType_new3(), owned: true)
  tmp
proc create*(T: type gen_qmetatype_types.QMetaType,
    fromVal: gen_qmetatype_types.QMetaType): gen_qmetatype_types.QMetaType =
  let tmp = gen_qmetatype_types.QMetaType(h: fcQMetaType_new4(fromVal.h), owned: true)
  tmp
