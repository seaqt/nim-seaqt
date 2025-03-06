import ./Qt6WebEngineCore_libs

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

const cflags = gorge("pkg-config --cflags Qt6WebEngineCore")  & " -fPIC"
{.compile("gen_qwebengineprofile.cpp", cflags).}


type QWebEngineProfileHttpCacheTypeEnum* = distinct cint
template MemoryHttpCache*(_: type QWebEngineProfileHttpCacheTypeEnum): untyped = 0
template DiskHttpCache*(_: type QWebEngineProfileHttpCacheTypeEnum): untyped = 1
template NoCache*(_: type QWebEngineProfileHttpCacheTypeEnum): untyped = 2


type QWebEngineProfilePersistentCookiesPolicyEnum* = distinct cint
template NoPersistentCookies*(_: type QWebEngineProfilePersistentCookiesPolicyEnum): untyped = 0
template AllowPersistentCookies*(_: type QWebEngineProfilePersistentCookiesPolicyEnum): untyped = 1
template ForcePersistentCookies*(_: type QWebEngineProfilePersistentCookiesPolicyEnum): untyped = 2


import ./gen_qwebengineprofile_types
export gen_qwebengineprofile_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ./gen_qwebengineclientcertificatestore_types,
  ./gen_qwebenginecookiestore_types,
  ./gen_qwebenginedownloadrequest_types,
  ./gen_qwebenginescriptcollection_types,
  ./gen_qwebenginesettings_types,
  ./gen_qwebengineurlrequestinterceptor_types,
  ./gen_qwebengineurlschemehandler_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qwebengineclientcertificatestore_types,
  gen_qwebenginecookiestore_types,
  gen_qwebenginedownloadrequest_types,
  gen_qwebenginescriptcollection_types,
  gen_qwebenginesettings_types,
  gen_qwebengineurlrequestinterceptor_types,
  gen_qwebengineurlschemehandler_types

type cQWebEngineProfile*{.exportc: "QWebEngineProfile", incompleteStruct.} = object

