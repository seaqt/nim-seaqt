import ./Qt6Widgets_libs

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


type QGestureRecognizerResultFlagEnum* = distinct cint
template Ignore*(_: type QGestureRecognizerResultFlagEnum): untyped = 1
template MayBeGesture*(_: type QGestureRecognizerResultFlagEnum): untyped = 2
template TriggerGesture*(_: type QGestureRecognizerResultFlagEnum): untyped = 4
template FinishGesture*(_: type QGestureRecognizerResultFlagEnum): untyped = 8
template CancelGesture*(_: type QGestureRecognizerResultFlagEnum): untyped = 16
template ResultState_Mask*(_: type QGestureRecognizerResultFlagEnum): untyped = 255
template ConsumeEventHint*(_: type QGestureRecognizerResultFlagEnum): untyped = 256
template ResultHint_Mask*(_: type QGestureRecognizerResultFlagEnum): untyped = 65280


import ./gen_qgesturerecognizer_types
export gen_qgesturerecognizer_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qobject_types,
  ./gen_qgesture_types
export
  gen_qcoreevent_types,
  gen_qobject_types,
  gen_qgesture_types

type cQGestureRecognizer*{.exportc: "QGestureRecognizer", incompleteStruct.} = object

proc fcQGestureRecognizer_create(self: pointer, target: pointer): pointer {.importc: "QGestureRecognizer_create".}
proc fcQGestureRecognizer_recognize(self: pointer, state: pointer, watched: pointer, event: pointer): cint {.importc: "QGestureRecognizer_recognize".}
proc fcQGestureRecognizer_reset(self: pointer, state: pointer): void {.importc: "QGestureRecognizer_reset".}
proc fcQGestureRecognizer_registerRecognizer(recognizer: pointer): cint {.importc: "QGestureRecognizer_registerRecognizer".}
proc fcQGestureRecognizer_unregisterRecognizer(typeVal: cint): void {.importc: "QGestureRecognizer_unregisterRecognizer".}
proc fcQGestureRecognizer_operatorAssign(self: pointer, param1: pointer): void {.importc: "QGestureRecognizer_operatorAssign".}
proc fcQGestureRecognizer_vtbl(self: pointer): pointer {.importc: "QGestureRecognizer_vtbl".}
proc fcQGestureRecognizer_vdata(self: pointer): pointer {.importc: "QGestureRecognizer_vdata".}
type cQGestureRecognizerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  create*: proc(self: pointer, target: pointer): pointer {.cdecl, raises: [], gcsafe.}
  recognize*: proc(self: pointer, state: pointer, watched: pointer, event: pointer): cint {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer, state: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGestureRecognizer_virtualbase_create(self: pointer, target: pointer): pointer {.importc: "QGestureRecognizer_virtualbase_create".}
proc fcQGestureRecognizer_virtualbase_reset(self: pointer, state: pointer): void {.importc: "QGestureRecognizer_virtualbase_reset".}
proc fcQGestureRecognizer_new(vtbl, vdata: pointer): ptr cQGestureRecognizer {.importc: "QGestureRecognizer_new".}

proc create*(self: gen_qgesturerecognizer_types.QGestureRecognizer, target: gen_qobject_types.QObject): gen_qgesture_types.QGesture =
  gen_qgesture_types.QGesture(h: fcQGestureRecognizer_create(self.h, target.h), owned: false)

proc recognize*(self: gen_qgesturerecognizer_types.QGestureRecognizer, state: gen_qgesture_types.QGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): cint =
  cint(fcQGestureRecognizer_recognize(self.h, state.h, watched.h, event.h))

proc reset*(self: gen_qgesturerecognizer_types.QGestureRecognizer, state: gen_qgesture_types.QGesture): void =
  fcQGestureRecognizer_reset(self.h, state.h)

proc registerRecognizer*(_: type gen_qgesturerecognizer_types.QGestureRecognizer, recognizer: gen_qgesturerecognizer_types.QGestureRecognizer): cint =
  cint(fcQGestureRecognizer_registerRecognizer(recognizer.h))

proc unregisterRecognizer*(_: type gen_qgesturerecognizer_types.QGestureRecognizer, typeVal: cint): void =
  fcQGestureRecognizer_unregisterRecognizer(cint(typeVal))

proc operatorAssign*(self: gen_qgesturerecognizer_types.QGestureRecognizer, param1: gen_qgesturerecognizer_types.QGestureRecognizer): void =
  fcQGestureRecognizer_operatorAssign(self.h, param1.h)

type QGestureRecognizercreateProc* = proc(self: QGestureRecognizer, target: gen_qobject_types.QObject): gen_qgesture_types.QGesture {.raises: [], gcsafe.}
type QGestureRecognizerrecognizeProc* = proc(self: QGestureRecognizer, state: gen_qgesture_types.QGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): cint {.raises: [], gcsafe.}
type QGestureRecognizerresetProc* = proc(self: QGestureRecognizer, state: gen_qgesture_types.QGesture): void {.raises: [], gcsafe.}
type QGestureRecognizerVTable* {.inheritable, pure.} = object
  vtbl: cQGestureRecognizerVTable
  create*: QGestureRecognizercreateProc
  recognize*: QGestureRecognizerrecognizeProc
  reset*: QGestureRecognizerresetProc
proc QGestureRecognizercreate*(self: gen_qgesturerecognizer_types.QGestureRecognizer, target: gen_qobject_types.QObject): gen_qgesture_types.QGesture =
  gen_qgesture_types.QGesture(h: fcQGestureRecognizer_virtualbase_create(self.h, target.h), owned: false)

proc cQGestureRecognizer_vtable_callback_create(self: pointer, target: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGestureRecognizerVTable](fcQGestureRecognizer_vdata(self))
  let self = QGestureRecognizer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: target, owned: false)
  var virtualReturn = vtbl[].create(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc cQGestureRecognizer_vtable_callback_recognize(self: pointer, state: pointer, watched: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGestureRecognizerVTable](fcQGestureRecognizer_vdata(self))
  let self = QGestureRecognizer(h: self)
  let slotval1 = gen_qgesture_types.QGesture(h: state, owned: false)
  let slotval2 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].recognize(self, slotval1, slotval2, slotval3)
  cint(virtualReturn)

