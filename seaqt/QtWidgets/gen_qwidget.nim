import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
{.compile("gen_qwidget.cpp", cflags).}


type QWidgetRenderFlagEnum* = distinct cint
template DrawWindowBackground*(_: type QWidgetRenderFlagEnum): untyped = 1
template DrawChildren*(_: type QWidgetRenderFlagEnum): untyped = 2
template IgnoreMask*(_: type QWidgetRenderFlagEnum): untyped = 4


import ./gen_qwidget_types
export gen_qwidget_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qlocale_types,
  ../QtCore/gen_qmargins_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qbackingstore_types,
  ../QtGui/gen_qbitmap_types,
  ../QtGui/gen_qcursor_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qfont_types,
  ../QtGui/gen_qfontinfo_types,
  ../QtGui/gen_qfontmetrics_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qkeysequence_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qpalette_types,
  ../QtGui/gen_qpixmap_types,
  ../QtGui/gen_qregion_types,
  ../QtGui/gen_qscreen_types,
  ../QtGui/gen_qwindow_types,
  ./gen_qaction_types,
  ./gen_qgraphicseffect_types,
  ./gen_qgraphicsproxywidget_types,
  ./gen_qlayout_types,
  ./gen_qsizepolicy_types,
  ./gen_qstyle_types
export
  gen_qcoreevent_types,
  gen_qlocale_types,
  gen_qmargins_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qbackingstore_types,
  gen_qbitmap_types,
  gen_qcursor_types,
  gen_qevent_types,
  gen_qfont_types,
  gen_qfontinfo_types,
  gen_qfontmetrics_types,
  gen_qicon_types,
  gen_qkeysequence_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpalette_types,
  gen_qpixmap_types,
  gen_qregion_types,
  gen_qscreen_types,
  gen_qwindow_types,
  gen_qaction_types,
  gen_qgraphicseffect_types,
  gen_qgraphicsproxywidget_types,
  gen_qlayout_types,
  gen_qsizepolicy_types,
  gen_qstyle_types

type cQWidgetData*{.exportc: "QWidgetData", incompleteStruct.} = object
type cQWidget*{.exportc: "QWidget", incompleteStruct.} = object

