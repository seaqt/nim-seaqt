import ./Qt5Widgets_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
{.compile("gen_qcolordialog.cpp", cflags).}


type QColorDialogColorDialogOptionEnum* = distinct cint
template ShowAlphaChannel*(_: type QColorDialogColorDialogOptionEnum): untyped = 1
template NoButtons*(_: type QColorDialogColorDialogOptionEnum): untyped = 2
template DontUseNativeDialog*(_: type QColorDialogColorDialogOptionEnum): untyped = 4


import ./gen_qcolordialog_types
export gen_qcolordialog_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qcolor_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qdialog,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qcolor_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qdialog,
  gen_qwidget_types

type cQColorDialog*{.exportc: "QColorDialog", incompleteStruct.} = object

proc fcQColorDialog_metaObject(self: pointer, ): pointer {.importc: "QColorDialog_metaObject".}
proc fcQColorDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QColorDialog_metacast".}
proc fcQColorDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QColorDialog_metacall".}
proc fcQColorDialog_tr(s: cstring): struct_miqt_string {.importc: "QColorDialog_tr".}
proc fcQColorDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QColorDialog_trUtf8".}
proc fcQColorDialog_setCurrentColor(self: pointer, color: pointer): void {.importc: "QColorDialog_setCurrentColor".}
proc fcQColorDialog_currentColor(self: pointer, ): pointer {.importc: "QColorDialog_currentColor".}
proc fcQColorDialog_selectedColor(self: pointer, ): pointer {.importc: "QColorDialog_selectedColor".}
proc fcQColorDialog_setOption(self: pointer, option: cint): void {.importc: "QColorDialog_setOption".}
proc fcQColorDialog_testOption(self: pointer, option: cint): bool {.importc: "QColorDialog_testOption".}
proc fcQColorDialog_setOptions(self: pointer, options: cint): void {.importc: "QColorDialog_setOptions".}
proc fcQColorDialog_options(self: pointer, ): cint {.importc: "QColorDialog_options".}
proc fcQColorDialog_setVisible(self: pointer, visible: bool): void {.importc: "QColorDialog_setVisible".}
proc fcQColorDialog_getColor(): pointer {.importc: "QColorDialog_getColor".}
proc fcQColorDialog_getRgba(): cuint {.importc: "QColorDialog_getRgba".}
proc fcQColorDialog_customCount(): cint {.importc: "QColorDialog_customCount".}
proc fcQColorDialog_customColor(index: cint): pointer {.importc: "QColorDialog_customColor".}
proc fcQColorDialog_setCustomColor(index: cint, color: pointer): void {.importc: "QColorDialog_setCustomColor".}
proc fcQColorDialog_standardColor(index: cint): pointer {.importc: "QColorDialog_standardColor".}
proc fcQColorDialog_setStandardColor(index: cint, color: pointer): void {.importc: "QColorDialog_setStandardColor".}
proc fcQColorDialog_currentColorChanged(self: pointer, color: pointer): void {.importc: "QColorDialog_currentColorChanged".}
proc fcQColorDialog_connect_currentColorChanged(self: pointer, slot: int, callback: proc (slot: int, color: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QColorDialog_connect_currentColorChanged".}
proc fcQColorDialog_colorSelected(self: pointer, color: pointer): void {.importc: "QColorDialog_colorSelected".}
proc fcQColorDialog_connect_colorSelected(self: pointer, slot: int, callback: proc (slot: int, color: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QColorDialog_connect_colorSelected".}
proc fcQColorDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QColorDialog_tr2".}
proc fcQColorDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QColorDialog_tr3".}
proc fcQColorDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QColorDialog_trUtf82".}
proc fcQColorDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QColorDialog_trUtf83".}
proc fcQColorDialog_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QColorDialog_setOption2".}
proc fcQColorDialog_getColor1(initial: pointer): pointer {.importc: "QColorDialog_getColor1".}
proc fcQColorDialog_getColor2(initial: pointer, parent: pointer): pointer {.importc: "QColorDialog_getColor2".}
proc fcQColorDialog_getColor3(initial: pointer, parent: pointer, title: struct_miqt_string): pointer {.importc: "QColorDialog_getColor3".}
proc fcQColorDialog_getColor4(initial: pointer, parent: pointer, title: struct_miqt_string, options: cint): pointer {.importc: "QColorDialog_getColor4".}
proc fcQColorDialog_getRgba1(rgba: cuint): cuint {.importc: "QColorDialog_getRgba1".}
proc fcQColorDialog_getRgba2(rgba: cuint, ok: ptr bool): cuint {.importc: "QColorDialog_getRgba2".}
proc fcQColorDialog_getRgba3(rgba: cuint, ok: ptr bool, parent: pointer): cuint {.importc: "QColorDialog_getRgba3".}
type cQColorDialogVTable = object
  destructor*: proc(vtbl: ptr cQColorDialogVTable, self: ptr cQColorDialog) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  done*: proc(vtbl, self: pointer, resultVal: cint): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
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
proc fcQColorDialog_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QColorDialog_virtualbase_metaObject".}
proc fcQColorDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QColorDialog_virtualbase_metacast".}
proc fcQColorDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QColorDialog_virtualbase_metacall".}
proc fcQColorDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QColorDialog_virtualbase_setVisible".}
proc fcQColorDialog_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_changeEvent".}
proc fcQColorDialog_virtualbase_done(self: pointer, resultVal: cint): void {.importc: "QColorDialog_virtualbase_done".}
proc fcQColorDialog_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QColorDialog_virtualbase_sizeHint".}
proc fcQColorDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QColorDialog_virtualbase_minimumSizeHint".}
proc fcQColorDialog_virtualbase_open(self: pointer, ): void {.importc: "QColorDialog_virtualbase_open".}
proc fcQColorDialog_virtualbase_exec(self: pointer, ): cint {.importc: "QColorDialog_virtualbase_exec".}
proc fcQColorDialog_virtualbase_accept(self: pointer, ): void {.importc: "QColorDialog_virtualbase_accept".}
proc fcQColorDialog_virtualbase_reject(self: pointer, ): void {.importc: "QColorDialog_virtualbase_reject".}
proc fcQColorDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QColorDialog_virtualbase_keyPressEvent".}
proc fcQColorDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QColorDialog_virtualbase_closeEvent".}
proc fcQColorDialog_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QColorDialog_virtualbase_showEvent".}
proc fcQColorDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QColorDialog_virtualbase_resizeEvent".}
proc fcQColorDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QColorDialog_virtualbase_contextMenuEvent".}
proc fcQColorDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QColorDialog_virtualbase_eventFilter".}
proc fcQColorDialog_virtualbase_devType(self: pointer, ): cint {.importc: "QColorDialog_virtualbase_devType".}
proc fcQColorDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QColorDialog_virtualbase_heightForWidth".}
proc fcQColorDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QColorDialog_virtualbase_hasHeightForWidth".}
proc fcQColorDialog_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QColorDialog_virtualbase_paintEngine".}
proc fcQColorDialog_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QColorDialog_virtualbase_event".}
proc fcQColorDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_mousePressEvent".}
proc fcQColorDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_mouseReleaseEvent".}
proc fcQColorDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQColorDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_mouseMoveEvent".}
proc fcQColorDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_wheelEvent".}
proc fcQColorDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_keyReleaseEvent".}
proc fcQColorDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_focusInEvent".}
proc fcQColorDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_focusOutEvent".}
proc fcQColorDialog_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_enterEvent".}
proc fcQColorDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_leaveEvent".}
proc fcQColorDialog_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_paintEvent".}
proc fcQColorDialog_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_moveEvent".}
proc fcQColorDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_tabletEvent".}
proc fcQColorDialog_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_actionEvent".}
proc fcQColorDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_dragEnterEvent".}
proc fcQColorDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_dragMoveEvent".}
proc fcQColorDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_dragLeaveEvent".}
proc fcQColorDialog_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_dropEvent".}
proc fcQColorDialog_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_hideEvent".}
proc fcQColorDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QColorDialog_virtualbase_nativeEvent".}
proc fcQColorDialog_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QColorDialog_virtualbase_metric".}
proc fcQColorDialog_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QColorDialog_virtualbase_initPainter".}
proc fcQColorDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QColorDialog_virtualbase_redirected".}
proc fcQColorDialog_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QColorDialog_virtualbase_sharedPainter".}
proc fcQColorDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QColorDialog_virtualbase_inputMethodEvent".}
proc fcQColorDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QColorDialog_virtualbase_inputMethodQuery".}
proc fcQColorDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QColorDialog_virtualbase_focusNextPrevChild".}
proc fcQColorDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_timerEvent".}
proc fcQColorDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_childEvent".}
proc fcQColorDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_customEvent".}
proc fcQColorDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QColorDialog_virtualbase_connectNotify".}
proc fcQColorDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QColorDialog_virtualbase_disconnectNotify".}
proc fcQColorDialog_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QColorDialog_protectedbase_adjustPosition".}
proc fcQColorDialog_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QColorDialog_protectedbase_updateMicroFocus".}
proc fcQColorDialog_protectedbase_create(self: pointer, ): void {.importc: "QColorDialog_protectedbase_create".}
proc fcQColorDialog_protectedbase_destroy(self: pointer, ): void {.importc: "QColorDialog_protectedbase_destroy".}
proc fcQColorDialog_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QColorDialog_protectedbase_focusNextChild".}
proc fcQColorDialog_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QColorDialog_protectedbase_focusPreviousChild".}
proc fcQColorDialog_protectedbase_sender(self: pointer, ): pointer {.importc: "QColorDialog_protectedbase_sender".}
proc fcQColorDialog_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QColorDialog_protectedbase_senderSignalIndex".}
proc fcQColorDialog_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QColorDialog_protectedbase_receivers".}
proc fcQColorDialog_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QColorDialog_protectedbase_isSignalConnected".}
proc fcQColorDialog_new(vtbl: pointer, parent: pointer): ptr cQColorDialog {.importc: "QColorDialog_new".}
proc fcQColorDialog_new2(vtbl: pointer, ): ptr cQColorDialog {.importc: "QColorDialog_new2".}
proc fcQColorDialog_new3(vtbl: pointer, initial: pointer): ptr cQColorDialog {.importc: "QColorDialog_new3".}
proc fcQColorDialog_new4(vtbl: pointer, initial: pointer, parent: pointer): ptr cQColorDialog {.importc: "QColorDialog_new4".}
proc fcQColorDialog_staticMetaObject(): pointer {.importc: "QColorDialog_staticMetaObject".}
proc fcQColorDialog_delete(self: pointer) {.importc: "QColorDialog_delete".}

proc metaObject*(self: gen_qcolordialog_types.QColorDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQColorDialog_metaObject(self.h))

proc metacast*(self: gen_qcolordialog_types.QColorDialog, param1: cstring): pointer =
  fcQColorDialog_metacast(self.h, param1)

proc metacall*(self: gen_qcolordialog_types.QColorDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQColorDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcolordialog_types.QColorDialog, s: cstring): string =
  let v_ms = fcQColorDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcolordialog_types.QColorDialog, s: cstring): string =
  let v_ms = fcQColorDialog_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCurrentColor*(self: gen_qcolordialog_types.QColorDialog, color: gen_qcolor_types.QColor): void =
  fcQColorDialog_setCurrentColor(self.h, color.h)

proc currentColor*(self: gen_qcolordialog_types.QColorDialog, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_currentColor(self.h))

proc selectedColor*(self: gen_qcolordialog_types.QColorDialog, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_selectedColor(self.h))

proc setOption*(self: gen_qcolordialog_types.QColorDialog, option: cint): void =
  fcQColorDialog_setOption(self.h, cint(option))

proc testOption*(self: gen_qcolordialog_types.QColorDialog, option: cint): bool =
  fcQColorDialog_testOption(self.h, cint(option))

proc setOptions*(self: gen_qcolordialog_types.QColorDialog, options: cint): void =
  fcQColorDialog_setOptions(self.h, cint(options))

proc options*(self: gen_qcolordialog_types.QColorDialog, ): cint =
  cint(fcQColorDialog_options(self.h))

proc setVisible*(self: gen_qcolordialog_types.QColorDialog, visible: bool): void =
  fcQColorDialog_setVisible(self.h, visible)

proc getColor*(_: type gen_qcolordialog_types.QColorDialog, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_getColor())

proc getRgba*(_: type gen_qcolordialog_types.QColorDialog, ): cuint =
  fcQColorDialog_getRgba()

proc customCount*(_: type gen_qcolordialog_types.QColorDialog, ): cint =
  fcQColorDialog_customCount()

proc customColor*(_: type gen_qcolordialog_types.QColorDialog, index: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_customColor(index))

proc setCustomColor*(_: type gen_qcolordialog_types.QColorDialog, index: cint, color: gen_qcolor_types.QColor): void =
  fcQColorDialog_setCustomColor(index, color.h)

proc standardColor*(_: type gen_qcolordialog_types.QColorDialog, index: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_standardColor(index))

proc setStandardColor*(_: type gen_qcolordialog_types.QColorDialog, index: cint, color: gen_qcolor_types.QColor): void =
  fcQColorDialog_setStandardColor(index, color.h)

proc currentColorChanged*(self: gen_qcolordialog_types.QColorDialog, color: gen_qcolor_types.QColor): void =
  fcQColorDialog_currentColorChanged(self.h, color.h)

type QColorDialogcurrentColorChangedSlot* = proc(color: gen_qcolor_types.QColor)
proc miqt_exec_callback_cQColorDialog_currentColorChanged(slot: int, color: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QColorDialogcurrentColorChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qcolor_types.QColor(h: color)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQColorDialog_currentColorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QColorDialogcurrentColorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentColorChanged*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogcurrentColorChangedSlot) =
  var tmp = new QColorDialogcurrentColorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_connect_currentColorChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQColorDialog_currentColorChanged, miqt_exec_callback_cQColorDialog_currentColorChanged_release)

proc colorSelected*(self: gen_qcolordialog_types.QColorDialog, color: gen_qcolor_types.QColor): void =
  fcQColorDialog_colorSelected(self.h, color.h)

type QColorDialogcolorSelectedSlot* = proc(color: gen_qcolor_types.QColor)
proc miqt_exec_callback_cQColorDialog_colorSelected(slot: int, color: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QColorDialogcolorSelectedSlot](cast[pointer](slot))
  let slotval1 = gen_qcolor_types.QColor(h: color)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQColorDialog_colorSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QColorDialogcolorSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncolorSelected*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogcolorSelectedSlot) =
  var tmp = new QColorDialogcolorSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_connect_colorSelected(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQColorDialog_colorSelected, miqt_exec_callback_cQColorDialog_colorSelected_release)

proc tr*(_: type gen_qcolordialog_types.QColorDialog, s: cstring, c: cstring): string =
  let v_ms = fcQColorDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcolordialog_types.QColorDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQColorDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcolordialog_types.QColorDialog, s: cstring, c: cstring): string =
  let v_ms = fcQColorDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcolordialog_types.QColorDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQColorDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption*(self: gen_qcolordialog_types.QColorDialog, option: cint, on: bool): void =
  fcQColorDialog_setOption2(self.h, cint(option), on)

