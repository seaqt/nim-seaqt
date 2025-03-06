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
{.compile("gen_qstylehints.cpp", cflags).}


import ./gen_qstylehints_types
export gen_qstylehints_types

import
  ../QtCore/gen_qchar_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qchar_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQStyleHints*{.exportc: "QStyleHints", incompleteStruct.} = object

proc fcQStyleHints_metaObject(self: pointer, ): pointer {.importc: "QStyleHints_metaObject".}
proc fcQStyleHints_metacast(self: pointer, param1: cstring): pointer {.importc: "QStyleHints_metacast".}
proc fcQStyleHints_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStyleHints_metacall".}
proc fcQStyleHints_tr(s: cstring): struct_miqt_string {.importc: "QStyleHints_tr".}
proc fcQStyleHints_trUtf8(s: cstring): struct_miqt_string {.importc: "QStyleHints_trUtf8".}
proc fcQStyleHints_setMouseDoubleClickInterval(self: pointer, mouseDoubleClickInterval: cint): void {.importc: "QStyleHints_setMouseDoubleClickInterval".}
proc fcQStyleHints_mouseDoubleClickInterval(self: pointer, ): cint {.importc: "QStyleHints_mouseDoubleClickInterval".}
proc fcQStyleHints_mouseDoubleClickDistance(self: pointer, ): cint {.importc: "QStyleHints_mouseDoubleClickDistance".}
proc fcQStyleHints_touchDoubleTapDistance(self: pointer, ): cint {.importc: "QStyleHints_touchDoubleTapDistance".}
proc fcQStyleHints_setMousePressAndHoldInterval(self: pointer, mousePressAndHoldInterval: cint): void {.importc: "QStyleHints_setMousePressAndHoldInterval".}
proc fcQStyleHints_mousePressAndHoldInterval(self: pointer, ): cint {.importc: "QStyleHints_mousePressAndHoldInterval".}
proc fcQStyleHints_setStartDragDistance(self: pointer, startDragDistance: cint): void {.importc: "QStyleHints_setStartDragDistance".}
proc fcQStyleHints_startDragDistance(self: pointer, ): cint {.importc: "QStyleHints_startDragDistance".}
proc fcQStyleHints_setStartDragTime(self: pointer, startDragTime: cint): void {.importc: "QStyleHints_setStartDragTime".}
proc fcQStyleHints_startDragTime(self: pointer, ): cint {.importc: "QStyleHints_startDragTime".}
proc fcQStyleHints_startDragVelocity(self: pointer, ): cint {.importc: "QStyleHints_startDragVelocity".}
proc fcQStyleHints_setKeyboardInputInterval(self: pointer, keyboardInputInterval: cint): void {.importc: "QStyleHints_setKeyboardInputInterval".}
proc fcQStyleHints_keyboardInputInterval(self: pointer, ): cint {.importc: "QStyleHints_keyboardInputInterval".}
proc fcQStyleHints_keyboardAutoRepeatRate(self: pointer, ): cint {.importc: "QStyleHints_keyboardAutoRepeatRate".}
proc fcQStyleHints_setCursorFlashTime(self: pointer, cursorFlashTime: cint): void {.importc: "QStyleHints_setCursorFlashTime".}
proc fcQStyleHints_cursorFlashTime(self: pointer, ): cint {.importc: "QStyleHints_cursorFlashTime".}
proc fcQStyleHints_showIsFullScreen(self: pointer, ): bool {.importc: "QStyleHints_showIsFullScreen".}
proc fcQStyleHints_showIsMaximized(self: pointer, ): bool {.importc: "QStyleHints_showIsMaximized".}
proc fcQStyleHints_showShortcutsInContextMenus(self: pointer, ): bool {.importc: "QStyleHints_showShortcutsInContextMenus".}
proc fcQStyleHints_setShowShortcutsInContextMenus(self: pointer, showShortcutsInContextMenus: bool): void {.importc: "QStyleHints_setShowShortcutsInContextMenus".}
proc fcQStyleHints_passwordMaskDelay(self: pointer, ): cint {.importc: "QStyleHints_passwordMaskDelay".}
proc fcQStyleHints_passwordMaskCharacter(self: pointer, ): pointer {.importc: "QStyleHints_passwordMaskCharacter".}
proc fcQStyleHints_fontSmoothingGamma(self: pointer, ): float64 {.importc: "QStyleHints_fontSmoothingGamma".}
proc fcQStyleHints_useRtlExtensions(self: pointer, ): bool {.importc: "QStyleHints_useRtlExtensions".}
proc fcQStyleHints_setFocusOnTouchRelease(self: pointer, ): bool {.importc: "QStyleHints_setFocusOnTouchRelease".}
proc fcQStyleHints_tabFocusBehavior(self: pointer, ): cint {.importc: "QStyleHints_tabFocusBehavior".}
proc fcQStyleHints_setTabFocusBehavior(self: pointer, tabFocusBehavior: cint): void {.importc: "QStyleHints_setTabFocusBehavior".}
proc fcQStyleHints_singleClickActivation(self: pointer, ): bool {.importc: "QStyleHints_singleClickActivation".}
proc fcQStyleHints_useHoverEffects(self: pointer, ): bool {.importc: "QStyleHints_useHoverEffects".}
proc fcQStyleHints_setUseHoverEffects(self: pointer, useHoverEffects: bool): void {.importc: "QStyleHints_setUseHoverEffects".}
proc fcQStyleHints_wheelScrollLines(self: pointer, ): cint {.importc: "QStyleHints_wheelScrollLines".}
proc fcQStyleHints_setWheelScrollLines(self: pointer, scrollLines: cint): void {.importc: "QStyleHints_setWheelScrollLines".}
proc fcQStyleHints_setMouseQuickSelectionThreshold(self: pointer, threshold: cint): void {.importc: "QStyleHints_setMouseQuickSelectionThreshold".}
proc fcQStyleHints_mouseQuickSelectionThreshold(self: pointer, ): cint {.importc: "QStyleHints_mouseQuickSelectionThreshold".}
proc fcQStyleHints_cursorFlashTimeChanged(self: pointer, cursorFlashTime: cint): void {.importc: "QStyleHints_cursorFlashTimeChanged".}
proc fcQStyleHints_connect_cursorFlashTimeChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_cursorFlashTimeChanged".}
proc fcQStyleHints_keyboardInputIntervalChanged(self: pointer, keyboardInputInterval: cint): void {.importc: "QStyleHints_keyboardInputIntervalChanged".}
proc fcQStyleHints_connect_keyboardInputIntervalChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_keyboardInputIntervalChanged".}
proc fcQStyleHints_mouseDoubleClickIntervalChanged(self: pointer, mouseDoubleClickInterval: cint): void {.importc: "QStyleHints_mouseDoubleClickIntervalChanged".}
proc fcQStyleHints_connect_mouseDoubleClickIntervalChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_mouseDoubleClickIntervalChanged".}
proc fcQStyleHints_mousePressAndHoldIntervalChanged(self: pointer, mousePressAndHoldInterval: cint): void {.importc: "QStyleHints_mousePressAndHoldIntervalChanged".}
proc fcQStyleHints_connect_mousePressAndHoldIntervalChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_mousePressAndHoldIntervalChanged".}
proc fcQStyleHints_startDragDistanceChanged(self: pointer, startDragDistance: cint): void {.importc: "QStyleHints_startDragDistanceChanged".}
proc fcQStyleHints_connect_startDragDistanceChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_startDragDistanceChanged".}
proc fcQStyleHints_startDragTimeChanged(self: pointer, startDragTime: cint): void {.importc: "QStyleHints_startDragTimeChanged".}
proc fcQStyleHints_connect_startDragTimeChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_startDragTimeChanged".}
proc fcQStyleHints_tabFocusBehaviorChanged(self: pointer, tabFocusBehavior: cint): void {.importc: "QStyleHints_tabFocusBehaviorChanged".}
proc fcQStyleHints_connect_tabFocusBehaviorChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_tabFocusBehaviorChanged".}
proc fcQStyleHints_useHoverEffectsChanged(self: pointer, useHoverEffects: bool): void {.importc: "QStyleHints_useHoverEffectsChanged".}
proc fcQStyleHints_connect_useHoverEffectsChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_useHoverEffectsChanged".}
proc fcQStyleHints_showShortcutsInContextMenusChanged(self: pointer, param1: bool): void {.importc: "QStyleHints_showShortcutsInContextMenusChanged".}
proc fcQStyleHints_connect_showShortcutsInContextMenusChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_showShortcutsInContextMenusChanged".}
proc fcQStyleHints_wheelScrollLinesChanged(self: pointer, scrollLines: cint): void {.importc: "QStyleHints_wheelScrollLinesChanged".}
proc fcQStyleHints_connect_wheelScrollLinesChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_wheelScrollLinesChanged".}
proc fcQStyleHints_mouseQuickSelectionThresholdChanged(self: pointer, threshold: cint): void {.importc: "QStyleHints_mouseQuickSelectionThresholdChanged".}
proc fcQStyleHints_connect_mouseQuickSelectionThresholdChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_mouseQuickSelectionThresholdChanged".}
proc fcQStyleHints_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStyleHints_tr2".}
proc fcQStyleHints_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStyleHints_tr3".}
proc fcQStyleHints_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStyleHints_trUtf82".}
proc fcQStyleHints_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStyleHints_trUtf83".}
proc fcQStyleHints_staticMetaObject(): pointer {.importc: "QStyleHints_staticMetaObject".}
proc fcQStyleHints_delete(self: pointer) {.importc: "QStyleHints_delete".}

