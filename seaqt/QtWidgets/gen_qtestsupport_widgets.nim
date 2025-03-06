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
  ../QtGui/gen_qeventpoint_types,
  ../QtGui/gen_qtestsupport_gui,
  ./gen_qwidget_types
export
  gen_qpoint_types,
  gen_qeventpoint_types,
  gen_qtestsupport_gui,
  gen_qwidget_types

type cQTestQTouchEventWidgetSequence*{.exportc: "QTest__QTouchEventWidgetSequence", incompleteStruct.} = object

proc fcQTestQTouchEventWidgetSequence_press(self: pointer, touchId: cint, pt: pointer): pointer {.importc: "QTest__QTouchEventWidgetSequence_press".}
proc fcQTestQTouchEventWidgetSequence_move(self: pointer, touchId: cint, pt: pointer): pointer {.importc: "QTest__QTouchEventWidgetSequence_move".}
proc fcQTestQTouchEventWidgetSequence_release(self: pointer, touchId: cint, pt: pointer): pointer {.importc: "QTest__QTouchEventWidgetSequence_release".}
proc fcQTestQTouchEventWidgetSequence_stationary(self: pointer, touchId: cint): pointer {.importc: "QTest__QTouchEventWidgetSequence_stationary".}
proc fcQTestQTouchEventWidgetSequence_commit(self: pointer, processEvents: bool): bool {.importc: "QTest__QTouchEventWidgetSequence_commit".}
proc fcQTestQTouchEventWidgetSequence_press3(self: pointer, touchId: cint, pt: pointer, widget: pointer): pointer {.importc: "QTest__QTouchEventWidgetSequence_press3".}
proc fcQTestQTouchEventWidgetSequence_move3(self: pointer, touchId: cint, pt: pointer, widget: pointer): pointer {.importc: "QTest__QTouchEventWidgetSequence_move3".}
proc fcQTestQTouchEventWidgetSequence_release3(self: pointer, touchId: cint, pt: pointer, widget: pointer): pointer {.importc: "QTest__QTouchEventWidgetSequence_release3".}
type cQTestQTouchEventWidgetSequenceVTable = object
  destructor*: proc(vtbl: ptr cQTestQTouchEventWidgetSequenceVTable, self: ptr cQTestQTouchEventWidgetSequence) {.cdecl, raises:[], gcsafe.}
  stationary*: proc(vtbl, self: pointer, touchId: cint): pointer {.cdecl, raises: [], gcsafe.}
  commit*: proc(vtbl, self: pointer, processEvents: bool): bool {.cdecl, raises: [], gcsafe.}
proc fcQTestQTouchEventWidgetSequence_virtualbase_stationary(self: pointer, touchId: cint): pointer {.importc: "QTest__QTouchEventWidgetSequence_virtualbase_stationary".}
proc fcQTestQTouchEventWidgetSequence_virtualbase_commit(self: pointer, processEvents: bool): bool {.importc: "QTest__QTouchEventWidgetSequence_virtualbase_commit".}
proc fcQTestQTouchEventWidgetSequence_protectedbase_point(self: pointer, touchId: cint): pointer {.importc: "QTest__QTouchEventWidgetSequence_protectedbase_point".}
proc fcQTestQTouchEventWidgetSequence_protectedbase_pointOrPreviousPoint(self: pointer, touchId: cint): pointer {.importc: "QTest__QTouchEventWidgetSequence_protectedbase_pointOrPreviousPoint".}
proc fcQTestQTouchEventWidgetSequence_new(vtbl: pointer, param1: pointer): ptr cQTestQTouchEventWidgetSequence {.importc: "QTest__QTouchEventWidgetSequence_new".}
proc fcQTestQTouchEventWidgetSequence_delete(self: pointer) {.importc: "QTest__QTouchEventWidgetSequence_delete".}

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

type QTestQTouchEventWidgetSequencestationaryProc* = proc(self: QTestQTouchEventWidgetSequence, touchId: cint): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence {.raises: [], gcsafe.}
type QTestQTouchEventWidgetSequencecommitProc* = proc(self: QTestQTouchEventWidgetSequence, processEvents: bool): bool {.raises: [], gcsafe.}
type QTestQTouchEventWidgetSequenceVTable* = object
  vtbl: cQTestQTouchEventWidgetSequenceVTable
  stationary*: QTestQTouchEventWidgetSequencestationaryProc
  commit*: QTestQTouchEventWidgetSequencecommitProc
proc QTestQTouchEventWidgetSequencestationary*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_virtualbase_stationary(self.h, touchId))

proc miqt_exec_callback_cQTestQTouchEventWidgetSequence_stationary(vtbl: pointer, self: pointer, touchId: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTestQTouchEventWidgetSequenceVTable](vtbl)
  let self = QTestQTouchEventWidgetSequence(h: self)
  let slotval1 = touchId
  var virtualReturn = vtbl[].stationary(self, slotval1)
  virtualReturn.h

proc QTestQTouchEventWidgetSequencecommit*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, processEvents: bool): bool =
  fcQTestQTouchEventWidgetSequence_virtualbase_commit(self.h, processEvents)

proc miqt_exec_callback_cQTestQTouchEventWidgetSequence_commit(vtbl: pointer, self: pointer, processEvents: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QTestQTouchEventWidgetSequenceVTable](vtbl)
  let self = QTestQTouchEventWidgetSequence(h: self)
  let slotval1 = processEvents
  var virtualReturn = vtbl[].commit(self, slotval1)
  virtualReturn

proc point*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint): gen_qeventpoint_types.QEventPoint =
  gen_qeventpoint_types.QEventPoint(h: fcQTestQTouchEventWidgetSequence_protectedbase_point(self.h, touchId))

proc pointOrPreviousPoint*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint): gen_qeventpoint_types.QEventPoint =
  gen_qeventpoint_types.QEventPoint(h: fcQTestQTouchEventWidgetSequence_protectedbase_pointOrPreviousPoint(self.h, touchId))

proc create*(T: type gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence,
    param1: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence,
    vtbl: ref QTestQTouchEventWidgetSequenceVTable = nil): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  let vtbl = if vtbl == nil: new QTestQTouchEventWidgetSequenceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTestQTouchEventWidgetSequenceVTable, _: ptr cQTestQTouchEventWidgetSequence) {.cdecl.} =
    let vtbl = cast[ref QTestQTouchEventWidgetSequenceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.stationary):
    vtbl[].vtbl.stationary = miqt_exec_callback_cQTestQTouchEventWidgetSequence_stationary
  if not isNil(vtbl.commit):
    vtbl[].vtbl.commit = miqt_exec_callback_cQTestQTouchEventWidgetSequence_commit
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_new(addr(vtbl[]), param1.h))

proc delete*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence) =
  fcQTestQTouchEventWidgetSequence_delete(self.h)
