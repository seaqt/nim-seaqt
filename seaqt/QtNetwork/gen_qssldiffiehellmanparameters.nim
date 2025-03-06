import ./Qt6Network_libs

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

const cflags = gorge("pkg-config --cflags Qt6Network")  & " -fPIC"
{.compile("gen_qssldiffiehellmanparameters.cpp", cflags).}


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
proc fcQSslDiffieHellmanParameters_operatorAssign(self: pointer, other: pointer): void {.importc: "QSslDiffieHellmanParameters_operatorAssign".}
proc fcQSslDiffieHellmanParameters_swap(self: pointer, other: pointer): void {.importc: "QSslDiffieHellmanParameters_swap".}
proc fcQSslDiffieHellmanParameters_fromEncoded(encoded: struct_miqt_string): pointer {.importc: "QSslDiffieHellmanParameters_fromEncoded".}
proc fcQSslDiffieHellmanParameters_fromEncodedWithDevice(device: pointer): pointer {.importc: "QSslDiffieHellmanParameters_fromEncodedWithDevice".}
proc fcQSslDiffieHellmanParameters_isEmpty(self: pointer, ): bool {.importc: "QSslDiffieHellmanParameters_isEmpty".}
proc fcQSslDiffieHellmanParameters_isValid(self: pointer, ): bool {.importc: "QSslDiffieHellmanParameters_isValid".}
proc fcQSslDiffieHellmanParameters_error(self: pointer, ): cint {.importc: "QSslDiffieHellmanParameters_error".}
proc fcQSslDiffieHellmanParameters_errorString(self: pointer, ): struct_miqt_string {.importc: "QSslDiffieHellmanParameters_errorString".}
proc fcQSslDiffieHellmanParameters_fromEncoded2(encoded: struct_miqt_string, format: cint): pointer {.importc: "QSslDiffieHellmanParameters_fromEncoded2".}
proc fcQSslDiffieHellmanParameters_fromEncoded22(device: pointer, format: cint): pointer {.importc: "QSslDiffieHellmanParameters_fromEncoded22".}
proc fcQSslDiffieHellmanParameters_new(): ptr cQSslDiffieHellmanParameters {.importc: "QSslDiffieHellmanParameters_new".}
proc fcQSslDiffieHellmanParameters_new2(other: pointer): ptr cQSslDiffieHellmanParameters {.importc: "QSslDiffieHellmanParameters_new2".}
proc fcQSslDiffieHellmanParameters_delete(self: pointer) {.importc: "QSslDiffieHellmanParameters_delete".}

proc defaultParameters*(_: type gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters, ): gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters =
  gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters(h: fcQSslDiffieHellmanParameters_defaultParameters())

proc operatorAssign*(self: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters, other: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters): void =
  fcQSslDiffieHellmanParameters_operatorAssign(self.h, other.h)

proc swap*(self: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters, other: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters): void =
  fcQSslDiffieHellmanParameters_swap(self.h, other.h)

proc fromEncoded*(_: type gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters, encoded: seq[byte]): gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters =
  gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters(h: fcQSslDiffieHellmanParameters_fromEncoded(struct_miqt_string(data: cast[cstring](if len(encoded) == 0: nil else: unsafeAddr encoded[0]), len: csize_t(len(encoded)))))

proc fromEncoded*(_: type gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters, device: gen_qiodevice_types.QIODevice): gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters =
  gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters(h: fcQSslDiffieHellmanParameters_fromEncodedWithDevice(device.h))

proc isEmpty*(self: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters, ): bool =
  fcQSslDiffieHellmanParameters_isEmpty(self.h)

proc isValid*(self: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters, ): bool =
  fcQSslDiffieHellmanParameters_isValid(self.h)

proc error*(self: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters, ): cint =
  cint(fcQSslDiffieHellmanParameters_error(self.h))

proc errorString*(self: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters, ): string =
  let v_ms = fcQSslDiffieHellmanParameters_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fromEncoded*(_: type gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters, encoded: seq[byte], format: cint): gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters =
  gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters(h: fcQSslDiffieHellmanParameters_fromEncoded2(struct_miqt_string(data: cast[cstring](if len(encoded) == 0: nil else: unsafeAddr encoded[0]), len: csize_t(len(encoded))), cint(format)))

proc fromEncoded*(_: type gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters, device: gen_qiodevice_types.QIODevice, format: cint): gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters =
  gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters(h: fcQSslDiffieHellmanParameters_fromEncoded22(device.h, cint(format)))

proc create*(T: type gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters): gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters =
  gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters(h: fcQSslDiffieHellmanParameters_new())

proc create*(T: type gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters,
    other: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters): gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters =
  gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters(h: fcQSslDiffieHellmanParameters_new2(other.h))

proc delete*(self: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters) =
  fcQSslDiffieHellmanParameters_delete(self.h)
