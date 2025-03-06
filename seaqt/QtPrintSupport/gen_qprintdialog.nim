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
{.compile("gen_qprintdialog.cpp", cflags).}


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

proc fcQPrintDialog_metaObject(self: pointer, ): pointer {.importc: "QPrintDialog_metaObject".}
proc fcQPrintDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QPrintDialog_metacast".}
proc fcQPrintDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPrintDialog_metacall".}
proc fcQPrintDialog_tr(s: cstring): struct_miqt_string {.importc: "QPrintDialog_tr".}
proc fcQPrintDialog_exec(self: pointer, ): cint {.importc: "QPrintDialog_exec".}
proc fcQPrintDialog_accept(self: pointer, ): void {.importc: "QPrintDialog_accept".}
proc fcQPrintDialog_done(self: pointer, resultVal: cint): void {.importc: "QPrintDialog_done".}
proc fcQPrintDialog_setOption(self: pointer, option: cint): void {.importc: "QPrintDialog_setOption".}
proc fcQPrintDialog_testOption(self: pointer, option: cint): bool {.importc: "QPrintDialog_testOption".}
proc fcQPrintDialog_setOptions(self: pointer, options: cint): void {.importc: "QPrintDialog_setOptions".}
proc fcQPrintDialog_options(self: pointer, ): cint {.importc: "QPrintDialog_options".}
proc fcQPrintDialog_setVisible(self: pointer, visible: bool): void {.importc: "QPrintDialog_setVisible".}
proc fcQPrintDialog_accepted(self: pointer, printer: pointer): void {.importc: "QPrintDialog_accepted".}
proc fcQPrintDialog_connect_accepted(self: pointer, slot: int) {.importc: "QPrintDialog_connect_accepted".}
proc fcQPrintDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPrintDialog_tr2".}
proc fcQPrintDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPrintDialog_tr3".}
proc fcQPrintDialog_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QPrintDialog_setOption2".}
type cQPrintDialogVTable = object
  destructor*: proc(vtbl: ptr cQPrintDialogVTable, self: ptr cQPrintDialog) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  exec*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  accept*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  done*: proc(vtbl, self: pointer, resultVal: cint): void {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  reject*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPrintDialog_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QPrintDialog_virtualbase_metaObject".}
proc fcQPrintDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPrintDialog_virtualbase_metacast".}
proc fcQPrintDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPrintDialog_virtualbase_metacall".}
proc fcQPrintDialog_virtualbase_exec(self: pointer, ): cint {.importc: "QPrintDialog_virtualbase_exec".}
proc fcQPrintDialog_virtualbase_accept(self: pointer, ): void {.importc: "QPrintDialog_virtualbase_accept".}
proc fcQPrintDialog_virtualbase_done(self: pointer, resultVal: cint): void {.importc: "QPrintDialog_virtualbase_done".}
proc fcQPrintDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QPrintDialog_virtualbase_setVisible".}
proc fcQPrintDialog_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QPrintDialog_virtualbase_sizeHint".}
proc fcQPrintDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QPrintDialog_virtualbase_minimumSizeHint".}
proc fcQPrintDialog_virtualbase_open(self: pointer, ): void {.importc: "QPrintDialog_virtualbase_open".}
proc fcQPrintDialog_virtualbase_reject(self: pointer, ): void {.importc: "QPrintDialog_virtualbase_reject".}
proc fcQPrintDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QPrintDialog_virtualbase_keyPressEvent".}
proc fcQPrintDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QPrintDialog_virtualbase_closeEvent".}
proc fcQPrintDialog_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QPrintDialog_virtualbase_showEvent".}
proc fcQPrintDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QPrintDialog_virtualbase_resizeEvent".}
proc fcQPrintDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QPrintDialog_virtualbase_contextMenuEvent".}
proc fcQPrintDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QPrintDialog_virtualbase_eventFilter".}
proc fcQPrintDialog_virtualbase_devType(self: pointer, ): cint {.importc: "QPrintDialog_virtualbase_devType".}
proc fcQPrintDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QPrintDialog_virtualbase_heightForWidth".}
proc fcQPrintDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QPrintDialog_virtualbase_hasHeightForWidth".}
proc fcQPrintDialog_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QPrintDialog_virtualbase_paintEngine".}
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
proc fcQPrintDialog_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QPrintDialog_virtualbase_sharedPainter".}
proc fcQPrintDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QPrintDialog_virtualbase_inputMethodEvent".}
proc fcQPrintDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QPrintDialog_virtualbase_inputMethodQuery".}
proc fcQPrintDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QPrintDialog_virtualbase_focusNextPrevChild".}
proc fcQPrintDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_timerEvent".}
proc fcQPrintDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_childEvent".}
proc fcQPrintDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPrintDialog_virtualbase_customEvent".}
proc fcQPrintDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPrintDialog_virtualbase_connectNotify".}
proc fcQPrintDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPrintDialog_virtualbase_disconnectNotify".}
proc fcQPrintDialog_new(vtbl: pointer, parent: pointer): ptr cQPrintDialog {.importc: "QPrintDialog_new".}
proc fcQPrintDialog_new2(vtbl: pointer, printer: pointer): ptr cQPrintDialog {.importc: "QPrintDialog_new2".}
proc fcQPrintDialog_new3(vtbl: pointer, ): ptr cQPrintDialog {.importc: "QPrintDialog_new3".}
proc fcQPrintDialog_new4(vtbl: pointer, printer: pointer, parent: pointer): ptr cQPrintDialog {.importc: "QPrintDialog_new4".}
proc fcQPrintDialog_staticMetaObject(): pointer {.importc: "QPrintDialog_staticMetaObject".}
proc fcQPrintDialog_delete(self: pointer) {.importc: "QPrintDialog_delete".}

proc metaObject*(self: gen_qprintdialog_types.QPrintDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintDialog_metaObject(self.h))

proc metacast*(self: gen_qprintdialog_types.QPrintDialog, param1: cstring): pointer =
  fcQPrintDialog_metacast(self.h, param1)

proc metacall*(self: gen_qprintdialog_types.QPrintDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQPrintDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qprintdialog_types.QPrintDialog, s: cstring): string =
  let v_ms = fcQPrintDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc exec*(self: gen_qprintdialog_types.QPrintDialog, ): cint =
  fcQPrintDialog_exec(self.h)

proc accept*(self: gen_qprintdialog_types.QPrintDialog, ): void =
  fcQPrintDialog_accept(self.h)

proc done*(self: gen_qprintdialog_types.QPrintDialog, resultVal: cint): void =
  fcQPrintDialog_done(self.h, resultVal)

proc setOption*(self: gen_qprintdialog_types.QPrintDialog, option: cint): void =
  fcQPrintDialog_setOption(self.h, cint(option))

proc testOption*(self: gen_qprintdialog_types.QPrintDialog, option: cint): bool =
  fcQPrintDialog_testOption(self.h, cint(option))

proc setOptions*(self: gen_qprintdialog_types.QPrintDialog, options: cint): void =
  fcQPrintDialog_setOptions(self.h, cint(options))

proc options*(self: gen_qprintdialog_types.QPrintDialog, ): cint =
  cint(fcQPrintDialog_options(self.h))

proc setVisible*(self: gen_qprintdialog_types.QPrintDialog, visible: bool): void =
  fcQPrintDialog_setVisible(self.h, visible)

proc accepted*(self: gen_qprintdialog_types.QPrintDialog, printer: gen_qprinter_types.QPrinter): void =
  fcQPrintDialog_accepted(self.h, printer.h)

type QPrintDialogacceptedSlot* = proc(printer: gen_qprinter_types.QPrinter)
proc miqt_exec_callback_cQPrintDialog_accepted(slot: int, printer: pointer) {.exportc: "miqt_exec_callback_QPrintDialog_accepted".} =
  let nimfunc = cast[ptr QPrintDialogacceptedSlot](cast[pointer](slot))
  let slotval1 = gen_qprinter_types.QPrinter(h: printer)

  nimfunc[](slotval1)

proc onaccepted*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogacceptedSlot) =
  var tmp = new QPrintDialogacceptedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_connect_accepted(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qprintdialog_types.QPrintDialog, s: cstring, c: cstring): string =
  let v_ms = fcQPrintDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qprintdialog_types.QPrintDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPrintDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QPrintDialognativeEventProc* = proc(self: QPrintDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
type QPrintDialogVTable* = object
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
proc QPrintDialogmetaObject*(self: gen_qprintdialog_types.QPrintDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintDialog_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQPrintDialog_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QPrintDialogmetacast*(self: gen_qprintdialog_types.QPrintDialog, param1: cstring): pointer =
  fcQPrintDialog_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQPrintDialog_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPrintDialogmetacall*(self: gen_qprintdialog_types.QPrintDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQPrintDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQPrintDialog_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPrintDialogexec*(self: gen_qprintdialog_types.QPrintDialog, ): cint =
  fcQPrintDialog_virtualbase_exec(self.h)

proc miqt_exec_callback_cQPrintDialog_exec(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QPrintDialogaccept*(self: gen_qprintdialog_types.QPrintDialog, ): void =
  fcQPrintDialog_virtualbase_accept(self.h)

proc miqt_exec_callback_cQPrintDialog_accept(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  vtbl[].accept(self)

proc QPrintDialogdone*(self: gen_qprintdialog_types.QPrintDialog, resultVal: cint): void =
  fcQPrintDialog_virtualbase_done(self.h, resultVal)

proc miqt_exec_callback_cQPrintDialog_done(vtbl: pointer, self: pointer, resultVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = resultVal
  vtbl[].done(self, slotval1)

proc QPrintDialogsetVisible*(self: gen_qprintdialog_types.QPrintDialog, visible: bool): void =
  fcQPrintDialog_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQPrintDialog_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QPrintDialogsizeHint*(self: gen_qprintdialog_types.QPrintDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPrintDialog_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQPrintDialog_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QPrintDialogminimumSizeHint*(self: gen_qprintdialog_types.QPrintDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPrintDialog_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQPrintDialog_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QPrintDialogopen*(self: gen_qprintdialog_types.QPrintDialog, ): void =
  fcQPrintDialog_virtualbase_open(self.h)

proc miqt_exec_callback_cQPrintDialog_open(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  vtbl[].open(self)

proc QPrintDialogreject*(self: gen_qprintdialog_types.QPrintDialog, ): void =
  fcQPrintDialog_virtualbase_reject(self.h)

proc miqt_exec_callback_cQPrintDialog_reject(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  vtbl[].reject(self)

proc QPrintDialogkeyPressEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQPrintDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQPrintDialog_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QPrintDialogcloseEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QCloseEvent): void =
  fcQPrintDialog_virtualbase_closeEvent(self.h, param1.h)

proc miqt_exec_callback_cQPrintDialog_closeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)
  vtbl[].closeEvent(self, slotval1)

proc QPrintDialogshowEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QShowEvent): void =
  fcQPrintDialog_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQPrintDialog_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)
  vtbl[].showEvent(self, slotval1)

proc QPrintDialogresizeEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QResizeEvent): void =
  fcQPrintDialog_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQPrintDialog_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)
  vtbl[].resizeEvent(self, slotval1)

proc QPrintDialogcontextMenuEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQPrintDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQPrintDialog_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QPrintDialogeventFilter*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQPrintDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQPrintDialog_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPrintDialogdevType*(self: gen_qprintdialog_types.QPrintDialog, ): cint =
  fcQPrintDialog_virtualbase_devType(self.h)

proc miqt_exec_callback_cQPrintDialog_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QPrintDialogheightForWidth*(self: gen_qprintdialog_types.QPrintDialog, param1: cint): cint =
  fcQPrintDialog_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQPrintDialog_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QPrintDialoghasHeightForWidth*(self: gen_qprintdialog_types.QPrintDialog, ): bool =
  fcQPrintDialog_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQPrintDialog_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QPrintDialogpaintEngine*(self: gen_qprintdialog_types.QPrintDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPrintDialog_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQPrintDialog_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QPrintDialogevent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQPrintDialog_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPrintDialogmousePressEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintDialog_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QPrintDialogmouseReleaseEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QPrintDialogmouseDoubleClickEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QPrintDialogmouseMoveEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPrintDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QPrintDialogwheelEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQPrintDialog_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QPrintDialogkeyReleaseEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQPrintDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QPrintDialogfocusInEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQPrintDialog_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QPrintDialogfocusOutEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQPrintDialog_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QPrintDialogenterEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QEnterEvent): void =
  fcQPrintDialog_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QPrintDialogleaveEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQPrintDialog_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QPrintDialogpaintEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQPrintDialog_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QPrintDialogmoveEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQPrintDialog_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QPrintDialogtabletEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQPrintDialog_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QPrintDialogactionEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QActionEvent): void =
  fcQPrintDialog_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QPrintDialogdragEnterEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQPrintDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QPrintDialogdragMoveEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQPrintDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QPrintDialogdragLeaveEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQPrintDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QPrintDialogdropEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QDropEvent): void =
  fcQPrintDialog_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QPrintDialoghideEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QHideEvent): void =
  fcQPrintDialog_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QPrintDialognativeEvent*(self: gen_qprintdialog_types.QPrintDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQPrintDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQPrintDialog_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPrintDialogchangeEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qcoreevent_types.QEvent): void =
  fcQPrintDialog_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQPrintDialog_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QPrintDialogmetric*(self: gen_qprintdialog_types.QPrintDialog, param1: cint): cint =
  fcQPrintDialog_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQPrintDialog_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QPrintDialoginitPainter*(self: gen_qprintdialog_types.QPrintDialog, painter: gen_qpainter_types.QPainter): void =
  fcQPrintDialog_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQPrintDialog_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QPrintDialogredirected*(self: gen_qprintdialog_types.QPrintDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPrintDialog_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQPrintDialog_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QPrintDialogsharedPainter*(self: gen_qprintdialog_types.QPrintDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPrintDialog_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQPrintDialog_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QPrintDialoginputMethodEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQPrintDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQPrintDialog_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QPrintDialoginputMethodQuery*(self: gen_qprintdialog_types.QPrintDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPrintDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQPrintDialog_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QPrintDialogfocusNextPrevChild*(self: gen_qprintdialog_types.QPrintDialog, next: bool): bool =
  fcQPrintDialog_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQPrintDialog_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QPrintDialogtimerEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPrintDialog_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QPrintDialogchildEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPrintDialog_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QPrintDialogcustomEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQPrintDialog_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQPrintDialog_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QPrintDialogconnectNotify*(self: gen_qprintdialog_types.QPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPrintDialog_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPrintDialog_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QPrintDialogdisconnectNotify*(self: gen_qprintdialog_types.QPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPrintDialog_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPrintDialog_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrintDialogVTable](vtbl)
  let self = QPrintDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qprintdialog_types.QPrintDialog,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QPrintDialogVTable = nil): gen_qprintdialog_types.QPrintDialog =
  let vtbl = if vtbl == nil: new QPrintDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPrintDialogVTable, _: ptr cQPrintDialog) {.cdecl.} =
    let vtbl = cast[ref QPrintDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPrintDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPrintDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPrintDialog_metacall
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQPrintDialog_exec
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQPrintDialog_accept
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQPrintDialog_done
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQPrintDialog_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQPrintDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQPrintDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQPrintDialog_open
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQPrintDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQPrintDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQPrintDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQPrintDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQPrintDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQPrintDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPrintDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPrintDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQPrintDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQPrintDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPrintDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPrintDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQPrintDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQPrintDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQPrintDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQPrintDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQPrintDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQPrintDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQPrintDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQPrintDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQPrintDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQPrintDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQPrintDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQPrintDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQPrintDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQPrintDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQPrintDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQPrintDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQPrintDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQPrintDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQPrintDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQPrintDialog_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQPrintDialog_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPrintDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPrintDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPrintDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPrintDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQPrintDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQPrintDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQPrintDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPrintDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPrintDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPrintDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPrintDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPrintDialog_disconnectNotify
  gen_qprintdialog_types.QPrintDialog(h: fcQPrintDialog_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qprintdialog_types.QPrintDialog,
    printer: gen_qprinter_types.QPrinter,
    vtbl: ref QPrintDialogVTable = nil): gen_qprintdialog_types.QPrintDialog =
  let vtbl = if vtbl == nil: new QPrintDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPrintDialogVTable, _: ptr cQPrintDialog) {.cdecl.} =
    let vtbl = cast[ref QPrintDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPrintDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPrintDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPrintDialog_metacall
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQPrintDialog_exec
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQPrintDialog_accept
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQPrintDialog_done
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQPrintDialog_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQPrintDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQPrintDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQPrintDialog_open
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQPrintDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQPrintDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQPrintDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQPrintDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQPrintDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQPrintDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPrintDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPrintDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQPrintDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQPrintDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPrintDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPrintDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQPrintDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQPrintDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQPrintDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQPrintDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQPrintDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQPrintDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQPrintDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQPrintDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQPrintDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQPrintDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQPrintDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQPrintDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQPrintDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQPrintDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQPrintDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQPrintDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQPrintDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQPrintDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQPrintDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQPrintDialog_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQPrintDialog_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPrintDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPrintDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPrintDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPrintDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQPrintDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQPrintDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQPrintDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPrintDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPrintDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPrintDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPrintDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPrintDialog_disconnectNotify
  gen_qprintdialog_types.QPrintDialog(h: fcQPrintDialog_new2(addr(vtbl[]), printer.h))

proc create*(T: type gen_qprintdialog_types.QPrintDialog,
    vtbl: ref QPrintDialogVTable = nil): gen_qprintdialog_types.QPrintDialog =
  let vtbl = if vtbl == nil: new QPrintDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPrintDialogVTable, _: ptr cQPrintDialog) {.cdecl.} =
    let vtbl = cast[ref QPrintDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPrintDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPrintDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPrintDialog_metacall
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQPrintDialog_exec
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQPrintDialog_accept
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQPrintDialog_done
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQPrintDialog_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQPrintDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQPrintDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQPrintDialog_open
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQPrintDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQPrintDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQPrintDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQPrintDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQPrintDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQPrintDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPrintDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPrintDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQPrintDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQPrintDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPrintDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPrintDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQPrintDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQPrintDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQPrintDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQPrintDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQPrintDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQPrintDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQPrintDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQPrintDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQPrintDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQPrintDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQPrintDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQPrintDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQPrintDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQPrintDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQPrintDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQPrintDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQPrintDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQPrintDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQPrintDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQPrintDialog_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQPrintDialog_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPrintDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPrintDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPrintDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPrintDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQPrintDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQPrintDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQPrintDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPrintDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPrintDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPrintDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPrintDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPrintDialog_disconnectNotify
  gen_qprintdialog_types.QPrintDialog(h: fcQPrintDialog_new3(addr(vtbl[]), ))

proc create*(T: type gen_qprintdialog_types.QPrintDialog,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget,
    vtbl: ref QPrintDialogVTable = nil): gen_qprintdialog_types.QPrintDialog =
  let vtbl = if vtbl == nil: new QPrintDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPrintDialogVTable, _: ptr cQPrintDialog) {.cdecl.} =
    let vtbl = cast[ref QPrintDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPrintDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPrintDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPrintDialog_metacall
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQPrintDialog_exec
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQPrintDialog_accept
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQPrintDialog_done
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQPrintDialog_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQPrintDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQPrintDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQPrintDialog_open
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQPrintDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQPrintDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQPrintDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQPrintDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQPrintDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQPrintDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPrintDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPrintDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQPrintDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQPrintDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPrintDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPrintDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQPrintDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQPrintDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQPrintDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQPrintDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQPrintDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQPrintDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQPrintDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQPrintDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQPrintDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQPrintDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQPrintDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQPrintDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQPrintDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQPrintDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQPrintDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQPrintDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQPrintDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQPrintDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQPrintDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQPrintDialog_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQPrintDialog_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPrintDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPrintDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPrintDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPrintDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQPrintDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQPrintDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQPrintDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPrintDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPrintDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPrintDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPrintDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPrintDialog_disconnectNotify
  gen_qprintdialog_types.QPrintDialog(h: fcQPrintDialog_new4(addr(vtbl[]), printer.h, parent.h))

proc staticMetaObject*(_: type gen_qprintdialog_types.QPrintDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintDialog_staticMetaObject())
proc delete*(self: gen_qprintdialog_types.QPrintDialog) =
  fcQPrintDialog_delete(self.h)
