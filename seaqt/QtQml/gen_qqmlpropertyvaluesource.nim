import ./Qt5Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt5Qml")  & " -fPIC"
{.compile("gen_qqmlpropertyvaluesource.cpp", cflags).}


import ./gen_qqmlpropertyvaluesource_types
export gen_qqmlpropertyvaluesource_types

import
  ./gen_qqmlproperty_types
export
  gen_qqmlproperty_types

type cQQmlPropertyValueSource*{.exportc: "QQmlPropertyValueSource", incompleteStruct.} = object

proc fcQQmlPropertyValueSource_setTarget(self: pointer, target: pointer): void {.importc: "QQmlPropertyValueSource_setTarget".}
proc fcQQmlPropertyValueSource_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlPropertyValueSource_operatorAssign".}
type cQQmlPropertyValueSourceVTable = object
  destructor*: proc(vtbl: ptr cQQmlPropertyValueSourceVTable, self: ptr cQQmlPropertyValueSource) {.cdecl, raises:[], gcsafe.}
  setTarget*: proc(vtbl, self: pointer, target: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlPropertyValueSource_new(vtbl: pointer, ): ptr cQQmlPropertyValueSource {.importc: "QQmlPropertyValueSource_new".}
proc fcQQmlPropertyValueSource_delete(self: pointer) {.importc: "QQmlPropertyValueSource_delete".}

proc setTarget*(self: gen_qqmlpropertyvaluesource_types.QQmlPropertyValueSource, target: gen_qqmlproperty_types.QQmlProperty): void =
  fcQQmlPropertyValueSource_setTarget(self.h, target.h)

proc operatorAssign*(self: gen_qqmlpropertyvaluesource_types.QQmlPropertyValueSource, param1: gen_qqmlpropertyvaluesource_types.QQmlPropertyValueSource): void =
  fcQQmlPropertyValueSource_operatorAssign(self.h, param1.h)

type QQmlPropertyValueSourcesetTargetProc* = proc(self: QQmlPropertyValueSource, target: gen_qqmlproperty_types.QQmlProperty): void {.raises: [], gcsafe.}
type QQmlPropertyValueSourceVTable* = object
  vtbl: cQQmlPropertyValueSourceVTable
  setTarget*: QQmlPropertyValueSourcesetTargetProc
proc miqt_exec_callback_cQQmlPropertyValueSource_setTarget(vtbl: pointer, self: pointer, target: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyValueSourceVTable](vtbl)
  let self = QQmlPropertyValueSource(h: self)
  let slotval1 = gen_qqmlproperty_types.QQmlProperty(h: target)
  vtbl[].setTarget(self, slotval1)

proc create*(T: type gen_qqmlpropertyvaluesource_types.QQmlPropertyValueSource,
    vtbl: ref QQmlPropertyValueSourceVTable = nil): gen_qqmlpropertyvaluesource_types.QQmlPropertyValueSource =
  let vtbl = if vtbl == nil: new QQmlPropertyValueSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlPropertyValueSourceVTable, _: ptr cQQmlPropertyValueSource) {.cdecl.} =
    let vtbl = cast[ref QQmlPropertyValueSourceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.setTarget):
    vtbl[].vtbl.setTarget = miqt_exec_callback_cQQmlPropertyValueSource_setTarget
  gen_qqmlpropertyvaluesource_types.QQmlPropertyValueSource(h: fcQQmlPropertyValueSource_new(addr(vtbl[]), ))

proc delete*(self: gen_qqmlpropertyvaluesource_types.QQmlPropertyValueSource) =
  fcQQmlPropertyValueSource_delete(self.h)
