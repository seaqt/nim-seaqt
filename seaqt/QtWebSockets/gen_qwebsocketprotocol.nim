import ./qtwebsockets_pkg

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


{.compile("gen_qwebsocketprotocol.cpp", QtWebSocketsCFlags).}


type QWebSocketProtocolVersionEnum* = distinct cint
template VersionUnknown*(_: type QWebSocketProtocolVersionEnum): untyped = -1
template Version0*(_: type QWebSocketProtocolVersionEnum): untyped = 0
template Version4*(_: type QWebSocketProtocolVersionEnum): untyped = 4
template Version5*(_: type QWebSocketProtocolVersionEnum): untyped = 5
template Version6*(_: type QWebSocketProtocolVersionEnum): untyped = 6
template Version7*(_: type QWebSocketProtocolVersionEnum): untyped = 7
template Version8*(_: type QWebSocketProtocolVersionEnum): untyped = 8
template Version13*(_: type QWebSocketProtocolVersionEnum): untyped = 13
template VersionLatest*(_: type QWebSocketProtocolVersionEnum): untyped = 13


type QWebSocketProtocolCloseCodeEnum* = distinct cint
template CloseCodeNormal*(_: type QWebSocketProtocolCloseCodeEnum): untyped = 1000
template CloseCodeGoingAway*(_: type QWebSocketProtocolCloseCodeEnum): untyped = 1001
template CloseCodeProtocolError*(_: type QWebSocketProtocolCloseCodeEnum): untyped = 1002
template CloseCodeDatatypeNotSupported*(_: type QWebSocketProtocolCloseCodeEnum): untyped = 1003
template CloseCodeReserved1004*(_: type QWebSocketProtocolCloseCodeEnum): untyped = 1004
template CloseCodeMissingStatusCode*(_: type QWebSocketProtocolCloseCodeEnum): untyped = 1005
template CloseCodeAbnormalDisconnection*(_: type QWebSocketProtocolCloseCodeEnum): untyped = 1006
template CloseCodeWrongDatatype*(_: type QWebSocketProtocolCloseCodeEnum): untyped = 1007
template CloseCodePolicyViolated*(_: type QWebSocketProtocolCloseCodeEnum): untyped = 1008
template CloseCodeTooMuchData*(_: type QWebSocketProtocolCloseCodeEnum): untyped = 1009
template CloseCodeMissingExtension*(_: type QWebSocketProtocolCloseCodeEnum): untyped = 1010
template CloseCodeBadOperation*(_: type QWebSocketProtocolCloseCodeEnum): untyped = 1011
template CloseCodeTlsHandshakeFailed*(_: type QWebSocketProtocolCloseCodeEnum): untyped = 1015


import ./gen_qwebsocketprotocol_types
export gen_qwebsocketprotocol_types