proc fcQWebEngineProfile_new(): ptr cQWebEngineProfile {.importc: "QWebEngineProfile_new".}
proc fcQWebEngineProfile_new2(name: struct_miqt_string): ptr cQWebEngineProfile {.importc: "QWebEngineProfile_new2".}
proc fcQWebEngineProfile_new3(parent: pointer): ptr cQWebEngineProfile {.importc: "QWebEngineProfile_new3".}
proc fcQWebEngineProfile_new4(name: struct_miqt_string, parent: pointer): ptr cQWebEngineProfile {.importc: "QWebEngineProfile_new4".}
proc fcQWebEngineProfile_metaObject(self: pointer, ): pointer {.importc: "QWebEngineProfile_metaObject".}
proc fcQWebEngineProfile_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineProfile_metacast".}
proc fcQWebEngineProfile_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineProfile_metacall".}
proc fcQWebEngineProfile_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineProfile_tr".}
proc fcQWebEngineProfile_storageName(self: pointer, ): struct_miqt_string {.importc: "QWebEngineProfile_storageName".}
proc fcQWebEngineProfile_isOffTheRecord(self: pointer, ): bool {.importc: "QWebEngineProfile_isOffTheRecord".}
proc fcQWebEngineProfile_persistentStoragePath(self: pointer, ): struct_miqt_string {.importc: "QWebEngineProfile_persistentStoragePath".}
proc fcQWebEngineProfile_setPersistentStoragePath(self: pointer, path: struct_miqt_string): void {.importc: "QWebEngineProfile_setPersistentStoragePath".}
proc fcQWebEngineProfile_cachePath(self: pointer, ): struct_miqt_string {.importc: "QWebEngineProfile_cachePath".}
proc fcQWebEngineProfile_setCachePath(self: pointer, path: struct_miqt_string): void {.importc: "QWebEngineProfile_setCachePath".}
proc fcQWebEngineProfile_httpUserAgent(self: pointer, ): struct_miqt_string {.importc: "QWebEngineProfile_httpUserAgent".}
proc fcQWebEngineProfile_setHttpUserAgent(self: pointer, userAgent: struct_miqt_string): void {.importc: "QWebEngineProfile_setHttpUserAgent".}
proc fcQWebEngineProfile_httpCacheType(self: pointer, ): cint {.importc: "QWebEngineProfile_httpCacheType".}
proc fcQWebEngineProfile_setHttpCacheType(self: pointer, httpCacheType: cint): void {.importc: "QWebEngineProfile_setHttpCacheType".}
proc fcQWebEngineProfile_setHttpAcceptLanguage(self: pointer, httpAcceptLanguage: struct_miqt_string): void {.importc: "QWebEngineProfile_setHttpAcceptLanguage".}
proc fcQWebEngineProfile_httpAcceptLanguage(self: pointer, ): struct_miqt_string {.importc: "QWebEngineProfile_httpAcceptLanguage".}
proc fcQWebEngineProfile_persistentCookiesPolicy(self: pointer, ): cint {.importc: "QWebEngineProfile_persistentCookiesPolicy".}
proc fcQWebEngineProfile_setPersistentCookiesPolicy(self: pointer, persistentCookiesPolicy: cint): void {.importc: "QWebEngineProfile_setPersistentCookiesPolicy".}
proc fcQWebEngineProfile_httpCacheMaximumSize(self: pointer, ): cint {.importc: "QWebEngineProfile_httpCacheMaximumSize".}
proc fcQWebEngineProfile_setHttpCacheMaximumSize(self: pointer, maxSize: cint): void {.importc: "QWebEngineProfile_setHttpCacheMaximumSize".}
proc fcQWebEngineProfile_cookieStore(self: pointer, ): pointer {.importc: "QWebEngineProfile_cookieStore".}
proc fcQWebEngineProfile_setUrlRequestInterceptor(self: pointer, interceptor: pointer): void {.importc: "QWebEngineProfile_setUrlRequestInterceptor".}
proc fcQWebEngineProfile_clearAllVisitedLinks(self: pointer, ): void {.importc: "QWebEngineProfile_clearAllVisitedLinks".}
proc fcQWebEngineProfile_clearVisitedLinks(self: pointer, urls: struct_miqt_array): void {.importc: "QWebEngineProfile_clearVisitedLinks".}
proc fcQWebEngineProfile_visitedLinksContainsUrl(self: pointer, url: pointer): bool {.importc: "QWebEngineProfile_visitedLinksContainsUrl".}
proc fcQWebEngineProfile_settings(self: pointer, ): pointer {.importc: "QWebEngineProfile_settings".}
proc fcQWebEngineProfile_scripts(self: pointer, ): pointer {.importc: "QWebEngineProfile_scripts".}
proc fcQWebEngineProfile_urlSchemeHandler(self: pointer, param1: struct_miqt_string): pointer {.importc: "QWebEngineProfile_urlSchemeHandler".}
proc fcQWebEngineProfile_installUrlSchemeHandler(self: pointer, scheme: struct_miqt_string, param2: pointer): void {.importc: "QWebEngineProfile_installUrlSchemeHandler".}
proc fcQWebEngineProfile_removeUrlScheme(self: pointer, scheme: struct_miqt_string): void {.importc: "QWebEngineProfile_removeUrlScheme".}
proc fcQWebEngineProfile_removeUrlSchemeHandler(self: pointer, param1: pointer): void {.importc: "QWebEngineProfile_removeUrlSchemeHandler".}
proc fcQWebEngineProfile_removeAllUrlSchemeHandlers(self: pointer, ): void {.importc: "QWebEngineProfile_removeAllUrlSchemeHandlers".}
proc fcQWebEngineProfile_clearHttpCache(self: pointer, ): void {.importc: "QWebEngineProfile_clearHttpCache".}
proc fcQWebEngineProfile_setSpellCheckLanguages(self: pointer, languages: struct_miqt_array): void {.importc: "QWebEngineProfile_setSpellCheckLanguages".}
proc fcQWebEngineProfile_spellCheckLanguages(self: pointer, ): struct_miqt_array {.importc: "QWebEngineProfile_spellCheckLanguages".}
proc fcQWebEngineProfile_setSpellCheckEnabled(self: pointer, enabled: bool): void {.importc: "QWebEngineProfile_setSpellCheckEnabled".}
proc fcQWebEngineProfile_isSpellCheckEnabled(self: pointer, ): bool {.importc: "QWebEngineProfile_isSpellCheckEnabled".}
proc fcQWebEngineProfile_downloadPath(self: pointer, ): struct_miqt_string {.importc: "QWebEngineProfile_downloadPath".}
proc fcQWebEngineProfile_setDownloadPath(self: pointer, path: struct_miqt_string): void {.importc: "QWebEngineProfile_setDownloadPath".}
proc fcQWebEngineProfile_clientCertificateStore(self: pointer, ): pointer {.importc: "QWebEngineProfile_clientCertificateStore".}
proc fcQWebEngineProfile_defaultProfile(): pointer {.importc: "QWebEngineProfile_defaultProfile".}
proc fcQWebEngineProfile_downloadRequested(self: pointer, download: pointer): void {.importc: "QWebEngineProfile_downloadRequested".}
proc fcQWebEngineProfile_connect_downloadRequested(self: pointer, slot: int) {.importc: "QWebEngineProfile_connect_downloadRequested".}
proc fcQWebEngineProfile_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineProfile_tr2".}
proc fcQWebEngineProfile_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineProfile_tr3".}
proc fQWebEngineProfile_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QWebEngineProfile_virtualbase_metaObject".}
proc fcQWebEngineProfile_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_metaObject".}
proc fQWebEngineProfile_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QWebEngineProfile_virtualbase_metacast".}
proc fcQWebEngineProfile_override_virtual_metacast(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_metacast".}
proc fQWebEngineProfile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWebEngineProfile_virtualbase_metacall".}
proc fcQWebEngineProfile_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_metacall".}
proc fQWebEngineProfile_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWebEngineProfile_virtualbase_event".}
proc fcQWebEngineProfile_override_virtual_event(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_event".}
proc fQWebEngineProfile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebEngineProfile_virtualbase_eventFilter".}
proc fcQWebEngineProfile_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_eventFilter".}
proc fQWebEngineProfile_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebEngineProfile_virtualbase_timerEvent".}
proc fcQWebEngineProfile_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_timerEvent".}
proc fQWebEngineProfile_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebEngineProfile_virtualbase_childEvent".}
proc fcQWebEngineProfile_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_childEvent".}
proc fQWebEngineProfile_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebEngineProfile_virtualbase_customEvent".}
proc fcQWebEngineProfile_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_customEvent".}
proc fQWebEngineProfile_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebEngineProfile_virtualbase_connectNotify".}
proc fcQWebEngineProfile_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_connectNotify".}
proc fQWebEngineProfile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebEngineProfile_virtualbase_disconnectNotify".}
proc fcQWebEngineProfile_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_disconnectNotify".}
proc fcQWebEngineProfile_staticMetaObject(): pointer {.importc: "QWebEngineProfile_staticMetaObject".}
proc fcQWebEngineProfile_delete(self: pointer) {.importc: "QWebEngineProfile_delete".}


func init*(T: type gen_qwebengineprofile_types.QWebEngineProfile, h: ptr cQWebEngineProfile): gen_qwebengineprofile_types.QWebEngineProfile =
  T(h: h)
proc create*(T: type gen_qwebengineprofile_types.QWebEngineProfile, ): gen_qwebengineprofile_types.QWebEngineProfile =
  gen_qwebengineprofile_types.QWebEngineProfile.init(fcQWebEngineProfile_new())

proc create*(T: type gen_qwebengineprofile_types.QWebEngineProfile, name: string): gen_qwebengineprofile_types.QWebEngineProfile =
  gen_qwebengineprofile_types.QWebEngineProfile.init(fcQWebEngineProfile_new2(struct_miqt_string(data: name, len: csize_t(len(name)))))

proc create*(T: type gen_qwebengineprofile_types.QWebEngineProfile, parent: gen_qobject_types.QObject): gen_qwebengineprofile_types.QWebEngineProfile =
  gen_qwebengineprofile_types.QWebEngineProfile.init(fcQWebEngineProfile_new3(parent.h))

proc create*(T: type gen_qwebengineprofile_types.QWebEngineProfile, name: string, parent: gen_qobject_types.QObject): gen_qwebengineprofile_types.QWebEngineProfile =
  gen_qwebengineprofile_types.QWebEngineProfile.init(fcQWebEngineProfile_new4(struct_miqt_string(data: name, len: csize_t(len(name))), parent.h))

proc metaObject*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineProfile_metaObject(self.h))

proc metacast*(self: gen_qwebengineprofile_types.QWebEngineProfile, param1: cstring): pointer =
  fcQWebEngineProfile_metacast(self.h, param1)

proc metacall*(self: gen_qwebengineprofile_types.QWebEngineProfile, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineProfile_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebengineprofile_types.QWebEngineProfile, s: cstring): string =
  let v_ms = fcQWebEngineProfile_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc storageName*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): string =
  let v_ms = fcQWebEngineProfile_storageName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isOffTheRecord*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): bool =
  fcQWebEngineProfile_isOffTheRecord(self.h)