proc metaObject*(self: gen_qstylehints_types.QStyleHints, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStyleHints_metaObject(self.h))

proc metacast*(self: gen_qstylehints_types.QStyleHints, param1: cstring): pointer =
  fcQStyleHints_metacast(self.h, param1)

proc metacall*(self: gen_qstylehints_types.QStyleHints, param1: cint, param2: cint, param3: pointer): cint =
  fcQStyleHints_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstylehints_types.QStyleHints, s: cstring): string =
  let v_ms = fcQStyleHints_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstylehints_types.QStyleHints, s: cstring): string =
  let v_ms = fcQStyleHints_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMouseDoubleClickInterval*(self: gen_qstylehints_types.QStyleHints, mouseDoubleClickInterval: cint): void =
  fcQStyleHints_setMouseDoubleClickInterval(self.h, mouseDoubleClickInterval)

proc mouseDoubleClickInterval*(self: gen_qstylehints_types.QStyleHints, ): cint =
  fcQStyleHints_mouseDoubleClickInterval(self.h)

proc mouseDoubleClickDistance*(self: gen_qstylehints_types.QStyleHints, ): cint =
  fcQStyleHints_mouseDoubleClickDistance(self.h)

proc touchDoubleTapDistance*(self: gen_qstylehints_types.QStyleHints, ): cint =
  fcQStyleHints_touchDoubleTapDistance(self.h)

