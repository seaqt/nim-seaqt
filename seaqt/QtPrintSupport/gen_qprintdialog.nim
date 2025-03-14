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


{.compile("gen_qprintdialog.cpp", QtPrintSupportCFlags).}


import ./gen_qprintdialog_types
export gen_qprintdialog_types

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
  ../QtWidgets/gen_qwidget_types,
  ./gen_qabstractprintdialog,
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
  gen_qwidget_types,
  gen_qabstractprintdialog,
  gen_qprinter_types

type cQPrintDialog*{.exportc: "QPrintDialog", incompleteStruct.} = object

proc fcQPrintDialog_metaObject(self: pointer): pointer {.importc: "QPrintDialog_metaObject".}
proc fcQPrintDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QPrintDialog_metacast".}
proc fcQPrintDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPrintDialog_metacall".}
proc fcQPrintDialog_tr(s: cstring): struct_miqt_string {.importc: "QPrintDialog_tr".}
proc fcQPrintDialog_exec(self: pointer): cint {.importc: "QPrintDialog_exec".}
proc fcQPrintDialog_accept(self: pointer): void {.importc: "QPrintDialog_accept".}
proc fcQPrintDialog_done(self: pointer, resultVal: cint): void {.importc: "QPrintDialog_done".}
proc fcQPrintDialog_setOption(self: pointer, option: cint): void {.importc: "QPrintDialog_setOption".}
proc fcQPrintDialog_testOption(self: pointer, option: cint): bool {.importc: "QPrintDialog_testOption".}
proc fcQPrintDialog_setOptions(self: pointer, options: cint): void {.importc: "QPrintDialog_setOptions".}
proc fcQPrintDialog_options(self: pointer): cint {.importc: "QPrintDialog_options".}
proc fcQPrintDialog_setVisible(self: pointer, visible: bool): void {.importc: "QPrintDialog_setVisible".}
proc fcQPrintDialog_accepted(self: pointer, printer: pointer): void {.importc: "QPrintDialog_accepted".}
proc fcQPrintDialog_connect_accepted(self: pointer, slot: int, callback: proc (slot: int, printer: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPrintDialog_connect_accepted".}
proc fcQPrintDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPrintDialog_tr2".}
proc fcQPrintDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPrintDialog_tr3".}
proc fcQPrintDialog_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QPrintDialog_setOption2".}
proc fcQPrintDialog_vtbl(self: pointer): pointer {.importc: "QPrintDialog_vtbl".}
proc fcQPrintDialog_vdata(self: pointer): pointer {.importc: "QPrintDialog_vdata".}
type cQPrintDialogVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  exec*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  accept*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  done*: proc(self: pointer, resultVal: cint): void {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQPrintDialog_virtualbase_metaObject(self: pointer): pointer {.importc: "QPrintDialog_virtualbase_metaObject".}
proc fcQPrintDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPrintDialog_virtualbase_metacast".}
proc fcQPrintDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPrintDialog_virtualbase_metacall".}
proc fcQPrintDialog_virtualbase_exec(self: pointer): cint {.importc: "QPrintDialog_virtualbase_exec".}
proc fcQPrintDialog_virtualbase_accept(self: pointer): void {.importc: "QPrintDialog_virtualbase_accept".}
proc fcQPrintDialog_virtualbase_done(self: pointer, resultVal: cint): void {.importc: "QPrintDialog_virtualbase_done".}
proc fcQPrintDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QPrintDialog_virtualbase_setVisible".}
proc fcQPrintDialog_virtualbase_sizeHint(self: pointer): pointer {.importc: "QPrintDialog_virtualbase_sizeHint".}
proc fcQPrintDialog_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QPrintDialog_virtualbase_minimumSizeHint".}
proc fcQPrintDialog_virtualbase_open(self: pointer): void {.importc: "QPrintDialog_virtualbase_open".}
proc fcQPrintDialog_virtualbase_reject(self: pointer): void {.importc: "QPrintDialog_virtualbase_reject".}
proc fcQPrintDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QPrintDialog_virtualbase_keyPressEvent".}
proc fcQPrintDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QPrintDialog_virtualbase_closeEvent".}
proc fcQPrintDialog_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QPrintDialog_virtualbase_showEvent".}
proc fcQPrintDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QPrintDialog_virtualbase_resizeEvent".}
proc fcQPrintDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QPrintDialog_virtualbase_contextMenuEvent".}
proc fcQPrintDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QPrintDialog_virtualbase_eventFilter".}
proc fcQPrintDialog_virtualbase_devType(self: pointer): cint {.importc: "QPrintDialog_virtualbase_devType".}
proc fcQPrintDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QPrintDialog_virtualbase_heightForWidth".}
proc fcQPrintDialog_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QPrintDialog_virtualbase_hasHeightForWidth".}
proc fcQPrintDialog_virtualbase_paintEngine(self: pointer): pointer {.importc: "QPrintDialog_virtualbase_paintEngine".}
proc fcQPrintDialog_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPrintDialog_virtualbase_event".}
proc fcQPrintDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_mousePressEvent".}
proc fcQPrintDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_mouseReleaseEvent".}
proc fcQPrintDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQPrintDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_mouseMoveEvent".}
proc fcQPrintDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_wheelEvent".}
proc fcQPrintDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_keyReleaseEvent".}
proc fcQPrintDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_focusInEvent".}
proc fcQPrintDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_focusOutEvent".}
proc fcQPrintDialog_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_enterEvent".}
proc fcQPrintDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_leaveEvent".}
proc fcQPrintDialog_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_paintEvent".}
proc fcQPrintDialog_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_moveEvent".}
proc fcQPrintDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_tabletEvent".}
proc fcQPrintDialog_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_actionEvent".}
proc fcQPrintDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_dragEnterEvent".}
proc fcQPrintDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_dragMoveEvent".}
proc fcQPrintDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_dragLeaveEvent".}
proc fcQPrintDialog_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_dropEvent".}
proc fcQPrintDialog_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_hideEvent".}
proc fcQPrintDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QPrintDialog_virtualbase_nativeEvent".}
proc fcQPrintDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QPrintDialog_virtualbase_changeEvent".}
proc fcQPrintDialog_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QPrintDialog_virtualbase_metric".}
proc fcQPrintDialog_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QPrintDialog_virtualbase_initPainter".}
proc fcQPrintDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QPrintDialog_virtualbase_redirected".}
proc fcQPrintDialog_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QPrintDialog_virtualbase_sharedPainter".}
proc fcQPrintDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QPrintDialog_virtualbase_inputMethodEvent".}
proc fcQPrintDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QPrintDialog_virtualbase_inputMethodQuery".}
proc fcQPrintDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QPrintDialog_virtualbase_focusNextPrevChild".}
proc fcQPrintDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_timerEvent".}
proc fcQPrintDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_childEvent".}
proc fcQPrintDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_customEvent".}
proc fcQPrintDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPrintDialog_virtualbase_connectNotify".}
proc fcQPrintDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPrintDialog_virtualbase_disconnectNotify".}
proc fcQPrintDialog_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QPrintDialog_protectedbase_adjustPosition".}
proc fcQPrintDialog_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QPrintDialog_protectedbase_updateMicroFocus".}
proc fcQPrintDialog_protectedbase_create(self: pointer): void {.importc: "QPrintDialog_protectedbase_create".}
proc fcQPrintDialog_protectedbase_destroy(self: pointer): void {.importc: "QPrintDialog_protectedbase_destroy".}
proc fcQPrintDialog_protectedbase_focusNextChild(self: pointer): bool {.importc: "QPrintDialog_protectedbase_focusNextChild".}
proc fcQPrintDialog_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QPrintDialog_protectedbase_focusPreviousChild".}
proc fcQPrintDialog_protectedbase_sender(self: pointer): pointer {.importc: "QPrintDialog_protectedbase_sender".}
proc fcQPrintDialog_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPrintDialog_protectedbase_senderSignalIndex".}
proc fcQPrintDialog_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPrintDialog_protectedbase_receivers".}
proc fcQPrintDialog_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPrintDialog_protectedbase_isSignalConnected".}
proc fcQPrintDialog_new(vtbl, vdata: pointer, parent: pointer): ptr cQPrintDialog {.importc: "QPrintDialog_new".}
proc fcQPrintDialog_new2(vtbl, vdata: pointer, printer: pointer): ptr cQPrintDialog {.importc: "QPrintDialog_new2".}
proc fcQPrintDialog_new3(vtbl, vdata: pointer): ptr cQPrintDialog {.importc: "QPrintDialog_new3".}
proc fcQPrintDialog_new4(vtbl, vdata: pointer, printer: pointer, parent: pointer): ptr cQPrintDialog {.importc: "QPrintDialog_new4".}
proc fcQPrintDialog_staticMetaObject(): pointer {.importc: "QPrintDialog_staticMetaObject".}

proc metaObject*(self: gen_qprintdialog_types.QPrintDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintDialog_metaObject(self.h), owned: false)

proc metacast*(self: gen_qprintdialog_types.QPrintDialog, param1: cstring): pointer =
  fcQPrintDialog_metacast(self.h, param1)

proc metacall*(self: gen_qprintdialog_types.QPrintDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQPrintDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qprintdialog_types.QPrintDialog, s: cstring): string =
  let v_ms = fcQPrintDialog_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc exec*(self: gen_qprintdialog_types.QPrintDialog): cint =
  fcQPrintDialog_exec(self.h)

proc accept*(self: gen_qprintdialog_types.QPrintDialog): void =
  fcQPrintDialog_accept(self.h)

proc done*(self: gen_qprintdialog_types.QPrintDialog, resultVal: cint): void =
  fcQPrintDialog_done(self.h, resultVal)

proc setOption*(self: gen_qprintdialog_types.QPrintDialog, option: cint): void =
  fcQPrintDialog_setOption(self.h, cint(option))

proc testOption*(self: gen_qprintdialog_types.QPrintDialog, option: cint): bool =
  fcQPrintDialog_testOption(self.h, cint(option))

proc setOptions*(self: gen_qprintdialog_types.QPrintDialog, options: cint): void =
  fcQPrintDialog_setOptions(self.h, cint(options))

proc options*(self: gen_qprintdialog_types.QPrintDialog): cint =
  cint(fcQPrintDialog_options(self.h))

proc setVisible*(self: gen_qprintdialog_types.QPrintDialog, visible: bool): void =
  fcQPrintDialog_setVisible(self.h, visible)

proc accepted*(self: gen_qprintdialog_types.QPrintDialog, printer: gen_qprinter_types.QPrinter): void =
  fcQPrintDialog_accepted(self.h, printer.h)

type QPrintDialogacceptedSlot* = proc(printer: gen_qprinter_types.QPrinter)
proc cQPrintDialog_slot_callback_accepted(slot: int, printer: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QPrintDialogacceptedSlot](cast[pointer](slot))
  let slotval1 = gen_qprinter_types.QPrinter(h: printer, owned: false)

  nimfunc[](slotval1)

proc cQPrintDialog_slot_callback_accepted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPrintDialogacceptedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaccepted*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogacceptedSlot) =
  var tmp = new QPrintDialogacceptedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_connect_accepted(self.h, cast[int](addr tmp[]), cQPrintDialog_slot_callback_accepted, cQPrintDialog_slot_callback_accepted_release)

proc tr*(_: type gen_qprintdialog_types.QPrintDialog, s: cstring, c: cstring): string =
  let v_ms = fcQPrintDialog_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qprintdialog_types.QPrintDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPrintDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setOption*(self: gen_qprintdialog_types.QPrintDialog, option: cint, on: bool): void =
  fcQPrintDialog_setOption2(self.h, cint(option), on)

type QPrintDialogmetaObjectProc* = proc(self: QPrintDialog): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPrintDialogmetacastProc* = proc(self: QPrintDialog, param1: cstring): pointer {.raises: [], gcsafe.}
type QPrintDialogmetacallProc* = proc(self: QPrintDialog, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPrintDialogexecProc* = proc(self: QPrintDialog): cint {.raises: [], gcsafe.}
type QPrintDialogacceptProc* = proc(self: QPrintDialog): void {.raises: [], gcsafe.}
type QPrintDialogdoneProc* = proc(self: QPrintDialog, resultVal: cint): void {.raises: [], gcsafe.}
type QPrintDialogsetVisibleProc* = proc(self: QPrintDialog, visible: bool): void {.raises: [], gcsafe.}
type QPrintDialogsizeHintProc* = proc(self: QPrintDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPrintDialogminimumSizeHintProc* = proc(self: QPrintDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPrintDialogopenProc* = proc(self: QPrintDialog): void {.raises: [], gcsafe.}
type QPrintDialogrejectProc* = proc(self: QPrintDialog): void {.raises: [], gcsafe.}
type QPrintDialogkeyPressEventProc* = proc(self: QPrintDialog, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QPrintDialogcloseEventProc* = proc(self: QPrintDialog, param1: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QPrintDialogshowEventProc* = proc(self: QPrintDialog, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QPrintDialogresizeEventProc* = proc(self: QPrintDialog, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QPrintDialogcontextMenuEventProc* = proc(self: QPrintDialog, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QPrintDialogeventFilterProc* = proc(self: QPrintDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPrintDialogdevTypeProc* = proc(self: QPrintDialog): cint {.raises: [], gcsafe.}
type QPrintDialogheightForWidthProc* = proc(self: QPrintDialog, param1: cint): cint {.raises: [], gcsafe.}
type QPrintDialoghasHeightForWidthProc* = proc(self: QPrintDialog): bool {.raises: [], gcsafe.}
type QPrintDialogpaintEngineProc* = proc(self: QPrintDialog): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QPrintDialogeventProc* = proc(self: QPrintDialog, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPrintDialogmousePressEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPrintDialogmouseReleaseEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPrintDialogmouseDoubleClickEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPrintDialogmouseMoveEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPrintDialogwheelEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QPrintDialogkeyReleaseEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QPrintDialogfocusInEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QPrintDialogfocusOutEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QPrintDialogenterEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QPrintDialogleaveEventProc* = proc(self: QPrintDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPrintDialogpaintEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QPrintDialogmoveEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QPrintDialogtabletEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QPrintDialogactionEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QPrintDialogdragEnterEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QPrintDialogdragMoveEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QPrintDialogdragLeaveEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QPrintDialogdropEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QPrintDialoghideEventProc* = proc(self: QPrintDialog, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QPrintDialognativeEventProc* = proc(self: QPrintDialog, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QPrintDialogchangeEventProc* = proc(self: QPrintDialog, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPrintDialogmetricProc* = proc(self: QPrintDialog, param1: cint): cint {.raises: [], gcsafe.}
type QPrintDialoginitPainterProc* = proc(self: QPrintDialog, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QPrintDialogredirectedProc* = proc(self: QPrintDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QPrintDialogsharedPainterProc* = proc(self: QPrintDialog): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QPrintDialoginputMethodEventProc* = proc(self: QPrintDialog, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QPrintDialoginputMethodQueryProc* = proc(self: QPrintDialog, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QPrintDialogfocusNextPrevChildProc* = proc(self: QPrintDialog, next: bool): bool {.raises: [], gcsafe.}
type QPrintDialogtimerEventProc* = proc(self: QPrintDialog, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPrintDialogchildEventProc* = proc(self: QPrintDialog, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPrintDialogcustomEventProc* = proc(self: QPrintDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPrintDialogconnectNotifyProc* = proc(self: QPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPrintDialogdisconnectNotifyProc* = proc(self: QPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPrintDialogVTable* {.inheritable, pure.} = object
  vtbl: cQPrintDialogVTable
  metaObject*: QPrintDialogmetaObjectProc
  metacast*: QPrintDialogmetacastProc
  metacall*: QPrintDialogmetacallProc
  exec*: QPrintDialogexecProc
  accept*: QPrintDialogacceptProc
  done*: QPrintDialogdoneProc
  setVisible*: QPrintDialogsetVisibleProc
  sizeHint*: QPrintDialogsizeHintProc
  minimumSizeHint*: QPrintDialogminimumSizeHintProc
  open*: QPrintDialogopenProc
  reject*: QPrintDialogrejectProc
  keyPressEvent*: QPrintDialogkeyPressEventProc
  closeEvent*: QPrintDialogcloseEventProc
  showEvent*: QPrintDialogshowEventProc
  resizeEvent*: QPrintDialogresizeEventProc
  contextMenuEvent*: QPrintDialogcontextMenuEventProc
  eventFilter*: QPrintDialogeventFilterProc
  devType*: QPrintDialogdevTypeProc
  heightForWidth*: QPrintDialogheightForWidthProc
  hasHeightForWidth*: QPrintDialoghasHeightForWidthProc
  paintEngine*: QPrintDialogpaintEngineProc
  event*: QPrintDialogeventProc
  mousePressEvent*: QPrintDialogmousePressEventProc
  mouseReleaseEvent*: QPrintDialogmouseReleaseEventProc
  mouseDoubleClickEvent*: QPrintDialogmouseDoubleClickEventProc
  mouseMoveEvent*: QPrintDialogmouseMoveEventProc
  wheelEvent*: QPrintDialogwheelEventProc
  keyReleaseEvent*: QPrintDialogkeyReleaseEventProc
  focusInEvent*: QPrintDialogfocusInEventProc
  focusOutEvent*: QPrintDialogfocusOutEventProc
  enterEvent*: QPrintDialogenterEventProc
  leaveEvent*: QPrintDialogleaveEventProc
  paintEvent*: QPrintDialogpaintEventProc
  moveEvent*: QPrintDialogmoveEventProc
  tabletEvent*: QPrintDialogtabletEventProc
  actionEvent*: QPrintDialogactionEventProc
  dragEnterEvent*: QPrintDialogdragEnterEventProc
  dragMoveEvent*: QPrintDialogdragMoveEventProc
  dragLeaveEvent*: QPrintDialogdragLeaveEventProc
  dropEvent*: QPrintDialogdropEventProc
  hideEvent*: QPrintDialoghideEventProc
  nativeEvent*: QPrintDialognativeEventProc
  changeEvent*: QPrintDialogchangeEventProc
  metric*: QPrintDialogmetricProc
  initPainter*: QPrintDialoginitPainterProc
  redirected*: QPrintDialogredirectedProc
  sharedPainter*: QPrintDialogsharedPainterProc
  inputMethodEvent*: QPrintDialoginputMethodEventProc
  inputMethodQuery*: QPrintDialoginputMethodQueryProc
  focusNextPrevChild*: QPrintDialogfocusNextPrevChildProc
  timerEvent*: QPrintDialogtimerEventProc
  childEvent*: QPrintDialogchildEventProc
  customEvent*: QPrintDialogcustomEventProc
  connectNotify*: QPrintDialogconnectNotifyProc
  disconnectNotify*: QPrintDialogdisconnectNotifyProc
proc QPrintDialogmetaObject*(self: gen_qprintdialog_types.QPrintDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintDialog_virtualbase_metaObject(self.h), owned: false)

proc cQPrintDialog_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPrintDialogmetacast*(self: gen_qprintdialog_types.QPrintDialog, param1: cstring): pointer =
  fcQPrintDialog_virtualbase_metacast(self.h, param1)

proc cQPrintDialog_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPrintDialogmetacall*(self: gen_qprintdialog_types.QPrintDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQPrintDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQPrintDialog_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPrintDialogexec*(self: gen_qprintdialog_types.QPrintDialog): cint =
  fcQPrintDialog_virtualbase_exec(self.h)

proc cQPrintDialog_vtable_callback_exec(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QPrintDialogaccept*(self: gen_qprintdialog_types.QPrintDialog): void =
  fcQPrintDialog_virtualbase_accept(self.h)

proc cQPrintDialog_vtable_callback_accept(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  vtbl[].accept(self)

proc QPrintDialogdone*(self: gen_qprintdialog_types.QPrintDialog, resultVal: cint): void =
  fcQPrintDialog_virtualbase_done(self.h, resultVal)

proc cQPrintDialog_vtable_callback_done(self: pointer, resultVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = resultVal
  vtbl[].done(self, slotval1)

proc QPrintDialogsetVisible*(self: gen_qprintdialog_types.QPrintDialog, visible: bool): void =
  fcQPrintDialog_virtualbase_setVisible(self.h, visible)

proc cQPrintDialog_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QPrintDialogsizeHint*(self: gen_qprintdialog_types.QPrintDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPrintDialog_virtualbase_sizeHint(self.h), owned: true)

proc cQPrintDialog_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPrintDialogminimumSizeHint*(self: gen_qprintdialog_types.QPrintDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPrintDialog_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQPrintDialog_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPrintDialogopen*(self: gen_qprintdialog_types.QPrintDialog): void =
  fcQPrintDialog_virtualbase_open(self.h)

proc cQPrintDialog_vtable_callback_open(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  vtbl[].open(self)

proc QPrintDialogreject*(self: gen_qprintdialog_types.QPrintDialog): void =
  fcQPrintDialog_virtualbase_reject(self.h)

proc cQPrintDialog_vtable_callback_reject(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  vtbl[].reject(self)

proc QPrintDialogkeyPressEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQPrintDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc cQPrintDialog_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QPrintDialogcloseEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QCloseEvent): void =
  fcQPrintDialog_virtualbase_closeEvent(self.h, param1.h)

proc cQPrintDialog_vtable_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QPrintDialogshowEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QShowEvent): void =
  fcQPrintDialog_virtualbase_showEvent(self.h, param1.h)

proc cQPrintDialog_vtable_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QPrintDialogresizeEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QResizeEvent): void =
  fcQPrintDialog_virtualbase_resizeEvent(self.h, param1.h)

proc cQPrintDialog_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QPrintDialogcontextMenuEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQPrintDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQPrintDialog_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QPrintDialogeventFilter*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQPrintDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc cQPrintDialog_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPrintDialogdevType*(self: gen_qprintdialog_types.QPrintDialog): cint =
  fcQPrintDialog_virtualbase_devType(self.h)

proc cQPrintDialog_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QPrintDialogheightForWidth*(self: gen_qprintdialog_types.QPrintDialog, param1: cint): cint =
  fcQPrintDialog_virtualbase_heightForWidth(self.h, param1)

proc cQPrintDialog_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QPrintDialoghasHeightForWidth*(self: gen_qprintdialog_types.QPrintDialog): bool =
  fcQPrintDialog_virtualbase_hasHeightForWidth(self.h)

proc cQPrintDialog_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QPrintDialogpaintEngine*(self: gen_qprintdialog_types.QPrintDialog): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPrintDialog_virtualbase_paintEngine(self.h), owned: false)

proc cQPrintDialog_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPrintDialogevent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQPrintDialog_virtualbase_event(self.h, event.h)

proc cQPrintDialog_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPrintDialogmousePressEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintDialog_virtualbase_mousePressEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QPrintDialogmouseReleaseEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QPrintDialogmouseDoubleClickEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QPrintDialogmouseMoveEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QPrintDialogwheelEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQPrintDialog_virtualbase_wheelEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QPrintDialogkeyReleaseEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQPrintDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QPrintDialogfocusInEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQPrintDialog_virtualbase_focusInEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QPrintDialogfocusOutEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQPrintDialog_virtualbase_focusOutEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QPrintDialogenterEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QEnterEvent): void =
  fcQPrintDialog_virtualbase_enterEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QPrintDialogleaveEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQPrintDialog_virtualbase_leaveEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QPrintDialogpaintEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQPrintDialog_virtualbase_paintEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QPrintDialogmoveEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQPrintDialog_virtualbase_moveEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QPrintDialogtabletEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQPrintDialog_virtualbase_tabletEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QPrintDialogactionEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QActionEvent): void =
  fcQPrintDialog_virtualbase_actionEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QPrintDialogdragEnterEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQPrintDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QPrintDialogdragMoveEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQPrintDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QPrintDialogdragLeaveEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQPrintDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QPrintDialogdropEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QDropEvent): void =
  fcQPrintDialog_virtualbase_dropEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QPrintDialoghideEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QHideEvent): void =
  fcQPrintDialog_virtualbase_hideEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QPrintDialognativeEvent*(self: gen_qprintdialog_types.QPrintDialog, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQPrintDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQPrintDialog_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPrintDialogchangeEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qcoreevent_types.QEvent): void =
  fcQPrintDialog_virtualbase_changeEvent(self.h, param1.h)

proc cQPrintDialog_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QPrintDialogmetric*(self: gen_qprintdialog_types.QPrintDialog, param1: cint): cint =
  fcQPrintDialog_virtualbase_metric(self.h, cint(param1))

proc cQPrintDialog_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QPrintDialoginitPainter*(self: gen_qprintdialog_types.QPrintDialog, painter: gen_qpainter_types.QPainter): void =
  fcQPrintDialog_virtualbase_initPainter(self.h, painter.h)

proc cQPrintDialog_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QPrintDialogredirected*(self: gen_qprintdialog_types.QPrintDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPrintDialog_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQPrintDialog_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPrintDialogsharedPainter*(self: gen_qprintdialog_types.QPrintDialog): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPrintDialog_virtualbase_sharedPainter(self.h), owned: false)

proc cQPrintDialog_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPrintDialoginputMethodEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQPrintDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQPrintDialog_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QPrintDialoginputMethodQuery*(self: gen_qprintdialog_types.QPrintDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPrintDialog_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQPrintDialog_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPrintDialogfocusNextPrevChild*(self: gen_qprintdialog_types.QPrintDialog, next: bool): bool =
  fcQPrintDialog_virtualbase_focusNextPrevChild(self.h, next)

proc cQPrintDialog_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QPrintDialogtimerEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPrintDialog_virtualbase_timerEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QPrintDialogchildEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPrintDialog_virtualbase_childEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QPrintDialogcustomEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQPrintDialog_virtualbase_customEvent(self.h, event.h)

proc cQPrintDialog_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QPrintDialogconnectNotify*(self: gen_qprintdialog_types.QPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPrintDialog_virtualbase_connectNotify(self.h, signal.h)

proc cQPrintDialog_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QPrintDialogdisconnectNotify*(self: gen_qprintdialog_types.QPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPrintDialog_virtualbase_disconnectNotify(self.h, signal.h)

proc cQPrintDialog_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](fcQPrintDialog_vdata(self))
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPrintDialog* {.inheritable.} = ref object of QPrintDialog
  vtbl*: cQPrintDialogVTable
method metaObject*(self: VirtualQPrintDialog): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPrintDialogmetaObject(self[])
proc cQPrintDialog_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQPrintDialog, param1: cstring): pointer {.base.} =
  QPrintDialogmetacast(self[], param1)
proc cQPrintDialog_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQPrintDialog, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPrintDialogmetacall(self[], param1, param2, param3)
proc cQPrintDialog_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method exec*(self: VirtualQPrintDialog): cint {.base.} =
  QPrintDialogexec(self[])
proc cQPrintDialog_method_callback_exec(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  var virtualReturn = inst.exec()
  virtualReturn

method accept*(self: VirtualQPrintDialog): void {.base.} =
  QPrintDialogaccept(self[])
proc cQPrintDialog_method_callback_accept(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  inst.accept()

method done*(self: VirtualQPrintDialog, resultVal: cint): void {.base.} =
  QPrintDialogdone(self[], resultVal)
proc cQPrintDialog_method_callback_done(self: pointer, resultVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = resultVal
  inst.done(slotval1)

method setVisible*(self: VirtualQPrintDialog, visible: bool): void {.base.} =
  QPrintDialogsetVisible(self[], visible)
proc cQPrintDialog_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method sizeHint*(self: VirtualQPrintDialog): gen_qsize_types.QSize {.base.} =
  QPrintDialogsizeHint(self[])
proc cQPrintDialog_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQPrintDialog): gen_qsize_types.QSize {.base.} =
  QPrintDialogminimumSizeHint(self[])
proc cQPrintDialog_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method open*(self: VirtualQPrintDialog): void {.base.} =
  QPrintDialogopen(self[])
proc cQPrintDialog_method_callback_open(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  inst.open()

method reject*(self: VirtualQPrintDialog): void {.base.} =
  QPrintDialogreject(self[])
proc cQPrintDialog_method_callback_reject(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  inst.reject()

method keyPressEvent*(self: VirtualQPrintDialog, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QPrintDialogkeyPressEvent(self[], param1)
proc cQPrintDialog_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

method closeEvent*(self: VirtualQPrintDialog, param1: gen_qevent_types.QCloseEvent): void {.base.} =
  QPrintDialogcloseEvent(self[], param1)
proc cQPrintDialog_method_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  inst.closeEvent(slotval1)

method showEvent*(self: VirtualQPrintDialog, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QPrintDialogshowEvent(self[], param1)
proc cQPrintDialog_method_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  inst.showEvent(slotval1)

method resizeEvent*(self: VirtualQPrintDialog, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QPrintDialogresizeEvent(self[], param1)
proc cQPrintDialog_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

method contextMenuEvent*(self: VirtualQPrintDialog, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QPrintDialogcontextMenuEvent(self[], param1)
proc cQPrintDialog_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method eventFilter*(self: VirtualQPrintDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPrintDialogeventFilter(self[], param1, param2)
proc cQPrintDialog_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method devType*(self: VirtualQPrintDialog): cint {.base.} =
  QPrintDialogdevType(self[])
proc cQPrintDialog_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method heightForWidth*(self: VirtualQPrintDialog, param1: cint): cint {.base.} =
  QPrintDialogheightForWidth(self[], param1)
proc cQPrintDialog_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQPrintDialog): bool {.base.} =
  QPrintDialoghasHeightForWidth(self[])
proc cQPrintDialog_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQPrintDialog): gen_qpaintengine_types.QPaintEngine {.base.} =
  QPrintDialogpaintEngine(self[])
proc cQPrintDialog_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQPrintDialog, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPrintDialogevent(self[], event)
proc cQPrintDialog_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPrintDialogmousePressEvent(self[], event)
proc cQPrintDialog_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPrintDialogmouseReleaseEvent(self[], event)
proc cQPrintDialog_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPrintDialogmouseDoubleClickEvent(self[], event)
proc cQPrintDialog_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPrintDialogmouseMoveEvent(self[], event)
proc cQPrintDialog_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QPrintDialogwheelEvent(self[], event)
proc cQPrintDialog_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyReleaseEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QPrintDialogkeyReleaseEvent(self[], event)
proc cQPrintDialog_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QPrintDialogfocusInEvent(self[], event)
proc cQPrintDialog_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QPrintDialogfocusOutEvent(self[], event)
proc cQPrintDialog_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QPrintDialogenterEvent(self[], event)
proc cQPrintDialog_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQPrintDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPrintDialogleaveEvent(self[], event)
proc cQPrintDialog_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method paintEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QPrintDialogpaintEvent(self[], event)
proc cQPrintDialog_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method moveEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QPrintDialogmoveEvent(self[], event)
proc cQPrintDialog_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method tabletEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QPrintDialogtabletEvent(self[], event)
proc cQPrintDialog_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QActionEvent): void {.base.} =
  QPrintDialogactionEvent(self[], event)
proc cQPrintDialog_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QPrintDialogdragEnterEvent(self[], event)
proc cQPrintDialog_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QPrintDialogdragMoveEvent(self[], event)
proc cQPrintDialog_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QPrintDialogdragLeaveEvent(self[], event)
proc cQPrintDialog_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QDropEvent): void {.base.} =
  QPrintDialogdropEvent(self[], event)
proc cQPrintDialog_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method hideEvent*(self: VirtualQPrintDialog, event: gen_qevent_types.QHideEvent): void {.base.} =
  QPrintDialoghideEvent(self[], event)
proc cQPrintDialog_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQPrintDialog, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QPrintDialognativeEvent(self[], eventType, message, resultVal)
proc cQPrintDialog_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQPrintDialog, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QPrintDialogchangeEvent(self[], param1)
proc cQPrintDialog_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method metric*(self: VirtualQPrintDialog, param1: cint): cint {.base.} =
  QPrintDialogmetric(self[], param1)
proc cQPrintDialog_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQPrintDialog, painter: gen_qpainter_types.QPainter): void {.base.} =
  QPrintDialoginitPainter(self[], painter)
proc cQPrintDialog_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQPrintDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QPrintDialogredirected(self[], offset)
proc cQPrintDialog_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQPrintDialog): gen_qpainter_types.QPainter {.base.} =
  QPrintDialogsharedPainter(self[])
proc cQPrintDialog_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQPrintDialog, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QPrintDialoginputMethodEvent(self[], param1)
proc cQPrintDialog_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQPrintDialog, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QPrintDialoginputMethodQuery(self[], param1)
proc cQPrintDialog_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQPrintDialog, next: bool): bool {.base.} =
  QPrintDialogfocusNextPrevChild(self[], next)
proc cQPrintDialog_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method timerEvent*(self: VirtualQPrintDialog, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPrintDialogtimerEvent(self[], event)
proc cQPrintDialog_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQPrintDialog, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPrintDialogchildEvent(self[], event)
proc cQPrintDialog_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQPrintDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPrintDialogcustomEvent(self[], event)
proc cQPrintDialog_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPrintDialogconnectNotify(self[], signal)
proc cQPrintDialog_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPrintDialogdisconnectNotify(self[], signal)
proc cQPrintDialog_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPrintDialog](fcQPrintDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc adjustPosition*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qwidget_types.QWidget): void =
  fcQPrintDialog_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qprintdialog_types.QPrintDialog): void =
  fcQPrintDialog_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qprintdialog_types.QPrintDialog): void =
  fcQPrintDialog_protectedbase_create(self.h)

proc destroy*(self: gen_qprintdialog_types.QPrintDialog): void =
  fcQPrintDialog_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qprintdialog_types.QPrintDialog): bool =
  fcQPrintDialog_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qprintdialog_types.QPrintDialog): bool =
  fcQPrintDialog_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qprintdialog_types.QPrintDialog): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPrintDialog_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qprintdialog_types.QPrintDialog): cint =
  fcQPrintDialog_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qprintdialog_types.QPrintDialog, signal: cstring): cint =
  fcQPrintDialog_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qprintdialog_types.QPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPrintDialog_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qprintdialog_types.QPrintDialog,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QPrintDialogVTable = nil): gen_qprintdialog_types.QPrintDialog =
  let vtbl = if vtbl == nil: new QPrintDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPrintDialogVTable](fcQPrintDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPrintDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPrintDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPrintDialog_vtable_callback_metacall
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQPrintDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQPrintDialog_vtable_callback_accept
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQPrintDialog_vtable_callback_done
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPrintDialog_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPrintDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPrintDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQPrintDialog_vtable_callback_open
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQPrintDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPrintDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPrintDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPrintDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPrintDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPrintDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPrintDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPrintDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPrintDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPrintDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPrintDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPrintDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPrintDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPrintDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPrintDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPrintDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPrintDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPrintDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPrintDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPrintDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPrintDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPrintDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPrintDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPrintDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPrintDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPrintDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPrintDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPrintDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPrintDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPrintDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPrintDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPrintDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPrintDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPrintDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPrintDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPrintDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPrintDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPrintDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPrintDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPrintDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPrintDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPrintDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPrintDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPrintDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPrintDialog_vtable_callback_disconnectNotify
  gen_qprintdialog_types.QPrintDialog(h: fcQPrintDialog_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qprintdialog_types.QPrintDialog,
    printer: gen_qprinter_types.QPrinter,
    vtbl: ref QPrintDialogVTable = nil): gen_qprintdialog_types.QPrintDialog =
  let vtbl = if vtbl == nil: new QPrintDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPrintDialogVTable](fcQPrintDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPrintDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPrintDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPrintDialog_vtable_callback_metacall
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQPrintDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQPrintDialog_vtable_callback_accept
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQPrintDialog_vtable_callback_done
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPrintDialog_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPrintDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPrintDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQPrintDialog_vtable_callback_open
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQPrintDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPrintDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPrintDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPrintDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPrintDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPrintDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPrintDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPrintDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPrintDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPrintDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPrintDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPrintDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPrintDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPrintDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPrintDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPrintDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPrintDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPrintDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPrintDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPrintDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPrintDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPrintDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPrintDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPrintDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPrintDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPrintDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPrintDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPrintDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPrintDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPrintDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPrintDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPrintDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPrintDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPrintDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPrintDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPrintDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPrintDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPrintDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPrintDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPrintDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPrintDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPrintDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPrintDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPrintDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPrintDialog_vtable_callback_disconnectNotify
  gen_qprintdialog_types.QPrintDialog(h: fcQPrintDialog_new2(addr(vtbl[].vtbl), addr(vtbl[]), printer.h), owned: true)

proc create*(T: type gen_qprintdialog_types.QPrintDialog,
    vtbl: ref QPrintDialogVTable = nil): gen_qprintdialog_types.QPrintDialog =
  let vtbl = if vtbl == nil: new QPrintDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPrintDialogVTable](fcQPrintDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPrintDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPrintDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPrintDialog_vtable_callback_metacall
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQPrintDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQPrintDialog_vtable_callback_accept
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQPrintDialog_vtable_callback_done
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPrintDialog_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPrintDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPrintDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQPrintDialog_vtable_callback_open
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQPrintDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPrintDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPrintDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPrintDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPrintDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPrintDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPrintDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPrintDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPrintDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPrintDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPrintDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPrintDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPrintDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPrintDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPrintDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPrintDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPrintDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPrintDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPrintDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPrintDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPrintDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPrintDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPrintDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPrintDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPrintDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPrintDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPrintDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPrintDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPrintDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPrintDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPrintDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPrintDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPrintDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPrintDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPrintDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPrintDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPrintDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPrintDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPrintDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPrintDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPrintDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPrintDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPrintDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPrintDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPrintDialog_vtable_callback_disconnectNotify
  gen_qprintdialog_types.QPrintDialog(h: fcQPrintDialog_new3(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qprintdialog_types.QPrintDialog,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget,
    vtbl: ref QPrintDialogVTable = nil): gen_qprintdialog_types.QPrintDialog =
  let vtbl = if vtbl == nil: new QPrintDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPrintDialogVTable](fcQPrintDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPrintDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPrintDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPrintDialog_vtable_callback_metacall
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQPrintDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQPrintDialog_vtable_callback_accept
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQPrintDialog_vtable_callback_done
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPrintDialog_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPrintDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPrintDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQPrintDialog_vtable_callback_open
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQPrintDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPrintDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPrintDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPrintDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPrintDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPrintDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPrintDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPrintDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPrintDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPrintDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPrintDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPrintDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPrintDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPrintDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPrintDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPrintDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPrintDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPrintDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPrintDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPrintDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPrintDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPrintDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPrintDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPrintDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPrintDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPrintDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPrintDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPrintDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPrintDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPrintDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPrintDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPrintDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPrintDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPrintDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPrintDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPrintDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPrintDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPrintDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPrintDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPrintDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPrintDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPrintDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPrintDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPrintDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPrintDialog_vtable_callback_disconnectNotify
  gen_qprintdialog_types.QPrintDialog(h: fcQPrintDialog_new4(addr(vtbl[].vtbl), addr(vtbl[]), printer.h, parent.h), owned: true)

const cQPrintDialog_mvtbl = cQPrintDialogVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPrintDialog()[])](self.fcQPrintDialog_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQPrintDialog_method_callback_metaObject,
  metacast: cQPrintDialog_method_callback_metacast,
  metacall: cQPrintDialog_method_callback_metacall,
  exec: cQPrintDialog_method_callback_exec,
  accept: cQPrintDialog_method_callback_accept,
  done: cQPrintDialog_method_callback_done,
  setVisible: cQPrintDialog_method_callback_setVisible,
  sizeHint: cQPrintDialog_method_callback_sizeHint,
  minimumSizeHint: cQPrintDialog_method_callback_minimumSizeHint,
  open: cQPrintDialog_method_callback_open,
  reject: cQPrintDialog_method_callback_reject,
  keyPressEvent: cQPrintDialog_method_callback_keyPressEvent,
  closeEvent: cQPrintDialog_method_callback_closeEvent,
  showEvent: cQPrintDialog_method_callback_showEvent,
  resizeEvent: cQPrintDialog_method_callback_resizeEvent,
  contextMenuEvent: cQPrintDialog_method_callback_contextMenuEvent,
  eventFilter: cQPrintDialog_method_callback_eventFilter,
  devType: cQPrintDialog_method_callback_devType,
  heightForWidth: cQPrintDialog_method_callback_heightForWidth,
  hasHeightForWidth: cQPrintDialog_method_callback_hasHeightForWidth,
  paintEngine: cQPrintDialog_method_callback_paintEngine,
  event: cQPrintDialog_method_callback_event,
  mousePressEvent: cQPrintDialog_method_callback_mousePressEvent,
  mouseReleaseEvent: cQPrintDialog_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQPrintDialog_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQPrintDialog_method_callback_mouseMoveEvent,
  wheelEvent: cQPrintDialog_method_callback_wheelEvent,
  keyReleaseEvent: cQPrintDialog_method_callback_keyReleaseEvent,
  focusInEvent: cQPrintDialog_method_callback_focusInEvent,
  focusOutEvent: cQPrintDialog_method_callback_focusOutEvent,
  enterEvent: cQPrintDialog_method_callback_enterEvent,
  leaveEvent: cQPrintDialog_method_callback_leaveEvent,
  paintEvent: cQPrintDialog_method_callback_paintEvent,
  moveEvent: cQPrintDialog_method_callback_moveEvent,
  tabletEvent: cQPrintDialog_method_callback_tabletEvent,
  actionEvent: cQPrintDialog_method_callback_actionEvent,
  dragEnterEvent: cQPrintDialog_method_callback_dragEnterEvent,
  dragMoveEvent: cQPrintDialog_method_callback_dragMoveEvent,
  dragLeaveEvent: cQPrintDialog_method_callback_dragLeaveEvent,
  dropEvent: cQPrintDialog_method_callback_dropEvent,
  hideEvent: cQPrintDialog_method_callback_hideEvent,
  nativeEvent: cQPrintDialog_method_callback_nativeEvent,
  changeEvent: cQPrintDialog_method_callback_changeEvent,
  metric: cQPrintDialog_method_callback_metric,
  initPainter: cQPrintDialog_method_callback_initPainter,
  redirected: cQPrintDialog_method_callback_redirected,
  sharedPainter: cQPrintDialog_method_callback_sharedPainter,
  inputMethodEvent: cQPrintDialog_method_callback_inputMethodEvent,
  inputMethodQuery: cQPrintDialog_method_callback_inputMethodQuery,
  focusNextPrevChild: cQPrintDialog_method_callback_focusNextPrevChild,
  timerEvent: cQPrintDialog_method_callback_timerEvent,
  childEvent: cQPrintDialog_method_callback_childEvent,
  customEvent: cQPrintDialog_method_callback_customEvent,
  connectNotify: cQPrintDialog_method_callback_connectNotify,
  disconnectNotify: cQPrintDialog_method_callback_disconnectNotify,
)
proc create*(T: type gen_qprintdialog_types.QPrintDialog,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQPrintDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPrintDialog_new(addr(cQPrintDialog_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qprintdialog_types.QPrintDialog,
    printer: gen_qprinter_types.QPrinter,
    inst: VirtualQPrintDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPrintDialog_new2(addr(cQPrintDialog_mvtbl), addr(inst[]), printer.h)
  inst[].owned = true

proc create*(T: type gen_qprintdialog_types.QPrintDialog,
    inst: VirtualQPrintDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPrintDialog_new3(addr(cQPrintDialog_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qprintdialog_types.QPrintDialog,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget,
    inst: VirtualQPrintDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPrintDialog_new4(addr(cQPrintDialog_mvtbl), addr(inst[]), printer.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qprintdialog_types.QPrintDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintDialog_staticMetaObject())
