import ./Qt5PrintSupport_libs

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

const cflags = gorge("pkg-config --cflags Qt5PrintSupport")  & " -fPIC"
{.compile("gen_qpagesetupdialog.cpp", cflags).}


import ./gen_qpagesetupdialog_types
export gen_qpagesetupdialog_types

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

type cQPageSetupDialog*{.exportc: "QPageSetupDialog", incompleteStruct.} = object

proc fcQPageSetupDialog_new(parent: pointer): ptr cQPageSetupDialog {.importc: "QPageSetupDialog_new".}
proc fcQPageSetupDialog_new2(printer: pointer): ptr cQPageSetupDialog {.importc: "QPageSetupDialog_new2".}
proc fcQPageSetupDialog_new3(): ptr cQPageSetupDialog {.importc: "QPageSetupDialog_new3".}
proc fcQPageSetupDialog_new4(printer: pointer, parent: pointer): ptr cQPageSetupDialog {.importc: "QPageSetupDialog_new4".}
proc fcQPageSetupDialog_metaObject(self: pointer, ): pointer {.importc: "QPageSetupDialog_metaObject".}
proc fcQPageSetupDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QPageSetupDialog_metacast".}
proc fcQPageSetupDialog_tr(s: cstring): struct_miqt_string {.importc: "QPageSetupDialog_tr".}
proc fcQPageSetupDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QPageSetupDialog_trUtf8".}
proc fcQPageSetupDialog_exec(self: pointer, ): cint {.importc: "QPageSetupDialog_exec".}
proc fcQPageSetupDialog_done(self: pointer, resultVal: cint): void {.importc: "QPageSetupDialog_done".}
proc fcQPageSetupDialog_printer(self: pointer, ): pointer {.importc: "QPageSetupDialog_printer".}
proc fcQPageSetupDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPageSetupDialog_tr2".}
proc fcQPageSetupDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPageSetupDialog_tr3".}
proc fcQPageSetupDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPageSetupDialog_trUtf82".}
proc fcQPageSetupDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPageSetupDialog_trUtf83".}
proc fQPageSetupDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QPageSetupDialog_virtualbase_exec".}
proc fcQPageSetupDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_exec".}
proc fQPageSetupDialog_virtualbase_done(self: pointer, resultVal: cint): void{.importc: "QPageSetupDialog_virtualbase_done".}
proc fcQPageSetupDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_done".}
proc fQPageSetupDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QPageSetupDialog_virtualbase_setVisible".}
proc fcQPageSetupDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_setVisible".}
proc fQPageSetupDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QPageSetupDialog_virtualbase_sizeHint".}
proc fcQPageSetupDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_sizeHint".}
proc fQPageSetupDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QPageSetupDialog_virtualbase_minimumSizeHint".}
proc fcQPageSetupDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_minimumSizeHint".}
proc fQPageSetupDialog_virtualbase_open(self: pointer, ): void{.importc: "QPageSetupDialog_virtualbase_open".}
proc fcQPageSetupDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_open".}
proc fQPageSetupDialog_virtualbase_accept(self: pointer, ): void{.importc: "QPageSetupDialog_virtualbase_accept".}
proc fcQPageSetupDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_accept".}
proc fQPageSetupDialog_virtualbase_reject(self: pointer, ): void{.importc: "QPageSetupDialog_virtualbase_reject".}
proc fcQPageSetupDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_reject".}
proc fQPageSetupDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QPageSetupDialog_virtualbase_keyPressEvent".}
proc fcQPageSetupDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_keyPressEvent".}
proc fQPageSetupDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QPageSetupDialog_virtualbase_closeEvent".}
proc fcQPageSetupDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_closeEvent".}
proc fQPageSetupDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QPageSetupDialog_virtualbase_showEvent".}
proc fcQPageSetupDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_showEvent".}
proc fQPageSetupDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QPageSetupDialog_virtualbase_resizeEvent".}
proc fcQPageSetupDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_resizeEvent".}
proc fQPageSetupDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QPageSetupDialog_virtualbase_contextMenuEvent".}
proc fcQPageSetupDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_contextMenuEvent".}
proc fQPageSetupDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QPageSetupDialog_virtualbase_eventFilter".}
proc fcQPageSetupDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_eventFilter".}
proc fQPageSetupDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QPageSetupDialog_virtualbase_devType".}
proc fcQPageSetupDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_devType".}
proc fQPageSetupDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QPageSetupDialog_virtualbase_heightForWidth".}
proc fcQPageSetupDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_heightForWidth".}
proc fQPageSetupDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QPageSetupDialog_virtualbase_hasHeightForWidth".}
proc fcQPageSetupDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_hasHeightForWidth".}
proc fQPageSetupDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QPageSetupDialog_virtualbase_paintEngine".}
proc fcQPageSetupDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_paintEngine".}
proc fQPageSetupDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPageSetupDialog_virtualbase_event".}
proc fcQPageSetupDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_event".}
proc fQPageSetupDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_mousePressEvent".}
proc fcQPageSetupDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_mousePressEvent".}
proc fQPageSetupDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_mouseReleaseEvent".}
proc fcQPageSetupDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_mouseReleaseEvent".}
proc fQPageSetupDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQPageSetupDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_mouseDoubleClickEvent".}
proc fQPageSetupDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_mouseMoveEvent".}
proc fcQPageSetupDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_mouseMoveEvent".}
proc fQPageSetupDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_wheelEvent".}
proc fcQPageSetupDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_wheelEvent".}
proc fQPageSetupDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_keyReleaseEvent".}
proc fcQPageSetupDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_keyReleaseEvent".}
proc fQPageSetupDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_focusInEvent".}
proc fcQPageSetupDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_focusInEvent".}
proc fQPageSetupDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_focusOutEvent".}
proc fcQPageSetupDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_focusOutEvent".}
proc fQPageSetupDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_enterEvent".}
proc fcQPageSetupDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_enterEvent".}
proc fQPageSetupDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_leaveEvent".}
proc fcQPageSetupDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_leaveEvent".}
proc fQPageSetupDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_paintEvent".}
proc fcQPageSetupDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_paintEvent".}
proc fQPageSetupDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_moveEvent".}
proc fcQPageSetupDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_moveEvent".}
proc fQPageSetupDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_tabletEvent".}
proc fcQPageSetupDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_tabletEvent".}
proc fQPageSetupDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_actionEvent".}
proc fcQPageSetupDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_actionEvent".}
proc fQPageSetupDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_dragEnterEvent".}
proc fcQPageSetupDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_dragEnterEvent".}
proc fQPageSetupDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_dragMoveEvent".}
proc fcQPageSetupDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_dragMoveEvent".}
proc fQPageSetupDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_dragLeaveEvent".}
proc fcQPageSetupDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_dragLeaveEvent".}
proc fQPageSetupDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_dropEvent".}
proc fcQPageSetupDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_dropEvent".}
proc fQPageSetupDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_hideEvent".}
proc fcQPageSetupDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_hideEvent".}
proc fQPageSetupDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QPageSetupDialog_virtualbase_nativeEvent".}
proc fcQPageSetupDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_nativeEvent".}
proc fQPageSetupDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QPageSetupDialog_virtualbase_changeEvent".}
proc fcQPageSetupDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_changeEvent".}
proc fQPageSetupDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QPageSetupDialog_virtualbase_metric".}
proc fcQPageSetupDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_metric".}
proc fQPageSetupDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QPageSetupDialog_virtualbase_initPainter".}
proc fcQPageSetupDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_initPainter".}
proc fQPageSetupDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QPageSetupDialog_virtualbase_redirected".}
proc fcQPageSetupDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_redirected".}
proc fQPageSetupDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QPageSetupDialog_virtualbase_sharedPainter".}
proc fcQPageSetupDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_sharedPainter".}
proc fQPageSetupDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QPageSetupDialog_virtualbase_inputMethodEvent".}
proc fcQPageSetupDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_inputMethodEvent".}
proc fQPageSetupDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QPageSetupDialog_virtualbase_inputMethodQuery".}
proc fcQPageSetupDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_inputMethodQuery".}
proc fQPageSetupDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QPageSetupDialog_virtualbase_focusNextPrevChild".}
proc fcQPageSetupDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_focusNextPrevChild".}
proc fQPageSetupDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_timerEvent".}
proc fcQPageSetupDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_timerEvent".}
proc fQPageSetupDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_childEvent".}
proc fcQPageSetupDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_childEvent".}
proc fQPageSetupDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPageSetupDialog_virtualbase_customEvent".}
proc fcQPageSetupDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_customEvent".}
proc fQPageSetupDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPageSetupDialog_virtualbase_connectNotify".}
proc fcQPageSetupDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_connectNotify".}
proc fQPageSetupDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPageSetupDialog_virtualbase_disconnectNotify".}
proc fcQPageSetupDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPageSetupDialog_override_virtual_disconnectNotify".}
proc fcQPageSetupDialog_delete(self: pointer) {.importc: "QPageSetupDialog_delete".}


