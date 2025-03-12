import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
{.compile("gen_qapplication.cpp", cflags).}


import ./gen_qapplication_types
export gen_qapplication_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtGui/gen_qfont_types,
  ../QtGui/gen_qfontmetrics_types,
  ../QtGui/gen_qguiapplication,
  ../QtGui/gen_qpalette_types,
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
  gen_qfont_types,
  gen_qfontmetrics_types,
  gen_qguiapplication,
  gen_qpalette_types,
  gen_qstyle_types,
  gen_qwidget_types

type cQApplication*{.exportc: "QApplication", incompleteStruct.} = object

proc fcQApplication_metaObject(self: pointer): pointer {.importc: "QApplication_metaObject".}
proc fcQApplication_metacast(self: pointer, param1: cstring): pointer {.importc: "QApplication_metacast".}
proc fcQApplication_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QApplication_metacall".}
proc fcQApplication_tr(s: cstring): struct_miqt_string {.importc: "QApplication_tr".}
proc fcQApplication_style(): pointer {.importc: "QApplication_style".}
proc fcQApplication_setStyle(style: pointer): void {.importc: "QApplication_setStyle".}
proc fcQApplication_setStyleWithStyle(style: struct_miqt_string): pointer {.importc: "QApplication_setStyleWithStyle".}
proc fcQApplication_palette(param1: pointer): pointer {.importc: "QApplication_palette".}
proc fcQApplication_paletteWithClassName(className: cstring): pointer {.importc: "QApplication_paletteWithClassName".}
proc fcQApplication_setPalette(param1: pointer): void {.importc: "QApplication_setPalette".}
proc fcQApplication_font(): pointer {.importc: "QApplication_font".}
proc fcQApplication_fontWithQWidget(param1: pointer): pointer {.importc: "QApplication_fontWithQWidget".}
proc fcQApplication_fontWithClassName(className: cstring): pointer {.importc: "QApplication_fontWithClassName".}
proc fcQApplication_setFont(param1: pointer): void {.importc: "QApplication_setFont".}
proc fcQApplication_fontMetrics(): pointer {.importc: "QApplication_fontMetrics".}
proc fcQApplication_allWidgets(): struct_miqt_array {.importc: "QApplication_allWidgets".}
proc fcQApplication_topLevelWidgets(): struct_miqt_array {.importc: "QApplication_topLevelWidgets".}
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
proc fcQApplication_setStartDragTime(ms: cint): void {.importc: "QApplication_setStartDragTime".}
proc fcQApplication_startDragTime(): cint {.importc: "QApplication_startDragTime".}
proc fcQApplication_setStartDragDistance(l: cint): void {.importc: "QApplication_setStartDragDistance".}
proc fcQApplication_startDragDistance(): cint {.importc: "QApplication_startDragDistance".}
proc fcQApplication_isEffectEnabled(param1: cint): bool {.importc: "QApplication_isEffectEnabled".}
proc fcQApplication_setEffectEnabled(param1: cint): void {.importc: "QApplication_setEffectEnabled".}
proc fcQApplication_exec(): cint {.importc: "QApplication_exec".}
proc fcQApplication_notify(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QApplication_notify".}
proc fcQApplication_focusChanged(self: pointer, old: pointer, now: pointer): void {.importc: "QApplication_focusChanged".}
proc fcQApplication_connect_focusChanged(self: pointer, slot: int, callback: proc (slot: int, old: pointer, now: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QApplication_connect_focusChanged".}
proc fcQApplication_styleSheet(self: pointer): struct_miqt_string {.importc: "QApplication_styleSheet".}
proc fcQApplication_setStyleSheet(self: pointer, sheet: struct_miqt_string): void {.importc: "QApplication_setStyleSheet".}
proc fcQApplication_setAutoSipEnabled(self: pointer, enabled: bool): void {.importc: "QApplication_setAutoSipEnabled".}
proc fcQApplication_autoSipEnabled(self: pointer): bool {.importc: "QApplication_autoSipEnabled".}
proc fcQApplication_closeAllWindows(): void {.importc: "QApplication_closeAllWindows".}
proc fcQApplication_aboutQt(): void {.importc: "QApplication_aboutQt".}
proc fcQApplication_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QApplication_tr2".}
proc fcQApplication_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QApplication_tr3".}
proc fcQApplication_setPalette2(param1: pointer, className: cstring): void {.importc: "QApplication_setPalette2".}
proc fcQApplication_setFont2(param1: pointer, className: cstring): void {.importc: "QApplication_setFont2".}
proc fcQApplication_alert2(widget: pointer, duration: cint): void {.importc: "QApplication_alert2".}
proc fcQApplication_setEffectEnabled2(param1: cint, enable: bool): void {.importc: "QApplication_setEffectEnabled2".}
proc fcQApplication_vtbl(self: pointer): pointer {.importc: "QApplication_vtbl".}
proc fcQApplication_vdata(self: pointer): pointer {.importc: "QApplication_vdata".}
type cQApplicationVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  notify*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQApplication_virtualbase_metaObject(self: pointer): pointer {.importc: "QApplication_virtualbase_metaObject".}
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
proc fcQApplication_protectedbase_resolveInterface(self: pointer, name: cstring, revision: cint): pointer {.importc: "QApplication_protectedbase_resolveInterface".}
proc fcQApplication_protectedbase_sender(self: pointer): pointer {.importc: "QApplication_protectedbase_sender".}
proc fcQApplication_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QApplication_protectedbase_senderSignalIndex".}
proc fcQApplication_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QApplication_protectedbase_receivers".}
proc fcQApplication_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QApplication_protectedbase_isSignalConnected".}
proc fcQApplication_new(vtbl, vdata: pointer, argc: ptr cint, argv: cstringArray): ptr cQApplication {.importc: "QApplication_new".}
proc fcQApplication_new2(vtbl, vdata: pointer, argc: ptr cint, argv: cstringArray, param3: cint): ptr cQApplication {.importc: "QApplication_new2".}
proc fcQApplication_staticMetaObject(): pointer {.importc: "QApplication_staticMetaObject".}

proc metaObject*(self: gen_qapplication_types.QApplication): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQApplication_metaObject(self.h), owned: false)

proc metacast*(self: gen_qapplication_types.QApplication, param1: cstring): pointer =
  fcQApplication_metacast(self.h, param1)

proc metacall*(self: gen_qapplication_types.QApplication, param1: cint, param2: cint, param3: pointer): cint =
  fcQApplication_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qapplication_types.QApplication, s: cstring): string =
  let v_ms = fcQApplication_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc style*(_: type gen_qapplication_types.QApplication): gen_qstyle_types.QStyle =
  gen_qstyle_types.QStyle(h: fcQApplication_style(), owned: false)

proc setStyle*(_: type gen_qapplication_types.QApplication, style: gen_qstyle_types.QStyle): void =
  fcQApplication_setStyle(style.h)

proc setStyle*(_: type gen_qapplication_types.QApplication, style: string): gen_qstyle_types.QStyle =
  gen_qstyle_types.QStyle(h: fcQApplication_setStyleWithStyle(struct_miqt_string(data: style, len: csize_t(len(style)))), owned: false)

proc palette*(_: type gen_qapplication_types.QApplication, param1: gen_qwidget_types.QWidget): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQApplication_palette(param1.h), owned: true)

