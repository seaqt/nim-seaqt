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


{.compile("gen_qtestsupport_widgets.cpp", QtWidgetsCFlags).}


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
proc fcQTestQTouchEventWidgetSequence_vtbl(self: pointer): pointer {.importc: "QTest__QTouchEventWidgetSequence_vtbl".}
proc fcQTestQTouchEventWidgetSequence_vdata(self: pointer): pointer {.importc: "QTest__QTouchEventWidgetSequence_vdata".}
type cQTestQTouchEventWidgetSequenceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  stationary*: proc(self: pointer, touchId: cint): pointer {.cdecl, raises: [], gcsafe.}
  commit*: proc(self: pointer, processEvents: bool): bool {.cdecl, raises: [], gcsafe.}
proc fcQTestQTouchEventWidgetSequence_virtualbase_stationary(self: pointer, touchId: cint): pointer {.importc: "QTest__QTouchEventWidgetSequence_virtualbase_stationary".}
proc fcQTestQTouchEventWidgetSequence_virtualbase_commit(self: pointer, processEvents: bool): bool {.importc: "QTest__QTouchEventWidgetSequence_virtualbase_commit".}
proc fcQTestQTouchEventWidgetSequence_protectedbase_point(self: pointer, touchId: cint): pointer {.importc: "QTest__QTouchEventWidgetSequence_protectedbase_point".}
proc fcQTestQTouchEventWidgetSequence_protectedbase_pointOrPreviousPoint(self: pointer, touchId: cint): pointer {.importc: "QTest__QTouchEventWidgetSequence_protectedbase_pointOrPreviousPoint".}
proc fcQTestQTouchEventWidgetSequence_new(vtbl, vdata: pointer, param1: pointer): ptr cQTestQTouchEventWidgetSequence {.importc: "QTest__QTouchEventWidgetSequence_new".}

proc press*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint, pt: gen_qpoint_types.QPoint): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_press(self.h, touchId, pt.h), owned: false)

proc move*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint, pt: gen_qpoint_types.QPoint): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_move(self.h, touchId, pt.h), owned: false)

proc release*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint, pt: gen_qpoint_types.QPoint): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_release(self.h, touchId, pt.h), owned: false)

proc stationary*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_stationary(self.h, touchId), owned: false)

proc commit*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, processEvents: bool): bool =
  fcQTestQTouchEventWidgetSequence_commit(self.h, processEvents)

proc press*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint, pt: gen_qpoint_types.QPoint, widget: gen_qwidget_types.QWidget): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_press3(self.h, touchId, pt.h, widget.h), owned: false)

proc move*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint, pt: gen_qpoint_types.QPoint, widget: gen_qwidget_types.QWidget): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_move3(self.h, touchId, pt.h, widget.h), owned: false)

proc release*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint, pt: gen_qpoint_types.QPoint, widget: gen_qwidget_types.QWidget): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_release3(self.h, touchId, pt.h, widget.h), owned: false)

type QTestQTouchEventWidgetSequencestationaryProc* = proc(self: QTestQTouchEventWidgetSequence, touchId: cint): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence {.raises: [], gcsafe.}
type QTestQTouchEventWidgetSequencecommitProc* = proc(self: QTestQTouchEventWidgetSequence, processEvents: bool): bool {.raises: [], gcsafe.}
type QTestQTouchEventWidgetSequenceVTable* {.inheritable, pure.} = object
  vtbl: cQTestQTouchEventWidgetSequenceVTable
  stationary*: QTestQTouchEventWidgetSequencestationaryProc
  commit*: QTestQTouchEventWidgetSequencecommitProc
proc QTestQTouchEventWidgetSequencestationary*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_virtualbase_stationary(self.h, touchId), owned: false)

proc cQTestQTouchEventWidgetSequence_vtable_callback_stationary(self: pointer, touchId: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTestQTouchEventWidgetSequenceVTable](fcQTestQTouchEventWidgetSequence_vdata(self))
  let self = QTestQTouchEventWidgetSequence(h: self)
  let slotval1 = touchId
  var virtualReturn = vtbl[].stationary(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTestQTouchEventWidgetSequencecommit*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, processEvents: bool): bool =
  fcQTestQTouchEventWidgetSequence_virtualbase_commit(self.h, processEvents)

