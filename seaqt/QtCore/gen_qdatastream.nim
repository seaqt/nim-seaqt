import ./Qt5Core_libs

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


type QDataStreamVersionEnum* = distinct cint
template Qt_1_0*(_: type QDataStreamVersionEnum): untyped = 1
template Qt_2_0*(_: type QDataStreamVersionEnum): untyped = 2
template Qt_2_1*(_: type QDataStreamVersionEnum): untyped = 3
template Qt_3_0*(_: type QDataStreamVersionEnum): untyped = 4
template Qt_3_1*(_: type QDataStreamVersionEnum): untyped = 5
template Qt_3_3*(_: type QDataStreamVersionEnum): untyped = 6
template Qt_4_0*(_: type QDataStreamVersionEnum): untyped = 7
template Qt_4_1*(_: type QDataStreamVersionEnum): untyped = 7
template Qt_4_2*(_: type QDataStreamVersionEnum): untyped = 8
template Qt_4_3*(_: type QDataStreamVersionEnum): untyped = 9
template Qt_4_4*(_: type QDataStreamVersionEnum): untyped = 10
template Qt_4_5*(_: type QDataStreamVersionEnum): untyped = 11
template Qt_4_6*(_: type QDataStreamVersionEnum): untyped = 12
template Qt_4_7*(_: type QDataStreamVersionEnum): untyped = 12
template Qt_4_8*(_: type QDataStreamVersionEnum): untyped = 12
template Qt_4_9*(_: type QDataStreamVersionEnum): untyped = 12
template Qt_5_0*(_: type QDataStreamVersionEnum): untyped = 13
template Qt_5_1*(_: type QDataStreamVersionEnum): untyped = 14
template Qt_5_2*(_: type QDataStreamVersionEnum): untyped = 15
template Qt_5_3*(_: type QDataStreamVersionEnum): untyped = 15
template Qt_5_4*(_: type QDataStreamVersionEnum): untyped = 16
template Qt_5_5*(_: type QDataStreamVersionEnum): untyped = 16
template Qt_5_6*(_: type QDataStreamVersionEnum): untyped = 17
template Qt_5_7*(_: type QDataStreamVersionEnum): untyped = 17
template Qt_5_8*(_: type QDataStreamVersionEnum): untyped = 17
template Qt_5_9*(_: type QDataStreamVersionEnum): untyped = 17
template Qt_5_10*(_: type QDataStreamVersionEnum): untyped = 17
template Qt_5_11*(_: type QDataStreamVersionEnum): untyped = 17
template Qt_5_12*(_: type QDataStreamVersionEnum): untyped = 18
template Qt_5_13*(_: type QDataStreamVersionEnum): untyped = 19
template Qt_5_14*(_: type QDataStreamVersionEnum): untyped = 19
template Qt_5_15*(_: type QDataStreamVersionEnum): untyped = 19
template Qt_DefaultCompiledVersion*(_: type QDataStreamVersionEnum): untyped = 19


type QDataStreamByteOrderEnum* = distinct cint
template BigEndian*(_: type QDataStreamByteOrderEnum): untyped = 0
template LittleEndian*(_: type QDataStreamByteOrderEnum): untyped = 1


type QDataStreamStatusEnum* = distinct cint
template Ok*(_: type QDataStreamStatusEnum): untyped = 0
template ReadPastEnd*(_: type QDataStreamStatusEnum): untyped = 1
template ReadCorruptData*(_: type QDataStreamStatusEnum): untyped = 2
template WriteFailed*(_: type QDataStreamStatusEnum): untyped = 3


type QDataStreamFloatingPointPrecisionEnum* = distinct cint
template SinglePrecision*(_: type QDataStreamFloatingPointPrecisionEnum): untyped = 0
template DoublePrecision*(_: type QDataStreamFloatingPointPrecisionEnum): untyped = 1


import ./gen_qdatastream_types
export gen_qdatastream_types

