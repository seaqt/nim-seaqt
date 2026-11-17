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


{.compile("gen_qstringconverter.cpp", QtCoreCFlags).}


import ./gen_qstringconverter_types
export gen_qstringconverter_types

import
  ./gen_qchar_types,
  ./gen_qstringconverter_base
export
  gen_qchar_types,
  gen_qstringconverter_base

type cQStringEncoder*{.exportc: "QStringEncoder", incompleteStruct.} = object
type cQStringDecoder*{.exportc: "QStringDecoder", incompleteStruct.} = object

proc fcQStringEncoder_requiredSpace(self: pointer, inputLength: int64): int64 {.importc: "QStringEncoder_requiredSpace".}
proc fcQStringEncoder_new(): ptr cQStringEncoder {.importc: "QStringEncoder_new".}
proc fcQStringEncoder_new2(encoding: cint): ptr cQStringEncoder {.importc: "QStringEncoder_new_encoding".}
proc fcQStringEncoder_new3(name: struct_seaqt_string): ptr cQStringEncoder {.importc: "QStringEncoder_new_name".}
proc fcQStringEncoder_new4(encoding: cint, flags: cint): ptr cQStringEncoder {.importc: "QStringEncoder_new_encoding_flags".}
proc fcQStringEncoder_new5(name: struct_seaqt_string, flags: cint): ptr cQStringEncoder {.importc: "QStringEncoder_new_name_flags".}
proc fcQStringDecoder_requiredSpace(self: pointer, inputLength: int64): int64 {.importc: "QStringDecoder_requiredSpace".}
proc fcQStringDecoder_appendToBuffer_QChar_QByteArrayView(self: pointer, outVal: pointer, ba: struct_seaqt_string): pointer {.importc: "QStringDecoder_appendToBuffer_QChar_QByteArrayView".}
proc fcQStringDecoder_decoderForHtml(data: struct_seaqt_string): pointer {.importc: "QStringDecoder_decoderForHtml".}
proc fcQStringDecoder_new(encoding: cint): ptr cQStringDecoder {.importc: "QStringDecoder_new_encoding".}
proc fcQStringDecoder_new2(): ptr cQStringDecoder {.importc: "QStringDecoder_new".}
proc fcQStringDecoder_new3(name: struct_seaqt_string): ptr cQStringDecoder {.importc: "QStringDecoder_new_name".}
proc fcQStringDecoder_new4(encoding: cint, flags: cint): ptr cQStringDecoder {.importc: "QStringDecoder_new_encoding_flags".}
proc fcQStringDecoder_new5(name: struct_seaqt_string, f: cint): ptr cQStringDecoder {.importc: "QStringDecoder_new_name_f".}

proc requiredSpace*(self: gen_qstringconverter_types.QStringEncoder, inputLength: int64): int64 =
  fcQStringEncoder_requiredSpace(self.h, inputLength)

proc create*(T: type gen_qstringconverter_types.QStringEncoder): gen_qstringconverter_types.QStringEncoder =
  let tmp = gen_qstringconverter_types.QStringEncoder(h: fcQStringEncoder_new(), owned: true)
  tmp
proc create*(T: type gen_qstringconverter_types.QStringEncoder,
    encoding: cint): gen_qstringconverter_types.QStringEncoder =
  let tmp = gen_qstringconverter_types.QStringEncoder(h: fcQStringEncoder_new2(cint(encoding)), owned: true)
  tmp
proc create*(T: type gen_qstringconverter_types.QStringEncoder,
    name: openArray[char]): gen_qstringconverter_types.QStringEncoder =
  let tmp = gen_qstringconverter_types.QStringEncoder(h: fcQStringEncoder_new3(struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)
  tmp
proc create*(T: type gen_qstringconverter_types.QStringEncoder,
    encoding: cint, flags: cint): gen_qstringconverter_types.QStringEncoder =
  let tmp = gen_qstringconverter_types.QStringEncoder(h: fcQStringEncoder_new4(cint(encoding), cint(flags)), owned: true)
  tmp
proc create*(T: type gen_qstringconverter_types.QStringEncoder,
    name: openArray[char], flags: cint): gen_qstringconverter_types.QStringEncoder =
  let tmp = gen_qstringconverter_types.QStringEncoder(h: fcQStringEncoder_new5(struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), cint(flags)), owned: true)
  tmp
proc requiredSpace*(self: gen_qstringconverter_types.QStringDecoder, inputLength: int64): int64 =
  fcQStringDecoder_requiredSpace(self.h, inputLength)

proc appendToBuffer*(self: gen_qstringconverter_types.QStringDecoder, outVal: gen_qchar_types.QChar, ba: openArray[byte]): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringDecoder_appendToBuffer_QChar_QByteArrayView(self.h, outVal.h, struct_seaqt_string(data: if len(ba) > 0: addr ba[0] else: nil, len: csize_t(len(ba)))), owned: false)

proc decoderForHtml*(_: type gen_qstringconverter_types.QStringDecoder, data: openArray[byte]): gen_qstringconverter_types.QStringDecoder =
  gen_qstringconverter_types.QStringDecoder(h: fcQStringDecoder_decoderForHtml(struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data)))), owned: true)

proc create*(T: type gen_qstringconverter_types.QStringDecoder,
    encoding: cint): gen_qstringconverter_types.QStringDecoder =
  let tmp = gen_qstringconverter_types.QStringDecoder(h: fcQStringDecoder_new(cint(encoding)), owned: true)
  tmp
proc create*(T: type gen_qstringconverter_types.QStringDecoder): gen_qstringconverter_types.QStringDecoder =
  let tmp = gen_qstringconverter_types.QStringDecoder(h: fcQStringDecoder_new2(), owned: true)
  tmp
proc create*(T: type gen_qstringconverter_types.QStringDecoder,
    name: openArray[char]): gen_qstringconverter_types.QStringDecoder =
  let tmp = gen_qstringconverter_types.QStringDecoder(h: fcQStringDecoder_new3(struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)
  tmp
proc create*(T: type gen_qstringconverter_types.QStringDecoder,
    encoding: cint, flags: cint): gen_qstringconverter_types.QStringDecoder =
  let tmp = gen_qstringconverter_types.QStringDecoder(h: fcQStringDecoder_new4(cint(encoding), cint(flags)), owned: true)
  tmp
proc create*(T: type gen_qstringconverter_types.QStringDecoder,
    name: openArray[char], f: cint): gen_qstringconverter_types.QStringDecoder =
  let tmp = gen_qstringconverter_types.QStringDecoder(h: fcQStringDecoder_new5(struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), cint(f)), owned: true)
  tmp