proc fcQWidgetData_new(param1: pointer): ptr cQWidgetData {.importc: "QWidgetData_new".}
proc fcQWidgetData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWidgetData_operatorAssign".}
proc fcQWidgetData_delete(self: pointer) {.importc: "QWidgetData_delete".}
proc fcQWidget_new(parent: pointer): ptr cQWidget {.importc: "QWidget_new".}
proc fcQWidget_new2(): ptr cQWidget {.importc: "QWidget_new2".}
proc fcQWidget_new3(parent: pointer, f: cint): ptr cQWidget {.importc: "QWidget_new3".}
proc fcQWidget_metaObject(self: pointer, ): pointer {.importc: "QWidget_metaObject".}
proc fcQWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QWidget_metacast".}
proc fcQWidget_tr(s: cstring): struct_miqt_string {.importc: "QWidget_tr".}
proc fcQWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QWidget_trUtf8".}
proc fcQWidget_devType(self: pointer, ): cint {.importc: "QWidget_devType".}
proc fcQWidget_winId(self: pointer, ): uint {.importc: "QWidget_winId".}
proc fcQWidget_createWinId(self: pointer, ): void {.importc: "QWidget_createWinId".}
proc fcQWidget_internalWinId(self: pointer, ): uint {.importc: "QWidget_internalWinId".}
proc fcQWidget_effectiveWinId(self: pointer, ): uint {.importc: "QWidget_effectiveWinId".}
proc fcQWidget_style(self: pointer, ): pointer {.importc: "QWidget_style".}
proc fcQWidget_setStyle(self: pointer, style: pointer): void {.importc: "QWidget_setStyle".}
proc fcQWidget_isTopLevel(self: pointer, ): bool {.importc: "QWidget_isTopLevel".}
proc fcQWidget_isWindow(self: pointer, ): bool {.importc: "QWidget_isWindow".}
proc fcQWidget_isModal(self: pointer, ): bool {.importc: "QWidget_isModal".}
proc fcQWidget_windowModality(self: pointer, ): cint {.importc: "QWidget_windowModality".}
proc fcQWidget_setWindowModality(self: pointer, windowModality: cint): void {.importc: "QWidget_setWindowModality".}
proc fcQWidget_isEnabled(self: pointer, ): bool {.importc: "QWidget_isEnabled".}
proc fcQWidget_isEnabledTo(self: pointer, param1: pointer): bool {.importc: "QWidget_isEnabledTo".}
proc fcQWidget_isEnabledToTLW(self: pointer, ): bool {.importc: "QWidget_isEnabledToTLW".}
proc fcQWidget_setEnabled(self: pointer, enabled: bool): void {.importc: "QWidget_setEnabled".}
proc fcQWidget_setDisabled(self: pointer, disabled: bool): void {.importc: "QWidget_setDisabled".}
proc fcQWidget_setWindowModified(self: pointer, windowModified: bool): void {.importc: "QWidget_setWindowModified".}
proc fcQWidget_frameGeometry(self: pointer, ): pointer {.importc: "QWidget_frameGeometry".}
proc fcQWidget_geometry(self: pointer, ): pointer {.importc: "QWidget_geometry".}
proc fcQWidget_normalGeometry(self: pointer, ): pointer {.importc: "QWidget_normalGeometry".}
proc fcQWidget_x(self: pointer, ): cint {.importc: "QWidget_x".}
proc fcQWidget_y(self: pointer, ): cint {.importc: "QWidget_y".}
proc fcQWidget_pos(self: pointer, ): pointer {.importc: "QWidget_pos".}
proc fcQWidget_frameSize(self: pointer, ): pointer {.importc: "QWidget_frameSize".}
proc fcQWidget_size(self: pointer, ): pointer {.importc: "QWidget_size".}
proc fcQWidget_width(self: pointer, ): cint {.importc: "QWidget_width".}
proc fcQWidget_height(self: pointer, ): cint {.importc: "QWidget_height".}
proc fcQWidget_rect(self: pointer, ): pointer {.importc: "QWidget_rect".}
proc fcQWidget_childrenRect(self: pointer, ): pointer {.importc: "QWidget_childrenRect".}
proc fcQWidget_childrenRegion(self: pointer, ): pointer {.importc: "QWidget_childrenRegion".}
proc fcQWidget_minimumSize(self: pointer, ): pointer {.importc: "QWidget_minimumSize".}
proc fcQWidget_maximumSize(self: pointer, ): pointer {.importc: "QWidget_maximumSize".}
proc fcQWidget_minimumWidth(self: pointer, ): cint {.importc: "QWidget_minimumWidth".}
proc fcQWidget_minimumHeight(self: pointer, ): cint {.importc: "QWidget_minimumHeight".}
proc fcQWidget_maximumWidth(self: pointer, ): cint {.importc: "QWidget_maximumWidth".}
proc fcQWidget_maximumHeight(self: pointer, ): cint {.importc: "QWidget_maximumHeight".}
proc fcQWidget_setMinimumSize(self: pointer, minimumSize: pointer): void {.importc: "QWidget_setMinimumSize".}
proc fcQWidget_setMinimumSize2(self: pointer, minw: cint, minh: cint): void {.importc: "QWidget_setMinimumSize2".}
proc fcQWidget_setMaximumSize(self: pointer, maximumSize: pointer): void {.importc: "QWidget_setMaximumSize".}
proc fcQWidget_setMaximumSize2(self: pointer, maxw: cint, maxh: cint): void {.importc: "QWidget_setMaximumSize2".}
proc fcQWidget_setMinimumWidth(self: pointer, minw: cint): void {.importc: "QWidget_setMinimumWidth".}
proc fcQWidget_setMinimumHeight(self: pointer, minh: cint): void {.importc: "QWidget_setMinimumHeight".}
proc fcQWidget_setMaximumWidth(self: pointer, maxw: cint): void {.importc: "QWidget_setMaximumWidth".}
proc fcQWidget_setMaximumHeight(self: pointer, maxh: cint): void {.importc: "QWidget_setMaximumHeight".}
proc fcQWidget_sizeIncrement(self: pointer, ): pointer {.importc: "QWidget_sizeIncrement".}
proc fcQWidget_setSizeIncrement(self: pointer, sizeIncrement: pointer): void {.importc: "QWidget_setSizeIncrement".}
proc fcQWidget_setSizeIncrement2(self: pointer, w: cint, h: cint): void {.importc: "QWidget_setSizeIncrement2".}
proc fcQWidget_baseSize(self: pointer, ): pointer {.importc: "QWidget_baseSize".}
proc fcQWidget_setBaseSize(self: pointer, baseSize: pointer): void {.importc: "QWidget_setBaseSize".}
proc fcQWidget_setBaseSize2(self: pointer, basew: cint, baseh: cint): void {.importc: "QWidget_setBaseSize2".}
proc fcQWidget_setFixedSize(self: pointer, fixedSize: pointer): void {.importc: "QWidget_setFixedSize".}
proc fcQWidget_setFixedSize2(self: pointer, w: cint, h: cint): void {.importc: "QWidget_setFixedSize2".}
proc fcQWidget_setFixedWidth(self: pointer, w: cint): void {.importc: "QWidget_setFixedWidth".}
proc fcQWidget_setFixedHeight(self: pointer, h: cint): void {.importc: "QWidget_setFixedHeight".}
proc fcQWidget_mapToGlobal(self: pointer, param1: pointer): pointer {.importc: "QWidget_mapToGlobal".}
proc fcQWidget_mapFromGlobal(self: pointer, param1: pointer): pointer {.importc: "QWidget_mapFromGlobal".}
proc fcQWidget_mapToParent(self: pointer, param1: pointer): pointer {.importc: "QWidget_mapToParent".}
proc fcQWidget_mapFromParent(self: pointer, param1: pointer): pointer {.importc: "QWidget_mapFromParent".}
proc fcQWidget_mapTo(self: pointer, param1: pointer, param2: pointer): pointer {.importc: "QWidget_mapTo".}
proc fcQWidget_mapFrom(self: pointer, param1: pointer, param2: pointer): pointer {.importc: "QWidget_mapFrom".}
proc fcQWidget_window(self: pointer, ): pointer {.importc: "QWidget_window".}
proc fcQWidget_nativeParentWidget(self: pointer, ): pointer {.importc: "QWidget_nativeParentWidget".}
proc fcQWidget_topLevelWidget(self: pointer, ): pointer {.importc: "QWidget_topLevelWidget".}
proc fcQWidget_palette(self: pointer, ): pointer {.importc: "QWidget_palette".}
proc fcQWidget_setPalette(self: pointer, palette: pointer): void {.importc: "QWidget_setPalette".}
proc fcQWidget_setBackgroundRole(self: pointer, backgroundRole: cint): void {.importc: "QWidget_setBackgroundRole".}
proc fcQWidget_backgroundRole(self: pointer, ): cint {.importc: "QWidget_backgroundRole".}
proc fcQWidget_setForegroundRole(self: pointer, foregroundRole: cint): void {.importc: "QWidget_setForegroundRole".}
proc fcQWidget_foregroundRole(self: pointer, ): cint {.importc: "QWidget_foregroundRole".}
proc fcQWidget_font(self: pointer, ): pointer {.importc: "QWidget_font".}
proc fcQWidget_setFont(self: pointer, font: pointer): void {.importc: "QWidget_setFont".}
proc fcQWidget_fontMetrics(self: pointer, ): pointer {.importc: "QWidget_fontMetrics".}
proc fcQWidget_fontInfo(self: pointer, ): pointer {.importc: "QWidget_fontInfo".}
proc fcQWidget_cursor(self: pointer, ): pointer {.importc: "QWidget_cursor".}
proc fcQWidget_setCursor(self: pointer, cursor: pointer): void {.importc: "QWidget_setCursor".}
proc fcQWidget_unsetCursor(self: pointer, ): void {.importc: "QWidget_unsetCursor".}
proc fcQWidget_setMouseTracking(self: pointer, enable: bool): void {.importc: "QWidget_setMouseTracking".}
proc fcQWidget_hasMouseTracking(self: pointer, ): bool {.importc: "QWidget_hasMouseTracking".}
proc fcQWidget_underMouse(self: pointer, ): bool {.importc: "QWidget_underMouse".}
proc fcQWidget_setTabletTracking(self: pointer, enable: bool): void {.importc: "QWidget_setTabletTracking".}
proc fcQWidget_hasTabletTracking(self: pointer, ): bool {.importc: "QWidget_hasTabletTracking".}
proc fcQWidget_setMask(self: pointer, mask: pointer): void {.importc: "QWidget_setMask".}
proc fcQWidget_setMaskWithMask(self: pointer, mask: pointer): void {.importc: "QWidget_setMaskWithMask".}
proc fcQWidget_mask(self: pointer, ): pointer {.importc: "QWidget_mask".}
proc fcQWidget_clearMask(self: pointer, ): void {.importc: "QWidget_clearMask".}
proc fcQWidget_render(self: pointer, target: pointer): void {.importc: "QWidget_render".}
proc fcQWidget_renderWithPainter(self: pointer, painter: pointer): void {.importc: "QWidget_renderWithPainter".}
proc fcQWidget_grab(self: pointer, ): pointer {.importc: "QWidget_grab".}
proc fcQWidget_graphicsEffect(self: pointer, ): pointer {.importc: "QWidget_graphicsEffect".}
proc fcQWidget_setGraphicsEffect(self: pointer, effect: pointer): void {.importc: "QWidget_setGraphicsEffect".}
proc fcQWidget_grabGesture(self: pointer, typeVal: cint): void {.importc: "QWidget_grabGesture".}
proc fcQWidget_ungrabGesture(self: pointer, typeVal: cint): void {.importc: "QWidget_ungrabGesture".}
proc fcQWidget_setWindowTitle(self: pointer, windowTitle: struct_miqt_string): void {.importc: "QWidget_setWindowTitle".}
proc fcQWidget_setStyleSheet(self: pointer, styleSheet: struct_miqt_string): void {.importc: "QWidget_setStyleSheet".}
proc fcQWidget_styleSheet(self: pointer, ): struct_miqt_string {.importc: "QWidget_styleSheet".}
proc fcQWidget_windowTitle(self: pointer, ): struct_miqt_string {.importc: "QWidget_windowTitle".}
proc fcQWidget_setWindowIcon(self: pointer, icon: pointer): void {.importc: "QWidget_setWindowIcon".}
proc fcQWidget_windowIcon(self: pointer, ): pointer {.importc: "QWidget_windowIcon".}
proc fcQWidget_setWindowIconText(self: pointer, windowIconText: struct_miqt_string): void {.importc: "QWidget_setWindowIconText".}
proc fcQWidget_windowIconText(self: pointer, ): struct_miqt_string {.importc: "QWidget_windowIconText".}
proc fcQWidget_setWindowRole(self: pointer, windowRole: struct_miqt_string): void {.importc: "QWidget_setWindowRole".}
proc fcQWidget_windowRole(self: pointer, ): struct_miqt_string {.importc: "QWidget_windowRole".}
proc fcQWidget_setWindowFilePath(self: pointer, filePath: struct_miqt_string): void {.importc: "QWidget_setWindowFilePath".}
proc fcQWidget_windowFilePath(self: pointer, ): struct_miqt_string {.importc: "QWidget_windowFilePath".}
proc fcQWidget_setWindowOpacity(self: pointer, level: float64): void {.importc: "QWidget_setWindowOpacity".}
proc fcQWidget_windowOpacity(self: pointer, ): float64 {.importc: "QWidget_windowOpacity".}
proc fcQWidget_isWindowModified(self: pointer, ): bool {.importc: "QWidget_isWindowModified".}
proc fcQWidget_setToolTip(self: pointer, toolTip: struct_miqt_string): void {.importc: "QWidget_setToolTip".}
proc fcQWidget_toolTip(self: pointer, ): struct_miqt_string {.importc: "QWidget_toolTip".}
proc fcQWidget_setToolTipDuration(self: pointer, msec: cint): void {.importc: "QWidget_setToolTipDuration".}
proc fcQWidget_toolTipDuration(self: pointer, ): cint {.importc: "QWidget_toolTipDuration".}
proc fcQWidget_setStatusTip(self: pointer, statusTip: struct_miqt_string): void {.importc: "QWidget_setStatusTip".}
proc fcQWidget_statusTip(self: pointer, ): struct_miqt_string {.importc: "QWidget_statusTip".}
proc fcQWidget_setWhatsThis(self: pointer, whatsThis: struct_miqt_string): void {.importc: "QWidget_setWhatsThis".}
proc fcQWidget_whatsThis(self: pointer, ): struct_miqt_string {.importc: "QWidget_whatsThis".}
proc fcQWidget_accessibleName(self: pointer, ): struct_miqt_string {.importc: "QWidget_accessibleName".}
proc fcQWidget_setAccessibleName(self: pointer, name: struct_miqt_string): void {.importc: "QWidget_setAccessibleName".}
proc fcQWidget_accessibleDescription(self: pointer, ): struct_miqt_string {.importc: "QWidget_accessibleDescription".}
proc fcQWidget_setAccessibleDescription(self: pointer, description: struct_miqt_string): void {.importc: "QWidget_setAccessibleDescription".}
proc fcQWidget_setLayoutDirection(self: pointer, direction: cint): void {.importc: "QWidget_setLayoutDirection".}
proc fcQWidget_layoutDirection(self: pointer, ): cint {.importc: "QWidget_layoutDirection".}
proc fcQWidget_unsetLayoutDirection(self: pointer, ): void {.importc: "QWidget_unsetLayoutDirection".}
proc fcQWidget_setLocale(self: pointer, locale: pointer): void {.importc: "QWidget_setLocale".}
proc fcQWidget_locale(self: pointer, ): pointer {.importc: "QWidget_locale".}
proc fcQWidget_unsetLocale(self: pointer, ): void {.importc: "QWidget_unsetLocale".}
proc fcQWidget_isRightToLeft(self: pointer, ): bool {.importc: "QWidget_isRightToLeft".}
proc fcQWidget_isLeftToRight(self: pointer, ): bool {.importc: "QWidget_isLeftToRight".}
proc fcQWidget_setFocus(self: pointer, ): void {.importc: "QWidget_setFocus".}
proc fcQWidget_isActiveWindow(self: pointer, ): bool {.importc: "QWidget_isActiveWindow".}
proc fcQWidget_activateWindow(self: pointer, ): void {.importc: "QWidget_activateWindow".}
proc fcQWidget_clearFocus(self: pointer, ): void {.importc: "QWidget_clearFocus".}
proc fcQWidget_setFocusWithReason(self: pointer, reason: cint): void {.importc: "QWidget_setFocusWithReason".}
proc fcQWidget_focusPolicy(self: pointer, ): cint {.importc: "QWidget_focusPolicy".}
proc fcQWidget_setFocusPolicy(self: pointer, policy: cint): void {.importc: "QWidget_setFocusPolicy".}
proc fcQWidget_hasFocus(self: pointer, ): bool {.importc: "QWidget_hasFocus".}
proc fcQWidget_setTabOrder(param1: pointer, param2: pointer): void {.importc: "QWidget_setTabOrder".}
proc fcQWidget_setFocusProxy(self: pointer, focusProxy: pointer): void {.importc: "QWidget_setFocusProxy".}
proc fcQWidget_focusProxy(self: pointer, ): pointer {.importc: "QWidget_focusProxy".}
proc fcQWidget_contextMenuPolicy(self: pointer, ): cint {.importc: "QWidget_contextMenuPolicy".}
proc fcQWidget_setContextMenuPolicy(self: pointer, policy: cint): void {.importc: "QWidget_setContextMenuPolicy".}
proc fcQWidget_grabMouse(self: pointer, ): void {.importc: "QWidget_grabMouse".}
proc fcQWidget_grabMouseWithQCursor(self: pointer, param1: pointer): void {.importc: "QWidget_grabMouseWithQCursor".}
proc fcQWidget_releaseMouse(self: pointer, ): void {.importc: "QWidget_releaseMouse".}
proc fcQWidget_grabKeyboard(self: pointer, ): void {.importc: "QWidget_grabKeyboard".}
proc fcQWidget_releaseKeyboard(self: pointer, ): void {.importc: "QWidget_releaseKeyboard".}
proc fcQWidget_grabShortcut(self: pointer, key: pointer): cint {.importc: "QWidget_grabShortcut".}
proc fcQWidget_releaseShortcut(self: pointer, id: cint): void {.importc: "QWidget_releaseShortcut".}
proc fcQWidget_setShortcutEnabled(self: pointer, id: cint): void {.importc: "QWidget_setShortcutEnabled".}
proc fcQWidget_setShortcutAutoRepeat(self: pointer, id: cint): void {.importc: "QWidget_setShortcutAutoRepeat".}
proc fcQWidget_mouseGrabber(): pointer {.importc: "QWidget_mouseGrabber".}
proc fcQWidget_keyboardGrabber(): pointer {.importc: "QWidget_keyboardGrabber".}
proc fcQWidget_updatesEnabled(self: pointer, ): bool {.importc: "QWidget_updatesEnabled".}
proc fcQWidget_setUpdatesEnabled(self: pointer, enable: bool): void {.importc: "QWidget_setUpdatesEnabled".}
proc fcQWidget_graphicsProxyWidget(self: pointer, ): pointer {.importc: "QWidget_graphicsProxyWidget".}
proc fcQWidget_update(self: pointer, ): void {.importc: "QWidget_update".}
proc fcQWidget_repaint(self: pointer, ): void {.importc: "QWidget_repaint".}
proc fcQWidget_update2(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QWidget_update2".}
proc fcQWidget_updateWithQRect(self: pointer, param1: pointer): void {.importc: "QWidget_updateWithQRect".}
proc fcQWidget_updateWithQRegion(self: pointer, param1: pointer): void {.importc: "QWidget_updateWithQRegion".}
proc fcQWidget_repaint2(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QWidget_repaint2".}
proc fcQWidget_repaintWithQRect(self: pointer, param1: pointer): void {.importc: "QWidget_repaintWithQRect".}
proc fcQWidget_repaintWithQRegion(self: pointer, param1: pointer): void {.importc: "QWidget_repaintWithQRegion".}
proc fcQWidget_setVisible(self: pointer, visible: bool): void {.importc: "QWidget_setVisible".}
proc fcQWidget_setHidden(self: pointer, hidden: bool): void {.importc: "QWidget_setHidden".}
proc fcQWidget_show(self: pointer, ): void {.importc: "QWidget_show".}
proc fcQWidget_hide(self: pointer, ): void {.importc: "QWidget_hide".}
proc fcQWidget_showMinimized(self: pointer, ): void {.importc: "QWidget_showMinimized".}
proc fcQWidget_showMaximized(self: pointer, ): void {.importc: "QWidget_showMaximized".}
proc fcQWidget_showFullScreen(self: pointer, ): void {.importc: "QWidget_showFullScreen".}
proc fcQWidget_showNormal(self: pointer, ): void {.importc: "QWidget_showNormal".}
proc fcQWidget_close(self: pointer, ): bool {.importc: "QWidget_close".}
proc fcQWidget_raiseX(self: pointer, ): void {.importc: "QWidget_raise".}
proc fcQWidget_lower(self: pointer, ): void {.importc: "QWidget_lower".}
proc fcQWidget_stackUnder(self: pointer, param1: pointer): void {.importc: "QWidget_stackUnder".}
proc fcQWidget_move(self: pointer, x: cint, y: cint): void {.importc: "QWidget_move".}
proc fcQWidget_moveWithQPoint(self: pointer, param1: pointer): void {.importc: "QWidget_moveWithQPoint".}
proc fcQWidget_resize(self: pointer, w: cint, h: cint): void {.importc: "QWidget_resize".}
proc fcQWidget_resizeWithQSize(self: pointer, param1: pointer): void {.importc: "QWidget_resizeWithQSize".}
proc fcQWidget_setGeometry(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QWidget_setGeometry".}
proc fcQWidget_setGeometryWithGeometry(self: pointer, geometry: pointer): void {.importc: "QWidget_setGeometryWithGeometry".}
proc fcQWidget_saveGeometry(self: pointer, ): struct_miqt_string {.importc: "QWidget_saveGeometry".}
proc fcQWidget_restoreGeometry(self: pointer, geometry: struct_miqt_string): bool {.importc: "QWidget_restoreGeometry".}
proc fcQWidget_adjustSize(self: pointer, ): void {.importc: "QWidget_adjustSize".}
proc fcQWidget_isVisible(self: pointer, ): bool {.importc: "QWidget_isVisible".}
proc fcQWidget_isVisibleTo(self: pointer, param1: pointer): bool {.importc: "QWidget_isVisibleTo".}
proc fcQWidget_isHidden(self: pointer, ): bool {.importc: "QWidget_isHidden".}
proc fcQWidget_isMinimized(self: pointer, ): bool {.importc: "QWidget_isMinimized".}
proc fcQWidget_isMaximized(self: pointer, ): bool {.importc: "QWidget_isMaximized".}
proc fcQWidget_isFullScreen(self: pointer, ): bool {.importc: "QWidget_isFullScreen".}
proc fcQWidget_windowState(self: pointer, ): cint {.importc: "QWidget_windowState".}
proc fcQWidget_setWindowState(self: pointer, state: cint): void {.importc: "QWidget_setWindowState".}
proc fcQWidget_overrideWindowState(self: pointer, state: cint): void {.importc: "QWidget_overrideWindowState".}
proc fcQWidget_sizeHint(self: pointer, ): pointer {.importc: "QWidget_sizeHint".}
proc fcQWidget_minimumSizeHint(self: pointer, ): pointer {.importc: "QWidget_minimumSizeHint".}
proc fcQWidget_sizePolicy(self: pointer, ): pointer {.importc: "QWidget_sizePolicy".}
proc fcQWidget_setSizePolicy(self: pointer, sizePolicy: pointer): void {.importc: "QWidget_setSizePolicy".}
proc fcQWidget_setSizePolicy2(self: pointer, horizontal: cint, vertical: cint): void {.importc: "QWidget_setSizePolicy2".}
proc fcQWidget_heightForWidth(self: pointer, param1: cint): cint {.importc: "QWidget_heightForWidth".}
proc fcQWidget_hasHeightForWidth(self: pointer, ): bool {.importc: "QWidget_hasHeightForWidth".}
proc fcQWidget_visibleRegion(self: pointer, ): pointer {.importc: "QWidget_visibleRegion".}
proc fcQWidget_setContentsMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QWidget_setContentsMargins".}
proc fcQWidget_setContentsMarginsWithMargins(self: pointer, margins: pointer): void {.importc: "QWidget_setContentsMarginsWithMargins".}
proc fcQWidget_getContentsMargins(self: pointer, left: ptr cint, top: ptr cint, right: ptr cint, bottom: ptr cint): void {.importc: "QWidget_getContentsMargins".}
proc fcQWidget_contentsMargins(self: pointer, ): pointer {.importc: "QWidget_contentsMargins".}
proc fcQWidget_contentsRect(self: pointer, ): pointer {.importc: "QWidget_contentsRect".}
proc fcQWidget_layout(self: pointer, ): pointer {.importc: "QWidget_layout".}
proc fcQWidget_setLayout(self: pointer, layout: pointer): void {.importc: "QWidget_setLayout".}
proc fcQWidget_updateGeometry(self: pointer, ): void {.importc: "QWidget_updateGeometry".}
proc fcQWidget_setParent(self: pointer, parent: pointer): void {.importc: "QWidget_setParent".}
proc fcQWidget_setParent2(self: pointer, parent: pointer, f: cint): void {.importc: "QWidget_setParent2".}
proc fcQWidget_scroll(self: pointer, dx: cint, dy: cint): void {.importc: "QWidget_scroll".}
proc fcQWidget_scroll2(self: pointer, dx: cint, dy: cint, param3: pointer): void {.importc: "QWidget_scroll2".}
proc fcQWidget_focusWidget(self: pointer, ): pointer {.importc: "QWidget_focusWidget".}
proc fcQWidget_nextInFocusChain(self: pointer, ): pointer {.importc: "QWidget_nextInFocusChain".}
proc fcQWidget_previousInFocusChain(self: pointer, ): pointer {.importc: "QWidget_previousInFocusChain".}
proc fcQWidget_acceptDrops(self: pointer, ): bool {.importc: "QWidget_acceptDrops".}
proc fcQWidget_setAcceptDrops(self: pointer, on: bool): void {.importc: "QWidget_setAcceptDrops".}
proc fcQWidget_addAction(self: pointer, action: pointer): void {.importc: "QWidget_addAction".}
proc fcQWidget_addActions(self: pointer, actions: struct_miqt_array): void {.importc: "QWidget_addActions".}
proc fcQWidget_insertActions(self: pointer, before: pointer, actions: struct_miqt_array): void {.importc: "QWidget_insertActions".}
proc fcQWidget_insertAction(self: pointer, before: pointer, action: pointer): void {.importc: "QWidget_insertAction".}
proc fcQWidget_removeAction(self: pointer, action: pointer): void {.importc: "QWidget_removeAction".}
proc fcQWidget_actions(self: pointer, ): struct_miqt_array {.importc: "QWidget_actions".}
proc fcQWidget_parentWidget(self: pointer, ): pointer {.importc: "QWidget_parentWidget".}
proc fcQWidget_setWindowFlags(self: pointer, typeVal: cint): void {.importc: "QWidget_setWindowFlags".}
proc fcQWidget_windowFlags(self: pointer, ): cint {.importc: "QWidget_windowFlags".}
proc fcQWidget_setWindowFlag(self: pointer, param1: cint): void {.importc: "QWidget_setWindowFlag".}
proc fcQWidget_overrideWindowFlags(self: pointer, typeVal: cint): void {.importc: "QWidget_overrideWindowFlags".}
proc fcQWidget_windowType(self: pointer, ): cint {.importc: "QWidget_windowType".}
proc fcQWidget_find(param1: uint): pointer {.importc: "QWidget_find".}
proc fcQWidget_childAt(self: pointer, x: cint, y: cint): pointer {.importc: "QWidget_childAt".}
proc fcQWidget_childAtWithQPoint(self: pointer, p: pointer): pointer {.importc: "QWidget_childAtWithQPoint".}
proc fcQWidget_setAttribute(self: pointer, param1: cint): void {.importc: "QWidget_setAttribute".}
proc fcQWidget_testAttribute(self: pointer, param1: cint): bool {.importc: "QWidget_testAttribute".}
proc fcQWidget_paintEngine(self: pointer, ): pointer {.importc: "QWidget_paintEngine".}
proc fcQWidget_ensurePolished(self: pointer, ): void {.importc: "QWidget_ensurePolished".}
proc fcQWidget_isAncestorOf(self: pointer, child: pointer): bool {.importc: "QWidget_isAncestorOf".}
proc fcQWidget_autoFillBackground(self: pointer, ): bool {.importc: "QWidget_autoFillBackground".}
proc fcQWidget_setAutoFillBackground(self: pointer, enabled: bool): void {.importc: "QWidget_setAutoFillBackground".}
proc fcQWidget_backingStore(self: pointer, ): pointer {.importc: "QWidget_backingStore".}
proc fcQWidget_windowHandle(self: pointer, ): pointer {.importc: "QWidget_windowHandle".}
proc fcQWidget_screen(self: pointer, ): pointer {.importc: "QWidget_screen".}
proc fcQWidget_createWindowContainer(window: pointer): pointer {.importc: "QWidget_createWindowContainer".}
proc fcQWidget_windowTitleChanged(self: pointer, title: struct_miqt_string): void {.importc: "QWidget_windowTitleChanged".}
proc fcQWidget_connect_windowTitleChanged(self: pointer, slot: int) {.importc: "QWidget_connect_windowTitleChanged".}
proc fcQWidget_windowIconChanged(self: pointer, icon: pointer): void {.importc: "QWidget_windowIconChanged".}
proc fcQWidget_connect_windowIconChanged(self: pointer, slot: int) {.importc: "QWidget_connect_windowIconChanged".}
proc fcQWidget_windowIconTextChanged(self: pointer, iconText: struct_miqt_string): void {.importc: "QWidget_windowIconTextChanged".}
proc fcQWidget_connect_windowIconTextChanged(self: pointer, slot: int) {.importc: "QWidget_connect_windowIconTextChanged".}
proc fcQWidget_customContextMenuRequested(self: pointer, pos: pointer): void {.importc: "QWidget_customContextMenuRequested".}
proc fcQWidget_connect_customContextMenuRequested(self: pointer, slot: int) {.importc: "QWidget_connect_customContextMenuRequested".}
proc fcQWidget_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QWidget_inputMethodQuery".}
proc fcQWidget_inputMethodHints(self: pointer, ): cint {.importc: "QWidget_inputMethodHints".}
proc fcQWidget_setInputMethodHints(self: pointer, hints: cint): void {.importc: "QWidget_setInputMethodHints".}
proc fcQWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWidget_tr2".}
proc fcQWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWidget_tr3".}
proc fcQWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWidget_trUtf82".}
proc fcQWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWidget_trUtf83".}
proc fcQWidget_render2(self: pointer, target: pointer, targetOffset: pointer): void {.importc: "QWidget_render2".}
proc fcQWidget_render3(self: pointer, target: pointer, targetOffset: pointer, sourceRegion: pointer): void {.importc: "QWidget_render3".}
proc fcQWidget_render4(self: pointer, target: pointer, targetOffset: pointer, sourceRegion: pointer, renderFlags: cint): void {.importc: "QWidget_render4".}
proc fcQWidget_render22(self: pointer, painter: pointer, targetOffset: pointer): void {.importc: "QWidget_render22".}
proc fcQWidget_render32(self: pointer, painter: pointer, targetOffset: pointer, sourceRegion: pointer): void {.importc: "QWidget_render32".}
proc fcQWidget_render42(self: pointer, painter: pointer, targetOffset: pointer, sourceRegion: pointer, renderFlags: cint): void {.importc: "QWidget_render42".}
proc fcQWidget_grab1(self: pointer, rectangle: pointer): pointer {.importc: "QWidget_grab1".}
proc fcQWidget_grabGesture2(self: pointer, typeVal: cint, flags: cint): void {.importc: "QWidget_grabGesture2".}
proc fcQWidget_grabShortcut2(self: pointer, key: pointer, context: cint): cint {.importc: "QWidget_grabShortcut2".}
proc fcQWidget_setShortcutEnabled2(self: pointer, id: cint, enable: bool): void {.importc: "QWidget_setShortcutEnabled2".}
proc fcQWidget_setShortcutAutoRepeat2(self: pointer, id: cint, enable: bool): void {.importc: "QWidget_setShortcutAutoRepeat2".}
proc fcQWidget_setWindowFlag2(self: pointer, param1: cint, on: bool): void {.importc: "QWidget_setWindowFlag2".}
proc fcQWidget_setAttribute2(self: pointer, param1: cint, on: bool): void {.importc: "QWidget_setAttribute2".}
proc fcQWidget_createWindowContainer2(window: pointer, parent: pointer): pointer {.importc: "QWidget_createWindowContainer2".}
proc fcQWidget_createWindowContainer3(window: pointer, parent: pointer, flags: cint): pointer {.importc: "QWidget_createWindowContainer3".}
proc fQWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QWidget_virtualbase_devType".}
proc fcQWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QWidget_override_virtual_devType".}
proc fQWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QWidget_virtualbase_setVisible".}
proc fcQWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QWidget_override_virtual_setVisible".}
proc fQWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QWidget_virtualbase_sizeHint".}
proc fcQWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QWidget_override_virtual_sizeHint".}
proc fQWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QWidget_virtualbase_minimumSizeHint".}
proc fcQWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QWidget_override_virtual_minimumSizeHint".}
proc fQWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QWidget_virtualbase_heightForWidth".}
proc fcQWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QWidget_override_virtual_heightForWidth".}
proc fQWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QWidget_virtualbase_hasHeightForWidth".}
proc fcQWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QWidget_override_virtual_hasHeightForWidth".}
proc fQWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QWidget_virtualbase_paintEngine".}
proc fcQWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QWidget_override_virtual_paintEngine".}
proc fQWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWidget_virtualbase_event".}
proc fcQWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QWidget_override_virtual_event".}
proc fQWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_mousePressEvent".}
proc fcQWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_mousePressEvent".}
proc fQWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_mouseReleaseEvent".}
proc fcQWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_mouseReleaseEvent".}
proc fQWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_mouseDoubleClickEvent".}
proc fQWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_mouseMoveEvent".}
proc fcQWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_mouseMoveEvent".}
proc fQWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_wheelEvent".}
proc fcQWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_wheelEvent".}
proc fQWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_keyPressEvent".}
proc fcQWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_keyPressEvent".}
proc fQWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_keyReleaseEvent".}
proc fcQWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_keyReleaseEvent".}
proc fQWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_focusInEvent".}
proc fcQWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_focusInEvent".}
proc fQWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_focusOutEvent".}
proc fcQWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_focusOutEvent".}
proc fQWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_enterEvent".}
proc fcQWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_enterEvent".}
proc fQWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_leaveEvent".}
proc fcQWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_leaveEvent".}
proc fQWidget_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_paintEvent".}
proc fcQWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_paintEvent".}
proc fQWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_moveEvent".}
proc fcQWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_moveEvent".}
proc fQWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_resizeEvent".}
proc fcQWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_resizeEvent".}
proc fQWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_closeEvent".}
proc fcQWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_closeEvent".}
proc fQWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_contextMenuEvent".}
proc fcQWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_contextMenuEvent".}
proc fQWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_tabletEvent".}
proc fcQWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_tabletEvent".}
proc fQWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_actionEvent".}
proc fcQWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_actionEvent".}
proc fQWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_dragEnterEvent".}
proc fcQWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_dragEnterEvent".}
proc fQWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_dragMoveEvent".}
proc fcQWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_dragMoveEvent".}
proc fQWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_dragLeaveEvent".}
proc fcQWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_dragLeaveEvent".}
proc fQWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_dropEvent".}
proc fcQWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_dropEvent".}
proc fQWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_showEvent".}
proc fcQWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_showEvent".}
proc fQWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_hideEvent".}
proc fcQWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_hideEvent".}
proc fQWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QWidget_virtualbase_nativeEvent".}
proc fcQWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_nativeEvent".}
proc fQWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QWidget_virtualbase_changeEvent".}
proc fcQWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_changeEvent".}
proc fQWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QWidget_virtualbase_metric".}
proc fcQWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QWidget_override_virtual_metric".}
proc fQWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QWidget_virtualbase_initPainter".}
proc fcQWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QWidget_override_virtual_initPainter".}
proc fQWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QWidget_virtualbase_redirected".}
proc fcQWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QWidget_override_virtual_redirected".}
proc fQWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QWidget_virtualbase_sharedPainter".}
proc fcQWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QWidget_override_virtual_sharedPainter".}
proc fQWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QWidget_virtualbase_inputMethodEvent".}
proc fcQWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_inputMethodEvent".}
proc fQWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QWidget_virtualbase_inputMethodQuery".}
proc fcQWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QWidget_override_virtual_inputMethodQuery".}
proc fQWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QWidget_virtualbase_focusNextPrevChild".}
proc fcQWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QWidget_override_virtual_focusNextPrevChild".}
proc fQWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWidget_virtualbase_eventFilter".}
proc fcQWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWidget_override_virtual_eventFilter".}
proc fQWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_timerEvent".}
proc fcQWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_timerEvent".}
proc fQWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_childEvent".}
proc fcQWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_childEvent".}
proc fQWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWidget_virtualbase_customEvent".}
proc fcQWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWidget_override_virtual_customEvent".}
proc fQWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWidget_virtualbase_connectNotify".}
proc fcQWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWidget_override_virtual_connectNotify".}
proc fQWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWidget_virtualbase_disconnectNotify".}
proc fcQWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWidget_override_virtual_disconnectNotify".}
proc fcQWidget_delete(self: pointer) {.importc: "QWidget_delete".}


func init*(T: type gen_qwidget_types.QWidgetData, h: ptr cQWidgetData): gen_qwidget_types.QWidgetData =
  T(h: h)
proc create*(T: type gen_qwidget_types.QWidgetData, param1: gen_qwidget_types.QWidgetData): gen_qwidget_types.QWidgetData =
  gen_qwidget_types.QWidgetData.init(fcQWidgetData_new(param1.h))

proc operatorAssign*(self: gen_qwidget_types.QWidgetData, param1: gen_qwidget_types.QWidgetData): void =
  fcQWidgetData_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qwidget_types.QWidgetData) =
  fcQWidgetData_delete(self.h)

func init*(T: type gen_qwidget_types.QWidget, h: ptr cQWidget): gen_qwidget_types.QWidget =
  T(h: h)
proc create*(T: type gen_qwidget_types.QWidget, parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget.init(fcQWidget_new(parent.h))

proc create*(T: type gen_qwidget_types.QWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget.init(fcQWidget_new2())

proc create*(T: type gen_qwidget_types.QWidget, parent: gen_qwidget_types.QWidget, f: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget.init(fcQWidget_new3(parent.h, cint(f)))

proc metaObject*(self: gen_qwidget_types.QWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWidget_metaObject(self.h))

proc metacast*(self: gen_qwidget_types.QWidget, param1: cstring): pointer =
  fcQWidget_metacast(self.h, param1)

proc tr*(_: type gen_qwidget_types.QWidget, s: cstring): string =
  let v_ms = fcQWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwidget_types.QWidget, s: cstring): string =
  let v_ms = fcQWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc devType*(self: gen_qwidget_types.QWidget, ): cint =
  fcQWidget_devType(self.h)

proc winId*(self: gen_qwidget_types.QWidget, ): uint =
  fcQWidget_winId(self.h)

proc createWinId*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_createWinId(self.h)

proc internalWinId*(self: gen_qwidget_types.QWidget, ): uint =
  fcQWidget_internalWinId(self.h)

proc effectiveWinId*(self: gen_qwidget_types.QWidget, ): uint =
  fcQWidget_effectiveWinId(self.h)

proc style*(self: gen_qwidget_types.QWidget, ): gen_qstyle_types.QStyle =
  gen_qstyle_types.QStyle(h: fcQWidget_style(self.h))

proc setStyle*(self: gen_qwidget_types.QWidget, style: gen_qstyle_types.QStyle): void =
  fcQWidget_setStyle(self.h, style.h)

proc isTopLevel*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_isTopLevel(self.h)

proc isWindow*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_isWindow(self.h)

proc isModal*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_isModal(self.h)

proc windowModality*(self: gen_qwidget_types.QWidget, ): cint =
  cint(fcQWidget_windowModality(self.h))

proc setWindowModality*(self: gen_qwidget_types.QWidget, windowModality: cint): void =
  fcQWidget_setWindowModality(self.h, cint(windowModality))

proc isEnabled*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_isEnabled(self.h)

proc isEnabledTo*(self: gen_qwidget_types.QWidget, param1: gen_qwidget_types.QWidget): bool =
  fcQWidget_isEnabledTo(self.h, param1.h)

proc isEnabledToTLW*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_isEnabledToTLW(self.h)

proc setEnabled*(self: gen_qwidget_types.QWidget, enabled: bool): void =
  fcQWidget_setEnabled(self.h, enabled)

proc setDisabled*(self: gen_qwidget_types.QWidget, disabled: bool): void =
  fcQWidget_setDisabled(self.h, disabled)

proc setWindowModified*(self: gen_qwidget_types.QWidget, windowModified: bool): void =
  fcQWidget_setWindowModified(self.h, windowModified)

proc frameGeometry*(self: gen_qwidget_types.QWidget, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidget_frameGeometry(self.h))

proc geometry*(self: gen_qwidget_types.QWidget, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidget_geometry(self.h))

proc normalGeometry*(self: gen_qwidget_types.QWidget, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidget_normalGeometry(self.h))

proc x*(self: gen_qwidget_types.QWidget, ): cint =
  fcQWidget_x(self.h)

proc y*(self: gen_qwidget_types.QWidget, ): cint =
  fcQWidget_y(self.h)

proc pos*(self: gen_qwidget_types.QWidget, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWidget_pos(self.h))

proc frameSize*(self: gen_qwidget_types.QWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_frameSize(self.h))

proc size*(self: gen_qwidget_types.QWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_size(self.h))

proc width*(self: gen_qwidget_types.QWidget, ): cint =
  fcQWidget_width(self.h)

proc height*(self: gen_qwidget_types.QWidget, ): cint =
  fcQWidget_height(self.h)

proc rect*(self: gen_qwidget_types.QWidget, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidget_rect(self.h))

proc childrenRect*(self: gen_qwidget_types.QWidget, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidget_childrenRect(self.h))

proc childrenRegion*(self: gen_qwidget_types.QWidget, ): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQWidget_childrenRegion(self.h))

proc minimumSize*(self: gen_qwidget_types.QWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_minimumSize(self.h))

proc maximumSize*(self: gen_qwidget_types.QWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_maximumSize(self.h))

proc minimumWidth*(self: gen_qwidget_types.QWidget, ): cint =
  fcQWidget_minimumWidth(self.h)

proc minimumHeight*(self: gen_qwidget_types.QWidget, ): cint =
  fcQWidget_minimumHeight(self.h)

proc maximumWidth*(self: gen_qwidget_types.QWidget, ): cint =
  fcQWidget_maximumWidth(self.h)

proc maximumHeight*(self: gen_qwidget_types.QWidget, ): cint =
  fcQWidget_maximumHeight(self.h)

proc setMinimumSize*(self: gen_qwidget_types.QWidget, minimumSize: gen_qsize_types.QSize): void =
  fcQWidget_setMinimumSize(self.h, minimumSize.h)

proc setMinimumSize*(self: gen_qwidget_types.QWidget, minw: cint, minh: cint): void =
  fcQWidget_setMinimumSize2(self.h, minw, minh)

proc setMaximumSize*(self: gen_qwidget_types.QWidget, maximumSize: gen_qsize_types.QSize): void =
  fcQWidget_setMaximumSize(self.h, maximumSize.h)

proc setMaximumSize*(self: gen_qwidget_types.QWidget, maxw: cint, maxh: cint): void =
  fcQWidget_setMaximumSize2(self.h, maxw, maxh)

proc setMinimumWidth*(self: gen_qwidget_types.QWidget, minw: cint): void =
  fcQWidget_setMinimumWidth(self.h, minw)

proc setMinimumHeight*(self: gen_qwidget_types.QWidget, minh: cint): void =
  fcQWidget_setMinimumHeight(self.h, minh)

proc setMaximumWidth*(self: gen_qwidget_types.QWidget, maxw: cint): void =
  fcQWidget_setMaximumWidth(self.h, maxw)

proc setMaximumHeight*(self: gen_qwidget_types.QWidget, maxh: cint): void =
  fcQWidget_setMaximumHeight(self.h, maxh)

proc sizeIncrement*(self: gen_qwidget_types.QWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_sizeIncrement(self.h))

proc setSizeIncrement*(self: gen_qwidget_types.QWidget, sizeIncrement: gen_qsize_types.QSize): void =
  fcQWidget_setSizeIncrement(self.h, sizeIncrement.h)

proc setSizeIncrement*(self: gen_qwidget_types.QWidget, w: cint, h: cint): void =
  fcQWidget_setSizeIncrement2(self.h, w, h)

proc baseSize*(self: gen_qwidget_types.QWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_baseSize(self.h))

proc setBaseSize*(self: gen_qwidget_types.QWidget, baseSize: gen_qsize_types.QSize): void =
  fcQWidget_setBaseSize(self.h, baseSize.h)

proc setBaseSize*(self: gen_qwidget_types.QWidget, basew: cint, baseh: cint): void =
  fcQWidget_setBaseSize2(self.h, basew, baseh)

proc setFixedSize*(self: gen_qwidget_types.QWidget, fixedSize: gen_qsize_types.QSize): void =
  fcQWidget_setFixedSize(self.h, fixedSize.h)

proc setFixedSize*(self: gen_qwidget_types.QWidget, w: cint, h: cint): void =
  fcQWidget_setFixedSize2(self.h, w, h)

proc setFixedWidth*(self: gen_qwidget_types.QWidget, w: cint): void =
  fcQWidget_setFixedWidth(self.h, w)

proc setFixedHeight*(self: gen_qwidget_types.QWidget, h: cint): void =
  fcQWidget_setFixedHeight(self.h, h)

proc mapToGlobal*(self: gen_qwidget_types.QWidget, param1: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWidget_mapToGlobal(self.h, param1.h))

proc mapFromGlobal*(self: gen_qwidget_types.QWidget, param1: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWidget_mapFromGlobal(self.h, param1.h))

proc mapToParent*(self: gen_qwidget_types.QWidget, param1: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWidget_mapToParent(self.h, param1.h))

proc mapFromParent*(self: gen_qwidget_types.QWidget, param1: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWidget_mapFromParent(self.h, param1.h))

proc mapTo*(self: gen_qwidget_types.QWidget, param1: gen_qwidget_types.QWidget, param2: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWidget_mapTo(self.h, param1.h, param2.h))

proc mapFrom*(self: gen_qwidget_types.QWidget, param1: gen_qwidget_types.QWidget, param2: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWidget_mapFrom(self.h, param1.h, param2.h))

proc window*(self: gen_qwidget_types.QWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_window(self.h))

proc nativeParentWidget*(self: gen_qwidget_types.QWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_nativeParentWidget(self.h))

proc topLevelWidget*(self: gen_qwidget_types.QWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_topLevelWidget(self.h))

proc palette*(self: gen_qwidget_types.QWidget, ): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQWidget_palette(self.h))

proc setPalette*(self: gen_qwidget_types.QWidget, palette: gen_qpalette_types.QPalette): void =
  fcQWidget_setPalette(self.h, palette.h)

proc setBackgroundRole*(self: gen_qwidget_types.QWidget, backgroundRole: cint): void =
  fcQWidget_setBackgroundRole(self.h, cint(backgroundRole))

proc backgroundRole*(self: gen_qwidget_types.QWidget, ): cint =
  cint(fcQWidget_backgroundRole(self.h))

proc setForegroundRole*(self: gen_qwidget_types.QWidget, foregroundRole: cint): void =
  fcQWidget_setForegroundRole(self.h, cint(foregroundRole))

proc foregroundRole*(self: gen_qwidget_types.QWidget, ): cint =
  cint(fcQWidget_foregroundRole(self.h))

proc font*(self: gen_qwidget_types.QWidget, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQWidget_font(self.h))

proc setFont*(self: gen_qwidget_types.QWidget, font: gen_qfont_types.QFont): void =
  fcQWidget_setFont(self.h, font.h)

proc fontMetrics*(self: gen_qwidget_types.QWidget, ): gen_qfontmetrics_types.QFontMetrics =
  gen_qfontmetrics_types.QFontMetrics(h: fcQWidget_fontMetrics(self.h))

proc fontInfo*(self: gen_qwidget_types.QWidget, ): gen_qfontinfo_types.QFontInfo =
  gen_qfontinfo_types.QFontInfo(h: fcQWidget_fontInfo(self.h))

proc cursor*(self: gen_qwidget_types.QWidget, ): gen_qcursor_types.QCursor =
  gen_qcursor_types.QCursor(h: fcQWidget_cursor(self.h))

proc setCursor*(self: gen_qwidget_types.QWidget, cursor: gen_qcursor_types.QCursor): void =
  fcQWidget_setCursor(self.h, cursor.h)

proc unsetCursor*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_unsetCursor(self.h)

proc setMouseTracking*(self: gen_qwidget_types.QWidget, enable: bool): void =
  fcQWidget_setMouseTracking(self.h, enable)

proc hasMouseTracking*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_hasMouseTracking(self.h)

proc underMouse*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_underMouse(self.h)

proc setTabletTracking*(self: gen_qwidget_types.QWidget, enable: bool): void =
  fcQWidget_setTabletTracking(self.h, enable)

proc hasTabletTracking*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_hasTabletTracking(self.h)

proc setMask*(self: gen_qwidget_types.QWidget, mask: gen_qbitmap_types.QBitmap): void =
  fcQWidget_setMask(self.h, mask.h)

proc setMask*(self: gen_qwidget_types.QWidget, mask: gen_qregion_types.QRegion): void =
  fcQWidget_setMaskWithMask(self.h, mask.h)

proc mask*(self: gen_qwidget_types.QWidget, ): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQWidget_mask(self.h))

proc clearMask*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_clearMask(self.h)

proc render*(self: gen_qwidget_types.QWidget, target: gen_qpaintdevice_types.QPaintDevice): void =
  fcQWidget_render(self.h, target.h)

proc render*(self: gen_qwidget_types.QWidget, painter: gen_qpainter_types.QPainter): void =
  fcQWidget_renderWithPainter(self.h, painter.h)

proc grab*(self: gen_qwidget_types.QWidget, ): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQWidget_grab(self.h))

