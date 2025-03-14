import ./qtwebenginequick_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qquickwebengineprofile.cpp", QtWebEngineQuickCFlags).}


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

proc fcQQuickWebEngineProfile_metaObject(self: pointer): pointer {.importc: "QQuickWebEngineProfile_metaObject".}
proc fcQQuickWebEngineProfile_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickWebEngineProfile_metacast".}
proc fcQQuickWebEngineProfile_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickWebEngineProfile_metacall".}
proc fcQQuickWebEngineProfile_tr(s: cstring): struct_miqt_string {.importc: "QQuickWebEngineProfile_tr".}
proc fcQQuickWebEngineProfile_storageName(self: pointer): struct_miqt_string {.importc: "QQuickWebEngineProfile_storageName".}
proc fcQQuickWebEngineProfile_setStorageName(self: pointer, name: struct_miqt_string): void {.importc: "QQuickWebEngineProfile_setStorageName".}
proc fcQQuickWebEngineProfile_isOffTheRecord(self: pointer): bool {.importc: "QQuickWebEngineProfile_isOffTheRecord".}
proc fcQQuickWebEngineProfile_setOffTheRecord(self: pointer, offTheRecord: bool): void {.importc: "QQuickWebEngineProfile_setOffTheRecord".}
proc fcQQuickWebEngineProfile_persistentStoragePath(self: pointer): struct_miqt_string {.importc: "QQuickWebEngineProfile_persistentStoragePath".}
proc fcQQuickWebEngineProfile_setPersistentStoragePath(self: pointer, path: struct_miqt_string): void {.importc: "QQuickWebEngineProfile_setPersistentStoragePath".}
proc fcQQuickWebEngineProfile_cachePath(self: pointer): struct_miqt_string {.importc: "QQuickWebEngineProfile_cachePath".}
proc fcQQuickWebEngineProfile_setCachePath(self: pointer, path: struct_miqt_string): void {.importc: "QQuickWebEngineProfile_setCachePath".}
proc fcQQuickWebEngineProfile_httpUserAgent(self: pointer): struct_miqt_string {.importc: "QQuickWebEngineProfile_httpUserAgent".}
proc fcQQuickWebEngineProfile_setHttpUserAgent(self: pointer, userAgent: struct_miqt_string): void {.importc: "QQuickWebEngineProfile_setHttpUserAgent".}
proc fcQQuickWebEngineProfile_httpCacheType(self: pointer): cint {.importc: "QQuickWebEngineProfile_httpCacheType".}
proc fcQQuickWebEngineProfile_setHttpCacheType(self: pointer, httpCacheType: cint): void {.importc: "QQuickWebEngineProfile_setHttpCacheType".}
proc fcQQuickWebEngineProfile_persistentCookiesPolicy(self: pointer): cint {.importc: "QQuickWebEngineProfile_persistentCookiesPolicy".}
proc fcQQuickWebEngineProfile_setPersistentCookiesPolicy(self: pointer, persistentCookiesPolicy: cint): void {.importc: "QQuickWebEngineProfile_setPersistentCookiesPolicy".}
proc fcQQuickWebEngineProfile_httpCacheMaximumSize(self: pointer): cint {.importc: "QQuickWebEngineProfile_httpCacheMaximumSize".}
proc fcQQuickWebEngineProfile_setHttpCacheMaximumSize(self: pointer, maxSize: cint): void {.importc: "QQuickWebEngineProfile_setHttpCacheMaximumSize".}
proc fcQQuickWebEngineProfile_httpAcceptLanguage(self: pointer): struct_miqt_string {.importc: "QQuickWebEngineProfile_httpAcceptLanguage".}
proc fcQQuickWebEngineProfile_setHttpAcceptLanguage(self: pointer, httpAcceptLanguage: struct_miqt_string): void {.importc: "QQuickWebEngineProfile_setHttpAcceptLanguage".}
proc fcQQuickWebEngineProfile_cookieStore(self: pointer): pointer {.importc: "QQuickWebEngineProfile_cookieStore".}
proc fcQQuickWebEngineProfile_setUrlRequestInterceptor(self: pointer, interceptor: pointer): void {.importc: "QQuickWebEngineProfile_setUrlRequestInterceptor".}
proc fcQQuickWebEngineProfile_urlSchemeHandler(self: pointer, param1: struct_miqt_string): pointer {.importc: "QQuickWebEngineProfile_urlSchemeHandler".}
proc fcQQuickWebEngineProfile_installUrlSchemeHandler(self: pointer, scheme: struct_miqt_string, param2: pointer): void {.importc: "QQuickWebEngineProfile_installUrlSchemeHandler".}
proc fcQQuickWebEngineProfile_removeUrlScheme(self: pointer, scheme: struct_miqt_string): void {.importc: "QQuickWebEngineProfile_removeUrlScheme".}
proc fcQQuickWebEngineProfile_removeUrlSchemeHandler(self: pointer, param1: pointer): void {.importc: "QQuickWebEngineProfile_removeUrlSchemeHandler".}
proc fcQQuickWebEngineProfile_removeAllUrlSchemeHandlers(self: pointer): void {.importc: "QQuickWebEngineProfile_removeAllUrlSchemeHandlers".}
proc fcQQuickWebEngineProfile_clearHttpCache(self: pointer): void {.importc: "QQuickWebEngineProfile_clearHttpCache".}
proc fcQQuickWebEngineProfile_setSpellCheckLanguages(self: pointer, languages: struct_miqt_array): void {.importc: "QQuickWebEngineProfile_setSpellCheckLanguages".}
proc fcQQuickWebEngineProfile_spellCheckLanguages(self: pointer): struct_miqt_array {.importc: "QQuickWebEngineProfile_spellCheckLanguages".}
proc fcQQuickWebEngineProfile_setSpellCheckEnabled(self: pointer, enabled: bool): void {.importc: "QQuickWebEngineProfile_setSpellCheckEnabled".}
proc fcQQuickWebEngineProfile_isSpellCheckEnabled(self: pointer): bool {.importc: "QQuickWebEngineProfile_isSpellCheckEnabled".}
proc fcQQuickWebEngineProfile_downloadPath(self: pointer): struct_miqt_string {.importc: "QQuickWebEngineProfile_downloadPath".}
proc fcQQuickWebEngineProfile_setDownloadPath(self: pointer, path: struct_miqt_string): void {.importc: "QQuickWebEngineProfile_setDownloadPath".}
proc fcQQuickWebEngineProfile_clientCertificateStore(self: pointer): pointer {.importc: "QQuickWebEngineProfile_clientCertificateStore".}
proc fcQQuickWebEngineProfile_defaultProfile(): pointer {.importc: "QQuickWebEngineProfile_defaultProfile".}
proc fcQQuickWebEngineProfile_storageNameChanged(self: pointer): void {.importc: "QQuickWebEngineProfile_storageNameChanged".}
proc fcQQuickWebEngineProfile_connect_storageNameChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_storageNameChanged".}
proc fcQQuickWebEngineProfile_offTheRecordChanged(self: pointer): void {.importc: "QQuickWebEngineProfile_offTheRecordChanged".}
proc fcQQuickWebEngineProfile_connect_offTheRecordChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_offTheRecordChanged".}
proc fcQQuickWebEngineProfile_persistentStoragePathChanged(self: pointer): void {.importc: "QQuickWebEngineProfile_persistentStoragePathChanged".}
proc fcQQuickWebEngineProfile_connect_persistentStoragePathChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_persistentStoragePathChanged".}
proc fcQQuickWebEngineProfile_cachePathChanged(self: pointer): void {.importc: "QQuickWebEngineProfile_cachePathChanged".}
proc fcQQuickWebEngineProfile_connect_cachePathChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_cachePathChanged".}
proc fcQQuickWebEngineProfile_httpUserAgentChanged(self: pointer): void {.importc: "QQuickWebEngineProfile_httpUserAgentChanged".}
proc fcQQuickWebEngineProfile_connect_httpUserAgentChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_httpUserAgentChanged".}
proc fcQQuickWebEngineProfile_httpCacheTypeChanged(self: pointer): void {.importc: "QQuickWebEngineProfile_httpCacheTypeChanged".}
proc fcQQuickWebEngineProfile_connect_httpCacheTypeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_httpCacheTypeChanged".}
proc fcQQuickWebEngineProfile_persistentCookiesPolicyChanged(self: pointer): void {.importc: "QQuickWebEngineProfile_persistentCookiesPolicyChanged".}
proc fcQQuickWebEngineProfile_connect_persistentCookiesPolicyChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_persistentCookiesPolicyChanged".}
proc fcQQuickWebEngineProfile_httpCacheMaximumSizeChanged(self: pointer): void {.importc: "QQuickWebEngineProfile_httpCacheMaximumSizeChanged".}
proc fcQQuickWebEngineProfile_connect_httpCacheMaximumSizeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_httpCacheMaximumSizeChanged".}
proc fcQQuickWebEngineProfile_httpAcceptLanguageChanged(self: pointer): void {.importc: "QQuickWebEngineProfile_httpAcceptLanguageChanged".}
proc fcQQuickWebEngineProfile_connect_httpAcceptLanguageChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_httpAcceptLanguageChanged".}
proc fcQQuickWebEngineProfile_spellCheckLanguagesChanged(self: pointer): void {.importc: "QQuickWebEngineProfile_spellCheckLanguagesChanged".}
proc fcQQuickWebEngineProfile_connect_spellCheckLanguagesChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_spellCheckLanguagesChanged".}
proc fcQQuickWebEngineProfile_spellCheckEnabledChanged(self: pointer): void {.importc: "QQuickWebEngineProfile_spellCheckEnabledChanged".}
proc fcQQuickWebEngineProfile_connect_spellCheckEnabledChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_spellCheckEnabledChanged".}
proc fcQQuickWebEngineProfile_downloadPathChanged(self: pointer): void {.importc: "QQuickWebEngineProfile_downloadPathChanged".}
proc fcQQuickWebEngineProfile_connect_downloadPathChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_downloadPathChanged".}
proc fcQQuickWebEngineProfile_presentNotification(self: pointer, notification: pointer): void {.importc: "QQuickWebEngineProfile_presentNotification".}
proc fcQQuickWebEngineProfile_connect_presentNotification(self: pointer, slot: int, callback: proc (slot: int, notification: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_presentNotification".}
proc fcQQuickWebEngineProfile_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickWebEngineProfile_tr2".}
proc fcQQuickWebEngineProfile_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickWebEngineProfile_tr3".}
proc fcQQuickWebEngineProfile_vtbl(self: pointer): pointer {.importc: "QQuickWebEngineProfile_vtbl".}
proc fcQQuickWebEngineProfile_vdata(self: pointer): pointer {.importc: "QQuickWebEngineProfile_vdata".}
type cQQuickWebEngineProfileVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickWebEngineProfile_virtualbase_metaObject(self: pointer): pointer {.importc: "QQuickWebEngineProfile_virtualbase_metaObject".}
proc fcQQuickWebEngineProfile_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickWebEngineProfile_virtualbase_metacast".}
proc fcQQuickWebEngineProfile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickWebEngineProfile_virtualbase_metacall".}
proc fcQQuickWebEngineProfile_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQuickWebEngineProfile_virtualbase_event".}
proc fcQQuickWebEngineProfile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickWebEngineProfile_virtualbase_eventFilter".}
proc fcQQuickWebEngineProfile_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickWebEngineProfile_virtualbase_timerEvent".}
proc fcQQuickWebEngineProfile_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickWebEngineProfile_virtualbase_childEvent".}
proc fcQQuickWebEngineProfile_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickWebEngineProfile_virtualbase_customEvent".}
proc fcQQuickWebEngineProfile_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickWebEngineProfile_virtualbase_connectNotify".}
proc fcQQuickWebEngineProfile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickWebEngineProfile_virtualbase_disconnectNotify".}
proc fcQQuickWebEngineProfile_protectedbase_sender(self: pointer): pointer {.importc: "QQuickWebEngineProfile_protectedbase_sender".}
proc fcQQuickWebEngineProfile_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQuickWebEngineProfile_protectedbase_senderSignalIndex".}
proc fcQQuickWebEngineProfile_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickWebEngineProfile_protectedbase_receivers".}
proc fcQQuickWebEngineProfile_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickWebEngineProfile_protectedbase_isSignalConnected".}
proc fcQQuickWebEngineProfile_new(vtbl, vdata: pointer): ptr cQQuickWebEngineProfile {.importc: "QQuickWebEngineProfile_new".}
proc fcQQuickWebEngineProfile_new2(vtbl, vdata: pointer, parent: pointer): ptr cQQuickWebEngineProfile {.importc: "QQuickWebEngineProfile_new2".}
proc fcQQuickWebEngineProfile_staticMetaObject(): pointer {.importc: "QQuickWebEngineProfile_staticMetaObject".}

proc metaObject*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickWebEngineProfile_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, param1: cstring): pointer =
  fcQQuickWebEngineProfile_metacast(self.h, param1)

proc metacall*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickWebEngineProfile_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile, s: cstring): string =
  let v_ms = fcQQuickWebEngineProfile_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc storageName*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): string =
  let v_ms = fcQQuickWebEngineProfile_storageName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setStorageName*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, name: openArray[char]): void =
  fcQQuickWebEngineProfile_setStorageName(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc isOffTheRecord*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): bool =
  fcQQuickWebEngineProfile_isOffTheRecord(self.h)

