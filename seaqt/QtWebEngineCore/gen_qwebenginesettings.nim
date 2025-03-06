import ./Qt6WebEngineCore_libs

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


type QWebEngineSettingsFontFamilyEnum* = distinct cint
template StandardFont*(_: type QWebEngineSettingsFontFamilyEnum): untyped = 0
template FixedFont*(_: type QWebEngineSettingsFontFamilyEnum): untyped = 1
template SerifFont*(_: type QWebEngineSettingsFontFamilyEnum): untyped = 2
template SansSerifFont*(_: type QWebEngineSettingsFontFamilyEnum): untyped = 3
template CursiveFont*(_: type QWebEngineSettingsFontFamilyEnum): untyped = 4
template FantasyFont*(_: type QWebEngineSettingsFontFamilyEnum): untyped = 5
template PictographFont*(_: type QWebEngineSettingsFontFamilyEnum): untyped = 6


type QWebEngineSettingsWebAttributeEnum* = distinct cint
template AutoLoadImages*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 0
template JavascriptEnabled*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 1
template JavascriptCanOpenWindows*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 2
template JavascriptCanAccessClipboard*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 3
template LinksIncludedInFocusChain*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 4
template LocalStorageEnabled*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 5
template LocalContentCanAccessRemoteUrls*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 6
template XSSAuditingEnabled*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 7
template SpatialNavigationEnabled*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 8
template LocalContentCanAccessFileUrls*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 9
template HyperlinkAuditingEnabled*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 10
template ScrollAnimatorEnabled*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 11
template ErrorPageEnabled*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 12
template PluginsEnabled*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 13
template FullScreenSupportEnabled*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 14
template ScreenCaptureEnabled*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 15
template WebGLEnabled*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 16
template Accelerated2dCanvasEnabled*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 17
template AutoLoadIconsForPage*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 18
template TouchIconsEnabled*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 19
template FocusOnNavigationEnabled*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 20
template PrintElementBackgrounds*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 21
template AllowRunningInsecureContent*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 22
template AllowGeolocationOnInsecureOrigins*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 23
template AllowWindowActivationFromJavaScript*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 24
template ShowScrollBars*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 25
template PlaybackRequiresUserGesture*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 26
template WebRTCPublicInterfacesOnly*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 27
template JavascriptCanPaste*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 28
template DnsPrefetchEnabled*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 29
template PdfViewerEnabled*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 30
template NavigateOnDropEnabled*(_: type QWebEngineSettingsWebAttributeEnum): untyped = 31


type QWebEngineSettingsFontSizeEnum* = distinct cint
template MinimumFontSize*(_: type QWebEngineSettingsFontSizeEnum): untyped = 0
template MinimumLogicalFontSize*(_: type QWebEngineSettingsFontSizeEnum): untyped = 1
template DefaultFontSize*(_: type QWebEngineSettingsFontSizeEnum): untyped = 2
template DefaultFixedFontSize*(_: type QWebEngineSettingsFontSizeEnum): untyped = 3


type QWebEngineSettingsUnknownUrlSchemePolicyEnum* = distinct cint
template InheritedUnknownUrlSchemePolicy*(_: type QWebEngineSettingsUnknownUrlSchemePolicyEnum): untyped = 0
template DisallowUnknownUrlSchemes*(_: type QWebEngineSettingsUnknownUrlSchemePolicyEnum): untyped = 1
template AllowUnknownUrlSchemesFromUserInteraction*(_: type QWebEngineSettingsUnknownUrlSchemePolicyEnum): untyped = 2
template AllowAllUnknownUrlSchemes*(_: type QWebEngineSettingsUnknownUrlSchemePolicyEnum): untyped = 3


import ./gen_qwebenginesettings_types
export gen_qwebenginesettings_types


type cQWebEngineSettings*{.exportc: "QWebEngineSettings", incompleteStruct.} = object

