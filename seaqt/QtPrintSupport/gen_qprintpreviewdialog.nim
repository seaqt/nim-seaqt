import ./qtprintsupport_pkg

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


{.compile("gen_qprintpreviewdialog.cpp", QtPrintSupportCFlags).}


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

proc fcQPrintPreviewDialog_metaObject(self: pointer): pointer {.importc: "QPrintPreviewDialog_metaObject".}
proc fcQPrintPreviewDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QPrintPreviewDialog_metacast".}
proc fcQPrintPreviewDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPrintPreviewDialog_metacall".}
proc fcQPrintPreviewDialog_tr(s: cstring): struct_miqt_string {.importc: "QPrintPreviewDialog_tr".}
proc fcQPrintPreviewDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QPrintPreviewDialog_trUtf8".}
proc fcQPrintPreviewDialog_printer(self: pointer): pointer {.importc: "QPrintPreviewDialog_printer".}
proc fcQPrintPreviewDialog_setVisible(self: pointer, visible: bool): void {.importc: "QPrintPreviewDialog_setVisible".}
proc fcQPrintPreviewDialog_done(self: pointer, resultVal: cint): void {.importc: "QPrintPreviewDialog_done".}
proc fcQPrintPreviewDialog_paintRequested(self: pointer, printer: pointer): void {.importc: "QPrintPreviewDialog_paintRequested".}
proc fcQPrintPreviewDialog_connect_paintRequested(self: pointer, slot: int, callback: proc (slot: int, printer: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPrintPreviewDialog_connect_paintRequested".}
proc fcQPrintPreviewDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPrintPreviewDialog_tr2".}
proc fcQPrintPreviewDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPrintPreviewDialog_tr3".}
proc fcQPrintPreviewDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPrintPreviewDialog_trUtf82".}
proc fcQPrintPreviewDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPrintPreviewDialog_trUtf83".}
proc fcQPrintPreviewDialog_vtbl(self: pointer): pointer {.importc: "QPrintPreviewDialog_vtbl".}
proc fcQPrintPreviewDialog_vdata(self: pointer): pointer {.importc: "QPrintPreviewDialog_vdata".}
type cQPrintPreviewDialogVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  done*: proc(self: pointer, resultVal: cint): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  accept*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  reject*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPrintPreviewDialog_virtualbase_metaObject(self: pointer): pointer {.importc: "QPrintPreviewDialog_virtualbase_metaObject".}
proc fcQPrintPreviewDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPrintPreviewDialog_virtualbase_metacast".}
proc fcQPrintPreviewDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPrintPreviewDialog_virtualbase_metacall".}
proc fcQPrintPreviewDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QPrintPreviewDialog_virtualbase_setVisible".}
proc fcQPrintPreviewDialog_virtualbase_done(self: pointer, resultVal: cint): void {.importc: "QPrintPreviewDialog_virtualbase_done".}
proc fcQPrintPreviewDialog_virtualbase_sizeHint(self: pointer): pointer {.importc: "QPrintPreviewDialog_virtualbase_sizeHint".}
proc fcQPrintPreviewDialog_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QPrintPreviewDialog_virtualbase_minimumSizeHint".}
proc fcQPrintPreviewDialog_virtualbase_open(self: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_open".}
proc fcQPrintPreviewDialog_virtualbase_exec(self: pointer): cint {.importc: "QPrintPreviewDialog_virtualbase_exec".}
proc fcQPrintPreviewDialog_virtualbase_accept(self: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_accept".}
proc fcQPrintPreviewDialog_virtualbase_reject(self: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_reject".}
proc fcQPrintPreviewDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_keyPressEvent".}
proc fcQPrintPreviewDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_closeEvent".}
proc fcQPrintPreviewDialog_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_showEvent".}
proc fcQPrintPreviewDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_resizeEvent".}
proc fcQPrintPreviewDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_contextMenuEvent".}
proc fcQPrintPreviewDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QPrintPreviewDialog_virtualbase_eventFilter".}
proc fcQPrintPreviewDialog_virtualbase_devType(self: pointer): cint {.importc: "QPrintPreviewDialog_virtualbase_devType".}
proc fcQPrintPreviewDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QPrintPreviewDialog_virtualbase_heightForWidth".}
proc fcQPrintPreviewDialog_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QPrintPreviewDialog_virtualbase_hasHeightForWidth".}
proc fcQPrintPreviewDialog_virtualbase_paintEngine(self: pointer): pointer {.importc: "QPrintPreviewDialog_virtualbase_paintEngine".}
proc fcQPrintPreviewDialog_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPrintPreviewDialog_virtualbase_event".}
proc fcQPrintPreviewDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_mousePressEvent".}
proc fcQPrintPreviewDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_mouseReleaseEvent".}
proc fcQPrintPreviewDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQPrintPreviewDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_mouseMoveEvent".}
proc fcQPrintPreviewDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_wheelEvent".}
proc fcQPrintPreviewDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_keyReleaseEvent".}
proc fcQPrintPreviewDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_focusInEvent".}
proc fcQPrintPreviewDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_focusOutEvent".}
proc fcQPrintPreviewDialog_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_enterEvent".}
proc fcQPrintPreviewDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_leaveEvent".}
proc fcQPrintPreviewDialog_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_paintEvent".}
proc fcQPrintPreviewDialog_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_moveEvent".}
proc fcQPrintPreviewDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_tabletEvent".}
proc fcQPrintPreviewDialog_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_actionEvent".}
proc fcQPrintPreviewDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_dragEnterEvent".}
proc fcQPrintPreviewDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_dragMoveEvent".}
proc fcQPrintPreviewDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_dragLeaveEvent".}
proc fcQPrintPreviewDialog_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_dropEvent".}
proc fcQPrintPreviewDialog_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_hideEvent".}
proc fcQPrintPreviewDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QPrintPreviewDialog_virtualbase_nativeEvent".}
proc fcQPrintPreviewDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_changeEvent".}
proc fcQPrintPreviewDialog_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QPrintPreviewDialog_virtualbase_metric".}
proc fcQPrintPreviewDialog_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_initPainter".}
proc fcQPrintPreviewDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QPrintPreviewDialog_virtualbase_redirected".}
proc fcQPrintPreviewDialog_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QPrintPreviewDialog_virtualbase_sharedPainter".}
proc fcQPrintPreviewDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_inputMethodEvent".}
proc fcQPrintPreviewDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QPrintPreviewDialog_virtualbase_inputMethodQuery".}
proc fcQPrintPreviewDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QPrintPreviewDialog_virtualbase_focusNextPrevChild".}
proc fcQPrintPreviewDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_timerEvent".}
proc fcQPrintPreviewDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_childEvent".}
proc fcQPrintPreviewDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_customEvent".}
proc fcQPrintPreviewDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_connectNotify".}
proc fcQPrintPreviewDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPrintPreviewDialog_virtualbase_disconnectNotify".}
proc fcQPrintPreviewDialog_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QPrintPreviewDialog_protectedbase_adjustPosition".}
proc fcQPrintPreviewDialog_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QPrintPreviewDialog_protectedbase_updateMicroFocus".}
proc fcQPrintPreviewDialog_protectedbase_create(self: pointer): void {.importc: "QPrintPreviewDialog_protectedbase_create".}
proc fcQPrintPreviewDialog_protectedbase_destroy(self: pointer): void {.importc: "QPrintPreviewDialog_protectedbase_destroy".}
proc fcQPrintPreviewDialog_protectedbase_focusNextChild(self: pointer): bool {.importc: "QPrintPreviewDialog_protectedbase_focusNextChild".}
proc fcQPrintPreviewDialog_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QPrintPreviewDialog_protectedbase_focusPreviousChild".}
proc fcQPrintPreviewDialog_protectedbase_sender(self: pointer): pointer {.importc: "QPrintPreviewDialog_protectedbase_sender".}
proc fcQPrintPreviewDialog_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPrintPreviewDialog_protectedbase_senderSignalIndex".}
proc fcQPrintPreviewDialog_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPrintPreviewDialog_protectedbase_receivers".}
proc fcQPrintPreviewDialog_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPrintPreviewDialog_protectedbase_isSignalConnected".}
proc fcQPrintPreviewDialog_new(vtbl, vdata: pointer, parent: pointer): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new".}
proc fcQPrintPreviewDialog_new2(vtbl, vdata: pointer): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new2".}
proc fcQPrintPreviewDialog_new3(vtbl, vdata: pointer, printer: pointer): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new3".}
proc fcQPrintPreviewDialog_new4(vtbl, vdata: pointer, parent: pointer, flags: cint): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new4".}
proc fcQPrintPreviewDialog_new5(vtbl, vdata: pointer, printer: pointer, parent: pointer): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new5".}
proc fcQPrintPreviewDialog_new6(vtbl, vdata: pointer, printer: pointer, parent: pointer, flags: cint): ptr cQPrintPreviewDialog {.importc: "QPrintPreviewDialog_new6".}
proc fcQPrintPreviewDialog_staticMetaObject(): pointer {.importc: "QPrintPreviewDialog_staticMetaObject".}

proc metaObject*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintPreviewDialog_metaObject(self.h), owned: false)

proc metacast*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: cstring): pointer =
  fcQPrintPreviewDialog_metacast(self.h, param1)

proc metacall*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQPrintPreviewDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qprintpreviewdialog_types.QPrintPreviewDialog, s: cstring): string =
  let v_ms = fcQPrintPreviewDialog_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qprintpreviewdialog_types.QPrintPreviewDialog, s: cstring): string =
  let v_ms = fcQPrintPreviewDialog_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc printer*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): gen_qprinter_types.QPrinter =
  gen_qprinter_types.QPrinter(h: fcQPrintPreviewDialog_printer(self.h), owned: false)

