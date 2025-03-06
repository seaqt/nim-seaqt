import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
{.compile("gen_qgesturerecognizer.cpp", cflags).}


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
type cQGestureRecognizerVTable = object
  destructor*: proc(vtbl: ptr cQGestureRecognizerVTable, self: ptr cQGestureRecognizer) {.cdecl, raises:[], gcsafe.}
  create*: proc(vtbl, self: pointer, target: pointer): pointer {.cdecl, raises: [], gcsafe.}
  recognize*: proc(vtbl, self: pointer, state: pointer, watched: pointer, event: pointer): cint {.cdecl, raises: [], gcsafe.}
  reset*: proc(vtbl, self: pointer, state: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGestureRecognizer_virtualbase_create(self: pointer, target: pointer): pointer {.importc: "QGestureRecognizer_virtualbase_create".}
proc fcQGestureRecognizer_virtualbase_reset(self: pointer, state: pointer): void {.importc: "QGestureRecognizer_virtualbase_reset".}
proc fcQGestureRecognizer_new(vtbl: pointer, ): ptr cQGestureRecognizer {.importc: "QGestureRecognizer_new".}
proc fcQGestureRecognizer_delete(self: pointer) {.importc: "QGestureRecognizer_delete".}

proc create*(self: gen_qgesturerecognizer_types.QGestureRecognizer, target: gen_qobject_types.QObject): gen_qgesture_types.QGesture =
  gen_qgesture_types.QGesture(h: fcQGestureRecognizer_create(self.h, target.h))

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
type QGestureRecognizerVTable* = object
  vtbl: cQGestureRecognizerVTable
  create*: QGestureRecognizercreateProc
  recognize*: QGestureRecognizerrecognizeProc
  reset*: QGestureRecognizerresetProc
proc QGestureRecognizercreate*(self: gen_qgesturerecognizer_types.QGestureRecognizer, target: gen_qobject_types.QObject): gen_qgesture_types.QGesture =
  gen_qgesture_types.QGesture(h: fcQGestureRecognizer_virtualbase_create(self.h, target.h))

proc miqt_exec_callback_cQGestureRecognizer_create(vtbl: pointer, self: pointer, target: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGestureRecognizerVTable](vtbl)
  let self = QGestureRecognizer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: target)
  var virtualReturn = vtbl[].create(self, slotval1)
  virtualReturn.h

proc miqt_exec_callback_cQGestureRecognizer_recognize(vtbl: pointer, self: pointer, state: pointer, watched: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGestureRecognizerVTable](vtbl)
  let self = QGestureRecognizer(h: self)
  let slotval1 = gen_qgesture_types.QGesture(h: state)
  let slotval2 = gen_qobject_types.QObject(h: watched)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].recognize(self, slotval1, slotval2, slotval3)
  cint(virtualReturn)

proc QGestureRecognizerreset*(self: gen_qgesturerecognizer_types.QGestureRecognizer, state: gen_qgesture_types.QGesture): void =
  fcQGestureRecognizer_virtualbase_reset(self.h, state.h)

proc miqt_exec_callback_cQGestureRecognizer_reset(vtbl: pointer, self: pointer, state: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGestureRecognizerVTable](vtbl)
  let self = QGestureRecognizer(h: self)
  let slotval1 = gen_qgesture_types.QGesture(h: state)
  vtbl[].reset(self, slotval1)

proc create*(T: type gen_qgesturerecognizer_types.QGestureRecognizer,
    vtbl: ref QGestureRecognizerVTable = nil): gen_qgesturerecognizer_types.QGestureRecognizer =
  let vtbl = if vtbl == nil: new QGestureRecognizerVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGestureRecognizerVTable, _: ptr cQGestureRecognizer) {.cdecl.} =
    let vtbl = cast[ref QGestureRecognizerVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.create):
    vtbl[].vtbl.create = miqt_exec_callback_cQGestureRecognizer_create
  if not isNil(vtbl.recognize):
    vtbl[].vtbl.recognize = miqt_exec_callback_cQGestureRecognizer_recognize
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQGestureRecognizer_reset
  gen_qgesturerecognizer_types.QGestureRecognizer(h: fcQGestureRecognizer_new(addr(vtbl[]), ))

proc delete*(self: gen_qgesturerecognizer_types.QGestureRecognizer) =
  fcQGestureRecognizer_delete(self.h)
