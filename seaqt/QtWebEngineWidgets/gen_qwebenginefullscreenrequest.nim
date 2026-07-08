import ./qtwebenginewidgets_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


import ./gen_qwebenginefullscreenrequest_types
export gen_qwebenginefullscreenrequest_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types
export
  gen_qobjectdefs_types,
  gen_qurl_types

type cQWebEngineFullScreenRequest*{.exportc: "QWebEngineFullScreenRequest", incompleteStruct.} = object

proc fcQWebEngineFullScreenRequest_reject(self: pointer): void {.importc: "QWebEngineFullScreenRequest_reject".}
proc fcQWebEngineFullScreenRequest_accept(self: pointer): void {.importc: "QWebEngineFullScreenRequest_accept".}
proc fcQWebEngineFullScreenRequest_toggleOn(self: pointer): bool {.importc: "QWebEngineFullScreenRequest_toggleOn".}
proc fcQWebEngineFullScreenRequest_origin(self: pointer): pointer {.importc: "QWebEngineFullScreenRequest_origin".}
proc fcQWebEngineFullScreenRequest_new(fromVal: pointer): ptr cQWebEngineFullScreenRequest {.importc: "QWebEngineFullScreenRequest_new".}
proc fcQWebEngineFullScreenRequest_staticMetaObject(): pointer {.importc: "QWebEngineFullScreenRequest_staticMetaObject".}

proc reject*(self: gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest): void =
  fcQWebEngineFullScreenRequest_reject(self.h)

proc accept*(self: gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest): void =
  fcQWebEngineFullScreenRequest_accept(self.h)

proc toggleOn*(self: gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest): bool =
  fcQWebEngineFullScreenRequest_toggleOn(self.h)

proc origin*(self: gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineFullScreenRequest_origin(self.h), owned: false)

proc create*(T: type gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest,
    fromVal: gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest): gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest =
  let tmp = gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest(h: fcQWebEngineFullScreenRequest_new(fromVal.h), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineFullScreenRequest_staticMetaObject())
