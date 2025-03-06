import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qwindow.cpp", cflags).}


type QWindowVisibilityEnum* = distinct cint
template Hidden*(_: type QWindowVisibilityEnum): untyped = 0
template AutomaticVisibility*(_: type QWindowVisibilityEnum): untyped = 1
template Windowed*(_: type QWindowVisibilityEnum): untyped = 2
template Minimized*(_: type QWindowVisibilityEnum): untyped = 3
template Maximized*(_: type QWindowVisibilityEnum): untyped = 4
template FullScreen*(_: type QWindowVisibilityEnum): untyped = 5


type QWindowAncestorModeEnum* = distinct cint
template ExcludeTransients*(_: type QWindowAncestorModeEnum): untyped = 0
template IncludeTransients*(_: type QWindowAncestorModeEnum): untyped = 1


import ./gen_qwindow_types
export gen_qwindow_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmargins_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qaccessible_types,
  ./gen_qcursor_types,
  ./gen_qevent_types,
  ./gen_qicon_types,
  ./gen_qregion_types,
  ./gen_qscreen_types,
  ./gen_qsurfaceformat_types
export
  gen_qcoreevent_types,
  gen_qmargins_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qaccessible_types,
  gen_qcursor_types,
  gen_qevent_types,
  gen_qicon_types,
  gen_qregion_types,
  gen_qscreen_types,
  gen_qsurfaceformat_types

type cQWindow*{.exportc: "QWindow", incompleteStruct.} = object

