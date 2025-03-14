import ./qtqml_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QQmlPropertyPropertyTypeCategoryEnum* = distinct cint
template InvalidCategory*(_: type QQmlPropertyPropertyTypeCategoryEnum): untyped = 0
template List*(_: type QQmlPropertyPropertyTypeCategoryEnum): untyped = 1
template Object*(_: type QQmlPropertyPropertyTypeCategoryEnum): untyped = 2
template Normal*(_: type QQmlPropertyPropertyTypeCategoryEnum): untyped = 3


type QQmlPropertyTypeEnum* = distinct cint
template Invalid*(_: type QQmlPropertyTypeEnum): untyped = 0
template Property*(_: type QQmlPropertyTypeEnum): untyped = 1
template SignalProperty*(_: type QQmlPropertyTypeEnum): untyped = 2


import ./gen_qqmlproperty_types
export gen_qqmlproperty_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qqmlcontext_types,
  ./gen_qqmlengine_types
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qvariant_types,
  gen_qqmlcontext_types,
  gen_qqmlengine_types

type cQQmlProperty*{.exportc: "QQmlProperty", incompleteStruct.} = object

proc fcQQmlProperty_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlProperty_operatorAssign".}
proc fcQQmlProperty_operatorEqual(self: pointer, param1: pointer): bool {.importc: "QQmlProperty_operatorEqual".}
proc fcQQmlProperty_typeX(self: pointer): cint {.importc: "QQmlProperty_type".}
proc fcQQmlProperty_isValid(self: pointer): bool {.importc: "QQmlProperty_isValid".}
proc fcQQmlProperty_isProperty(self: pointer): bool {.importc: "QQmlProperty_isProperty".}
proc fcQQmlProperty_isSignalProperty(self: pointer): bool {.importc: "QQmlProperty_isSignalProperty".}
proc fcQQmlProperty_propertyType(self: pointer): cint {.importc: "QQmlProperty_propertyType".}
proc fcQQmlProperty_propertyTypeCategory(self: pointer): cint {.importc: "QQmlProperty_propertyTypeCategory".}
proc fcQQmlProperty_propertyTypeName(self: pointer): cstring {.importc: "QQmlProperty_propertyTypeName".}
proc fcQQmlProperty_name(self: pointer): struct_miqt_string {.importc: "QQmlProperty_name".}
proc fcQQmlProperty_read(self: pointer): pointer {.importc: "QQmlProperty_read".}
proc fcQQmlProperty_read2(param1: pointer, param2: struct_miqt_string): pointer {.importc: "QQmlProperty_read2".}
proc fcQQmlProperty_read3(param1: pointer, param2: struct_miqt_string, param3: pointer): pointer {.importc: "QQmlProperty_read3".}
proc fcQQmlProperty_read4(param1: pointer, param2: struct_miqt_string, param3: pointer): pointer {.importc: "QQmlProperty_read4".}
proc fcQQmlProperty_write(self: pointer, param1: pointer): bool {.importc: "QQmlProperty_write".}
proc fcQQmlProperty_write2(param1: pointer, param2: struct_miqt_string, param3: pointer): bool {.importc: "QQmlProperty_write2".}
proc fcQQmlProperty_write3(param1: pointer, param2: struct_miqt_string, param3: pointer, param4: pointer): bool {.importc: "QQmlProperty_write3".}
proc fcQQmlProperty_write4(param1: pointer, param2: struct_miqt_string, param3: pointer, param4: pointer): bool {.importc: "QQmlProperty_write4".}
proc fcQQmlProperty_reset(self: pointer): bool {.importc: "QQmlProperty_reset".}
proc fcQQmlProperty_hasNotifySignal(self: pointer): bool {.importc: "QQmlProperty_hasNotifySignal".}
proc fcQQmlProperty_needsNotifySignal(self: pointer): bool {.importc: "QQmlProperty_needsNotifySignal".}
proc fcQQmlProperty_connectNotifySignal(self: pointer, dest: pointer, slot: cstring): bool {.importc: "QQmlProperty_connectNotifySignal".}
proc fcQQmlProperty_connectNotifySignal2(self: pointer, dest: pointer, methodVal: cint): bool {.importc: "QQmlProperty_connectNotifySignal2".}
proc fcQQmlProperty_isWritable(self: pointer): bool {.importc: "QQmlProperty_isWritable".}
proc fcQQmlProperty_isDesignable(self: pointer): bool {.importc: "QQmlProperty_isDesignable".}
proc fcQQmlProperty_isResettable(self: pointer): bool {.importc: "QQmlProperty_isResettable".}
proc fcQQmlProperty_objectX(self: pointer): pointer {.importc: "QQmlProperty_object".}
proc fcQQmlProperty_index(self: pointer): cint {.importc: "QQmlProperty_index".}
proc fcQQmlProperty_property(self: pointer): pointer {.importc: "QQmlProperty_property".}
proc fcQQmlProperty_methodX(self: pointer): pointer {.importc: "QQmlProperty_method".}
proc fcQQmlProperty_new(): ptr cQQmlProperty {.importc: "QQmlProperty_new".}
proc fcQQmlProperty_new2(param1: pointer): ptr cQQmlProperty {.importc: "QQmlProperty_new2".}
proc fcQQmlProperty_new3(param1: pointer, param2: pointer): ptr cQQmlProperty {.importc: "QQmlProperty_new3".}
proc fcQQmlProperty_new4(param1: pointer, param2: pointer): ptr cQQmlProperty {.importc: "QQmlProperty_new4".}
proc fcQQmlProperty_new5(param1: pointer, param2: struct_miqt_string): ptr cQQmlProperty {.importc: "QQmlProperty_new5".}
proc fcQQmlProperty_new6(param1: pointer, param2: struct_miqt_string, param3: pointer): ptr cQQmlProperty {.importc: "QQmlProperty_new6".}
proc fcQQmlProperty_new7(param1: pointer, param2: struct_miqt_string, param3: pointer): ptr cQQmlProperty {.importc: "QQmlProperty_new7".}
proc fcQQmlProperty_new8(param1: pointer): ptr cQQmlProperty {.importc: "QQmlProperty_new8".}

