import ./qtwebenginecore_pkg

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


import ./gen_qwebengineregisterprotocolhandlerrequest_types
export gen_qwebengineregisterprotocolhandlerrequest_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types
export
  gen_qobjectdefs_types,
  gen_qurl_types

type cQWebEngineRegisterProtocolHandlerRequest*{.exportc: "QWebEngineRegisterProtocolHandlerRequest", incompleteStruct.} = object

proc fcQWebEngineRegisterProtocolHandlerRequest_accept(self: pointer): void {.importc: "QWebEngineRegisterProtocolHandlerRequest_accept".}
proc fcQWebEngineRegisterProtocolHandlerRequest_reject(self: pointer): void {.importc: "QWebEngineRegisterProtocolHandlerRequest_reject".}
proc fcQWebEngineRegisterProtocolHandlerRequest_origin(self: pointer): pointer {.importc: "QWebEngineRegisterProtocolHandlerRequest_origin".}
proc fcQWebEngineRegisterProtocolHandlerRequest_scheme(self: pointer): struct_miqt_string {.importc: "QWebEngineRegisterProtocolHandlerRequest_scheme".}
proc fcQWebEngineRegisterProtocolHandlerRequest_operatorEqual(self: pointer, that: pointer): bool {.importc: "QWebEngineRegisterProtocolHandlerRequest_operatorEqual".}
proc fcQWebEngineRegisterProtocolHandlerRequest_operatorNotEqual(self: pointer, that: pointer): bool {.importc: "QWebEngineRegisterProtocolHandlerRequest_operatorNotEqual".}
proc fcQWebEngineRegisterProtocolHandlerRequest_new(): ptr cQWebEngineRegisterProtocolHandlerRequest {.importc: "QWebEngineRegisterProtocolHandlerRequest_new".}
proc fcQWebEngineRegisterProtocolHandlerRequest_new2(param1: pointer): ptr cQWebEngineRegisterProtocolHandlerRequest {.importc: "QWebEngineRegisterProtocolHandlerRequest_new2".}
proc fcQWebEngineRegisterProtocolHandlerRequest_staticMetaObject(): pointer {.importc: "QWebEngineRegisterProtocolHandlerRequest_staticMetaObject".}

proc accept*(self: gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest): void =
  fcQWebEngineRegisterProtocolHandlerRequest_accept(self.h)

proc reject*(self: gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest): void =
  fcQWebEngineRegisterProtocolHandlerRequest_reject(self.h)

proc origin*(self: gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineRegisterProtocolHandlerRequest_origin(self.h), owned: true)

proc scheme*(self: gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest): string =
  let v_ms = fcQWebEngineRegisterProtocolHandlerRequest_scheme(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc operatorEqual*(self: gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest, that: gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest): bool =
  fcQWebEngineRegisterProtocolHandlerRequest_operatorEqual(self.h, that.h)

proc operatorNotEqual*(self: gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest, that: gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest): bool =
  fcQWebEngineRegisterProtocolHandlerRequest_operatorNotEqual(self.h, that.h)

proc create*(T: type gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest): gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest =
  gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest(h: fcQWebEngineRegisterProtocolHandlerRequest_new(), owned: true)

proc create*(T: type gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest,
    param1: gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest): gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest =
  gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest(h: fcQWebEngineRegisterProtocolHandlerRequest_new2(param1.h), owned: true)

proc staticMetaObject*(_: type gen_qwebengineregisterprotocolhandlerrequest_types.QWebEngineRegisterProtocolHandlerRequest): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineRegisterProtocolHandlerRequest_staticMetaObject())
