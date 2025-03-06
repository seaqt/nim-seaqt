import ./Qt6PrintSupport_libs

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

const cflags = gorge("pkg-config --cflags Qt6PrintSupport")  & " -fPIC"
{.compile("gen_qprintpreviewdialog.cpp", cflags).}


import ./gen_qprintpreviewdialog_types
export gen_qprintpreviewdialog_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtWidgets/gen_qdialog,
  ../QtWidgets/gen_qwidget_types,
  ./gen_qprinter_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qdialog,
  gen_qwidget_types,
  gen_qprinter_types

type cQPrintPreviewDialog*{.exportc: "QPrintPreviewDialog", incompleteStruct.} = object

proc fcQPrintPreviewDialog_new(parent: pointer): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new".}
proc fcQPrintPreviewDialog_new2(): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new2".}
proc fcQPrintPreviewDialog_new3(printer: pointer): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new3".}
proc fcQPrintPreviewDialog_new4(parent: pointer, flags: cint): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new4".}
proc fcQPrintPreviewDialog_new5(printer: pointer, parent: pointer): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new5".}
proc fcQPrintPreviewDialog_new6(printer: pointer, parent: pointer, flags: cint): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new6".}
proc fcQPrintPreviewDialog_metaObject(self: pointer, ): pointer {.importc: "QPrintPreviewDialog_metaObject".}
proc fcQPrintPreviewDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QPrintPreviewDialog_metacast".}
proc fcQPrintPreviewDialog_tr(s: cstring): struct_miqt_string {.importc: "QPrintPreviewDialog_tr".}
proc fcQPrintPreviewDialog_printer(self: pointer, ): pointer {.importc: "QPrintPreviewDialog_printer".}
proc fcQPrintPreviewDialog_setVisible(self: pointer, visible: bool): void {.importc: "QPrintPreviewDialog_setVisible".}
proc fcQPrintPreviewDialog_done(self: pointer, resultVal: cint): void {.importc: "QPrintPreviewDialog_done".}
proc fcQPrintPreviewDialog_paintRequested(self: pointer, printer: pointer): void {.importc: "QPrintPreviewDialog_paintRequested".}
proc fcQPrintPreviewDialog_connect_paintRequested(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_connect_paintRequested".}
proc fcQPrintPreviewDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPrintPreviewDialog_tr2".}
proc fcQPrintPreviewDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPrintPreviewDialog_tr3".}
proc fQPrintPreviewDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QPrintPreviewDialog_virtualbase_setVisible".}
proc fcQPrintPreviewDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_setVisible".}
proc fQPrintPreviewDialog_virtualbase_done(self: pointer, resultVal: cint): void{.importc: "QPrintPreviewDialog_virtualbase_done".}
proc fcQPrintPreviewDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_done".}
proc fQPrintPreviewDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QPrintPreviewDialog_virtualbase_sizeHint".}
proc fcQPrintPreviewDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_sizeHint".}
proc fQPrintPreviewDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QPrintPreviewDialog_virtualbase_minimumSizeHint".}
proc fcQPrintPreviewDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_minimumSizeHint".}
proc fQPrintPreviewDialog_virtualbase_open(self: pointer, ): void{.importc: "QPrintPreviewDialog_virtualbase_open".}
proc fcQPrintPreviewDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_open".}
proc fQPrintPreviewDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QPrintPreviewDialog_virtualbase_exec".}
proc fcQPrintPreviewDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_exec".}
proc fQPrintPreviewDialog_virtualbase_accept(self: pointer, ): void{.importc: "QPrintPreviewDialog_virtualbase_accept".}
proc fcQPrintPreviewDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_accept".}
proc fQPrintPreviewDialog_virtualbase_reject(self: pointer, ): void{.importc: "QPrintPreviewDialog_virtualbase_reject".}
proc fcQPrintPreviewDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_reject".}
proc fQPrintPreviewDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_keyPressEvent".}
proc fcQPrintPreviewDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_keyPressEvent".}
proc fQPrintPreviewDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_closeEvent".}
proc fcQPrintPreviewDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_closeEvent".}
proc fQPrintPreviewDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_showEvent".}
proc fcQPrintPreviewDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_showEvent".}
proc fQPrintPreviewDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_resizeEvent".}
proc fcQPrintPreviewDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_resizeEvent".}
proc fQPrintPreviewDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_contextMenuEvent".}
proc fcQPrintPreviewDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_contextMenuEvent".}
proc fQPrintPreviewDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QPrintPreviewDialog_virtualbase_eventFilter".}
proc fcQPrintPreviewDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_eventFilter".}
proc fQPrintPreviewDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QPrintPreviewDialog_virtualbase_devType".}
proc fcQPrintPreviewDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_devType".}
proc fQPrintPreviewDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QPrintPreviewDialog_virtualbase_heightForWidth".}
proc fcQPrintPreviewDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_heightForWidth".}
proc fQPrintPreviewDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QPrintPreviewDialog_virtualbase_hasHeightForWidth".}
proc fcQPrintPreviewDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_hasHeightForWidth".}
proc fQPrintPreviewDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QPrintPreviewDialog_virtualbase_paintEngine".}
proc fcQPrintPreviewDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_paintEngine".}
proc fQPrintPreviewDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPrintPreviewDialog_virtualbase_event".}
proc fcQPrintPreviewDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_event".}
proc fQPrintPreviewDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_mousePressEvent".}
proc fcQPrintPreviewDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_mousePressEvent".}
proc fQPrintPreviewDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_mouseReleaseEvent".}
proc fcQPrintPreviewDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_mouseReleaseEvent".}
proc fQPrintPreviewDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQPrintPreviewDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_mouseDoubleClickEvent".}
proc fQPrintPreviewDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_mouseMoveEvent".}
proc fcQPrintPreviewDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_mouseMoveEvent".}
proc fQPrintPreviewDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_wheelEvent".}
proc fcQPrintPreviewDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_wheelEvent".}
proc fQPrintPreviewDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_keyReleaseEvent".}
proc fcQPrintPreviewDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_keyReleaseEvent".}
proc fQPrintPreviewDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_focusInEvent".}
proc fcQPrintPreviewDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_focusInEvent".}
proc fQPrintPreviewDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_focusOutEvent".}
proc fcQPrintPreviewDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_focusOutEvent".}
proc fQPrintPreviewDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_enterEvent".}
proc fcQPrintPreviewDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_enterEvent".}
proc fQPrintPreviewDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_leaveEvent".}
proc fcQPrintPreviewDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_leaveEvent".}
proc fQPrintPreviewDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_paintEvent".}
proc fcQPrintPreviewDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_paintEvent".}
proc fQPrintPreviewDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_moveEvent".}
proc fcQPrintPreviewDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_moveEvent".}
proc fQPrintPreviewDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_tabletEvent".}
proc fcQPrintPreviewDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_tabletEvent".}
proc fQPrintPreviewDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_actionEvent".}
proc fcQPrintPreviewDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_actionEvent".}
proc fQPrintPreviewDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_dragEnterEvent".}
proc fcQPrintPreviewDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_dragEnterEvent".}
proc fQPrintPreviewDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_dragMoveEvent".}
proc fcQPrintPreviewDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_dragMoveEvent".}
proc fQPrintPreviewDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_dragLeaveEvent".}
proc fcQPrintPreviewDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_dragLeaveEvent".}
proc fQPrintPreviewDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_dropEvent".}
proc fcQPrintPreviewDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_dropEvent".}
proc fQPrintPreviewDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_hideEvent".}
proc fcQPrintPreviewDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_hideEvent".}
proc fQPrintPreviewDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QPrintPreviewDialog_virtualbase_nativeEvent".}
proc fcQPrintPreviewDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_nativeEvent".}
proc fQPrintPreviewDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_changeEvent".}
proc fcQPrintPreviewDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_changeEvent".}
proc fQPrintPreviewDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QPrintPreviewDialog_virtualbase_metric".}
proc fcQPrintPreviewDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_metric".}
proc fQPrintPreviewDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_initPainter".}
proc fcQPrintPreviewDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_initPainter".}
proc fQPrintPreviewDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QPrintPreviewDialog_virtualbase_redirected".}
proc fcQPrintPreviewDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_redirected".}
proc fQPrintPreviewDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QPrintPreviewDialog_virtualbase_sharedPainter".}
proc fcQPrintPreviewDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_sharedPainter".}
proc fQPrintPreviewDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_inputMethodEvent".}
proc fcQPrintPreviewDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_inputMethodEvent".}
proc fQPrintPreviewDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QPrintPreviewDialog_virtualbase_inputMethodQuery".}
proc fcQPrintPreviewDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_inputMethodQuery".}
proc fQPrintPreviewDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QPrintPreviewDialog_virtualbase_focusNextPrevChild".}
proc fcQPrintPreviewDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_focusNextPrevChild".}
proc fQPrintPreviewDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_timerEvent".}
proc fcQPrintPreviewDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_timerEvent".}
proc fQPrintPreviewDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_childEvent".}
proc fcQPrintPreviewDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_childEvent".}
proc fQPrintPreviewDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_customEvent".}
proc fcQPrintPreviewDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_customEvent".}
proc fQPrintPreviewDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_connectNotify".}
proc fcQPrintPreviewDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_connectNotify".}
proc fQPrintPreviewDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPrintPreviewDialog_virtualbase_disconnectNotify".}
proc fcQPrintPreviewDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPrintPreviewDialog_override_virtual_disconnectNotify".}
proc fcQPrintPreviewDialog_delete(self: pointer) {.importc: "QPrintPreviewDialog_delete".}


func init*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog, h: ptr cQPrintPreviewDialog): gen_qprintpreviewdialog_types.QPrintPreviewDialog =
  T(h: h)
proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog, parent: gen_qwidget_types.QWidget): gen_qprintpreviewdialog_types.QPrintPreviewDialog =
  gen_qprintpreviewdialog_types.QPrintPreviewDialog.init(fcQPrintPreviewDialog_new(parent.h))

proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog, ): gen_qprintpreviewdialog_types.QPrintPreviewDialog =
  gen_qprintpreviewdialog_types.QPrintPreviewDialog.init(fcQPrintPreviewDialog_new2())

proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog, printer: gen_qprinter_types.QPrinter): gen_qprintpreviewdialog_types.QPrintPreviewDialog =
  gen_qprintpreviewdialog_types.QPrintPreviewDialog.init(fcQPrintPreviewDialog_new3(printer.h))

proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog, parent: gen_qwidget_types.QWidget, flags: cint): gen_qprintpreviewdialog_types.QPrintPreviewDialog =
  gen_qprintpreviewdialog_types.QPrintPreviewDialog.init(fcQPrintPreviewDialog_new4(parent.h, cint(flags)))

proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog, printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget): gen_qprintpreviewdialog_types.QPrintPreviewDialog =
  gen_qprintpreviewdialog_types.QPrintPreviewDialog.init(fcQPrintPreviewDialog_new5(printer.h, parent.h))

proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog, printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget, flags: cint): gen_qprintpreviewdialog_types.QPrintPreviewDialog =
  gen_qprintpreviewdialog_types.QPrintPreviewDialog.init(fcQPrintPreviewDialog_new6(printer.h, parent.h, cint(flags)))

proc metaObject*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintPreviewDialog_metaObject(self.h))

proc metacast*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: cstring): pointer =
  fcQPrintPreviewDialog_metacast(self.h, param1)

proc tr*(_: type gen_qprintpreviewdialog_types.QPrintPreviewDialog, s: cstring): string =
  let v_ms = fcQPrintPreviewDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc printer*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, ): gen_qprinter_types.QPrinter =
  gen_qprinter_types.QPrinter(h: fcQPrintPreviewDialog_printer(self.h))

proc setVisible*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, visible: bool): void =
  fcQPrintPreviewDialog_setVisible(self.h, visible)

proc done*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, resultVal: cint): void =
  fcQPrintPreviewDialog_done(self.h, resultVal)

proc paintRequested*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, printer: gen_qprinter_types.QPrinter): void =
  fcQPrintPreviewDialog_paintRequested(self.h, printer.h)

type QPrintPreviewDialogpaintRequestedSlot* = proc(printer: gen_qprinter_types.QPrinter)
proc miqt_exec_callback_QPrintPreviewDialog_paintRequested(slot: int, printer: pointer) {.exportc.} =
  let nimfunc = cast[ptr QPrintPreviewDialogpaintRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qprinter_types.QPrinter(h: printer)

  nimfunc[](slotval1)

proc onpaintRequested*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogpaintRequestedSlot) =
  var tmp = new QPrintPreviewDialogpaintRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_connect_paintRequested(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qprintpreviewdialog_types.QPrintPreviewDialog, s: cstring, c: cstring): string =
  let v_ms = fcQPrintPreviewDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qprintpreviewdialog_types.QPrintPreviewDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPrintPreviewDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QPrintPreviewDialogsetVisible*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, visible: bool): void =
  fQPrintPreviewDialog_virtualbase_setVisible(self.h, visible)

type QPrintPreviewDialogsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogsetVisibleProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_setVisible(self: ptr cQPrintPreviewDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_setVisible ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QPrintPreviewDialogdone*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, resultVal: cint): void =
  fQPrintPreviewDialog_virtualbase_done(self.h, resultVal)