proc persistentStoragePath*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): string =
  let v_ms = fcQWebEngineProfile_persistentStoragePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPersistentStoragePath*(self: gen_qwebengineprofile_types.QWebEngineProfile, path: string): void =
  fcQWebEngineProfile_setPersistentStoragePath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc cachePath*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): string =
  let v_ms = fcQWebEngineProfile_cachePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCachePath*(self: gen_qwebengineprofile_types.QWebEngineProfile, path: string): void =
  fcQWebEngineProfile_setCachePath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc httpUserAgent*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): string =
  let v_ms = fcQWebEngineProfile_httpUserAgent(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHttpUserAgent*(self: gen_qwebengineprofile_types.QWebEngineProfile, userAgent: string): void =
  fcQWebEngineProfile_setHttpUserAgent(self.h, struct_miqt_string(data: userAgent, len: csize_t(len(userAgent))))

proc httpCacheType*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): cint =
  cint(fcQWebEngineProfile_httpCacheType(self.h))

proc setHttpCacheType*(self: gen_qwebengineprofile_types.QWebEngineProfile, httpCacheType: cint): void =
  fcQWebEngineProfile_setHttpCacheType(self.h, cint(httpCacheType))

proc setHttpAcceptLanguage*(self: gen_qwebengineprofile_types.QWebEngineProfile, httpAcceptLanguage: string): void =
  fcQWebEngineProfile_setHttpAcceptLanguage(self.h, struct_miqt_string(data: httpAcceptLanguage, len: csize_t(len(httpAcceptLanguage))))

