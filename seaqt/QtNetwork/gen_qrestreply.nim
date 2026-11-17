import ./qtnetwork_pkg

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


import ./gen_qrestreply_types
export gen_qrestreply_types

import
  ./gen_qnetworkreply_types
export
  gen_qnetworkreply_types

type cQRestReply*{.exportc: "QRestReply", incompleteStruct.} = object

proc fcQRestReply_swap(self: pointer, other: pointer): void {.importc: "QRestReply_swap".}
proc fcQRestReply_networkReply(self: pointer): pointer {.importc: "QRestReply_networkReply".}
proc fcQRestReply_readBody(self: pointer): struct_seaqt_string {.importc: "QRestReply_readBody".}
proc fcQRestReply_readText(self: pointer): struct_seaqt_string {.importc: "QRestReply_readText".}
proc fcQRestReply_isSuccess(self: pointer): bool {.importc: "QRestReply_isSuccess".}
proc fcQRestReply_httpStatus(self: pointer): cint {.importc: "QRestReply_httpStatus".}
proc fcQRestReply_isHttpStatusSuccess(self: pointer): bool {.importc: "QRestReply_isHttpStatusSuccess".}
proc fcQRestReply_hasError(self: pointer): bool {.importc: "QRestReply_hasError".}
proc fcQRestReply_error(self: pointer): cint {.importc: "QRestReply_error".}
proc fcQRestReply_errorString(self: pointer): struct_seaqt_string {.importc: "QRestReply_errorString".}
proc fcQRestReply_new(reply: pointer): ptr cQRestReply {.importc: "QRestReply_new".}

proc swap*(self: gen_qrestreply_types.QRestReply, other: gen_qrestreply_types.QRestReply): void =
  fcQRestReply_swap(self.h, other.h)

proc networkReply*(self: gen_qrestreply_types.QRestReply): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestReply_networkReply(self.h), owned: false)

proc readBody*(self: gen_qrestreply_types.QRestReply): seq[byte] =
  var v_bytearray = fcQRestReply_readBody(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc readText*(self: gen_qrestreply_types.QRestReply): string =
  let v_ms = fcQRestReply_readText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isSuccess*(self: gen_qrestreply_types.QRestReply): bool =
  fcQRestReply_isSuccess(self.h)

proc httpStatus*(self: gen_qrestreply_types.QRestReply): cint =
  fcQRestReply_httpStatus(self.h)

proc isHttpStatusSuccess*(self: gen_qrestreply_types.QRestReply): bool =
  fcQRestReply_isHttpStatusSuccess(self.h)

proc hasError*(self: gen_qrestreply_types.QRestReply): bool =
  fcQRestReply_hasError(self.h)

proc error*(self: gen_qrestreply_types.QRestReply): cint =
  cint(fcQRestReply_error(self.h))

proc errorString*(self: gen_qrestreply_types.QRestReply): string =
  let v_ms = fcQRestReply_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qrestreply_types.QRestReply,
    reply: gen_qnetworkreply_types.QNetworkReply): gen_qrestreply_types.QRestReply =
  let tmp = gen_qrestreply_types.QRestReply(h: fcQRestReply_new(reply.h), owned: true)
  tmp