import
  ./gen_qiodevice_types
export
  gen_qiodevice_types

type cQDataStream*{.exportc: "QDataStream", incompleteStruct.} = object

proc fcQDataStream_device(self: pointer): pointer {.importc: "QDataStream_device".}
proc fcQDataStream_setDevice(self: pointer, device: pointer): void {.importc: "QDataStream_setDevice".}
proc fcQDataStream_unsetDevice(self: pointer): void {.importc: "QDataStream_unsetDevice".}
proc fcQDataStream_atEnd(self: pointer): bool {.importc: "QDataStream_atEnd".}
proc fcQDataStream_status(self: pointer): cint {.importc: "QDataStream_status".}
proc fcQDataStream_setStatus(self: pointer, status: cint): void {.importc: "QDataStream_setStatus".}
proc fcQDataStream_resetStatus(self: pointer): void {.importc: "QDataStream_resetStatus".}
proc fcQDataStream_floatingPointPrecision(self: pointer): cint {.importc: "QDataStream_floatingPointPrecision".}
proc fcQDataStream_setFloatingPointPrecision(self: pointer, precision: cint): void {.importc: "QDataStream_setFloatingPointPrecision".}
proc fcQDataStream_byteOrder(self: pointer): cint {.importc: "QDataStream_byteOrder".}
proc fcQDataStream_setByteOrder(self: pointer, byteOrder: cint): void {.importc: "QDataStream_setByteOrder".}
proc fcQDataStream_version(self: pointer): cint {.importc: "QDataStream_version".}
proc fcQDataStream_setVersion(self: pointer, version: cint): void {.importc: "QDataStream_setVersion".}
proc fcQDataStream_operatorShiftRight(self: pointer, i: ptr cschar): void {.importc: "QDataStream_operatorShiftRight".}
proc fcQDataStream_operatorShiftRightWithQuint8(self: pointer, i: ptr uint8): void {.importc: "QDataStream_operatorShiftRightWithQuint8".}
proc fcQDataStream_operatorShiftRightWithQint16(self: pointer, i: ptr cshort): void {.importc: "QDataStream_operatorShiftRightWithQint16".}
proc fcQDataStream_operatorShiftRightWithQuint16(self: pointer, i: ptr cushort): void {.importc: "QDataStream_operatorShiftRightWithQuint16".}
proc fcQDataStream_operatorShiftRightWithQint32(self: pointer, i: ptr cint): void {.importc: "QDataStream_operatorShiftRightWithQint32".}
proc fcQDataStream_operatorShiftRightWithQuint32(self: pointer, i: ptr cuint): void {.importc: "QDataStream_operatorShiftRightWithQuint32".}
proc fcQDataStream_operatorShiftRightWithQint64(self: pointer, i: ptr clonglong): void {.importc: "QDataStream_operatorShiftRightWithQint64".}
proc fcQDataStream_operatorShiftRightWithQuint64(self: pointer, i: ptr culonglong): void {.importc: "QDataStream_operatorShiftRightWithQuint64".}
proc fcQDataStream_operatorShiftRightWithBool(self: pointer, i: ptr bool): void {.importc: "QDataStream_operatorShiftRightWithBool".}
proc fcQDataStream_operatorShiftRightWithFloat(self: pointer, f: ptr float32): void {.importc: "QDataStream_operatorShiftRightWithFloat".}
proc fcQDataStream_operatorShiftRightWithDouble(self: pointer, f: ptr float64): void {.importc: "QDataStream_operatorShiftRightWithDouble".}
proc fcQDataStream_operatorShiftRightWithStr(self: pointer, str: cstring): void {.importc: "QDataStream_operatorShiftRightWithStr".}
proc fcQDataStream_operatorShiftLeft(self: pointer, i: cschar): void {.importc: "QDataStream_operatorShiftLeft".}
proc fcQDataStream_operatorShiftLeftWithQuint8(self: pointer, i: uint8): void {.importc: "QDataStream_operatorShiftLeftWithQuint8".}
proc fcQDataStream_operatorShiftLeftWithQint16(self: pointer, i: cshort): void {.importc: "QDataStream_operatorShiftLeftWithQint16".}
proc fcQDataStream_operatorShiftLeftWithQuint16(self: pointer, i: cushort): void {.importc: "QDataStream_operatorShiftLeftWithQuint16".}
proc fcQDataStream_operatorShiftLeftWithQint32(self: pointer, i: cint): void {.importc: "QDataStream_operatorShiftLeftWithQint32".}
proc fcQDataStream_operatorShiftLeftWithQuint32(self: pointer, i: cuint): void {.importc: "QDataStream_operatorShiftLeftWithQuint32".}
proc fcQDataStream_operatorShiftLeftWithQint64(self: pointer, i: clonglong): void {.importc: "QDataStream_operatorShiftLeftWithQint64".}
proc fcQDataStream_operatorShiftLeftWithQuint64(self: pointer, i: culonglong): void {.importc: "QDataStream_operatorShiftLeftWithQuint64".}
proc fcQDataStream_operatorShiftLeftWithBool(self: pointer, i: bool): void {.importc: "QDataStream_operatorShiftLeftWithBool".}
proc fcQDataStream_operatorShiftLeftWithFloat(self: pointer, f: float32): void {.importc: "QDataStream_operatorShiftLeftWithFloat".}
proc fcQDataStream_operatorShiftLeftWithDouble(self: pointer, f: float64): void {.importc: "QDataStream_operatorShiftLeftWithDouble".}
proc fcQDataStream_operatorShiftLeftWithStr(self: pointer, str: cstring): void {.importc: "QDataStream_operatorShiftLeftWithStr".}
proc fcQDataStream_readBytes(self: pointer, param1: cstring, len: ptr cuint): pointer {.importc: "QDataStream_readBytes".}
proc fcQDataStream_readRawData(self: pointer, param1: cstring, len: cint): cint {.importc: "QDataStream_readRawData".}
proc fcQDataStream_writeBytes(self: pointer, param1: cstring, len: cuint): void {.importc: "QDataStream_writeBytes".}
proc fcQDataStream_writeRawData(self: pointer, param1: cstring, len: cint): cint {.importc: "QDataStream_writeRawData".}
proc fcQDataStream_skipRawData(self: pointer, len: cint): cint {.importc: "QDataStream_skipRawData".}
proc fcQDataStream_startTransaction(self: pointer): void {.importc: "QDataStream_startTransaction".}
proc fcQDataStream_commitTransaction(self: pointer): bool {.importc: "QDataStream_commitTransaction".}
proc fcQDataStream_rollbackTransaction(self: pointer): void {.importc: "QDataStream_rollbackTransaction".}
proc fcQDataStream_abortTransaction(self: pointer): void {.importc: "QDataStream_abortTransaction".}
proc fcQDataStream_new(): ptr cQDataStream {.importc: "QDataStream_new".}
proc fcQDataStream_new2(param1: pointer): ptr cQDataStream {.importc: "QDataStream_new2".}
proc fcQDataStream_new3(param1: struct_miqt_string): ptr cQDataStream {.importc: "QDataStream_new3".}

