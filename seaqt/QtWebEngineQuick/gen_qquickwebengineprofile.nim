import ./Qt6WebEngineQuick_libs

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
proc fcQQuickWebEngineProfile_connect_storageNameChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_storageNameChanged".}
proc fcQQuickWebEngineProfile_offTheRecordChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_offTheRecordChanged".}
proc fcQQuickWebEngineProfile_connect_offTheRecordChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_offTheRecordChanged".}
proc fcQQuickWebEngineProfile_persistentStoragePathChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_persistentStoragePathChanged".}
proc fcQQuickWebEngineProfile_connect_persistentStoragePathChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_persistentStoragePathChanged".}
proc fcQQuickWebEngineProfile_cachePathChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_cachePathChanged".}
proc fcQQuickWebEngineProfile_connect_cachePathChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_cachePathChanged".}
proc fcQQuickWebEngineProfile_httpUserAgentChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_httpUserAgentChanged".}
proc fcQQuickWebEngineProfile_connect_httpUserAgentChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_httpUserAgentChanged".}
proc fcQQuickWebEngineProfile_httpCacheTypeChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_httpCacheTypeChanged".}
proc fcQQuickWebEngineProfile_connect_httpCacheTypeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_httpCacheTypeChanged".}
proc fcQQuickWebEngineProfile_persistentCookiesPolicyChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_persistentCookiesPolicyChanged".}
proc fcQQuickWebEngineProfile_connect_persistentCookiesPolicyChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_persistentCookiesPolicyChanged".}
proc fcQQuickWebEngineProfile_httpCacheMaximumSizeChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_httpCacheMaximumSizeChanged".}
proc fcQQuickWebEngineProfile_connect_httpCacheMaximumSizeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_httpCacheMaximumSizeChanged".}
proc fcQQuickWebEngineProfile_httpAcceptLanguageChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_httpAcceptLanguageChanged".}
proc fcQQuickWebEngineProfile_connect_httpAcceptLanguageChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_httpAcceptLanguageChanged".}
proc fcQQuickWebEngineProfile_spellCheckLanguagesChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_spellCheckLanguagesChanged".}
proc fcQQuickWebEngineProfile_connect_spellCheckLanguagesChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_spellCheckLanguagesChanged".}
proc fcQQuickWebEngineProfile_spellCheckEnabledChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_spellCheckEnabledChanged".}
proc fcQQuickWebEngineProfile_connect_spellCheckEnabledChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_spellCheckEnabledChanged".}
proc fcQQuickWebEngineProfile_downloadPathChanged(self: pointer, ): void {.importc: "QQuickWebEngineProfile_downloadPathChanged".}
proc fcQQuickWebEngineProfile_connect_downloadPathChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_downloadPathChanged".}
proc fcQQuickWebEngineProfile_presentNotification(self: pointer, notification: pointer): void {.importc: "QQuickWebEngineProfile_presentNotification".}
proc fcQQuickWebEngineProfile_connect_presentNotification(self: pointer, slot: int, callback: proc (slot: int, notification: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickWebEngineProfile_connect_presentNotification".}
proc fcQQuickWebEngineProfile_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickWebEngineProfile_tr2".}
proc fcQQuickWebEngineProfile_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickWebEngineProfile_tr3".}
type cQQuickWebEngineProfileVTable = object
  destructor*: proc(vtbl: ptr cQQuickWebEngineProfileVTable, self: ptr cQQuickWebEngineProfile) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickWebEngineProfile_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQuickWebEngineProfile_virtualbase_metaObject".}
proc fcQQuickWebEngineProfile_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickWebEngineProfile_virtualbase_metacast".}
proc fcQQuickWebEngineProfile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickWebEngineProfile_virtualbase_metacall".}
proc fcQQuickWebEngineProfile_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQuickWebEngineProfile_virtualbase_event".}
proc fcQQuickWebEngineProfile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickWebEngineProfile_virtualbase_eventFilter".}
proc fcQQuickWebEngineProfile_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickWebEngineProfile_virtualbase_timerEvent".}
proc fcQQuickWebEngineProfile_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickWebEngineProfile_virtualbase_childEvent".}
proc fcQQuickWebEngineProfile_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickWebEngineProfile_virtualbase_customEvent".}
proc fcQQuickWebEngineProfile_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickWebEngineProfile_virtualbase_connectNotify".}
proc fcQQuickWebEngineProfile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickWebEngineProfile_virtualbase_disconnectNotify".}
proc fcQQuickWebEngineProfile_protectedbase_sender(self: pointer, ): pointer {.importc: "QQuickWebEngineProfile_protectedbase_sender".}
proc fcQQuickWebEngineProfile_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QQuickWebEngineProfile_protectedbase_senderSignalIndex".}
proc fcQQuickWebEngineProfile_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickWebEngineProfile_protectedbase_receivers".}
proc fcQQuickWebEngineProfile_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickWebEngineProfile_protectedbase_isSignalConnected".}
proc fcQQuickWebEngineProfile_new(vtbl: pointer, ): ptr cQQuickWebEngineProfile {.importc: "QQuickWebEngineProfile_new".}
proc fcQQuickWebEngineProfile_new2(vtbl: pointer, parent: pointer): ptr cQQuickWebEngineProfile {.importc: "QQuickWebEngineProfile_new2".}
proc fcQQuickWebEngineProfile_staticMetaObject(): pointer {.importc: "QQuickWebEngineProfile_staticMetaObject".}
proc fcQQuickWebEngineProfile_delete(self: pointer) {.importc: "QQuickWebEngineProfile_delete".}

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
  c_free(v_ma.data)
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
proc miqt_exec_callback_cQQuickWebEngineProfile_storageNameChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilestorageNameChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWebEngineProfile_storageNameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilestorageNameChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstorageNameChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilestorageNameChangedSlot) =
  var tmp = new QQuickWebEngineProfilestorageNameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_storageNameChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWebEngineProfile_storageNameChanged, miqt_exec_callback_cQQuickWebEngineProfile_storageNameChanged_release)

