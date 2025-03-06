import ./Qt5WebKit_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebKit")  & " -fPIC"
{.compile("gen_qwebkitplatformplugin.cpp", cflags).}


type QWebSelectDataItemTypeEnum* = distinct cint
template Option*(_: type QWebSelectDataItemTypeEnum): untyped = 0
template Group*(_: type QWebSelectDataItemTypeEnum): untyped = 1
template Separator*(_: type QWebSelectDataItemTypeEnum): untyped = 2


type QWebHapticFeedbackPlayerHapticStrengthEnum* = distinct cint
template None*(_: type QWebHapticFeedbackPlayerHapticStrengthEnum): untyped = 0
template Weak*(_: type QWebHapticFeedbackPlayerHapticStrengthEnum): untyped = 1
template Medium*(_: type QWebHapticFeedbackPlayerHapticStrengthEnum): untyped = 2
template Strong*(_: type QWebHapticFeedbackPlayerHapticStrengthEnum): untyped = 3


type QWebHapticFeedbackPlayerHapticEventEnum* = distinct cint
template Press*(_: type QWebHapticFeedbackPlayerHapticEventEnum): untyped = 0
template Release*(_: type QWebHapticFeedbackPlayerHapticEventEnum): untyped = 1


type QWebTouchModifierPaddingDirectionEnum* = distinct cint
template Up*(_: type QWebTouchModifierPaddingDirectionEnum): untyped = 0
template Right*(_: type QWebTouchModifierPaddingDirectionEnum): untyped = 1
template Down*(_: type QWebTouchModifierPaddingDirectionEnum): untyped = 2
template Left*(_: type QWebTouchModifierPaddingDirectionEnum): untyped = 3


type QWebKitPlatformPluginExtensionEnum* = distinct cint
template MultipleSelections*(_: type QWebKitPlatformPluginExtensionEnum): untyped = 0
template Notifications*(_: type QWebKitPlatformPluginExtensionEnum): untyped = 1
template Haptics*(_: type QWebKitPlatformPluginExtensionEnum): untyped = 2
template TouchInteraction*(_: type QWebKitPlatformPluginExtensionEnum): untyped = 3
template FullScreenVideoPlayer*(_: type QWebKitPlatformPluginExtensionEnum): untyped = 4
template SpellChecker*(_: type QWebKitPlatformPluginExtensionEnum): untyped = 5


import ./gen_qwebkitplatformplugin_types
export gen_qwebkitplatformplugin_types

import
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qurl_types,
  ../QtGui/gen_qcolor_types,
  ../QtGui/gen_qfont_types
export
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qurl_types,
  gen_qcolor_types,
  gen_qfont_types

type cQWebSelectData*{.exportc: "QWebSelectData", incompleteStruct.} = object
type cQWebSelectMethod*{.exportc: "QWebSelectMethod", incompleteStruct.} = object
type cQWebNotificationData*{.exportc: "QWebNotificationData", incompleteStruct.} = object
type cQWebNotificationPresenter*{.exportc: "QWebNotificationPresenter", incompleteStruct.} = object
type cQWebHapticFeedbackPlayer*{.exportc: "QWebHapticFeedbackPlayer", incompleteStruct.} = object
type cQWebTouchModifier*{.exportc: "QWebTouchModifier", incompleteStruct.} = object
type cQWebSpellChecker*{.exportc: "QWebSpellChecker", incompleteStruct.} = object
type cQWebKitPlatformPlugin*{.exportc: "QWebKitPlatformPlugin", incompleteStruct.} = object
type cQWebSpellCheckerGrammarDetail*{.exportc: "QWebSpellChecker__GrammarDetail", incompleteStruct.} = object

