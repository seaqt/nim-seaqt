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


import ./gen_qwebsockethandshakeoptions_types
export gen_qwebsockethandshakeoptions_types


type cQWebSocketHandshakeOptions*{.exportc: "QWebSocketHandshakeOptions", incompleteStruct.} = object

proc fcQWebSocketHandshakeOptions_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebSocketHandshakeOptions_operatorAssign".}
proc fcQWebSocketHandshakeOptions_swap(self: pointer, other: pointer): void {.importc: "QWebSocketHandshakeOptions_swap".}
proc fcQWebSocketHandshakeOptions_subprotocols(self: pointer): struct_seaqt_array {.importc: "QWebSocketHandshakeOptions_subprotocols".}
proc fcQWebSocketHandshakeOptions_setSubprotocols(self: pointer, protocols: struct_seaqt_array): void {.importc: "QWebSocketHandshakeOptions_setSubprotocols".}
proc fcQWebSocketHandshakeOptions_new(): ptr cQWebSocketHandshakeOptions {.importc: "QWebSocketHandshakeOptions_new".}
proc fcQWebSocketHandshakeOptions_new2(other: pointer): ptr cQWebSocketHandshakeOptions {.importc: "QWebSocketHandshakeOptions_new2".}

proc operatorAssign*(self: gen_qwebsockethandshakeoptions_types.QWebSocketHandshakeOptions, other: gen_qwebsockethandshakeoptions_types.QWebSocketHandshakeOptions): void =
  fcQWebSocketHandshakeOptions_operatorAssign(self.h, other.h)

proc swap*(self: gen_qwebsockethandshakeoptions_types.QWebSocketHandshakeOptions, other: gen_qwebsockethandshakeoptions_types.QWebSocketHandshakeOptions): void =
  fcQWebSocketHandshakeOptions_swap(self.h, other.h)

proc subprotocols*(self: gen_qwebsockethandshakeoptions_types.QWebSocketHandshakeOptions): seq[string] =
  var v_ma = fcQWebSocketHandshakeOptions_subprotocols(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setSubprotocols*(self: gen_qwebsockethandshakeoptions_types.QWebSocketHandshakeOptions, protocols: openArray[string]): void =
  var protocols_CArray = newSeq[struct_seaqt_string](len(protocols))
  for i in 0..<len(protocols):
    protocols_CArray[i] = struct_seaqt_string(data: if len(protocols[i]) > 0: addr protocols[i][0] else: nil, len: csize_t(len(protocols[i])))

  fcQWebSocketHandshakeOptions_setSubprotocols(self.h, struct_seaqt_array(len: csize_t(len(protocols)), data: if len(protocols) == 0: nil else: addr(protocols_CArray[0])))

proc create*(T: type gen_qwebsockethandshakeoptions_types.QWebSocketHandshakeOptions): gen_qwebsockethandshakeoptions_types.QWebSocketHandshakeOptions =
  let tmp = gen_qwebsockethandshakeoptions_types.QWebSocketHandshakeOptions(h: fcQWebSocketHandshakeOptions_new(), owned: true)
  tmp
proc create*(T: type gen_qwebsockethandshakeoptions_types.QWebSocketHandshakeOptions,
    other: gen_qwebsockethandshakeoptions_types.QWebSocketHandshakeOptions): gen_qwebsockethandshakeoptions_types.QWebSocketHandshakeOptions =
  let tmp = gen_qwebsockethandshakeoptions_types.QWebSocketHandshakeOptions(h: fcQWebSocketHandshakeOptions_new2(other.h), owned: true)
  tmp
