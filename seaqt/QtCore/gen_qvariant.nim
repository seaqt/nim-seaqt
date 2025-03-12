import ./Qt6Core_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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


type QVariantTypeEnum* = distinct cint
template Invalid*(_: type QVariantTypeEnum): untyped = 0
template Bool*(_: type QVariantTypeEnum): untyped = 1
template Int*(_: type QVariantTypeEnum): untyped = 2
template UInt*(_: type QVariantTypeEnum): untyped = 3
template LongLong*(_: type QVariantTypeEnum): untyped = 4
template ULongLong*(_: type QVariantTypeEnum): untyped = 5
template Double*(_: type QVariantTypeEnum): untyped = 6
template Char*(_: type QVariantTypeEnum): untyped = 7
template Map*(_: type QVariantTypeEnum): untyped = 8
template List*(_: type QVariantTypeEnum): untyped = 9
template String*(_: type QVariantTypeEnum): untyped = 10
template StringList*(_: type QVariantTypeEnum): untyped = 11
template ByteArray*(_: type QVariantTypeEnum): untyped = 12
template BitArray*(_: type QVariantTypeEnum): untyped = 13
template Date*(_: type QVariantTypeEnum): untyped = 14
template Time*(_: type QVariantTypeEnum): untyped = 15
template DateTime*(_: type QVariantTypeEnum): untyped = 16
template Url*(_: type QVariantTypeEnum): untyped = 17
template Locale*(_: type QVariantTypeEnum): untyped = 18
template Rect*(_: type QVariantTypeEnum): untyped = 19
template RectF*(_: type QVariantTypeEnum): untyped = 20
template Size*(_: type QVariantTypeEnum): untyped = 21
template SizeF*(_: type QVariantTypeEnum): untyped = 22
template Line*(_: type QVariantTypeEnum): untyped = 23
template LineF*(_: type QVariantTypeEnum): untyped = 24
template Point*(_: type QVariantTypeEnum): untyped = 25
template PointF*(_: type QVariantTypeEnum): untyped = 26
template RegularExpression*(_: type QVariantTypeEnum): untyped = 44
template Hash*(_: type QVariantTypeEnum): untyped = 28
template EasingCurve*(_: type QVariantTypeEnum): untyped = 29
template Uuid*(_: type QVariantTypeEnum): untyped = 30
template ModelIndex*(_: type QVariantTypeEnum): untyped = 42
template PersistentModelIndex*(_: type QVariantTypeEnum): untyped = 50
template LastCoreType*(_: type QVariantTypeEnum): untyped = 58
template Font*(_: type QVariantTypeEnum): untyped = 4096
template Pixmap*(_: type QVariantTypeEnum): untyped = 4097
template Brush*(_: type QVariantTypeEnum): untyped = 4098
template Color*(_: type QVariantTypeEnum): untyped = 4099
template Palette*(_: type QVariantTypeEnum): untyped = 4100
template Image*(_: type QVariantTypeEnum): untyped = 4102
template Polygon*(_: type QVariantTypeEnum): untyped = 4103
template Region*(_: type QVariantTypeEnum): untyped = 4104
template Bitmap*(_: type QVariantTypeEnum): untyped = 4105
template Cursor*(_: type QVariantTypeEnum): untyped = 4106
template KeySequence*(_: type QVariantTypeEnum): untyped = 4107
template Pen*(_: type QVariantTypeEnum): untyped = 4108
template TextLength*(_: type QVariantTypeEnum): untyped = 4109
template TextFormat*(_: type QVariantTypeEnum): untyped = 4110
template Transform*(_: type QVariantTypeEnum): untyped = 4112
template Matrix4x4*(_: type QVariantTypeEnum): untyped = 4113
template Vector2D*(_: type QVariantTypeEnum): untyped = 4114
template Vector3D*(_: type QVariantTypeEnum): untyped = 4115
template Vector4D*(_: type QVariantTypeEnum): untyped = 4116
template Quaternion*(_: type QVariantTypeEnum): untyped = 4117
template PolygonF*(_: type QVariantTypeEnum): untyped = 4118
template Icon*(_: type QVariantTypeEnum): untyped = 4101
template LastGuiType*(_: type QVariantTypeEnum): untyped = 4119
template SizePolicy*(_: type QVariantTypeEnum): untyped = 8192
template UserType*(_: type QVariantTypeEnum): untyped = 65536
template LastType*(_: type QVariantTypeEnum): untyped = 4294967295


import ./gen_qvariant_types
export gen_qvariant_types