proc fcQWebSelectData_itemType(self: pointer, param1: cint): cint {.importc: "QWebSelectData_itemType".}
proc fcQWebSelectData_itemText(self: pointer, index: cint): struct_miqt_string {.importc: "QWebSelectData_itemText".}
proc fcQWebSelectData_itemToolTip(self: pointer, index: cint): struct_miqt_string {.importc: "QWebSelectData_itemToolTip".}
proc fcQWebSelectData_itemIsEnabled(self: pointer, index: cint): bool {.importc: "QWebSelectData_itemIsEnabled".}
proc fcQWebSelectData_itemIsSelected(self: pointer, index: cint): bool {.importc: "QWebSelectData_itemIsSelected".}
proc fcQWebSelectData_itemCount(self: pointer, ): cint {.importc: "QWebSelectData_itemCount".}
proc fcQWebSelectData_multiple(self: pointer, ): bool {.importc: "QWebSelectData_multiple".}
proc fcQWebSelectData_backgroundColor(self: pointer, ): pointer {.importc: "QWebSelectData_backgroundColor".}
proc fcQWebSelectData_foregroundColor(self: pointer, ): pointer {.importc: "QWebSelectData_foregroundColor".}
proc fcQWebSelectData_itemBackgroundColor(self: pointer, index: cint): pointer {.importc: "QWebSelectData_itemBackgroundColor".}
proc fcQWebSelectData_itemForegroundColor(self: pointer, index: cint): pointer {.importc: "QWebSelectData_itemForegroundColor".}
proc fcQWebSelectData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebSelectData_operatorAssign".}
proc fcQWebSelectData_delete(self: pointer) {.importc: "QWebSelectData_delete".}
proc fcQWebSelectMethod_metaObject(self: pointer, ): pointer {.importc: "QWebSelectMethod_metaObject".}
proc fcQWebSelectMethod_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebSelectMethod_metacast".}
proc fcQWebSelectMethod_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebSelectMethod_metacall".}
proc fcQWebSelectMethod_tr(s: cstring): struct_miqt_string {.importc: "QWebSelectMethod_tr".}
proc fcQWebSelectMethod_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebSelectMethod_trUtf8".}
proc fcQWebSelectMethod_show(self: pointer, param1: pointer): void {.importc: "QWebSelectMethod_show".}
proc fcQWebSelectMethod_hide(self: pointer, ): void {.importc: "QWebSelectMethod_hide".}
proc fcQWebSelectMethod_setGeometry(self: pointer, geometry: pointer): void {.importc: "QWebSelectMethod_setGeometry".}
proc fcQWebSelectMethod_setFont(self: pointer, font: pointer): void {.importc: "QWebSelectMethod_setFont".}
proc fcQWebSelectMethod_selectItem(self: pointer, index: cint, allowMultiplySelections: bool, shift: bool): void {.importc: "QWebSelectMethod_selectItem".}
proc fcQWebSelectMethod_connect_selectItem(self: pointer, slot: int) {.importc: "QWebSelectMethod_connect_selectItem".}
proc fcQWebSelectMethod_didHide(self: pointer, ): void {.importc: "QWebSelectMethod_didHide".}
proc fcQWebSelectMethod_connect_didHide(self: pointer, slot: int) {.importc: "QWebSelectMethod_connect_didHide".}
proc fcQWebSelectMethod_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebSelectMethod_tr2".}
proc fcQWebSelectMethod_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebSelectMethod_tr3".}
proc fcQWebSelectMethod_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebSelectMethod_trUtf82".}
proc fcQWebSelectMethod_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebSelectMethod_trUtf83".}
proc fcQWebSelectMethod_staticMetaObject(): pointer {.importc: "QWebSelectMethod_staticMetaObject".}
proc fcQWebSelectMethod_delete(self: pointer) {.importc: "QWebSelectMethod_delete".}
proc fcQWebNotificationData_title(self: pointer, ): struct_miqt_string {.importc: "QWebNotificationData_title".}
proc fcQWebNotificationData_message(self: pointer, ): struct_miqt_string {.importc: "QWebNotificationData_message".}
proc fcQWebNotificationData_iconUrl(self: pointer, ): pointer {.importc: "QWebNotificationData_iconUrl".}
proc fcQWebNotificationData_openerPageUrl(self: pointer, ): pointer {.importc: "QWebNotificationData_openerPageUrl".}
proc fcQWebNotificationData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebNotificationData_operatorAssign".}
proc fcQWebNotificationData_delete(self: pointer) {.importc: "QWebNotificationData_delete".}
proc fcQWebNotificationPresenter_metaObject(self: pointer, ): pointer {.importc: "QWebNotificationPresenter_metaObject".}
proc fcQWebNotificationPresenter_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebNotificationPresenter_metacast".}
proc fcQWebNotificationPresenter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebNotificationPresenter_metacall".}
proc fcQWebNotificationPresenter_tr(s: cstring): struct_miqt_string {.importc: "QWebNotificationPresenter_tr".}
proc fcQWebNotificationPresenter_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebNotificationPresenter_trUtf8".}
proc fcQWebNotificationPresenter_showNotification(self: pointer, param1: pointer): void {.importc: "QWebNotificationPresenter_showNotification".}
proc fcQWebNotificationPresenter_notificationClosed(self: pointer, ): void {.importc: "QWebNotificationPresenter_notificationClosed".}
proc fcQWebNotificationPresenter_connect_notificationClosed(self: pointer, slot: int) {.importc: "QWebNotificationPresenter_connect_notificationClosed".}
proc fcQWebNotificationPresenter_notificationClicked(self: pointer, ): void {.importc: "QWebNotificationPresenter_notificationClicked".}
proc fcQWebNotificationPresenter_connect_notificationClicked(self: pointer, slot: int) {.importc: "QWebNotificationPresenter_connect_notificationClicked".}
proc fcQWebNotificationPresenter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebNotificationPresenter_tr2".}
proc fcQWebNotificationPresenter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebNotificationPresenter_tr3".}
proc fcQWebNotificationPresenter_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebNotificationPresenter_trUtf82".}
proc fcQWebNotificationPresenter_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebNotificationPresenter_trUtf83".}
proc fcQWebNotificationPresenter_staticMetaObject(): pointer {.importc: "QWebNotificationPresenter_staticMetaObject".}
proc fcQWebNotificationPresenter_delete(self: pointer) {.importc: "QWebNotificationPresenter_delete".}
proc fcQWebHapticFeedbackPlayer_metaObject(self: pointer, ): pointer {.importc: "QWebHapticFeedbackPlayer_metaObject".}
proc fcQWebHapticFeedbackPlayer_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebHapticFeedbackPlayer_metacast".}
proc fcQWebHapticFeedbackPlayer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebHapticFeedbackPlayer_metacall".}
proc fcQWebHapticFeedbackPlayer_tr(s: cstring): struct_miqt_string {.importc: "QWebHapticFeedbackPlayer_tr".}
proc fcQWebHapticFeedbackPlayer_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebHapticFeedbackPlayer_trUtf8".}
proc fcQWebHapticFeedbackPlayer_playHapticFeedback(self: pointer, param1: cint, hapticType: struct_miqt_string, param3: cint): void {.importc: "QWebHapticFeedbackPlayer_playHapticFeedback".}
proc fcQWebHapticFeedbackPlayer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebHapticFeedbackPlayer_tr2".}
proc fcQWebHapticFeedbackPlayer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebHapticFeedbackPlayer_tr3".}
proc fcQWebHapticFeedbackPlayer_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebHapticFeedbackPlayer_trUtf82".}
proc fcQWebHapticFeedbackPlayer_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebHapticFeedbackPlayer_trUtf83".}
proc fcQWebHapticFeedbackPlayer_staticMetaObject(): pointer {.importc: "QWebHapticFeedbackPlayer_staticMetaObject".}
proc fcQWebHapticFeedbackPlayer_delete(self: pointer) {.importc: "QWebHapticFeedbackPlayer_delete".}
proc fcQWebTouchModifier_metaObject(self: pointer, ): pointer {.importc: "QWebTouchModifier_metaObject".}
proc fcQWebTouchModifier_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebTouchModifier_metacast".}
proc fcQWebTouchModifier_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebTouchModifier_metacall".}
proc fcQWebTouchModifier_tr(s: cstring): struct_miqt_string {.importc: "QWebTouchModifier_tr".}
proc fcQWebTouchModifier_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebTouchModifier_trUtf8".}
proc fcQWebTouchModifier_hitTestPaddingForTouch(self: pointer, param1: cint): cuint {.importc: "QWebTouchModifier_hitTestPaddingForTouch".}
proc fcQWebTouchModifier_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebTouchModifier_tr2".}
proc fcQWebTouchModifier_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebTouchModifier_tr3".}
proc fcQWebTouchModifier_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebTouchModifier_trUtf82".}
proc fcQWebTouchModifier_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebTouchModifier_trUtf83".}
proc fcQWebTouchModifier_staticMetaObject(): pointer {.importc: "QWebTouchModifier_staticMetaObject".}
proc fcQWebTouchModifier_delete(self: pointer) {.importc: "QWebTouchModifier_delete".}
proc fcQWebSpellChecker_metaObject(self: pointer, ): pointer {.importc: "QWebSpellChecker_metaObject".}
proc fcQWebSpellChecker_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebSpellChecker_metacast".}
proc fcQWebSpellChecker_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebSpellChecker_metacall".}
proc fcQWebSpellChecker_tr(s: cstring): struct_miqt_string {.importc: "QWebSpellChecker_tr".}
proc fcQWebSpellChecker_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebSpellChecker_trUtf8".}
proc fcQWebSpellChecker_isContinousSpellCheckingEnabled(self: pointer, ): bool {.importc: "QWebSpellChecker_isContinousSpellCheckingEnabled".}
proc fcQWebSpellChecker_toggleContinousSpellChecking(self: pointer, ): void {.importc: "QWebSpellChecker_toggleContinousSpellChecking".}
proc fcQWebSpellChecker_learnWord(self: pointer, word: struct_miqt_string): void {.importc: "QWebSpellChecker_learnWord".}
proc fcQWebSpellChecker_ignoreWordInSpellDocument(self: pointer, word: struct_miqt_string): void {.importc: "QWebSpellChecker_ignoreWordInSpellDocument".}
proc fcQWebSpellChecker_checkSpellingOfString(self: pointer, word: struct_miqt_string, misspellingLocation: ptr cint, misspellingLength: ptr cint): void {.importc: "QWebSpellChecker_checkSpellingOfString".}
proc fcQWebSpellChecker_autoCorrectSuggestionForMisspelledWord(self: pointer, word: struct_miqt_string): struct_miqt_string {.importc: "QWebSpellChecker_autoCorrectSuggestionForMisspelledWord".}
proc fcQWebSpellChecker_guessesForWord(self: pointer, word: struct_miqt_string, context: struct_miqt_string, guesses: struct_miqt_array): void {.importc: "QWebSpellChecker_guessesForWord".}
proc fcQWebSpellChecker_isGrammarCheckingEnabled(self: pointer, ): bool {.importc: "QWebSpellChecker_isGrammarCheckingEnabled".}
proc fcQWebSpellChecker_toggleGrammarChecking(self: pointer, ): void {.importc: "QWebSpellChecker_toggleGrammarChecking".}
proc fcQWebSpellChecker_checkGrammarOfString(self: pointer, param1: struct_miqt_string, param2: struct_miqt_array, badGrammarLocation: ptr cint, badGrammarLength: ptr cint): void {.importc: "QWebSpellChecker_checkGrammarOfString".}
proc fcQWebSpellChecker_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebSpellChecker_tr2".}
proc fcQWebSpellChecker_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebSpellChecker_tr3".}
proc fcQWebSpellChecker_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebSpellChecker_trUtf82".}
proc fcQWebSpellChecker_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebSpellChecker_trUtf83".}
proc fcQWebSpellChecker_staticMetaObject(): pointer {.importc: "QWebSpellChecker_staticMetaObject".}
proc fcQWebSpellChecker_delete(self: pointer) {.importc: "QWebSpellChecker_delete".}
proc fcQWebKitPlatformPlugin_supportsExtension(self: pointer, param1: cint): bool {.importc: "QWebKitPlatformPlugin_supportsExtension".}
proc fcQWebKitPlatformPlugin_createExtension(self: pointer, param1: cint): pointer {.importc: "QWebKitPlatformPlugin_createExtension".}
proc fcQWebKitPlatformPlugin_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebKitPlatformPlugin_operatorAssign".}
proc fcQWebKitPlatformPlugin_delete(self: pointer) {.importc: "QWebKitPlatformPlugin_delete".}
proc fcQWebSpellCheckerGrammarDetail_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebSpellChecker__GrammarDetail_operatorAssign".}
proc fcQWebSpellCheckerGrammarDetail_new(param1: pointer): ptr cQWebSpellCheckerGrammarDetail {.importc: "QWebSpellChecker__GrammarDetail_new".}
proc fcQWebSpellCheckerGrammarDetail_delete(self: pointer) {.importc: "QWebSpellChecker__GrammarDetail_delete".}