proc setMousePressAndHoldInterval*(self: gen_qstylehints_types.QStyleHints, mousePressAndHoldInterval: cint): void =
  fcQStyleHints_setMousePressAndHoldInterval(self.h, mousePressAndHoldInterval)

proc mousePressAndHoldInterval*(self: gen_qstylehints_types.QStyleHints, ): cint =
  fcQStyleHints_mousePressAndHoldInterval(self.h)

proc setStartDragDistance*(self: gen_qstylehints_types.QStyleHints, startDragDistance: cint): void =
  fcQStyleHints_setStartDragDistance(self.h, startDragDistance)

proc startDragDistance*(self: gen_qstylehints_types.QStyleHints, ): cint =
  fcQStyleHints_startDragDistance(self.h)

proc setStartDragTime*(self: gen_qstylehints_types.QStyleHints, startDragTime: cint): void =
  fcQStyleHints_setStartDragTime(self.h, startDragTime)

proc startDragTime*(self: gen_qstylehints_types.QStyleHints, ): cint =
  fcQStyleHints_startDragTime(self.h)

proc startDragVelocity*(self: gen_qstylehints_types.QStyleHints, ): cint =
  fcQStyleHints_startDragVelocity(self.h)

proc setKeyboardInputInterval*(self: gen_qstylehints_types.QStyleHints, keyboardInputInterval: cint): void =
  fcQStyleHints_setKeyboardInputInterval(self.h, keyboardInputInterval)