proc fcQWindow_metaObject(self: pointer, ): pointer {.importc: "QWindow_metaObject".}
proc fcQWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QWindow_metacast".}
proc fcQWindow_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWindow_metacall".}
proc fcQWindow_tr(s: cstring): struct_miqt_string {.importc: "QWindow_tr".}
proc fcQWindow_setSurfaceType(self: pointer, surfaceType: cint): void {.importc: "QWindow_setSurfaceType".}
proc fcQWindow_surfaceType(self: pointer, ): cint {.importc: "QWindow_surfaceType".}
proc fcQWindow_isVisible(self: pointer, ): bool {.importc: "QWindow_isVisible".}
proc fcQWindow_visibility(self: pointer, ): cint {.importc: "QWindow_visibility".}
proc fcQWindow_setVisibility(self: pointer, v: cint): void {.importc: "QWindow_setVisibility".}
proc fcQWindow_create(self: pointer, ): void {.importc: "QWindow_create".}
proc fcQWindow_winId(self: pointer, ): uint {.importc: "QWindow_winId".}
proc fcQWindow_parent(self: pointer, ): pointer {.importc: "QWindow_parent".}
proc fcQWindow_setParent(self: pointer, parent: pointer): void {.importc: "QWindow_setParent".}
proc fcQWindow_isTopLevel(self: pointer, ): bool {.importc: "QWindow_isTopLevel".}
proc fcQWindow_isModal(self: pointer, ): bool {.importc: "QWindow_isModal".}
proc fcQWindow_modality(self: pointer, ): cint {.importc: "QWindow_modality".}
proc fcQWindow_setModality(self: pointer, modality: cint): void {.importc: "QWindow_setModality".}
proc fcQWindow_setFormat(self: pointer, format: pointer): void {.importc: "QWindow_setFormat".}
proc fcQWindow_format(self: pointer, ): pointer {.importc: "QWindow_format".}
proc fcQWindow_requestedFormat(self: pointer, ): pointer {.importc: "QWindow_requestedFormat".}
proc fcQWindow_setFlags(self: pointer, flags: cint): void {.importc: "QWindow_setFlags".}
proc fcQWindow_flags(self: pointer, ): cint {.importc: "QWindow_flags".}
proc fcQWindow_setFlag(self: pointer, param1: cint): void {.importc: "QWindow_setFlag".}
proc fcQWindow_typeX(self: pointer, ): cint {.importc: "QWindow_type".}
proc fcQWindow_title(self: pointer, ): struct_miqt_string {.importc: "QWindow_title".}
proc fcQWindow_setOpacity(self: pointer, level: float64): void {.importc: "QWindow_setOpacity".}
proc fcQWindow_opacity(self: pointer, ): float64 {.importc: "QWindow_opacity".}
proc fcQWindow_setMask(self: pointer, region: pointer): void {.importc: "QWindow_setMask".}
proc fcQWindow_mask(self: pointer, ): pointer {.importc: "QWindow_mask".}
proc fcQWindow_isActive(self: pointer, ): bool {.importc: "QWindow_isActive".}
proc fcQWindow_reportContentOrientationChange(self: pointer, orientation: cint): void {.importc: "QWindow_reportContentOrientationChange".}
proc fcQWindow_contentOrientation(self: pointer, ): cint {.importc: "QWindow_contentOrientation".}
proc fcQWindow_devicePixelRatio(self: pointer, ): float64 {.importc: "QWindow_devicePixelRatio".}
proc fcQWindow_windowState(self: pointer, ): cint {.importc: "QWindow_windowState".}
proc fcQWindow_windowStates(self: pointer, ): cint {.importc: "QWindow_windowStates".}
proc fcQWindow_setWindowState(self: pointer, state: cint): void {.importc: "QWindow_setWindowState".}
proc fcQWindow_setWindowStates(self: pointer, states: cint): void {.importc: "QWindow_setWindowStates".}
proc fcQWindow_setTransientParent(self: pointer, parent: pointer): void {.importc: "QWindow_setTransientParent".}
proc fcQWindow_transientParent(self: pointer, ): pointer {.importc: "QWindow_transientParent".}
proc fcQWindow_isAncestorOf(self: pointer, child: pointer): bool {.importc: "QWindow_isAncestorOf".}
proc fcQWindow_isExposed(self: pointer, ): bool {.importc: "QWindow_isExposed".}
proc fcQWindow_minimumWidth(self: pointer, ): cint {.importc: "QWindow_minimumWidth".}
proc fcQWindow_minimumHeight(self: pointer, ): cint {.importc: "QWindow_minimumHeight".}
proc fcQWindow_maximumWidth(self: pointer, ): cint {.importc: "QWindow_maximumWidth".}
proc fcQWindow_maximumHeight(self: pointer, ): cint {.importc: "QWindow_maximumHeight".}
proc fcQWindow_minimumSize(self: pointer, ): pointer {.importc: "QWindow_minimumSize".}
proc fcQWindow_maximumSize(self: pointer, ): pointer {.importc: "QWindow_maximumSize".}
proc fcQWindow_baseSize(self: pointer, ): pointer {.importc: "QWindow_baseSize".}
proc fcQWindow_sizeIncrement(self: pointer, ): pointer {.importc: "QWindow_sizeIncrement".}
proc fcQWindow_setMinimumSize(self: pointer, size: pointer): void {.importc: "QWindow_setMinimumSize".}
proc fcQWindow_setMaximumSize(self: pointer, size: pointer): void {.importc: "QWindow_setMaximumSize".}
proc fcQWindow_setBaseSize(self: pointer, size: pointer): void {.importc: "QWindow_setBaseSize".}
proc fcQWindow_setSizeIncrement(self: pointer, size: pointer): void {.importc: "QWindow_setSizeIncrement".}
proc fcQWindow_geometry(self: pointer, ): pointer {.importc: "QWindow_geometry".}
proc fcQWindow_frameMargins(self: pointer, ): pointer {.importc: "QWindow_frameMargins".}
proc fcQWindow_frameGeometry(self: pointer, ): pointer {.importc: "QWindow_frameGeometry".}
proc fcQWindow_framePosition(self: pointer, ): pointer {.importc: "QWindow_framePosition".}
proc fcQWindow_setFramePosition(self: pointer, point: pointer): void {.importc: "QWindow_setFramePosition".}
proc fcQWindow_width(self: pointer, ): cint {.importc: "QWindow_width".}
proc fcQWindow_height(self: pointer, ): cint {.importc: "QWindow_height".}
proc fcQWindow_x(self: pointer, ): cint {.importc: "QWindow_x".}
proc fcQWindow_y(self: pointer, ): cint {.importc: "QWindow_y".}
proc fcQWindow_size(self: pointer, ): pointer {.importc: "QWindow_size".}
proc fcQWindow_position(self: pointer, ): pointer {.importc: "QWindow_position".}
proc fcQWindow_setPosition(self: pointer, pt: pointer): void {.importc: "QWindow_setPosition".}
proc fcQWindow_setPosition2(self: pointer, posx: cint, posy: cint): void {.importc: "QWindow_setPosition2".}
proc fcQWindow_resize(self: pointer, newSize: pointer): void {.importc: "QWindow_resize".}
proc fcQWindow_resize2(self: pointer, w: cint, h: cint): void {.importc: "QWindow_resize2".}
proc fcQWindow_setFilePath(self: pointer, filePath: struct_miqt_string): void {.importc: "QWindow_setFilePath".}
proc fcQWindow_filePath(self: pointer, ): struct_miqt_string {.importc: "QWindow_filePath".}
proc fcQWindow_setIcon(self: pointer, icon: pointer): void {.importc: "QWindow_setIcon".}
proc fcQWindow_icon(self: pointer, ): pointer {.importc: "QWindow_icon".}
proc fcQWindow_destroy(self: pointer, ): void {.importc: "QWindow_destroy".}
proc fcQWindow_setKeyboardGrabEnabled(self: pointer, grab: bool): bool {.importc: "QWindow_setKeyboardGrabEnabled".}
proc fcQWindow_setMouseGrabEnabled(self: pointer, grab: bool): bool {.importc: "QWindow_setMouseGrabEnabled".}
proc fcQWindow_screen(self: pointer, ): pointer {.importc: "QWindow_screen".}
proc fcQWindow_setScreen(self: pointer, screen: pointer): void {.importc: "QWindow_setScreen".}
proc fcQWindow_accessibleRoot(self: pointer, ): pointer {.importc: "QWindow_accessibleRoot".}
proc fcQWindow_focusObject(self: pointer, ): pointer {.importc: "QWindow_focusObject".}
proc fcQWindow_mapToGlobal(self: pointer, pos: pointer): pointer {.importc: "QWindow_mapToGlobal".}
proc fcQWindow_mapFromGlobal(self: pointer, pos: pointer): pointer {.importc: "QWindow_mapFromGlobal".}
proc fcQWindow_mapToGlobalWithPos(self: pointer, pos: pointer): pointer {.importc: "QWindow_mapToGlobalWithPos".}
proc fcQWindow_mapFromGlobalWithPos(self: pointer, pos: pointer): pointer {.importc: "QWindow_mapFromGlobalWithPos".}
proc fcQWindow_cursor(self: pointer, ): pointer {.importc: "QWindow_cursor".}
proc fcQWindow_setCursor(self: pointer, cursor: pointer): void {.importc: "QWindow_setCursor".}
proc fcQWindow_unsetCursor(self: pointer, ): void {.importc: "QWindow_unsetCursor".}
proc fcQWindow_fromWinId(id: uint): pointer {.importc: "QWindow_fromWinId".}
proc fcQWindow_requestActivate(self: pointer, ): void {.importc: "QWindow_requestActivate".}
proc fcQWindow_setVisible(self: pointer, visible: bool): void {.importc: "QWindow_setVisible".}
proc fcQWindow_show(self: pointer, ): void {.importc: "QWindow_show".}
proc fcQWindow_hide(self: pointer, ): void {.importc: "QWindow_hide".}
proc fcQWindow_showMinimized(self: pointer, ): void {.importc: "QWindow_showMinimized".}
proc fcQWindow_showMaximized(self: pointer, ): void {.importc: "QWindow_showMaximized".}
proc fcQWindow_showFullScreen(self: pointer, ): void {.importc: "QWindow_showFullScreen".}
proc fcQWindow_showNormal(self: pointer, ): void {.importc: "QWindow_showNormal".}
proc fcQWindow_close(self: pointer, ): bool {.importc: "QWindow_close".}
proc fcQWindow_raiseX(self: pointer, ): void {.importc: "QWindow_raise".}
proc fcQWindow_lower(self: pointer, ): void {.importc: "QWindow_lower".}
proc fcQWindow_startSystemResize(self: pointer, edges: cint): bool {.importc: "QWindow_startSystemResize".}
proc fcQWindow_startSystemMove(self: pointer, ): bool {.importc: "QWindow_startSystemMove".}
proc fcQWindow_setTitle(self: pointer, title: struct_miqt_string): void {.importc: "QWindow_setTitle".}
proc fcQWindow_setX(self: pointer, arg: cint): void {.importc: "QWindow_setX".}
proc fcQWindow_setY(self: pointer, arg: cint): void {.importc: "QWindow_setY".}
proc fcQWindow_setWidth(self: pointer, arg: cint): void {.importc: "QWindow_setWidth".}
proc fcQWindow_setHeight(self: pointer, arg: cint): void {.importc: "QWindow_setHeight".}
proc fcQWindow_setGeometry(self: pointer, posx: cint, posy: cint, w: cint, h: cint): void {.importc: "QWindow_setGeometry".}
proc fcQWindow_setGeometryWithRect(self: pointer, rect: pointer): void {.importc: "QWindow_setGeometryWithRect".}
proc fcQWindow_setMinimumWidth(self: pointer, w: cint): void {.importc: "QWindow_setMinimumWidth".}
proc fcQWindow_setMinimumHeight(self: pointer, h: cint): void {.importc: "QWindow_setMinimumHeight".}
proc fcQWindow_setMaximumWidth(self: pointer, w: cint): void {.importc: "QWindow_setMaximumWidth".}
proc fcQWindow_setMaximumHeight(self: pointer, h: cint): void {.importc: "QWindow_setMaximumHeight".}
proc fcQWindow_alert(self: pointer, msec: cint): void {.importc: "QWindow_alert".}
proc fcQWindow_requestUpdate(self: pointer, ): void {.importc: "QWindow_requestUpdate".}
proc fcQWindow_screenChanged(self: pointer, screen: pointer): void {.importc: "QWindow_screenChanged".}
proc fcQWindow_connect_screenChanged(self: pointer, slot: int, callback: proc (slot: int, screen: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_screenChanged".}
proc fcQWindow_modalityChanged(self: pointer, modality: cint): void {.importc: "QWindow_modalityChanged".}
proc fcQWindow_connect_modalityChanged(self: pointer, slot: int, callback: proc (slot: int, modality: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_modalityChanged".}
proc fcQWindow_windowStateChanged(self: pointer, windowState: cint): void {.importc: "QWindow_windowStateChanged".}
proc fcQWindow_connect_windowStateChanged(self: pointer, slot: int, callback: proc (slot: int, windowState: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_windowStateChanged".}
proc fcQWindow_windowTitleChanged(self: pointer, title: struct_miqt_string): void {.importc: "QWindow_windowTitleChanged".}
proc fcQWindow_connect_windowTitleChanged(self: pointer, slot: int, callback: proc (slot: int, title: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_windowTitleChanged".}
proc fcQWindow_xChanged(self: pointer, arg: cint): void {.importc: "QWindow_xChanged".}
proc fcQWindow_connect_xChanged(self: pointer, slot: int, callback: proc (slot: int, arg: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_xChanged".}
proc fcQWindow_yChanged(self: pointer, arg: cint): void {.importc: "QWindow_yChanged".}
proc fcQWindow_connect_yChanged(self: pointer, slot: int, callback: proc (slot: int, arg: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_yChanged".}
proc fcQWindow_widthChanged(self: pointer, arg: cint): void {.importc: "QWindow_widthChanged".}
proc fcQWindow_connect_widthChanged(self: pointer, slot: int, callback: proc (slot: int, arg: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_widthChanged".}
proc fcQWindow_heightChanged(self: pointer, arg: cint): void {.importc: "QWindow_heightChanged".}
proc fcQWindow_connect_heightChanged(self: pointer, slot: int, callback: proc (slot: int, arg: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_heightChanged".}
proc fcQWindow_minimumWidthChanged(self: pointer, arg: cint): void {.importc: "QWindow_minimumWidthChanged".}
proc fcQWindow_connect_minimumWidthChanged(self: pointer, slot: int, callback: proc (slot: int, arg: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_minimumWidthChanged".}
proc fcQWindow_minimumHeightChanged(self: pointer, arg: cint): void {.importc: "QWindow_minimumHeightChanged".}
proc fcQWindow_connect_minimumHeightChanged(self: pointer, slot: int, callback: proc (slot: int, arg: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_minimumHeightChanged".}
proc fcQWindow_maximumWidthChanged(self: pointer, arg: cint): void {.importc: "QWindow_maximumWidthChanged".}
proc fcQWindow_connect_maximumWidthChanged(self: pointer, slot: int, callback: proc (slot: int, arg: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_maximumWidthChanged".}
proc fcQWindow_maximumHeightChanged(self: pointer, arg: cint): void {.importc: "QWindow_maximumHeightChanged".}
proc fcQWindow_connect_maximumHeightChanged(self: pointer, slot: int, callback: proc (slot: int, arg: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_maximumHeightChanged".}
proc fcQWindow_visibleChanged(self: pointer, arg: bool): void {.importc: "QWindow_visibleChanged".}
proc fcQWindow_connect_visibleChanged(self: pointer, slot: int, callback: proc (slot: int, arg: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_visibleChanged".}
proc fcQWindow_visibilityChanged(self: pointer, visibility: cint): void {.importc: "QWindow_visibilityChanged".}
proc fcQWindow_connect_visibilityChanged(self: pointer, slot: int, callback: proc (slot: int, visibility: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_visibilityChanged".}
proc fcQWindow_activeChanged(self: pointer, ): void {.importc: "QWindow_activeChanged".}
proc fcQWindow_connect_activeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_activeChanged".}
proc fcQWindow_contentOrientationChanged(self: pointer, orientation: cint): void {.importc: "QWindow_contentOrientationChanged".}
proc fcQWindow_connect_contentOrientationChanged(self: pointer, slot: int, callback: proc (slot: int, orientation: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_contentOrientationChanged".}
proc fcQWindow_focusObjectChanged(self: pointer, objectVal: pointer): void {.importc: "QWindow_focusObjectChanged".}
proc fcQWindow_connect_focusObjectChanged(self: pointer, slot: int, callback: proc (slot: int, objectVal: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_focusObjectChanged".}
proc fcQWindow_opacityChanged(self: pointer, opacity: float64): void {.importc: "QWindow_opacityChanged".}
proc fcQWindow_connect_opacityChanged(self: pointer, slot: int, callback: proc (slot: int, opacity: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_opacityChanged".}
proc fcQWindow_transientParentChanged(self: pointer, transientParent: pointer): void {.importc: "QWindow_transientParentChanged".}
proc fcQWindow_connect_transientParentChanged(self: pointer, slot: int, callback: proc (slot: int, transientParent: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindow_connect_transientParentChanged".}
proc fcQWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWindow_tr2".}
proc fcQWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWindow_tr3".}
proc fcQWindow_parent1(self: pointer, mode: cint): pointer {.importc: "QWindow_parent1".}
proc fcQWindow_setFlag2(self: pointer, param1: cint, on: bool): void {.importc: "QWindow_setFlag2".}
proc fcQWindow_isAncestorOf2(self: pointer, child: pointer, mode: cint): bool {.importc: "QWindow_isAncestorOf2".}
type cQWindowVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQWindowVTable, self: ptr cQWindow) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  surfaceType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  format*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  size*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  accessibleRoot*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  focusObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  exposeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  touchEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWindow_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QWindow_virtualbase_metaObject".}
proc fcQWindow_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWindow_virtualbase_metacast".}
proc fcQWindow_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWindow_virtualbase_metacall".}
proc fcQWindow_virtualbase_surfaceType(self: pointer, ): cint {.importc: "QWindow_virtualbase_surfaceType".}
proc fcQWindow_virtualbase_format(self: pointer, ): pointer {.importc: "QWindow_virtualbase_format".}
proc fcQWindow_virtualbase_size(self: pointer, ): pointer {.importc: "QWindow_virtualbase_size".}
proc fcQWindow_virtualbase_accessibleRoot(self: pointer, ): pointer {.importc: "QWindow_virtualbase_accessibleRoot".}
proc fcQWindow_virtualbase_focusObject(self: pointer, ): pointer {.importc: "QWindow_virtualbase_focusObject".}
proc fcQWindow_virtualbase_exposeEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_exposeEvent".}
proc fcQWindow_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_resizeEvent".}
proc fcQWindow_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_paintEvent".}
proc fcQWindow_virtualbase_moveEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_moveEvent".}
proc fcQWindow_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_focusInEvent".}
proc fcQWindow_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_focusOutEvent".}
proc fcQWindow_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_showEvent".}
proc fcQWindow_virtualbase_hideEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_hideEvent".}
proc fcQWindow_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_closeEvent".}
proc fcQWindow_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QWindow_virtualbase_event".}
proc fcQWindow_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_keyPressEvent".}
proc fcQWindow_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_keyReleaseEvent".}
proc fcQWindow_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_mousePressEvent".}
proc fcQWindow_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_mouseReleaseEvent".}
proc fcQWindow_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_mouseDoubleClickEvent".}
proc fcQWindow_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_mouseMoveEvent".}
proc fcQWindow_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_wheelEvent".}
proc fcQWindow_virtualbase_touchEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_touchEvent".}
proc fcQWindow_virtualbase_tabletEvent(self: pointer, param1: pointer): void {.importc: "QWindow_virtualbase_tabletEvent".}
proc fcQWindow_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QWindow_virtualbase_nativeEvent".}
proc fcQWindow_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWindow_virtualbase_eventFilter".}
proc fcQWindow_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWindow_virtualbase_timerEvent".}
proc fcQWindow_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWindow_virtualbase_childEvent".}
proc fcQWindow_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWindow_virtualbase_customEvent".}
proc fcQWindow_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWindow_virtualbase_connectNotify".}
proc fcQWindow_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWindow_virtualbase_disconnectNotify".}
proc fcQWindow_protectedbase_resolveInterface(self: pointer, name: cstring, revision: cint): pointer {.importc: "QWindow_protectedbase_resolveInterface".}
proc fcQWindow_protectedbase_sender(self: pointer, ): pointer {.importc: "QWindow_protectedbase_sender".}
proc fcQWindow_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QWindow_protectedbase_senderSignalIndex".}
proc fcQWindow_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWindow_protectedbase_receivers".}
proc fcQWindow_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWindow_protectedbase_isSignalConnected".}
proc fcQWindow_new(vtbl: pointer, ): ptr cQWindow {.importc: "QWindow_new".}
proc fcQWindow_new2(vtbl: pointer, parent: pointer): ptr cQWindow {.importc: "QWindow_new2".}
proc fcQWindow_new3(vtbl: pointer, screen: pointer): ptr cQWindow {.importc: "QWindow_new3".}
proc fcQWindow_staticMetaObject(): pointer {.importc: "QWindow_staticMetaObject".}

proc metaObject*(self: gen_qwindow_types.QWindow, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWindow_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwindow_types.QWindow, param1: cstring): pointer =
  fcQWindow_metacast(self.h, param1)

proc metacall*(self: gen_qwindow_types.QWindow, param1: cint, param2: cint, param3: pointer): cint =
  fcQWindow_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwindow_types.QWindow, s: cstring): string =
  let v_ms = fcQWindow_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSurfaceType*(self: gen_qwindow_types.QWindow, surfaceType: cint): void =
  fcQWindow_setSurfaceType(self.h, cint(surfaceType))

proc surfaceType*(self: gen_qwindow_types.QWindow, ): cint =
  cint(fcQWindow_surfaceType(self.h))

proc isVisible*(self: gen_qwindow_types.QWindow, ): bool =
  fcQWindow_isVisible(self.h)

proc visibility*(self: gen_qwindow_types.QWindow, ): cint =
  cint(fcQWindow_visibility(self.h))

proc setVisibility*(self: gen_qwindow_types.QWindow, v: cint): void =
  fcQWindow_setVisibility(self.h, cint(v))

proc create*(self: gen_qwindow_types.QWindow, ): void =
  fcQWindow_create(self.h)

proc winId*(self: gen_qwindow_types.QWindow, ): uint =
  fcQWindow_winId(self.h)

proc parent*(self: gen_qwindow_types.QWindow, ): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQWindow_parent(self.h), owned: false)

proc setParent*(self: gen_qwindow_types.QWindow, parent: gen_qwindow_types.QWindow): void =
  fcQWindow_setParent(self.h, parent.h)

proc isTopLevel*(self: gen_qwindow_types.QWindow, ): bool =
  fcQWindow_isTopLevel(self.h)

proc isModal*(self: gen_qwindow_types.QWindow, ): bool =
  fcQWindow_isModal(self.h)

proc modality*(self: gen_qwindow_types.QWindow, ): cint =
  cint(fcQWindow_modality(self.h))

proc setModality*(self: gen_qwindow_types.QWindow, modality: cint): void =
  fcQWindow_setModality(self.h, cint(modality))

proc setFormat*(self: gen_qwindow_types.QWindow, format: gen_qsurfaceformat_types.QSurfaceFormat): void =
  fcQWindow_setFormat(self.h, format.h)

proc format*(self: gen_qwindow_types.QWindow, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQWindow_format(self.h), owned: true)

proc requestedFormat*(self: gen_qwindow_types.QWindow, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQWindow_requestedFormat(self.h), owned: true)

proc setFlags*(self: gen_qwindow_types.QWindow, flags: cint): void =
  fcQWindow_setFlags(self.h, cint(flags))

proc flags*(self: gen_qwindow_types.QWindow, ): cint =
  cint(fcQWindow_flags(self.h))

proc setFlag*(self: gen_qwindow_types.QWindow, param1: cint): void =
  fcQWindow_setFlag(self.h, cint(param1))

proc typeX*(self: gen_qwindow_types.QWindow, ): cint =
  cint(fcQWindow_typeX(self.h))

proc title*(self: gen_qwindow_types.QWindow, ): string =
  let v_ms = fcQWindow_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOpacity*(self: gen_qwindow_types.QWindow, level: float64): void =
  fcQWindow_setOpacity(self.h, level)

proc opacity*(self: gen_qwindow_types.QWindow, ): float64 =
  fcQWindow_opacity(self.h)

proc setMask*(self: gen_qwindow_types.QWindow, region: gen_qregion_types.QRegion): void =
  fcQWindow_setMask(self.h, region.h)

proc mask*(self: gen_qwindow_types.QWindow, ): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQWindow_mask(self.h), owned: true)

proc isActive*(self: gen_qwindow_types.QWindow, ): bool =
  fcQWindow_isActive(self.h)

proc reportContentOrientationChange*(self: gen_qwindow_types.QWindow, orientation: cint): void =
  fcQWindow_reportContentOrientationChange(self.h, cint(orientation))

proc contentOrientation*(self: gen_qwindow_types.QWindow, ): cint =
  cint(fcQWindow_contentOrientation(self.h))

proc devicePixelRatio*(self: gen_qwindow_types.QWindow, ): float64 =
  fcQWindow_devicePixelRatio(self.h)

proc windowState*(self: gen_qwindow_types.QWindow, ): cint =
  cint(fcQWindow_windowState(self.h))

proc windowStates*(self: gen_qwindow_types.QWindow, ): cint =
  cint(fcQWindow_windowStates(self.h))

proc setWindowState*(self: gen_qwindow_types.QWindow, state: cint): void =
  fcQWindow_setWindowState(self.h, cint(state))

proc setWindowStates*(self: gen_qwindow_types.QWindow, states: cint): void =
  fcQWindow_setWindowStates(self.h, cint(states))

proc setTransientParent*(self: gen_qwindow_types.QWindow, parent: gen_qwindow_types.QWindow): void =
  fcQWindow_setTransientParent(self.h, parent.h)

proc transientParent*(self: gen_qwindow_types.QWindow, ): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQWindow_transientParent(self.h), owned: false)

proc isAncestorOf*(self: gen_qwindow_types.QWindow, child: gen_qwindow_types.QWindow): bool =
  fcQWindow_isAncestorOf(self.h, child.h)

proc isExposed*(self: gen_qwindow_types.QWindow, ): bool =
  fcQWindow_isExposed(self.h)

proc minimumWidth*(self: gen_qwindow_types.QWindow, ): cint =
  fcQWindow_minimumWidth(self.h)

proc minimumHeight*(self: gen_qwindow_types.QWindow, ): cint =
  fcQWindow_minimumHeight(self.h)

proc maximumWidth*(self: gen_qwindow_types.QWindow, ): cint =
  fcQWindow_maximumWidth(self.h)

proc maximumHeight*(self: gen_qwindow_types.QWindow, ): cint =
  fcQWindow_maximumHeight(self.h)

proc minimumSize*(self: gen_qwindow_types.QWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWindow_minimumSize(self.h), owned: true)

proc maximumSize*(self: gen_qwindow_types.QWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWindow_maximumSize(self.h), owned: true)

proc baseSize*(self: gen_qwindow_types.QWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWindow_baseSize(self.h), owned: true)

proc sizeIncrement*(self: gen_qwindow_types.QWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWindow_sizeIncrement(self.h), owned: true)

proc setMinimumSize*(self: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize): void =
  fcQWindow_setMinimumSize(self.h, size.h)

proc setMaximumSize*(self: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize): void =
  fcQWindow_setMaximumSize(self.h, size.h)

proc setBaseSize*(self: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize): void =
  fcQWindow_setBaseSize(self.h, size.h)

proc setSizeIncrement*(self: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize): void =
  fcQWindow_setSizeIncrement(self.h, size.h)

proc geometry*(self: gen_qwindow_types.QWindow, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWindow_geometry(self.h), owned: true)

proc frameMargins*(self: gen_qwindow_types.QWindow, ): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQWindow_frameMargins(self.h), owned: true)

proc frameGeometry*(self: gen_qwindow_types.QWindow, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWindow_frameGeometry(self.h), owned: true)

proc framePosition*(self: gen_qwindow_types.QWindow, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWindow_framePosition(self.h), owned: true)

proc setFramePosition*(self: gen_qwindow_types.QWindow, point: gen_qpoint_types.QPoint): void =
  fcQWindow_setFramePosition(self.h, point.h)

proc width*(self: gen_qwindow_types.QWindow, ): cint =
  fcQWindow_width(self.h)

proc height*(self: gen_qwindow_types.QWindow, ): cint =
  fcQWindow_height(self.h)

proc x*(self: gen_qwindow_types.QWindow, ): cint =
  fcQWindow_x(self.h)

proc y*(self: gen_qwindow_types.QWindow, ): cint =
  fcQWindow_y(self.h)

proc size*(self: gen_qwindow_types.QWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWindow_size(self.h), owned: true)

proc position*(self: gen_qwindow_types.QWindow, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWindow_position(self.h), owned: true)

proc setPosition*(self: gen_qwindow_types.QWindow, pt: gen_qpoint_types.QPoint): void =
  fcQWindow_setPosition(self.h, pt.h)

proc setPosition*(self: gen_qwindow_types.QWindow, posx: cint, posy: cint): void =
  fcQWindow_setPosition2(self.h, posx, posy)

proc resize*(self: gen_qwindow_types.QWindow, newSize: gen_qsize_types.QSize): void =
  fcQWindow_resize(self.h, newSize.h)

proc resize*(self: gen_qwindow_types.QWindow, w: cint, h: cint): void =
  fcQWindow_resize2(self.h, w, h)

proc setFilePath*(self: gen_qwindow_types.QWindow, filePath: string): void =
  fcQWindow_setFilePath(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))))

proc filePath*(self: gen_qwindow_types.QWindow, ): string =
  let v_ms = fcQWindow_filePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setIcon*(self: gen_qwindow_types.QWindow, icon: gen_qicon_types.QIcon): void =
  fcQWindow_setIcon(self.h, icon.h)

proc icon*(self: gen_qwindow_types.QWindow, ): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQWindow_icon(self.h), owned: true)

proc destroy*(self: gen_qwindow_types.QWindow, ): void =
  fcQWindow_destroy(self.h)

proc setKeyboardGrabEnabled*(self: gen_qwindow_types.QWindow, grab: bool): bool =
  fcQWindow_setKeyboardGrabEnabled(self.h, grab)

proc setMouseGrabEnabled*(self: gen_qwindow_types.QWindow, grab: bool): bool =
  fcQWindow_setMouseGrabEnabled(self.h, grab)

proc screen*(self: gen_qwindow_types.QWindow, ): gen_qscreen_types.QScreen =
  gen_qscreen_types.QScreen(h: fcQWindow_screen(self.h), owned: false)

proc setScreen*(self: gen_qwindow_types.QWindow, screen: gen_qscreen_types.QScreen): void =
  fcQWindow_setScreen(self.h, screen.h)

proc accessibleRoot*(self: gen_qwindow_types.QWindow, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQWindow_accessibleRoot(self.h), owned: false)

proc focusObject*(self: gen_qwindow_types.QWindow, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWindow_focusObject(self.h), owned: false)

proc mapToGlobal*(self: gen_qwindow_types.QWindow, pos: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQWindow_mapToGlobal(self.h, pos.h), owned: true)

proc mapFromGlobal*(self: gen_qwindow_types.QWindow, pos: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQWindow_mapFromGlobal(self.h, pos.h), owned: true)

proc mapToGlobal*(self: gen_qwindow_types.QWindow, pos: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWindow_mapToGlobalWithPos(self.h, pos.h), owned: true)

proc mapFromGlobal*(self: gen_qwindow_types.QWindow, pos: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWindow_mapFromGlobalWithPos(self.h, pos.h), owned: true)

proc cursor*(self: gen_qwindow_types.QWindow, ): gen_qcursor_types.QCursor =
  gen_qcursor_types.QCursor(h: fcQWindow_cursor(self.h), owned: true)

proc setCursor*(self: gen_qwindow_types.QWindow, cursor: gen_qcursor_types.QCursor): void =
  fcQWindow_setCursor(self.h, cursor.h)

proc unsetCursor*(self: gen_qwindow_types.QWindow, ): void =
  fcQWindow_unsetCursor(self.h)

proc fromWinId*(_: type gen_qwindow_types.QWindow, id: uint): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQWindow_fromWinId(id), owned: false)

proc requestActivate*(self: gen_qwindow_types.QWindow, ): void =
  fcQWindow_requestActivate(self.h)

proc setVisible*(self: gen_qwindow_types.QWindow, visible: bool): void =
  fcQWindow_setVisible(self.h, visible)

proc show*(self: gen_qwindow_types.QWindow, ): void =
  fcQWindow_show(self.h)

proc hide*(self: gen_qwindow_types.QWindow, ): void =
  fcQWindow_hide(self.h)

proc showMinimized*(self: gen_qwindow_types.QWindow, ): void =
  fcQWindow_showMinimized(self.h)

proc showMaximized*(self: gen_qwindow_types.QWindow, ): void =
  fcQWindow_showMaximized(self.h)

proc showFullScreen*(self: gen_qwindow_types.QWindow, ): void =
  fcQWindow_showFullScreen(self.h)

proc showNormal*(self: gen_qwindow_types.QWindow, ): void =
  fcQWindow_showNormal(self.h)

proc close*(self: gen_qwindow_types.QWindow, ): bool =
  fcQWindow_close(self.h)

proc raiseX*(self: gen_qwindow_types.QWindow, ): void =
  fcQWindow_raiseX(self.h)

proc lower*(self: gen_qwindow_types.QWindow, ): void =
  fcQWindow_lower(self.h)

proc startSystemResize*(self: gen_qwindow_types.QWindow, edges: cint): bool =
  fcQWindow_startSystemResize(self.h, cint(edges))

proc startSystemMove*(self: gen_qwindow_types.QWindow, ): bool =
  fcQWindow_startSystemMove(self.h)

proc setTitle*(self: gen_qwindow_types.QWindow, title: string): void =
  fcQWindow_setTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc setX*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_setX(self.h, arg)

proc setY*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_setY(self.h, arg)

proc setWidth*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_setWidth(self.h, arg)

proc setHeight*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_setHeight(self.h, arg)

proc setGeometry*(self: gen_qwindow_types.QWindow, posx: cint, posy: cint, w: cint, h: cint): void =
  fcQWindow_setGeometry(self.h, posx, posy, w, h)

proc setGeometry*(self: gen_qwindow_types.QWindow, rect: gen_qrect_types.QRect): void =
  fcQWindow_setGeometryWithRect(self.h, rect.h)

proc setMinimumWidth*(self: gen_qwindow_types.QWindow, w: cint): void =
  fcQWindow_setMinimumWidth(self.h, w)

proc setMinimumHeight*(self: gen_qwindow_types.QWindow, h: cint): void =
  fcQWindow_setMinimumHeight(self.h, h)

proc setMaximumWidth*(self: gen_qwindow_types.QWindow, w: cint): void =
  fcQWindow_setMaximumWidth(self.h, w)

proc setMaximumHeight*(self: gen_qwindow_types.QWindow, h: cint): void =
  fcQWindow_setMaximumHeight(self.h, h)

proc alert*(self: gen_qwindow_types.QWindow, msec: cint): void =
  fcQWindow_alert(self.h, msec)

proc requestUpdate*(self: gen_qwindow_types.QWindow, ): void =
  fcQWindow_requestUpdate(self.h)

proc screenChanged*(self: gen_qwindow_types.QWindow, screen: gen_qscreen_types.QScreen): void =
  fcQWindow_screenChanged(self.h, screen.h)

type QWindowscreenChangedSlot* = proc(screen: gen_qscreen_types.QScreen)
proc miqt_exec_callback_cQWindow_screenChanged(slot: int, screen: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWindowscreenChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qscreen_types.QScreen(h: screen, owned: false)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_screenChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowscreenChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onscreenChanged*(self: gen_qwindow_types.QWindow, slot: QWindowscreenChangedSlot) =
  var tmp = new QWindowscreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_screenChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_screenChanged, miqt_exec_callback_cQWindow_screenChanged_release)

proc modalityChanged*(self: gen_qwindow_types.QWindow, modality: cint): void =
  fcQWindow_modalityChanged(self.h, cint(modality))

type QWindowmodalityChangedSlot* = proc(modality: cint)
proc miqt_exec_callback_cQWindow_modalityChanged(slot: int, modality: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWindowmodalityChangedSlot](cast[pointer](slot))
  let slotval1 = cint(modality)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_modalityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowmodalityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmodalityChanged*(self: gen_qwindow_types.QWindow, slot: QWindowmodalityChangedSlot) =
  var tmp = new QWindowmodalityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_modalityChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_modalityChanged, miqt_exec_callback_cQWindow_modalityChanged_release)

proc windowStateChanged*(self: gen_qwindow_types.QWindow, windowState: cint): void =
  fcQWindow_windowStateChanged(self.h, cint(windowState))

type QWindowwindowStateChangedSlot* = proc(windowState: cint)
proc miqt_exec_callback_cQWindow_windowStateChanged(slot: int, windowState: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWindowwindowStateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(windowState)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_windowStateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowwindowStateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwindowStateChanged*(self: gen_qwindow_types.QWindow, slot: QWindowwindowStateChangedSlot) =
  var tmp = new QWindowwindowStateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_windowStateChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_windowStateChanged, miqt_exec_callback_cQWindow_windowStateChanged_release)

proc windowTitleChanged*(self: gen_qwindow_types.QWindow, title: string): void =
  fcQWindow_windowTitleChanged(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

type QWindowwindowTitleChangedSlot* = proc(title: string)
proc miqt_exec_callback_cQWindow_windowTitleChanged(slot: int, title: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QWindowwindowTitleChangedSlot](cast[pointer](slot))
  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(toOpenArrayByte(vtitle_ms.data, 0, int(vtitle_ms.len)-1))
  c_free(vtitle_ms.data)
  let slotval1 = vtitlex_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_windowTitleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowwindowTitleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwindowTitleChanged*(self: gen_qwindow_types.QWindow, slot: QWindowwindowTitleChangedSlot) =
  var tmp = new QWindowwindowTitleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_windowTitleChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_windowTitleChanged, miqt_exec_callback_cQWindow_windowTitleChanged_release)

proc xChanged*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_xChanged(self.h, arg)

type QWindowxChangedSlot* = proc(arg: cint)
proc miqt_exec_callback_cQWindow_xChanged(slot: int, arg: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWindowxChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_xChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowxChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onxChanged*(self: gen_qwindow_types.QWindow, slot: QWindowxChangedSlot) =
  var tmp = new QWindowxChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_xChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_xChanged, miqt_exec_callback_cQWindow_xChanged_release)

proc yChanged*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_yChanged(self.h, arg)

type QWindowyChangedSlot* = proc(arg: cint)
proc miqt_exec_callback_cQWindow_yChanged(slot: int, arg: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWindowyChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_yChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowyChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onyChanged*(self: gen_qwindow_types.QWindow, slot: QWindowyChangedSlot) =
  var tmp = new QWindowyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_yChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_yChanged, miqt_exec_callback_cQWindow_yChanged_release)

proc widthChanged*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_widthChanged(self.h, arg)

type QWindowwidthChangedSlot* = proc(arg: cint)
proc miqt_exec_callback_cQWindow_widthChanged(slot: int, arg: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWindowwidthChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_widthChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowwidthChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwidthChanged*(self: gen_qwindow_types.QWindow, slot: QWindowwidthChangedSlot) =
  var tmp = new QWindowwidthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_widthChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_widthChanged, miqt_exec_callback_cQWindow_widthChanged_release)

proc heightChanged*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_heightChanged(self.h, arg)

type QWindowheightChangedSlot* = proc(arg: cint)
proc miqt_exec_callback_cQWindow_heightChanged(slot: int, arg: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWindowheightChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_heightChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowheightChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onheightChanged*(self: gen_qwindow_types.QWindow, slot: QWindowheightChangedSlot) =
  var tmp = new QWindowheightChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_heightChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_heightChanged, miqt_exec_callback_cQWindow_heightChanged_release)

proc minimumWidthChanged*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_minimumWidthChanged(self.h, arg)

type QWindowminimumWidthChangedSlot* = proc(arg: cint)
proc miqt_exec_callback_cQWindow_minimumWidthChanged(slot: int, arg: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWindowminimumWidthChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_minimumWidthChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowminimumWidthChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onminimumWidthChanged*(self: gen_qwindow_types.QWindow, slot: QWindowminimumWidthChangedSlot) =
  var tmp = new QWindowminimumWidthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_minimumWidthChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_minimumWidthChanged, miqt_exec_callback_cQWindow_minimumWidthChanged_release)

proc minimumHeightChanged*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_minimumHeightChanged(self.h, arg)

type QWindowminimumHeightChangedSlot* = proc(arg: cint)
proc miqt_exec_callback_cQWindow_minimumHeightChanged(slot: int, arg: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWindowminimumHeightChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_minimumHeightChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowminimumHeightChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onminimumHeightChanged*(self: gen_qwindow_types.QWindow, slot: QWindowminimumHeightChangedSlot) =
  var tmp = new QWindowminimumHeightChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_minimumHeightChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_minimumHeightChanged, miqt_exec_callback_cQWindow_minimumHeightChanged_release)

proc maximumWidthChanged*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_maximumWidthChanged(self.h, arg)

type QWindowmaximumWidthChangedSlot* = proc(arg: cint)
proc miqt_exec_callback_cQWindow_maximumWidthChanged(slot: int, arg: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWindowmaximumWidthChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_maximumWidthChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowmaximumWidthChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmaximumWidthChanged*(self: gen_qwindow_types.QWindow, slot: QWindowmaximumWidthChangedSlot) =
  var tmp = new QWindowmaximumWidthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_maximumWidthChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_maximumWidthChanged, miqt_exec_callback_cQWindow_maximumWidthChanged_release)

proc maximumHeightChanged*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_maximumHeightChanged(self.h, arg)

type QWindowmaximumHeightChangedSlot* = proc(arg: cint)
proc miqt_exec_callback_cQWindow_maximumHeightChanged(slot: int, arg: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWindowmaximumHeightChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_maximumHeightChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowmaximumHeightChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmaximumHeightChanged*(self: gen_qwindow_types.QWindow, slot: QWindowmaximumHeightChangedSlot) =
  var tmp = new QWindowmaximumHeightChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_maximumHeightChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_maximumHeightChanged, miqt_exec_callback_cQWindow_maximumHeightChanged_release)

proc visibleChanged*(self: gen_qwindow_types.QWindow, arg: bool): void =
  fcQWindow_visibleChanged(self.h, arg)

type QWindowvisibleChangedSlot* = proc(arg: bool)
proc miqt_exec_callback_cQWindow_visibleChanged(slot: int, arg: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWindowvisibleChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_visibleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowvisibleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvisibleChanged*(self: gen_qwindow_types.QWindow, slot: QWindowvisibleChangedSlot) =
  var tmp = new QWindowvisibleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_visibleChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_visibleChanged, miqt_exec_callback_cQWindow_visibleChanged_release)

proc visibilityChanged*(self: gen_qwindow_types.QWindow, visibility: cint): void =
  fcQWindow_visibilityChanged(self.h, cint(visibility))

type QWindowvisibilityChangedSlot* = proc(visibility: cint)
proc miqt_exec_callback_cQWindow_visibilityChanged(slot: int, visibility: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWindowvisibilityChangedSlot](cast[pointer](slot))
  let slotval1 = cint(visibility)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_visibilityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowvisibilityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvisibilityChanged*(self: gen_qwindow_types.QWindow, slot: QWindowvisibilityChangedSlot) =
  var tmp = new QWindowvisibilityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_visibilityChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_visibilityChanged, miqt_exec_callback_cQWindow_visibilityChanged_release)

proc activeChanged*(self: gen_qwindow_types.QWindow, ): void =
  fcQWindow_activeChanged(self.h)

type QWindowactiveChangedSlot* = proc()
proc miqt_exec_callback_cQWindow_activeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWindowactiveChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWindow_activeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowactiveChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactiveChanged*(self: gen_qwindow_types.QWindow, slot: QWindowactiveChangedSlot) =
  var tmp = new QWindowactiveChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_activeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_activeChanged, miqt_exec_callback_cQWindow_activeChanged_release)

proc contentOrientationChanged*(self: gen_qwindow_types.QWindow, orientation: cint): void =
  fcQWindow_contentOrientationChanged(self.h, cint(orientation))

type QWindowcontentOrientationChangedSlot* = proc(orientation: cint)
proc miqt_exec_callback_cQWindow_contentOrientationChanged(slot: int, orientation: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWindowcontentOrientationChangedSlot](cast[pointer](slot))
  let slotval1 = cint(orientation)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_contentOrientationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowcontentOrientationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncontentOrientationChanged*(self: gen_qwindow_types.QWindow, slot: QWindowcontentOrientationChangedSlot) =
  var tmp = new QWindowcontentOrientationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_contentOrientationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_contentOrientationChanged, miqt_exec_callback_cQWindow_contentOrientationChanged_release)

proc focusObjectChanged*(self: gen_qwindow_types.QWindow, objectVal: gen_qobject_types.QObject): void =
  fcQWindow_focusObjectChanged(self.h, objectVal.h)

type QWindowfocusObjectChangedSlot* = proc(objectVal: gen_qobject_types.QObject)
proc miqt_exec_callback_cQWindow_focusObjectChanged(slot: int, objectVal: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWindowfocusObjectChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_focusObjectChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowfocusObjectChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfocusObjectChanged*(self: gen_qwindow_types.QWindow, slot: QWindowfocusObjectChangedSlot) =
  var tmp = new QWindowfocusObjectChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_focusObjectChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_focusObjectChanged, miqt_exec_callback_cQWindow_focusObjectChanged_release)

proc opacityChanged*(self: gen_qwindow_types.QWindow, opacity: float64): void =
  fcQWindow_opacityChanged(self.h, opacity)

type QWindowopacityChangedSlot* = proc(opacity: float64)
proc miqt_exec_callback_cQWindow_opacityChanged(slot: int, opacity: float64) {.cdecl.} =
  let nimfunc = cast[ptr QWindowopacityChangedSlot](cast[pointer](slot))
  let slotval1 = opacity

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_opacityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowopacityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onopacityChanged*(self: gen_qwindow_types.QWindow, slot: QWindowopacityChangedSlot) =
  var tmp = new QWindowopacityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_opacityChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_opacityChanged, miqt_exec_callback_cQWindow_opacityChanged_release)

proc transientParentChanged*(self: gen_qwindow_types.QWindow, transientParent: gen_qwindow_types.QWindow): void =
  fcQWindow_transientParentChanged(self.h, transientParent.h)

type QWindowtransientParentChangedSlot* = proc(transientParent: gen_qwindow_types.QWindow)
proc miqt_exec_callback_cQWindow_transientParentChanged(slot: int, transientParent: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWindowtransientParentChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qwindow_types.QWindow(h: transientParent, owned: false)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWindow_transientParentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowtransientParentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontransientParentChanged*(self: gen_qwindow_types.QWindow, slot: QWindowtransientParentChangedSlot) =
  var tmp = new QWindowtransientParentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_transientParentChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWindow_transientParentChanged, miqt_exec_callback_cQWindow_transientParentChanged_release)

proc tr*(_: type gen_qwindow_types.QWindow, s: cstring, c: cstring): string =
  let v_ms = fcQWindow_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwindow_types.QWindow, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWindow_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc parent*(self: gen_qwindow_types.QWindow, mode: cint): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQWindow_parent1(self.h, cint(mode)), owned: false)

proc setFlag*(self: gen_qwindow_types.QWindow, param1: cint, on: bool): void =
  fcQWindow_setFlag2(self.h, cint(param1), on)

proc isAncestorOf*(self: gen_qwindow_types.QWindow, child: gen_qwindow_types.QWindow, mode: cint): bool =
  fcQWindow_isAncestorOf2(self.h, child.h, cint(mode))

type QWindowmetaObjectProc* = proc(self: QWindow): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWindowmetacastProc* = proc(self: QWindow, param1: cstring): pointer {.raises: [], gcsafe.}
type QWindowmetacallProc* = proc(self: QWindow, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWindowsurfaceTypeProc* = proc(self: QWindow): cint {.raises: [], gcsafe.}
type QWindowformatProc* = proc(self: QWindow): gen_qsurfaceformat_types.QSurfaceFormat {.raises: [], gcsafe.}
type QWindowsizeProc* = proc(self: QWindow): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWindowaccessibleRootProc* = proc(self: QWindow): gen_qaccessible_types.QAccessibleInterface {.raises: [], gcsafe.}
type QWindowfocusObjectProc* = proc(self: QWindow): gen_qobject_types.QObject {.raises: [], gcsafe.}
type QWindowexposeEventProc* = proc(self: QWindow, param1: gen_qevent_types.QExposeEvent): void {.raises: [], gcsafe.}
type QWindowresizeEventProc* = proc(self: QWindow, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QWindowpaintEventProc* = proc(self: QWindow, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QWindowmoveEventProc* = proc(self: QWindow, param1: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QWindowfocusInEventProc* = proc(self: QWindow, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QWindowfocusOutEventProc* = proc(self: QWindow, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QWindowshowEventProc* = proc(self: QWindow, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QWindowhideEventProc* = proc(self: QWindow, param1: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QWindowcloseEventProc* = proc(self: QWindow, param1: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QWindoweventProc* = proc(self: QWindow, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWindowkeyPressEventProc* = proc(self: QWindow, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QWindowkeyReleaseEventProc* = proc(self: QWindow, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QWindowmousePressEventProc* = proc(self: QWindow, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWindowmouseReleaseEventProc* = proc(self: QWindow, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWindowmouseDoubleClickEventProc* = proc(self: QWindow, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWindowmouseMoveEventProc* = proc(self: QWindow, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWindowwheelEventProc* = proc(self: QWindow, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QWindowtouchEventProc* = proc(self: QWindow, param1: gen_qevent_types.QTouchEvent): void {.raises: [], gcsafe.}
type QWindowtabletEventProc* = proc(self: QWindow, param1: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QWindownativeEventProc* = proc(self: QWindow, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QWindoweventFilterProc* = proc(self: QWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWindowtimerEventProc* = proc(self: QWindow, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWindowchildEventProc* = proc(self: QWindow, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWindowcustomEventProc* = proc(self: QWindow, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWindowconnectNotifyProc* = proc(self: QWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWindowdisconnectNotifyProc* = proc(self: QWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWindowVTable* {.inheritable, pure.} = object
  vtbl: cQWindowVTable
  metaObject*: QWindowmetaObjectProc
  metacast*: QWindowmetacastProc
  metacall*: QWindowmetacallProc
  surfaceType*: QWindowsurfaceTypeProc
  format*: QWindowformatProc
  size*: QWindowsizeProc
  accessibleRoot*: QWindowaccessibleRootProc
  focusObject*: QWindowfocusObjectProc
  exposeEvent*: QWindowexposeEventProc
  resizeEvent*: QWindowresizeEventProc
  paintEvent*: QWindowpaintEventProc
  moveEvent*: QWindowmoveEventProc
  focusInEvent*: QWindowfocusInEventProc
  focusOutEvent*: QWindowfocusOutEventProc
  showEvent*: QWindowshowEventProc
  hideEvent*: QWindowhideEventProc
  closeEvent*: QWindowcloseEventProc
  event*: QWindoweventProc
  keyPressEvent*: QWindowkeyPressEventProc
  keyReleaseEvent*: QWindowkeyReleaseEventProc
  mousePressEvent*: QWindowmousePressEventProc
  mouseReleaseEvent*: QWindowmouseReleaseEventProc
  mouseDoubleClickEvent*: QWindowmouseDoubleClickEventProc
  mouseMoveEvent*: QWindowmouseMoveEventProc
  wheelEvent*: QWindowwheelEventProc
  touchEvent*: QWindowtouchEventProc
  tabletEvent*: QWindowtabletEventProc
  nativeEvent*: QWindownativeEventProc
  eventFilter*: QWindoweventFilterProc
  timerEvent*: QWindowtimerEventProc
  childEvent*: QWindowchildEventProc
  customEvent*: QWindowcustomEventProc
  connectNotify*: QWindowconnectNotifyProc
  disconnectNotify*: QWindowdisconnectNotifyProc
proc QWindowmetaObject*(self: gen_qwindow_types.QWindow, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWindow_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQWindow_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWindowmetacast*(self: gen_qwindow_types.QWindow, param1: cstring): pointer =
  fcQWindow_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQWindow_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWindowmetacall*(self: gen_qwindow_types.QWindow, param1: cint, param2: cint, param3: pointer): cint =
  fcQWindow_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQWindow_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWindowsurfaceType*(self: gen_qwindow_types.QWindow, ): cint =
  cint(fcQWindow_virtualbase_surfaceType(self.h))

proc miqt_exec_callback_cQWindow_surfaceType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  var virtualReturn = vtbl[].surfaceType(self)
  cint(virtualReturn)

proc QWindowformat*(self: gen_qwindow_types.QWindow, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQWindow_virtualbase_format(self.h), owned: true)

proc miqt_exec_callback_cQWindow_format(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  var virtualReturn = vtbl[].format(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWindowsize*(self: gen_qwindow_types.QWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWindow_virtualbase_size(self.h), owned: true)

proc miqt_exec_callback_cQWindow_size(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWindowaccessibleRoot*(self: gen_qwindow_types.QWindow, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQWindow_virtualbase_accessibleRoot(self.h), owned: false)

proc miqt_exec_callback_cQWindow_accessibleRoot(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  var virtualReturn = vtbl[].accessibleRoot(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWindowfocusObject*(self: gen_qwindow_types.QWindow, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWindow_virtualbase_focusObject(self.h), owned: false)

proc miqt_exec_callback_cQWindow_focusObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  var virtualReturn = vtbl[].focusObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWindowexposeEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QExposeEvent): void =
  fcQWindow_virtualbase_exposeEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_exposeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QExposeEvent(h: param1, owned: false)
  vtbl[].exposeEvent(self, slotval1)

proc QWindowresizeEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QResizeEvent): void =
  fcQWindow_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QWindowpaintEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QPaintEvent): void =
  fcQWindow_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QWindowmoveEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QMoveEvent): void =
  fcQWindow_virtualbase_moveEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_moveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QWindowfocusInEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QFocusEvent): void =
  fcQWindow_virtualbase_focusInEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_focusInEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QWindowfocusOutEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QFocusEvent): void =
  fcQWindow_virtualbase_focusOutEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_focusOutEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QWindowshowEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QShowEvent): void =
  fcQWindow_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QWindowhideEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QHideEvent): void =
  fcQWindow_virtualbase_hideEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_hideEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: param1, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QWindowcloseEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QCloseEvent): void =
  fcQWindow_virtualbase_closeEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_closeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QWindowevent*(self: gen_qwindow_types.QWindow, param1: gen_qcoreevent_types.QEvent): bool =
  fcQWindow_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQWindow_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWindowkeyPressEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QKeyEvent): void =
  fcQWindow_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QWindowkeyReleaseEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QKeyEvent): void =
  fcQWindow_virtualbase_keyReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_keyReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QWindowmousePressEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QMouseEvent): void =
  fcQWindow_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QWindowmouseReleaseEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QMouseEvent): void =
  fcQWindow_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_mouseReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QWindowmouseDoubleClickEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QMouseEvent): void =
  fcQWindow_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_mouseDoubleClickEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QWindowmouseMoveEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QMouseEvent): void =
  fcQWindow_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QWindowwheelEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QWheelEvent): void =
  fcQWindow_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QWindowtouchEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QTouchEvent): void =
  fcQWindow_virtualbase_touchEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_touchEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QTouchEvent(h: param1, owned: false)
  vtbl[].touchEvent(self, slotval1)

proc QWindowtabletEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QTabletEvent): void =
  fcQWindow_virtualbase_tabletEvent(self.h, param1.h)

proc miqt_exec_callback_cQWindow_tabletEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: param1, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QWindownativeEvent*(self: gen_qwindow_types.QWindow, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQWindow_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQWindow_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWindoweventFilter*(self: gen_qwindow_types.QWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWindow_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQWindow_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWindowtimerEvent*(self: gen_qwindow_types.QWindow, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWindow_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQWindow_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QWindowchildEvent*(self: gen_qwindow_types.QWindow, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWindow_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQWindow_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QWindowcustomEvent*(self: gen_qwindow_types.QWindow, event: gen_qcoreevent_types.QEvent): void =
  fcQWindow_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQWindow_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QWindowconnectNotify*(self: gen_qwindow_types.QWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWindow_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWindow_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QWindowdisconnectNotify*(self: gen_qwindow_types.QWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWindow_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWindow_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowVTable](vtbl)
  let self = QWindow(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWindow* {.inheritable.} = ref object of QWindow
  vtbl*: cQWindowVTable
method metaObject*(self: VirtualQWindow, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWindowmetaObject(self[])
proc miqt_exec_method_cQWindow_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQWindow, param1: cstring): pointer {.base.} =
  QWindowmetacast(self[], param1)
proc miqt_exec_method_cQWindow_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQWindow, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWindowmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQWindow_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method surfaceType*(self: VirtualQWindow, ): cint {.base.} =
  QWindowsurfaceType(self[])
proc miqt_exec_method_cQWindow_surfaceType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  var virtualReturn = vtbl.surfaceType()
  cint(virtualReturn)

method format*(self: VirtualQWindow, ): gen_qsurfaceformat_types.QSurfaceFormat {.base.} =
  QWindowformat(self[])
proc miqt_exec_method_cQWindow_format(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  var virtualReturn = vtbl.format()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method size*(self: VirtualQWindow, ): gen_qsize_types.QSize {.base.} =
  QWindowsize(self[])
proc miqt_exec_method_cQWindow_size(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  var virtualReturn = vtbl.size()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method accessibleRoot*(self: VirtualQWindow, ): gen_qaccessible_types.QAccessibleInterface {.base.} =
  QWindowaccessibleRoot(self[])
proc miqt_exec_method_cQWindow_accessibleRoot(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  var virtualReturn = vtbl.accessibleRoot()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusObject*(self: VirtualQWindow, ): gen_qobject_types.QObject {.base.} =
  QWindowfocusObject(self[])
proc miqt_exec_method_cQWindow_focusObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  var virtualReturn = vtbl.focusObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method exposeEvent*(self: VirtualQWindow, param1: gen_qevent_types.QExposeEvent): void {.base.} =
  QWindowexposeEvent(self[], param1)
proc miqt_exec_method_cQWindow_exposeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QExposeEvent(h: param1, owned: false)
  vtbl.exposeEvent(slotval1)

method resizeEvent*(self: VirtualQWindow, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QWindowresizeEvent(self[], param1)
proc miqt_exec_method_cQWindow_resizeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl.resizeEvent(slotval1)

method paintEvent*(self: VirtualQWindow, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QWindowpaintEvent(self[], param1)
proc miqt_exec_method_cQWindow_paintEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl.paintEvent(slotval1)

method moveEvent*(self: VirtualQWindow, param1: gen_qevent_types.QMoveEvent): void {.base.} =
  QWindowmoveEvent(self[], param1)
proc miqt_exec_method_cQWindow_moveEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1, owned: false)
  vtbl.moveEvent(slotval1)

method focusInEvent*(self: VirtualQWindow, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QWindowfocusInEvent(self[], param1)
proc miqt_exec_method_cQWindow_focusInEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQWindow, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QWindowfocusOutEvent(self[], param1)
proc miqt_exec_method_cQWindow_focusOutEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl.focusOutEvent(slotval1)

method showEvent*(self: VirtualQWindow, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QWindowshowEvent(self[], param1)
proc miqt_exec_method_cQWindow_showEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl.showEvent(slotval1)

method hideEvent*(self: VirtualQWindow, param1: gen_qevent_types.QHideEvent): void {.base.} =
  QWindowhideEvent(self[], param1)
proc miqt_exec_method_cQWindow_hideEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: param1, owned: false)
  vtbl.hideEvent(slotval1)

method closeEvent*(self: VirtualQWindow, param1: gen_qevent_types.QCloseEvent): void {.base.} =
  QWindowcloseEvent(self[], param1)
proc miqt_exec_method_cQWindow_closeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl.closeEvent(slotval1)

method event*(self: VirtualQWindow, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWindowevent(self[], param1)
proc miqt_exec_method_cQWindow_event(vtbl: pointer, inst: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method keyPressEvent*(self: VirtualQWindow, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QWindowkeyPressEvent(self[], param1)
proc miqt_exec_method_cQWindow_keyPressEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQWindow, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QWindowkeyReleaseEvent(self[], param1)
proc miqt_exec_method_cQWindow_keyReleaseEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method mousePressEvent*(self: VirtualQWindow, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QWindowmousePressEvent(self[], param1)
proc miqt_exec_method_cQWindow_mousePressEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQWindow, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QWindowmouseReleaseEvent(self[], param1)
proc miqt_exec_method_cQWindow_mouseReleaseEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQWindow, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QWindowmouseDoubleClickEvent(self[], param1)
proc miqt_exec_method_cQWindow_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQWindow, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QWindowmouseMoveEvent(self[], param1)
proc miqt_exec_method_cQWindow_mouseMoveEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQWindow, param1: gen_qevent_types.QWheelEvent): void {.base.} =
  QWindowwheelEvent(self[], param1)
proc miqt_exec_method_cQWindow_wheelEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  vtbl.wheelEvent(slotval1)

method touchEvent*(self: VirtualQWindow, param1: gen_qevent_types.QTouchEvent): void {.base.} =
  QWindowtouchEvent(self[], param1)
proc miqt_exec_method_cQWindow_touchEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QTouchEvent(h: param1, owned: false)
  vtbl.touchEvent(slotval1)

method tabletEvent*(self: VirtualQWindow, param1: gen_qevent_types.QTabletEvent): void {.base.} =
  QWindowtabletEvent(self[], param1)
proc miqt_exec_method_cQWindow_tabletEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: param1, owned: false)
  vtbl.tabletEvent(slotval1)

method nativeEvent*(self: VirtualQWindow, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QWindownativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQWindow_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method eventFilter*(self: VirtualQWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWindoweventFilter(self[], watched, event)
proc miqt_exec_method_cQWindow_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQWindow, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWindowtimerEvent(self[], event)
proc miqt_exec_method_cQWindow_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQWindow, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWindowchildEvent(self[], event)
proc miqt_exec_method_cQWindow_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQWindow, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWindowcustomEvent(self[], event)
proc miqt_exec_method_cQWindow_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWindowconnectNotify(self[], signal)
proc miqt_exec_method_cQWindow_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWindowdisconnectNotify(self[], signal)
proc miqt_exec_method_cQWindow_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWindow](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc resolveInterface*(self: gen_qwindow_types.QWindow, name: cstring, revision: cint): pointer =
  fcQWindow_protectedbase_resolveInterface(self.h, name, revision)

proc sender*(self: gen_qwindow_types.QWindow, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWindow_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwindow_types.QWindow, ): cint =
  fcQWindow_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwindow_types.QWindow, signal: cstring): cint =
  fcQWindow_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwindow_types.QWindow, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWindow_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwindow_types.QWindow,
    vtbl: ref QWindowVTable = nil): gen_qwindow_types.QWindow =
  let vtbl = if vtbl == nil: new QWindowVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWindowVTable, _: ptr cQWindow) {.cdecl.} =
    let vtbl = cast[ref QWindowVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWindow_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWindow_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWindow_metacall
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = miqt_exec_callback_cQWindow_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = miqt_exec_callback_cQWindow_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = miqt_exec_callback_cQWindow_size
  if not isNil(vtbl[].accessibleRoot):
    vtbl[].vtbl.accessibleRoot = miqt_exec_callback_cQWindow_accessibleRoot
  if not isNil(vtbl[].focusObject):
    vtbl[].vtbl.focusObject = miqt_exec_callback_cQWindow_focusObject
  if not isNil(vtbl[].exposeEvent):
    vtbl[].vtbl.exposeEvent = miqt_exec_callback_cQWindow_exposeEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWindow_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWindow_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWindow_moveEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWindow_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWindow_focusOutEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWindow_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWindow_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWindow_closeEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWindow_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWindow_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWindow_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWindow_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWindow_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWindow_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWindow_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWindow_wheelEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQWindow_touchEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWindow_tabletEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWindow_nativeEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWindow_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWindow_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWindow_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWindow_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWindow_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWindow_disconnectNotify
  gen_qwindow_types.QWindow(h: fcQWindow_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qwindow_types.QWindow,
    parent: gen_qwindow_types.QWindow,
    vtbl: ref QWindowVTable = nil): gen_qwindow_types.QWindow =
  let vtbl = if vtbl == nil: new QWindowVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWindowVTable, _: ptr cQWindow) {.cdecl.} =
    let vtbl = cast[ref QWindowVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWindow_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWindow_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWindow_metacall
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = miqt_exec_callback_cQWindow_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = miqt_exec_callback_cQWindow_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = miqt_exec_callback_cQWindow_size
  if not isNil(vtbl[].accessibleRoot):
    vtbl[].vtbl.accessibleRoot = miqt_exec_callback_cQWindow_accessibleRoot
  if not isNil(vtbl[].focusObject):
    vtbl[].vtbl.focusObject = miqt_exec_callback_cQWindow_focusObject
  if not isNil(vtbl[].exposeEvent):
    vtbl[].vtbl.exposeEvent = miqt_exec_callback_cQWindow_exposeEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWindow_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWindow_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWindow_moveEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWindow_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWindow_focusOutEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWindow_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWindow_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWindow_closeEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWindow_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWindow_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWindow_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWindow_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWindow_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWindow_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWindow_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWindow_wheelEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQWindow_touchEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWindow_tabletEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWindow_nativeEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWindow_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWindow_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWindow_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWindow_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWindow_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWindow_disconnectNotify
  gen_qwindow_types.QWindow(h: fcQWindow_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qwindow_types.QWindow,
    screen: gen_qscreen_types.QScreen,
    vtbl: ref QWindowVTable = nil): gen_qwindow_types.QWindow =
  let vtbl = if vtbl == nil: new QWindowVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWindowVTable, _: ptr cQWindow) {.cdecl.} =
    let vtbl = cast[ref QWindowVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWindow_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWindow_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWindow_metacall
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = miqt_exec_callback_cQWindow_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = miqt_exec_callback_cQWindow_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = miqt_exec_callback_cQWindow_size
  if not isNil(vtbl[].accessibleRoot):
    vtbl[].vtbl.accessibleRoot = miqt_exec_callback_cQWindow_accessibleRoot
  if not isNil(vtbl[].focusObject):
    vtbl[].vtbl.focusObject = miqt_exec_callback_cQWindow_focusObject
  if not isNil(vtbl[].exposeEvent):
    vtbl[].vtbl.exposeEvent = miqt_exec_callback_cQWindow_exposeEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWindow_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWindow_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWindow_moveEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWindow_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWindow_focusOutEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWindow_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWindow_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWindow_closeEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWindow_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWindow_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWindow_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWindow_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWindow_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWindow_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWindow_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWindow_wheelEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQWindow_touchEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWindow_tabletEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWindow_nativeEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWindow_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWindow_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWindow_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWindow_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWindow_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWindow_disconnectNotify
  gen_qwindow_types.QWindow(h: fcQWindow_new3(addr(vtbl[].vtbl), screen.h), owned: true)

proc create*(T: type gen_qwindow_types.QWindow,
    vtbl: VirtualQWindow) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWindowVTable, _: ptr cQWindow) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQWindow()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQWindow_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQWindow_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQWindow_metacall
  vtbl[].vtbl.surfaceType = miqt_exec_method_cQWindow_surfaceType
  vtbl[].vtbl.format = miqt_exec_method_cQWindow_format
  vtbl[].vtbl.size = miqt_exec_method_cQWindow_size
  vtbl[].vtbl.accessibleRoot = miqt_exec_method_cQWindow_accessibleRoot
  vtbl[].vtbl.focusObject = miqt_exec_method_cQWindow_focusObject
  vtbl[].vtbl.exposeEvent = miqt_exec_method_cQWindow_exposeEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQWindow_resizeEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQWindow_paintEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQWindow_moveEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQWindow_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQWindow_focusOutEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQWindow_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQWindow_hideEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQWindow_closeEvent
  vtbl[].vtbl.event = miqt_exec_method_cQWindow_event
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQWindow_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQWindow_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQWindow_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQWindow_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQWindow_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQWindow_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQWindow_wheelEvent
  vtbl[].vtbl.touchEvent = miqt_exec_method_cQWindow_touchEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQWindow_tabletEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQWindow_nativeEvent
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQWindow_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQWindow_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQWindow_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQWindow_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQWindow_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQWindow_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQWindow_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qwindow_types.QWindow,
    parent: gen_qwindow_types.QWindow,
    vtbl: VirtualQWindow) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWindowVTable, _: ptr cQWindow) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQWindow()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQWindow_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQWindow_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQWindow_metacall
  vtbl[].vtbl.surfaceType = miqt_exec_method_cQWindow_surfaceType
  vtbl[].vtbl.format = miqt_exec_method_cQWindow_format
  vtbl[].vtbl.size = miqt_exec_method_cQWindow_size
  vtbl[].vtbl.accessibleRoot = miqt_exec_method_cQWindow_accessibleRoot
  vtbl[].vtbl.focusObject = miqt_exec_method_cQWindow_focusObject
  vtbl[].vtbl.exposeEvent = miqt_exec_method_cQWindow_exposeEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQWindow_resizeEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQWindow_paintEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQWindow_moveEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQWindow_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQWindow_focusOutEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQWindow_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQWindow_hideEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQWindow_closeEvent
  vtbl[].vtbl.event = miqt_exec_method_cQWindow_event
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQWindow_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQWindow_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQWindow_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQWindow_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQWindow_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQWindow_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQWindow_wheelEvent
  vtbl[].vtbl.touchEvent = miqt_exec_method_cQWindow_touchEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQWindow_tabletEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQWindow_nativeEvent
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQWindow_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQWindow_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQWindow_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQWindow_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQWindow_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQWindow_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQWindow_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qwindow_types.QWindow,
    screen: gen_qscreen_types.QScreen,
    vtbl: VirtualQWindow) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWindowVTable, _: ptr cQWindow) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQWindow()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQWindow, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQWindow_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQWindow_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQWindow_metacall
  vtbl[].vtbl.surfaceType = miqt_exec_method_cQWindow_surfaceType
  vtbl[].vtbl.format = miqt_exec_method_cQWindow_format
  vtbl[].vtbl.size = miqt_exec_method_cQWindow_size
  vtbl[].vtbl.accessibleRoot = miqt_exec_method_cQWindow_accessibleRoot
  vtbl[].vtbl.focusObject = miqt_exec_method_cQWindow_focusObject
  vtbl[].vtbl.exposeEvent = miqt_exec_method_cQWindow_exposeEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQWindow_resizeEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQWindow_paintEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQWindow_moveEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQWindow_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQWindow_focusOutEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQWindow_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQWindow_hideEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQWindow_closeEvent
  vtbl[].vtbl.event = miqt_exec_method_cQWindow_event
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQWindow_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQWindow_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQWindow_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQWindow_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQWindow_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQWindow_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQWindow_wheelEvent
  vtbl[].vtbl.touchEvent = miqt_exec_method_cQWindow_touchEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQWindow_tabletEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQWindow_nativeEvent
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQWindow_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQWindow_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQWindow_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQWindow_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQWindow_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQWindow_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQWindow_new3(addr(vtbl[].vtbl), screen.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qwindow_types.QWindow): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWindow_staticMetaObject())
