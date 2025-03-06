import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qguiapplication.cpp", cflags).}


import ./gen_qguiapplication_types
export gen_qguiapplication_types

import
  ../QtCore/gen_qcoreapplication,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ./gen_qclipboard_types,
  ./gen_qcursor_types,
  ./gen_qfont_types,
  ./gen_qicon_types,
  ./gen_qinputmethod_types,
  ./gen_qpalette_types,
  ./gen_qscreen_types,
  ./gen_qsessionmanager_types,
  ./gen_qstylehints_types,
  ./gen_qwindow_types,
  std/cmdline,
  std/os
export
  gen_qcoreapplication,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qclipboard_types,
  gen_qcursor_types,
  gen_qfont_types,
  gen_qicon_types,
  gen_qinputmethod_types,
  gen_qpalette_types,
  gen_qscreen_types,
  gen_qsessionmanager_types,
  gen_qstylehints_types,
  gen_qwindow_types

type cQGuiApplication*{.exportc: "QGuiApplication", incompleteStruct.} = object

proc fcQGuiApplication_new(argc: ptr cint, argv: cstringArray): ptr cQGuiApplication {.importc: "QGuiApplication_new".}
proc fcQGuiApplication_new2(argc: ptr cint, argv: cstringArray, param3: cint): ptr cQGuiApplication {.importc: "QGuiApplication_new2".}
proc fcQGuiApplication_metaObject(self: pointer, ): pointer {.importc: "QGuiApplication_metaObject".}
proc fcQGuiApplication_metacast(self: pointer, param1: cstring): pointer {.importc: "QGuiApplication_metacast".}
proc fcQGuiApplication_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGuiApplication_metacall".}
proc fcQGuiApplication_tr(s: cstring): struct_miqt_string {.importc: "QGuiApplication_tr".}
proc fcQGuiApplication_setApplicationDisplayName(name: struct_miqt_string): void {.importc: "QGuiApplication_setApplicationDisplayName".}
proc fcQGuiApplication_applicationDisplayName(): struct_miqt_string {.importc: "QGuiApplication_applicationDisplayName".}
proc fcQGuiApplication_setDesktopFileName(name: struct_miqt_string): void {.importc: "QGuiApplication_setDesktopFileName".}
proc fcQGuiApplication_desktopFileName(): struct_miqt_string {.importc: "QGuiApplication_desktopFileName".}
proc fcQGuiApplication_allWindows(): struct_miqt_array {.importc: "QGuiApplication_allWindows".}
proc fcQGuiApplication_topLevelWindows(): struct_miqt_array {.importc: "QGuiApplication_topLevelWindows".}
proc fcQGuiApplication_topLevelAt(pos: pointer): pointer {.importc: "QGuiApplication_topLevelAt".}
proc fcQGuiApplication_setWindowIcon(icon: pointer): void {.importc: "QGuiApplication_setWindowIcon".}
proc fcQGuiApplication_windowIcon(): pointer {.importc: "QGuiApplication_windowIcon".}
proc fcQGuiApplication_platformName(): struct_miqt_string {.importc: "QGuiApplication_platformName".}
proc fcQGuiApplication_modalWindow(): pointer {.importc: "QGuiApplication_modalWindow".}
proc fcQGuiApplication_focusWindow(): pointer {.importc: "QGuiApplication_focusWindow".}
proc fcQGuiApplication_focusObject(): pointer {.importc: "QGuiApplication_focusObject".}
proc fcQGuiApplication_primaryScreen(): pointer {.importc: "QGuiApplication_primaryScreen".}
proc fcQGuiApplication_screens(): struct_miqt_array {.importc: "QGuiApplication_screens".}
proc fcQGuiApplication_screenAt(point: pointer): pointer {.importc: "QGuiApplication_screenAt".}
proc fcQGuiApplication_devicePixelRatio(self: pointer, ): float64 {.importc: "QGuiApplication_devicePixelRatio".}
proc fcQGuiApplication_overrideCursor(): pointer {.importc: "QGuiApplication_overrideCursor".}
proc fcQGuiApplication_setOverrideCursor(overrideCursor: pointer): void {.importc: "QGuiApplication_setOverrideCursor".}
proc fcQGuiApplication_changeOverrideCursor(param1: pointer): void {.importc: "QGuiApplication_changeOverrideCursor".}
proc fcQGuiApplication_restoreOverrideCursor(): void {.importc: "QGuiApplication_restoreOverrideCursor".}
proc fcQGuiApplication_font(): pointer {.importc: "QGuiApplication_font".}
proc fcQGuiApplication_setFont(font: pointer): void {.importc: "QGuiApplication_setFont".}
proc fcQGuiApplication_clipboard(): pointer {.importc: "QGuiApplication_clipboard".}
proc fcQGuiApplication_palette(): pointer {.importc: "QGuiApplication_palette".}
proc fcQGuiApplication_setPalette(pal: pointer): void {.importc: "QGuiApplication_setPalette".}
proc fcQGuiApplication_keyboardModifiers(): cint {.importc: "QGuiApplication_keyboardModifiers".}
proc fcQGuiApplication_queryKeyboardModifiers(): cint {.importc: "QGuiApplication_queryKeyboardModifiers".}
proc fcQGuiApplication_mouseButtons(): cint {.importc: "QGuiApplication_mouseButtons".}
proc fcQGuiApplication_setLayoutDirection(direction: cint): void {.importc: "QGuiApplication_setLayoutDirection".}
proc fcQGuiApplication_layoutDirection(): cint {.importc: "QGuiApplication_layoutDirection".}
proc fcQGuiApplication_isRightToLeft(): bool {.importc: "QGuiApplication_isRightToLeft".}
proc fcQGuiApplication_isLeftToRight(): bool {.importc: "QGuiApplication_isLeftToRight".}
proc fcQGuiApplication_styleHints(): pointer {.importc: "QGuiApplication_styleHints".}
proc fcQGuiApplication_setDesktopSettingsAware(on: bool): void {.importc: "QGuiApplication_setDesktopSettingsAware".}
proc fcQGuiApplication_desktopSettingsAware(): bool {.importc: "QGuiApplication_desktopSettingsAware".}
proc fcQGuiApplication_inputMethod(): pointer {.importc: "QGuiApplication_inputMethod".}
proc fcQGuiApplication_setQuitOnLastWindowClosed(quit: bool): void {.importc: "QGuiApplication_setQuitOnLastWindowClosed".}
proc fcQGuiApplication_quitOnLastWindowClosed(): bool {.importc: "QGuiApplication_quitOnLastWindowClosed".}
proc fcQGuiApplication_applicationState(): cint {.importc: "QGuiApplication_applicationState".}
proc fcQGuiApplication_setHighDpiScaleFactorRoundingPolicy(policy: cint): void {.importc: "QGuiApplication_setHighDpiScaleFactorRoundingPolicy".}
proc fcQGuiApplication_highDpiScaleFactorRoundingPolicy(): cint {.importc: "QGuiApplication_highDpiScaleFactorRoundingPolicy".}
proc fcQGuiApplication_exec(): cint {.importc: "QGuiApplication_exec".}
proc fcQGuiApplication_notify(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QGuiApplication_notify".}
proc fcQGuiApplication_isSessionRestored(self: pointer, ): bool {.importc: "QGuiApplication_isSessionRestored".}
proc fcQGuiApplication_sessionId(self: pointer, ): struct_miqt_string {.importc: "QGuiApplication_sessionId".}
proc fcQGuiApplication_sessionKey(self: pointer, ): struct_miqt_string {.importc: "QGuiApplication_sessionKey".}
proc fcQGuiApplication_isSavingSession(self: pointer, ): bool {.importc: "QGuiApplication_isSavingSession".}
proc fcQGuiApplication_sync(): void {.importc: "QGuiApplication_sync".}
proc fcQGuiApplication_fontDatabaseChanged(self: pointer, ): void {.importc: "QGuiApplication_fontDatabaseChanged".}
proc fcQGuiApplication_connect_fontDatabaseChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_fontDatabaseChanged".}
proc fcQGuiApplication_screenAdded(self: pointer, screen: pointer): void {.importc: "QGuiApplication_screenAdded".}
proc fcQGuiApplication_connect_screenAdded(self: pointer, slot: int) {.importc: "QGuiApplication_connect_screenAdded".}
proc fcQGuiApplication_screenRemoved(self: pointer, screen: pointer): void {.importc: "QGuiApplication_screenRemoved".}
proc fcQGuiApplication_connect_screenRemoved(self: pointer, slot: int) {.importc: "QGuiApplication_connect_screenRemoved".}
proc fcQGuiApplication_primaryScreenChanged(self: pointer, screen: pointer): void {.importc: "QGuiApplication_primaryScreenChanged".}
proc fcQGuiApplication_connect_primaryScreenChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_primaryScreenChanged".}
proc fcQGuiApplication_lastWindowClosed(self: pointer, ): void {.importc: "QGuiApplication_lastWindowClosed".}
proc fcQGuiApplication_connect_lastWindowClosed(self: pointer, slot: int) {.importc: "QGuiApplication_connect_lastWindowClosed".}
proc fcQGuiApplication_focusObjectChanged(self: pointer, focusObject: pointer): void {.importc: "QGuiApplication_focusObjectChanged".}
proc fcQGuiApplication_connect_focusObjectChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_focusObjectChanged".}
proc fcQGuiApplication_focusWindowChanged(self: pointer, focusWindow: pointer): void {.importc: "QGuiApplication_focusWindowChanged".}
proc fcQGuiApplication_connect_focusWindowChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_focusWindowChanged".}
proc fcQGuiApplication_applicationStateChanged(self: pointer, state: cint): void {.importc: "QGuiApplication_applicationStateChanged".}
proc fcQGuiApplication_connect_applicationStateChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_applicationStateChanged".}
proc fcQGuiApplication_layoutDirectionChanged(self: pointer, direction: cint): void {.importc: "QGuiApplication_layoutDirectionChanged".}
proc fcQGuiApplication_connect_layoutDirectionChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_layoutDirectionChanged".}
proc fcQGuiApplication_commitDataRequest(self: pointer, sessionManager: pointer): void {.importc: "QGuiApplication_commitDataRequest".}
proc fcQGuiApplication_connect_commitDataRequest(self: pointer, slot: int) {.importc: "QGuiApplication_connect_commitDataRequest".}
proc fcQGuiApplication_saveStateRequest(self: pointer, sessionManager: pointer): void {.importc: "QGuiApplication_saveStateRequest".}
proc fcQGuiApplication_connect_saveStateRequest(self: pointer, slot: int) {.importc: "QGuiApplication_connect_saveStateRequest".}
proc fcQGuiApplication_applicationDisplayNameChanged(self: pointer, ): void {.importc: "QGuiApplication_applicationDisplayNameChanged".}
proc fcQGuiApplication_connect_applicationDisplayNameChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_applicationDisplayNameChanged".}
proc fcQGuiApplication_paletteChanged(self: pointer, pal: pointer): void {.importc: "QGuiApplication_paletteChanged".}
proc fcQGuiApplication_connect_paletteChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_paletteChanged".}
proc fcQGuiApplication_fontChanged(self: pointer, font: pointer): void {.importc: "QGuiApplication_fontChanged".}
proc fcQGuiApplication_connect_fontChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_fontChanged".}
proc fcQGuiApplication_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGuiApplication_tr2".}
proc fcQGuiApplication_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGuiApplication_tr3".}
proc fQGuiApplication_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGuiApplication_virtualbase_metaObject".}
proc fcQGuiApplication_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_metaObject".}
proc fQGuiApplication_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGuiApplication_virtualbase_metacast".}
proc fcQGuiApplication_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_metacast".}
proc fQGuiApplication_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGuiApplication_virtualbase_metacall".}
proc fcQGuiApplication_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_metacall".}
proc fQGuiApplication_virtualbase_notify(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QGuiApplication_virtualbase_notify".}
proc fcQGuiApplication_override_virtual_notify(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_notify".}
proc fQGuiApplication_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QGuiApplication_virtualbase_event".}
proc fcQGuiApplication_override_virtual_event(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_event".}
proc fQGuiApplication_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGuiApplication_virtualbase_eventFilter".}
proc fcQGuiApplication_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_eventFilter".}
proc fQGuiApplication_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGuiApplication_virtualbase_timerEvent".}
proc fcQGuiApplication_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_timerEvent".}
proc fQGuiApplication_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGuiApplication_virtualbase_childEvent".}
proc fcQGuiApplication_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_childEvent".}
proc fQGuiApplication_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGuiApplication_virtualbase_customEvent".}
proc fcQGuiApplication_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_customEvent".}
proc fQGuiApplication_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGuiApplication_virtualbase_connectNotify".}
proc fcQGuiApplication_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_connectNotify".}
proc fQGuiApplication_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGuiApplication_virtualbase_disconnectNotify".}
proc fcQGuiApplication_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_disconnectNotify".}
proc fcQGuiApplication_staticMetaObject(): pointer {.importc: "QGuiApplication_staticMetaObject".}
proc fcQGuiApplication_delete(self: pointer) {.importc: "QGuiApplication_delete".}


func init*(T: type gen_qguiapplication_types.QGuiApplication, h: ptr cQGuiApplication): gen_qguiapplication_types.QGuiApplication =
  T(h: h)
proc create*(T: type gen_qguiapplication_types.QGuiApplication, ): gen_qguiapplication_types.QGuiApplication =
  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  gen_qguiapplication_types.QGuiApplication.init(fcQGuiApplication_new(addr argc, argv))

proc create*(T: type gen_qguiapplication_types.QGuiApplication, param3: cint): gen_qguiapplication_types.QGuiApplication =
  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  gen_qguiapplication_types.QGuiApplication.init(fcQGuiApplication_new2(addr argc, argv, param3))

proc metaObject*(self: gen_qguiapplication_types.QGuiApplication, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGuiApplication_metaObject(self.h))

proc metacast*(self: gen_qguiapplication_types.QGuiApplication, param1: cstring): pointer =
  fcQGuiApplication_metacast(self.h, param1)

proc metacall*(self: gen_qguiapplication_types.QGuiApplication, param1: cint, param2: cint, param3: pointer): cint =
  fcQGuiApplication_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qguiapplication_types.QGuiApplication, s: cstring): string =
  let v_ms = fcQGuiApplication_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setApplicationDisplayName*(_: type gen_qguiapplication_types.QGuiApplication, name: string): void =
  fcQGuiApplication_setApplicationDisplayName(struct_miqt_string(data: name, len: csize_t(len(name))))

proc applicationDisplayName*(_: type gen_qguiapplication_types.QGuiApplication, ): string =
  let v_ms = fcQGuiApplication_applicationDisplayName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDesktopFileName*(_: type gen_qguiapplication_types.QGuiApplication, name: string): void =
  fcQGuiApplication_setDesktopFileName(struct_miqt_string(data: name, len: csize_t(len(name))))

proc desktopFileName*(_: type gen_qguiapplication_types.QGuiApplication, ): string =
  let v_ms = fcQGuiApplication_desktopFileName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc allWindows*(_: type gen_qguiapplication_types.QGuiApplication, ): seq[gen_qwindow_types.QWindow] =
  var v_ma = fcQGuiApplication_allWindows()
  var vx_ret = newSeq[gen_qwindow_types.QWindow](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwindow_types.QWindow(h: v_outCast[i])
  vx_ret

proc topLevelWindows*(_: type gen_qguiapplication_types.QGuiApplication, ): seq[gen_qwindow_types.QWindow] =
  var v_ma = fcQGuiApplication_topLevelWindows()
  var vx_ret = newSeq[gen_qwindow_types.QWindow](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwindow_types.QWindow(h: v_outCast[i])
  vx_ret

proc topLevelAt*(_: type gen_qguiapplication_types.QGuiApplication, pos: gen_qpoint_types.QPoint): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQGuiApplication_topLevelAt(pos.h))

proc setWindowIcon*(_: type gen_qguiapplication_types.QGuiApplication, icon: gen_qicon_types.QIcon): void =
  fcQGuiApplication_setWindowIcon(icon.h)

proc windowIcon*(_: type gen_qguiapplication_types.QGuiApplication, ): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQGuiApplication_windowIcon())

proc platformName*(_: type gen_qguiapplication_types.QGuiApplication, ): string =
  let v_ms = fcQGuiApplication_platformName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc modalWindow*(_: type gen_qguiapplication_types.QGuiApplication, ): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQGuiApplication_modalWindow())

proc focusWindow*(_: type gen_qguiapplication_types.QGuiApplication, ): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQGuiApplication_focusWindow())

proc focusObject*(_: type gen_qguiapplication_types.QGuiApplication, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGuiApplication_focusObject())

proc primaryScreen*(_: type gen_qguiapplication_types.QGuiApplication, ): gen_qscreen_types.QScreen =
  gen_qscreen_types.QScreen(h: fcQGuiApplication_primaryScreen())

proc screens*(_: type gen_qguiapplication_types.QGuiApplication, ): seq[gen_qscreen_types.QScreen] =
  var v_ma = fcQGuiApplication_screens()
  var vx_ret = newSeq[gen_qscreen_types.QScreen](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qscreen_types.QScreen(h: v_outCast[i])
  vx_ret

proc screenAt*(_: type gen_qguiapplication_types.QGuiApplication, point: gen_qpoint_types.QPoint): gen_qscreen_types.QScreen =
  gen_qscreen_types.QScreen(h: fcQGuiApplication_screenAt(point.h))

proc devicePixelRatio*(self: gen_qguiapplication_types.QGuiApplication, ): float64 =
  fcQGuiApplication_devicePixelRatio(self.h)

proc overrideCursor*(_: type gen_qguiapplication_types.QGuiApplication, ): gen_qcursor_types.QCursor =
  gen_qcursor_types.QCursor(h: fcQGuiApplication_overrideCursor())

proc setOverrideCursor*(_: type gen_qguiapplication_types.QGuiApplication, overrideCursor: gen_qcursor_types.QCursor): void =
  fcQGuiApplication_setOverrideCursor(overrideCursor.h)

proc changeOverrideCursor*(_: type gen_qguiapplication_types.QGuiApplication, param1: gen_qcursor_types.QCursor): void =
  fcQGuiApplication_changeOverrideCursor(param1.h)

proc restoreOverrideCursor*(_: type gen_qguiapplication_types.QGuiApplication, ): void =
  fcQGuiApplication_restoreOverrideCursor()

proc font*(_: type gen_qguiapplication_types.QGuiApplication, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQGuiApplication_font())

proc setFont*(_: type gen_qguiapplication_types.QGuiApplication, font: gen_qfont_types.QFont): void =
  fcQGuiApplication_setFont(font.h)

proc clipboard*(_: type gen_qguiapplication_types.QGuiApplication, ): gen_qclipboard_types.QClipboard =
  gen_qclipboard_types.QClipboard(h: fcQGuiApplication_clipboard())

proc palette*(_: type gen_qguiapplication_types.QGuiApplication, ): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQGuiApplication_palette())

proc setPalette*(_: type gen_qguiapplication_types.QGuiApplication, pal: gen_qpalette_types.QPalette): void =
  fcQGuiApplication_setPalette(pal.h)

proc keyboardModifiers*(_: type gen_qguiapplication_types.QGuiApplication, ): cint =
  cint(fcQGuiApplication_keyboardModifiers())

proc queryKeyboardModifiers*(_: type gen_qguiapplication_types.QGuiApplication, ): cint =
  cint(fcQGuiApplication_queryKeyboardModifiers())

proc mouseButtons*(_: type gen_qguiapplication_types.QGuiApplication, ): cint =
  cint(fcQGuiApplication_mouseButtons())

proc setLayoutDirection*(_: type gen_qguiapplication_types.QGuiApplication, direction: cint): void =
  fcQGuiApplication_setLayoutDirection(cint(direction))

proc layoutDirection*(_: type gen_qguiapplication_types.QGuiApplication, ): cint =
  cint(fcQGuiApplication_layoutDirection())

proc isRightToLeft*(_: type gen_qguiapplication_types.QGuiApplication, ): bool =
  fcQGuiApplication_isRightToLeft()

proc isLeftToRight*(_: type gen_qguiapplication_types.QGuiApplication, ): bool =
  fcQGuiApplication_isLeftToRight()

proc styleHints*(_: type gen_qguiapplication_types.QGuiApplication, ): gen_qstylehints_types.QStyleHints =
  gen_qstylehints_types.QStyleHints(h: fcQGuiApplication_styleHints())

proc setDesktopSettingsAware*(_: type gen_qguiapplication_types.QGuiApplication, on: bool): void =
  fcQGuiApplication_setDesktopSettingsAware(on)

proc desktopSettingsAware*(_: type gen_qguiapplication_types.QGuiApplication, ): bool =
  fcQGuiApplication_desktopSettingsAware()

proc inputMethod*(_: type gen_qguiapplication_types.QGuiApplication, ): gen_qinputmethod_types.QInputMethod =
  gen_qinputmethod_types.QInputMethod(h: fcQGuiApplication_inputMethod())

proc setQuitOnLastWindowClosed*(_: type gen_qguiapplication_types.QGuiApplication, quit: bool): void =
  fcQGuiApplication_setQuitOnLastWindowClosed(quit)

proc quitOnLastWindowClosed*(_: type gen_qguiapplication_types.QGuiApplication, ): bool =
  fcQGuiApplication_quitOnLastWindowClosed()

proc applicationState*(_: type gen_qguiapplication_types.QGuiApplication, ): cint =
  cint(fcQGuiApplication_applicationState())

proc setHighDpiScaleFactorRoundingPolicy*(_: type gen_qguiapplication_types.QGuiApplication, policy: cint): void =
  fcQGuiApplication_setHighDpiScaleFactorRoundingPolicy(cint(policy))

proc highDpiScaleFactorRoundingPolicy*(_: type gen_qguiapplication_types.QGuiApplication, ): cint =
  cint(fcQGuiApplication_highDpiScaleFactorRoundingPolicy())

proc exec*(_: type gen_qguiapplication_types.QGuiApplication, ): cint =
  fcQGuiApplication_exec()

proc notify*(self: gen_qguiapplication_types.QGuiApplication, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQGuiApplication_notify(self.h, param1.h, param2.h)

proc isSessionRestored*(self: gen_qguiapplication_types.QGuiApplication, ): bool =
  fcQGuiApplication_isSessionRestored(self.h)

proc sessionId*(self: gen_qguiapplication_types.QGuiApplication, ): string =
  let v_ms = fcQGuiApplication_sessionId(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sessionKey*(self: gen_qguiapplication_types.QGuiApplication, ): string =
  let v_ms = fcQGuiApplication_sessionKey(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isSavingSession*(self: gen_qguiapplication_types.QGuiApplication, ): bool =
  fcQGuiApplication_isSavingSession(self.h)

proc sync*(_: type gen_qguiapplication_types.QGuiApplication, ): void =
  fcQGuiApplication_sync()

proc fontDatabaseChanged*(self: gen_qguiapplication_types.QGuiApplication, ): void =
  fcQGuiApplication_fontDatabaseChanged(self.h)

type QGuiApplicationfontDatabaseChangedSlot* = proc()
proc miqt_exec_callback_QGuiApplication_fontDatabaseChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGuiApplicationfontDatabaseChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onfontDatabaseChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationfontDatabaseChangedSlot) =
  var tmp = new QGuiApplicationfontDatabaseChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_fontDatabaseChanged(self.h, cast[int](addr tmp[]))

proc screenAdded*(self: gen_qguiapplication_types.QGuiApplication, screen: gen_qscreen_types.QScreen): void =
  fcQGuiApplication_screenAdded(self.h, screen.h)

type QGuiApplicationscreenAddedSlot* = proc(screen: gen_qscreen_types.QScreen)
proc miqt_exec_callback_QGuiApplication_screenAdded(slot: int, screen: pointer) {.exportc.} =
  let nimfunc = cast[ptr QGuiApplicationscreenAddedSlot](cast[pointer](slot))
  let slotval1 = gen_qscreen_types.QScreen(h: screen)

  nimfunc[](slotval1)

proc onscreenAdded*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationscreenAddedSlot) =
  var tmp = new QGuiApplicationscreenAddedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_screenAdded(self.h, cast[int](addr tmp[]))

proc screenRemoved*(self: gen_qguiapplication_types.QGuiApplication, screen: gen_qscreen_types.QScreen): void =
  fcQGuiApplication_screenRemoved(self.h, screen.h)

type QGuiApplicationscreenRemovedSlot* = proc(screen: gen_qscreen_types.QScreen)
proc miqt_exec_callback_QGuiApplication_screenRemoved(slot: int, screen: pointer) {.exportc.} =
  let nimfunc = cast[ptr QGuiApplicationscreenRemovedSlot](cast[pointer](slot))
  let slotval1 = gen_qscreen_types.QScreen(h: screen)

  nimfunc[](slotval1)

proc onscreenRemoved*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationscreenRemovedSlot) =
  var tmp = new QGuiApplicationscreenRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_screenRemoved(self.h, cast[int](addr tmp[]))

proc primaryScreenChanged*(self: gen_qguiapplication_types.QGuiApplication, screen: gen_qscreen_types.QScreen): void =
  fcQGuiApplication_primaryScreenChanged(self.h, screen.h)

type QGuiApplicationprimaryScreenChangedSlot* = proc(screen: gen_qscreen_types.QScreen)
proc miqt_exec_callback_QGuiApplication_primaryScreenChanged(slot: int, screen: pointer) {.exportc.} =
  let nimfunc = cast[ptr QGuiApplicationprimaryScreenChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qscreen_types.QScreen(h: screen)

  nimfunc[](slotval1)

proc onprimaryScreenChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationprimaryScreenChangedSlot) =
  var tmp = new QGuiApplicationprimaryScreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_primaryScreenChanged(self.h, cast[int](addr tmp[]))

proc lastWindowClosed*(self: gen_qguiapplication_types.QGuiApplication, ): void =
  fcQGuiApplication_lastWindowClosed(self.h)

type QGuiApplicationlastWindowClosedSlot* = proc()
proc miqt_exec_callback_QGuiApplication_lastWindowClosed(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGuiApplicationlastWindowClosedSlot](cast[pointer](slot))
  nimfunc[]()

proc onlastWindowClosed*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationlastWindowClosedSlot) =
  var tmp = new QGuiApplicationlastWindowClosedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_lastWindowClosed(self.h, cast[int](addr tmp[]))