import
  ./gen_qabstractitemmodel_types,
  ./gen_qbitarray_types,
  ./gen_qchar_types,
  ./gen_qcompare_types,
  ./gen_qdatastream_types,
  ./gen_qdatetime_types,
  ./gen_qeasingcurve_types,
  ./gen_qjsonarray_types,
  ./gen_qjsondocument_types,
  ./gen_qjsonobject_types,
  ./gen_qjsonvalue_types,
  ./gen_qline_types,
  ./gen_qlocale_types,
  ./gen_qmetatype_types,
  ./gen_qobject_types,
  ./gen_qpoint_types,
  ./gen_qrect_types,
  ./gen_qregularexpression_types,
  ./gen_qsize_types,
  ./gen_qurl_types,
  ./gen_quuid_types,
  std/tables
export
  gen_qabstractitemmodel_types,
  gen_qbitarray_types,
  gen_qchar_types,
  gen_qcompare_types,
  gen_qdatastream_types,
  gen_qdatetime_types,
  gen_qeasingcurve_types,
  gen_qjsonarray_types,
  gen_qjsondocument_types,
  gen_qjsonobject_types,
  gen_qjsonvalue_types,
  gen_qline_types,
  gen_qlocale_types,
  gen_qmetatype_types,
  gen_qobject_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qregularexpression_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_quuid_types

type cQVariant*{.exportc: "QVariant", incompleteStruct.} = object
type cQVariantConstPointer*{.exportc: "QVariantConstPointer", incompleteStruct.} = object

