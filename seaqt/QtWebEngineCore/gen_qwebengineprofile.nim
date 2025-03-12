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

const cflags = gorge("pkg-config --cflags Qt6WebEngineCore") & " -fPIC"
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

proc fcQWebEngineProfile_metaObject(self: pointer): pointer {.importc: "QWebEngineProfile_metaObject".}
proc fcQWebEngineProfile_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineProfile_metacast".}
proc fcQWebEngineProfile_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineProfile_metacall".}
proc fcQWebEngineProfile_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineProfile_tr".}
proc fcQWebEngineProfile_storageName(self: pointer): struct_miqt_string {.importc: "QWebEngineProfile_storageName".}
proc fcQWebEngineProfile_isOffTheRecord(self: pointer): bool {.importc: "QWebEngineProfile_isOffTheRecord".}
proc fcQWebEngineProfile_persistentStoragePath(self: pointer): struct_miqt_string {.importc: "QWebEngineProfile_persistentStoragePath".}
proc fcQWebEngineProfile_setPersistentStoragePath(self: pointer, path: struct_miqt_string): void {.importc: "QWebEngineProfile_setPersistentStoragePath".}
proc fcQWebEngineProfile_cachePath(self: pointer): struct_miqt_string {.importc: "QWebEngineProfile_cachePath".}
proc fcQWebEngineProfile_setCachePath(self: pointer, path: struct_miqt_string): void {.importc: "QWebEngineProfile_setCachePath".}
proc fcQWebEngineProfile_httpUserAgent(self: pointer): struct_miqt_string {.importc: "QWebEngineProfile_httpUserAgent".}
proc fcQWebEngineProfile_setHttpUserAgent(self: pointer, userAgent: struct_miqt_string): void {.importc: "QWebEngineProfile_setHttpUserAgent".}
proc fcQWebEngineProfile_httpCacheType(self: pointer): cint {.importc: "QWebEngineProfile_httpCacheType".}
proc fcQWebEngineProfile_setHttpCacheType(self: pointer, httpCacheType: cint): void {.importc: "QWebEngineProfile_setHttpCacheType".}
proc fcQWebEngineProfile_setHttpAcceptLanguage(self: pointer, httpAcceptLanguage: struct_miqt_string): void {.importc: "QWebEngineProfile_setHttpAcceptLanguage".}
proc fcQWebEngineProfile_httpAcceptLanguage(self: pointer): struct_miqt_string {.importc: "QWebEngineProfile_httpAcceptLanguage".}
proc fcQWebEngineProfile_persistentCookiesPolicy(self: pointer): cint {.importc: "QWebEngineProfile_persistentCookiesPolicy".}
proc fcQWebEngineProfile_setPersistentCookiesPolicy(self: pointer, persistentCookiesPolicy: cint): void {.importc: "QWebEngineProfile_setPersistentCookiesPolicy".}
proc fcQWebEngineProfile_httpCacheMaximumSize(self: pointer): cint {.importc: "QWebEngineProfile_httpCacheMaximumSize".}
proc fcQWebEngineProfile_setHttpCacheMaximumSize(self: pointer, maxSize: cint): void {.importc: "QWebEngineProfile_setHttpCacheMaximumSize".}
proc fcQWebEngineProfile_cookieStore(self: pointer): pointer {.importc: "QWebEngineProfile_cookieStore".}
proc fcQWebEngineProfile_setUrlRequestInterceptor(self: pointer, interceptor: pointer): void {.importc: "QWebEngineProfile_setUrlRequestInterceptor".}
proc fcQWebEngineProfile_clearAllVisitedLinks(self: pointer): void {.importc: "QWebEngineProfile_clearAllVisitedLinks".}
proc fcQWebEngineProfile_clearVisitedLinks(self: pointer, urls: struct_miqt_array): void {.importc: "QWebEngineProfile_clearVisitedLinks".}
proc fcQWebEngineProfile_visitedLinksContainsUrl(self: pointer, url: pointer): bool {.importc: "QWebEngineProfile_visitedLinksContainsUrl".}
proc fcQWebEngineProfile_settings(self: pointer): pointer {.importc: "QWebEngineProfile_settings".}
proc fcQWebEngineProfile_scripts(self: pointer): pointer {.importc: "QWebEngineProfile_scripts".}
proc fcQWebEngineProfile_urlSchemeHandler(self: pointer, param1: struct_miqt_string): pointer {.importc: "QWebEngineProfile_urlSchemeHandler".}
proc fcQWebEngineProfile_installUrlSchemeHandler(self: pointer, scheme: struct_miqt_string, param2: pointer): void {.importc: "QWebEngineProfile_installUrlSchemeHandler".}
proc fcQWebEngineProfile_removeUrlScheme(self: pointer, scheme: struct_miqt_string): void {.importc: "QWebEngineProfile_removeUrlScheme".}
proc fcQWebEngineProfile_removeUrlSchemeHandler(self: pointer, param1: pointer): void {.importc: "QWebEngineProfile_removeUrlSchemeHandler".}
proc fcQWebEngineProfile_removeAllUrlSchemeHandlers(self: pointer): void {.importc: "QWebEngineProfile_removeAllUrlSchemeHandlers".}
proc fcQWebEngineProfile_clearHttpCache(self: pointer): void {.importc: "QWebEngineProfile_clearHttpCache".}
proc fcQWebEngineProfile_setSpellCheckLanguages(self: pointer, languages: struct_miqt_array): void {.importc: "QWebEngineProfile_setSpellCheckLanguages".}
proc fcQWebEngineProfile_spellCheckLanguages(self: pointer): struct_miqt_array {.importc: "QWebEngineProfile_spellCheckLanguages".}
proc fcQWebEngineProfile_setSpellCheckEnabled(self: pointer, enabled: bool): void {.importc: "QWebEngineProfile_setSpellCheckEnabled".}
proc fcQWebEngineProfile_isSpellCheckEnabled(self: pointer): bool {.importc: "QWebEngineProfile_isSpellCheckEnabled".}
proc fcQWebEngineProfile_downloadPath(self: pointer): struct_miqt_string {.importc: "QWebEngineProfile_downloadPath".}
proc fcQWebEngineProfile_setDownloadPath(self: pointer, path: struct_miqt_string): void {.importc: "QWebEngineProfile_setDownloadPath".}
proc fcQWebEngineProfile_clientCertificateStore(self: pointer): pointer {.importc: "QWebEngineProfile_clientCertificateStore".}
proc fcQWebEngineProfile_defaultProfile(): pointer {.importc: "QWebEngineProfile_defaultProfile".}
proc fcQWebEngineProfile_downloadRequested(self: pointer, download: pointer): void {.importc: "QWebEngineProfile_downloadRequested".}
proc fcQWebEngineProfile_connect_downloadRequested(self: pointer, slot: int, callback: proc (slot: int, download: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineProfile_connect_downloadRequested".}
proc fcQWebEngineProfile_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineProfile_tr2".}
proc fcQWebEngineProfile_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineProfile_tr3".}
proc fcQWebEngineProfile_vtbl(self: pointer): pointer {.importc: "QWebEngineProfile_vtbl".}
proc fcQWebEngineProfile_vdata(self: pointer): pointer {.importc: "QWebEngineProfile_vdata".}
type cQWebEngineProfileVTable {.pure.} = object
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
proc fcQWebEngineProfile_virtualbase_metaObject(self: pointer): pointer {.importc: "QWebEngineProfile_virtualbase_metaObject".}
proc fcQWebEngineProfile_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineProfile_virtualbase_metacast".}
proc fcQWebEngineProfile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineProfile_virtualbase_metacall".}
proc fcQWebEngineProfile_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWebEngineProfile_virtualbase_event".}
proc fcQWebEngineProfile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebEngineProfile_virtualbase_eventFilter".}
proc fcQWebEngineProfile_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebEngineProfile_virtualbase_timerEvent".}
proc fcQWebEngineProfile_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebEngineProfile_virtualbase_childEvent".}
proc fcQWebEngineProfile_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebEngineProfile_virtualbase_customEvent".}
proc fcQWebEngineProfile_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebEngineProfile_virtualbase_connectNotify".}
proc fcQWebEngineProfile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebEngineProfile_virtualbase_disconnectNotify".}
proc fcQWebEngineProfile_protectedbase_sender(self: pointer): pointer {.importc: "QWebEngineProfile_protectedbase_sender".}
proc fcQWebEngineProfile_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWebEngineProfile_protectedbase_senderSignalIndex".}
proc fcQWebEngineProfile_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebEngineProfile_protectedbase_receivers".}
proc fcQWebEngineProfile_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebEngineProfile_protectedbase_isSignalConnected".}
proc fcQWebEngineProfile_new(vtbl, vdata: pointer): ptr cQWebEngineProfile {.importc: "QWebEngineProfile_new".}
proc fcQWebEngineProfile_new2(vtbl, vdata: pointer, name: struct_miqt_string): ptr cQWebEngineProfile {.importc: "QWebEngineProfile_new2".}
proc fcQWebEngineProfile_new3(vtbl, vdata: pointer, parent: pointer): ptr cQWebEngineProfile {.importc: "QWebEngineProfile_new3".}
proc fcQWebEngineProfile_new4(vtbl, vdata: pointer, name: struct_miqt_string, parent: pointer): ptr cQWebEngineProfile {.importc: "QWebEngineProfile_new4".}
proc fcQWebEngineProfile_staticMetaObject(): pointer {.importc: "QWebEngineProfile_staticMetaObject".}

proc metaObject*(self: gen_qwebengineprofile_types.QWebEngineProfile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineProfile_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwebengineprofile_types.QWebEngineProfile, param1: cstring): pointer =
  fcQWebEngineProfile_metacast(self.h, param1)

proc metacall*(self: gen_qwebengineprofile_types.QWebEngineProfile, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineProfile_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebengineprofile_types.QWebEngineProfile, s: cstring): string =
  let v_ms = fcQWebEngineProfile_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc storageName*(self: gen_qwebengineprofile_types.QWebEngineProfile): string =
  let v_ms = fcQWebEngineProfile_storageName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isOffTheRecord*(self: gen_qwebengineprofile_types.QWebEngineProfile): bool =
  fcQWebEngineProfile_isOffTheRecord(self.h)

proc persistentStoragePath*(self: gen_qwebengineprofile_types.QWebEngineProfile): string =
  let v_ms = fcQWebEngineProfile_persistentStoragePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPersistentStoragePath*(self: gen_qwebengineprofile_types.QWebEngineProfile, path: string): void =
  fcQWebEngineProfile_setPersistentStoragePath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc cachePath*(self: gen_qwebengineprofile_types.QWebEngineProfile): string =
  let v_ms = fcQWebEngineProfile_cachePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCachePath*(self: gen_qwebengineprofile_types.QWebEngineProfile, path: string): void =
  fcQWebEngineProfile_setCachePath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc httpUserAgent*(self: gen_qwebengineprofile_types.QWebEngineProfile): string =
  let v_ms = fcQWebEngineProfile_httpUserAgent(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHttpUserAgent*(self: gen_qwebengineprofile_types.QWebEngineProfile, userAgent: string): void =
  fcQWebEngineProfile_setHttpUserAgent(self.h, struct_miqt_string(data: userAgent, len: csize_t(len(userAgent))))

proc httpCacheType*(self: gen_qwebengineprofile_types.QWebEngineProfile): cint =
  cint(fcQWebEngineProfile_httpCacheType(self.h))

proc setHttpCacheType*(self: gen_qwebengineprofile_types.QWebEngineProfile, httpCacheType: cint): void =
  fcQWebEngineProfile_setHttpCacheType(self.h, cint(httpCacheType))

proc setHttpAcceptLanguage*(self: gen_qwebengineprofile_types.QWebEngineProfile, httpAcceptLanguage: string): void =
  fcQWebEngineProfile_setHttpAcceptLanguage(self.h, struct_miqt_string(data: httpAcceptLanguage, len: csize_t(len(httpAcceptLanguage))))

proc httpAcceptLanguage*(self: gen_qwebengineprofile_types.QWebEngineProfile): string =
  let v_ms = fcQWebEngineProfile_httpAcceptLanguage(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc persistentCookiesPolicy*(self: gen_qwebengineprofile_types.QWebEngineProfile): cint =
  cint(fcQWebEngineProfile_persistentCookiesPolicy(self.h))

proc setPersistentCookiesPolicy*(self: gen_qwebengineprofile_types.QWebEngineProfile, persistentCookiesPolicy: cint): void =
  fcQWebEngineProfile_setPersistentCookiesPolicy(self.h, cint(persistentCookiesPolicy))

proc httpCacheMaximumSize*(self: gen_qwebengineprofile_types.QWebEngineProfile): cint =
  fcQWebEngineProfile_httpCacheMaximumSize(self.h)

proc setHttpCacheMaximumSize*(self: gen_qwebengineprofile_types.QWebEngineProfile, maxSize: cint): void =
  fcQWebEngineProfile_setHttpCacheMaximumSize(self.h, maxSize)

proc cookieStore*(self: gen_qwebengineprofile_types.QWebEngineProfile): gen_qwebenginecookiestore_types.QWebEngineCookieStore =
  gen_qwebenginecookiestore_types.QWebEngineCookieStore(h: fcQWebEngineProfile_cookieStore(self.h), owned: false)

proc setUrlRequestInterceptor*(self: gen_qwebengineprofile_types.QWebEngineProfile, interceptor: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor): void =
  fcQWebEngineProfile_setUrlRequestInterceptor(self.h, interceptor.h)

proc clearAllVisitedLinks*(self: gen_qwebengineprofile_types.QWebEngineProfile): void =
  fcQWebEngineProfile_clearAllVisitedLinks(self.h)

proc clearVisitedLinks*(self: gen_qwebengineprofile_types.QWebEngineProfile, urls: seq[gen_qurl_types.QUrl]): void =
  var urls_CArray = newSeq[pointer](len(urls))
  for i in 0..<len(urls):
    urls_CArray[i] = urls[i].h

  fcQWebEngineProfile_clearVisitedLinks(self.h, struct_miqt_array(len: csize_t(len(urls)), data: if len(urls) == 0: nil else: addr(urls_CArray[0])))

proc visitedLinksContainsUrl*(self: gen_qwebengineprofile_types.QWebEngineProfile, url: gen_qurl_types.QUrl): bool =
  fcQWebEngineProfile_visitedLinksContainsUrl(self.h, url.h)

proc settings*(self: gen_qwebengineprofile_types.QWebEngineProfile): gen_qwebenginesettings_types.QWebEngineSettings =
  gen_qwebenginesettings_types.QWebEngineSettings(h: fcQWebEngineProfile_settings(self.h), owned: false)

proc scripts*(self: gen_qwebengineprofile_types.QWebEngineProfile): gen_qwebenginescriptcollection_types.QWebEngineScriptCollection =
  gen_qwebenginescriptcollection_types.QWebEngineScriptCollection(h: fcQWebEngineProfile_scripts(self.h), owned: false)

proc urlSchemeHandler*(self: gen_qwebengineprofile_types.QWebEngineProfile, param1: seq[byte]): gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler =
  gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler(h: fcQWebEngineProfile_urlSchemeHandler(self.h, struct_miqt_string(data: cast[cstring](if len(param1) == 0: nil else: unsafeAddr param1[0]), len: csize_t(len(param1)))), owned: false)

proc installUrlSchemeHandler*(self: gen_qwebengineprofile_types.QWebEngineProfile, scheme: seq[byte], param2: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler): void =
  fcQWebEngineProfile_installUrlSchemeHandler(self.h, struct_miqt_string(data: cast[cstring](if len(scheme) == 0: nil else: unsafeAddr scheme[0]), len: csize_t(len(scheme))), param2.h)

proc removeUrlScheme*(self: gen_qwebengineprofile_types.QWebEngineProfile, scheme: seq[byte]): void =
  fcQWebEngineProfile_removeUrlScheme(self.h, struct_miqt_string(data: cast[cstring](if len(scheme) == 0: nil else: unsafeAddr scheme[0]), len: csize_t(len(scheme))))

proc removeUrlSchemeHandler*(self: gen_qwebengineprofile_types.QWebEngineProfile, param1: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler): void =
  fcQWebEngineProfile_removeUrlSchemeHandler(self.h, param1.h)

proc removeAllUrlSchemeHandlers*(self: gen_qwebengineprofile_types.QWebEngineProfile): void =
  fcQWebEngineProfile_removeAllUrlSchemeHandlers(self.h)

proc clearHttpCache*(self: gen_qwebengineprofile_types.QWebEngineProfile): void =
  fcQWebEngineProfile_clearHttpCache(self.h)

proc setSpellCheckLanguages*(self: gen_qwebengineprofile_types.QWebEngineProfile, languages: seq[string]): void =
  var languages_CArray = newSeq[struct_miqt_string](len(languages))
  for i in 0..<len(languages):
    languages_CArray[i] = struct_miqt_string(data: languages[i], len: csize_t(len(languages[i])))

  fcQWebEngineProfile_setSpellCheckLanguages(self.h, struct_miqt_array(len: csize_t(len(languages)), data: if len(languages) == 0: nil else: addr(languages_CArray[0])))

proc spellCheckLanguages*(self: gen_qwebengineprofile_types.QWebEngineProfile): seq[string] =
  var v_ma = fcQWebEngineProfile_spellCheckLanguages(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setSpellCheckEnabled*(self: gen_qwebengineprofile_types.QWebEngineProfile, enabled: bool): void =
  fcQWebEngineProfile_setSpellCheckEnabled(self.h, enabled)

proc isSpellCheckEnabled*(self: gen_qwebengineprofile_types.QWebEngineProfile): bool =
  fcQWebEngineProfile_isSpellCheckEnabled(self.h)

proc downloadPath*(self: gen_qwebengineprofile_types.QWebEngineProfile): string =
  let v_ms = fcQWebEngineProfile_downloadPath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDownloadPath*(self: gen_qwebengineprofile_types.QWebEngineProfile, path: string): void =
  fcQWebEngineProfile_setDownloadPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc clientCertificateStore*(self: gen_qwebengineprofile_types.QWebEngineProfile): gen_qwebengineclientcertificatestore_types.QWebEngineClientCertificateStore =
  gen_qwebengineclientcertificatestore_types.QWebEngineClientCertificateStore(h: fcQWebEngineProfile_clientCertificateStore(self.h), owned: false)

proc defaultProfile*(_: type gen_qwebengineprofile_types.QWebEngineProfile): gen_qwebengineprofile_types.QWebEngineProfile =
  gen_qwebengineprofile_types.QWebEngineProfile(h: fcQWebEngineProfile_defaultProfile(), owned: false)

proc downloadRequested*(self: gen_qwebengineprofile_types.QWebEngineProfile, download: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest): void =
  fcQWebEngineProfile_downloadRequested(self.h, download.h)

type QWebEngineProfiledownloadRequestedSlot* = proc(download: gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest)
proc cQWebEngineProfile_slot_callback_downloadRequested(slot: int, download: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineProfiledownloadRequestedSlot](cast[pointer](slot))
  let slotval1 = gen_qwebenginedownloadrequest_types.QWebEngineDownloadRequest(h: download, owned: false)

  nimfunc[](slotval1)

proc cQWebEngineProfile_slot_callback_downloadRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineProfiledownloadRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondownloadRequested*(self: gen_qwebengineprofile_types.QWebEngineProfile, slot: QWebEngineProfiledownloadRequestedSlot) =
  var tmp = new QWebEngineProfiledownloadRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_connect_downloadRequested(self.h, cast[int](addr tmp[]), cQWebEngineProfile_slot_callback_downloadRequested, cQWebEngineProfile_slot_callback_downloadRequested_release)

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

type QWebEngineProfilemetaObjectProc* = proc(self: QWebEngineProfile): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWebEngineProfilemetacastProc* = proc(self: QWebEngineProfile, param1: cstring): pointer {.raises: [], gcsafe.}
type QWebEngineProfilemetacallProc* = proc(self: QWebEngineProfile, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWebEngineProfileeventProc* = proc(self: QWebEngineProfile, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebEngineProfileeventFilterProc* = proc(self: QWebEngineProfile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebEngineProfiletimerEventProc* = proc(self: QWebEngineProfile, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWebEngineProfilechildEventProc* = proc(self: QWebEngineProfile, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWebEngineProfilecustomEventProc* = proc(self: QWebEngineProfile, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebEngineProfileconnectNotifyProc* = proc(self: QWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebEngineProfiledisconnectNotifyProc* = proc(self: QWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebEngineProfileVTable* {.inheritable, pure.} = object
  vtbl: cQWebEngineProfileVTable
  metaObject*: QWebEngineProfilemetaObjectProc
  metacast*: QWebEngineProfilemetacastProc
  metacall*: QWebEngineProfilemetacallProc
  event*: QWebEngineProfileeventProc
  eventFilter*: QWebEngineProfileeventFilterProc
  timerEvent*: QWebEngineProfiletimerEventProc
  childEvent*: QWebEngineProfilechildEventProc
  customEvent*: QWebEngineProfilecustomEventProc
  connectNotify*: QWebEngineProfileconnectNotifyProc
  disconnectNotify*: QWebEngineProfiledisconnectNotifyProc
proc QWebEngineProfilemetaObject*(self: gen_qwebengineprofile_types.QWebEngineProfile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineProfile_virtualbase_metaObject(self.h), owned: false)

proc cQWebEngineProfile_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineProfileVTable](fcQWebEngineProfile_vdata(self))
  let self = QWebEngineProfile(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebEngineProfilemetacast*(self: gen_qwebengineprofile_types.QWebEngineProfile, param1: cstring): pointer =
  fcQWebEngineProfile_virtualbase_metacast(self.h, param1)

proc cQWebEngineProfile_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebEngineProfileVTable](fcQWebEngineProfile_vdata(self))
  let self = QWebEngineProfile(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWebEngineProfilemetacall*(self: gen_qwebengineprofile_types.QWebEngineProfile, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineProfile_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQWebEngineProfile_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebEngineProfileVTable](fcQWebEngineProfile_vdata(self))
  let self = QWebEngineProfile(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebEngineProfileevent*(self: gen_qwebengineprofile_types.QWebEngineProfile, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebEngineProfile_virtualbase_event(self.h, event.h)

proc cQWebEngineProfile_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEngineProfileVTable](fcQWebEngineProfile_vdata(self))
  let self = QWebEngineProfile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWebEngineProfileeventFilter*(self: gen_qwebengineprofile_types.QWebEngineProfile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebEngineProfile_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQWebEngineProfile_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebEngineProfileVTable](fcQWebEngineProfile_vdata(self))
  let self = QWebEngineProfile(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWebEngineProfiletimerEvent*(self: gen_qwebengineprofile_types.QWebEngineProfile, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebEngineProfile_virtualbase_timerEvent(self.h, event.h)

proc cQWebEngineProfile_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineProfileVTable](fcQWebEngineProfile_vdata(self))
  let self = QWebEngineProfile(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QWebEngineProfilechildEvent*(self: gen_qwebengineprofile_types.QWebEngineProfile, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebEngineProfile_virtualbase_childEvent(self.h, event.h)

proc cQWebEngineProfile_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineProfileVTable](fcQWebEngineProfile_vdata(self))
  let self = QWebEngineProfile(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QWebEngineProfilecustomEvent*(self: gen_qwebengineprofile_types.QWebEngineProfile, event: gen_qcoreevent_types.QEvent): void =
  fcQWebEngineProfile_virtualbase_customEvent(self.h, event.h)

proc cQWebEngineProfile_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineProfileVTable](fcQWebEngineProfile_vdata(self))
  let self = QWebEngineProfile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QWebEngineProfileconnectNotify*(self: gen_qwebengineprofile_types.QWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebEngineProfile_virtualbase_connectNotify(self.h, signal.h)

proc cQWebEngineProfile_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineProfileVTable](fcQWebEngineProfile_vdata(self))
  let self = QWebEngineProfile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QWebEngineProfiledisconnectNotify*(self: gen_qwebengineprofile_types.QWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebEngineProfile_virtualbase_disconnectNotify(self.h, signal.h)

proc cQWebEngineProfile_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebEngineProfileVTable](fcQWebEngineProfile_vdata(self))
  let self = QWebEngineProfile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWebEngineProfile* {.inheritable.} = ref object of QWebEngineProfile
  vtbl*: cQWebEngineProfileVTable
method metaObject*(self: VirtualQWebEngineProfile): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWebEngineProfilemetaObject(self[])
proc cQWebEngineProfile_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWebEngineProfile](fcQWebEngineProfile_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQWebEngineProfile, param1: cstring): pointer {.base.} =
  QWebEngineProfilemetacast(self[], param1)
proc cQWebEngineProfile_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQWebEngineProfile](fcQWebEngineProfile_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQWebEngineProfile, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWebEngineProfilemetacall(self[], param1, param2, param3)
proc cQWebEngineProfile_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWebEngineProfile](fcQWebEngineProfile_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQWebEngineProfile, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebEngineProfileevent(self[], event)
proc cQWebEngineProfile_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebEngineProfile](fcQWebEngineProfile_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQWebEngineProfile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebEngineProfileeventFilter(self[], watched, event)
proc cQWebEngineProfile_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWebEngineProfile](fcQWebEngineProfile_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQWebEngineProfile, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWebEngineProfiletimerEvent(self[], event)
proc cQWebEngineProfile_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineProfile](fcQWebEngineProfile_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQWebEngineProfile, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWebEngineProfilechildEvent(self[], event)
proc cQWebEngineProfile_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineProfile](fcQWebEngineProfile_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQWebEngineProfile, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebEngineProfilecustomEvent(self[], event)
proc cQWebEngineProfile_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineProfile](fcQWebEngineProfile_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebEngineProfileconnectNotify(self[], signal)
proc cQWebEngineProfile_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineProfile](fcQWebEngineProfile_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebEngineProfiledisconnectNotify(self[], signal)
proc cQWebEngineProfile_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWebEngineProfile](fcQWebEngineProfile_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qwebengineprofile_types.QWebEngineProfile): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebEngineProfile_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwebengineprofile_types.QWebEngineProfile): cint =
  fcQWebEngineProfile_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebengineprofile_types.QWebEngineProfile, signal: cstring): cint =
  fcQWebEngineProfile_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebengineprofile_types.QWebEngineProfile, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebEngineProfile_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwebengineprofile_types.QWebEngineProfile,
    vtbl: ref QWebEngineProfileVTable = nil): gen_qwebengineprofile_types.QWebEngineProfile =
  let vtbl = if vtbl == nil: new QWebEngineProfileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebEngineProfileVTable](fcQWebEngineProfile_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebEngineProfile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebEngineProfile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebEngineProfile_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebEngineProfile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebEngineProfile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebEngineProfile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebEngineProfile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebEngineProfile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebEngineProfile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebEngineProfile_vtable_callback_disconnectNotify
  gen_qwebengineprofile_types.QWebEngineProfile(h: fcQWebEngineProfile_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qwebengineprofile_types.QWebEngineProfile,
    name: string,
    vtbl: ref QWebEngineProfileVTable = nil): gen_qwebengineprofile_types.QWebEngineProfile =
  let vtbl = if vtbl == nil: new QWebEngineProfileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebEngineProfileVTable](fcQWebEngineProfile_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebEngineProfile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebEngineProfile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebEngineProfile_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebEngineProfile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebEngineProfile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebEngineProfile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebEngineProfile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebEngineProfile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebEngineProfile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebEngineProfile_vtable_callback_disconnectNotify
  gen_qwebengineprofile_types.QWebEngineProfile(h: fcQWebEngineProfile_new2(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: name, len: csize_t(len(name)))), owned: true)

proc create*(T: type gen_qwebengineprofile_types.QWebEngineProfile,
    parent: gen_qobject_types.QObject,
    vtbl: ref QWebEngineProfileVTable = nil): gen_qwebengineprofile_types.QWebEngineProfile =
  let vtbl = if vtbl == nil: new QWebEngineProfileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebEngineProfileVTable](fcQWebEngineProfile_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebEngineProfile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebEngineProfile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebEngineProfile_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebEngineProfile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebEngineProfile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebEngineProfile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebEngineProfile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebEngineProfile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebEngineProfile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebEngineProfile_vtable_callback_disconnectNotify
  gen_qwebengineprofile_types.QWebEngineProfile(h: fcQWebEngineProfile_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qwebengineprofile_types.QWebEngineProfile,
    name: string, parent: gen_qobject_types.QObject,
    vtbl: ref QWebEngineProfileVTable = nil): gen_qwebengineprofile_types.QWebEngineProfile =
  let vtbl = if vtbl == nil: new QWebEngineProfileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWebEngineProfileVTable](fcQWebEngineProfile_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWebEngineProfile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWebEngineProfile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWebEngineProfile_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWebEngineProfile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWebEngineProfile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWebEngineProfile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWebEngineProfile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWebEngineProfile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWebEngineProfile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWebEngineProfile_vtable_callback_disconnectNotify
  gen_qwebengineprofile_types.QWebEngineProfile(h: fcQWebEngineProfile_new4(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: name, len: csize_t(len(name))), parent.h), owned: true)

const cQWebEngineProfile_mvtbl = cQWebEngineProfileVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWebEngineProfile()[])](self.fcQWebEngineProfile_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQWebEngineProfile_method_callback_metaObject,
  metacast: cQWebEngineProfile_method_callback_metacast,
  metacall: cQWebEngineProfile_method_callback_metacall,
  event: cQWebEngineProfile_method_callback_event,
  eventFilter: cQWebEngineProfile_method_callback_eventFilter,
  timerEvent: cQWebEngineProfile_method_callback_timerEvent,
  childEvent: cQWebEngineProfile_method_callback_childEvent,
  customEvent: cQWebEngineProfile_method_callback_customEvent,
  connectNotify: cQWebEngineProfile_method_callback_connectNotify,
  disconnectNotify: cQWebEngineProfile_method_callback_disconnectNotify,
)
proc create*(T: type gen_qwebengineprofile_types.QWebEngineProfile,
    inst: VirtualQWebEngineProfile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebEngineProfile_new(addr(cQWebEngineProfile_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qwebengineprofile_types.QWebEngineProfile,
    name: string,
    inst: VirtualQWebEngineProfile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebEngineProfile_new2(addr(cQWebEngineProfile_mvtbl), addr(inst[]), struct_miqt_string(data: name, len: csize_t(len(name))))
  inst[].owned = true

proc create*(T: type gen_qwebengineprofile_types.QWebEngineProfile,
    parent: gen_qobject_types.QObject,
    inst: VirtualQWebEngineProfile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebEngineProfile_new3(addr(cQWebEngineProfile_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qwebengineprofile_types.QWebEngineProfile,
    name: string, parent: gen_qobject_types.QObject,
    inst: VirtualQWebEngineProfile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWebEngineProfile_new4(addr(cQWebEngineProfile_mvtbl), addr(inst[]), struct_miqt_string(data: name, len: csize_t(len(name))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qwebengineprofile_types.QWebEngineProfile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineProfile_staticMetaObject())
