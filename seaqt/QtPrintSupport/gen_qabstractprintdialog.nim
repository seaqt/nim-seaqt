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


{.compile("gen_qabstractprintdialog.cpp", QtPrintSupportCFlags).}


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

proc fcQAbstractPrintDialog_metaObject(self: pointer): pointer {.importc: "QAbstractPrintDialog_metaObject".}
proc fcQAbstractPrintDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractPrintDialog_metacast".}
proc fcQAbstractPrintDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractPrintDialog_metacall".}
proc fcQAbstractPrintDialog_tr(s: cstring): struct_miqt_string {.importc: "QAbstractPrintDialog_tr".}
proc fcQAbstractPrintDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractPrintDialog_trUtf8".}
proc fcQAbstractPrintDialog_addEnabledOption(self: pointer, option: cint): void {.importc: "QAbstractPrintDialog_addEnabledOption".}
proc fcQAbstractPrintDialog_setEnabledOptions(self: pointer, options: cint): void {.importc: "QAbstractPrintDialog_setEnabledOptions".}
proc fcQAbstractPrintDialog_enabledOptions(self: pointer): cint {.importc: "QAbstractPrintDialog_enabledOptions".}
proc fcQAbstractPrintDialog_isOptionEnabled(self: pointer, option: cint): bool {.importc: "QAbstractPrintDialog_isOptionEnabled".}
proc fcQAbstractPrintDialog_setOptionTabs(self: pointer, tabs: struct_miqt_array): void {.importc: "QAbstractPrintDialog_setOptionTabs".}
proc fcQAbstractPrintDialog_setPrintRange(self: pointer, range: cint): void {.importc: "QAbstractPrintDialog_setPrintRange".}
proc fcQAbstractPrintDialog_printRange(self: pointer): cint {.importc: "QAbstractPrintDialog_printRange".}
proc fcQAbstractPrintDialog_setMinMax(self: pointer, min: cint, max: cint): void {.importc: "QAbstractPrintDialog_setMinMax".}
proc fcQAbstractPrintDialog_minPage(self: pointer): cint {.importc: "QAbstractPrintDialog_minPage".}
proc fcQAbstractPrintDialog_maxPage(self: pointer): cint {.importc: "QAbstractPrintDialog_maxPage".}
proc fcQAbstractPrintDialog_setFromTo(self: pointer, fromPage: cint, toPage: cint): void {.importc: "QAbstractPrintDialog_setFromTo".}
proc fcQAbstractPrintDialog_fromPage(self: pointer): cint {.importc: "QAbstractPrintDialog_fromPage".}
proc fcQAbstractPrintDialog_toPage(self: pointer): cint {.importc: "QAbstractPrintDialog_toPage".}
proc fcQAbstractPrintDialog_printer(self: pointer): pointer {.importc: "QAbstractPrintDialog_printer".}
proc fcQAbstractPrintDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractPrintDialog_tr2".}
proc fcQAbstractPrintDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractPrintDialog_tr3".}
proc fcQAbstractPrintDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractPrintDialog_trUtf82".}
proc fcQAbstractPrintDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractPrintDialog_trUtf83".}
proc fcQAbstractPrintDialog_vtbl(self: pointer): pointer {.importc: "QAbstractPrintDialog_vtbl".}
proc fcQAbstractPrintDialog_vdata(self: pointer): pointer {.importc: "QAbstractPrintDialog_vdata".}

type cQAbstractPrintDialogVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  done*: proc(self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
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
proc fcQAbstractPrintDialog_virtualbase_metaObject(self: pointer): pointer {.importc: "QAbstractPrintDialog_virtualbase_metaObject".}
proc fcQAbstractPrintDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractPrintDialog_virtualbase_metacast".}
proc fcQAbstractPrintDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractPrintDialog_virtualbase_metacall".}
proc fcQAbstractPrintDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QAbstractPrintDialog_virtualbase_setVisible".}
proc fcQAbstractPrintDialog_virtualbase_sizeHint(self: pointer): pointer {.importc: "QAbstractPrintDialog_virtualbase_sizeHint".}
proc fcQAbstractPrintDialog_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QAbstractPrintDialog_virtualbase_minimumSizeHint".}
proc fcQAbstractPrintDialog_virtualbase_open(self: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_open".}
proc fcQAbstractPrintDialog_virtualbase_exec(self: pointer): cint {.importc: "QAbstractPrintDialog_virtualbase_exec".}
proc fcQAbstractPrintDialog_virtualbase_done(self: pointer, param1: cint): void {.importc: "QAbstractPrintDialog_virtualbase_done".}
proc fcQAbstractPrintDialog_virtualbase_accept(self: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_accept".}
proc fcQAbstractPrintDialog_virtualbase_reject(self: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_reject".}
proc fcQAbstractPrintDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_keyPressEvent".}
proc fcQAbstractPrintDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_closeEvent".}
proc fcQAbstractPrintDialog_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_showEvent".}
proc fcQAbstractPrintDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_resizeEvent".}
proc fcQAbstractPrintDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_contextMenuEvent".}
proc fcQAbstractPrintDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QAbstractPrintDialog_virtualbase_eventFilter".}
proc fcQAbstractPrintDialog_virtualbase_devType(self: pointer): cint {.importc: "QAbstractPrintDialog_virtualbase_devType".}
proc fcQAbstractPrintDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QAbstractPrintDialog_virtualbase_heightForWidth".}
proc fcQAbstractPrintDialog_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QAbstractPrintDialog_virtualbase_hasHeightForWidth".}
proc fcQAbstractPrintDialog_virtualbase_paintEngine(self: pointer): pointer {.importc: "QAbstractPrintDialog_virtualbase_paintEngine".}
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
proc fcQAbstractPrintDialog_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QAbstractPrintDialog_virtualbase_sharedPainter".}
proc fcQAbstractPrintDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_inputMethodEvent".}
proc fcQAbstractPrintDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QAbstractPrintDialog_virtualbase_inputMethodQuery".}
proc fcQAbstractPrintDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QAbstractPrintDialog_virtualbase_focusNextPrevChild".}
proc fcQAbstractPrintDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_timerEvent".}
proc fcQAbstractPrintDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_childEvent".}
proc fcQAbstractPrintDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_customEvent".}
proc fcQAbstractPrintDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_connectNotify".}
proc fcQAbstractPrintDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractPrintDialog_virtualbase_disconnectNotify".}
proc fcQAbstractPrintDialog_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QAbstractPrintDialog_protectedbase_adjustPosition".}
proc fcQAbstractPrintDialog_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QAbstractPrintDialog_protectedbase_updateMicroFocus".}
proc fcQAbstractPrintDialog_protectedbase_create(self: pointer): void {.importc: "QAbstractPrintDialog_protectedbase_create".}
proc fcQAbstractPrintDialog_protectedbase_destroy(self: pointer): void {.importc: "QAbstractPrintDialog_protectedbase_destroy".}
proc fcQAbstractPrintDialog_protectedbase_focusNextChild(self: pointer): bool {.importc: "QAbstractPrintDialog_protectedbase_focusNextChild".}
proc fcQAbstractPrintDialog_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QAbstractPrintDialog_protectedbase_focusPreviousChild".}
proc fcQAbstractPrintDialog_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractPrintDialog_protectedbase_sender".}
proc fcQAbstractPrintDialog_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractPrintDialog_protectedbase_senderSignalIndex".}
proc fcQAbstractPrintDialog_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractPrintDialog_protectedbase_receivers".}
proc fcQAbstractPrintDialog_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractPrintDialog_protectedbase_isSignalConnected".}
proc fcQAbstractPrintDialog_new(vtbl, vdata: pointer, printer: pointer): ptr cQAbstractPrintDialog {.importc: "QAbstractPrintDialog_new".}
proc fcQAbstractPrintDialog_new2(vtbl, vdata: pointer, printer: pointer, parent: pointer): ptr cQAbstractPrintDialog {.importc: "QAbstractPrintDialog_new2".}
proc fcQAbstractPrintDialog_staticMetaObject(): pointer {.importc: "QAbstractPrintDialog_staticMetaObject".}

proc metaObject*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractPrintDialog_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cstring): pointer =
  fcQAbstractPrintDialog_metacast(self.h, param1)

proc metacall*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractPrintDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractprintdialog_types.QAbstractPrintDialog, s: cstring): string =
  let v_ms = fcQAbstractPrintDialog_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractprintdialog_types.QAbstractPrintDialog, s: cstring): string =
  let v_ms = fcQAbstractPrintDialog_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addEnabledOption*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, option: cint): void =
  fcQAbstractPrintDialog_addEnabledOption(self.h, cint(option))

proc setEnabledOptions*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, options: cint): void =
  fcQAbstractPrintDialog_setEnabledOptions(self.h, cint(options))

proc enabledOptions*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): cint =
  cint(fcQAbstractPrintDialog_enabledOptions(self.h))