proc httpAcceptLanguage*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): string =
  let v_ms = fcQWebEngineProfile_httpAcceptLanguage(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc persistentCookiesPolicy*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): cint =
  cint(fcQWebEngineProfile_persistentCookiesPolicy(self.h))

proc setPersistentCookiesPolicy*(self: gen_qwebengineprofile_types.QWebEngineProfile, persistentCookiesPolicy: cint): void =
  fcQWebEngineProfile_setPersistentCookiesPolicy(self.h, cint(persistentCookiesPolicy))

proc httpCacheMaximumSize*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): cint =
  fcQWebEngineProfile_httpCacheMaximumSize(self.h)

proc setHttpCacheMaximumSize*(self: gen_qwebengineprofile_types.QWebEngineProfile, maxSize: cint): void =
  fcQWebEngineProfile_setHttpCacheMaximumSize(self.h, maxSize)

proc cookieStore*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): gen_qwebenginecookiestore_types.QWebEngineCookieStore =
  gen_qwebenginecookiestore_types.QWebEngineCookieStore(h: fcQWebEngineProfile_cookieStore(self.h))

proc setUrlRequestInterceptor*(self: gen_qwebengineprofile_types.QWebEngineProfile, interceptor: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor): void =
  fcQWebEngineProfile_setUrlRequestInterceptor(self.h, interceptor.h)