proc device*(self: gen_qdatastream_types.QDataStream): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQDataStream_device(self.h), owned: false)

proc setDevice*(self: gen_qdatastream_types.QDataStream, device: gen_qiodevice_types.QIODevice): void =
  fcQDataStream_setDevice(self.h, device.h)

proc unsetDevice*(self: gen_qdatastream_types.QDataStream): void =
  fcQDataStream_unsetDevice(self.h)

proc atEnd*(self: gen_qdatastream_types.QDataStream): bool =
  fcQDataStream_atEnd(self.h)

proc status*(self: gen_qdatastream_types.QDataStream): cint =
  cint(fcQDataStream_status(self.h))

proc setStatus*(self: gen_qdatastream_types.QDataStream, status: cint): void =
  fcQDataStream_setStatus(self.h, cint(status))

proc resetStatus*(self: gen_qdatastream_types.QDataStream): void =
  fcQDataStream_resetStatus(self.h)

proc floatingPointPrecision*(self: gen_qdatastream_types.QDataStream): cint =
  cint(fcQDataStream_floatingPointPrecision(self.h))

proc setFloatingPointPrecision*(self: gen_qdatastream_types.QDataStream, precision: cint): void =
  fcQDataStream_setFloatingPointPrecision(self.h, cint(precision))