proc itemType*(self: gen_qwebkitplatformplugin_types.QWebSelectData, param1: cint): cint =
  cint(fcQWebSelectData_itemType(self.h, param1))

proc itemText*(self: gen_qwebkitplatformplugin_types.QWebSelectData, index: cint): string =
  let v_ms = fcQWebSelectData_itemText(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc itemToolTip*(self: gen_qwebkitplatformplugin_types.QWebSelectData, index: cint): string =
  let v_ms = fcQWebSelectData_itemToolTip(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc itemIsEnabled*(self: gen_qwebkitplatformplugin_types.QWebSelectData, index: cint): bool =
  fcQWebSelectData_itemIsEnabled(self.h, index)

proc itemIsSelected*(self: gen_qwebkitplatformplugin_types.QWebSelectData, index: cint): bool =
  fcQWebSelectData_itemIsSelected(self.h, index)

proc itemCount*(self: gen_qwebkitplatformplugin_types.QWebSelectData, ): cint =
  fcQWebSelectData_itemCount(self.h)

proc multiple*(self: gen_qwebkitplatformplugin_types.QWebSelectData, ): bool =
  fcQWebSelectData_multiple(self.h)

proc backgroundColor*(self: gen_qwebkitplatformplugin_types.QWebSelectData, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQWebSelectData_backgroundColor(self.h))

proc foregroundColor*(self: gen_qwebkitplatformplugin_types.QWebSelectData, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQWebSelectData_foregroundColor(self.h))

proc itemBackgroundColor*(self: gen_qwebkitplatformplugin_types.QWebSelectData, index: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQWebSelectData_itemBackgroundColor(self.h, index))

proc itemForegroundColor*(self: gen_qwebkitplatformplugin_types.QWebSelectData, index: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQWebSelectData_itemForegroundColor(self.h, index))

proc operatorAssign*(self: gen_qwebkitplatformplugin_types.QWebSelectData, param1: gen_qwebkitplatformplugin_types.QWebSelectData): void =
  fcQWebSelectData_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qwebkitplatformplugin_types.QWebSelectData) =
  fcQWebSelectData_delete(self.h)
proc metaObject*(self: gen_qwebkitplatformplugin_types.QWebSelectMethod, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebSelectMethod_metaObject(self.h))

proc metacast*(self: gen_qwebkitplatformplugin_types.QWebSelectMethod, param1: cstring): pointer =
  fcQWebSelectMethod_metacast(self.h, param1)

proc metacall*(self: gen_qwebkitplatformplugin_types.QWebSelectMethod, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebSelectMethod_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebkitplatformplugin_types.QWebSelectMethod, s: cstring): string =
  let v_ms = fcQWebSelectMethod_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebkitplatformplugin_types.QWebSelectMethod, s: cstring): string =
  let v_ms = fcQWebSelectMethod_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc show*(self: gen_qwebkitplatformplugin_types.QWebSelectMethod, param1: gen_qwebkitplatformplugin_types.QWebSelectData): void =
  fcQWebSelectMethod_show(self.h, param1.h)