proc keyboardInputInterval*(self: gen_qstylehints_types.QStyleHints, ): cint =
  fcQStyleHints_keyboardInputInterval(self.h)

proc keyboardAutoRepeatRate*(self: gen_qstylehints_types.QStyleHints, ): cint =
  fcQStyleHints_keyboardAutoRepeatRate(self.h)

proc setCursorFlashTime*(self: gen_qstylehints_types.QStyleHints, cursorFlashTime: cint): void =
  fcQStyleHints_setCursorFlashTime(self.h, cursorFlashTime)

proc cursorFlashTime*(self: gen_qstylehints_types.QStyleHints, ): cint =
  fcQStyleHints_cursorFlashTime(self.h)

proc showIsFullScreen*(self: gen_qstylehints_types.QStyleHints, ): bool =
  fcQStyleHints_showIsFullScreen(self.h)

proc showIsMaximized*(self: gen_qstylehints_types.QStyleHints, ): bool =
  fcQStyleHints_showIsMaximized(self.h)

proc showShortcutsInContextMenus*(self: gen_qstylehints_types.QStyleHints, ): bool =
  fcQStyleHints_showShortcutsInContextMenus(self.h)

proc setShowShortcutsInContextMenus*(self: gen_qstylehints_types.QStyleHints, showShortcutsInContextMenus: bool): void =
  fcQStyleHints_setShowShortcutsInContextMenus(self.h, showShortcutsInContextMenus)

proc passwordMaskDelay*(self: gen_qstylehints_types.QStyleHints, ): cint =
  fcQStyleHints_passwordMaskDelay(self.h)

proc passwordMaskCharacter*(self: gen_qstylehints_types.QStyleHints, ): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStyleHints_passwordMaskCharacter(self.h))

proc fontSmoothingGamma*(self: gen_qstylehints_types.QStyleHints, ): float64 =
  fcQStyleHints_fontSmoothingGamma(self.h)

proc useRtlExtensions*(self: gen_qstylehints_types.QStyleHints, ): bool =
  fcQStyleHints_useRtlExtensions(self.h)

proc setFocusOnTouchRelease*(self: gen_qstylehints_types.QStyleHints, ): bool =
  fcQStyleHints_setFocusOnTouchRelease(self.h)

proc tabFocusBehavior*(self: gen_qstylehints_types.QStyleHints, ): cint =
  cint(fcQStyleHints_tabFocusBehavior(self.h))

proc setTabFocusBehavior*(self: gen_qstylehints_types.QStyleHints, tabFocusBehavior: cint): void =
  fcQStyleHints_setTabFocusBehavior(self.h, cint(tabFocusBehavior))

proc singleClickActivation*(self: gen_qstylehints_types.QStyleHints, ): bool =
  fcQStyleHints_singleClickActivation(self.h)

proc useHoverEffects*(self: gen_qstylehints_types.QStyleHints, ): bool =
  fcQStyleHints_useHoverEffects(self.h)

proc setUseHoverEffects*(self: gen_qstylehints_types.QStyleHints, useHoverEffects: bool): void =
  fcQStyleHints_setUseHoverEffects(self.h, useHoverEffects)

proc wheelScrollLines*(self: gen_qstylehints_types.QStyleHints, ): cint =
  fcQStyleHints_wheelScrollLines(self.h)

proc setWheelScrollLines*(self: gen_qstylehints_types.QStyleHints, scrollLines: cint): void =
  fcQStyleHints_setWheelScrollLines(self.h, scrollLines)

proc setMouseQuickSelectionThreshold*(self: gen_qstylehints_types.QStyleHints, threshold: cint): void =
  fcQStyleHints_setMouseQuickSelectionThreshold(self.h, threshold)

proc mouseQuickSelectionThreshold*(self: gen_qstylehints_types.QStyleHints, ): cint =
  fcQStyleHints_mouseQuickSelectionThreshold(self.h)

