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
{.compile("gen_qwebenginecookiestore.cpp", cflags).}


import ./gen_qwebenginecookiestore_types
export gen_qwebenginecookiestore_types

import
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtNetwork/gen_qnetworkcookie_types
export
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qnetworkcookie_types

type cQWebEngineCookieStore*{.exportc: "QWebEngineCookieStore", incompleteStruct.} = object
type cQWebEngineCookieStoreFilterRequest*{.exportc: "QWebEngineCookieStore__FilterRequest", incompleteStruct.} = object

proc fcQWebEngineCookieStore_metaObject(self: pointer, ): pointer {.importc: "QWebEngineCookieStore_metaObject".}
proc fcQWebEngineCookieStore_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineCookieStore_metacast".}
proc fcQWebEngineCookieStore_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineCookieStore_metacall".}
proc fcQWebEngineCookieStore_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineCookieStore_tr".}
proc fcQWebEngineCookieStore_setCookie(self: pointer, cookie: pointer): void {.importc: "QWebEngineCookieStore_setCookie".}
proc fcQWebEngineCookieStore_deleteCookie(self: pointer, cookie: pointer): void {.importc: "QWebEngineCookieStore_deleteCookie".}
proc fcQWebEngineCookieStore_deleteSessionCookies(self: pointer, ): void {.importc: "QWebEngineCookieStore_deleteSessionCookies".}
proc fcQWebEngineCookieStore_deleteAllCookies(self: pointer, ): void {.importc: "QWebEngineCookieStore_deleteAllCookies".}
proc fcQWebEngineCookieStore_loadAllCookies(self: pointer, ): void {.importc: "QWebEngineCookieStore_loadAllCookies".}
proc fcQWebEngineCookieStore_cookieAdded(self: pointer, cookie: pointer): void {.importc: "QWebEngineCookieStore_cookieAdded".}
proc fcQWebEngineCookieStore_connect_cookieAdded(self: pointer, slot: int) {.importc: "QWebEngineCookieStore_connect_cookieAdded".}
proc fcQWebEngineCookieStore_cookieRemoved(self: pointer, cookie: pointer): void {.importc: "QWebEngineCookieStore_cookieRemoved".}
proc fcQWebEngineCookieStore_connect_cookieRemoved(self: pointer, slot: int) {.importc: "QWebEngineCookieStore_connect_cookieRemoved".}
proc fcQWebEngineCookieStore_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineCookieStore_tr2".}
proc fcQWebEngineCookieStore_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineCookieStore_tr3".}
proc fcQWebEngineCookieStore_setCookie2(self: pointer, cookie: pointer, origin: pointer): void {.importc: "QWebEngineCookieStore_setCookie2".}
proc fcQWebEngineCookieStore_deleteCookie2(self: pointer, cookie: pointer, origin: pointer): void {.importc: "QWebEngineCookieStore_deleteCookie2".}
proc fcQWebEngineCookieStore_staticMetaObject(): pointer {.importc: "QWebEngineCookieStore_staticMetaObject".}
proc fcQWebEngineCookieStore_delete(self: pointer) {.importc: "QWebEngineCookieStore_delete".}
proc fcQWebEngineCookieStoreFilterRequest_new(param1: pointer): ptr cQWebEngineCookieStoreFilterRequest {.importc: "QWebEngineCookieStore__FilterRequest_new".}
proc fcQWebEngineCookieStoreFilterRequest_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebEngineCookieStore__FilterRequest_operatorAssign".}
proc fcQWebEngineCookieStoreFilterRequest_delete(self: pointer) {.importc: "QWebEngineCookieStore__FilterRequest_delete".}


func init*(T: type gen_qwebenginecookiestore_types.QWebEngineCookieStore, h: ptr cQWebEngineCookieStore): gen_qwebenginecookiestore_types.QWebEngineCookieStore =
  T(h: h)
proc metaObject*(self: gen_qwebenginecookiestore_types.QWebEngineCookieStore, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineCookieStore_metaObject(self.h))

proc metacast*(self: gen_qwebenginecookiestore_types.QWebEngineCookieStore, param1: cstring): pointer =
  fcQWebEngineCookieStore_metacast(self.h, param1)

proc metacall*(self: gen_qwebenginecookiestore_types.QWebEngineCookieStore, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineCookieStore_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebenginecookiestore_types.QWebEngineCookieStore, s: cstring): string =
  let v_ms = fcQWebEngineCookieStore_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCookie*(self: gen_qwebenginecookiestore_types.QWebEngineCookieStore, cookie: gen_qnetworkcookie_types.QNetworkCookie): void =
  fcQWebEngineCookieStore_setCookie(self.h, cookie.h)

proc deleteCookie*(self: gen_qwebenginecookiestore_types.QWebEngineCookieStore, cookie: gen_qnetworkcookie_types.QNetworkCookie): void =
  fcQWebEngineCookieStore_deleteCookie(self.h, cookie.h)