proc isOptionEnabled*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, option: cint): bool =
  fcQAbstractPrintDialog_isOptionEnabled(self.h, cint(option))

proc setOptionTabs*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, tabs: openArray[gen_qwidget_types.QWidget]): void =
  var tabs_CArray = newSeq[pointer](len(tabs))
  for i in 0..<len(tabs):
    tabs_CArray[i] = tabs[i].h

  fcQAbstractPrintDialog_setOptionTabs(self.h, struct_miqt_array(len: csize_t(len(tabs)), data: if len(tabs) == 0: nil else: addr(tabs_CArray[0])))

proc setPrintRange*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, range: cint): void =
  fcQAbstractPrintDialog_setPrintRange(self.h, cint(range))

proc printRange*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): cint =
  cint(fcQAbstractPrintDialog_printRange(self.h))

proc setMinMax*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, min: cint, max: cint): void =
  fcQAbstractPrintDialog_setMinMax(self.h, min, max)

proc minPage*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): cint =
  fcQAbstractPrintDialog_minPage(self.h)

proc maxPage*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): cint =
  fcQAbstractPrintDialog_maxPage(self.h)

proc setFromTo*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, fromPage: cint, toPage: cint): void =
  fcQAbstractPrintDialog_setFromTo(self.h, fromPage, toPage)

proc fromPage*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): cint =
  fcQAbstractPrintDialog_fromPage(self.h)

proc toPage*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): cint =
  fcQAbstractPrintDialog_toPage(self.h)

proc printer*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): gen_qprinter_types.QPrinter =
  gen_qprinter_types.QPrinter(h: fcQAbstractPrintDialog_printer(self.h), owned: false)

proc tr*(_: type gen_qabstractprintdialog_types.QAbstractPrintDialog, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractPrintDialog_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractprintdialog_types.QAbstractPrintDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractPrintDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractprintdialog_types.QAbstractPrintDialog, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractPrintDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractprintdialog_types.QAbstractPrintDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractPrintDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QAbstractPrintDialognativeEventProc* = proc(self: QAbstractPrintDialog, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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

type QAbstractPrintDialogVTable* {.inheritable, pure.} = object
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

proc QAbstractPrintDialogmetaObject*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractPrintDialog_virtualbase_metaObject(self.h), owned: false)

proc QAbstractPrintDialogmetacast*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cstring): pointer =
  fcQAbstractPrintDialog_virtualbase_metacast(self.h, param1)

proc QAbstractPrintDialogmetacall*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractPrintDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QAbstractPrintDialogsetVisible*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, visible: bool): void =
  fcQAbstractPrintDialog_virtualbase_setVisible(self.h, visible)

proc QAbstractPrintDialogsizeHint*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractPrintDialog_virtualbase_sizeHint(self.h), owned: true)

proc QAbstractPrintDialogminimumSizeHint*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractPrintDialog_virtualbase_minimumSizeHint(self.h), owned: true)

proc QAbstractPrintDialogopen*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): void =
  fcQAbstractPrintDialog_virtualbase_open(self.h)

proc QAbstractPrintDialogexec*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): cint =
  fcQAbstractPrintDialog_virtualbase_exec(self.h)

proc QAbstractPrintDialogdone*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cint): void =
  fcQAbstractPrintDialog_virtualbase_done(self.h, param1)

proc QAbstractPrintDialogaccept*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): void =
  fcQAbstractPrintDialog_virtualbase_accept(self.h)

proc QAbstractPrintDialogreject*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): void =
  fcQAbstractPrintDialog_virtualbase_reject(self.h)

proc QAbstractPrintDialogkeyPressEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQAbstractPrintDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc QAbstractPrintDialogcloseEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QCloseEvent): void =
  fcQAbstractPrintDialog_virtualbase_closeEvent(self.h, param1.h)

proc QAbstractPrintDialogshowEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QShowEvent): void =
  fcQAbstractPrintDialog_virtualbase_showEvent(self.h, param1.h)

proc QAbstractPrintDialogresizeEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QResizeEvent): void =
  fcQAbstractPrintDialog_virtualbase_resizeEvent(self.h, param1.h)

proc QAbstractPrintDialogcontextMenuEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQAbstractPrintDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc QAbstractPrintDialogeventFilter*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractPrintDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc QAbstractPrintDialogdevType*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): cint =
  fcQAbstractPrintDialog_virtualbase_devType(self.h)

proc QAbstractPrintDialogheightForWidth*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cint): cint =
  fcQAbstractPrintDialog_virtualbase_heightForWidth(self.h, param1)

