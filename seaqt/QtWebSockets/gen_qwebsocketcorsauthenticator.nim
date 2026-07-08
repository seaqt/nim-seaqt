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


import ./gen_qwebsocketcorsauthenticator_types
export gen_qwebsocketcorsauthenticator_types


type cQWebSocketCorsAuthenticator*{.exportc: "QWebSocketCorsAuthenticator", incompleteStruct.} = object

proc fcQWebSocketCorsAuthenticator_swap(self: pointer, other: pointer): void {.importc: "QWebSocketCorsAuthenticator_swap".}
proc fcQWebSocketCorsAuthenticator_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebSocketCorsAuthenticator_operatorAssign".}
proc fcQWebSocketCorsAuthenticator_origin(self: pointer): struct_seaqt_string {.importc: "QWebSocketCorsAuthenticator_origin".}
proc fcQWebSocketCorsAuthenticator_setAllowed(self: pointer, allowed: bool): void {.importc: "QWebSocketCorsAuthenticator_setAllowed".}
proc fcQWebSocketCorsAuthenticator_allowed(self: pointer): bool {.importc: "QWebSocketCorsAuthenticator_allowed".}
proc fcQWebSocketCorsAuthenticator_new(origin: struct_seaqt_string): ptr cQWebSocketCorsAuthenticator {.importc: "QWebSocketCorsAuthenticator_new".}
proc fcQWebSocketCorsAuthenticator_new2(other: pointer): ptr cQWebSocketCorsAuthenticator {.importc: "QWebSocketCorsAuthenticator_new2".}
proc fcQWebSocketCorsAuthenticator_delete(self: pointer) {.importc: "QWebSocketCorsAuthenticator_delete".}

proc swap*(self: gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator, other: gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator): void =
  fcQWebSocketCorsAuthenticator_swap(self.h, other.h)

proc operatorAssign*(self: gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator, other: gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator): void =
  fcQWebSocketCorsAuthenticator_operatorAssign(self.h, other.h)

proc origin*(self: gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator): string =
  let v_ms = fcQWebSocketCorsAuthenticator_origin(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setAllowed*(self: gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator, allowed: bool): void =
  fcQWebSocketCorsAuthenticator_setAllowed(self.h, allowed)

proc allowed*(self: gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator): bool =
  fcQWebSocketCorsAuthenticator_allowed(self.h)

proc create*(T: type gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator,
    origin: openArray[char]): gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator =
  let tmp = gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator(h: fcQWebSocketCorsAuthenticator_new(struct_seaqt_string(data: if len(origin) > 0: addr origin[0] else: nil, len: csize_t(len(origin)))))
  tmp
proc create*(T: type gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator,
    other: gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator): gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator =
  let tmp = gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator(h: fcQWebSocketCorsAuthenticator_new2(other.h))
  tmp
proc delete*(self: gen_qwebsocketcorsauthenticator_types.QWebSocketCorsAuthenticator) =
  fcQWebSocketCorsAuthenticator_delete(self.h)