proc focusObjectChanged*(self: gen_qguiapplication_types.QGuiApplication, focusObject: gen_qobject_types.QObject): void =
  fcQGuiApplication_focusObjectChanged(self.h, focusObject.h)

type QGuiApplicationfocusObjectChangedSlot* = proc(focusObject: gen_qobject_types.QObject)
proc miqt_exec_callback_QGuiApplication_focusObjectChanged(slot: int, focusObject: pointer) {.exportc.} =
  let nimfunc = cast[ptr QGuiApplicationfocusObjectChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: focusObject)

  nimfunc[](slotval1)

proc onfocusObjectChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationfocusObjectChangedSlot) =
  var tmp = new QGuiApplicationfocusObjectChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_focusObjectChanged(self.h, cast[int](addr tmp[]))

proc focusWindowChanged*(self: gen_qguiapplication_types.QGuiApplication, focusWindow: gen_qwindow_types.QWindow): void =
  fcQGuiApplication_focusWindowChanged(self.h, focusWindow.h)

type QGuiApplicationfocusWindowChangedSlot* = proc(focusWindow: gen_qwindow_types.QWindow)
proc miqt_exec_callback_QGuiApplication_focusWindowChanged(slot: int, focusWindow: pointer) {.exportc.} =
  let nimfunc = cast[ptr QGuiApplicationfocusWindowChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qwindow_types.QWindow(h: focusWindow)

  nimfunc[](slotval1)

proc onfocusWindowChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationfocusWindowChangedSlot) =
  var tmp = new QGuiApplicationfocusWindowChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_focusWindowChanged(self.h, cast[int](addr tmp[]))