proc fcQWebEngineSettings_setFontFamily(self: pointer, which: cint, family: struct_miqt_string): void {.importc: "QWebEngineSettings_setFontFamily".}
proc fcQWebEngineSettings_fontFamily(self: pointer, which: cint): struct_miqt_string {.importc: "QWebEngineSettings_fontFamily".}
proc fcQWebEngineSettings_resetFontFamily(self: pointer, which: cint): void {.importc: "QWebEngineSettings_resetFontFamily".}
proc fcQWebEngineSettings_setFontSize(self: pointer, typeVal: cint, size: cint): void {.importc: "QWebEngineSettings_setFontSize".}
proc fcQWebEngineSettings_fontSize(self: pointer, typeVal: cint): cint {.importc: "QWebEngineSettings_fontSize".}
proc fcQWebEngineSettings_resetFontSize(self: pointer, typeVal: cint): void {.importc: "QWebEngineSettings_resetFontSize".}
proc fcQWebEngineSettings_setAttribute(self: pointer, attr: cint, on: bool): void {.importc: "QWebEngineSettings_setAttribute".}
proc fcQWebEngineSettings_testAttribute(self: pointer, attr: cint): bool {.importc: "QWebEngineSettings_testAttribute".}
proc fcQWebEngineSettings_resetAttribute(self: pointer, attr: cint): void {.importc: "QWebEngineSettings_resetAttribute".}
proc fcQWebEngineSettings_setDefaultTextEncoding(self: pointer, encoding: struct_miqt_string): void {.importc: "QWebEngineSettings_setDefaultTextEncoding".}
proc fcQWebEngineSettings_defaultTextEncoding(self: pointer, ): struct_miqt_string {.importc: "QWebEngineSettings_defaultTextEncoding".}
proc fcQWebEngineSettings_unknownUrlSchemePolicy(self: pointer, ): cint {.importc: "QWebEngineSettings_unknownUrlSchemePolicy".}
proc fcQWebEngineSettings_setUnknownUrlSchemePolicy(self: pointer, policy: cint): void {.importc: "QWebEngineSettings_setUnknownUrlSchemePolicy".}
proc fcQWebEngineSettings_resetUnknownUrlSchemePolicy(self: pointer, ): void {.importc: "QWebEngineSettings_resetUnknownUrlSchemePolicy".}

proc setFontFamily*(self: gen_qwebenginesettings_types.QWebEngineSettings, which: cint, family: string): void =
  fcQWebEngineSettings_setFontFamily(self.h, cint(which), struct_miqt_string(data: family, len: csize_t(len(family))))

proc fontFamily*(self: gen_qwebenginesettings_types.QWebEngineSettings, which: cint): string =
  let v_ms = fcQWebEngineSettings_fontFamily(self.h, cint(which))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resetFontFamily*(self: gen_qwebenginesettings_types.QWebEngineSettings, which: cint): void =
  fcQWebEngineSettings_resetFontFamily(self.h, cint(which))

proc setFontSize*(self: gen_qwebenginesettings_types.QWebEngineSettings, typeVal: cint, size: cint): void =
  fcQWebEngineSettings_setFontSize(self.h, cint(typeVal), size)

proc fontSize*(self: gen_qwebenginesettings_types.QWebEngineSettings, typeVal: cint): cint =
  fcQWebEngineSettings_fontSize(self.h, cint(typeVal))

proc resetFontSize*(self: gen_qwebenginesettings_types.QWebEngineSettings, typeVal: cint): void =
  fcQWebEngineSettings_resetFontSize(self.h, cint(typeVal))

proc setAttribute*(self: gen_qwebenginesettings_types.QWebEngineSettings, attr: cint, on: bool): void =
  fcQWebEngineSettings_setAttribute(self.h, cint(attr), on)

proc testAttribute*(self: gen_qwebenginesettings_types.QWebEngineSettings, attr: cint): bool =
  fcQWebEngineSettings_testAttribute(self.h, cint(attr))

proc resetAttribute*(self: gen_qwebenginesettings_types.QWebEngineSettings, attr: cint): void =
  fcQWebEngineSettings_resetAttribute(self.h, cint(attr))

proc setDefaultTextEncoding*(self: gen_qwebenginesettings_types.QWebEngineSettings, encoding: string): void =
  fcQWebEngineSettings_setDefaultTextEncoding(self.h, struct_miqt_string(data: encoding, len: csize_t(len(encoding))))

proc defaultTextEncoding*(self: gen_qwebenginesettings_types.QWebEngineSettings, ): string =
  let v_ms = fcQWebEngineSettings_defaultTextEncoding(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc unknownUrlSchemePolicy*(self: gen_qwebenginesettings_types.QWebEngineSettings, ): cint =
  cint(fcQWebEngineSettings_unknownUrlSchemePolicy(self.h))

proc setUnknownUrlSchemePolicy*(self: gen_qwebenginesettings_types.QWebEngineSettings, policy: cint): void =
  fcQWebEngineSettings_setUnknownUrlSchemePolicy(self.h, cint(policy))

proc resetUnknownUrlSchemePolicy*(self: gen_qwebenginesettings_types.QWebEngineSettings, ): void =
  fcQWebEngineSettings_resetUnknownUrlSchemePolicy(self.h)