proc setOffTheRecord*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, offTheRecord: bool): void =
  fcQQuickWebEngineProfile_setOffTheRecord(self.h, offTheRecord)

proc persistentStoragePath*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): string =
  let v_ms = fcQQuickWebEngineProfile_persistentStoragePath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPersistentStoragePath*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, path: openArray[char]): void =
  fcQQuickWebEngineProfile_setPersistentStoragePath(self.h, struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc cachePath*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): string =
  let v_ms = fcQQuickWebEngineProfile_cachePath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setCachePath*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, path: openArray[char]): void =
  fcQQuickWebEngineProfile_setCachePath(self.h, struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc httpUserAgent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): string =
  let v_ms = fcQQuickWebEngineProfile_httpUserAgent(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setHttpUserAgent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, userAgent: openArray[char]): void =
  fcQQuickWebEngineProfile_setHttpUserAgent(self.h, struct_miqt_string(data: if len(userAgent) > 0: addr userAgent[0] else: nil, len: csize_t(len(userAgent))))

proc httpCacheType*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): cint =
  cint(fcQQuickWebEngineProfile_httpCacheType(self.h))

proc setHttpCacheType*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, httpCacheType: cint): void =
  fcQQuickWebEngineProfile_setHttpCacheType(self.h, cint(httpCacheType))

