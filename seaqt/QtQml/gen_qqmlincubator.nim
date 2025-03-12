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


type QQmlIncubatorIncubationModeEnum* = distinct cint
template Asynchronous*(_: type QQmlIncubatorIncubationModeEnum): untyped = 0
template AsynchronousIfNested*(_: type QQmlIncubatorIncubationModeEnum): untyped = 1
template Synchronous*(_: type QQmlIncubatorIncubationModeEnum): untyped = 2


type QQmlIncubatorStatusEnum* = distinct cint
template Null*(_: type QQmlIncubatorStatusEnum): untyped = 0
template Ready*(_: type QQmlIncubatorStatusEnum): untyped = 1
template Loading*(_: type QQmlIncubatorStatusEnum): untyped = 2
template Error*(_: type QQmlIncubatorStatusEnum): untyped = 3


import ./gen_qqmlincubator_types
export gen_qqmlincubator_types

import
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qqmlengine_types,
  ./gen_qqmlerror_types,
  std/tables
export
  gen_qobject_types,
  gen_qvariant_types,
  gen_qqmlengine_types,
  gen_qqmlerror_types

type cQQmlIncubator*{.exportc: "QQmlIncubator", incompleteStruct.} = object
type cQQmlIncubationController*{.exportc: "QQmlIncubationController", incompleteStruct.} = object

