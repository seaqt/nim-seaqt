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

proc fcQAbstractPrintDialog_new(printer: pointer): ptr cQAbstractPrintDialog {.importc: "QAbstractPrintDialog_new".}
proc fcQAbstractPrintDialog_new2(printer: pointer, parent: pointer): ptr cQAbstractPrintDialog {.importc: "QAbstractPrintDialog_new2".}
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
proc fQAbstractPrintDialog_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractPrintDialog_virtualbase_metaObject".}
proc fcQAbstractPrintDialog_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_metaObject".}
proc fQAbstractPrintDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractPrintDialog_virtualbase_metacast".}
proc fcQAbstractPrintDialog_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_metacast".}
proc fQAbstractPrintDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractPrintDialog_virtualbase_metacall".}
proc fcQAbstractPrintDialog_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_metacall".}
proc fQAbstractPrintDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QAbstractPrintDialog_virtualbase_setVisible".}
proc fcQAbstractPrintDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_setVisible".}
proc fQAbstractPrintDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QAbstractPrintDialog_virtualbase_sizeHint".}
proc fcQAbstractPrintDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_sizeHint".}
proc fQAbstractPrintDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QAbstractPrintDialog_virtualbase_minimumSizeHint".}
proc fcQAbstractPrintDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_minimumSizeHint".}
proc fQAbstractPrintDialog_virtualbase_open(self: pointer, ): void{.importc: "QAbstractPrintDialog_virtualbase_open".}
proc fcQAbstractPrintDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_open".}
proc fQAbstractPrintDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QAbstractPrintDialog_virtualbase_exec".}
proc fcQAbstractPrintDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_exec".}
proc fQAbstractPrintDialog_virtualbase_done(self: pointer, param1: cint): void{.importc: "QAbstractPrintDialog_virtualbase_done".}
proc fcQAbstractPrintDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_done".}
proc fQAbstractPrintDialog_virtualbase_accept(self: pointer, ): void{.importc: "QAbstractPrintDialog_virtualbase_accept".}
proc fcQAbstractPrintDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_accept".}
proc fQAbstractPrintDialog_virtualbase_reject(self: pointer, ): void{.importc: "QAbstractPrintDialog_virtualbase_reject".}
proc fcQAbstractPrintDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_reject".}
proc fQAbstractPrintDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_keyPressEvent".}
proc fcQAbstractPrintDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_keyPressEvent".}
proc fQAbstractPrintDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_closeEvent".}
proc fcQAbstractPrintDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_closeEvent".}
proc fQAbstractPrintDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_showEvent".}
proc fcQAbstractPrintDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_showEvent".}
proc fQAbstractPrintDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_resizeEvent".}
proc fcQAbstractPrintDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_resizeEvent".}
proc fQAbstractPrintDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_contextMenuEvent".}
proc fcQAbstractPrintDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_contextMenuEvent".}
proc fQAbstractPrintDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QAbstractPrintDialog_virtualbase_eventFilter".}
proc fcQAbstractPrintDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_eventFilter".}
proc fQAbstractPrintDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QAbstractPrintDialog_virtualbase_devType".}
proc fcQAbstractPrintDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_devType".}
proc fQAbstractPrintDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QAbstractPrintDialog_virtualbase_heightForWidth".}
proc fcQAbstractPrintDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_heightForWidth".}
proc fQAbstractPrintDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QAbstractPrintDialog_virtualbase_hasHeightForWidth".}
proc fcQAbstractPrintDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_hasHeightForWidth".}
proc fQAbstractPrintDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QAbstractPrintDialog_virtualbase_paintEngine".}
proc fcQAbstractPrintDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_paintEngine".}
proc fQAbstractPrintDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractPrintDialog_virtualbase_event".}
proc fcQAbstractPrintDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_event".}
proc fQAbstractPrintDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_mousePressEvent".}
proc fcQAbstractPrintDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_mousePressEvent".}
proc fQAbstractPrintDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_mouseReleaseEvent".}
proc fcQAbstractPrintDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_mouseReleaseEvent".}
proc fQAbstractPrintDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractPrintDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_mouseDoubleClickEvent".}
proc fQAbstractPrintDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_mouseMoveEvent".}
proc fcQAbstractPrintDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_mouseMoveEvent".}
proc fQAbstractPrintDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_wheelEvent".}
proc fcQAbstractPrintDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_wheelEvent".}
proc fQAbstractPrintDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_keyReleaseEvent".}
proc fcQAbstractPrintDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_keyReleaseEvent".}
proc fQAbstractPrintDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_focusInEvent".}
proc fcQAbstractPrintDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_focusInEvent".}
proc fQAbstractPrintDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_focusOutEvent".}
proc fcQAbstractPrintDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_focusOutEvent".}
proc fQAbstractPrintDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_enterEvent".}
proc fcQAbstractPrintDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_enterEvent".}
proc fQAbstractPrintDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_leaveEvent".}
proc fcQAbstractPrintDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_leaveEvent".}
proc fQAbstractPrintDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_paintEvent".}
proc fcQAbstractPrintDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_paintEvent".}
proc fQAbstractPrintDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_moveEvent".}
proc fcQAbstractPrintDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_moveEvent".}
proc fQAbstractPrintDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_tabletEvent".}
proc fcQAbstractPrintDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_tabletEvent".}
proc fQAbstractPrintDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_actionEvent".}
proc fcQAbstractPrintDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_actionEvent".}
proc fQAbstractPrintDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_dragEnterEvent".}
proc fcQAbstractPrintDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_dragEnterEvent".}
proc fQAbstractPrintDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_dragMoveEvent".}
proc fcQAbstractPrintDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_dragMoveEvent".}
proc fQAbstractPrintDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_dragLeaveEvent".}
proc fcQAbstractPrintDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_dragLeaveEvent".}
proc fQAbstractPrintDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_dropEvent".}
proc fcQAbstractPrintDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_dropEvent".}
proc fQAbstractPrintDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_hideEvent".}
proc fcQAbstractPrintDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_hideEvent".}
proc fQAbstractPrintDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QAbstractPrintDialog_virtualbase_nativeEvent".}
proc fcQAbstractPrintDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_nativeEvent".}
proc fQAbstractPrintDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_changeEvent".}
proc fcQAbstractPrintDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_changeEvent".}
proc fQAbstractPrintDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QAbstractPrintDialog_virtualbase_metric".}
proc fcQAbstractPrintDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_metric".}
proc fQAbstractPrintDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_initPainter".}
proc fcQAbstractPrintDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_initPainter".}
proc fQAbstractPrintDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QAbstractPrintDialog_virtualbase_redirected".}
proc fcQAbstractPrintDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_redirected".}
proc fQAbstractPrintDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QAbstractPrintDialog_virtualbase_sharedPainter".}
proc fcQAbstractPrintDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_sharedPainter".}
proc fQAbstractPrintDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_inputMethodEvent".}
proc fcQAbstractPrintDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_inputMethodEvent".}
proc fQAbstractPrintDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QAbstractPrintDialog_virtualbase_inputMethodQuery".}
proc fcQAbstractPrintDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_inputMethodQuery".}
proc fQAbstractPrintDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QAbstractPrintDialog_virtualbase_focusNextPrevChild".}
proc fcQAbstractPrintDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_focusNextPrevChild".}
proc fQAbstractPrintDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_timerEvent".}
proc fcQAbstractPrintDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_timerEvent".}
proc fQAbstractPrintDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_childEvent".}
proc fcQAbstractPrintDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_childEvent".}
proc fQAbstractPrintDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_customEvent".}
proc fcQAbstractPrintDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_customEvent".}
proc fQAbstractPrintDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_connectNotify".}
proc fcQAbstractPrintDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_connectNotify".}
proc fQAbstractPrintDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_disconnectNotify".}
proc fcQAbstractPrintDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_disconnectNotify".}
proc fcQAbstractPrintDialog_staticMetaObject(): pointer {.importc: "QAbstractPrintDialog_staticMetaObject".}
proc fcQAbstractPrintDialog_delete(self: pointer) {.importc: "QAbstractPrintDialog_delete".}