proc graphicsEffect*(self: gen_qwidget_types.QWidget, ): gen_qgraphicseffect_types.QGraphicsEffect =
  gen_qgraphicseffect_types.QGraphicsEffect(h: fcQWidget_graphicsEffect(self.h))

proc setGraphicsEffect*(self: gen_qwidget_types.QWidget, effect: gen_qgraphicseffect_types.QGraphicsEffect): void =
  fcQWidget_setGraphicsEffect(self.h, effect.h)

proc grabGesture*(self: gen_qwidget_types.QWidget, typeVal: cint): void =
  fcQWidget_grabGesture(self.h, cint(typeVal))

proc ungrabGesture*(self: gen_qwidget_types.QWidget, typeVal: cint): void =
  fcQWidget_ungrabGesture(self.h, cint(typeVal))

proc setWindowTitle*(self: gen_qwidget_types.QWidget, windowTitle: string): void =
  fcQWidget_setWindowTitle(self.h, struct_miqt_string(data: windowTitle, len: csize_t(len(windowTitle))))

proc setStyleSheet*(self: gen_qwidget_types.QWidget, styleSheet: string): void =
  fcQWidget_setStyleSheet(self.h, struct_miqt_string(data: styleSheet, len: csize_t(len(styleSheet))))

proc styleSheet*(self: gen_qwidget_types.QWidget, ): string =
  let v_ms = fcQWidget_styleSheet(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc windowTitle*(self: gen_qwidget_types.QWidget, ): string =
  let v_ms = fcQWidget_windowTitle(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWindowIcon*(self: gen_qwidget_types.QWidget, icon: gen_qicon_types.QIcon): void =
  fcQWidget_setWindowIcon(self.h, icon.h)

proc windowIcon*(self: gen_qwidget_types.QWidget, ): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQWidget_windowIcon(self.h))

proc setWindowIconText*(self: gen_qwidget_types.QWidget, windowIconText: string): void =
  fcQWidget_setWindowIconText(self.h, struct_miqt_string(data: windowIconText, len: csize_t(len(windowIconText))))

proc windowIconText*(self: gen_qwidget_types.QWidget, ): string =
  let v_ms = fcQWidget_windowIconText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWindowRole*(self: gen_qwidget_types.QWidget, windowRole: string): void =
  fcQWidget_setWindowRole(self.h, struct_miqt_string(data: windowRole, len: csize_t(len(windowRole))))

proc windowRole*(self: gen_qwidget_types.QWidget, ): string =
  let v_ms = fcQWidget_windowRole(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWindowFilePath*(self: gen_qwidget_types.QWidget, filePath: string): void =
  fcQWidget_setWindowFilePath(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))))