proc hide*(self: gen_qwebkitplatformplugin_types.QWebSelectMethod, ): void =
  fcQWebSelectMethod_hide(self.h)

proc setGeometry*(self: gen_qwebkitplatformplugin_types.QWebSelectMethod, geometry: gen_qrect_types.QRect): void =
  fcQWebSelectMethod_setGeometry(self.h, geometry.h)

proc setFont*(self: gen_qwebkitplatformplugin_types.QWebSelectMethod, font: gen_qfont_types.QFont): void =
  fcQWebSelectMethod_setFont(self.h, font.h)

proc selectItem*(self: gen_qwebkitplatformplugin_types.QWebSelectMethod, index: cint, allowMultiplySelections: bool, shift: bool): void =
  fcQWebSelectMethod_selectItem(self.h, index, allowMultiplySelections, shift)

type QWebSelectMethodselectItemSlot* = proc(index: cint, allowMultiplySelections: bool, shift: bool)
proc miqt_exec_callback_cQWebSelectMethod_selectItem(slot: int, index: cint, allowMultiplySelections: bool, shift: bool) {.exportc: "miqt_exec_callback_QWebSelectMethod_selectItem".} =
  let nimfunc = cast[ptr QWebSelectMethodselectItemSlot](cast[pointer](slot))
  let slotval1 = index

  let slotval2 = allowMultiplySelections

  let slotval3 = shift

  nimfunc[](slotval1, slotval2, slotval3)

