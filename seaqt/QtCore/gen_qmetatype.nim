import ./Qt5Core_libs

{.push raises: [].}

from system/ansi_c import c_free

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qmetatype.cpp", cflags).}


type QtMetaTypePrivateIteratorCapabilityEnum* = distinct cint
template ForwardCapability*(_: type QtMetaTypePrivateIteratorCapabilityEnum): untyped = 1
template BiDirectionalCapability*(_: type QtMetaTypePrivateIteratorCapabilityEnum): untyped = 2
template RandomAccessCapability*(_: type QtMetaTypePrivateIteratorCapabilityEnum): untyped = 4


type QtMetaTypePrivateContainerCapabilityEnum* = distinct cint
template ContainerIsAppendable*(_: type QtMetaTypePrivateContainerCapabilityEnum): untyped = 1


type QMetaTypeTypeEnum* = distinct cint
template Void*(_: type QMetaTypeTypeEnum): untyped = 43
template Bool*(_: type QMetaTypeTypeEnum): untyped = 1
template Int*(_: type QMetaTypeTypeEnum): untyped = 2
template UInt*(_: type QMetaTypeTypeEnum): untyped = 3
template LongLong*(_: type QMetaTypeTypeEnum): untyped = 4
template ULongLong*(_: type QMetaTypeTypeEnum): untyped = 5
template Double*(_: type QMetaTypeTypeEnum): untyped = 6
template Long*(_: type QMetaTypeTypeEnum): untyped = 32
template Short*(_: type QMetaTypeTypeEnum): untyped = 33
template Char*(_: type QMetaTypeTypeEnum): untyped = 34
template ULong*(_: type QMetaTypeTypeEnum): untyped = 35
template UShort*(_: type QMetaTypeTypeEnum): untyped = 36
template UChar*(_: type QMetaTypeTypeEnum): untyped = 37
template Float*(_: type QMetaTypeTypeEnum): untyped = 38
template SChar*(_: type QMetaTypeTypeEnum): untyped = 40
template Nullptr*(_: type QMetaTypeTypeEnum): untyped = 51
template QCborSimpleType*(_: type QMetaTypeTypeEnum): untyped = 52
template VoidStar*(_: type QMetaTypeTypeEnum): untyped = 31
template QChar2*(_: type QMetaTypeTypeEnum): untyped = 7
template QString*(_: type QMetaTypeTypeEnum): untyped = 10
template QStringList*(_: type QMetaTypeTypeEnum): untyped = 11
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
template QRegExp2*(_: type QMetaTypeTypeEnum): untyped = 27
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
template QModelIndex2*(_: type QMetaTypeTypeEnum): untyped = 42
template QPersistentModelIndex2*(_: type QMetaTypeTypeEnum): untyped = 50
template QObjectStar*(_: type QMetaTypeTypeEnum): untyped = 39
template QVariantMap*(_: type QMetaTypeTypeEnum): untyped = 8
template QVariantList*(_: type QMetaTypeTypeEnum): untyped = 9
template QVariantHash*(_: type QMetaTypeTypeEnum): untyped = 28
template QByteArrayList*(_: type QMetaTypeTypeEnum): untyped = 49
template QFont*(_: type QMetaTypeTypeEnum): untyped = 64
template QPixmap*(_: type QMetaTypeTypeEnum): untyped = 65
template QBrush*(_: type QMetaTypeTypeEnum): untyped = 66
template QColor*(_: type QMetaTypeTypeEnum): untyped = 67
template QPalette*(_: type QMetaTypeTypeEnum): untyped = 68
template QIcon*(_: type QMetaTypeTypeEnum): untyped = 69
template QImage*(_: type QMetaTypeTypeEnum): untyped = 70
template QPolygon*(_: type QMetaTypeTypeEnum): untyped = 71
template QRegion*(_: type QMetaTypeTypeEnum): untyped = 72
template QBitmap*(_: type QMetaTypeTypeEnum): untyped = 73
template QCursor*(_: type QMetaTypeTypeEnum): untyped = 74
template QKeySequence*(_: type QMetaTypeTypeEnum): untyped = 75
template QPen*(_: type QMetaTypeTypeEnum): untyped = 76
template QTextLength*(_: type QMetaTypeTypeEnum): untyped = 77
template QTextFormat*(_: type QMetaTypeTypeEnum): untyped = 78
template QMatrix*(_: type QMetaTypeTypeEnum): untyped = 79
template QTransform*(_: type QMetaTypeTypeEnum): untyped = 80
template QMatrix4x4*(_: type QMetaTypeTypeEnum): untyped = 81
template QVector2D*(_: type QMetaTypeTypeEnum): untyped = 82
template QVector3D*(_: type QMetaTypeTypeEnum): untyped = 83
template QVector4D*(_: type QMetaTypeTypeEnum): untyped = 84
template QQuaternion*(_: type QMetaTypeTypeEnum): untyped = 85
template QPolygonF*(_: type QMetaTypeTypeEnum): untyped = 86
template QColorSpace*(_: type QMetaTypeTypeEnum): untyped = 87
template QSizePolicy*(_: type QMetaTypeTypeEnum): untyped = 121
template FirstCoreType*(_: type QMetaTypeTypeEnum): untyped = 1
template LastCoreType*(_: type QMetaTypeTypeEnum): untyped = 55
template FirstGuiType*(_: type QMetaTypeTypeEnum): untyped = 64
template LastGuiType*(_: type QMetaTypeTypeEnum): untyped = 87
template FirstWidgetsType*(_: type QMetaTypeTypeEnum): untyped = 121
template LastWidgetsType*(_: type QMetaTypeTypeEnum): untyped = 121
template HighestInternalId*(_: type QMetaTypeTypeEnum): untyped = 121
template QReal*(_: type QMetaTypeTypeEnum): untyped = 6
template UnknownType*(_: type QMetaTypeTypeEnum): untyped = 0
template User*(_: type QMetaTypeTypeEnum): untyped = 1024


