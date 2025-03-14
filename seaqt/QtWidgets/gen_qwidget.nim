import ./qtwidgets_pkg

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
  ../QtGui/gen_qaction_types,
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
  gen_qaction_types,
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
  gen_qgraphicseffect_types,
  gen_qgraphicsproxywidget_types,
  gen_qlayout_types,
  gen_qsizepolicy_types,
  gen_qstyle_types

type cQWidgetData*{.exportc: "QWidgetData", incompleteStruct.} = object
type cQWidget*{.exportc: "QWidget", incompleteStruct.} = object

proc fcQWidgetData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWidgetData_operatorAssign".}
proc fcQWidgetData_new(param1: pointer): ptr cQWidgetData {.importc: "QWidgetData_new".}
proc fcQWidget_metaObject(self: pointer): pointer {.importc: "QWidget_metaObject".}
proc fcQWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QWidget_metacast".}
proc fcQWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWidget_metacall".}
proc fcQWidget_tr(s: cstring): struct_miqt_string {.importc: "QWidget_tr".}
proc fcQWidget_devType(self: pointer): cint {.importc: "QWidget_devType".}
proc fcQWidget_winId(self: pointer): uint {.importc: "QWidget_winId".}
proc fcQWidget_createWinId(self: pointer): void {.importc: "QWidget_createWinId".}
proc fcQWidget_internalWinId(self: pointer): uint {.importc: "QWidget_internalWinId".}
proc fcQWidget_effectiveWinId(self: pointer): uint {.importc: "QWidget_effectiveWinId".}
proc fcQWidget_style(self: pointer): pointer {.importc: "QWidget_style".}
proc fcQWidget_setStyle(self: pointer, style: pointer): void {.importc: "QWidget_setStyle".}
proc fcQWidget_isTopLevel(self: pointer): bool {.importc: "QWidget_isTopLevel".}
proc fcQWidget_isWindow(self: pointer): bool {.importc: "QWidget_isWindow".}
proc fcQWidget_isModal(self: pointer): bool {.importc: "QWidget_isModal".}
proc fcQWidget_windowModality(self: pointer): cint {.importc: "QWidget_windowModality".}
proc fcQWidget_setWindowModality(self: pointer, windowModality: cint): void {.importc: "QWidget_setWindowModality".}
proc fcQWidget_isEnabled(self: pointer): bool {.importc: "QWidget_isEnabled".}
proc fcQWidget_isEnabledTo(self: pointer, param1: pointer): bool {.importc: "QWidget_isEnabledTo".}
proc fcQWidget_setEnabled(self: pointer, enabled: bool): void {.importc: "QWidget_setEnabled".}
proc fcQWidget_setDisabled(self: pointer, disabled: bool): void {.importc: "QWidget_setDisabled".}
proc fcQWidget_setWindowModified(self: pointer, windowModified: bool): void {.importc: "QWidget_setWindowModified".}
proc fcQWidget_frameGeometry(self: pointer): pointer {.importc: "QWidget_frameGeometry".}
proc fcQWidget_geometry(self: pointer): pointer {.importc: "QWidget_geometry".}
proc fcQWidget_normalGeometry(self: pointer): pointer {.importc: "QWidget_normalGeometry".}
proc fcQWidget_x(self: pointer): cint {.importc: "QWidget_x".}
proc fcQWidget_y(self: pointer): cint {.importc: "QWidget_y".}
proc fcQWidget_pos(self: pointer): pointer {.importc: "QWidget_pos".}
proc fcQWidget_frameSize(self: pointer): pointer {.importc: "QWidget_frameSize".}
proc fcQWidget_size(self: pointer): pointer {.importc: "QWidget_size".}
proc fcQWidget_width(self: pointer): cint {.importc: "QWidget_width".}
proc fcQWidget_height(self: pointer): cint {.importc: "QWidget_height".}
proc fcQWidget_rect(self: pointer): pointer {.importc: "QWidget_rect".}
proc fcQWidget_childrenRect(self: pointer): pointer {.importc: "QWidget_childrenRect".}
proc fcQWidget_childrenRegion(self: pointer): pointer {.importc: "QWidget_childrenRegion".}
proc fcQWidget_minimumSize(self: pointer): pointer {.importc: "QWidget_minimumSize".}
proc fcQWidget_maximumSize(self: pointer): pointer {.importc: "QWidget_maximumSize".}
proc fcQWidget_minimumWidth(self: pointer): cint {.importc: "QWidget_minimumWidth".}
proc fcQWidget_minimumHeight(self: pointer): cint {.importc: "QWidget_minimumHeight".}
proc fcQWidget_maximumWidth(self: pointer): cint {.importc: "QWidget_maximumWidth".}
proc fcQWidget_maximumHeight(self: pointer): cint {.importc: "QWidget_maximumHeight".}
proc fcQWidget_setMinimumSize(self: pointer, minimumSize: pointer): void {.importc: "QWidget_setMinimumSize".}
proc fcQWidget_setMinimumSize2(self: pointer, minw: cint, minh: cint): void {.importc: "QWidget_setMinimumSize2".}
proc fcQWidget_setMaximumSize(self: pointer, maximumSize: pointer): void {.importc: "QWidget_setMaximumSize".}
proc fcQWidget_setMaximumSize2(self: pointer, maxw: cint, maxh: cint): void {.importc: "QWidget_setMaximumSize2".}
proc fcQWidget_setMinimumWidth(self: pointer, minw: cint): void {.importc: "QWidget_setMinimumWidth".}
proc fcQWidget_setMinimumHeight(self: pointer, minh: cint): void {.importc: "QWidget_setMinimumHeight".}
proc fcQWidget_setMaximumWidth(self: pointer, maxw: cint): void {.importc: "QWidget_setMaximumWidth".}
proc fcQWidget_setMaximumHeight(self: pointer, maxh: cint): void {.importc: "QWidget_setMaximumHeight".}
proc fcQWidget_sizeIncrement(self: pointer): pointer {.importc: "QWidget_sizeIncrement".}
proc fcQWidget_setSizeIncrement(self: pointer, sizeIncrement: pointer): void {.importc: "QWidget_setSizeIncrement".}
proc fcQWidget_setSizeIncrement2(self: pointer, w: cint, h: cint): void {.importc: "QWidget_setSizeIncrement2".}
proc fcQWidget_baseSize(self: pointer): pointer {.importc: "QWidget_baseSize".}
proc fcQWidget_setBaseSize(self: pointer, baseSize: pointer): void {.importc: "QWidget_setBaseSize".}
proc fcQWidget_setBaseSize2(self: pointer, basew: cint, baseh: cint): void {.importc: "QWidget_setBaseSize2".}
proc fcQWidget_setFixedSize(self: pointer, fixedSize: pointer): void {.importc: "QWidget_setFixedSize".}
proc fcQWidget_setFixedSize2(self: pointer, w: cint, h: cint): void {.importc: "QWidget_setFixedSize2".}
proc fcQWidget_setFixedWidth(self: pointer, w: cint): void {.importc: "QWidget_setFixedWidth".}
proc fcQWidget_setFixedHeight(self: pointer, h: cint): void {.importc: "QWidget_setFixedHeight".}
proc fcQWidget_mapToGlobal(self: pointer, param1: pointer): pointer {.importc: "QWidget_mapToGlobal".}
proc fcQWidget_mapToGlobalWithQPoint(self: pointer, param1: pointer): pointer {.importc: "QWidget_mapToGlobalWithQPoint".}
proc fcQWidget_mapFromGlobal(self: pointer, param1: pointer): pointer {.importc: "QWidget_mapFromGlobal".}
proc fcQWidget_mapFromGlobalWithQPoint(self: pointer, param1: pointer): pointer {.importc: "QWidget_mapFromGlobalWithQPoint".}
proc fcQWidget_mapToParent(self: pointer, param1: pointer): pointer {.importc: "QWidget_mapToParent".}
proc fcQWidget_mapToParentWithQPoint(self: pointer, param1: pointer): pointer {.importc: "QWidget_mapToParentWithQPoint".}
proc fcQWidget_mapFromParent(self: pointer, param1: pointer): pointer {.importc: "QWidget_mapFromParent".}
proc fcQWidget_mapFromParentWithQPoint(self: pointer, param1: pointer): pointer {.importc: "QWidget_mapFromParentWithQPoint".}
proc fcQWidget_mapTo(self: pointer, param1: pointer, param2: pointer): pointer {.importc: "QWidget_mapTo".}
proc fcQWidget_mapTo2(self: pointer, param1: pointer, param2: pointer): pointer {.importc: "QWidget_mapTo2".}
proc fcQWidget_mapFrom(self: pointer, param1: pointer, param2: pointer): pointer {.importc: "QWidget_mapFrom".}
proc fcQWidget_mapFrom2(self: pointer, param1: pointer, param2: pointer): pointer {.importc: "QWidget_mapFrom2".}
proc fcQWidget_window(self: pointer): pointer {.importc: "QWidget_window".}
proc fcQWidget_nativeParentWidget(self: pointer): pointer {.importc: "QWidget_nativeParentWidget".}
proc fcQWidget_topLevelWidget(self: pointer): pointer {.importc: "QWidget_topLevelWidget".}
proc fcQWidget_palette(self: pointer): pointer {.importc: "QWidget_palette".}
proc fcQWidget_setPalette(self: pointer, palette: pointer): void {.importc: "QWidget_setPalette".}
proc fcQWidget_setBackgroundRole(self: pointer, backgroundRole: cint): void {.importc: "QWidget_setBackgroundRole".}
proc fcQWidget_backgroundRole(self: pointer): cint {.importc: "QWidget_backgroundRole".}
proc fcQWidget_setForegroundRole(self: pointer, foregroundRole: cint): void {.importc: "QWidget_setForegroundRole".}
proc fcQWidget_foregroundRole(self: pointer): cint {.importc: "QWidget_foregroundRole".}
proc fcQWidget_font(self: pointer): pointer {.importc: "QWidget_font".}
proc fcQWidget_setFont(self: pointer, font: pointer): void {.importc: "QWidget_setFont".}
proc fcQWidget_fontMetrics(self: pointer): pointer {.importc: "QWidget_fontMetrics".}
proc fcQWidget_fontInfo(self: pointer): pointer {.importc: "QWidget_fontInfo".}
proc fcQWidget_cursor(self: pointer): pointer {.importc: "QWidget_cursor".}
proc fcQWidget_setCursor(self: pointer, cursor: pointer): void {.importc: "QWidget_setCursor".}
proc fcQWidget_unsetCursor(self: pointer): void {.importc: "QWidget_unsetCursor".}
proc fcQWidget_setMouseTracking(self: pointer, enable: bool): void {.importc: "QWidget_setMouseTracking".}
proc fcQWidget_hasMouseTracking(self: pointer): bool {.importc: "QWidget_hasMouseTracking".}
proc fcQWidget_underMouse(self: pointer): bool {.importc: "QWidget_underMouse".}
proc fcQWidget_setTabletTracking(self: pointer, enable: bool): void {.importc: "QWidget_setTabletTracking".}
proc fcQWidget_hasTabletTracking(self: pointer): bool {.importc: "QWidget_hasTabletTracking".}
proc fcQWidget_setMask(self: pointer, mask: pointer): void {.importc: "QWidget_setMask".}
proc fcQWidget_setMaskWithMask(self: pointer, mask: pointer): void {.importc: "QWidget_setMaskWithMask".}
proc fcQWidget_mask(self: pointer): pointer {.importc: "QWidget_mask".}
proc fcQWidget_clearMask(self: pointer): void {.importc: "QWidget_clearMask".}
proc fcQWidget_render(self: pointer, target: pointer): void {.importc: "QWidget_render".}
proc fcQWidget_renderWithPainter(self: pointer, painter: pointer): void {.importc: "QWidget_renderWithPainter".}
proc fcQWidget_grab(self: pointer): pointer {.importc: "QWidget_grab".}
proc fcQWidget_graphicsEffect(self: pointer): pointer {.importc: "QWidget_graphicsEffect".}
proc fcQWidget_setGraphicsEffect(self: pointer, effect: pointer): void {.importc: "QWidget_setGraphicsEffect".}
proc fcQWidget_grabGesture(self: pointer, typeVal: cint): void {.importc: "QWidget_grabGesture".}
proc fcQWidget_ungrabGesture(self: pointer, typeVal: cint): void {.importc: "QWidget_ungrabGesture".}
proc fcQWidget_setWindowTitle(self: pointer, windowTitle: struct_miqt_string): void {.importc: "QWidget_setWindowTitle".}
proc fcQWidget_setStyleSheet(self: pointer, styleSheet: struct_miqt_string): void {.importc: "QWidget_setStyleSheet".}
proc fcQWidget_styleSheet(self: pointer): struct_miqt_string {.importc: "QWidget_styleSheet".}
proc fcQWidget_windowTitle(self: pointer): struct_miqt_string {.importc: "QWidget_windowTitle".}
proc fcQWidget_setWindowIcon(self: pointer, icon: pointer): void {.importc: "QWidget_setWindowIcon".}
proc fcQWidget_windowIcon(self: pointer): pointer {.importc: "QWidget_windowIcon".}
proc fcQWidget_setWindowIconText(self: pointer, windowIconText: struct_miqt_string): void {.importc: "QWidget_setWindowIconText".}
proc fcQWidget_windowIconText(self: pointer): struct_miqt_string {.importc: "QWidget_windowIconText".}
proc fcQWidget_setWindowRole(self: pointer, windowRole: struct_miqt_string): void {.importc: "QWidget_setWindowRole".}
proc fcQWidget_windowRole(self: pointer): struct_miqt_string {.importc: "QWidget_windowRole".}
proc fcQWidget_setWindowFilePath(self: pointer, filePath: struct_miqt_string): void {.importc: "QWidget_setWindowFilePath".}
proc fcQWidget_windowFilePath(self: pointer): struct_miqt_string {.importc: "QWidget_windowFilePath".}
proc fcQWidget_setWindowOpacity(self: pointer, level: float64): void {.importc: "QWidget_setWindowOpacity".}
proc fcQWidget_windowOpacity(self: pointer): float64 {.importc: "QWidget_windowOpacity".}
proc fcQWidget_isWindowModified(self: pointer): bool {.importc: "QWidget_isWindowModified".}
proc fcQWidget_setToolTip(self: pointer, toolTip: struct_miqt_string): void {.importc: "QWidget_setToolTip".}
proc fcQWidget_toolTip(self: pointer): struct_miqt_string {.importc: "QWidget_toolTip".}
proc fcQWidget_setToolTipDuration(self: pointer, msec: cint): void {.importc: "QWidget_setToolTipDuration".}
proc fcQWidget_toolTipDuration(self: pointer): cint {.importc: "QWidget_toolTipDuration".}
proc fcQWidget_setStatusTip(self: pointer, statusTip: struct_miqt_string): void {.importc: "QWidget_setStatusTip".}
proc fcQWidget_statusTip(self: pointer): struct_miqt_string {.importc: "QWidget_statusTip".}
proc fcQWidget_setWhatsThis(self: pointer, whatsThis: struct_miqt_string): void {.importc: "QWidget_setWhatsThis".}
proc fcQWidget_whatsThis(self: pointer): struct_miqt_string {.importc: "QWidget_whatsThis".}
proc fcQWidget_accessibleName(self: pointer): struct_miqt_string {.importc: "QWidget_accessibleName".}
proc fcQWidget_setAccessibleName(self: pointer, name: struct_miqt_string): void {.importc: "QWidget_setAccessibleName".}
proc fcQWidget_accessibleDescription(self: pointer): struct_miqt_string {.importc: "QWidget_accessibleDescription".}
proc fcQWidget_setAccessibleDescription(self: pointer, description: struct_miqt_string): void {.importc: "QWidget_setAccessibleDescription".}
proc fcQWidget_setLayoutDirection(self: pointer, direction: cint): void {.importc: "QWidget_setLayoutDirection".}
proc fcQWidget_layoutDirection(self: pointer): cint {.importc: "QWidget_layoutDirection".}
proc fcQWidget_unsetLayoutDirection(self: pointer): void {.importc: "QWidget_unsetLayoutDirection".}
proc fcQWidget_setLocale(self: pointer, locale: pointer): void {.importc: "QWidget_setLocale".}
proc fcQWidget_locale(self: pointer): pointer {.importc: "QWidget_locale".}
proc fcQWidget_unsetLocale(self: pointer): void {.importc: "QWidget_unsetLocale".}
proc fcQWidget_isRightToLeft(self: pointer): bool {.importc: "QWidget_isRightToLeft".}
proc fcQWidget_isLeftToRight(self: pointer): bool {.importc: "QWidget_isLeftToRight".}
proc fcQWidget_setFocus(self: pointer): void {.importc: "QWidget_setFocus".}
proc fcQWidget_isActiveWindow(self: pointer): bool {.importc: "QWidget_isActiveWindow".}
proc fcQWidget_activateWindow(self: pointer): void {.importc: "QWidget_activateWindow".}
proc fcQWidget_clearFocus(self: pointer): void {.importc: "QWidget_clearFocus".}
proc fcQWidget_setFocusWithReason(self: pointer, reason: cint): void {.importc: "QWidget_setFocusWithReason".}
proc fcQWidget_focusPolicy(self: pointer): cint {.importc: "QWidget_focusPolicy".}
proc fcQWidget_setFocusPolicy(self: pointer, policy: cint): void {.importc: "QWidget_setFocusPolicy".}
proc fcQWidget_hasFocus(self: pointer): bool {.importc: "QWidget_hasFocus".}
proc fcQWidget_setTabOrder(param1: pointer, param2: pointer): void {.importc: "QWidget_setTabOrder".}
proc fcQWidget_setFocusProxy(self: pointer, focusProxy: pointer): void {.importc: "QWidget_setFocusProxy".}
proc fcQWidget_focusProxy(self: pointer): pointer {.importc: "QWidget_focusProxy".}
proc fcQWidget_contextMenuPolicy(self: pointer): cint {.importc: "QWidget_contextMenuPolicy".}
proc fcQWidget_setContextMenuPolicy(self: pointer, policy: cint): void {.importc: "QWidget_setContextMenuPolicy".}
proc fcQWidget_grabMouse(self: pointer): void {.importc: "QWidget_grabMouse".}
proc fcQWidget_grabMouseWithQCursor(self: pointer, param1: pointer): void {.importc: "QWidget_grabMouseWithQCursor".}
proc fcQWidget_releaseMouse(self: pointer): void {.importc: "QWidget_releaseMouse".}
proc fcQWidget_grabKeyboard(self: pointer): void {.importc: "QWidget_grabKeyboard".}
proc fcQWidget_releaseKeyboard(self: pointer): void {.importc: "QWidget_releaseKeyboard".}
proc fcQWidget_grabShortcut(self: pointer, key: pointer): cint {.importc: "QWidget_grabShortcut".}
proc fcQWidget_releaseShortcut(self: pointer, id: cint): void {.importc: "QWidget_releaseShortcut".}
proc fcQWidget_setShortcutEnabled(self: pointer, id: cint): void {.importc: "QWidget_setShortcutEnabled".}
proc fcQWidget_setShortcutAutoRepeat(self: pointer, id: cint): void {.importc: "QWidget_setShortcutAutoRepeat".}
proc fcQWidget_mouseGrabber(): pointer {.importc: "QWidget_mouseGrabber".}
proc fcQWidget_keyboardGrabber(): pointer {.importc: "QWidget_keyboardGrabber".}
proc fcQWidget_updatesEnabled(self: pointer): bool {.importc: "QWidget_updatesEnabled".}
proc fcQWidget_setUpdatesEnabled(self: pointer, enable: bool): void {.importc: "QWidget_setUpdatesEnabled".}
proc fcQWidget_graphicsProxyWidget(self: pointer): pointer {.importc: "QWidget_graphicsProxyWidget".}
proc fcQWidget_update(self: pointer): void {.importc: "QWidget_update".}
proc fcQWidget_repaint(self: pointer): void {.importc: "QWidget_repaint".}
proc fcQWidget_update2(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QWidget_update2".}
proc fcQWidget_updateWithQRect(self: pointer, param1: pointer): void {.importc: "QWidget_updateWithQRect".}
proc fcQWidget_updateWithQRegion(self: pointer, param1: pointer): void {.importc: "QWidget_updateWithQRegion".}
proc fcQWidget_repaint2(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QWidget_repaint2".}
proc fcQWidget_repaintWithQRect(self: pointer, param1: pointer): void {.importc: "QWidget_repaintWithQRect".}
proc fcQWidget_repaintWithQRegion(self: pointer, param1: pointer): void {.importc: "QWidget_repaintWithQRegion".}
proc fcQWidget_setVisible(self: pointer, visible: bool): void {.importc: "QWidget_setVisible".}
proc fcQWidget_setHidden(self: pointer, hidden: bool): void {.importc: "QWidget_setHidden".}
proc fcQWidget_show(self: pointer): void {.importc: "QWidget_show".}
proc fcQWidget_hide(self: pointer): void {.importc: "QWidget_hide".}
proc fcQWidget_showMinimized(self: pointer): void {.importc: "QWidget_showMinimized".}
proc fcQWidget_showMaximized(self: pointer): void {.importc: "QWidget_showMaximized".}
proc fcQWidget_showFullScreen(self: pointer): void {.importc: "QWidget_showFullScreen".}
proc fcQWidget_showNormal(self: pointer): void {.importc: "QWidget_showNormal".}
proc fcQWidget_close(self: pointer): bool {.importc: "QWidget_close".}
proc fcQWidget_raiseX(self: pointer): void {.importc: "QWidget_raise".}
proc fcQWidget_lower(self: pointer): void {.importc: "QWidget_lower".}
proc fcQWidget_stackUnder(self: pointer, param1: pointer): void {.importc: "QWidget_stackUnder".}
proc fcQWidget_move(self: pointer, x: cint, y: cint): void {.importc: "QWidget_move".}
proc fcQWidget_moveWithQPoint(self: pointer, param1: pointer): void {.importc: "QWidget_moveWithQPoint".}
proc fcQWidget_resize(self: pointer, w: cint, h: cint): void {.importc: "QWidget_resize".}
proc fcQWidget_resizeWithQSize(self: pointer, param1: pointer): void {.importc: "QWidget_resizeWithQSize".}
proc fcQWidget_setGeometry(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QWidget_setGeometry".}
proc fcQWidget_setGeometryWithGeometry(self: pointer, geometry: pointer): void {.importc: "QWidget_setGeometryWithGeometry".}
proc fcQWidget_saveGeometry(self: pointer): struct_miqt_string {.importc: "QWidget_saveGeometry".}
proc fcQWidget_restoreGeometry(self: pointer, geometry: struct_miqt_string): bool {.importc: "QWidget_restoreGeometry".}
proc fcQWidget_adjustSize(self: pointer): void {.importc: "QWidget_adjustSize".}
proc fcQWidget_isVisible(self: pointer): bool {.importc: "QWidget_isVisible".}
proc fcQWidget_isVisibleTo(self: pointer, param1: pointer): bool {.importc: "QWidget_isVisibleTo".}
proc fcQWidget_isHidden(self: pointer): bool {.importc: "QWidget_isHidden".}
proc fcQWidget_isMinimized(self: pointer): bool {.importc: "QWidget_isMinimized".}
proc fcQWidget_isMaximized(self: pointer): bool {.importc: "QWidget_isMaximized".}
proc fcQWidget_isFullScreen(self: pointer): bool {.importc: "QWidget_isFullScreen".}
proc fcQWidget_windowState(self: pointer): cint {.importc: "QWidget_windowState".}
proc fcQWidget_setWindowState(self: pointer, state: cint): void {.importc: "QWidget_setWindowState".}
proc fcQWidget_overrideWindowState(self: pointer, state: cint): void {.importc: "QWidget_overrideWindowState".}
proc fcQWidget_sizeHint(self: pointer): pointer {.importc: "QWidget_sizeHint".}
proc fcQWidget_minimumSizeHint(self: pointer): pointer {.importc: "QWidget_minimumSizeHint".}
proc fcQWidget_sizePolicy(self: pointer): pointer {.importc: "QWidget_sizePolicy".}
proc fcQWidget_setSizePolicy(self: pointer, sizePolicy: pointer): void {.importc: "QWidget_setSizePolicy".}
proc fcQWidget_setSizePolicy2(self: pointer, horizontal: cint, vertical: cint): void {.importc: "QWidget_setSizePolicy2".}
proc fcQWidget_heightForWidth(self: pointer, param1: cint): cint {.importc: "QWidget_heightForWidth".}
proc fcQWidget_hasHeightForWidth(self: pointer): bool {.importc: "QWidget_hasHeightForWidth".}
proc fcQWidget_visibleRegion(self: pointer): pointer {.importc: "QWidget_visibleRegion".}
proc fcQWidget_setContentsMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QWidget_setContentsMargins".}
proc fcQWidget_setContentsMarginsWithMargins(self: pointer, margins: pointer): void {.importc: "QWidget_setContentsMarginsWithMargins".}
proc fcQWidget_contentsMargins(self: pointer): pointer {.importc: "QWidget_contentsMargins".}
proc fcQWidget_contentsRect(self: pointer): pointer {.importc: "QWidget_contentsRect".}
proc fcQWidget_layout(self: pointer): pointer {.importc: "QWidget_layout".}
proc fcQWidget_setLayout(self: pointer, layout: pointer): void {.importc: "QWidget_setLayout".}
proc fcQWidget_updateGeometry(self: pointer): void {.importc: "QWidget_updateGeometry".}
proc fcQWidget_setParent(self: pointer, parent: pointer): void {.importc: "QWidget_setParent".}
proc fcQWidget_setParent2(self: pointer, parent: pointer, f: cint): void {.importc: "QWidget_setParent2".}
proc fcQWidget_scroll(self: pointer, dx: cint, dy: cint): void {.importc: "QWidget_scroll".}
proc fcQWidget_scroll2(self: pointer, dx: cint, dy: cint, param3: pointer): void {.importc: "QWidget_scroll2".}
proc fcQWidget_focusWidget(self: pointer): pointer {.importc: "QWidget_focusWidget".}
proc fcQWidget_nextInFocusChain(self: pointer): pointer {.importc: "QWidget_nextInFocusChain".}
proc fcQWidget_previousInFocusChain(self: pointer): pointer {.importc: "QWidget_previousInFocusChain".}
proc fcQWidget_acceptDrops(self: pointer): bool {.importc: "QWidget_acceptDrops".}
proc fcQWidget_setAcceptDrops(self: pointer, on: bool): void {.importc: "QWidget_setAcceptDrops".}
proc fcQWidget_addAction(self: pointer, action: pointer): void {.importc: "QWidget_addAction".}
proc fcQWidget_addActions(self: pointer, actions: struct_miqt_array): void {.importc: "QWidget_addActions".}
proc fcQWidget_insertActions(self: pointer, before: pointer, actions: struct_miqt_array): void {.importc: "QWidget_insertActions".}
proc fcQWidget_insertAction(self: pointer, before: pointer, action: pointer): void {.importc: "QWidget_insertAction".}
proc fcQWidget_removeAction(self: pointer, action: pointer): void {.importc: "QWidget_removeAction".}
proc fcQWidget_actions(self: pointer): struct_miqt_array {.importc: "QWidget_actions".}
proc fcQWidget_addActionWithText(self: pointer, text: struct_miqt_string): pointer {.importc: "QWidget_addActionWithText".}
proc fcQWidget_addAction2(self: pointer, icon: pointer, text: struct_miqt_string): pointer {.importc: "QWidget_addAction2".}
proc fcQWidget_addAction3(self: pointer, text: struct_miqt_string, shortcut: pointer): pointer {.importc: "QWidget_addAction3".}
proc fcQWidget_addAction4(self: pointer, icon: pointer, text: struct_miqt_string, shortcut: pointer): pointer {.importc: "QWidget_addAction4".}
proc fcQWidget_parentWidget(self: pointer): pointer {.importc: "QWidget_parentWidget".}
proc fcQWidget_setWindowFlags(self: pointer, typeVal: cint): void {.importc: "QWidget_setWindowFlags".}
proc fcQWidget_windowFlags(self: pointer): cint {.importc: "QWidget_windowFlags".}
proc fcQWidget_setWindowFlag(self: pointer, param1: cint): void {.importc: "QWidget_setWindowFlag".}
proc fcQWidget_overrideWindowFlags(self: pointer, typeVal: cint): void {.importc: "QWidget_overrideWindowFlags".}
proc fcQWidget_windowType(self: pointer): cint {.importc: "QWidget_windowType".}
proc fcQWidget_find(param1: uint): pointer {.importc: "QWidget_find".}
proc fcQWidget_childAt(self: pointer, x: cint, y: cint): pointer {.importc: "QWidget_childAt".}
proc fcQWidget_childAtWithQPoint(self: pointer, p: pointer): pointer {.importc: "QWidget_childAtWithQPoint".}
proc fcQWidget_setAttribute(self: pointer, param1: cint): void {.importc: "QWidget_setAttribute".}
proc fcQWidget_testAttribute(self: pointer, param1: cint): bool {.importc: "QWidget_testAttribute".}
proc fcQWidget_paintEngine(self: pointer): pointer {.importc: "QWidget_paintEngine".}
proc fcQWidget_ensurePolished(self: pointer): void {.importc: "QWidget_ensurePolished".}
proc fcQWidget_isAncestorOf(self: pointer, child: pointer): bool {.importc: "QWidget_isAncestorOf".}
proc fcQWidget_autoFillBackground(self: pointer): bool {.importc: "QWidget_autoFillBackground".}
proc fcQWidget_setAutoFillBackground(self: pointer, enabled: bool): void {.importc: "QWidget_setAutoFillBackground".}
proc fcQWidget_backingStore(self: pointer): pointer {.importc: "QWidget_backingStore".}
proc fcQWidget_windowHandle(self: pointer): pointer {.importc: "QWidget_windowHandle".}
proc fcQWidget_screen(self: pointer): pointer {.importc: "QWidget_screen".}
proc fcQWidget_setScreen(self: pointer, screen: pointer): void {.importc: "QWidget_setScreen".}
proc fcQWidget_createWindowContainer(window: pointer): pointer {.importc: "QWidget_createWindowContainer".}
proc fcQWidget_windowTitleChanged(self: pointer, title: struct_miqt_string): void {.importc: "QWidget_windowTitleChanged".}
proc fcQWidget_connect_windowTitleChanged(self: pointer, slot: int, callback: proc (slot: int, title: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWidget_connect_windowTitleChanged".}
proc fcQWidget_windowIconChanged(self: pointer, icon: pointer): void {.importc: "QWidget_windowIconChanged".}
proc fcQWidget_connect_windowIconChanged(self: pointer, slot: int, callback: proc (slot: int, icon: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWidget_connect_windowIconChanged".}
proc fcQWidget_windowIconTextChanged(self: pointer, iconText: struct_miqt_string): void {.importc: "QWidget_windowIconTextChanged".}
proc fcQWidget_connect_windowIconTextChanged(self: pointer, slot: int, callback: proc (slot: int, iconText: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWidget_connect_windowIconTextChanged".}
proc fcQWidget_customContextMenuRequested(self: pointer, pos: pointer): void {.importc: "QWidget_customContextMenuRequested".}
proc fcQWidget_connect_customContextMenuRequested(self: pointer, slot: int, callback: proc (slot: int, pos: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWidget_connect_customContextMenuRequested".}
proc fcQWidget_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QWidget_inputMethodQuery".}
proc fcQWidget_inputMethodHints(self: pointer): cint {.importc: "QWidget_inputMethodHints".}
proc fcQWidget_setInputMethodHints(self: pointer, hints: cint): void {.importc: "QWidget_setInputMethodHints".}
proc fcQWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWidget_tr2".}
proc fcQWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWidget_tr3".}
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
proc fcQWidget_vtbl(self: pointer): pointer {.importc: "QWidget_vtbl".}
proc fcQWidget_vdata(self: pointer): pointer {.importc: "QWidget_vdata".}
type cQWidgetVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWidget_virtualbase_metaObject(self: pointer): pointer {.importc: "QWidget_virtualbase_metaObject".}
proc fcQWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWidget_virtualbase_metacast".}
proc fcQWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWidget_virtualbase_metacall".}
proc fcQWidget_virtualbase_devType(self: pointer): cint {.importc: "QWidget_virtualbase_devType".}
proc fcQWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QWidget_virtualbase_setVisible".}
proc fcQWidget_virtualbase_sizeHint(self: pointer): pointer {.importc: "QWidget_virtualbase_sizeHint".}
proc fcQWidget_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QWidget_virtualbase_minimumSizeHint".}
proc fcQWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QWidget_virtualbase_heightForWidth".}
proc fcQWidget_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QWidget_virtualbase_hasHeightForWidth".}
proc fcQWidget_virtualbase_paintEngine(self: pointer): pointer {.importc: "QWidget_virtualbase_paintEngine".}
proc fcQWidget_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWidget_virtualbase_event".}
proc fcQWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_mousePressEvent".}
proc fcQWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_mouseReleaseEvent".}
proc fcQWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_mouseMoveEvent".}
proc fcQWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_wheelEvent".}
proc fcQWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_keyPressEvent".}
proc fcQWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_keyReleaseEvent".}
proc fcQWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_focusInEvent".}
proc fcQWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_focusOutEvent".}
proc fcQWidget_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_enterEvent".}
proc fcQWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_leaveEvent".}
proc fcQWidget_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_paintEvent".}
proc fcQWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_moveEvent".}
proc fcQWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_resizeEvent".}
proc fcQWidget_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_closeEvent".}
proc fcQWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_contextMenuEvent".}
proc fcQWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_tabletEvent".}
proc fcQWidget_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_actionEvent".}
proc fcQWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_dragEnterEvent".}
proc fcQWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_dragMoveEvent".}
proc fcQWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_dragLeaveEvent".}
proc fcQWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_dropEvent".}
proc fcQWidget_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_showEvent".}
proc fcQWidget_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_hideEvent".}
proc fcQWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QWidget_virtualbase_nativeEvent".}
proc fcQWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QWidget_virtualbase_changeEvent".}
proc fcQWidget_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QWidget_virtualbase_metric".}
proc fcQWidget_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QWidget_virtualbase_initPainter".}
proc fcQWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QWidget_virtualbase_redirected".}
proc fcQWidget_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QWidget_virtualbase_sharedPainter".}
proc fcQWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QWidget_virtualbase_inputMethodEvent".}
proc fcQWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QWidget_virtualbase_inputMethodQuery".}
proc fcQWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QWidget_virtualbase_focusNextPrevChild".}
proc fcQWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWidget_virtualbase_eventFilter".}
proc fcQWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_timerEvent".}
proc fcQWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_childEvent".}
proc fcQWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWidget_virtualbase_customEvent".}
proc fcQWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWidget_virtualbase_connectNotify".}
proc fcQWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWidget_virtualbase_disconnectNotify".}
proc fcQWidget_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QWidget_protectedbase_updateMicroFocus".}
proc fcQWidget_protectedbase_create(self: pointer): void {.importc: "QWidget_protectedbase_create".}
proc fcQWidget_protectedbase_destroy(self: pointer): void {.importc: "QWidget_protectedbase_destroy".}
proc fcQWidget_protectedbase_focusNextChild(self: pointer): bool {.importc: "QWidget_protectedbase_focusNextChild".}
proc fcQWidget_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QWidget_protectedbase_focusPreviousChild".}
proc fcQWidget_protectedbase_updateMicroFocus1(self: pointer, query: cint): void {.importc: "QWidget_protectedbase_updateMicroFocus1".}
proc fcQWidget_protectedbase_create1(self: pointer, param1: uint): void {.importc: "QWidget_protectedbase_create1".}
proc fcQWidget_protectedbase_create2(self: pointer, param1: uint, initializeWindow: bool): void {.importc: "QWidget_protectedbase_create2".}
proc fcQWidget_protectedbase_create3(self: pointer, param1: uint, initializeWindow: bool, destroyOldWindow: bool): void {.importc: "QWidget_protectedbase_create3".}
proc fcQWidget_protectedbase_destroy1(self: pointer, destroyWindow: bool): void {.importc: "QWidget_protectedbase_destroy1".}
proc fcQWidget_protectedbase_destroy2(self: pointer, destroyWindow: bool, destroySubWindows: bool): void {.importc: "QWidget_protectedbase_destroy2".}
proc fcQWidget_protectedbase_sender(self: pointer): pointer {.importc: "QWidget_protectedbase_sender".}
proc fcQWidget_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWidget_protectedbase_senderSignalIndex".}
proc fcQWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWidget_protectedbase_receivers".}
proc fcQWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWidget_protectedbase_isSignalConnected".}
proc fcQWidget_new(vtbl, vdata: pointer, parent: pointer): ptr cQWidget {.importc: "QWidget_new".}
proc fcQWidget_new2(vtbl, vdata: pointer): ptr cQWidget {.importc: "QWidget_new2".}
proc fcQWidget_new3(vtbl, vdata: pointer, parent: pointer, f: cint): ptr cQWidget {.importc: "QWidget_new3".}
proc fcQWidget_staticMetaObject(): pointer {.importc: "QWidget_staticMetaObject".}

proc operatorAssign*(self: gen_qwidget_types.QWidgetData, param1: gen_qwidget_types.QWidgetData): void =
  fcQWidgetData_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qwidget_types.QWidgetData,
    param1: gen_qwidget_types.QWidgetData): gen_qwidget_types.QWidgetData =
  gen_qwidget_types.QWidgetData(h: fcQWidgetData_new(param1.h), owned: true)

proc metaObject*(self: gen_qwidget_types.QWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWidget_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwidget_types.QWidget, param1: cstring): pointer =
  fcQWidget_metacast(self.h, param1)

proc metacall*(self: gen_qwidget_types.QWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwidget_types.QWidget, s: cstring): string =
  let v_ms = fcQWidget_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc devType*(self: gen_qwidget_types.QWidget): cint =
  fcQWidget_devType(self.h)

proc winId*(self: gen_qwidget_types.QWidget): uint =
  fcQWidget_winId(self.h)

proc createWinId*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_createWinId(self.h)

proc internalWinId*(self: gen_qwidget_types.QWidget): uint =
  fcQWidget_internalWinId(self.h)

proc effectiveWinId*(self: gen_qwidget_types.QWidget): uint =
  fcQWidget_effectiveWinId(self.h)

proc style*(self: gen_qwidget_types.QWidget): gen_qstyle_types.QStyle =
  gen_qstyle_types.QStyle(h: fcQWidget_style(self.h), owned: false)

proc setStyle*(self: gen_qwidget_types.QWidget, style: gen_qstyle_types.QStyle): void =
  fcQWidget_setStyle(self.h, style.h)

proc isTopLevel*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_isTopLevel(self.h)

proc isWindow*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_isWindow(self.h)

proc isModal*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_isModal(self.h)

proc windowModality*(self: gen_qwidget_types.QWidget): cint =
  cint(fcQWidget_windowModality(self.h))

proc setWindowModality*(self: gen_qwidget_types.QWidget, windowModality: cint): void =
  fcQWidget_setWindowModality(self.h, cint(windowModality))

proc isEnabled*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_isEnabled(self.h)

proc isEnabledTo*(self: gen_qwidget_types.QWidget, param1: gen_qwidget_types.QWidget): bool =
  fcQWidget_isEnabledTo(self.h, param1.h)

proc setEnabled*(self: gen_qwidget_types.QWidget, enabled: bool): void =
  fcQWidget_setEnabled(self.h, enabled)

proc setDisabled*(self: gen_qwidget_types.QWidget, disabled: bool): void =
  fcQWidget_setDisabled(self.h, disabled)

proc setWindowModified*(self: gen_qwidget_types.QWidget, windowModified: bool): void =
  fcQWidget_setWindowModified(self.h, windowModified)

proc frameGeometry*(self: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidget_frameGeometry(self.h), owned: true)

proc geometry*(self: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidget_geometry(self.h), owned: false)

proc normalGeometry*(self: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidget_normalGeometry(self.h), owned: true)

proc x*(self: gen_qwidget_types.QWidget): cint =
  fcQWidget_x(self.h)

proc y*(self: gen_qwidget_types.QWidget): cint =
  fcQWidget_y(self.h)

proc pos*(self: gen_qwidget_types.QWidget): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWidget_pos(self.h), owned: true)

proc frameSize*(self: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_frameSize(self.h), owned: true)

proc size*(self: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_size(self.h), owned: true)

proc width*(self: gen_qwidget_types.QWidget): cint =
  fcQWidget_width(self.h)

proc height*(self: gen_qwidget_types.QWidget): cint =
  fcQWidget_height(self.h)

proc rect*(self: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidget_rect(self.h), owned: true)

proc childrenRect*(self: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidget_childrenRect(self.h), owned: true)

proc childrenRegion*(self: gen_qwidget_types.QWidget): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQWidget_childrenRegion(self.h), owned: true)

proc minimumSize*(self: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_minimumSize(self.h), owned: true)

proc maximumSize*(self: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_maximumSize(self.h), owned: true)

proc minimumWidth*(self: gen_qwidget_types.QWidget): cint =
  fcQWidget_minimumWidth(self.h)

proc minimumHeight*(self: gen_qwidget_types.QWidget): cint =
  fcQWidget_minimumHeight(self.h)

proc maximumWidth*(self: gen_qwidget_types.QWidget): cint =
  fcQWidget_maximumWidth(self.h)

proc maximumHeight*(self: gen_qwidget_types.QWidget): cint =
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

proc sizeIncrement*(self: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_sizeIncrement(self.h), owned: true)

proc setSizeIncrement*(self: gen_qwidget_types.QWidget, sizeIncrement: gen_qsize_types.QSize): void =
  fcQWidget_setSizeIncrement(self.h, sizeIncrement.h)

proc setSizeIncrement*(self: gen_qwidget_types.QWidget, w: cint, h: cint): void =
  fcQWidget_setSizeIncrement2(self.h, w, h)

proc baseSize*(self: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_baseSize(self.h), owned: true)

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

proc mapToGlobal*(self: gen_qwidget_types.QWidget, param1: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQWidget_mapToGlobal(self.h, param1.h), owned: true)

proc mapToGlobal*(self: gen_qwidget_types.QWidget, param1: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWidget_mapToGlobalWithQPoint(self.h, param1.h), owned: true)

proc mapFromGlobal*(self: gen_qwidget_types.QWidget, param1: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQWidget_mapFromGlobal(self.h, param1.h), owned: true)

proc mapFromGlobal*(self: gen_qwidget_types.QWidget, param1: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWidget_mapFromGlobalWithQPoint(self.h, param1.h), owned: true)

proc mapToParent*(self: gen_qwidget_types.QWidget, param1: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQWidget_mapToParent(self.h, param1.h), owned: true)

proc mapToParent*(self: gen_qwidget_types.QWidget, param1: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWidget_mapToParentWithQPoint(self.h, param1.h), owned: true)

proc mapFromParent*(self: gen_qwidget_types.QWidget, param1: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQWidget_mapFromParent(self.h, param1.h), owned: true)

proc mapFromParent*(self: gen_qwidget_types.QWidget, param1: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWidget_mapFromParentWithQPoint(self.h, param1.h), owned: true)

proc mapTo*(self: gen_qwidget_types.QWidget, param1: gen_qwidget_types.QWidget, param2: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQWidget_mapTo(self.h, param1.h, param2.h), owned: true)

proc mapTo*(self: gen_qwidget_types.QWidget, param1: gen_qwidget_types.QWidget, param2: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWidget_mapTo2(self.h, param1.h, param2.h), owned: true)

proc mapFrom*(self: gen_qwidget_types.QWidget, param1: gen_qwidget_types.QWidget, param2: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQWidget_mapFrom(self.h, param1.h, param2.h), owned: true)

proc mapFrom*(self: gen_qwidget_types.QWidget, param1: gen_qwidget_types.QWidget, param2: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWidget_mapFrom2(self.h, param1.h, param2.h), owned: true)

proc window*(self: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_window(self.h), owned: false)

proc nativeParentWidget*(self: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_nativeParentWidget(self.h), owned: false)

proc topLevelWidget*(self: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_topLevelWidget(self.h), owned: false)

proc palette*(self: gen_qwidget_types.QWidget): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQWidget_palette(self.h), owned: false)

proc setPalette*(self: gen_qwidget_types.QWidget, palette: gen_qpalette_types.QPalette): void =
  fcQWidget_setPalette(self.h, palette.h)

proc setBackgroundRole*(self: gen_qwidget_types.QWidget, backgroundRole: cint): void =
  fcQWidget_setBackgroundRole(self.h, cint(backgroundRole))

proc backgroundRole*(self: gen_qwidget_types.QWidget): cint =
  cint(fcQWidget_backgroundRole(self.h))

proc setForegroundRole*(self: gen_qwidget_types.QWidget, foregroundRole: cint): void =
  fcQWidget_setForegroundRole(self.h, cint(foregroundRole))

proc foregroundRole*(self: gen_qwidget_types.QWidget): cint =
  cint(fcQWidget_foregroundRole(self.h))

proc font*(self: gen_qwidget_types.QWidget): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQWidget_font(self.h), owned: false)

proc setFont*(self: gen_qwidget_types.QWidget, font: gen_qfont_types.QFont): void =
  fcQWidget_setFont(self.h, font.h)

proc fontMetrics*(self: gen_qwidget_types.QWidget): gen_qfontmetrics_types.QFontMetrics =
  gen_qfontmetrics_types.QFontMetrics(h: fcQWidget_fontMetrics(self.h), owned: true)

proc fontInfo*(self: gen_qwidget_types.QWidget): gen_qfontinfo_types.QFontInfo =
  gen_qfontinfo_types.QFontInfo(h: fcQWidget_fontInfo(self.h), owned: true)

proc cursor*(self: gen_qwidget_types.QWidget): gen_qcursor_types.QCursor =
  gen_qcursor_types.QCursor(h: fcQWidget_cursor(self.h), owned: true)

proc setCursor*(self: gen_qwidget_types.QWidget, cursor: gen_qcursor_types.QCursor): void =
  fcQWidget_setCursor(self.h, cursor.h)

proc unsetCursor*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_unsetCursor(self.h)

proc setMouseTracking*(self: gen_qwidget_types.QWidget, enable: bool): void =
  fcQWidget_setMouseTracking(self.h, enable)

proc hasMouseTracking*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_hasMouseTracking(self.h)

proc underMouse*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_underMouse(self.h)

proc setTabletTracking*(self: gen_qwidget_types.QWidget, enable: bool): void =
  fcQWidget_setTabletTracking(self.h, enable)

proc hasTabletTracking*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_hasTabletTracking(self.h)

proc setMask*(self: gen_qwidget_types.QWidget, mask: gen_qbitmap_types.QBitmap): void =
  fcQWidget_setMask(self.h, mask.h)

proc setMask*(self: gen_qwidget_types.QWidget, mask: gen_qregion_types.QRegion): void =
  fcQWidget_setMaskWithMask(self.h, mask.h)

proc mask*(self: gen_qwidget_types.QWidget): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQWidget_mask(self.h), owned: true)

proc clearMask*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_clearMask(self.h)

proc render*(self: gen_qwidget_types.QWidget, target: gen_qpaintdevice_types.QPaintDevice): void =
  fcQWidget_render(self.h, target.h)

proc render*(self: gen_qwidget_types.QWidget, painter: gen_qpainter_types.QPainter): void =
  fcQWidget_renderWithPainter(self.h, painter.h)

proc grab*(self: gen_qwidget_types.QWidget): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQWidget_grab(self.h), owned: true)

proc graphicsEffect*(self: gen_qwidget_types.QWidget): gen_qgraphicseffect_types.QGraphicsEffect =
  gen_qgraphicseffect_types.QGraphicsEffect(h: fcQWidget_graphicsEffect(self.h), owned: false)

proc setGraphicsEffect*(self: gen_qwidget_types.QWidget, effect: gen_qgraphicseffect_types.QGraphicsEffect): void =
  fcQWidget_setGraphicsEffect(self.h, effect.h)

proc grabGesture*(self: gen_qwidget_types.QWidget, typeVal: cint): void =
  fcQWidget_grabGesture(self.h, cint(typeVal))

proc ungrabGesture*(self: gen_qwidget_types.QWidget, typeVal: cint): void =
  fcQWidget_ungrabGesture(self.h, cint(typeVal))

proc setWindowTitle*(self: gen_qwidget_types.QWidget, windowTitle: openArray[char]): void =
  fcQWidget_setWindowTitle(self.h, struct_miqt_string(data: if len(windowTitle) > 0: addr windowTitle[0] else: nil, len: csize_t(len(windowTitle))))

proc setStyleSheet*(self: gen_qwidget_types.QWidget, styleSheet: openArray[char]): void =
  fcQWidget_setStyleSheet(self.h, struct_miqt_string(data: if len(styleSheet) > 0: addr styleSheet[0] else: nil, len: csize_t(len(styleSheet))))

proc styleSheet*(self: gen_qwidget_types.QWidget): string =
  let v_ms = fcQWidget_styleSheet(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc windowTitle*(self: gen_qwidget_types.QWidget): string =
  let v_ms = fcQWidget_windowTitle(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setWindowIcon*(self: gen_qwidget_types.QWidget, icon: gen_qicon_types.QIcon): void =
  fcQWidget_setWindowIcon(self.h, icon.h)

proc windowIcon*(self: gen_qwidget_types.QWidget): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQWidget_windowIcon(self.h), owned: true)

proc setWindowIconText*(self: gen_qwidget_types.QWidget, windowIconText: openArray[char]): void =
  fcQWidget_setWindowIconText(self.h, struct_miqt_string(data: if len(windowIconText) > 0: addr windowIconText[0] else: nil, len: csize_t(len(windowIconText))))

proc windowIconText*(self: gen_qwidget_types.QWidget): string =
  let v_ms = fcQWidget_windowIconText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setWindowRole*(self: gen_qwidget_types.QWidget, windowRole: openArray[char]): void =
  fcQWidget_setWindowRole(self.h, struct_miqt_string(data: if len(windowRole) > 0: addr windowRole[0] else: nil, len: csize_t(len(windowRole))))

proc windowRole*(self: gen_qwidget_types.QWidget): string =
  let v_ms = fcQWidget_windowRole(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setWindowFilePath*(self: gen_qwidget_types.QWidget, filePath: openArray[char]): void =
  fcQWidget_setWindowFilePath(self.h, struct_miqt_string(data: if len(filePath) > 0: addr filePath[0] else: nil, len: csize_t(len(filePath))))

proc windowFilePath*(self: gen_qwidget_types.QWidget): string =
  let v_ms = fcQWidget_windowFilePath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setWindowOpacity*(self: gen_qwidget_types.QWidget, level: float64): void =
  fcQWidget_setWindowOpacity(self.h, level)

proc windowOpacity*(self: gen_qwidget_types.QWidget): float64 =
  fcQWidget_windowOpacity(self.h)

proc isWindowModified*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_isWindowModified(self.h)

proc setToolTip*(self: gen_qwidget_types.QWidget, toolTip: openArray[char]): void =
  fcQWidget_setToolTip(self.h, struct_miqt_string(data: if len(toolTip) > 0: addr toolTip[0] else: nil, len: csize_t(len(toolTip))))

proc toolTip*(self: gen_qwidget_types.QWidget): string =
  let v_ms = fcQWidget_toolTip(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setToolTipDuration*(self: gen_qwidget_types.QWidget, msec: cint): void =
  fcQWidget_setToolTipDuration(self.h, msec)

proc toolTipDuration*(self: gen_qwidget_types.QWidget): cint =
  fcQWidget_toolTipDuration(self.h)

proc setStatusTip*(self: gen_qwidget_types.QWidget, statusTip: openArray[char]): void =
  fcQWidget_setStatusTip(self.h, struct_miqt_string(data: if len(statusTip) > 0: addr statusTip[0] else: nil, len: csize_t(len(statusTip))))

proc statusTip*(self: gen_qwidget_types.QWidget): string =
  let v_ms = fcQWidget_statusTip(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: gen_qwidget_types.QWidget, whatsThis: openArray[char]): void =
  fcQWidget_setWhatsThis(self.h, struct_miqt_string(data: if len(whatsThis) > 0: addr whatsThis[0] else: nil, len: csize_t(len(whatsThis))))

proc whatsThis*(self: gen_qwidget_types.QWidget): string =
  let v_ms = fcQWidget_whatsThis(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc accessibleName*(self: gen_qwidget_types.QWidget): string =
  let v_ms = fcQWidget_accessibleName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setAccessibleName*(self: gen_qwidget_types.QWidget, name: openArray[char]): void =
  fcQWidget_setAccessibleName(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc accessibleDescription*(self: gen_qwidget_types.QWidget): string =
  let v_ms = fcQWidget_accessibleDescription(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setAccessibleDescription*(self: gen_qwidget_types.QWidget, description: openArray[char]): void =
  fcQWidget_setAccessibleDescription(self.h, struct_miqt_string(data: if len(description) > 0: addr description[0] else: nil, len: csize_t(len(description))))

proc setLayoutDirection*(self: gen_qwidget_types.QWidget, direction: cint): void =
  fcQWidget_setLayoutDirection(self.h, cint(direction))

proc layoutDirection*(self: gen_qwidget_types.QWidget): cint =
  cint(fcQWidget_layoutDirection(self.h))

proc unsetLayoutDirection*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_unsetLayoutDirection(self.h)

proc setLocale*(self: gen_qwidget_types.QWidget, locale: gen_qlocale_types.QLocale): void =
  fcQWidget_setLocale(self.h, locale.h)

proc locale*(self: gen_qwidget_types.QWidget): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQWidget_locale(self.h), owned: true)

proc unsetLocale*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_unsetLocale(self.h)

proc isRightToLeft*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_isRightToLeft(self.h)

proc isLeftToRight*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_isLeftToRight(self.h)

proc setFocus*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_setFocus(self.h)

proc isActiveWindow*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_isActiveWindow(self.h)

proc activateWindow*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_activateWindow(self.h)

proc clearFocus*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_clearFocus(self.h)

proc setFocus*(self: gen_qwidget_types.QWidget, reason: cint): void =
  fcQWidget_setFocusWithReason(self.h, cint(reason))

proc focusPolicy*(self: gen_qwidget_types.QWidget): cint =
  cint(fcQWidget_focusPolicy(self.h))

proc setFocusPolicy*(self: gen_qwidget_types.QWidget, policy: cint): void =
  fcQWidget_setFocusPolicy(self.h, cint(policy))

proc hasFocus*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_hasFocus(self.h)

proc setTabOrder*(_: type gen_qwidget_types.QWidget, param1: gen_qwidget_types.QWidget, param2: gen_qwidget_types.QWidget): void =
  fcQWidget_setTabOrder(param1.h, param2.h)

proc setFocusProxy*(self: gen_qwidget_types.QWidget, focusProxy: gen_qwidget_types.QWidget): void =
  fcQWidget_setFocusProxy(self.h, focusProxy.h)

proc focusProxy*(self: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_focusProxy(self.h), owned: false)

proc contextMenuPolicy*(self: gen_qwidget_types.QWidget): cint =
  cint(fcQWidget_contextMenuPolicy(self.h))

proc setContextMenuPolicy*(self: gen_qwidget_types.QWidget, policy: cint): void =
  fcQWidget_setContextMenuPolicy(self.h, cint(policy))

proc grabMouse*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_grabMouse(self.h)

proc grabMouse*(self: gen_qwidget_types.QWidget, param1: gen_qcursor_types.QCursor): void =
  fcQWidget_grabMouseWithQCursor(self.h, param1.h)

proc releaseMouse*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_releaseMouse(self.h)

proc grabKeyboard*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_grabKeyboard(self.h)

proc releaseKeyboard*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_releaseKeyboard(self.h)

proc grabShortcut*(self: gen_qwidget_types.QWidget, key: gen_qkeysequence_types.QKeySequence): cint =
  fcQWidget_grabShortcut(self.h, key.h)

proc releaseShortcut*(self: gen_qwidget_types.QWidget, id: cint): void =
  fcQWidget_releaseShortcut(self.h, id)

proc setShortcutEnabled*(self: gen_qwidget_types.QWidget, id: cint): void =
  fcQWidget_setShortcutEnabled(self.h, id)

proc setShortcutAutoRepeat*(self: gen_qwidget_types.QWidget, id: cint): void =
  fcQWidget_setShortcutAutoRepeat(self.h, id)

proc mouseGrabber*(_: type gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_mouseGrabber(), owned: false)

proc keyboardGrabber*(_: type gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_keyboardGrabber(), owned: false)

proc updatesEnabled*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_updatesEnabled(self.h)

proc setUpdatesEnabled*(self: gen_qwidget_types.QWidget, enable: bool): void =
  fcQWidget_setUpdatesEnabled(self.h, enable)

proc graphicsProxyWidget*(self: gen_qwidget_types.QWidget): gen_qgraphicsproxywidget_types.QGraphicsProxyWidget =
  gen_qgraphicsproxywidget_types.QGraphicsProxyWidget(h: fcQWidget_graphicsProxyWidget(self.h), owned: false)

proc update*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_update(self.h)

proc repaint*(self: gen_qwidget_types.QWidget): void =
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

proc show*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_show(self.h)

proc hide*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_hide(self.h)

proc showMinimized*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_showMinimized(self.h)

proc showMaximized*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_showMaximized(self.h)

proc showFullScreen*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_showFullScreen(self.h)

proc showNormal*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_showNormal(self.h)

proc close*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_close(self.h)

proc raiseX*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_raiseX(self.h)

proc lower*(self: gen_qwidget_types.QWidget): void =
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

proc saveGeometry*(self: gen_qwidget_types.QWidget): seq[byte] =
  var v_bytearray = fcQWidget_saveGeometry(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc restoreGeometry*(self: gen_qwidget_types.QWidget, geometry: openArray[byte]): bool =
  fcQWidget_restoreGeometry(self.h, struct_miqt_string(data: cast[cstring](if len(geometry) == 0: nil else: unsafeAddr geometry[0]), len: csize_t(len(geometry))))

proc adjustSize*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_adjustSize(self.h)

proc isVisible*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_isVisible(self.h)

proc isVisibleTo*(self: gen_qwidget_types.QWidget, param1: gen_qwidget_types.QWidget): bool =
  fcQWidget_isVisibleTo(self.h, param1.h)

proc isHidden*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_isHidden(self.h)

proc isMinimized*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_isMinimized(self.h)

proc isMaximized*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_isMaximized(self.h)

proc isFullScreen*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_isFullScreen(self.h)

proc windowState*(self: gen_qwidget_types.QWidget): cint =
  cint(fcQWidget_windowState(self.h))

proc setWindowState*(self: gen_qwidget_types.QWidget, state: cint): void =
  fcQWidget_setWindowState(self.h, cint(state))

proc overrideWindowState*(self: gen_qwidget_types.QWidget, state: cint): void =
  fcQWidget_overrideWindowState(self.h, cint(state))

proc sizeHint*(self: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_minimumSizeHint(self.h), owned: true)

proc sizePolicy*(self: gen_qwidget_types.QWidget): gen_qsizepolicy_types.QSizePolicy =
  gen_qsizepolicy_types.QSizePolicy(h: fcQWidget_sizePolicy(self.h), owned: true)

proc setSizePolicy*(self: gen_qwidget_types.QWidget, sizePolicy: gen_qsizepolicy_types.QSizePolicy): void =
  fcQWidget_setSizePolicy(self.h, sizePolicy.h)

proc setSizePolicy*(self: gen_qwidget_types.QWidget, horizontal: cint, vertical: cint): void =
  fcQWidget_setSizePolicy2(self.h, cint(horizontal), cint(vertical))

proc heightForWidth*(self: gen_qwidget_types.QWidget, param1: cint): cint =
  fcQWidget_heightForWidth(self.h, param1)

proc hasHeightForWidth*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_hasHeightForWidth(self.h)

proc visibleRegion*(self: gen_qwidget_types.QWidget): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQWidget_visibleRegion(self.h), owned: true)

proc setContentsMargins*(self: gen_qwidget_types.QWidget, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQWidget_setContentsMargins(self.h, left, top, right, bottom)

proc setContentsMargins*(self: gen_qwidget_types.QWidget, margins: gen_qmargins_types.QMargins): void =
  fcQWidget_setContentsMarginsWithMargins(self.h, margins.h)

proc contentsMargins*(self: gen_qwidget_types.QWidget): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQWidget_contentsMargins(self.h), owned: true)

proc contentsRect*(self: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidget_contentsRect(self.h), owned: true)

proc layout*(self: gen_qwidget_types.QWidget): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQWidget_layout(self.h), owned: false)

proc setLayout*(self: gen_qwidget_types.QWidget, layout: gen_qlayout_types.QLayout): void =
  fcQWidget_setLayout(self.h, layout.h)

proc updateGeometry*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_updateGeometry(self.h)

proc setParent*(self: gen_qwidget_types.QWidget, parent: gen_qwidget_types.QWidget): void =
  fcQWidget_setParent(self.h, parent.h)

proc setParent*(self: gen_qwidget_types.QWidget, parent: gen_qwidget_types.QWidget, f: cint): void =
  fcQWidget_setParent2(self.h, parent.h, cint(f))

proc scroll*(self: gen_qwidget_types.QWidget, dx: cint, dy: cint): void =
  fcQWidget_scroll(self.h, dx, dy)

proc scroll*(self: gen_qwidget_types.QWidget, dx: cint, dy: cint, param3: gen_qrect_types.QRect): void =
  fcQWidget_scroll2(self.h, dx, dy, param3.h)

proc focusWidget*(self: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_focusWidget(self.h), owned: false)

proc nextInFocusChain*(self: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_nextInFocusChain(self.h), owned: false)

proc previousInFocusChain*(self: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_previousInFocusChain(self.h), owned: false)

proc acceptDrops*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_acceptDrops(self.h)

proc setAcceptDrops*(self: gen_qwidget_types.QWidget, on: bool): void =
  fcQWidget_setAcceptDrops(self.h, on)

proc addAction*(self: gen_qwidget_types.QWidget, action: gen_qaction_types.QAction): void =
  fcQWidget_addAction(self.h, action.h)

proc addActions*(self: gen_qwidget_types.QWidget, actions: openArray[gen_qaction_types.QAction]): void =
  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  fcQWidget_addActions(self.h, struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])))

proc insertActions*(self: gen_qwidget_types.QWidget, before: gen_qaction_types.QAction, actions: openArray[gen_qaction_types.QAction]): void =
  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  fcQWidget_insertActions(self.h, before.h, struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])))

proc insertAction*(self: gen_qwidget_types.QWidget, before: gen_qaction_types.QAction, action: gen_qaction_types.QAction): void =
  fcQWidget_insertAction(self.h, before.h, action.h)

proc removeAction*(self: gen_qwidget_types.QWidget, action: gen_qaction_types.QAction): void =
  fcQWidget_removeAction(self.h, action.h)

proc actions*(self: gen_qwidget_types.QWidget): seq[gen_qaction_types.QAction] =
  var v_ma = fcQWidget_actions(self.h)
  var vx_ret = newSeq[gen_qaction_types.QAction](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaction_types.QAction(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc addAction*(self: gen_qwidget_types.QWidget, text: openArray[char]): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQWidget_addActionWithText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: false)

proc addAction*(self: gen_qwidget_types.QWidget, icon: gen_qicon_types.QIcon, text: openArray[char]): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQWidget_addAction2(self.h, icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: false)

proc addAction*(self: gen_qwidget_types.QWidget, text: openArray[char], shortcut: gen_qkeysequence_types.QKeySequence): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQWidget_addAction3(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), shortcut.h), owned: false)

proc addAction*(self: gen_qwidget_types.QWidget, icon: gen_qicon_types.QIcon, text: openArray[char], shortcut: gen_qkeysequence_types.QKeySequence): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQWidget_addAction4(self.h, icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), shortcut.h), owned: false)

