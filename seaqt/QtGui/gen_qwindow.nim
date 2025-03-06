import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
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

proc fcQWindow_new(): ptr cQWindow {.importc: "QWindow_new".}
proc fcQWindow_new2(parent: pointer): ptr cQWindow {.importc: "QWindow_new2".}
proc fcQWindow_new3(screen: pointer): ptr cQWindow {.importc: "QWindow_new3".}
proc fcQWindow_metaObject(self: pointer, ): pointer {.importc: "QWindow_metaObject".}
proc fcQWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QWindow_metacast".}
proc fcQWindow_tr(s: cstring): struct_miqt_string {.importc: "QWindow_tr".}
proc fcQWindow_trUtf8(s: cstring): struct_miqt_string {.importc: "QWindow_trUtf8".}
proc fcQWindow_setSurfaceType(self: pointer, surfaceType: cint): void {.importc: "QWindow_setSurfaceType".}
proc fcQWindow_surfaceType(self: pointer, ): cint {.importc: "QWindow_surfaceType".}
proc fcQWindow_isVisible(self: pointer, ): bool {.importc: "QWindow_isVisible".}
proc fcQWindow_visibility(self: pointer, ): cint {.importc: "QWindow_visibility".}
proc fcQWindow_setVisibility(self: pointer, v: cint): void {.importc: "QWindow_setVisibility".}
proc fcQWindow_create(self: pointer, ): void {.importc: "QWindow_create".}
proc fcQWindow_winId(self: pointer, ): uint {.importc: "QWindow_winId".}
proc fcQWindow_parent(self: pointer, mode: cint): pointer {.importc: "QWindow_parent".}
proc fcQWindow_parent2(self: pointer, ): pointer {.importc: "QWindow_parent2".}
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
proc fcQWindow_connect_screenChanged(self: pointer, slot: int) {.importc: "QWindow_connect_screenChanged".}
proc fcQWindow_modalityChanged(self: pointer, modality: cint): void {.importc: "QWindow_modalityChanged".}
proc fcQWindow_connect_modalityChanged(self: pointer, slot: int) {.importc: "QWindow_connect_modalityChanged".}
proc fcQWindow_windowStateChanged(self: pointer, windowState: cint): void {.importc: "QWindow_windowStateChanged".}
proc fcQWindow_connect_windowStateChanged(self: pointer, slot: int) {.importc: "QWindow_connect_windowStateChanged".}
proc fcQWindow_windowTitleChanged(self: pointer, title: struct_miqt_string): void {.importc: "QWindow_windowTitleChanged".}
proc fcQWindow_connect_windowTitleChanged(self: pointer, slot: int) {.importc: "QWindow_connect_windowTitleChanged".}
proc fcQWindow_xChanged(self: pointer, arg: cint): void {.importc: "QWindow_xChanged".}
proc fcQWindow_connect_xChanged(self: pointer, slot: int) {.importc: "QWindow_connect_xChanged".}
proc fcQWindow_yChanged(self: pointer, arg: cint): void {.importc: "QWindow_yChanged".}
proc fcQWindow_connect_yChanged(self: pointer, slot: int) {.importc: "QWindow_connect_yChanged".}
proc fcQWindow_widthChanged(self: pointer, arg: cint): void {.importc: "QWindow_widthChanged".}
proc fcQWindow_connect_widthChanged(self: pointer, slot: int) {.importc: "QWindow_connect_widthChanged".}
proc fcQWindow_heightChanged(self: pointer, arg: cint): void {.importc: "QWindow_heightChanged".}
proc fcQWindow_connect_heightChanged(self: pointer, slot: int) {.importc: "QWindow_connect_heightChanged".}
proc fcQWindow_minimumWidthChanged(self: pointer, arg: cint): void {.importc: "QWindow_minimumWidthChanged".}
proc fcQWindow_connect_minimumWidthChanged(self: pointer, slot: int) {.importc: "QWindow_connect_minimumWidthChanged".}
proc fcQWindow_minimumHeightChanged(self: pointer, arg: cint): void {.importc: "QWindow_minimumHeightChanged".}
proc fcQWindow_connect_minimumHeightChanged(self: pointer, slot: int) {.importc: "QWindow_connect_minimumHeightChanged".}
proc fcQWindow_maximumWidthChanged(self: pointer, arg: cint): void {.importc: "QWindow_maximumWidthChanged".}
proc fcQWindow_connect_maximumWidthChanged(self: pointer, slot: int) {.importc: "QWindow_connect_maximumWidthChanged".}
proc fcQWindow_maximumHeightChanged(self: pointer, arg: cint): void {.importc: "QWindow_maximumHeightChanged".}
proc fcQWindow_connect_maximumHeightChanged(self: pointer, slot: int) {.importc: "QWindow_connect_maximumHeightChanged".}
proc fcQWindow_visibleChanged(self: pointer, arg: bool): void {.importc: "QWindow_visibleChanged".}
proc fcQWindow_connect_visibleChanged(self: pointer, slot: int) {.importc: "QWindow_connect_visibleChanged".}
proc fcQWindow_visibilityChanged(self: pointer, visibility: cint): void {.importc: "QWindow_visibilityChanged".}
proc fcQWindow_connect_visibilityChanged(self: pointer, slot: int) {.importc: "QWindow_connect_visibilityChanged".}
proc fcQWindow_activeChanged(self: pointer, ): void {.importc: "QWindow_activeChanged".}
proc fcQWindow_connect_activeChanged(self: pointer, slot: int) {.importc: "QWindow_connect_activeChanged".}
proc fcQWindow_contentOrientationChanged(self: pointer, orientation: cint): void {.importc: "QWindow_contentOrientationChanged".}
proc fcQWindow_connect_contentOrientationChanged(self: pointer, slot: int) {.importc: "QWindow_connect_contentOrientationChanged".}
proc fcQWindow_focusObjectChanged(self: pointer, objectVal: pointer): void {.importc: "QWindow_focusObjectChanged".}
proc fcQWindow_connect_focusObjectChanged(self: pointer, slot: int) {.importc: "QWindow_connect_focusObjectChanged".}
proc fcQWindow_opacityChanged(self: pointer, opacity: float64): void {.importc: "QWindow_opacityChanged".}
proc fcQWindow_connect_opacityChanged(self: pointer, slot: int) {.importc: "QWindow_connect_opacityChanged".}
proc fcQWindow_transientParentChanged(self: pointer, transientParent: pointer): void {.importc: "QWindow_transientParentChanged".}
proc fcQWindow_connect_transientParentChanged(self: pointer, slot: int) {.importc: "QWindow_connect_transientParentChanged".}
proc fcQWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWindow_tr2".}
proc fcQWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWindow_tr3".}
proc fcQWindow_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWindow_trUtf82".}
proc fcQWindow_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWindow_trUtf83".}
proc fcQWindow_setFlag2(self: pointer, param1: cint, on: bool): void {.importc: "QWindow_setFlag2".}
proc fcQWindow_isAncestorOf2(self: pointer, child: pointer, mode: cint): bool {.importc: "QWindow_isAncestorOf2".}
proc fQWindow_virtualbase_surfaceType(self: pointer, ): cint{.importc: "QWindow_virtualbase_surfaceType".}
proc fcQWindow_override_virtual_surfaceType(self: pointer, slot: int) {.importc: "QWindow_override_virtual_surfaceType".}
proc fQWindow_virtualbase_format(self: pointer, ): pointer{.importc: "QWindow_virtualbase_format".}
proc fcQWindow_override_virtual_format(self: pointer, slot: int) {.importc: "QWindow_override_virtual_format".}
proc fQWindow_virtualbase_size(self: pointer, ): pointer{.importc: "QWindow_virtualbase_size".}
proc fcQWindow_override_virtual_size(self: pointer, slot: int) {.importc: "QWindow_override_virtual_size".}
proc fQWindow_virtualbase_accessibleRoot(self: pointer, ): pointer{.importc: "QWindow_virtualbase_accessibleRoot".}
proc fcQWindow_override_virtual_accessibleRoot(self: pointer, slot: int) {.importc: "QWindow_override_virtual_accessibleRoot".}
proc fQWindow_virtualbase_focusObject(self: pointer, ): pointer{.importc: "QWindow_virtualbase_focusObject".}
proc fcQWindow_override_virtual_focusObject(self: pointer, slot: int) {.importc: "QWindow_override_virtual_focusObject".}
proc fQWindow_virtualbase_exposeEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_exposeEvent".}
proc fcQWindow_override_virtual_exposeEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_exposeEvent".}
proc fQWindow_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_resizeEvent".}
proc fcQWindow_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_resizeEvent".}
proc fQWindow_virtualbase_moveEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_moveEvent".}
proc fcQWindow_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_moveEvent".}
proc fQWindow_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_focusInEvent".}
proc fcQWindow_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_focusInEvent".}
proc fQWindow_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_focusOutEvent".}
proc fcQWindow_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_focusOutEvent".}
proc fQWindow_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_showEvent".}
proc fcQWindow_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_showEvent".}
proc fQWindow_virtualbase_hideEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_hideEvent".}
proc fcQWindow_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_hideEvent".}
proc fQWindow_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QWindow_virtualbase_event".}
proc fcQWindow_override_virtual_event(self: pointer, slot: int) {.importc: "QWindow_override_virtual_event".}
proc fQWindow_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_keyPressEvent".}
proc fcQWindow_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_keyPressEvent".}
proc fQWindow_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_keyReleaseEvent".}
proc fcQWindow_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_keyReleaseEvent".}
proc fQWindow_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_mousePressEvent".}
proc fcQWindow_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_mousePressEvent".}
proc fQWindow_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_mouseReleaseEvent".}
proc fcQWindow_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_mouseReleaseEvent".}
proc fQWindow_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_mouseDoubleClickEvent".}
proc fcQWindow_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_mouseDoubleClickEvent".}
proc fQWindow_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_mouseMoveEvent".}
proc fcQWindow_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_mouseMoveEvent".}
proc fQWindow_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_wheelEvent".}
proc fcQWindow_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_wheelEvent".}
proc fQWindow_virtualbase_touchEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_touchEvent".}
proc fcQWindow_override_virtual_touchEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_touchEvent".}
proc fQWindow_virtualbase_tabletEvent(self: pointer, param1: pointer): void{.importc: "QWindow_virtualbase_tabletEvent".}
proc fcQWindow_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_tabletEvent".}
proc fQWindow_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QWindow_virtualbase_nativeEvent".}
proc fcQWindow_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_nativeEvent".}
proc fQWindow_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWindow_virtualbase_eventFilter".}
proc fcQWindow_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWindow_override_virtual_eventFilter".}
proc fQWindow_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWindow_virtualbase_timerEvent".}
proc fcQWindow_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_timerEvent".}
proc fQWindow_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWindow_virtualbase_childEvent".}
proc fcQWindow_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_childEvent".}
proc fQWindow_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWindow_virtualbase_customEvent".}
proc fcQWindow_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWindow_override_virtual_customEvent".}
proc fQWindow_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWindow_virtualbase_connectNotify".}
proc fcQWindow_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWindow_override_virtual_connectNotify".}
proc fQWindow_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWindow_virtualbase_disconnectNotify".}
proc fcQWindow_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWindow_override_virtual_disconnectNotify".}
proc fcQWindow_delete(self: pointer) {.importc: "QWindow_delete".}