proc operatorAssign*(self: gen_qqmlproperty_types.QQmlProperty, param1: gen_qqmlproperty_types.QQmlProperty): void =
  fcQQmlProperty_operatorAssign(self.h, param1.h)

proc operatorEqual*(self: gen_qqmlproperty_types.QQmlProperty, param1: gen_qqmlproperty_types.QQmlProperty): bool =
  fcQQmlProperty_operatorEqual(self.h, param1.h)

proc typeX*(self: gen_qqmlproperty_types.QQmlProperty): cint =
  cint(fcQQmlProperty_typeX(self.h))

proc isValid*(self: gen_qqmlproperty_types.QQmlProperty): bool =
  fcQQmlProperty_isValid(self.h)

proc isProperty*(self: gen_qqmlproperty_types.QQmlProperty): bool =
  fcQQmlProperty_isProperty(self.h)

proc isSignalProperty*(self: gen_qqmlproperty_types.QQmlProperty): bool =
  fcQQmlProperty_isSignalProperty(self.h)

proc propertyType*(self: gen_qqmlproperty_types.QQmlProperty): cint =
  fcQQmlProperty_propertyType(self.h)

proc propertyTypeCategory*(self: gen_qqmlproperty_types.QQmlProperty): cint =
  cint(fcQQmlProperty_propertyTypeCategory(self.h))

proc propertyTypeName*(self: gen_qqmlproperty_types.QQmlProperty): cstring =
  (fcQQmlProperty_propertyTypeName(self.h))