proc windowFilePath*(self: gen_qwidget_types.QWidget, ): string =
  let v_ms = fcQWidget_windowFilePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWindowOpacity*(self: gen_qwidget_types.QWidget, level: float64): void =
  fcQWidget_setWindowOpacity(self.h, level)

proc windowOpacity*(self: gen_qwidget_types.QWidget, ): float64 =
  fcQWidget_windowOpacity(self.h)

proc isWindowModified*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_isWindowModified(self.h)

proc setToolTip*(self: gen_qwidget_types.QWidget, toolTip: string): void =
  fcQWidget_setToolTip(self.h, struct_miqt_string(data: toolTip, len: csize_t(len(toolTip))))

proc toolTip*(self: gen_qwidget_types.QWidget, ): string =
  let v_ms = fcQWidget_toolTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setToolTipDuration*(self: gen_qwidget_types.QWidget, msec: cint): void =
  fcQWidget_setToolTipDuration(self.h, msec)

proc toolTipDuration*(self: gen_qwidget_types.QWidget, ): cint =
  fcQWidget_toolTipDuration(self.h)

proc setStatusTip*(self: gen_qwidget_types.QWidget, statusTip: string): void =
  fcQWidget_setStatusTip(self.h, struct_miqt_string(data: statusTip, len: csize_t(len(statusTip))))