func init*(T: type gen_qwindow_types.QWindow, h: ptr cQWindow): gen_qwindow_types.QWindow =
  T(h: h)
proc create*(T: type gen_qwindow_types.QWindow, ): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow.init(fcQWindow_new())

proc create*(T: type gen_qwindow_types.QWindow, parent: gen_qwindow_types.QWindow): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow.init(fcQWindow_new2(parent.h))

proc create*(T: type gen_qwindow_types.QWindow, screen: gen_qscreen_types.QScreen): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow.init(fcQWindow_new3(screen.h))

proc metaObject*(self: gen_qwindow_types.QWindow, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWindow_metaObject(self.h))

proc metacast*(self: gen_qwindow_types.QWindow, param1: cstring): pointer =
  fcQWindow_metacast(self.h, param1)

proc tr*(_: type gen_qwindow_types.QWindow, s: cstring): string =
  let v_ms = fcQWindow_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwindow_types.QWindow, s: cstring): string =
  let v_ms = fcQWindow_trUtf8(s)
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

proc parent*(self: gen_qwindow_types.QWindow, mode: cint): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQWindow_parent(self.h, cint(mode)))

proc parent*(self: gen_qwindow_types.QWindow, ): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQWindow_parent2(self.h))

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
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQWindow_format(self.h))

