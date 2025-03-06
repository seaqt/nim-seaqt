import ./Qt6WebEngineQuick_libs

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

const cflags = gorge("pkg-config --cflags Qt6WebEngineQuick")  & " -fPIC"
{.compile("gen_qquickwebengineprofile.cpp", cflags).}


type QQuickWebEngineProfileHttpCacheTypeEnum* = distinct cint
template MemoryHttpCache*(_: type QQuickWebEngineProfileHttpCacheTypeEnum): untyped = 0
template DiskHttpCache*(_: type QQuickWebEngineProfileHttpCacheTypeEnum): untyped = 1
template NoCache*(_: type QQuickWebEngineProfileHttpCacheTypeEnum): untyped = 2


type QQuickWebEngineProfilePersistentCookiesPolicyEnum* = distinct cint
template NoPersistentCookies*(_: type QQuickWebEngineProfilePersistentCookiesPolicyEnum): untyped = 0
template AllowPersistentCookies*(_: type QQuickWebEngineProfilePersistentCookiesPolicyEnum): untyped = 1
template ForcePersistentCookies*(_: type QQuickWebEngineProfilePersistentCookiesPolicyEnum): untyped = 2


import ./gen_qquickwebengineprofile_types
export gen_qquickwebengineprofile_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtWebEngineCore/gen_qwebengineclientcertificatestore_types,
  ../QtWebEngineCore/gen_qwebenginecookiestore_types,
  ../QtWebEngineCore/gen_qwebenginenotification_types,
  ../QtWebEngineCore/gen_qwebengineurlrequestinterceptor_types,
  ../QtWebEngineCore/gen_qwebengineurlschemehandler_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qwebengineclientcertificatestore_types,
  gen_qwebenginecookiestore_types,
  gen_qwebenginenotification_types,
  gen_qwebengineurlrequestinterceptor_types,
  gen_qwebengineurlschemehandler_types

type cQQuickWebEngineProfile*{.exportc: "QQuickWebEngineProfile", incompleteStruct.} = object