func init*(T: type gen_qabstractprintdialog_types.QAbstractPrintDialog, h: ptr cQAbstractPrintDialog): gen_qabstractprintdialog_types.QAbstractPrintDialog =
  T(h: h)
proc create*(T: type gen_qabstractprintdialog_types.QAbstractPrintDialog, printer: gen_qprinter_types.QPrinter): gen_qabstractprintdialog_types.QAbstractPrintDialog =
  gen_qabstractprintdialog_types.QAbstractPrintDialog.init(fcQAbstractPrintDialog_new(printer.h))

proc create*(T: type gen_qabstractprintdialog_types.QAbstractPrintDialog, printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget): gen_qabstractprintdialog_types.QAbstractPrintDialog =
  gen_qabstractprintdialog_types.QAbstractPrintDialog.init(fcQAbstractPrintDialog_new2(printer.h, parent.h))

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

proc QAbstractPrintDialogmetaObject*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAbstractPrintDialog_virtualbase_metaObject(self.h))

type QAbstractPrintDialogmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogmetaObjectProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_metaObject(self: ptr cQAbstractPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractPrintDialog_metaObject ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractPrintDialogmetacast*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cstring): pointer =
  fQAbstractPrintDialog_virtualbase_metacast(self.h, param1)

type QAbstractPrintDialogmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogmetacastProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_metacast(self: ptr cQAbstractPrintDialog, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractPrintDialog_metacast ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractPrintDialogmetacall*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cint, param2: cint, param3: pointer): cint =
  fQAbstractPrintDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractPrintDialogmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogmetacallProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_metacall(self: ptr cQAbstractPrintDialog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractPrintDialog_metacall ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractPrintDialogsetVisible*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, visible: bool): void =
  fQAbstractPrintDialog_virtualbase_setVisible(self.h, visible)

type QAbstractPrintDialogsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogsetVisibleProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_setVisible(self: ptr cQAbstractPrintDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_setVisible ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QAbstractPrintDialogsizeHint*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractPrintDialog_virtualbase_sizeHint(self.h))

type QAbstractPrintDialogsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogsizeHintProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_sizeHint(self: ptr cQAbstractPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractPrintDialog_sizeHint ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractPrintDialogminimumSizeHint*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractPrintDialog_virtualbase_minimumSizeHint(self.h))

type QAbstractPrintDialogminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_minimumSizeHint(self: ptr cQAbstractPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractPrintDialog_minimumSizeHint ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractPrintDialogopen*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): void =
  fQAbstractPrintDialog_virtualbase_open(self.h)

type QAbstractPrintDialogopenProc* = proc(): void
proc onopen*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogopenProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_open(self: ptr cQAbstractPrintDialog, slot: int): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_open ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogopenProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractPrintDialogexec*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): cint =
  fQAbstractPrintDialog_virtualbase_exec(self.h)

type QAbstractPrintDialogexecProc* = proc(): cint
proc onexec*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogexecProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogexecProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_exec(self: ptr cQAbstractPrintDialog, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractPrintDialog_exec ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogexecProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractPrintDialogdone*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cint): void =
  fQAbstractPrintDialog_virtualbase_done(self.h, param1)

type QAbstractPrintDialogdoneProc* = proc(param1: cint): void
proc ondone*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogdoneProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogdoneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_done(self: ptr cQAbstractPrintDialog, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_done ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogdoneProc](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)
proc QAbstractPrintDialogaccept*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): void =
  fQAbstractPrintDialog_virtualbase_accept(self.h)

type QAbstractPrintDialogacceptProc* = proc(): void
proc onaccept*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogacceptProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogacceptProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_accept(self: ptr cQAbstractPrintDialog, slot: int): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_accept ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogacceptProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractPrintDialogreject*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): void =
  fQAbstractPrintDialog_virtualbase_reject(self.h)

type QAbstractPrintDialogrejectProc* = proc(): void
proc onreject*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogrejectProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogrejectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_reject(self: ptr cQAbstractPrintDialog, slot: int): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_reject ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogrejectProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractPrintDialogkeyPressEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QKeyEvent): void =
  fQAbstractPrintDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QAbstractPrintDialogkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_keyPressEvent(self: ptr cQAbstractPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_keyPressEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractPrintDialogcloseEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QCloseEvent): void =
  fQAbstractPrintDialog_virtualbase_closeEvent(self.h, param1.h)

