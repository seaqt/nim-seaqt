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


type QSslDiffieHellmanParametersErrorEnum* = distinct cint
template NoError*(_: type QSslDiffieHellmanParametersErrorEnum): untyped = 0
template InvalidInputDataError*(_: type QSslDiffieHellmanParametersErrorEnum): untyped = 1
template UnsafeParametersError*(_: type QSslDiffieHellmanParametersErrorEnum): untyped = 2


import ./gen_qssldiffiehellmanparameters_types
export gen_qssldiffiehellmanparameters_types

import
  ../QtCore/gen_qiodevice_types
export
  gen_qiodevice_types

type cQSslDiffieHellmanParameters*{.exportc: "QSslDiffieHellmanParameters", incompleteStruct.} = object

proc fcQSslDiffieHellmanParameters_defaultParameters(): pointer {.importc: "QSslDiffieHellmanParameters_defaultParameters".}
proc fcQSslDiffieHellmanParameters_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QSslDiffieHellmanParameters_operatorAssign".}
proc fcQSslDiffieHellmanParameters_swap(self: pointer, other: pointer): void {.importc: "QSslDiffieHellmanParameters_swap".}
proc fcQSslDiffieHellmanParameters_fromEncodedEncoded(encoded: struct_seaqt_string): pointer {.importc: "QSslDiffieHellmanParameters_fromEncoded_encoded".}
proc fcQSslDiffieHellmanParameters_fromEncodedDevice(device: pointer): pointer {.importc: "QSslDiffieHellmanParameters_fromEncoded_device".}
proc fcQSslDiffieHellmanParameters_isEmpty(self: pointer): bool {.importc: "QSslDiffieHellmanParameters_isEmpty".}
proc fcQSslDiffieHellmanParameters_isValid(self: pointer): bool {.importc: "QSslDiffieHellmanParameters_isValid".}
proc fcQSslDiffieHellmanParameters_error(self: pointer): cint {.importc: "QSslDiffieHellmanParameters_error".}
proc fcQSslDiffieHellmanParameters_errorString(self: pointer): struct_seaqt_string {.importc: "QSslDiffieHellmanParameters_errorString".}
proc fcQSslDiffieHellmanParameters_fromEncodedEncodedFormat(encoded: struct_seaqt_string, format: cint): pointer {.importc: "QSslDiffieHellmanParameters_fromEncoded_encoded_format".}
proc fcQSslDiffieHellmanParameters_fromEncodedDeviceFormat(device: pointer, format: cint): pointer {.importc: "QSslDiffieHellmanParameters_fromEncoded_device_format".}
proc fcQSslDiffieHellmanParameters_new(): ptr cQSslDiffieHellmanParameters {.importc: "QSslDiffieHellmanParameters_new".}
proc fcQSslDiffieHellmanParameters_new2(fromVal: pointer): ptr cQSslDiffieHellmanParameters {.importc: "QSslDiffieHellmanParameters_new_from".}

proc defaultParameters*(_: type gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters): gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters =
  gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters(h: fcQSslDiffieHellmanParameters_defaultParameters(), owned: true)

proc operatorAssign*(self: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters, fromVal: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters): void =
  fcQSslDiffieHellmanParameters_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters, other: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters): void =
  fcQSslDiffieHellmanParameters_swap(self.h, other.h)

proc fromEncoded*(_: type gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters, encoded: openArray[byte]): gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters =
  gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters(h: fcQSslDiffieHellmanParameters_fromEncodedEncoded(struct_seaqt_string(data: if len(encoded) > 0: addr encoded[0] else: nil, len: csize_t(len(encoded)))), owned: true)

proc fromEncoded*(_: type gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters, device: gen_qiodevice_types.QIODevice): gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters =
  gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters(h: fcQSslDiffieHellmanParameters_fromEncodedDevice(device.h), owned: true)

proc isEmpty*(self: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters): bool =
  fcQSslDiffieHellmanParameters_isEmpty(self.h)

proc isValid*(self: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters): bool =
  fcQSslDiffieHellmanParameters_isValid(self.h)

proc error*(self: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters): cint =
  cint(fcQSslDiffieHellmanParameters_error(self.h))

proc errorString*(self: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters): string =
  let v_ms = fcQSslDiffieHellmanParameters_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromEncoded*(_: type gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters, encoded: openArray[byte], format: cint): gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters =
  gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters(h: fcQSslDiffieHellmanParameters_fromEncodedEncodedFormat(struct_seaqt_string(data: if len(encoded) > 0: addr encoded[0] else: nil, len: csize_t(len(encoded))), cint(format)), owned: true)

proc fromEncoded*(_: type gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters, device: gen_qiodevice_types.QIODevice, format: cint): gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters =
  gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters(h: fcQSslDiffieHellmanParameters_fromEncodedDeviceFormat(device.h, cint(format)), owned: true)

proc create*(T: type gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters): gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters =
  let tmp = gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters(h: fcQSslDiffieHellmanParameters_new(), owned: true)
  tmp
proc create*(T: type gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters,
    fromVal: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters): gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters =
  let tmp = gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters(h: fcQSslDiffieHellmanParameters_new2(fromVal.h), owned: true)
  tmp
