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
{.compile("gen_qapplication.cpp", cflags).}


type QApplicationColorSpecEnum* = distinct cint
template NormalColor*(_: type QApplicationColorSpecEnum): untyped = 0
template CustomColor*(_: type QApplicationColorSpecEnum): untyped = 1
template ManyColor*(_: type QApplicationColorSpecEnum): untyped = 2


import ./gen_qapplication_types
export gen_qapplication_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtGui/gen_qfont_types,
  ../QtGui/gen_qfontmetrics_types,
  ../QtGui/gen_qguiapplication,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpalette_types,
  ./gen_qdesktopwidget_types,
  ./gen_qstyle_types,
  ./gen_qwidget_types,
  std/cmdline,
  std/os
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qfont_types,
  gen_qfontmetrics_types,
  gen_qguiapplication,
  gen_qicon_types,
  gen_qpalette_types,
  gen_qdesktopwidget_types,
  gen_qstyle_types,
  gen_qwidget_types

type cQApplication*{.exportc: "QApplication", incompleteStruct.} = object

proc fcQApplication_metaObject(self: pointer, ): pointer {.importc: "QApplication_metaObject".}
proc fcQApplication_metacast(self: pointer, param1: cstring): pointer {.importc: "QApplication_metacast".}
proc fcQApplication_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QApplication_metacall".}
proc fcQApplication_tr(s: cstring): struct_miqt_string {.importc: "QApplication_tr".}
proc fcQApplication_trUtf8(s: cstring): struct_miqt_string {.importc: "QApplication_trUtf8".}
proc fcQApplication_style(): pointer {.importc: "QApplication_style".}
proc fcQApplication_setStyle(style: pointer): void {.importc: "QApplication_setStyle".}
proc fcQApplication_setStyleWithStyle(style: struct_miqt_string): pointer {.importc: "QApplication_setStyleWithStyle".}
proc fcQApplication_colorSpec(): cint {.importc: "QApplication_colorSpec".}
proc fcQApplication_setColorSpec(colorSpec: cint): void {.importc: "QApplication_setColorSpec".}
proc fcQApplication_palette(param1: pointer): pointer {.importc: "QApplication_palette".}
proc fcQApplication_paletteWithClassName(className: cstring): pointer {.importc: "QApplication_paletteWithClassName".}
proc fcQApplication_setPalette(param1: pointer): void {.importc: "QApplication_setPalette".}
proc fcQApplication_font(): pointer {.importc: "QApplication_font".}
proc fcQApplication_fontWithQWidget(param1: pointer): pointer {.importc: "QApplication_fontWithQWidget".}
proc fcQApplication_fontWithClassName(className: cstring): pointer {.importc: "QApplication_fontWithClassName".}
proc fcQApplication_setFont(param1: pointer): void {.importc: "QApplication_setFont".}
proc fcQApplication_fontMetrics(): pointer {.importc: "QApplication_fontMetrics".}
proc fcQApplication_setWindowIcon(icon: pointer): void {.importc: "QApplication_setWindowIcon".}
proc fcQApplication_windowIcon(): pointer {.importc: "QApplication_windowIcon".}
proc fcQApplication_allWidgets(): struct_miqt_array {.importc: "QApplication_allWidgets".}
proc fcQApplication_topLevelWidgets(): struct_miqt_array {.importc: "QApplication_topLevelWidgets".}
proc fcQApplication_desktop(): pointer {.importc: "QApplication_desktop".}
proc fcQApplication_activePopupWidget(): pointer {.importc: "QApplication_activePopupWidget".}
proc fcQApplication_activeModalWidget(): pointer {.importc: "QApplication_activeModalWidget".}
proc fcQApplication_focusWidget(): pointer {.importc: "QApplication_focusWidget".}
proc fcQApplication_activeWindow(): pointer {.importc: "QApplication_activeWindow".}
proc fcQApplication_setActiveWindow(act: pointer): void {.importc: "QApplication_setActiveWindow".}
proc fcQApplication_widgetAt(p: pointer): pointer {.importc: "QApplication_widgetAt".}
proc fcQApplication_widgetAt2(x: cint, y: cint): pointer {.importc: "QApplication_widgetAt2".}
proc fcQApplication_topLevelAt(p: pointer): pointer {.importc: "QApplication_topLevelAt".}
proc fcQApplication_topLevelAt2(x: cint, y: cint): pointer {.importc: "QApplication_topLevelAt2".}
proc fcQApplication_beep(): void {.importc: "QApplication_beep".}
proc fcQApplication_alert(widget: pointer): void {.importc: "QApplication_alert".}
proc fcQApplication_setCursorFlashTime(cursorFlashTime: cint): void {.importc: "QApplication_setCursorFlashTime".}
proc fcQApplication_cursorFlashTime(): cint {.importc: "QApplication_cursorFlashTime".}
proc fcQApplication_setDoubleClickInterval(doubleClickInterval: cint): void {.importc: "QApplication_setDoubleClickInterval".}
proc fcQApplication_doubleClickInterval(): cint {.importc: "QApplication_doubleClickInterval".}
proc fcQApplication_setKeyboardInputInterval(keyboardInputInterval: cint): void {.importc: "QApplication_setKeyboardInputInterval".}
proc fcQApplication_keyboardInputInterval(): cint {.importc: "QApplication_keyboardInputInterval".}
proc fcQApplication_setWheelScrollLines(wheelScrollLines: cint): void {.importc: "QApplication_setWheelScrollLines".}
proc fcQApplication_wheelScrollLines(): cint {.importc: "QApplication_wheelScrollLines".}
proc fcQApplication_setGlobalStrut(globalStrut: pointer): void {.importc: "QApplication_setGlobalStrut".}
proc fcQApplication_globalStrut(): pointer {.importc: "QApplication_globalStrut".}
proc fcQApplication_setStartDragTime(ms: cint): void {.importc: "QApplication_setStartDragTime".}
proc fcQApplication_startDragTime(): cint {.importc: "QApplication_startDragTime".}
proc fcQApplication_setStartDragDistance(l: cint): void {.importc: "QApplication_setStartDragDistance".}
proc fcQApplication_startDragDistance(): cint {.importc: "QApplication_startDragDistance".}
proc fcQApplication_isEffectEnabled(param1: cint): bool {.importc: "QApplication_isEffectEnabled".}
proc fcQApplication_setEffectEnabled(param1: cint): void {.importc: "QApplication_setEffectEnabled".}
proc fcQApplication_exec(): cint {.importc: "QApplication_exec".}
proc fcQApplication_notify(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QApplication_notify".}
proc fcQApplication_focusChanged(self: pointer, old: pointer, now: pointer): void {.importc: "QApplication_focusChanged".}
proc fcQApplication_connect_focusChanged(self: pointer, slot: int) {.importc: "QApplication_connect_focusChanged".}
proc fcQApplication_styleSheet(self: pointer, ): struct_miqt_string {.importc: "QApplication_styleSheet".}
proc fcQApplication_setStyleSheet(self: pointer, sheet: struct_miqt_string): void {.importc: "QApplication_setStyleSheet".}
proc fcQApplication_setAutoSipEnabled(self: pointer, enabled: bool): void {.importc: "QApplication_setAutoSipEnabled".}
proc fcQApplication_autoSipEnabled(self: pointer, ): bool {.importc: "QApplication_autoSipEnabled".}
proc fcQApplication_closeAllWindows(): void {.importc: "QApplication_closeAllWindows".}
proc fcQApplication_aboutQt(): void {.importc: "QApplication_aboutQt".}
proc fcQApplication_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QApplication_tr2".}
proc fcQApplication_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QApplication_tr3".}
proc fcQApplication_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QApplication_trUtf82".}
proc fcQApplication_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QApplication_trUtf83".}
proc fcQApplication_setPalette2(param1: pointer, className: cstring): void {.importc: "QApplication_setPalette2".}
proc fcQApplication_setFont2(param1: pointer, className: cstring): void {.importc: "QApplication_setFont2".}
proc fcQApplication_alert2(widget: pointer, duration: cint): void {.importc: "QApplication_alert2".}
proc fcQApplication_setEffectEnabled2(param1: cint, enable: bool): void {.importc: "QApplication_setEffectEnabled2".}
type cQApplicationVTable = object
  destructor*: proc(vtbl: ptr cQApplicationVTable, self: ptr cQApplication) {.cdecl, raises:[], gcsafe.}
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
proc fcQApplication_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QApplication_virtualbase_metaObject".}
proc fcQApplication_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QApplication_virtualbase_metacast".}
proc fcQApplication_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QApplication_virtualbase_metacall".}
proc fcQApplication_virtualbase_notify(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QApplication_virtualbase_notify".}
proc fcQApplication_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QApplication_virtualbase_event".}
proc fcQApplication_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QApplication_virtualbase_eventFilter".}
proc fcQApplication_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QApplication_virtualbase_timerEvent".}
proc fcQApplication_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QApplication_virtualbase_childEvent".}
proc fcQApplication_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QApplication_virtualbase_customEvent".}
proc fcQApplication_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QApplication_virtualbase_connectNotify".}
proc fcQApplication_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QApplication_virtualbase_disconnectNotify".}
proc fcQApplication_new(vtbl: pointer, argc: ptr cint, argv: cstringArray): ptr cQApplication {.importc: "QApplication_new".}
proc fcQApplication_new2(vtbl: pointer, argc: ptr cint, argv: cstringArray, param3: cint): ptr cQApplication {.importc: "QApplication_new2".}
proc fcQApplication_staticMetaObject(): pointer {.importc: "QApplication_staticMetaObject".}
proc fcQApplication_delete(self: pointer) {.importc: "QApplication_delete".}

proc metaObject*(self: gen_qapplication_types.QApplication, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQApplication_metaObject(self.h))

proc metacast*(self: gen_qapplication_types.QApplication, param1: cstring): pointer =
  fcQApplication_metacast(self.h, param1)

proc metacall*(self: gen_qapplication_types.QApplication, param1: cint, param2: cint, param3: pointer): cint =
  fcQApplication_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qapplication_types.QApplication, s: cstring): string =
  let v_ms = fcQApplication_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qapplication_types.QApplication, s: cstring): string =
  let v_ms = fcQApplication_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc style*(_: type gen_qapplication_types.QApplication, ): gen_qstyle_types.QStyle =
  gen_qstyle_types.QStyle(h: fcQApplication_style())

