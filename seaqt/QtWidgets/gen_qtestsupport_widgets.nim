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
{.compile("gen_qtestsupport_widgets.cpp", cflags).}


import ./gen_qtestsupport_widgets_types
export gen_qtestsupport_widgets_types

import
  ../QtCore/gen_qpoint_types,
  ../QtGui/gen_qtestsupport_gui,
  ./gen_qwidget_types
export
  gen_qpoint_types,
  gen_qtestsupport_gui,
  gen_qwidget_types

type cQTestQTouchEventWidgetSequence*{.exportc: "QTest__QTouchEventWidgetSequence", incompleteStruct.} = object

proc fcQTestQTouchEventWidgetSequence_new(param1: pointer): ptr cQTestQTouchEventWidgetSequence {.importc: "QTest__QTouchEventWidgetSequence_new".}
proc fcQTestQTouchEventWidgetSequence_press(self: pointer, touchId: cint, pt: pointer): pointer {.importc: "QTest__QTouchEventWidgetSequence_press".}
proc fcQTestQTouchEventWidgetSequence_move(self: pointer, touchId: cint, pt: pointer): pointer {.importc: "QTest__QTouchEventWidgetSequence_move".}
proc fcQTestQTouchEventWidgetSequence_release(self: pointer, touchId: cint, pt: pointer): pointer {.importc: "QTest__QTouchEventWidgetSequence_release".}
proc fcQTestQTouchEventWidgetSequence_stationary(self: pointer, touchId: cint): pointer {.importc: "QTest__QTouchEventWidgetSequence_stationary".}
proc fcQTestQTouchEventWidgetSequence_commit(self: pointer, processEvents: bool): bool {.importc: "QTest__QTouchEventWidgetSequence_commit".}
proc fcQTestQTouchEventWidgetSequence_press3(self: pointer, touchId: cint, pt: pointer, widget: pointer): pointer {.importc: "QTest__QTouchEventWidgetSequence_press3".}
proc fcQTestQTouchEventWidgetSequence_move3(self: pointer, touchId: cint, pt: pointer, widget: pointer): pointer {.importc: "QTest__QTouchEventWidgetSequence_move3".}
proc fcQTestQTouchEventWidgetSequence_release3(self: pointer, touchId: cint, pt: pointer, widget: pointer): pointer {.importc: "QTest__QTouchEventWidgetSequence_release3".}
proc fQTest__QTouchEventWidgetSequence_virtualbase_stationary(self: pointer, touchId: cint): pointer{.importc: "QTest__QTouchEventWidgetSequence_virtualbase_stationary".}
proc fcQTestQTouchEventWidgetSequence_override_virtual_stationary(self: pointer, slot: int) {.importc: "QTest__QTouchEventWidgetSequence_override_virtual_stationary".}
proc fQTest__QTouchEventWidgetSequence_virtualbase_commit(self: pointer, processEvents: bool): bool{.importc: "QTest__QTouchEventWidgetSequence_virtualbase_commit".}
proc fcQTestQTouchEventWidgetSequence_override_virtual_commit(self: pointer, slot: int) {.importc: "QTest__QTouchEventWidgetSequence_override_virtual_commit".}
proc fcQTestQTouchEventWidgetSequence_delete(self: pointer) {.importc: "QTest__QTouchEventWidgetSequence_delete".}


func init*(T: type gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, h: ptr cQTestQTouchEventWidgetSequence): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  T(h: h)
proc create*(T: type gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, param1: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence.init(fcQTestQTouchEventWidgetSequence_new(param1.h))

proc press*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint, pt: gen_qpoint_types.QPoint): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_press(self.h, touchId, pt.h))

proc move*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint, pt: gen_qpoint_types.QPoint): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_move(self.h, touchId, pt.h))

proc release*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint, pt: gen_qpoint_types.QPoint): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_release(self.h, touchId, pt.h))

proc stationary*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_stationary(self.h, touchId))

proc commit*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, processEvents: bool): bool =
  fcQTestQTouchEventWidgetSequence_commit(self.h, processEvents)

proc press*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint, pt: gen_qpoint_types.QPoint, widget: gen_qwidget_types.QWidget): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_press3(self.h, touchId, pt.h, widget.h))

proc move*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint, pt: gen_qpoint_types.QPoint, widget: gen_qwidget_types.QWidget): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_move3(self.h, touchId, pt.h, widget.h))

proc release*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint, pt: gen_qpoint_types.QPoint, widget: gen_qwidget_types.QWidget): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_release3(self.h, touchId, pt.h, widget.h))

proc QTestQTouchEventWidgetSequencestationary*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fQTest__QTouchEventWidgetSequence_virtualbase_stationary(self.h, touchId))

type QTestQTouchEventWidgetSequencestationaryProc* = proc(touchId: cint): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence
proc onstationary*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, slot: QTestQTouchEventWidgetSequencestationaryProc) =
  # TODO check subclass
  var tmp = new QTestQTouchEventWidgetSequencestationaryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTestQTouchEventWidgetSequence_override_virtual_stationary(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTest__QTouchEventWidgetSequence_stationary(self: ptr cQTestQTouchEventWidgetSequence, slot: int, touchId: cint): pointer {.exportc: "miqt_exec_callback_QTest__QTouchEventWidgetSequence_stationary ".} =
  var nimfunc = cast[ptr QTestQTouchEventWidgetSequencestationaryProc](cast[pointer](slot))
  let slotval1 = touchId


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTestQTouchEventWidgetSequencecommit*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, processEvents: bool): bool =
  fQTest__QTouchEventWidgetSequence_virtualbase_commit(self.h, processEvents)

type QTestQTouchEventWidgetSequencecommitProc* = proc(processEvents: bool): bool
proc oncommit*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, slot: QTestQTouchEventWidgetSequencecommitProc) =
  # TODO check subclass
  var tmp = new QTestQTouchEventWidgetSequencecommitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTestQTouchEventWidgetSequence_override_virtual_commit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTest__QTouchEventWidgetSequence_commit(self: ptr cQTestQTouchEventWidgetSequence, slot: int, processEvents: bool): bool {.exportc: "miqt_exec_callback_QTest__QTouchEventWidgetSequence_commit ".} =
  var nimfunc = cast[ptr QTestQTouchEventWidgetSequencecommitProc](cast[pointer](slot))
  let slotval1 = processEvents


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc delete*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence) =
  fcQTestQTouchEventWidgetSequence_delete(self.h)