type QMetaTypeTypeFlagEnum* = distinct cint
template NeedsConstruction*(_: type QMetaTypeTypeFlagEnum): untyped = 1
template NeedsDestruction*(_: type QMetaTypeTypeFlagEnum): untyped = 2
template MovableType*(_: type QMetaTypeTypeFlagEnum): untyped = 4
template PointerToQObject*(_: type QMetaTypeTypeFlagEnum): untyped = 8
template IsEnumeration*(_: type QMetaTypeTypeFlagEnum): untyped = 16
template SharedPointerToQObject*(_: type QMetaTypeTypeFlagEnum): untyped = 32
template WeakPointerToQObject*(_: type QMetaTypeTypeFlagEnum): untyped = 64
template TrackingPointerToQObject*(_: type QMetaTypeTypeFlagEnum): untyped = 128
template WasDeclaredAsMetaType*(_: type QMetaTypeTypeFlagEnum): untyped = 256
template IsGadget*(_: type QMetaTypeTypeFlagEnum): untyped = 512
template PointerToGadget*(_: type QMetaTypeTypeFlagEnum): untyped = 1024


type QtMetaTypePrivateQSequentialIterableImplPositionEnum* = distinct cint
template ToBegin*(_: type QtMetaTypePrivateQSequentialIterableImplPositionEnum): untyped = 0
template ToEnd*(_: type QtMetaTypePrivateQSequentialIterableImplPositionEnum): untyped = 1


import ./gen_qmetatype_types
export gen_qmetatype_types

import
  ./gen_qdatastream_types,
  ./gen_qdebug_types,
  ./gen_qobjectdefs_types
export
  gen_qdatastream_types,
  gen_qdebug_types,
  gen_qobjectdefs_types

type cQMetaType*{.exportc: "QMetaType", incompleteStruct.} = object