proc applicationStateChanged*(self: gen_qguiapplication_types.QGuiApplication, state: cint): void =
  fcQGuiApplication_applicationStateChanged(self.h, cint(state))

type QGuiApplicationapplicationStateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_QGuiApplication_applicationStateChanged(slot: int, state: cint) {.exportc.} =
  let nimfunc = cast[ptr QGuiApplicationapplicationStateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc onapplicationStateChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationapplicationStateChangedSlot) =
  var tmp = new QGuiApplicationapplicationStateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_applicationStateChanged(self.h, cast[int](addr tmp[]))

proc layoutDirectionChanged*(self: gen_qguiapplication_types.QGuiApplication, direction: cint): void =
  fcQGuiApplication_layoutDirectionChanged(self.h, cint(direction))

type QGuiApplicationlayoutDirectionChangedSlot* = proc(direction: cint)
proc miqt_exec_callback_QGuiApplication_layoutDirectionChanged(slot: int, direction: cint) {.exportc.} =
  let nimfunc = cast[ptr QGuiApplicationlayoutDirectionChangedSlot](cast[pointer](slot))
  let slotval1 = cint(direction)

  nimfunc[](slotval1)

proc onlayoutDirectionChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationlayoutDirectionChangedSlot) =
  var tmp = new QGuiApplicationlayoutDirectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_layoutDirectionChanged(self.h, cast[int](addr tmp[]))

