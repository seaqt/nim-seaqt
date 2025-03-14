import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
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
proc fcQStringEncoder_new2(encoding: cint): ptr cQStringEncoder {.importc: "QStringEncoder_new2".}
proc fcQStringEncoder_new3(name: cstring): ptr cQStringEncoder {.importc: "QStringEncoder_new3".}
proc fcQStringEncoder_new4(encoding: cint, flags: cint): ptr cQStringEncoder {.importc: "QStringEncoder_new4".}
proc fcQStringEncoder_new5(name: cstring, flags: cint): ptr cQStringEncoder {.importc: "QStringEncoder_new5".}
proc fcQStringDecoder_requiredSpace(self: pointer, inputLength: int64): int64 {.importc: "QStringDecoder_requiredSpace".}
proc fcQStringDecoder_appendToBuffer(self: pointer, outVal: pointer, ba: struct_miqt_string): pointer {.importc: "QStringDecoder_appendToBuffer".}
proc fcQStringDecoder_decoderForHtml(data: struct_miqt_string): pointer {.importc: "QStringDecoder_decoderForHtml".}
proc fcQStringDecoder_new(encoding: cint): ptr cQStringDecoder {.importc: "QStringDecoder_new".}
proc fcQStringDecoder_new2(): ptr cQStringDecoder {.importc: "QStringDecoder_new2".}
proc fcQStringDecoder_new3(name: cstring): ptr cQStringDecoder {.importc: "QStringDecoder_new3".}
proc fcQStringDecoder_new4(encoding: cint, flags: cint): ptr cQStringDecoder {.importc: "QStringDecoder_new4".}
proc fcQStringDecoder_new5(name: cstring, f: cint): ptr cQStringDecoder {.importc: "QStringDecoder_new5".}

proc requiredSpace*(self: gen_qstringconverter_types.QStringEncoder, inputLength: int64): int64 =
  fcQStringEncoder_requiredSpace(self.h, inputLength)

proc create*(T: type gen_qstringconverter_types.QStringEncoder): gen_qstringconverter_types.QStringEncoder =
  gen_qstringconverter_types.QStringEncoder(h: fcQStringEncoder_new(), owned: true)

proc create*(T: type gen_qstringconverter_types.QStringEncoder,
    encoding: cint): gen_qstringconverter_types.QStringEncoder =
  gen_qstringconverter_types.QStringEncoder(h: fcQStringEncoder_new2(cint(encoding)), owned: true)

proc create*(T: type gen_qstringconverter_types.QStringEncoder,
    name: cstring): gen_qstringconverter_types.QStringEncoder =
  gen_qstringconverter_types.QStringEncoder(h: fcQStringEncoder_new3(name), owned: true)

proc create*(T: type gen_qstringconverter_types.QStringEncoder,
    encoding: cint, flags: cint): gen_qstringconverter_types.QStringEncoder =
  gen_qstringconverter_types.QStringEncoder(h: fcQStringEncoder_new4(cint(encoding), cint(flags)), owned: true)

proc create*(T: type gen_qstringconverter_types.QStringEncoder,
    name: cstring, flags: cint): gen_qstringconverter_types.QStringEncoder =
  gen_qstringconverter_types.QStringEncoder(h: fcQStringEncoder_new5(name, cint(flags)), owned: true)

proc requiredSpace*(self: gen_qstringconverter_types.QStringDecoder, inputLength: int64): int64 =
  fcQStringDecoder_requiredSpace(self.h, inputLength)

proc appendToBuffer*(self: gen_qstringconverter_types.QStringDecoder, outVal: gen_qchar_types.QChar, ba: openArray[byte]): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQStringDecoder_appendToBuffer(self.h, outVal.h, struct_miqt_string(data: cast[cstring](if len(ba) == 0: nil else: unsafeAddr ba[0]), len: csize_t(len(ba)))), owned: false)

proc decoderForHtml*(_: type gen_qstringconverter_types.QStringDecoder, data: openArray[byte]): gen_qstringconverter_types.QStringDecoder =
  gen_qstringconverter_types.QStringDecoder(h: fcQStringDecoder_decoderForHtml(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))), owned: true)

proc create*(T: type gen_qstringconverter_types.QStringDecoder,
    encoding: cint): gen_qstringconverter_types.QStringDecoder =
  gen_qstringconverter_types.QStringDecoder(h: fcQStringDecoder_new(cint(encoding)), owned: true)

proc create*(T: type gen_qstringconverter_types.QStringDecoder): gen_qstringconverter_types.QStringDecoder =
  gen_qstringconverter_types.QStringDecoder(h: fcQStringDecoder_new2(), owned: true)

proc create*(T: type gen_qstringconverter_types.QStringDecoder,
    name: cstring): gen_qstringconverter_types.QStringDecoder =
  gen_qstringconverter_types.QStringDecoder(h: fcQStringDecoder_new3(name), owned: true)

proc create*(T: type gen_qstringconverter_types.QStringDecoder,
    encoding: cint, flags: cint): gen_qstringconverter_types.QStringDecoder =
  gen_qstringconverter_types.QStringDecoder(h: fcQStringDecoder_new4(cint(encoding), cint(flags)), owned: true)

proc create*(T: type gen_qstringconverter_types.QStringDecoder,
    name: cstring, f: cint): gen_qstringconverter_types.QStringDecoder =
  gen_qstringconverter_types.QStringDecoder(h: fcQStringDecoder_new5(name, cint(f)), owned: true)

