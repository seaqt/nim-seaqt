import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
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

proc fcQGestureRecognizer_new(): ptr cQGestureRecognizer {.importc: "QGestureRecognizer_new".}
proc fcQGestureRecognizer_create(self: pointer, target: pointer): pointer {.importc: "QGestureRecognizer_create".}
proc fcQGestureRecognizer_recognize(self: pointer, state: pointer, watched: pointer, event: pointer): cint {.importc: "QGestureRecognizer_recognize".}
proc fcQGestureRecognizer_reset(self: pointer, state: pointer): void {.importc: "QGestureRecognizer_reset".}
proc fcQGestureRecognizer_registerRecognizer(recognizer: pointer): cint {.importc: "QGestureRecognizer_registerRecognizer".}
proc fcQGestureRecognizer_unregisterRecognizer(typeVal: cint): void {.importc: "QGestureRecognizer_unregisterRecognizer".}
proc fcQGestureRecognizer_operatorAssign(self: pointer, param1: pointer): void {.importc: "QGestureRecognizer_operatorAssign".}
proc fQGestureRecognizer_virtualbase_create(self: pointer, target: pointer): pointer{.importc: "QGestureRecognizer_virtualbase_create".}
proc fcQGestureRecognizer_override_virtual_create(self: pointer, slot: int) {.importc: "QGestureRecognizer_override_virtual_create".}
proc fcQGestureRecognizer_override_virtual_recognize(self: pointer, slot: int) {.importc: "QGestureRecognizer_override_virtual_recognize".}
proc fQGestureRecognizer_virtualbase_reset(self: pointer, state: pointer): void{.importc: "QGestureRecognizer_virtualbase_reset".}
proc fcQGestureRecognizer_override_virtual_reset(self: pointer, slot: int) {.importc: "QGestureRecognizer_override_virtual_reset".}
proc fcQGestureRecognizer_delete(self: pointer) {.importc: "QGestureRecognizer_delete".}


func init*(T: type gen_qgesturerecognizer_types.QGestureRecognizer, h: ptr cQGestureRecognizer): gen_qgesturerecognizer_types.QGestureRecognizer =
  T(h: h)
proc create*(T: type gen_qgesturerecognizer_types.QGestureRecognizer, ): gen_qgesturerecognizer_types.QGestureRecognizer =
  gen_qgesturerecognizer_types.QGestureRecognizer.init(fcQGestureRecognizer_new())

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

proc QGestureRecognizercreate*(self: gen_qgesturerecognizer_types.QGestureRecognizer, target: gen_qobject_types.QObject): gen_qgesture_types.QGesture =
  gen_qgesture_types.QGesture(h: fQGestureRecognizer_virtualbase_create(self.h, target.h))

type QGestureRecognizercreateProc* = proc(target: gen_qobject_types.QObject): gen_qgesture_types.QGesture
proc oncreate*(self: gen_qgesturerecognizer_types.QGestureRecognizer, slot: QGestureRecognizercreateProc) =
  # TODO check subclass
  var tmp = new QGestureRecognizercreateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGestureRecognizer_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGestureRecognizer_create(self: ptr cQGestureRecognizer, slot: int, target: pointer): pointer {.exportc: "miqt_exec_callback_QGestureRecognizer_create ".} =
  var nimfunc = cast[ptr QGestureRecognizercreateProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: target)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QGestureRecognizerrecognizeProc* = proc(state: gen_qgesture_types.QGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): cint
proc onrecognize*(self: gen_qgesturerecognizer_types.QGestureRecognizer, slot: QGestureRecognizerrecognizeProc) =
  # TODO check subclass
  var tmp = new QGestureRecognizerrecognizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGestureRecognizer_override_virtual_recognize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGestureRecognizer_recognize(self: ptr cQGestureRecognizer, slot: int, state: pointer, watched: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QGestureRecognizer_recognize ".} =
  var nimfunc = cast[ptr QGestureRecognizerrecognizeProc](cast[pointer](slot))
  let slotval1 = gen_qgesture_types.QGesture(h: state)

  let slotval2 = gen_qobject_types.QObject(h: watched)

  let slotval3 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  cint(virtualReturn)
proc QGestureRecognizerreset*(self: gen_qgesturerecognizer_types.QGestureRecognizer, state: gen_qgesture_types.QGesture): void =
  fQGestureRecognizer_virtualbase_reset(self.h, state.h)

type QGestureRecognizerresetProc* = proc(state: gen_qgesture_types.QGesture): void
proc onreset*(self: gen_qgesturerecognizer_types.QGestureRecognizer, slot: QGestureRecognizerresetProc) =
  # TODO check subclass
  var tmp = new QGestureRecognizerresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGestureRecognizer_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGestureRecognizer_reset(self: ptr cQGestureRecognizer, slot: int, state: pointer): void {.exportc: "miqt_exec_callback_QGestureRecognizer_reset ".} =
  var nimfunc = cast[ptr QGestureRecognizerresetProc](cast[pointer](slot))
  let slotval1 = gen_qgesture_types.QGesture(h: state)


  nimfunc[](slotval1)
proc delete*(self: gen_qgesturerecognizer_types.QGestureRecognizer) =
  fcQGestureRecognizer_delete(self.h)
