import ./qtnetwork_pkg

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


{.compile("gen_qnetworkcookiejar.cpp", QtNetworkCFlags).}


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

proc fcQNetworkCookieJar_metaObject(self: pointer): pointer {.importc: "QNetworkCookieJar_metaObject".}
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
proc fcQNetworkCookieJar_vtbl(self: pointer): pointer {.importc: "QNetworkCookieJar_vtbl".}
proc fcQNetworkCookieJar_vdata(self: pointer): pointer {.importc: "QNetworkCookieJar_vdata".}

type cQNetworkCookieJarVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  cookiesForUrl*: proc(self: pointer, url: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  setCookiesFromUrl*: proc(self: pointer, cookieList: struct_miqt_array, url: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertCookie*: proc(self: pointer, cookie: pointer): bool {.cdecl, raises: [], gcsafe.}
  updateCookie*: proc(self: pointer, cookie: pointer): bool {.cdecl, raises: [], gcsafe.}
  deleteCookie*: proc(self: pointer, cookie: pointer): bool {.cdecl, raises: [], gcsafe.}
  validateCookie*: proc(self: pointer, cookie: pointer, url: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQNetworkCookieJar_virtualbase_metaObject(self: pointer): pointer {.importc: "QNetworkCookieJar_virtualbase_metaObject".}
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
proc fcQNetworkCookieJar_protectedbase_allCookies(self: pointer): struct_miqt_array {.importc: "QNetworkCookieJar_protectedbase_allCookies".}
proc fcQNetworkCookieJar_protectedbase_setAllCookies(self: pointer, cookieList: struct_miqt_array): void {.importc: "QNetworkCookieJar_protectedbase_setAllCookies".}
proc fcQNetworkCookieJar_protectedbase_sender(self: pointer): pointer {.importc: "QNetworkCookieJar_protectedbase_sender".}
proc fcQNetworkCookieJar_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QNetworkCookieJar_protectedbase_senderSignalIndex".}
proc fcQNetworkCookieJar_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QNetworkCookieJar_protectedbase_receivers".}
proc fcQNetworkCookieJar_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QNetworkCookieJar_protectedbase_isSignalConnected".}
proc fcQNetworkCookieJar_new(vtbl, vdata: pointer): ptr cQNetworkCookieJar {.importc: "QNetworkCookieJar_new".}
proc fcQNetworkCookieJar_new2(vtbl, vdata: pointer, parent: pointer): ptr cQNetworkCookieJar {.importc: "QNetworkCookieJar_new2".}
proc fcQNetworkCookieJar_staticMetaObject(): pointer {.importc: "QNetworkCookieJar_staticMetaObject".}

proc metaObject*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkCookieJar_metaObject(self.h), owned: false)

proc metacast*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, param1: cstring): pointer =
  fcQNetworkCookieJar_metacast(self.h, param1)

proc metacall*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkCookieJar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qnetworkcookiejar_types.QNetworkCookieJar, s: cstring): string =
  let v_ms = fcQNetworkCookieJar_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc cookiesForUrl*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, url: gen_qurl_types.QUrl): seq[gen_qnetworkcookie_types.QNetworkCookie] =
  var v_ma = fcQNetworkCookieJar_cookiesForUrl(self.h, url.h)
  var vx_ret = newSeq[gen_qnetworkcookie_types.QNetworkCookie](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkcookie_types.QNetworkCookie(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc setCookiesFromUrl*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookieList: openArray[gen_qnetworkcookie_types.QNetworkCookie], url: gen_qurl_types.QUrl): bool =
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
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qnetworkcookiejar_types.QNetworkCookieJar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkCookieJar_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QNetworkCookieJarmetaObjectProc* = proc(self: QNetworkCookieJar): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QNetworkCookieJarmetacastProc* = proc(self: QNetworkCookieJar, param1: cstring): pointer {.raises: [], gcsafe.}
type QNetworkCookieJarmetacallProc* = proc(self: QNetworkCookieJar, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QNetworkCookieJarcookiesForUrlProc* = proc(self: QNetworkCookieJar, url: gen_qurl_types.QUrl): seq[gen_qnetworkcookie_types.QNetworkCookie] {.raises: [], gcsafe.}
type QNetworkCookieJarsetCookiesFromUrlProc* = proc(self: QNetworkCookieJar, cookieList: openArray[gen_qnetworkcookie_types.QNetworkCookie], url: gen_qurl_types.QUrl): bool {.raises: [], gcsafe.}
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

type QNetworkCookieJarVTable* {.inheritable, pure.} = object
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

proc QNetworkCookieJarmetaObject*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkCookieJar_virtualbase_metaObject(self.h), owned: false)

proc QNetworkCookieJarmetacast*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, param1: cstring): pointer =
  fcQNetworkCookieJar_virtualbase_metacast(self.h, param1)