proc byteOrder*(self: gen_qdatastream_types.QDataStream): cint =
  cint(fcQDataStream_byteOrder(self.h))

proc setByteOrder*(self: gen_qdatastream_types.QDataStream, byteOrder: cint): void =
  fcQDataStream_setByteOrder(self.h, cint(byteOrder))

proc version*(self: gen_qdatastream_types.QDataStream): cint =
  fcQDataStream_version(self.h)

proc setVersion*(self: gen_qdatastream_types.QDataStream, version: cint): void =
  fcQDataStream_setVersion(self.h, version)

proc operatorShiftRight*(self: gen_qdatastream_types.QDataStream, i: ptr cschar): void =
  fcQDataStream_operatorShiftRight(self.h, i)

proc operatorShiftRight*(self: gen_qdatastream_types.QDataStream, i: ptr uint8): void =
  fcQDataStream_operatorShiftRightWithQuint8(self.h, i)

proc operatorShiftRight*(self: gen_qdatastream_types.QDataStream, i: ptr cshort): void =
  fcQDataStream_operatorShiftRightWithQint16(self.h, i)

proc operatorShiftRight*(self: gen_qdatastream_types.QDataStream, i: ptr cushort): void =
  fcQDataStream_operatorShiftRightWithQuint16(self.h, i)

proc operatorShiftRight*(self: gen_qdatastream_types.QDataStream, i: ptr cint): void =
  fcQDataStream_operatorShiftRightWithQint32(self.h, i)

proc operatorShiftRight*(self: gen_qdatastream_types.QDataStream, i: ptr cuint): void =
  fcQDataStream_operatorShiftRightWithQuint32(self.h, i)

proc operatorShiftRight*(self: gen_qdatastream_types.QDataStream, i: ptr clonglong): void =
  fcQDataStream_operatorShiftRightWithQint64(self.h, i)

proc operatorShiftRight*(self: gen_qdatastream_types.QDataStream, i: ptr culonglong): void =
  fcQDataStream_operatorShiftRightWithQuint64(self.h, i)

proc operatorShiftRight*(self: gen_qdatastream_types.QDataStream, i: ptr bool): void =
  fcQDataStream_operatorShiftRightWithBool(self.h, i)

proc operatorShiftRight*(self: gen_qdatastream_types.QDataStream, f: ptr float32): void =
  fcQDataStream_operatorShiftRightWithFloat(self.h, f)

proc operatorShiftRight*(self: gen_qdatastream_types.QDataStream, f: ptr float64): void =
  fcQDataStream_operatorShiftRightWithDouble(self.h, f)

proc operatorShiftRight*(self: gen_qdatastream_types.QDataStream, str: cstring): void =
  fcQDataStream_operatorShiftRightWithStr(self.h, str)

proc operatorShiftLeft*(self: gen_qdatastream_types.QDataStream, i: cschar): void =
  fcQDataStream_operatorShiftLeft(self.h, i)

proc operatorShiftLeft*(self: gen_qdatastream_types.QDataStream, i: uint8): void =
  fcQDataStream_operatorShiftLeftWithQuint8(self.h, i)

proc operatorShiftLeft*(self: gen_qdatastream_types.QDataStream, i: cshort): void =
  fcQDataStream_operatorShiftLeftWithQint16(self.h, i)