proc fcQVariant_operatorAssign(self: pointer, other: pointer): void {.importc: "QVariant_operatorAssign".}
proc fcQVariant_swap(self: pointer, other: pointer): void {.importc: "QVariant_swap".}
proc fcQVariant_userType(self: pointer): cint {.importc: "QVariant_userType".}
proc fcQVariant_typeId(self: pointer): cint {.importc: "QVariant_typeId".}
proc fcQVariant_typeName(self: pointer): cstring {.importc: "QVariant_typeName".}
proc fcQVariant_metaType(self: pointer): pointer {.importc: "QVariant_metaType".}
proc fcQVariant_canConvert(self: pointer, targetType: pointer): bool {.importc: "QVariant_canConvert".}
proc fcQVariant_convert(self: pointer, typeVal: pointer): bool {.importc: "QVariant_convert".}
proc fcQVariant_canView(self: pointer, targetType: pointer): bool {.importc: "QVariant_canView".}
proc fcQVariant_canConvertWithTargetTypeId(self: pointer, targetTypeId: cint): bool {.importc: "QVariant_canConvertWithTargetTypeId".}
proc fcQVariant_convertWithTargetTypeId(self: pointer, targetTypeId: cint): bool {.importc: "QVariant_convertWithTargetTypeId".}
proc fcQVariant_isValid(self: pointer): bool {.importc: "QVariant_isValid".}
proc fcQVariant_isNull(self: pointer): bool {.importc: "QVariant_isNull".}
proc fcQVariant_clear(self: pointer): void {.importc: "QVariant_clear".}
proc fcQVariant_detach(self: pointer): void {.importc: "QVariant_detach".}
proc fcQVariant_isDetached(self: pointer): bool {.importc: "QVariant_isDetached".}
proc fcQVariant_toInt(self: pointer): cint {.importc: "QVariant_toInt".}
proc fcQVariant_toUInt(self: pointer): cuint {.importc: "QVariant_toUInt".}
proc fcQVariant_toLongLong(self: pointer): clonglong {.importc: "QVariant_toLongLong".}
proc fcQVariant_toULongLong(self: pointer): culonglong {.importc: "QVariant_toULongLong".}
proc fcQVariant_toBool(self: pointer): bool {.importc: "QVariant_toBool".}
proc fcQVariant_toDouble(self: pointer): float64 {.importc: "QVariant_toDouble".}
proc fcQVariant_toFloat(self: pointer): float32 {.importc: "QVariant_toFloat".}
proc fcQVariant_toReal(self: pointer): float64 {.importc: "QVariant_toReal".}
proc fcQVariant_toByteArray(self: pointer): struct_miqt_string {.importc: "QVariant_toByteArray".}
proc fcQVariant_toBitArray(self: pointer): pointer {.importc: "QVariant_toBitArray".}
proc fcQVariant_toString(self: pointer): struct_miqt_string {.importc: "QVariant_toString".}
proc fcQVariant_toStringList(self: pointer): struct_miqt_array {.importc: "QVariant_toStringList".}
proc fcQVariant_toChar(self: pointer): pointer {.importc: "QVariant_toChar".}
proc fcQVariant_toDate(self: pointer): pointer {.importc: "QVariant_toDate".}
proc fcQVariant_toTime(self: pointer): pointer {.importc: "QVariant_toTime".}
proc fcQVariant_toDateTime(self: pointer): pointer {.importc: "QVariant_toDateTime".}
proc fcQVariant_toMap(self: pointer): struct_miqt_map {.importc: "QVariant_toMap".}
proc fcQVariant_toHash(self: pointer): struct_miqt_map {.importc: "QVariant_toHash".}
proc fcQVariant_toPoint(self: pointer): pointer {.importc: "QVariant_toPoint".}
proc fcQVariant_toPointF(self: pointer): pointer {.importc: "QVariant_toPointF".}
proc fcQVariant_toRect(self: pointer): pointer {.importc: "QVariant_toRect".}
proc fcQVariant_toSize(self: pointer): pointer {.importc: "QVariant_toSize".}
proc fcQVariant_toSizeF(self: pointer): pointer {.importc: "QVariant_toSizeF".}
proc fcQVariant_toLine(self: pointer): pointer {.importc: "QVariant_toLine".}
proc fcQVariant_toLineF(self: pointer): pointer {.importc: "QVariant_toLineF".}
proc fcQVariant_toRectF(self: pointer): pointer {.importc: "QVariant_toRectF".}
proc fcQVariant_toLocale(self: pointer): pointer {.importc: "QVariant_toLocale".}
proc fcQVariant_toRegularExpression(self: pointer): pointer {.importc: "QVariant_toRegularExpression".}
proc fcQVariant_toEasingCurve(self: pointer): pointer {.importc: "QVariant_toEasingCurve".}
proc fcQVariant_toUuid(self: pointer): pointer {.importc: "QVariant_toUuid".}
proc fcQVariant_toUrl(self: pointer): pointer {.importc: "QVariant_toUrl".}
proc fcQVariant_toJsonValue(self: pointer): pointer {.importc: "QVariant_toJsonValue".}
proc fcQVariant_toJsonObject(self: pointer): pointer {.importc: "QVariant_toJsonObject".}
proc fcQVariant_toJsonArray(self: pointer): pointer {.importc: "QVariant_toJsonArray".}
proc fcQVariant_toJsonDocument(self: pointer): pointer {.importc: "QVariant_toJsonDocument".}
proc fcQVariant_toModelIndex(self: pointer): pointer {.importc: "QVariant_toModelIndex".}
proc fcQVariant_toPersistentModelIndex(self: pointer): pointer {.importc: "QVariant_toPersistentModelIndex".}
proc fcQVariant_load(self: pointer, ds: pointer): void {.importc: "QVariant_load".}
proc fcQVariant_save(self: pointer, ds: pointer): void {.importc: "QVariant_save".}
proc fcQVariant_typeX(self: pointer): cint {.importc: "QVariant_type".}
proc fcQVariant_typeToName(typeId: cint): cstring {.importc: "QVariant_typeToName".}
proc fcQVariant_nameToType(name: cstring): cint {.importc: "QVariant_nameToType".}
proc fcQVariant_data(self: pointer): pointer {.importc: "QVariant_data".}
proc fcQVariant_constData(self: pointer): pointer {.importc: "QVariant_constData".}
proc fcQVariant_data2(self: pointer): pointer {.importc: "QVariant_data2".}
proc fcQVariant_setValue(self: pointer, avalue: pointer): void {.importc: "QVariant_setValue".}
proc fcQVariant_compare(lhs: pointer, rhs: pointer): pointer {.importc: "QVariant_compare".}
proc fcQVariant_toInt1(self: pointer, ok: ptr bool): cint {.importc: "QVariant_toInt1".}
proc fcQVariant_toUInt1(self: pointer, ok: ptr bool): cuint {.importc: "QVariant_toUInt1".}
proc fcQVariant_toLongLong1(self: pointer, ok: ptr bool): clonglong {.importc: "QVariant_toLongLong1".}
proc fcQVariant_toULongLong1(self: pointer, ok: ptr bool): culonglong {.importc: "QVariant_toULongLong1".}
proc fcQVariant_toDouble1(self: pointer, ok: ptr bool): float64 {.importc: "QVariant_toDouble1".}
proc fcQVariant_toFloat1(self: pointer, ok: ptr bool): float32 {.importc: "QVariant_toFloat1".}
proc fcQVariant_toReal1(self: pointer, ok: ptr bool): float64 {.importc: "QVariant_toReal1".}
proc fcQVariant_fromValue(value: pointer): pointer {.importc: "QVariant_fromValue".}
proc fcQVariant_protectedbase_create(self: pointer, typeVal: cint, copy: pointer): void {.importc: "QVariant_protectedbase_create".}
proc fcQVariant_protectedbase_create2(self: pointer, typeVal: pointer, copy: pointer): void {.importc: "QVariant_protectedbase_create2".}
proc fcQVariant_protectedbase_equals(self: pointer, other: pointer): bool {.importc: "QVariant_protectedbase_equals".}
proc fcQVariant_protectedbase_convert2(self: pointer, typeVal: cint, ptrVal: pointer): bool {.importc: "QVariant_protectedbase_convert2".}
proc fcQVariant_protectedbase_view(self: pointer, typeVal: cint, ptrVal: pointer): bool {.importc: "QVariant_protectedbase_view".}
proc fcQVariant_new(): ptr cQVariant {.importc: "QVariant_new".}
proc fcQVariant_new2(typeVal: pointer): ptr cQVariant {.importc: "QVariant_new2".}
proc fcQVariant_new3(other: pointer): ptr cQVariant {.importc: "QVariant_new3".}
proc fcQVariant_new4(i: cint): ptr cQVariant {.importc: "QVariant_new4".}
proc fcQVariant_new5(ui: cuint): ptr cQVariant {.importc: "QVariant_new5".}
proc fcQVariant_new6(ll: clonglong): ptr cQVariant {.importc: "QVariant_new6".}
proc fcQVariant_new7(ull: culonglong): ptr cQVariant {.importc: "QVariant_new7".}
proc fcQVariant_new8(b: bool): ptr cQVariant {.importc: "QVariant_new8".}
proc fcQVariant_new9(d: float64): ptr cQVariant {.importc: "QVariant_new9".}
proc fcQVariant_new10(f: float32): ptr cQVariant {.importc: "QVariant_new10".}
proc fcQVariant_new11(str: cstring): ptr cQVariant {.importc: "QVariant_new11".}
proc fcQVariant_new12(bytearray: struct_miqt_string): ptr cQVariant {.importc: "QVariant_new12".}
proc fcQVariant_new13(bitarray: pointer): ptr cQVariant {.importc: "QVariant_new13".}
proc fcQVariant_new14(string: struct_miqt_string): ptr cQVariant {.importc: "QVariant_new14".}
proc fcQVariant_new15(stringlist: struct_miqt_array): ptr cQVariant {.importc: "QVariant_new15".}
proc fcQVariant_new16(qchar: pointer): ptr cQVariant {.importc: "QVariant_new16".}
proc fcQVariant_new17(date: pointer): ptr cQVariant {.importc: "QVariant_new17".}
proc fcQVariant_new18(time: pointer): ptr cQVariant {.importc: "QVariant_new18".}
proc fcQVariant_new19(datetime: pointer): ptr cQVariant {.importc: "QVariant_new19".}
proc fcQVariant_new20(map: struct_miqt_map): ptr cQVariant {.importc: "QVariant_new20".}
proc fcQVariant_new21(hash: struct_miqt_map): ptr cQVariant {.importc: "QVariant_new21".}
proc fcQVariant_new22(size: pointer): ptr cQVariant {.importc: "QVariant_new22".}
proc fcQVariant_new23(size: pointer): ptr cQVariant {.importc: "QVariant_new23".}
proc fcQVariant_new24(pt: pointer): ptr cQVariant {.importc: "QVariant_new24".}
proc fcQVariant_new25(pt: pointer): ptr cQVariant {.importc: "QVariant_new25".}
proc fcQVariant_new26(line: pointer): ptr cQVariant {.importc: "QVariant_new26".}
proc fcQVariant_new27(line: pointer): ptr cQVariant {.importc: "QVariant_new27".}
proc fcQVariant_new28(rect: pointer): ptr cQVariant {.importc: "QVariant_new28".}
proc fcQVariant_new29(rect: pointer): ptr cQVariant {.importc: "QVariant_new29".}
proc fcQVariant_new30(locale: pointer): ptr cQVariant {.importc: "QVariant_new30".}
proc fcQVariant_new31(re: pointer): ptr cQVariant {.importc: "QVariant_new31".}
proc fcQVariant_new32(easing: pointer): ptr cQVariant {.importc: "QVariant_new32".}
proc fcQVariant_new33(uuid: pointer): ptr cQVariant {.importc: "QVariant_new33".}
proc fcQVariant_new34(url: pointer): ptr cQVariant {.importc: "QVariant_new34".}
proc fcQVariant_new35(jsonValue: pointer): ptr cQVariant {.importc: "QVariant_new35".}
proc fcQVariant_new36(jsonObject: pointer): ptr cQVariant {.importc: "QVariant_new36".}
proc fcQVariant_new37(jsonArray: pointer): ptr cQVariant {.importc: "QVariant_new37".}
proc fcQVariant_new38(jsonDocument: pointer): ptr cQVariant {.importc: "QVariant_new38".}
proc fcQVariant_new39(modelIndex: pointer): ptr cQVariant {.importc: "QVariant_new39".}
proc fcQVariant_new40(modelIndex: pointer): ptr cQVariant {.importc: "QVariant_new40".}
proc fcQVariant_new41(typeVal: cint): ptr cQVariant {.importc: "QVariant_new41".}
proc fcQVariant_new42(typeVal: pointer, copy: pointer): ptr cQVariant {.importc: "QVariant_new42".}
proc fcQVariantConstPointer_operatorMultiply(self: pointer): pointer {.importc: "QVariantConstPointer_operatorMultiply".}
proc fcQVariantConstPointer_operatorMinusGreater(self: pointer): pointer {.importc: "QVariantConstPointer_operatorMinusGreater".}
proc fcQVariantConstPointer_operatorAssign(self: pointer, param1: pointer): void {.importc: "QVariantConstPointer_operatorAssign".}
proc fcQVariantConstPointer_new(variant: pointer): ptr cQVariantConstPointer {.importc: "QVariantConstPointer_new".}
proc fcQVariantConstPointer_new2(param1: pointer): ptr cQVariantConstPointer {.importc: "QVariantConstPointer_new2".}