proc getColor*(_: type gen_qcolordialog_types.QColorDialog, initial: gen_qcolor_types.QColor): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_getColor1(initial.h))

proc getColor*(_: type gen_qcolordialog_types.QColorDialog, initial: gen_qcolor_types.QColor, parent: gen_qwidget_types.QWidget): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_getColor2(initial.h, parent.h))

proc getColor*(_: type gen_qcolordialog_types.QColorDialog, initial: gen_qcolor_types.QColor, parent: gen_qwidget_types.QWidget, title: string): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_getColor3(initial.h, parent.h, struct_miqt_string(data: title, len: csize_t(len(title)))))

proc getColor*(_: type gen_qcolordialog_types.QColorDialog, initial: gen_qcolor_types.QColor, parent: gen_qwidget_types.QWidget, title: string, options: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_getColor4(initial.h, parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), cint(options)))

proc getRgba*(_: type gen_qcolordialog_types.QColorDialog, rgba: cuint): cuint =
  fcQColorDialog_getRgba1(rgba)

proc getRgba*(_: type gen_qcolordialog_types.QColorDialog, rgba: cuint, ok: ptr bool): cuint =
  fcQColorDialog_getRgba2(rgba, ok)

proc getRgba*(_: type gen_qcolordialog_types.QColorDialog, rgba: cuint, ok: ptr bool, parent: gen_qwidget_types.QWidget): cuint =
  fcQColorDialog_getRgba3(rgba, ok, parent.h)