proc persistentCookiesPolicy*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): cint =
  cint(fcQQuickWebEngineProfile_persistentCookiesPolicy(self.h))

proc setPersistentCookiesPolicy*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, persistentCookiesPolicy: cint): void =
  fcQQuickWebEngineProfile_setPersistentCookiesPolicy(self.h, cint(persistentCookiesPolicy))

proc httpCacheMaximumSize*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): cint =
  fcQQuickWebEngineProfile_httpCacheMaximumSize(self.h)

proc setHttpCacheMaximumSize*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, maxSize: cint): void =
  fcQQuickWebEngineProfile_setHttpCacheMaximumSize(self.h, maxSize)

proc httpAcceptLanguage*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): string =
  let v_ms = fcQQuickWebEngineProfile_httpAcceptLanguage(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setHttpAcceptLanguage*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, httpAcceptLanguage: openArray[char]): void =
  fcQQuickWebEngineProfile_setHttpAcceptLanguage(self.h, struct_miqt_string(data: if len(httpAcceptLanguage) > 0: addr httpAcceptLanguage[0] else: nil, len: csize_t(len(httpAcceptLanguage))))

proc cookieStore*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): gen_qwebenginecookiestore_types.QWebEngineCookieStore =
  gen_qwebenginecookiestore_types.QWebEngineCookieStore(h: fcQQuickWebEngineProfile_cookieStore(self.h), owned: false)