proc QNetworkCookieJarmetacall*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkCookieJar_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QNetworkCookieJarcookiesForUrl*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, url: gen_qurl_types.QUrl): seq[gen_qnetworkcookie_types.QNetworkCookie] =
  var v_ma = fcQNetworkCookieJar_virtualbase_cookiesForUrl(self.h, url.h)
  var vx_ret = newSeq[gen_qnetworkcookie_types.QNetworkCookie](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkcookie_types.QNetworkCookie(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc QNetworkCookieJarsetCookiesFromUrl*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookieList: openArray[gen_qnetworkcookie_types.QNetworkCookie], url: gen_qurl_types.QUrl): bool =
  var cookieList_CArray = newSeq[pointer](len(cookieList))
  for i in 0..<len(cookieList):
    cookieList_CArray[i] = cookieList[i].h

  fcQNetworkCookieJar_virtualbase_setCookiesFromUrl(self.h, struct_miqt_array(len: csize_t(len(cookieList)), data: if len(cookieList) == 0: nil else: addr(cookieList_CArray[0])), url.h)

proc QNetworkCookieJarinsertCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fcQNetworkCookieJar_virtualbase_insertCookie(self.h, cookie.h)

proc QNetworkCookieJarupdateCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fcQNetworkCookieJar_virtualbase_updateCookie(self.h, cookie.h)

proc QNetworkCookieJardeleteCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fcQNetworkCookieJar_virtualbase_deleteCookie(self.h, cookie.h)

proc QNetworkCookieJarvalidateCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie, url: gen_qurl_types.QUrl): bool =
  fcQNetworkCookieJar_virtualbase_validateCookie(self.h, cookie.h, url.h)

proc QNetworkCookieJarevent*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, event: gen_qcoreevent_types.QEvent): bool =
  fcQNetworkCookieJar_virtualbase_event(self.h, event.h)

proc QNetworkCookieJareventFilter*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQNetworkCookieJar_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QNetworkCookieJartimerEvent*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQNetworkCookieJar_virtualbase_timerEvent(self.h, event.h)

proc QNetworkCookieJarchildEvent*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, event: gen_qcoreevent_types.QChildEvent): void =
  fcQNetworkCookieJar_virtualbase_childEvent(self.h, event.h)

proc QNetworkCookieJarcustomEvent*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, event: gen_qcoreevent_types.QEvent): void =
  fcQNetworkCookieJar_virtualbase_customEvent(self.h, event.h)

proc QNetworkCookieJarconnectNotify*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNetworkCookieJar_virtualbase_connectNotify(self.h, signal.h)

