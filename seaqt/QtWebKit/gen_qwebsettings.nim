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
{.compile("gen_qwebsettings.cpp", cflags).}


type QWebSettingsFontFamilyEnum* = distinct cint
template StandardFont*(_: type QWebSettingsFontFamilyEnum): untyped = 0
template FixedFont*(_: type QWebSettingsFontFamilyEnum): untyped = 1
template SerifFont*(_: type QWebSettingsFontFamilyEnum): untyped = 2
template SansSerifFont*(_: type QWebSettingsFontFamilyEnum): untyped = 3
template CursiveFont*(_: type QWebSettingsFontFamilyEnum): untyped = 4
template FantasyFont*(_: type QWebSettingsFontFamilyEnum): untyped = 5


type QWebSettingsWebAttributeEnum* = distinct cint
template AutoLoadImages*(_: type QWebSettingsWebAttributeEnum): untyped = 0
template JavascriptEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 1
template JavaEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 2
template PluginsEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 3
template PrivateBrowsingEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 4
template JavascriptCanOpenWindows*(_: type QWebSettingsWebAttributeEnum): untyped = 5
template JavascriptCanAccessClipboard*(_: type QWebSettingsWebAttributeEnum): untyped = 6
template DeveloperExtrasEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 7
template LinksIncludedInFocusChain*(_: type QWebSettingsWebAttributeEnum): untyped = 8
template ZoomTextOnly*(_: type QWebSettingsWebAttributeEnum): untyped = 9
template PrintElementBackgrounds*(_: type QWebSettingsWebAttributeEnum): untyped = 10
template OfflineStorageDatabaseEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 11
template OfflineWebApplicationCacheEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 12
template LocalStorageEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 13
template LocalStorageDatabaseEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 13
template LocalContentCanAccessRemoteUrls*(_: type QWebSettingsWebAttributeEnum): untyped = 14
template DnsPrefetchEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 15
template XSSAuditingEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 16
template AcceleratedCompositingEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 17
template SpatialNavigationEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 18
template LocalContentCanAccessFileUrls*(_: type QWebSettingsWebAttributeEnum): untyped = 19
template TiledBackingStoreEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 20
template FrameFlatteningEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 21
template SiteSpecificQuirksEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 22
template JavascriptCanCloseWindows*(_: type QWebSettingsWebAttributeEnum): untyped = 23
template WebGLEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 24
template CSSRegionsEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 25
template HyperlinkAuditingEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 26
template CSSGridLayoutEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 27
template ScrollAnimatorEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 28
template CaretBrowsingEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 29
template NotificationsEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 30
template WebAudioEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 31
template Accelerated2dCanvasEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 32
template MediaSourceEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 33
template MediaEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 34
template WebSecurityEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 35
template FullScreenSupportEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 36
template ImagesEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 37
template AllowRunningInsecureContent*(_: type QWebSettingsWebAttributeEnum): untyped = 38
template ErrorPageEnabled*(_: type QWebSettingsWebAttributeEnum): untyped = 39


type QWebSettingsWebGraphicEnum* = distinct cint
template MissingImageGraphic*(_: type QWebSettingsWebGraphicEnum): untyped = 0
template MissingPluginGraphic*(_: type QWebSettingsWebGraphicEnum): untyped = 1
template DefaultFrameIconGraphic*(_: type QWebSettingsWebGraphicEnum): untyped = 2
template TextAreaSizeGripCornerGraphic*(_: type QWebSettingsWebGraphicEnum): untyped = 3
template DeleteButtonGraphic*(_: type QWebSettingsWebGraphicEnum): untyped = 4
template InputSpeechButtonGraphic*(_: type QWebSettingsWebGraphicEnum): untyped = 5
template SearchCancelButtonGraphic*(_: type QWebSettingsWebGraphicEnum): untyped = 6
template SearchCancelButtonPressedGraphic*(_: type QWebSettingsWebGraphicEnum): untyped = 7