proc fcQQuickWebEngineProfile_new(): ptr cQQuickWebEngineProfile {.importc: "QQuickWebEngineProfile_new".}
proc fcQQuickWebEngineProfile_new2(parent: pointer): ptr cQQuickWebEngineProfile {.importc: "QQuickWebEngineProfile_new2".}
proc fcQQuickWebEngineProfile_metaObject(self: pointer, ): pointer {.importc: "QQuickWebEngineProfile_metaObject".}
proc fcQQuickWebEngineProfile_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickWebEngineProfile_metacast".}
proc fcQQuickWebEngineProfile_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickWebEngineProfile_metacall".}
proc fcQQuickWebEngineProfile_tr(s: cstring): struct_miqt_string {.importc: "QQuickWebEngineProfile_tr".}
proc fcQQuickWebEngineProfile_storageName(self: pointer, ): struct_miqt_string {.importc: "QQuickWebEngineProfile_storageName".}
proc fcQQuickWebEngineProfile_setStorageName(self: pointer, name: struct_miqt_string): void {.importc: "QQuickWebEngineProfile_setStorageName".}
proc fcQQuickWebEngineProfile_isOffTheRecord(self: pointer, ): bool {.importc: "QQuickWebEngineProfile_isOffTheRecord".}
proc fcQQuickWebEngineProfile_setOffTheRecord(self: pointer, offTheRecord: bool): void {.importc: "QQuickWebEngineProfile_setOffTheRecord".}
proc fcQQuickWebEngineProfile_persistentStoragePath(self: pointer, ): struct_miqt_string {.importc: "QQuickWebEngineProfile_persistentStoragePath".}
proc fcQQuickWebEngineProfile_setPersistentStoragePath(self: pointer, path: struct_miqt_string): void {.importc: "QQuickWebEngineProfile_setPersistentStoragePath".}
proc fcQQuickWebEngineProfile_cachePath(self: pointer, ): struct_miqt_string {.importc: "QQuickWebEngineProfile_cachePath".}
proc fcQQuickWebEngineProfile_setCachePath(self: pointer, path: struct_miqt_string): void {.importc: "QQuickWebEngineProfile_setCachePath".}
proc fcQQuickWebEngineProfile_httpUserAgent(self: pointer, ): struct_miqt_string {.importc: "QQuickWebEngineProfile_httpUserAgent".}
proc fcQQuickWebEngineProfile_setHttpUserAgent(self: pointer, userAgent: struct_miqt_string): void {.importc: "QQuickWebEngineProfile_setHttpUserAgent".}
proc fcQQuickWebEngineProfile_httpCacheType(self: pointer, ): cint {.importc: "QQuickWebEngineProfile_httpCacheType".}
proc fcQQuickWebEngineProfile_setHttpCacheType(self: pointer, httpCacheType: cint): void {.importc: "QQuickWebEngineProfile_setHttpCacheType".}
proc fcQQuickWebEngineProfile_persistentCookiesPolicy(self: pointer, ): cint {.importc: "QQuickWebEngineProfile_persistentCookiesPolicy".}
proc fcQQuickWebEngineProfile_setPersistentCookiesPolicy(self: pointer, persistentCookiesPolicy: cint): void {.importc: "QQuickWebEngineProfile_setPersistentCookiesPolicy".}
proc fcQQuickWebEngineProfile_httpCacheMaximumSize(self: pointer, ): cint {.importc: "QQuickWebEngineProfile_httpCacheMaximumSize".}
proc fcQQuickWebEngineProfile_setHttpCacheMaximumSize(self: pointer, maxSize: cint): void {.importc: "QQuickWebEngineProfile_setHttpCacheMaximumSize".}
proc fcQQuickWebEngineProfile_httpAcceptLanguage(self: pointer, ): struct_miqt_string {.importc: "QQuickWebEngineProfile_httpAcceptLanguage".}
proc fcQQuickWebEngineProfile_setHttpAcceptLanguage(self: pointer, httpAcceptLanguage: struct_miqt_string): void {.importc: "QQuickWebEngineProfile_setHttpAcceptLanguage".}
proc fcQQuickWebEngineProfile_cookieStore(self: pointer, ): pointer {.importc: "QQuickWebEngineProfile_cookieStore".}
proc fcQQuickWebEngineProfile_setUrlRequestInterceptor(self: pointer, interceptor: pointer): void {.importc: "QQuickWebEngineProfile_setUrlRequestInterceptor".}
proc fcQQuickWebEngineProfile_urlSchemeHandler(self: pointer, param1: struct_miqt_string): pointer {.importc: "QQuickWebEngineProfile_urlSchemeHandler".}
proc fcQQuickWebEngineProfile_installUrlSchemeHandler(self: pointer, scheme: struct_miqt_string, param2: pointer): void {.importc: "QQuickWebEngineProfile_installUrlSchemeHandler".}
proc fcQQuickWebEngineProfile_removeUrlScheme(self: pointer, scheme: struct_miqt_string): void {.importc: "QQuickWebEngineProfile_removeUrlScheme".}
proc fcQQuickWebEngineProfile_removeUrlSchemeHandler(self: pointer, param1: pointer): void {.importc: "QQuickWebEngineProfile_removeUrlSchemeHandler".}
proc fcQQuickWebEngineProfile_removeAllUrlSchemeHandlers(self: pointer, ): void {.importc: "QQuickWebEngineProfile_removeAllUrlSchemeHandlers".}
proc fcQQuickWebEngineProfile_clearHttpCache(self: pointer, ): void {.importc: "QQuickWebEngineProfile_clearHttpCache".}
proc fcQQuickWebEngineProfile_setSpellCheckLanguages(self: pointer, languages: struct_miqt_array): void {.importc: "QQuickWebEngineProfile_setSpellCheckLanguages".}
proc fcQQuickWebEngineProfile_spellCheckLanguages(self: pointer, ): struct_miqt_array {.importc: "QQuickWebEngineProfile_spellCheckLanguages".}
proc fcQQuickWebEngineProfile_setSpellCheckEnabled(self: pointer, enabled: bool): void {.importc: "QQuickWebEngineProfile_setSpellCheckEnabled".}
proc fcQQuickWebEngineProfile_isSpellCheckEnabled(self: pointer, ): bool {.importc: "QQuickWebEngineProfile_isSpellCheckEnabled".}
proc fcQQuickWebEngineProfile_downloadPath(self: pointer, ): struct_miqt_string {.importc: "QQuickWebEngineProfile_downloadPath".}
proc fcQQuickWebEngineProfile_setDownloadPath(self: pointer, path: struct_miqt_string): void {.importc: "QQuickWebEngineProfile_setDownloadPath".}
proc fcQQuickWebEngineProfile_clientCertificateStore(self: pointer, ): pointer {.importc: "QQuickWebEngineProfile_clientCertificateStore".}
proc fcQQuickWebEngineProfile_defaultProfile(): pointer {.importc: "QQuickWebEngineProfile_defaultProfile".}
proc fcQQuickWebEngineProfile_storageNameChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_storageNameChanged".}
proc fcQQuickWebEngineProfile_connect_storageNameChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_connect_storageNameChanged".}
proc fcQQuickWebEngineProfile_offTheRecordChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_offTheRecordChanged".}
proc fcQQuickWebEngineProfile_connect_offTheRecordChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_connect_offTheRecordChanged".}
proc fcQQuickWebEngineProfile_persistentStoragePathChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_persistentStoragePathChanged".}
proc fcQQuickWebEngineProfile_connect_persistentStoragePathChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_connect_persistentStoragePathChanged".}
proc fcQQuickWebEngineProfile_cachePathChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_cachePathChanged".}
proc fcQQuickWebEngineProfile_connect_cachePathChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_connect_cachePathChanged".}
proc fcQQuickWebEngineProfile_httpUserAgentChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_httpUserAgentChanged".}
proc fcQQuickWebEngineProfile_connect_httpUserAgentChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_connect_httpUserAgentChanged".}
proc fcQQuickWebEngineProfile_httpCacheTypeChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_httpCacheTypeChanged".}
proc fcQQuickWebEngineProfile_connect_httpCacheTypeChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_connect_httpCacheTypeChanged".}
proc fcQQuickWebEngineProfile_persistentCookiesPolicyChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_persistentCookiesPolicyChanged".}
proc fcQQuickWebEngineProfile_connect_persistentCookiesPolicyChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_connect_persistentCookiesPolicyChanged".}
proc fcQQuickWebEngineProfile_httpCacheMaximumSizeChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_httpCacheMaximumSizeChanged".}
proc fcQQuickWebEngineProfile_connect_httpCacheMaximumSizeChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_connect_httpCacheMaximumSizeChanged".}
proc fcQQuickWebEngineProfile_httpAcceptLanguageChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_httpAcceptLanguageChanged".}
proc fcQQuickWebEngineProfile_connect_httpAcceptLanguageChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_connect_httpAcceptLanguageChanged".}
proc fcQQuickWebEngineProfile_spellCheckLanguagesChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_spellCheckLanguagesChanged".}
proc fcQQuickWebEngineProfile_connect_spellCheckLanguagesChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_connect_spellCheckLanguagesChanged".}
proc fcQQuickWebEngineProfile_spellCheckEnabledChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_spellCheckEnabledChanged".}
proc fcQQuickWebEngineProfile_connect_spellCheckEnabledChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_connect_spellCheckEnabledChanged".}
proc fcQQuickWebEngineProfile_downloadPathChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_downloadPathChanged".}
proc fcQQuickWebEngineProfile_connect_downloadPathChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_connect_downloadPathChanged".}
proc fcQQuickWebEngineProfile_presentNotification(self: pointer, notification: pointer): void {.importc: "QQuickWebEngineProfile_presentNotification".}
proc fcQQuickWebEngineProfile_connect_presentNotification(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_connect_presentNotification".}
proc fcQQuickWebEngineProfile_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickWebEngineProfile_tr2".}
proc fcQQuickWebEngineProfile_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickWebEngineProfile_tr3".}
proc fQQuickWebEngineProfile_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQuickWebEngineProfile_virtualbase_metaObject".}
proc fcQQuickWebEngineProfile_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_override_virtual_metaObject".}
proc fQQuickWebEngineProfile_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQuickWebEngineProfile_virtualbase_metacast".}
proc fcQQuickWebEngineProfile_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_override_virtual_metacast".}
proc fQQuickWebEngineProfile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQuickWebEngineProfile_virtualbase_metacall".}
proc fcQQuickWebEngineProfile_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_override_virtual_metacall".}
proc fQQuickWebEngineProfile_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQuickWebEngineProfile_virtualbase_event".}
proc fcQQuickWebEngineProfile_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_override_virtual_event".}
proc fQQuickWebEngineProfile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickWebEngineProfile_virtualbase_eventFilter".}
proc fcQQuickWebEngineProfile_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_override_virtual_eventFilter".}
proc fQQuickWebEngineProfile_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickWebEngineProfile_virtualbase_timerEvent".}
proc fcQQuickWebEngineProfile_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_override_virtual_timerEvent".}
proc fQQuickWebEngineProfile_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickWebEngineProfile_virtualbase_childEvent".}
proc fcQQuickWebEngineProfile_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_override_virtual_childEvent".}
proc fQQuickWebEngineProfile_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickWebEngineProfile_virtualbase_customEvent".}
proc fcQQuickWebEngineProfile_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_override_virtual_customEvent".}
proc fQQuickWebEngineProfile_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickWebEngineProfile_virtualbase_connectNotify".}
proc fcQQuickWebEngineProfile_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_override_virtual_connectNotify".}
proc fQQuickWebEngineProfile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickWebEngineProfile_virtualbase_disconnectNotify".}
proc fcQQuickWebEngineProfile_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickWebEngineProfile_override_virtual_disconnectNotify".}
proc fcQQuickWebEngineProfile_staticMetaObject(): pointer {.importc: "QQuickWebEngineProfile_staticMetaObject".}
proc fcQQuickWebEngineProfile_delete(self: pointer) {.importc: "QQuickWebEngineProfile_delete".}


func init*(T: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile, h: ptr cQQuickWebEngineProfile): gen_qquickwebengineprofile_types.QQuickWebEngineProfile =
  T(h: h)
proc create*(T: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): gen_qquickwebengineprofile_types.QQuickWebEngineProfile =
  gen_qquickwebengineprofile_types.QQuickWebEngineProfile.init(fcQQuickWebEngineProfile_new())

proc create*(T: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile, parent: gen_qobject_types.QObject): gen_qquickwebengineprofile_types.QQuickWebEngineProfile =
  gen_qquickwebengineprofile_types.QQuickWebEngineProfile.init(fcQQuickWebEngineProfile_new2(parent.h))

proc metaObject*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickWebEngineProfile_metaObject(self.h))

