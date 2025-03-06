import ./Qt5Network_libs

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

const cflags = gorge("pkg-config --cflags Qt5Network")  & " -fPIC"
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

proc fcQNetworkCookieJar_new(): ptr cQNetworkCookieJar {.importc: "QNetworkCookieJar_new".}
proc fcQNetworkCookieJar_new2(parent: pointer): ptr cQNetworkCookieJar {.importc: "QNetworkCookieJar_new2".}
proc fcQNetworkCookieJar_metaObject(self: pointer, ): pointer {.importc: "QNetworkCookieJar_metaObject".}
proc fcQNetworkCookieJar_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkCookieJar_metacast".}
proc fcQNetworkCookieJar_tr(s: cstring): struct_miqt_string {.importc: "QNetworkCookieJar_tr".}
proc fcQNetworkCookieJar_trUtf8(s: cstring): struct_miqt_string {.importc: "QNetworkCookieJar_trUtf8".}
proc fcQNetworkCookieJar_cookiesForUrl(self: pointer, url: pointer): struct_miqt_array {.importc: "QNetworkCookieJar_cookiesForUrl".}
proc fcQNetworkCookieJar_setCookiesFromUrl(self: pointer, cookieList: struct_miqt_array, url: pointer): bool {.importc: "QNetworkCookieJar_setCookiesFromUrl".}
proc fcQNetworkCookieJar_insertCookie(self: pointer, cookie: pointer): bool {.importc: "QNetworkCookieJar_insertCookie".}
proc fcQNetworkCookieJar_updateCookie(self: pointer, cookie: pointer): bool {.importc: "QNetworkCookieJar_updateCookie".}
proc fcQNetworkCookieJar_deleteCookie(self: pointer, cookie: pointer): bool {.importc: "QNetworkCookieJar_deleteCookie".}
proc fcQNetworkCookieJar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkCookieJar_tr2".}
proc fcQNetworkCookieJar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkCookieJar_tr3".}
proc fcQNetworkCookieJar_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkCookieJar_trUtf82".}
proc fcQNetworkCookieJar_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkCookieJar_trUtf83".}
proc fQNetworkCookieJar_virtualbase_cookiesForUrl(self: pointer, url: pointer): struct_miqt_array{.importc: "QNetworkCookieJar_virtualbase_cookiesForUrl".}
proc fcQNetworkCookieJar_override_virtual_cookiesForUrl(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_cookiesForUrl".}
proc fQNetworkCookieJar_virtualbase_setCookiesFromUrl(self: pointer, cookieList: struct_miqt_array, url: pointer): bool{.importc: "QNetworkCookieJar_virtualbase_setCookiesFromUrl".}
proc fcQNetworkCookieJar_override_virtual_setCookiesFromUrl(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_setCookiesFromUrl".}
proc fQNetworkCookieJar_virtualbase_insertCookie(self: pointer, cookie: pointer): bool{.importc: "QNetworkCookieJar_virtualbase_insertCookie".}
proc fcQNetworkCookieJar_override_virtual_insertCookie(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_insertCookie".}
proc fQNetworkCookieJar_virtualbase_updateCookie(self: pointer, cookie: pointer): bool{.importc: "QNetworkCookieJar_virtualbase_updateCookie".}
proc fcQNetworkCookieJar_override_virtual_updateCookie(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_updateCookie".}
proc fQNetworkCookieJar_virtualbase_deleteCookie(self: pointer, cookie: pointer): bool{.importc: "QNetworkCookieJar_virtualbase_deleteCookie".}
proc fcQNetworkCookieJar_override_virtual_deleteCookie(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_deleteCookie".}
proc fQNetworkCookieJar_virtualbase_validateCookie(self: pointer, cookie: pointer, url: pointer): bool{.importc: "QNetworkCookieJar_virtualbase_validateCookie".}
proc fcQNetworkCookieJar_override_virtual_validateCookie(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_validateCookie".}
proc fQNetworkCookieJar_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QNetworkCookieJar_virtualbase_event".}
proc fcQNetworkCookieJar_override_virtual_event(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_event".}
proc fQNetworkCookieJar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QNetworkCookieJar_virtualbase_eventFilter".}
proc fcQNetworkCookieJar_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_eventFilter".}
proc fQNetworkCookieJar_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QNetworkCookieJar_virtualbase_timerEvent".}
proc fcQNetworkCookieJar_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_timerEvent".}
proc fQNetworkCookieJar_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QNetworkCookieJar_virtualbase_childEvent".}
proc fcQNetworkCookieJar_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_childEvent".}
proc fQNetworkCookieJar_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QNetworkCookieJar_virtualbase_customEvent".}
proc fcQNetworkCookieJar_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_customEvent".}
proc fQNetworkCookieJar_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QNetworkCookieJar_virtualbase_connectNotify".}
proc fcQNetworkCookieJar_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_connectNotify".}
proc fQNetworkCookieJar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QNetworkCookieJar_virtualbase_disconnectNotify".}
proc fcQNetworkCookieJar_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_disconnectNotify".}
proc fcQNetworkCookieJar_delete(self: pointer) {.importc: "QNetworkCookieJar_delete".}


func init*(T: type gen_qnetworkcookiejar_types.QNetworkCookieJar, h: ptr cQNetworkCookieJar): gen_qnetworkcookiejar_types.QNetworkCookieJar =
  T(h: h)
proc create*(T: type gen_qnetworkcookiejar_types.QNetworkCookieJar, ): gen_qnetworkcookiejar_types.QNetworkCookieJar =
  gen_qnetworkcookiejar_types.QNetworkCookieJar.init(fcQNetworkCookieJar_new())

proc create*(T: type gen_qnetworkcookiejar_types.QNetworkCookieJar, parent: gen_qobject_types.QObject): gen_qnetworkcookiejar_types.QNetworkCookieJar =
  gen_qnetworkcookiejar_types.QNetworkCookieJar.init(fcQNetworkCookieJar_new2(parent.h))

proc metaObject*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkCookieJar_metaObject(self.h))

proc metacast*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, param1: cstring): pointer =
  fcQNetworkCookieJar_metacast(self.h, param1)

proc tr*(_: type gen_qnetworkcookiejar_types.QNetworkCookieJar, s: cstring): string =
  let v_ms = fcQNetworkCookieJar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworkcookiejar_types.QNetworkCookieJar, s: cstring): string =
  let v_ms = fcQNetworkCookieJar_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc cookiesForUrl*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, url: gen_qurl_types.QUrl): seq[gen_qnetworkcookie_types.QNetworkCookie] =
  var v_ma = fcQNetworkCookieJar_cookiesForUrl(self.h, url.h)
  var vx_ret = newSeq[gen_qnetworkcookie_types.QNetworkCookie](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkcookie_types.QNetworkCookie(h: v_outCast[i])
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

proc trUtf8*(_: type gen_qnetworkcookiejar_types.QNetworkCookieJar, s: cstring, c: cstring): string =
  let v_ms = fcQNetworkCookieJar_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworkcookiejar_types.QNetworkCookieJar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkCookieJar_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QNetworkCookieJarcookiesForUrl*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, url: gen_qurl_types.QUrl): seq[gen_qnetworkcookie_types.QNetworkCookie] =
  var v_ma = fQNetworkCookieJar_virtualbase_cookiesForUrl(self.h, url.h)
  var vx_ret = newSeq[gen_qnetworkcookie_types.QNetworkCookie](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkcookie_types.QNetworkCookie(h: v_outCast[i])
  vx_ret

type QNetworkCookieJarcookiesForUrlProc* = proc(url: gen_qurl_types.QUrl): seq[gen_qnetworkcookie_types.QNetworkCookie]
proc oncookiesForUrl*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, slot: QNetworkCookieJarcookiesForUrlProc) =
  # TODO check subclass
  var tmp = new QNetworkCookieJarcookiesForUrlProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_cookiesForUrl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_cookiesForUrl(self: ptr cQNetworkCookieJar, slot: int, url: pointer): struct_miqt_array {.exportc: "miqt_exec_callback_QNetworkCookieJar_cookiesForUrl ".} =
  var nimfunc = cast[ptr QNetworkCookieJarcookiesForUrlProc](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url)


  let virtualReturn = nimfunc[](slotval1 )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QNetworkCookieJarsetCookiesFromUrl*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookieList: seq[gen_qnetworkcookie_types.QNetworkCookie], url: gen_qurl_types.QUrl): bool =
  var cookieList_CArray = newSeq[pointer](len(cookieList))
  for i in 0..<len(cookieList):
    cookieList_CArray[i] = cookieList[i].h

  fQNetworkCookieJar_virtualbase_setCookiesFromUrl(self.h, struct_miqt_array(len: csize_t(len(cookieList)), data: if len(cookieList) == 0: nil else: addr(cookieList_CArray[0])), url.h)

type QNetworkCookieJarsetCookiesFromUrlProc* = proc(cookieList: seq[gen_qnetworkcookie_types.QNetworkCookie], url: gen_qurl_types.QUrl): bool
proc onsetCookiesFromUrl*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, slot: QNetworkCookieJarsetCookiesFromUrlProc) =
  # TODO check subclass
  var tmp = new QNetworkCookieJarsetCookiesFromUrlProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_setCookiesFromUrl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_setCookiesFromUrl(self: ptr cQNetworkCookieJar, slot: int, cookieList: struct_miqt_array, url: pointer): bool {.exportc: "miqt_exec_callback_QNetworkCookieJar_setCookiesFromUrl ".} =
  var nimfunc = cast[ptr QNetworkCookieJarsetCookiesFromUrlProc](cast[pointer](slot))
  var vcookieList_ma = cookieList
  var vcookieListx_ret = newSeq[gen_qnetworkcookie_types.QNetworkCookie](int(vcookieList_ma.len))
  let vcookieList_outCast = cast[ptr UncheckedArray[pointer]](vcookieList_ma.data)
  for i in 0 ..< vcookieList_ma.len:
    vcookieListx_ret[i] = gen_qnetworkcookie_types.QNetworkCookie(h: vcookieList_outCast[i])
  let slotval1 = vcookieListx_ret

  let slotval2 = gen_qurl_types.QUrl(h: url)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QNetworkCookieJarinsertCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fQNetworkCookieJar_virtualbase_insertCookie(self.h, cookie.h)

type QNetworkCookieJarinsertCookieProc* = proc(cookie: gen_qnetworkcookie_types.QNetworkCookie): bool
proc oninsertCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, slot: QNetworkCookieJarinsertCookieProc) =
  # TODO check subclass
  var tmp = new QNetworkCookieJarinsertCookieProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_insertCookie(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_insertCookie(self: ptr cQNetworkCookieJar, slot: int, cookie: pointer): bool {.exportc: "miqt_exec_callback_QNetworkCookieJar_insertCookie ".} =
  var nimfunc = cast[ptr QNetworkCookieJarinsertCookieProc](cast[pointer](slot))
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QNetworkCookieJarupdateCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fQNetworkCookieJar_virtualbase_updateCookie(self.h, cookie.h)

type QNetworkCookieJarupdateCookieProc* = proc(cookie: gen_qnetworkcookie_types.QNetworkCookie): bool
proc onupdateCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, slot: QNetworkCookieJarupdateCookieProc) =
  # TODO check subclass
  var tmp = new QNetworkCookieJarupdateCookieProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_updateCookie(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_updateCookie(self: ptr cQNetworkCookieJar, slot: int, cookie: pointer): bool {.exportc: "miqt_exec_callback_QNetworkCookieJar_updateCookie ".} =
  var nimfunc = cast[ptr QNetworkCookieJarupdateCookieProc](cast[pointer](slot))
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QNetworkCookieJardeleteCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fQNetworkCookieJar_virtualbase_deleteCookie(self.h, cookie.h)

type QNetworkCookieJardeleteCookieProc* = proc(cookie: gen_qnetworkcookie_types.QNetworkCookie): bool
proc ondeleteCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, slot: QNetworkCookieJardeleteCookieProc) =
  # TODO check subclass
  var tmp = new QNetworkCookieJardeleteCookieProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_deleteCookie(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_deleteCookie(self: ptr cQNetworkCookieJar, slot: int, cookie: pointer): bool {.exportc: "miqt_exec_callback_QNetworkCookieJar_deleteCookie ".} =
  var nimfunc = cast[ptr QNetworkCookieJardeleteCookieProc](cast[pointer](slot))
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QNetworkCookieJarvalidateCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, cookie: gen_qnetworkcookie_types.QNetworkCookie, url: gen_qurl_types.QUrl): bool =
  fQNetworkCookieJar_virtualbase_validateCookie(self.h, cookie.h, url.h)