proc name*(self: gen_qqmlproperty_types.QQmlProperty): string =
  let v_ms = fcQQmlProperty_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc read*(self: gen_qqmlproperty_types.QQmlProperty): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlProperty_read(self.h), owned: true)

proc read*(_: type gen_qqmlproperty_types.QQmlProperty, param1: gen_qobject_types.QObject, param2: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlProperty_read2(param1.h, struct_miqt_string(data: if len(param2) > 0: addr param2[0] else: nil, len: csize_t(len(param2)))), owned: true)

proc read*(_: type gen_qqmlproperty_types.QQmlProperty, param1: gen_qobject_types.QObject, param2: openArray[char], param3: gen_qqmlcontext_types.QQmlContext): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlProperty_read3(param1.h, struct_miqt_string(data: if len(param2) > 0: addr param2[0] else: nil, len: csize_t(len(param2))), param3.h), owned: true)

proc read*(_: type gen_qqmlproperty_types.QQmlProperty, param1: gen_qobject_types.QObject, param2: openArray[char], param3: gen_qqmlengine_types.QQmlEngine): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlProperty_read4(param1.h, struct_miqt_string(data: if len(param2) > 0: addr param2[0] else: nil, len: csize_t(len(param2))), param3.h), owned: true)

proc write*(self: gen_qqmlproperty_types.QQmlProperty, param1: gen_qvariant_types.QVariant): bool =
  fcQQmlProperty_write(self.h, param1.h)

proc write*(_: type gen_qqmlproperty_types.QQmlProperty, param1: gen_qobject_types.QObject, param2: openArray[char], param3: gen_qvariant_types.QVariant): bool =
  fcQQmlProperty_write2(param1.h, struct_miqt_string(data: if len(param2) > 0: addr param2[0] else: nil, len: csize_t(len(param2))), param3.h)

proc write*(_: type gen_qqmlproperty_types.QQmlProperty, param1: gen_qobject_types.QObject, param2: openArray[char], param3: gen_qvariant_types.QVariant, param4: gen_qqmlcontext_types.QQmlContext): bool =
  fcQQmlProperty_write3(param1.h, struct_miqt_string(data: if len(param2) > 0: addr param2[0] else: nil, len: csize_t(len(param2))), param3.h, param4.h)

proc write*(_: type gen_qqmlproperty_types.QQmlProperty, param1: gen_qobject_types.QObject, param2: openArray[char], param3: gen_qvariant_types.QVariant, param4: gen_qqmlengine_types.QQmlEngine): bool =
  fcQQmlProperty_write4(param1.h, struct_miqt_string(data: if len(param2) > 0: addr param2[0] else: nil, len: csize_t(len(param2))), param3.h, param4.h)

proc reset*(self: gen_qqmlproperty_types.QQmlProperty): bool =
  fcQQmlProperty_reset(self.h)

proc hasNotifySignal*(self: gen_qqmlproperty_types.QQmlProperty): bool =
  fcQQmlProperty_hasNotifySignal(self.h)

proc needsNotifySignal*(self: gen_qqmlproperty_types.QQmlProperty): bool =
  fcQQmlProperty_needsNotifySignal(self.h)

proc connectNotifySignal*(self: gen_qqmlproperty_types.QQmlProperty, dest: gen_qobject_types.QObject, slot: cstring): bool =
  fcQQmlProperty_connectNotifySignal(self.h, dest.h, slot)

proc connectNotifySignal*(self: gen_qqmlproperty_types.QQmlProperty, dest: gen_qobject_types.QObject, methodVal: cint): bool =
  fcQQmlProperty_connectNotifySignal2(self.h, dest.h, methodVal)

proc isWritable*(self: gen_qqmlproperty_types.QQmlProperty): bool =
  fcQQmlProperty_isWritable(self.h)

proc isDesignable*(self: gen_qqmlproperty_types.QQmlProperty): bool =
  fcQQmlProperty_isDesignable(self.h)

