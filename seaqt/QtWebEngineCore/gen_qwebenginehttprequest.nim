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


type QWebEngineHttpRequestMethodEnum* = distinct cint
template Get*(_: type QWebEngineHttpRequestMethodEnum): untyped = 0
template Post*(_: type QWebEngineHttpRequestMethodEnum): untyped = 1


import ./gen_qwebenginehttprequest_types
export gen_qwebenginehttprequest_types

import
  ../QtCore/gen_qurl_types,
  std/tables
export
  gen_qurl_types

type cQWebEngineHttpRequest*{.exportc: "QWebEngineHttpRequest", incompleteStruct.} = object

proc fcQWebEngineHttpRequest_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebEngineHttpRequest_operatorAssign".}
proc fcQWebEngineHttpRequest_postRequest(url: pointer, postData: struct_miqt_map): pointer {.importc: "QWebEngineHttpRequest_postRequest".}
proc fcQWebEngineHttpRequest_swap(self: pointer, other: pointer): void {.importc: "QWebEngineHttpRequest_swap".}
proc fcQWebEngineHttpRequest_operatorEqual(self: pointer, other: pointer): bool {.importc: "QWebEngineHttpRequest_operatorEqual".}
proc fcQWebEngineHttpRequest_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QWebEngineHttpRequest_operatorNotEqual".}
proc fcQWebEngineHttpRequest_methodX(self: pointer, ): cint {.importc: "QWebEngineHttpRequest_method".}
proc fcQWebEngineHttpRequest_setMethod(self: pointer, methodVal: cint): void {.importc: "QWebEngineHttpRequest_setMethod".}
proc fcQWebEngineHttpRequest_url(self: pointer, ): pointer {.importc: "QWebEngineHttpRequest_url".}
proc fcQWebEngineHttpRequest_setUrl(self: pointer, url: pointer): void {.importc: "QWebEngineHttpRequest_setUrl".}
proc fcQWebEngineHttpRequest_postData(self: pointer, ): struct_miqt_string {.importc: "QWebEngineHttpRequest_postData".}
proc fcQWebEngineHttpRequest_setPostData(self: pointer, postData: struct_miqt_string): void {.importc: "QWebEngineHttpRequest_setPostData".}
proc fcQWebEngineHttpRequest_hasHeader(self: pointer, headerName: struct_miqt_string): bool {.importc: "QWebEngineHttpRequest_hasHeader".}
proc fcQWebEngineHttpRequest_headers(self: pointer, ): struct_miqt_array {.importc: "QWebEngineHttpRequest_headers".}
proc fcQWebEngineHttpRequest_header(self: pointer, headerName: struct_miqt_string): struct_miqt_string {.importc: "QWebEngineHttpRequest_header".}
proc fcQWebEngineHttpRequest_setHeader(self: pointer, headerName: struct_miqt_string, value: struct_miqt_string): void {.importc: "QWebEngineHttpRequest_setHeader".}
proc fcQWebEngineHttpRequest_unsetHeader(self: pointer, headerName: struct_miqt_string): void {.importc: "QWebEngineHttpRequest_unsetHeader".}
proc fcQWebEngineHttpRequest_new(): ptr cQWebEngineHttpRequest {.importc: "QWebEngineHttpRequest_new".}
proc fcQWebEngineHttpRequest_new2(other: pointer): ptr cQWebEngineHttpRequest {.importc: "QWebEngineHttpRequest_new2".}
proc fcQWebEngineHttpRequest_new3(url: pointer): ptr cQWebEngineHttpRequest {.importc: "QWebEngineHttpRequest_new3".}
proc fcQWebEngineHttpRequest_new4(url: pointer, methodVal: ptr cint): ptr cQWebEngineHttpRequest {.importc: "QWebEngineHttpRequest_new4".}

proc operatorAssign*(self: gen_qwebenginehttprequest_types.QWebEngineHttpRequest, other: gen_qwebenginehttprequest_types.QWebEngineHttpRequest): void =
  fcQWebEngineHttpRequest_operatorAssign(self.h, other.h)

proc postRequest*(_: type gen_qwebenginehttprequest_types.QWebEngineHttpRequest, url: gen_qurl_types.QUrl, postData: Table[string,string]): gen_qwebenginehttprequest_types.QWebEngineHttpRequest =
  var postData_Keys_CArray = newSeq[struct_miqt_string](len(postData))
  var postData_Values_CArray = newSeq[struct_miqt_string](len(postData))
  var postData_ctr = 0
  for postData_k in postData.keys():
    postData_Keys_CArray[postData_ctr] = struct_miqt_string(data: postData_k, len: csize_t(len(postData_k)))
    postData_ctr += 1
  postData_ctr = 0
  for postData_v in postData.values():
    postData_Values_CArray[postData_ctr] = struct_miqt_string(data: postData_v, len: csize_t(len(postData_v)))
    postData_ctr += 1

  gen_qwebenginehttprequest_types.QWebEngineHttpRequest(h: fcQWebEngineHttpRequest_postRequest(url.h, struct_miqt_map(len: csize_t(len(postData)),keys: if len(postData) == 0: nil else: addr(postData_Keys_CArray[0]), values: if len(postData) == 0: nil else: addr(postData_Values_CArray[0]),)), owned: true)