proc setStyle*(_: type gen_qapplication_types.QApplication, style: gen_qstyle_types.QStyle): void =
  fcQApplication_setStyle(style.h)

proc setStyle*(_: type gen_qapplication_types.QApplication, style: string): gen_qstyle_types.QStyle =
  gen_qstyle_types.QStyle(h: fcQApplication_setStyleWithStyle(struct_miqt_string(data: style, len: csize_t(len(style)))))

proc colorSpec*(_: type gen_qapplication_types.QApplication, ): cint =
  fcQApplication_colorSpec()

proc setColorSpec*(_: type gen_qapplication_types.QApplication, colorSpec: cint): void =
  fcQApplication_setColorSpec(colorSpec)

proc palette*(_: type gen_qapplication_types.QApplication, param1: gen_qwidget_types.QWidget): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQApplication_palette(param1.h))

proc palette*(_: type gen_qapplication_types.QApplication, className: cstring): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQApplication_paletteWithClassName(className))

proc setPalette*(_: type gen_qapplication_types.QApplication, param1: gen_qpalette_types.QPalette): void =
  fcQApplication_setPalette(param1.h)

proc font*(_: type gen_qapplication_types.QApplication, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQApplication_font())

proc font*(_: type gen_qapplication_types.QApplication, param1: gen_qwidget_types.QWidget): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQApplication_fontWithQWidget(param1.h))