proc isResettable*(self: gen_qqmlproperty_types.QQmlProperty): bool =
  fcQQmlProperty_isResettable(self.h)

proc objectX*(self: gen_qqmlproperty_types.QQmlProperty): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlProperty_objectX(self.h), owned: false)

proc index*(self: gen_qqmlproperty_types.QQmlProperty): cint =
  fcQQmlProperty_index(self.h)

proc property*(self: gen_qqmlproperty_types.QQmlProperty): gen_qmetaobject_types.QMetaProperty =
  gen_qmetaobject_types.QMetaProperty(h: fcQQmlProperty_property(self.h), owned: true)

proc methodX*(self: gen_qqmlproperty_types.QQmlProperty): gen_qmetaobject_types.QMetaMethod =
  gen_qmetaobject_types.QMetaMethod(h: fcQQmlProperty_methodX(self.h), owned: true)

proc create*(T: type gen_qqmlproperty_types.QQmlProperty): gen_qqmlproperty_types.QQmlProperty =
  gen_qqmlproperty_types.QQmlProperty(h: fcQQmlProperty_new(), owned: true)

proc create*(T: type gen_qqmlproperty_types.QQmlProperty,
    param1: gen_qobject_types.QObject): gen_qqmlproperty_types.QQmlProperty =
  gen_qqmlproperty_types.QQmlProperty(h: fcQQmlProperty_new2(param1.h), owned: true)

proc create*(T: type gen_qqmlproperty_types.QQmlProperty,
    param1: gen_qobject_types.QObject, param2: gen_qqmlcontext_types.QQmlContext): gen_qqmlproperty_types.QQmlProperty =
  gen_qqmlproperty_types.QQmlProperty(h: fcQQmlProperty_new3(param1.h, param2.h), owned: true)

proc create*(T: type gen_qqmlproperty_types.QQmlProperty,
    param1: gen_qobject_types.QObject, param2: gen_qqmlengine_types.QQmlEngine): gen_qqmlproperty_types.QQmlProperty =
  gen_qqmlproperty_types.QQmlProperty(h: fcQQmlProperty_new4(param1.h, param2.h), owned: true)

proc create*(T: type gen_qqmlproperty_types.QQmlProperty,
    param1: gen_qobject_types.QObject, param2: openArray[char]): gen_qqmlproperty_types.QQmlProperty =
  gen_qqmlproperty_types.QQmlProperty(h: fcQQmlProperty_new5(param1.h, struct_miqt_string(data: if len(param2) > 0: addr param2[0] else: nil, len: csize_t(len(param2)))), owned: true)

proc create*(T: type gen_qqmlproperty_types.QQmlProperty,
    param1: gen_qobject_types.QObject, param2: openArray[char], param3: gen_qqmlcontext_types.QQmlContext): gen_qqmlproperty_types.QQmlProperty =
  gen_qqmlproperty_types.QQmlProperty(h: fcQQmlProperty_new6(param1.h, struct_miqt_string(data: if len(param2) > 0: addr param2[0] else: nil, len: csize_t(len(param2))), param3.h), owned: true)

proc create*(T: type gen_qqmlproperty_types.QQmlProperty,
    param1: gen_qobject_types.QObject, param2: openArray[char], param3: gen_qqmlengine_types.QQmlEngine): gen_qqmlproperty_types.QQmlProperty =
  gen_qqmlproperty_types.QQmlProperty(h: fcQQmlProperty_new7(param1.h, struct_miqt_string(data: if len(param2) > 0: addr param2[0] else: nil, len: csize_t(len(param2))), param3.h), owned: true)

proc create*(T: type gen_qqmlproperty_types.QQmlProperty,
    param1: gen_qqmlproperty_types.QQmlProperty): gen_qqmlproperty_types.QQmlProperty =
  gen_qqmlproperty_types.QQmlProperty(h: fcQQmlProperty_new8(param1.h), owned: true)

