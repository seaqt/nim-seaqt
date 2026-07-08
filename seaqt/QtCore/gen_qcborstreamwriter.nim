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


import ./gen_qcborstreamwriter_types
export gen_qcborstreamwriter_types

import
  ./gen_qiodevice_types
export
  gen_qiodevice_types

type cQCborStreamWriter*{.exportc: "QCborStreamWriter", incompleteStruct.} = object

proc fcQCborStreamWriter_setDevice(self: pointer, device: pointer): void {.importc: "QCborStreamWriter_setDevice".}
proc fcQCborStreamWriter_device(self: pointer): pointer {.importc: "QCborStreamWriter_device".}
proc fcQCborStreamWriter_appendQuint64(self: pointer, u: culonglong): void {.importc: "QCborStreamWriter_append_quint64".}
proc fcQCborStreamWriter_appendQint64(self: pointer, i: clonglong): void {.importc: "QCborStreamWriter_append_qint64".}
proc fcQCborStreamWriter_append_QCborNegativeInteger(self: pointer, n: cint): void {.importc: "QCborStreamWriter_append_QCborNegativeInteger".}
proc fcQCborStreamWriter_append_QByteArrayView(self: pointer, ba: struct_seaqt_string): void {.importc: "QCborStreamWriter_append_QByteArrayView".}
proc fcQCborStreamWriter_append_QCborTag(self: pointer, tag: cint): void {.importc: "QCborStreamWriter_append_QCborTag".}
proc fcQCborStreamWriter_append_QCborKnownTags(self: pointer, tag: cint): void {.importc: "QCborStreamWriter_append_QCborKnownTags".}
proc fcQCborStreamWriter_append_QCborSimpleType(self: pointer, st: cint): void {.importc: "QCborStreamWriter_append_QCborSimpleType".}
proc fcQCborStreamWriter_appendFloat(self: pointer, f: float32): void {.importc: "QCborStreamWriter_append_float".}
proc fcQCborStreamWriter_appendDouble(self: pointer, d: float64): void {.importc: "QCborStreamWriter_append_double".}
proc fcQCborStreamWriter_appendByteString(self: pointer, data: cstring, len: int64): void {.importc: "QCborStreamWriter_appendByteString".}
proc fcQCborStreamWriter_appendTextString(self: pointer, utf8: cstring, len: int64): void {.importc: "QCborStreamWriter_appendTextString".}
proc fcQCborStreamWriter_appendBool(self: pointer, b: bool): void {.importc: "QCborStreamWriter_append_bool".}
proc fcQCborStreamWriter_appendNull(self: pointer): void {.importc: "QCborStreamWriter_appendNull".}
proc fcQCborStreamWriter_appendUndefined(self: pointer): void {.importc: "QCborStreamWriter_appendUndefined".}
proc fcQCborStreamWriter_appendInt(self: pointer, i: cint): void {.importc: "QCborStreamWriter_append_int".}
proc fcQCborStreamWriter_appendUint(self: pointer, u: cuint): void {.importc: "QCborStreamWriter_append_uint".}
proc fcQCborStreamWriter_appendChar(self: pointer, str: cstring): void {.importc: "QCborStreamWriter_append_char".}
proc fcQCborStreamWriter_startArray(self: pointer): void {.importc: "QCborStreamWriter_startArray".}
proc fcQCborStreamWriter_startArrayCount(self: pointer, count: culonglong): void {.importc: "QCborStreamWriter_startArray_count".}
proc fcQCborStreamWriter_endArray(self: pointer): bool {.importc: "QCborStreamWriter_endArray".}
proc fcQCborStreamWriter_startMap(self: pointer): void {.importc: "QCborStreamWriter_startMap".}
proc fcQCborStreamWriter_startMapCount(self: pointer, count: culonglong): void {.importc: "QCborStreamWriter_startMap_count".}
proc fcQCborStreamWriter_endMap(self: pointer): bool {.importc: "QCborStreamWriter_endMap".}
proc fcQCborStreamWriter_appendCharQsizetype(self: pointer, str: cstring, size: int64): void {.importc: "QCborStreamWriter_append_char_qsizetype".}
proc fcQCborStreamWriter_new(device: pointer): ptr cQCborStreamWriter {.importc: "QCborStreamWriter_new_device".}

proc setDevice*(self: gen_qcborstreamwriter_types.QCborStreamWriter, device: gen_qiodevice_types.QIODevice): void =
  fcQCborStreamWriter_setDevice(self.h, device.h)

proc device*(self: gen_qcborstreamwriter_types.QCborStreamWriter): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQCborStreamWriter_device(self.h), owned: false)

