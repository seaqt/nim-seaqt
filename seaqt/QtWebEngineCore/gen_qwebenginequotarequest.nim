import ./Qt5WebEngineCore_libs

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


import ./gen_qwebenginequotarequest_types
export gen_qwebenginequotarequest_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types
export
  gen_qobjectdefs_types,
  gen_qurl_types

type cQWebEngineQuotaRequest*{.exportc: "QWebEngineQuotaRequest", incompleteStruct.} = object

proc fcQWebEngineQuotaRequest_accept(self: pointer): void {.importc: "QWebEngineQuotaRequest_accept".}
proc fcQWebEngineQuotaRequest_reject(self: pointer): void {.importc: "QWebEngineQuotaRequest_reject".}
proc fcQWebEngineQuotaRequest_origin(self: pointer): pointer {.importc: "QWebEngineQuotaRequest_origin".}
proc fcQWebEngineQuotaRequest_requestedSize(self: pointer): clonglong {.importc: "QWebEngineQuotaRequest_requestedSize".}
proc fcQWebEngineQuotaRequest_operatorEqual(self: pointer, that: pointer): bool {.importc: "QWebEngineQuotaRequest_operatorEqual".}
proc fcQWebEngineQuotaRequest_operatorNotEqual(self: pointer, that: pointer): bool {.importc: "QWebEngineQuotaRequest_operatorNotEqual".}
proc fcQWebEngineQuotaRequest_new(): ptr cQWebEngineQuotaRequest {.importc: "QWebEngineQuotaRequest_new".}
proc fcQWebEngineQuotaRequest_new2(param1: pointer): ptr cQWebEngineQuotaRequest {.importc: "QWebEngineQuotaRequest_new2".}
proc fcQWebEngineQuotaRequest_staticMetaObject(): pointer {.importc: "QWebEngineQuotaRequest_staticMetaObject".}

proc accept*(self: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest): void =
  fcQWebEngineQuotaRequest_accept(self.h)

proc reject*(self: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest): void =
  fcQWebEngineQuotaRequest_reject(self.h)

proc origin*(self: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineQuotaRequest_origin(self.h), owned: true)

proc requestedSize*(self: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest): clonglong =
  fcQWebEngineQuotaRequest_requestedSize(self.h)

proc operatorEqual*(self: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest, that: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest): bool =
  fcQWebEngineQuotaRequest_operatorEqual(self.h, that.h)

proc operatorNotEqual*(self: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest, that: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest): bool =
  fcQWebEngineQuotaRequest_operatorNotEqual(self.h, that.h)

proc create*(T: type gen_qwebenginequotarequest_types.QWebEngineQuotaRequest): gen_qwebenginequotarequest_types.QWebEngineQuotaRequest =
  gen_qwebenginequotarequest_types.QWebEngineQuotaRequest(h: fcQWebEngineQuotaRequest_new(), owned: true)

proc create*(T: type gen_qwebenginequotarequest_types.QWebEngineQuotaRequest,
    param1: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest): gen_qwebenginequotarequest_types.QWebEngineQuotaRequest =
  gen_qwebenginequotarequest_types.QWebEngineQuotaRequest(h: fcQWebEngineQuotaRequest_new2(param1.h), owned: true)

proc staticMetaObject*(_: type gen_qwebenginequotarequest_types.QWebEngineQuotaRequest): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineQuotaRequest_staticMetaObject())