proc statusTip*(self: gen_qwidget_types.QWidget, ): string =
  let v_ms = fcQWidget_statusTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: gen_qwidget_types.QWidget, whatsThis: string): void =
  fcQWidget_setWhatsThis(self.h, struct_miqt_string(data: whatsThis, len: csize_t(len(whatsThis))))

proc whatsThis*(self: gen_qwidget_types.QWidget, ): string =
  let v_ms = fcQWidget_whatsThis(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc accessibleName*(self: gen_qwidget_types.QWidget, ): string =
  let v_ms = fcQWidget_accessibleName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAccessibleName*(self: gen_qwidget_types.QWidget, name: string): void =
  fcQWidget_setAccessibleName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc accessibleDescription*(self: gen_qwidget_types.QWidget, ): string =
  let v_ms = fcQWidget_accessibleDescription(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAccessibleDescription*(self: gen_qwidget_types.QWidget, description: string): void =
  fcQWidget_setAccessibleDescription(self.h, struct_miqt_string(data: description, len: csize_t(len(description))))

proc setLayoutDirection*(self: gen_qwidget_types.QWidget, direction: cint): void =
  fcQWidget_setLayoutDirection(self.h, cint(direction))

proc layoutDirection*(self: gen_qwidget_types.QWidget, ): cint =
  cint(fcQWidget_layoutDirection(self.h))

proc unsetLayoutDirection*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_unsetLayoutDirection(self.h)

proc setLocale*(self: gen_qwidget_types.QWidget, locale: gen_qlocale_types.QLocale): void =
  fcQWidget_setLocale(self.h, locale.h)

proc locale*(self: gen_qwidget_types.QWidget, ): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQWidget_locale(self.h))

proc unsetLocale*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_unsetLocale(self.h)

proc isRightToLeft*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_isRightToLeft(self.h)

proc isLeftToRight*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_isLeftToRight(self.h)

proc setFocus*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_setFocus(self.h)

proc isActiveWindow*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_isActiveWindow(self.h)

proc activateWindow*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_activateWindow(self.h)

proc clearFocus*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_clearFocus(self.h)

proc setFocus*(self: gen_qwidget_types.QWidget, reason: cint): void =
  fcQWidget_setFocusWithReason(self.h, cint(reason))

proc focusPolicy*(self: gen_qwidget_types.QWidget, ): cint =
  cint(fcQWidget_focusPolicy(self.h))

proc setFocusPolicy*(self: gen_qwidget_types.QWidget, policy: cint): void =
  fcQWidget_setFocusPolicy(self.h, cint(policy))

proc hasFocus*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_hasFocus(self.h)

proc setTabOrder*(_: type gen_qwidget_types.QWidget, param1: gen_qwidget_types.QWidget, param2: gen_qwidget_types.QWidget): void =
  fcQWidget_setTabOrder(param1.h, param2.h)

proc setFocusProxy*(self: gen_qwidget_types.QWidget, focusProxy: gen_qwidget_types.QWidget): void =
  fcQWidget_setFocusProxy(self.h, focusProxy.h)

proc focusProxy*(self: gen_qwidget_types.QWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_focusProxy(self.h))

proc contextMenuPolicy*(self: gen_qwidget_types.QWidget, ): cint =
  cint(fcQWidget_contextMenuPolicy(self.h))

proc setContextMenuPolicy*(self: gen_qwidget_types.QWidget, policy: cint): void =
  fcQWidget_setContextMenuPolicy(self.h, cint(policy))

proc grabMouse*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_grabMouse(self.h)

proc grabMouse*(self: gen_qwidget_types.QWidget, param1: gen_qcursor_types.QCursor): void =
  fcQWidget_grabMouseWithQCursor(self.h, param1.h)

proc releaseMouse*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_releaseMouse(self.h)

proc grabKeyboard*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_grabKeyboard(self.h)

proc releaseKeyboard*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_releaseKeyboard(self.h)

proc grabShortcut*(self: gen_qwidget_types.QWidget, key: gen_qkeysequence_types.QKeySequence): cint =
  fcQWidget_grabShortcut(self.h, key.h)

proc releaseShortcut*(self: gen_qwidget_types.QWidget, id: cint): void =
  fcQWidget_releaseShortcut(self.h, id)

proc setShortcutEnabled*(self: gen_qwidget_types.QWidget, id: cint): void =
  fcQWidget_setShortcutEnabled(self.h, id)

proc setShortcutAutoRepeat*(self: gen_qwidget_types.QWidget, id: cint): void =
  fcQWidget_setShortcutAutoRepeat(self.h, id)

proc mouseGrabber*(_: type gen_qwidget_types.QWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_mouseGrabber())

proc keyboardGrabber*(_: type gen_qwidget_types.QWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_keyboardGrabber())

proc updatesEnabled*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_updatesEnabled(self.h)

proc setUpdatesEnabled*(self: gen_qwidget_types.QWidget, enable: bool): void =
  fcQWidget_setUpdatesEnabled(self.h, enable)

proc graphicsProxyWidget*(self: gen_qwidget_types.QWidget, ): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget(h: fcQWidget_graphicsProxyWidget(self.h))

proc update*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_update(self.h)

proc repaint*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_repaint(self.h)

proc update*(self: gen_qwidget_types.QWidget, x: cint, y: cint, w: cint, h: cint): void =
  fcQWidget_update2(self.h, x, y, w, h)

proc update*(self: gen_qwidget_types.QWidget, param1: gen_qrect_types.QRect): void =
  fcQWidget_updateWithQRect(self.h, param1.h)

proc update*(self: gen_qwidget_types.QWidget, param1: gen_qregion_types.QRegion): void =
  fcQWidget_updateWithQRegion(self.h, param1.h)

proc repaint*(self: gen_qwidget_types.QWidget, x: cint, y: cint, w: cint, h: cint): void =
  fcQWidget_repaint2(self.h, x, y, w, h)

proc repaint*(self: gen_qwidget_types.QWidget, param1: gen_qrect_types.QRect): void =
  fcQWidget_repaintWithQRect(self.h, param1.h)

proc repaint*(self: gen_qwidget_types.QWidget, param1: gen_qregion_types.QRegion): void =
  fcQWidget_repaintWithQRegion(self.h, param1.h)

proc setVisible*(self: gen_qwidget_types.QWidget, visible: bool): void =
  fcQWidget_setVisible(self.h, visible)

proc setHidden*(self: gen_qwidget_types.QWidget, hidden: bool): void =
  fcQWidget_setHidden(self.h, hidden)

proc show*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_show(self.h)

proc hide*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_hide(self.h)

proc showMinimized*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_showMinimized(self.h)

proc showMaximized*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_showMaximized(self.h)

proc showFullScreen*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_showFullScreen(self.h)

proc showNormal*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_showNormal(self.h)

proc close*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_close(self.h)

proc raiseX*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_raiseX(self.h)

proc lower*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_lower(self.h)

proc stackUnder*(self: gen_qwidget_types.QWidget, param1: gen_qwidget_types.QWidget): void =
  fcQWidget_stackUnder(self.h, param1.h)

proc move*(self: gen_qwidget_types.QWidget, x: cint, y: cint): void =
  fcQWidget_move(self.h, x, y)

proc move*(self: gen_qwidget_types.QWidget, param1: gen_qpoint_types.QPoint): void =
  fcQWidget_moveWithQPoint(self.h, param1.h)

proc resize*(self: gen_qwidget_types.QWidget, w: cint, h: cint): void =
  fcQWidget_resize(self.h, w, h)

proc resize*(self: gen_qwidget_types.QWidget, param1: gen_qsize_types.QSize): void =
  fcQWidget_resizeWithQSize(self.h, param1.h)

proc setGeometry*(self: gen_qwidget_types.QWidget, x: cint, y: cint, w: cint, h: cint): void =
  fcQWidget_setGeometry(self.h, x, y, w, h)

proc setGeometry*(self: gen_qwidget_types.QWidget, geometry: gen_qrect_types.QRect): void =
  fcQWidget_setGeometryWithGeometry(self.h, geometry.h)

proc saveGeometry*(self: gen_qwidget_types.QWidget, ): seq[byte] =
  var v_bytearray = fcQWidget_saveGeometry(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc restoreGeometry*(self: gen_qwidget_types.QWidget, geometry: seq[byte]): bool =
  fcQWidget_restoreGeometry(self.h, struct_miqt_string(data: cast[cstring](if len(geometry) == 0: nil else: unsafeAddr geometry[0]), len: csize_t(len(geometry))))

proc adjustSize*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_adjustSize(self.h)

proc isVisible*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_isVisible(self.h)

proc isVisibleTo*(self: gen_qwidget_types.QWidget, param1: gen_qwidget_types.QWidget): bool =
  fcQWidget_isVisibleTo(self.h, param1.h)

proc isHidden*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_isHidden(self.h)

proc isMinimized*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_isMinimized(self.h)

proc isMaximized*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_isMaximized(self.h)

proc isFullScreen*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_isFullScreen(self.h)

proc windowState*(self: gen_qwidget_types.QWidget, ): cint =
  cint(fcQWidget_windowState(self.h))

proc setWindowState*(self: gen_qwidget_types.QWidget, state: cint): void =
  fcQWidget_setWindowState(self.h, cint(state))

proc overrideWindowState*(self: gen_qwidget_types.QWidget, state: cint): void =
  fcQWidget_overrideWindowState(self.h, cint(state))

proc sizeHint*(self: gen_qwidget_types.QWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qwidget_types.QWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_minimumSizeHint(self.h))

proc sizePolicy*(self: gen_qwidget_types.QWidget, ): gen_qsizepolicy_types.QSizePolicy =
  gen_qsizepolicy_types.QSizePolicy(h: fcQWidget_sizePolicy(self.h))

proc setSizePolicy*(self: gen_qwidget_types.QWidget, sizePolicy: gen_qsizepolicy_types.QSizePolicy): void =
  fcQWidget_setSizePolicy(self.h, sizePolicy.h)

proc setSizePolicy*(self: gen_qwidget_types.QWidget, horizontal: cint, vertical: cint): void =
  fcQWidget_setSizePolicy2(self.h, cint(horizontal), cint(vertical))

proc heightForWidth*(self: gen_qwidget_types.QWidget, param1: cint): cint =
  fcQWidget_heightForWidth(self.h, param1)

proc hasHeightForWidth*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_hasHeightForWidth(self.h)

proc visibleRegion*(self: gen_qwidget_types.QWidget, ): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQWidget_visibleRegion(self.h))

proc setContentsMargins*(self: gen_qwidget_types.QWidget, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQWidget_setContentsMargins(self.h, left, top, right, bottom)

proc setContentsMargins*(self: gen_qwidget_types.QWidget, margins: gen_qmargins_types.QMargins): void =
  fcQWidget_setContentsMarginsWithMargins(self.h, margins.h)

proc getContentsMargins*(self: gen_qwidget_types.QWidget, left: ptr cint, top: ptr cint, right: ptr cint, bottom: ptr cint): void =
  fcQWidget_getContentsMargins(self.h, left, top, right, bottom)

proc contentsMargins*(self: gen_qwidget_types.QWidget, ): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQWidget_contentsMargins(self.h))

proc contentsRect*(self: gen_qwidget_types.QWidget, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidget_contentsRect(self.h))

proc layout*(self: gen_qwidget_types.QWidget, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQWidget_layout(self.h))

proc setLayout*(self: gen_qwidget_types.QWidget, layout: gen_qlayout_types.QLayout): void =
  fcQWidget_setLayout(self.h, layout.h)

proc updateGeometry*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_updateGeometry(self.h)

proc setParent*(self: gen_qwidget_types.QWidget, parent: gen_qwidget_types.QWidget): void =
  fcQWidget_setParent(self.h, parent.h)

proc setParent*(self: gen_qwidget_types.QWidget, parent: gen_qwidget_types.QWidget, f: cint): void =
  fcQWidget_setParent2(self.h, parent.h, cint(f))

proc scroll*(self: gen_qwidget_types.QWidget, dx: cint, dy: cint): void =
  fcQWidget_scroll(self.h, dx, dy)

proc scroll*(self: gen_qwidget_types.QWidget, dx: cint, dy: cint, param3: gen_qrect_types.QRect): void =
  fcQWidget_scroll2(self.h, dx, dy, param3.h)

proc focusWidget*(self: gen_qwidget_types.QWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_focusWidget(self.h))

proc nextInFocusChain*(self: gen_qwidget_types.QWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_nextInFocusChain(self.h))

proc previousInFocusChain*(self: gen_qwidget_types.QWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_previousInFocusChain(self.h))

proc acceptDrops*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_acceptDrops(self.h)

proc setAcceptDrops*(self: gen_qwidget_types.QWidget, on: bool): void =
  fcQWidget_setAcceptDrops(self.h, on)

proc addAction*(self: gen_qwidget_types.QWidget, action: gen_qaction_types.QAction): void =
  fcQWidget_addAction(self.h, action.h)

proc addActions*(self: gen_qwidget_types.QWidget, actions: seq[gen_qaction_types.QAction]): void =
  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  fcQWidget_addActions(self.h, struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])))