proc operatorShiftLeft*(self: gen_qdatastream_types.QDataStream, i: cushort): void =
  fcQDataStream_operatorShiftLeftWithQuint16(self.h, i)

proc operatorShiftLeft*(self: gen_qdatastream_types.QDataStream, i: cint): void =
  fcQDataStream_operatorShiftLeftWithQint32(self.h, i)

proc operatorShiftLeft*(self: gen_qdatastream_types.QDataStream, i: cuint): void =
  fcQDataStream_operatorShiftLeftWithQuint32(self.h, i)

proc operatorShiftLeft*(self: gen_qdatastream_types.QDataStream, i: clonglong): void =
  fcQDataStream_operatorShiftLeftWithQint64(self.h, i)

proc operatorShiftLeft*(self: gen_qdatastream_types.QDataStream, i: culonglong): void =
  fcQDataStream_operatorShiftLeftWithQuint64(self.h, i)

proc operatorShiftLeft*(self: gen_qdatastream_types.QDataStream, i: bool): void =
  fcQDataStream_operatorShiftLeftWithBool(self.h, i)

proc operatorShiftLeft*(self: gen_qdatastream_types.QDataStream, f: float32): void =
  fcQDataStream_operatorShiftLeftWithFloat(self.h, f)

proc operatorShiftLeft*(self: gen_qdatastream_types.QDataStream, f: float64): void =
  fcQDataStream_operatorShiftLeftWithDouble(self.h, f)

proc operatorShiftLeft*(self: gen_qdatastream_types.QDataStream, str: cstring): void =
  fcQDataStream_operatorShiftLeftWithStr(self.h, str)

proc readBytes*(self: gen_qdatastream_types.QDataStream, param1: cstring, len: ptr cuint): gen_qdatastream_types.QDataStream =
  gen_qdatastream_types.QDataStream(h: fcQDataStream_readBytes(self.h, param1, len), owned: false)

proc readRawData*(self: gen_qdatastream_types.QDataStream, param1: cstring, len: cint): cint =
  fcQDataStream_readRawData(self.h, param1, len)

proc writeBytes*(self: gen_qdatastream_types.QDataStream, param1: cstring, len: cuint): void =
  fcQDataStream_writeBytes(self.h, param1, len)

proc writeRawData*(self: gen_qdatastream_types.QDataStream, param1: cstring, len: cint): cint =
  fcQDataStream_writeRawData(self.h, param1, len)

proc skipRawData*(self: gen_qdatastream_types.QDataStream, len: cint): cint =
  fcQDataStream_skipRawData(self.h, len)

proc startTransaction*(self: gen_qdatastream_types.QDataStream): void =
  fcQDataStream_startTransaction(self.h)

proc commitTransaction*(self: gen_qdatastream_types.QDataStream): bool =
  fcQDataStream_commitTransaction(self.h)

proc rollbackTransaction*(self: gen_qdatastream_types.QDataStream): void =
  fcQDataStream_rollbackTransaction(self.h)

proc abortTransaction*(self: gen_qdatastream_types.QDataStream): void =
  fcQDataStream_abortTransaction(self.h)

proc create*(T: type gen_qdatastream_types.QDataStream): gen_qdatastream_types.QDataStream =
  gen_qdatastream_types.QDataStream(h: fcQDataStream_new(), owned: true)

proc create*(T: type gen_qdatastream_types.QDataStream,
    param1: gen_qiodevice_types.QIODevice): gen_qdatastream_types.QDataStream =
  gen_qdatastream_types.QDataStream(h: fcQDataStream_new2(param1.h), owned: true)

proc create*(T: type gen_qdatastream_types.QDataStream,
    param1: seq[byte]): gen_qdatastream_types.QDataStream =
  gen_qdatastream_types.QDataStream(h: fcQDataStream_new3(struct_miqt_string(data: cast[cstring](if len(param1) == 0: nil else: unsafeAddr param1[0]), len: csize_t(len(param1)))), owned: true)