proc cQTestQTouchEventWidgetSequence_vtable_callback_commit(self: pointer, processEvents: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QTestQTouchEventWidgetSequenceVTable](fcQTestQTouchEventWidgetSequence_vdata(self))
  let self = QTestQTouchEventWidgetSequence(h: self)
  let slotval1 = processEvents
  var virtualReturn = vtbl[].commit(self, slotval1)
  virtualReturn

type VirtualQTestQTouchEventWidgetSequence* {.inheritable.} = ref object of QTestQTouchEventWidgetSequence
  vtbl*: cQTestQTouchEventWidgetSequenceVTable
method stationary*(self: VirtualQTestQTouchEventWidgetSequence, touchId: cint): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence {.base.} =
  QTestQTouchEventWidgetSequencestationary(self[], touchId)
proc cQTestQTouchEventWidgetSequence_method_callback_stationary(self: pointer, touchId: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQTestQTouchEventWidgetSequence](fcQTestQTouchEventWidgetSequence_vdata(self))
  let slotval1 = touchId
  var virtualReturn = inst.stationary(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method commit*(self: VirtualQTestQTouchEventWidgetSequence, processEvents: bool): bool {.base.} =
  QTestQTouchEventWidgetSequencecommit(self[], processEvents)
proc cQTestQTouchEventWidgetSequence_method_callback_commit(self: pointer, processEvents: bool): bool {.cdecl.} =
  let inst = cast[VirtualQTestQTouchEventWidgetSequence](fcQTestQTouchEventWidgetSequence_vdata(self))
  let slotval1 = processEvents
  var virtualReturn = inst.commit(slotval1)
  virtualReturn

proc point*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint): gen_qeventpoint_types.QEventPoint =
  gen_qeventpoint_types.QEventPoint(h: fcQTestQTouchEventWidgetSequence_protectedbase_point(self.h, touchId), owned: false)

proc pointOrPreviousPoint*(self: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence, touchId: cint): gen_qeventpoint_types.QEventPoint =
  gen_qeventpoint_types.QEventPoint(h: fcQTestQTouchEventWidgetSequence_protectedbase_pointOrPreviousPoint(self.h, touchId), owned: false)

proc create*(T: type gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence,
    param1: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence,
    vtbl: ref QTestQTouchEventWidgetSequenceVTable = nil): gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence =
  let vtbl = if vtbl == nil: new QTestQTouchEventWidgetSequenceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTestQTouchEventWidgetSequenceVTable](fcQTestQTouchEventWidgetSequence_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].stationary):
    vtbl[].vtbl.stationary = cQTestQTouchEventWidgetSequence_vtable_callback_stationary
  if not isNil(vtbl[].commit):
    vtbl[].vtbl.commit = cQTestQTouchEventWidgetSequence_vtable_callback_commit
  gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence(h: fcQTestQTouchEventWidgetSequence_new(addr(vtbl[].vtbl), addr(vtbl[]), param1.h), owned: true)

const cQTestQTouchEventWidgetSequence_mvtbl = cQTestQTouchEventWidgetSequenceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTestQTouchEventWidgetSequence()[])](self.fcQTestQTouchEventWidgetSequence_vtbl())
    inst[].h = nil
    inst[].owned = false,
  stationary: cQTestQTouchEventWidgetSequence_method_callback_stationary,
  commit: cQTestQTouchEventWidgetSequence_method_callback_commit,
)
proc create*(T: type gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence,
    param1: gen_qtestsupport_widgets_types.QTestQTouchEventWidgetSequence,
    inst: VirtualQTestQTouchEventWidgetSequence) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTestQTouchEventWidgetSequence_new(addr(cQTestQTouchEventWidgetSequence_mvtbl), addr(inst[]), param1.h)
  inst[].owned = true