proc parentWidget*(self: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_parentWidget(self.h), owned: false)

proc setWindowFlags*(self: gen_qwidget_types.QWidget, typeVal: cint): void =
  fcQWidget_setWindowFlags(self.h, cint(typeVal))

proc windowFlags*(self: gen_qwidget_types.QWidget): cint =
  cint(fcQWidget_windowFlags(self.h))

proc setWindowFlag*(self: gen_qwidget_types.QWidget, param1: cint): void =
  fcQWidget_setWindowFlag(self.h, cint(param1))

proc overrideWindowFlags*(self: gen_qwidget_types.QWidget, typeVal: cint): void =
  fcQWidget_overrideWindowFlags(self.h, cint(typeVal))

proc windowType*(self: gen_qwidget_types.QWidget): cint =
  cint(fcQWidget_windowType(self.h))

proc find*(_: type gen_qwidget_types.QWidget, param1: uint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_find(param1), owned: false)

proc childAt*(self: gen_qwidget_types.QWidget, x: cint, y: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_childAt(self.h, x, y), owned: false)

proc childAt*(self: gen_qwidget_types.QWidget, p: gen_qpoint_types.QPoint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_childAtWithQPoint(self.h, p.h), owned: false)

proc setAttribute*(self: gen_qwidget_types.QWidget, param1: cint): void =
  fcQWidget_setAttribute(self.h, cint(param1))

