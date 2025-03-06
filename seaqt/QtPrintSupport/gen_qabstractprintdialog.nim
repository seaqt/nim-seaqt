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
{.compile("gen_qabstractprintdialog.cpp", cflags).}


type QAbstractPrintDialogPrintRangeEnum* = distinct cint
template AllPages*(_: type QAbstractPrintDialogPrintRangeEnum): untyped = 0
template Selection*(_: type QAbstractPrintDialogPrintRangeEnum): untyped = 1
template PageRange*(_: type QAbstractPrintDialogPrintRangeEnum): untyped = 2
template CurrentPage*(_: type QAbstractPrintDialogPrintRangeEnum): untyped = 3


type QAbstractPrintDialogPrintDialogOptionEnum* = distinct cint
template None*(_: type QAbstractPrintDialogPrintDialogOptionEnum): untyped = 0
template PrintToFile*(_: type QAbstractPrintDialogPrintDialogOptionEnum): untyped = 1
template PrintSelection*(_: type QAbstractPrintDialogPrintDialogOptionEnum): untyped = 2
template PrintPageRange*(_: type QAbstractPrintDialogPrintDialogOptionEnum): untyped = 4
template PrintShowPageSize*(_: type QAbstractPrintDialogPrintDialogOptionEnum): untyped = 8
template PrintCollateCopies*(_: type QAbstractPrintDialogPrintDialogOptionEnum): untyped = 16
template DontUseSheet*(_: type QAbstractPrintDialogPrintDialogOptionEnum): untyped = 32
template PrintCurrentPage*(_: type QAbstractPrintDialogPrintDialogOptionEnum): untyped = 64


import ./gen_qabstractprintdialog_types
export gen_qabstractprintdialog_types

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

type cQAbstractPrintDialog*{.exportc: "QAbstractPrintDialog", incompleteStruct.} = object