proc commitDataRequest*(self: gen_qguiapplication_types.QGuiApplication, sessionManager: gen_qsessionmanager_types.QSessionManager): void =
  fcQGuiApplication_commitDataRequest(self.h, sessionManager.h)

type QGuiApplicationcommitDataRequestSlot* = proc(sessionManager: gen_qsessionmanager_types.QSessionManager)
proc miqt_exec_callback_QGuiApplication_commitDataRequest(slot: int, sessionManager: pointer) {.exportc.} =
  let nimfunc = cast[ptr QGuiApplicationcommitDataRequestSlot](cast[pointer](slot))
  let slotval1 = gen_qsessionmanager_types.QSessionManager(h: sessionManager)

  nimfunc[](slotval1)

proc oncommitDataRequest*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationcommitDataRequestSlot) =
  var tmp = new QGuiApplicationcommitDataRequestSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_commitDataRequest(self.h, cast[int](addr tmp[]))

proc saveStateRequest*(self: gen_qguiapplication_types.QGuiApplication, sessionManager: gen_qsessionmanager_types.QSessionManager): void =
  fcQGuiApplication_saveStateRequest(self.h, sessionManager.h)

type QGuiApplicationsaveStateRequestSlot* = proc(sessionManager: gen_qsessionmanager_types.QSessionManager)
proc miqt_exec_callback_QGuiApplication_saveStateRequest(slot: int, sessionManager: pointer) {.exportc.} =
  let nimfunc = cast[ptr QGuiApplicationsaveStateRequestSlot](cast[pointer](slot))
  let slotval1 = gen_qsessionmanager_types.QSessionManager(h: sessionManager)

  nimfunc[](slotval1)