proc setVisible*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, visible: bool): void =
  fcQPrintPreviewDialog_setVisible(self.h, visible)

proc done*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, resultVal: cint): void =
  fcQPrintPreviewDialog_done(self.h, resultVal)

proc paintRequested*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, printer: gen_qprinter_types.QPrinter): void =
  fcQPrintPreviewDialog_paintRequested(self.h, printer.h)

type QPrintPreviewDialogpaintRequestedSlot* = proc(printer: gen_qprinter_types.QPrinter)
proc cQPrintPreviewDialog_slot_callback_paintRequested(slot: int, printer: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QPrintPreviewDialogpaintRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qprinter_types.QPrinter(h: printer, owned: false)

  nimfunc[](slotval1)

proc cQPrintPreviewDialog_slot_callback_paintRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPrintPreviewDialogpaintRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpaintRequested*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, slot: QPrintPreviewDialogpaintRequestedSlot) =
  var tmp = new QPrintPreviewDialogpaintRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintPreviewDialog_connect_paintRequested(self.h, cast[int](addr tmp[]), cQPrintPreviewDialog_slot_callback_paintRequested, cQPrintPreviewDialog_slot_callback_paintRequested_release)

proc tr*(_: type gen_qprintpreviewdialog_types.QPrintPreviewDialog, s: cstring, c: cstring): string =
  let v_ms = fcQPrintPreviewDialog_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qprintpreviewdialog_types.QPrintPreviewDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPrintPreviewDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qprintpreviewdialog_types.QPrintPreviewDialog, s: cstring, c: cstring): string =
  let v_ms = fcQPrintPreviewDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qprintpreviewdialog_types.QPrintPreviewDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPrintPreviewDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QPrintPreviewDialogmetaObjectProc* = proc(self: QPrintPreviewDialog): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPrintPreviewDialogmetacastProc* = proc(self: QPrintPreviewDialog, param1: cstring): pointer {.raises: [], gcsafe.}
