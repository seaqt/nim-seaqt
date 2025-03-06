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
{.compile("gen_qwebenginenewwindowrequest.cpp", cflags).}


type QWebEngineNewWindowRequestDestinationTypeEnum* = distinct cint
template InNewWindow*(_: type QWebEngineNewWindowRequestDestinationTypeEnum): untyped = 0
template InNewTab*(_: type QWebEngineNewWindowRequestDestinationTypeEnum): untyped = 1
template InNewDialog*(_: type QWebEngineNewWindowRequestDestinationTypeEnum): untyped = 2
template InNewBackgroundTab*(_: type QWebEngineNewWindowRequestDestinationTypeEnum): untyped = 3


import ./gen_qwebenginenewwindowrequest_types
export gen_qwebenginenewwindowrequest_types

import
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qurl_types,
  ./gen_qwebenginepage_types
export
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qurl_types,
  gen_qwebenginepage_types

type cQWebEngineNewWindowRequest*{.exportc: "QWebEngineNewWindowRequest", incompleteStruct.} = object

proc fcQWebEngineNewWindowRequest_metaObject(self: pointer, ): pointer {.importc: "QWebEngineNewWindowRequest_metaObject".}
proc fcQWebEngineNewWindowRequest_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineNewWindowRequest_metacast".}
proc fcQWebEngineNewWindowRequest_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineNewWindowRequest_metacall".}
proc fcQWebEngineNewWindowRequest_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineNewWindowRequest_tr".}
proc fcQWebEngineNewWindowRequest_destination(self: pointer, ): cint {.importc: "QWebEngineNewWindowRequest_destination".}
proc fcQWebEngineNewWindowRequest_requestedUrl(self: pointer, ): pointer {.importc: "QWebEngineNewWindowRequest_requestedUrl".}
proc fcQWebEngineNewWindowRequest_requestedGeometry(self: pointer, ): pointer {.importc: "QWebEngineNewWindowRequest_requestedGeometry".}
proc fcQWebEngineNewWindowRequest_isUserInitiated(self: pointer, ): bool {.importc: "QWebEngineNewWindowRequest_isUserInitiated".}
proc fcQWebEngineNewWindowRequest_openIn(self: pointer, param1: pointer): void {.importc: "QWebEngineNewWindowRequest_openIn".}
proc fcQWebEngineNewWindowRequest_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineNewWindowRequest_tr2".}
proc fcQWebEngineNewWindowRequest_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineNewWindowRequest_tr3".}
proc fcQWebEngineNewWindowRequest_staticMetaObject(): pointer {.importc: "QWebEngineNewWindowRequest_staticMetaObject".}
proc fcQWebEngineNewWindowRequest_delete(self: pointer) {.importc: "QWebEngineNewWindowRequest_delete".}


func init*(T: type gen_qwebenginenewwindowrequest_types.QWebEngineNewWindowRequest, h: ptr cQWebEngineNewWindowRequest): gen_qwebenginenewwindowrequest_types.QWebEngineNewWindowRequest =
  T(h: h)
proc metaObject*(self: gen_qwebenginenewwindowrequest_types.QWebEngineNewWindowRequest, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineNewWindowRequest_metaObject(self.h))

proc metacast*(self: gen_qwebenginenewwindowrequest_types.QWebEngineNewWindowRequest, param1: cstring): pointer =
  fcQWebEngineNewWindowRequest_metacast(self.h, param1)

proc metacall*(self: gen_qwebenginenewwindowrequest_types.QWebEngineNewWindowRequest, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineNewWindowRequest_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebenginenewwindowrequest_types.QWebEngineNewWindowRequest, s: cstring): string =
  let v_ms = fcQWebEngineNewWindowRequest_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc destination*(self: gen_qwebenginenewwindowrequest_types.QWebEngineNewWindowRequest, ): cint =
  cint(fcQWebEngineNewWindowRequest_destination(self.h))

proc requestedUrl*(self: gen_qwebenginenewwindowrequest_types.QWebEngineNewWindowRequest, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineNewWindowRequest_requestedUrl(self.h))

proc requestedGeometry*(self: gen_qwebenginenewwindowrequest_types.QWebEngineNewWindowRequest, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWebEngineNewWindowRequest_requestedGeometry(self.h))

proc isUserInitiated*(self: gen_qwebenginenewwindowrequest_types.QWebEngineNewWindowRequest, ): bool =
  fcQWebEngineNewWindowRequest_isUserInitiated(self.h)

proc openIn*(self: gen_qwebenginenewwindowrequest_types.QWebEngineNewWindowRequest, param1: gen_qwebenginepage_types.QWebEnginePage): void =
  fcQWebEngineNewWindowRequest_openIn(self.h, param1.h)

proc tr*(_: type gen_qwebenginenewwindowrequest_types.QWebEngineNewWindowRequest, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineNewWindowRequest_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebenginenewwindowrequest_types.QWebEngineNewWindowRequest, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineNewWindowRequest_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qwebenginenewwindowrequest_types.QWebEngineNewWindowRequest): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineNewWindowRequest_staticMetaObject())
proc delete*(self: gen_qwebenginenewwindowrequest_types.QWebEngineNewWindowRequest) =
  fcQWebEngineNewWindowRequest_delete(self.h)