proc metacast*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, param1: cstring): pointer =
  fcQQuickWebEngineProfile_metacast(self.h, param1)

proc metacall*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickWebEngineProfile_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile, s: cstring): string =
  let v_ms = fcQQuickWebEngineProfile_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc storageName*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): string =
  let v_ms = fcQQuickWebEngineProfile_storageName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStorageName*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, name: string): void =
  fcQQuickWebEngineProfile_setStorageName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc isOffTheRecord*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): bool =
  fcQQuickWebEngineProfile_isOffTheRecord(self.h)

proc setOffTheRecord*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, offTheRecord: bool): void =
  fcQQuickWebEngineProfile_setOffTheRecord(self.h, offTheRecord)

proc persistentStoragePath*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): string =
  let v_ms = fcQQuickWebEngineProfile_persistentStoragePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPersistentStoragePath*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, path: string): void =
  fcQQuickWebEngineProfile_setPersistentStoragePath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc cachePath*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): string =
  let v_ms = fcQQuickWebEngineProfile_cachePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCachePath*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, path: string): void =
  fcQQuickWebEngineProfile_setCachePath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc httpUserAgent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): string =
  let v_ms = fcQQuickWebEngineProfile_httpUserAgent(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHttpUserAgent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, userAgent: string): void =
  fcQQuickWebEngineProfile_setHttpUserAgent(self.h, struct_miqt_string(data: userAgent, len: csize_t(len(userAgent))))