proc cursorFlashTimeChanged*(self: gen_qstylehints_types.QStyleHints, cursorFlashTime: cint): void =
  fcQStyleHints_cursorFlashTimeChanged(self.h, cursorFlashTime)

type QStyleHintscursorFlashTimeChangedSlot* = proc(cursorFlashTime: cint)
proc miqt_exec_callback_cQStyleHints_cursorFlashTimeChanged(slot: int, cursorFlashTime: cint) {.exportc: "miqt_exec_callback_QStyleHints_cursorFlashTimeChanged".} =
  let nimfunc = cast[ptr QStyleHintscursorFlashTimeChangedSlot](cast[pointer](slot))
  let slotval1 = cursorFlashTime

  nimfunc[](slotval1)

proc oncursorFlashTimeChanged*(self: gen_qstylehints_types.QStyleHints, slot: QStyleHintscursorFlashTimeChangedSlot) =
  var tmp = new QStyleHintscursorFlashTimeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStyleHints_connect_cursorFlashTimeChanged(self.h, cast[int](addr tmp[]))

proc keyboardInputIntervalChanged*(self: gen_qstylehints_types.QStyleHints, keyboardInputInterval: cint): void =
  fcQStyleHints_keyboardInputIntervalChanged(self.h, keyboardInputInterval)

type QStyleHintskeyboardInputIntervalChangedSlot* = proc(keyboardInputInterval: cint)
proc miqt_exec_callback_cQStyleHints_keyboardInputIntervalChanged(slot: int, keyboardInputInterval: cint) {.exportc: "miqt_exec_callback_QStyleHints_keyboardInputIntervalChanged".} =
  let nimfunc = cast[ptr QStyleHintskeyboardInputIntervalChangedSlot](cast[pointer](slot))
  let slotval1 = keyboardInputInterval

  nimfunc[](slotval1)

proc onkeyboardInputIntervalChanged*(self: gen_qstylehints_types.QStyleHints, slot: QStyleHintskeyboardInputIntervalChangedSlot) =
  var tmp = new QStyleHintskeyboardInputIntervalChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStyleHints_connect_keyboardInputIntervalChanged(self.h, cast[int](addr tmp[]))

proc mouseDoubleClickIntervalChanged*(self: gen_qstylehints_types.QStyleHints, mouseDoubleClickInterval: cint): void =
  fcQStyleHints_mouseDoubleClickIntervalChanged(self.h, mouseDoubleClickInterval)

type QStyleHintsmouseDoubleClickIntervalChangedSlot* = proc(mouseDoubleClickInterval: cint)
proc miqt_exec_callback_cQStyleHints_mouseDoubleClickIntervalChanged(slot: int, mouseDoubleClickInterval: cint) {.exportc: "miqt_exec_callback_QStyleHints_mouseDoubleClickIntervalChanged".} =
  let nimfunc = cast[ptr QStyleHintsmouseDoubleClickIntervalChangedSlot](cast[pointer](slot))
  let slotval1 = mouseDoubleClickInterval

  nimfunc[](slotval1)

proc onmouseDoubleClickIntervalChanged*(self: gen_qstylehints_types.QStyleHints, slot: QStyleHintsmouseDoubleClickIntervalChangedSlot) =
  var tmp = new QStyleHintsmouseDoubleClickIntervalChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStyleHints_connect_mouseDoubleClickIntervalChanged(self.h, cast[int](addr tmp[]))

proc mousePressAndHoldIntervalChanged*(self: gen_qstylehints_types.QStyleHints, mousePressAndHoldInterval: cint): void =
  fcQStyleHints_mousePressAndHoldIntervalChanged(self.h, mousePressAndHoldInterval)

type QStyleHintsmousePressAndHoldIntervalChangedSlot* = proc(mousePressAndHoldInterval: cint)
proc miqt_exec_callback_cQStyleHints_mousePressAndHoldIntervalChanged(slot: int, mousePressAndHoldInterval: cint) {.exportc: "miqt_exec_callback_QStyleHints_mousePressAndHoldIntervalChanged".} =
  let nimfunc = cast[ptr QStyleHintsmousePressAndHoldIntervalChangedSlot](cast[pointer](slot))
  let slotval1 = mousePressAndHoldInterval

  nimfunc[](slotval1)