type QWebSettingsFontSizeEnum* = distinct cint
template MinimumFontSize*(_: type QWebSettingsFontSizeEnum): untyped = 0
template MinimumLogicalFontSize*(_: type QWebSettingsFontSizeEnum): untyped = 1
template DefaultFontSize*(_: type QWebSettingsFontSizeEnum): untyped = 2
template DefaultFixedFontSize*(_: type QWebSettingsFontSizeEnum): untyped = 3


type QWebSettingsThirdPartyCookiePolicyEnum* = distinct cint
template AlwaysAllowThirdPartyCookies*(_: type QWebSettingsThirdPartyCookiePolicyEnum): untyped = 0
template AlwaysBlockThirdPartyCookies*(_: type QWebSettingsThirdPartyCookiePolicyEnum): untyped = 1
template AllowThirdPartyWithExistingCookies*(_: type QWebSettingsThirdPartyCookiePolicyEnum): untyped = 2


import ./gen_qwebsettings_types
export gen_qwebsettings_types

import
  ../QtCore/gen_qurl_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpixmap_types
export
  gen_qurl_types,
  gen_qicon_types,
  gen_qpixmap_types

type cQWebSettings*{.exportc: "QWebSettings", incompleteStruct.} = object

proc fcQWebSettings_globalSettings(): pointer {.importc: "QWebSettings_globalSettings".}
proc fcQWebSettings_setFontFamily(self: pointer, which: cint, family: struct_miqt_string): void {.importc: "QWebSettings_setFontFamily".}
proc fcQWebSettings_fontFamily(self: pointer, which: cint): struct_miqt_string {.importc: "QWebSettings_fontFamily".}
proc fcQWebSettings_resetFontFamily(self: pointer, which: cint): void {.importc: "QWebSettings_resetFontFamily".}
proc fcQWebSettings_setFontSize(self: pointer, typeVal: cint, size: cint): void {.importc: "QWebSettings_setFontSize".}
proc fcQWebSettings_fontSize(self: pointer, typeVal: cint): cint {.importc: "QWebSettings_fontSize".}
proc fcQWebSettings_resetFontSize(self: pointer, typeVal: cint): void {.importc: "QWebSettings_resetFontSize".}
proc fcQWebSettings_setAttribute(self: pointer, attr: cint, on: bool): void {.importc: "QWebSettings_setAttribute".}
proc fcQWebSettings_testAttribute(self: pointer, attr: cint): bool {.importc: "QWebSettings_testAttribute".}
proc fcQWebSettings_resetAttribute(self: pointer, attr: cint): void {.importc: "QWebSettings_resetAttribute".}
proc fcQWebSettings_setUserStyleSheetUrl(self: pointer, location: pointer): void {.importc: "QWebSettings_setUserStyleSheetUrl".}
proc fcQWebSettings_userStyleSheetUrl(self: pointer, ): pointer {.importc: "QWebSettings_userStyleSheetUrl".}
proc fcQWebSettings_setDefaultTextEncoding(self: pointer, encoding: struct_miqt_string): void {.importc: "QWebSettings_setDefaultTextEncoding".}
proc fcQWebSettings_defaultTextEncoding(self: pointer, ): struct_miqt_string {.importc: "QWebSettings_defaultTextEncoding".}
proc fcQWebSettings_setIconDatabasePath(location: struct_miqt_string): void {.importc: "QWebSettings_setIconDatabasePath".}
proc fcQWebSettings_iconDatabasePath(): struct_miqt_string {.importc: "QWebSettings_iconDatabasePath".}
proc fcQWebSettings_clearIconDatabase(): void {.importc: "QWebSettings_clearIconDatabase".}
proc fcQWebSettings_iconForUrl(url: pointer): pointer {.importc: "QWebSettings_iconForUrl".}
proc fcQWebSettings_setPluginSearchPaths(paths: struct_miqt_array): void {.importc: "QWebSettings_setPluginSearchPaths".}
proc fcQWebSettings_pluginSearchPaths(): struct_miqt_array {.importc: "QWebSettings_pluginSearchPaths".}
proc fcQWebSettings_setWebGraphic(typeVal: cint, graphic: pointer): void {.importc: "QWebSettings_setWebGraphic".}
proc fcQWebSettings_webGraphic(typeVal: cint): pointer {.importc: "QWebSettings_webGraphic".}
proc fcQWebSettings_setMaximumPagesInCache(pages: cint): void {.importc: "QWebSettings_setMaximumPagesInCache".}
proc fcQWebSettings_maximumPagesInCache(): cint {.importc: "QWebSettings_maximumPagesInCache".}
proc fcQWebSettings_setObjectCacheCapacities(cacheMinDeadCapacity: cint, cacheMaxDead: cint, totalCapacity: cint): void {.importc: "QWebSettings_setObjectCacheCapacities".}
proc fcQWebSettings_setOfflineStoragePath(path: struct_miqt_string): void {.importc: "QWebSettings_setOfflineStoragePath".}
proc fcQWebSettings_offlineStoragePath(): struct_miqt_string {.importc: "QWebSettings_offlineStoragePath".}
proc fcQWebSettings_setOfflineStorageDefaultQuota(maximumSize: clonglong): void {.importc: "QWebSettings_setOfflineStorageDefaultQuota".}
proc fcQWebSettings_offlineStorageDefaultQuota(): clonglong {.importc: "QWebSettings_offlineStorageDefaultQuota".}
proc fcQWebSettings_setOfflineWebApplicationCachePath(path: struct_miqt_string): void {.importc: "QWebSettings_setOfflineWebApplicationCachePath".}
proc fcQWebSettings_offlineWebApplicationCachePath(): struct_miqt_string {.importc: "QWebSettings_offlineWebApplicationCachePath".}
proc fcQWebSettings_setOfflineWebApplicationCacheQuota(maximumSize: clonglong): void {.importc: "QWebSettings_setOfflineWebApplicationCacheQuota".}
proc fcQWebSettings_offlineWebApplicationCacheQuota(): clonglong {.importc: "QWebSettings_offlineWebApplicationCacheQuota".}
proc fcQWebSettings_setLocalStoragePath(self: pointer, path: struct_miqt_string): void {.importc: "QWebSettings_setLocalStoragePath".}
proc fcQWebSettings_localStoragePath(self: pointer, ): struct_miqt_string {.importc: "QWebSettings_localStoragePath".}
proc fcQWebSettings_clearMemoryCaches(): void {.importc: "QWebSettings_clearMemoryCaches".}
proc fcQWebSettings_enablePersistentStorage(): void {.importc: "QWebSettings_enablePersistentStorage".}
proc fcQWebSettings_setThirdPartyCookiePolicy(self: pointer, thirdPartyCookiePolicy: cint): void {.importc: "QWebSettings_setThirdPartyCookiePolicy".}
proc fcQWebSettings_thirdPartyCookiePolicy(self: pointer, ): cint {.importc: "QWebSettings_thirdPartyCookiePolicy".}
proc fcQWebSettings_setCSSMediaType(self: pointer, cSSMediaType: struct_miqt_string): void {.importc: "QWebSettings_setCSSMediaType".}
proc fcQWebSettings_cssMediaType(self: pointer, ): struct_miqt_string {.importc: "QWebSettings_cssMediaType".}
proc fcQWebSettings_enablePersistentStorage1(path: struct_miqt_string): void {.importc: "QWebSettings_enablePersistentStorage1".}