proc requestedFormat*(self: gen_qwindow_types.QWindow, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQWindow_requestedFormat(self.h))

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
  gen_qregion_types.QRegion(h: fcQWindow_mask(self.h))

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
  gen_qwindow_types.QWindow(h: fcQWindow_transientParent(self.h))

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
  gen_qsize_types.QSize(h: fcQWindow_minimumSize(self.h))

proc maximumSize*(self: gen_qwindow_types.QWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWindow_maximumSize(self.h))

proc baseSize*(self: gen_qwindow_types.QWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWindow_baseSize(self.h))

proc sizeIncrement*(self: gen_qwindow_types.QWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWindow_sizeIncrement(self.h))

proc setMinimumSize*(self: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize): void =
  fcQWindow_setMinimumSize(self.h, size.h)

proc setMaximumSize*(self: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize): void =
  fcQWindow_setMaximumSize(self.h, size.h)

proc setBaseSize*(self: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize): void =
  fcQWindow_setBaseSize(self.h, size.h)

proc setSizeIncrement*(self: gen_qwindow_types.QWindow, size: gen_qsize_types.QSize): void =
  fcQWindow_setSizeIncrement(self.h, size.h)

proc geometry*(self: gen_qwindow_types.QWindow, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWindow_geometry(self.h))

proc frameMargins*(self: gen_qwindow_types.QWindow, ): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQWindow_frameMargins(self.h))

proc frameGeometry*(self: gen_qwindow_types.QWindow, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWindow_frameGeometry(self.h))

proc framePosition*(self: gen_qwindow_types.QWindow, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWindow_framePosition(self.h))

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
  gen_qsize_types.QSize(h: fcQWindow_size(self.h))

proc position*(self: gen_qwindow_types.QWindow, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWindow_position(self.h))

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
  gen_qicon_types.QIcon(h: fcQWindow_icon(self.h))

proc destroy*(self: gen_qwindow_types.QWindow, ): void =
  fcQWindow_destroy(self.h)

proc setKeyboardGrabEnabled*(self: gen_qwindow_types.QWindow, grab: bool): bool =
  fcQWindow_setKeyboardGrabEnabled(self.h, grab)

proc setMouseGrabEnabled*(self: gen_qwindow_types.QWindow, grab: bool): bool =
  fcQWindow_setMouseGrabEnabled(self.h, grab)

proc screen*(self: gen_qwindow_types.QWindow, ): gen_qscreen_types.QScreen =
  gen_qscreen_types.QScreen(h: fcQWindow_screen(self.h))

proc setScreen*(self: gen_qwindow_types.QWindow, screen: gen_qscreen_types.QScreen): void =
  fcQWindow_setScreen(self.h, screen.h)

proc accessibleRoot*(self: gen_qwindow_types.QWindow, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQWindow_accessibleRoot(self.h))

