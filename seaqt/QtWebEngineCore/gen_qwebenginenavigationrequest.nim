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
{.compile("gen_qwebenginenavigationrequest.cpp", cflags).}


type QWebEngineNavigationRequestNavigationTypeEnum* = distinct cint
template LinkClickedNavigation*(_: type QWebEngineNavigationRequestNavigationTypeEnum): untyped = 0
template TypedNavigation*(_: type QWebEngineNavigationRequestNavigationTypeEnum): untyped = 1
template FormSubmittedNavigation*(_: type QWebEngineNavigationRequestNavigationTypeEnum): untyped = 2
template BackForwardNavigation*(_: type QWebEngineNavigationRequestNavigationTypeEnum): untyped = 3
template ReloadNavigation*(_: type QWebEngineNavigationRequestNavigationTypeEnum): untyped = 4
template OtherNavigation*(_: type QWebEngineNavigationRequestNavigationTypeEnum): untyped = 5
template RedirectNavigation*(_: type QWebEngineNavigationRequestNavigationTypeEnum): untyped = 6


type QWebEngineNavigationRequestNavigationRequestActionEnum* = distinct cint
template AcceptRequest*(_: type QWebEngineNavigationRequestNavigationRequestActionEnum): untyped = 0
template IgnoreRequest*(_: type QWebEngineNavigationRequestNavigationRequestActionEnum): untyped = 255


import ./gen_qwebenginenavigationrequest_types
export gen_qwebenginenavigationrequest_types

import
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types
export
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types

type cQWebEngineNavigationRequest*{.exportc: "QWebEngineNavigationRequest", incompleteStruct.} = object

proc fcQWebEngineNavigationRequest_metaObject(self: pointer, ): pointer {.importc: "QWebEngineNavigationRequest_metaObject".}
proc fcQWebEngineNavigationRequest_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineNavigationRequest_metacast".}
proc fcQWebEngineNavigationRequest_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineNavigationRequest_metacall".}
proc fcQWebEngineNavigationRequest_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineNavigationRequest_tr".}
proc fcQWebEngineNavigationRequest_url(self: pointer, ): pointer {.importc: "QWebEngineNavigationRequest_url".}
proc fcQWebEngineNavigationRequest_isMainFrame(self: pointer, ): bool {.importc: "QWebEngineNavigationRequest_isMainFrame".}
proc fcQWebEngineNavigationRequest_navigationType(self: pointer, ): cint {.importc: "QWebEngineNavigationRequest_navigationType".}
proc fcQWebEngineNavigationRequest_accept(self: pointer, ): void {.importc: "QWebEngineNavigationRequest_accept".}
proc fcQWebEngineNavigationRequest_reject(self: pointer, ): void {.importc: "QWebEngineNavigationRequest_reject".}
proc fcQWebEngineNavigationRequest_actionChanged(self: pointer, ): void {.importc: "QWebEngineNavigationRequest_actionChanged".}
proc fcQWebEngineNavigationRequest_connect_actionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineNavigationRequest_connect_actionChanged".}
proc fcQWebEngineNavigationRequest_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineNavigationRequest_tr2".}
proc fcQWebEngineNavigationRequest_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineNavigationRequest_tr3".}
proc fcQWebEngineNavigationRequest_staticMetaObject(): pointer {.importc: "QWebEngineNavigationRequest_staticMetaObject".}
proc fcQWebEngineNavigationRequest_delete(self: pointer) {.importc: "QWebEngineNavigationRequest_delete".}

proc metaObject*(self: gen_qwebenginenavigationrequest_types.QWebEngineNavigationRequest, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineNavigationRequest_metaObject(self.h))

proc metacast*(self: gen_qwebenginenavigationrequest_types.QWebEngineNavigationRequest, param1: cstring): pointer =
  fcQWebEngineNavigationRequest_metacast(self.h, param1)

proc metacall*(self: gen_qwebenginenavigationrequest_types.QWebEngineNavigationRequest, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineNavigationRequest_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebenginenavigationrequest_types.QWebEngineNavigationRequest, s: cstring): string =
  let v_ms = fcQWebEngineNavigationRequest_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc url*(self: gen_qwebenginenavigationrequest_types.QWebEngineNavigationRequest, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineNavigationRequest_url(self.h))

proc isMainFrame*(self: gen_qwebenginenavigationrequest_types.QWebEngineNavigationRequest, ): bool =
  fcQWebEngineNavigationRequest_isMainFrame(self.h)

proc navigationType*(self: gen_qwebenginenavigationrequest_types.QWebEngineNavigationRequest, ): cint =
  cint(fcQWebEngineNavigationRequest_navigationType(self.h))

proc accept*(self: gen_qwebenginenavigationrequest_types.QWebEngineNavigationRequest, ): void =
  fcQWebEngineNavigationRequest_accept(self.h)

proc reject*(self: gen_qwebenginenavigationrequest_types.QWebEngineNavigationRequest, ): void =
  fcQWebEngineNavigationRequest_reject(self.h)

proc actionChanged*(self: gen_qwebenginenavigationrequest_types.QWebEngineNavigationRequest, ): void =
  fcQWebEngineNavigationRequest_actionChanged(self.h)

type QWebEngineNavigationRequestactionChangedSlot* = proc()
proc miqt_exec_callback_cQWebEngineNavigationRequest_actionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineNavigationRequestactionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebEngineNavigationRequest_actionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineNavigationRequestactionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactionChanged*(self: gen_qwebenginenavigationrequest_types.QWebEngineNavigationRequest, slot: QWebEngineNavigationRequestactionChangedSlot) =
  var tmp = new QWebEngineNavigationRequestactionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineNavigationRequest_connect_actionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebEngineNavigationRequest_actionChanged, miqt_exec_callback_cQWebEngineNavigationRequest_actionChanged_release)

proc tr*(_: type gen_qwebenginenavigationrequest_types.QWebEngineNavigationRequest, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineNavigationRequest_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebenginenavigationrequest_types.QWebEngineNavigationRequest, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineNavigationRequest_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qwebenginenavigationrequest_types.QWebEngineNavigationRequest): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineNavigationRequest_staticMetaObject())
proc delete*(self: gen_qwebenginenavigationrequest_types.QWebEngineNavigationRequest) =
  fcQWebEngineNavigationRequest_delete(self.h)