proc onselectItem*(self: gen_qwebkitplatformplugin_types.QWebSelectMethod, slot: QWebSelectMethodselectItemSlot) =
  var tmp = new QWebSelectMethodselectItemSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSelectMethod_connect_selectItem(self.h, cast[int](addr tmp[]))

proc didHide*(self: gen_qwebkitplatformplugin_types.QWebSelectMethod, ): void =
  fcQWebSelectMethod_didHide(self.h)

type QWebSelectMethoddidHideSlot* = proc()
proc miqt_exec_callback_cQWebSelectMethod_didHide(slot: int) {.exportc: "miqt_exec_callback_QWebSelectMethod_didHide".} =
  let nimfunc = cast[ptr QWebSelectMethoddidHideSlot](cast[pointer](slot))
  nimfunc[]()

proc ondidHide*(self: gen_qwebkitplatformplugin_types.QWebSelectMethod, slot: QWebSelectMethoddidHideSlot) =
  var tmp = new QWebSelectMethoddidHideSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebSelectMethod_connect_didHide(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qwebkitplatformplugin_types.QWebSelectMethod, s: cstring, c: cstring): string =
  let v_ms = fcQWebSelectMethod_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebkitplatformplugin_types.QWebSelectMethod, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebSelectMethod_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebkitplatformplugin_types.QWebSelectMethod, s: cstring, c: cstring): string =
  let v_ms = fcQWebSelectMethod_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebkitplatformplugin_types.QWebSelectMethod, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebSelectMethod_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qwebkitplatformplugin_types.QWebSelectMethod): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebSelectMethod_staticMetaObject())
proc delete*(self: gen_qwebkitplatformplugin_types.QWebSelectMethod) =
  fcQWebSelectMethod_delete(self.h)
proc title*(self: gen_qwebkitplatformplugin_types.QWebNotificationData, ): string =
  let v_ms = fcQWebNotificationData_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc message*(self: gen_qwebkitplatformplugin_types.QWebNotificationData, ): string =
  let v_ms = fcQWebNotificationData_message(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc iconUrl*(self: gen_qwebkitplatformplugin_types.QWebNotificationData, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebNotificationData_iconUrl(self.h))

proc openerPageUrl*(self: gen_qwebkitplatformplugin_types.QWebNotificationData, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebNotificationData_openerPageUrl(self.h))

proc operatorAssign*(self: gen_qwebkitplatformplugin_types.QWebNotificationData, param1: gen_qwebkitplatformplugin_types.QWebNotificationData): void =
  fcQWebNotificationData_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qwebkitplatformplugin_types.QWebNotificationData) =
  fcQWebNotificationData_delete(self.h)