func init*(T: type gen_qpagesetupdialog_types.QPageSetupDialog, h: ptr cQPageSetupDialog): gen_qpagesetupdialog_types.QPageSetupDialog =
  T(h: h)
proc create*(T: type gen_qpagesetupdialog_types.QPageSetupDialog, parent: gen_qwidget_types.QWidget): gen_qpagesetupdialog_types.QPageSetupDialog =
  gen_qpagesetupdialog_types.QPageSetupDialog.init(fcQPageSetupDialog_new(parent.h))

proc create*(T: type gen_qpagesetupdialog_types.QPageSetupDialog, printer: gen_qprinter_types.QPrinter): gen_qpagesetupdialog_types.QPageSetupDialog =
  gen_qpagesetupdialog_types.QPageSetupDialog.init(fcQPageSetupDialog_new2(printer.h))

proc create*(T: type gen_qpagesetupdialog_types.QPageSetupDialog, ): gen_qpagesetupdialog_types.QPageSetupDialog =
  gen_qpagesetupdialog_types.QPageSetupDialog.init(fcQPageSetupDialog_new3())

proc create*(T: type gen_qpagesetupdialog_types.QPageSetupDialog, printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget): gen_qpagesetupdialog_types.QPageSetupDialog =
  gen_qpagesetupdialog_types.QPageSetupDialog.init(fcQPageSetupDialog_new4(printer.h, parent.h))