proc onmousePressAndHoldIntervalChanged*(self: gen_qstylehints_types.QStyleHints, slot: QStyleHintsmousePressAndHoldIntervalChangedSlot) =
  var tmp = new QStyleHintsmousePressAndHoldIntervalChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStyleHints_connect_mousePressAndHoldIntervalChanged(self.h, cast[int](addr tmp[]))

proc startDragDistanceChanged*(self: gen_qstylehints_types.QStyleHints, startDragDistance: cint): void =
  fcQStyleHints_startDragDistanceChanged(self.h, startDragDistance)

type QStyleHintsstartDragDistanceChangedSlot* = proc(startDragDistance: cint)
proc miqt_exec_callback_cQStyleHints_startDragDistanceChanged(slot: int, startDragDistance: cint) {.exportc: "miqt_exec_callback_QStyleHints_startDragDistanceChanged".} =
  let nimfunc = cast[ptr QStyleHintsstartDragDistanceChangedSlot](cast[pointer](slot))
  let slotval1 = startDragDistance

  nimfunc[](slotval1)

proc onstartDragDistanceChanged*(self: gen_qstylehints_types.QStyleHints, slot: QStyleHintsstartDragDistanceChangedSlot) =
  var tmp = new QStyleHintsstartDragDistanceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStyleHints_connect_startDragDistanceChanged(self.h, cast[int](addr tmp[]))

proc startDragTimeChanged*(self: gen_qstylehints_types.QStyleHints, startDragTime: cint): void =
  fcQStyleHints_startDragTimeChanged(self.h, startDragTime)

type QStyleHintsstartDragTimeChangedSlot* = proc(startDragTime: cint)
proc miqt_exec_callback_cQStyleHints_startDragTimeChanged(slot: int, startDragTime: cint) {.exportc: "miqt_exec_callback_QStyleHints_startDragTimeChanged".} =
  let nimfunc = cast[ptr QStyleHintsstartDragTimeChangedSlot](cast[pointer](slot))
  let slotval1 = startDragTime

  nimfunc[](slotval1)

proc onstartDragTimeChanged*(self: gen_qstylehints_types.QStyleHints, slot: QStyleHintsstartDragTimeChangedSlot) =
  var tmp = new QStyleHintsstartDragTimeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStyleHints_connect_startDragTimeChanged(self.h, cast[int](addr tmp[]))

proc tabFocusBehaviorChanged*(self: gen_qstylehints_types.QStyleHints, tabFocusBehavior: cint): void =
  fcQStyleHints_tabFocusBehaviorChanged(self.h, cint(tabFocusBehavior))

type QStyleHintstabFocusBehaviorChangedSlot* = proc(tabFocusBehavior: cint)
proc miqt_exec_callback_cQStyleHints_tabFocusBehaviorChanged(slot: int, tabFocusBehavior: cint) {.exportc: "miqt_exec_callback_QStyleHints_tabFocusBehaviorChanged".} =
  let nimfunc = cast[ptr QStyleHintstabFocusBehaviorChangedSlot](cast[pointer](slot))
  let slotval1 = cint(tabFocusBehavior)

  nimfunc[](slotval1)

proc ontabFocusBehaviorChanged*(self: gen_qstylehints_types.QStyleHints, slot: QStyleHintstabFocusBehaviorChangedSlot) =
  var tmp = new QStyleHintstabFocusBehaviorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStyleHints_connect_tabFocusBehaviorChanged(self.h, cast[int](addr tmp[]))

proc useHoverEffectsChanged*(self: gen_qstylehints_types.QStyleHints, useHoverEffects: bool): void =
  fcQStyleHints_useHoverEffectsChanged(self.h, useHoverEffects)

type QStyleHintsuseHoverEffectsChangedSlot* = proc(useHoverEffects: bool)
proc miqt_exec_callback_cQStyleHints_useHoverEffectsChanged(slot: int, useHoverEffects: bool) {.exportc: "miqt_exec_callback_QStyleHints_useHoverEffectsChanged".} =
  let nimfunc = cast[ptr QStyleHintsuseHoverEffectsChangedSlot](cast[pointer](slot))
  let slotval1 = useHoverEffects

  nimfunc[](slotval1)