proc onsaveStateRequest*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationsaveStateRequestSlot) =
  var tmp = new QGuiApplicationsaveStateRequestSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_saveStateRequest(self.h, cast[int](addr tmp[]))

proc applicationDisplayNameChanged*(self: gen_qguiapplication_types.QGuiApplication, ): void =
  fcQGuiApplication_applicationDisplayNameChanged(self.h)

type QGuiApplicationapplicationDisplayNameChangedSlot* = proc()
proc miqt_exec_callback_QGuiApplication_applicationDisplayNameChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGuiApplicationapplicationDisplayNameChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onapplicationDisplayNameChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationapplicationDisplayNameChangedSlot) =
  var tmp = new QGuiApplicationapplicationDisplayNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_applicationDisplayNameChanged(self.h, cast[int](addr tmp[]))

proc paletteChanged*(self: gen_qguiapplication_types.QGuiApplication, pal: gen_qpalette_types.QPalette): void =
  fcQGuiApplication_paletteChanged(self.h, pal.h)

type QGuiApplicationpaletteChangedSlot* = proc(pal: gen_qpalette_types.QPalette)
proc miqt_exec_callback_QGuiApplication_paletteChanged(slot: int, pal: pointer) {.exportc.} =
  let nimfunc = cast[ptr QGuiApplicationpaletteChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qpalette_types.QPalette(h: pal)

  nimfunc[](slotval1)

proc onpaletteChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationpaletteChangedSlot) =
  var tmp = new QGuiApplicationpaletteChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_paletteChanged(self.h, cast[int](addr tmp[]))