proc fcQAbstractPrintDialog_metaObject(self: pointer, ): pointer {.importc: "QAbstractPrintDialog_metaObject".}
proc fcQAbstractPrintDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractPrintDialog_metacast".}
proc fcQAbstractPrintDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractPrintDialog_metacall".}
proc fcQAbstractPrintDialog_tr(s: cstring): struct_miqt_string {.importc: "QAbstractPrintDialog_tr".}
proc fcQAbstractPrintDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractPrintDialog_trUtf8".}
proc fcQAbstractPrintDialog_addEnabledOption(self: pointer, option: cint): void {.importc: "QAbstractPrintDialog_addEnabledOption".}
proc fcQAbstractPrintDialog_setEnabledOptions(self: pointer, options: cint): void {.importc: "QAbstractPrintDialog_setEnabledOptions".}
proc fcQAbstractPrintDialog_enabledOptions(self: pointer, ): cint {.importc: "QAbstractPrintDialog_enabledOptions".}
proc fcQAbstractPrintDialog_isOptionEnabled(self: pointer, option: cint): bool {.importc: "QAbstractPrintDialog_isOptionEnabled".}
proc fcQAbstractPrintDialog_setOptionTabs(self: pointer, tabs: struct_miqt_array): void {.importc: "QAbstractPrintDialog_setOptionTabs".}
proc fcQAbstractPrintDialog_setPrintRange(self: pointer, range: cint): void {.importc: "QAbstractPrintDialog_setPrintRange".}
proc fcQAbstractPrintDialog_printRange(self: pointer, ): cint {.importc: "QAbstractPrintDialog_printRange".}
proc fcQAbstractPrintDialog_setMinMax(self: pointer, min: cint, max: cint): void {.importc: "QAbstractPrintDialog_setMinMax".}
proc fcQAbstractPrintDialog_minPage(self: pointer, ): cint {.importc: "QAbstractPrintDialog_minPage".}
proc fcQAbstractPrintDialog_maxPage(self: pointer, ): cint {.importc: "QAbstractPrintDialog_maxPage".}
proc fcQAbstractPrintDialog_setFromTo(self: pointer, fromPage: cint, toPage: cint): void {.importc: "QAbstractPrintDialog_setFromTo".}
proc fcQAbstractPrintDialog_fromPage(self: pointer, ): cint {.importc: "QAbstractPrintDialog_fromPage".}
proc fcQAbstractPrintDialog_toPage(self: pointer, ): cint {.importc: "QAbstractPrintDialog_toPage".}
proc fcQAbstractPrintDialog_printer(self: pointer, ): pointer {.importc: "QAbstractPrintDialog_printer".}
proc fcQAbstractPrintDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractPrintDialog_tr2".}
proc fcQAbstractPrintDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractPrintDialog_tr3".}
proc fcQAbstractPrintDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractPrintDialog_trUtf82".}
proc fcQAbstractPrintDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractPrintDialog_trUtf83".}
type cQAbstractPrintDialogVTable = object
  destructor*: proc(vtbl: ptr cQAbstractPrintDialogVTable, self: ptr cQAbstractPrintDialog) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  done*: proc(vtbl, self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
  accept*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQAbstractPrintDialog_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAbstractPrintDialog_virtualbase_metaObject".}
proc fcQAbstractPrintDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractPrintDialog_virtualbase_metacast".}
proc fcQAbstractPrintDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractPrintDialog_virtualbase_metacall".}
proc fcQAbstractPrintDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QAbstractPrintDialog_virtualbase_setVisible".}
proc fcQAbstractPrintDialog_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QAbstractPrintDialog_virtualbase_sizeHint".}
proc fcQAbstractPrintDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QAbstractPrintDialog_virtualbase_minimumSizeHint".}
proc fcQAbstractPrintDialog_virtualbase_open(self: pointer, ): void {.importc: "QAbstractPrintDialog_virtualbase_open".}
proc fcQAbstractPrintDialog_virtualbase_exec(self: pointer, ): cint {.importc: "QAbstractPrintDialog_virtualbase_exec".}
proc fcQAbstractPrintDialog_virtualbase_done(self: pointer, param1: cint): void {.importc: "QAbstractPrintDialog_virtualbase_done".}
proc fcQAbstractPrintDialog_virtualbase_accept(self: pointer, ): void {.importc: "QAbstractPrintDialog_virtualbase_accept".}
proc fcQAbstractPrintDialog_virtualbase_reject(self: pointer, ): void {.importc: "QAbstractPrintDialog_virtualbase_reject".}
proc fcQAbstractPrintDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_keyPressEvent".}
proc fcQAbstractPrintDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_closeEvent".}
proc fcQAbstractPrintDialog_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_showEvent".}
proc fcQAbstractPrintDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_resizeEvent".}
proc fcQAbstractPrintDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_contextMenuEvent".}
proc fcQAbstractPrintDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QAbstractPrintDialog_virtualbase_eventFilter".}
proc fcQAbstractPrintDialog_virtualbase_devType(self: pointer, ): cint {.importc: "QAbstractPrintDialog_virtualbase_devType".}
proc fcQAbstractPrintDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QAbstractPrintDialog_virtualbase_heightForWidth".}
proc fcQAbstractPrintDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QAbstractPrintDialog_virtualbase_hasHeightForWidth".}
proc fcQAbstractPrintDialog_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QAbstractPrintDialog_virtualbase_paintEngine".}
proc fcQAbstractPrintDialog_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractPrintDialog_virtualbase_event".}
proc fcQAbstractPrintDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_mousePressEvent".}
proc fcQAbstractPrintDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_mouseReleaseEvent".}
proc fcQAbstractPrintDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractPrintDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_mouseMoveEvent".}
proc fcQAbstractPrintDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_wheelEvent".}
proc fcQAbstractPrintDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_keyReleaseEvent".}
proc fcQAbstractPrintDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_focusInEvent".}
proc fcQAbstractPrintDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_focusOutEvent".}
proc fcQAbstractPrintDialog_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_enterEvent".}
proc fcQAbstractPrintDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_leaveEvent".}
proc fcQAbstractPrintDialog_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_paintEvent".}
proc fcQAbstractPrintDialog_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_moveEvent".}
proc fcQAbstractPrintDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_tabletEvent".}
proc fcQAbstractPrintDialog_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_actionEvent".}
proc fcQAbstractPrintDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_dragEnterEvent".}
proc fcQAbstractPrintDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_dragMoveEvent".}
proc fcQAbstractPrintDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_dragLeaveEvent".}
proc fcQAbstractPrintDialog_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_dropEvent".}
proc fcQAbstractPrintDialog_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_hideEvent".}
proc fcQAbstractPrintDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QAbstractPrintDialog_virtualbase_nativeEvent".}
proc fcQAbstractPrintDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_changeEvent".}
proc fcQAbstractPrintDialog_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QAbstractPrintDialog_virtualbase_metric".}
proc fcQAbstractPrintDialog_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_initPainter".}
proc fcQAbstractPrintDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QAbstractPrintDialog_virtualbase_redirected".}
proc fcQAbstractPrintDialog_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QAbstractPrintDialog_virtualbase_sharedPainter".}
proc fcQAbstractPrintDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_inputMethodEvent".}
proc fcQAbstractPrintDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QAbstractPrintDialog_virtualbase_inputMethodQuery".}
proc fcQAbstractPrintDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QAbstractPrintDialog_virtualbase_focusNextPrevChild".}
proc fcQAbstractPrintDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_timerEvent".}
proc fcQAbstractPrintDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_childEvent".}
proc fcQAbstractPrintDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_customEvent".}
proc fcQAbstractPrintDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_connectNotify".}
proc fcQAbstractPrintDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_disconnectNotify".}
proc fcQAbstractPrintDialog_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QAbstractPrintDialog_protectedbase_adjustPosition".}
proc fcQAbstractPrintDialog_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QAbstractPrintDialog_protectedbase_updateMicroFocus".}
proc fcQAbstractPrintDialog_protectedbase_create(self: pointer, ): void {.importc: "QAbstractPrintDialog_protectedbase_create".}
proc fcQAbstractPrintDialog_protectedbase_destroy(self: pointer, ): void {.importc: "QAbstractPrintDialog_protectedbase_destroy".}
proc fcQAbstractPrintDialog_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QAbstractPrintDialog_protectedbase_focusNextChild".}
proc fcQAbstractPrintDialog_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QAbstractPrintDialog_protectedbase_focusPreviousChild".}
proc fcQAbstractPrintDialog_protectedbase_sender(self: pointer, ): pointer {.importc: "QAbstractPrintDialog_protectedbase_sender".}
proc fcQAbstractPrintDialog_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAbstractPrintDialog_protectedbase_senderSignalIndex".}
proc fcQAbstractPrintDialog_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractPrintDialog_protectedbase_receivers".}
proc fcQAbstractPrintDialog_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractPrintDialog_protectedbase_isSignalConnected".}
proc fcQAbstractPrintDialog_new(vtbl: pointer, printer: pointer): ptr cQAbstractPrintDialog {.importc: "QAbstractPrintDialog_new".}
proc fcQAbstractPrintDialog_new2(vtbl: pointer, printer: pointer, parent: pointer): ptr cQAbstractPrintDialog {.importc: "QAbstractPrintDialog_new2".}
proc fcQAbstractPrintDialog_staticMetaObject(): pointer {.importc: "QAbstractPrintDialog_staticMetaObject".}
proc fcQAbstractPrintDialog_delete(self: pointer) {.importc: "QAbstractPrintDialog_delete".}

proc metaObject*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractPrintDialog_metaObject(self.h))