proc clearAllVisitedLinks*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): void =
  fcQWebEngineProfile_clearAllVisitedLinks(self.h)

proc clearVisitedLinks*(self: gen_qwebengineprofile_types.QWebEngineProfile, urls: seq[gen_qurl_types.QUrl]): void =
  var urls_CArray = newSeq[pointer](len(urls))
  for i in 0..<len(urls):
    urls_CArray[i] = urls[i].h

  fcQWebEngineProfile_clearVisitedLinks(self.h, struct_miqt_array(len: csize_t(len(urls)), data: if len(urls) == 0: nil else: addr(urls_CArray[0])))

proc visitedLinksContainsUrl*(self: gen_qwebengineprofile_types.QWebEngineProfile, url: gen_qurl_types.QUrl): bool =
  fcQWebEngineProfile_visitedLinksContainsUrl(self.h, url.h)

proc settings*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): gen_qwebenginesettings_types.QWebEngineSettings =
  gen_qwebenginesettings_types.QWebEngineSettings(h: fcQWebEngineProfile_settings(self.h))

proc scripts*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): gen_qwebenginescriptcollection_types.QWebEngineScriptCollection =
  gen_qwebenginescriptcollection_types.QWebEngineScriptCollection(h: fcQWebEngineProfile_scripts(self.h))

proc urlSchemeHandler*(self: gen_qwebengineprofile_types.QWebEngineProfile, param1: seq[byte]): gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler =
  gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler(h: fcQWebEngineProfile_urlSchemeHandler(self.h, struct_miqt_string(data: cast[cstring](if len(param1) == 0: nil else: unsafeAddr param1[0]), len: csize_t(len(param1)))))

proc installUrlSchemeHandler*(self: gen_qwebengineprofile_types.QWebEngineProfile, scheme: seq[byte], param2: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler): void =
  fcQWebEngineProfile_installUrlSchemeHandler(self.h, struct_miqt_string(data: cast[cstring](if len(scheme) == 0: nil else: unsafeAddr scheme[0]), len: csize_t(len(scheme))), param2.h)

proc removeUrlScheme*(self: gen_qwebengineprofile_types.QWebEngineProfile, scheme: seq[byte]): void =
  fcQWebEngineProfile_removeUrlScheme(self.h, struct_miqt_string(data: cast[cstring](if len(scheme) == 0: nil else: unsafeAddr scheme[0]), len: csize_t(len(scheme))))

proc removeUrlSchemeHandler*(self: gen_qwebengineprofile_types.QWebEngineProfile, param1: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler): void =
  fcQWebEngineProfile_removeUrlSchemeHandler(self.h, param1.h)

proc removeAllUrlSchemeHandlers*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): void =
  fcQWebEngineProfile_removeAllUrlSchemeHandlers(self.h)

proc clearHttpCache*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): void =
  fcQWebEngineProfile_clearHttpCache(self.h)

proc setSpellCheckLanguages*(self: gen_qwebengineprofile_types.QWebEngineProfile, languages: seq[string]): void =
  var languages_CArray = newSeq[struct_miqt_string](len(languages))
  for i in 0..<len(languages):
    languages_CArray[i] = struct_miqt_string(data: languages[i], len: csize_t(len(languages[i])))

  fcQWebEngineProfile_setSpellCheckLanguages(self.h, struct_miqt_array(len: csize_t(len(languages)), data: if len(languages) == 0: nil else: addr(languages_CArray[0])))