proc fcQMetaType_unregisterType(typeVal: cint): bool {.importc: "QMetaType_unregisterType".}
proc fcQMetaType_registerTypedef(typeName: cstring, aliasId: cint): cint {.importc: "QMetaType_registerTypedef".}
proc fcQMetaType_registerNormalizedTypedef(normalizedTypeName: struct_miqt_string, aliasId: cint): cint {.importc: "QMetaType_registerNormalizedTypedef".}
proc fcQMetaType_typeX(typeName: cstring): cint {.importc: "QMetaType_type".}
proc fcQMetaType_typeWithTypeName(typeName: struct_miqt_string): cint {.importc: "QMetaType_typeWithTypeName".}
proc fcQMetaType_typeName(typeVal: cint): cstring {.importc: "QMetaType_typeName".}
proc fcQMetaType_sizeOf(typeVal: cint): cint {.importc: "QMetaType_sizeOf".}
proc fcQMetaType_typeFlags(typeVal: cint): cint {.importc: "QMetaType_typeFlags".}
proc fcQMetaType_metaObjectForType(typeVal: cint): pointer {.importc: "QMetaType_metaObjectForType".}
proc fcQMetaType_isRegistered(typeVal: cint): bool {.importc: "QMetaType_isRegistered".}
proc fcQMetaType_create(typeVal: cint): pointer {.importc: "QMetaType_create".}
proc fcQMetaType_destroy(typeVal: cint, data: pointer): void {.importc: "QMetaType_destroy".}
proc fcQMetaType_construct(typeVal: cint, where: pointer, copy: pointer): pointer {.importc: "QMetaType_construct".}
proc fcQMetaType_destruct(typeVal: cint, where: pointer): void {.importc: "QMetaType_destruct".}
proc fcQMetaType_save(stream: pointer, typeVal: cint, data: pointer): bool {.importc: "QMetaType_save".}
proc fcQMetaType_load(stream: pointer, typeVal: cint, data: pointer): bool {.importc: "QMetaType_load".}
proc fcQMetaType_isValid(self: pointer, ): bool {.importc: "QMetaType_isValid".}
proc fcQMetaType_isRegistered2(self: pointer, ): bool {.importc: "QMetaType_isRegistered2".}
proc fcQMetaType_id(self: pointer, ): cint {.importc: "QMetaType_id".}
proc fcQMetaType_sizeOf2(self: pointer, ): cint {.importc: "QMetaType_sizeOf2".}
proc fcQMetaType_flags(self: pointer, ): cint {.importc: "QMetaType_flags".}
proc fcQMetaType_metaObject(self: pointer, ): pointer {.importc: "QMetaType_metaObject".}
proc fcQMetaType_name(self: pointer, ): struct_miqt_string {.importc: "QMetaType_name".}
proc fcQMetaType_create2(self: pointer, ): pointer {.importc: "QMetaType_create2".}
proc fcQMetaType_destroyWithData(self: pointer, data: pointer): void {.importc: "QMetaType_destroyWithData".}
proc fcQMetaType_constructWithWhere(self: pointer, where: pointer): pointer {.importc: "QMetaType_constructWithWhere".}
proc fcQMetaType_destructWithData(self: pointer, data: pointer): void {.importc: "QMetaType_destructWithData".}
proc fcQMetaType_hasRegisteredComparators(typeId: cint): bool {.importc: "QMetaType_hasRegisteredComparators".}
proc fcQMetaType_hasRegisteredDebugStreamOperator(typeId: cint): bool {.importc: "QMetaType_hasRegisteredDebugStreamOperator".}
proc fcQMetaType_convert(fromVal: pointer, fromTypeId: cint, to: pointer, toTypeId: cint): bool {.importc: "QMetaType_convert".}
proc fcQMetaType_compare(lhs: pointer, rhs: pointer, typeId: cint, resultVal: ptr cint): bool {.importc: "QMetaType_compare".}
proc fcQMetaType_equals(lhs: pointer, rhs: pointer, typeId: cint, resultVal: ptr cint): bool {.importc: "QMetaType_equals".}
proc fcQMetaType_debugStream(dbg: pointer, rhs: pointer, typeId: cint): bool {.importc: "QMetaType_debugStream".}
proc fcQMetaType_hasRegisteredConverterFunction(fromTypeId: cint, toTypeId: cint): bool {.importc: "QMetaType_hasRegisteredConverterFunction".}
proc fcQMetaType_create22(typeVal: cint, copy: pointer): pointer {.importc: "QMetaType_create22".}
proc fcQMetaType_create1(self: pointer, copy: pointer): pointer {.importc: "QMetaType_create1".}
proc fcQMetaType_construct2(self: pointer, where: pointer, copy: pointer): pointer {.importc: "QMetaType_construct2".}
proc fcQMetaType_new(): ptr cQMetaType {.importc: "QMetaType_new".}
proc fcQMetaType_new2(typeVal: cint): ptr cQMetaType {.importc: "QMetaType_new2".}
proc fcQMetaType_delete(self: pointer) {.importc: "QMetaType_delete".}