proc metacast*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cstring): pointer =
  fcQAbstractPrintDialog_metacast(self.h, param1)

proc metacall*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractPrintDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractprintdialog_types.QAbstractPrintDialog, s: cstring): string =
  let v_ms = fcQAbstractPrintDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractprintdialog_types.QAbstractPrintDialog, s: cstring): string =
  let v_ms = fcQAbstractPrintDialog_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addEnabledOption*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, option: cint): void =
  fcQAbstractPrintDialog_addEnabledOption(self.h, cint(option))

proc setEnabledOptions*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, options: cint): void =
  fcQAbstractPrintDialog_setEnabledOptions(self.h, cint(options))

proc enabledOptions*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): cint =
  cint(fcQAbstractPrintDialog_enabledOptions(self.h))

proc isOptionEnabled*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, option: cint): bool =
  fcQAbstractPrintDialog_isOptionEnabled(self.h, cint(option))

proc setOptionTabs*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, tabs: seq[gen_qwidget_types.QWidget]): void =
  var tabs_CArray = newSeq[pointer](len(tabs))
  for i in 0..<len(tabs):
    tabs_CArray[i] = tabs[i].h

  fcQAbstractPrintDialog_setOptionTabs(self.h, struct_miqt_array(len: csize_t(len(tabs)), data: if len(tabs) == 0: nil else: addr(tabs_CArray[0])))