proc focusObject*(self: gen_qwindow_types.QWindow, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWindow_focusObject(self.h))

proc mapToGlobal*(self: gen_qwindow_types.QWindow, pos: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWindow_mapToGlobal(self.h, pos.h))

proc mapFromGlobal*(self: gen_qwindow_types.QWindow, pos: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWindow_mapFromGlobal(self.h, pos.h))

proc cursor*(self: gen_qwindow_types.QWindow, ): gen_qcursor_types.QCursor =
  gen_qcursor_types.QCursor(h: fcQWindow_cursor(self.h))

proc setCursor*(self: gen_qwindow_types.QWindow, cursor: gen_qcursor_types.QCursor): void =
  fcQWindow_setCursor(self.h, cursor.h)

proc unsetCursor*(self: gen_qwindow_types.QWindow, ): void =
  fcQWindow_unsetCursor(self.h)

proc fromWinId*(_: type gen_qwindow_types.QWindow, id: uint): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQWindow_fromWinId(id))

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
proc miqt_exec_callback_QWindow_screenChanged(slot: int, screen: pointer) {.exportc.} =
  let nimfunc = cast[ptr QWindowscreenChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qscreen_types.QScreen(h: screen)

  nimfunc[](slotval1)

proc onscreenChanged*(self: gen_qwindow_types.QWindow, slot: QWindowscreenChangedSlot) =
  var tmp = new QWindowscreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_screenChanged(self.h, cast[int](addr tmp[]))

proc modalityChanged*(self: gen_qwindow_types.QWindow, modality: cint): void =
  fcQWindow_modalityChanged(self.h, cint(modality))

type QWindowmodalityChangedSlot* = proc(modality: cint)
proc miqt_exec_callback_QWindow_modalityChanged(slot: int, modality: cint) {.exportc.} =
  let nimfunc = cast[ptr QWindowmodalityChangedSlot](cast[pointer](slot))
  let slotval1 = cint(modality)

  nimfunc[](slotval1)

proc onmodalityChanged*(self: gen_qwindow_types.QWindow, slot: QWindowmodalityChangedSlot) =
  var tmp = new QWindowmodalityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_modalityChanged(self.h, cast[int](addr tmp[]))

proc windowStateChanged*(self: gen_qwindow_types.QWindow, windowState: cint): void =
  fcQWindow_windowStateChanged(self.h, cint(windowState))

type QWindowwindowStateChangedSlot* = proc(windowState: cint)
proc miqt_exec_callback_QWindow_windowStateChanged(slot: int, windowState: cint) {.exportc.} =
  let nimfunc = cast[ptr QWindowwindowStateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(windowState)

  nimfunc[](slotval1)

proc onwindowStateChanged*(self: gen_qwindow_types.QWindow, slot: QWindowwindowStateChangedSlot) =
  var tmp = new QWindowwindowStateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_windowStateChanged(self.h, cast[int](addr tmp[]))

proc windowTitleChanged*(self: gen_qwindow_types.QWindow, title: string): void =
  fcQWindow_windowTitleChanged(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

type QWindowwindowTitleChangedSlot* = proc(title: string)
proc miqt_exec_callback_QWindow_windowTitleChanged(slot: int, title: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QWindowwindowTitleChangedSlot](cast[pointer](slot))
  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(toOpenArrayByte(vtitle_ms.data, 0, int(vtitle_ms.len)-1))
  c_free(vtitle_ms.data)
  let slotval1 = vtitlex_ret

  nimfunc[](slotval1)

proc onwindowTitleChanged*(self: gen_qwindow_types.QWindow, slot: QWindowwindowTitleChangedSlot) =
  var tmp = new QWindowwindowTitleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_windowTitleChanged(self.h, cast[int](addr tmp[]))

proc xChanged*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_xChanged(self.h, arg)

type QWindowxChangedSlot* = proc(arg: cint)
proc miqt_exec_callback_QWindow_xChanged(slot: int, arg: cint) {.exportc.} =
  let nimfunc = cast[ptr QWindowxChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc onxChanged*(self: gen_qwindow_types.QWindow, slot: QWindowxChangedSlot) =
  var tmp = new QWindowxChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_xChanged(self.h, cast[int](addr tmp[]))

proc yChanged*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_yChanged(self.h, arg)

type QWindowyChangedSlot* = proc(arg: cint)
proc miqt_exec_callback_QWindow_yChanged(slot: int, arg: cint) {.exportc.} =
  let nimfunc = cast[ptr QWindowyChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc onyChanged*(self: gen_qwindow_types.QWindow, slot: QWindowyChangedSlot) =
  var tmp = new QWindowyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_yChanged(self.h, cast[int](addr tmp[]))

proc widthChanged*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_widthChanged(self.h, arg)

type QWindowwidthChangedSlot* = proc(arg: cint)
proc miqt_exec_callback_QWindow_widthChanged(slot: int, arg: cint) {.exportc.} =
  let nimfunc = cast[ptr QWindowwidthChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc onwidthChanged*(self: gen_qwindow_types.QWindow, slot: QWindowwidthChangedSlot) =
  var tmp = new QWindowwidthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_widthChanged(self.h, cast[int](addr tmp[]))

proc heightChanged*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_heightChanged(self.h, arg)

type QWindowheightChangedSlot* = proc(arg: cint)
proc miqt_exec_callback_QWindow_heightChanged(slot: int, arg: cint) {.exportc.} =
  let nimfunc = cast[ptr QWindowheightChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc onheightChanged*(self: gen_qwindow_types.QWindow, slot: QWindowheightChangedSlot) =
  var tmp = new QWindowheightChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_heightChanged(self.h, cast[int](addr tmp[]))

proc minimumWidthChanged*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_minimumWidthChanged(self.h, arg)

type QWindowminimumWidthChangedSlot* = proc(arg: cint)
proc miqt_exec_callback_QWindow_minimumWidthChanged(slot: int, arg: cint) {.exportc.} =
  let nimfunc = cast[ptr QWindowminimumWidthChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc onminimumWidthChanged*(self: gen_qwindow_types.QWindow, slot: QWindowminimumWidthChangedSlot) =
  var tmp = new QWindowminimumWidthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_minimumWidthChanged(self.h, cast[int](addr tmp[]))

proc minimumHeightChanged*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_minimumHeightChanged(self.h, arg)

type QWindowminimumHeightChangedSlot* = proc(arg: cint)
proc miqt_exec_callback_QWindow_minimumHeightChanged(slot: int, arg: cint) {.exportc.} =
  let nimfunc = cast[ptr QWindowminimumHeightChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc onminimumHeightChanged*(self: gen_qwindow_types.QWindow, slot: QWindowminimumHeightChangedSlot) =
  var tmp = new QWindowminimumHeightChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_minimumHeightChanged(self.h, cast[int](addr tmp[]))

proc maximumWidthChanged*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_maximumWidthChanged(self.h, arg)

type QWindowmaximumWidthChangedSlot* = proc(arg: cint)
proc miqt_exec_callback_QWindow_maximumWidthChanged(slot: int, arg: cint) {.exportc.} =
  let nimfunc = cast[ptr QWindowmaximumWidthChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc onmaximumWidthChanged*(self: gen_qwindow_types.QWindow, slot: QWindowmaximumWidthChangedSlot) =
  var tmp = new QWindowmaximumWidthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_maximumWidthChanged(self.h, cast[int](addr tmp[]))

proc maximumHeightChanged*(self: gen_qwindow_types.QWindow, arg: cint): void =
  fcQWindow_maximumHeightChanged(self.h, arg)

type QWindowmaximumHeightChangedSlot* = proc(arg: cint)
proc miqt_exec_callback_QWindow_maximumHeightChanged(slot: int, arg: cint) {.exportc.} =
  let nimfunc = cast[ptr QWindowmaximumHeightChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc onmaximumHeightChanged*(self: gen_qwindow_types.QWindow, slot: QWindowmaximumHeightChangedSlot) =
  var tmp = new QWindowmaximumHeightChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_maximumHeightChanged(self.h, cast[int](addr tmp[]))

proc visibleChanged*(self: gen_qwindow_types.QWindow, arg: bool): void =
  fcQWindow_visibleChanged(self.h, arg)

type QWindowvisibleChangedSlot* = proc(arg: bool)
proc miqt_exec_callback_QWindow_visibleChanged(slot: int, arg: bool) {.exportc.} =
  let nimfunc = cast[ptr QWindowvisibleChangedSlot](cast[pointer](slot))
  let slotval1 = arg

  nimfunc[](slotval1)

proc onvisibleChanged*(self: gen_qwindow_types.QWindow, slot: QWindowvisibleChangedSlot) =
  var tmp = new QWindowvisibleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_visibleChanged(self.h, cast[int](addr tmp[]))

proc visibilityChanged*(self: gen_qwindow_types.QWindow, visibility: cint): void =
  fcQWindow_visibilityChanged(self.h, cint(visibility))

type QWindowvisibilityChangedSlot* = proc(visibility: cint)
proc miqt_exec_callback_QWindow_visibilityChanged(slot: int, visibility: cint) {.exportc.} =
  let nimfunc = cast[ptr QWindowvisibilityChangedSlot](cast[pointer](slot))
  let slotval1 = cint(visibility)

  nimfunc[](slotval1)

proc onvisibilityChanged*(self: gen_qwindow_types.QWindow, slot: QWindowvisibilityChangedSlot) =
  var tmp = new QWindowvisibilityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_visibilityChanged(self.h, cast[int](addr tmp[]))

proc activeChanged*(self: gen_qwindow_types.QWindow, ): void =
  fcQWindow_activeChanged(self.h)

type QWindowactiveChangedSlot* = proc()
proc miqt_exec_callback_QWindow_activeChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWindowactiveChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onactiveChanged*(self: gen_qwindow_types.QWindow, slot: QWindowactiveChangedSlot) =
  var tmp = new QWindowactiveChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_activeChanged(self.h, cast[int](addr tmp[]))

proc contentOrientationChanged*(self: gen_qwindow_types.QWindow, orientation: cint): void =
  fcQWindow_contentOrientationChanged(self.h, cint(orientation))

type QWindowcontentOrientationChangedSlot* = proc(orientation: cint)
proc miqt_exec_callback_QWindow_contentOrientationChanged(slot: int, orientation: cint) {.exportc.} =
  let nimfunc = cast[ptr QWindowcontentOrientationChangedSlot](cast[pointer](slot))
  let slotval1 = cint(orientation)

  nimfunc[](slotval1)

proc oncontentOrientationChanged*(self: gen_qwindow_types.QWindow, slot: QWindowcontentOrientationChangedSlot) =
  var tmp = new QWindowcontentOrientationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_contentOrientationChanged(self.h, cast[int](addr tmp[]))

proc focusObjectChanged*(self: gen_qwindow_types.QWindow, objectVal: gen_qobject_types.QObject): void =
  fcQWindow_focusObjectChanged(self.h, objectVal.h)

type QWindowfocusObjectChangedSlot* = proc(objectVal: gen_qobject_types.QObject)
proc miqt_exec_callback_QWindow_focusObjectChanged(slot: int, objectVal: pointer) {.exportc.} =
  let nimfunc = cast[ptr QWindowfocusObjectChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  nimfunc[](slotval1)

proc onfocusObjectChanged*(self: gen_qwindow_types.QWindow, slot: QWindowfocusObjectChangedSlot) =
  var tmp = new QWindowfocusObjectChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_focusObjectChanged(self.h, cast[int](addr tmp[]))

proc opacityChanged*(self: gen_qwindow_types.QWindow, opacity: float64): void =
  fcQWindow_opacityChanged(self.h, opacity)

type QWindowopacityChangedSlot* = proc(opacity: float64)
proc miqt_exec_callback_QWindow_opacityChanged(slot: int, opacity: float64) {.exportc.} =
  let nimfunc = cast[ptr QWindowopacityChangedSlot](cast[pointer](slot))
  let slotval1 = opacity

  nimfunc[](slotval1)

proc onopacityChanged*(self: gen_qwindow_types.QWindow, slot: QWindowopacityChangedSlot) =
  var tmp = new QWindowopacityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_opacityChanged(self.h, cast[int](addr tmp[]))

proc transientParentChanged*(self: gen_qwindow_types.QWindow, transientParent: gen_qwindow_types.QWindow): void =
  fcQWindow_transientParentChanged(self.h, transientParent.h)

type QWindowtransientParentChangedSlot* = proc(transientParent: gen_qwindow_types.QWindow)
proc miqt_exec_callback_QWindow_transientParentChanged(slot: int, transientParent: pointer) {.exportc.} =
  let nimfunc = cast[ptr QWindowtransientParentChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qwindow_types.QWindow(h: transientParent)

  nimfunc[](slotval1)

proc ontransientParentChanged*(self: gen_qwindow_types.QWindow, slot: QWindowtransientParentChangedSlot) =
  var tmp = new QWindowtransientParentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_connect_transientParentChanged(self.h, cast[int](addr tmp[]))

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

proc trUtf8*(_: type gen_qwindow_types.QWindow, s: cstring, c: cstring): string =
  let v_ms = fcQWindow_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwindow_types.QWindow, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWindow_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFlag*(self: gen_qwindow_types.QWindow, param1: cint, on: bool): void =
  fcQWindow_setFlag2(self.h, cint(param1), on)

proc isAncestorOf*(self: gen_qwindow_types.QWindow, child: gen_qwindow_types.QWindow, mode: cint): bool =
  fcQWindow_isAncestorOf2(self.h, child.h, cint(mode))

proc QWindowsurfaceType*(self: gen_qwindow_types.QWindow, ): cint =
  cint(fQWindow_virtualbase_surfaceType(self.h))

type QWindowsurfaceTypeProc* = proc(): cint
proc onsurfaceType*(self: gen_qwindow_types.QWindow, slot: QWindowsurfaceTypeProc) =
  # TODO check subclass
  var tmp = new QWindowsurfaceTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_surfaceType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_surfaceType(self: ptr cQWindow, slot: int): cint {.exportc: "miqt_exec_callback_QWindow_surfaceType ".} =
  var nimfunc = cast[ptr QWindowsurfaceTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QWindowformat*(self: gen_qwindow_types.QWindow, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fQWindow_virtualbase_format(self.h))

type QWindowformatProc* = proc(): gen_qsurfaceformat_types.QSurfaceFormat
proc onformat*(self: gen_qwindow_types.QWindow, slot: QWindowformatProc) =
  # TODO check subclass
  var tmp = new QWindowformatProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_format(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_format(self: ptr cQWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QWindow_format ".} =
  var nimfunc = cast[ptr QWindowformatProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWindowsize*(self: gen_qwindow_types.QWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWindow_virtualbase_size(self.h))

type QWindowsizeProc* = proc(): gen_qsize_types.QSize
proc onsize*(self: gen_qwindow_types.QWindow, slot: QWindowsizeProc) =
  # TODO check subclass
  var tmp = new QWindowsizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_size(self: ptr cQWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QWindow_size ".} =
  var nimfunc = cast[ptr QWindowsizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWindowaccessibleRoot*(self: gen_qwindow_types.QWindow, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fQWindow_virtualbase_accessibleRoot(self.h))

type QWindowaccessibleRootProc* = proc(): gen_qaccessible_types.QAccessibleInterface
proc onaccessibleRoot*(self: gen_qwindow_types.QWindow, slot: QWindowaccessibleRootProc) =
  # TODO check subclass
  var tmp = new QWindowaccessibleRootProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_accessibleRoot(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_accessibleRoot(self: ptr cQWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QWindow_accessibleRoot ".} =
  var nimfunc = cast[ptr QWindowaccessibleRootProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWindowfocusObject*(self: gen_qwindow_types.QWindow, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fQWindow_virtualbase_focusObject(self.h))

type QWindowfocusObjectProc* = proc(): gen_qobject_types.QObject
proc onfocusObject*(self: gen_qwindow_types.QWindow, slot: QWindowfocusObjectProc) =
  # TODO check subclass
  var tmp = new QWindowfocusObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_focusObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_focusObject(self: ptr cQWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QWindow_focusObject ".} =
  var nimfunc = cast[ptr QWindowfocusObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWindowexposeEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QExposeEvent): void =
  fQWindow_virtualbase_exposeEvent(self.h, param1.h)

type QWindowexposeEventProc* = proc(param1: gen_qevent_types.QExposeEvent): void
proc onexposeEvent*(self: gen_qwindow_types.QWindow, slot: QWindowexposeEventProc) =
  # TODO check subclass
  var tmp = new QWindowexposeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_exposeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_exposeEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_exposeEvent ".} =
  var nimfunc = cast[ptr QWindowexposeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QExposeEvent(h: param1)


  nimfunc[](slotval1)
proc QWindowresizeEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QResizeEvent): void =
  fQWindow_virtualbase_resizeEvent(self.h, param1.h)

type QWindowresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qwindow_types.QWindow, slot: QWindowresizeEventProc) =
  # TODO check subclass
  var tmp = new QWindowresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_resizeEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_resizeEvent ".} =
  var nimfunc = cast[ptr QWindowresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QWindowmoveEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QMoveEvent): void =
  fQWindow_virtualbase_moveEvent(self.h, param1.h)

type QWindowmoveEventProc* = proc(param1: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qwindow_types.QWindow, slot: QWindowmoveEventProc) =
  # TODO check subclass
  var tmp = new QWindowmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_moveEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_moveEvent ".} =
  var nimfunc = cast[ptr QWindowmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1)


  nimfunc[](slotval1)
proc QWindowfocusInEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QFocusEvent): void =
  fQWindow_virtualbase_focusInEvent(self.h, param1.h)

type QWindowfocusInEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qwindow_types.QWindow, slot: QWindowfocusInEventProc) =
  # TODO check subclass
  var tmp = new QWindowfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_focusInEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_focusInEvent ".} =
  var nimfunc = cast[ptr QWindowfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QWindowfocusOutEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QFocusEvent): void =
  fQWindow_virtualbase_focusOutEvent(self.h, param1.h)

type QWindowfocusOutEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qwindow_types.QWindow, slot: QWindowfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QWindowfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_focusOutEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_focusOutEvent ".} =
  var nimfunc = cast[ptr QWindowfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QWindowshowEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QShowEvent): void =
  fQWindow_virtualbase_showEvent(self.h, param1.h)

type QWindowshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qwindow_types.QWindow, slot: QWindowshowEventProc) =
  # TODO check subclass
  var tmp = new QWindowshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_showEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_showEvent ".} =
  var nimfunc = cast[ptr QWindowshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QWindowhideEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QHideEvent): void =
  fQWindow_virtualbase_hideEvent(self.h, param1.h)

type QWindowhideEventProc* = proc(param1: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qwindow_types.QWindow, slot: QWindowhideEventProc) =
  # TODO check subclass
  var tmp = new QWindowhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_hideEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_hideEvent ".} =
  var nimfunc = cast[ptr QWindowhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: param1)


  nimfunc[](slotval1)
proc QWindowevent*(self: gen_qwindow_types.QWindow, param1: gen_qcoreevent_types.QEvent): bool =
  fQWindow_virtualbase_event(self.h, param1.h)

type QWindoweventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qwindow_types.QWindow, slot: QWindoweventProc) =
  # TODO check subclass
  var tmp = new QWindoweventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_event(self: ptr cQWindow, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QWindow_event ".} =
  var nimfunc = cast[ptr QWindoweventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWindowkeyPressEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QKeyEvent): void =
  fQWindow_virtualbase_keyPressEvent(self.h, param1.h)

type QWindowkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qwindow_types.QWindow, slot: QWindowkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QWindowkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_keyPressEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_keyPressEvent ".} =
  var nimfunc = cast[ptr QWindowkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QWindowkeyReleaseEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QKeyEvent): void =
  fQWindow_virtualbase_keyReleaseEvent(self.h, param1.h)

type QWindowkeyReleaseEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qwindow_types.QWindow, slot: QWindowkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QWindowkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_keyReleaseEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QWindowkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QWindowmousePressEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QMouseEvent): void =
  fQWindow_virtualbase_mousePressEvent(self.h, param1.h)

type QWindowmousePressEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qwindow_types.QWindow, slot: QWindowmousePressEventProc) =
  # TODO check subclass
  var tmp = new QWindowmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_mousePressEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_mousePressEvent ".} =
  var nimfunc = cast[ptr QWindowmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QWindowmouseReleaseEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QMouseEvent): void =
  fQWindow_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QWindowmouseReleaseEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qwindow_types.QWindow, slot: QWindowmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QWindowmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_mouseReleaseEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QWindowmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QWindowmouseDoubleClickEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QMouseEvent): void =
  fQWindow_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QWindowmouseDoubleClickEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qwindow_types.QWindow, slot: QWindowmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QWindowmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_mouseDoubleClickEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QWindowmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QWindowmouseMoveEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QMouseEvent): void =
  fQWindow_virtualbase_mouseMoveEvent(self.h, param1.h)

type QWindowmouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qwindow_types.QWindow, slot: QWindowmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QWindowmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_mouseMoveEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QWindowmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QWindowwheelEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QWheelEvent): void =
  fQWindow_virtualbase_wheelEvent(self.h, param1.h)

type QWindowwheelEventProc* = proc(param1: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qwindow_types.QWindow, slot: QWindowwheelEventProc) =
  # TODO check subclass
  var tmp = new QWindowwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_wheelEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_wheelEvent ".} =
  var nimfunc = cast[ptr QWindowwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QWindowtouchEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QTouchEvent): void =
  fQWindow_virtualbase_touchEvent(self.h, param1.h)

type QWindowtouchEventProc* = proc(param1: gen_qevent_types.QTouchEvent): void
proc ontouchEvent*(self: gen_qwindow_types.QWindow, slot: QWindowtouchEventProc) =
  # TODO check subclass
  var tmp = new QWindowtouchEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_touchEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_touchEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_touchEvent ".} =
  var nimfunc = cast[ptr QWindowtouchEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTouchEvent(h: param1)


  nimfunc[](slotval1)
proc QWindowtabletEvent*(self: gen_qwindow_types.QWindow, param1: gen_qevent_types.QTabletEvent): void =
  fQWindow_virtualbase_tabletEvent(self.h, param1.h)

type QWindowtabletEventProc* = proc(param1: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qwindow_types.QWindow, slot: QWindowtabletEventProc) =
  # TODO check subclass
  var tmp = new QWindowtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_tabletEvent(self: ptr cQWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWindow_tabletEvent ".} =
  var nimfunc = cast[ptr QWindowtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: param1)


  nimfunc[](slotval1)
proc QWindownativeEvent*(self: gen_qwindow_types.QWindow, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQWindow_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QWindownativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qwindow_types.QWindow, slot: QWindownativeEventProc) =
  # TODO check subclass
  var tmp = new QWindownativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_nativeEvent(self: ptr cQWindow, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QWindow_nativeEvent ".} =
  var nimfunc = cast[ptr QWindownativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QWindoweventFilter*(self: gen_qwindow_types.QWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQWindow_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWindoweventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qwindow_types.QWindow, slot: QWindoweventFilterProc) =
  # TODO check subclass
  var tmp = new QWindoweventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_eventFilter(self: ptr cQWindow, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWindow_eventFilter ".} =
  var nimfunc = cast[ptr QWindoweventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWindowtimerEvent*(self: gen_qwindow_types.QWindow, event: gen_qcoreevent_types.QTimerEvent): void =
  fQWindow_virtualbase_timerEvent(self.h, event.h)

type QWindowtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qwindow_types.QWindow, slot: QWindowtimerEventProc) =
  # TODO check subclass
  var tmp = new QWindowtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_timerEvent(self: ptr cQWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWindow_timerEvent ".} =
  var nimfunc = cast[ptr QWindowtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWindowchildEvent*(self: gen_qwindow_types.QWindow, event: gen_qcoreevent_types.QChildEvent): void =
  fQWindow_virtualbase_childEvent(self.h, event.h)

type QWindowchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qwindow_types.QWindow, slot: QWindowchildEventProc) =
  # TODO check subclass
  var tmp = new QWindowchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_childEvent(self: ptr cQWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWindow_childEvent ".} =
  var nimfunc = cast[ptr QWindowchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWindowcustomEvent*(self: gen_qwindow_types.QWindow, event: gen_qcoreevent_types.QEvent): void =
  fQWindow_virtualbase_customEvent(self.h, event.h)

type QWindowcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qwindow_types.QWindow, slot: QWindowcustomEventProc) =
  # TODO check subclass
  var tmp = new QWindowcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_customEvent(self: ptr cQWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWindow_customEvent ".} =
  var nimfunc = cast[ptr QWindowcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWindowconnectNotify*(self: gen_qwindow_types.QWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWindow_virtualbase_connectNotify(self.h, signal.h)

type QWindowconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qwindow_types.QWindow, slot: QWindowconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWindowconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_connectNotify(self: ptr cQWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWindow_connectNotify ".} =
  var nimfunc = cast[ptr QWindowconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWindowdisconnectNotify*(self: gen_qwindow_types.QWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWindow_virtualbase_disconnectNotify(self.h, signal.h)

type QWindowdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwindow_types.QWindow, slot: QWindowdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWindowdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindow_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindow_disconnectNotify(self: ptr cQWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWindow_disconnectNotify ".} =
  var nimfunc = cast[ptr QWindowdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qwindow_types.QWindow) =
  fcQWindow_delete(self.h)