proc offTheRecordChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_offTheRecordChanged(self.h)

type QQuickWebEngineProfileoffTheRecordChangedSlot* = proc()
proc miqt_exec_callback_cQQuickWebEngineProfile_offTheRecordChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfileoffTheRecordChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWebEngineProfile_offTheRecordChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfileoffTheRecordChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onoffTheRecordChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfileoffTheRecordChangedSlot) =
  var tmp = new QQuickWebEngineProfileoffTheRecordChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_offTheRecordChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWebEngineProfile_offTheRecordChanged, miqt_exec_callback_cQQuickWebEngineProfile_offTheRecordChanged_release)

proc persistentStoragePathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_persistentStoragePathChanged(self.h)

type QQuickWebEngineProfilepersistentStoragePathChangedSlot* = proc()
proc miqt_exec_callback_cQQuickWebEngineProfile_persistentStoragePathChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilepersistentStoragePathChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWebEngineProfile_persistentStoragePathChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilepersistentStoragePathChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpersistentStoragePathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilepersistentStoragePathChangedSlot) =
  var tmp = new QQuickWebEngineProfilepersistentStoragePathChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_persistentStoragePathChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWebEngineProfile_persistentStoragePathChanged, miqt_exec_callback_cQQuickWebEngineProfile_persistentStoragePathChanged_release)

proc cachePathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_cachePathChanged(self.h)

type QQuickWebEngineProfilecachePathChangedSlot* = proc()
proc miqt_exec_callback_cQQuickWebEngineProfile_cachePathChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilecachePathChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWebEngineProfile_cachePathChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilecachePathChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncachePathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilecachePathChangedSlot) =
  var tmp = new QQuickWebEngineProfilecachePathChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_cachePathChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWebEngineProfile_cachePathChanged, miqt_exec_callback_cQQuickWebEngineProfile_cachePathChanged_release)

proc httpUserAgentChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_httpUserAgentChanged(self.h)

type QQuickWebEngineProfilehttpUserAgentChangedSlot* = proc()
proc miqt_exec_callback_cQQuickWebEngineProfile_httpUserAgentChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilehttpUserAgentChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWebEngineProfile_httpUserAgentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilehttpUserAgentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhttpUserAgentChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilehttpUserAgentChangedSlot) =
  var tmp = new QQuickWebEngineProfilehttpUserAgentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_httpUserAgentChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWebEngineProfile_httpUserAgentChanged, miqt_exec_callback_cQQuickWebEngineProfile_httpUserAgentChanged_release)

proc httpCacheTypeChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_httpCacheTypeChanged(self.h)

type QQuickWebEngineProfilehttpCacheTypeChangedSlot* = proc()
proc miqt_exec_callback_cQQuickWebEngineProfile_httpCacheTypeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilehttpCacheTypeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWebEngineProfile_httpCacheTypeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilehttpCacheTypeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhttpCacheTypeChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilehttpCacheTypeChangedSlot) =
  var tmp = new QQuickWebEngineProfilehttpCacheTypeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_httpCacheTypeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWebEngineProfile_httpCacheTypeChanged, miqt_exec_callback_cQQuickWebEngineProfile_httpCacheTypeChanged_release)