proc operatorAssign*(self: gen_qvariant_types.QVariant, other: gen_qvariant_types.QVariant): void =
  fcQVariant_operatorAssign(self.h, other.h)

proc swap*(self: gen_qvariant_types.QVariant, other: gen_qvariant_types.QVariant): void =
  fcQVariant_swap(self.h, other.h)

proc userType*(self: gen_qvariant_types.QVariant): cint =
  fcQVariant_userType(self.h)

proc typeId*(self: gen_qvariant_types.QVariant): cint =
  fcQVariant_typeId(self.h)

proc typeName*(self: gen_qvariant_types.QVariant): cstring =
  (fcQVariant_typeName(self.h))

proc metaType*(self: gen_qvariant_types.QVariant): gen_qmetatype_types.QMetaType =
  gen_qmetatype_types.QMetaType(h: fcQVariant_metaType(self.h), owned: true)

proc canConvert*(self: gen_qvariant_types.QVariant, targetType: gen_qmetatype_types.QMetaType): bool =
  fcQVariant_canConvert(self.h, targetType.h)

proc convert*(self: gen_qvariant_types.QVariant, typeVal: gen_qmetatype_types.QMetaType): bool =
  fcQVariant_convert(self.h, typeVal.h)

proc canView*(self: gen_qvariant_types.QVariant, targetType: gen_qmetatype_types.QMetaType): bool =
  fcQVariant_canView(self.h, targetType.h)