proc setUrlRequestInterceptor*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, interceptor: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor): void =
  fcQQuickWebEngineProfile_setUrlRequestInterceptor(self.h, interceptor.h)

proc urlSchemeHandler*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, param1: openArray[byte]): gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler =
  gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler(h: fcQQuickWebEngineProfile_urlSchemeHandler(self.h, struct_miqt_string(data: cast[cstring](if len(param1) == 0: nil else: unsafeAddr param1[0]), len: csize_t(len(param1)))), owned: false)

proc installUrlSchemeHandler*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, scheme: openArray[byte], param2: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler): void =
  fcQQuickWebEngineProfile_installUrlSchemeHandler(self.h, struct_miqt_string(data: cast[cstring](if len(scheme) == 0: nil else: unsafeAddr scheme[0]), len: csize_t(len(scheme))), param2.h)

proc removeUrlScheme*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, scheme: openArray[byte]): void =
  fcQQuickWebEngineProfile_removeUrlScheme(self.h, struct_miqt_string(data: cast[cstring](if len(scheme) == 0: nil else: unsafeAddr scheme[0]), len: csize_t(len(scheme))))

proc removeUrlSchemeHandler*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, param1: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler): void =
  fcQQuickWebEngineProfile_removeUrlSchemeHandler(self.h, param1.h)

proc removeAllUrlSchemeHandlers*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): void =
  fcQQuickWebEngineProfile_removeAllUrlSchemeHandlers(self.h)

proc clearHttpCache*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): void =
  fcQQuickWebEngineProfile_clearHttpCache(self.h)

proc setSpellCheckLanguages*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, languages: openArray[string]): void =
  var languages_CArray = newSeq[struct_miqt_string](len(languages))
  for i in 0..<len(languages):
    languages_CArray[i] = struct_miqt_string(data: if len(languages[i]) > 0: addr languages[i][0] else: nil, len: csize_t(len(languages[i])))

  fcQQuickWebEngineProfile_setSpellCheckLanguages(self.h, struct_miqt_array(len: csize_t(len(languages)), data: if len(languages) == 0: nil else: addr(languages_CArray[0])))

proc spellCheckLanguages*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): seq[string] =
  var v_ma = fcQQuickWebEngineProfile_spellCheckLanguages(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setSpellCheckEnabled*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, enabled: bool): void =
  fcQQuickWebEngineProfile_setSpellCheckEnabled(self.h, enabled)

proc isSpellCheckEnabled*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): bool =
  fcQQuickWebEngineProfile_isSpellCheckEnabled(self.h)

proc downloadPath*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): string =
  let v_ms = fcQQuickWebEngineProfile_downloadPath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setDownloadPath*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, path: openArray[char]): void =
  fcQQuickWebEngineProfile_setDownloadPath(self.h, struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc clientCertificateStore*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): gen_qwebengineclientcertificatestore_types.QWebEngineClientCertificateStore =
  gen_qwebengineclientcertificatestore_types.QWebEngineClientCertificateStore(h: fcQQuickWebEngineProfile_clientCertificateStore(self.h), owned: false)

proc defaultProfile*(_: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile): gen_qquickwebengineprofile_types.QQuickWebEngineProfile =
  gen_qquickwebengineprofile_types.QQuickWebEngineProfile(h: fcQQuickWebEngineProfile_defaultProfile(), owned: false)

proc storageNameChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): void =
  fcQQuickWebEngineProfile_storageNameChanged(self.h)

