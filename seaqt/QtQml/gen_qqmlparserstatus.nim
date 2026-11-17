import ./qtqml_pkg

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


import ./gen_qqmlparserstatus_types
export gen_qqmlparserstatus_types


type cQQmlParserStatus*{.exportc: "QQmlParserStatus", incompleteStruct.} = object

proc fcQQmlParserStatus_classBegin(self: pointer): void {.importc: "QQmlParserStatus_classBegin".}
proc fcQQmlParserStatus_componentComplete(self: pointer): void {.importc: "QQmlParserStatus_componentComplete".}
proc fcQQmlParserStatus_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlParserStatus_operatorAssign".}
proc fcQQmlParserStatus_vdata(self: pointer): ptr pointer {.importc: "QQmlParserStatus_vdata".}
proc fvdata_cQQmlParserStatus(self: pointer): pointer {.importc: "vdata_QQmlParserStatus".}

type cQQmlParserStatusVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  classBegin*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  componentComplete*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlParserStatus_new(vtbl: pointer, vdata: csize_t): ptr cQQmlParserStatus {.importc: "QQmlParserStatus_new".}
proc fcQQmlParserStatus_delete(self: pointer) {.importc: "QQmlParserStatus_delete".}

proc classBegin*(self: gen_qqmlparserstatus_types.QQmlParserStatus): void =
  fcQQmlParserStatus_classBegin(self.h)

proc componentComplete*(self: gen_qqmlparserstatus_types.QQmlParserStatus): void =
  fcQQmlParserStatus_componentComplete(self.h)

proc operatorAssign*(self: gen_qqmlparserstatus_types.QQmlParserStatus, param1: gen_qqmlparserstatus_types.QQmlParserStatus): void =
  fcQQmlParserStatus_operatorAssign(self.h, param1.h)

type QQmlParserStatusclassBeginProc* = proc(self: QQmlParserStatus): void {.raises: [], gcsafe.}
type QQmlParserStatuscomponentCompleteProc* = proc(self: QQmlParserStatus): void {.raises: [], gcsafe.}
type QQmlParserStatusVTable* = object
  vtbl: cQQmlParserStatusVTable
  classBegin*: QQmlParserStatusclassBeginProc
  componentComplete*: QQmlParserStatuscomponentCompleteProc


proc fcQQmlParserStatus_vtable_callback_classBegin(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlParserStatusVTable](fcQQmlParserStatus_vdata(self)[])
  let self = QQmlParserStatus(h: self)
  vtbl[].classBegin(self)

proc fcQQmlParserStatus_vtable_callback_componentComplete(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlParserStatusVTable](fcQQmlParserStatus_vdata(self)[])
  let self = QQmlParserStatus(h: self)
  vtbl[].componentComplete(self)

type VirtualQQmlParserStatus* {.inheritable.} = ref object of QQmlParserStatus
  vtbl*: cQQmlParserStatusVTable

method classBegin*(self: VirtualQQmlParserStatus): void {.base.} =
  raiseAssert("missing implementation of QQmlParserStatus.classBegin")
method componentComplete*(self: VirtualQQmlParserStatus): void {.base.} =
  raiseAssert("missing implementation of QQmlParserStatus.componentComplete")

proc fcQQmlParserStatus_method_callback_classBegin(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlParserStatus](fcQQmlParserStatus_vdata(self)[])
  inst.classBegin()

proc fcQQmlParserStatus_method_callback_componentComplete(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlParserStatus](fcQQmlParserStatus_vdata(self)[])
  inst.componentComplete()


proc create*(T: type gen_qqmlparserstatus_types.QQmlParserStatus,
    vtbl: ref QQmlParserStatusVTable = nil): gen_qqmlparserstatus_types.QQmlParserStatus =
  let vtbl = if vtbl == nil: new QQmlParserStatusVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlParserStatusVTable](fcQQmlParserStatus_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].classBegin):
    vtbl[].vtbl.classBegin = fcQQmlParserStatus_vtable_callback_classBegin
  if not isNil(vtbl[].componentComplete):
    vtbl[].vtbl.componentComplete = fcQQmlParserStatus_vtable_callback_componentComplete
  let tmp = gen_qqmlparserstatus_types.QQmlParserStatus(h: fcQQmlParserStatus_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQQmlParserStatus_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQQmlParserStatus_mvtbl = cQQmlParserStatusVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlParserStatus()[])](self.fcQQmlParserStatus_vdata()[])
    inst[].h = nil,

  classBegin: fcQQmlParserStatus_method_callback_classBegin,
  componentComplete: fcQQmlParserStatus_method_callback_componentComplete,
)
proc create*(T: type gen_qqmlparserstatus_types.QQmlParserStatus,
    inst: VirtualQQmlParserStatus) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlParserStatus_new(addr(cQQmlParserStatus_mvtbl), csize_t(sizeof(pointer)))
  fcQQmlParserStatus_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc delete*(self: gen_qqmlparserstatus_types.QQmlParserStatus) =
  fcQQmlParserStatus_delete(self.h)