proc canConvert*(self: gen_qvariant_types.QVariant, targetTypeId: cint): bool =
  fcQVariant_canConvertWithTargetTypeId(self.h, targetTypeId)

proc convert*(self: gen_qvariant_types.QVariant, targetTypeId: cint): bool =
  fcQVariant_convertWithTargetTypeId(self.h, targetTypeId)

proc isValid*(self: gen_qvariant_types.QVariant): bool =
  fcQVariant_isValid(self.h)

proc isNull*(self: gen_qvariant_types.QVariant): bool =
  fcQVariant_isNull(self.h)

proc clear*(self: gen_qvariant_types.QVariant): void =
  fcQVariant_clear(self.h)

proc detach*(self: gen_qvariant_types.QVariant): void =
  fcQVariant_detach(self.h)

proc isDetached*(self: gen_qvariant_types.QVariant): bool =
  fcQVariant_isDetached(self.h)

proc toInt*(self: gen_qvariant_types.QVariant): cint =
  fcQVariant_toInt(self.h)

proc toUInt*(self: gen_qvariant_types.QVariant): cuint =
  fcQVariant_toUInt(self.h)

proc toLongLong*(self: gen_qvariant_types.QVariant): clonglong =
  fcQVariant_toLongLong(self.h)

proc toULongLong*(self: gen_qvariant_types.QVariant): culonglong =
  fcQVariant_toULongLong(self.h)

proc toBool*(self: gen_qvariant_types.QVariant): bool =
  fcQVariant_toBool(self.h)

proc toDouble*(self: gen_qvariant_types.QVariant): float64 =
  fcQVariant_toDouble(self.h)

proc toFloat*(self: gen_qvariant_types.QVariant): float32 =
  fcQVariant_toFloat(self.h)

proc toReal*(self: gen_qvariant_types.QVariant): float64 =
  fcQVariant_toReal(self.h)

proc toByteArray*(self: gen_qvariant_types.QVariant): seq[byte] =
  var v_bytearray = fcQVariant_toByteArray(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toBitArray*(self: gen_qvariant_types.QVariant): gen_qbitarray_types.QBitArray =
  gen_qbitarray_types.QBitArray(h: fcQVariant_toBitArray(self.h), owned: true)

proc toString*(self: gen_qvariant_types.QVariant): string =
  let v_ms = fcQVariant_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringList*(self: gen_qvariant_types.QVariant): seq[string] =
  var v_ma = fcQVariant_toStringList(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc toChar*(self: gen_qvariant_types.QVariant): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQVariant_toChar(self.h), owned: true)

proc toDate*(self: gen_qvariant_types.QVariant): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQVariant_toDate(self.h), owned: true)