type QPrintPreviewDialogdoneProc* = proc(resultVal: cint): void
proc ondone*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogdoneProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogdoneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_done(self: ptr cQPrintPreviewDialog, slot: int, resultVal: cint): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_done ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogdoneProc](cast[pointer](slot))
  let slotval1 = resultVal


  nimfunc[](slotval1)
proc QPrintPreviewDialogsizeHint*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQPrintPreviewDialog_virtualbase_sizeHint(self.h))

type QPrintPreviewDialogsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogsizeHintProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_sizeHint(self: ptr cQPrintPreviewDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewDialog_sizeHint ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPrintPreviewDialogminimumSizeHint*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQPrintPreviewDialog_virtualbase_minimumSizeHint(self.h))

type QPrintPreviewDialogminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_minimumSizeHint(self: ptr cQPrintPreviewDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewDialog_minimumSizeHint ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPrintPreviewDialogopen*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, ): void =
  fQPrintPreviewDialog_virtualbase_open(self.h)

type QPrintPreviewDialogopenProc* = proc(): void
proc onopen*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogopenProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_open(self: ptr cQPrintPreviewDialog, slot: int): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_open ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogopenProc](cast[pointer](slot))

  nimfunc[]()
proc QPrintPreviewDialogexec*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, ): cint =
  fQPrintPreviewDialog_virtualbase_exec(self.h)

type QPrintPreviewDialogexecProc* = proc(): cint
proc onexec*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogexecProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogexecProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_exec(self: ptr cQPrintPreviewDialog, slot: int): cint {.exportc: "miqt_exec_callback_QPrintPreviewDialog_exec ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogexecProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPrintPreviewDialogaccept*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, ): void =
  fQPrintPreviewDialog_virtualbase_accept(self.h)

type QPrintPreviewDialogacceptProc* = proc(): void
proc onaccept*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogacceptProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogacceptProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_accept(self: ptr cQPrintPreviewDialog, slot: int): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_accept ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogacceptProc](cast[pointer](slot))

  nimfunc[]()
proc QPrintPreviewDialogreject*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, ): void =
  fQPrintPreviewDialog_virtualbase_reject(self.h)

type QPrintPreviewDialogrejectProc* = proc(): void
proc onreject*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogrejectProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogrejectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_reject(self: ptr cQPrintPreviewDialog, slot: int): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_reject ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogrejectProc](cast[pointer](slot))

  nimfunc[]()
proc QPrintPreviewDialogkeyPressEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: gen_qevent_types.QKeyEvent): void =
  fQPrintPreviewDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QPrintPreviewDialogkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_keyPressEvent(self: ptr cQPrintPreviewDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_keyPressEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QPrintPreviewDialogcloseEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: gen_qevent_types.QCloseEvent): void =
  fQPrintPreviewDialog_virtualbase_closeEvent(self.h, param1.h)

type QPrintPreviewDialogcloseEventProc* = proc(param1: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogcloseEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_closeEvent(self: ptr cQPrintPreviewDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_closeEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)


  nimfunc[](slotval1)
proc QPrintPreviewDialogshowEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: gen_qevent_types.QShowEvent): void =
  fQPrintPreviewDialog_virtualbase_showEvent(self.h, param1.h)

type QPrintPreviewDialogshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogshowEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_showEvent(self: ptr cQPrintPreviewDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_showEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QPrintPreviewDialogresizeEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: gen_qevent_types.QResizeEvent): void =
  fQPrintPreviewDialog_virtualbase_resizeEvent(self.h, param1.h)

type QPrintPreviewDialogresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogresizeEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_resizeEvent(self: ptr cQPrintPreviewDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_resizeEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QPrintPreviewDialogcontextMenuEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fQPrintPreviewDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QPrintPreviewDialogcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_contextMenuEvent(self: ptr cQPrintPreviewDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_contextMenuEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QPrintPreviewDialogeventFilter*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQPrintPreviewDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QPrintPreviewDialogeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogeventFilterProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_eventFilter(self: ptr cQPrintPreviewDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QPrintPreviewDialog_eventFilter ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QPrintPreviewDialogdevType*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, ): cint =
  fQPrintPreviewDialog_virtualbase_devType(self.h)

type QPrintPreviewDialogdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogdevTypeProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_devType(self: ptr cQPrintPreviewDialog, slot: int): cint {.exportc: "miqt_exec_callback_QPrintPreviewDialog_devType ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPrintPreviewDialogheightForWidth*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: cint): cint =
  fQPrintPreviewDialog_virtualbase_heightForWidth(self.h, param1)

type QPrintPreviewDialogheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogheightForWidthProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_heightForWidth(self: ptr cQPrintPreviewDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPrintPreviewDialog_heightForWidth ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPrintPreviewDialoghasHeightForWidth*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, ): bool =
  fQPrintPreviewDialog_virtualbase_hasHeightForWidth(self.h)

type QPrintPreviewDialoghasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialoghasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialoghasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_hasHeightForWidth(self: ptr cQPrintPreviewDialog, slot: int): bool {.exportc: "miqt_exec_callback_QPrintPreviewDialog_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QPrintPreviewDialoghasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPrintPreviewDialogpaintEngine*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQPrintPreviewDialog_virtualbase_paintEngine(self.h))

type QPrintPreviewDialogpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogpaintEngineProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_paintEngine(self: ptr cQPrintPreviewDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewDialog_paintEngine ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPrintPreviewDialogevent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qcoreevent_types.QEvent): bool =
  fQPrintPreviewDialog_virtualbase_event(self.h, event.h)

type QPrintPreviewDialogeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogeventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_event(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPrintPreviewDialog_event ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPrintPreviewDialogmousePressEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QMouseEvent): void =
  fQPrintPreviewDialog_virtualbase_mousePressEvent(self.h, event.h)

type QPrintPreviewDialogmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogmousePressEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_mousePressEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_mousePressEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogmouseReleaseEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QMouseEvent): void =
  fQPrintPreviewDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QPrintPreviewDialogmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_mouseReleaseEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogmouseDoubleClickEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QMouseEvent): void =
  fQPrintPreviewDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QPrintPreviewDialogmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_mouseDoubleClickEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogmouseMoveEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QMouseEvent): void =
  fQPrintPreviewDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QPrintPreviewDialogmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_mouseMoveEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogwheelEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QWheelEvent): void =
  fQPrintPreviewDialog_virtualbase_wheelEvent(self.h, event.h)

type QPrintPreviewDialogwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogwheelEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_wheelEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_wheelEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogkeyReleaseEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QKeyEvent): void =
  fQPrintPreviewDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QPrintPreviewDialogkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_keyReleaseEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogfocusInEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QFocusEvent): void =
  fQPrintPreviewDialog_virtualbase_focusInEvent(self.h, event.h)

type QPrintPreviewDialogfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogfocusInEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_focusInEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_focusInEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogfocusOutEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QFocusEvent): void =
  fQPrintPreviewDialog_virtualbase_focusOutEvent(self.h, event.h)

type QPrintPreviewDialogfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_focusOutEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_focusOutEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogenterEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QEnterEvent): void =
  fQPrintPreviewDialog_virtualbase_enterEvent(self.h, event.h)

type QPrintPreviewDialogenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogenterEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_enterEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_enterEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogleaveEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qcoreevent_types.QEvent): void =
  fQPrintPreviewDialog_virtualbase_leaveEvent(self.h, event.h)

type QPrintPreviewDialogleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogleaveEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_leaveEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_leaveEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogpaintEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QPaintEvent): void =
  fQPrintPreviewDialog_virtualbase_paintEvent(self.h, event.h)

type QPrintPreviewDialogpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogpaintEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_paintEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_paintEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogmoveEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QMoveEvent): void =
  fQPrintPreviewDialog_virtualbase_moveEvent(self.h, event.h)

type QPrintPreviewDialogmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogmoveEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_moveEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_moveEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogtabletEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QTabletEvent): void =
  fQPrintPreviewDialog_virtualbase_tabletEvent(self.h, event.h)

type QPrintPreviewDialogtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogtabletEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_tabletEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_tabletEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogactionEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QActionEvent): void =
  fQPrintPreviewDialog_virtualbase_actionEvent(self.h, event.h)

type QPrintPreviewDialogactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogactionEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_actionEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_actionEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogdragEnterEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fQPrintPreviewDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QPrintPreviewDialogdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_dragEnterEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_dragEnterEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogdragMoveEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fQPrintPreviewDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QPrintPreviewDialogdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_dragMoveEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_dragMoveEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogdragLeaveEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fQPrintPreviewDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QPrintPreviewDialogdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_dragLeaveEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogdropEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QDropEvent): void =
  fQPrintPreviewDialog_virtualbase_dropEvent(self.h, event.h)

type QPrintPreviewDialogdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogdropEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_dropEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_dropEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialoghideEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QHideEvent): void =
  fQPrintPreviewDialog_virtualbase_hideEvent(self.h, event.h)

type QPrintPreviewDialoghideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialoghideEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialoghideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_hideEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_hideEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialoghideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialognativeEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQPrintPreviewDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QPrintPreviewDialognativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialognativeEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialognativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_nativeEvent(self: ptr cQPrintPreviewDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QPrintPreviewDialog_nativeEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialognativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QPrintPreviewDialogchangeEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: gen_qcoreevent_types.QEvent): void =
  fQPrintPreviewDialog_virtualbase_changeEvent(self.h, param1.h)

type QPrintPreviewDialogchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogchangeEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_changeEvent(self: ptr cQPrintPreviewDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_changeEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QPrintPreviewDialogmetric*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: cint): cint =
  fQPrintPreviewDialog_virtualbase_metric(self.h, cint(param1))

type QPrintPreviewDialogmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogmetricProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_metric(self: ptr cQPrintPreviewDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPrintPreviewDialog_metric ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPrintPreviewDialoginitPainter*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, painter: gen_qpainter_types.QPainter): void =
  fQPrintPreviewDialog_virtualbase_initPainter(self.h, painter.h)

type QPrintPreviewDialoginitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialoginitPainterProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialoginitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_initPainter(self: ptr cQPrintPreviewDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_initPainter ".} =
  var nimfunc = cast[ptr QPrintPreviewDialoginitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QPrintPreviewDialogredirected*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQPrintPreviewDialog_virtualbase_redirected(self.h, offset.h))

type QPrintPreviewDialogredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogredirectedProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_redirected(self: ptr cQPrintPreviewDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPrintPreviewDialog_redirected ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QPrintPreviewDialogsharedPainter*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQPrintPreviewDialog_virtualbase_sharedPainter(self.h))

type QPrintPreviewDialogsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogsharedPainterProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_sharedPainter(self: ptr cQPrintPreviewDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintPreviewDialog_sharedPainter ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPrintPreviewDialoginputMethodEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fQPrintPreviewDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QPrintPreviewDialoginputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialoginputMethodEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialoginputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_inputMethodEvent(self: ptr cQPrintPreviewDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_inputMethodEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialoginputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QPrintPreviewDialoginputMethodQuery*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQPrintPreviewDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QPrintPreviewDialoginputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialoginputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialoginputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_inputMethodQuery(self: ptr cQPrintPreviewDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QPrintPreviewDialog_inputMethodQuery ".} =
  var nimfunc = cast[ptr QPrintPreviewDialoginputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QPrintPreviewDialogfocusNextPrevChild*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, next: bool): bool =
  fQPrintPreviewDialog_virtualbase_focusNextPrevChild(self.h, next)

type QPrintPreviewDialogfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_focusNextPrevChild(self: ptr cQPrintPreviewDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QPrintPreviewDialog_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPrintPreviewDialogtimerEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fQPrintPreviewDialog_virtualbase_timerEvent(self.h, event.h)

type QPrintPreviewDialogtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogtimerEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_timerEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_timerEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogchildEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fQPrintPreviewDialog_virtualbase_childEvent(self.h, event.h)

type QPrintPreviewDialogchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogchildEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_childEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_childEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogcustomEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qcoreevent_types.QEvent): void =
  fQPrintPreviewDialog_virtualbase_customEvent(self.h, event.h)

type QPrintPreviewDialogcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogcustomEventProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_customEvent(self: ptr cQPrintPreviewDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_customEvent ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPrintPreviewDialogconnectNotify*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPrintPreviewDialog_virtualbase_connectNotify(self.h, signal.h)

type QPrintPreviewDialogconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_connectNotify(self: ptr cQPrintPreviewDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_connectNotify ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QPrintPreviewDialogdisconnectNotify*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPrintPreviewDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QPrintPreviewDialogdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPrintPreviewDialogdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintPreviewDialog_disconnectNotify(self: ptr cQPrintPreviewDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPrintPreviewDialog_disconnectNotify ".} =
  var nimfunc = cast[ptr QPrintPreviewDialogdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog) =
  fcQPrintPreviewDialog_delete(self.h)
