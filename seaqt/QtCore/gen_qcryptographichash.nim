import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qcryptographichash.cpp", cflags).}


type QCryptographicHashAlgorithmEnum* = distinct cint
template Md4*(_: type QCryptographicHashAlgorithmEnum): untyped = 0
template Md5*(_: type QCryptographicHashAlgorithmEnum): untyped = 1
template Sha1*(_: type QCryptographicHashAlgorithmEnum): untyped = 2
template Sha224*(_: type QCryptographicHashAlgorithmEnum): untyped = 3
template Sha256*(_: type QCryptographicHashAlgorithmEnum): untyped = 4
template Sha384*(_: type QCryptographicHashAlgorithmEnum): untyped = 5
template Sha512*(_: type QCryptographicHashAlgorithmEnum): untyped = 6
template Keccak_224*(_: type QCryptographicHashAlgorithmEnum): untyped = 7
template Keccak_256*(_: type QCryptographicHashAlgorithmEnum): untyped = 8
template Keccak_384*(_: type QCryptographicHashAlgorithmEnum): untyped = 9
template Keccak_512*(_: type QCryptographicHashAlgorithmEnum): untyped = 10
template RealSha3_224*(_: type QCryptographicHashAlgorithmEnum): untyped = 11
template RealSha3_256*(_: type QCryptographicHashAlgorithmEnum): untyped = 12
template RealSha3_384*(_: type QCryptographicHashAlgorithmEnum): untyped = 13
template RealSha3_512*(_: type QCryptographicHashAlgorithmEnum): untyped = 14
template Sha3_224*(_: type QCryptographicHashAlgorithmEnum): untyped = 11
template Sha3_256*(_: type QCryptographicHashAlgorithmEnum): untyped = 12
template Sha3_384*(_: type QCryptographicHashAlgorithmEnum): untyped = 13
template Sha3_512*(_: type QCryptographicHashAlgorithmEnum): untyped = 14


import ./gen_qcryptographichash_types
export gen_qcryptographichash_types

import
  ./gen_qiodevice_types
export
  gen_qiodevice_types

type cQCryptographicHash*{.exportc: "QCryptographicHash", incompleteStruct.} = object

proc fcQCryptographicHash_new(methodVal: cint): ptr cQCryptographicHash {.importc: "QCryptographicHash_new".}
proc fcQCryptographicHash_reset(self: pointer, ): void {.importc: "QCryptographicHash_reset".}
proc fcQCryptographicHash_addData(self: pointer, data: cstring, length: cint): void {.importc: "QCryptographicHash_addData".}
proc fcQCryptographicHash_addDataWithData(self: pointer, data: struct_miqt_string): void {.importc: "QCryptographicHash_addDataWithData".}
proc fcQCryptographicHash_addDataWithDevice(self: pointer, device: pointer): bool {.importc: "QCryptographicHash_addDataWithDevice".}
proc fcQCryptographicHash_resultX(self: pointer, ): struct_miqt_string {.importc: "QCryptographicHash_result".}
proc fcQCryptographicHash_hash(data: struct_miqt_string, methodVal: cint): struct_miqt_string {.importc: "QCryptographicHash_hash".}
proc fcQCryptographicHash_hashLength(methodVal: cint): cint {.importc: "QCryptographicHash_hashLength".}
proc fcQCryptographicHash_delete(self: pointer) {.importc: "QCryptographicHash_delete".}


func init*(T: type gen_qcryptographichash_types.QCryptographicHash, h: ptr cQCryptographicHash): gen_qcryptographichash_types.QCryptographicHash =
  T(h: h)
proc create*(T: type gen_qcryptographichash_types.QCryptographicHash, methodVal: cint): gen_qcryptographichash_types.QCryptographicHash =
  gen_qcryptographichash_types.QCryptographicHash.init(fcQCryptographicHash_new(cint(methodVal)))

proc reset*(self: gen_qcryptographichash_types.QCryptographicHash, ): void =
  fcQCryptographicHash_reset(self.h)

proc addData*(self: gen_qcryptographichash_types.QCryptographicHash, data: cstring, length: cint): void =
  fcQCryptographicHash_addData(self.h, data, length)

proc addData*(self: gen_qcryptographichash_types.QCryptographicHash, data: seq[byte]): void =
  fcQCryptographicHash_addDataWithData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc addData*(self: gen_qcryptographichash_types.QCryptographicHash, device: gen_qiodevice_types.QIODevice): bool =
  fcQCryptographicHash_addDataWithDevice(self.h, device.h)

proc resultX*(self: gen_qcryptographichash_types.QCryptographicHash, ): seq[byte] =
  var v_bytearray = fcQCryptographicHash_resultX(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc hash*(_: type gen_qcryptographichash_types.QCryptographicHash, data: seq[byte], methodVal: cint): seq[byte] =
  var v_bytearray = fcQCryptographicHash_hash(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), cint(methodVal))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc hashLength*(_: type gen_qcryptographichash_types.QCryptographicHash, methodVal: cint): cint =
  fcQCryptographicHash_hashLength(cint(methodVal))

proc delete*(self: gen_qcryptographichash_types.QCryptographicHash) =
  fcQCryptographicHash_delete(self.h)