proc metaObject*(self: gen_qwebkitplatformplugin_types.QWebNotificationPresenter, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebNotificationPresenter_metaObject(self.h))

proc metacast*(self: gen_qwebkitplatformplugin_types.QWebNotificationPresenter, param1: cstring): pointer =
  fcQWebNotificationPresenter_metacast(self.h, param1)

proc metacall*(self: gen_qwebkitplatformplugin_types.QWebNotificationPresenter, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebNotificationPresenter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebkitplatformplugin_types.QWebNotificationPresenter, s: cstring): string =
  let v_ms = fcQWebNotificationPresenter_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebkitplatformplugin_types.QWebNotificationPresenter, s: cstring): string =
  let v_ms = fcQWebNotificationPresenter_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc showNotification*(self: gen_qwebkitplatformplugin_types.QWebNotificationPresenter, param1: gen_qwebkitplatformplugin_types.QWebNotificationData): void =
  fcQWebNotificationPresenter_showNotification(self.h, param1.h)

proc notificationClosed*(self: gen_qwebkitplatformplugin_types.QWebNotificationPresenter, ): void =
  fcQWebNotificationPresenter_notificationClosed(self.h)

type QWebNotificationPresenternotificationClosedSlot* = proc()
proc miqt_exec_callback_cQWebNotificationPresenter_notificationClosed(slot: int) {.exportc: "miqt_exec_callback_QWebNotificationPresenter_notificationClosed".} =
  let nimfunc = cast[ptr QWebNotificationPresenternotificationClosedSlot](cast[pointer](slot))
  nimfunc[]()

proc onnotificationClosed*(self: gen_qwebkitplatformplugin_types.QWebNotificationPresenter, slot: QWebNotificationPresenternotificationClosedSlot) =
  var tmp = new QWebNotificationPresenternotificationClosedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebNotificationPresenter_connect_notificationClosed(self.h, cast[int](addr tmp[]))

proc notificationClicked*(self: gen_qwebkitplatformplugin_types.QWebNotificationPresenter, ): void =
  fcQWebNotificationPresenter_notificationClicked(self.h)

type QWebNotificationPresenternotificationClickedSlot* = proc()
proc miqt_exec_callback_cQWebNotificationPresenter_notificationClicked(slot: int) {.exportc: "miqt_exec_callback_QWebNotificationPresenter_notificationClicked".} =
  let nimfunc = cast[ptr QWebNotificationPresenternotificationClickedSlot](cast[pointer](slot))
  nimfunc[]()

proc onnotificationClicked*(self: gen_qwebkitplatformplugin_types.QWebNotificationPresenter, slot: QWebNotificationPresenternotificationClickedSlot) =
  var tmp = new QWebNotificationPresenternotificationClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebNotificationPresenter_connect_notificationClicked(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qwebkitplatformplugin_types.QWebNotificationPresenter, s: cstring, c: cstring): string =
  let v_ms = fcQWebNotificationPresenter_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebkitplatformplugin_types.QWebNotificationPresenter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebNotificationPresenter_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebkitplatformplugin_types.QWebNotificationPresenter, s: cstring, c: cstring): string =
  let v_ms = fcQWebNotificationPresenter_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebkitplatformplugin_types.QWebNotificationPresenter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebNotificationPresenter_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qwebkitplatformplugin_types.QWebNotificationPresenter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebNotificationPresenter_staticMetaObject())
proc delete*(self: gen_qwebkitplatformplugin_types.QWebNotificationPresenter) =
  fcQWebNotificationPresenter_delete(self.h)
proc metaObject*(self: gen_qwebkitplatformplugin_types.QWebHapticFeedbackPlayer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebHapticFeedbackPlayer_metaObject(self.h))

proc metacast*(self: gen_qwebkitplatformplugin_types.QWebHapticFeedbackPlayer, param1: cstring): pointer =
  fcQWebHapticFeedbackPlayer_metacast(self.h, param1)

proc metacall*(self: gen_qwebkitplatformplugin_types.QWebHapticFeedbackPlayer, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebHapticFeedbackPlayer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebkitplatformplugin_types.QWebHapticFeedbackPlayer, s: cstring): string =
  let v_ms = fcQWebHapticFeedbackPlayer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebkitplatformplugin_types.QWebHapticFeedbackPlayer, s: cstring): string =
  let v_ms = fcQWebHapticFeedbackPlayer_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc playHapticFeedback*(self: gen_qwebkitplatformplugin_types.QWebHapticFeedbackPlayer, param1: cint, hapticType: string, param3: cint): void =
  fcQWebHapticFeedbackPlayer_playHapticFeedback(self.h, cint(param1), struct_miqt_string(data: hapticType, len: csize_t(len(hapticType))), cint(param3))