proc append*(self: gen_qcborstreamwriter_types.QCborStreamWriter, u: culonglong): void =
  fcQCborStreamWriter_appendQuint64(self.h, u)

proc append*(self: gen_qcborstreamwriter_types.QCborStreamWriter, i: clonglong): void =
  fcQCborStreamWriter_appendQint64(self.h, i)

proc append*(self: gen_qcborstreamwriter_types.QCborStreamWriter, n: cint): void =
  fcQCborStreamWriter_append_QCborNegativeInteger(self.h, cint(n))

proc append*(self: gen_qcborstreamwriter_types.QCborStreamWriter, ba: openArray[byte]): void =
  fcQCborStreamWriter_append_QByteArrayView(self.h, struct_seaqt_string(data: if len(ba) > 0: addr ba[0] else: nil, len: csize_t(len(ba))))

proc append2*(self: gen_qcborstreamwriter_types.QCborStreamWriter, tag: cint): void =
  fcQCborStreamWriter_append_QCborTag(self.h, cint(tag))

proc append3*(self: gen_qcborstreamwriter_types.QCborStreamWriter, tag: cint): void =
  fcQCborStreamWriter_append_QCborKnownTags(self.h, cint(tag))

proc append4*(self: gen_qcborstreamwriter_types.QCborStreamWriter, st: cint): void =
  fcQCborStreamWriter_append_QCborSimpleType(self.h, cint(st))

proc append*(self: gen_qcborstreamwriter_types.QCborStreamWriter, f: float32): void =
  fcQCborStreamWriter_appendFloat(self.h, f)

proc append*(self: gen_qcborstreamwriter_types.QCborStreamWriter, d: float64): void =
  fcQCborStreamWriter_appendDouble(self.h, d)

proc appendByteString*(self: gen_qcborstreamwriter_types.QCborStreamWriter, data: cstring, len: int64): void =
  fcQCborStreamWriter_appendByteString(self.h, data, len)

proc appendTextString*(self: gen_qcborstreamwriter_types.QCborStreamWriter, utf8: cstring, len: int64): void =
  fcQCborStreamWriter_appendTextString(self.h, utf8, len)

proc append*(self: gen_qcborstreamwriter_types.QCborStreamWriter, b: bool): void =
  fcQCborStreamWriter_appendBool(self.h, b)

proc appendNull*(self: gen_qcborstreamwriter_types.QCborStreamWriter): void =
  fcQCborStreamWriter_appendNull(self.h)

proc appendUndefined*(self: gen_qcborstreamwriter_types.QCborStreamWriter): void =
  fcQCborStreamWriter_appendUndefined(self.h)

proc append5*(self: gen_qcborstreamwriter_types.QCborStreamWriter, i: cint): void =
  fcQCborStreamWriter_appendInt(self.h, i)

proc append*(self: gen_qcborstreamwriter_types.QCborStreamWriter, u: cuint): void =
  fcQCborStreamWriter_appendUint(self.h, u)

proc append*(self: gen_qcborstreamwriter_types.QCborStreamWriter, str: cstring): void =
  fcQCborStreamWriter_appendChar(self.h, str)

proc startArray*(self: gen_qcborstreamwriter_types.QCborStreamWriter): void =
  fcQCborStreamWriter_startArray(self.h)

proc startArray*(self: gen_qcborstreamwriter_types.QCborStreamWriter, count: culonglong): void =
  fcQCborStreamWriter_startArrayCount(self.h, count)

proc endArray*(self: gen_qcborstreamwriter_types.QCborStreamWriter): bool =
  fcQCborStreamWriter_endArray(self.h)

proc startMap*(self: gen_qcborstreamwriter_types.QCborStreamWriter): void =
  fcQCborStreamWriter_startMap(self.h)

proc startMap*(self: gen_qcborstreamwriter_types.QCborStreamWriter, count: culonglong): void =
  fcQCborStreamWriter_startMapCount(self.h, count)

proc endMap*(self: gen_qcborstreamwriter_types.QCborStreamWriter): bool =
  fcQCborStreamWriter_endMap(self.h)

proc append*(self: gen_qcborstreamwriter_types.QCborStreamWriter, str: cstring, size: int64): void =
  fcQCborStreamWriter_appendCharQsizetype(self.h, str, size)

proc create*(T: type gen_qcborstreamwriter_types.QCborStreamWriter,
    device: gen_qiodevice_types.QIODevice): gen_qcborstreamwriter_types.QCborStreamWriter =
  let tmp = gen_qcborstreamwriter_types.QCborStreamWriter(h: fcQCborStreamWriter_new(device.h), owned: true)
  tmp