proc toTime*(self: gen_qvariant_types.QVariant): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQVariant_toTime(self.h), owned: true)

proc toDateTime*(self: gen_qvariant_types.QVariant): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQVariant_toDateTime(self.h), owned: true)

proc toMap*(self: gen_qvariant_types.QVariant): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQVariant_toMap(self.h)
  var vx_ret: Table[string, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_mapkey_ms = v_Keys[i]
    let vx_mapkeyx_ret = string.fromBytes(toOpenArrayByte(vx_mapkey_ms.data, 0, int(vx_mapkey_ms.len)-1))
    c_free(vx_mapkey_ms.data)
    var v_entry_Key = vx_mapkeyx_ret

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc toHash*(self: gen_qvariant_types.QVariant): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQVariant_toHash(self.h)
  var vx_ret: Table[string, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_hashkey_ms = v_Keys[i]
    let vx_hashkeyx_ret = string.fromBytes(toOpenArrayByte(vx_hashkey_ms.data, 0, int(vx_hashkey_ms.len)-1))
    c_free(vx_hashkey_ms.data)
    var v_entry_Key = vx_hashkeyx_ret

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc toPoint*(self: gen_qvariant_types.QVariant): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQVariant_toPoint(self.h), owned: true)

proc toPointF*(self: gen_qvariant_types.QVariant): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQVariant_toPointF(self.h), owned: true)

proc toRect*(self: gen_qvariant_types.QVariant): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQVariant_toRect(self.h), owned: true)

proc toSize*(self: gen_qvariant_types.QVariant): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVariant_toSize(self.h), owned: true)

proc toSizeF*(self: gen_qvariant_types.QVariant): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQVariant_toSizeF(self.h), owned: true)

proc toLine*(self: gen_qvariant_types.QVariant): gen_qline_types.QLine =
  gen_qline_types.QLine(h: fcQVariant_toLine(self.h), owned: true)

proc toLineF*(self: gen_qvariant_types.QVariant): gen_qline_types.QLineF =
  gen_qline_types.QLineF(h: fcQVariant_toLineF(self.h), owned: true)

proc toRectF*(self: gen_qvariant_types.QVariant): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQVariant_toRectF(self.h), owned: true)

proc toLocale*(self: gen_qvariant_types.QVariant): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQVariant_toLocale(self.h), owned: true)

proc toRegularExpression*(self: gen_qvariant_types.QVariant): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQVariant_toRegularExpression(self.h), owned: true)

proc toEasingCurve*(self: gen_qvariant_types.QVariant): gen_qeasingcurve_types.QEasingCurve =
  gen_qeasingcurve_types.QEasingCurve(h: fcQVariant_toEasingCurve(self.h), owned: true)

proc toUuid*(self: gen_qvariant_types.QVariant): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQVariant_toUuid(self.h), owned: true)

proc toUrl*(self: gen_qvariant_types.QVariant): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQVariant_toUrl(self.h), owned: true)

proc toJsonValue*(self: gen_qvariant_types.QVariant): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQVariant_toJsonValue(self.h), owned: true)

proc toJsonObject*(self: gen_qvariant_types.QVariant): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQVariant_toJsonObject(self.h), owned: true)

proc toJsonArray*(self: gen_qvariant_types.QVariant): gen_qjsonarray_types.QJsonArray =
  gen_qjsonarray_types.QJsonArray(h: fcQVariant_toJsonArray(self.h), owned: true)

proc toJsonDocument*(self: gen_qvariant_types.QVariant): gen_qjsondocument_types.QJsonDocument =
  gen_qjsondocument_types.QJsonDocument(h: fcQVariant_toJsonDocument(self.h), owned: true)

proc toModelIndex*(self: gen_qvariant_types.QVariant): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQVariant_toModelIndex(self.h), owned: true)

proc toPersistentModelIndex*(self: gen_qvariant_types.QVariant): gen_qabstractitemmodel_types.QPersistentModelIndex =
  gen_qabstractitemmodel_types.QPersistentModelIndex(h: fcQVariant_toPersistentModelIndex(self.h), owned: true)

proc load*(self: gen_qvariant_types.QVariant, ds: gen_qdatastream_types.QDataStream): void =
  fcQVariant_load(self.h, ds.h)

proc save*(self: gen_qvariant_types.QVariant, ds: gen_qdatastream_types.QDataStream): void =
  fcQVariant_save(self.h, ds.h)

proc typeX*(self: gen_qvariant_types.QVariant): cint =
  cint(fcQVariant_typeX(self.h))