proc httpCacheType*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): cint =
  cint(fcQQuickWebEngineProfile_httpCacheType(self.h))

proc setHttpCacheType*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, httpCacheType: cint): void =
  fcQQuickWebEngineProfile_setHttpCacheType(self.h, cint(httpCacheType))

proc persistentCookiesPolicy*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): cint =
  cint(fcQQuickWebEngineProfile_persistentCookiesPolicy(self.h))

proc setPersistentCookiesPolicy*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, persistentCookiesPolicy: cint): void =
  fcQQuickWebEngineProfile_setPersistentCookiesPolicy(self.h, cint(persistentCookiesPolicy))

proc httpCacheMaximumSize*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): cint =
  fcQQuickWebEngineProfile_httpCacheMaximumSize(self.h)

proc setHttpCacheMaximumSize*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, maxSize: cint): void =
  fcQQuickWebEngineProfile_setHttpCacheMaximumSize(self.h, maxSize)

proc httpAcceptLanguage*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): string =
  let v_ms = fcQQuickWebEngineProfile_httpAcceptLanguage(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHttpAcceptLanguage*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, httpAcceptLanguage: string): void =
  fcQQuickWebEngineProfile_setHttpAcceptLanguage(self.h, struct_miqt_string(data: httpAcceptLanguage, len: csize_t(len(httpAcceptLanguage))))