proc deleteSessionCookies*(self: gen_qwebenginecookiestore_types.QWebEngineCookieStore, ): void =
  fcQWebEngineCookieStore_deleteSessionCookies(self.h)

proc deleteAllCookies*(self: gen_qwebenginecookiestore_types.QWebEngineCookieStore, ): void =
  fcQWebEngineCookieStore_deleteAllCookies(self.h)

proc loadAllCookies*(self: gen_qwebenginecookiestore_types.QWebEngineCookieStore, ): void =
  fcQWebEngineCookieStore_loadAllCookies(self.h)

proc cookieAdded*(self: gen_qwebenginecookiestore_types.QWebEngineCookieStore, cookie: gen_qnetworkcookie_types.QNetworkCookie): void =
  fcQWebEngineCookieStore_cookieAdded(self.h, cookie.h)

type QWebEngineCookieStorecookieAddedSlot* = proc(cookie: gen_qnetworkcookie_types.QNetworkCookie)
proc miqt_exec_callback_QWebEngineCookieStore_cookieAdded(slot: int, cookie: pointer) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineCookieStorecookieAddedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie)

  nimfunc[](slotval1)

proc oncookieAdded*(self: gen_qwebenginecookiestore_types.QWebEngineCookieStore, slot: QWebEngineCookieStorecookieAddedSlot) =
  var tmp = new QWebEngineCookieStorecookieAddedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineCookieStore_connect_cookieAdded(self.h, cast[int](addr tmp[]))

proc cookieRemoved*(self: gen_qwebenginecookiestore_types.QWebEngineCookieStore, cookie: gen_qnetworkcookie_types.QNetworkCookie): void =
  fcQWebEngineCookieStore_cookieRemoved(self.h, cookie.h)

type QWebEngineCookieStorecookieRemovedSlot* = proc(cookie: gen_qnetworkcookie_types.QNetworkCookie)
proc miqt_exec_callback_QWebEngineCookieStore_cookieRemoved(slot: int, cookie: pointer) {.exportc.} =
  let nimfunc = cast[ptr QWebEngineCookieStorecookieRemovedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkcookie_types.QNetworkCookie(h: cookie)

  nimfunc[](slotval1)

proc oncookieRemoved*(self: gen_qwebenginecookiestore_types.QWebEngineCookieStore, slot: QWebEngineCookieStorecookieRemovedSlot) =
  var tmp = new QWebEngineCookieStorecookieRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineCookieStore_connect_cookieRemoved(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qwebenginecookiestore_types.QWebEngineCookieStore, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineCookieStore_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebenginecookiestore_types.QWebEngineCookieStore, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineCookieStore_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCookie*(self: gen_qwebenginecookiestore_types.QWebEngineCookieStore, cookie: gen_qnetworkcookie_types.QNetworkCookie, origin: gen_qurl_types.QUrl): void =
  fcQWebEngineCookieStore_setCookie2(self.h, cookie.h, origin.h)

proc deleteCookie*(self: gen_qwebenginecookiestore_types.QWebEngineCookieStore, cookie: gen_qnetworkcookie_types.QNetworkCookie, origin: gen_qurl_types.QUrl): void =
  fcQWebEngineCookieStore_deleteCookie2(self.h, cookie.h, origin.h)

proc staticMetaObject*(_: type gen_qwebenginecookiestore_types.QWebEngineCookieStore): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineCookieStore_staticMetaObject())
proc delete*(self: gen_qwebenginecookiestore_types.QWebEngineCookieStore) =
  fcQWebEngineCookieStore_delete(self.h)

func init*(T: type gen_qwebenginecookiestore_types.QWebEngineCookieStoreFilterRequest, h: ptr cQWebEngineCookieStoreFilterRequest): gen_qwebenginecookiestore_types.QWebEngineCookieStoreFilterRequest =
  T(h: h)
proc create*(T: type gen_qwebenginecookiestore_types.QWebEngineCookieStoreFilterRequest, param1: gen_qwebenginecookiestore_types.QWebEngineCookieStoreFilterRequest): gen_qwebenginecookiestore_types.QWebEngineCookieStoreFilterRequest =
  gen_qwebenginecookiestore_types.QWebEngineCookieStoreFilterRequest.init(fcQWebEngineCookieStoreFilterRequest_new(param1.h))

proc operatorAssign*(self: gen_qwebenginecookiestore_types.QWebEngineCookieStoreFilterRequest, param1: gen_qwebenginecookiestore_types.QWebEngineCookieStoreFilterRequest): void =
  fcQWebEngineCookieStoreFilterRequest_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qwebenginecookiestore_types.QWebEngineCookieStoreFilterRequest) =
  fcQWebEngineCookieStoreFilterRequest_delete(self.h)