type QAbstractPrintDialogcloseEventProc* = proc(param1: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogcloseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_closeEvent(self: ptr cQAbstractPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_closeEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractPrintDialogshowEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QShowEvent): void =
  fQAbstractPrintDialog_virtualbase_showEvent(self.h, param1.h)

type QAbstractPrintDialogshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogshowEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_showEvent(self: ptr cQAbstractPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_showEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractPrintDialogresizeEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QResizeEvent): void =
  fQAbstractPrintDialog_virtualbase_resizeEvent(self.h, param1.h)

type QAbstractPrintDialogresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogresizeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_resizeEvent(self: ptr cQAbstractPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_resizeEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractPrintDialogcontextMenuEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fQAbstractPrintDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QAbstractPrintDialogcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_contextMenuEvent(self: ptr cQAbstractPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_contextMenuEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractPrintDialogeventFilter*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQAbstractPrintDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QAbstractPrintDialogeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogeventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_eventFilter(self: ptr cQAbstractPrintDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QAbstractPrintDialog_eventFilter ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractPrintDialogdevType*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): cint =
  fQAbstractPrintDialog_virtualbase_devType(self.h)

type QAbstractPrintDialogdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogdevTypeProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_devType(self: ptr cQAbstractPrintDialog, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractPrintDialog_devType ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractPrintDialogheightForWidth*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cint): cint =
  fQAbstractPrintDialog_virtualbase_heightForWidth(self.h, param1)

type QAbstractPrintDialogheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogheightForWidthProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_heightForWidth(self: ptr cQAbstractPrintDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractPrintDialog_heightForWidth ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractPrintDialoghasHeightForWidth*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): bool =
  fQAbstractPrintDialog_virtualbase_hasHeightForWidth(self.h)

type QAbstractPrintDialoghasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialoghasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialoghasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_hasHeightForWidth(self: ptr cQAbstractPrintDialog, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractPrintDialog_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QAbstractPrintDialoghasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractPrintDialogpaintEngine*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQAbstractPrintDialog_virtualbase_paintEngine(self.h))

type QAbstractPrintDialogpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogpaintEngineProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_paintEngine(self: ptr cQAbstractPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractPrintDialog_paintEngine ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractPrintDialogevent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractPrintDialog_virtualbase_event(self.h, event.h)

type QAbstractPrintDialogeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogeventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_event(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractPrintDialog_event ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractPrintDialogmousePressEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fQAbstractPrintDialog_virtualbase_mousePressEvent(self.h, event.h)

type QAbstractPrintDialogmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogmousePressEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_mousePressEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_mousePressEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogmouseReleaseEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fQAbstractPrintDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QAbstractPrintDialogmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_mouseReleaseEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogmouseDoubleClickEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fQAbstractPrintDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QAbstractPrintDialogmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_mouseDoubleClickEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogmouseMoveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fQAbstractPrintDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QAbstractPrintDialogmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_mouseMoveEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogwheelEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QWheelEvent): void =
  fQAbstractPrintDialog_virtualbase_wheelEvent(self.h, event.h)

type QAbstractPrintDialogwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogwheelEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_wheelEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_wheelEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogkeyReleaseEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QKeyEvent): void =
  fQAbstractPrintDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QAbstractPrintDialogkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_keyReleaseEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogfocusInEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QFocusEvent): void =
  fQAbstractPrintDialog_virtualbase_focusInEvent(self.h, event.h)

type QAbstractPrintDialogfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogfocusInEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_focusInEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_focusInEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogfocusOutEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QFocusEvent): void =
  fQAbstractPrintDialog_virtualbase_focusOutEvent(self.h, event.h)

type QAbstractPrintDialogfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_focusOutEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_focusOutEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogenterEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractPrintDialog_virtualbase_enterEvent(self.h, event.h)

type QAbstractPrintDialogenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogenterEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_enterEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_enterEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogleaveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractPrintDialog_virtualbase_leaveEvent(self.h, event.h)

type QAbstractPrintDialogleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogleaveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_leaveEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_leaveEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogpaintEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QPaintEvent): void =
  fQAbstractPrintDialog_virtualbase_paintEvent(self.h, event.h)

type QAbstractPrintDialogpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogpaintEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_paintEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_paintEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogmoveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QMoveEvent): void =
  fQAbstractPrintDialog_virtualbase_moveEvent(self.h, event.h)

type QAbstractPrintDialogmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogmoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_moveEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_moveEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogtabletEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QTabletEvent): void =
  fQAbstractPrintDialog_virtualbase_tabletEvent(self.h, event.h)

type QAbstractPrintDialogtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogtabletEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_tabletEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_tabletEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogactionEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QActionEvent): void =
  fQAbstractPrintDialog_virtualbase_actionEvent(self.h, event.h)

type QAbstractPrintDialogactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogactionEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_actionEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_actionEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogdragEnterEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fQAbstractPrintDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QAbstractPrintDialogdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_dragEnterEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_dragEnterEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogdragMoveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fQAbstractPrintDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QAbstractPrintDialogdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_dragMoveEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_dragMoveEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogdragLeaveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fQAbstractPrintDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QAbstractPrintDialogdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_dragLeaveEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogdropEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QDropEvent): void =
  fQAbstractPrintDialog_virtualbase_dropEvent(self.h, event.h)

type QAbstractPrintDialogdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogdropEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_dropEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_dropEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialoghideEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qevent_types.QHideEvent): void =
  fQAbstractPrintDialog_virtualbase_hideEvent(self.h, event.h)

type QAbstractPrintDialoghideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialoghideEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialoghideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_hideEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_hideEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialoghideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialognativeEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQAbstractPrintDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QAbstractPrintDialognativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialognativeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialognativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_nativeEvent(self: ptr cQAbstractPrintDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QAbstractPrintDialog_nativeEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialognativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractPrintDialogchangeEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qcoreevent_types.QEvent): void =
  fQAbstractPrintDialog_virtualbase_changeEvent(self.h, param1.h)

type QAbstractPrintDialogchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogchangeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_changeEvent(self: ptr cQAbstractPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_changeEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractPrintDialogmetric*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cint): cint =
  fQAbstractPrintDialog_virtualbase_metric(self.h, cint(param1))

type QAbstractPrintDialogmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogmetricProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_metric(self: ptr cQAbstractPrintDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractPrintDialog_metric ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractPrintDialoginitPainter*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, painter: gen_qpainter_types.QPainter): void =
  fQAbstractPrintDialog_virtualbase_initPainter(self.h, painter.h)

type QAbstractPrintDialoginitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialoginitPainterProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialoginitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_initPainter(self: ptr cQAbstractPrintDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_initPainter ".} =
  var nimfunc = cast[ptr QAbstractPrintDialoginitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QAbstractPrintDialogredirected*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQAbstractPrintDialog_virtualbase_redirected(self.h, offset.h))

type QAbstractPrintDialogredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogredirectedProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_redirected(self: ptr cQAbstractPrintDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractPrintDialog_redirected ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractPrintDialogsharedPainter*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQAbstractPrintDialog_virtualbase_sharedPainter(self.h))

type QAbstractPrintDialogsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogsharedPainterProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_sharedPainter(self: ptr cQAbstractPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractPrintDialog_sharedPainter ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractPrintDialoginputMethodEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fQAbstractPrintDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QAbstractPrintDialoginputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialoginputMethodEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialoginputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_inputMethodEvent(self: ptr cQAbstractPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_inputMethodEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialoginputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractPrintDialoginputMethodQuery*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQAbstractPrintDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QAbstractPrintDialoginputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialoginputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialoginputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_inputMethodQuery(self: ptr cQAbstractPrintDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QAbstractPrintDialog_inputMethodQuery ".} =
  var nimfunc = cast[ptr QAbstractPrintDialoginputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractPrintDialogfocusNextPrevChild*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, next: bool): bool =
  fQAbstractPrintDialog_virtualbase_focusNextPrevChild(self.h, next)

type QAbstractPrintDialogfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_focusNextPrevChild(self: ptr cQAbstractPrintDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QAbstractPrintDialog_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractPrintDialogtimerEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAbstractPrintDialog_virtualbase_timerEvent(self.h, event.h)

type QAbstractPrintDialogtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogtimerEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_timerEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_timerEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogchildEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fQAbstractPrintDialog_virtualbase_childEvent(self.h, event.h)

type QAbstractPrintDialogchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogchildEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_childEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_childEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogcustomEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractPrintDialog_virtualbase_customEvent(self.h, event.h)

type QAbstractPrintDialogcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogcustomEventProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_customEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_customEvent ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractPrintDialogconnectNotify*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractPrintDialog_virtualbase_connectNotify(self.h, signal.h)

type QAbstractPrintDialogconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_connectNotify(self: ptr cQAbstractPrintDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_connectNotify ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAbstractPrintDialogdisconnectNotify*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractPrintDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractPrintDialogdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog, slot: QAbstractPrintDialogdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractPrintDialogdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_disconnectNotify(self: ptr cQAbstractPrintDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_disconnectNotify ".} =
  var nimfunc = cast[ptr QAbstractPrintDialogdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qabstractprintdialog_types.QAbstractPrintDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractPrintDialog_staticMetaObject())
proc delete*(self: gen_qabstractprintdialog_types.QAbstractPrintDialog) =
  fcQAbstractPrintDialog_delete(self.h)