proc fontChanged*(self: gen_qguiapplication_types.QGuiApplication, font: gen_qfont_types.QFont): void =
  fcQGuiApplication_fontChanged(self.h, font.h)

type QGuiApplicationfontChangedSlot* = proc(font: gen_qfont_types.QFont)
proc miqt_exec_callback_QGuiApplication_fontChanged(slot: int, font: pointer) {.exportc.} =
  let nimfunc = cast[ptr QGuiApplicationfontChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qfont_types.QFont(h: font)

  nimfunc[](slotval1)

proc onfontChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationfontChangedSlot) =
  var tmp = new QGuiApplicationfontChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_fontChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qguiapplication_types.QGuiApplication, s: cstring, c: cstring): string =
  let v_ms = fcQGuiApplication_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qguiapplication_types.QGuiApplication, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGuiApplication_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QGuiApplicationmetaObject*(self: gen_qguiapplication_types.QGuiApplication, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQGuiApplication_virtualbase_metaObject(self.h))

type QGuiApplicationmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationmetaObjectProc) =
  # TODO check subclass
  var tmp = new QGuiApplicationmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_metaObject(self: ptr cQGuiApplication, slot: int): pointer {.exportc: "miqt_exec_callback_QGuiApplication_metaObject ".} =
  var nimfunc = cast[ptr QGuiApplicationmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGuiApplicationmetacast*(self: gen_qguiapplication_types.QGuiApplication, param1: cstring): pointer =
  fQGuiApplication_virtualbase_metacast(self.h, param1)

type QGuiApplicationmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationmetacastProc) =
  # TODO check subclass
  var tmp = new QGuiApplicationmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_metacast(self: ptr cQGuiApplication, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGuiApplication_metacast ".} =
  var nimfunc = cast[ptr QGuiApplicationmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGuiApplicationmetacall*(self: gen_qguiapplication_types.QGuiApplication, param1: cint, param2: cint, param3: pointer): cint =
  fQGuiApplication_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGuiApplicationmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationmetacallProc) =
  # TODO check subclass
  var tmp = new QGuiApplicationmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_metacall(self: ptr cQGuiApplication, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGuiApplication_metacall ".} =
  var nimfunc = cast[ptr QGuiApplicationmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QGuiApplicationnotify*(self: gen_qguiapplication_types.QGuiApplication, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQGuiApplication_virtualbase_notify(self.h, param1.h, param2.h)

type QGuiApplicationnotifyProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc onnotify*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationnotifyProc) =
  # TODO check subclass
  var tmp = new QGuiApplicationnotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_notify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_notify(self: ptr cQGuiApplication, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QGuiApplication_notify ".} =
  var nimfunc = cast[ptr QGuiApplicationnotifyProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGuiApplicationevent*(self: gen_qguiapplication_types.QGuiApplication, param1: gen_qcoreevent_types.QEvent): bool =
  fQGuiApplication_virtualbase_event(self.h, param1.h)

type QGuiApplicationeventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationeventProc) =
  # TODO check subclass
  var tmp = new QGuiApplicationeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_event(self: ptr cQGuiApplication, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QGuiApplication_event ".} =
  var nimfunc = cast[ptr QGuiApplicationeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGuiApplicationeventFilter*(self: gen_qguiapplication_types.QGuiApplication, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGuiApplication_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGuiApplicationeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationeventFilterProc) =
  # TODO check subclass
  var tmp = new QGuiApplicationeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_eventFilter(self: ptr cQGuiApplication, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGuiApplication_eventFilter ".} =
  var nimfunc = cast[ptr QGuiApplicationeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGuiApplicationtimerEvent*(self: gen_qguiapplication_types.QGuiApplication, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGuiApplication_virtualbase_timerEvent(self.h, event.h)

type QGuiApplicationtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationtimerEventProc) =
  # TODO check subclass
  var tmp = new QGuiApplicationtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_timerEvent(self: ptr cQGuiApplication, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGuiApplication_timerEvent ".} =
  var nimfunc = cast[ptr QGuiApplicationtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGuiApplicationchildEvent*(self: gen_qguiapplication_types.QGuiApplication, event: gen_qcoreevent_types.QChildEvent): void =
  fQGuiApplication_virtualbase_childEvent(self.h, event.h)

type QGuiApplicationchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationchildEventProc) =
  # TODO check subclass
  var tmp = new QGuiApplicationchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_childEvent(self: ptr cQGuiApplication, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGuiApplication_childEvent ".} =
  var nimfunc = cast[ptr QGuiApplicationchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGuiApplicationcustomEvent*(self: gen_qguiapplication_types.QGuiApplication, event: gen_qcoreevent_types.QEvent): void =
  fQGuiApplication_virtualbase_customEvent(self.h, event.h)

type QGuiApplicationcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationcustomEventProc) =
  # TODO check subclass
  var tmp = new QGuiApplicationcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_customEvent(self: ptr cQGuiApplication, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGuiApplication_customEvent ".} =
  var nimfunc = cast[ptr QGuiApplicationcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGuiApplicationconnectNotify*(self: gen_qguiapplication_types.QGuiApplication, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGuiApplication_virtualbase_connectNotify(self.h, signal.h)

type QGuiApplicationconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGuiApplicationconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_connectNotify(self: ptr cQGuiApplication, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGuiApplication_connectNotify ".} =
  var nimfunc = cast[ptr QGuiApplicationconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGuiApplicationdisconnectNotify*(self: gen_qguiapplication_types.QGuiApplication, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGuiApplication_virtualbase_disconnectNotify(self.h, signal.h)

type QGuiApplicationdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGuiApplicationdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_disconnectNotify(self: ptr cQGuiApplication, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGuiApplication_disconnectNotify ".} =
  var nimfunc = cast[ptr QGuiApplicationdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qguiapplication_types.QGuiApplication): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGuiApplication_staticMetaObject())
proc delete*(self: gen_qguiapplication_types.QGuiApplication) =
  fcQGuiApplication_delete(self.h)