proc setPrintRange*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, range: cint): void =
  fcQAbstractPrintDialog_setPrintRange(self.h, cint(range))

proc printRange*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): cint =
  cint(fcQAbstractPrintDialog_printRange(self.h))

proc setMinMax*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, min: cint, max: cint): void =
  fcQAbstractPrintDialog_setMinMax(self.h, min, max)

proc minPage*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): cint =
  fcQAbstractPrintDialog_minPage(self.h)

proc maxPage*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): cint =
  fcQAbstractPrintDialog_maxPage(self.h)

proc setFromTo*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, fromPage: cint, toPage: cint): void =
  fcQAbstractPrintDialog_setFromTo(self.h, fromPage, toPage)

proc fromPage*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): cint =
  fcQAbstractPrintDialog_fromPage(self.h)

proc toPage*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): cint =
  fcQAbstractPrintDialog_toPage(self.h)

proc printer*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): gen_qprinter_types.QPrinter =
  gen_qprinter_types.QPrinter(h: fcQAbstractPrintDialog_printer(self.h))

proc tr*(_: type gen_qabstractprintdialog_types.QAbstractPrintDialog, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractPrintDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractprintdialog_types.QAbstractPrintDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractPrintDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractprintdialog_types.QAbstractPrintDialog, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractPrintDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractprintdialog_types.QAbstractPrintDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractPrintDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAbstractPrintDialogmetaObjectProc* = proc(self: QAbstractPrintDialog): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractPrintDialogmetacastProc* = proc(self: QAbstractPrintDialog, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractPrintDialogmetacallProc* = proc(self: QAbstractPrintDialog, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractPrintDialogsetVisibleProc* = proc(self: QAbstractPrintDialog, visible: bool): void {.raises: [], gcsafe.}
type QAbstractPrintDialogsizeHintProc* = proc(self: QAbstractPrintDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractPrintDialogminimumSizeHintProc* = proc(self: QAbstractPrintDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractPrintDialogopenProc* = proc(self: QAbstractPrintDialog): void {.raises: [], gcsafe.}
type QAbstractPrintDialogexecProc* = proc(self: QAbstractPrintDialog): cint {.raises: [], gcsafe.}
type QAbstractPrintDialogdoneProc* = proc(self: QAbstractPrintDialog, param1: cint): void {.raises: [], gcsafe.}
type QAbstractPrintDialogacceptProc* = proc(self: QAbstractPrintDialog): void {.raises: [], gcsafe.}
type QAbstractPrintDialogrejectProc* = proc(self: QAbstractPrintDialog): void {.raises: [], gcsafe.}
type QAbstractPrintDialogkeyPressEventProc* = proc(self: QAbstractPrintDialog, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogcloseEventProc* = proc(self: QAbstractPrintDialog, param1: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogshowEventProc* = proc(self: QAbstractPrintDialog, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogresizeEventProc* = proc(self: QAbstractPrintDialog, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogcontextMenuEventProc* = proc(self: QAbstractPrintDialog, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogeventFilterProc* = proc(self: QAbstractPrintDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractPrintDialogdevTypeProc* = proc(self: QAbstractPrintDialog): cint {.raises: [], gcsafe.}
type QAbstractPrintDialogheightForWidthProc* = proc(self: QAbstractPrintDialog, param1: cint): cint {.raises: [], gcsafe.}
type QAbstractPrintDialoghasHeightForWidthProc* = proc(self: QAbstractPrintDialog): bool {.raises: [], gcsafe.}
type QAbstractPrintDialogpaintEngineProc* = proc(self: QAbstractPrintDialog): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QAbstractPrintDialogeventProc* = proc(self: QAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractPrintDialogmousePressEventProc* = proc(self: QAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogmouseReleaseEventProc* = proc(self: QAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogmouseDoubleClickEventProc* = proc(self: QAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogmouseMoveEventProc* = proc(self: QAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogwheelEventProc* = proc(self: QAbstractPrintDialog, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogkeyReleaseEventProc* = proc(self: QAbstractPrintDialog, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogfocusInEventProc* = proc(self: QAbstractPrintDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogfocusOutEventProc* = proc(self: QAbstractPrintDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogenterEventProc* = proc(self: QAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogleaveEventProc* = proc(self: QAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogpaintEventProc* = proc(self: QAbstractPrintDialog, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogmoveEventProc* = proc(self: QAbstractPrintDialog, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogtabletEventProc* = proc(self: QAbstractPrintDialog, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogactionEventProc* = proc(self: QAbstractPrintDialog, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogdragEnterEventProc* = proc(self: QAbstractPrintDialog, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogdragMoveEventProc* = proc(self: QAbstractPrintDialog, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogdragLeaveEventProc* = proc(self: QAbstractPrintDialog, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogdropEventProc* = proc(self: QAbstractPrintDialog, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialoghideEventProc* = proc(self: QAbstractPrintDialog, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialognativeEventProc* = proc(self: QAbstractPrintDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QAbstractPrintDialogchangeEventProc* = proc(self: QAbstractPrintDialog, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogmetricProc* = proc(self: QAbstractPrintDialog, param1: cint): cint {.raises: [], gcsafe.}
type QAbstractPrintDialoginitPainterProc* = proc(self: QAbstractPrintDialog, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QAbstractPrintDialogredirectedProc* = proc(self: QAbstractPrintDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QAbstractPrintDialogsharedPainterProc* = proc(self: QAbstractPrintDialog): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QAbstractPrintDialoginputMethodEventProc* = proc(self: QAbstractPrintDialog, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialoginputMethodQueryProc* = proc(self: QAbstractPrintDialog, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractPrintDialogfocusNextPrevChildProc* = proc(self: QAbstractPrintDialog, next: bool): bool {.raises: [], gcsafe.}
type QAbstractPrintDialogtimerEventProc* = proc(self: QAbstractPrintDialog, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogchildEventProc* = proc(self: QAbstractPrintDialog, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogcustomEventProc* = proc(self: QAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractPrintDialogconnectNotifyProc* = proc(self: QAbstractPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractPrintDialogdisconnectNotifyProc* = proc(self: QAbstractPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractPrintDialogVTable* = object
  vtbl: cQAbstractPrintDialogVTable
  metaObject*: QAbstractPrintDialogmetaObjectProc
  metacast*: QAbstractPrintDialogmetacastProc
  metacall*: QAbstractPrintDialogmetacallProc
  setVisible*: QAbstractPrintDialogsetVisibleProc
  sizeHint*: QAbstractPrintDialogsizeHintProc
  minimumSizeHint*: QAbstractPrintDialogminimumSizeHintProc
  open*: QAbstractPrintDialogopenProc
  exec*: QAbstractPrintDialogexecProc
  done*: QAbstractPrintDialogdoneProc
  accept*: QAbstractPrintDialogacceptProc
  reject*: QAbstractPrintDialogrejectProc
  keyPressEvent*: QAbstractPrintDialogkeyPressEventProc
  closeEvent*: QAbstractPrintDialogcloseEventProc
  showEvent*: QAbstractPrintDialogshowEventProc
  resizeEvent*: QAbstractPrintDialogresizeEventProc
  contextMenuEvent*: QAbstractPrintDialogcontextMenuEventProc
  eventFilter*: QAbstractPrintDialogeventFilterProc
  devType*: QAbstractPrintDialogdevTypeProc
  heightForWidth*: QAbstractPrintDialogheightForWidthProc
  hasHeightForWidth*: QAbstractPrintDialoghasHeightForWidthProc
  paintEngine*: QAbstractPrintDialogpaintEngineProc
  event*: QAbstractPrintDialogeventProc
  mousePressEvent*: QAbstractPrintDialogmousePressEventProc
  mouseReleaseEvent*: QAbstractPrintDialogmouseReleaseEventProc
  mouseDoubleClickEvent*: QAbstractPrintDialogmouseDoubleClickEventProc
  mouseMoveEvent*: QAbstractPrintDialogmouseMoveEventProc
  wheelEvent*: QAbstractPrintDialogwheelEventProc
  keyReleaseEvent*: QAbstractPrintDialogkeyReleaseEventProc
  focusInEvent*: QAbstractPrintDialogfocusInEventProc
  focusOutEvent*: QAbstractPrintDialogfocusOutEventProc
  enterEvent*: QAbstractPrintDialogenterEventProc
  leaveEvent*: QAbstractPrintDialogleaveEventProc
  paintEvent*: QAbstractPrintDialogpaintEventProc
  moveEvent*: QAbstractPrintDialogmoveEventProc
  tabletEvent*: QAbstractPrintDialogtabletEventProc
  actionEvent*: QAbstractPrintDialogactionEventProc
  dragEnterEvent*: QAbstractPrintDialogdragEnterEventProc
  dragMoveEvent*: QAbstractPrintDialogdragMoveEventProc
  dragLeaveEvent*: QAbstractPrintDialogdragLeaveEventProc
  dropEvent*: QAbstractPrintDialogdropEventProc
  hideEvent*: QAbstractPrintDialoghideEventProc
  nativeEvent*: QAbstractPrintDialognativeEventProc
  changeEvent*: QAbstractPrintDialogchangeEventProc
  metric*: QAbstractPrintDialogmetricProc
  initPainter*: QAbstractPrintDialoginitPainterProc
  redirected*: QAbstractPrintDialogredirectedProc
  sharedPainter*: QAbstractPrintDialogsharedPainterProc
  inputMethodEvent*: QAbstractPrintDialoginputMethodEventProc
  inputMethodQuery*: QAbstractPrintDialoginputMethodQueryProc
  focusNextPrevChild*: QAbstractPrintDialogfocusNextPrevChildProc
  timerEvent*: QAbstractPrintDialogtimerEventProc
  childEvent*: QAbstractPrintDialogchildEventProc
  customEvent*: QAbstractPrintDialogcustomEventProc
  connectNotify*: QAbstractPrintDialogconnectNotifyProc
  disconnectNotify*: QAbstractPrintDialogdisconnectNotifyProc
proc QAbstractPrintDialogmetaObject*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractPrintDialog_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAbstractPrintDialog_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAbstractPrintDialogmetacast*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cstring): pointer =
  fcQAbstractPrintDialog_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAbstractPrintDialog_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractPrintDialogmetacall*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractPrintDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAbstractPrintDialog_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractPrintDialogsetVisible*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, visible: bool): void =
  fcQAbstractPrintDialog_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQAbstractPrintDialog_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QAbstractPrintDialogsizeHint*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractPrintDialog_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQAbstractPrintDialog_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QAbstractPrintDialogminimumSizeHint*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractPrintDialog_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQAbstractPrintDialog_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QAbstractPrintDialogopen*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): void =
  fcQAbstractPrintDialog_virtualbase_open(self.h)

proc miqt_exec_callback_cQAbstractPrintDialog_open(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  vtbl[].open(self)

proc QAbstractPrintDialogexec*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): cint =
  fcQAbstractPrintDialog_virtualbase_exec(self.h)

proc miqt_exec_callback_cQAbstractPrintDialog_exec(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QAbstractPrintDialogdone*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cint): void =
  fcQAbstractPrintDialog_virtualbase_done(self.h, param1)

proc miqt_exec_callback_cQAbstractPrintDialog_done(vtbl: pointer, self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = param1
  vtbl[].done(self, slotval1)

proc QAbstractPrintDialogaccept*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): void =
  fcQAbstractPrintDialog_virtualbase_accept(self.h)

proc miqt_exec_callback_cQAbstractPrintDialog_accept(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  vtbl[].accept(self)

proc QAbstractPrintDialogreject*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): void =
  fcQAbstractPrintDialog_virtualbase_reject(self.h)

proc miqt_exec_callback_cQAbstractPrintDialog_reject(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  vtbl[].reject(self)

proc QAbstractPrintDialogkeyPressEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQAbstractPrintDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractPrintDialog_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QAbstractPrintDialogcloseEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QCloseEvent): void =
  fcQAbstractPrintDialog_virtualbase_closeEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractPrintDialog_closeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)
  vtbl[].closeEvent(self, slotval1)

proc QAbstractPrintDialogshowEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QShowEvent): void =
  fcQAbstractPrintDialog_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractPrintDialog_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)
  vtbl[].showEvent(self, slotval1)

proc QAbstractPrintDialogresizeEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QResizeEvent): void =
  fcQAbstractPrintDialog_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractPrintDialog_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)
  vtbl[].resizeEvent(self, slotval1)

proc QAbstractPrintDialogcontextMenuEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQAbstractPrintDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractPrintDialog_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QAbstractPrintDialogeventFilter*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractPrintDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQAbstractPrintDialog_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractPrintDialogdevType*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): cint =
  fcQAbstractPrintDialog_virtualbase_devType(self.h)

proc miqt_exec_callback_cQAbstractPrintDialog_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QAbstractPrintDialogheightForWidth*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cint): cint =
  fcQAbstractPrintDialog_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQAbstractPrintDialog_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QAbstractPrintDialoghasHeightForWidth*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): bool =
  fcQAbstractPrintDialog_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQAbstractPrintDialog_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QAbstractPrintDialogpaintEngine*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQAbstractPrintDialog_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQAbstractPrintDialog_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QAbstractPrintDialogevent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractPrintDialog_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractPrintDialogmousePressEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractPrintDialog_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QAbstractPrintDialogmouseReleaseEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractPrintDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QAbstractPrintDialogmouseDoubleClickEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractPrintDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QAbstractPrintDialogmouseMoveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractPrintDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QAbstractPrintDialogwheelEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQAbstractPrintDialog_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QAbstractPrintDialogkeyReleaseEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQAbstractPrintDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QAbstractPrintDialogfocusInEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractPrintDialog_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QAbstractPrintDialogfocusOutEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractPrintDialog_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QAbstractPrintDialogenterEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractPrintDialog_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QAbstractPrintDialogleaveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractPrintDialog_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QAbstractPrintDialogpaintEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQAbstractPrintDialog_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QAbstractPrintDialogmoveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQAbstractPrintDialog_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QAbstractPrintDialogtabletEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQAbstractPrintDialog_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QAbstractPrintDialogactionEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QActionEvent): void =
  fcQAbstractPrintDialog_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QAbstractPrintDialogdragEnterEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQAbstractPrintDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QAbstractPrintDialogdragMoveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQAbstractPrintDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QAbstractPrintDialogdragLeaveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQAbstractPrintDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QAbstractPrintDialogdropEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QDropEvent): void =
  fcQAbstractPrintDialog_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QAbstractPrintDialoghideEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QHideEvent): void =
  fcQAbstractPrintDialog_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QAbstractPrintDialognativeEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQAbstractPrintDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQAbstractPrintDialog_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractPrintDialogchangeEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qcoreevent_types.QEvent): void =
  fcQAbstractPrintDialog_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractPrintDialog_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QAbstractPrintDialogmetric*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cint): cint =
  fcQAbstractPrintDialog_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQAbstractPrintDialog_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QAbstractPrintDialoginitPainter*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, painter: gen_qpainter_types.QPainter): void =
  fcQAbstractPrintDialog_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQAbstractPrintDialog_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QAbstractPrintDialogredirected*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQAbstractPrintDialog_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQAbstractPrintDialog_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QAbstractPrintDialogsharedPainter*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQAbstractPrintDialog_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQAbstractPrintDialog_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QAbstractPrintDialoginputMethodEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQAbstractPrintDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractPrintDialog_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QAbstractPrintDialoginputMethodQuery*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractPrintDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQAbstractPrintDialog_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QAbstractPrintDialogfocusNextPrevChild*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, next: bool): bool =
  fcQAbstractPrintDialog_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQAbstractPrintDialog_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QAbstractPrintDialogtimerEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractPrintDialog_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractPrintDialogchildEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractPrintDialog_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAbstractPrintDialogcustomEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractPrintDialog_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractPrintDialog_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAbstractPrintDialogconnectNotify*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractPrintDialog_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractPrintDialog_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractPrintDialogdisconnectNotify*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractPrintDialog_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractPrintDialog_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](vtbl)
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc adjustPosition*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qwidget_types.QWidget): void =
  fcQAbstractPrintDialog_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): void =
  fcQAbstractPrintDialog_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): void =
  fcQAbstractPrintDialog_protectedbase_create(self.h)

proc destroy*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): void =
  fcQAbstractPrintDialog_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): bool =
  fcQAbstractPrintDialog_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): bool =
  fcQAbstractPrintDialog_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractPrintDialog_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): cint =
  fcQAbstractPrintDialog_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, signal: cstring): cint =
  fcQAbstractPrintDialog_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractPrintDialog_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractprintdialog_types.QAbstractPrintDialog,
    printer: gen_qprinter_types.QPrinter,
    vtbl: ref QAbstractPrintDialogVTable = nil): gen_qabstractprintdialog_types.QAbstractPrintDialog =
  let vtbl = if vtbl == nil: new QAbstractPrintDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractPrintDialogVTable, _: ptr cQAbstractPrintDialog) {.cdecl.} =
    let vtbl = cast[ref QAbstractPrintDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractPrintDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractPrintDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractPrintDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQAbstractPrintDialog_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQAbstractPrintDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQAbstractPrintDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQAbstractPrintDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQAbstractPrintDialog_exec
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQAbstractPrintDialog_done
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQAbstractPrintDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQAbstractPrintDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQAbstractPrintDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQAbstractPrintDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQAbstractPrintDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQAbstractPrintDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQAbstractPrintDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractPrintDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQAbstractPrintDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQAbstractPrintDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQAbstractPrintDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQAbstractPrintDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractPrintDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQAbstractPrintDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQAbstractPrintDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQAbstractPrintDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQAbstractPrintDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQAbstractPrintDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQAbstractPrintDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQAbstractPrintDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQAbstractPrintDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQAbstractPrintDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQAbstractPrintDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQAbstractPrintDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQAbstractPrintDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQAbstractPrintDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQAbstractPrintDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQAbstractPrintDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQAbstractPrintDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQAbstractPrintDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQAbstractPrintDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQAbstractPrintDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQAbstractPrintDialog_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQAbstractPrintDialog_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQAbstractPrintDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQAbstractPrintDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQAbstractPrintDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQAbstractPrintDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQAbstractPrintDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQAbstractPrintDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQAbstractPrintDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractPrintDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractPrintDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractPrintDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractPrintDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractPrintDialog_disconnectNotify
  gen_qabstractprintdialog_types.QAbstractPrintDialog(h: fcQAbstractPrintDialog_new(addr(vtbl[]), printer.h))

proc create*(T: type gen_qabstractprintdialog_types.QAbstractPrintDialog,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget,
    vtbl: ref QAbstractPrintDialogVTable = nil): gen_qabstractprintdialog_types.QAbstractPrintDialog =
  let vtbl = if vtbl == nil: new QAbstractPrintDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractPrintDialogVTable, _: ptr cQAbstractPrintDialog) {.cdecl.} =
    let vtbl = cast[ref QAbstractPrintDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractPrintDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractPrintDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractPrintDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQAbstractPrintDialog_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQAbstractPrintDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQAbstractPrintDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQAbstractPrintDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQAbstractPrintDialog_exec
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQAbstractPrintDialog_done
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQAbstractPrintDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQAbstractPrintDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQAbstractPrintDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQAbstractPrintDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQAbstractPrintDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQAbstractPrintDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQAbstractPrintDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractPrintDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQAbstractPrintDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQAbstractPrintDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQAbstractPrintDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQAbstractPrintDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractPrintDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQAbstractPrintDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQAbstractPrintDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQAbstractPrintDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQAbstractPrintDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQAbstractPrintDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQAbstractPrintDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQAbstractPrintDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQAbstractPrintDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQAbstractPrintDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQAbstractPrintDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQAbstractPrintDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQAbstractPrintDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQAbstractPrintDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQAbstractPrintDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQAbstractPrintDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQAbstractPrintDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQAbstractPrintDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQAbstractPrintDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQAbstractPrintDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQAbstractPrintDialog_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQAbstractPrintDialog_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQAbstractPrintDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQAbstractPrintDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQAbstractPrintDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQAbstractPrintDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQAbstractPrintDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQAbstractPrintDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQAbstractPrintDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractPrintDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractPrintDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractPrintDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractPrintDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractPrintDialog_disconnectNotify
  gen_qabstractprintdialog_types.QAbstractPrintDialog(h: fcQAbstractPrintDialog_new2(addr(vtbl[]), printer.h, parent.h))

proc staticMetaObject*(_: type gen_qabstractprintdialog_types.QAbstractPrintDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractPrintDialog_staticMetaObject())
proc delete*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog) =
  fcQAbstractPrintDialog_delete(self.h)
