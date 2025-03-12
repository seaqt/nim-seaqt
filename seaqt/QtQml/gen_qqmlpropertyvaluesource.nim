import ./Qt6Qml_libs

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


import ./gen_qqmlpropertyvaluesource_types
export gen_qqmlpropertyvaluesource_types

import
  ./gen_qqmlproperty_types
export
  gen_qqmlproperty_types

type cQQmlPropertyValueSource*{.exportc: "QQmlPropertyValueSource", incompleteStruct.} = object

proc fcQQmlPropertyValueSource_setTarget(self: pointer, target: pointer): void {.importc: "QQmlPropertyValueSource_setTarget".}
proc fcQQmlPropertyValueSource_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlPropertyValueSource_operatorAssign".}
proc fcQQmlPropertyValueSource_vtbl(self: pointer): pointer {.importc: "QQmlPropertyValueSource_vtbl".}
proc fcQQmlPropertyValueSource_vdata(self: pointer): pointer {.importc: "QQmlPropertyValueSource_vdata".}
type cQQmlPropertyValueSourceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  setTarget*: proc(self: pointer, target: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlPropertyValueSource_new(vtbl, vdata: pointer): ptr cQQmlPropertyValueSource {.importc: "QQmlPropertyValueSource_new".}

proc setTarget*(self: gen_qqmlpropertyvaluesource_types.QQmlPropertyValueSource, target: gen_qqmlproperty_types.QQmlProperty): void =
  fcQQmlPropertyValueSource_setTarget(self.h, target.h)

proc operatorAssign*(self: gen_qqmlpropertyvaluesource_types.QQmlPropertyValueSource, param1: gen_qqmlpropertyvaluesource_types.QQmlPropertyValueSource): void =
  fcQQmlPropertyValueSource_operatorAssign(self.h, param1.h)

type QQmlPropertyValueSourcesetTargetProc* = proc(self: QQmlPropertyValueSource, target: gen_qqmlproperty_types.QQmlProperty): void {.raises: [], gcsafe.}
type QQmlPropertyValueSourceVTable* {.inheritable, pure.} = object
  vtbl: cQQmlPropertyValueSourceVTable
  setTarget*: QQmlPropertyValueSourcesetTargetProc
proc cQQmlPropertyValueSource_vtable_callback_setTarget(self: pointer, target: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyValueSourceVTable](fcQQmlPropertyValueSource_vdata(self))
  let self = QQmlPropertyValueSource(h: self)
  let slotval1 = gen_qqmlproperty_types.QQmlProperty(h: target, owned: false)
  vtbl[].setTarget(self, slotval1)

type VirtualQQmlPropertyValueSource* {.inheritable.} = ref object of QQmlPropertyValueSource
  vtbl*: cQQmlPropertyValueSourceVTable
method setTarget*(self: VirtualQQmlPropertyValueSource, target: gen_qqmlproperty_types.QQmlProperty): void {.base.} =
  raiseAssert("missing implementation of QQmlPropertyValueSource_virtualbase_setTarget")
proc cQQmlPropertyValueSource_method_callback_setTarget(self: pointer, target: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlPropertyValueSource](fcQQmlPropertyValueSource_vdata(self))
  let slotval1 = gen_qqmlproperty_types.QQmlProperty(h: target, owned: false)
  inst.setTarget(slotval1)

proc create*(T: type gen_qqmlpropertyvaluesource_types.QQmlPropertyValueSource,
    vtbl: ref QQmlPropertyValueSourceVTable = nil): gen_qqmlpropertyvaluesource_types.QQmlPropertyValueSource =
  let vtbl = if vtbl == nil: new QQmlPropertyValueSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlPropertyValueSourceVTable](fcQQmlPropertyValueSource_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].setTarget):
    vtbl[].vtbl.setTarget = cQQmlPropertyValueSource_vtable_callback_setTarget
  gen_qqmlpropertyvaluesource_types.QQmlPropertyValueSource(h: fcQQmlPropertyValueSource_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQQmlPropertyValueSource_mvtbl = cQQmlPropertyValueSourceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlPropertyValueSource()[])](self.fcQQmlPropertyValueSource_vtbl())
    inst[].h = nil
    inst[].owned = false,
  setTarget: cQQmlPropertyValueSource_method_callback_setTarget,
)
proc create*(T: type gen_qqmlpropertyvaluesource_types.QQmlPropertyValueSource,
    inst: VirtualQQmlPropertyValueSource) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlPropertyValueSource_new(addr(cQQmlPropertyValueSource_mvtbl), addr(inst[]))
  inst[].owned = true