type QColorDialogmetaObjectProc* = proc(self: QColorDialog): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QColorDialogmetacastProc* = proc(self: QColorDialog, param1: cstring): pointer {.raises: [], gcsafe.}
type QColorDialogmetacallProc* = proc(self: QColorDialog, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QColorDialogsetVisibleProc* = proc(self: QColorDialog, visible: bool): void {.raises: [], gcsafe.}
type QColorDialogchangeEventProc* = proc(self: QColorDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QColorDialogdoneProc* = proc(self: QColorDialog, resultVal: cint): void {.raises: [], gcsafe.}
type QColorDialogsizeHintProc* = proc(self: QColorDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QColorDialogminimumSizeHintProc* = proc(self: QColorDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QColorDialogopenProc* = proc(self: QColorDialog): void {.raises: [], gcsafe.}
type QColorDialogexecProc* = proc(self: QColorDialog): cint {.raises: [], gcsafe.}
type QColorDialogacceptProc* = proc(self: QColorDialog): void {.raises: [], gcsafe.}
type QColorDialogrejectProc* = proc(self: QColorDialog): void {.raises: [], gcsafe.}
type QColorDialogkeyPressEventProc* = proc(self: QColorDialog, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QColorDialogcloseEventProc* = proc(self: QColorDialog, param1: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QColorDialogshowEventProc* = proc(self: QColorDialog, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QColorDialogresizeEventProc* = proc(self: QColorDialog, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QColorDialogcontextMenuEventProc* = proc(self: QColorDialog, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QColorDialogeventFilterProc* = proc(self: QColorDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QColorDialogdevTypeProc* = proc(self: QColorDialog): cint {.raises: [], gcsafe.}
type QColorDialogheightForWidthProc* = proc(self: QColorDialog, param1: cint): cint {.raises: [], gcsafe.}
type QColorDialoghasHeightForWidthProc* = proc(self: QColorDialog): bool {.raises: [], gcsafe.}
type QColorDialogpaintEngineProc* = proc(self: QColorDialog): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QColorDialogeventProc* = proc(self: QColorDialog, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QColorDialogmousePressEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QColorDialogmouseReleaseEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QColorDialogmouseDoubleClickEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QColorDialogmouseMoveEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QColorDialogwheelEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QColorDialogkeyReleaseEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QColorDialogfocusInEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QColorDialogfocusOutEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QColorDialogenterEventProc* = proc(self: QColorDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QColorDialogleaveEventProc* = proc(self: QColorDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QColorDialogpaintEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QColorDialogmoveEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QColorDialogtabletEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QColorDialogactionEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QColorDialogdragEnterEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QColorDialogdragMoveEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QColorDialogdragLeaveEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QColorDialogdropEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QColorDialoghideEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QColorDialognativeEventProc* = proc(self: QColorDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QColorDialogmetricProc* = proc(self: QColorDialog, param1: cint): cint {.raises: [], gcsafe.}
type QColorDialoginitPainterProc* = proc(self: QColorDialog, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QColorDialogredirectedProc* = proc(self: QColorDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QColorDialogsharedPainterProc* = proc(self: QColorDialog): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QColorDialoginputMethodEventProc* = proc(self: QColorDialog, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QColorDialoginputMethodQueryProc* = proc(self: QColorDialog, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QColorDialogfocusNextPrevChildProc* = proc(self: QColorDialog, next: bool): bool {.raises: [], gcsafe.}
type QColorDialogtimerEventProc* = proc(self: QColorDialog, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QColorDialogchildEventProc* = proc(self: QColorDialog, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QColorDialogcustomEventProc* = proc(self: QColorDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QColorDialogconnectNotifyProc* = proc(self: QColorDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QColorDialogdisconnectNotifyProc* = proc(self: QColorDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QColorDialogVTable* = object
  vtbl: cQColorDialogVTable
  metaObject*: QColorDialogmetaObjectProc
  metacast*: QColorDialogmetacastProc
  metacall*: QColorDialogmetacallProc
  setVisible*: QColorDialogsetVisibleProc
  changeEvent*: QColorDialogchangeEventProc
  done*: QColorDialogdoneProc
  sizeHint*: QColorDialogsizeHintProc
  minimumSizeHint*: QColorDialogminimumSizeHintProc
  open*: QColorDialogopenProc
  exec*: QColorDialogexecProc
  accept*: QColorDialogacceptProc
  reject*: QColorDialogrejectProc
  keyPressEvent*: QColorDialogkeyPressEventProc
  closeEvent*: QColorDialogcloseEventProc
  showEvent*: QColorDialogshowEventProc
  resizeEvent*: QColorDialogresizeEventProc
  contextMenuEvent*: QColorDialogcontextMenuEventProc
  eventFilter*: QColorDialogeventFilterProc
  devType*: QColorDialogdevTypeProc
  heightForWidth*: QColorDialogheightForWidthProc
  hasHeightForWidth*: QColorDialoghasHeightForWidthProc
  paintEngine*: QColorDialogpaintEngineProc
  event*: QColorDialogeventProc
  mousePressEvent*: QColorDialogmousePressEventProc
  mouseReleaseEvent*: QColorDialogmouseReleaseEventProc
  mouseDoubleClickEvent*: QColorDialogmouseDoubleClickEventProc
  mouseMoveEvent*: QColorDialogmouseMoveEventProc
  wheelEvent*: QColorDialogwheelEventProc
  keyReleaseEvent*: QColorDialogkeyReleaseEventProc
  focusInEvent*: QColorDialogfocusInEventProc
  focusOutEvent*: QColorDialogfocusOutEventProc
  enterEvent*: QColorDialogenterEventProc
  leaveEvent*: QColorDialogleaveEventProc
  paintEvent*: QColorDialogpaintEventProc
  moveEvent*: QColorDialogmoveEventProc
  tabletEvent*: QColorDialogtabletEventProc
  actionEvent*: QColorDialogactionEventProc
  dragEnterEvent*: QColorDialogdragEnterEventProc
  dragMoveEvent*: QColorDialogdragMoveEventProc
  dragLeaveEvent*: QColorDialogdragLeaveEventProc
  dropEvent*: QColorDialogdropEventProc
  hideEvent*: QColorDialoghideEventProc
  nativeEvent*: QColorDialognativeEventProc
  metric*: QColorDialogmetricProc
  initPainter*: QColorDialoginitPainterProc
  redirected*: QColorDialogredirectedProc
  sharedPainter*: QColorDialogsharedPainterProc
  inputMethodEvent*: QColorDialoginputMethodEventProc
  inputMethodQuery*: QColorDialoginputMethodQueryProc
  focusNextPrevChild*: QColorDialogfocusNextPrevChildProc
  timerEvent*: QColorDialogtimerEventProc
  childEvent*: QColorDialogchildEventProc
  customEvent*: QColorDialogcustomEventProc
  connectNotify*: QColorDialogconnectNotifyProc
  disconnectNotify*: QColorDialogdisconnectNotifyProc
proc QColorDialogmetaObject*(self: gen_qcolordialog_types.QColorDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQColorDialog_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQColorDialog_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QColorDialogmetacast*(self: gen_qcolordialog_types.QColorDialog, param1: cstring): pointer =
  fcQColorDialog_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQColorDialog_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QColorDialogmetacall*(self: gen_qcolordialog_types.QColorDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQColorDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQColorDialog_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QColorDialogsetVisible*(self: gen_qcolordialog_types.QColorDialog, visible: bool): void =
  fcQColorDialog_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQColorDialog_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QColorDialogchangeEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQColorDialog_virtualbase_changeEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_changeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].changeEvent(self, slotval1)

proc QColorDialogdone*(self: gen_qcolordialog_types.QColorDialog, resultVal: cint): void =
  fcQColorDialog_virtualbase_done(self.h, resultVal)

proc miqt_exec_callback_cQColorDialog_done(vtbl: pointer, self: pointer, resultVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = resultVal
  vtbl[].done(self, slotval1)

proc QColorDialogsizeHint*(self: gen_qcolordialog_types.QColorDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQColorDialog_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQColorDialog_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QColorDialogminimumSizeHint*(self: gen_qcolordialog_types.QColorDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQColorDialog_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQColorDialog_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QColorDialogopen*(self: gen_qcolordialog_types.QColorDialog, ): void =
  fcQColorDialog_virtualbase_open(self.h)

proc miqt_exec_callback_cQColorDialog_open(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  vtbl[].open(self)

proc QColorDialogexec*(self: gen_qcolordialog_types.QColorDialog, ): cint =
  fcQColorDialog_virtualbase_exec(self.h)

proc miqt_exec_callback_cQColorDialog_exec(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QColorDialogaccept*(self: gen_qcolordialog_types.QColorDialog, ): void =
  fcQColorDialog_virtualbase_accept(self.h)

proc miqt_exec_callback_cQColorDialog_accept(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  vtbl[].accept(self)

proc QColorDialogreject*(self: gen_qcolordialog_types.QColorDialog, ): void =
  fcQColorDialog_virtualbase_reject(self.h)

proc miqt_exec_callback_cQColorDialog_reject(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  vtbl[].reject(self)

proc QColorDialogkeyPressEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQColorDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQColorDialog_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QColorDialogcloseEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QCloseEvent): void =
  fcQColorDialog_virtualbase_closeEvent(self.h, param1.h)

proc miqt_exec_callback_cQColorDialog_closeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)
  vtbl[].closeEvent(self, slotval1)

proc QColorDialogshowEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QShowEvent): void =
  fcQColorDialog_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQColorDialog_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)
  vtbl[].showEvent(self, slotval1)

proc QColorDialogresizeEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QResizeEvent): void =
  fcQColorDialog_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQColorDialog_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)
  vtbl[].resizeEvent(self, slotval1)

proc QColorDialogcontextMenuEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQColorDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQColorDialog_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QColorDialogeventFilter*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQColorDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQColorDialog_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QColorDialogdevType*(self: gen_qcolordialog_types.QColorDialog, ): cint =
  fcQColorDialog_virtualbase_devType(self.h)

proc miqt_exec_callback_cQColorDialog_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QColorDialogheightForWidth*(self: gen_qcolordialog_types.QColorDialog, param1: cint): cint =
  fcQColorDialog_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQColorDialog_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QColorDialoghasHeightForWidth*(self: gen_qcolordialog_types.QColorDialog, ): bool =
  fcQColorDialog_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQColorDialog_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QColorDialogpaintEngine*(self: gen_qcolordialog_types.QColorDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQColorDialog_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQColorDialog_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QColorDialogevent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQColorDialog_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QColorDialogmousePressEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQColorDialog_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QColorDialogmouseReleaseEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQColorDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QColorDialogmouseDoubleClickEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQColorDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QColorDialogmouseMoveEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQColorDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QColorDialogwheelEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQColorDialog_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QColorDialogkeyReleaseEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQColorDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QColorDialogfocusInEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQColorDialog_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QColorDialogfocusOutEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQColorDialog_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QColorDialogenterEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQColorDialog_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QColorDialogleaveEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQColorDialog_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QColorDialogpaintEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQColorDialog_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QColorDialogmoveEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQColorDialog_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QColorDialogtabletEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQColorDialog_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QColorDialogactionEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QActionEvent): void =
  fcQColorDialog_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QColorDialogdragEnterEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQColorDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QColorDialogdragMoveEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQColorDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QColorDialogdragLeaveEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQColorDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QColorDialogdropEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QDropEvent): void =
  fcQColorDialog_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QColorDialoghideEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QHideEvent): void =
  fcQColorDialog_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QColorDialognativeEvent*(self: gen_qcolordialog_types.QColorDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQColorDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQColorDialog_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QColorDialogmetric*(self: gen_qcolordialog_types.QColorDialog, param1: cint): cint =
  fcQColorDialog_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQColorDialog_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QColorDialoginitPainter*(self: gen_qcolordialog_types.QColorDialog, painter: gen_qpainter_types.QPainter): void =
  fcQColorDialog_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQColorDialog_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QColorDialogredirected*(self: gen_qcolordialog_types.QColorDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQColorDialog_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQColorDialog_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QColorDialogsharedPainter*(self: gen_qcolordialog_types.QColorDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQColorDialog_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQColorDialog_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QColorDialoginputMethodEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQColorDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQColorDialog_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QColorDialoginputMethodQuery*(self: gen_qcolordialog_types.QColorDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQColorDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQColorDialog_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QColorDialogfocusNextPrevChild*(self: gen_qcolordialog_types.QColorDialog, next: bool): bool =
  fcQColorDialog_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQColorDialog_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QColorDialogtimerEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQColorDialog_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QColorDialogchildEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQColorDialog_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QColorDialogcustomEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQColorDialog_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQColorDialog_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QColorDialogconnectNotify*(self: gen_qcolordialog_types.QColorDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQColorDialog_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQColorDialog_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QColorDialogdisconnectNotify*(self: gen_qcolordialog_types.QColorDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQColorDialog_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQColorDialog_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](vtbl)
  let self = QColorDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc adjustPosition*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qwidget_types.QWidget): void =
  fcQColorDialog_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qcolordialog_types.QColorDialog, ): void =
  fcQColorDialog_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qcolordialog_types.QColorDialog, ): void =
  fcQColorDialog_protectedbase_create(self.h)

proc destroy*(self: gen_qcolordialog_types.QColorDialog, ): void =
  fcQColorDialog_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qcolordialog_types.QColorDialog, ): bool =
  fcQColorDialog_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qcolordialog_types.QColorDialog, ): bool =
  fcQColorDialog_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qcolordialog_types.QColorDialog, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQColorDialog_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qcolordialog_types.QColorDialog, ): cint =
  fcQColorDialog_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcolordialog_types.QColorDialog, signal: cstring): cint =
  fcQColorDialog_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcolordialog_types.QColorDialog, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQColorDialog_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qcolordialog_types.QColorDialog,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QColorDialogVTable = nil): gen_qcolordialog_types.QColorDialog =
  let vtbl = if vtbl == nil: new QColorDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQColorDialogVTable, _: ptr cQColorDialog) {.cdecl.} =
    let vtbl = cast[ref QColorDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQColorDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQColorDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQColorDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQColorDialog_setVisible
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQColorDialog_changeEvent
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQColorDialog_done
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQColorDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQColorDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQColorDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQColorDialog_exec
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQColorDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQColorDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQColorDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQColorDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQColorDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQColorDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQColorDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQColorDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQColorDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQColorDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQColorDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQColorDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQColorDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQColorDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQColorDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQColorDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQColorDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQColorDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQColorDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQColorDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQColorDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQColorDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQColorDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQColorDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQColorDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQColorDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQColorDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQColorDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQColorDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQColorDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQColorDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQColorDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQColorDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQColorDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQColorDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQColorDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQColorDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQColorDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQColorDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQColorDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQColorDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQColorDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQColorDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQColorDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQColorDialog_disconnectNotify
  gen_qcolordialog_types.QColorDialog(h: fcQColorDialog_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qcolordialog_types.QColorDialog,
    vtbl: ref QColorDialogVTable = nil): gen_qcolordialog_types.QColorDialog =
  let vtbl = if vtbl == nil: new QColorDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQColorDialogVTable, _: ptr cQColorDialog) {.cdecl.} =
    let vtbl = cast[ref QColorDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQColorDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQColorDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQColorDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQColorDialog_setVisible
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQColorDialog_changeEvent
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQColorDialog_done
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQColorDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQColorDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQColorDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQColorDialog_exec
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQColorDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQColorDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQColorDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQColorDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQColorDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQColorDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQColorDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQColorDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQColorDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQColorDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQColorDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQColorDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQColorDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQColorDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQColorDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQColorDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQColorDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQColorDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQColorDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQColorDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQColorDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQColorDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQColorDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQColorDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQColorDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQColorDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQColorDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQColorDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQColorDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQColorDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQColorDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQColorDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQColorDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQColorDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQColorDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQColorDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQColorDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQColorDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQColorDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQColorDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQColorDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQColorDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQColorDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQColorDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQColorDialog_disconnectNotify
  gen_qcolordialog_types.QColorDialog(h: fcQColorDialog_new2(addr(vtbl[]), ))

proc create*(T: type gen_qcolordialog_types.QColorDialog,
    initial: gen_qcolor_types.QColor,
    vtbl: ref QColorDialogVTable = nil): gen_qcolordialog_types.QColorDialog =
  let vtbl = if vtbl == nil: new QColorDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQColorDialogVTable, _: ptr cQColorDialog) {.cdecl.} =
    let vtbl = cast[ref QColorDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQColorDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQColorDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQColorDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQColorDialog_setVisible
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQColorDialog_changeEvent
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQColorDialog_done
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQColorDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQColorDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQColorDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQColorDialog_exec
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQColorDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQColorDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQColorDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQColorDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQColorDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQColorDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQColorDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQColorDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQColorDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQColorDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQColorDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQColorDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQColorDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQColorDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQColorDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQColorDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQColorDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQColorDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQColorDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQColorDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQColorDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQColorDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQColorDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQColorDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQColorDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQColorDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQColorDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQColorDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQColorDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQColorDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQColorDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQColorDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQColorDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQColorDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQColorDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQColorDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQColorDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQColorDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQColorDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQColorDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQColorDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQColorDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQColorDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQColorDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQColorDialog_disconnectNotify
  gen_qcolordialog_types.QColorDialog(h: fcQColorDialog_new3(addr(vtbl[]), initial.h))

proc create*(T: type gen_qcolordialog_types.QColorDialog,
    initial: gen_qcolor_types.QColor, parent: gen_qwidget_types.QWidget,
    vtbl: ref QColorDialogVTable = nil): gen_qcolordialog_types.QColorDialog =
  let vtbl = if vtbl == nil: new QColorDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQColorDialogVTable, _: ptr cQColorDialog) {.cdecl.} =
    let vtbl = cast[ref QColorDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQColorDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQColorDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQColorDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQColorDialog_setVisible
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQColorDialog_changeEvent
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQColorDialog_done
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQColorDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQColorDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQColorDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQColorDialog_exec
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQColorDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQColorDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQColorDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQColorDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQColorDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQColorDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQColorDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQColorDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQColorDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQColorDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQColorDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQColorDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQColorDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQColorDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQColorDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQColorDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQColorDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQColorDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQColorDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQColorDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQColorDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQColorDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQColorDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQColorDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQColorDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQColorDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQColorDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQColorDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQColorDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQColorDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQColorDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQColorDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQColorDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQColorDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQColorDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQColorDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQColorDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQColorDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQColorDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQColorDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQColorDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQColorDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQColorDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQColorDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQColorDialog_disconnectNotify
  gen_qcolordialog_types.QColorDialog(h: fcQColorDialog_new4(addr(vtbl[]), initial.h, parent.h))

proc staticMetaObject*(_: type gen_qcolordialog_types.QColorDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQColorDialog_staticMetaObject())
proc delete*(self: gen_qcolordialog_types.QColorDialog) =
  fcQColorDialog_delete(self.h)