type QQuickWebEngineProfilestorageNameChangedSlot* = proc()
proc cQQuickWebEngineProfile_slot_callback_storageNameChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilestorageNameChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickWebEngineProfile_slot_callback_storageNameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilestorageNameChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstorageNameChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilestorageNameChangedSlot) =
  var tmp = new QQuickWebEngineProfilestorageNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_storageNameChanged(self.h, cast[int](addr tmp[]), cQQuickWebEngineProfile_slot_callback_storageNameChanged, cQQuickWebEngineProfile_slot_callback_storageNameChanged_release)

proc offTheRecordChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): void =
  fcQQuickWebEngineProfile_offTheRecordChanged(self.h)

type QQuickWebEngineProfileoffTheRecordChangedSlot* = proc()
proc cQQuickWebEngineProfile_slot_callback_offTheRecordChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfileoffTheRecordChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickWebEngineProfile_slot_callback_offTheRecordChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfileoffTheRecordChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onoffTheRecordChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfileoffTheRecordChangedSlot) =
  var tmp = new QQuickWebEngineProfileoffTheRecordChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_offTheRecordChanged(self.h, cast[int](addr tmp[]), cQQuickWebEngineProfile_slot_callback_offTheRecordChanged, cQQuickWebEngineProfile_slot_callback_offTheRecordChanged_release)

proc persistentStoragePathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): void =
  fcQQuickWebEngineProfile_persistentStoragePathChanged(self.h)

type QQuickWebEngineProfilepersistentStoragePathChangedSlot* = proc()
proc cQQuickWebEngineProfile_slot_callback_persistentStoragePathChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilepersistentStoragePathChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickWebEngineProfile_slot_callback_persistentStoragePathChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilepersistentStoragePathChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpersistentStoragePathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilepersistentStoragePathChangedSlot) =
  var tmp = new QQuickWebEngineProfilepersistentStoragePathChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_persistentStoragePathChanged(self.h, cast[int](addr tmp[]), cQQuickWebEngineProfile_slot_callback_persistentStoragePathChanged, cQQuickWebEngineProfile_slot_callback_persistentStoragePathChanged_release)

proc cachePathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): void =
  fcQQuickWebEngineProfile_cachePathChanged(self.h)

type QQuickWebEngineProfilecachePathChangedSlot* = proc()
proc cQQuickWebEngineProfile_slot_callback_cachePathChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilecachePathChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickWebEngineProfile_slot_callback_cachePathChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilecachePathChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncachePathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilecachePathChangedSlot) =
  var tmp = new QQuickWebEngineProfilecachePathChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_cachePathChanged(self.h, cast[int](addr tmp[]), cQQuickWebEngineProfile_slot_callback_cachePathChanged, cQQuickWebEngineProfile_slot_callback_cachePathChanged_release)

proc httpUserAgentChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): void =
  fcQQuickWebEngineProfile_httpUserAgentChanged(self.h)

type QQuickWebEngineProfilehttpUserAgentChangedSlot* = proc()
proc cQQuickWebEngineProfile_slot_callback_httpUserAgentChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilehttpUserAgentChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickWebEngineProfile_slot_callback_httpUserAgentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilehttpUserAgentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhttpUserAgentChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilehttpUserAgentChangedSlot) =
  var tmp = new QQuickWebEngineProfilehttpUserAgentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_httpUserAgentChanged(self.h, cast[int](addr tmp[]), cQQuickWebEngineProfile_slot_callback_httpUserAgentChanged, cQQuickWebEngineProfile_slot_callback_httpUserAgentChanged_release)

proc httpCacheTypeChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): void =
  fcQQuickWebEngineProfile_httpCacheTypeChanged(self.h)

type QQuickWebEngineProfilehttpCacheTypeChangedSlot* = proc()
proc cQQuickWebEngineProfile_slot_callback_httpCacheTypeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilehttpCacheTypeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickWebEngineProfile_slot_callback_httpCacheTypeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilehttpCacheTypeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhttpCacheTypeChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilehttpCacheTypeChangedSlot) =
  var tmp = new QQuickWebEngineProfilehttpCacheTypeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_httpCacheTypeChanged(self.h, cast[int](addr tmp[]), cQQuickWebEngineProfile_slot_callback_httpCacheTypeChanged, cQQuickWebEngineProfile_slot_callback_httpCacheTypeChanged_release)

proc persistentCookiesPolicyChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): void =
  fcQQuickWebEngineProfile_persistentCookiesPolicyChanged(self.h)

type QQuickWebEngineProfilepersistentCookiesPolicyChangedSlot* = proc()
proc cQQuickWebEngineProfile_slot_callback_persistentCookiesPolicyChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilepersistentCookiesPolicyChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickWebEngineProfile_slot_callback_persistentCookiesPolicyChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilepersistentCookiesPolicyChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpersistentCookiesPolicyChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilepersistentCookiesPolicyChangedSlot) =
  var tmp = new QQuickWebEngineProfilepersistentCookiesPolicyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_persistentCookiesPolicyChanged(self.h, cast[int](addr tmp[]), cQQuickWebEngineProfile_slot_callback_persistentCookiesPolicyChanged, cQQuickWebEngineProfile_slot_callback_persistentCookiesPolicyChanged_release)

proc httpCacheMaximumSizeChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): void =
  fcQQuickWebEngineProfile_httpCacheMaximumSizeChanged(self.h)

type QQuickWebEngineProfilehttpCacheMaximumSizeChangedSlot* = proc()
proc cQQuickWebEngineProfile_slot_callback_httpCacheMaximumSizeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilehttpCacheMaximumSizeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickWebEngineProfile_slot_callback_httpCacheMaximumSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilehttpCacheMaximumSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhttpCacheMaximumSizeChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilehttpCacheMaximumSizeChangedSlot) =
  var tmp = new QQuickWebEngineProfilehttpCacheMaximumSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_httpCacheMaximumSizeChanged(self.h, cast[int](addr tmp[]), cQQuickWebEngineProfile_slot_callback_httpCacheMaximumSizeChanged, cQQuickWebEngineProfile_slot_callback_httpCacheMaximumSizeChanged_release)

proc httpAcceptLanguageChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): void =
  fcQQuickWebEngineProfile_httpAcceptLanguageChanged(self.h)

type QQuickWebEngineProfilehttpAcceptLanguageChangedSlot* = proc()
proc cQQuickWebEngineProfile_slot_callback_httpAcceptLanguageChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilehttpAcceptLanguageChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickWebEngineProfile_slot_callback_httpAcceptLanguageChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilehttpAcceptLanguageChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhttpAcceptLanguageChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilehttpAcceptLanguageChangedSlot) =
  var tmp = new QQuickWebEngineProfilehttpAcceptLanguageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_httpAcceptLanguageChanged(self.h, cast[int](addr tmp[]), cQQuickWebEngineProfile_slot_callback_httpAcceptLanguageChanged, cQQuickWebEngineProfile_slot_callback_httpAcceptLanguageChanged_release)

proc spellCheckLanguagesChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): void =
  fcQQuickWebEngineProfile_spellCheckLanguagesChanged(self.h)

type QQuickWebEngineProfilespellCheckLanguagesChangedSlot* = proc()
proc cQQuickWebEngineProfile_slot_callback_spellCheckLanguagesChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilespellCheckLanguagesChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickWebEngineProfile_slot_callback_spellCheckLanguagesChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilespellCheckLanguagesChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onspellCheckLanguagesChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilespellCheckLanguagesChangedSlot) =
  var tmp = new QQuickWebEngineProfilespellCheckLanguagesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_spellCheckLanguagesChanged(self.h, cast[int](addr tmp[]), cQQuickWebEngineProfile_slot_callback_spellCheckLanguagesChanged, cQQuickWebEngineProfile_slot_callback_spellCheckLanguagesChanged_release)

proc spellCheckEnabledChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): void =
  fcQQuickWebEngineProfile_spellCheckEnabledChanged(self.h)

type QQuickWebEngineProfilespellCheckEnabledChangedSlot* = proc()
proc cQQuickWebEngineProfile_slot_callback_spellCheckEnabledChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilespellCheckEnabledChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickWebEngineProfile_slot_callback_spellCheckEnabledChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilespellCheckEnabledChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onspellCheckEnabledChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilespellCheckEnabledChangedSlot) =
  var tmp = new QQuickWebEngineProfilespellCheckEnabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_spellCheckEnabledChanged(self.h, cast[int](addr tmp[]), cQQuickWebEngineProfile_slot_callback_spellCheckEnabledChanged, cQQuickWebEngineProfile_slot_callback_spellCheckEnabledChanged_release)

proc downloadPathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): void =
  fcQQuickWebEngineProfile_downloadPathChanged(self.h)

type QQuickWebEngineProfiledownloadPathChangedSlot* = proc()
proc cQQuickWebEngineProfile_slot_callback_downloadPathChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfiledownloadPathChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickWebEngineProfile_slot_callback_downloadPathChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfiledownloadPathChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondownloadPathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfiledownloadPathChangedSlot) =
  var tmp = new QQuickWebEngineProfiledownloadPathChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_downloadPathChanged(self.h, cast[int](addr tmp[]), cQQuickWebEngineProfile_slot_callback_downloadPathChanged, cQQuickWebEngineProfile_slot_callback_downloadPathChanged_release)

proc presentNotification*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, notification: gen_qwebenginenotification_types.QWebEngineNotification): void =
  fcQQuickWebEngineProfile_presentNotification(self.h, notification.h)

type QQuickWebEngineProfilepresentNotificationSlot* = proc(notification: gen_qwebenginenotification_types.QWebEngineNotification)
proc cQQuickWebEngineProfile_slot_callback_presentNotification(slot: int, notification: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilepresentNotificationSlot](cast[pointer](slot))
  let slotval1 = gen_qwebenginenotification_types.QWebEngineNotification(h: notification, owned: false)

  nimfunc[](slotval1)

