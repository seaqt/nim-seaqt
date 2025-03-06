import ./Qt5Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt5Qml")  & " -fPIC"
{.compile("gen_qqmlincubator.cpp", cflags).}


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

proc fcQQmlIncubator_clear(self: pointer, ): void {.importc: "QQmlIncubator_clear".}
proc fcQQmlIncubator_forceCompletion(self: pointer, ): void {.importc: "QQmlIncubator_forceCompletion".}
proc fcQQmlIncubator_isNull(self: pointer, ): bool {.importc: "QQmlIncubator_isNull".}
proc fcQQmlIncubator_isReady(self: pointer, ): bool {.importc: "QQmlIncubator_isReady".}
proc fcQQmlIncubator_isError(self: pointer, ): bool {.importc: "QQmlIncubator_isError".}
proc fcQQmlIncubator_isLoading(self: pointer, ): bool {.importc: "QQmlIncubator_isLoading".}
proc fcQQmlIncubator_errors(self: pointer, ): struct_miqt_array {.importc: "QQmlIncubator_errors".}
proc fcQQmlIncubator_incubationMode(self: pointer, ): cint {.importc: "QQmlIncubator_incubationMode".}
proc fcQQmlIncubator_status(self: pointer, ): cint {.importc: "QQmlIncubator_status".}
proc fcQQmlIncubator_objectX(self: pointer, ): pointer {.importc: "QQmlIncubator_object".}
proc fcQQmlIncubator_setInitialProperties(self: pointer, initialProperties: struct_miqt_map): void {.importc: "QQmlIncubator_setInitialProperties".}
type cQQmlIncubatorVTable = object
  destructor*: proc(vtbl: ptr cQQmlIncubatorVTable, self: ptr cQQmlIncubator) {.cdecl, raises:[], gcsafe.}
  statusChanged*: proc(vtbl, self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
  setInitialState*: proc(vtbl, self: pointer, initialState: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlIncubator_virtualbase_statusChanged(self: pointer, param1: cint): void {.importc: "QQmlIncubator_virtualbase_statusChanged".}
proc fcQQmlIncubator_virtualbase_setInitialState(self: pointer, initialState: pointer): void {.importc: "QQmlIncubator_virtualbase_setInitialState".}
proc fcQQmlIncubator_new(vtbl: pointer, ): ptr cQQmlIncubator {.importc: "QQmlIncubator_new".}
proc fcQQmlIncubator_new2(vtbl: pointer, param1: cint): ptr cQQmlIncubator {.importc: "QQmlIncubator_new2".}
proc fcQQmlIncubator_delete(self: pointer) {.importc: "QQmlIncubator_delete".}
proc fcQQmlIncubationController_engine(self: pointer, ): pointer {.importc: "QQmlIncubationController_engine".}
proc fcQQmlIncubationController_incubatingObjectCount(self: pointer, ): cint {.importc: "QQmlIncubationController_incubatingObjectCount".}
proc fcQQmlIncubationController_incubateFor(self: pointer, msecs: cint): void {.importc: "QQmlIncubationController_incubateFor".}
proc fcQQmlIncubationController_incubateWhile(self: pointer, flag: ptr bool): void {.importc: "QQmlIncubationController_incubateWhile".}
proc fcQQmlIncubationController_incubateWhile2(self: pointer, flag: ptr bool, msecs: cint): void {.importc: "QQmlIncubationController_incubateWhile2".}
type cQQmlIncubationControllerVTable = object
  destructor*: proc(vtbl: ptr cQQmlIncubationControllerVTable, self: ptr cQQmlIncubationController) {.cdecl, raises:[], gcsafe.}
  incubatingObjectCountChanged*: proc(vtbl, self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlIncubationController_virtualbase_incubatingObjectCountChanged(self: pointer, param1: cint): void {.importc: "QQmlIncubationController_virtualbase_incubatingObjectCountChanged".}
proc fcQQmlIncubationController_new(vtbl: pointer, ): ptr cQQmlIncubationController {.importc: "QQmlIncubationController_new".}
proc fcQQmlIncubationController_delete(self: pointer) {.importc: "QQmlIncubationController_delete".}

proc clear*(self: gen_qqmlincubator_types.QQmlIncubator, ): void =
  fcQQmlIncubator_clear(self.h)

proc forceCompletion*(self: gen_qqmlincubator_types.QQmlIncubator, ): void =
  fcQQmlIncubator_forceCompletion(self.h)

proc isNull*(self: gen_qqmlincubator_types.QQmlIncubator, ): bool =
  fcQQmlIncubator_isNull(self.h)

proc isReady*(self: gen_qqmlincubator_types.QQmlIncubator, ): bool =
  fcQQmlIncubator_isReady(self.h)

proc isError*(self: gen_qqmlincubator_types.QQmlIncubator, ): bool =
  fcQQmlIncubator_isError(self.h)

proc isLoading*(self: gen_qqmlincubator_types.QQmlIncubator, ): bool =
  fcQQmlIncubator_isLoading(self.h)

proc errors*(self: gen_qqmlincubator_types.QQmlIncubator, ): seq[gen_qqmlerror_types.QQmlError] =
  var v_ma = fcQQmlIncubator_errors(self.h)
  var vx_ret = newSeq[gen_qqmlerror_types.QQmlError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qqmlerror_types.QQmlError(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc incubationMode*(self: gen_qqmlincubator_types.QQmlIncubator, ): cint =
  cint(fcQQmlIncubator_incubationMode(self.h))

proc status*(self: gen_qqmlincubator_types.QQmlIncubator, ): cint =
  cint(fcQQmlIncubator_status(self.h))

proc objectX*(self: gen_qqmlincubator_types.QQmlIncubator, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlIncubator_objectX(self.h))

proc setInitialProperties*(self: gen_qqmlincubator_types.QQmlIncubator, initialProperties: Table[string,gen_qvariant_types.QVariant]): void =
  var initialProperties_Keys_CArray = newSeq[struct_miqt_string](len(initialProperties))
  var initialProperties_Values_CArray = newSeq[pointer](len(initialProperties))
  var initialProperties_ctr = 0
  for initialProperties_k, initialProperties_v in initialProperties:
    initialProperties_Keys_CArray[initialProperties_ctr] = struct_miqt_string(data: initialProperties_k, len: csize_t(len(initialProperties_k)))
    initialProperties_Values_CArray[initialProperties_ctr] = initialProperties_v.h
    initialProperties_ctr += 1

  fcQQmlIncubator_setInitialProperties(self.h, struct_miqt_map(len: csize_t(len(initialProperties)),keys: if len(initialProperties) == 0: nil else: addr(initialProperties_Keys_CArray[0]), values: if len(initialProperties) == 0: nil else: addr(initialProperties_Values_CArray[0]),))

type QQmlIncubatorstatusChangedProc* = proc(self: QQmlIncubator, param1: cint): void {.raises: [], gcsafe.}
type QQmlIncubatorsetInitialStateProc* = proc(self: QQmlIncubator, initialState: gen_qobject_types.QObject): void {.raises: [], gcsafe.}
type QQmlIncubatorVTable* = object
  vtbl: cQQmlIncubatorVTable
  statusChanged*: QQmlIncubatorstatusChangedProc
  setInitialState*: QQmlIncubatorsetInitialStateProc
proc QQmlIncubatorstatusChanged*(self: gen_qqmlincubator_types.QQmlIncubator, param1: cint): void =
  fcQQmlIncubator_virtualbase_statusChanged(self.h, cint(param1))

proc miqt_exec_callback_cQQmlIncubator_statusChanged(vtbl: pointer, self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QQmlIncubatorVTable](vtbl)
  let self = QQmlIncubator(h: self)
  let slotval1 = cint(param1)
  vtbl[].statusChanged(self, slotval1)

proc QQmlIncubatorsetInitialState*(self: gen_qqmlincubator_types.QQmlIncubator, initialState: gen_qobject_types.QObject): void =
  fcQQmlIncubator_virtualbase_setInitialState(self.h, initialState.h)

proc miqt_exec_callback_cQQmlIncubator_setInitialState(vtbl: pointer, self: pointer, initialState: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlIncubatorVTable](vtbl)
  let self = QQmlIncubator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: initialState)
  vtbl[].setInitialState(self, slotval1)

proc create*(T: type gen_qqmlincubator_types.QQmlIncubator,
    vtbl: ref QQmlIncubatorVTable = nil): gen_qqmlincubator_types.QQmlIncubator =
  let vtbl = if vtbl == nil: new QQmlIncubatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlIncubatorVTable, _: ptr cQQmlIncubator) {.cdecl.} =
    let vtbl = cast[ref QQmlIncubatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.statusChanged):
    vtbl[].vtbl.statusChanged = miqt_exec_callback_cQQmlIncubator_statusChanged
  if not isNil(vtbl.setInitialState):
    vtbl[].vtbl.setInitialState = miqt_exec_callback_cQQmlIncubator_setInitialState
  gen_qqmlincubator_types.QQmlIncubator(h: fcQQmlIncubator_new(addr(vtbl[]), ))

proc create*(T: type gen_qqmlincubator_types.QQmlIncubator,
    param1: cint,
    vtbl: ref QQmlIncubatorVTable = nil): gen_qqmlincubator_types.QQmlIncubator =
  let vtbl = if vtbl == nil: new QQmlIncubatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlIncubatorVTable, _: ptr cQQmlIncubator) {.cdecl.} =
    let vtbl = cast[ref QQmlIncubatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.statusChanged):
    vtbl[].vtbl.statusChanged = miqt_exec_callback_cQQmlIncubator_statusChanged
  if not isNil(vtbl.setInitialState):
    vtbl[].vtbl.setInitialState = miqt_exec_callback_cQQmlIncubator_setInitialState
  gen_qqmlincubator_types.QQmlIncubator(h: fcQQmlIncubator_new2(addr(vtbl[]), cint(param1)))

proc delete*(self: gen_qqmlincubator_types.QQmlIncubator) =
  fcQQmlIncubator_delete(self.h)
proc engine*(self: gen_qqmlincubator_types.QQmlIncubationController, ): gen_qqmlengine_types.QQmlEngine =
  gen_qqmlengine_types.QQmlEngine(h: fcQQmlIncubationController_engine(self.h))

proc incubatingObjectCount*(self: gen_qqmlincubator_types.QQmlIncubationController, ): cint =
  fcQQmlIncubationController_incubatingObjectCount(self.h)

proc incubateFor*(self: gen_qqmlincubator_types.QQmlIncubationController, msecs: cint): void =
  fcQQmlIncubationController_incubateFor(self.h, msecs)

proc incubateWhile*(self: gen_qqmlincubator_types.QQmlIncubationController, flag: ptr bool): void =
  fcQQmlIncubationController_incubateWhile(self.h, flag)

proc incubateWhile*(self: gen_qqmlincubator_types.QQmlIncubationController, flag: ptr bool, msecs: cint): void =
  fcQQmlIncubationController_incubateWhile2(self.h, flag, msecs)

type QQmlIncubationControllerincubatingObjectCountChangedProc* = proc(self: QQmlIncubationController, param1: cint): void {.raises: [], gcsafe.}
type QQmlIncubationControllerVTable* = object
  vtbl: cQQmlIncubationControllerVTable
  incubatingObjectCountChanged*: QQmlIncubationControllerincubatingObjectCountChangedProc
proc QQmlIncubationControllerincubatingObjectCountChanged*(self: gen_qqmlincubator_types.QQmlIncubationController, param1: cint): void =
  fcQQmlIncubationController_virtualbase_incubatingObjectCountChanged(self.h, param1)

proc miqt_exec_callback_cQQmlIncubationController_incubatingObjectCountChanged(vtbl: pointer, self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QQmlIncubationControllerVTable](vtbl)
  let self = QQmlIncubationController(h: self)
  let slotval1 = param1
  vtbl[].incubatingObjectCountChanged(self, slotval1)

proc create*(T: type gen_qqmlincubator_types.QQmlIncubationController,
    vtbl: ref QQmlIncubationControllerVTable = nil): gen_qqmlincubator_types.QQmlIncubationController =
  let vtbl = if vtbl == nil: new QQmlIncubationControllerVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlIncubationControllerVTable, _: ptr cQQmlIncubationController) {.cdecl.} =
    let vtbl = cast[ref QQmlIncubationControllerVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.incubatingObjectCountChanged):
    vtbl[].vtbl.incubatingObjectCountChanged = miqt_exec_callback_cQQmlIncubationController_incubatingObjectCountChanged
  gen_qqmlincubator_types.QQmlIncubationController(h: fcQQmlIncubationController_new(addr(vtbl[]), ))

proc delete*(self: gen_qqmlincubator_types.QQmlIncubationController) =
  fcQQmlIncubationController_delete(self.h)
