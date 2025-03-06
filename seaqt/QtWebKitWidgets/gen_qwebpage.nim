import ./Qt5WebKitWidgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebKitWidgets")  & " -fPIC"
{.compile("gen_qwebpage.cpp", cflags).}


type QWebPageNavigationTypeEnum* = distinct cint
template NavigationTypeLinkClicked*(_: type QWebPageNavigationTypeEnum): untyped = 0
template NavigationTypeFormSubmitted*(_: type QWebPageNavigationTypeEnum): untyped = 1
template NavigationTypeBackOrForward*(_: type QWebPageNavigationTypeEnum): untyped = 2
template NavigationTypeReload*(_: type QWebPageNavigationTypeEnum): untyped = 3
template NavigationTypeFormResubmitted*(_: type QWebPageNavigationTypeEnum): untyped = 4
template NavigationTypeOther*(_: type QWebPageNavigationTypeEnum): untyped = 5


type QWebPageWebActionEnum* = distinct cint
template NoWebAction*(_: type QWebPageWebActionEnum): untyped = -1
template OpenLink*(_: type QWebPageWebActionEnum): untyped = 0
template OpenLinkInNewWindow*(_: type QWebPageWebActionEnum): untyped = 1
template OpenFrameInNewWindow*(_: type QWebPageWebActionEnum): untyped = 2
template DownloadLinkToDisk*(_: type QWebPageWebActionEnum): untyped = 3
template CopyLinkToClipboard*(_: type QWebPageWebActionEnum): untyped = 4
template OpenImageInNewWindow*(_: type QWebPageWebActionEnum): untyped = 5
template DownloadImageToDisk*(_: type QWebPageWebActionEnum): untyped = 6
template CopyImageToClipboard*(_: type QWebPageWebActionEnum): untyped = 7
template Back*(_: type QWebPageWebActionEnum): untyped = 8
template Forward*(_: type QWebPageWebActionEnum): untyped = 9
template Stop*(_: type QWebPageWebActionEnum): untyped = 10
template Reload*(_: type QWebPageWebActionEnum): untyped = 11
template Cut*(_: type QWebPageWebActionEnum): untyped = 12
template Copy*(_: type QWebPageWebActionEnum): untyped = 13
template Paste*(_: type QWebPageWebActionEnum): untyped = 14
template Undo*(_: type QWebPageWebActionEnum): untyped = 15
template Redo*(_: type QWebPageWebActionEnum): untyped = 16
template MoveToNextChar*(_: type QWebPageWebActionEnum): untyped = 17
template MoveToPreviousChar*(_: type QWebPageWebActionEnum): untyped = 18
template MoveToNextWord*(_: type QWebPageWebActionEnum): untyped = 19
template MoveToPreviousWord*(_: type QWebPageWebActionEnum): untyped = 20
template MoveToNextLine*(_: type QWebPageWebActionEnum): untyped = 21
template MoveToPreviousLine*(_: type QWebPageWebActionEnum): untyped = 22
template MoveToStartOfLine*(_: type QWebPageWebActionEnum): untyped = 23
template MoveToEndOfLine*(_: type QWebPageWebActionEnum): untyped = 24
template MoveToStartOfBlock*(_: type QWebPageWebActionEnum): untyped = 25
template MoveToEndOfBlock*(_: type QWebPageWebActionEnum): untyped = 26
template MoveToStartOfDocument*(_: type QWebPageWebActionEnum): untyped = 27
template MoveToEndOfDocument*(_: type QWebPageWebActionEnum): untyped = 28
template SelectNextChar*(_: type QWebPageWebActionEnum): untyped = 29
template SelectPreviousChar*(_: type QWebPageWebActionEnum): untyped = 30
template SelectNextWord*(_: type QWebPageWebActionEnum): untyped = 31
template SelectPreviousWord*(_: type QWebPageWebActionEnum): untyped = 32
template SelectNextLine*(_: type QWebPageWebActionEnum): untyped = 33
template SelectPreviousLine*(_: type QWebPageWebActionEnum): untyped = 34
template SelectStartOfLine*(_: type QWebPageWebActionEnum): untyped = 35
template SelectEndOfLine*(_: type QWebPageWebActionEnum): untyped = 36
template SelectStartOfBlock*(_: type QWebPageWebActionEnum): untyped = 37
template SelectEndOfBlock*(_: type QWebPageWebActionEnum): untyped = 38
template SelectStartOfDocument*(_: type QWebPageWebActionEnum): untyped = 39
template SelectEndOfDocument*(_: type QWebPageWebActionEnum): untyped = 40
template DeleteStartOfWord*(_: type QWebPageWebActionEnum): untyped = 41
template DeleteEndOfWord*(_: type QWebPageWebActionEnum): untyped = 42
template SetTextDirectionDefault*(_: type QWebPageWebActionEnum): untyped = 43
template SetTextDirectionLeftToRight*(_: type QWebPageWebActionEnum): untyped = 44
template SetTextDirectionRightToLeft*(_: type QWebPageWebActionEnum): untyped = 45
template ToggleBold*(_: type QWebPageWebActionEnum): untyped = 46
template ToggleItalic*(_: type QWebPageWebActionEnum): untyped = 47
template ToggleUnderline*(_: type QWebPageWebActionEnum): untyped = 48
template InspectElement*(_: type QWebPageWebActionEnum): untyped = 49
template InsertParagraphSeparator*(_: type QWebPageWebActionEnum): untyped = 50
template InsertLineSeparator*(_: type QWebPageWebActionEnum): untyped = 51
template SelectAll*(_: type QWebPageWebActionEnum): untyped = 52
template ReloadAndBypassCache*(_: type QWebPageWebActionEnum): untyped = 53
template PasteAndMatchStyle*(_: type QWebPageWebActionEnum): untyped = 54
template RemoveFormat*(_: type QWebPageWebActionEnum): untyped = 55
template ToggleStrikethrough*(_: type QWebPageWebActionEnum): untyped = 56
template ToggleSubscript*(_: type QWebPageWebActionEnum): untyped = 57
template ToggleSuperscript*(_: type QWebPageWebActionEnum): untyped = 58
template InsertUnorderedList*(_: type QWebPageWebActionEnum): untyped = 59
template InsertOrderedList*(_: type QWebPageWebActionEnum): untyped = 60
template Indent*(_: type QWebPageWebActionEnum): untyped = 61
template Outdent*(_: type QWebPageWebActionEnum): untyped = 62
template AlignCenter*(_: type QWebPageWebActionEnum): untyped = 63
template AlignJustified*(_: type QWebPageWebActionEnum): untyped = 64
template AlignLeft*(_: type QWebPageWebActionEnum): untyped = 65
template AlignRight*(_: type QWebPageWebActionEnum): untyped = 66
template StopScheduledPageRefresh*(_: type QWebPageWebActionEnum): untyped = 67
template CopyImageUrlToClipboard*(_: type QWebPageWebActionEnum): untyped = 68
template OpenLinkInThisWindow*(_: type QWebPageWebActionEnum): untyped = 69
template DownloadMediaToDisk*(_: type QWebPageWebActionEnum): untyped = 70
template CopyMediaUrlToClipboard*(_: type QWebPageWebActionEnum): untyped = 71
template ToggleMediaControls*(_: type QWebPageWebActionEnum): untyped = 72
template ToggleMediaLoop*(_: type QWebPageWebActionEnum): untyped = 73
template ToggleMediaPlayPause*(_: type QWebPageWebActionEnum): untyped = 74
template ToggleMediaMute*(_: type QWebPageWebActionEnum): untyped = 75
template ToggleVideoFullscreen*(_: type QWebPageWebActionEnum): untyped = 76
template RequestClose*(_: type QWebPageWebActionEnum): untyped = 77
template Unselect*(_: type QWebPageWebActionEnum): untyped = 78
template WebActionCount*(_: type QWebPageWebActionEnum): untyped = 79


type QWebPageFindFlagEnum* = distinct cint
template FindBackward*(_: type QWebPageFindFlagEnum): untyped = 1
template FindCaseSensitively*(_: type QWebPageFindFlagEnum): untyped = 2
template FindWrapsAroundDocument*(_: type QWebPageFindFlagEnum): untyped = 4
template HighlightAllOccurrences*(_: type QWebPageFindFlagEnum): untyped = 8
template FindAtWordBeginningsOnly*(_: type QWebPageFindFlagEnum): untyped = 16
template TreatMedialCapitalAsWordBeginning*(_: type QWebPageFindFlagEnum): untyped = 32
template FindBeginsInSelection*(_: type QWebPageFindFlagEnum): untyped = 64
template FindAtWordEndingsOnly*(_: type QWebPageFindFlagEnum): untyped = 128
template FindExactMatchOnly*(_: type QWebPageFindFlagEnum): untyped = 144


type QWebPageLinkDelegationPolicyEnum* = distinct cint
template DontDelegateLinks*(_: type QWebPageLinkDelegationPolicyEnum): untyped = 0
template DelegateExternalLinks*(_: type QWebPageLinkDelegationPolicyEnum): untyped = 1
template DelegateAllLinks*(_: type QWebPageLinkDelegationPolicyEnum): untyped = 2


type QWebPageWebWindowTypeEnum* = distinct cint
template WebBrowserWindow*(_: type QWebPageWebWindowTypeEnum): untyped = 0
template WebModalDialog*(_: type QWebPageWebWindowTypeEnum): untyped = 1


type QWebPagePermissionPolicyEnum* = distinct cint
template PermissionUnknown*(_: type QWebPagePermissionPolicyEnum): untyped = 0
template PermissionGrantedByUser*(_: type QWebPagePermissionPolicyEnum): untyped = 1
template PermissionDeniedByUser*(_: type QWebPagePermissionPolicyEnum): untyped = 2


type QWebPageFeatureEnum* = distinct cint
template Notifications*(_: type QWebPageFeatureEnum): untyped = 0
template Geolocation*(_: type QWebPageFeatureEnum): untyped = 1


type QWebPageVisibilityStateEnum* = distinct cint
template VisibilityStateVisible*(_: type QWebPageVisibilityStateEnum): untyped = 0
template VisibilityStateHidden*(_: type QWebPageVisibilityStateEnum): untyped = 1
template VisibilityStatePrerender*(_: type QWebPageVisibilityStateEnum): untyped = 2
template VisibilityStateUnloaded*(_: type QWebPageVisibilityStateEnum): untyped = 3


type QWebPageMessageSourceEnum* = distinct cint
template XmlMessageSource*(_: type QWebPageMessageSourceEnum): untyped = 0
template JSMessageSource*(_: type QWebPageMessageSourceEnum): untyped = 1
template NetworkMessageSource*(_: type QWebPageMessageSourceEnum): untyped = 2
template ConsoleAPIMessageSource*(_: type QWebPageMessageSourceEnum): untyped = 3
template StorageMessageSource*(_: type QWebPageMessageSourceEnum): untyped = 4
template AppCacheMessageSource*(_: type QWebPageMessageSourceEnum): untyped = 5
template RenderingMessageSource*(_: type QWebPageMessageSourceEnum): untyped = 6
template CSSMessageSource*(_: type QWebPageMessageSourceEnum): untyped = 7
template SecurityMessageSource*(_: type QWebPageMessageSourceEnum): untyped = 8
template ContentBlockerMessageSource*(_: type QWebPageMessageSourceEnum): untyped = 9
template OtherMessageSource*(_: type QWebPageMessageSourceEnum): untyped = 10


type QWebPageMessageLevelEnum* = distinct cint
template LogMessageLevel*(_: type QWebPageMessageLevelEnum): untyped = 1
template WarningMessageLevel*(_: type QWebPageMessageLevelEnum): untyped = 2
template ErrorMessageLevel*(_: type QWebPageMessageLevelEnum): untyped = 3
template DebugMessageLevel*(_: type QWebPageMessageLevelEnum): untyped = 4
template InfoMessageLevel*(_: type QWebPageMessageLevelEnum): untyped = 5


type QWebPageExtensionEnum* = distinct cint
template ChooseMultipleFilesExtension*(_: type QWebPageExtensionEnum): untyped = 0
template ErrorPageExtension*(_: type QWebPageExtensionEnum): untyped = 1


type QWebPageErrorDomainEnum* = distinct cint
template QtNetwork*(_: type QWebPageErrorDomainEnum): untyped = 0
template Http*(_: type QWebPageErrorDomainEnum): untyped = 1
template WebKit*(_: type QWebPageErrorDomainEnum): untyped = 2


import ./gen_qwebpage_types
export gen_qwebpage_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpalette_types,
  ../QtNetwork/gen_qnetworkaccessmanager_types,
  ../QtNetwork/gen_qnetworkreply_types,
  ../QtNetwork/gen_qnetworkrequest_types,
  ../QtWebKit/gen_qwebelement_types,
  ../QtWebKit/gen_qwebfullscreenrequest_types,
  ../QtWebKit/gen_qwebhistory_types,
  ../QtWebKit/gen_qwebpluginfactory_types,
  ../QtWebKit/gen_qwebsecurityorigin_types,
  ../QtWebKit/gen_qwebsettings_types,
  ../QtWidgets/gen_qaction_types,
  ../QtWidgets/gen_qmenu_types,
  ../QtWidgets/gen_qundostack_types,
  ../QtWidgets/gen_qwidget_types,
  ./gen_qwebframe_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qpalette_types,
  gen_qnetworkaccessmanager_types,
  gen_qnetworkreply_types,
  gen_qnetworkrequest_types,
  gen_qwebelement_types,
  gen_qwebfullscreenrequest_types,
  gen_qwebhistory_types,
  gen_qwebpluginfactory_types,
  gen_qwebsecurityorigin_types,
  gen_qwebsettings_types,
  gen_qaction_types,
  gen_qmenu_types,
  gen_qundostack_types,
  gen_qwidget_types,
  gen_qwebframe_types