proc palette*(_: type gen_qapplication_types.QApplication, className: cstring): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQApplication_paletteWithClassName(className), owned: true)

proc setPalette*(_: type gen_qapplication_types.QApplication, param1: gen_qpalette_types.QPalette): void =
  fcQApplication_setPalette(param1.h)

proc font*(_: type gen_qapplication_types.QApplication): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQApplication_font(), owned: true)

proc font*(_: type gen_qapplication_types.QApplication, param1: gen_qwidget_types.QWidget): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQApplication_fontWithQWidget(param1.h), owned: true)

proc font*(_: type gen_qapplication_types.QApplication, className: cstring): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQApplication_fontWithClassName(className), owned: true)

proc setFont*(_: type gen_qapplication_types.QApplication, param1: gen_qfont_types.QFont): void =
  fcQApplication_setFont(param1.h)

proc fontMetrics*(_: type gen_qapplication_types.QApplication): gen_qfontmetrics_types.QFontMetrics =
  gen_qfontmetrics_types.QFontMetrics(h: fcQApplication_fontMetrics(), owned: true)

proc allWidgets*(_: type gen_qapplication_types.QApplication): seq[gen_qwidget_types.QWidget] =
  var v_ma = fcQApplication_allWidgets()
  var vx_ret = newSeq[gen_qwidget_types.QWidget](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwidget_types.QWidget(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc topLevelWidgets*(_: type gen_qapplication_types.QApplication): seq[gen_qwidget_types.QWidget] =
  var v_ma = fcQApplication_topLevelWidgets()
  var vx_ret = newSeq[gen_qwidget_types.QWidget](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwidget_types.QWidget(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc activePopupWidget*(_: type gen_qapplication_types.QApplication): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQApplication_activePopupWidget(), owned: false)

proc activeModalWidget*(_: type gen_qapplication_types.QApplication): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQApplication_activeModalWidget(), owned: false)

proc focusWidget*(_: type gen_qapplication_types.QApplication): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQApplication_focusWidget(), owned: false)

proc activeWindow*(_: type gen_qapplication_types.QApplication): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQApplication_activeWindow(), owned: false)

