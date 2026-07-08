import ./qtcore_pkg

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


import ./gen_qmessageauthenticationcode_types
export gen_qmessageauthenticationcode_types

import
  ./gen_qiodevice_types
export
  gen_qiodevice_types

type cQMessageAuthenticationCode*{.exportc: "QMessageAuthenticationCode", incompleteStruct.} = object

proc fcQMessageAuthenticationCode_swap(self: pointer, other: pointer): void {.importc: "QMessageAuthenticationCode_swap".}
proc fcQMessageAuthenticationCode_reset(self: pointer): void {.importc: "QMessageAuthenticationCode_reset".}
proc fcQMessageAuthenticationCode_setKey(self: pointer, key: struct_seaqt_string): void {.importc: "QMessageAuthenticationCode_setKey".}
proc fcQMessageAuthenticationCode_addDataDataLength(self: pointer, data: cstring, length: int64): void {.importc: "QMessageAuthenticationCode_addData_data_length".}
proc fcQMessageAuthenticationCode_addDataData(self: pointer, data: struct_seaqt_string): void {.importc: "QMessageAuthenticationCode_addData_data".}
proc fcQMessageAuthenticationCode_addDataDevice(self: pointer, device: pointer): bool {.importc: "QMessageAuthenticationCode_addData_device".}
proc fcQMessageAuthenticationCode_resultView(self: pointer): struct_seaqt_string {.importc: "QMessageAuthenticationCode_resultView".}
proc fcQMessageAuthenticationCode_resultX(self: pointer): struct_seaqt_string {.importc: "QMessageAuthenticationCode_result".}
proc fcQMessageAuthenticationCode_hash(message: struct_seaqt_string, key: struct_seaqt_string, methodVal: cint): struct_seaqt_string {.importc: "QMessageAuthenticationCode_hash".}
proc fcQMessageAuthenticationCode_new(methodVal: cint): ptr cQMessageAuthenticationCode {.importc: "QMessageAuthenticationCode_new_method".}
proc fcQMessageAuthenticationCode_new2(methodVal: cint, key: struct_seaqt_string): ptr cQMessageAuthenticationCode {.importc: "QMessageAuthenticationCode_new_method_key".}

proc swap*(self: gen_qmessageauthenticationcode_types.QMessageAuthenticationCode, other: gen_qmessageauthenticationcode_types.QMessageAuthenticationCode): void =
  fcQMessageAuthenticationCode_swap(self.h, other.h)

proc reset*(self: gen_qmessageauthenticationcode_types.QMessageAuthenticationCode): void =
  fcQMessageAuthenticationCode_reset(self.h)

proc setKey*(self: gen_qmessageauthenticationcode_types.QMessageAuthenticationCode, key: openArray[byte]): void =
  fcQMessageAuthenticationCode_setKey(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))))

proc addData*(self: gen_qmessageauthenticationcode_types.QMessageAuthenticationCode, data: cstring, length: int64): void =
  fcQMessageAuthenticationCode_addDataDataLength(self.h, data, length)

proc addData*(self: gen_qmessageauthenticationcode_types.QMessageAuthenticationCode, data: openArray[byte]): void =
  fcQMessageAuthenticationCode_addDataData(self.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data))))

proc addData*(self: gen_qmessageauthenticationcode_types.QMessageAuthenticationCode, device: gen_qiodevice_types.QIODevice): bool =
  fcQMessageAuthenticationCode_addDataDevice(self.h, device.h)

proc resultView*(self: gen_qmessageauthenticationcode_types.QMessageAuthenticationCode): seq[byte] =
  var v_bytearray = fcQMessageAuthenticationCode_resultView(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc resultX*(self: gen_qmessageauthenticationcode_types.QMessageAuthenticationCode): seq[byte] =
  var v_bytearray = fcQMessageAuthenticationCode_resultX(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc hash*(_: type gen_qmessageauthenticationcode_types.QMessageAuthenticationCode, message: openArray[byte], key: openArray[byte], methodVal: cint): seq[byte] =
  var v_bytearray = fcQMessageAuthenticationCode_hash(struct_seaqt_string(data: if len(message) > 0: addr message[0] else: nil, len: csize_t(len(message))), struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), cint(methodVal))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc create*(T: type gen_qmessageauthenticationcode_types.QMessageAuthenticationCode,
    methodVal: cint): gen_qmessageauthenticationcode_types.QMessageAuthenticationCode =
  let tmp = gen_qmessageauthenticationcode_types.QMessageAuthenticationCode(h: fcQMessageAuthenticationCode_new(cint(methodVal)), owned: true)
  tmp
proc create*(T: type gen_qmessageauthenticationcode_types.QMessageAuthenticationCode,
    methodVal: cint, key: openArray[byte]): gen_qmessageauthenticationcode_types.QMessageAuthenticationCode =
  let tmp = gen_qmessageauthenticationcode_types.QMessageAuthenticationCode(h: fcQMessageAuthenticationCode_new2(cint(methodVal), struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)
  tmp