type cQWebPage*{.exportc: "QWebPage", incompleteStruct.} = object
type cQWebPageViewportAttributes*{.exportc: "QWebPage__ViewportAttributes", incompleteStruct.} = object
type cQWebPageExtensionOption*{.exportc: "QWebPage__ExtensionOption", incompleteStruct.} = object
type cQWebPageExtensionReturn*{.exportc: "QWebPage__ExtensionReturn", incompleteStruct.} = object
type cQWebPageChooseMultipleFilesExtensionOption*{.exportc: "QWebPage__ChooseMultipleFilesExtensionOption", incompleteStruct.} = object
type cQWebPageChooseMultipleFilesExtensionReturn*{.exportc: "QWebPage__ChooseMultipleFilesExtensionReturn", incompleteStruct.} = object
type cQWebPageErrorPageExtensionOption*{.exportc: "QWebPage__ErrorPageExtensionOption", incompleteStruct.} = object
type cQWebPageErrorPageExtensionReturn*{.exportc: "QWebPage__ErrorPageExtensionReturn", incompleteStruct.} = object

proc fcQWebPage_metaObject(self: pointer, ): pointer {.importc: "QWebPage_metaObject".}
proc fcQWebPage_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebPage_metacast".}
proc fcQWebPage_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebPage_metacall".}
proc fcQWebPage_tr(s: cstring): struct_miqt_string {.importc: "QWebPage_tr".}
proc fcQWebPage_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebPage_trUtf8".}
proc fcQWebPage_mainFrame(self: pointer, ): pointer {.importc: "QWebPage_mainFrame".}
proc fcQWebPage_currentFrame(self: pointer, ): pointer {.importc: "QWebPage_currentFrame".}
proc fcQWebPage_frameAt(self: pointer, pos: pointer): pointer {.importc: "QWebPage_frameAt".}
proc fcQWebPage_history(self: pointer, ): pointer {.importc: "QWebPage_history".}
proc fcQWebPage_settings(self: pointer, ): pointer {.importc: "QWebPage_settings".}
proc fcQWebPage_setView(self: pointer, view: pointer): void {.importc: "QWebPage_setView".}
proc fcQWebPage_view(self: pointer, ): pointer {.importc: "QWebPage_view".}
proc fcQWebPage_isModified(self: pointer, ): bool {.importc: "QWebPage_isModified".}
proc fcQWebPage_undoStack(self: pointer, ): pointer {.importc: "QWebPage_undoStack".}
proc fcQWebPage_setNetworkAccessManager(self: pointer, manager: pointer): void {.importc: "QWebPage_setNetworkAccessManager".}
proc fcQWebPage_networkAccessManager(self: pointer, ): pointer {.importc: "QWebPage_networkAccessManager".}
proc fcQWebPage_setPluginFactory(self: pointer, factory: pointer): void {.importc: "QWebPage_setPluginFactory".}
proc fcQWebPage_pluginFactory(self: pointer, ): pointer {.importc: "QWebPage_pluginFactory".}
proc fcQWebPage_totalBytes(self: pointer, ): culonglong {.importc: "QWebPage_totalBytes".}
proc fcQWebPage_bytesReceived(self: pointer, ): culonglong {.importc: "QWebPage_bytesReceived".}
proc fcQWebPage_visibilityState(self: pointer, ): cint {.importc: "QWebPage_visibilityState".}
proc fcQWebPage_setVisibilityState(self: pointer, visibilityState: cint): void {.importc: "QWebPage_setVisibilityState".}
proc fcQWebPage_recentlyAudible(self: pointer, ): bool {.importc: "QWebPage_recentlyAudible".}
proc fcQWebPage_hasSelection(self: pointer, ): bool {.importc: "QWebPage_hasSelection".}
proc fcQWebPage_selectedText(self: pointer, ): struct_miqt_string {.importc: "QWebPage_selectedText".}
proc fcQWebPage_selectedHtml(self: pointer, ): struct_miqt_string {.importc: "QWebPage_selectedHtml".}
proc fcQWebPage_action(self: pointer, action: cint): pointer {.importc: "QWebPage_action".}
proc fcQWebPage_customAction(self: pointer, action: cint): pointer {.importc: "QWebPage_customAction".}
proc fcQWebPage_triggerAction(self: pointer, action: cint, checked: bool): void {.importc: "QWebPage_triggerAction".}
proc fcQWebPage_setDevicePixelRatio(self: pointer, ratio: float64): void {.importc: "QWebPage_setDevicePixelRatio".}
proc fcQWebPage_devicePixelRatio(self: pointer, ): float64 {.importc: "QWebPage_devicePixelRatio".}
proc fcQWebPage_resetDevicePixelRatio(self: pointer, ): void {.importc: "QWebPage_resetDevicePixelRatio".}
proc fcQWebPage_viewportSize(self: pointer, ): pointer {.importc: "QWebPage_viewportSize".}
proc fcQWebPage_setViewportSize(self: pointer, size: pointer): void {.importc: "QWebPage_setViewportSize".}
proc fcQWebPage_viewportAttributesForSize(self: pointer, availableSize: pointer): pointer {.importc: "QWebPage_viewportAttributesForSize".}
proc fcQWebPage_preferredContentsSize(self: pointer, ): pointer {.importc: "QWebPage_preferredContentsSize".}
proc fcQWebPage_setPreferredContentsSize(self: pointer, size: pointer): void {.importc: "QWebPage_setPreferredContentsSize".}
proc fcQWebPage_setActualVisibleContentRect(self: pointer, rect: pointer): void {.importc: "QWebPage_setActualVisibleContentRect".}
proc fcQWebPage_event(self: pointer, param1: pointer): bool {.importc: "QWebPage_event".}
proc fcQWebPage_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QWebPage_focusNextPrevChild".}
proc fcQWebPage_inputMethodQuery(self: pointer, property: cint): pointer {.importc: "QWebPage_inputMethodQuery".}
proc fcQWebPage_findText(self: pointer, subString: struct_miqt_string): bool {.importc: "QWebPage_findText".}
proc fcQWebPage_setForwardUnsupportedContent(self: pointer, forward: bool): void {.importc: "QWebPage_setForwardUnsupportedContent".}
proc fcQWebPage_forwardUnsupportedContent(self: pointer, ): bool {.importc: "QWebPage_forwardUnsupportedContent".}
proc fcQWebPage_setLinkDelegationPolicy(self: pointer, policy: cint): void {.importc: "QWebPage_setLinkDelegationPolicy".}
proc fcQWebPage_linkDelegationPolicy(self: pointer, ): cint {.importc: "QWebPage_linkDelegationPolicy".}
proc fcQWebPage_setPalette(self: pointer, palette: pointer): void {.importc: "QWebPage_setPalette".}
proc fcQWebPage_palette(self: pointer, ): pointer {.importc: "QWebPage_palette".}
proc fcQWebPage_setContentEditable(self: pointer, editable: bool): void {.importc: "QWebPage_setContentEditable".}
proc fcQWebPage_isContentEditable(self: pointer, ): bool {.importc: "QWebPage_isContentEditable".}
proc fcQWebPage_swallowContextMenuEvent(self: pointer, event: pointer): bool {.importc: "QWebPage_swallowContextMenuEvent".}
proc fcQWebPage_updatePositionDependentActions(self: pointer, pos: pointer): void {.importc: "QWebPage_updatePositionDependentActions".}
proc fcQWebPage_createStandardContextMenu(self: pointer, ): pointer {.importc: "QWebPage_createStandardContextMenu".}
proc fcQWebPage_setFeaturePermission(self: pointer, frame: pointer, feature: cint, policy: cint): void {.importc: "QWebPage_setFeaturePermission".}
proc fcQWebPage_supportedContentTypes(self: pointer, ): struct_miqt_array {.importc: "QWebPage_supportedContentTypes".}
proc fcQWebPage_supportsContentType(self: pointer, mimeType: struct_miqt_string): bool {.importc: "QWebPage_supportsContentType".}
proc fcQWebPage_extension(self: pointer, extension: cint, option: pointer, output: pointer): bool {.importc: "QWebPage_extension".}
proc fcQWebPage_supportsExtension(self: pointer, extension: cint): bool {.importc: "QWebPage_supportsExtension".}
proc fcQWebPage_shouldInterruptJavaScript(self: pointer, ): bool {.importc: "QWebPage_shouldInterruptJavaScript".}
proc fcQWebPage_loadStarted(self: pointer, ): void {.importc: "QWebPage_loadStarted".}
proc fcQWebPage_connect_loadStarted(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_loadStarted".}
proc fcQWebPage_loadProgress(self: pointer, progress: cint): void {.importc: "QWebPage_loadProgress".}
proc fcQWebPage_connect_loadProgress(self: pointer, slot: int, callback: proc (slot: int, progress: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_loadProgress".}
proc fcQWebPage_loadFinished(self: pointer, ok: bool): void {.importc: "QWebPage_loadFinished".}
proc fcQWebPage_connect_loadFinished(self: pointer, slot: int, callback: proc (slot: int, ok: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_loadFinished".}
proc fcQWebPage_linkHovered(self: pointer, link: struct_miqt_string, title: struct_miqt_string, textContent: struct_miqt_string): void {.importc: "QWebPage_linkHovered".}
proc fcQWebPage_connect_linkHovered(self: pointer, slot: int, callback: proc (slot: int, link: struct_miqt_string, title: struct_miqt_string, textContent: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_linkHovered".}
proc fcQWebPage_statusBarMessage(self: pointer, text: struct_miqt_string): void {.importc: "QWebPage_statusBarMessage".}
proc fcQWebPage_connect_statusBarMessage(self: pointer, slot: int, callback: proc (slot: int, text: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_statusBarMessage".}
proc fcQWebPage_selectionChanged(self: pointer, ): void {.importc: "QWebPage_selectionChanged".}
proc fcQWebPage_connect_selectionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_selectionChanged".}
proc fcQWebPage_frameCreated(self: pointer, frame: pointer): void {.importc: "QWebPage_frameCreated".}
proc fcQWebPage_connect_frameCreated(self: pointer, slot: int, callback: proc (slot: int, frame: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_frameCreated".}
proc fcQWebPage_geometryChangeRequested(self: pointer, geom: pointer): void {.importc: "QWebPage_geometryChangeRequested".}
proc fcQWebPage_connect_geometryChangeRequested(self: pointer, slot: int, callback: proc (slot: int, geom: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_geometryChangeRequested".}
proc fcQWebPage_repaintRequested(self: pointer, dirtyRect: pointer): void {.importc: "QWebPage_repaintRequested".}
proc fcQWebPage_connect_repaintRequested(self: pointer, slot: int, callback: proc (slot: int, dirtyRect: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_repaintRequested".}
proc fcQWebPage_scrollRequested(self: pointer, dx: cint, dy: cint, scrollViewRect: pointer): void {.importc: "QWebPage_scrollRequested".}
proc fcQWebPage_connect_scrollRequested(self: pointer, slot: int, callback: proc (slot: int, dx: cint, dy: cint, scrollViewRect: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_scrollRequested".}
proc fcQWebPage_windowCloseRequested(self: pointer, ): void {.importc: "QWebPage_windowCloseRequested".}
proc fcQWebPage_connect_windowCloseRequested(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_windowCloseRequested".}
proc fcQWebPage_printRequested(self: pointer, frame: pointer): void {.importc: "QWebPage_printRequested".}
proc fcQWebPage_connect_printRequested(self: pointer, slot: int, callback: proc (slot: int, frame: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_printRequested".}
proc fcQWebPage_linkClicked(self: pointer, url: pointer): void {.importc: "QWebPage_linkClicked".}
proc fcQWebPage_connect_linkClicked(self: pointer, slot: int, callback: proc (slot: int, url: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_linkClicked".}
proc fcQWebPage_toolBarVisibilityChangeRequested(self: pointer, visible: bool): void {.importc: "QWebPage_toolBarVisibilityChangeRequested".}
proc fcQWebPage_connect_toolBarVisibilityChangeRequested(self: pointer, slot: int, callback: proc (slot: int, visible: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_toolBarVisibilityChangeRequested".}
proc fcQWebPage_statusBarVisibilityChangeRequested(self: pointer, visible: bool): void {.importc: "QWebPage_statusBarVisibilityChangeRequested".}
proc fcQWebPage_connect_statusBarVisibilityChangeRequested(self: pointer, slot: int, callback: proc (slot: int, visible: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_statusBarVisibilityChangeRequested".}
proc fcQWebPage_menuBarVisibilityChangeRequested(self: pointer, visible: bool): void {.importc: "QWebPage_menuBarVisibilityChangeRequested".}
proc fcQWebPage_connect_menuBarVisibilityChangeRequested(self: pointer, slot: int, callback: proc (slot: int, visible: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_menuBarVisibilityChangeRequested".}
proc fcQWebPage_unsupportedContent(self: pointer, reply: pointer): void {.importc: "QWebPage_unsupportedContent".}
proc fcQWebPage_connect_unsupportedContent(self: pointer, slot: int, callback: proc (slot: int, reply: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_unsupportedContent".}
proc fcQWebPage_downloadRequested(self: pointer, request: pointer): void {.importc: "QWebPage_downloadRequested".}
proc fcQWebPage_connect_downloadRequested(self: pointer, slot: int, callback: proc (slot: int, request: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_downloadRequested".}
proc fcQWebPage_focusedElementChanged(self: pointer, element: pointer): void {.importc: "QWebPage_focusedElementChanged".}
proc fcQWebPage_connect_focusedElementChanged(self: pointer, slot: int, callback: proc (slot: int, element: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_focusedElementChanged".}
proc fcQWebPage_microFocusChanged(self: pointer, ): void {.importc: "QWebPage_microFocusChanged".}
proc fcQWebPage_connect_microFocusChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_microFocusChanged".}
proc fcQWebPage_contentsChanged(self: pointer, ): void {.importc: "QWebPage_contentsChanged".}
proc fcQWebPage_connect_contentsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_contentsChanged".}
proc fcQWebPage_databaseQuotaExceeded(self: pointer, frame: pointer, databaseName: struct_miqt_string): void {.importc: "QWebPage_databaseQuotaExceeded".}
proc fcQWebPage_connect_databaseQuotaExceeded(self: pointer, slot: int, callback: proc (slot: int, frame: pointer, databaseName: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_databaseQuotaExceeded".}
proc fcQWebPage_applicationCacheQuotaExceeded(self: pointer, origin: pointer, defaultOriginQuota: culonglong, totalSpaceNeeded: culonglong): void {.importc: "QWebPage_applicationCacheQuotaExceeded".}
proc fcQWebPage_connect_applicationCacheQuotaExceeded(self: pointer, slot: int, callback: proc (slot: int, origin: pointer, defaultOriginQuota: culonglong, totalSpaceNeeded: culonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_applicationCacheQuotaExceeded".}
proc fcQWebPage_saveFrameStateRequested(self: pointer, frame: pointer, item: pointer): void {.importc: "QWebPage_saveFrameStateRequested".}
proc fcQWebPage_connect_saveFrameStateRequested(self: pointer, slot: int, callback: proc (slot: int, frame: pointer, item: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_saveFrameStateRequested".}
proc fcQWebPage_restoreFrameStateRequested(self: pointer, frame: pointer): void {.importc: "QWebPage_restoreFrameStateRequested".}
proc fcQWebPage_connect_restoreFrameStateRequested(self: pointer, slot: int, callback: proc (slot: int, frame: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_restoreFrameStateRequested".}
proc fcQWebPage_viewportChangeRequested(self: pointer, ): void {.importc: "QWebPage_viewportChangeRequested".}
proc fcQWebPage_connect_viewportChangeRequested(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_viewportChangeRequested".}
proc fcQWebPage_featurePermissionRequested(self: pointer, frame: pointer, feature: cint): void {.importc: "QWebPage_featurePermissionRequested".}
proc fcQWebPage_connect_featurePermissionRequested(self: pointer, slot: int, callback: proc (slot: int, frame: pointer, feature: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_featurePermissionRequested".}
proc fcQWebPage_featurePermissionRequestCanceled(self: pointer, frame: pointer, feature: cint): void {.importc: "QWebPage_featurePermissionRequestCanceled".}
proc fcQWebPage_connect_featurePermissionRequestCanceled(self: pointer, slot: int, callback: proc (slot: int, frame: pointer, feature: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_featurePermissionRequestCanceled".}
proc fcQWebPage_fullScreenRequested(self: pointer, fullScreenRequest: pointer): void {.importc: "QWebPage_fullScreenRequested".}
proc fcQWebPage_connect_fullScreenRequested(self: pointer, slot: int, callback: proc (slot: int, fullScreenRequest: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_fullScreenRequested".}
proc fcQWebPage_consoleMessageReceived(self: pointer, source: cint, level: cint, message: struct_miqt_string, lineNumber: cint, sourceID: struct_miqt_string): void {.importc: "QWebPage_consoleMessageReceived".}
proc fcQWebPage_connect_consoleMessageReceived(self: pointer, slot: int, callback: proc (slot: int, source: cint, level: cint, message: struct_miqt_string, lineNumber: cint, sourceID: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_consoleMessageReceived".}
proc fcQWebPage_recentlyAudibleChanged(self: pointer, recentlyAudible: bool): void {.importc: "QWebPage_recentlyAudibleChanged".}
proc fcQWebPage_connect_recentlyAudibleChanged(self: pointer, slot: int, callback: proc (slot: int, recentlyAudible: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebPage_connect_recentlyAudibleChanged".}
proc fcQWebPage_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebPage_tr2".}
proc fcQWebPage_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebPage_tr3".}
proc fcQWebPage_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebPage_trUtf82".}
proc fcQWebPage_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebPage_trUtf83".}
proc fcQWebPage_findText2(self: pointer, subString: struct_miqt_string, options: cint): bool {.importc: "QWebPage_findText2".}
type cQWebPageVTable = object
  destructor*: proc(vtbl: ptr cQWebPageVTable, self: ptr cQWebPage) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  triggerAction*: proc(vtbl, self: pointer, action: cint, checked: bool): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, extension: cint, option: pointer, output: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  shouldInterruptJavaScript*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  createWindow*: proc(vtbl, self: pointer, typeVal: cint): pointer {.cdecl, raises: [], gcsafe.}
  createPlugin*: proc(vtbl, self: pointer, classid: struct_miqt_string, url: pointer, paramNames: struct_miqt_array, paramValues: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  acceptNavigationRequest*: proc(vtbl, self: pointer, frame: pointer, request: pointer, typeVal: cint): bool {.cdecl, raises: [], gcsafe.}
  chooseFile*: proc(vtbl, self: pointer, originatingFrame: pointer, oldFile: struct_miqt_string): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  javaScriptAlert*: proc(vtbl, self: pointer, originatingFrame: pointer, msg: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  javaScriptConfirm*: proc(vtbl, self: pointer, originatingFrame: pointer, msg: struct_miqt_string): bool {.cdecl, raises: [], gcsafe.}
  javaScriptConsoleMessage*: proc(vtbl, self: pointer, message: struct_miqt_string, lineNumber: cint, sourceID: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  userAgentForUrl*: proc(vtbl, self: pointer, url: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWebPage_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QWebPage_virtualbase_metaObject".}
proc fcQWebPage_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebPage_virtualbase_metacast".}
proc fcQWebPage_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebPage_virtualbase_metacall".}
proc fcQWebPage_virtualbase_triggerAction(self: pointer, action: cint, checked: bool): void {.importc: "QWebPage_virtualbase_triggerAction".}
proc fcQWebPage_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QWebPage_virtualbase_event".}
proc fcQWebPage_virtualbase_extension(self: pointer, extension: cint, option: pointer, output: pointer): bool {.importc: "QWebPage_virtualbase_extension".}
proc fcQWebPage_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QWebPage_virtualbase_supportsExtension".}
proc fcQWebPage_virtualbase_shouldInterruptJavaScript(self: pointer, ): bool {.importc: "QWebPage_virtualbase_shouldInterruptJavaScript".}
proc fcQWebPage_virtualbase_createWindow(self: pointer, typeVal: cint): pointer {.importc: "QWebPage_virtualbase_createWindow".}
proc fcQWebPage_virtualbase_createPlugin(self: pointer, classid: struct_miqt_string, url: pointer, paramNames: struct_miqt_array, paramValues: struct_miqt_array): pointer {.importc: "QWebPage_virtualbase_createPlugin".}
proc fcQWebPage_virtualbase_acceptNavigationRequest(self: pointer, frame: pointer, request: pointer, typeVal: cint): bool {.importc: "QWebPage_virtualbase_acceptNavigationRequest".}
proc fcQWebPage_virtualbase_chooseFile(self: pointer, originatingFrame: pointer, oldFile: struct_miqt_string): struct_miqt_string {.importc: "QWebPage_virtualbase_chooseFile".}
proc fcQWebPage_virtualbase_javaScriptAlert(self: pointer, originatingFrame: pointer, msg: struct_miqt_string): void {.importc: "QWebPage_virtualbase_javaScriptAlert".}
proc fcQWebPage_virtualbase_javaScriptConfirm(self: pointer, originatingFrame: pointer, msg: struct_miqt_string): bool {.importc: "QWebPage_virtualbase_javaScriptConfirm".}
proc fcQWebPage_virtualbase_javaScriptConsoleMessage(self: pointer, message: struct_miqt_string, lineNumber: cint, sourceID: struct_miqt_string): void {.importc: "QWebPage_virtualbase_javaScriptConsoleMessage".}
proc fcQWebPage_virtualbase_userAgentForUrl(self: pointer, url: pointer): struct_miqt_string {.importc: "QWebPage_virtualbase_userAgentForUrl".}
proc fcQWebPage_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebPage_virtualbase_eventFilter".}
proc fcQWebPage_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebPage_virtualbase_timerEvent".}
proc fcQWebPage_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebPage_virtualbase_childEvent".}
proc fcQWebPage_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebPage_virtualbase_customEvent".}
proc fcQWebPage_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebPage_virtualbase_connectNotify".}
proc fcQWebPage_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebPage_virtualbase_disconnectNotify".}
proc fcQWebPage_protectedbase_sender(self: pointer, ): pointer {.importc: "QWebPage_protectedbase_sender".}
proc fcQWebPage_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QWebPage_protectedbase_senderSignalIndex".}
proc fcQWebPage_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebPage_protectedbase_receivers".}
proc fcQWebPage_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebPage_protectedbase_isSignalConnected".}
proc fcQWebPage_new(vtbl: pointer, ): ptr cQWebPage {.importc: "QWebPage_new".}
proc fcQWebPage_new2(vtbl: pointer, parent: pointer): ptr cQWebPage {.importc: "QWebPage_new2".}
proc fcQWebPage_staticMetaObject(): pointer {.importc: "QWebPage_staticMetaObject".}
proc fcQWebPage_delete(self: pointer) {.importc: "QWebPage_delete".}
proc fcQWebPageViewportAttributes_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebPage__ViewportAttributes_operatorAssign".}
proc fcQWebPageViewportAttributes_initialScaleFactor(self: pointer, ): float64 {.importc: "QWebPage__ViewportAttributes_initialScaleFactor".}
proc fcQWebPageViewportAttributes_minimumScaleFactor(self: pointer, ): float64 {.importc: "QWebPage__ViewportAttributes_minimumScaleFactor".}
proc fcQWebPageViewportAttributes_maximumScaleFactor(self: pointer, ): float64 {.importc: "QWebPage__ViewportAttributes_maximumScaleFactor".}
proc fcQWebPageViewportAttributes_devicePixelRatio(self: pointer, ): float64 {.importc: "QWebPage__ViewportAttributes_devicePixelRatio".}
proc fcQWebPageViewportAttributes_isUserScalable(self: pointer, ): bool {.importc: "QWebPage__ViewportAttributes_isUserScalable".}
proc fcQWebPageViewportAttributes_isValid(self: pointer, ): bool {.importc: "QWebPage__ViewportAttributes_isValid".}
proc fcQWebPageViewportAttributes_size(self: pointer, ): pointer {.importc: "QWebPage__ViewportAttributes_size".}
proc fcQWebPageViewportAttributes_new(): ptr cQWebPageViewportAttributes {.importc: "QWebPage__ViewportAttributes_new".}
proc fcQWebPageViewportAttributes_new2(other: pointer): ptr cQWebPageViewportAttributes {.importc: "QWebPage__ViewportAttributes_new2".}
proc fcQWebPageViewportAttributes_delete(self: pointer) {.importc: "QWebPage__ViewportAttributes_delete".}
proc fcQWebPageExtensionOption_new(param1: pointer): ptr cQWebPageExtensionOption {.importc: "QWebPage__ExtensionOption_new".}
proc fcQWebPageExtensionOption_delete(self: pointer) {.importc: "QWebPage__ExtensionOption_delete".}
proc fcQWebPageExtensionReturn_new(param1: pointer): ptr cQWebPageExtensionReturn {.importc: "QWebPage__ExtensionReturn_new".}
proc fcQWebPageExtensionReturn_new2(): ptr cQWebPageExtensionReturn {.importc: "QWebPage__ExtensionReturn_new2".}
proc fcQWebPageExtensionReturn_delete(self: pointer) {.importc: "QWebPage__ExtensionReturn_delete".}
proc fcQWebPageChooseMultipleFilesExtensionOption_delete(self: pointer) {.importc: "QWebPage__ChooseMultipleFilesExtensionOption_delete".}
proc fcQWebPageChooseMultipleFilesExtensionReturn_delete(self: pointer) {.importc: "QWebPage__ChooseMultipleFilesExtensionReturn_delete".}
proc fcQWebPageErrorPageExtensionOption_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebPage__ErrorPageExtensionOption_operatorAssign".}
proc fcQWebPageErrorPageExtensionOption_new(param1: pointer): ptr cQWebPageErrorPageExtensionOption {.importc: "QWebPage__ErrorPageExtensionOption_new".}
proc fcQWebPageErrorPageExtensionOption_delete(self: pointer) {.importc: "QWebPage__ErrorPageExtensionOption_delete".}
proc fcQWebPageErrorPageExtensionReturn_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebPage__ErrorPageExtensionReturn_operatorAssign".}
proc fcQWebPageErrorPageExtensionReturn_new(): ptr cQWebPageErrorPageExtensionReturn {.importc: "QWebPage__ErrorPageExtensionReturn_new".}
proc fcQWebPageErrorPageExtensionReturn_new2(param1: pointer): ptr cQWebPageErrorPageExtensionReturn {.importc: "QWebPage__ErrorPageExtensionReturn_new2".}
proc fcQWebPageErrorPageExtensionReturn_delete(self: pointer) {.importc: "QWebPage__ErrorPageExtensionReturn_delete".}

proc metaObject*(self: gen_qwebpage_types.QWebPage, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebPage_metaObject(self.h))

proc metacast*(self: gen_qwebpage_types.QWebPage, param1: cstring): pointer =
  fcQWebPage_metacast(self.h, param1)

proc metacall*(self: gen_qwebpage_types.QWebPage, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebPage_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebpage_types.QWebPage, s: cstring): string =
  let v_ms = fcQWebPage_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebpage_types.QWebPage, s: cstring): string =
  let v_ms = fcQWebPage_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc mainFrame*(self: gen_qwebpage_types.QWebPage, ): gen_qwebframe_types.QWebFrame =
  gen_qwebframe_types.QWebFrame(h: fcQWebPage_mainFrame(self.h))

proc currentFrame*(self: gen_qwebpage_types.QWebPage, ): gen_qwebframe_types.QWebFrame =
  gen_qwebframe_types.QWebFrame(h: fcQWebPage_currentFrame(self.h))

proc frameAt*(self: gen_qwebpage_types.QWebPage, pos: gen_qpoint_types.QPoint): gen_qwebframe_types.QWebFrame =
  gen_qwebframe_types.QWebFrame(h: fcQWebPage_frameAt(self.h, pos.h))

proc history*(self: gen_qwebpage_types.QWebPage, ): gen_qwebhistory_types.QWebHistory =
  gen_qwebhistory_types.QWebHistory(h: fcQWebPage_history(self.h))

proc settings*(self: gen_qwebpage_types.QWebPage, ): gen_qwebsettings_types.QWebSettings =
  gen_qwebsettings_types.QWebSettings(h: fcQWebPage_settings(self.h))

proc setView*(self: gen_qwebpage_types.QWebPage, view: gen_qwidget_types.QWidget): void =
  fcQWebPage_setView(self.h, view.h)

proc view*(self: gen_qwebpage_types.QWebPage, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWebPage_view(self.h))

proc isModified*(self: gen_qwebpage_types.QWebPage, ): bool =
  fcQWebPage_isModified(self.h)

proc undoStack*(self: gen_qwebpage_types.QWebPage, ): gen_qundostack_types.QUndoStack =
  gen_qundostack_types.QUndoStack(h: fcQWebPage_undoStack(self.h))

proc setNetworkAccessManager*(self: gen_qwebpage_types.QWebPage, manager: gen_qnetworkaccessmanager_types.QNetworkAccessManager): void =
  fcQWebPage_setNetworkAccessManager(self.h, manager.h)

proc networkAccessManager*(self: gen_qwebpage_types.QWebPage, ): gen_qnetworkaccessmanager_types.QNetworkAccessManager =
  gen_qnetworkaccessmanager_types.QNetworkAccessManager(h: fcQWebPage_networkAccessManager(self.h))

proc setPluginFactory*(self: gen_qwebpage_types.QWebPage, factory: gen_qwebpluginfactory_types.QWebPluginFactory): void =
  fcQWebPage_setPluginFactory(self.h, factory.h)

proc pluginFactory*(self: gen_qwebpage_types.QWebPage, ): gen_qwebpluginfactory_types.QWebPluginFactory =
  gen_qwebpluginfactory_types.QWebPluginFactory(h: fcQWebPage_pluginFactory(self.h))

proc totalBytes*(self: gen_qwebpage_types.QWebPage, ): culonglong =
  fcQWebPage_totalBytes(self.h)

proc bytesReceived*(self: gen_qwebpage_types.QWebPage, ): culonglong =
  fcQWebPage_bytesReceived(self.h)

proc visibilityState*(self: gen_qwebpage_types.QWebPage, ): cint =
  cint(fcQWebPage_visibilityState(self.h))

proc setVisibilityState*(self: gen_qwebpage_types.QWebPage, visibilityState: cint): void =
  fcQWebPage_setVisibilityState(self.h, cint(visibilityState))

proc recentlyAudible*(self: gen_qwebpage_types.QWebPage, ): bool =
  fcQWebPage_recentlyAudible(self.h)

proc hasSelection*(self: gen_qwebpage_types.QWebPage, ): bool =
  fcQWebPage_hasSelection(self.h)

proc selectedText*(self: gen_qwebpage_types.QWebPage, ): string =
  let v_ms = fcQWebPage_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selectedHtml*(self: gen_qwebpage_types.QWebPage, ): string =
  let v_ms = fcQWebPage_selectedHtml(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc action*(self: gen_qwebpage_types.QWebPage, action: cint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQWebPage_action(self.h, cint(action)))

proc customAction*(self: gen_qwebpage_types.QWebPage, action: cint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQWebPage_customAction(self.h, action))

proc triggerAction*(self: gen_qwebpage_types.QWebPage, action: cint, checked: bool): void =
  fcQWebPage_triggerAction(self.h, cint(action), checked)

proc setDevicePixelRatio*(self: gen_qwebpage_types.QWebPage, ratio: float64): void =
  fcQWebPage_setDevicePixelRatio(self.h, ratio)

proc devicePixelRatio*(self: gen_qwebpage_types.QWebPage, ): float64 =
  fcQWebPage_devicePixelRatio(self.h)

proc resetDevicePixelRatio*(self: gen_qwebpage_types.QWebPage, ): void =
  fcQWebPage_resetDevicePixelRatio(self.h)

proc viewportSize*(self: gen_qwebpage_types.QWebPage, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebPage_viewportSize(self.h))

proc setViewportSize*(self: gen_qwebpage_types.QWebPage, size: gen_qsize_types.QSize): void =
  fcQWebPage_setViewportSize(self.h, size.h)

proc viewportAttributesForSize*(self: gen_qwebpage_types.QWebPage, availableSize: gen_qsize_types.QSize): gen_qwebpage_types.QWebPageViewportAttributes =
  gen_qwebpage_types.QWebPageViewportAttributes(h: fcQWebPage_viewportAttributesForSize(self.h, availableSize.h))

proc preferredContentsSize*(self: gen_qwebpage_types.QWebPage, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebPage_preferredContentsSize(self.h))

proc setPreferredContentsSize*(self: gen_qwebpage_types.QWebPage, size: gen_qsize_types.QSize): void =
  fcQWebPage_setPreferredContentsSize(self.h, size.h)

proc setActualVisibleContentRect*(self: gen_qwebpage_types.QWebPage, rect: gen_qrect_types.QRect): void =
  fcQWebPage_setActualVisibleContentRect(self.h, rect.h)

proc event*(self: gen_qwebpage_types.QWebPage, param1: gen_qcoreevent_types.QEvent): bool =
  fcQWebPage_event(self.h, param1.h)

proc focusNextPrevChild*(self: gen_qwebpage_types.QWebPage, next: bool): bool =
  fcQWebPage_focusNextPrevChild(self.h, next)

proc inputMethodQuery*(self: gen_qwebpage_types.QWebPage, property: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWebPage_inputMethodQuery(self.h, cint(property)))

proc findText*(self: gen_qwebpage_types.QWebPage, subString: string): bool =
  fcQWebPage_findText(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))))

proc setForwardUnsupportedContent*(self: gen_qwebpage_types.QWebPage, forward: bool): void =
  fcQWebPage_setForwardUnsupportedContent(self.h, forward)

proc forwardUnsupportedContent*(self: gen_qwebpage_types.QWebPage, ): bool =
  fcQWebPage_forwardUnsupportedContent(self.h)

proc setLinkDelegationPolicy*(self: gen_qwebpage_types.QWebPage, policy: cint): void =
  fcQWebPage_setLinkDelegationPolicy(self.h, cint(policy))

proc linkDelegationPolicy*(self: gen_qwebpage_types.QWebPage, ): cint =
  cint(fcQWebPage_linkDelegationPolicy(self.h))

proc setPalette*(self: gen_qwebpage_types.QWebPage, palette: gen_qpalette_types.QPalette): void =
  fcQWebPage_setPalette(self.h, palette.h)

proc palette*(self: gen_qwebpage_types.QWebPage, ): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQWebPage_palette(self.h))

proc setContentEditable*(self: gen_qwebpage_types.QWebPage, editable: bool): void =
  fcQWebPage_setContentEditable(self.h, editable)

proc isContentEditable*(self: gen_qwebpage_types.QWebPage, ): bool =
  fcQWebPage_isContentEditable(self.h)

proc swallowContextMenuEvent*(self: gen_qwebpage_types.QWebPage, event: gen_qevent_types.QContextMenuEvent): bool =
  fcQWebPage_swallowContextMenuEvent(self.h, event.h)

proc updatePositionDependentActions*(self: gen_qwebpage_types.QWebPage, pos: gen_qpoint_types.QPoint): void =
  fcQWebPage_updatePositionDependentActions(self.h, pos.h)

proc createStandardContextMenu*(self: gen_qwebpage_types.QWebPage, ): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQWebPage_createStandardContextMenu(self.h))

proc setFeaturePermission*(self: gen_qwebpage_types.QWebPage, frame: gen_qwebframe_types.QWebFrame, feature: cint, policy: cint): void =
  fcQWebPage_setFeaturePermission(self.h, frame.h, cint(feature), cint(policy))

proc supportedContentTypes*(self: gen_qwebpage_types.QWebPage, ): seq[string] =
  var v_ma = fcQWebPage_supportedContentTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc supportsContentType*(self: gen_qwebpage_types.QWebPage, mimeType: string): bool =
  fcQWebPage_supportsContentType(self.h, struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))))

proc extension*(self: gen_qwebpage_types.QWebPage, extension: cint, option: gen_qwebpage_types.QWebPageExtensionOption, output: gen_qwebpage_types.QWebPageExtensionReturn): bool =
  fcQWebPage_extension(self.h, cint(extension), option.h, output.h)

proc supportsExtension*(self: gen_qwebpage_types.QWebPage, extension: cint): bool =
  fcQWebPage_supportsExtension(self.h, cint(extension))

proc shouldInterruptJavaScript*(self: gen_qwebpage_types.QWebPage, ): bool =
  fcQWebPage_shouldInterruptJavaScript(self.h)

proc loadStarted*(self: gen_qwebpage_types.QWebPage, ): void =
  fcQWebPage_loadStarted(self.h)

type QWebPageloadStartedSlot* = proc()
proc miqt_exec_callback_cQWebPage_loadStarted(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebPageloadStartedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebPage_loadStarted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPageloadStartedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadStarted*(self: gen_qwebpage_types.QWebPage, slot: QWebPageloadStartedSlot) =
  var tmp = new QWebPageloadStartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_loadStarted(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_loadStarted, miqt_exec_callback_cQWebPage_loadStarted_release)

proc loadProgress*(self: gen_qwebpage_types.QWebPage, progress: cint): void =
  fcQWebPage_loadProgress(self.h, progress)

type QWebPageloadProgressSlot* = proc(progress: cint)
proc miqt_exec_callback_cQWebPage_loadProgress(slot: int, progress: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWebPageloadProgressSlot](cast[pointer](slot))
  let slotval1 = progress

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebPage_loadProgress_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPageloadProgressSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadProgress*(self: gen_qwebpage_types.QWebPage, slot: QWebPageloadProgressSlot) =
  var tmp = new QWebPageloadProgressSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_loadProgress(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_loadProgress, miqt_exec_callback_cQWebPage_loadProgress_release)

proc loadFinished*(self: gen_qwebpage_types.QWebPage, ok: bool): void =
  fcQWebPage_loadFinished(self.h, ok)

type QWebPageloadFinishedSlot* = proc(ok: bool)
proc miqt_exec_callback_cQWebPage_loadFinished(slot: int, ok: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWebPageloadFinishedSlot](cast[pointer](slot))
  let slotval1 = ok

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebPage_loadFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPageloadFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadFinished*(self: gen_qwebpage_types.QWebPage, slot: QWebPageloadFinishedSlot) =
  var tmp = new QWebPageloadFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_loadFinished(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_loadFinished, miqt_exec_callback_cQWebPage_loadFinished_release)

proc linkHovered*(self: gen_qwebpage_types.QWebPage, link: string, title: string, textContent: string): void =
  fcQWebPage_linkHovered(self.h, struct_miqt_string(data: link, len: csize_t(len(link))), struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: textContent, len: csize_t(len(textContent))))

type QWebPagelinkHoveredSlot* = proc(link: string, title: string, textContent: string)
proc miqt_exec_callback_cQWebPage_linkHovered(slot: int, link: struct_miqt_string, title: struct_miqt_string, textContent: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagelinkHoveredSlot](cast[pointer](slot))
  let vlink_ms = link
  let vlinkx_ret = string.fromBytes(toOpenArrayByte(vlink_ms.data, 0, int(vlink_ms.len)-1))
  c_free(vlink_ms.data)
  let slotval1 = vlinkx_ret

  let vtitle_ms = title
  let vtitlex_ret = string.fromBytes(toOpenArrayByte(vtitle_ms.data, 0, int(vtitle_ms.len)-1))
  c_free(vtitle_ms.data)
  let slotval2 = vtitlex_ret

  let vtextContent_ms = textContent
  let vtextContentx_ret = string.fromBytes(toOpenArrayByte(vtextContent_ms.data, 0, int(vtextContent_ms.len)-1))
  c_free(vtextContent_ms.data)
  let slotval3 = vtextContentx_ret

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQWebPage_linkHovered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagelinkHoveredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlinkHovered*(self: gen_qwebpage_types.QWebPage, slot: QWebPagelinkHoveredSlot) =
  var tmp = new QWebPagelinkHoveredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_linkHovered(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_linkHovered, miqt_exec_callback_cQWebPage_linkHovered_release)

proc statusBarMessage*(self: gen_qwebpage_types.QWebPage, text: string): void =
  fcQWebPage_statusBarMessage(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QWebPagestatusBarMessageSlot* = proc(text: string)
proc miqt_exec_callback_cQWebPage_statusBarMessage(slot: int, text: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagestatusBarMessageSlot](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebPage_statusBarMessage_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagestatusBarMessageSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstatusBarMessage*(self: gen_qwebpage_types.QWebPage, slot: QWebPagestatusBarMessageSlot) =
  var tmp = new QWebPagestatusBarMessageSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_statusBarMessage(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_statusBarMessage, miqt_exec_callback_cQWebPage_statusBarMessage_release)

proc selectionChanged*(self: gen_qwebpage_types.QWebPage, ): void =
  fcQWebPage_selectionChanged(self.h)

type QWebPageselectionChangedSlot* = proc()
proc miqt_exec_callback_cQWebPage_selectionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebPageselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebPage_selectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPageselectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onselectionChanged*(self: gen_qwebpage_types.QWebPage, slot: QWebPageselectionChangedSlot) =
  var tmp = new QWebPageselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_selectionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_selectionChanged, miqt_exec_callback_cQWebPage_selectionChanged_release)

proc frameCreated*(self: gen_qwebpage_types.QWebPage, frame: gen_qwebframe_types.QWebFrame): void =
  fcQWebPage_frameCreated(self.h, frame.h)

type QWebPageframeCreatedSlot* = proc(frame: gen_qwebframe_types.QWebFrame)
proc miqt_exec_callback_cQWebPage_frameCreated(slot: int, frame: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebPageframeCreatedSlot](cast[pointer](slot))
  let slotval1 = gen_qwebframe_types.QWebFrame(h: frame)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebPage_frameCreated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPageframeCreatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onframeCreated*(self: gen_qwebpage_types.QWebPage, slot: QWebPageframeCreatedSlot) =
  var tmp = new QWebPageframeCreatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_frameCreated(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_frameCreated, miqt_exec_callback_cQWebPage_frameCreated_release)

proc geometryChangeRequested*(self: gen_qwebpage_types.QWebPage, geom: gen_qrect_types.QRect): void =
  fcQWebPage_geometryChangeRequested(self.h, geom.h)

type QWebPagegeometryChangeRequestedSlot* = proc(geom: gen_qrect_types.QRect)
proc miqt_exec_callback_cQWebPage_geometryChangeRequested(slot: int, geom: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagegeometryChangeRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: geom)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebPage_geometryChangeRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagegeometryChangeRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ongeometryChangeRequested*(self: gen_qwebpage_types.QWebPage, slot: QWebPagegeometryChangeRequestedSlot) =
  var tmp = new QWebPagegeometryChangeRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_geometryChangeRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_geometryChangeRequested, miqt_exec_callback_cQWebPage_geometryChangeRequested_release)

proc repaintRequested*(self: gen_qwebpage_types.QWebPage, dirtyRect: gen_qrect_types.QRect): void =
  fcQWebPage_repaintRequested(self.h, dirtyRect.h)

type QWebPagerepaintRequestedSlot* = proc(dirtyRect: gen_qrect_types.QRect)
proc miqt_exec_callback_cQWebPage_repaintRequested(slot: int, dirtyRect: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagerepaintRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: dirtyRect)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebPage_repaintRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagerepaintRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrepaintRequested*(self: gen_qwebpage_types.QWebPage, slot: QWebPagerepaintRequestedSlot) =
  var tmp = new QWebPagerepaintRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_repaintRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_repaintRequested, miqt_exec_callback_cQWebPage_repaintRequested_release)

proc scrollRequested*(self: gen_qwebpage_types.QWebPage, dx: cint, dy: cint, scrollViewRect: gen_qrect_types.QRect): void =
  fcQWebPage_scrollRequested(self.h, dx, dy, scrollViewRect.h)

type QWebPagescrollRequestedSlot* = proc(dx: cint, dy: cint, scrollViewRect: gen_qrect_types.QRect)
proc miqt_exec_callback_cQWebPage_scrollRequested(slot: int, dx: cint, dy: cint, scrollViewRect: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagescrollRequestedSlot](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy

  let slotval3 = gen_qrect_types.QRect(h: scrollViewRect)

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQWebPage_scrollRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagescrollRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onscrollRequested*(self: gen_qwebpage_types.QWebPage, slot: QWebPagescrollRequestedSlot) =
  var tmp = new QWebPagescrollRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_scrollRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_scrollRequested, miqt_exec_callback_cQWebPage_scrollRequested_release)

proc windowCloseRequested*(self: gen_qwebpage_types.QWebPage, ): void =
  fcQWebPage_windowCloseRequested(self.h)

type QWebPagewindowCloseRequestedSlot* = proc()
proc miqt_exec_callback_cQWebPage_windowCloseRequested(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagewindowCloseRequestedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebPage_windowCloseRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagewindowCloseRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwindowCloseRequested*(self: gen_qwebpage_types.QWebPage, slot: QWebPagewindowCloseRequestedSlot) =
  var tmp = new QWebPagewindowCloseRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_windowCloseRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_windowCloseRequested, miqt_exec_callback_cQWebPage_windowCloseRequested_release)

proc printRequested*(self: gen_qwebpage_types.QWebPage, frame: gen_qwebframe_types.QWebFrame): void =
  fcQWebPage_printRequested(self.h, frame.h)

type QWebPageprintRequestedSlot* = proc(frame: gen_qwebframe_types.QWebFrame)
proc miqt_exec_callback_cQWebPage_printRequested(slot: int, frame: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebPageprintRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qwebframe_types.QWebFrame(h: frame)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebPage_printRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPageprintRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onprintRequested*(self: gen_qwebpage_types.QWebPage, slot: QWebPageprintRequestedSlot) =
  var tmp = new QWebPageprintRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_printRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_printRequested, miqt_exec_callback_cQWebPage_printRequested_release)

proc linkClicked*(self: gen_qwebpage_types.QWebPage, url: gen_qurl_types.QUrl): void =
  fcQWebPage_linkClicked(self.h, url.h)

type QWebPagelinkClickedSlot* = proc(url: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQWebPage_linkClicked(slot: int, url: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagelinkClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebPage_linkClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagelinkClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlinkClicked*(self: gen_qwebpage_types.QWebPage, slot: QWebPagelinkClickedSlot) =
  var tmp = new QWebPagelinkClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_linkClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_linkClicked, miqt_exec_callback_cQWebPage_linkClicked_release)

proc toolBarVisibilityChangeRequested*(self: gen_qwebpage_types.QWebPage, visible: bool): void =
  fcQWebPage_toolBarVisibilityChangeRequested(self.h, visible)

type QWebPagetoolBarVisibilityChangeRequestedSlot* = proc(visible: bool)
proc miqt_exec_callback_cQWebPage_toolBarVisibilityChangeRequested(slot: int, visible: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagetoolBarVisibilityChangeRequestedSlot](cast[pointer](slot))
  let slotval1 = visible

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebPage_toolBarVisibilityChangeRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagetoolBarVisibilityChangeRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontoolBarVisibilityChangeRequested*(self: gen_qwebpage_types.QWebPage, slot: QWebPagetoolBarVisibilityChangeRequestedSlot) =
  var tmp = new QWebPagetoolBarVisibilityChangeRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_toolBarVisibilityChangeRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_toolBarVisibilityChangeRequested, miqt_exec_callback_cQWebPage_toolBarVisibilityChangeRequested_release)

proc statusBarVisibilityChangeRequested*(self: gen_qwebpage_types.QWebPage, visible: bool): void =
  fcQWebPage_statusBarVisibilityChangeRequested(self.h, visible)

type QWebPagestatusBarVisibilityChangeRequestedSlot* = proc(visible: bool)
proc miqt_exec_callback_cQWebPage_statusBarVisibilityChangeRequested(slot: int, visible: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagestatusBarVisibilityChangeRequestedSlot](cast[pointer](slot))
  let slotval1 = visible

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebPage_statusBarVisibilityChangeRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagestatusBarVisibilityChangeRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstatusBarVisibilityChangeRequested*(self: gen_qwebpage_types.QWebPage, slot: QWebPagestatusBarVisibilityChangeRequestedSlot) =
  var tmp = new QWebPagestatusBarVisibilityChangeRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_statusBarVisibilityChangeRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_statusBarVisibilityChangeRequested, miqt_exec_callback_cQWebPage_statusBarVisibilityChangeRequested_release)

proc menuBarVisibilityChangeRequested*(self: gen_qwebpage_types.QWebPage, visible: bool): void =
  fcQWebPage_menuBarVisibilityChangeRequested(self.h, visible)

type QWebPagemenuBarVisibilityChangeRequestedSlot* = proc(visible: bool)
proc miqt_exec_callback_cQWebPage_menuBarVisibilityChangeRequested(slot: int, visible: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagemenuBarVisibilityChangeRequestedSlot](cast[pointer](slot))
  let slotval1 = visible

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebPage_menuBarVisibilityChangeRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagemenuBarVisibilityChangeRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmenuBarVisibilityChangeRequested*(self: gen_qwebpage_types.QWebPage, slot: QWebPagemenuBarVisibilityChangeRequestedSlot) =
  var tmp = new QWebPagemenuBarVisibilityChangeRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_menuBarVisibilityChangeRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_menuBarVisibilityChangeRequested, miqt_exec_callback_cQWebPage_menuBarVisibilityChangeRequested_release)

proc unsupportedContent*(self: gen_qwebpage_types.QWebPage, reply: gen_qnetworkreply_types.QNetworkReply): void =
  fcQWebPage_unsupportedContent(self.h, reply.h)

type QWebPageunsupportedContentSlot* = proc(reply: gen_qnetworkreply_types.QNetworkReply)
proc miqt_exec_callback_cQWebPage_unsupportedContent(slot: int, reply: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebPageunsupportedContentSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkreply_types.QNetworkReply(h: reply)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebPage_unsupportedContent_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPageunsupportedContentSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onunsupportedContent*(self: gen_qwebpage_types.QWebPage, slot: QWebPageunsupportedContentSlot) =
  var tmp = new QWebPageunsupportedContentSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_unsupportedContent(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_unsupportedContent, miqt_exec_callback_cQWebPage_unsupportedContent_release)

proc downloadRequested*(self: gen_qwebpage_types.QWebPage, request: gen_qnetworkrequest_types.QNetworkRequest): void =
  fcQWebPage_downloadRequested(self.h, request.h)

type QWebPagedownloadRequestedSlot* = proc(request: gen_qnetworkrequest_types.QNetworkRequest)
proc miqt_exec_callback_cQWebPage_downloadRequested(slot: int, request: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagedownloadRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkrequest_types.QNetworkRequest(h: request)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebPage_downloadRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagedownloadRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondownloadRequested*(self: gen_qwebpage_types.QWebPage, slot: QWebPagedownloadRequestedSlot) =
  var tmp = new QWebPagedownloadRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_downloadRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_downloadRequested, miqt_exec_callback_cQWebPage_downloadRequested_release)

proc focusedElementChanged*(self: gen_qwebpage_types.QWebPage, element: gen_qwebelement_types.QWebElement): void =
  fcQWebPage_focusedElementChanged(self.h, element.h)

type QWebPagefocusedElementChangedSlot* = proc(element: gen_qwebelement_types.QWebElement)
proc miqt_exec_callback_cQWebPage_focusedElementChanged(slot: int, element: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagefocusedElementChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qwebelement_types.QWebElement(h: element)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebPage_focusedElementChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagefocusedElementChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfocusedElementChanged*(self: gen_qwebpage_types.QWebPage, slot: QWebPagefocusedElementChangedSlot) =
  var tmp = new QWebPagefocusedElementChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_focusedElementChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_focusedElementChanged, miqt_exec_callback_cQWebPage_focusedElementChanged_release)

proc microFocusChanged*(self: gen_qwebpage_types.QWebPage, ): void =
  fcQWebPage_microFocusChanged(self.h)

type QWebPagemicroFocusChangedSlot* = proc()
proc miqt_exec_callback_cQWebPage_microFocusChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagemicroFocusChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebPage_microFocusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagemicroFocusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmicroFocusChanged*(self: gen_qwebpage_types.QWebPage, slot: QWebPagemicroFocusChangedSlot) =
  var tmp = new QWebPagemicroFocusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_microFocusChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_microFocusChanged, miqt_exec_callback_cQWebPage_microFocusChanged_release)

proc contentsChanged*(self: gen_qwebpage_types.QWebPage, ): void =
  fcQWebPage_contentsChanged(self.h)

type QWebPagecontentsChangedSlot* = proc()
proc miqt_exec_callback_cQWebPage_contentsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagecontentsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebPage_contentsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagecontentsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncontentsChanged*(self: gen_qwebpage_types.QWebPage, slot: QWebPagecontentsChangedSlot) =
  var tmp = new QWebPagecontentsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_contentsChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_contentsChanged, miqt_exec_callback_cQWebPage_contentsChanged_release)

proc databaseQuotaExceeded*(self: gen_qwebpage_types.QWebPage, frame: gen_qwebframe_types.QWebFrame, databaseName: string): void =
  fcQWebPage_databaseQuotaExceeded(self.h, frame.h, struct_miqt_string(data: databaseName, len: csize_t(len(databaseName))))

type QWebPagedatabaseQuotaExceededSlot* = proc(frame: gen_qwebframe_types.QWebFrame, databaseName: string)
proc miqt_exec_callback_cQWebPage_databaseQuotaExceeded(slot: int, frame: pointer, databaseName: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagedatabaseQuotaExceededSlot](cast[pointer](slot))
  let slotval1 = gen_qwebframe_types.QWebFrame(h: frame)

  let vdatabaseName_ms = databaseName
  let vdatabaseNamex_ret = string.fromBytes(toOpenArrayByte(vdatabaseName_ms.data, 0, int(vdatabaseName_ms.len)-1))
  c_free(vdatabaseName_ms.data)
  let slotval2 = vdatabaseNamex_ret

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQWebPage_databaseQuotaExceeded_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagedatabaseQuotaExceededSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondatabaseQuotaExceeded*(self: gen_qwebpage_types.QWebPage, slot: QWebPagedatabaseQuotaExceededSlot) =
  var tmp = new QWebPagedatabaseQuotaExceededSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_databaseQuotaExceeded(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_databaseQuotaExceeded, miqt_exec_callback_cQWebPage_databaseQuotaExceeded_release)

proc applicationCacheQuotaExceeded*(self: gen_qwebpage_types.QWebPage, origin: gen_qwebsecurityorigin_types.QWebSecurityOrigin, defaultOriginQuota: culonglong, totalSpaceNeeded: culonglong): void =
  fcQWebPage_applicationCacheQuotaExceeded(self.h, origin.h, defaultOriginQuota, totalSpaceNeeded)

type QWebPageapplicationCacheQuotaExceededSlot* = proc(origin: gen_qwebsecurityorigin_types.QWebSecurityOrigin, defaultOriginQuota: culonglong, totalSpaceNeeded: culonglong)
proc miqt_exec_callback_cQWebPage_applicationCacheQuotaExceeded(slot: int, origin: pointer, defaultOriginQuota: culonglong, totalSpaceNeeded: culonglong) {.cdecl.} =
  let nimfunc = cast[ptr QWebPageapplicationCacheQuotaExceededSlot](cast[pointer](slot))
  let slotval1 = gen_qwebsecurityorigin_types.QWebSecurityOrigin(h: origin)

  let slotval2 = defaultOriginQuota

  let slotval3 = totalSpaceNeeded

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQWebPage_applicationCacheQuotaExceeded_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPageapplicationCacheQuotaExceededSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onapplicationCacheQuotaExceeded*(self: gen_qwebpage_types.QWebPage, slot: QWebPageapplicationCacheQuotaExceededSlot) =
  var tmp = new QWebPageapplicationCacheQuotaExceededSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_applicationCacheQuotaExceeded(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_applicationCacheQuotaExceeded, miqt_exec_callback_cQWebPage_applicationCacheQuotaExceeded_release)

proc saveFrameStateRequested*(self: gen_qwebpage_types.QWebPage, frame: gen_qwebframe_types.QWebFrame, item: gen_qwebhistory_types.QWebHistoryItem): void =
  fcQWebPage_saveFrameStateRequested(self.h, frame.h, item.h)

type QWebPagesaveFrameStateRequestedSlot* = proc(frame: gen_qwebframe_types.QWebFrame, item: gen_qwebhistory_types.QWebHistoryItem)
proc miqt_exec_callback_cQWebPage_saveFrameStateRequested(slot: int, frame: pointer, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagesaveFrameStateRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qwebframe_types.QWebFrame(h: frame)

  let slotval2 = gen_qwebhistory_types.QWebHistoryItem(h: item)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQWebPage_saveFrameStateRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagesaveFrameStateRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsaveFrameStateRequested*(self: gen_qwebpage_types.QWebPage, slot: QWebPagesaveFrameStateRequestedSlot) =
  var tmp = new QWebPagesaveFrameStateRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_saveFrameStateRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_saveFrameStateRequested, miqt_exec_callback_cQWebPage_saveFrameStateRequested_release)

proc restoreFrameStateRequested*(self: gen_qwebpage_types.QWebPage, frame: gen_qwebframe_types.QWebFrame): void =
  fcQWebPage_restoreFrameStateRequested(self.h, frame.h)

type QWebPagerestoreFrameStateRequestedSlot* = proc(frame: gen_qwebframe_types.QWebFrame)
proc miqt_exec_callback_cQWebPage_restoreFrameStateRequested(slot: int, frame: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagerestoreFrameStateRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qwebframe_types.QWebFrame(h: frame)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebPage_restoreFrameStateRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagerestoreFrameStateRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrestoreFrameStateRequested*(self: gen_qwebpage_types.QWebPage, slot: QWebPagerestoreFrameStateRequestedSlot) =
  var tmp = new QWebPagerestoreFrameStateRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_restoreFrameStateRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_restoreFrameStateRequested, miqt_exec_callback_cQWebPage_restoreFrameStateRequested_release)

proc viewportChangeRequested*(self: gen_qwebpage_types.QWebPage, ): void =
  fcQWebPage_viewportChangeRequested(self.h)

type QWebPageviewportChangeRequestedSlot* = proc()
proc miqt_exec_callback_cQWebPage_viewportChangeRequested(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebPageviewportChangeRequestedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebPage_viewportChangeRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPageviewportChangeRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onviewportChangeRequested*(self: gen_qwebpage_types.QWebPage, slot: QWebPageviewportChangeRequestedSlot) =
  var tmp = new QWebPageviewportChangeRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_viewportChangeRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_viewportChangeRequested, miqt_exec_callback_cQWebPage_viewportChangeRequested_release)

proc featurePermissionRequested*(self: gen_qwebpage_types.QWebPage, frame: gen_qwebframe_types.QWebFrame, feature: cint): void =
  fcQWebPage_featurePermissionRequested(self.h, frame.h, cint(feature))

type QWebPagefeaturePermissionRequestedSlot* = proc(frame: gen_qwebframe_types.QWebFrame, feature: cint)
proc miqt_exec_callback_cQWebPage_featurePermissionRequested(slot: int, frame: pointer, feature: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagefeaturePermissionRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qwebframe_types.QWebFrame(h: frame)

  let slotval2 = cint(feature)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQWebPage_featurePermissionRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagefeaturePermissionRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfeaturePermissionRequested*(self: gen_qwebpage_types.QWebPage, slot: QWebPagefeaturePermissionRequestedSlot) =
  var tmp = new QWebPagefeaturePermissionRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_featurePermissionRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_featurePermissionRequested, miqt_exec_callback_cQWebPage_featurePermissionRequested_release)

proc featurePermissionRequestCanceled*(self: gen_qwebpage_types.QWebPage, frame: gen_qwebframe_types.QWebFrame, feature: cint): void =
  fcQWebPage_featurePermissionRequestCanceled(self.h, frame.h, cint(feature))

type QWebPagefeaturePermissionRequestCanceledSlot* = proc(frame: gen_qwebframe_types.QWebFrame, feature: cint)
proc miqt_exec_callback_cQWebPage_featurePermissionRequestCanceled(slot: int, frame: pointer, feature: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagefeaturePermissionRequestCanceledSlot](cast[pointer](slot))
  let slotval1 = gen_qwebframe_types.QWebFrame(h: frame)

  let slotval2 = cint(feature)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQWebPage_featurePermissionRequestCanceled_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagefeaturePermissionRequestCanceledSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfeaturePermissionRequestCanceled*(self: gen_qwebpage_types.QWebPage, slot: QWebPagefeaturePermissionRequestCanceledSlot) =
  var tmp = new QWebPagefeaturePermissionRequestCanceledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_featurePermissionRequestCanceled(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_featurePermissionRequestCanceled, miqt_exec_callback_cQWebPage_featurePermissionRequestCanceled_release)

proc fullScreenRequested*(self: gen_qwebpage_types.QWebPage, fullScreenRequest: gen_qwebfullscreenrequest_types.QWebFullScreenRequest): void =
  fcQWebPage_fullScreenRequested(self.h, fullScreenRequest.h)

type QWebPagefullScreenRequestedSlot* = proc(fullScreenRequest: gen_qwebfullscreenrequest_types.QWebFullScreenRequest)
proc miqt_exec_callback_cQWebPage_fullScreenRequested(slot: int, fullScreenRequest: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagefullScreenRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qwebfullscreenrequest_types.QWebFullScreenRequest(h: fullScreenRequest)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebPage_fullScreenRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagefullScreenRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfullScreenRequested*(self: gen_qwebpage_types.QWebPage, slot: QWebPagefullScreenRequestedSlot) =
  var tmp = new QWebPagefullScreenRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_fullScreenRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_fullScreenRequested, miqt_exec_callback_cQWebPage_fullScreenRequested_release)

proc consoleMessageReceived*(self: gen_qwebpage_types.QWebPage, source: cint, level: cint, message: string, lineNumber: cint, sourceID: string): void =
  fcQWebPage_consoleMessageReceived(self.h, cint(source), cint(level), struct_miqt_string(data: message, len: csize_t(len(message))), lineNumber, struct_miqt_string(data: sourceID, len: csize_t(len(sourceID))))

type QWebPageconsoleMessageReceivedSlot* = proc(source: cint, level: cint, message: string, lineNumber: cint, sourceID: string)
proc miqt_exec_callback_cQWebPage_consoleMessageReceived(slot: int, source: cint, level: cint, message: struct_miqt_string, lineNumber: cint, sourceID: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QWebPageconsoleMessageReceivedSlot](cast[pointer](slot))
  let slotval1 = cint(source)

  let slotval2 = cint(level)

  let vmessage_ms = message
  let vmessagex_ret = string.fromBytes(toOpenArrayByte(vmessage_ms.data, 0, int(vmessage_ms.len)-1))
  c_free(vmessage_ms.data)
  let slotval3 = vmessagex_ret

  let slotval4 = lineNumber

  let vsourceID_ms = sourceID
  let vsourceIDx_ret = string.fromBytes(toOpenArrayByte(vsourceID_ms.data, 0, int(vsourceID_ms.len)-1))
  c_free(vsourceID_ms.data)
  let slotval5 = vsourceIDx_ret

  nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5)

proc miqt_exec_callback_cQWebPage_consoleMessageReceived_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPageconsoleMessageReceivedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onconsoleMessageReceived*(self: gen_qwebpage_types.QWebPage, slot: QWebPageconsoleMessageReceivedSlot) =
  var tmp = new QWebPageconsoleMessageReceivedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_consoleMessageReceived(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_consoleMessageReceived, miqt_exec_callback_cQWebPage_consoleMessageReceived_release)

proc recentlyAudibleChanged*(self: gen_qwebpage_types.QWebPage, recentlyAudible: bool): void =
  fcQWebPage_recentlyAudibleChanged(self.h, recentlyAudible)

type QWebPagerecentlyAudibleChangedSlot* = proc(recentlyAudible: bool)
proc miqt_exec_callback_cQWebPage_recentlyAudibleChanged(slot: int, recentlyAudible: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWebPagerecentlyAudibleChangedSlot](cast[pointer](slot))
  let slotval1 = recentlyAudible

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWebPage_recentlyAudibleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebPagerecentlyAudibleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrecentlyAudibleChanged*(self: gen_qwebpage_types.QWebPage, slot: QWebPagerecentlyAudibleChangedSlot) =
  var tmp = new QWebPagerecentlyAudibleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPage_connect_recentlyAudibleChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebPage_recentlyAudibleChanged, miqt_exec_callback_cQWebPage_recentlyAudibleChanged_release)

proc tr*(_: type gen_qwebpage_types.QWebPage, s: cstring, c: cstring): string =
  let v_ms = fcQWebPage_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebpage_types.QWebPage, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebPage_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebpage_types.QWebPage, s: cstring, c: cstring): string =
  let v_ms = fcQWebPage_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebpage_types.QWebPage, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebPage_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc findText*(self: gen_qwebpage_types.QWebPage, subString: string, options: cint): bool =
  fcQWebPage_findText2(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))), cint(options))

type QWebPagemetaObjectProc* = proc(self: QWebPage): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWebPagemetacastProc* = proc(self: QWebPage, param1: cstring): pointer {.raises: [], gcsafe.}
type QWebPagemetacallProc* = proc(self: QWebPage, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWebPagetriggerActionProc* = proc(self: QWebPage, action: cint, checked: bool): void {.raises: [], gcsafe.}
type QWebPageeventProc* = proc(self: QWebPage, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebPageextensionProc* = proc(self: QWebPage, extension: cint, option: gen_qwebpage_types.QWebPageExtensionOption, output: gen_qwebpage_types.QWebPageExtensionReturn): bool {.raises: [], gcsafe.}
type QWebPagesupportsExtensionProc* = proc(self: QWebPage, extension: cint): bool {.raises: [], gcsafe.}
type QWebPageshouldInterruptJavaScriptProc* = proc(self: QWebPage): bool {.raises: [], gcsafe.}
type QWebPagecreateWindowProc* = proc(self: QWebPage, typeVal: cint): gen_qwebpage_types.QWebPage {.raises: [], gcsafe.}
type QWebPagecreatePluginProc* = proc(self: QWebPage, classid: string, url: gen_qurl_types.QUrl, paramNames: seq[string], paramValues: seq[string]): gen_qobject_types.QObject {.raises: [], gcsafe.}
type QWebPageacceptNavigationRequestProc* = proc(self: QWebPage, frame: gen_qwebframe_types.QWebFrame, request: gen_qnetworkrequest_types.QNetworkRequest, typeVal: cint): bool {.raises: [], gcsafe.}
type QWebPagechooseFileProc* = proc(self: QWebPage, originatingFrame: gen_qwebframe_types.QWebFrame, oldFile: string): string {.raises: [], gcsafe.}
type QWebPagejavaScriptAlertProc* = proc(self: QWebPage, originatingFrame: gen_qwebframe_types.QWebFrame, msg: string): void {.raises: [], gcsafe.}
type QWebPagejavaScriptConfirmProc* = proc(self: QWebPage, originatingFrame: gen_qwebframe_types.QWebFrame, msg: string): bool {.raises: [], gcsafe.}
type QWebPagejavaScriptConsoleMessageProc* = proc(self: QWebPage, message: string, lineNumber: cint, sourceID: string): void {.raises: [], gcsafe.}
type QWebPageuserAgentForUrlProc* = proc(self: QWebPage, url: gen_qurl_types.QUrl): string {.raises: [], gcsafe.}
type QWebPageeventFilterProc* = proc(self: QWebPage, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebPagetimerEventProc* = proc(self: QWebPage, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWebPagechildEventProc* = proc(self: QWebPage, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWebPagecustomEventProc* = proc(self: QWebPage, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebPageconnectNotifyProc* = proc(self: QWebPage, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebPagedisconnectNotifyProc* = proc(self: QWebPage, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebPageVTable* = object
  vtbl: cQWebPageVTable
  metaObject*: QWebPagemetaObjectProc
  metacast*: QWebPagemetacastProc
  metacall*: QWebPagemetacallProc
  triggerAction*: QWebPagetriggerActionProc
  event*: QWebPageeventProc
  extension*: QWebPageextensionProc
  supportsExtension*: QWebPagesupportsExtensionProc
  shouldInterruptJavaScript*: QWebPageshouldInterruptJavaScriptProc
  createWindow*: QWebPagecreateWindowProc
  createPlugin*: QWebPagecreatePluginProc
  acceptNavigationRequest*: QWebPageacceptNavigationRequestProc
  chooseFile*: QWebPagechooseFileProc
  javaScriptAlert*: QWebPagejavaScriptAlertProc
  javaScriptConfirm*: QWebPagejavaScriptConfirmProc
  javaScriptConsoleMessage*: QWebPagejavaScriptConsoleMessageProc
  userAgentForUrl*: QWebPageuserAgentForUrlProc
  eventFilter*: QWebPageeventFilterProc
  timerEvent*: QWebPagetimerEventProc
  childEvent*: QWebPagechildEventProc
  customEvent*: QWebPagecustomEventProc
  connectNotify*: QWebPageconnectNotifyProc
  disconnectNotify*: QWebPagedisconnectNotifyProc
proc QWebPagemetaObject*(self: gen_qwebpage_types.QWebPage, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebPage_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQWebPage_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QWebPagemetacast*(self: gen_qwebpage_types.QWebPage, param1: cstring): pointer =
  fcQWebPage_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQWebPage_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWebPagemetacall*(self: gen_qwebpage_types.QWebPage, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebPage_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQWebPage_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebPagetriggerAction*(self: gen_qwebpage_types.QWebPage, action: cint, checked: bool): void =
  fcQWebPage_virtualbase_triggerAction(self.h, cint(action), checked)

proc miqt_exec_callback_cQWebPage_triggerAction(vtbl: pointer, self: pointer, action: cint, checked: bool): void {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = cint(action)
  let slotval2 = checked
  vtbl[].triggerAction(self, slotval1, slotval2)

proc QWebPageevent*(self: gen_qwebpage_types.QWebPage, param1: gen_qcoreevent_types.QEvent): bool =
  fcQWebPage_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQWebPage_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWebPageextension*(self: gen_qwebpage_types.QWebPage, extension: cint, option: gen_qwebpage_types.QWebPageExtensionOption, output: gen_qwebpage_types.QWebPageExtensionReturn): bool =
  fcQWebPage_virtualbase_extension(self.h, cint(extension), option.h, output.h)

proc miqt_exec_callback_cQWebPage_extension(vtbl: pointer, self: pointer, extension: cint, option: pointer, output: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qwebpage_types.QWebPageExtensionOption(h: option)
  let slotval3 = gen_qwebpage_types.QWebPageExtensionReturn(h: output)
  var virtualReturn = vtbl[].extension(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebPagesupportsExtension*(self: gen_qwebpage_types.QWebPage, extension: cint): bool =
  fcQWebPage_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQWebPage_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QWebPageshouldInterruptJavaScript*(self: gen_qwebpage_types.QWebPage, ): bool =
  fcQWebPage_virtualbase_shouldInterruptJavaScript(self.h)

proc miqt_exec_callback_cQWebPage_shouldInterruptJavaScript(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  var virtualReturn = vtbl[].shouldInterruptJavaScript(self)
  virtualReturn

proc QWebPagecreateWindow*(self: gen_qwebpage_types.QWebPage, typeVal: cint): gen_qwebpage_types.QWebPage =
  gen_qwebpage_types.QWebPage(h: fcQWebPage_virtualbase_createWindow(self.h, cint(typeVal)))

proc miqt_exec_callback_cQWebPage_createWindow(vtbl: pointer, self: pointer, typeVal: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = cint(typeVal)
  var virtualReturn = vtbl[].createWindow(self, slotval1)
  virtualReturn.h

proc QWebPagecreatePlugin*(self: gen_qwebpage_types.QWebPage, classid: string, url: gen_qurl_types.QUrl, paramNames: seq[string], paramValues: seq[string]): gen_qobject_types.QObject =
  var paramNames_CArray = newSeq[struct_miqt_string](len(paramNames))
  for i in 0..<len(paramNames):
    paramNames_CArray[i] = struct_miqt_string(data: paramNames[i], len: csize_t(len(paramNames[i])))

  var paramValues_CArray = newSeq[struct_miqt_string](len(paramValues))
  for i in 0..<len(paramValues):
    paramValues_CArray[i] = struct_miqt_string(data: paramValues[i], len: csize_t(len(paramValues[i])))

  gen_qobject_types.QObject(h: fcQWebPage_virtualbase_createPlugin(self.h, struct_miqt_string(data: classid, len: csize_t(len(classid))), url.h, struct_miqt_array(len: csize_t(len(paramNames)), data: if len(paramNames) == 0: nil else: addr(paramNames_CArray[0])), struct_miqt_array(len: csize_t(len(paramValues)), data: if len(paramValues) == 0: nil else: addr(paramValues_CArray[0]))))

proc miqt_exec_callback_cQWebPage_createPlugin(vtbl: pointer, self: pointer, classid: struct_miqt_string, url: pointer, paramNames: struct_miqt_array, paramValues: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let vclassid_ms = classid
  let vclassidx_ret = string.fromBytes(toOpenArrayByte(vclassid_ms.data, 0, int(vclassid_ms.len)-1))
  c_free(vclassid_ms.data)
  let slotval1 = vclassidx_ret
  let slotval2 = gen_qurl_types.QUrl(h: url)
  var vparamNames_ma = paramNames
  var vparamNamesx_ret = newSeq[string](int(vparamNames_ma.len))
  let vparamNames_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vparamNames_ma.data)
  for i in 0 ..< vparamNames_ma.len:
    let vparamNames_lv_ms = vparamNames_outCast[i]
    let vparamNames_lvx_ret = string.fromBytes(toOpenArrayByte(vparamNames_lv_ms.data, 0, int(vparamNames_lv_ms.len)-1))
    c_free(vparamNames_lv_ms.data)
    vparamNamesx_ret[i] = vparamNames_lvx_ret
  c_free(vparamNames_ma.data)
  let slotval3 = vparamNamesx_ret
  var vparamValues_ma = paramValues
  var vparamValuesx_ret = newSeq[string](int(vparamValues_ma.len))
  let vparamValues_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vparamValues_ma.data)
  for i in 0 ..< vparamValues_ma.len:
    let vparamValues_lv_ms = vparamValues_outCast[i]
    let vparamValues_lvx_ret = string.fromBytes(toOpenArrayByte(vparamValues_lv_ms.data, 0, int(vparamValues_lv_ms.len)-1))
    c_free(vparamValues_lv_ms.data)
    vparamValuesx_ret[i] = vparamValues_lvx_ret
  c_free(vparamValues_ma.data)
  let slotval4 = vparamValuesx_ret
  var virtualReturn = vtbl[].createPlugin(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn.h

proc QWebPageacceptNavigationRequest*(self: gen_qwebpage_types.QWebPage, frame: gen_qwebframe_types.QWebFrame, request: gen_qnetworkrequest_types.QNetworkRequest, typeVal: cint): bool =
  fcQWebPage_virtualbase_acceptNavigationRequest(self.h, frame.h, request.h, cint(typeVal))

proc miqt_exec_callback_cQWebPage_acceptNavigationRequest(vtbl: pointer, self: pointer, frame: pointer, request: pointer, typeVal: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = gen_qwebframe_types.QWebFrame(h: frame)
  let slotval2 = gen_qnetworkrequest_types.QNetworkRequest(h: request)
  let slotval3 = cint(typeVal)
  var virtualReturn = vtbl[].acceptNavigationRequest(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebPagechooseFile*(self: gen_qwebpage_types.QWebPage, originatingFrame: gen_qwebframe_types.QWebFrame, oldFile: string): string =
  let v_ms = fcQWebPage_virtualbase_chooseFile(self.h, originatingFrame.h, struct_miqt_string(data: oldFile, len: csize_t(len(oldFile))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc miqt_exec_callback_cQWebPage_chooseFile(vtbl: pointer, self: pointer, originatingFrame: pointer, oldFile: struct_miqt_string): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = gen_qwebframe_types.QWebFrame(h: originatingFrame)
  let voldFile_ms = oldFile
  let voldFilex_ret = string.fromBytes(toOpenArrayByte(voldFile_ms.data, 0, int(voldFile_ms.len)-1))
  c_free(voldFile_ms.data)
  let slotval2 = voldFilex_ret
  var virtualReturn = vtbl[].chooseFile(self, slotval1, slotval2)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc QWebPagejavaScriptAlert*(self: gen_qwebpage_types.QWebPage, originatingFrame: gen_qwebframe_types.QWebFrame, msg: string): void =
  fcQWebPage_virtualbase_javaScriptAlert(self.h, originatingFrame.h, struct_miqt_string(data: msg, len: csize_t(len(msg))))

proc miqt_exec_callback_cQWebPage_javaScriptAlert(vtbl: pointer, self: pointer, originatingFrame: pointer, msg: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = gen_qwebframe_types.QWebFrame(h: originatingFrame)
  let vmsg_ms = msg
  let vmsgx_ret = string.fromBytes(toOpenArrayByte(vmsg_ms.data, 0, int(vmsg_ms.len)-1))
  c_free(vmsg_ms.data)
  let slotval2 = vmsgx_ret
  vtbl[].javaScriptAlert(self, slotval1, slotval2)

proc QWebPagejavaScriptConfirm*(self: gen_qwebpage_types.QWebPage, originatingFrame: gen_qwebframe_types.QWebFrame, msg: string): bool =
  fcQWebPage_virtualbase_javaScriptConfirm(self.h, originatingFrame.h, struct_miqt_string(data: msg, len: csize_t(len(msg))))

proc miqt_exec_callback_cQWebPage_javaScriptConfirm(vtbl: pointer, self: pointer, originatingFrame: pointer, msg: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = gen_qwebframe_types.QWebFrame(h: originatingFrame)
  let vmsg_ms = msg
  let vmsgx_ret = string.fromBytes(toOpenArrayByte(vmsg_ms.data, 0, int(vmsg_ms.len)-1))
  c_free(vmsg_ms.data)
  let slotval2 = vmsgx_ret
  var virtualReturn = vtbl[].javaScriptConfirm(self, slotval1, slotval2)
  virtualReturn

proc QWebPagejavaScriptConsoleMessage*(self: gen_qwebpage_types.QWebPage, message: string, lineNumber: cint, sourceID: string): void =
  fcQWebPage_virtualbase_javaScriptConsoleMessage(self.h, struct_miqt_string(data: message, len: csize_t(len(message))), lineNumber, struct_miqt_string(data: sourceID, len: csize_t(len(sourceID))))

proc miqt_exec_callback_cQWebPage_javaScriptConsoleMessage(vtbl: pointer, self: pointer, message: struct_miqt_string, lineNumber: cint, sourceID: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let vmessage_ms = message
  let vmessagex_ret = string.fromBytes(toOpenArrayByte(vmessage_ms.data, 0, int(vmessage_ms.len)-1))
  c_free(vmessage_ms.data)
  let slotval1 = vmessagex_ret
  let slotval2 = lineNumber
  let vsourceID_ms = sourceID
  let vsourceIDx_ret = string.fromBytes(toOpenArrayByte(vsourceID_ms.data, 0, int(vsourceID_ms.len)-1))
  c_free(vsourceID_ms.data)
  let slotval3 = vsourceIDx_ret
  vtbl[].javaScriptConsoleMessage(self, slotval1, slotval2, slotval3)

proc QWebPageuserAgentForUrl*(self: gen_qwebpage_types.QWebPage, url: gen_qurl_types.QUrl): string =
  let v_ms = fcQWebPage_virtualbase_userAgentForUrl(self.h, url.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc miqt_exec_callback_cQWebPage_userAgentForUrl(vtbl: pointer, self: pointer, url: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: url)
  var virtualReturn = vtbl[].userAgentForUrl(self, slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc QWebPageeventFilter*(self: gen_qwebpage_types.QWebPage, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebPage_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQWebPage_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWebPagetimerEvent*(self: gen_qwebpage_types.QWebPage, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebPage_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQWebPage_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QWebPagechildEvent*(self: gen_qwebpage_types.QWebPage, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebPage_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQWebPage_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QWebPagecustomEvent*(self: gen_qwebpage_types.QWebPage, event: gen_qcoreevent_types.QEvent): void =
  fcQWebPage_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQWebPage_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QWebPageconnectNotify*(self: gen_qwebpage_types.QWebPage, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebPage_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebPage_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QWebPagedisconnectNotify*(self: gen_qwebpage_types.QWebPage, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebPage_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebPage_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebPageVTable](vtbl)
  let self = QWebPage(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qwebpage_types.QWebPage, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebPage_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qwebpage_types.QWebPage, ): cint =
  fcQWebPage_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebpage_types.QWebPage, signal: cstring): cint =
  fcQWebPage_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebpage_types.QWebPage, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebPage_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwebpage_types.QWebPage,
    vtbl: ref QWebPageVTable = nil): gen_qwebpage_types.QWebPage =
  let vtbl = if vtbl == nil: new QWebPageVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebPageVTable, _: ptr cQWebPage) {.cdecl.} =
    let vtbl = cast[ref QWebPageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebPage_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebPage_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebPage_metacall
  if not isNil(vtbl.triggerAction):
    vtbl[].vtbl.triggerAction = miqt_exec_callback_cQWebPage_triggerAction
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebPage_event
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQWebPage_extension
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQWebPage_supportsExtension
  if not isNil(vtbl.shouldInterruptJavaScript):
    vtbl[].vtbl.shouldInterruptJavaScript = miqt_exec_callback_cQWebPage_shouldInterruptJavaScript
  if not isNil(vtbl.createWindow):
    vtbl[].vtbl.createWindow = miqt_exec_callback_cQWebPage_createWindow
  if not isNil(vtbl.createPlugin):
    vtbl[].vtbl.createPlugin = miqt_exec_callback_cQWebPage_createPlugin
  if not isNil(vtbl.acceptNavigationRequest):
    vtbl[].vtbl.acceptNavigationRequest = miqt_exec_callback_cQWebPage_acceptNavigationRequest
  if not isNil(vtbl.chooseFile):
    vtbl[].vtbl.chooseFile = miqt_exec_callback_cQWebPage_chooseFile
  if not isNil(vtbl.javaScriptAlert):
    vtbl[].vtbl.javaScriptAlert = miqt_exec_callback_cQWebPage_javaScriptAlert
  if not isNil(vtbl.javaScriptConfirm):
    vtbl[].vtbl.javaScriptConfirm = miqt_exec_callback_cQWebPage_javaScriptConfirm
  if not isNil(vtbl.javaScriptConsoleMessage):
    vtbl[].vtbl.javaScriptConsoleMessage = miqt_exec_callback_cQWebPage_javaScriptConsoleMessage
  if not isNil(vtbl.userAgentForUrl):
    vtbl[].vtbl.userAgentForUrl = miqt_exec_callback_cQWebPage_userAgentForUrl
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebPage_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebPage_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebPage_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebPage_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebPage_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebPage_disconnectNotify
  gen_qwebpage_types.QWebPage(h: fcQWebPage_new(addr(vtbl[]), ))

proc create*(T: type gen_qwebpage_types.QWebPage,
    parent: gen_qobject_types.QObject,
    vtbl: ref QWebPageVTable = nil): gen_qwebpage_types.QWebPage =
  let vtbl = if vtbl == nil: new QWebPageVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWebPageVTable, _: ptr cQWebPage) {.cdecl.} =
    let vtbl = cast[ref QWebPageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebPage_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebPage_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebPage_metacall
  if not isNil(vtbl.triggerAction):
    vtbl[].vtbl.triggerAction = miqt_exec_callback_cQWebPage_triggerAction
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebPage_event
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQWebPage_extension
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQWebPage_supportsExtension
  if not isNil(vtbl.shouldInterruptJavaScript):
    vtbl[].vtbl.shouldInterruptJavaScript = miqt_exec_callback_cQWebPage_shouldInterruptJavaScript
  if not isNil(vtbl.createWindow):
    vtbl[].vtbl.createWindow = miqt_exec_callback_cQWebPage_createWindow
  if not isNil(vtbl.createPlugin):
    vtbl[].vtbl.createPlugin = miqt_exec_callback_cQWebPage_createPlugin
  if not isNil(vtbl.acceptNavigationRequest):
    vtbl[].vtbl.acceptNavigationRequest = miqt_exec_callback_cQWebPage_acceptNavigationRequest
  if not isNil(vtbl.chooseFile):
    vtbl[].vtbl.chooseFile = miqt_exec_callback_cQWebPage_chooseFile
  if not isNil(vtbl.javaScriptAlert):
    vtbl[].vtbl.javaScriptAlert = miqt_exec_callback_cQWebPage_javaScriptAlert
  if not isNil(vtbl.javaScriptConfirm):
    vtbl[].vtbl.javaScriptConfirm = miqt_exec_callback_cQWebPage_javaScriptConfirm
  if not isNil(vtbl.javaScriptConsoleMessage):
    vtbl[].vtbl.javaScriptConsoleMessage = miqt_exec_callback_cQWebPage_javaScriptConsoleMessage
  if not isNil(vtbl.userAgentForUrl):
    vtbl[].vtbl.userAgentForUrl = miqt_exec_callback_cQWebPage_userAgentForUrl
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebPage_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebPage_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebPage_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebPage_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebPage_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebPage_disconnectNotify
  gen_qwebpage_types.QWebPage(h: fcQWebPage_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qwebpage_types.QWebPage): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebPage_staticMetaObject())
proc delete*(self: gen_qwebpage_types.QWebPage) =
  fcQWebPage_delete(self.h)
proc operatorAssign*(self: gen_qwebpage_types.QWebPageViewportAttributes, other: gen_qwebpage_types.QWebPageViewportAttributes): void =
  fcQWebPageViewportAttributes_operatorAssign(self.h, other.h)

proc initialScaleFactor*(self: gen_qwebpage_types.QWebPageViewportAttributes, ): float64 =
  fcQWebPageViewportAttributes_initialScaleFactor(self.h)

proc minimumScaleFactor*(self: gen_qwebpage_types.QWebPageViewportAttributes, ): float64 =
  fcQWebPageViewportAttributes_minimumScaleFactor(self.h)

proc maximumScaleFactor*(self: gen_qwebpage_types.QWebPageViewportAttributes, ): float64 =
  fcQWebPageViewportAttributes_maximumScaleFactor(self.h)

proc devicePixelRatio*(self: gen_qwebpage_types.QWebPageViewportAttributes, ): float64 =
  fcQWebPageViewportAttributes_devicePixelRatio(self.h)

proc isUserScalable*(self: gen_qwebpage_types.QWebPageViewportAttributes, ): bool =
  fcQWebPageViewportAttributes_isUserScalable(self.h)

proc isValid*(self: gen_qwebpage_types.QWebPageViewportAttributes, ): bool =
  fcQWebPageViewportAttributes_isValid(self.h)

proc size*(self: gen_qwebpage_types.QWebPageViewportAttributes, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQWebPageViewportAttributes_size(self.h))

proc create*(T: type gen_qwebpage_types.QWebPageViewportAttributes): gen_qwebpage_types.QWebPageViewportAttributes =
  gen_qwebpage_types.QWebPageViewportAttributes(h: fcQWebPageViewportAttributes_new())

proc create*(T: type gen_qwebpage_types.QWebPageViewportAttributes,
    other: gen_qwebpage_types.QWebPageViewportAttributes): gen_qwebpage_types.QWebPageViewportAttributes =
  gen_qwebpage_types.QWebPageViewportAttributes(h: fcQWebPageViewportAttributes_new2(other.h))

proc delete*(self: gen_qwebpage_types.QWebPageViewportAttributes) =
  fcQWebPageViewportAttributes_delete(self.h)
proc create*(T: type gen_qwebpage_types.QWebPageExtensionOption,
    param1: gen_qwebpage_types.QWebPageExtensionOption): gen_qwebpage_types.QWebPageExtensionOption =
  gen_qwebpage_types.QWebPageExtensionOption(h: fcQWebPageExtensionOption_new(param1.h))

proc delete*(self: gen_qwebpage_types.QWebPageExtensionOption) =
  fcQWebPageExtensionOption_delete(self.h)
proc create*(T: type gen_qwebpage_types.QWebPageExtensionReturn,
    param1: gen_qwebpage_types.QWebPageExtensionReturn): gen_qwebpage_types.QWebPageExtensionReturn =
  gen_qwebpage_types.QWebPageExtensionReturn(h: fcQWebPageExtensionReturn_new(param1.h))

proc create*(T: type gen_qwebpage_types.QWebPageExtensionReturn): gen_qwebpage_types.QWebPageExtensionReturn =
  gen_qwebpage_types.QWebPageExtensionReturn(h: fcQWebPageExtensionReturn_new2())

proc delete*(self: gen_qwebpage_types.QWebPageExtensionReturn) =
  fcQWebPageExtensionReturn_delete(self.h)
proc delete*(self: gen_qwebpage_types.QWebPageChooseMultipleFilesExtensionOption) =
  fcQWebPageChooseMultipleFilesExtensionOption_delete(self.h)
proc delete*(self: gen_qwebpage_types.QWebPageChooseMultipleFilesExtensionReturn) =
  fcQWebPageChooseMultipleFilesExtensionReturn_delete(self.h)
proc operatorAssign*(self: gen_qwebpage_types.QWebPageErrorPageExtensionOption, param1: gen_qwebpage_types.QWebPageErrorPageExtensionOption): void =
  fcQWebPageErrorPageExtensionOption_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qwebpage_types.QWebPageErrorPageExtensionOption,
    param1: gen_qwebpage_types.QWebPageErrorPageExtensionOption): gen_qwebpage_types.QWebPageErrorPageExtensionOption =
  gen_qwebpage_types.QWebPageErrorPageExtensionOption(h: fcQWebPageErrorPageExtensionOption_new(param1.h))

proc delete*(self: gen_qwebpage_types.QWebPageErrorPageExtensionOption) =
  fcQWebPageErrorPageExtensionOption_delete(self.h)
proc operatorAssign*(self: gen_qwebpage_types.QWebPageErrorPageExtensionReturn, param1: gen_qwebpage_types.QWebPageErrorPageExtensionReturn): void =
  fcQWebPageErrorPageExtensionReturn_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qwebpage_types.QWebPageErrorPageExtensionReturn): gen_qwebpage_types.QWebPageErrorPageExtensionReturn =
  gen_qwebpage_types.QWebPageErrorPageExtensionReturn(h: fcQWebPageErrorPageExtensionReturn_new())

proc create*(T: type gen_qwebpage_types.QWebPageErrorPageExtensionReturn,
    param1: gen_qwebpage_types.QWebPageErrorPageExtensionReturn): gen_qwebpage_types.QWebPageErrorPageExtensionReturn =
  gen_qwebpage_types.QWebPageErrorPageExtensionReturn(h: fcQWebPageErrorPageExtensionReturn_new2(param1.h))

proc delete*(self: gen_qwebpage_types.QWebPageErrorPageExtensionReturn) =
  fcQWebPageErrorPageExtensionReturn_delete(self.h)