proc cookieStore*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): gen_qwebenginecookiestore_types.QWebEngineCookieStore =
  gen_qwebenginecookiestore_types.QWebEngineCookieStore(h: fcQQuickWebEngineProfile_cookieStore(self.h))

proc setUrlRequestInterceptor*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, interceptor: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor): void =
  fcQQuickWebEngineProfile_setUrlRequestInterceptor(self.h, interceptor.h)

proc urlSchemeHandler*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, param1: seq[byte]): gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler =
  gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler(h: fcQQuickWebEngineProfile_urlSchemeHandler(self.h, struct_miqt_string(data: cast[cstring](if len(param1) == 0: nil else: unsafeAddr param1[0]), len: csize_t(len(param1)))))

proc installUrlSchemeHandler*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, scheme: seq[byte], param2: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler): void =
  fcQQuickWebEngineProfile_installUrlSchemeHandler(self.h, struct_miqt_string(data: cast[cstring](if len(scheme) == 0: nil else: unsafeAddr scheme[0]), len: csize_t(len(scheme))), param2.h)

proc removeUrlScheme*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, scheme: seq[byte]): void =
  fcQQuickWebEngineProfile_removeUrlScheme(self.h, struct_miqt_string(data: cast[cstring](if len(scheme) == 0: nil else: unsafeAddr scheme[0]), len: csize_t(len(scheme))))

proc removeUrlSchemeHandler*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, param1: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler): void =
  fcQQuickWebEngineProfile_removeUrlSchemeHandler(self.h, param1.h)

proc removeAllUrlSchemeHandlers*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_removeAllUrlSchemeHandlers(self.h)

proc clearHttpCache*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_clearHttpCache(self.h)

proc setSpellCheckLanguages*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, languages: seq[string]): void =
  var languages_CArray = newSeq[struct_miqt_string](len(languages))
  for i in 0..<len(languages):
    languages_CArray[i] = struct_miqt_string(data: languages[i], len: csize_t(len(languages[i])))

  fcQQuickWebEngineProfile_setSpellCheckLanguages(self.h, struct_miqt_array(len: csize_t(len(languages)), data: if len(languages) == 0: nil else: addr(languages_CArray[0])))

proc spellCheckLanguages*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): seq[string] =
  var v_ma = fcQQuickWebEngineProfile_spellCheckLanguages(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setSpellCheckEnabled*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, enabled: bool): void =
  fcQQuickWebEngineProfile_setSpellCheckEnabled(self.h, enabled)