proc QGestureRecognizerreset*(self: gen_qgesturerecognizer_types.QGestureRecognizer, state: gen_qgesture_types.QGesture): void =
  fcQGestureRecognizer_virtualbase_reset(self.h, state.h)

proc cQGestureRecognizer_vtable_callback_reset(self: pointer, state: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGestureRecognizerVTable](fcQGestureRecognizer_vdata(self))
  let self = QGestureRecognizer(h: self)
  let slotval1 = gen_qgesture_types.QGesture(h: state, owned: false)
  vtbl[].reset(self, slotval1)

type VirtualQGestureRecognizer* {.inheritable.} = ref object of QGestureRecognizer
  vtbl*: cQGestureRecognizerVTable
method create*(self: VirtualQGestureRecognizer, target: gen_qobject_types.QObject): gen_qgesture_types.QGesture {.base.} =
  QGestureRecognizercreate(self[], target)
proc cQGestureRecognizer_method_callback_create(self: pointer, target: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGestureRecognizer](fcQGestureRecognizer_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: target, owned: false)
  var virtualReturn = inst.create(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method recognize*(self: VirtualQGestureRecognizer, state: gen_qgesture_types.QGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): cint {.base.} =
  raiseAssert("missing implementation of QGestureRecognizer_virtualbase_recognize")
proc cQGestureRecognizer_method_callback_recognize(self: pointer, state: pointer, watched: pointer, event: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGestureRecognizer](fcQGestureRecognizer_vdata(self))
  let slotval1 = gen_qgesture_types.QGesture(h: state, owned: false)
  let slotval2 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.recognize(slotval1, slotval2, slotval3)
  cint(virtualReturn)

method reset*(self: VirtualQGestureRecognizer, state: gen_qgesture_types.QGesture): void {.base.} =
  QGestureRecognizerreset(self[], state)
proc cQGestureRecognizer_method_callback_reset(self: pointer, state: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGestureRecognizer](fcQGestureRecognizer_vdata(self))
  let slotval1 = gen_qgesture_types.QGesture(h: state, owned: false)
  inst.reset(slotval1)

proc create*(T: type gen_qgesturerecognizer_types.QGestureRecognizer,
    vtbl: ref QGestureRecognizerVTable = nil): gen_qgesturerecognizer_types.QGestureRecognizer =
  let vtbl = if vtbl == nil: new QGestureRecognizerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGestureRecognizerVTable](fcQGestureRecognizer_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].create):
    vtbl[].vtbl.create = cQGestureRecognizer_vtable_callback_create
  if not isNil(vtbl[].recognize):
    vtbl[].vtbl.recognize = cQGestureRecognizer_vtable_callback_recognize
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQGestureRecognizer_vtable_callback_reset
  gen_qgesturerecognizer_types.QGestureRecognizer(h: fcQGestureRecognizer_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQGestureRecognizer_mvtbl = cQGestureRecognizerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGestureRecognizer()[])](self.fcQGestureRecognizer_vtbl())
    inst[].h = nil
    inst[].owned = false,
  create: cQGestureRecognizer_method_callback_create,
  recognize: cQGestureRecognizer_method_callback_recognize,
  reset: cQGestureRecognizer_method_callback_reset,
)
proc create*(T: type gen_qgesturerecognizer_types.QGestureRecognizer,
    inst: VirtualQGestureRecognizer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGestureRecognizer_new(addr(cQGestureRecognizer_mvtbl), addr(inst[]))
  inst[].owned = true

