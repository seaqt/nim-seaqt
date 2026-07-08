import ./qtwebsockets_pkg

{.push raises: [].}

from system/ansi_c import c_free

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


{.compile("gen_qmaskgenerator.cpp", QtWebSocketsCFlags).}


import ./gen_qmaskgenerator_types
export gen_qmaskgenerator_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQMaskGenerator*{.exportc: "QMaskGenerator", incompleteStruct.} = object

proc fcQMaskGenerator_seed(self: pointer): bool {.importc: "QMaskGenerator_seed".}
proc fcQMaskGenerator_nextMask(self: pointer): cuint {.importc: "QMaskGenerator_nextMask".}
proc fcQMaskGenerator_vdata(self: pointer): ptr pointer {.importc: "QMaskGenerator_vdata".}
proc fvdata_cQMaskGenerator(self: pointer): pointer {.importc: "vdata_QMaskGenerator".}

type cQMaskGeneratorVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  seed*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  nextMask*: proc(self: pointer): cuint {.cdecl, raises: [], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQMaskGenerator_virtualbase_metaObject(self: pointer): pointer {.importc: "QMaskGenerator_virtualbase_metaObject".}
proc fcQMaskGenerator_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMaskGenerator_virtualbase_metacast".}
proc fcQMaskGenerator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMaskGenerator_virtualbase_metacall".}
proc fcQMaskGenerator_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QMaskGenerator_virtualbase_event".}
proc fcQMaskGenerator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QMaskGenerator_virtualbase_eventFilter".}
proc fcQMaskGenerator_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QMaskGenerator_virtualbase_timerEvent".}
proc fcQMaskGenerator_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMaskGenerator_virtualbase_childEvent".}
proc fcQMaskGenerator_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMaskGenerator_virtualbase_customEvent".}
proc fcQMaskGenerator_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMaskGenerator_virtualbase_connectNotify".}
proc fcQMaskGenerator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMaskGenerator_virtualbase_disconnectNotify".}
proc fcQMaskGenerator_protectedbase_sender(self: pointer): pointer {.importc: "QMaskGenerator_protectedbase_sender".}
proc fcQMaskGenerator_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMaskGenerator_protectedbase_senderSignalIndex".}
proc fcQMaskGenerator_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMaskGenerator_protectedbase_receivers".}
proc fcQMaskGenerator_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMaskGenerator_protectedbase_isSignalConnected".}
proc fcQMaskGenerator_new(vtbl: pointer, vdata: csize_t): ptr cQMaskGenerator {.importc: "QMaskGenerator_new".}
proc fcQMaskGenerator_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQMaskGenerator {.importc: "QMaskGenerator_new2".}
proc fcQMaskGenerator_delete(self: pointer) {.importc: "QMaskGenerator_delete".}

proc seed*(self: gen_qmaskgenerator_types.QMaskGenerator): bool =
  fcQMaskGenerator_seed(self.h)

proc nextMask*(self: gen_qmaskgenerator_types.QMaskGenerator): cuint =
  fcQMaskGenerator_nextMask(self.h)

type QMaskGeneratorseedProc* = proc(self: QMaskGenerator): bool {.raises: [], gcsafe.}
type QMaskGeneratornextMaskProc* = proc(self: QMaskGenerator): cuint {.raises: [], gcsafe.}
type QMaskGeneratormetaObjectProc* = proc(self: QMaskGenerator): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QMaskGeneratormetacastProc* = proc(self: QMaskGenerator, param1: cstring): pointer {.raises: [], gcsafe.}
type QMaskGeneratormetacallProc* = proc(self: QMaskGenerator, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QMaskGeneratoreventProc* = proc(self: QMaskGenerator, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMaskGeneratoreventFilterProc* = proc(self: QMaskGenerator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMaskGeneratortimerEventProc* = proc(self: QMaskGenerator, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QMaskGeneratorchildEventProc* = proc(self: QMaskGenerator, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QMaskGeneratorcustomEventProc* = proc(self: QMaskGenerator, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMaskGeneratorconnectNotifyProc* = proc(self: QMaskGenerator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMaskGeneratordisconnectNotifyProc* = proc(self: QMaskGenerator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMaskGeneratorVTable* = object
  vtbl: cQMaskGeneratorVTable
  seed*: QMaskGeneratorseedProc
  nextMask*: QMaskGeneratornextMaskProc
  metaObject*: QMaskGeneratormetaObjectProc
  metacast*: QMaskGeneratormetacastProc
  metacall*: QMaskGeneratormetacallProc
  event*: QMaskGeneratoreventProc
  eventFilter*: QMaskGeneratoreventFilterProc
  timerEvent*: QMaskGeneratortimerEventProc
  childEvent*: QMaskGeneratorchildEventProc
  customEvent*: QMaskGeneratorcustomEventProc
  connectNotify*: QMaskGeneratorconnectNotifyProc
  disconnectNotify*: QMaskGeneratordisconnectNotifyProc

proc QMaskGeneratormetaObject*(self: gen_qmaskgenerator_types.QMaskGenerator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMaskGenerator_virtualbase_metaObject(self.h))

proc QMaskGeneratormetacast*(self: gen_qmaskgenerator_types.QMaskGenerator, param1: cstring): pointer =
  fcQMaskGenerator_virtualbase_metacast(self.h, param1)

proc QMaskGeneratormetacall*(self: gen_qmaskgenerator_types.QMaskGenerator, param1: cint, param2: cint, param3: pointer): cint =
  fcQMaskGenerator_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QMaskGeneratorevent*(self: gen_qmaskgenerator_types.QMaskGenerator, event: gen_qcoreevent_types.QEvent): bool =
  fcQMaskGenerator_virtualbase_event(self.h, event.h)

proc QMaskGeneratoreventFilter*(self: gen_qmaskgenerator_types.QMaskGenerator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMaskGenerator_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QMaskGeneratortimerEvent*(self: gen_qmaskgenerator_types.QMaskGenerator, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQMaskGenerator_virtualbase_timerEvent(self.h, event.h)

proc QMaskGeneratorchildEvent*(self: gen_qmaskgenerator_types.QMaskGenerator, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMaskGenerator_virtualbase_childEvent(self.h, event.h)

proc QMaskGeneratorcustomEvent*(self: gen_qmaskgenerator_types.QMaskGenerator, event: gen_qcoreevent_types.QEvent): void =
  fcQMaskGenerator_virtualbase_customEvent(self.h, event.h)

proc QMaskGeneratorconnectNotify*(self: gen_qmaskgenerator_types.QMaskGenerator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMaskGenerator_virtualbase_connectNotify(self.h, signal.h)

proc QMaskGeneratordisconnectNotify*(self: gen_qmaskgenerator_types.QMaskGenerator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMaskGenerator_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQMaskGenerator_vtable_callback_seed(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMaskGeneratorVTable](fcQMaskGenerator_vdata(self)[])
  let self = QMaskGenerator(h: self)
  var virtualReturn = vtbl[].seed(self)
  virtualReturn

proc fcQMaskGenerator_vtable_callback_nextMask(self: pointer): cuint {.cdecl.} =
  let vtbl = cast[ptr QMaskGeneratorVTable](fcQMaskGenerator_vdata(self)[])
  let self = QMaskGenerator(h: self)
  var virtualReturn = vtbl[].nextMask(self)
  virtualReturn

proc fcQMaskGenerator_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMaskGeneratorVTable](fcQMaskGenerator_vdata(self)[])
  let self = QMaskGenerator(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc fcQMaskGenerator_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMaskGeneratorVTable](fcQMaskGenerator_vdata(self)[])
  let self = QMaskGenerator(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQMaskGenerator_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMaskGeneratorVTable](fcQMaskGenerator_vdata(self)[])
  let self = QMaskGenerator(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQMaskGenerator_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMaskGeneratorVTable](fcQMaskGenerator_vdata(self)[])
  let self = QMaskGenerator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQMaskGenerator_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMaskGeneratorVTable](fcQMaskGenerator_vdata(self)[])
  let self = QMaskGenerator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQMaskGenerator_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMaskGeneratorVTable](fcQMaskGenerator_vdata(self)[])
  let self = QMaskGenerator(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc fcQMaskGenerator_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMaskGeneratorVTable](fcQMaskGenerator_vdata(self)[])
  let self = QMaskGenerator(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc fcQMaskGenerator_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMaskGeneratorVTable](fcQMaskGenerator_vdata(self)[])
  let self = QMaskGenerator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc fcQMaskGenerator_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMaskGeneratorVTable](fcQMaskGenerator_vdata(self)[])
  let self = QMaskGenerator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc fcQMaskGenerator_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMaskGeneratorVTable](fcQMaskGenerator_vdata(self)[])
  let self = QMaskGenerator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQMaskGenerator* {.inheritable.} = ref object of QMaskGenerator
  vtbl*: cQMaskGeneratorVTable

method seed*(self: VirtualQMaskGenerator): bool {.base.} =
  raiseAssert("missing implementation of QMaskGenerator.seed")
method nextMask*(self: VirtualQMaskGenerator): cuint {.base.} =
  raiseAssert("missing implementation of QMaskGenerator.nextMask")
method metaObject*(self: VirtualQMaskGenerator): gen_qobjectdefs_types.QMetaObject {.base.} =
  QMaskGeneratormetaObject(self[])
method metacast*(self: VirtualQMaskGenerator, param1: cstring): pointer {.base.} =
  QMaskGeneratormetacast(self[], param1)
method metacall*(self: VirtualQMaskGenerator, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QMaskGeneratormetacall(self[], param1, param2, param3)
method event*(self: VirtualQMaskGenerator, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMaskGeneratorevent(self[], event)
method eventFilter*(self: VirtualQMaskGenerator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMaskGeneratoreventFilter(self[], watched, event)
method timerEvent*(self: VirtualQMaskGenerator, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QMaskGeneratortimerEvent(self[], event)
method childEvent*(self: VirtualQMaskGenerator, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QMaskGeneratorchildEvent(self[], event)
method customEvent*(self: VirtualQMaskGenerator, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMaskGeneratorcustomEvent(self[], event)
method connectNotify*(self: VirtualQMaskGenerator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMaskGeneratorconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQMaskGenerator, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMaskGeneratordisconnectNotify(self[], signal)

proc fcQMaskGenerator_method_callback_seed(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMaskGenerator](fcQMaskGenerator_vdata(self)[])
  var virtualReturn = inst.seed()
  virtualReturn

proc fcQMaskGenerator_method_callback_nextMask(self: pointer): cuint {.cdecl.} =
  let inst = cast[VirtualQMaskGenerator](fcQMaskGenerator_vdata(self)[])
  var virtualReturn = inst.nextMask()
  virtualReturn

proc fcQMaskGenerator_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMaskGenerator](fcQMaskGenerator_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.h

proc fcQMaskGenerator_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQMaskGenerator](fcQMaskGenerator_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQMaskGenerator_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMaskGenerator](fcQMaskGenerator_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQMaskGenerator_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMaskGenerator](fcQMaskGenerator_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQMaskGenerator_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMaskGenerator](fcQMaskGenerator_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQMaskGenerator_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMaskGenerator](fcQMaskGenerator_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  inst.timerEvent(slotval1)

proc fcQMaskGenerator_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMaskGenerator](fcQMaskGenerator_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  inst.childEvent(slotval1)

proc fcQMaskGenerator_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMaskGenerator](fcQMaskGenerator_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.customEvent(slotval1)

proc fcQMaskGenerator_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMaskGenerator](fcQMaskGenerator_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.connectNotify(slotval1)

proc fcQMaskGenerator_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMaskGenerator](fcQMaskGenerator_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qmaskgenerator_types.QMaskGenerator): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMaskGenerator_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qmaskgenerator_types.QMaskGenerator): cint =
  fcQMaskGenerator_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmaskgenerator_types.QMaskGenerator, signal: cstring): cint =
  fcQMaskGenerator_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmaskgenerator_types.QMaskGenerator, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMaskGenerator_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qmaskgenerator_types.QMaskGenerator,
    vtbl: ref QMaskGeneratorVTable = nil): gen_qmaskgenerator_types.QMaskGenerator =
  let vtbl = if vtbl == nil: new QMaskGeneratorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMaskGeneratorVTable](fcQMaskGenerator_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].seed):
    vtbl[].vtbl.seed = fcQMaskGenerator_vtable_callback_seed
  if not isNil(vtbl[].nextMask):
    vtbl[].vtbl.nextMask = fcQMaskGenerator_vtable_callback_nextMask
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQMaskGenerator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQMaskGenerator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQMaskGenerator_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQMaskGenerator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQMaskGenerator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQMaskGenerator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQMaskGenerator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQMaskGenerator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQMaskGenerator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQMaskGenerator_vtable_callback_disconnectNotify
  let tmp = gen_qmaskgenerator_types.QMaskGenerator(h: fcQMaskGenerator_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQMaskGenerator_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qmaskgenerator_types.QMaskGenerator,
    parent: gen_qobject_types.QObject,
    vtbl: ref QMaskGeneratorVTable = nil): gen_qmaskgenerator_types.QMaskGenerator =
  let vtbl = if vtbl == nil: new QMaskGeneratorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMaskGeneratorVTable](fcQMaskGenerator_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].seed):
    vtbl[].vtbl.seed = fcQMaskGenerator_vtable_callback_seed
  if not isNil(vtbl[].nextMask):
    vtbl[].vtbl.nextMask = fcQMaskGenerator_vtable_callback_nextMask
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQMaskGenerator_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQMaskGenerator_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQMaskGenerator_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQMaskGenerator_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQMaskGenerator_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQMaskGenerator_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQMaskGenerator_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQMaskGenerator_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQMaskGenerator_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQMaskGenerator_vtable_callback_disconnectNotify
  let tmp = gen_qmaskgenerator_types.QMaskGenerator(h: fcQMaskGenerator_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h))
  fcQMaskGenerator_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQMaskGenerator_mvtbl = cQMaskGeneratorVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQMaskGenerator()[])](self.fcQMaskGenerator_vdata()[])
    inst[].h = nil,

  seed: fcQMaskGenerator_method_callback_seed,
  nextMask: fcQMaskGenerator_method_callback_nextMask,
  metaObject: fcQMaskGenerator_method_callback_metaObject,
  metacast: fcQMaskGenerator_method_callback_metacast,
  metacall: fcQMaskGenerator_method_callback_metacall,
  event: fcQMaskGenerator_method_callback_event,
  eventFilter: fcQMaskGenerator_method_callback_eventFilter,
  timerEvent: fcQMaskGenerator_method_callback_timerEvent,
  childEvent: fcQMaskGenerator_method_callback_childEvent,
  customEvent: fcQMaskGenerator_method_callback_customEvent,
  connectNotify: fcQMaskGenerator_method_callback_connectNotify,
  disconnectNotify: fcQMaskGenerator_method_callback_disconnectNotify,
)
proc create*(T: type gen_qmaskgenerator_types.QMaskGenerator,
    inst: VirtualQMaskGenerator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMaskGenerator_new(addr(cQMaskGenerator_mvtbl), csize_t(sizeof(pointer)))
  fcQMaskGenerator_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qmaskgenerator_types.QMaskGenerator,
    parent: gen_qobject_types.QObject,
    inst: VirtualQMaskGenerator) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMaskGenerator_new2(addr(cQMaskGenerator_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQMaskGenerator_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc delete*(self: gen_qmaskgenerator_types.QMaskGenerator) =
  fcQMaskGenerator_delete(self.h)