proc testAttribute*(self: gen_qwidget_types.QWidget, param1: cint): bool =
  fcQWidget_testAttribute(self.h, cint(param1))

proc paintEngine*(self: gen_qwidget_types.QWidget): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQWidget_paintEngine(self.h), owned: false)

proc ensurePolished*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_ensurePolished(self.h)

proc isAncestorOf*(self: gen_qwidget_types.QWidget, child: gen_qwidget_types.QWidget): bool =
  fcQWidget_isAncestorOf(self.h, child.h)

proc autoFillBackground*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_autoFillBackground(self.h)

proc setAutoFillBackground*(self: gen_qwidget_types.QWidget, enabled: bool): void =
  fcQWidget_setAutoFillBackground(self.h, enabled)

proc backingStore*(self: gen_qwidget_types.QWidget): gen_qbackingstore_types.QBackingStore =
  gen_qbackingstore_types.QBackingStore(h: fcQWidget_backingStore(self.h), owned: false)

proc windowHandle*(self: gen_qwidget_types.QWidget): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQWidget_windowHandle(self.h), owned: false)

proc screen*(self: gen_qwidget_types.QWidget): gen_qscreen_types.QScreen =
  gen_qscreen_types.QScreen(h: fcQWidget_screen(self.h), owned: false)