proc isSpellCheckEnabled*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): bool =
  fcQQuickWebEngineProfile_isSpellCheckEnabled(self.h)

proc downloadPath*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): string =
  let v_ms = fcQQuickWebEngineProfile_downloadPath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDownloadPath*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, path: string): void =
  fcQQuickWebEngineProfile_setDownloadPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc clientCertificateStore*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): gen_qwebengineclientcertificatestore_types.QWebEngineClientCertificateStore =
  gen_qwebengineclientcertificatestore_types.QWebEngineClientCertificateStore(h: fcQQuickWebEngineProfile_clientCertificateStore(self.h))

proc defaultProfile*(_: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): gen_qquickwebengineprofile_types.QQuickWebEngineProfile =
  gen_qquickwebengineprofile_types.QQuickWebEngineProfile(h: fcQQuickWebEngineProfile_defaultProfile())

proc storageNameChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_storageNameChanged(self.h)

type QQuickWebEngineProfilestorageNameChangedSlot* = proc()
proc miqt_exec_callback_QQuickWebEngineProfile_storageNameChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilestorageNameChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onstorageNameChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilestorageNameChangedSlot) =
  var tmp = new QQuickWebEngineProfilestorageNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_storageNameChanged(self.h, cast[int](addr tmp[]))

proc offTheRecordChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_offTheRecordChanged(self.h)

type QQuickWebEngineProfileoffTheRecordChangedSlot* = proc()
proc miqt_exec_callback_QQuickWebEngineProfile_offTheRecordChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineProfileoffTheRecordChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onoffTheRecordChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfileoffTheRecordChangedSlot) =
  var tmp = new QQuickWebEngineProfileoffTheRecordChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_offTheRecordChanged(self.h, cast[int](addr tmp[]))

proc persistentStoragePathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_persistentStoragePathChanged(self.h)

type QQuickWebEngineProfilepersistentStoragePathChangedSlot* = proc()
proc miqt_exec_callback_QQuickWebEngineProfile_persistentStoragePathChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilepersistentStoragePathChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onpersistentStoragePathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilepersistentStoragePathChangedSlot) =
  var tmp = new QQuickWebEngineProfilepersistentStoragePathChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_persistentStoragePathChanged(self.h, cast[int](addr tmp[]))

proc cachePathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_cachePathChanged(self.h)

type QQuickWebEngineProfilecachePathChangedSlot* = proc()
proc miqt_exec_callback_QQuickWebEngineProfile_cachePathChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilecachePathChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oncachePathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilecachePathChangedSlot) =
  var tmp = new QQuickWebEngineProfilecachePathChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_cachePathChanged(self.h, cast[int](addr tmp[]))

proc httpUserAgentChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_httpUserAgentChanged(self.h)

type QQuickWebEngineProfilehttpUserAgentChangedSlot* = proc()
proc miqt_exec_callback_QQuickWebEngineProfile_httpUserAgentChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilehttpUserAgentChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onhttpUserAgentChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilehttpUserAgentChangedSlot) =
  var tmp = new QQuickWebEngineProfilehttpUserAgentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_httpUserAgentChanged(self.h, cast[int](addr tmp[]))

proc httpCacheTypeChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_httpCacheTypeChanged(self.h)

type QQuickWebEngineProfilehttpCacheTypeChangedSlot* = proc()
proc miqt_exec_callback_QQuickWebEngineProfile_httpCacheTypeChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilehttpCacheTypeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onhttpCacheTypeChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilehttpCacheTypeChangedSlot) =
  var tmp = new QQuickWebEngineProfilehttpCacheTypeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_httpCacheTypeChanged(self.h, cast[int](addr tmp[]))

proc persistentCookiesPolicyChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_persistentCookiesPolicyChanged(self.h)