proc setActiveWindow*(_: type gen_qapplication_types.QApplication, act: gen_qwidget_types.QWidget): void =
  fcQApplication_setActiveWindow(act.h)

proc widgetAt*(_: type gen_qapplication_types.QApplication, p: gen_qpoint_types.QPoint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQApplication_widgetAt(p.h), owned: false)

proc widgetAt*(_: type gen_qapplication_types.QApplication, x: cint, y: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQApplication_widgetAt2(x, y), owned: false)

proc topLevelAt*(_: type gen_qapplication_types.QApplication, p: gen_qpoint_types.QPoint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQApplication_topLevelAt(p.h), owned: false)

proc topLevelAt*(_: type gen_qapplication_types.QApplication, x: cint, y: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQApplication_topLevelAt2(x, y), owned: false)

proc beep*(_: type gen_qapplication_types.QApplication): void =
  fcQApplication_beep()

proc alert*(_: type gen_qapplication_types.QApplication, widget: gen_qwidget_types.QWidget): void =
  fcQApplication_alert(widget.h)

proc setCursorFlashTime*(_: type gen_qapplication_types.QApplication, cursorFlashTime: cint): void =
  fcQApplication_setCursorFlashTime(cursorFlashTime)

proc cursorFlashTime*(_: type gen_qapplication_types.QApplication): cint =
  fcQApplication_cursorFlashTime()

proc setDoubleClickInterval*(_: type gen_qapplication_types.QApplication, doubleClickInterval: cint): void =
  fcQApplication_setDoubleClickInterval(doubleClickInterval)

proc doubleClickInterval*(_: type gen_qapplication_types.QApplication): cint =
  fcQApplication_doubleClickInterval()

proc setKeyboardInputInterval*(_: type gen_qapplication_types.QApplication, keyboardInputInterval: cint): void =
  fcQApplication_setKeyboardInputInterval(keyboardInputInterval)

proc keyboardInputInterval*(_: type gen_qapplication_types.QApplication): cint =
  fcQApplication_keyboardInputInterval()

proc setWheelScrollLines*(_: type gen_qapplication_types.QApplication, wheelScrollLines: cint): void =
  fcQApplication_setWheelScrollLines(wheelScrollLines)

proc wheelScrollLines*(_: type gen_qapplication_types.QApplication): cint =
  fcQApplication_wheelScrollLines()

proc setStartDragTime*(_: type gen_qapplication_types.QApplication, ms: cint): void =
  fcQApplication_setStartDragTime(ms)

proc startDragTime*(_: type gen_qapplication_types.QApplication): cint =
  fcQApplication_startDragTime()

proc setStartDragDistance*(_: type gen_qapplication_types.QApplication, l: cint): void =
  fcQApplication_setStartDragDistance(l)

proc startDragDistance*(_: type gen_qapplication_types.QApplication): cint =
  fcQApplication_startDragDistance()

proc isEffectEnabled*(_: type gen_qapplication_types.QApplication, param1: cint): bool =
  fcQApplication_isEffectEnabled(cint(param1))

proc setEffectEnabled*(_: type gen_qapplication_types.QApplication, param1: cint): void =
  fcQApplication_setEffectEnabled(cint(param1))

proc exec*(_: type gen_qapplication_types.QApplication): cint =
  fcQApplication_exec()