proc setScreen*(self: gen_qwidget_types.QWidget, screen: gen_qscreen_types.QScreen): void =
  fcQWidget_setScreen(self.h, screen.h)

proc createWindowContainer*(_: type gen_qwidget_types.QWidget, window: gen_qwindow_types.QWindow): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_createWindowContainer(window.h), owned: false)

proc windowTitleChanged*(self: gen_qwidget_types.QWidget, title: openArray[char]): void =
  fcQWidget_windowTitleChanged(self.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))))

type QWidgetwindowTitleChangedSlot* = proc(title: openArray[char])
proc cQWidget_slot_callback_windowTitleChanged(slot: int, title: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QWidgetwindowTitleChangedSlot](cast[pointer](slot))
  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(vtitle_ms)
  c_free(vtitle_ms.data)
  let slotval1 = vtitlex_ret

  nimfunc[](slotval1)

proc cQWidget_slot_callback_windowTitleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWidgetwindowTitleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwindowTitleChanged*(self: gen_qwidget_types.QWidget, slot: QWidgetwindowTitleChangedSlot) =
  var tmp = new QWidgetwindowTitleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_connect_windowTitleChanged(self.h, cast[int](addr tmp[]), cQWidget_slot_callback_windowTitleChanged, cQWidget_slot_callback_windowTitleChanged_release)