proc QAbstractPrintDialoghasHeightForWidth*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): bool =
  fcQAbstractPrintDialog_virtualbase_hasHeightForWidth(self.h)

proc QAbstractPrintDialogpaintEngine*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQAbstractPrintDialog_virtualbase_paintEngine(self.h), owned: false)

proc QAbstractPrintDialogevent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractPrintDialog_virtualbase_event(self.h, event.h)

proc QAbstractPrintDialogmousePressEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractPrintDialog_virtualbase_mousePressEvent(self.h, event.h)

proc QAbstractPrintDialogmouseReleaseEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractPrintDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QAbstractPrintDialogmouseDoubleClickEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractPrintDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QAbstractPrintDialogmouseMoveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractPrintDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc QAbstractPrintDialogwheelEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQAbstractPrintDialog_virtualbase_wheelEvent(self.h, event.h)

proc QAbstractPrintDialogkeyReleaseEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQAbstractPrintDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc QAbstractPrintDialogfocusInEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractPrintDialog_virtualbase_focusInEvent(self.h, event.h)

proc QAbstractPrintDialogfocusOutEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractPrintDialog_virtualbase_focusOutEvent(self.h, event.h)

proc QAbstractPrintDialogenterEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractPrintDialog_virtualbase_enterEvent(self.h, event.h)

proc QAbstractPrintDialogleaveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractPrintDialog_virtualbase_leaveEvent(self.h, event.h)

proc QAbstractPrintDialogpaintEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQAbstractPrintDialog_virtualbase_paintEvent(self.h, event.h)

proc QAbstractPrintDialogmoveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQAbstractPrintDialog_virtualbase_moveEvent(self.h, event.h)

proc QAbstractPrintDialogtabletEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQAbstractPrintDialog_virtualbase_tabletEvent(self.h, event.h)

proc QAbstractPrintDialogactionEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QActionEvent): void =
  fcQAbstractPrintDialog_virtualbase_actionEvent(self.h, event.h)

proc QAbstractPrintDialogdragEnterEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQAbstractPrintDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc QAbstractPrintDialogdragMoveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQAbstractPrintDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc QAbstractPrintDialogdragLeaveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQAbstractPrintDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc QAbstractPrintDialogdropEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QDropEvent): void =
  fcQAbstractPrintDialog_virtualbase_dropEvent(self.h, event.h)

proc QAbstractPrintDialoghideEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QHideEvent): void =
  fcQAbstractPrintDialog_virtualbase_hideEvent(self.h, event.h)

proc QAbstractPrintDialognativeEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQAbstractPrintDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QAbstractPrintDialogchangeEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qcoreevent_types.QEvent): void =
  fcQAbstractPrintDialog_virtualbase_changeEvent(self.h, param1.h)

proc QAbstractPrintDialogmetric*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cint): cint =
  fcQAbstractPrintDialog_virtualbase_metric(self.h, cint(param1))

proc QAbstractPrintDialoginitPainter*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, painter: gen_qpainter_types.QPainter): void =
  fcQAbstractPrintDialog_virtualbase_initPainter(self.h, painter.h)

proc QAbstractPrintDialogredirected*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQAbstractPrintDialog_virtualbase_redirected(self.h, offset.h), owned: false)

proc QAbstractPrintDialogsharedPainter*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQAbstractPrintDialog_virtualbase_sharedPainter(self.h), owned: false)

proc QAbstractPrintDialoginputMethodEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQAbstractPrintDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc QAbstractPrintDialoginputMethodQuery*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractPrintDialog_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QAbstractPrintDialogfocusNextPrevChild*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, next: bool): bool =
  fcQAbstractPrintDialog_virtualbase_focusNextPrevChild(self.h, next)

proc QAbstractPrintDialogtimerEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractPrintDialog_virtualbase_timerEvent(self.h, event.h)

proc QAbstractPrintDialogchildEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractPrintDialog_virtualbase_childEvent(self.h, event.h)

proc QAbstractPrintDialogcustomEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractPrintDialog_virtualbase_customEvent(self.h, event.h)

proc QAbstractPrintDialogconnectNotify*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractPrintDialog_virtualbase_connectNotify(self.h, signal.h)