proc onuseHoverEffectsChanged*(self: gen_qstylehints_types.QStyleHints, slot: QStyleHintsuseHoverEffectsChangedSlot) =
  var tmp = new QStyleHintsuseHoverEffectsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStyleHints_connect_useHoverEffectsChanged(self.h, cast[int](addr tmp[]))

proc showShortcutsInContextMenusChanged*(self: gen_qstylehints_types.QStyleHints, param1: bool): void =
  fcQStyleHints_showShortcutsInContextMenusChanged(self.h, param1)

type QStyleHintsshowShortcutsInContextMenusChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_cQStyleHints_showShortcutsInContextMenusChanged(slot: int, param1: bool) {.exportc: "miqt_exec_callback_QStyleHints_showShortcutsInContextMenusChanged".} =
  let nimfunc = cast[ptr QStyleHintsshowShortcutsInContextMenusChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onshowShortcutsInContextMenusChanged*(self: gen_qstylehints_types.QStyleHints, slot: QStyleHintsshowShortcutsInContextMenusChangedSlot) =
  var tmp = new QStyleHintsshowShortcutsInContextMenusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStyleHints_connect_showShortcutsInContextMenusChanged(self.h, cast[int](addr tmp[]))

proc wheelScrollLinesChanged*(self: gen_qstylehints_types.QStyleHints, scrollLines: cint): void =
  fcQStyleHints_wheelScrollLinesChanged(self.h, scrollLines)

type QStyleHintswheelScrollLinesChangedSlot* = proc(scrollLines: cint)
proc miqt_exec_callback_cQStyleHints_wheelScrollLinesChanged(slot: int, scrollLines: cint) {.exportc: "miqt_exec_callback_QStyleHints_wheelScrollLinesChanged".} =
  let nimfunc = cast[ptr QStyleHintswheelScrollLinesChangedSlot](cast[pointer](slot))
  let slotval1 = scrollLines

  nimfunc[](slotval1)

proc onwheelScrollLinesChanged*(self: gen_qstylehints_types.QStyleHints, slot: QStyleHintswheelScrollLinesChangedSlot) =
  var tmp = new QStyleHintswheelScrollLinesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStyleHints_connect_wheelScrollLinesChanged(self.h, cast[int](addr tmp[]))

proc mouseQuickSelectionThresholdChanged*(self: gen_qstylehints_types.QStyleHints, threshold: cint): void =
  fcQStyleHints_mouseQuickSelectionThresholdChanged(self.h, threshold)

type QStyleHintsmouseQuickSelectionThresholdChangedSlot* = proc(threshold: cint)
proc miqt_exec_callback_cQStyleHints_mouseQuickSelectionThresholdChanged(slot: int, threshold: cint) {.exportc: "miqt_exec_callback_QStyleHints_mouseQuickSelectionThresholdChanged".} =
  let nimfunc = cast[ptr QStyleHintsmouseQuickSelectionThresholdChangedSlot](cast[pointer](slot))
  let slotval1 = threshold

  nimfunc[](slotval1)

proc onmouseQuickSelectionThresholdChanged*(self: gen_qstylehints_types.QStyleHints, slot: QStyleHintsmouseQuickSelectionThresholdChangedSlot) =
  var tmp = new QStyleHintsmouseQuickSelectionThresholdChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStyleHints_connect_mouseQuickSelectionThresholdChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qstylehints_types.QStyleHints, s: cstring, c: cstring): string =
  let v_ms = fcQStyleHints_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstylehints_types.QStyleHints, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStyleHints_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstylehints_types.QStyleHints, s: cstring, c: cstring): string =
  let v_ms = fcQStyleHints_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstylehints_types.QStyleHints, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStyleHints_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qstylehints_types.QStyleHints): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStyleHints_staticMetaObject())
proc delete*(self: gen_qstylehints_types.QStyleHints) =
  fcQStyleHints_delete(self.h)