proc windowIconChanged*(self: gen_qwidget_types.QWidget, icon: gen_qicon_types.QIcon): void =
  fcQWidget_windowIconChanged(self.h, icon.h)

type QWidgetwindowIconChangedSlot* = proc(icon: gen_qicon_types.QIcon)
proc cQWidget_slot_callback_windowIconChanged(slot: int, icon: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWidgetwindowIconChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qicon_types.QIcon(h: icon, owned: false)

  nimfunc[](slotval1)

proc cQWidget_slot_callback_windowIconChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWidgetwindowIconChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwindowIconChanged*(self: gen_qwidget_types.QWidget, slot: QWidgetwindowIconChangedSlot) =
  var tmp = new QWidgetwindowIconChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_connect_windowIconChanged(self.h, cast[int](addr tmp[]), cQWidget_slot_callback_windowIconChanged, cQWidget_slot_callback_windowIconChanged_release)

proc windowIconTextChanged*(self: gen_qwidget_types.QWidget, iconText: openArray[char]): void =
  fcQWidget_windowIconTextChanged(self.h, struct_miqt_string(data: if len(iconText) > 0: addr iconText[0] else: nil, len: csize_t(len(iconText))))

type QWidgetwindowIconTextChangedSlot* = proc(iconText: openArray[char])
proc cQWidget_slot_callback_windowIconTextChanged(slot: int, iconText: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QWidgetwindowIconTextChangedSlot](cast[pointer](slot))
  let viconText_ms = iconText
  let viconTextx_ret = string.fromBytes(viconText_ms)
  c_free(viconText_ms.data)
  let slotval1 = viconTextx_ret

  nimfunc[](slotval1)

proc cQWidget_slot_callback_windowIconTextChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWidgetwindowIconTextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwindowIconTextChanged*(self: gen_qwidget_types.QWidget, slot: QWidgetwindowIconTextChangedSlot) =
  var tmp = new QWidgetwindowIconTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_connect_windowIconTextChanged(self.h, cast[int](addr tmp[]), cQWidget_slot_callback_windowIconTextChanged, cQWidget_slot_callback_windowIconTextChanged_release)

proc customContextMenuRequested*(self: gen_qwidget_types.QWidget, pos: gen_qpoint_types.QPoint): void =
  fcQWidget_customContextMenuRequested(self.h, pos.h)

type QWidgetcustomContextMenuRequestedSlot* = proc(pos: gen_qpoint_types.QPoint)
proc cQWidget_slot_callback_customContextMenuRequested(slot: int, pos: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWidgetcustomContextMenuRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)

  nimfunc[](slotval1)

proc cQWidget_slot_callback_customContextMenuRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWidgetcustomContextMenuRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncustomContextMenuRequested*(self: gen_qwidget_types.QWidget, slot: QWidgetcustomContextMenuRequestedSlot) =
  var tmp = new QWidgetcustomContextMenuRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWidget_connect_customContextMenuRequested(self.h, cast[int](addr tmp[]), cQWidget_slot_callback_customContextMenuRequested, cQWidget_slot_callback_customContextMenuRequested_release)

proc inputMethodQuery*(self: gen_qwidget_types.QWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWidget_inputMethodQuery(self.h, cint(param1)), owned: true)

proc inputMethodHints*(self: gen_qwidget_types.QWidget): cint =
  cint(fcQWidget_inputMethodHints(self.h))

proc setInputMethodHints*(self: gen_qwidget_types.QWidget, hints: cint): void =
  fcQWidget_setInputMethodHints(self.h, cint(hints))

proc tr*(_: type gen_qwidget_types.QWidget, s: cstring, c: cstring): string =
  let v_ms = fcQWidget_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwidget_types.QWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
  gen_qpixmap_types.QPixmap(h: fcQWidget_grab1(self.h, rectangle.h), owned: true)

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
  gen_qwidget_types.QWidget(h: fcQWidget_createWindowContainer2(window.h, parent.h), owned: false)

proc createWindowContainer*(_: type gen_qwidget_types.QWidget, window: gen_qwindow_types.QWindow, parent: gen_qwidget_types.QWidget, flags: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidget_createWindowContainer3(window.h, parent.h, cint(flags)), owned: false)

type QWidgetmetaObjectProc* = proc(self: QWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWidgetmetacastProc* = proc(self: QWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QWidgetmetacallProc* = proc(self: QWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWidgetdevTypeProc* = proc(self: QWidget): cint {.raises: [], gcsafe.}
type QWidgetsetVisibleProc* = proc(self: QWidget, visible: bool): void {.raises: [], gcsafe.}
type QWidgetsizeHintProc* = proc(self: QWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWidgetminimumSizeHintProc* = proc(self: QWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWidgetheightForWidthProc* = proc(self: QWidget, param1: cint): cint {.raises: [], gcsafe.}
type QWidgethasHeightForWidthProc* = proc(self: QWidget): bool {.raises: [], gcsafe.}
type QWidgetpaintEngineProc* = proc(self: QWidget): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QWidgeteventProc* = proc(self: QWidget, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWidgetmousePressEventProc* = proc(self: QWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWidgetmouseReleaseEventProc* = proc(self: QWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWidgetmouseDoubleClickEventProc* = proc(self: QWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWidgetmouseMoveEventProc* = proc(self: QWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWidgetwheelEventProc* = proc(self: QWidget, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QWidgetkeyPressEventProc* = proc(self: QWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QWidgetkeyReleaseEventProc* = proc(self: QWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QWidgetfocusInEventProc* = proc(self: QWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QWidgetfocusOutEventProc* = proc(self: QWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QWidgetenterEventProc* = proc(self: QWidget, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QWidgetleaveEventProc* = proc(self: QWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWidgetpaintEventProc* = proc(self: QWidget, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QWidgetmoveEventProc* = proc(self: QWidget, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QWidgetresizeEventProc* = proc(self: QWidget, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QWidgetcloseEventProc* = proc(self: QWidget, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QWidgetcontextMenuEventProc* = proc(self: QWidget, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QWidgettabletEventProc* = proc(self: QWidget, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QWidgetactionEventProc* = proc(self: QWidget, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QWidgetdragEnterEventProc* = proc(self: QWidget, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QWidgetdragMoveEventProc* = proc(self: QWidget, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QWidgetdragLeaveEventProc* = proc(self: QWidget, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QWidgetdropEventProc* = proc(self: QWidget, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QWidgetshowEventProc* = proc(self: QWidget, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QWidgethideEventProc* = proc(self: QWidget, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QWidgetnativeEventProc* = proc(self: QWidget, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QWidgetchangeEventProc* = proc(self: QWidget, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWidgetmetricProc* = proc(self: QWidget, param1: cint): cint {.raises: [], gcsafe.}
type QWidgetinitPainterProc* = proc(self: QWidget, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QWidgetredirectedProc* = proc(self: QWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QWidgetsharedPainterProc* = proc(self: QWidget): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QWidgetinputMethodEventProc* = proc(self: QWidget, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QWidgetinputMethodQueryProc* = proc(self: QWidget, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QWidgetfocusNextPrevChildProc* = proc(self: QWidget, next: bool): bool {.raises: [], gcsafe.}
type QWidgeteventFilterProc* = proc(self: QWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWidgettimerEventProc* = proc(self: QWidget, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWidgetchildEventProc* = proc(self: QWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWidgetcustomEventProc* = proc(self: QWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWidgetconnectNotifyProc* = proc(self: QWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWidgetdisconnectNotifyProc* = proc(self: QWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWidgetVTable* {.inheritable, pure.} = object
  vtbl: cQWidgetVTable
  metaObject*: QWidgetmetaObjectProc
  metacast*: QWidgetmetacastProc
  metacall*: QWidgetmetacallProc
  devType*: QWidgetdevTypeProc
  setVisible*: QWidgetsetVisibleProc
  sizeHint*: QWidgetsizeHintProc
  minimumSizeHint*: QWidgetminimumSizeHintProc
  heightForWidth*: QWidgetheightForWidthProc
  hasHeightForWidth*: QWidgethasHeightForWidthProc
  paintEngine*: QWidgetpaintEngineProc
  event*: QWidgeteventProc
  mousePressEvent*: QWidgetmousePressEventProc
  mouseReleaseEvent*: QWidgetmouseReleaseEventProc
  mouseDoubleClickEvent*: QWidgetmouseDoubleClickEventProc
  mouseMoveEvent*: QWidgetmouseMoveEventProc
  wheelEvent*: QWidgetwheelEventProc
  keyPressEvent*: QWidgetkeyPressEventProc
  keyReleaseEvent*: QWidgetkeyReleaseEventProc
  focusInEvent*: QWidgetfocusInEventProc
  focusOutEvent*: QWidgetfocusOutEventProc
  enterEvent*: QWidgetenterEventProc
  leaveEvent*: QWidgetleaveEventProc
  paintEvent*: QWidgetpaintEventProc
  moveEvent*: QWidgetmoveEventProc
  resizeEvent*: QWidgetresizeEventProc
  closeEvent*: QWidgetcloseEventProc
  contextMenuEvent*: QWidgetcontextMenuEventProc
  tabletEvent*: QWidgettabletEventProc
  actionEvent*: QWidgetactionEventProc
  dragEnterEvent*: QWidgetdragEnterEventProc
  dragMoveEvent*: QWidgetdragMoveEventProc
  dragLeaveEvent*: QWidgetdragLeaveEventProc
  dropEvent*: QWidgetdropEventProc
  showEvent*: QWidgetshowEventProc
  hideEvent*: QWidgethideEventProc
  nativeEvent*: QWidgetnativeEventProc
  changeEvent*: QWidgetchangeEventProc
  metric*: QWidgetmetricProc
  initPainter*: QWidgetinitPainterProc
  redirected*: QWidgetredirectedProc
  sharedPainter*: QWidgetsharedPainterProc
  inputMethodEvent*: QWidgetinputMethodEventProc
  inputMethodQuery*: QWidgetinputMethodQueryProc
  focusNextPrevChild*: QWidgetfocusNextPrevChildProc
  eventFilter*: QWidgeteventFilterProc
  timerEvent*: QWidgettimerEventProc
  childEvent*: QWidgetchildEventProc
  customEvent*: QWidgetcustomEventProc
  connectNotify*: QWidgetconnectNotifyProc
  disconnectNotify*: QWidgetdisconnectNotifyProc
proc QWidgetmetaObject*(self: gen_qwidget_types.QWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWidget_virtualbase_metaObject(self.h), owned: false)

proc cQWidget_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWidgetmetacast*(self: gen_qwidget_types.QWidget, param1: cstring): pointer =
  fcQWidget_virtualbase_metacast(self.h, param1)

proc cQWidget_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWidgetmetacall*(self: gen_qwidget_types.QWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQWidget_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWidgetdevType*(self: gen_qwidget_types.QWidget): cint =
  fcQWidget_virtualbase_devType(self.h)

proc cQWidget_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QWidgetsetVisible*(self: gen_qwidget_types.QWidget, visible: bool): void =
  fcQWidget_virtualbase_setVisible(self.h, visible)

proc cQWidget_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QWidgetsizeHint*(self: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_virtualbase_sizeHint(self.h), owned: true)

proc cQWidget_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWidgetminimumSizeHint*(self: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidget_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQWidget_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWidgetheightForWidth*(self: gen_qwidget_types.QWidget, param1: cint): cint =
  fcQWidget_virtualbase_heightForWidth(self.h, param1)

proc cQWidget_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QWidgethasHeightForWidth*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_virtualbase_hasHeightForWidth(self.h)

proc cQWidget_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QWidgetpaintEngine*(self: gen_qwidget_types.QWidget): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQWidget_virtualbase_paintEngine(self.h), owned: false)

proc cQWidget_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWidgetevent*(self: gen_qwidget_types.QWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQWidget_virtualbase_event(self.h, event.h)

proc cQWidget_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWidgetmousePressEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQWidget_virtualbase_mousePressEvent(self.h, event.h)

proc cQWidget_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QWidgetmouseReleaseEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQWidget_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QWidgetmouseDoubleClickEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQWidget_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QWidgetmouseMoveEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQWidget_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QWidgetwheelEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QWheelEvent): void =
  fcQWidget_virtualbase_wheelEvent(self.h, event.h)

proc cQWidget_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QWidgetkeyPressEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQWidget_virtualbase_keyPressEvent(self.h, event.h)

proc cQWidget_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QWidgetkeyReleaseEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQWidget_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QWidgetfocusInEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQWidget_virtualbase_focusInEvent(self.h, event.h)

proc cQWidget_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QWidgetfocusOutEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQWidget_virtualbase_focusOutEvent(self.h, event.h)

proc cQWidget_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QWidgetenterEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QEnterEvent): void =
  fcQWidget_virtualbase_enterEvent(self.h, event.h)

proc cQWidget_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QWidgetleaveEvent*(self: gen_qwidget_types.QWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQWidget_virtualbase_leaveEvent(self.h, event.h)

proc cQWidget_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QWidgetpaintEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QPaintEvent): void =
  fcQWidget_virtualbase_paintEvent(self.h, event.h)

proc cQWidget_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QWidgetmoveEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQWidget_virtualbase_moveEvent(self.h, event.h)

proc cQWidget_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QWidgetresizeEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QResizeEvent): void =
  fcQWidget_virtualbase_resizeEvent(self.h, event.h)

proc cQWidget_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QWidgetcloseEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQWidget_virtualbase_closeEvent(self.h, event.h)

proc cQWidget_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QWidgetcontextMenuEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fcQWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc cQWidget_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QWidgettabletEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQWidget_virtualbase_tabletEvent(self.h, event.h)

proc cQWidget_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QWidgetactionEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QActionEvent): void =
  fcQWidget_virtualbase_actionEvent(self.h, event.h)

proc cQWidget_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QWidgetdragEnterEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc cQWidget_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QWidgetdragMoveEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc cQWidget_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QWidgetdragLeaveEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQWidget_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QWidgetdropEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QDropEvent): void =
  fcQWidget_virtualbase_dropEvent(self.h, event.h)

proc cQWidget_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QWidgetshowEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QShowEvent): void =
  fcQWidget_virtualbase_showEvent(self.h, event.h)

proc cQWidget_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QWidgethideEvent*(self: gen_qwidget_types.QWidget, event: gen_qevent_types.QHideEvent): void =
  fcQWidget_virtualbase_hideEvent(self.h, event.h)

proc cQWidget_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QWidgetnativeEvent*(self: gen_qwidget_types.QWidget, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQWidget_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWidgetchangeEvent*(self: gen_qwidget_types.QWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQWidget_virtualbase_changeEvent(self.h, param1.h)

proc cQWidget_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QWidgetmetric*(self: gen_qwidget_types.QWidget, param1: cint): cint =
  fcQWidget_virtualbase_metric(self.h, cint(param1))

proc cQWidget_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QWidgetinitPainter*(self: gen_qwidget_types.QWidget, painter: gen_qpainter_types.QPainter): void =
  fcQWidget_virtualbase_initPainter(self.h, painter.h)

proc cQWidget_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QWidgetredirected*(self: gen_qwidget_types.QWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQWidget_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQWidget_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWidgetsharedPainter*(self: gen_qwidget_types.QWidget): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQWidget_virtualbase_sharedPainter(self.h), owned: false)

proc cQWidget_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWidgetinputMethodEvent*(self: gen_qwidget_types.QWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQWidget_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQWidget_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QWidgetinputMethodQuery*(self: gen_qwidget_types.QWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWidget_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQWidget_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWidgetfocusNextPrevChild*(self: gen_qwidget_types.QWidget, next: bool): bool =
  fcQWidget_virtualbase_focusNextPrevChild(self.h, next)

proc cQWidget_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QWidgeteventFilter*(self: gen_qwidget_types.QWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQWidget_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWidgettimerEvent*(self: gen_qwidget_types.QWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWidget_virtualbase_timerEvent(self.h, event.h)

proc cQWidget_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QWidgetchildEvent*(self: gen_qwidget_types.QWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWidget_virtualbase_childEvent(self.h, event.h)

proc cQWidget_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QWidgetcustomEvent*(self: gen_qwidget_types.QWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQWidget_virtualbase_customEvent(self.h, event.h)

proc cQWidget_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QWidgetconnectNotify*(self: gen_qwidget_types.QWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWidget_virtualbase_connectNotify(self.h, signal.h)

proc cQWidget_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QWidgetdisconnectNotify*(self: gen_qwidget_types.QWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc cQWidget_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetVTable](fcQWidget_vdata(self))
  let self = QWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWidget* {.inheritable.} = ref object of QWidget
  vtbl*: cQWidgetVTable
method metaObject*(self: VirtualQWidget): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWidgetmetaObject(self[])
proc cQWidget_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQWidget, param1: cstring): pointer {.base.} =
  QWidgetmetacast(self[], param1)
proc cQWidget_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQWidget, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWidgetmetacall(self[], param1, param2, param3)
proc cQWidget_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method devType*(self: VirtualQWidget): cint {.base.} =
  QWidgetdevType(self[])
proc cQWidget_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQWidget, visible: bool): void {.base.} =
  QWidgetsetVisible(self[], visible)
proc cQWidget_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method sizeHint*(self: VirtualQWidget): gen_qsize_types.QSize {.base.} =
  QWidgetsizeHint(self[])
proc cQWidget_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQWidget): gen_qsize_types.QSize {.base.} =
  QWidgetminimumSizeHint(self[])
proc cQWidget_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQWidget, param1: cint): cint {.base.} =
  QWidgetheightForWidth(self[], param1)
proc cQWidget_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQWidget): bool {.base.} =
  QWidgethasHeightForWidth(self[])
proc cQWidget_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQWidget): gen_qpaintengine_types.QPaintEngine {.base.} =
  QWidgetpaintEngine(self[])
proc cQWidget_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQWidget, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWidgetevent(self[], event)
proc cQWidget_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWidgetmousePressEvent(self[], event)
proc cQWidget_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWidgetmouseReleaseEvent(self[], event)
proc cQWidget_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWidgetmouseDoubleClickEvent(self[], event)
proc cQWidget_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWidgetmouseMoveEvent(self[], event)
proc cQWidget_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQWidget, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QWidgetwheelEvent(self[], event)
proc cQWidget_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QWidgetkeyPressEvent(self[], event)
proc cQWidget_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QWidgetkeyReleaseEvent(self[], event)
proc cQWidget_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QWidgetfocusInEvent(self[], event)
proc cQWidget_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QWidgetfocusOutEvent(self[], event)
proc cQWidget_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQWidget, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QWidgetenterEvent(self[], event)
proc cQWidget_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWidgetleaveEvent(self[], event)
proc cQWidget_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method paintEvent*(self: VirtualQWidget, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QWidgetpaintEvent(self[], event)
proc cQWidget_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method moveEvent*(self: VirtualQWidget, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QWidgetmoveEvent(self[], event)
proc cQWidget_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method resizeEvent*(self: VirtualQWidget, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QWidgetresizeEvent(self[], event)
proc cQWidget_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method closeEvent*(self: VirtualQWidget, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QWidgetcloseEvent(self[], event)
proc cQWidget_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQWidget, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QWidgetcontextMenuEvent(self[], event)
proc cQWidget_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQWidget, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QWidgettabletEvent(self[], event)
proc cQWidget_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQWidget, event: gen_qevent_types.QActionEvent): void {.base.} =
  QWidgetactionEvent(self[], event)
proc cQWidget_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQWidget, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QWidgetdragEnterEvent(self[], event)
proc cQWidget_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQWidget, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QWidgetdragMoveEvent(self[], event)
proc cQWidget_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQWidget, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QWidgetdragLeaveEvent(self[], event)
proc cQWidget_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQWidget, event: gen_qevent_types.QDropEvent): void {.base.} =
  QWidgetdropEvent(self[], event)
proc cQWidget_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQWidget, event: gen_qevent_types.QShowEvent): void {.base.} =
  QWidgetshowEvent(self[], event)
proc cQWidget_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQWidget, event: gen_qevent_types.QHideEvent): void {.base.} =
  QWidgethideEvent(self[], event)
proc cQWidget_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQWidget, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QWidgetnativeEvent(self[], eventType, message, resultVal)
proc cQWidget_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQWidget, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QWidgetchangeEvent(self[], param1)
proc cQWidget_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method metric*(self: VirtualQWidget, param1: cint): cint {.base.} =
  QWidgetmetric(self[], param1)
proc cQWidget_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQWidget, painter: gen_qpainter_types.QPainter): void {.base.} =
  QWidgetinitPainter(self[], painter)
proc cQWidget_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QWidgetredirected(self[], offset)
proc cQWidget_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQWidget): gen_qpainter_types.QPainter {.base.} =
  QWidgetsharedPainter(self[])
proc cQWidget_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQWidget, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QWidgetinputMethodEvent(self[], param1)
proc cQWidget_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQWidget, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QWidgetinputMethodQuery(self[], param1)
proc cQWidget_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQWidget, next: bool): bool {.base.} =
  QWidgetfocusNextPrevChild(self[], next)
proc cQWidget_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWidgeteventFilter(self[], watched, event)
proc cQWidget_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQWidget, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWidgettimerEvent(self[], event)
proc cQWidget_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQWidget, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWidgetchildEvent(self[], event)
proc cQWidget_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWidgetcustomEvent(self[], event)
proc cQWidget_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWidgetconnectNotify(self[], signal)
proc cQWidget_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWidgetdisconnectNotify(self[], signal)
proc cQWidget_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidget](fcQWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qwidget_types.QWidget): void =
  fcQWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qwidget_types.QWidget): bool =
  fcQWidget_protectedbase_focusPreviousChild(self.h)

proc updateMicroFocus*(self: gen_qwidget_types.QWidget, query: cint): void =
  fcQWidget_protectedbase_updateMicroFocus1(self.h, cint(query))

proc createX*(self: gen_qwidget_types.QWidget, param1: uint): void =
  fcQWidget_protectedbase_create1(self.h, param1)

proc createX*(self: gen_qwidget_types.QWidget, param1: uint, initializeWindow: bool): void =
  fcQWidget_protectedbase_create2(self.h, param1, initializeWindow)

proc createX*(self: gen_qwidget_types.QWidget, param1: uint, initializeWindow: bool, destroyOldWindow: bool): void =
  fcQWidget_protectedbase_create3(self.h, param1, initializeWindow, destroyOldWindow)

proc destroy*(self: gen_qwidget_types.QWidget, destroyWindow: bool): void =
  fcQWidget_protectedbase_destroy1(self.h, destroyWindow)

proc destroy*(self: gen_qwidget_types.QWidget, destroyWindow: bool, destroySubWindows: bool): void =
  fcQWidget_protectedbase_destroy2(self.h, destroyWindow, destroySubWindows)

proc sender*(self: gen_qwidget_types.QWidget): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWidget_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwidget_types.QWidget): cint =
  fcQWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwidget_types.QWidget, signal: cstring): cint =
  fcQWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwidget_types.QWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwidget_types.QWidget,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QWidgetVTable = nil): gen_qwidget_types.QWidget =
  let vtbl = if vtbl == nil: new QWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWidgetVTable](fcQWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWidget_vtable_callback_metacall
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQWidget_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWidget_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWidget_vtable_callback_disconnectNotify
  gen_qwidget_types.QWidget(h: fcQWidget_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qwidget_types.QWidget,
    vtbl: ref QWidgetVTable = nil): gen_qwidget_types.QWidget =
  let vtbl = if vtbl == nil: new QWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWidgetVTable](fcQWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWidget_vtable_callback_metacall
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQWidget_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWidget_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWidget_vtable_callback_disconnectNotify
  gen_qwidget_types.QWidget(h: fcQWidget_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qwidget_types.QWidget,
    parent: gen_qwidget_types.QWidget, f: cint,
    vtbl: ref QWidgetVTable = nil): gen_qwidget_types.QWidget =
  let vtbl = if vtbl == nil: new QWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWidgetVTable](fcQWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWidget_vtable_callback_metacall
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQWidget_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWidget_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWidget_vtable_callback_disconnectNotify
  gen_qwidget_types.QWidget(h: fcQWidget_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, cint(f)), owned: true)

const cQWidget_mvtbl = cQWidgetVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWidget()[])](self.fcQWidget_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQWidget_method_callback_metaObject,
  metacast: cQWidget_method_callback_metacast,
  metacall: cQWidget_method_callback_metacall,
  devType: cQWidget_method_callback_devType,
  setVisible: cQWidget_method_callback_setVisible,
  sizeHint: cQWidget_method_callback_sizeHint,
  minimumSizeHint: cQWidget_method_callback_minimumSizeHint,
  heightForWidth: cQWidget_method_callback_heightForWidth,
  hasHeightForWidth: cQWidget_method_callback_hasHeightForWidth,
  paintEngine: cQWidget_method_callback_paintEngine,
  event: cQWidget_method_callback_event,
  mousePressEvent: cQWidget_method_callback_mousePressEvent,
  mouseReleaseEvent: cQWidget_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQWidget_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQWidget_method_callback_mouseMoveEvent,
  wheelEvent: cQWidget_method_callback_wheelEvent,
  keyPressEvent: cQWidget_method_callback_keyPressEvent,
  keyReleaseEvent: cQWidget_method_callback_keyReleaseEvent,
  focusInEvent: cQWidget_method_callback_focusInEvent,
  focusOutEvent: cQWidget_method_callback_focusOutEvent,
  enterEvent: cQWidget_method_callback_enterEvent,
  leaveEvent: cQWidget_method_callback_leaveEvent,
  paintEvent: cQWidget_method_callback_paintEvent,
  moveEvent: cQWidget_method_callback_moveEvent,
  resizeEvent: cQWidget_method_callback_resizeEvent,
  closeEvent: cQWidget_method_callback_closeEvent,
  contextMenuEvent: cQWidget_method_callback_contextMenuEvent,
  tabletEvent: cQWidget_method_callback_tabletEvent,
  actionEvent: cQWidget_method_callback_actionEvent,
  dragEnterEvent: cQWidget_method_callback_dragEnterEvent,
  dragMoveEvent: cQWidget_method_callback_dragMoveEvent,
  dragLeaveEvent: cQWidget_method_callback_dragLeaveEvent,
  dropEvent: cQWidget_method_callback_dropEvent,
  showEvent: cQWidget_method_callback_showEvent,
  hideEvent: cQWidget_method_callback_hideEvent,
  nativeEvent: cQWidget_method_callback_nativeEvent,
  changeEvent: cQWidget_method_callback_changeEvent,
  metric: cQWidget_method_callback_metric,
  initPainter: cQWidget_method_callback_initPainter,
  redirected: cQWidget_method_callback_redirected,
  sharedPainter: cQWidget_method_callback_sharedPainter,
  inputMethodEvent: cQWidget_method_callback_inputMethodEvent,
  inputMethodQuery: cQWidget_method_callback_inputMethodQuery,
  focusNextPrevChild: cQWidget_method_callback_focusNextPrevChild,
  eventFilter: cQWidget_method_callback_eventFilter,
  timerEvent: cQWidget_method_callback_timerEvent,
  childEvent: cQWidget_method_callback_childEvent,
  customEvent: cQWidget_method_callback_customEvent,
  connectNotify: cQWidget_method_callback_connectNotify,
  disconnectNotify: cQWidget_method_callback_disconnectNotify,
)
proc create*(T: type gen_qwidget_types.QWidget,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWidget_new(addr(cQWidget_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qwidget_types.QWidget,
    inst: VirtualQWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWidget_new2(addr(cQWidget_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qwidget_types.QWidget,
    parent: gen_qwidget_types.QWidget, f: cint,
    inst: VirtualQWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWidget_new3(addr(cQWidget_mvtbl), addr(inst[]), parent.h, cint(f))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qwidget_types.QWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWidget_staticMetaObject())