proc unregisterType*(_: type gen_qmetatype_types.QMetaType, typeVal: cint): bool =
  fcQMetaType_unregisterType(typeVal)

proc registerTypedef*(_: type gen_qmetatype_types.QMetaType, typeName: cstring, aliasId: cint): cint =
  fcQMetaType_registerTypedef(typeName, aliasId)

proc registerNormalizedTypedef*(_: type gen_qmetatype_types.QMetaType, normalizedTypeName: seq[byte], aliasId: cint): cint =
  fcQMetaType_registerNormalizedTypedef(struct_miqt_string(data: cast[cstring](if len(normalizedTypeName) == 0: nil else: unsafeAddr normalizedTypeName[0]), len: csize_t(len(normalizedTypeName))), aliasId)

proc typeX*(_: type gen_qmetatype_types.QMetaType, typeName: cstring): cint =
  fcQMetaType_typeX(typeName)

proc typeX*(_: type gen_qmetatype_types.QMetaType, typeName: seq[byte]): cint =
  fcQMetaType_typeWithTypeName(struct_miqt_string(data: cast[cstring](if len(typeName) == 0: nil else: unsafeAddr typeName[0]), len: csize_t(len(typeName))))

proc typeName*(_: type gen_qmetatype_types.QMetaType, typeVal: cint): cstring =
  (fcQMetaType_typeName(typeVal))

proc sizeOf*(_: type gen_qmetatype_types.QMetaType, typeVal: cint): cint =
  fcQMetaType_sizeOf(typeVal)

proc typeFlags*(_: type gen_qmetatype_types.QMetaType, typeVal: cint): cint =
  cint(fcQMetaType_typeFlags(typeVal))

proc metaObjectForType*(_: type gen_qmetatype_types.QMetaType, typeVal: cint): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaType_metaObjectForType(typeVal))

proc isRegistered*(_: type gen_qmetatype_types.QMetaType, typeVal: cint): bool =
  fcQMetaType_isRegistered(typeVal)

proc create*(_: type gen_qmetatype_types.QMetaType, typeVal: cint): pointer =
  fcQMetaType_create(typeVal)

proc destroy*(_: type gen_qmetatype_types.QMetaType, typeVal: cint, data: pointer): void =
  fcQMetaType_destroy(typeVal, data)

proc construct*(_: type gen_qmetatype_types.QMetaType, typeVal: cint, where: pointer, copy: pointer): pointer =
  fcQMetaType_construct(typeVal, where, copy)

proc destruct*(_: type gen_qmetatype_types.QMetaType, typeVal: cint, where: pointer): void =
  fcQMetaType_destruct(typeVal, where)

proc save*(_: type gen_qmetatype_types.QMetaType, stream: gen_qdatastream_types.QDataStream, typeVal: cint, data: pointer): bool =
  fcQMetaType_save(stream.h, typeVal, data)

proc load*(_: type gen_qmetatype_types.QMetaType, stream: gen_qdatastream_types.QDataStream, typeVal: cint, data: pointer): bool =
  fcQMetaType_load(stream.h, typeVal, data)