func init*(T: type gen_qwebsettings_types.QWebSettings, h: ptr cQWebSettings): gen_qwebsettings_types.QWebSettings =
  T(h: h)
proc globalSettings*(_: type gen_qwebsettings_types.QWebSettings, ): gen_qwebsettings_types.QWebSettings =
  gen_qwebsettings_types.QWebSettings(h: fcQWebSettings_globalSettings())

proc setFontFamily*(self: gen_qwebsettings_types.QWebSettings, which: cint, family: string): void =
  fcQWebSettings_setFontFamily(self.h, cint(which), struct_miqt_string(data: family, len: csize_t(len(family))))

proc fontFamily*(self: gen_qwebsettings_types.QWebSettings, which: cint): string =
  let v_ms = fcQWebSettings_fontFamily(self.h, cint(which))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resetFontFamily*(self: gen_qwebsettings_types.QWebSettings, which: cint): void =
  fcQWebSettings_resetFontFamily(self.h, cint(which))

proc setFontSize*(self: gen_qwebsettings_types.QWebSettings, typeVal: cint, size: cint): void =
  fcQWebSettings_setFontSize(self.h, cint(typeVal), size)

proc fontSize*(self: gen_qwebsettings_types.QWebSettings, typeVal: cint): cint =
  fcQWebSettings_fontSize(self.h, cint(typeVal))