proc typeToName*(_: type gen_qvariant_types.QVariant, typeId: cint): cstring =
  (fcQVariant_typeToName(typeId))

proc nameToType*(_: type gen_qvariant_types.QVariant, name: cstring): cint =
  cint(fcQVariant_nameToType(name))

proc data*(self: gen_qvariant_types.QVariant): pointer =
  fcQVariant_data(self.h)

proc constData*(self: gen_qvariant_types.QVariant): pointer =
  fcQVariant_constData(self.h)

proc data2*(self: gen_qvariant_types.QVariant): pointer =
  fcQVariant_data2(self.h)

proc setValue*(self: gen_qvariant_types.QVariant, avalue: gen_qvariant_types.QVariant): void =
  fcQVariant_setValue(self.h, avalue.h)

proc compare*(_: type gen_qvariant_types.QVariant, lhs: gen_qvariant_types.QVariant, rhs: gen_qvariant_types.QVariant): gen_qcompare_types.QPartialOrdering =
  gen_qcompare_types.QPartialOrdering(h: fcQVariant_compare(lhs.h, rhs.h), owned: true)

proc toInt*(self: gen_qvariant_types.QVariant, ok: ptr bool): cint =
  fcQVariant_toInt1(self.h, ok)

proc toUInt*(self: gen_qvariant_types.QVariant, ok: ptr bool): cuint =
  fcQVariant_toUInt1(self.h, ok)

proc toLongLong*(self: gen_qvariant_types.QVariant, ok: ptr bool): clonglong =
  fcQVariant_toLongLong1(self.h, ok)

proc toULongLong*(self: gen_qvariant_types.QVariant, ok: ptr bool): culonglong =
  fcQVariant_toULongLong1(self.h, ok)

proc toDouble*(self: gen_qvariant_types.QVariant, ok: ptr bool): float64 =
  fcQVariant_toDouble1(self.h, ok)

proc toFloat*(self: gen_qvariant_types.QVariant, ok: ptr bool): float32 =
  fcQVariant_toFloat1(self.h, ok)

proc toReal*(self: gen_qvariant_types.QVariant, ok: ptr bool): float64 =
  fcQVariant_toReal1(self.h, ok)

proc fromValue*(_: type gen_qvariant_types.QVariant, value: gen_qobject_types.QObject): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_fromValue(value.h), owned: true)

proc create*(self: gen_qvariant_types.QVariant, typeVal: cint, copy: pointer): void =
  fcQVariant_protectedbase_create(self.h, typeVal, copy)

proc create*(self: gen_qvariant_types.QVariant, typeVal: gen_qmetatype_types.QMetaType, copy: pointer): void =
  fcQVariant_protectedbase_create2(self.h, typeVal.h, copy)

proc equals*(self: gen_qvariant_types.QVariant, other: gen_qvariant_types.QVariant): bool =
  fcQVariant_protectedbase_equals(self.h, other.h)

proc convert*(self: gen_qvariant_types.QVariant, typeVal: cint, ptrVal: pointer): bool =
  fcQVariant_protectedbase_convert2(self.h, typeVal, ptrVal)

proc view*(self: gen_qvariant_types.QVariant, typeVal: cint, ptrVal: pointer): bool =
  fcQVariant_protectedbase_view(self.h, typeVal, ptrVal)

proc create*(T: type gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new(), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    typeVal: gen_qmetatype_types.QMetaType): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new2(typeVal.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    other: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new3(other.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    i: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new4(i), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    ui: cuint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new5(ui), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    ll: clonglong): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new6(ll), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    ull: culonglong): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new7(ull), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    b: bool): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new8(b), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    d: float64): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new9(d), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    f: float32): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new10(f), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    str: cstring): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new11(str), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    bytearray: seq[byte]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new12(struct_miqt_string(data: cast[cstring](if len(bytearray) == 0: nil else: unsafeAddr bytearray[0]), len: csize_t(len(bytearray)))), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    bitarray: gen_qbitarray_types.QBitArray): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new13(bitarray.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    string: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new14(struct_miqt_string(data: string, len: csize_t(len(string)))), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    stringlist: seq[string]): gen_qvariant_types.QVariant =
  var stringlist_CArray = newSeq[struct_miqt_string](len(stringlist))
  for i in 0..<len(stringlist):
    stringlist_CArray[i] = struct_miqt_string(data: stringlist[i], len: csize_t(len(stringlist[i])))

  gen_qvariant_types.QVariant(h: fcQVariant_new15(struct_miqt_array(len: csize_t(len(stringlist)), data: if len(stringlist) == 0: nil else: addr(stringlist_CArray[0]))), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    qchar: gen_qchar_types.QChar): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new16(qchar.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    date: gen_qdatetime_types.QDate): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new17(date.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    time: gen_qdatetime_types.QTime): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new18(time.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    datetime: gen_qdatetime_types.QDateTime): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new19(datetime.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    map: Table[string,gen_qvariant_types.QVariant]): gen_qvariant_types.QVariant =
  var map_Keys_CArray = newSeq[struct_miqt_string](len(map))
  var map_Values_CArray = newSeq[pointer](len(map))
  var map_ctr = 0
  for map_k in map.keys():
    map_Keys_CArray[map_ctr] = struct_miqt_string(data: map_k, len: csize_t(len(map_k)))
    map_ctr += 1
  map_ctr = 0
  for map_v in map.values():
    map_Values_CArray[map_ctr] = map_v.h
    map_ctr += 1

  gen_qvariant_types.QVariant(h: fcQVariant_new20(struct_miqt_map(len: csize_t(len(map)),keys: if len(map) == 0: nil else: addr(map_Keys_CArray[0]), values: if len(map) == 0: nil else: addr(map_Values_CArray[0]),)), owned: true)