proc isValid*(self: gen_qmetatype_types.QMetaType, ): bool =
  fcQMetaType_isValid(self.h)

proc isRegistered*(self: gen_qmetatype_types.QMetaType, ): bool =
  fcQMetaType_isRegistered2(self.h)

proc id*(self: gen_qmetatype_types.QMetaType, ): cint =
  fcQMetaType_id(self.h)

proc sizeOf*(self: gen_qmetatype_types.QMetaType, ): cint =
  fcQMetaType_sizeOf2(self.h)

proc flags*(self: gen_qmetatype_types.QMetaType, ): cint =
  cint(fcQMetaType_flags(self.h))

proc metaObject*(self: gen_qmetatype_types.QMetaType, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaType_metaObject(self.h))

proc name*(self: gen_qmetatype_types.QMetaType, ): seq[byte] =
  var v_bytearray = fcQMetaType_name(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc create*(self: gen_qmetatype_types.QMetaType, ): pointer =
  fcQMetaType_create2(self.h)

proc destroy*(self: gen_qmetatype_types.QMetaType, data: pointer): void =
  fcQMetaType_destroyWithData(self.h, data)

proc construct*(self: gen_qmetatype_types.QMetaType, where: pointer): pointer =
  fcQMetaType_constructWithWhere(self.h, where)

proc destruct*(self: gen_qmetatype_types.QMetaType, data: pointer): void =
  fcQMetaType_destructWithData(self.h, data)

proc hasRegisteredComparators*(_: type gen_qmetatype_types.QMetaType, typeId: cint): bool =
  fcQMetaType_hasRegisteredComparators(typeId)

proc hasRegisteredDebugStreamOperator*(_: type gen_qmetatype_types.QMetaType, typeId: cint): bool =
  fcQMetaType_hasRegisteredDebugStreamOperator(typeId)

proc convert*(_: type gen_qmetatype_types.QMetaType, fromVal: pointer, fromTypeId: cint, to: pointer, toTypeId: cint): bool =
  fcQMetaType_convert(fromVal, fromTypeId, to, toTypeId)

proc compare*(_: type gen_qmetatype_types.QMetaType, lhs: pointer, rhs: pointer, typeId: cint, resultVal: ptr cint): bool =
  fcQMetaType_compare(lhs, rhs, typeId, resultVal)

proc equals*(_: type gen_qmetatype_types.QMetaType, lhs: pointer, rhs: pointer, typeId: cint, resultVal: ptr cint): bool =
  fcQMetaType_equals(lhs, rhs, typeId, resultVal)

proc debugStream*(_: type gen_qmetatype_types.QMetaType, dbg: gen_qdebug_types.QDebug, rhs: pointer, typeId: cint): bool =
  fcQMetaType_debugStream(dbg.h, rhs, typeId)

proc hasRegisteredConverterFunction*(_: type gen_qmetatype_types.QMetaType, fromTypeId: cint, toTypeId: cint): bool =
  fcQMetaType_hasRegisteredConverterFunction(fromTypeId, toTypeId)

proc create*(_: type gen_qmetatype_types.QMetaType, typeVal: cint, copy: pointer): pointer =
  fcQMetaType_create22(typeVal, copy)

proc create*(self: gen_qmetatype_types.QMetaType, copy: pointer): pointer =
  fcQMetaType_create1(self.h, copy)

proc construct*(self: gen_qmetatype_types.QMetaType, where: pointer, copy: pointer): pointer =
  fcQMetaType_construct2(self.h, where, copy)

proc create*(T: type gen_qmetatype_types.QMetaType): gen_qmetatype_types.QMetaType =
  gen_qmetatype_types.QMetaType(h: fcQMetaType_new())

proc create*(T: type gen_qmetatype_types.QMetaType,
    typeVal: cint): gen_qmetatype_types.QMetaType =
  gen_qmetatype_types.QMetaType(h: fcQMetaType_new2(typeVal))

proc delete*(self: gen_qmetatype_types.QMetaType) =
  fcQMetaType_delete(self.h)