proc swap*(self: gen_qwebenginehttprequest_types.QWebEngineHttpRequest, other: gen_qwebenginehttprequest_types.QWebEngineHttpRequest): void =
  fcQWebEngineHttpRequest_swap(self.h, other.h)

proc operatorEqual*(self: gen_qwebenginehttprequest_types.QWebEngineHttpRequest, other: gen_qwebenginehttprequest_types.QWebEngineHttpRequest): bool =
  fcQWebEngineHttpRequest_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qwebenginehttprequest_types.QWebEngineHttpRequest, other: gen_qwebenginehttprequest_types.QWebEngineHttpRequest): bool =
  fcQWebEngineHttpRequest_operatorNotEqual(self.h, other.h)

proc methodX*(self: gen_qwebenginehttprequest_types.QWebEngineHttpRequest, ): cint =
  cint(fcQWebEngineHttpRequest_methodX(self.h))

proc setMethod*(self: gen_qwebenginehttprequest_types.QWebEngineHttpRequest, methodVal: cint): void =
  fcQWebEngineHttpRequest_setMethod(self.h, cint(methodVal))

proc url*(self: gen_qwebenginehttprequest_types.QWebEngineHttpRequest, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineHttpRequest_url(self.h), owned: true)

proc setUrl*(self: gen_qwebenginehttprequest_types.QWebEngineHttpRequest, url: gen_qurl_types.QUrl): void =
  fcQWebEngineHttpRequest_setUrl(self.h, url.h)

proc postData*(self: gen_qwebenginehttprequest_types.QWebEngineHttpRequest, ): seq[byte] =
  var v_bytearray = fcQWebEngineHttpRequest_postData(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setPostData*(self: gen_qwebenginehttprequest_types.QWebEngineHttpRequest, postData: seq[byte]): void =
  fcQWebEngineHttpRequest_setPostData(self.h, struct_miqt_string(data: cast[cstring](if len(postData) == 0: nil else: unsafeAddr postData[0]), len: csize_t(len(postData))))

proc hasHeader*(self: gen_qwebenginehttprequest_types.QWebEngineHttpRequest, headerName: seq[byte]): bool =
  fcQWebEngineHttpRequest_hasHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))))

proc headers*(self: gen_qwebenginehttprequest_types.QWebEngineHttpRequest, ): seq[seq[byte]] =
  var v_ma = fcQWebEngineHttpRequest_headers(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc header*(self: gen_qwebenginehttprequest_types.QWebEngineHttpRequest, headerName: seq[byte]): seq[byte] =
  var v_bytearray = fcQWebEngineHttpRequest_header(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setHeader*(self: gen_qwebenginehttprequest_types.QWebEngineHttpRequest, headerName: seq[byte], value: seq[byte]): void =
  fcQWebEngineHttpRequest_setHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))), struct_miqt_string(data: cast[cstring](if len(value) == 0: nil else: unsafeAddr value[0]), len: csize_t(len(value))))

proc unsetHeader*(self: gen_qwebenginehttprequest_types.QWebEngineHttpRequest, headerName: seq[byte]): void =
  fcQWebEngineHttpRequest_unsetHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))))

proc create*(T: type gen_qwebenginehttprequest_types.QWebEngineHttpRequest): gen_qwebenginehttprequest_types.QWebEngineHttpRequest =
  gen_qwebenginehttprequest_types.QWebEngineHttpRequest(h: fcQWebEngineHttpRequest_new(), owned: true)

proc create*(T: type gen_qwebenginehttprequest_types.QWebEngineHttpRequest,
    other: gen_qwebenginehttprequest_types.QWebEngineHttpRequest): gen_qwebenginehttprequest_types.QWebEngineHttpRequest =
  gen_qwebenginehttprequest_types.QWebEngineHttpRequest(h: fcQWebEngineHttpRequest_new2(other.h), owned: true)

proc create*(T: type gen_qwebenginehttprequest_types.QWebEngineHttpRequest,
    url: gen_qurl_types.QUrl): gen_qwebenginehttprequest_types.QWebEngineHttpRequest =
  gen_qwebenginehttprequest_types.QWebEngineHttpRequest(h: fcQWebEngineHttpRequest_new3(url.h), owned: true)

proc create*(T: type gen_qwebenginehttprequest_types.QWebEngineHttpRequest,
    url: gen_qurl_types.QUrl, methodVal: ptr cint): gen_qwebenginehttprequest_types.QWebEngineHttpRequest =
  gen_qwebenginehttprequest_types.QWebEngineHttpRequest(h: fcQWebEngineHttpRequest_new4(url.h, methodVal), owned: true)