proc metaObject*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPageSetupDialog_metaObject(self.h))

proc metacast*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cstring): pointer =
  fcQPageSetupDialog_metacast(self.h, param1)

proc tr*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring): string =
  let v_ms = fcQPageSetupDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring): string =
  let v_ms = fcQPageSetupDialog_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc exec*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): cint =
  fcQPageSetupDialog_exec(self.h)

proc done*(self: gen_qpagesetupdialog_types.QPageSetupDialog, resultVal: cint): void =
  fcQPageSetupDialog_done(self.h, resultVal)

proc printer*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): gen_qprinter_types.QPrinter =
  gen_qprinter_types.QPrinter(h: fcQPageSetupDialog_printer(self.h))

proc tr*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring, c: cstring): string =
  let v_ms = fcQPageSetupDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPageSetupDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring, c: cstring): string =
  let v_ms = fcQPageSetupDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPageSetupDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QPageSetupDialogexec*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): cint =
  fQPageSetupDialog_virtualbase_exec(self.h)

type QPageSetupDialogexecProc* = proc(): cint
proc onexec*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogexecProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogexecProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_exec(self: ptr cQPageSetupDialog, slot: int): cint {.exportc: "miqt_exec_callback_QPageSetupDialog_exec ".} =
  var nimfunc = cast[ptr QPageSetupDialogexecProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPageSetupDialogdone*(self: gen_qpagesetupdialog_types.QPageSetupDialog, resultVal: cint): void =
  fQPageSetupDialog_virtualbase_done(self.h, resultVal)

type QPageSetupDialogdoneProc* = proc(resultVal: cint): void
proc ondone*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogdoneProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogdoneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_done(self: ptr cQPageSetupDialog, slot: int, resultVal: cint): void {.exportc: "miqt_exec_callback_QPageSetupDialog_done ".} =
  var nimfunc = cast[ptr QPageSetupDialogdoneProc](cast[pointer](slot))
  let slotval1 = resultVal


  nimfunc[](slotval1)
proc QPageSetupDialogsetVisible*(self: gen_qpagesetupdialog_types.QPageSetupDialog, visible: bool): void =
  fQPageSetupDialog_virtualbase_setVisible(self.h, visible)

type QPageSetupDialogsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogsetVisibleProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_setVisible(self: ptr cQPageSetupDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QPageSetupDialog_setVisible ".} =
  var nimfunc = cast[ptr QPageSetupDialogsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QPageSetupDialogsizeHint*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQPageSetupDialog_virtualbase_sizeHint(self.h))

type QPageSetupDialogsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogsizeHintProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_sizeHint(self: ptr cQPageSetupDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPageSetupDialog_sizeHint ".} =
  var nimfunc = cast[ptr QPageSetupDialogsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPageSetupDialogminimumSizeHint*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQPageSetupDialog_virtualbase_minimumSizeHint(self.h))

type QPageSetupDialogminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_minimumSizeHint(self: ptr cQPageSetupDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPageSetupDialog_minimumSizeHint ".} =
  var nimfunc = cast[ptr QPageSetupDialogminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPageSetupDialogopen*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): void =
  fQPageSetupDialog_virtualbase_open(self.h)

type QPageSetupDialogopenProc* = proc(): void
proc onopen*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogopenProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_open(self: ptr cQPageSetupDialog, slot: int): void {.exportc: "miqt_exec_callback_QPageSetupDialog_open ".} =
  var nimfunc = cast[ptr QPageSetupDialogopenProc](cast[pointer](slot))

  nimfunc[]()
proc QPageSetupDialogaccept*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): void =
  fQPageSetupDialog_virtualbase_accept(self.h)

type QPageSetupDialogacceptProc* = proc(): void
proc onaccept*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogacceptProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogacceptProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_accept(self: ptr cQPageSetupDialog, slot: int): void {.exportc: "miqt_exec_callback_QPageSetupDialog_accept ".} =
  var nimfunc = cast[ptr QPageSetupDialogacceptProc](cast[pointer](slot))

  nimfunc[]()
proc QPageSetupDialogreject*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): void =
  fQPageSetupDialog_virtualbase_reject(self.h)

type QPageSetupDialogrejectProc* = proc(): void
proc onreject*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogrejectProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogrejectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_reject(self: ptr cQPageSetupDialog, slot: int): void {.exportc: "miqt_exec_callback_QPageSetupDialog_reject ".} =
  var nimfunc = cast[ptr QPageSetupDialogrejectProc](cast[pointer](slot))

  nimfunc[]()
proc QPageSetupDialogkeyPressEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QKeyEvent): void =
  fQPageSetupDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QPageSetupDialogkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_keyPressEvent(self: ptr cQPageSetupDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_keyPressEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QPageSetupDialogcloseEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QCloseEvent): void =
  fQPageSetupDialog_virtualbase_closeEvent(self.h, param1.h)

type QPageSetupDialogcloseEventProc* = proc(param1: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogcloseEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_closeEvent(self: ptr cQPageSetupDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_closeEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)


  nimfunc[](slotval1)
proc QPageSetupDialogshowEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QShowEvent): void =
  fQPageSetupDialog_virtualbase_showEvent(self.h, param1.h)

type QPageSetupDialogshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogshowEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_showEvent(self: ptr cQPageSetupDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_showEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QPageSetupDialogresizeEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QResizeEvent): void =
  fQPageSetupDialog_virtualbase_resizeEvent(self.h, param1.h)

type QPageSetupDialogresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogresizeEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_resizeEvent(self: ptr cQPageSetupDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_resizeEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QPageSetupDialogcontextMenuEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fQPageSetupDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QPageSetupDialogcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_contextMenuEvent(self: ptr cQPageSetupDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_contextMenuEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QPageSetupDialogeventFilter*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQPageSetupDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QPageSetupDialogeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogeventFilterProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_eventFilter(self: ptr cQPageSetupDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QPageSetupDialog_eventFilter ".} =
  var nimfunc = cast[ptr QPageSetupDialogeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QPageSetupDialogdevType*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): cint =
  fQPageSetupDialog_virtualbase_devType(self.h)

type QPageSetupDialogdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogdevTypeProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_devType(self: ptr cQPageSetupDialog, slot: int): cint {.exportc: "miqt_exec_callback_QPageSetupDialog_devType ".} =
  var nimfunc = cast[ptr QPageSetupDialogdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPageSetupDialogheightForWidth*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cint): cint =
  fQPageSetupDialog_virtualbase_heightForWidth(self.h, param1)

type QPageSetupDialogheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogheightForWidthProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_heightForWidth(self: ptr cQPageSetupDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPageSetupDialog_heightForWidth ".} =
  var nimfunc = cast[ptr QPageSetupDialogheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPageSetupDialoghasHeightForWidth*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): bool =
  fQPageSetupDialog_virtualbase_hasHeightForWidth(self.h)

type QPageSetupDialoghasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialoghasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialoghasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_hasHeightForWidth(self: ptr cQPageSetupDialog, slot: int): bool {.exportc: "miqt_exec_callback_QPageSetupDialog_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QPageSetupDialoghasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPageSetupDialogpaintEngine*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQPageSetupDialog_virtualbase_paintEngine(self.h))

type QPageSetupDialogpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogpaintEngineProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_paintEngine(self: ptr cQPageSetupDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPageSetupDialog_paintEngine ".} =
  var nimfunc = cast[ptr QPageSetupDialogpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPageSetupDialogevent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QEvent): bool =
  fQPageSetupDialog_virtualbase_event(self.h, event.h)

type QPageSetupDialogeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogeventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_event(self: ptr cQPageSetupDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPageSetupDialog_event ".} =
  var nimfunc = cast[ptr QPageSetupDialogeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPageSetupDialogmousePressEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QMouseEvent): void =
  fQPageSetupDialog_virtualbase_mousePressEvent(self.h, event.h)

type QPageSetupDialogmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogmousePressEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_mousePressEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_mousePressEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogmouseReleaseEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QMouseEvent): void =
  fQPageSetupDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QPageSetupDialogmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_mouseReleaseEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogmouseDoubleClickEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QMouseEvent): void =
  fQPageSetupDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QPageSetupDialogmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_mouseDoubleClickEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogmouseMoveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QMouseEvent): void =
  fQPageSetupDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QPageSetupDialogmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_mouseMoveEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogwheelEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QWheelEvent): void =
  fQPageSetupDialog_virtualbase_wheelEvent(self.h, event.h)

type QPageSetupDialogwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogwheelEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_wheelEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_wheelEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogkeyReleaseEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QKeyEvent): void =
  fQPageSetupDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QPageSetupDialogkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_keyReleaseEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogfocusInEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QFocusEvent): void =
  fQPageSetupDialog_virtualbase_focusInEvent(self.h, event.h)

type QPageSetupDialogfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogfocusInEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_focusInEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_focusInEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogfocusOutEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QFocusEvent): void =
  fQPageSetupDialog_virtualbase_focusOutEvent(self.h, event.h)

type QPageSetupDialogfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_focusOutEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_focusOutEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogenterEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QEvent): void =
  fQPageSetupDialog_virtualbase_enterEvent(self.h, event.h)

type QPageSetupDialogenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogenterEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_enterEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_enterEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogleaveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QEvent): void =
  fQPageSetupDialog_virtualbase_leaveEvent(self.h, event.h)

type QPageSetupDialogleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogleaveEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_leaveEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_leaveEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogpaintEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QPaintEvent): void =
  fQPageSetupDialog_virtualbase_paintEvent(self.h, event.h)

type QPageSetupDialogpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogpaintEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_paintEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_paintEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogmoveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QMoveEvent): void =
  fQPageSetupDialog_virtualbase_moveEvent(self.h, event.h)

type QPageSetupDialogmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogmoveEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_moveEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_moveEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogtabletEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QTabletEvent): void =
  fQPageSetupDialog_virtualbase_tabletEvent(self.h, event.h)

type QPageSetupDialogtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogtabletEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_tabletEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_tabletEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogactionEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QActionEvent): void =
  fQPageSetupDialog_virtualbase_actionEvent(self.h, event.h)

type QPageSetupDialogactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogactionEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_actionEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_actionEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogdragEnterEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fQPageSetupDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QPageSetupDialogdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_dragEnterEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_dragEnterEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogdragMoveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fQPageSetupDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QPageSetupDialogdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_dragMoveEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_dragMoveEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogdragLeaveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fQPageSetupDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QPageSetupDialogdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_dragLeaveEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogdropEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QDropEvent): void =
  fQPageSetupDialog_virtualbase_dropEvent(self.h, event.h)

type QPageSetupDialogdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogdropEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_dropEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_dropEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialoghideEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QHideEvent): void =
  fQPageSetupDialog_virtualbase_hideEvent(self.h, event.h)

type QPageSetupDialoghideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialoghideEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialoghideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_hideEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_hideEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialoghideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialognativeEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQPageSetupDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QPageSetupDialognativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialognativeEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialognativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_nativeEvent(self: ptr cQPageSetupDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QPageSetupDialog_nativeEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialognativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QPageSetupDialogchangeEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qcoreevent_types.QEvent): void =
  fQPageSetupDialog_virtualbase_changeEvent(self.h, param1.h)

type QPageSetupDialogchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogchangeEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_changeEvent(self: ptr cQPageSetupDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_changeEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QPageSetupDialogmetric*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cint): cint =
  fQPageSetupDialog_virtualbase_metric(self.h, cint(param1))

type QPageSetupDialogmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogmetricProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_metric(self: ptr cQPageSetupDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPageSetupDialog_metric ".} =
  var nimfunc = cast[ptr QPageSetupDialogmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPageSetupDialoginitPainter*(self: gen_qpagesetupdialog_types.QPageSetupDialog, painter: gen_qpainter_types.QPainter): void =
  fQPageSetupDialog_virtualbase_initPainter(self.h, painter.h)

type QPageSetupDialoginitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialoginitPainterProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialoginitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_initPainter(self: ptr cQPageSetupDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_initPainter ".} =
  var nimfunc = cast[ptr QPageSetupDialoginitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QPageSetupDialogredirected*(self: gen_qpagesetupdialog_types.QPageSetupDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQPageSetupDialog_virtualbase_redirected(self.h, offset.h))

type QPageSetupDialogredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogredirectedProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_redirected(self: ptr cQPageSetupDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPageSetupDialog_redirected ".} =
  var nimfunc = cast[ptr QPageSetupDialogredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QPageSetupDialogsharedPainter*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQPageSetupDialog_virtualbase_sharedPainter(self.h))

type QPageSetupDialogsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogsharedPainterProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_sharedPainter(self: ptr cQPageSetupDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPageSetupDialog_sharedPainter ".} =
  var nimfunc = cast[ptr QPageSetupDialogsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPageSetupDialoginputMethodEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fQPageSetupDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QPageSetupDialoginputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialoginputMethodEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialoginputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_inputMethodEvent(self: ptr cQPageSetupDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_inputMethodEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialoginputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QPageSetupDialoginputMethodQuery*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQPageSetupDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QPageSetupDialoginputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialoginputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialoginputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_inputMethodQuery(self: ptr cQPageSetupDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QPageSetupDialog_inputMethodQuery ".} =
  var nimfunc = cast[ptr QPageSetupDialoginputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QPageSetupDialogfocusNextPrevChild*(self: gen_qpagesetupdialog_types.QPageSetupDialog, next: bool): bool =
  fQPageSetupDialog_virtualbase_focusNextPrevChild(self.h, next)

type QPageSetupDialogfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_focusNextPrevChild(self: ptr cQPageSetupDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QPageSetupDialog_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QPageSetupDialogfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPageSetupDialogtimerEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fQPageSetupDialog_virtualbase_timerEvent(self.h, event.h)

type QPageSetupDialogtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogtimerEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_timerEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_timerEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogchildEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fQPageSetupDialog_virtualbase_childEvent(self.h, event.h)

type QPageSetupDialogchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogchildEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_childEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_childEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogcustomEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QEvent): void =
  fQPageSetupDialog_virtualbase_customEvent(self.h, event.h)

type QPageSetupDialogcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogcustomEventProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_customEvent(self: ptr cQPageSetupDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_customEvent ".} =
  var nimfunc = cast[ptr QPageSetupDialogcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPageSetupDialogconnectNotify*(self: gen_qpagesetupdialog_types.QPageSetupDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPageSetupDialog_virtualbase_connectNotify(self.h, signal.h)

type QPageSetupDialogconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_connectNotify(self: ptr cQPageSetupDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_connectNotify ".} =
  var nimfunc = cast[ptr QPageSetupDialogconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QPageSetupDialogdisconnectNotify*(self: gen_qpagesetupdialog_types.QPageSetupDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPageSetupDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QPageSetupDialogdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qpagesetupdialog_types.QPageSetupDialog, slot: QPageSetupDialogdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPageSetupDialogdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPageSetupDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPageSetupDialog_disconnectNotify(self: ptr cQPageSetupDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPageSetupDialog_disconnectNotify ".} =
  var nimfunc = cast[ptr QPageSetupDialogdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qpagesetupdialog_types.QPageSetupDialog) =
  fcQPageSetupDialog_delete(self.h)
