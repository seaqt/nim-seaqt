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
proc fcQGuiApplication_connect_fontDatabaseChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGuiApplication_connect_fontDatabaseChanged".}
proc fcQGuiApplication_screenAdded(self: pointer, screen: pointer): void {.importc: "QGuiApplication_screenAdded".}
proc fcQGuiApplication_connect_screenAdded(self: pointer, slot: int, callback: proc (slot: int, screen: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGuiApplication_connect_screenAdded".}
proc fcQGuiApplication_screenRemoved(self: pointer, screen: pointer): void {.importc: "QGuiApplication_screenRemoved".}
proc fcQGuiApplication_connect_screenRemoved(self: pointer, slot: int, callback: proc (slot: int, screen: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGuiApplication_connect_screenRemoved".}
proc fcQGuiApplication_primaryScreenChanged(self: pointer, screen: pointer): void {.importc: "QGuiApplication_primaryScreenChanged".}
proc fcQGuiApplication_connect_primaryScreenChanged(self: pointer, slot: int, callback: proc (slot: int, screen: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGuiApplication_connect_primaryScreenChanged".}
proc fcQGuiApplication_lastWindowClosed(self: pointer, ): void {.importc: "QGuiApplication_lastWindowClosed".}
proc fcQGuiApplication_connect_lastWindowClosed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGuiApplication_connect_lastWindowClosed".}
proc fcQGuiApplication_focusObjectChanged(self: pointer, focusObject: pointer): void {.importc: "QGuiApplication_focusObjectChanged".}
proc fcQGuiApplication_connect_focusObjectChanged(self: pointer, slot: int, callback: proc (slot: int, focusObject: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGuiApplication_connect_focusObjectChanged".}
proc fcQGuiApplication_focusWindowChanged(self: pointer, focusWindow: pointer): void {.importc: "QGuiApplication_focusWindowChanged".}
proc fcQGuiApplication_connect_focusWindowChanged(self: pointer, slot: int, callback: proc (slot: int, focusWindow: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGuiApplication_connect_focusWindowChanged".}
proc fcQGuiApplication_applicationStateChanged(self: pointer, state: cint): void {.importc: "QGuiApplication_applicationStateChanged".}
proc fcQGuiApplication_connect_applicationStateChanged(self: pointer, slot: int, callback: proc (slot: int, state: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGuiApplication_connect_applicationStateChanged".}
proc fcQGuiApplication_layoutDirectionChanged(self: pointer, direction: cint): void {.importc: "QGuiApplication_layoutDirectionChanged".}
proc fcQGuiApplication_connect_layoutDirectionChanged(self: pointer, slot: int, callback: proc (slot: int, direction: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGuiApplication_connect_layoutDirectionChanged".}
proc fcQGuiApplication_commitDataRequest(self: pointer, sessionManager: pointer): void {.importc: "QGuiApplication_commitDataRequest".}
proc fcQGuiApplication_connect_commitDataRequest(self: pointer, slot: int, callback: proc (slot: int, sessionManager: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGuiApplication_connect_commitDataRequest".}
proc fcQGuiApplication_saveStateRequest(self: pointer, sessionManager: pointer): void {.importc: "QGuiApplication_saveStateRequest".}
proc fcQGuiApplication_connect_saveStateRequest(self: pointer, slot: int, callback: proc (slot: int, sessionManager: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGuiApplication_connect_saveStateRequest".}
proc fcQGuiApplication_applicationDisplayNameChanged(self: pointer, ): void {.importc: "QGuiApplication_applicationDisplayNameChanged".}
proc fcQGuiApplication_connect_applicationDisplayNameChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGuiApplication_connect_applicationDisplayNameChanged".}
proc fcQGuiApplication_paletteChanged(self: pointer, pal: pointer): void {.importc: "QGuiApplication_paletteChanged".}
proc fcQGuiApplication_connect_paletteChanged(self: pointer, slot: int, callback: proc (slot: int, pal: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGuiApplication_connect_paletteChanged".}
proc fcQGuiApplication_fontChanged(self: pointer, font: pointer): void {.importc: "QGuiApplication_fontChanged".}
proc fcQGuiApplication_connect_fontChanged(self: pointer, slot: int, callback: proc (slot: int, font: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGuiApplication_connect_fontChanged".}
proc fcQGuiApplication_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGuiApplication_tr2".}
proc fcQGuiApplication_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGuiApplication_tr3".}
type cQGuiApplicationVTable = object
  destructor*: proc(vtbl: ptr cQGuiApplicationVTable, self: ptr cQGuiApplication) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  notify*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGuiApplication_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGuiApplication_virtualbase_metaObject".}
proc fcQGuiApplication_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGuiApplication_virtualbase_metacast".}
proc fcQGuiApplication_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGuiApplication_virtualbase_metacall".}
proc fcQGuiApplication_virtualbase_notify(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QGuiApplication_virtualbase_notify".}
proc fcQGuiApplication_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QGuiApplication_virtualbase_event".}
proc fcQGuiApplication_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGuiApplication_virtualbase_eventFilter".}
proc fcQGuiApplication_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGuiApplication_virtualbase_timerEvent".}
proc fcQGuiApplication_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGuiApplication_virtualbase_childEvent".}
proc fcQGuiApplication_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGuiApplication_virtualbase_customEvent".}
proc fcQGuiApplication_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGuiApplication_virtualbase_connectNotify".}
proc fcQGuiApplication_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGuiApplication_virtualbase_disconnectNotify".}
proc fcQGuiApplication_protectedbase_resolveInterface(self: pointer, name: cstring, revision: cint): pointer {.importc: "QGuiApplication_protectedbase_resolveInterface".}
proc fcQGuiApplication_protectedbase_sender(self: pointer, ): pointer {.importc: "QGuiApplication_protectedbase_sender".}
proc fcQGuiApplication_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGuiApplication_protectedbase_senderSignalIndex".}
proc fcQGuiApplication_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGuiApplication_protectedbase_receivers".}
proc fcQGuiApplication_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGuiApplication_protectedbase_isSignalConnected".}
proc fcQGuiApplication_new(vtbl: pointer, argc: ptr cint, argv: cstringArray): ptr cQGuiApplication {.importc: "QGuiApplication_new".}
proc fcQGuiApplication_new2(vtbl: pointer, argc: ptr cint, argv: cstringArray, param3: cint): ptr cQGuiApplication {.importc: "QGuiApplication_new2".}
proc fcQGuiApplication_staticMetaObject(): pointer {.importc: "QGuiApplication_staticMetaObject".}
proc fcQGuiApplication_delete(self: pointer) {.importc: "QGuiApplication_delete".}

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
proc miqt_exec_callback_cQGuiApplication_fontDatabaseChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGuiApplicationfontDatabaseChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGuiApplication_fontDatabaseChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGuiApplicationfontDatabaseChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfontDatabaseChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationfontDatabaseChangedSlot) =
  var tmp = new QGuiApplicationfontDatabaseChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_fontDatabaseChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGuiApplication_fontDatabaseChanged, miqt_exec_callback_cQGuiApplication_fontDatabaseChanged_release)

proc screenAdded*(self: gen_qguiapplication_types.QGuiApplication, screen: gen_qscreen_types.QScreen): void =
  fcQGuiApplication_screenAdded(self.h, screen.h)

type QGuiApplicationscreenAddedSlot* = proc(screen: gen_qscreen_types.QScreen)
proc miqt_exec_callback_cQGuiApplication_screenAdded(slot: int, screen: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGuiApplicationscreenAddedSlot](cast[pointer](slot))
  let slotval1 = gen_qscreen_types.QScreen(h: screen)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGuiApplication_screenAdded_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGuiApplicationscreenAddedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onscreenAdded*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationscreenAddedSlot) =
  var tmp = new QGuiApplicationscreenAddedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_screenAdded(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGuiApplication_screenAdded, miqt_exec_callback_cQGuiApplication_screenAdded_release)

proc screenRemoved*(self: gen_qguiapplication_types.QGuiApplication, screen: gen_qscreen_types.QScreen): void =
  fcQGuiApplication_screenRemoved(self.h, screen.h)

type QGuiApplicationscreenRemovedSlot* = proc(screen: gen_qscreen_types.QScreen)
proc miqt_exec_callback_cQGuiApplication_screenRemoved(slot: int, screen: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGuiApplicationscreenRemovedSlot](cast[pointer](slot))
  let slotval1 = gen_qscreen_types.QScreen(h: screen)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGuiApplication_screenRemoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGuiApplicationscreenRemovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onscreenRemoved*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationscreenRemovedSlot) =
  var tmp = new QGuiApplicationscreenRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_screenRemoved(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGuiApplication_screenRemoved, miqt_exec_callback_cQGuiApplication_screenRemoved_release)

proc primaryScreenChanged*(self: gen_qguiapplication_types.QGuiApplication, screen: gen_qscreen_types.QScreen): void =
  fcQGuiApplication_primaryScreenChanged(self.h, screen.h)

type QGuiApplicationprimaryScreenChangedSlot* = proc(screen: gen_qscreen_types.QScreen)
proc miqt_exec_callback_cQGuiApplication_primaryScreenChanged(slot: int, screen: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGuiApplicationprimaryScreenChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qscreen_types.QScreen(h: screen)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGuiApplication_primaryScreenChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGuiApplicationprimaryScreenChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onprimaryScreenChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationprimaryScreenChangedSlot) =
  var tmp = new QGuiApplicationprimaryScreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_primaryScreenChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGuiApplication_primaryScreenChanged, miqt_exec_callback_cQGuiApplication_primaryScreenChanged_release)

proc lastWindowClosed*(self: gen_qguiapplication_types.QGuiApplication, ): void =
  fcQGuiApplication_lastWindowClosed(self.h)

type QGuiApplicationlastWindowClosedSlot* = proc()
proc miqt_exec_callback_cQGuiApplication_lastWindowClosed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGuiApplicationlastWindowClosedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGuiApplication_lastWindowClosed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGuiApplicationlastWindowClosedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlastWindowClosed*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationlastWindowClosedSlot) =
  var tmp = new QGuiApplicationlastWindowClosedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_lastWindowClosed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGuiApplication_lastWindowClosed, miqt_exec_callback_cQGuiApplication_lastWindowClosed_release)

proc focusObjectChanged*(self: gen_qguiapplication_types.QGuiApplication, focusObject: gen_qobject_types.QObject): void =
  fcQGuiApplication_focusObjectChanged(self.h, focusObject.h)

type QGuiApplicationfocusObjectChangedSlot* = proc(focusObject: gen_qobject_types.QObject)
proc miqt_exec_callback_cQGuiApplication_focusObjectChanged(slot: int, focusObject: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGuiApplicationfocusObjectChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: focusObject)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGuiApplication_focusObjectChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGuiApplicationfocusObjectChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfocusObjectChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationfocusObjectChangedSlot) =
  var tmp = new QGuiApplicationfocusObjectChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_focusObjectChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGuiApplication_focusObjectChanged, miqt_exec_callback_cQGuiApplication_focusObjectChanged_release)

proc focusWindowChanged*(self: gen_qguiapplication_types.QGuiApplication, focusWindow: gen_qwindow_types.QWindow): void =
  fcQGuiApplication_focusWindowChanged(self.h, focusWindow.h)

type QGuiApplicationfocusWindowChangedSlot* = proc(focusWindow: gen_qwindow_types.QWindow)
proc miqt_exec_callback_cQGuiApplication_focusWindowChanged(slot: int, focusWindow: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGuiApplicationfocusWindowChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qwindow_types.QWindow(h: focusWindow)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGuiApplication_focusWindowChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGuiApplicationfocusWindowChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfocusWindowChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationfocusWindowChangedSlot) =
  var tmp = new QGuiApplicationfocusWindowChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_focusWindowChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGuiApplication_focusWindowChanged, miqt_exec_callback_cQGuiApplication_focusWindowChanged_release)

proc applicationStateChanged*(self: gen_qguiapplication_types.QGuiApplication, state: cint): void =
  fcQGuiApplication_applicationStateChanged(self.h, cint(state))

type QGuiApplicationapplicationStateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_cQGuiApplication_applicationStateChanged(slot: int, state: cint) {.cdecl.} =
  let nimfunc = cast[ptr QGuiApplicationapplicationStateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGuiApplication_applicationStateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGuiApplicationapplicationStateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onapplicationStateChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationapplicationStateChangedSlot) =
  var tmp = new QGuiApplicationapplicationStateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_applicationStateChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGuiApplication_applicationStateChanged, miqt_exec_callback_cQGuiApplication_applicationStateChanged_release)

proc layoutDirectionChanged*(self: gen_qguiapplication_types.QGuiApplication, direction: cint): void =
  fcQGuiApplication_layoutDirectionChanged(self.h, cint(direction))

type QGuiApplicationlayoutDirectionChangedSlot* = proc(direction: cint)
proc miqt_exec_callback_cQGuiApplication_layoutDirectionChanged(slot: int, direction: cint) {.cdecl.} =
  let nimfunc = cast[ptr QGuiApplicationlayoutDirectionChangedSlot](cast[pointer](slot))
  let slotval1 = cint(direction)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGuiApplication_layoutDirectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGuiApplicationlayoutDirectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlayoutDirectionChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationlayoutDirectionChangedSlot) =
  var tmp = new QGuiApplicationlayoutDirectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_layoutDirectionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGuiApplication_layoutDirectionChanged, miqt_exec_callback_cQGuiApplication_layoutDirectionChanged_release)

proc commitDataRequest*(self: gen_qguiapplication_types.QGuiApplication, sessionManager: gen_qsessionmanager_types.QSessionManager): void =
  fcQGuiApplication_commitDataRequest(self.h, sessionManager.h)

type QGuiApplicationcommitDataRequestSlot* = proc(sessionManager: gen_qsessionmanager_types.QSessionManager)
proc miqt_exec_callback_cQGuiApplication_commitDataRequest(slot: int, sessionManager: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGuiApplicationcommitDataRequestSlot](cast[pointer](slot))
  let slotval1 = gen_qsessionmanager_types.QSessionManager(h: sessionManager)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGuiApplication_commitDataRequest_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGuiApplicationcommitDataRequestSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncommitDataRequest*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationcommitDataRequestSlot) =
  var tmp = new QGuiApplicationcommitDataRequestSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_commitDataRequest(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGuiApplication_commitDataRequest, miqt_exec_callback_cQGuiApplication_commitDataRequest_release)

proc saveStateRequest*(self: gen_qguiapplication_types.QGuiApplication, sessionManager: gen_qsessionmanager_types.QSessionManager): void =
  fcQGuiApplication_saveStateRequest(self.h, sessionManager.h)

type QGuiApplicationsaveStateRequestSlot* = proc(sessionManager: gen_qsessionmanager_types.QSessionManager)
proc miqt_exec_callback_cQGuiApplication_saveStateRequest(slot: int, sessionManager: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGuiApplicationsaveStateRequestSlot](cast[pointer](slot))
  let slotval1 = gen_qsessionmanager_types.QSessionManager(h: sessionManager)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGuiApplication_saveStateRequest_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGuiApplicationsaveStateRequestSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsaveStateRequest*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationsaveStateRequestSlot) =
  var tmp = new QGuiApplicationsaveStateRequestSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_saveStateRequest(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGuiApplication_saveStateRequest, miqt_exec_callback_cQGuiApplication_saveStateRequest_release)

proc applicationDisplayNameChanged*(self: gen_qguiapplication_types.QGuiApplication, ): void =
  fcQGuiApplication_applicationDisplayNameChanged(self.h)

type QGuiApplicationapplicationDisplayNameChangedSlot* = proc()
proc miqt_exec_callback_cQGuiApplication_applicationDisplayNameChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGuiApplicationapplicationDisplayNameChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGuiApplication_applicationDisplayNameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGuiApplicationapplicationDisplayNameChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onapplicationDisplayNameChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationapplicationDisplayNameChangedSlot) =
  var tmp = new QGuiApplicationapplicationDisplayNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_applicationDisplayNameChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGuiApplication_applicationDisplayNameChanged, miqt_exec_callback_cQGuiApplication_applicationDisplayNameChanged_release)

proc paletteChanged*(self: gen_qguiapplication_types.QGuiApplication, pal: gen_qpalette_types.QPalette): void =
  fcQGuiApplication_paletteChanged(self.h, pal.h)

type QGuiApplicationpaletteChangedSlot* = proc(pal: gen_qpalette_types.QPalette)
proc miqt_exec_callback_cQGuiApplication_paletteChanged(slot: int, pal: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGuiApplicationpaletteChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qpalette_types.QPalette(h: pal)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGuiApplication_paletteChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGuiApplicationpaletteChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpaletteChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationpaletteChangedSlot) =
  var tmp = new QGuiApplicationpaletteChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_paletteChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGuiApplication_paletteChanged, miqt_exec_callback_cQGuiApplication_paletteChanged_release)

proc fontChanged*(self: gen_qguiapplication_types.QGuiApplication, font: gen_qfont_types.QFont): void =
  fcQGuiApplication_fontChanged(self.h, font.h)

type QGuiApplicationfontChangedSlot* = proc(font: gen_qfont_types.QFont)
proc miqt_exec_callback_cQGuiApplication_fontChanged(slot: int, font: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGuiApplicationfontChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qfont_types.QFont(h: font)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGuiApplication_fontChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGuiApplicationfontChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfontChanged*(self: gen_qguiapplication_types.QGuiApplication, slot: QGuiApplicationfontChangedSlot) =
  var tmp = new QGuiApplicationfontChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_connect_fontChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGuiApplication_fontChanged, miqt_exec_callback_cQGuiApplication_fontChanged_release)

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

type QGuiApplicationmetaObjectProc* = proc(self: QGuiApplication): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGuiApplicationmetacastProc* = proc(self: QGuiApplication, param1: cstring): pointer {.raises: [], gcsafe.}
type QGuiApplicationmetacallProc* = proc(self: QGuiApplication, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGuiApplicationnotifyProc* = proc(self: QGuiApplication, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGuiApplicationeventProc* = proc(self: QGuiApplication, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGuiApplicationeventFilterProc* = proc(self: QGuiApplication, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGuiApplicationtimerEventProc* = proc(self: QGuiApplication, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGuiApplicationchildEventProc* = proc(self: QGuiApplication, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGuiApplicationcustomEventProc* = proc(self: QGuiApplication, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGuiApplicationconnectNotifyProc* = proc(self: QGuiApplication, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGuiApplicationdisconnectNotifyProc* = proc(self: QGuiApplication, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGuiApplicationVTable* = object
  vtbl: cQGuiApplicationVTable
  metaObject*: QGuiApplicationmetaObjectProc
  metacast*: QGuiApplicationmetacastProc
  metacall*: QGuiApplicationmetacallProc
  notify*: QGuiApplicationnotifyProc
  event*: QGuiApplicationeventProc
  eventFilter*: QGuiApplicationeventFilterProc
  timerEvent*: QGuiApplicationtimerEventProc
  childEvent*: QGuiApplicationchildEventProc
  customEvent*: QGuiApplicationcustomEventProc
  connectNotify*: QGuiApplicationconnectNotifyProc
  disconnectNotify*: QGuiApplicationdisconnectNotifyProc
proc QGuiApplicationmetaObject*(self: gen_qguiapplication_types.QGuiApplication, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGuiApplication_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGuiApplication_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGuiApplicationVTable](vtbl)
  let self = QGuiApplication(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGuiApplicationmetacast*(self: gen_qguiapplication_types.QGuiApplication, param1: cstring): pointer =
  fcQGuiApplication_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGuiApplication_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGuiApplicationVTable](vtbl)
  let self = QGuiApplication(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGuiApplicationmetacall*(self: gen_qguiapplication_types.QGuiApplication, param1: cint, param2: cint, param3: pointer): cint =
  fcQGuiApplication_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGuiApplication_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGuiApplicationVTable](vtbl)
  let self = QGuiApplication(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGuiApplicationnotify*(self: gen_qguiapplication_types.QGuiApplication, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQGuiApplication_virtualbase_notify(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQGuiApplication_notify(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGuiApplicationVTable](vtbl)
  let self = QGuiApplication(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].notify(self, slotval1, slotval2)
  virtualReturn

proc QGuiApplicationevent*(self: gen_qguiapplication_types.QGuiApplication, param1: gen_qcoreevent_types.QEvent): bool =
  fcQGuiApplication_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQGuiApplication_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGuiApplicationVTable](vtbl)
  let self = QGuiApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGuiApplicationeventFilter*(self: gen_qguiapplication_types.QGuiApplication, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGuiApplication_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGuiApplication_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGuiApplicationVTable](vtbl)
  let self = QGuiApplication(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGuiApplicationtimerEvent*(self: gen_qguiapplication_types.QGuiApplication, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGuiApplication_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGuiApplication_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGuiApplicationVTable](vtbl)
  let self = QGuiApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGuiApplicationchildEvent*(self: gen_qguiapplication_types.QGuiApplication, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGuiApplication_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGuiApplication_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGuiApplicationVTable](vtbl)
  let self = QGuiApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGuiApplicationcustomEvent*(self: gen_qguiapplication_types.QGuiApplication, event: gen_qcoreevent_types.QEvent): void =
  fcQGuiApplication_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGuiApplication_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGuiApplicationVTable](vtbl)
  let self = QGuiApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGuiApplicationconnectNotify*(self: gen_qguiapplication_types.QGuiApplication, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGuiApplication_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGuiApplication_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGuiApplicationVTable](vtbl)
  let self = QGuiApplication(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGuiApplicationdisconnectNotify*(self: gen_qguiapplication_types.QGuiApplication, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGuiApplication_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGuiApplication_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGuiApplicationVTable](vtbl)
  let self = QGuiApplication(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc resolveInterface*(self: gen_qguiapplication_types.QGuiApplication, name: cstring, revision: cint): pointer =
  fcQGuiApplication_protectedbase_resolveInterface(self.h, name, revision)

proc sender*(self: gen_qguiapplication_types.QGuiApplication, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGuiApplication_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qguiapplication_types.QGuiApplication, ): cint =
  fcQGuiApplication_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qguiapplication_types.QGuiApplication, signal: cstring): cint =
  fcQGuiApplication_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qguiapplication_types.QGuiApplication, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGuiApplication_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qguiapplication_types.QGuiApplication,
    vtbl: ref QGuiApplicationVTable = nil): gen_qguiapplication_types.QGuiApplication =
  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  let vtbl = if vtbl == nil: new QGuiApplicationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGuiApplicationVTable, _: ptr cQGuiApplication) {.cdecl.} =
    let vtbl = cast[ref QGuiApplicationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGuiApplication_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGuiApplication_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGuiApplication_metacall
  if not isNil(vtbl.notify):
    vtbl[].vtbl.notify = miqt_exec_callback_cQGuiApplication_notify
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGuiApplication_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGuiApplication_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGuiApplication_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGuiApplication_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGuiApplication_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGuiApplication_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGuiApplication_disconnectNotify
  gen_qguiapplication_types.QGuiApplication(h: fcQGuiApplication_new(addr(vtbl[]), addr argc, argv))

proc create*(T: type gen_qguiapplication_types.QGuiApplication,
    param3: cint,
    vtbl: ref QGuiApplicationVTable = nil): gen_qguiapplication_types.QGuiApplication =
  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  let vtbl = if vtbl == nil: new QGuiApplicationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGuiApplicationVTable, _: ptr cQGuiApplication) {.cdecl.} =
    let vtbl = cast[ref QGuiApplicationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGuiApplication_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGuiApplication_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGuiApplication_metacall
  if not isNil(vtbl.notify):
    vtbl[].vtbl.notify = miqt_exec_callback_cQGuiApplication_notify
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGuiApplication_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGuiApplication_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGuiApplication_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGuiApplication_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGuiApplication_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGuiApplication_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGuiApplication_disconnectNotify
  gen_qguiapplication_types.QGuiApplication(h: fcQGuiApplication_new2(addr(vtbl[]), addr argc, argv, param3))

proc staticMetaObject*(_: type gen_qguiapplication_types.QGuiApplication): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGuiApplication_staticMetaObject())
proc delete*(self: gen_qguiapplication_types.QGuiApplication) =
  fcQGuiApplication_delete(self.h)