proc tr*(_: type gen_qwebkitplatformplugin_types.QWebHapticFeedbackPlayer, s: cstring, c: cstring): string =
  let v_ms = fcQWebHapticFeedbackPlayer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebkitplatformplugin_types.QWebHapticFeedbackPlayer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebHapticFeedbackPlayer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebkitplatformplugin_types.QWebHapticFeedbackPlayer, s: cstring, c: cstring): string =
  let v_ms = fcQWebHapticFeedbackPlayer_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebkitplatformplugin_types.QWebHapticFeedbackPlayer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebHapticFeedbackPlayer_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qwebkitplatformplugin_types.QWebHapticFeedbackPlayer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebHapticFeedbackPlayer_staticMetaObject())
proc delete*(self: gen_qwebkitplatformplugin_types.QWebHapticFeedbackPlayer) =
  fcQWebHapticFeedbackPlayer_delete(self.h)
proc metaObject*(self: gen_qwebkitplatformplugin_types.QWebTouchModifier, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebTouchModifier_metaObject(self.h))

proc metacast*(self: gen_qwebkitplatformplugin_types.QWebTouchModifier, param1: cstring): pointer =
  fcQWebTouchModifier_metacast(self.h, param1)

proc metacall*(self: gen_qwebkitplatformplugin_types.QWebTouchModifier, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebTouchModifier_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebkitplatformplugin_types.QWebTouchModifier, s: cstring): string =
  let v_ms = fcQWebTouchModifier_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebkitplatformplugin_types.QWebTouchModifier, s: cstring): string =
  let v_ms = fcQWebTouchModifier_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hitTestPaddingForTouch*(self: gen_qwebkitplatformplugin_types.QWebTouchModifier, param1: cint): cuint =
  fcQWebTouchModifier_hitTestPaddingForTouch(self.h, cint(param1))

proc tr*(_: type gen_qwebkitplatformplugin_types.QWebTouchModifier, s: cstring, c: cstring): string =
  let v_ms = fcQWebTouchModifier_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebkitplatformplugin_types.QWebTouchModifier, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebTouchModifier_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebkitplatformplugin_types.QWebTouchModifier, s: cstring, c: cstring): string =
  let v_ms = fcQWebTouchModifier_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebkitplatformplugin_types.QWebTouchModifier, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebTouchModifier_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qwebkitplatformplugin_types.QWebTouchModifier): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebTouchModifier_staticMetaObject())
proc delete*(self: gen_qwebkitplatformplugin_types.QWebTouchModifier) =
  fcQWebTouchModifier_delete(self.h)
proc metaObject*(self: gen_qwebkitplatformplugin_types.QWebSpellChecker, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebSpellChecker_metaObject(self.h))

proc metacast*(self: gen_qwebkitplatformplugin_types.QWebSpellChecker, param1: cstring): pointer =
  fcQWebSpellChecker_metacast(self.h, param1)

proc metacall*(self: gen_qwebkitplatformplugin_types.QWebSpellChecker, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebSpellChecker_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebkitplatformplugin_types.QWebSpellChecker, s: cstring): string =
  let v_ms = fcQWebSpellChecker_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebkitplatformplugin_types.QWebSpellChecker, s: cstring): string =
  let v_ms = fcQWebSpellChecker_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isContinousSpellCheckingEnabled*(self: gen_qwebkitplatformplugin_types.QWebSpellChecker, ): bool =
  fcQWebSpellChecker_isContinousSpellCheckingEnabled(self.h)

proc toggleContinousSpellChecking*(self: gen_qwebkitplatformplugin_types.QWebSpellChecker, ): void =
  fcQWebSpellChecker_toggleContinousSpellChecking(self.h)

proc learnWord*(self: gen_qwebkitplatformplugin_types.QWebSpellChecker, word: string): void =
  fcQWebSpellChecker_learnWord(self.h, struct_miqt_string(data: word, len: csize_t(len(word))))

proc ignoreWordInSpellDocument*(self: gen_qwebkitplatformplugin_types.QWebSpellChecker, word: string): void =
  fcQWebSpellChecker_ignoreWordInSpellDocument(self.h, struct_miqt_string(data: word, len: csize_t(len(word))))