proc fcQQmlIncubator_clear(self: pointer): void {.importc: "QQmlIncubator_clear".}
proc fcQQmlIncubator_forceCompletion(self: pointer): void {.importc: "QQmlIncubator_forceCompletion".}
proc fcQQmlIncubator_isNull(self: pointer): bool {.importc: "QQmlIncubator_isNull".}
proc fcQQmlIncubator_isReady(self: pointer): bool {.importc: "QQmlIncubator_isReady".}
proc fcQQmlIncubator_isError(self: pointer): bool {.importc: "QQmlIncubator_isError".}
proc fcQQmlIncubator_isLoading(self: pointer): bool {.importc: "QQmlIncubator_isLoading".}
proc fcQQmlIncubator_errors(self: pointer): struct_miqt_array {.importc: "QQmlIncubator_errors".}
proc fcQQmlIncubator_incubationMode(self: pointer): cint {.importc: "QQmlIncubator_incubationMode".}
proc fcQQmlIncubator_status(self: pointer): cint {.importc: "QQmlIncubator_status".}
proc fcQQmlIncubator_objectX(self: pointer): pointer {.importc: "QQmlIncubator_object".}
proc fcQQmlIncubator_setInitialProperties(self: pointer, initialProperties: struct_miqt_map): void {.importc: "QQmlIncubator_setInitialProperties".}
proc fcQQmlIncubator_vtbl(self: pointer): pointer {.importc: "QQmlIncubator_vtbl".}
proc fcQQmlIncubator_vdata(self: pointer): pointer {.importc: "QQmlIncubator_vdata".}
type cQQmlIncubatorVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  statusChanged*: proc(self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
  setInitialState*: proc(self: pointer, initialState: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlIncubator_virtualbase_statusChanged(self: pointer, param1: cint): void {.importc: "QQmlIncubator_virtualbase_statusChanged".}
proc fcQQmlIncubator_virtualbase_setInitialState(self: pointer, initialState: pointer): void {.importc: "QQmlIncubator_virtualbase_setInitialState".}
proc fcQQmlIncubator_new(vtbl, vdata: pointer): ptr cQQmlIncubator {.importc: "QQmlIncubator_new".}
proc fcQQmlIncubator_new2(vtbl, vdata: pointer, param1: cint): ptr cQQmlIncubator {.importc: "QQmlIncubator_new2".}
proc fcQQmlIncubationController_engine(self: pointer): pointer {.importc: "QQmlIncubationController_engine".}
proc fcQQmlIncubationController_incubatingObjectCount(self: pointer): cint {.importc: "QQmlIncubationController_incubatingObjectCount".}
proc fcQQmlIncubationController_incubateFor(self: pointer, msecs: cint): void {.importc: "QQmlIncubationController_incubateFor".}
proc fcQQmlIncubationController_vtbl(self: pointer): pointer {.importc: "QQmlIncubationController_vtbl".}
proc fcQQmlIncubationController_vdata(self: pointer): pointer {.importc: "QQmlIncubationController_vdata".}
type cQQmlIncubationControllerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  incubatingObjectCountChanged*: proc(self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlIncubationController_virtualbase_incubatingObjectCountChanged(self: pointer, param1: cint): void {.importc: "QQmlIncubationController_virtualbase_incubatingObjectCountChanged".}
proc fcQQmlIncubationController_new(vtbl, vdata: pointer): ptr cQQmlIncubationController {.importc: "QQmlIncubationController_new".}

proc clear*(self: gen_qqmlincubator_types.QQmlIncubator): void =
  fcQQmlIncubator_clear(self.h)

proc forceCompletion*(self: gen_qqmlincubator_types.QQmlIncubator): void =
  fcQQmlIncubator_forceCompletion(self.h)

proc isNull*(self: gen_qqmlincubator_types.QQmlIncubator): bool =
  fcQQmlIncubator_isNull(self.h)

proc isReady*(self: gen_qqmlincubator_types.QQmlIncubator): bool =
  fcQQmlIncubator_isReady(self.h)

proc isError*(self: gen_qqmlincubator_types.QQmlIncubator): bool =
  fcQQmlIncubator_isError(self.h)

proc isLoading*(self: gen_qqmlincubator_types.QQmlIncubator): bool =
  fcQQmlIncubator_isLoading(self.h)

proc errors*(self: gen_qqmlincubator_types.QQmlIncubator): seq[gen_qqmlerror_types.QQmlError] =
  var v_ma = fcQQmlIncubator_errors(self.h)
  var vx_ret = newSeq[gen_qqmlerror_types.QQmlError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qqmlerror_types.QQmlError(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc incubationMode*(self: gen_qqmlincubator_types.QQmlIncubator): cint =
  cint(fcQQmlIncubator_incubationMode(self.h))

proc status*(self: gen_qqmlincubator_types.QQmlIncubator): cint =
  cint(fcQQmlIncubator_status(self.h))

proc objectX*(self: gen_qqmlincubator_types.QQmlIncubator): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlIncubator_objectX(self.h), owned: false)

proc setInitialProperties*(self: gen_qqmlincubator_types.QQmlIncubator, initialProperties: Table[string,gen_qvariant_types.QVariant]): void =
  var initialProperties_Keys_CArray = newSeq[struct_miqt_string](len(initialProperties))
  var initialProperties_Values_CArray = newSeq[pointer](len(initialProperties))
  var initialProperties_ctr = 0
  for initialProperties_k in initialProperties.keys():
    initialProperties_Keys_CArray[initialProperties_ctr] = struct_miqt_string(data: initialProperties_k, len: csize_t(len(initialProperties_k)))
    initialProperties_ctr += 1
  initialProperties_ctr = 0
  for initialProperties_v in initialProperties.values():
    initialProperties_Values_CArray[initialProperties_ctr] = initialProperties_v.h
    initialProperties_ctr += 1

  fcQQmlIncubator_setInitialProperties(self.h, struct_miqt_map(len: csize_t(len(initialProperties)),keys: if len(initialProperties) == 0: nil else: addr(initialProperties_Keys_CArray[0]), values: if len(initialProperties) == 0: nil else: addr(initialProperties_Values_CArray[0]),))

type QQmlIncubatorstatusChangedProc* = proc(self: QQmlIncubator, param1: cint): void {.raises: [], gcsafe.}
type QQmlIncubatorsetInitialStateProc* = proc(self: QQmlIncubator, initialState: gen_qobject_types.QObject): void {.raises: [], gcsafe.}
type QQmlIncubatorVTable* {.inheritable, pure.} = object
  vtbl: cQQmlIncubatorVTable
  statusChanged*: QQmlIncubatorstatusChangedProc
  setInitialState*: QQmlIncubatorsetInitialStateProc
proc QQmlIncubatorstatusChanged*(self: gen_qqmlincubator_types.QQmlIncubator, param1: cint): void =
  fcQQmlIncubator_virtualbase_statusChanged(self.h, cint(param1))

proc cQQmlIncubator_vtable_callback_statusChanged(self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QQmlIncubatorVTable](fcQQmlIncubator_vdata(self))
  let self = QQmlIncubator(h: self)
  let slotval1 = cint(param1)
  vtbl[].statusChanged(self, slotval1)

proc QQmlIncubatorsetInitialState*(self: gen_qqmlincubator_types.QQmlIncubator, initialState: gen_qobject_types.QObject): void =
  fcQQmlIncubator_virtualbase_setInitialState(self.h, initialState.h)

proc cQQmlIncubator_vtable_callback_setInitialState(self: pointer, initialState: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlIncubatorVTable](fcQQmlIncubator_vdata(self))
  let self = QQmlIncubator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: initialState, owned: false)
  vtbl[].setInitialState(self, slotval1)

type VirtualQQmlIncubator* {.inheritable.} = ref object of QQmlIncubator
  vtbl*: cQQmlIncubatorVTable
method statusChanged*(self: VirtualQQmlIncubator, param1: cint): void {.base.} =
  QQmlIncubatorstatusChanged(self[], param1)
proc cQQmlIncubator_method_callback_statusChanged(self: pointer, param1: cint): void {.cdecl.} =
  let inst = cast[VirtualQQmlIncubator](fcQQmlIncubator_vdata(self))
  let slotval1 = cint(param1)
  inst.statusChanged(slotval1)

method setInitialState*(self: VirtualQQmlIncubator, initialState: gen_qobject_types.QObject): void {.base.} =
  QQmlIncubatorsetInitialState(self[], initialState)
proc cQQmlIncubator_method_callback_setInitialState(self: pointer, initialState: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlIncubator](fcQQmlIncubator_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: initialState, owned: false)
  inst.setInitialState(slotval1)

proc create*(T: type gen_qqmlincubator_types.QQmlIncubator,
    vtbl: ref QQmlIncubatorVTable = nil): gen_qqmlincubator_types.QQmlIncubator =
  let vtbl = if vtbl == nil: new QQmlIncubatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlIncubatorVTable](fcQQmlIncubator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].statusChanged):
    vtbl[].vtbl.statusChanged = cQQmlIncubator_vtable_callback_statusChanged
  if not isNil(vtbl[].setInitialState):
    vtbl[].vtbl.setInitialState = cQQmlIncubator_vtable_callback_setInitialState
  gen_qqmlincubator_types.QQmlIncubator(h: fcQQmlIncubator_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qqmlincubator_types.QQmlIncubator,
    param1: cint,
    vtbl: ref QQmlIncubatorVTable = nil): gen_qqmlincubator_types.QQmlIncubator =
  let vtbl = if vtbl == nil: new QQmlIncubatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlIncubatorVTable](fcQQmlIncubator_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].statusChanged):
    vtbl[].vtbl.statusChanged = cQQmlIncubator_vtable_callback_statusChanged
  if not isNil(vtbl[].setInitialState):
    vtbl[].vtbl.setInitialState = cQQmlIncubator_vtable_callback_setInitialState
  gen_qqmlincubator_types.QQmlIncubator(h: fcQQmlIncubator_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(param1)), owned: true)

