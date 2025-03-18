import ./qtwidgets_pkg

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

proc fcQGestureRecognizer_createX(self: pointer, target: pointer): pointer {.importc: "QGestureRecognizer_create".}
proc fcQGestureRecognizer_recognize(self: pointer, state: pointer, watched: pointer, event: pointer): cint {.importc: "QGestureRecognizer_recognize".}
proc fcQGestureRecognizer_reset(self: pointer, state: pointer): void {.importc: "QGestureRecognizer_reset".}
proc fcQGestureRecognizer_registerRecognizer(recognizer: pointer): cint {.importc: "QGestureRecognizer_registerRecognizer".}
proc fcQGestureRecognizer_unregisterRecognizer(typeVal: cint): void {.importc: "QGestureRecognizer_unregisterRecognizer".}
proc fcQGestureRecognizer_operatorAssign(self: pointer, param1: pointer): void {.importc: "QGestureRecognizer_operatorAssign".}
proc fcQGestureRecognizer_vtbl(self: pointer): pointer {.importc: "QGestureRecognizer_vtbl".}
proc fcQGestureRecognizer_vdata(self: pointer): pointer {.importc: "QGestureRecognizer_vdata".}

type cQGestureRecognizerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  createX*: proc(self: pointer, target: pointer): pointer {.cdecl, raises: [], gcsafe.}
  recognize*: proc(self: pointer, state: pointer, watched: pointer, event: pointer): cint {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer, state: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGestureRecognizer_virtualbase_createX(self: pointer, target: pointer): pointer {.importc: "QGestureRecognizer_virtualbase_create".}
proc fcQGestureRecognizer_virtualbase_reset(self: pointer, state: pointer): void {.importc: "QGestureRecognizer_virtualbase_reset".}
proc fcQGestureRecognizer_new(vtbl, vdata: pointer): ptr cQGestureRecognizer {.importc: "QGestureRecognizer_new".}

proc createX*(self: gen_qgesturerecognizer_types.QGestureRecognizer, target: gen_qobject_types.QObject): gen_qgesture_types.QGesture =
  gen_qgesture_types.QGesture(h: fcQGestureRecognizer_createX(self.h, target.h), owned: false)

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

type QGestureRecognizercreateXProc* = proc(self: QGestureRecognizer, target: gen_qobject_types.QObject): gen_qgesture_types.QGesture {.raises: [], gcsafe.}
type QGestureRecognizerrecognizeProc* = proc(self: QGestureRecognizer, state: gen_qgesture_types.QGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): cint {.raises: [], gcsafe.}
type QGestureRecognizerresetProc* = proc(self: QGestureRecognizer, state: gen_qgesture_types.QGesture): void {.raises: [], gcsafe.}

type QGestureRecognizerVTable* {.inheritable, pure.} = object
  vtbl: cQGestureRecognizerVTable
  createX*: QGestureRecognizercreateXProc
  recognize*: QGestureRecognizerrecognizeProc
  reset*: QGestureRecognizerresetProc

proc QGestureRecognizercreateX*(self: gen_qgesturerecognizer_types.QGestureRecognizer, target: gen_qobject_types.QObject): gen_qgesture_types.QGesture =
  gen_qgesture_types.QGesture(h: fcQGestureRecognizer_virtualbase_createX(self.h, target.h), owned: false)

proc QGestureRecognizerreset*(self: gen_qgesturerecognizer_types.QGestureRecognizer, state: gen_qgesture_types.QGesture): void =
  fcQGestureRecognizer_virtualbase_reset(self.h, state.h)


proc fcQGestureRecognizer_vtable_callback_createX(self: pointer, target: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGestureRecognizerVTable](fcQGestureRecognizer_vdata(self))
  let self = QGestureRecognizer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: target, owned: false)
  var virtualReturn = vtbl[].createX(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGestureRecognizer_vtable_callback_recognize(self: pointer, state: pointer, watched: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGestureRecognizerVTable](fcQGestureRecognizer_vdata(self))
  let self = QGestureRecognizer(h: self)
  let slotval1 = gen_qgesture_types.QGesture(h: state, owned: false)
  let slotval2 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].recognize(self, slotval1, slotval2, slotval3)
  cint(virtualReturn)

proc fcQGestureRecognizer_vtable_callback_reset(self: pointer, state: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGestureRecognizerVTable](fcQGestureRecognizer_vdata(self))
  let self = QGestureRecognizer(h: self)
  let slotval1 = gen_qgesture_types.QGesture(h: state, owned: false)
  vtbl[].reset(self, slotval1)

type VirtualQGestureRecognizer* {.inheritable.} = ref object of QGestureRecognizer
  vtbl*: cQGestureRecognizerVTable

method createX*(self: VirtualQGestureRecognizer, target: gen_qobject_types.QObject): gen_qgesture_types.QGesture {.base.} =
  QGestureRecognizercreateX(self[], target)
method recognize*(self: VirtualQGestureRecognizer, state: gen_qgesture_types.QGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): cint {.base.} =
  raiseAssert("missing implementation of QGestureRecognizer.recognize")
method reset*(self: VirtualQGestureRecognizer, state: gen_qgesture_types.QGesture): void {.base.} =
  QGestureRecognizerreset(self[], state)

proc fcQGestureRecognizer_method_callback_createX(self: pointer, target: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGestureRecognizer](fcQGestureRecognizer_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: target, owned: false)
  var virtualReturn = inst.createX(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGestureRecognizer_method_callback_recognize(self: pointer, state: pointer, watched: pointer, event: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGestureRecognizer](fcQGestureRecognizer_vdata(self))
  let slotval1 = gen_qgesture_types.QGesture(h: state, owned: false)
  let slotval2 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.recognize(slotval1, slotval2, slotval3)
  cint(virtualReturn)

proc fcQGestureRecognizer_method_callback_reset(self: pointer, state: pointer): void {.cdecl.} =
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
  if not isNil(vtbl[].createX):
    vtbl[].vtbl.createX = fcQGestureRecognizer_vtable_callback_createX
  if not isNil(vtbl[].recognize):
    vtbl[].vtbl.recognize = fcQGestureRecognizer_vtable_callback_recognize
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQGestureRecognizer_vtable_callback_reset
  gen_qgesturerecognizer_types.QGestureRecognizer(h: fcQGestureRecognizer_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQGestureRecognizer_mvtbl = cQGestureRecognizerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGestureRecognizer()[])](self.fcQGestureRecognizer_vtbl())
    inst[].h = nil
    inst[].owned = false,

  createX: fcQGestureRecognizer_method_callback_createX,
  recognize: fcQGestureRecognizer_method_callback_recognize,
  reset: fcQGestureRecognizer_method_callback_reset,
)
proc create*(T: type gen_qgesturerecognizer_types.QGestureRecognizer,
    inst: VirtualQGestureRecognizer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGestureRecognizer_new(addr(cQGestureRecognizer_mvtbl), addr(inst[]))
  inst[].owned = true