proc QNetworkCookieJardisconnectNotify*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNetworkCookieJar_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQNetworkCookieJar_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
  let self = QNetworkCookieJar(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQNetworkCookieJar_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
  let self = QNetworkCookieJar(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQNetworkCookieJar_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
  let self = QNetworkCookieJar(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQNetworkCookieJar_vtable_callback_cookiesForUrl(self: pointer, url: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: url, owned: false)
  var virtualReturn = vtbl[].cookiesForUrl(self, slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQNetworkCookieJar_vtable_callback_setCookiesFromUrl(self: pointer, cookieList: struct_miqt_array, url: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
  let self = QNetworkCookieJar(h: self)
  var vcookieList_ma = cookieList
  var vcookieListx_ret = newSeq[gen_qnetworkcookie_types.QNetworkCookie](int(vcookieList_ma.len))
  let vcookieList_outCast = cast[ptr UncheckedArray[pointer]](vcookieList_ma.data)
  for i in 0 ..< vcookieList_ma.len:
    vcookieListx_ret[i] = gen_qnetworkcookie_types.QNetworkCookie(h: vcookieList_outCast[i], owned: true)
  c_free(vcookieList_ma.data)
  let slotval1 = vcookieListx_ret
  let slotval2 = gen_qurl_types.QUrl(h: url, owned: false)
  var virtualReturn = vtbl[].setCookiesFromUrl(self, slotval1, slotval2)
  virtualReturn

proc fcQNetworkCookieJar_vtable_callback_insertCookie(self: pointer, cookie: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie, owned: false)
  var virtualReturn = vtbl[].insertCookie(self, slotval1)
  virtualReturn

proc fcQNetworkCookieJar_vtable_callback_updateCookie(self: pointer, cookie: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie, owned: false)
  var virtualReturn = vtbl[].updateCookie(self, slotval1)
  virtualReturn

proc fcQNetworkCookieJar_vtable_callback_deleteCookie(self: pointer, cookie: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie, owned: false)
  var virtualReturn = vtbl[].deleteCookie(self, slotval1)
  virtualReturn

proc fcQNetworkCookieJar_vtable_callback_validateCookie(self: pointer, cookie: pointer, url: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie, owned: false)
  let slotval2 = gen_qurl_types.QUrl(h: url, owned: false)
  var virtualReturn = vtbl[].validateCookie(self, slotval1, slotval2)
  virtualReturn

proc fcQNetworkCookieJar_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQNetworkCookieJar_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQNetworkCookieJar_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQNetworkCookieJar_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQNetworkCookieJar_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQNetworkCookieJar_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQNetworkCookieJar_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
  let self = QNetworkCookieJar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQNetworkCookieJar* {.inheritable.} = ref object of QNetworkCookieJar
  vtbl*: cQNetworkCookieJarVTable

method metaObject*(self: VirtualQNetworkCookieJar): gen_qobjectdefs_types.QMetaObject {.base.} =
  QNetworkCookieJarmetaObject(self[])
method metacast*(self: VirtualQNetworkCookieJar, param1: cstring): pointer {.base.} =
  QNetworkCookieJarmetacast(self[], param1)
method metacall*(self: VirtualQNetworkCookieJar, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QNetworkCookieJarmetacall(self[], param1, param2, param3)
method cookiesForUrl*(self: VirtualQNetworkCookieJar, url: gen_qurl_types.QUrl): seq[gen_qnetworkcookie_types.QNetworkCookie] {.base.} =
  QNetworkCookieJarcookiesForUrl(self[], url)
method setCookiesFromUrl*(self: VirtualQNetworkCookieJar, cookieList: openArray[gen_qnetworkcookie_types.QNetworkCookie], url: gen_qurl_types.QUrl): bool {.base.} =
  QNetworkCookieJarsetCookiesFromUrl(self[], cookieList, url)
method insertCookie*(self: VirtualQNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool {.base.} =
  QNetworkCookieJarinsertCookie(self[], cookie)
method updateCookie*(self: VirtualQNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool {.base.} =
  QNetworkCookieJarupdateCookie(self[], cookie)
method deleteCookie*(self: VirtualQNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool {.base.} =
  QNetworkCookieJardeleteCookie(self[], cookie)
method validateCookie*(self: VirtualQNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie, url: gen_qurl_types.QUrl): bool {.base.} =
  QNetworkCookieJarvalidateCookie(self[], cookie, url)
method event*(self: VirtualQNetworkCookieJar, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QNetworkCookieJarevent(self[], event)
method eventFilter*(self: VirtualQNetworkCookieJar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QNetworkCookieJareventFilter(self[], watched, event)
method timerEvent*(self: VirtualQNetworkCookieJar, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QNetworkCookieJartimerEvent(self[], event)
method childEvent*(self: VirtualQNetworkCookieJar, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QNetworkCookieJarchildEvent(self[], event)
method customEvent*(self: VirtualQNetworkCookieJar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QNetworkCookieJarcustomEvent(self[], event)
method connectNotify*(self: VirtualQNetworkCookieJar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QNetworkCookieJarconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQNetworkCookieJar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QNetworkCookieJardisconnectNotify(self[], signal)

proc fcQNetworkCookieJar_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQNetworkCookieJar](fcQNetworkCookieJar_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQNetworkCookieJar_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQNetworkCookieJar](fcQNetworkCookieJar_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQNetworkCookieJar_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQNetworkCookieJar](fcQNetworkCookieJar_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQNetworkCookieJar_method_callback_cookiesForUrl(self: pointer, url: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQNetworkCookieJar](fcQNetworkCookieJar_vdata(self))
  let slotval1 = gen_qurl_types.QUrl(h: url, owned: false)
  var virtualReturn = inst.cookiesForUrl(slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQNetworkCookieJar_method_callback_setCookiesFromUrl(self: pointer, cookieList: struct_miqt_array, url: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNetworkCookieJar](fcQNetworkCookieJar_vdata(self))
  var vcookieList_ma = cookieList
  var vcookieListx_ret = newSeq[gen_qnetworkcookie_types.QNetworkCookie](int(vcookieList_ma.len))
  let vcookieList_outCast = cast[ptr UncheckedArray[pointer]](vcookieList_ma.data)
  for i in 0 ..< vcookieList_ma.len:
    vcookieListx_ret[i] = gen_qnetworkcookie_types.QNetworkCookie(h: vcookieList_outCast[i], owned: true)
  c_free(vcookieList_ma.data)
  let slotval1 = vcookieListx_ret
  let slotval2 = gen_qurl_types.QUrl(h: url, owned: false)
  var virtualReturn = inst.setCookiesFromUrl(slotval1, slotval2)
  virtualReturn

proc fcQNetworkCookieJar_method_callback_insertCookie(self: pointer, cookie: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNetworkCookieJar](fcQNetworkCookieJar_vdata(self))
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie, owned: false)
  var virtualReturn = inst.insertCookie(slotval1)
  virtualReturn

proc fcQNetworkCookieJar_method_callback_updateCookie(self: pointer, cookie: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNetworkCookieJar](fcQNetworkCookieJar_vdata(self))
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie, owned: false)
  var virtualReturn = inst.updateCookie(slotval1)
  virtualReturn

proc fcQNetworkCookieJar_method_callback_deleteCookie(self: pointer, cookie: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNetworkCookieJar](fcQNetworkCookieJar_vdata(self))
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie, owned: false)
  var virtualReturn = inst.deleteCookie(slotval1)
  virtualReturn

proc fcQNetworkCookieJar_method_callback_validateCookie(self: pointer, cookie: pointer, url: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNetworkCookieJar](fcQNetworkCookieJar_vdata(self))
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie, owned: false)
  let slotval2 = gen_qurl_types.QUrl(h: url, owned: false)
  var virtualReturn = inst.validateCookie(slotval1, slotval2)
  virtualReturn

proc fcQNetworkCookieJar_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNetworkCookieJar](fcQNetworkCookieJar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQNetworkCookieJar_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNetworkCookieJar](fcQNetworkCookieJar_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQNetworkCookieJar_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkCookieJar](fcQNetworkCookieJar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQNetworkCookieJar_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkCookieJar](fcQNetworkCookieJar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQNetworkCookieJar_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkCookieJar](fcQNetworkCookieJar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQNetworkCookieJar_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkCookieJar](fcQNetworkCookieJar_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQNetworkCookieJar_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkCookieJar](fcQNetworkCookieJar_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc allCookies*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar): seq[gen_qnetworkcookie_types.QNetworkCookie] =
  var v_ma = fcQNetworkCookieJar_protectedbase_allCookies(self.h)
  var vx_ret = newSeq[gen_qnetworkcookie_types.QNetworkCookie](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkcookie_types.QNetworkCookie(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc setAllCookies*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookieList: openArray[gen_qnetworkcookie_types.QNetworkCookie]): void =
  var cookieList_CArray = newSeq[pointer](len(cookieList))
  for i in 0..<len(cookieList):
    cookieList_CArray[i] = cookieList[i].h

  fcQNetworkCookieJar_protectedbase_setAllCookies(self.h, struct_miqt_array(len: csize_t(len(cookieList)), data: if len(cookieList) == 0: nil else: addr(cookieList_CArray[0])))

proc sender*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQNetworkCookieJar_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar): cint =
  fcQNetworkCookieJar_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, signal: cstring): cint =
  fcQNetworkCookieJar_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQNetworkCookieJar_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qnetworkcookiejar_types.QNetworkCookieJar,
    vtbl: ref QNetworkCookieJarVTable = nil): gen_qnetworkcookiejar_types.QNetworkCookieJar =
  let vtbl = if vtbl == nil: new QNetworkCookieJarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQNetworkCookieJar_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQNetworkCookieJar_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQNetworkCookieJar_vtable_callback_metacall
  if not isNil(vtbl[].cookiesForUrl):
    vtbl[].vtbl.cookiesForUrl = fcQNetworkCookieJar_vtable_callback_cookiesForUrl
  if not isNil(vtbl[].setCookiesFromUrl):
    vtbl[].vtbl.setCookiesFromUrl = fcQNetworkCookieJar_vtable_callback_setCookiesFromUrl
  if not isNil(vtbl[].insertCookie):
    vtbl[].vtbl.insertCookie = fcQNetworkCookieJar_vtable_callback_insertCookie
  if not isNil(vtbl[].updateCookie):
    vtbl[].vtbl.updateCookie = fcQNetworkCookieJar_vtable_callback_updateCookie
  if not isNil(vtbl[].deleteCookie):
    vtbl[].vtbl.deleteCookie = fcQNetworkCookieJar_vtable_callback_deleteCookie
  if not isNil(vtbl[].validateCookie):
    vtbl[].vtbl.validateCookie = fcQNetworkCookieJar_vtable_callback_validateCookie
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQNetworkCookieJar_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQNetworkCookieJar_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQNetworkCookieJar_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQNetworkCookieJar_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQNetworkCookieJar_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQNetworkCookieJar_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQNetworkCookieJar_vtable_callback_disconnectNotify
  gen_qnetworkcookiejar_types.QNetworkCookieJar(h: fcQNetworkCookieJar_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qnetworkcookiejar_types.QNetworkCookieJar,
    parent: gen_qobject_types.QObject,
    vtbl: ref QNetworkCookieJarVTable = nil): gen_qnetworkcookiejar_types.QNetworkCookieJar =
  let vtbl = if vtbl == nil: new QNetworkCookieJarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QNetworkCookieJarVTable](fcQNetworkCookieJar_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQNetworkCookieJar_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQNetworkCookieJar_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQNetworkCookieJar_vtable_callback_metacall
  if not isNil(vtbl[].cookiesForUrl):
    vtbl[].vtbl.cookiesForUrl = fcQNetworkCookieJar_vtable_callback_cookiesForUrl
  if not isNil(vtbl[].setCookiesFromUrl):
    vtbl[].vtbl.setCookiesFromUrl = fcQNetworkCookieJar_vtable_callback_setCookiesFromUrl
  if not isNil(vtbl[].insertCookie):
    vtbl[].vtbl.insertCookie = fcQNetworkCookieJar_vtable_callback_insertCookie
  if not isNil(vtbl[].updateCookie):
    vtbl[].vtbl.updateCookie = fcQNetworkCookieJar_vtable_callback_updateCookie
  if not isNil(vtbl[].deleteCookie):
    vtbl[].vtbl.deleteCookie = fcQNetworkCookieJar_vtable_callback_deleteCookie
  if not isNil(vtbl[].validateCookie):
    vtbl[].vtbl.validateCookie = fcQNetworkCookieJar_vtable_callback_validateCookie
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQNetworkCookieJar_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQNetworkCookieJar_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQNetworkCookieJar_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQNetworkCookieJar_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQNetworkCookieJar_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQNetworkCookieJar_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQNetworkCookieJar_vtable_callback_disconnectNotify
  gen_qnetworkcookiejar_types.QNetworkCookieJar(h: fcQNetworkCookieJar_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQNetworkCookieJar_mvtbl = cQNetworkCookieJarVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQNetworkCookieJar()[])](self.fcQNetworkCookieJar_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQNetworkCookieJar_method_callback_metaObject,
  metacast: fcQNetworkCookieJar_method_callback_metacast,
  metacall: fcQNetworkCookieJar_method_callback_metacall,
  cookiesForUrl: fcQNetworkCookieJar_method_callback_cookiesForUrl,
  setCookiesFromUrl: fcQNetworkCookieJar_method_callback_setCookiesFromUrl,
  insertCookie: fcQNetworkCookieJar_method_callback_insertCookie,
  updateCookie: fcQNetworkCookieJar_method_callback_updateCookie,
  deleteCookie: fcQNetworkCookieJar_method_callback_deleteCookie,
  validateCookie: fcQNetworkCookieJar_method_callback_validateCookie,
  event: fcQNetworkCookieJar_method_callback_event,
  eventFilter: fcQNetworkCookieJar_method_callback_eventFilter,
  timerEvent: fcQNetworkCookieJar_method_callback_timerEvent,
  childEvent: fcQNetworkCookieJar_method_callback_childEvent,
  customEvent: fcQNetworkCookieJar_method_callback_customEvent,
  connectNotify: fcQNetworkCookieJar_method_callback_connectNotify,
  disconnectNotify: fcQNetworkCookieJar_method_callback_disconnectNotify,
)
proc create*(T: type gen_qnetworkcookiejar_types.QNetworkCookieJar,
    inst: VirtualQNetworkCookieJar) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQNetworkCookieJar_new(addr(cQNetworkCookieJar_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qnetworkcookiejar_types.QNetworkCookieJar,
    parent: gen_qobject_types.QObject,
    inst: VirtualQNetworkCookieJar) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQNetworkCookieJar_new2(addr(cQNetworkCookieJar_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qnetworkcookiejar_types.QNetworkCookieJar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkCookieJar_staticMetaObject())