proc resetFontSize*(self: gen_qwebsettings_types.QWebSettings, typeVal: cint): void =
  fcQWebSettings_resetFontSize(self.h, cint(typeVal))

proc setAttribute*(self: gen_qwebsettings_types.QWebSettings, attr: cint, on: bool): void =
  fcQWebSettings_setAttribute(self.h, cint(attr), on)

proc testAttribute*(self: gen_qwebsettings_types.QWebSettings, attr: cint): bool =
  fcQWebSettings_testAttribute(self.h, cint(attr))

proc resetAttribute*(self: gen_qwebsettings_types.QWebSettings, attr: cint): void =
  fcQWebSettings_resetAttribute(self.h, cint(attr))

proc setUserStyleSheetUrl*(self: gen_qwebsettings_types.QWebSettings, location: gen_qurl_types.QUrl): void =
  fcQWebSettings_setUserStyleSheetUrl(self.h, location.h)

proc userStyleSheetUrl*(self: gen_qwebsettings_types.QWebSettings, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebSettings_userStyleSheetUrl(self.h))

proc setDefaultTextEncoding*(self: gen_qwebsettings_types.QWebSettings, encoding: string): void =
  fcQWebSettings_setDefaultTextEncoding(self.h, struct_miqt_string(data: encoding, len: csize_t(len(encoding))))

proc defaultTextEncoding*(self: gen_qwebsettings_types.QWebSettings, ): string =
  let v_ms = fcQWebSettings_defaultTextEncoding(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setIconDatabasePath*(_: type gen_qwebsettings_types.QWebSettings, location: string): void =
  fcQWebSettings_setIconDatabasePath(struct_miqt_string(data: location, len: csize_t(len(location))))

proc iconDatabasePath*(_: type gen_qwebsettings_types.QWebSettings, ): string =
  let v_ms = fcQWebSettings_iconDatabasePath()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clearIconDatabase*(_: type gen_qwebsettings_types.QWebSettings, ): void =
  fcQWebSettings_clearIconDatabase()

proc iconForUrl*(_: type gen_qwebsettings_types.QWebSettings, url: gen_qurl_types.QUrl): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQWebSettings_iconForUrl(url.h))

proc setPluginSearchPaths*(_: type gen_qwebsettings_types.QWebSettings, paths: seq[string]): void =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  fcQWebSettings_setPluginSearchPaths(struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))

proc pluginSearchPaths*(_: type gen_qwebsettings_types.QWebSettings, ): seq[string] =
  var v_ma = fcQWebSettings_pluginSearchPaths()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setWebGraphic*(_: type gen_qwebsettings_types.QWebSettings, typeVal: cint, graphic: gen_qpixmap_types.QPixmap): void =
  fcQWebSettings_setWebGraphic(cint(typeVal), graphic.h)

proc webGraphic*(_: type gen_qwebsettings_types.QWebSettings, typeVal: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQWebSettings_webGraphic(cint(typeVal)))