proc insertActions*(self: gen_qwidget_types.QWidget, before: gen_qaction_types.QAction, actions: seq[gen_qaction_types.QAction]): void =
  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  fcQWidget_insertActions(self.h, before.h, struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])))

proc insertAction*(self: gen_qwidget_types.QWidget, before: gen_qaction_types.QAction, action: gen_qaction_types.QAction): void =
  fcQWidget_insertAction(self.h, before.h, action.h)

proc removeAction*(self: gen_qwidget_types.QWidget, action: gen_qaction_types.QAction): void =
  fcQWidget_removeAction(self.h, action.h)

proc actions*(self: gen_qwidget_types.QWidget, ): seq[gen_qaction_types.QAction] =
  var v_ma = fcQWidget_actions(self.h)
  var vx_ret = newSeq[gen_qaction_types.QAction](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaction_types.QAction(h: v_outCast[i])
  vx_ret

proc parentWidget*(self: gen_qwidget_types.QWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_parentWidget(self.h))

proc setWindowFlags*(self: gen_qwidget_types.QWidget, typeVal: cint): void =
  fcQWidget_setWindowFlags(self.h, cint(typeVal))

proc windowFlags*(self: gen_qwidget_types.QWidget, ): cint =
  cint(fcQWidget_windowFlags(self.h))

proc setWindowFlag*(self: gen_qwidget_types.QWidget, param1: cint): void =
  fcQWidget_setWindowFlag(self.h, cint(param1))

proc overrideWindowFlags*(self: gen_qwidget_types.QWidget, typeVal: cint): void =
  fcQWidget_overrideWindowFlags(self.h, cint(typeVal))

proc windowType*(self: gen_qwidget_types.QWidget, ): cint =
  cint(fcQWidget_windowType(self.h))

proc find*(_: type gen_qwidget_types.QWidget, param1: uint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_find(param1))

proc childAt*(self: gen_qwidget_types.QWidget, x: cint, y: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_childAt(self.h, x, y))

proc childAt*(self: gen_qwidget_types.QWidget, p: gen_qpoint_types.QPoint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_childAtWithQPoint(self.h, p.h))

proc setAttribute*(self: gen_qwidget_types.QWidget, param1: cint): void =
  fcQWidget_setAttribute(self.h, cint(param1))

proc testAttribute*(self: gen_qwidget_types.QWidget, param1: cint): bool =
  fcQWidget_testAttribute(self.h, cint(param1))

proc paintEngine*(self: gen_qwidget_types.QWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQWidget_paintEngine(self.h))

proc ensurePolished*(self: gen_qwidget_types.QWidget, ): void =
  fcQWidget_ensurePolished(self.h)

proc isAncestorOf*(self: gen_qwidget_types.QWidget, child: gen_qwidget_types.QWidget): bool =
  fcQWidget_isAncestorOf(self.h, child.h)

proc autoFillBackground*(self: gen_qwidget_types.QWidget, ): bool =
  fcQWidget_autoFillBackground(self.h)

proc setAutoFillBackground*(self: gen_qwidget_types.QWidget, enabled: bool): void =
  fcQWidget_setAutoFillBackground(self.h, enabled)

proc backingStore*(self: gen_qwidget_types.QWidget, ): gen_qbackingstore_types.QBackingStore =
  gen_qbackingstore_types.QBackingStore(h: fcQWidget_backingStore(self.h))

proc windowHandle*(self: gen_qwidget_types.QWidget, ): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQWidget_windowHandle(self.h))