proc spellCheckLanguages*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): seq[string] =
  var v_ma = fcQWebEngineProfile_spellCheckLanguages(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setSpellCheckEnabled*(self: gen_qwebengineprofile_types.QWebEngineProfile, enabled: bool): void =
  fcQWebEngineProfile_setSpellCheckEnabled(self.h, enabled)

proc isSpellCheckEnabled*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): bool =
  fcQWebEngineProfile_isSpellCheckEnabled(self.h)

proc downloadPath*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): string =
  let v_ms = fcQWebEngineProfile_downloadPath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDownloadPath*(self: gen_qwebengineprofile_types.QWebEngineProfile, path: string): void =
  fcQWebEngineProfile_setDownloadPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc clientCertificateStore*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): gen_qwebengineclientcertificatestore_types.QWebEngineClientCertificateStore =
  gen_qwebengineclientcertificatestore_types.QWebEngineClientCertificateStore(h: fcQWebEngineProfile_clientCertificateStore(self.h))

proc defaultProfile*(_: type gen_qwebengineprofile_types.QWebEngineProfile, ): gen_qwebengineprofile_types.QWebEngineProfile =
  gen_qwebengineprofile_types.QWebEngineProfile(h: fcQWebEngineProfile_defaultProfile())

proc downloadRequested*(self: gen_qwebengineprofile_types.QWebEngineProfile, download: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest): void =
  fcQWebEngineProfile_downloadRequested(self.h, download.h)

type QWebEngineProfiledownloadRequestedSlot* = proc(download: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest)
proc miqt_exec_callback_QWebEngineProfile_downloadRequested(slot: int, download: pointer) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineProfiledownloadRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest(h: download)

  nimfunc[](slotval1)

