import ./Qt5WebKit_libs

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


import ./gen_qwebfullscreenrequest_types
export gen_qwebfullscreenrequest_types

import
  ../QtCore/gen_qurl_types,
  ./gen_qwebelement_types
export
  gen_qurl_types,
  gen_qwebelement_types

type cQWebFullScreenRequest*{.exportc: "QWebFullScreenRequest", incompleteStruct.} = object

proc fcQWebFullScreenRequest_accept(self: pointer, ): void {.importc: "QWebFullScreenRequest_accept".}
proc fcQWebFullScreenRequest_reject(self: pointer, ): void {.importc: "QWebFullScreenRequest_reject".}
proc fcQWebFullScreenRequest_toggleOn(self: pointer, ): bool {.importc: "QWebFullScreenRequest_toggleOn".}
proc fcQWebFullScreenRequest_origin(self: pointer, ): pointer {.importc: "QWebFullScreenRequest_origin".}
proc fcQWebFullScreenRequest_element(self: pointer, ): pointer {.importc: "QWebFullScreenRequest_element".}
proc fcQWebFullScreenRequest_new(): ptr cQWebFullScreenRequest {.importc: "QWebFullScreenRequest_new".}
proc fcQWebFullScreenRequest_new2(param1: pointer): ptr cQWebFullScreenRequest {.importc: "QWebFullScreenRequest_new2".}

proc accept*(self: gen_qwebfullscreenrequest_types.QWebFullScreenRequest, ): void =
  fcQWebFullScreenRequest_accept(self.h)

proc reject*(self: gen_qwebfullscreenrequest_types.QWebFullScreenRequest, ): void =
  fcQWebFullScreenRequest_reject(self.h)

proc toggleOn*(self: gen_qwebfullscreenrequest_types.QWebFullScreenRequest, ): bool =
  fcQWebFullScreenRequest_toggleOn(self.h)

proc origin*(self: gen_qwebfullscreenrequest_types.QWebFullScreenRequest, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebFullScreenRequest_origin(self.h), owned: true)

proc element*(self: gen_qwebfullscreenrequest_types.QWebFullScreenRequest, ): gen_qwebelement_types.QWebElement =
  gen_qwebelement_types.QWebElement(h: fcQWebFullScreenRequest_element(self.h), owned: false)

proc create*(T: type gen_qwebfullscreenrequest_types.QWebFullScreenRequest): gen_qwebfullscreenrequest_types.QWebFullScreenRequest =
  gen_qwebfullscreenrequest_types.QWebFullScreenRequest(h: fcQWebFullScreenRequest_new(), owned: true)

proc create*(T: type gen_qwebfullscreenrequest_types.QWebFullScreenRequest,
    param1: gen_qwebfullscreenrequest_types.QWebFullScreenRequest): gen_qwebfullscreenrequest_types.QWebFullScreenRequest =
  gen_qwebfullscreenrequest_types.QWebFullScreenRequest(h: fcQWebFullScreenRequest_new2(param1.h), owned: true)