const cQQmlIncubator_mvtbl = cQQmlIncubatorVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlIncubator()[])](self.fcQQmlIncubator_vtbl())
    inst[].h = nil
    inst[].owned = false,
  statusChanged: cQQmlIncubator_method_callback_statusChanged,
  setInitialState: cQQmlIncubator_method_callback_setInitialState,
)
proc create*(T: type gen_qqmlincubator_types.QQmlIncubator,
    inst: VirtualQQmlIncubator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlIncubator_new(addr(cQQmlIncubator_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qqmlincubator_types.QQmlIncubator,
    param1: cint,
    inst: VirtualQQmlIncubator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlIncubator_new2(addr(cQQmlIncubator_mvtbl), addr(inst[]), cint(param1))
  inst[].owned = true

proc engine*(self: gen_qqmlincubator_types.QQmlIncubationController): gen_qqmlengine_types.QQmlEngine =
  gen_qqmlengine_types.QQmlEngine(h: fcQQmlIncubationController_engine(self.h), owned: false)

proc incubatingObjectCount*(self: gen_qqmlincubator_types.QQmlIncubationController): cint =
  fcQQmlIncubationController_incubatingObjectCount(self.h)

proc incubateFor*(self: gen_qqmlincubator_types.QQmlIncubationController, msecs: cint): void =
  fcQQmlIncubationController_incubateFor(self.h, msecs)

type QQmlIncubationControllerincubatingObjectCountChangedProc* = proc(self: QQmlIncubationController, param1: cint): void {.raises: [], gcsafe.}
type QQmlIncubationControllerVTable* {.inheritable, pure.} = object
  vtbl: cQQmlIncubationControllerVTable
  incubatingObjectCountChanged*: QQmlIncubationControllerincubatingObjectCountChangedProc
proc QQmlIncubationControllerincubatingObjectCountChanged*(self: gen_qqmlincubator_types.QQmlIncubationController, param1: cint): void =
  fcQQmlIncubationController_virtualbase_incubatingObjectCountChanged(self.h, param1)

proc cQQmlIncubationController_vtable_callback_incubatingObjectCountChanged(self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QQmlIncubationControllerVTable](fcQQmlIncubationController_vdata(self))
  let self = QQmlIncubationController(h: self)
  let slotval1 = param1
  vtbl[].incubatingObjectCountChanged(self, slotval1)

type VirtualQQmlIncubationController* {.inheritable.} = ref object of QQmlIncubationController
  vtbl*: cQQmlIncubationControllerVTable
method incubatingObjectCountChanged*(self: VirtualQQmlIncubationController, param1: cint): void {.base.} =
  QQmlIncubationControllerincubatingObjectCountChanged(self[], param1)
proc cQQmlIncubationController_method_callback_incubatingObjectCountChanged(self: pointer, param1: cint): void {.cdecl.} =
  let inst = cast[VirtualQQmlIncubationController](fcQQmlIncubationController_vdata(self))
  let slotval1 = param1
  inst.incubatingObjectCountChanged(slotval1)

proc create*(T: type gen_qqmlincubator_types.QQmlIncubationController,
    vtbl: ref QQmlIncubationControllerVTable = nil): gen_qqmlincubator_types.QQmlIncubationController =
  let vtbl = if vtbl == nil: new QQmlIncubationControllerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlIncubationControllerVTable](fcQQmlIncubationController_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].incubatingObjectCountChanged):
    vtbl[].vtbl.incubatingObjectCountChanged = cQQmlIncubationController_vtable_callback_incubatingObjectCountChanged
  gen_qqmlincubator_types.QQmlIncubationController(h: fcQQmlIncubationController_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQQmlIncubationController_mvtbl = cQQmlIncubationControllerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlIncubationController()[])](self.fcQQmlIncubationController_vtbl())
    inst[].h = nil
    inst[].owned = false,
  incubatingObjectCountChanged: cQQmlIncubationController_method_callback_incubatingObjectCountChanged,
)
proc create*(T: type gen_qqmlincubator_types.QQmlIncubationController,
    inst: VirtualQQmlIncubationController) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlIncubationController_new(addr(cQQmlIncubationController_mvtbl), addr(inst[]))
  inst[].owned = true