proc ondownloadRequested*(self: gen_qwebengineprofile_types.QWebEngineProfile, slot: QWebEngineProfiledownloadRequestedSlot) =
  var tmp = new QWebEngineProfiledownloadRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_connect_downloadRequested(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qwebengineprofile_types.QWebEngineProfile, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineProfile_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebengineprofile_types.QWebEngineProfile, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineProfile_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QWebEngineProfilemetaObject*(self: gen_qwebengineprofile_types.QWebEngineProfile, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQWebEngineProfile_virtualbase_metaObject(self.h))

type QWebEngineProfilemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qwebengineprofile_types.QWebEngineProfile, slot: QWebEngineProfilemetaObjectProc) =
  # TODO check subclass
  var tmp = new QWebEngineProfilemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_metaObject(self: ptr cQWebEngineProfile, slot: int): pointer {.exportc: "miqt_exec_callback_QWebEngineProfile_metaObject ".} =
  var nimfunc = cast[ptr QWebEngineProfilemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebEngineProfilemetacast*(self: gen_qwebengineprofile_types.QWebEngineProfile, param1: cstring): pointer =
  fQWebEngineProfile_virtualbase_metacast(self.h, param1)

type QWebEngineProfilemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qwebengineprofile_types.QWebEngineProfile, slot: QWebEngineProfilemetacastProc) =
  # TODO check subclass
  var tmp = new QWebEngineProfilemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_metacast(self: ptr cQWebEngineProfile, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QWebEngineProfile_metacast ".} =
  var nimfunc = cast[ptr QWebEngineProfilemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebEngineProfilemetacall*(self: gen_qwebengineprofile_types.QWebEngineProfile, param1: cint, param2: cint, param3: pointer): cint =
  fQWebEngineProfile_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebEngineProfilemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qwebengineprofile_types.QWebEngineProfile, slot: QWebEngineProfilemetacallProc) =
  # TODO check subclass
  var tmp = new QWebEngineProfilemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_metacall(self: ptr cQWebEngineProfile, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebEngineProfile_metacall ".} =
  var nimfunc = cast[ptr QWebEngineProfilemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QWebEngineProfileevent*(self: gen_qwebengineprofile_types.QWebEngineProfile, event: gen_qcoreevent_types.QEvent): bool =
  fQWebEngineProfile_virtualbase_event(self.h, event.h)

type QWebEngineProfileeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qwebengineprofile_types.QWebEngineProfile, slot: QWebEngineProfileeventProc) =
  # TODO check subclass
  var tmp = new QWebEngineProfileeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_event(self: ptr cQWebEngineProfile, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineProfile_event ".} =
  var nimfunc = cast[ptr QWebEngineProfileeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebEngineProfileeventFilter*(self: gen_qwebengineprofile_types.QWebEngineProfile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQWebEngineProfile_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebEngineProfileeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qwebengineprofile_types.QWebEngineProfile, slot: QWebEngineProfileeventFilterProc) =
  # TODO check subclass
  var tmp = new QWebEngineProfileeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_eventFilter(self: ptr cQWebEngineProfile, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineProfile_eventFilter ".} =
  var nimfunc = cast[ptr QWebEngineProfileeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWebEngineProfiletimerEvent*(self: gen_qwebengineprofile_types.QWebEngineProfile, event: gen_qcoreevent_types.QTimerEvent): void =
  fQWebEngineProfile_virtualbase_timerEvent(self.h, event.h)

type QWebEngineProfiletimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qwebengineprofile_types.QWebEngineProfile, slot: QWebEngineProfiletimerEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineProfiletimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_timerEvent(self: ptr cQWebEngineProfile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineProfile_timerEvent ".} =
  var nimfunc = cast[ptr QWebEngineProfiletimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineProfilechildEvent*(self: gen_qwebengineprofile_types.QWebEngineProfile, event: gen_qcoreevent_types.QChildEvent): void =
  fQWebEngineProfile_virtualbase_childEvent(self.h, event.h)

type QWebEngineProfilechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qwebengineprofile_types.QWebEngineProfile, slot: QWebEngineProfilechildEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineProfilechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_childEvent(self: ptr cQWebEngineProfile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineProfile_childEvent ".} =
  var nimfunc = cast[ptr QWebEngineProfilechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineProfilecustomEvent*(self: gen_qwebengineprofile_types.QWebEngineProfile, event: gen_qcoreevent_types.QEvent): void =
  fQWebEngineProfile_virtualbase_customEvent(self.h, event.h)

type QWebEngineProfilecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qwebengineprofile_types.QWebEngineProfile, slot: QWebEngineProfilecustomEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineProfilecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_customEvent(self: ptr cQWebEngineProfile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineProfile_customEvent ".} =
  var nimfunc = cast[ptr QWebEngineProfilecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineProfileconnectNotify*(self: gen_qwebengineprofile_types.QWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebEngineProfile_virtualbase_connectNotify(self.h, signal.h)

type QWebEngineProfileconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qwebengineprofile_types.QWebEngineProfile, slot: QWebEngineProfileconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebEngineProfileconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_connectNotify(self: ptr cQWebEngineProfile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineProfile_connectNotify ".} =
  var nimfunc = cast[ptr QWebEngineProfileconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWebEngineProfiledisconnectNotify*(self: gen_qwebengineprofile_types.QWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebEngineProfile_virtualbase_disconnectNotify(self.h, signal.h)

type QWebEngineProfiledisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwebengineprofile_types.QWebEngineProfile, slot: QWebEngineProfiledisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebEngineProfiledisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_disconnectNotify(self: ptr cQWebEngineProfile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineProfile_disconnectNotify ".} =
  var nimfunc = cast[ptr QWebEngineProfiledisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qwebengineprofile_types.QWebEngineProfile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineProfile_staticMetaObject())
proc delete*(self: gen_qwebengineprofile_types.QWebEngineProfile) =
  fcQWebEngineProfile_delete(self.h)