proc notify*(self: gen_qapplication_types.QApplication, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQApplication_notify(self.h, param1.h, param2.h)

proc focusChanged*(self: gen_qapplication_types.QApplication, old: gen_qwidget_types.QWidget, now: gen_qwidget_types.QWidget): void =
  fcQApplication_focusChanged(self.h, old.h, now.h)

type QApplicationfocusChangedSlot* = proc(old: gen_qwidget_types.QWidget, now: gen_qwidget_types.QWidget)
proc cQApplication_slot_callback_focusChanged(slot: int, old: pointer, now: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QApplicationfocusChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: old, owned: false)

  let slotval2 = gen_qwidget_types.QWidget(h: now, owned: false)

  nimfunc[](slotval1, slotval2)

proc cQApplication_slot_callback_focusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QApplicationfocusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfocusChanged*(self: gen_qapplication_types.QApplication, slot: QApplicationfocusChangedSlot) =
  var tmp = new QApplicationfocusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQApplication_connect_focusChanged(self.h, cast[int](addr tmp[]), cQApplication_slot_callback_focusChanged, cQApplication_slot_callback_focusChanged_release)

proc styleSheet*(self: gen_qapplication_types.QApplication): string =
  let v_ms = fcQApplication_styleSheet(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStyleSheet*(self: gen_qapplication_types.QApplication, sheet: string): void =
  fcQApplication_setStyleSheet(self.h, struct_miqt_string(data: sheet, len: csize_t(len(sheet))))

proc setAutoSipEnabled*(self: gen_qapplication_types.QApplication, enabled: bool): void =
  fcQApplication_setAutoSipEnabled(self.h, enabled)

proc autoSipEnabled*(self: gen_qapplication_types.QApplication): bool =
  fcQApplication_autoSipEnabled(self.h)

proc closeAllWindows*(_: type gen_qapplication_types.QApplication): void =
  fcQApplication_closeAllWindows()

proc aboutQt*(_: type gen_qapplication_types.QApplication): void =
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
type QApplicationVTable* {.inheritable, pure.} = object
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
proc QApplicationmetaObject*(self: gen_qapplication_types.QApplication): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQApplication_virtualbase_metaObject(self.h), owned: false)

proc cQApplication_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](fcQApplication_vdata(self))
  let self = QApplication(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QApplicationmetacast*(self: gen_qapplication_types.QApplication, param1: cstring): pointer =
  fcQApplication_virtualbase_metacast(self.h, param1)

proc cQApplication_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](fcQApplication_vdata(self))
  let self = QApplication(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QApplicationmetacall*(self: gen_qapplication_types.QApplication, param1: cint, param2: cint, param3: pointer): cint =
  fcQApplication_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQApplication_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](fcQApplication_vdata(self))
  let self = QApplication(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QApplicationnotify*(self: gen_qapplication_types.QApplication, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQApplication_virtualbase_notify(self.h, param1.h, param2.h)

proc cQApplication_vtable_callback_notify(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](fcQApplication_vdata(self))
  let self = QApplication(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].notify(self, slotval1, slotval2)
  virtualReturn

proc QApplicationevent*(self: gen_qapplication_types.QApplication, param1: gen_qcoreevent_types.QEvent): bool =
  fcQApplication_virtualbase_event(self.h, param1.h)

proc cQApplication_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](fcQApplication_vdata(self))
  let self = QApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QApplicationeventFilter*(self: gen_qapplication_types.QApplication, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQApplication_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQApplication_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](fcQApplication_vdata(self))
  let self = QApplication(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QApplicationtimerEvent*(self: gen_qapplication_types.QApplication, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQApplication_virtualbase_timerEvent(self.h, event.h)

proc cQApplication_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](fcQApplication_vdata(self))
  let self = QApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QApplicationchildEvent*(self: gen_qapplication_types.QApplication, event: gen_qcoreevent_types.QChildEvent): void =
  fcQApplication_virtualbase_childEvent(self.h, event.h)

proc cQApplication_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](fcQApplication_vdata(self))
  let self = QApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QApplicationcustomEvent*(self: gen_qapplication_types.QApplication, event: gen_qcoreevent_types.QEvent): void =
  fcQApplication_virtualbase_customEvent(self.h, event.h)

proc cQApplication_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](fcQApplication_vdata(self))
  let self = QApplication(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QApplicationconnectNotify*(self: gen_qapplication_types.QApplication, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQApplication_virtualbase_connectNotify(self.h, signal.h)

proc cQApplication_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](fcQApplication_vdata(self))
  let self = QApplication(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QApplicationdisconnectNotify*(self: gen_qapplication_types.QApplication, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQApplication_virtualbase_disconnectNotify(self.h, signal.h)

proc cQApplication_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QApplicationVTable](fcQApplication_vdata(self))
  let self = QApplication(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQApplication* {.inheritable.} = ref object of QApplication
  vtbl*: cQApplicationVTable
method metaObject*(self: VirtualQApplication): gen_qobjectdefs_types.QMetaObject {.base.} =
  QApplicationmetaObject(self[])
proc cQApplication_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQApplication](fcQApplication_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQApplication, param1: cstring): pointer {.base.} =
  QApplicationmetacast(self[], param1)
proc cQApplication_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQApplication](fcQApplication_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQApplication, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QApplicationmetacall(self[], param1, param2, param3)
proc cQApplication_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQApplication](fcQApplication_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method notify*(self: VirtualQApplication, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QApplicationnotify(self[], param1, param2)
proc cQApplication_method_callback_notify(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQApplication](fcQApplication_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.notify(slotval1, slotval2)
  virtualReturn

method event*(self: VirtualQApplication, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QApplicationevent(self[], param1)
proc cQApplication_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQApplication](fcQApplication_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQApplication, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QApplicationeventFilter(self[], watched, event)
proc cQApplication_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQApplication](fcQApplication_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQApplication, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QApplicationtimerEvent(self[], event)
proc cQApplication_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQApplication](fcQApplication_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQApplication, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QApplicationchildEvent(self[], event)
proc cQApplication_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQApplication](fcQApplication_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQApplication, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QApplicationcustomEvent(self[], event)
proc cQApplication_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQApplication](fcQApplication_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQApplication, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QApplicationconnectNotify(self[], signal)
proc cQApplication_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQApplication](fcQApplication_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQApplication, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QApplicationdisconnectNotify(self[], signal)
proc cQApplication_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQApplication](fcQApplication_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc resolveInterface*(self: gen_qapplication_types.QApplication, name: cstring, revision: cint): pointer =
  fcQApplication_protectedbase_resolveInterface(self.h, name, revision)

proc sender*(self: gen_qapplication_types.QApplication): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQApplication_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qapplication_types.QApplication): cint =
  fcQApplication_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qapplication_types.QApplication, signal: cstring): cint =
  fcQApplication_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qapplication_types.QApplication, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQApplication_protectedbase_isSignalConnected(self.h, signal.h)

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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QApplicationVTable](fcQApplication_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQApplication_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQApplication_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQApplication_vtable_callback_metacall
  if not isNil(vtbl[].notify):
    vtbl[].vtbl.notify = cQApplication_vtable_callback_notify
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQApplication_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQApplication_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQApplication_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQApplication_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQApplication_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQApplication_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQApplication_vtable_callback_disconnectNotify
  gen_qapplication_types.QApplication(h: fcQApplication_new(addr(vtbl[].vtbl), addr(vtbl[]), addr argc, argv), owned: true)

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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QApplicationVTable](fcQApplication_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQApplication_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQApplication_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQApplication_vtable_callback_metacall
  if not isNil(vtbl[].notify):
    vtbl[].vtbl.notify = cQApplication_vtable_callback_notify
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQApplication_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQApplication_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQApplication_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQApplication_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQApplication_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQApplication_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQApplication_vtable_callback_disconnectNotify
  gen_qapplication_types.QApplication(h: fcQApplication_new2(addr(vtbl[].vtbl), addr(vtbl[]), addr argc, argv, param3), owned: true)

const cQApplication_mvtbl = cQApplicationVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQApplication()[])](self.fcQApplication_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQApplication_method_callback_metaObject,
  metacast: cQApplication_method_callback_metacast,
  metacall: cQApplication_method_callback_metacall,
  notify: cQApplication_method_callback_notify,
  event: cQApplication_method_callback_event,
  eventFilter: cQApplication_method_callback_eventFilter,
  timerEvent: cQApplication_method_callback_timerEvent,
  childEvent: cQApplication_method_callback_childEvent,
  customEvent: cQApplication_method_callback_customEvent,
  connectNotify: cQApplication_method_callback_connectNotify,
  disconnectNotify: cQApplication_method_callback_disconnectNotify,
)
proc create*(T: type gen_qapplication_types.QApplication,
    inst: VirtualQApplication) =
  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQApplication_new(addr(cQApplication_mvtbl), addr(inst[]), addr argc, argv)
  inst[].owned = true

proc create*(T: type gen_qapplication_types.QApplication,
    param3: cint,
    inst: VirtualQApplication) =
  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQApplication_new2(addr(cQApplication_mvtbl), addr(inst[]), addr argc, argv, param3)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qapplication_types.QApplication): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQApplication_staticMetaObject())