proc persistentCookiesPolicyChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_persistentCookiesPolicyChanged(self.h)

type QQuickWebEngineProfilepersistentCookiesPolicyChangedSlot* = proc()
proc miqt_exec_callback_cQQuickWebEngineProfile_persistentCookiesPolicyChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilepersistentCookiesPolicyChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWebEngineProfile_persistentCookiesPolicyChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilepersistentCookiesPolicyChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpersistentCookiesPolicyChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilepersistentCookiesPolicyChangedSlot) =
  var tmp = new QQuickWebEngineProfilepersistentCookiesPolicyChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_persistentCookiesPolicyChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWebEngineProfile_persistentCookiesPolicyChanged, miqt_exec_callback_cQQuickWebEngineProfile_persistentCookiesPolicyChanged_release)

proc httpCacheMaximumSizeChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_httpCacheMaximumSizeChanged(self.h)

type QQuickWebEngineProfilehttpCacheMaximumSizeChangedSlot* = proc()
proc miqt_exec_callback_cQQuickWebEngineProfile_httpCacheMaximumSizeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilehttpCacheMaximumSizeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWebEngineProfile_httpCacheMaximumSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilehttpCacheMaximumSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhttpCacheMaximumSizeChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilehttpCacheMaximumSizeChangedSlot) =
  var tmp = new QQuickWebEngineProfilehttpCacheMaximumSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_httpCacheMaximumSizeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWebEngineProfile_httpCacheMaximumSizeChanged, miqt_exec_callback_cQQuickWebEngineProfile_httpCacheMaximumSizeChanged_release)

proc httpAcceptLanguageChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_httpAcceptLanguageChanged(self.h)

type QQuickWebEngineProfilehttpAcceptLanguageChangedSlot* = proc()
proc miqt_exec_callback_cQQuickWebEngineProfile_httpAcceptLanguageChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilehttpAcceptLanguageChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWebEngineProfile_httpAcceptLanguageChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilehttpAcceptLanguageChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhttpAcceptLanguageChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilehttpAcceptLanguageChangedSlot) =
  var tmp = new QQuickWebEngineProfilehttpAcceptLanguageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_httpAcceptLanguageChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWebEngineProfile_httpAcceptLanguageChanged, miqt_exec_callback_cQQuickWebEngineProfile_httpAcceptLanguageChanged_release)

proc spellCheckLanguagesChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_spellCheckLanguagesChanged(self.h)

type QQuickWebEngineProfilespellCheckLanguagesChangedSlot* = proc()
proc miqt_exec_callback_cQQuickWebEngineProfile_spellCheckLanguagesChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilespellCheckLanguagesChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWebEngineProfile_spellCheckLanguagesChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilespellCheckLanguagesChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onspellCheckLanguagesChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilespellCheckLanguagesChangedSlot) =
  var tmp = new QQuickWebEngineProfilespellCheckLanguagesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_spellCheckLanguagesChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWebEngineProfile_spellCheckLanguagesChanged, miqt_exec_callback_cQQuickWebEngineProfile_spellCheckLanguagesChanged_release)

proc spellCheckEnabledChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_spellCheckEnabledChanged(self.h)

type QQuickWebEngineProfilespellCheckEnabledChangedSlot* = proc()
proc miqt_exec_callback_cQQuickWebEngineProfile_spellCheckEnabledChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilespellCheckEnabledChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWebEngineProfile_spellCheckEnabledChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilespellCheckEnabledChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onspellCheckEnabledChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilespellCheckEnabledChangedSlot) =
  var tmp = new QQuickWebEngineProfilespellCheckEnabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_spellCheckEnabledChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWebEngineProfile_spellCheckEnabledChanged, miqt_exec_callback_cQQuickWebEngineProfile_spellCheckEnabledChanged_release)

proc downloadPathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): void =
  fcQQuickWebEngineProfile_downloadPathChanged(self.h)

type QQuickWebEngineProfiledownloadPathChangedSlot* = proc()
proc miqt_exec_callback_cQQuickWebEngineProfile_downloadPathChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfiledownloadPathChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQuickWebEngineProfile_downloadPathChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfiledownloadPathChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondownloadPathChanged*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfiledownloadPathChangedSlot) =
  var tmp = new QQuickWebEngineProfiledownloadPathChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_downloadPathChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWebEngineProfile_downloadPathChanged, miqt_exec_callback_cQQuickWebEngineProfile_downloadPathChanged_release)