type QNetworkCookieJarvalidateCookieProc* = proc(cookie: gen_qnetworkcookie_types.QNetworkCookie, url: gen_qurl_types.QUrl): bool
proc onvalidateCookie*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, slot: QNetworkCookieJarvalidateCookieProc) =
  # TODO check subclass
  var tmp = new QNetworkCookieJarvalidateCookieProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_validateCookie(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_validateCookie(self: ptr cQNetworkCookieJar, slot: int, cookie: pointer, url: pointer): bool {.exportc: "miqt_exec_callback_QNetworkCookieJar_validateCookie ".} =
  var nimfunc = cast[ptr QNetworkCookieJarvalidateCookieProc](cast[pointer](slot))
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie)

  let slotval2 = gen_qurl_types.QUrl(h: url)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QNetworkCookieJarevent*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, event: gen_qcoreevent_types.QEvent): bool =
  fQNetworkCookieJar_virtualbase_event(self.h, event.h)

type QNetworkCookieJareventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, slot: QNetworkCookieJareventProc) =
  # TODO check subclass
  var tmp = new QNetworkCookieJareventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_event(self: ptr cQNetworkCookieJar, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkCookieJar_event ".} =
  var nimfunc = cast[ptr QNetworkCookieJareventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QNetworkCookieJareventFilter*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQNetworkCookieJar_virtualbase_eventFilter(self.h, watched.h, event.h)

type QNetworkCookieJareventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, slot: QNetworkCookieJareventFilterProc) =
  # TODO check subclass
  var tmp = new QNetworkCookieJareventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_eventFilter(self: ptr cQNetworkCookieJar, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkCookieJar_eventFilter ".} =
  var nimfunc = cast[ptr QNetworkCookieJareventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QNetworkCookieJartimerEvent*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, event: gen_qcoreevent_types.QTimerEvent): void =
  fQNetworkCookieJar_virtualbase_timerEvent(self.h, event.h)

type QNetworkCookieJartimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, slot: QNetworkCookieJartimerEventProc) =
  # TODO check subclass
  var tmp = new QNetworkCookieJartimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_timerEvent(self: ptr cQNetworkCookieJar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkCookieJar_timerEvent ".} =
  var nimfunc = cast[ptr QNetworkCookieJartimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QNetworkCookieJarchildEvent*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, event: gen_qcoreevent_types.QChildEvent): void =
  fQNetworkCookieJar_virtualbase_childEvent(self.h, event.h)

type QNetworkCookieJarchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, slot: QNetworkCookieJarchildEventProc) =
  # TODO check subclass
  var tmp = new QNetworkCookieJarchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_childEvent(self: ptr cQNetworkCookieJar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkCookieJar_childEvent ".} =
  var nimfunc = cast[ptr QNetworkCookieJarchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QNetworkCookieJarcustomEvent*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, event: gen_qcoreevent_types.QEvent): void =
  fQNetworkCookieJar_virtualbase_customEvent(self.h, event.h)

type QNetworkCookieJarcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, slot: QNetworkCookieJarcustomEventProc) =
  # TODO check subclass
  var tmp = new QNetworkCookieJarcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_customEvent(self: ptr cQNetworkCookieJar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkCookieJar_customEvent ".} =
  var nimfunc = cast[ptr QNetworkCookieJarcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QNetworkCookieJarconnectNotify*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQNetworkCookieJar_virtualbase_connectNotify(self.h, signal.h)

type QNetworkCookieJarconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, slot: QNetworkCookieJarconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QNetworkCookieJarconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_connectNotify(self: ptr cQNetworkCookieJar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkCookieJar_connectNotify ".} =
  var nimfunc = cast[ptr QNetworkCookieJarconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QNetworkCookieJardisconnectNotify*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQNetworkCookieJar_virtualbase_disconnectNotify(self.h, signal.h)

type QNetworkCookieJardisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar, slot: QNetworkCookieJardisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QNetworkCookieJardisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_disconnectNotify(self: ptr cQNetworkCookieJar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkCookieJar_disconnectNotify ".} =
  var nimfunc = cast[ptr QNetworkCookieJardisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qnetworkcookiejar_types.QNetworkCookieJar) =
  fcQNetworkCookieJar_delete(self.h)