type QPrintPreviewDialogmetacallProc* = proc(self: QPrintPreviewDialog, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPrintPreviewDialogsetVisibleProc* = proc(self: QPrintPreviewDialog, visible: bool): void {.raises: [], gcsafe.}
type QPrintPreviewDialogdoneProc* = proc(self: QPrintPreviewDialog, resultVal: cint): void {.raises: [], gcsafe.}
type QPrintPreviewDialogsizeHintProc* = proc(self: QPrintPreviewDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPrintPreviewDialogminimumSizeHintProc* = proc(self: QPrintPreviewDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPrintPreviewDialogopenProc* = proc(self: QPrintPreviewDialog): void {.raises: [], gcsafe.}
type QPrintPreviewDialogexecProc* = proc(self: QPrintPreviewDialog): cint {.raises: [], gcsafe.}
type QPrintPreviewDialogacceptProc* = proc(self: QPrintPreviewDialog): void {.raises: [], gcsafe.}
type QPrintPreviewDialogrejectProc* = proc(self: QPrintPreviewDialog): void {.raises: [], gcsafe.}
type QPrintPreviewDialogkeyPressEventProc* = proc(self: QPrintPreviewDialog, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogcloseEventProc* = proc(self: QPrintPreviewDialog, param1: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogshowEventProc* = proc(self: QPrintPreviewDialog, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogresizeEventProc* = proc(self: QPrintPreviewDialog, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogcontextMenuEventProc* = proc(self: QPrintPreviewDialog, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogeventFilterProc* = proc(self: QPrintPreviewDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPrintPreviewDialogdevTypeProc* = proc(self: QPrintPreviewDialog): cint {.raises: [], gcsafe.}
type QPrintPreviewDialogheightForWidthProc* = proc(self: QPrintPreviewDialog, param1: cint): cint {.raises: [], gcsafe.}
type QPrintPreviewDialoghasHeightForWidthProc* = proc(self: QPrintPreviewDialog): bool {.raises: [], gcsafe.}
type QPrintPreviewDialogpaintEngineProc* = proc(self: QPrintPreviewDialog): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QPrintPreviewDialogeventProc* = proc(self: QPrintPreviewDialog, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPrintPreviewDialogmousePressEventProc* = proc(self: QPrintPreviewDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogmouseReleaseEventProc* = proc(self: QPrintPreviewDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogmouseDoubleClickEventProc* = proc(self: QPrintPreviewDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogmouseMoveEventProc* = proc(self: QPrintPreviewDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogwheelEventProc* = proc(self: QPrintPreviewDialog, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogkeyReleaseEventProc* = proc(self: QPrintPreviewDialog, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogfocusInEventProc* = proc(self: QPrintPreviewDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogfocusOutEventProc* = proc(self: QPrintPreviewDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogenterEventProc* = proc(self: QPrintPreviewDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogleaveEventProc* = proc(self: QPrintPreviewDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogpaintEventProc* = proc(self: QPrintPreviewDialog, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogmoveEventProc* = proc(self: QPrintPreviewDialog, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogtabletEventProc* = proc(self: QPrintPreviewDialog, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogactionEventProc* = proc(self: QPrintPreviewDialog, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogdragEnterEventProc* = proc(self: QPrintPreviewDialog, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogdragMoveEventProc* = proc(self: QPrintPreviewDialog, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogdragLeaveEventProc* = proc(self: QPrintPreviewDialog, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogdropEventProc* = proc(self: QPrintPreviewDialog, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialoghideEventProc* = proc(self: QPrintPreviewDialog, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialognativeEventProc* = proc(self: QPrintPreviewDialog, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QPrintPreviewDialogchangeEventProc* = proc(self: QPrintPreviewDialog, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogmetricProc* = proc(self: QPrintPreviewDialog, param1: cint): cint {.raises: [], gcsafe.}
type QPrintPreviewDialoginitPainterProc* = proc(self: QPrintPreviewDialog, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QPrintPreviewDialogredirectedProc* = proc(self: QPrintPreviewDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QPrintPreviewDialogsharedPainterProc* = proc(self: QPrintPreviewDialog): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QPrintPreviewDialoginputMethodEventProc* = proc(self: QPrintPreviewDialog, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialoginputMethodQueryProc* = proc(self: QPrintPreviewDialog, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QPrintPreviewDialogfocusNextPrevChildProc* = proc(self: QPrintPreviewDialog, next: bool): bool {.raises: [], gcsafe.}
type QPrintPreviewDialogtimerEventProc* = proc(self: QPrintPreviewDialog, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogchildEventProc* = proc(self: QPrintPreviewDialog, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogcustomEventProc* = proc(self: QPrintPreviewDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPrintPreviewDialogconnectNotifyProc* = proc(self: QPrintPreviewDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPrintPreviewDialogdisconnectNotifyProc* = proc(self: QPrintPreviewDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPrintPreviewDialogVTable* {.inheritable, pure.} = object
  vtbl: cQPrintPreviewDialogVTable
  metaObject*: QPrintPreviewDialogmetaObjectProc
  metacast*: QPrintPreviewDialogmetacastProc
  metacall*: QPrintPreviewDialogmetacallProc
  setVisible*: QPrintPreviewDialogsetVisibleProc
  done*: QPrintPreviewDialogdoneProc
  sizeHint*: QPrintPreviewDialogsizeHintProc
  minimumSizeHint*: QPrintPreviewDialogminimumSizeHintProc
  open*: QPrintPreviewDialogopenProc
  exec*: QPrintPreviewDialogexecProc
  accept*: QPrintPreviewDialogacceptProc
  reject*: QPrintPreviewDialogrejectProc
  keyPressEvent*: QPrintPreviewDialogkeyPressEventProc
  closeEvent*: QPrintPreviewDialogcloseEventProc
  showEvent*: QPrintPreviewDialogshowEventProc
  resizeEvent*: QPrintPreviewDialogresizeEventProc
  contextMenuEvent*: QPrintPreviewDialogcontextMenuEventProc
  eventFilter*: QPrintPreviewDialogeventFilterProc
  devType*: QPrintPreviewDialogdevTypeProc
  heightForWidth*: QPrintPreviewDialogheightForWidthProc
  hasHeightForWidth*: QPrintPreviewDialoghasHeightForWidthProc
  paintEngine*: QPrintPreviewDialogpaintEngineProc
  event*: QPrintPreviewDialogeventProc
  mousePressEvent*: QPrintPreviewDialogmousePressEventProc
  mouseReleaseEvent*: QPrintPreviewDialogmouseReleaseEventProc
  mouseDoubleClickEvent*: QPrintPreviewDialogmouseDoubleClickEventProc
  mouseMoveEvent*: QPrintPreviewDialogmouseMoveEventProc
  wheelEvent*: QPrintPreviewDialogwheelEventProc
  keyReleaseEvent*: QPrintPreviewDialogkeyReleaseEventProc
  focusInEvent*: QPrintPreviewDialogfocusInEventProc
  focusOutEvent*: QPrintPreviewDialogfocusOutEventProc
  enterEvent*: QPrintPreviewDialogenterEventProc
  leaveEvent*: QPrintPreviewDialogleaveEventProc
  paintEvent*: QPrintPreviewDialogpaintEventProc
  moveEvent*: QPrintPreviewDialogmoveEventProc
  tabletEvent*: QPrintPreviewDialogtabletEventProc
  actionEvent*: QPrintPreviewDialogactionEventProc
  dragEnterEvent*: QPrintPreviewDialogdragEnterEventProc
  dragMoveEvent*: QPrintPreviewDialogdragMoveEventProc
  dragLeaveEvent*: QPrintPreviewDialogdragLeaveEventProc
  dropEvent*: QPrintPreviewDialogdropEventProc
  hideEvent*: QPrintPreviewDialoghideEventProc
  nativeEvent*: QPrintPreviewDialognativeEventProc
  changeEvent*: QPrintPreviewDialogchangeEventProc
  metric*: QPrintPreviewDialogmetricProc
  initPainter*: QPrintPreviewDialoginitPainterProc
  redirected*: QPrintPreviewDialogredirectedProc
  sharedPainter*: QPrintPreviewDialogsharedPainterProc
  inputMethodEvent*: QPrintPreviewDialoginputMethodEventProc
  inputMethodQuery*: QPrintPreviewDialoginputMethodQueryProc
  focusNextPrevChild*: QPrintPreviewDialogfocusNextPrevChildProc
  timerEvent*: QPrintPreviewDialogtimerEventProc
  childEvent*: QPrintPreviewDialogchildEventProc
  customEvent*: QPrintPreviewDialogcustomEventProc
  connectNotify*: QPrintPreviewDialogconnectNotifyProc
  disconnectNotify*: QPrintPreviewDialogdisconnectNotifyProc
proc QPrintPreviewDialogmetaObject*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintPreviewDialog_virtualbase_metaObject(self.h), owned: false)

proc cQPrintPreviewDialog_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPrintPreviewDialogmetacast*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: cstring): pointer =
  fcQPrintPreviewDialog_virtualbase_metacast(self.h, param1)

proc cQPrintPreviewDialog_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPrintPreviewDialogmetacall*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQPrintPreviewDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQPrintPreviewDialog_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPrintPreviewDialogsetVisible*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, visible: bool): void =
  fcQPrintPreviewDialog_virtualbase_setVisible(self.h, visible)

proc cQPrintPreviewDialog_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QPrintPreviewDialogdone*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, resultVal: cint): void =
  fcQPrintPreviewDialog_virtualbase_done(self.h, resultVal)

proc cQPrintPreviewDialog_vtable_callback_done(self: pointer, resultVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = resultVal
  vtbl[].done(self, slotval1)

proc QPrintPreviewDialogsizeHint*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPrintPreviewDialog_virtualbase_sizeHint(self.h), owned: true)

proc cQPrintPreviewDialog_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPrintPreviewDialogminimumSizeHint*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPrintPreviewDialog_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQPrintPreviewDialog_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPrintPreviewDialogopen*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): void =
  fcQPrintPreviewDialog_virtualbase_open(self.h)

proc cQPrintPreviewDialog_vtable_callback_open(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  vtbl[].open(self)

proc QPrintPreviewDialogexec*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): cint =
  fcQPrintPreviewDialog_virtualbase_exec(self.h)

proc cQPrintPreviewDialog_vtable_callback_exec(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QPrintPreviewDialogaccept*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): void =
  fcQPrintPreviewDialog_virtualbase_accept(self.h)

proc cQPrintPreviewDialog_vtable_callback_accept(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  vtbl[].accept(self)

proc QPrintPreviewDialogreject*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): void =
  fcQPrintPreviewDialog_virtualbase_reject(self.h)

proc cQPrintPreviewDialog_vtable_callback_reject(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  vtbl[].reject(self)

proc QPrintPreviewDialogkeyPressEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQPrintPreviewDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc cQPrintPreviewDialog_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QPrintPreviewDialogcloseEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: gen_qevent_types.QCloseEvent): void =
  fcQPrintPreviewDialog_virtualbase_closeEvent(self.h, param1.h)

proc cQPrintPreviewDialog_vtable_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QPrintPreviewDialogshowEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: gen_qevent_types.QShowEvent): void =
  fcQPrintPreviewDialog_virtualbase_showEvent(self.h, param1.h)

proc cQPrintPreviewDialog_vtable_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QPrintPreviewDialogresizeEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: gen_qevent_types.QResizeEvent): void =
  fcQPrintPreviewDialog_virtualbase_resizeEvent(self.h, param1.h)

proc cQPrintPreviewDialog_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QPrintPreviewDialogcontextMenuEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQPrintPreviewDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQPrintPreviewDialog_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QPrintPreviewDialogeventFilter*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQPrintPreviewDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc cQPrintPreviewDialog_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPrintPreviewDialogdevType*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): cint =
  fcQPrintPreviewDialog_virtualbase_devType(self.h)

proc cQPrintPreviewDialog_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QPrintPreviewDialogheightForWidth*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: cint): cint =
  fcQPrintPreviewDialog_virtualbase_heightForWidth(self.h, param1)

proc cQPrintPreviewDialog_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QPrintPreviewDialoghasHeightForWidth*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): bool =
  fcQPrintPreviewDialog_virtualbase_hasHeightForWidth(self.h)

proc cQPrintPreviewDialog_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QPrintPreviewDialogpaintEngine*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPrintPreviewDialog_virtualbase_paintEngine(self.h), owned: false)

proc cQPrintPreviewDialog_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPrintPreviewDialogevent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQPrintPreviewDialog_virtualbase_event(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPrintPreviewDialogmousePressEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintPreviewDialog_virtualbase_mousePressEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QPrintPreviewDialogmouseReleaseEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintPreviewDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QPrintPreviewDialogmouseDoubleClickEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintPreviewDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QPrintPreviewDialogmouseMoveEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintPreviewDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QPrintPreviewDialogwheelEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQPrintPreviewDialog_virtualbase_wheelEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QPrintPreviewDialogkeyReleaseEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQPrintPreviewDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QPrintPreviewDialogfocusInEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQPrintPreviewDialog_virtualbase_focusInEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QPrintPreviewDialogfocusOutEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQPrintPreviewDialog_virtualbase_focusOutEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QPrintPreviewDialogenterEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQPrintPreviewDialog_virtualbase_enterEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QPrintPreviewDialogleaveEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQPrintPreviewDialog_virtualbase_leaveEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QPrintPreviewDialogpaintEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQPrintPreviewDialog_virtualbase_paintEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QPrintPreviewDialogmoveEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQPrintPreviewDialog_virtualbase_moveEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QPrintPreviewDialogtabletEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQPrintPreviewDialog_virtualbase_tabletEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QPrintPreviewDialogactionEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QActionEvent): void =
  fcQPrintPreviewDialog_virtualbase_actionEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QPrintPreviewDialogdragEnterEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQPrintPreviewDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QPrintPreviewDialogdragMoveEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQPrintPreviewDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QPrintPreviewDialogdragLeaveEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQPrintPreviewDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QPrintPreviewDialogdropEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QDropEvent): void =
  fcQPrintPreviewDialog_virtualbase_dropEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QPrintPreviewDialoghideEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qevent_types.QHideEvent): void =
  fcQPrintPreviewDialog_virtualbase_hideEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QPrintPreviewDialognativeEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQPrintPreviewDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQPrintPreviewDialog_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPrintPreviewDialogchangeEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: gen_qcoreevent_types.QEvent): void =
  fcQPrintPreviewDialog_virtualbase_changeEvent(self.h, param1.h)

proc cQPrintPreviewDialog_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QPrintPreviewDialogmetric*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: cint): cint =
  fcQPrintPreviewDialog_virtualbase_metric(self.h, cint(param1))

proc cQPrintPreviewDialog_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QPrintPreviewDialoginitPainter*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, painter: gen_qpainter_types.QPainter): void =
  fcQPrintPreviewDialog_virtualbase_initPainter(self.h, painter.h)

proc cQPrintPreviewDialog_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QPrintPreviewDialogredirected*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPrintPreviewDialog_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQPrintPreviewDialog_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPrintPreviewDialogsharedPainter*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPrintPreviewDialog_virtualbase_sharedPainter(self.h), owned: false)

proc cQPrintPreviewDialog_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPrintPreviewDialoginputMethodEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQPrintPreviewDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQPrintPreviewDialog_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QPrintPreviewDialoginputMethodQuery*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPrintPreviewDialog_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQPrintPreviewDialog_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPrintPreviewDialogfocusNextPrevChild*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, next: bool): bool =
  fcQPrintPreviewDialog_virtualbase_focusNextPrevChild(self.h, next)

proc cQPrintPreviewDialog_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QPrintPreviewDialogtimerEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPrintPreviewDialog_virtualbase_timerEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QPrintPreviewDialogchildEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPrintPreviewDialog_virtualbase_childEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QPrintPreviewDialogcustomEvent*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQPrintPreviewDialog_virtualbase_customEvent(self.h, event.h)

proc cQPrintPreviewDialog_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QPrintPreviewDialogconnectNotify*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPrintPreviewDialog_virtualbase_connectNotify(self.h, signal.h)

proc cQPrintPreviewDialog_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QPrintPreviewDialogdisconnectNotify*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPrintPreviewDialog_virtualbase_disconnectNotify(self.h, signal.h)

proc cQPrintPreviewDialog_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
  let self = QPrintPreviewDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPrintPreviewDialog* {.inheritable.} = ref object of QPrintPreviewDialog
  vtbl*: cQPrintPreviewDialogVTable
method metaObject*(self: VirtualQPrintPreviewDialog): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPrintPreviewDialogmetaObject(self[])
proc cQPrintPreviewDialog_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQPrintPreviewDialog, param1: cstring): pointer {.base.} =
  QPrintPreviewDialogmetacast(self[], param1)
proc cQPrintPreviewDialog_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQPrintPreviewDialog, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPrintPreviewDialogmetacall(self[], param1, param2, param3)
proc cQPrintPreviewDialog_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method setVisible*(self: VirtualQPrintPreviewDialog, visible: bool): void {.base.} =
  QPrintPreviewDialogsetVisible(self[], visible)
proc cQPrintPreviewDialog_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method done*(self: VirtualQPrintPreviewDialog, resultVal: cint): void {.base.} =
  QPrintPreviewDialogdone(self[], resultVal)
proc cQPrintPreviewDialog_method_callback_done(self: pointer, resultVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = resultVal
  inst.done(slotval1)

method sizeHint*(self: VirtualQPrintPreviewDialog): gen_qsize_types.QSize {.base.} =
  QPrintPreviewDialogsizeHint(self[])
proc cQPrintPreviewDialog_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQPrintPreviewDialog): gen_qsize_types.QSize {.base.} =
  QPrintPreviewDialogminimumSizeHint(self[])
proc cQPrintPreviewDialog_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method open*(self: VirtualQPrintPreviewDialog): void {.base.} =
  QPrintPreviewDialogopen(self[])
proc cQPrintPreviewDialog_method_callback_open(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  inst.open()

method exec*(self: VirtualQPrintPreviewDialog): cint {.base.} =
  QPrintPreviewDialogexec(self[])
proc cQPrintPreviewDialog_method_callback_exec(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  var virtualReturn = inst.exec()
  virtualReturn

method accept*(self: VirtualQPrintPreviewDialog): void {.base.} =
  QPrintPreviewDialogaccept(self[])
proc cQPrintPreviewDialog_method_callback_accept(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  inst.accept()

method reject*(self: VirtualQPrintPreviewDialog): void {.base.} =
  QPrintPreviewDialogreject(self[])
proc cQPrintPreviewDialog_method_callback_reject(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  inst.reject()

method keyPressEvent*(self: VirtualQPrintPreviewDialog, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QPrintPreviewDialogkeyPressEvent(self[], param1)
proc cQPrintPreviewDialog_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

method closeEvent*(self: VirtualQPrintPreviewDialog, param1: gen_qevent_types.QCloseEvent): void {.base.} =
  QPrintPreviewDialogcloseEvent(self[], param1)
proc cQPrintPreviewDialog_method_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  inst.closeEvent(slotval1)

method showEvent*(self: VirtualQPrintPreviewDialog, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QPrintPreviewDialogshowEvent(self[], param1)
proc cQPrintPreviewDialog_method_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  inst.showEvent(slotval1)

method resizeEvent*(self: VirtualQPrintPreviewDialog, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QPrintPreviewDialogresizeEvent(self[], param1)
proc cQPrintPreviewDialog_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

method contextMenuEvent*(self: VirtualQPrintPreviewDialog, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QPrintPreviewDialogcontextMenuEvent(self[], param1)
proc cQPrintPreviewDialog_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method eventFilter*(self: VirtualQPrintPreviewDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPrintPreviewDialogeventFilter(self[], param1, param2)
proc cQPrintPreviewDialog_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method devType*(self: VirtualQPrintPreviewDialog): cint {.base.} =
  QPrintPreviewDialogdevType(self[])
proc cQPrintPreviewDialog_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method heightForWidth*(self: VirtualQPrintPreviewDialog, param1: cint): cint {.base.} =
  QPrintPreviewDialogheightForWidth(self[], param1)
proc cQPrintPreviewDialog_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQPrintPreviewDialog): bool {.base.} =
  QPrintPreviewDialoghasHeightForWidth(self[])
proc cQPrintPreviewDialog_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQPrintPreviewDialog): gen_qpaintengine_types.QPaintEngine {.base.} =
  QPrintPreviewDialogpaintEngine(self[])
proc cQPrintPreviewDialog_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQPrintPreviewDialog, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPrintPreviewDialogevent(self[], event)
proc cQPrintPreviewDialog_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQPrintPreviewDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPrintPreviewDialogmousePressEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQPrintPreviewDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPrintPreviewDialogmouseReleaseEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQPrintPreviewDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPrintPreviewDialogmouseDoubleClickEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQPrintPreviewDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPrintPreviewDialogmouseMoveEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQPrintPreviewDialog, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QPrintPreviewDialogwheelEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyReleaseEvent*(self: VirtualQPrintPreviewDialog, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QPrintPreviewDialogkeyReleaseEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQPrintPreviewDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QPrintPreviewDialogfocusInEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQPrintPreviewDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QPrintPreviewDialogfocusOutEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQPrintPreviewDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPrintPreviewDialogenterEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQPrintPreviewDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPrintPreviewDialogleaveEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method paintEvent*(self: VirtualQPrintPreviewDialog, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QPrintPreviewDialogpaintEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method moveEvent*(self: VirtualQPrintPreviewDialog, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QPrintPreviewDialogmoveEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method tabletEvent*(self: VirtualQPrintPreviewDialog, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QPrintPreviewDialogtabletEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQPrintPreviewDialog, event: gen_qevent_types.QActionEvent): void {.base.} =
  QPrintPreviewDialogactionEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQPrintPreviewDialog, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QPrintPreviewDialogdragEnterEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQPrintPreviewDialog, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QPrintPreviewDialogdragMoveEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQPrintPreviewDialog, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QPrintPreviewDialogdragLeaveEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQPrintPreviewDialog, event: gen_qevent_types.QDropEvent): void {.base.} =
  QPrintPreviewDialogdropEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method hideEvent*(self: VirtualQPrintPreviewDialog, event: gen_qevent_types.QHideEvent): void {.base.} =
  QPrintPreviewDialoghideEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQPrintPreviewDialog, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QPrintPreviewDialognativeEvent(self[], eventType, message, resultVal)
proc cQPrintPreviewDialog_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQPrintPreviewDialog, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QPrintPreviewDialogchangeEvent(self[], param1)
proc cQPrintPreviewDialog_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method metric*(self: VirtualQPrintPreviewDialog, param1: cint): cint {.base.} =
  QPrintPreviewDialogmetric(self[], param1)
proc cQPrintPreviewDialog_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQPrintPreviewDialog, painter: gen_qpainter_types.QPainter): void {.base.} =
  QPrintPreviewDialoginitPainter(self[], painter)
proc cQPrintPreviewDialog_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQPrintPreviewDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QPrintPreviewDialogredirected(self[], offset)
proc cQPrintPreviewDialog_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQPrintPreviewDialog): gen_qpainter_types.QPainter {.base.} =
  QPrintPreviewDialogsharedPainter(self[])
proc cQPrintPreviewDialog_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQPrintPreviewDialog, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QPrintPreviewDialoginputMethodEvent(self[], param1)
proc cQPrintPreviewDialog_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQPrintPreviewDialog, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QPrintPreviewDialoginputMethodQuery(self[], param1)
proc cQPrintPreviewDialog_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQPrintPreviewDialog, next: bool): bool {.base.} =
  QPrintPreviewDialogfocusNextPrevChild(self[], next)
proc cQPrintPreviewDialog_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method timerEvent*(self: VirtualQPrintPreviewDialog, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPrintPreviewDialogtimerEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQPrintPreviewDialog, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPrintPreviewDialogchildEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQPrintPreviewDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPrintPreviewDialogcustomEvent(self[], event)
proc cQPrintPreviewDialog_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQPrintPreviewDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPrintPreviewDialogconnectNotify(self[], signal)
proc cQPrintPreviewDialog_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQPrintPreviewDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPrintPreviewDialogdisconnectNotify(self[], signal)
proc cQPrintPreviewDialog_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintPreviewDialog](fcQPrintPreviewDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc adjustPosition*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, param1: gen_qwidget_types.QWidget): void =
  fcQPrintPreviewDialog_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): void =
  fcQPrintPreviewDialog_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): void =
  fcQPrintPreviewDialog_protectedbase_create(self.h)

proc destroy*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): void =
  fcQPrintPreviewDialog_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): bool =
  fcQPrintPreviewDialog_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): bool =
  fcQPrintPreviewDialog_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPrintPreviewDialog_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog): cint =
  fcQPrintPreviewDialog_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, signal: cstring): cint =
  fcQPrintPreviewDialog_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qprintpreviewdialog_types.QPrintPreviewDialog, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPrintPreviewDialog_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QPrintPreviewDialogVTable = nil): gen_qprintpreviewdialog_types.QPrintPreviewDialog =
  let vtbl = if vtbl == nil: new QPrintPreviewDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPrintPreviewDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPrintPreviewDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPrintPreviewDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPrintPreviewDialog_vtable_callback_setVisible
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQPrintPreviewDialog_vtable_callback_done
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPrintPreviewDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPrintPreviewDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQPrintPreviewDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQPrintPreviewDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQPrintPreviewDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQPrintPreviewDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPrintPreviewDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPrintPreviewDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPrintPreviewDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPrintPreviewDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPrintPreviewDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPrintPreviewDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPrintPreviewDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPrintPreviewDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPrintPreviewDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPrintPreviewDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPrintPreviewDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPrintPreviewDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPrintPreviewDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPrintPreviewDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPrintPreviewDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPrintPreviewDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPrintPreviewDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPrintPreviewDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPrintPreviewDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPrintPreviewDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPrintPreviewDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPrintPreviewDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPrintPreviewDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPrintPreviewDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPrintPreviewDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPrintPreviewDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPrintPreviewDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPrintPreviewDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPrintPreviewDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPrintPreviewDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPrintPreviewDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPrintPreviewDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPrintPreviewDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPrintPreviewDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPrintPreviewDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPrintPreviewDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPrintPreviewDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPrintPreviewDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPrintPreviewDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPrintPreviewDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPrintPreviewDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPrintPreviewDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPrintPreviewDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPrintPreviewDialog_vtable_callback_disconnectNotify
  gen_qprintpreviewdialog_types.QPrintPreviewDialog(h: fcQPrintPreviewDialog_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog,
    vtbl: ref QPrintPreviewDialogVTable = nil): gen_qprintpreviewdialog_types.QPrintPreviewDialog =
  let vtbl = if vtbl == nil: new QPrintPreviewDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPrintPreviewDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPrintPreviewDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPrintPreviewDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPrintPreviewDialog_vtable_callback_setVisible
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQPrintPreviewDialog_vtable_callback_done
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPrintPreviewDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPrintPreviewDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQPrintPreviewDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQPrintPreviewDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQPrintPreviewDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQPrintPreviewDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPrintPreviewDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPrintPreviewDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPrintPreviewDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPrintPreviewDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPrintPreviewDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPrintPreviewDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPrintPreviewDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPrintPreviewDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPrintPreviewDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPrintPreviewDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPrintPreviewDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPrintPreviewDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPrintPreviewDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPrintPreviewDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPrintPreviewDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPrintPreviewDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPrintPreviewDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPrintPreviewDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPrintPreviewDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPrintPreviewDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPrintPreviewDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPrintPreviewDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPrintPreviewDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPrintPreviewDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPrintPreviewDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPrintPreviewDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPrintPreviewDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPrintPreviewDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPrintPreviewDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPrintPreviewDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPrintPreviewDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPrintPreviewDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPrintPreviewDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPrintPreviewDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPrintPreviewDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPrintPreviewDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPrintPreviewDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPrintPreviewDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPrintPreviewDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPrintPreviewDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPrintPreviewDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPrintPreviewDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPrintPreviewDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPrintPreviewDialog_vtable_callback_disconnectNotify
  gen_qprintpreviewdialog_types.QPrintPreviewDialog(h: fcQPrintPreviewDialog_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog,
    printer: gen_qprinter_types.QPrinter,
    vtbl: ref QPrintPreviewDialogVTable = nil): gen_qprintpreviewdialog_types.QPrintPreviewDialog =
  let vtbl = if vtbl == nil: new QPrintPreviewDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPrintPreviewDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPrintPreviewDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPrintPreviewDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPrintPreviewDialog_vtable_callback_setVisible
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQPrintPreviewDialog_vtable_callback_done
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPrintPreviewDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPrintPreviewDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQPrintPreviewDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQPrintPreviewDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQPrintPreviewDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQPrintPreviewDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPrintPreviewDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPrintPreviewDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPrintPreviewDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPrintPreviewDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPrintPreviewDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPrintPreviewDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPrintPreviewDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPrintPreviewDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPrintPreviewDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPrintPreviewDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPrintPreviewDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPrintPreviewDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPrintPreviewDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPrintPreviewDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPrintPreviewDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPrintPreviewDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPrintPreviewDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPrintPreviewDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPrintPreviewDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPrintPreviewDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPrintPreviewDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPrintPreviewDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPrintPreviewDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPrintPreviewDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPrintPreviewDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPrintPreviewDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPrintPreviewDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPrintPreviewDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPrintPreviewDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPrintPreviewDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPrintPreviewDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPrintPreviewDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPrintPreviewDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPrintPreviewDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPrintPreviewDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPrintPreviewDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPrintPreviewDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPrintPreviewDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPrintPreviewDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPrintPreviewDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPrintPreviewDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPrintPreviewDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPrintPreviewDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPrintPreviewDialog_vtable_callback_disconnectNotify
  gen_qprintpreviewdialog_types.QPrintPreviewDialog(h: fcQPrintPreviewDialog_new3(addr(vtbl[].vtbl), addr(vtbl[]), printer.h), owned: true)

proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog,
    parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QPrintPreviewDialogVTable = nil): gen_qprintpreviewdialog_types.QPrintPreviewDialog =
  let vtbl = if vtbl == nil: new QPrintPreviewDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPrintPreviewDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPrintPreviewDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPrintPreviewDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPrintPreviewDialog_vtable_callback_setVisible
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQPrintPreviewDialog_vtable_callback_done
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPrintPreviewDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPrintPreviewDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQPrintPreviewDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQPrintPreviewDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQPrintPreviewDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQPrintPreviewDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPrintPreviewDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPrintPreviewDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPrintPreviewDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPrintPreviewDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPrintPreviewDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPrintPreviewDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPrintPreviewDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPrintPreviewDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPrintPreviewDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPrintPreviewDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPrintPreviewDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPrintPreviewDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPrintPreviewDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPrintPreviewDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPrintPreviewDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPrintPreviewDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPrintPreviewDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPrintPreviewDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPrintPreviewDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPrintPreviewDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPrintPreviewDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPrintPreviewDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPrintPreviewDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPrintPreviewDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPrintPreviewDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPrintPreviewDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPrintPreviewDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPrintPreviewDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPrintPreviewDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPrintPreviewDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPrintPreviewDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPrintPreviewDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPrintPreviewDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPrintPreviewDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPrintPreviewDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPrintPreviewDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPrintPreviewDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPrintPreviewDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPrintPreviewDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPrintPreviewDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPrintPreviewDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPrintPreviewDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPrintPreviewDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPrintPreviewDialog_vtable_callback_disconnectNotify
  gen_qprintpreviewdialog_types.QPrintPreviewDialog(h: fcQPrintPreviewDialog_new4(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, cint(flags)), owned: true)

proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget,
    vtbl: ref QPrintPreviewDialogVTable = nil): gen_qprintpreviewdialog_types.QPrintPreviewDialog =
  let vtbl = if vtbl == nil: new QPrintPreviewDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPrintPreviewDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPrintPreviewDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPrintPreviewDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPrintPreviewDialog_vtable_callback_setVisible
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQPrintPreviewDialog_vtable_callback_done
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPrintPreviewDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPrintPreviewDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQPrintPreviewDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQPrintPreviewDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQPrintPreviewDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQPrintPreviewDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPrintPreviewDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPrintPreviewDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPrintPreviewDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPrintPreviewDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPrintPreviewDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPrintPreviewDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPrintPreviewDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPrintPreviewDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPrintPreviewDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPrintPreviewDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPrintPreviewDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPrintPreviewDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPrintPreviewDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPrintPreviewDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPrintPreviewDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPrintPreviewDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPrintPreviewDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPrintPreviewDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPrintPreviewDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPrintPreviewDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPrintPreviewDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPrintPreviewDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPrintPreviewDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPrintPreviewDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPrintPreviewDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPrintPreviewDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPrintPreviewDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPrintPreviewDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPrintPreviewDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPrintPreviewDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPrintPreviewDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPrintPreviewDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPrintPreviewDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPrintPreviewDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPrintPreviewDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPrintPreviewDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPrintPreviewDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPrintPreviewDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPrintPreviewDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPrintPreviewDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPrintPreviewDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPrintPreviewDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPrintPreviewDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPrintPreviewDialog_vtable_callback_disconnectNotify
  gen_qprintpreviewdialog_types.QPrintPreviewDialog(h: fcQPrintPreviewDialog_new5(addr(vtbl[].vtbl), addr(vtbl[]), printer.h, parent.h), owned: true)

proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QPrintPreviewDialogVTable = nil): gen_qprintpreviewdialog_types.QPrintPreviewDialog =
  let vtbl = if vtbl == nil: new QPrintPreviewDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPrintPreviewDialogVTable](fcQPrintPreviewDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPrintPreviewDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPrintPreviewDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPrintPreviewDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPrintPreviewDialog_vtable_callback_setVisible
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQPrintPreviewDialog_vtable_callback_done
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPrintPreviewDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPrintPreviewDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQPrintPreviewDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQPrintPreviewDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQPrintPreviewDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQPrintPreviewDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPrintPreviewDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPrintPreviewDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPrintPreviewDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPrintPreviewDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPrintPreviewDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPrintPreviewDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPrintPreviewDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPrintPreviewDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPrintPreviewDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPrintPreviewDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPrintPreviewDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPrintPreviewDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPrintPreviewDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPrintPreviewDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPrintPreviewDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPrintPreviewDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPrintPreviewDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPrintPreviewDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPrintPreviewDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPrintPreviewDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPrintPreviewDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPrintPreviewDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPrintPreviewDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPrintPreviewDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPrintPreviewDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPrintPreviewDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPrintPreviewDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPrintPreviewDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPrintPreviewDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPrintPreviewDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPrintPreviewDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPrintPreviewDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPrintPreviewDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPrintPreviewDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPrintPreviewDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPrintPreviewDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPrintPreviewDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPrintPreviewDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPrintPreviewDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPrintPreviewDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPrintPreviewDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPrintPreviewDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPrintPreviewDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPrintPreviewDialog_vtable_callback_disconnectNotify
  gen_qprintpreviewdialog_types.QPrintPreviewDialog(h: fcQPrintPreviewDialog_new6(addr(vtbl[].vtbl), addr(vtbl[]), printer.h, parent.h, cint(flags)), owned: true)

const cQPrintPreviewDialog_mvtbl = cQPrintPreviewDialogVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPrintPreviewDialog()[])](self.fcQPrintPreviewDialog_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQPrintPreviewDialog_method_callback_metaObject,
  metacast: cQPrintPreviewDialog_method_callback_metacast,
  metacall: cQPrintPreviewDialog_method_callback_metacall,
  setVisible: cQPrintPreviewDialog_method_callback_setVisible,
  done: cQPrintPreviewDialog_method_callback_done,
  sizeHint: cQPrintPreviewDialog_method_callback_sizeHint,
  minimumSizeHint: cQPrintPreviewDialog_method_callback_minimumSizeHint,
  open: cQPrintPreviewDialog_method_callback_open,
  exec: cQPrintPreviewDialog_method_callback_exec,
  accept: cQPrintPreviewDialog_method_callback_accept,
  reject: cQPrintPreviewDialog_method_callback_reject,
  keyPressEvent: cQPrintPreviewDialog_method_callback_keyPressEvent,
  closeEvent: cQPrintPreviewDialog_method_callback_closeEvent,
  showEvent: cQPrintPreviewDialog_method_callback_showEvent,
  resizeEvent: cQPrintPreviewDialog_method_callback_resizeEvent,
  contextMenuEvent: cQPrintPreviewDialog_method_callback_contextMenuEvent,
  eventFilter: cQPrintPreviewDialog_method_callback_eventFilter,
  devType: cQPrintPreviewDialog_method_callback_devType,
  heightForWidth: cQPrintPreviewDialog_method_callback_heightForWidth,
  hasHeightForWidth: cQPrintPreviewDialog_method_callback_hasHeightForWidth,
  paintEngine: cQPrintPreviewDialog_method_callback_paintEngine,
  event: cQPrintPreviewDialog_method_callback_event,
  mousePressEvent: cQPrintPreviewDialog_method_callback_mousePressEvent,
  mouseReleaseEvent: cQPrintPreviewDialog_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQPrintPreviewDialog_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQPrintPreviewDialog_method_callback_mouseMoveEvent,
  wheelEvent: cQPrintPreviewDialog_method_callback_wheelEvent,
  keyReleaseEvent: cQPrintPreviewDialog_method_callback_keyReleaseEvent,
  focusInEvent: cQPrintPreviewDialog_method_callback_focusInEvent,
  focusOutEvent: cQPrintPreviewDialog_method_callback_focusOutEvent,
  enterEvent: cQPrintPreviewDialog_method_callback_enterEvent,
  leaveEvent: cQPrintPreviewDialog_method_callback_leaveEvent,
  paintEvent: cQPrintPreviewDialog_method_callback_paintEvent,
  moveEvent: cQPrintPreviewDialog_method_callback_moveEvent,
  tabletEvent: cQPrintPreviewDialog_method_callback_tabletEvent,
  actionEvent: cQPrintPreviewDialog_method_callback_actionEvent,
  dragEnterEvent: cQPrintPreviewDialog_method_callback_dragEnterEvent,
  dragMoveEvent: cQPrintPreviewDialog_method_callback_dragMoveEvent,
  dragLeaveEvent: cQPrintPreviewDialog_method_callback_dragLeaveEvent,
  dropEvent: cQPrintPreviewDialog_method_callback_dropEvent,
  hideEvent: cQPrintPreviewDialog_method_callback_hideEvent,
  nativeEvent: cQPrintPreviewDialog_method_callback_nativeEvent,
  changeEvent: cQPrintPreviewDialog_method_callback_changeEvent,
  metric: cQPrintPreviewDialog_method_callback_metric,
  initPainter: cQPrintPreviewDialog_method_callback_initPainter,
  redirected: cQPrintPreviewDialog_method_callback_redirected,
  sharedPainter: cQPrintPreviewDialog_method_callback_sharedPainter,
  inputMethodEvent: cQPrintPreviewDialog_method_callback_inputMethodEvent,
  inputMethodQuery: cQPrintPreviewDialog_method_callback_inputMethodQuery,
  focusNextPrevChild: cQPrintPreviewDialog_method_callback_focusNextPrevChild,
  timerEvent: cQPrintPreviewDialog_method_callback_timerEvent,
  childEvent: cQPrintPreviewDialog_method_callback_childEvent,
  customEvent: cQPrintPreviewDialog_method_callback_customEvent,
  connectNotify: cQPrintPreviewDialog_method_callback_connectNotify,
  disconnectNotify: cQPrintPreviewDialog_method_callback_disconnectNotify,
)
proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQPrintPreviewDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPrintPreviewDialog_new(addr(cQPrintPreviewDialog_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog,
    inst: VirtualQPrintPreviewDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPrintPreviewDialog_new2(addr(cQPrintPreviewDialog_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog,
    printer: gen_qprinter_types.QPrinter,
    inst: VirtualQPrintPreviewDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPrintPreviewDialog_new3(addr(cQPrintPreviewDialog_mvtbl), addr(inst[]), printer.h)
  inst[].owned = true

proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog,
    parent: gen_qwidget_types.QWidget, flags: cint,
    inst: VirtualQPrintPreviewDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPrintPreviewDialog_new4(addr(cQPrintPreviewDialog_mvtbl), addr(inst[]), parent.h, cint(flags))
  inst[].owned = true

proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget,
    inst: VirtualQPrintPreviewDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPrintPreviewDialog_new5(addr(cQPrintPreviewDialog_mvtbl), addr(inst[]), printer.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qprintpreviewdialog_types.QPrintPreviewDialog,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget, flags: cint,
    inst: VirtualQPrintPreviewDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPrintPreviewDialog_new6(addr(cQPrintPreviewDialog_mvtbl), addr(inst[]), printer.h, parent.h, cint(flags))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qprintpreviewdialog_types.QPrintPreviewDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintPreviewDialog_staticMetaObject())