proc checkSpellingOfString*(self: gen_qwebkitplatformplugin_types.QWebSpellChecker, word: string, misspellingLocation: ptr cint, misspellingLength: ptr cint): void =
  fcQWebSpellChecker_checkSpellingOfString(self.h, struct_miqt_string(data: word, len: csize_t(len(word))), misspellingLocation, misspellingLength)

proc autoCorrectSuggestionForMisspelledWord*(self: gen_qwebkitplatformplugin_types.QWebSpellChecker, word: string): string =
  let v_ms = fcQWebSpellChecker_autoCorrectSuggestionForMisspelledWord(self.h, struct_miqt_string(data: word, len: csize_t(len(word))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc guessesForWord*(self: gen_qwebkitplatformplugin_types.QWebSpellChecker, word: string, context: string, guesses: seq[string]): void =
  var guesses_CArray = newSeq[struct_miqt_string](len(guesses))
  for i in 0..<len(guesses):
    guesses_CArray[i] = struct_miqt_string(data: guesses[i], len: csize_t(len(guesses[i])))

  fcQWebSpellChecker_guessesForWord(self.h, struct_miqt_string(data: word, len: csize_t(len(word))), struct_miqt_string(data: context, len: csize_t(len(context))), struct_miqt_array(len: csize_t(len(guesses)), data: if len(guesses) == 0: nil else: addr(guesses_CArray[0])))

proc isGrammarCheckingEnabled*(self: gen_qwebkitplatformplugin_types.QWebSpellChecker, ): bool =
  fcQWebSpellChecker_isGrammarCheckingEnabled(self.h)

proc toggleGrammarChecking*(self: gen_qwebkitplatformplugin_types.QWebSpellChecker, ): void =
  fcQWebSpellChecker_toggleGrammarChecking(self.h)

proc checkGrammarOfString*(self: gen_qwebkitplatformplugin_types.QWebSpellChecker, param1: string, param2: seq[gen_qwebkitplatformplugin_types.QWebSpellCheckerGrammarDetail], badGrammarLocation: ptr cint, badGrammarLength: ptr cint): void =
  var param2_CArray = newSeq[pointer](len(param2))
  for i in 0..<len(param2):
    param2_CArray[i] = param2[i].h

  fcQWebSpellChecker_checkGrammarOfString(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), struct_miqt_array(len: csize_t(len(param2)), data: if len(param2) == 0: nil else: addr(param2_CArray[0])), badGrammarLocation, badGrammarLength)

proc tr*(_: type gen_qwebkitplatformplugin_types.QWebSpellChecker, s: cstring, c: cstring): string =
  let v_ms = fcQWebSpellChecker_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebkitplatformplugin_types.QWebSpellChecker, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebSpellChecker_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebkitplatformplugin_types.QWebSpellChecker, s: cstring, c: cstring): string =
  let v_ms = fcQWebSpellChecker_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebkitplatformplugin_types.QWebSpellChecker, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebSpellChecker_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qwebkitplatformplugin_types.QWebSpellChecker): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebSpellChecker_staticMetaObject())
proc delete*(self: gen_qwebkitplatformplugin_types.QWebSpellChecker) =
  fcQWebSpellChecker_delete(self.h)
proc supportsExtension*(self: gen_qwebkitplatformplugin_types.QWebKitPlatformPlugin, param1: cint): bool =
  fcQWebKitPlatformPlugin_supportsExtension(self.h, cint(param1))

proc createExtension*(self: gen_qwebkitplatformplugin_types.QWebKitPlatformPlugin, param1: cint): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebKitPlatformPlugin_createExtension(self.h, cint(param1)))

proc operatorAssign*(self: gen_qwebkitplatformplugin_types.QWebKitPlatformPlugin, param1: gen_qwebkitplatformplugin_types.QWebKitPlatformPlugin): void =
  fcQWebKitPlatformPlugin_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qwebkitplatformplugin_types.QWebKitPlatformPlugin) =
  fcQWebKitPlatformPlugin_delete(self.h)
proc operatorAssign*(self: gen_qwebkitplatformplugin_types.QWebSpellCheckerGrammarDetail, param1: gen_qwebkitplatformplugin_types.QWebSpellCheckerGrammarDetail): void =
  fcQWebSpellCheckerGrammarDetail_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qwebkitplatformplugin_types.QWebSpellCheckerGrammarDetail,
    param1: gen_qwebkitplatformplugin_types.QWebSpellCheckerGrammarDetail): gen_qwebkitplatformplugin_types.QWebSpellCheckerGrammarDetail =
  gen_qwebkitplatformplugin_types.QWebSpellCheckerGrammarDetail(h: fcQWebSpellCheckerGrammarDetail_new(param1.h))

proc delete*(self: gen_qwebkitplatformplugin_types.QWebSpellCheckerGrammarDetail) =
  fcQWebSpellCheckerGrammarDetail_delete(self.h)