proc QAbstractPrintDialogdisconnectNotify*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractPrintDialog_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQAbstractPrintDialog_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractPrintDialog_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQAbstractPrintDialog_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAbstractPrintDialog_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractPrintDialog_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractPrintDialog_vtable_callback_open(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  vtbl[].open(self)

proc fcQAbstractPrintDialog_vtable_callback_exec(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc fcQAbstractPrintDialog_vtable_callback_done(self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = param1
  vtbl[].done(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_accept(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  vtbl[].accept(self)

proc fcQAbstractPrintDialog_vtable_callback_reject(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  vtbl[].reject(self)

proc fcQAbstractPrintDialog_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQAbstractPrintDialog_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQAbstractPrintDialog_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQAbstractPrintDialog_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQAbstractPrintDialog_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractPrintDialog_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQAbstractPrintDialog_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAbstractPrintDialog_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQAbstractPrintDialog_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractPrintDialog_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractPrintDialog_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractPrintDialog_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQAbstractPrintDialog_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQAbstractPrintDialog_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
  let self = QAbstractPrintDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractPrintDialog* {.inheritable.} = ref object of QAbstractPrintDialog
  vtbl*: cQAbstractPrintDialogVTable

method metaObject*(self: VirtualQAbstractPrintDialog): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractPrintDialogmetaObject(self[])
method metacast*(self: VirtualQAbstractPrintDialog, param1: cstring): pointer {.base.} =
  QAbstractPrintDialogmetacast(self[], param1)
method metacall*(self: VirtualQAbstractPrintDialog, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractPrintDialogmetacall(self[], param1, param2, param3)
method setVisible*(self: VirtualQAbstractPrintDialog, visible: bool): void {.base.} =
  QAbstractPrintDialogsetVisible(self[], visible)
method sizeHint*(self: VirtualQAbstractPrintDialog): gen_qsize_types.QSize {.base.} =
  QAbstractPrintDialogsizeHint(self[])
method minimumSizeHint*(self: VirtualQAbstractPrintDialog): gen_qsize_types.QSize {.base.} =
  QAbstractPrintDialogminimumSizeHint(self[])
method open*(self: VirtualQAbstractPrintDialog): void {.base.} =
  QAbstractPrintDialogopen(self[])
method exec*(self: VirtualQAbstractPrintDialog): cint {.base.} =
  QAbstractPrintDialogexec(self[])
method done*(self: VirtualQAbstractPrintDialog, param1: cint): void {.base.} =
  QAbstractPrintDialogdone(self[], param1)
method accept*(self: VirtualQAbstractPrintDialog): void {.base.} =
  QAbstractPrintDialogaccept(self[])
method reject*(self: VirtualQAbstractPrintDialog): void {.base.} =
  QAbstractPrintDialogreject(self[])
method keyPressEvent*(self: VirtualQAbstractPrintDialog, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QAbstractPrintDialogkeyPressEvent(self[], param1)
method closeEvent*(self: VirtualQAbstractPrintDialog, param1: gen_qevent_types.QCloseEvent): void {.base.} =
  QAbstractPrintDialogcloseEvent(self[], param1)
method showEvent*(self: VirtualQAbstractPrintDialog, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QAbstractPrintDialogshowEvent(self[], param1)
method resizeEvent*(self: VirtualQAbstractPrintDialog, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QAbstractPrintDialogresizeEvent(self[], param1)
method contextMenuEvent*(self: VirtualQAbstractPrintDialog, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QAbstractPrintDialogcontextMenuEvent(self[], param1)
method eventFilter*(self: VirtualQAbstractPrintDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractPrintDialogeventFilter(self[], param1, param2)
method devType*(self: VirtualQAbstractPrintDialog): cint {.base.} =
  QAbstractPrintDialogdevType(self[])
method heightForWidth*(self: VirtualQAbstractPrintDialog, param1: cint): cint {.base.} =
  QAbstractPrintDialogheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQAbstractPrintDialog): bool {.base.} =
  QAbstractPrintDialoghasHeightForWidth(self[])
method paintEngine*(self: VirtualQAbstractPrintDialog): gen_qpaintengine_types.QPaintEngine {.base.} =
  QAbstractPrintDialogpaintEngine(self[])
method event*(self: VirtualQAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractPrintDialogevent(self[], event)
method mousePressEvent*(self: VirtualQAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractPrintDialogmousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractPrintDialogmouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractPrintDialogmouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractPrintDialogmouseMoveEvent(self[], event)
method wheelEvent*(self: VirtualQAbstractPrintDialog, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QAbstractPrintDialogwheelEvent(self[], event)
method keyReleaseEvent*(self: VirtualQAbstractPrintDialog, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QAbstractPrintDialogkeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQAbstractPrintDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QAbstractPrintDialogfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQAbstractPrintDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QAbstractPrintDialogfocusOutEvent(self[], event)
method enterEvent*(self: VirtualQAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractPrintDialogenterEvent(self[], event)
method leaveEvent*(self: VirtualQAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractPrintDialogleaveEvent(self[], event)
method paintEvent*(self: VirtualQAbstractPrintDialog, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QAbstractPrintDialogpaintEvent(self[], event)
method moveEvent*(self: VirtualQAbstractPrintDialog, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QAbstractPrintDialogmoveEvent(self[], event)
method tabletEvent*(self: VirtualQAbstractPrintDialog, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QAbstractPrintDialogtabletEvent(self[], event)
method actionEvent*(self: VirtualQAbstractPrintDialog, event: gen_qevent_types.QActionEvent): void {.base.} =
  QAbstractPrintDialogactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQAbstractPrintDialog, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QAbstractPrintDialogdragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQAbstractPrintDialog, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QAbstractPrintDialogdragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQAbstractPrintDialog, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QAbstractPrintDialogdragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQAbstractPrintDialog, event: gen_qevent_types.QDropEvent): void {.base.} =
  QAbstractPrintDialogdropEvent(self[], event)
method hideEvent*(self: VirtualQAbstractPrintDialog, event: gen_qevent_types.QHideEvent): void {.base.} =
  QAbstractPrintDialoghideEvent(self[], event)
method nativeEvent*(self: VirtualQAbstractPrintDialog, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QAbstractPrintDialognativeEvent(self[], eventType, message, resultVal)
method changeEvent*(self: VirtualQAbstractPrintDialog, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractPrintDialogchangeEvent(self[], param1)
method metric*(self: VirtualQAbstractPrintDialog, param1: cint): cint {.base.} =
  QAbstractPrintDialogmetric(self[], param1)
method initPainter*(self: VirtualQAbstractPrintDialog, painter: gen_qpainter_types.QPainter): void {.base.} =
  QAbstractPrintDialoginitPainter(self[], painter)
method redirected*(self: VirtualQAbstractPrintDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QAbstractPrintDialogredirected(self[], offset)
method sharedPainter*(self: VirtualQAbstractPrintDialog): gen_qpainter_types.QPainter {.base.} =
  QAbstractPrintDialogsharedPainter(self[])
method inputMethodEvent*(self: VirtualQAbstractPrintDialog, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QAbstractPrintDialoginputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQAbstractPrintDialog, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QAbstractPrintDialoginputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQAbstractPrintDialog, next: bool): bool {.base.} =
  QAbstractPrintDialogfocusNextPrevChild(self[], next)
method timerEvent*(self: VirtualQAbstractPrintDialog, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractPrintDialogtimerEvent(self[], event)
method childEvent*(self: VirtualQAbstractPrintDialog, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractPrintDialogchildEvent(self[], event)
method customEvent*(self: VirtualQAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractPrintDialogcustomEvent(self[], event)
method connectNotify*(self: VirtualQAbstractPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractPrintDialogconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQAbstractPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractPrintDialogdisconnectNotify(self[], signal)

proc fcQAbstractPrintDialog_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractPrintDialog_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQAbstractPrintDialog_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAbstractPrintDialog_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQAbstractPrintDialog_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractPrintDialog_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractPrintDialog_method_callback_open(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  inst.open()

proc fcQAbstractPrintDialog_method_callback_exec(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  var virtualReturn = inst.exec()
  virtualReturn

proc fcQAbstractPrintDialog_method_callback_done(self: pointer, param1: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = param1
  inst.done(slotval1)

proc fcQAbstractPrintDialog_method_callback_accept(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  inst.accept()

proc fcQAbstractPrintDialog_method_callback_reject(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  inst.reject()

proc fcQAbstractPrintDialog_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  inst.closeEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  inst.showEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQAbstractPrintDialog_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQAbstractPrintDialog_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQAbstractPrintDialog_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQAbstractPrintDialog_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractPrintDialog_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQAbstractPrintDialog_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAbstractPrintDialog_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQAbstractPrintDialog_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQAbstractPrintDialog_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractPrintDialog_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractPrintDialog_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractPrintDialog_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQAbstractPrintDialog_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQAbstractPrintDialog_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQAbstractPrintDialog_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractPrintDialog](fcQAbstractPrintDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc adjustPosition*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qwidget_types.QWidget): void =
  fcQAbstractPrintDialog_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): void =
  fcQAbstractPrintDialog_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): void =
  fcQAbstractPrintDialog_protectedbase_create(self.h)

proc destroy*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): void =
  fcQAbstractPrintDialog_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): bool =
  fcQAbstractPrintDialog_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): bool =
  fcQAbstractPrintDialog_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractPrintDialog_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAbstractPrintDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAbstractPrintDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAbstractPrintDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQAbstractPrintDialog_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQAbstractPrintDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQAbstractPrintDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQAbstractPrintDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = fcQAbstractPrintDialog_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = fcQAbstractPrintDialog_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = fcQAbstractPrintDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = fcQAbstractPrintDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQAbstractPrintDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQAbstractPrintDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQAbstractPrintDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQAbstractPrintDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQAbstractPrintDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAbstractPrintDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQAbstractPrintDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQAbstractPrintDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQAbstractPrintDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQAbstractPrintDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAbstractPrintDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQAbstractPrintDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQAbstractPrintDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQAbstractPrintDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQAbstractPrintDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQAbstractPrintDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQAbstractPrintDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQAbstractPrintDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQAbstractPrintDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQAbstractPrintDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQAbstractPrintDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQAbstractPrintDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQAbstractPrintDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQAbstractPrintDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQAbstractPrintDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQAbstractPrintDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQAbstractPrintDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQAbstractPrintDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQAbstractPrintDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQAbstractPrintDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQAbstractPrintDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQAbstractPrintDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQAbstractPrintDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQAbstractPrintDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQAbstractPrintDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQAbstractPrintDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQAbstractPrintDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQAbstractPrintDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQAbstractPrintDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAbstractPrintDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAbstractPrintDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAbstractPrintDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAbstractPrintDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAbstractPrintDialog_vtable_callback_disconnectNotify
  gen_qabstractprintdialog_types.QAbstractPrintDialog(h: fcQAbstractPrintDialog_new(addr(vtbl[].vtbl), addr(vtbl[]), printer.h), owned: true)

proc create*(T: type gen_qabstractprintdialog_types.QAbstractPrintDialog,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget,
    vtbl: ref QAbstractPrintDialogVTable = nil): gen_qabstractprintdialog_types.QAbstractPrintDialog =
  let vtbl = if vtbl == nil: new QAbstractPrintDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractPrintDialogVTable](fcQAbstractPrintDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAbstractPrintDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAbstractPrintDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAbstractPrintDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQAbstractPrintDialog_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQAbstractPrintDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQAbstractPrintDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQAbstractPrintDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = fcQAbstractPrintDialog_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = fcQAbstractPrintDialog_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = fcQAbstractPrintDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = fcQAbstractPrintDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQAbstractPrintDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQAbstractPrintDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQAbstractPrintDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQAbstractPrintDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQAbstractPrintDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAbstractPrintDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQAbstractPrintDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQAbstractPrintDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQAbstractPrintDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQAbstractPrintDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAbstractPrintDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQAbstractPrintDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQAbstractPrintDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQAbstractPrintDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQAbstractPrintDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQAbstractPrintDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQAbstractPrintDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQAbstractPrintDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQAbstractPrintDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQAbstractPrintDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQAbstractPrintDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQAbstractPrintDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQAbstractPrintDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQAbstractPrintDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQAbstractPrintDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQAbstractPrintDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQAbstractPrintDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQAbstractPrintDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQAbstractPrintDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQAbstractPrintDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQAbstractPrintDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQAbstractPrintDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQAbstractPrintDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQAbstractPrintDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQAbstractPrintDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQAbstractPrintDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQAbstractPrintDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQAbstractPrintDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQAbstractPrintDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAbstractPrintDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAbstractPrintDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAbstractPrintDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAbstractPrintDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAbstractPrintDialog_vtable_callback_disconnectNotify
  gen_qabstractprintdialog_types.QAbstractPrintDialog(h: fcQAbstractPrintDialog_new2(addr(vtbl[].vtbl), addr(vtbl[]), printer.h, parent.h), owned: true)

const cQAbstractPrintDialog_mvtbl = cQAbstractPrintDialogVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractPrintDialog()[])](self.fcQAbstractPrintDialog_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQAbstractPrintDialog_method_callback_metaObject,
  metacast: fcQAbstractPrintDialog_method_callback_metacast,
  metacall: fcQAbstractPrintDialog_method_callback_metacall,
  setVisible: fcQAbstractPrintDialog_method_callback_setVisible,
  sizeHint: fcQAbstractPrintDialog_method_callback_sizeHint,
  minimumSizeHint: fcQAbstractPrintDialog_method_callback_minimumSizeHint,
  open: fcQAbstractPrintDialog_method_callback_open,
  exec: fcQAbstractPrintDialog_method_callback_exec,
  done: fcQAbstractPrintDialog_method_callback_done,
  accept: fcQAbstractPrintDialog_method_callback_accept,
  reject: fcQAbstractPrintDialog_method_callback_reject,
  keyPressEvent: fcQAbstractPrintDialog_method_callback_keyPressEvent,
  closeEvent: fcQAbstractPrintDialog_method_callback_closeEvent,
  showEvent: fcQAbstractPrintDialog_method_callback_showEvent,
  resizeEvent: fcQAbstractPrintDialog_method_callback_resizeEvent,
  contextMenuEvent: fcQAbstractPrintDialog_method_callback_contextMenuEvent,
  eventFilter: fcQAbstractPrintDialog_method_callback_eventFilter,
  devType: fcQAbstractPrintDialog_method_callback_devType,
  heightForWidth: fcQAbstractPrintDialog_method_callback_heightForWidth,
  hasHeightForWidth: fcQAbstractPrintDialog_method_callback_hasHeightForWidth,
  paintEngine: fcQAbstractPrintDialog_method_callback_paintEngine,
  event: fcQAbstractPrintDialog_method_callback_event,
  mousePressEvent: fcQAbstractPrintDialog_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQAbstractPrintDialog_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQAbstractPrintDialog_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQAbstractPrintDialog_method_callback_mouseMoveEvent,
  wheelEvent: fcQAbstractPrintDialog_method_callback_wheelEvent,
  keyReleaseEvent: fcQAbstractPrintDialog_method_callback_keyReleaseEvent,
  focusInEvent: fcQAbstractPrintDialog_method_callback_focusInEvent,
  focusOutEvent: fcQAbstractPrintDialog_method_callback_focusOutEvent,
  enterEvent: fcQAbstractPrintDialog_method_callback_enterEvent,
  leaveEvent: fcQAbstractPrintDialog_method_callback_leaveEvent,
  paintEvent: fcQAbstractPrintDialog_method_callback_paintEvent,
  moveEvent: fcQAbstractPrintDialog_method_callback_moveEvent,
  tabletEvent: fcQAbstractPrintDialog_method_callback_tabletEvent,
  actionEvent: fcQAbstractPrintDialog_method_callback_actionEvent,
  dragEnterEvent: fcQAbstractPrintDialog_method_callback_dragEnterEvent,
  dragMoveEvent: fcQAbstractPrintDialog_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQAbstractPrintDialog_method_callback_dragLeaveEvent,
  dropEvent: fcQAbstractPrintDialog_method_callback_dropEvent,
  hideEvent: fcQAbstractPrintDialog_method_callback_hideEvent,
  nativeEvent: fcQAbstractPrintDialog_method_callback_nativeEvent,
  changeEvent: fcQAbstractPrintDialog_method_callback_changeEvent,
  metric: fcQAbstractPrintDialog_method_callback_metric,
  initPainter: fcQAbstractPrintDialog_method_callback_initPainter,
  redirected: fcQAbstractPrintDialog_method_callback_redirected,
  sharedPainter: fcQAbstractPrintDialog_method_callback_sharedPainter,
  inputMethodEvent: fcQAbstractPrintDialog_method_callback_inputMethodEvent,
  inputMethodQuery: fcQAbstractPrintDialog_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQAbstractPrintDialog_method_callback_focusNextPrevChild,
  timerEvent: fcQAbstractPrintDialog_method_callback_timerEvent,
  childEvent: fcQAbstractPrintDialog_method_callback_childEvent,
  customEvent: fcQAbstractPrintDialog_method_callback_customEvent,
  connectNotify: fcQAbstractPrintDialog_method_callback_connectNotify,
  disconnectNotify: fcQAbstractPrintDialog_method_callback_disconnectNotify,
)
proc create*(T: type gen_qabstractprintdialog_types.QAbstractPrintDialog,
    printer: gen_qprinter_types.QPrinter,
    inst: VirtualQAbstractPrintDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractPrintDialog_new(addr(cQAbstractPrintDialog_mvtbl), addr(inst[]), printer.h)
  inst[].owned = true

proc create*(T: type gen_qabstractprintdialog_types.QAbstractPrintDialog,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget,
    inst: VirtualQAbstractPrintDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractPrintDialog_new2(addr(cQAbstractPrintDialog_mvtbl), addr(inst[]), printer.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qabstractprintdialog_types.QAbstractPrintDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractPrintDialog_staticMetaObject())