proc screen*(self: gen_qwidget_types.QWidget, ): gen_qscreen_types.QScreen =
  gen_qscreen_types.QScreen(h: fcQWidget_screen(self.h))

proc createWindowContainer*(_: type gen_qwidget_types.QWidget, window: gen_qwindow_types.QWindow): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_createWindowContainer(window.h))

proc windowTitleChanged*(self: gen_qwidget_types.QWidget, title: string): void =
  fcQWidget_windowTitleChanged(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

type QWidgetwindowTitleChangedSlot* = proc(title: string)
proc miqt_exec_callback_QWidget_windowTitleChanged(slot: int, title: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QWidgetwindowTitleChangedSlot](cast[pointer](slot))
  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(toOpenArrayByte(vtitle_ms.data, 0, int(vtitle_ms.len)-1))
  c_free(vtitle_ms.data)
  let slotval1 = vtitlex_ret

  nimfunc[](slotval1)

proc onwindowTitleChanged*(self: gen_qwidget_types.QWidget, slot: QWidgetwindowTitleChangedSlot) =
  var tmp = new QWidgetwindowTitleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_connect_windowTitleChanged(self.h, cast[int](addr tmp[]))

proc windowIconChanged*(self: gen_qwidget_types.QWidget, icon: gen_qicon_types.QIcon): void =
  fcQWidget_windowIconChanged(self.h, icon.h)

type QWidgetwindowIconChangedSlot* = proc(icon: gen_qicon_types.QIcon)
proc miqt_exec_callback_QWidget_windowIconChanged(slot: int, icon: pointer) {.exportc.} =
  let nimfunc = cast[ptr QWidgetwindowIconChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qicon_types.QIcon(h: icon)

  nimfunc[](slotval1)

proc onwindowIconChanged*(self: gen_qwidget_types.QWidget, slot: QWidgetwindowIconChangedSlot) =
  var tmp = new QWidgetwindowIconChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_connect_windowIconChanged(self.h, cast[int](addr tmp[]))

proc windowIconTextChanged*(self: gen_qwidget_types.QWidget, iconText: string): void =
  fcQWidget_windowIconTextChanged(self.h, struct_miqt_string(data: iconText, len: csize_t(len(iconText))))

type QWidgetwindowIconTextChangedSlot* = proc(iconText: string)
proc miqt_exec_callback_QWidget_windowIconTextChanged(slot: int, iconText: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QWidgetwindowIconTextChangedSlot](cast[pointer](slot))
  let viconText_ms = iconText
  let viconTextx_ret = string.fromBytes(toOpenArrayByte(viconText_ms.data, 0, int(viconText_ms.len)-1))
  c_free(viconText_ms.data)
  let slotval1 = viconTextx_ret

  nimfunc[](slotval1)

proc onwindowIconTextChanged*(self: gen_qwidget_types.QWidget, slot: QWidgetwindowIconTextChangedSlot) =
  var tmp = new QWidgetwindowIconTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_connect_windowIconTextChanged(self.h, cast[int](addr tmp[]))

proc customContextMenuRequested*(self: gen_qwidget_types.QWidget, pos: gen_qpoint_types.QPoint): void =
  fcQWidget_customContextMenuRequested(self.h, pos.h)

type QWidgetcustomContextMenuRequestedSlot* = proc(pos: gen_qpoint_types.QPoint)
proc miqt_exec_callback_QWidget_customContextMenuRequested(slot: int, pos: pointer) {.exportc.} =
  let nimfunc = cast[ptr QWidgetcustomContextMenuRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: pos)

  nimfunc[](slotval1)

proc oncustomContextMenuRequested*(self: gen_qwidget_types.QWidget, slot: QWidgetcustomContextMenuRequestedSlot) =
  var tmp = new QWidgetcustomContextMenuRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_connect_customContextMenuRequested(self.h, cast[int](addr tmp[]))

proc inputMethodQuery*(self: gen_qwidget_types.QWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWidget_inputMethodQuery(self.h, cint(param1)))

proc inputMethodHints*(self: gen_qwidget_types.QWidget, ): cint =
  cint(fcQWidget_inputMethodHints(self.h))

proc setInputMethodHints*(self: gen_qwidget_types.QWidget, hints: cint): void =
  fcQWidget_setInputMethodHints(self.h, cint(hints))

proc tr*(_: type gen_qwidget_types.QWidget, s: cstring, c: cstring): string =
  let v_ms = fcQWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwidget_types.QWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwidget_types.QWidget, s: cstring, c: cstring): string =
  let v_ms = fcQWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwidget_types.QWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc render*(self: gen_qwidget_types.QWidget, target: gen_qpaintdevice_types.QPaintDevice, targetOffset: gen_qpoint_types.QPoint): void =
  fcQWidget_render2(self.h, target.h, targetOffset.h)

proc render*(self: gen_qwidget_types.QWidget, target: gen_qpaintdevice_types.QPaintDevice, targetOffset: gen_qpoint_types.QPoint, sourceRegion: gen_qregion_types.QRegion): void =
  fcQWidget_render3(self.h, target.h, targetOffset.h, sourceRegion.h)

proc render*(self: gen_qwidget_types.QWidget, target: gen_qpaintdevice_types.QPaintDevice, targetOffset: gen_qpoint_types.QPoint, sourceRegion: gen_qregion_types.QRegion, renderFlags: cint): void =
  fcQWidget_render4(self.h, target.h, targetOffset.h, sourceRegion.h, cint(renderFlags))

proc render*(self: gen_qwidget_types.QWidget, painter: gen_qpainter_types.QPainter, targetOffset: gen_qpoint_types.QPoint): void =
  fcQWidget_render22(self.h, painter.h, targetOffset.h)

proc render*(self: gen_qwidget_types.QWidget, painter: gen_qpainter_types.QPainter, targetOffset: gen_qpoint_types.QPoint, sourceRegion: gen_qregion_types.QRegion): void =
  fcQWidget_render32(self.h, painter.h, targetOffset.h, sourceRegion.h)

proc render*(self: gen_qwidget_types.QWidget, painter: gen_qpainter_types.QPainter, targetOffset: gen_qpoint_types.QPoint, sourceRegion: gen_qregion_types.QRegion, renderFlags: cint): void =
  fcQWidget_render42(self.h, painter.h, targetOffset.h, sourceRegion.h, cint(renderFlags))

proc grab*(self: gen_qwidget_types.QWidget, rectangle: gen_qrect_types.QRect): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQWidget_grab1(self.h, rectangle.h))

proc grabGesture*(self: gen_qwidget_types.QWidget, typeVal: cint, flags: cint): void =
  fcQWidget_grabGesture2(self.h, cint(typeVal), cint(flags))

proc grabShortcut*(self: gen_qwidget_types.QWidget, key: gen_qkeysequence_types.QKeySequence, context: cint): cint =
  fcQWidget_grabShortcut2(self.h, key.h, cint(context))

proc setShortcutEnabled*(self: gen_qwidget_types.QWidget, id: cint, enable: bool): void =
  fcQWidget_setShortcutEnabled2(self.h, id, enable)

proc setShortcutAutoRepeat*(self: gen_qwidget_types.QWidget, id: cint, enable: bool): void =
  fcQWidget_setShortcutAutoRepeat2(self.h, id, enable)

proc setWindowFlag*(self: gen_qwidget_types.QWidget, param1: cint, on: bool): void =
  fcQWidget_setWindowFlag2(self.h, cint(param1), on)

proc setAttribute*(self: gen_qwidget_types.QWidget, param1: cint, on: bool): void =
  fcQWidget_setAttribute2(self.h, cint(param1), on)

proc createWindowContainer*(_: type gen_qwidget_types.QWidget, window: gen_qwindow_types.QWindow, parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_createWindowContainer2(window.h, parent.h))

proc createWindowContainer*(_: type gen_qwidget_types.QWidget, window: gen_qwindow_types.QWindow, parent: gen_qwidget_types.QWidget, flags: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_createWindowContainer3(window.h, parent.h, cint(flags)))

proc QWidgetdevType*(self: gen_qwidget_types.QWidget, ): cint =
  fQWidget_virtualbase_devType(self.h)

type QWidgetdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qwidget_types.QWidget, slot: QWidgetdevTypeProc) =
  # TODO check subclass
  var tmp = new QWidgetdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_devType(self: ptr cQWidget, slot: int): cint {.exportc: "miqt_exec_callback_QWidget_devType ".} =
  var nimfunc = cast[ptr QWidgetdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWidgetsetVisible*(self: gen_qwidget_types.QWidget, visible: bool): void =
  fQWidget_virtualbase_setVisible(self.h, visible)

type QWidgetsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qwidget_types.QWidget, slot: QWidgetsetVisibleProc) =
  # TODO check subclass
  var tmp = new QWidgetsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_setVisible(self: ptr cQWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QWidget_setVisible ".} =
  var nimfunc = cast[ptr QWidgetsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QWidgetsizeHint*(self: gen_qwidget_types.QWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWidget_virtualbase_sizeHint(self.h))

type QWidgetsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qwidget_types.QWidget, slot: QWidgetsizeHintProc) =
  # TODO check subclass
  var tmp = new QWidgetsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_sizeHint(self: ptr cQWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QWidget_sizeHint ".} =
  var nimfunc = cast[ptr QWidgetsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWidgetminimumSizeHint*(self: gen_qwidget_types.QWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWidget_virtualbase_minimumSizeHint(self.h))

type QWidgetminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qwidget_types.QWidget, slot: QWidgetminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QWidgetminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_minimumSizeHint(self: ptr cQWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QWidget_minimumSizeHint ".} =
  var nimfunc = cast[ptr QWidgetminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWidgetheightForWidth*(self: gen_qwidget_types.QWidget, param1: cint): cint =
  fQWidget_virtualbase_heightForWidth(self.h, param1)

type QWidgetheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qwidget_types.QWidget, slot: QWidgetheightForWidthProc) =
  # TODO check subclass
  var tmp = new QWidgetheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_heightForWidth(self: ptr cQWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWidget_heightForWidth ".} =
  var nimfunc = cast[ptr QWidgetheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWidgethasHeightForWidth*(self: gen_qwidget_types.QWidget, ): bool =
  fQWidget_virtualbase_hasHeightForWidth(self.h)

type QWidgethasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qwidget_types.QWidget, slot: QWidgethasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QWidgethasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_hasHeightForWidth(self: ptr cQWidget, slot: int): bool {.exportc: "miqt_exec_callback_QWidget_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QWidgethasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWidgetpaintEngine*(self: gen_qwidget_types.QWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQWidget_virtualbase_paintEngine(self.h))

type QWidgetpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qwidget_types.QWidget, slot: QWidgetpaintEngineProc) =
  # TODO check subclass
  var tmp = new QWidgetpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_paintEngine(self: ptr cQWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QWidget_paintEngine ".} =
  var nimfunc = cast[ptr QWidgetpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWidgetevent*(self: gen_qwidget_types.QWidget, event: gen_qcoreevent_types.QEvent): bool =
  fQWidget_virtualbase_event(self.h, event.h)

type QWidgeteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qwidget_types.QWidget, slot: QWidgeteventProc) =
  # TODO check subclass
  var tmp = new QWidgeteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_event(self: ptr cQWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWidget_event ".} =
  var nimfunc = cast[ptr QWidgeteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWidgetmousePressEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QMouseEvent): void =
  fQWidget_virtualbase_mousePressEvent(self.h, event.h)

type QWidgetmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetmousePressEventProc) =
  # TODO check subclass
  var tmp = new QWidgetmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_mousePressEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_mousePressEvent ".} =
  var nimfunc = cast[ptr QWidgetmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetmouseReleaseEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QMouseEvent): void =
  fQWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QWidgetmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QWidgetmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_mouseReleaseEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QWidgetmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetmouseDoubleClickEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QMouseEvent): void =
  fQWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QWidgetmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QWidgetmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_mouseDoubleClickEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QWidgetmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetmouseMoveEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QMouseEvent): void =
  fQWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QWidgetmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QWidgetmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_mouseMoveEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QWidgetmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetwheelEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QWheelEvent): void =
  fQWidget_virtualbase_wheelEvent(self.h, event.h)

type QWidgetwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetwheelEventProc) =
  # TODO check subclass
  var tmp = new QWidgetwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_wheelEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_wheelEvent ".} =
  var nimfunc = cast[ptr QWidgetwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetkeyPressEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QKeyEvent): void =
  fQWidget_virtualbase_keyPressEvent(self.h, event.h)

type QWidgetkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QWidgetkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_keyPressEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_keyPressEvent ".} =
  var nimfunc = cast[ptr QWidgetkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetkeyReleaseEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QKeyEvent): void =
  fQWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QWidgetkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QWidgetkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_keyReleaseEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QWidgetkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetfocusInEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QFocusEvent): void =
  fQWidget_virtualbase_focusInEvent(self.h, event.h)

type QWidgetfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetfocusInEventProc) =
  # TODO check subclass
  var tmp = new QWidgetfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_focusInEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_focusInEvent ".} =
  var nimfunc = cast[ptr QWidgetfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetfocusOutEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QFocusEvent): void =
  fQWidget_virtualbase_focusOutEvent(self.h, event.h)

type QWidgetfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QWidgetfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_focusOutEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_focusOutEvent ".} =
  var nimfunc = cast[ptr QWidgetfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetenterEvent*(self: gen_qwidget_types.QWidget, event: gen_qcoreevent_types.QEvent): void =
  fQWidget_virtualbase_enterEvent(self.h, event.h)

type QWidgetenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetenterEventProc) =
  # TODO check subclass
  var tmp = new QWidgetenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_enterEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_enterEvent ".} =
  var nimfunc = cast[ptr QWidgetenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetleaveEvent*(self: gen_qwidget_types.QWidget, event: gen_qcoreevent_types.QEvent): void =
  fQWidget_virtualbase_leaveEvent(self.h, event.h)

type QWidgetleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetleaveEventProc) =
  # TODO check subclass
  var tmp = new QWidgetleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_leaveEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_leaveEvent ".} =
  var nimfunc = cast[ptr QWidgetleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetpaintEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QPaintEvent): void =
  fQWidget_virtualbase_paintEvent(self.h, event.h)

type QWidgetpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetpaintEventProc) =
  # TODO check subclass
  var tmp = new QWidgetpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_paintEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_paintEvent ".} =
  var nimfunc = cast[ptr QWidgetpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetmoveEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QMoveEvent): void =
  fQWidget_virtualbase_moveEvent(self.h, event.h)

type QWidgetmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetmoveEventProc) =
  # TODO check subclass
  var tmp = new QWidgetmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_moveEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_moveEvent ".} =
  var nimfunc = cast[ptr QWidgetmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetresizeEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QResizeEvent): void =
  fQWidget_virtualbase_resizeEvent(self.h, event.h)

type QWidgetresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetresizeEventProc) =
  # TODO check subclass
  var tmp = new QWidgetresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_resizeEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_resizeEvent ".} =
  var nimfunc = cast[ptr QWidgetresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetcloseEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QCloseEvent): void =
  fQWidget_virtualbase_closeEvent(self.h, event.h)

type QWidgetcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetcloseEventProc) =
  # TODO check subclass
  var tmp = new QWidgetcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_closeEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_closeEvent ".} =
  var nimfunc = cast[ptr QWidgetcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetcontextMenuEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fQWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QWidgetcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QWidgetcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_contextMenuEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_contextMenuEvent ".} =
  var nimfunc = cast[ptr QWidgetcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QWidgettabletEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QTabletEvent): void =
  fQWidget_virtualbase_tabletEvent(self.h, event.h)

type QWidgettabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qwidget_types.QWidget, slot: QWidgettabletEventProc) =
  # TODO check subclass
  var tmp = new QWidgettabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_tabletEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_tabletEvent ".} =
  var nimfunc = cast[ptr QWidgettabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetactionEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QActionEvent): void =
  fQWidget_virtualbase_actionEvent(self.h, event.h)

type QWidgetactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetactionEventProc) =
  # TODO check subclass
  var tmp = new QWidgetactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_actionEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_actionEvent ".} =
  var nimfunc = cast[ptr QWidgetactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetdragEnterEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fQWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QWidgetdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QWidgetdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_dragEnterEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_dragEnterEvent ".} =
  var nimfunc = cast[ptr QWidgetdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetdragMoveEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fQWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QWidgetdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QWidgetdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_dragMoveEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_dragMoveEvent ".} =
  var nimfunc = cast[ptr QWidgetdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetdragLeaveEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fQWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QWidgetdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QWidgetdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_dragLeaveEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QWidgetdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetdropEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QDropEvent): void =
  fQWidget_virtualbase_dropEvent(self.h, event.h)

type QWidgetdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetdropEventProc) =
  # TODO check subclass
  var tmp = new QWidgetdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_dropEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_dropEvent ".} =
  var nimfunc = cast[ptr QWidgetdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetshowEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QShowEvent): void =
  fQWidget_virtualbase_showEvent(self.h, event.h)

type QWidgetshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetshowEventProc) =
  # TODO check subclass
  var tmp = new QWidgetshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_showEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_showEvent ".} =
  var nimfunc = cast[ptr QWidgetshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QWidgethideEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QHideEvent): void =
  fQWidget_virtualbase_hideEvent(self.h, event.h)

type QWidgethideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qwidget_types.QWidget, slot: QWidgethideEventProc) =
  # TODO check subclass
  var tmp = new QWidgethideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_hideEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_hideEvent ".} =
  var nimfunc = cast[ptr QWidgethideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetnativeEvent*(self: gen_qwidget_types.QWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QWidgetnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetnativeEventProc) =
  # TODO check subclass
  var tmp = new QWidgetnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_nativeEvent(self: ptr cQWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QWidget_nativeEvent ".} =
  var nimfunc = cast[ptr QWidgetnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QWidgetchangeEvent*(self: gen_qwidget_types.QWidget, param1: gen_qcoreevent_types.QEvent): void =
  fQWidget_virtualbase_changeEvent(self.h, param1.h)

type QWidgetchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetchangeEventProc) =
  # TODO check subclass
  var tmp = new QWidgetchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_changeEvent(self: ptr cQWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWidget_changeEvent ".} =
  var nimfunc = cast[ptr QWidgetchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QWidgetmetric*(self: gen_qwidget_types.QWidget, param1: cint): cint =
  fQWidget_virtualbase_metric(self.h, cint(param1))

type QWidgetmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qwidget_types.QWidget, slot: QWidgetmetricProc) =
  # TODO check subclass
  var tmp = new QWidgetmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_metric(self: ptr cQWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWidget_metric ".} =
  var nimfunc = cast[ptr QWidgetmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWidgetinitPainter*(self: gen_qwidget_types.QWidget, painter: gen_qpainter_types.QPainter): void =
  fQWidget_virtualbase_initPainter(self.h, painter.h)

type QWidgetinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qwidget_types.QWidget, slot: QWidgetinitPainterProc) =
  # TODO check subclass
  var tmp = new QWidgetinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_initPainter(self: ptr cQWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QWidget_initPainter ".} =
  var nimfunc = cast[ptr QWidgetinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QWidgetredirected*(self: gen_qwidget_types.QWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQWidget_virtualbase_redirected(self.h, offset.h))

type QWidgetredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qwidget_types.QWidget, slot: QWidgetredirectedProc) =
  # TODO check subclass
  var tmp = new QWidgetredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_redirected(self: ptr cQWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QWidget_redirected ".} =
  var nimfunc = cast[ptr QWidgetredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QWidgetsharedPainter*(self: gen_qwidget_types.QWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQWidget_virtualbase_sharedPainter(self.h))

type QWidgetsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qwidget_types.QWidget, slot: QWidgetsharedPainterProc) =
  # TODO check subclass
  var tmp = new QWidgetsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_sharedPainter(self: ptr cQWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QWidget_sharedPainter ".} =
  var nimfunc = cast[ptr QWidgetsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWidgetinputMethodEvent*(self: gen_qwidget_types.QWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fQWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QWidgetinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QWidgetinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_inputMethodEvent(self: ptr cQWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWidget_inputMethodEvent ".} =
  var nimfunc = cast[ptr QWidgetinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QWidgetinputMethodQuery*(self: gen_qwidget_types.QWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QWidgetinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qwidget_types.QWidget, slot: QWidgetinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QWidgetinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_inputMethodQuery(self: ptr cQWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QWidget_inputMethodQuery ".} =
  var nimfunc = cast[ptr QWidgetinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QWidgetfocusNextPrevChild*(self: gen_qwidget_types.QWidget, next: bool): bool =
  fQWidget_virtualbase_focusNextPrevChild(self.h, next)

type QWidgetfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qwidget_types.QWidget, slot: QWidgetfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QWidgetfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_focusNextPrevChild(self: ptr cQWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QWidget_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QWidgetfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWidgeteventFilter*(self: gen_qwidget_types.QWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWidgeteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qwidget_types.QWidget, slot: QWidgeteventFilterProc) =
  # TODO check subclass
  var tmp = new QWidgeteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_eventFilter(self: ptr cQWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWidget_eventFilter ".} =
  var nimfunc = cast[ptr QWidgeteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWidgettimerEvent*(self: gen_qwidget_types.QWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fQWidget_virtualbase_timerEvent(self.h, event.h)

type QWidgettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qwidget_types.QWidget, slot: QWidgettimerEventProc) =
  # TODO check subclass
  var tmp = new QWidgettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_timerEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_timerEvent ".} =
  var nimfunc = cast[ptr QWidgettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetchildEvent*(self: gen_qwidget_types.QWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fQWidget_virtualbase_childEvent(self.h, event.h)

type QWidgetchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetchildEventProc) =
  # TODO check subclass
  var tmp = new QWidgetchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_childEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_childEvent ".} =
  var nimfunc = cast[ptr QWidgetchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetcustomEvent*(self: gen_qwidget_types.QWidget, event: gen_qcoreevent_types.QEvent): void =
  fQWidget_virtualbase_customEvent(self.h, event.h)

type QWidgetcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qwidget_types.QWidget, slot: QWidgetcustomEventProc) =
  # TODO check subclass
  var tmp = new QWidgetcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_customEvent(self: ptr cQWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidget_customEvent ".} =
  var nimfunc = cast[ptr QWidgetcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetconnectNotify*(self: gen_qwidget_types.QWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWidget_virtualbase_connectNotify(self.h, signal.h)

type QWidgetconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qwidget_types.QWidget, slot: QWidgetconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWidgetconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_connectNotify(self: ptr cQWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWidget_connectNotify ".} =
  var nimfunc = cast[ptr QWidgetconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWidgetdisconnectNotify*(self: gen_qwidget_types.QWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QWidgetdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwidget_types.QWidget, slot: QWidgetdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWidgetdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidget_disconnectNotify(self: ptr cQWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWidget_disconnectNotify ".} =
  var nimfunc = cast[ptr QWidgetdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qwidget_types.QWidget) =
  fcQWidget_delete(self.h)