type QQuickWebEngineProfilepersistentCookiesPolicyChangedSlot* = proc()
proc miqt_exec_callback_QQuickWebEngineProfile_persistentCookiesPolicyChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilepersistentCookiesPolicyChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onpersistentCookiesPolicyChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilepersistentCookiesPolicyChangedSlot) =
  var tmp = new QQuickWebEngineProfilepersistentCookiesPolicyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_persistentCookiesPolicyChanged(self.h, cast[int](addr tmp[]))

proc httpCacheMaximumSizeChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_httpCacheMaximumSizeChanged(self.h)

type QQuickWebEngineProfilehttpCacheMaximumSizeChangedSlot* = proc()
proc miqt_exec_callback_QQuickWebEngineProfile_httpCacheMaximumSizeChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilehttpCacheMaximumSizeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onhttpCacheMaximumSizeChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilehttpCacheMaximumSizeChangedSlot) =
  var tmp = new QQuickWebEngineProfilehttpCacheMaximumSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_httpCacheMaximumSizeChanged(self.h, cast[int](addr tmp[]))

proc httpAcceptLanguageChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_httpAcceptLanguageChanged(self.h)

type QQuickWebEngineProfilehttpAcceptLanguageChangedSlot* = proc()
proc miqt_exec_callback_QQuickWebEngineProfile_httpAcceptLanguageChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilehttpAcceptLanguageChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onhttpAcceptLanguageChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilehttpAcceptLanguageChangedSlot) =
  var tmp = new QQuickWebEngineProfilehttpAcceptLanguageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_httpAcceptLanguageChanged(self.h, cast[int](addr tmp[]))

proc spellCheckLanguagesChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_spellCheckLanguagesChanged(self.h)

type QQuickWebEngineProfilespellCheckLanguagesChangedSlot* = proc()
proc miqt_exec_callback_QQuickWebEngineProfile_spellCheckLanguagesChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilespellCheckLanguagesChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onspellCheckLanguagesChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilespellCheckLanguagesChangedSlot) =
  var tmp = new QQuickWebEngineProfilespellCheckLanguagesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_spellCheckLanguagesChanged(self.h, cast[int](addr tmp[]))

proc spellCheckEnabledChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_spellCheckEnabledChanged(self.h)

type QQuickWebEngineProfilespellCheckEnabledChangedSlot* = proc()
proc miqt_exec_callback_QQuickWebEngineProfile_spellCheckEnabledChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilespellCheckEnabledChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onspellCheckEnabledChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilespellCheckEnabledChangedSlot) =
  var tmp = new QQuickWebEngineProfilespellCheckEnabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_spellCheckEnabledChanged(self.h, cast[int](addr tmp[]))

proc downloadPathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_downloadPathChanged(self.h)

type QQuickWebEngineProfiledownloadPathChangedSlot* = proc()
proc miqt_exec_callback_QQuickWebEngineProfile_downloadPathChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineProfiledownloadPathChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc ondownloadPathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfiledownloadPathChangedSlot) =
  var tmp = new QQuickWebEngineProfiledownloadPathChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_downloadPathChanged(self.h, cast[int](addr tmp[]))

proc presentNotification*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, notification: gen_qwebenginenotification_types.QWebEngineNotification): void =
  fcQQuickWebEngineProfile_presentNotification(self.h, notification.h)

type QQuickWebEngineProfilepresentNotificationSlot* = proc(notification: gen_qwebenginenotification_types.QWebEngineNotification)
proc miqt_exec_callback_QQuickWebEngineProfile_presentNotification(slot: int, notification: pointer) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilepresentNotificationSlot](cast[pointer](slot))
  let slotval1 = gen_qwebenginenotification_types.QWebEngineNotification(h: notification)

  nimfunc[](slotval1)

proc onpresentNotification*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilepresentNotificationSlot) =
  var tmp = new QQuickWebEngineProfilepresentNotificationSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_presentNotification(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile, s: cstring, c: cstring): string =
  let v_ms = fcQQuickWebEngineProfile_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickWebEngineProfile_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QQuickWebEngineProfilemetaObject*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQQuickWebEngineProfile_virtualbase_metaObject(self.h))

type QQuickWebEngineProfilemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilemetaObjectProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineProfilemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineProfile_metaObject(self: ptr cQQuickWebEngineProfile, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickWebEngineProfile_metaObject ".} =
  var nimfunc = cast[ptr QQuickWebEngineProfilemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickWebEngineProfilemetacast*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, param1: cstring): pointer =
  fQQuickWebEngineProfile_virtualbase_metacast(self.h, param1)

type QQuickWebEngineProfilemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilemetacastProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineProfilemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineProfile_metacast(self: ptr cQQuickWebEngineProfile, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQuickWebEngineProfile_metacast ".} =
  var nimfunc = cast[ptr QQuickWebEngineProfilemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickWebEngineProfilemetacall*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, param1: cint, param2: cint, param3: pointer): cint =
  fQQuickWebEngineProfile_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickWebEngineProfilemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilemetacallProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineProfilemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineProfile_metacall(self: ptr cQQuickWebEngineProfile, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickWebEngineProfile_metacall ".} =
  var nimfunc = cast[ptr QQuickWebEngineProfilemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QQuickWebEngineProfileevent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickWebEngineProfile_virtualbase_event(self.h, event.h)

type QQuickWebEngineProfileeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfileeventProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineProfileeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineProfile_event(self: ptr cQQuickWebEngineProfile, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickWebEngineProfile_event ".} =
  var nimfunc = cast[ptr QQuickWebEngineProfileeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickWebEngineProfileeventFilter*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickWebEngineProfile_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickWebEngineProfileeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfileeventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineProfileeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineProfile_eventFilter(self: ptr cQQuickWebEngineProfile, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickWebEngineProfile_eventFilter ".} =
  var nimfunc = cast[ptr QQuickWebEngineProfileeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickWebEngineProfiletimerEvent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQuickWebEngineProfile_virtualbase_timerEvent(self.h, event.h)

type QQuickWebEngineProfiletimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfiletimerEventProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineProfiletimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineProfile_timerEvent(self: ptr cQQuickWebEngineProfile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickWebEngineProfile_timerEvent ".} =
  var nimfunc = cast[ptr QQuickWebEngineProfiletimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQuickWebEngineProfilechildEvent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, event: gen_qcoreevent_types.QChildEvent): void =
  fQQuickWebEngineProfile_virtualbase_childEvent(self.h, event.h)

type QQuickWebEngineProfilechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilechildEventProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineProfilechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineProfile_childEvent(self: ptr cQQuickWebEngineProfile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickWebEngineProfile_childEvent ".} =
  var nimfunc = cast[ptr QQuickWebEngineProfilechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQuickWebEngineProfilecustomEvent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, event: gen_qcoreevent_types.QEvent): void =
  fQQuickWebEngineProfile_virtualbase_customEvent(self.h, event.h)

type QQuickWebEngineProfilecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilecustomEventProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineProfilecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineProfile_customEvent(self: ptr cQQuickWebEngineProfile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickWebEngineProfile_customEvent ".} =
  var nimfunc = cast[ptr QQuickWebEngineProfilecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQuickWebEngineProfileconnectNotify*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickWebEngineProfile_virtualbase_connectNotify(self.h, signal.h)

type QQuickWebEngineProfileconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfileconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineProfileconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineProfile_connectNotify(self: ptr cQQuickWebEngineProfile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickWebEngineProfile_connectNotify ".} =
  var nimfunc = cast[ptr QQuickWebEngineProfileconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQuickWebEngineProfiledisconnectNotify*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickWebEngineProfile_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickWebEngineProfiledisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfiledisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineProfiledisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineProfile_disconnectNotify(self: ptr cQQuickWebEngineProfile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickWebEngineProfile_disconnectNotify ".} =
  var nimfunc = cast[ptr QQuickWebEngineProfiledisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickWebEngineProfile_staticMetaObject())
proc delete*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile) =
  fcQQuickWebEngineProfile_delete(self.h)