proc create2*(T: type gen_qvariant_types.QVariant,
    hash: Table[string,gen_qvariant_types.QVariant]): gen_qvariant_types.QVariant =
  var hash_Keys_CArray = newSeq[struct_miqt_string](len(hash))
  var hash_Values_CArray = newSeq[pointer](len(hash))
  var hash_ctr = 0
  for hash_k in hash.keys():
    hash_Keys_CArray[hash_ctr] = struct_miqt_string(data: hash_k, len: csize_t(len(hash_k)))
    hash_ctr += 1
  hash_ctr = 0
  for hash_v in hash.values():
    hash_Values_CArray[hash_ctr] = hash_v.h
    hash_ctr += 1

  gen_qvariant_types.QVariant(h: fcQVariant_new21(struct_miqt_map(len: csize_t(len(hash)),keys: if len(hash) == 0: nil else: addr(hash_Keys_CArray[0]), values: if len(hash) == 0: nil else: addr(hash_Values_CArray[0]),)), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    size: gen_qsize_types.QSize): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new22(size.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    size: gen_qsize_types.QSizeF): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new23(size.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    pt: gen_qpoint_types.QPoint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new24(pt.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    pt: gen_qpoint_types.QPointF): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new25(pt.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    line: gen_qline_types.QLine): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new26(line.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    line: gen_qline_types.QLineF): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new27(line.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    rect: gen_qrect_types.QRect): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new28(rect.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    rect: gen_qrect_types.QRectF): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new29(rect.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    locale: gen_qlocale_types.QLocale): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new30(locale.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    re: gen_qregularexpression_types.QRegularExpression): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new31(re.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    easing: gen_qeasingcurve_types.QEasingCurve): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new32(easing.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    uuid: gen_quuid_types.QUuid): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new33(uuid.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    url: gen_qurl_types.QUrl): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new34(url.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    jsonValue: gen_qjsonvalue_types.QJsonValue): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new35(jsonValue.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    jsonObject: gen_qjsonobject_types.QJsonObject): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new36(jsonObject.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    jsonArray: gen_qjsonarray_types.QJsonArray): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new37(jsonArray.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    jsonDocument: gen_qjsondocument_types.QJsonDocument): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new38(jsonDocument.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    modelIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new39(modelIndex.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    modelIndex: gen_qabstractitemmodel_types.QPersistentModelIndex): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new40(modelIndex.h), owned: true)

proc create2*(T: type gen_qvariant_types.QVariant,
    typeVal: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new41(cint(typeVal)), owned: true)

proc create*(T: type gen_qvariant_types.QVariant,
    typeVal: gen_qmetatype_types.QMetaType, copy: pointer): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariant_new42(typeVal.h, copy), owned: true)

proc operatorMultiply*(self: gen_qvariant_types.QVariantConstPointer): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariantConstPointer_operatorMultiply(self.h), owned: true)

proc operatorMinusGreater*(self: gen_qvariant_types.QVariantConstPointer): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVariantConstPointer_operatorMinusGreater(self.h), owned: false)

proc operatorAssign*(self: gen_qvariant_types.QVariantConstPointer, param1: gen_qvariant_types.QVariantConstPointer): void =
  fcQVariantConstPointer_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qvariant_types.QVariantConstPointer,
    variant: gen_qvariant_types.QVariant): gen_qvariant_types.QVariantConstPointer =
  gen_qvariant_types.QVariantConstPointer(h: fcQVariantConstPointer_new(variant.h), owned: true)

proc create*(T: type gen_qvariant_types.QVariantConstPointer,
    param1: gen_qvariant_types.QVariantConstPointer): gen_qvariant_types.QVariantConstPointer =
  gen_qvariant_types.QVariantConstPointer(h: fcQVariantConstPointer_new2(param1.h), owned: true)