proc font*(_: type gen_qapplication_types.QApplication, className: cstring): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQApplication_fontWithClassName(className))

proc setFont*(_: type gen_qapplication_types.QApplication, param1: gen_qfont_types.QFont): void =
  fcQApplication_setFont(param1.h)

proc fontMetrics*(_: type gen_qapplication_types.QApplication, ): gen_qfontmetrics_types.QFontMetrics =
  gen_qfontmetrics_types.QFontMetrics(h: fcQApplication_fontMetrics())

proc setWindowIcon*(_: type gen_qapplication_types.QApplication, icon: gen_qicon_types.QIcon): void =
  fcQApplication_setWindowIcon(icon.h)

proc windowIcon*(_: type gen_qapplication_types.QApplication, ): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQApplication_windowIcon())

proc allWidgets*(_: type gen_qapplication_types.QApplication, ): seq[gen_qwidget_types.QWidget] =
  var v_ma = fcQApplication_allWidgets()
  var vx_ret = newSeq[gen_qwidget_types.QWidget](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwidget_types.QWidget(h: v_outCast[i])
  vx_ret

proc topLevelWidgets*(_: type gen_qapplication_types.QApplication, ): seq[gen_qwidget_types.QWidget] =
  var v_ma = fcQApplication_topLevelWidgets()
  var vx_ret = newSeq[gen_qwidget_types.QWidget](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwidget_types.QWidget(h: v_outCast[i])
  vx_ret

proc desktop*(_: type gen_qapplication_types.QApplication, ): gen_qdesktopwidget_types.QDesktopWidget =
  gen_qdesktopwidget_types.QDesktopWidget(h: fcQApplication_desktop())

proc activePopupWidget*(_: type gen_qapplication_types.QApplication, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQApplication_activePopupWidget())

proc activeModalWidget*(_: type gen_qapplication_types.QApplication, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQApplication_activeModalWidget())

proc focusWidget*(_: type gen_qapplication_types.QApplication, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQApplication_focusWidget())

proc activeWindow*(_: type gen_qapplication_types.QApplication, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQApplication_activeWindow())

proc setActiveWindow*(_: type gen_qapplication_types.QApplication, act: gen_qwidget_types.QWidget): void =
  fcQApplication_setActiveWindow(act.h)

proc widgetAt*(_: type gen_qapplication_types.QApplication, p: gen_qpoint_types.QPoint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQApplication_widgetAt(p.h))

proc widgetAt*(_: type gen_qapplication_types.QApplication, x: cint, y: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQApplication_widgetAt2(x, y))

proc topLevelAt*(_: type gen_qapplication_types.QApplication, p: gen_qpoint_types.QPoint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQApplication_topLevelAt(p.h))

proc topLevelAt*(_: type gen_qapplication_types.QApplication, x: cint, y: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQApplication_topLevelAt2(x, y))

proc beep*(_: type gen_qapplication_types.QApplication, ): void =
  fcQApplication_beep()

proc alert*(_: type gen_qapplication_types.QApplication, widget: gen_qwidget_types.QWidget): void =
  fcQApplication_alert(widget.h)

proc setCursorFlashTime*(_: type gen_qapplication_types.QApplication, cursorFlashTime: cint): void =
  fcQApplication_setCursorFlashTime(cursorFlashTime)

proc cursorFlashTime*(_: type gen_qapplication_types.QApplication, ): cint =
  fcQApplication_cursorFlashTime()

proc setDoubleClickInterval*(_: type gen_qapplication_types.QApplication, doubleClickInterval: cint): void =
  fcQApplication_setDoubleClickInterval(doubleClickInterval)

proc doubleClickInterval*(_: type gen_qapplication_types.QApplication, ): cint =
  fcQApplication_doubleClickInterval()

proc setKeyboardInputInterval*(_: type gen_qapplication_types.QApplication, keyboardInputInterval: cint): void =
  fcQApplication_setKeyboardInputInterval(keyboardInputInterval)

proc keyboardInputInterval*(_: type gen_qapplication_types.QApplication, ): cint =
  fcQApplication_keyboardInputInterval()

proc setWheelScrollLines*(_: type gen_qapplication_types.QApplication, wheelScrollLines: cint): void =
  fcQApplication_setWheelScrollLines(wheelScrollLines)

proc wheelScrollLines*(_: type gen_qapplication_types.QApplication, ): cint =
  fcQApplication_wheelScrollLines()

proc setGlobalStrut*(_: type gen_qapplication_types.QApplication, globalStrut: gen_qsize_types.QSize): void =
  fcQApplication_setGlobalStrut(globalStrut.h)

proc globalStrut*(_: type gen_qapplication_types.QApplication, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQApplication_globalStrut())

proc setStartDragTime*(_: type gen_qapplication_types.QApplication, ms: cint): void =
  fcQApplication_setStartDragTime(ms)

proc startDragTime*(_: type gen_qapplication_types.QApplication, ): cint =
  fcQApplication_startDragTime()

proc setStartDragDistance*(_: type gen_qapplication_types.QApplication, l: cint): void =
  fcQApplication_setStartDragDistance(l)

proc startDragDistance*(_: type gen_qapplication_types.QApplication, ): cint =
  fcQApplication_startDragDistance()

proc isEffectEnabled*(_: type gen_qapplication_types.QApplication, param1: cint): bool =
  fcQApplication_isEffectEnabled(cint(param1))

proc setEffectEnabled*(_: type gen_qapplication_types.QApplication, param1: cint): void =
  fcQApplication_setEffectEnabled(cint(param1))

proc exec*(_: type gen_qapplication_types.QApplication, ): cint =
  fcQApplication_exec()

proc notify*(self: gen_qapplication_types.QApplication, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQApplication_notify(self.h, param1.h, param2.h)

proc focusChanged*(self: gen_qapplication_types.QApplication, old: gen_qwidget_types.QWidget, now: gen_qwidget_types.QWidget): void =
  fcQApplication_focusChanged(self.h, old.h, now.h)

type QApplicationfocusChangedSlot* = proc(old: gen_qwidget_types.QWidget, now: gen_qwidget_types.QWidget)
proc miqt_exec_callback_cQApplication_focusChanged(slot: int, old: pointer, now: pointer) {.exportc: "miqt_exec_callback_QApplication_focusChanged".} =
  let nimfunc = cast[ptr QApplicationfocusChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: old)

  let slotval2 = gen_qwidget_types.QWidget(h: now)

  nimfunc[](slotval1, slotval2)

proc onfocusChanged*(self: gen_qapplication_types.QApplication, slot: QApplicationfocusChangedSlot) =
  var tmp = new QApplicationfocusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQApplication_connect_focusChanged(self.h, cast[int](addr tmp[]))

proc styleSheet*(self: gen_qapplication_types.QApplication, ): string =
  let v_ms = fcQApplication_styleSheet(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStyleSheet*(self: gen_qapplication_types.QApplication, sheet: string): void =
  fcQApplication_setStyleSheet(self.h, struct_miqt_string(data: sheet, len: csize_t(len(sheet))))

proc setAutoSipEnabled*(self: gen_qapplication_types.QApplication, enabled: bool): void =
  fcQApplication_setAutoSipEnabled(self.h, enabled)

proc autoSipEnabled*(self: gen_qapplication_types.QApplication, ): bool =
  fcQApplication_autoSipEnabled(self.h)

proc closeAllWindows*(_: type gen_qapplication_types.QApplication, ): void =
  fcQApplication_closeAllWindows()

proc aboutQt*(_: type gen_qapplication_types.QApplication, ): void =
  fcQApplication_aboutQt()

proc tr*(_: type gen_qapplication_types.QApplication, s: cstring, c: cstring): string =
  let v_ms = fcQApplication_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qapplication_types.QApplication, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQApplication_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qapplication_types.QApplication, s: cstring, c: cstring): string =
  let v_ms = fcQApplication_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qapplication_types.QApplication, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQApplication_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPalette*(_: type gen_qapplication_types.QApplication, param1: gen_qpalette_types.QPalette, className: cstring): void =
  fcQApplication_setPalette2(param1.h, className)

proc setFont*(_: type gen_qapplication_types.QApplication, param1: gen_qfont_types.QFont, className: cstring): void =
  fcQApplication_setFont2(param1.h, className)

proc alert*(_: type gen_qapplication_types.QApplication, widget: gen_qwidget_types.QWidget, duration: cint): void =
  fcQApplication_alert2(widget.h, duration)

proc setEffectEnabled*(_: type gen_qapplication_types.QApplication, param1: cint, enable: bool): void =
  fcQApplication_setEffectEnabled2(cint(param1), enable)

type QApplicationmetaObjectProc* = proc(self: QApplication): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QApplicationmetacastProc* = proc(self: QApplication, param1: cstring): pointer {.raises: [], gcsafe.}
type QApplicationmetacallProc* = proc(self: QApplication, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QApplicationnotifyProc* = proc(self: QApplication, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QApplicationeventProc* = proc(self: QApplication, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QApplicationeventFilterProc* = proc(self: QApplication, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QApplicationtimerEventProc* = proc(self: QApplication, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QApplicationchildEventProc* = proc(self: QApplication, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QApplicationcustomEventProc* = proc(self: QApplication, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QApplicationconnectNotifyProc* = proc(self: QApplication, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QApplicationdisconnectNotifyProc* = proc(self: QApplication, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QApplicationVTable* = object
  vtbl: cQApplicationVTable
  metaObject*: QApplicationmetaObjectProc
  metacast*: QApplicationmetacastProc
  metacall*: QApplicationmetacallProc
  notify*: QApplicationnotifyProc
  event*: QApplicationeventProc
  eventFilter*: QApplicationeventFilterProc
  timerEvent*: QApplicationtimerEventProc
  childEvent*: QApplicationchildEventProc
  customEvent*: QApplicationcustomEventProc
  connectNotify*: QApplicationconnectNotifyProc
  disconnectNotify*: QApplicationdisconnectNotifyProc
proc QApplicationmetaObject*(self: gen_qapplication_types.QApplication, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQApplication_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQApplication_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](vtbl)
  let self = QApplication(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QApplicationmetacast*(self: gen_qapplication_types.QApplication, param1: cstring): pointer =
  fcQApplication_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQApplication_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](vtbl)
  let self = QApplication(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QApplicationmetacall*(self: gen_qapplication_types.QApplication, param1: cint, param2: cint, param3: pointer): cint =
  fcQApplication_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQApplication_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](vtbl)
  let self = QApplication(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QApplicationnotify*(self: gen_qapplication_types.QApplication, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQApplication_virtualbase_notify(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQApplication_notify(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](vtbl)
  let self = QApplication(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].notify(self, slotval1, slotval2)
  virtualReturn

proc QApplicationevent*(self: gen_qapplication_types.QApplication, param1: gen_qcoreevent_types.QEvent): bool =
  fcQApplication_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQApplication_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](vtbl)
  let self = QApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QApplicationeventFilter*(self: gen_qapplication_types.QApplication, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQApplication_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQApplication_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](vtbl)
  let self = QApplication(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QApplicationtimerEvent*(self: gen_qapplication_types.QApplication, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQApplication_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQApplication_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](vtbl)
  let self = QApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QApplicationchildEvent*(self: gen_qapplication_types.QApplication, event: gen_qcoreevent_types.QChildEvent): void =
  fcQApplication_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQApplication_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](vtbl)
  let self = QApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QApplicationcustomEvent*(self: gen_qapplication_types.QApplication, event: gen_qcoreevent_types.QEvent): void =
  fcQApplication_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQApplication_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](vtbl)
  let self = QApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QApplicationconnectNotify*(self: gen_qapplication_types.QApplication, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQApplication_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQApplication_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](vtbl)
  let self = QApplication(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QApplicationdisconnectNotify*(self: gen_qapplication_types.QApplication, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQApplication_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQApplication_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](vtbl)
  let self = QApplication(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qapplication_types.QApplication,
    vtbl: ref QApplicationVTable = nil): gen_qapplication_types.QApplication =
  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  let vtbl = if vtbl == nil: new QApplicationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQApplicationVTable, _: ptr cQApplication) {.cdecl.} =
    let vtbl = cast[ref QApplicationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQApplication_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQApplication_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQApplication_metacall
  if not isNil(vtbl.notify):
    vtbl[].vtbl.notify = miqt_exec_callback_cQApplication_notify
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQApplication_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQApplication_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQApplication_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQApplication_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQApplication_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQApplication_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQApplication_disconnectNotify
  gen_qapplication_types.QApplication(h: fcQApplication_new(addr(vtbl[]), addr argc, argv))

proc create*(T: type gen_qapplication_types.QApplication,
    param3: cint,
    vtbl: ref QApplicationVTable = nil): gen_qapplication_types.QApplication =
  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  let vtbl = if vtbl == nil: new QApplicationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQApplicationVTable, _: ptr cQApplication) {.cdecl.} =
    let vtbl = cast[ref QApplicationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQApplication_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQApplication_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQApplication_metacall
  if not isNil(vtbl.notify):
    vtbl[].vtbl.notify = miqt_exec_callback_cQApplication_notify
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQApplication_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQApplication_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQApplication_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQApplication_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQApplication_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQApplication_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQApplication_disconnectNotify
  gen_qapplication_types.QApplication(h: fcQApplication_new2(addr(vtbl[]), addr argc, argv, param3))

proc staticMetaObject*(_: type gen_qapplication_types.QApplication): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQApplication_staticMetaObject())
proc delete*(self: gen_qapplication_types.QApplication) =
  fcQApplication_delete(self.h)