proc cQQuickWebEngineProfile_slot_callback_presentNotification_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilepresentNotificationSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpresentNotification*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilepresentNotificationSlot) =
  var tmp = new QQuickWebEngineProfilepresentNotificationSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_presentNotification(self.h, cast[int](addr tmp[]), cQQuickWebEngineProfile_slot_callback_presentNotification, cQQuickWebEngineProfile_slot_callback_presentNotification_release)

proc tr*(_: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile, s: cstring, c: cstring): string =
  let v_ms = fcQQuickWebEngineProfile_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickWebEngineProfile_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QQuickWebEngineProfilemetaObjectProc* = proc(self: QQuickWebEngineProfile): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQuickWebEngineProfilemetacastProc* = proc(self: QQuickWebEngineProfile, param1: cstring): pointer {.raises: [], gcsafe.}
type QQuickWebEngineProfilemetacallProc* = proc(self: QQuickWebEngineProfile, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQuickWebEngineProfileeventProc* = proc(self: QQuickWebEngineProfile, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickWebEngineProfileeventFilterProc* = proc(self: QQuickWebEngineProfile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickWebEngineProfiletimerEventProc* = proc(self: QQuickWebEngineProfile, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQuickWebEngineProfilechildEventProc* = proc(self: QQuickWebEngineProfile, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickWebEngineProfilecustomEventProc* = proc(self: QQuickWebEngineProfile, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickWebEngineProfileconnectNotifyProc* = proc(self: QQuickWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickWebEngineProfiledisconnectNotifyProc* = proc(self: QQuickWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickWebEngineProfileVTable* {.inheritable, pure.} = object
  vtbl: cQQuickWebEngineProfileVTable
  metaObject*: QQuickWebEngineProfilemetaObjectProc
  metacast*: QQuickWebEngineProfilemetacastProc
  metacall*: QQuickWebEngineProfilemetacallProc
  event*: QQuickWebEngineProfileeventProc
  eventFilter*: QQuickWebEngineProfileeventFilterProc
  timerEvent*: QQuickWebEngineProfiletimerEventProc
  childEvent*: QQuickWebEngineProfilechildEventProc
  customEvent*: QQuickWebEngineProfilecustomEventProc
  connectNotify*: QQuickWebEngineProfileconnectNotifyProc
  disconnectNotify*: QQuickWebEngineProfiledisconnectNotifyProc
proc QQuickWebEngineProfilemetaObject*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickWebEngineProfile_virtualbase_metaObject(self.h), owned: false)

proc cQQuickWebEngineProfile_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](fcQQuickWebEngineProfile_vdata(self))
  let self = QQuickWebEngineProfile(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQuickWebEngineProfilemetacast*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, param1: cstring): pointer =
  fcQQuickWebEngineProfile_virtualbase_metacast(self.h, param1)

proc cQQuickWebEngineProfile_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](fcQQuickWebEngineProfile_vdata(self))
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickWebEngineProfilemetacall*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickWebEngineProfile_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQQuickWebEngineProfile_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](fcQQuickWebEngineProfile_vdata(self))
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQuickWebEngineProfileevent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickWebEngineProfile_virtualbase_event(self.h, event.h)

proc cQQuickWebEngineProfile_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](fcQQuickWebEngineProfile_vdata(self))
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickWebEngineProfileeventFilter*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickWebEngineProfile_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQQuickWebEngineProfile_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](fcQQuickWebEngineProfile_vdata(self))
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickWebEngineProfiletimerEvent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickWebEngineProfile_virtualbase_timerEvent(self.h, event.h)

proc cQQuickWebEngineProfile_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](fcQQuickWebEngineProfile_vdata(self))
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQuickWebEngineProfilechildEvent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickWebEngineProfile_virtualbase_childEvent(self.h, event.h)

proc cQQuickWebEngineProfile_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](fcQQuickWebEngineProfile_vdata(self))
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQuickWebEngineProfilecustomEvent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickWebEngineProfile_virtualbase_customEvent(self.h, event.h)

proc cQQuickWebEngineProfile_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](fcQQuickWebEngineProfile_vdata(self))
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQuickWebEngineProfileconnectNotify*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickWebEngineProfile_virtualbase_connectNotify(self.h, signal.h)

proc cQQuickWebEngineProfile_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](fcQQuickWebEngineProfile_vdata(self))
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQuickWebEngineProfiledisconnectNotify*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickWebEngineProfile_virtualbase_disconnectNotify(self.h, signal.h)

proc cQQuickWebEngineProfile_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](fcQQuickWebEngineProfile_vdata(self))
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQuickWebEngineProfile* {.inheritable.} = ref object of QQuickWebEngineProfile
  vtbl*: cQQuickWebEngineProfileVTable
