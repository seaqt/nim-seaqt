import ./Qt6Network_libs

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

const cflags = gorge("pkg-config --cflags Qt6Network")  & " -fPIC"
{.compile("gen_qnetworkcookiejar.cpp", cflags).}


import ./gen_qnetworkcookiejar_types
export gen_qnetworkcookiejar_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ./gen_qnetworkcookie_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qnetworkcookie_types

type cQNetworkCookieJar*{.exportc: "QNetworkCookieJar", incompleteStruct.} = object

proc fcQNetworkCookieJar_metaObject(self: pointer, ): pointer {.importc: "QNetworkCookieJar_metaObject".}
proc fcQNetworkCookieJar_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkCookieJar_metacast".}
proc fcQNetworkCookieJar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkCookieJar_metacall".}
proc fcQNetworkCookieJar_tr(s: cstring): struct_miqt_string {.importc: "QNetworkCookieJar_tr".}
proc fcQNetworkCookieJar_cookiesForUrl(self: pointer, url: pointer): struct_miqt_array {.importc: "QNetworkCookieJar_cookiesForUrl".}
proc fcQNetworkCookieJar_setCookiesFromUrl(self: pointer, cookieList: struct_miqt_array, url: pointer): bool {.importc: "QNetworkCookieJar_setCookiesFromUrl".}
proc fcQNetworkCookieJar_insertCookie(self: pointer, cookie: pointer): bool {.importc: "QNetworkCookieJar_insertCookie".}
proc fcQNetworkCookieJar_updateCookie(self: pointer, cookie: pointer): bool {.importc: "QNetworkCookieJar_updateCookie".}
proc fcQNetworkCookieJar_deleteCookie(self: pointer, cookie: pointer): bool {.importc: "QNetworkCookieJar_deleteCookie".}
proc fcQNetworkCookieJar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkCookieJar_tr2".}
proc fcQNetworkCookieJar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkCookieJar_tr3".}
type cQNetworkCookieJarVTable = object
  destructor*: proc(vtbl: ptr cQNetworkCookieJarVTable, self: ptr cQNetworkCookieJar) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  cookiesForUrl*: proc(vtbl, self: pointer, url: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  setCookiesFromUrl*: proc(vtbl, self: pointer, cookieList: struct_miqt_array, url: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertCookie*: proc(vtbl, self: pointer, cookie: pointer): bool {.cdecl, raises: [], gcsafe.}
  updateCookie*: proc(vtbl, self: pointer, cookie: pointer): bool {.cdecl, raises: [], gcsafe.}
  deleteCookie*: proc(vtbl, self: pointer, cookie: pointer): bool {.cdecl, raises: [], gcsafe.}
  validateCookie*: proc(vtbl, self: pointer, cookie: pointer, url: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQNetworkCookieJar_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QNetworkCookieJar_virtualbase_metaObject".}
proc fcQNetworkCookieJar_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkCookieJar_virtualbase_metacast".}
proc fcQNetworkCookieJar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkCookieJar_virtualbase_metacall".}
proc fcQNetworkCookieJar_virtualbase_cookiesForUrl(self: pointer, url: pointer): struct_miqt_array {.importc: "QNetworkCookieJar_virtualbase_cookiesForUrl".}
proc fcQNetworkCookieJar_virtualbase_setCookiesFromUrl(self: pointer, cookieList: struct_miqt_array, url: pointer): bool {.importc: "QNetworkCookieJar_virtualbase_setCookiesFromUrl".}
proc fcQNetworkCookieJar_virtualbase_insertCookie(self: pointer, cookie: pointer): bool {.importc: "QNetworkCookieJar_virtualbase_insertCookie".}
proc fcQNetworkCookieJar_virtualbase_updateCookie(self: pointer, cookie: pointer): bool {.importc: "QNetworkCookieJar_virtualbase_updateCookie".}
proc fcQNetworkCookieJar_virtualbase_deleteCookie(self: pointer, cookie: pointer): bool {.importc: "QNetworkCookieJar_virtualbase_deleteCookie".}
proc fcQNetworkCookieJar_virtualbase_validateCookie(self: pointer, cookie: pointer, url: pointer): bool {.importc: "QNetworkCookieJar_virtualbase_validateCookie".}
proc fcQNetworkCookieJar_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QNetworkCookieJar_virtualbase_event".}
proc fcQNetworkCookieJar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QNetworkCookieJar_virtualbase_eventFilter".}
proc fcQNetworkCookieJar_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QNetworkCookieJar_virtualbase_timerEvent".}
proc fcQNetworkCookieJar_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QNetworkCookieJar_virtualbase_childEvent".}
proc fcQNetworkCookieJar_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QNetworkCookieJar_virtualbase_customEvent".}
proc fcQNetworkCookieJar_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QNetworkCookieJar_virtualbase_connectNotify".}
proc fcQNetworkCookieJar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QNetworkCookieJar_virtualbase_disconnectNotify".}
proc fcQNetworkCookieJar_protectedbase_allCookies(self: pointer, ): struct_miqt_array {.importc: "QNetworkCookieJar_protectedbase_allCookies".}
proc fcQNetworkCookieJar_protectedbase_setAllCookies(self: pointer, cookieList: struct_miqt_array): void {.importc: "QNetworkCookieJar_protectedbase_setAllCookies".}
proc fcQNetworkCookieJar_protectedbase_sender(self: pointer, ): pointer {.importc: "QNetworkCookieJar_protectedbase_sender".}
proc fcQNetworkCookieJar_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QNetworkCookieJar_protectedbase_senderSignalIndex".}
proc fcQNetworkCookieJar_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QNetworkCookieJar_protectedbase_receivers".}
proc fcQNetworkCookieJar_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QNetworkCookieJar_protectedbase_isSignalConnected".}
proc fcQNetworkCookieJar_new(vtbl: pointer, ): ptr cQNetworkCookieJar {.importc: "QNetworkCookieJar_new".}
proc fcQNetworkCookieJar_new2(vtbl: pointer, parent: pointer): ptr cQNetworkCookieJar {.importc: "QNetworkCookieJar_new2".}
proc fcQNetworkCookieJar_staticMetaObject(): pointer {.importc: "QNetworkCookieJar_staticMetaObject".}
proc fcQNetworkCookieJar_delete(self: pointer) {.importc: "QNetworkCookieJar_delete".}

proc metaObject*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkCookieJar_metaObject(self.h))

proc metacast*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, param1: cstring): pointer =
  fcQNetworkCookieJar_metacast(self.h, param1)

proc metacall*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkCookieJar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qnetworkcookiejar_types.QNetworkCookieJar, s: cstring): string =
  let v_ms = fcQNetworkCookieJar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc cookiesForUrl*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, url: gen_qurl_types.QUrl): seq[gen_qnetworkcookie_types.QNetworkCookie] =
  var v_ma = fcQNetworkCookieJar_cookiesForUrl(self.h, url.h)
  var vx_ret = newSeq[gen_qnetworkcookie_types.QNetworkCookie](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkcookie_types.QNetworkCookie(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc setCookiesFromUrl*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookieList: seq[gen_qnetworkcookie_types.QNetworkCookie], url: gen_qurl_types.QUrl): bool =
  var cookieList_CArray = newSeq[pointer](len(cookieList))
  for i in 0..<len(cookieList):
    cookieList_CArray[i] = cookieList[i].h

  fcQNetworkCookieJar_setCookiesFromUrl(self.h, struct_miqt_array(len: csize_t(len(cookieList)), data: if len(cookieList) == 0: nil else: addr(cookieList_CArray[0])), url.h)

proc insertCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fcQNetworkCookieJar_insertCookie(self.h, cookie.h)

proc updateCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fcQNetworkCookieJar_updateCookie(self.h, cookie.h)

proc deleteCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fcQNetworkCookieJar_deleteCookie(self.h, cookie.h)

proc tr*(_: type gen_qnetworkcookiejar_types.QNetworkCookieJar, s: cstring, c: cstring): string =
  let v_ms = fcQNetworkCookieJar_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qnetworkcookiejar_types.QNetworkCookieJar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkCookieJar_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QNetworkCookieJarmetaObjectProc* = proc(self: QNetworkCookieJar): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QNetworkCookieJarmetacastProc* = proc(self: QNetworkCookieJar, param1: cstring): pointer {.raises: [], gcsafe.}
type QNetworkCookieJarmetacallProc* = proc(self: QNetworkCookieJar, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QNetworkCookieJarcookiesForUrlProc* = proc(self: QNetworkCookieJar, url: gen_qurl_types.QUrl): seq[gen_qnetworkcookie_types.QNetworkCookie] {.raises: [], gcsafe.}
type QNetworkCookieJarsetCookiesFromUrlProc* = proc(self: QNetworkCookieJar, cookieList: seq[gen_qnetworkcookie_types.QNetworkCookie], url: gen_qurl_types.QUrl): bool {.raises: [], gcsafe.}
type QNetworkCookieJarinsertCookieProc* = proc(self: QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool {.raises: [], gcsafe.}
type QNetworkCookieJarupdateCookieProc* = proc(self: QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool {.raises: [], gcsafe.}
type QNetworkCookieJardeleteCookieProc* = proc(self: QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool {.raises: [], gcsafe.}
type QNetworkCookieJarvalidateCookieProc* = proc(self: QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie, url: gen_qurl_types.QUrl): bool {.raises: [], gcsafe.}
type QNetworkCookieJareventProc* = proc(self: QNetworkCookieJar, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QNetworkCookieJareventFilterProc* = proc(self: QNetworkCookieJar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QNetworkCookieJartimerEventProc* = proc(self: QNetworkCookieJar, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QNetworkCookieJarchildEventProc* = proc(self: QNetworkCookieJar, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QNetworkCookieJarcustomEventProc* = proc(self: QNetworkCookieJar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QNetworkCookieJarconnectNotifyProc* = proc(self: QNetworkCookieJar, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QNetworkCookieJardisconnectNotifyProc* = proc(self: QNetworkCookieJar, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QNetworkCookieJarVTable* = object
  vtbl: cQNetworkCookieJarVTable
  metaObject*: QNetworkCookieJarmetaObjectProc
  metacast*: QNetworkCookieJarmetacastProc
  metacall*: QNetworkCookieJarmetacallProc
  cookiesForUrl*: QNetworkCookieJarcookiesForUrlProc
  setCookiesFromUrl*: QNetworkCookieJarsetCookiesFromUrlProc
  insertCookie*: QNetworkCookieJarinsertCookieProc
  updateCookie*: QNetworkCookieJarupdateCookieProc
  deleteCookie*: QNetworkCookieJardeleteCookieProc
  validateCookie*: QNetworkCookieJarvalidateCookieProc
  event*: QNetworkCookieJareventProc
  eventFilter*: QNetworkCookieJareventFilterProc
  timerEvent*: QNetworkCookieJartimerEventProc
  childEvent*: QNetworkCookieJarchildEventProc
  customEvent*: QNetworkCookieJarcustomEventProc
  connectNotify*: QNetworkCookieJarconnectNotifyProc
  disconnectNotify*: QNetworkCookieJardisconnectNotifyProc
proc QNetworkCookieJarmetaObject*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkCookieJar_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQNetworkCookieJar_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](vtbl)
  let self = QNetworkCookieJar(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QNetworkCookieJarmetacast*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, param1: cstring): pointer =
  fcQNetworkCookieJar_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQNetworkCookieJar_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](vtbl)
  let self = QNetworkCookieJar(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QNetworkCookieJarmetacall*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkCookieJar_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQNetworkCookieJar_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](vtbl)
  let self = QNetworkCookieJar(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QNetworkCookieJarcookiesForUrl*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, url: gen_qurl_types.QUrl): seq[gen_qnetworkcookie_types.QNetworkCookie] =
  var v_ma = fcQNetworkCookieJar_virtualbase_cookiesForUrl(self.h, url.h)
  var vx_ret = newSeq[gen_qnetworkcookie_types.QNetworkCookie](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkcookie_types.QNetworkCookie(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc miqt_exec_callback_cQNetworkCookieJar_cookiesForUrl(vtbl: pointer, self: pointer, url: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](vtbl)
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: url)
  var virtualReturn = vtbl[].cookiesForUrl(self, slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QNetworkCookieJarsetCookiesFromUrl*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookieList: seq[gen_qnetworkcookie_types.QNetworkCookie], url: gen_qurl_types.QUrl): bool =
  var cookieList_CArray = newSeq[pointer](len(cookieList))
  for i in 0..<len(cookieList):
    cookieList_CArray[i] = cookieList[i].h

  fcQNetworkCookieJar_virtualbase_setCookiesFromUrl(self.h, struct_miqt_array(len: csize_t(len(cookieList)), data: if len(cookieList) == 0: nil else: addr(cookieList_CArray[0])), url.h)

proc miqt_exec_callback_cQNetworkCookieJar_setCookiesFromUrl(vtbl: pointer, self: pointer, cookieList: struct_miqt_array, url: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](vtbl)
  let self = QNetworkCookieJar(h: self)
  var vcookieList_ma = cookieList
  var vcookieListx_ret = newSeq[gen_qnetworkcookie_types.QNetworkCookie](int(vcookieList_ma.len))
  let vcookieList_outCast = cast[ptr UncheckedArray[pointer]](vcookieList_ma.data)
  for i in 0 ..< vcookieList_ma.len:
    vcookieListx_ret[i] = gen_qnetworkcookie_types.QNetworkCookie(h: vcookieList_outCast[i])
  c_free(vcookieList_ma.data)
  let slotval1 = vcookieListx_ret
  let slotval2 = gen_qurl_types.QUrl(h: url)
  var virtualReturn = vtbl[].setCookiesFromUrl(self, slotval1, slotval2)
  virtualReturn

proc QNetworkCookieJarinsertCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fcQNetworkCookieJar_virtualbase_insertCookie(self.h, cookie.h)

proc miqt_exec_callback_cQNetworkCookieJar_insertCookie(vtbl: pointer, self: pointer, cookie: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](vtbl)
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie)
  var virtualReturn = vtbl[].insertCookie(self, slotval1)
  virtualReturn

proc QNetworkCookieJarupdateCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fcQNetworkCookieJar_virtualbase_updateCookie(self.h, cookie.h)

proc miqt_exec_callback_cQNetworkCookieJar_updateCookie(vtbl: pointer, self: pointer, cookie: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](vtbl)
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie)
  var virtualReturn = vtbl[].updateCookie(self, slotval1)
  virtualReturn

proc QNetworkCookieJardeleteCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fcQNetworkCookieJar_virtualbase_deleteCookie(self.h, cookie.h)

proc miqt_exec_callback_cQNetworkCookieJar_deleteCookie(vtbl: pointer, self: pointer, cookie: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](vtbl)
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie)
  var virtualReturn = vtbl[].deleteCookie(self, slotval1)
  virtualReturn

proc QNetworkCookieJarvalidateCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie, url: gen_qurl_types.QUrl): bool =
  fcQNetworkCookieJar_virtualbase_validateCookie(self.h, cookie.h, url.h)

proc miqt_exec_callback_cQNetworkCookieJar_validateCookie(vtbl: pointer, self: pointer, cookie: pointer, url: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](vtbl)
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie)
  let slotval2 = gen_qurl_types.QUrl(h: url)
  var virtualReturn = vtbl[].validateCookie(self, slotval1, slotval2)
  virtualReturn

proc QNetworkCookieJarevent*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, event: gen_qcoreevent_types.QEvent): bool =
  fcQNetworkCookieJar_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQNetworkCookieJar_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](vtbl)
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QNetworkCookieJareventFilter*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQNetworkCookieJar_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQNetworkCookieJar_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](vtbl)
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QNetworkCookieJartimerEvent*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQNetworkCookieJar_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQNetworkCookieJar_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](vtbl)
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QNetworkCookieJarchildEvent*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, event: gen_qcoreevent_types.QChildEvent): void =
  fcQNetworkCookieJar_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQNetworkCookieJar_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](vtbl)
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QNetworkCookieJarcustomEvent*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, event: gen_qcoreevent_types.QEvent): void =
  fcQNetworkCookieJar_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQNetworkCookieJar_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](vtbl)
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QNetworkCookieJarconnectNotify*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNetworkCookieJar_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQNetworkCookieJar_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](vtbl)
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QNetworkCookieJardisconnectNotify*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNetworkCookieJar_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQNetworkCookieJar_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](vtbl)
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc allCookies*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, ): seq[gen_qnetworkcookie_types.QNetworkCookie] =
  var v_ma = fcQNetworkCookieJar_protectedbase_allCookies(self.h)
  var vx_ret = newSeq[gen_qnetworkcookie_types.QNetworkCookie](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkcookie_types.QNetworkCookie(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc setAllCookies*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookieList: seq[gen_qnetworkcookie_types.QNetworkCookie]): void =
  var cookieList_CArray = newSeq[pointer](len(cookieList))
  for i in 0..<len(cookieList):
    cookieList_CArray[i] = cookieList[i].h

  fcQNetworkCookieJar_protectedbase_setAllCookies(self.h, struct_miqt_array(len: csize_t(len(cookieList)), data: if len(cookieList) == 0: nil else: addr(cookieList_CArray[0])))

proc sender*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQNetworkCookieJar_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, ): cint =
  fcQNetworkCookieJar_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, signal: cstring): cint =
  fcQNetworkCookieJar_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQNetworkCookieJar_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qnetworkcookiejar_types.QNetworkCookieJar,
    vtbl: ref QNetworkCookieJarVTable = nil): gen_qnetworkcookiejar_types.QNetworkCookieJar =
  let vtbl = if vtbl == nil: new QNetworkCookieJarVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQNetworkCookieJarVTable, _: ptr cQNetworkCookieJar) {.cdecl.} =
    let vtbl = cast[ref QNetworkCookieJarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQNetworkCookieJar_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQNetworkCookieJar_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQNetworkCookieJar_metacall
  if not isNil(vtbl.cookiesForUrl):
    vtbl[].vtbl.cookiesForUrl = miqt_exec_callback_cQNetworkCookieJar_cookiesForUrl
  if not isNil(vtbl.setCookiesFromUrl):
    vtbl[].vtbl.setCookiesFromUrl = miqt_exec_callback_cQNetworkCookieJar_setCookiesFromUrl
  if not isNil(vtbl.insertCookie):
    vtbl[].vtbl.insertCookie = miqt_exec_callback_cQNetworkCookieJar_insertCookie
  if not isNil(vtbl.updateCookie):
    vtbl[].vtbl.updateCookie = miqt_exec_callback_cQNetworkCookieJar_updateCookie
  if not isNil(vtbl.deleteCookie):
    vtbl[].vtbl.deleteCookie = miqt_exec_callback_cQNetworkCookieJar_deleteCookie
  if not isNil(vtbl.validateCookie):
    vtbl[].vtbl.validateCookie = miqt_exec_callback_cQNetworkCookieJar_validateCookie
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQNetworkCookieJar_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQNetworkCookieJar_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQNetworkCookieJar_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQNetworkCookieJar_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQNetworkCookieJar_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQNetworkCookieJar_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQNetworkCookieJar_disconnectNotify
  gen_qnetworkcookiejar_types.QNetworkCookieJar(h: fcQNetworkCookieJar_new(addr(vtbl[]), ))

proc create*(T: type gen_qnetworkcookiejar_types.QNetworkCookieJar,
    parent: gen_qobject_types.QObject,
    vtbl: ref QNetworkCookieJarVTable = nil): gen_qnetworkcookiejar_types.QNetworkCookieJar =
  let vtbl = if vtbl == nil: new QNetworkCookieJarVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQNetworkCookieJarVTable, _: ptr cQNetworkCookieJar) {.cdecl.} =
    let vtbl = cast[ref QNetworkCookieJarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQNetworkCookieJar_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQNetworkCookieJar_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQNetworkCookieJar_metacall
  if not isNil(vtbl.cookiesForUrl):
    vtbl[].vtbl.cookiesForUrl = miqt_exec_callback_cQNetworkCookieJar_cookiesForUrl
  if not isNil(vtbl.setCookiesFromUrl):
    vtbl[].vtbl.setCookiesFromUrl = miqt_exec_callback_cQNetworkCookieJar_setCookiesFromUrl
  if not isNil(vtbl.insertCookie):
    vtbl[].vtbl.insertCookie = miqt_exec_callback_cQNetworkCookieJar_insertCookie
  if not isNil(vtbl.updateCookie):
    vtbl[].vtbl.updateCookie = miqt_exec_callback_cQNetworkCookieJar_updateCookie
  if not isNil(vtbl.deleteCookie):
    vtbl[].vtbl.deleteCookie = miqt_exec_callback_cQNetworkCookieJar_deleteCookie
  if not isNil(vtbl.validateCookie):
    vtbl[].vtbl.validateCookie = miqt_exec_callback_cQNetworkCookieJar_validateCookie
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQNetworkCookieJar_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQNetworkCookieJar_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQNetworkCookieJar_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQNetworkCookieJar_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQNetworkCookieJar_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQNetworkCookieJar_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQNetworkCookieJar_disconnectNotify
  gen_qnetworkcookiejar_types.QNetworkCookieJar(h: fcQNetworkCookieJar_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qnetworkcookiejar_types.QNetworkCookieJar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkCookieJar_staticMetaObject())
proc delete*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar) =
  fcQNetworkCookieJar_delete(self.h)