proc setMaximumPagesInCache*(_: type gen_qwebsettings_types.QWebSettings, pages: cint): void =
  fcQWebSettings_setMaximumPagesInCache(pages)

proc maximumPagesInCache*(_: type gen_qwebsettings_types.QWebSettings, ): cint =
  fcQWebSettings_maximumPagesInCache()

proc setObjectCacheCapacities*(_: type gen_qwebsettings_types.QWebSettings, cacheMinDeadCapacity: cint, cacheMaxDead: cint, totalCapacity: cint): void =
  fcQWebSettings_setObjectCacheCapacities(cacheMinDeadCapacity, cacheMaxDead, totalCapacity)

proc setOfflineStoragePath*(_: type gen_qwebsettings_types.QWebSettings, path: string): void =
  fcQWebSettings_setOfflineStoragePath(struct_miqt_string(data: path, len: csize_t(len(path))))

proc offlineStoragePath*(_: type gen_qwebsettings_types.QWebSettings, ): string =
  let v_ms = fcQWebSettings_offlineStoragePath()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOfflineStorageDefaultQuota*(_: type gen_qwebsettings_types.QWebSettings, maximumSize: clonglong): void =
  fcQWebSettings_setOfflineStorageDefaultQuota(maximumSize)

proc offlineStorageDefaultQuota*(_: type gen_qwebsettings_types.QWebSettings, ): clonglong =
  fcQWebSettings_offlineStorageDefaultQuota()

proc setOfflineWebApplicationCachePath*(_: type gen_qwebsettings_types.QWebSettings, path: string): void =
  fcQWebSettings_setOfflineWebApplicationCachePath(struct_miqt_string(data: path, len: csize_t(len(path))))

proc offlineWebApplicationCachePath*(_: type gen_qwebsettings_types.QWebSettings, ): string =
  let v_ms = fcQWebSettings_offlineWebApplicationCachePath()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOfflineWebApplicationCacheQuota*(_: type gen_qwebsettings_types.QWebSettings, maximumSize: clonglong): void =
  fcQWebSettings_setOfflineWebApplicationCacheQuota(maximumSize)

proc offlineWebApplicationCacheQuota*(_: type gen_qwebsettings_types.QWebSettings, ): clonglong =
  fcQWebSettings_offlineWebApplicationCacheQuota()

proc setLocalStoragePath*(self: gen_qwebsettings_types.QWebSettings, path: string): void =
  fcQWebSettings_setLocalStoragePath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc localStoragePath*(self: gen_qwebsettings_types.QWebSettings, ): string =
  let v_ms = fcQWebSettings_localStoragePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clearMemoryCaches*(_: type gen_qwebsettings_types.QWebSettings, ): void =
  fcQWebSettings_clearMemoryCaches()

proc enablePersistentStorage*(_: type gen_qwebsettings_types.QWebSettings, ): void =
  fcQWebSettings_enablePersistentStorage()

proc setThirdPartyCookiePolicy*(self: gen_qwebsettings_types.QWebSettings, thirdPartyCookiePolicy: cint): void =
  fcQWebSettings_setThirdPartyCookiePolicy(self.h, cint(thirdPartyCookiePolicy))

proc thirdPartyCookiePolicy*(self: gen_qwebsettings_types.QWebSettings, ): cint =
  cint(fcQWebSettings_thirdPartyCookiePolicy(self.h))

proc setCSSMediaType*(self: gen_qwebsettings_types.QWebSettings, cSSMediaType: string): void =
  fcQWebSettings_setCSSMediaType(self.h, struct_miqt_string(data: cSSMediaType, len: csize_t(len(cSSMediaType))))

proc cssMediaType*(self: gen_qwebsettings_types.QWebSettings, ): string =
  let v_ms = fcQWebSettings_cssMediaType(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc enablePersistentStorage*(_: type gen_qwebsettings_types.QWebSettings, path: string): void =
  fcQWebSettings_enablePersistentStorage1(struct_miqt_string(data: path, len: csize_t(len(path))))

