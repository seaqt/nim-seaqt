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


import ./gen_qqmlparserstatus_types
export gen_qqmlparserstatus_types


type cQQmlParserStatus*{.exportc: "QQmlParserStatus", incompleteStruct.} = object

proc fcQQmlParserStatus_classBegin(self: pointer): void {.importc: "QQmlParserStatus_classBegin".}
proc fcQQmlParserStatus_componentComplete(self: pointer): void {.importc: "QQmlParserStatus_componentComplete".}
proc fcQQmlParserStatus_vtbl(self: pointer): pointer {.importc: "QQmlParserStatus_vtbl".}
proc fcQQmlParserStatus_vdata(self: pointer): pointer {.importc: "QQmlParserStatus_vdata".}
type cQQmlParserStatusVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  classBegin*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  componentComplete*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlParserStatus_new(vtbl, vdata: pointer): ptr cQQmlParserStatus {.importc: "QQmlParserStatus_new".}

proc classBegin*(self: gen_qqmlparserstatus_types.QQmlParserStatus): void =
  fcQQmlParserStatus_classBegin(self.h)

proc componentComplete*(self: gen_qqmlparserstatus_types.QQmlParserStatus): void =
  fcQQmlParserStatus_componentComplete(self.h)

type QQmlParserStatusclassBeginProc* = proc(self: QQmlParserStatus): void {.raises: [], gcsafe.}
type QQmlParserStatuscomponentCompleteProc* = proc(self: QQmlParserStatus): void {.raises: [], gcsafe.}
type QQmlParserStatusVTable* {.inheritable, pure.} = object
  vtbl: cQQmlParserStatusVTable
  classBegin*: QQmlParserStatusclassBeginProc
  componentComplete*: QQmlParserStatuscomponentCompleteProc
proc cQQmlParserStatus_vtable_callback_classBegin(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlParserStatusVTable](fcQQmlParserStatus_vdata(self))
  let self = QQmlParserStatus(h: self)
  vtbl[].classBegin(self)

proc cQQmlParserStatus_vtable_callback_componentComplete(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlParserStatusVTable](fcQQmlParserStatus_vdata(self))
  let self = QQmlParserStatus(h: self)
  vtbl[].componentComplete(self)

type VirtualQQmlParserStatus* {.inheritable.} = ref object of QQmlParserStatus
  vtbl*: cQQmlParserStatusVTable
method classBegin*(self: VirtualQQmlParserStatus): void {.base.} =
  raiseAssert("missing implementation of QQmlParserStatus_virtualbase_classBegin")
proc cQQmlParserStatus_method_callback_classBegin(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlParserStatus](fcQQmlParserStatus_vdata(self))
  inst.classBegin()

method componentComplete*(self: VirtualQQmlParserStatus): void {.base.} =
  raiseAssert("missing implementation of QQmlParserStatus_virtualbase_componentComplete")
proc cQQmlParserStatus_method_callback_componentComplete(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlParserStatus](fcQQmlParserStatus_vdata(self))
  inst.componentComplete()

proc create*(T: type gen_qqmlparserstatus_types.QQmlParserStatus,
    vtbl: ref QQmlParserStatusVTable = nil): gen_qqmlparserstatus_types.QQmlParserStatus =
  let vtbl = if vtbl == nil: new QQmlParserStatusVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlParserStatusVTable](fcQQmlParserStatus_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].classBegin):
    vtbl[].vtbl.classBegin = cQQmlParserStatus_vtable_callback_classBegin
  if not isNil(vtbl[].componentComplete):
    vtbl[].vtbl.componentComplete = cQQmlParserStatus_vtable_callback_componentComplete
  gen_qqmlparserstatus_types.QQmlParserStatus(h: fcQQmlParserStatus_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQQmlParserStatus_mvtbl = cQQmlParserStatusVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlParserStatus()[])](self.fcQQmlParserStatus_vtbl())
    inst[].h = nil
    inst[].owned = false,
  classBegin: cQQmlParserStatus_method_callback_classBegin,
  componentComplete: cQQmlParserStatus_method_callback_componentComplete,
)
proc create*(T: type gen_qqmlparserstatus_types.QQmlParserStatus,
    inst: VirtualQQmlParserStatus) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlParserStatus_new(addr(cQQmlParserStatus_mvtbl), addr(inst[]))
  inst[].owned = true