method metaObject*(self: VirtualQQuickWebEngineProfile): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQuickWebEngineProfilemetaObject(self[])
proc cQQuickWebEngineProfile_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickWebEngineProfile](fcQQuickWebEngineProfile_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQuickWebEngineProfile, param1: cstring): pointer {.base.} =
  QQuickWebEngineProfilemetacast(self[], param1)
proc cQQuickWebEngineProfile_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickWebEngineProfile](fcQQuickWebEngineProfile_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQuickWebEngineProfile, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQuickWebEngineProfilemetacall(self[], param1, param2, param3)
proc cQQuickWebEngineProfile_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQuickWebEngineProfile](fcQQuickWebEngineProfile_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQQuickWebEngineProfile, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickWebEngineProfileevent(self[], event)
proc cQQuickWebEngineProfile_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickWebEngineProfile](fcQQuickWebEngineProfile_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQQuickWebEngineProfile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickWebEngineProfileeventFilter(self[], watched, event)
proc cQQuickWebEngineProfile_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickWebEngineProfile](fcQQuickWebEngineProfile_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQuickWebEngineProfile, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQuickWebEngineProfiletimerEvent(self[], event)
proc cQQuickWebEngineProfile_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickWebEngineProfile](fcQQuickWebEngineProfile_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQQuickWebEngineProfile, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQuickWebEngineProfilechildEvent(self[], event)
proc cQQuickWebEngineProfile_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickWebEngineProfile](fcQQuickWebEngineProfile_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQQuickWebEngineProfile, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQuickWebEngineProfilecustomEvent(self[], event)
proc cQQuickWebEngineProfile_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickWebEngineProfile](fcQQuickWebEngineProfile_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQQuickWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickWebEngineProfileconnectNotify(self[], signal)
proc cQQuickWebEngineProfile_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickWebEngineProfile](fcQQuickWebEngineProfile_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQuickWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickWebEngineProfiledisconnectNotify(self[], signal)
proc cQQuickWebEngineProfile_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickWebEngineProfile](fcQQuickWebEngineProfile_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickWebEngineProfile_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile): cint =
  fcQQuickWebEngineProfile_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, signal: cstring): cint =
  fcQQuickWebEngineProfile_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickWebEngineProfile_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile,
    vtbl: ref QQuickWebEngineProfileVTable = nil): gen_qquickwebengineprofile_types.QQuickWebEngineProfile =
  let vtbl = if vtbl == nil: new QQuickWebEngineProfileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickWebEngineProfileVTable](fcQQuickWebEngineProfile_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQuickWebEngineProfile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQuickWebEngineProfile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQuickWebEngineProfile_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQuickWebEngineProfile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQuickWebEngineProfile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQuickWebEngineProfile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQuickWebEngineProfile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQuickWebEngineProfile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQuickWebEngineProfile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQuickWebEngineProfile_vtable_callback_disconnectNotify
  gen_qquickwebengineprofile_types.QQuickWebEngineProfile(h: fcQQuickWebEngineProfile_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQuickWebEngineProfileVTable = nil): gen_qquickwebengineprofile_types.QQuickWebEngineProfile =
  let vtbl = if vtbl == nil: new QQuickWebEngineProfileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickWebEngineProfileVTable](fcQQuickWebEngineProfile_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQuickWebEngineProfile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQuickWebEngineProfile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQuickWebEngineProfile_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQuickWebEngineProfile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQuickWebEngineProfile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQuickWebEngineProfile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQuickWebEngineProfile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQuickWebEngineProfile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQuickWebEngineProfile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQuickWebEngineProfile_vtable_callback_disconnectNotify
  gen_qquickwebengineprofile_types.QQuickWebEngineProfile(h: fcQQuickWebEngineProfile_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQQuickWebEngineProfile_mvtbl = cQQuickWebEngineProfileVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQuickWebEngineProfile()[])](self.fcQQuickWebEngineProfile_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQQuickWebEngineProfile_method_callback_metaObject,
  metacast: cQQuickWebEngineProfile_method_callback_metacast,
  metacall: cQQuickWebEngineProfile_method_callback_metacall,
  event: cQQuickWebEngineProfile_method_callback_event,
  eventFilter: cQQuickWebEngineProfile_method_callback_eventFilter,
  timerEvent: cQQuickWebEngineProfile_method_callback_timerEvent,
  childEvent: cQQuickWebEngineProfile_method_callback_childEvent,
  customEvent: cQQuickWebEngineProfile_method_callback_customEvent,
  connectNotify: cQQuickWebEngineProfile_method_callback_connectNotify,
  disconnectNotify: cQQuickWebEngineProfile_method_callback_disconnectNotify,
)
proc create*(T: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile,
    inst: VirtualQQuickWebEngineProfile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickWebEngineProfile_new(addr(cQQuickWebEngineProfile_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile,
    parent: gen_qobject_types.QObject,
    inst: VirtualQQuickWebEngineProfile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickWebEngineProfile_new2(addr(cQQuickWebEngineProfile_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickWebEngineProfile_staticMetaObject())