proc presentNotification*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, notification: gen_qwebenginenotification_types.QWebEngineNotification): void =
  fcQQuickWebEngineProfile_presentNotification(self.h, notification.h)

type QQuickWebEngineProfilepresentNotificationSlot* = proc(notification: gen_qwebenginenotification_types.QWebEngineNotification)
proc miqt_exec_callback_cQQuickWebEngineProfile_presentNotification(slot: int, notification: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QQuickWebEngineProfilepresentNotificationSlot](cast[pointer](slot))
  let slotval1 = gen_qwebenginenotification_types.QWebEngineNotification(h: notification)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickWebEngineProfile_presentNotification_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickWebEngineProfilepresentNotificationSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpresentNotification*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, slot: QQuickWebEngineProfilepresentNotificationSlot) =
  var tmp = new QQuickWebEngineProfilepresentNotificationSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineProfile_connect_presentNotification(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQuickWebEngineProfile_presentNotification, miqt_exec_callback_cQQuickWebEngineProfile_presentNotification_release)

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
type QQuickWebEngineProfileVTable* = object
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
proc QQuickWebEngineProfilemetaObject*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickWebEngineProfile_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQQuickWebEngineProfile_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](vtbl)
  let self = QQuickWebEngineProfile(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QQuickWebEngineProfilemetacast*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, param1: cstring): pointer =
  fcQQuickWebEngineProfile_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQuickWebEngineProfile_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](vtbl)
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickWebEngineProfilemetacall*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickWebEngineProfile_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQuickWebEngineProfile_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](vtbl)
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQuickWebEngineProfileevent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickWebEngineProfile_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQQuickWebEngineProfile_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](vtbl)
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickWebEngineProfileeventFilter*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickWebEngineProfile_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQuickWebEngineProfile_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](vtbl)
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickWebEngineProfiletimerEvent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickWebEngineProfile_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickWebEngineProfile_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](vtbl)
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QQuickWebEngineProfilechildEvent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickWebEngineProfile_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickWebEngineProfile_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](vtbl)
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QQuickWebEngineProfilecustomEvent*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickWebEngineProfile_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickWebEngineProfile_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](vtbl)
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QQuickWebEngineProfileconnectNotify*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickWebEngineProfile_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickWebEngineProfile_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](vtbl)
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QQuickWebEngineProfiledisconnectNotify*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickWebEngineProfile_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickWebEngineProfile_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineProfileVTable](vtbl)
  let self = QQuickWebEngineProfile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickWebEngineProfile_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, ): cint =
  fcQQuickWebEngineProfile_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, signal: cstring): cint =
  fcQQuickWebEngineProfile_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickWebEngineProfile_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile,
    vtbl: ref QQuickWebEngineProfileVTable = nil): gen_qquickwebengineprofile_types.QQuickWebEngineProfile =
  let vtbl = if vtbl == nil: new QQuickWebEngineProfileVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickWebEngineProfileVTable, _: ptr cQQuickWebEngineProfile) {.cdecl.} =
    let vtbl = cast[ref QQuickWebEngineProfileVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickWebEngineProfile_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickWebEngineProfile_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickWebEngineProfile_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickWebEngineProfile_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickWebEngineProfile_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickWebEngineProfile_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickWebEngineProfile_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickWebEngineProfile_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickWebEngineProfile_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickWebEngineProfile_disconnectNotify
  gen_qquickwebengineprofile_types.QQuickWebEngineProfile(h: fcQQuickWebEngineProfile_new(addr(vtbl[]), ))

proc create*(T: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQuickWebEngineProfileVTable = nil): gen_qquickwebengineprofile_types.QQuickWebEngineProfile =
  let vtbl = if vtbl == nil: new QQuickWebEngineProfileVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickWebEngineProfileVTable, _: ptr cQQuickWebEngineProfile) {.cdecl.} =
    let vtbl = cast[ref QQuickWebEngineProfileVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickWebEngineProfile_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickWebEngineProfile_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickWebEngineProfile_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickWebEngineProfile_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickWebEngineProfile_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickWebEngineProfile_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickWebEngineProfile_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickWebEngineProfile_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickWebEngineProfile_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickWebEngineProfile_disconnectNotify
  gen_qquickwebengineprofile_types.QQuickWebEngineProfile(h: fcQQuickWebEngineProfile_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qquickwebengineprofile_types.QQuickWebEngineProfile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickWebEngineProfile_staticMetaObject())
proc delete*(self: gen_qquickwebengineprofile_types.QQuickWebEngineProfile) =
  fcQQuickWebEngineProfile_delete(self.h)
