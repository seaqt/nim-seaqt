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


type QFormDataBuilderOptionEnum* = distinct cint
template Default*(_: type QFormDataBuilderOptionEnum): untyped = 0
template OmitRfc8187EncodedFilename*(_: type QFormDataBuilderOptionEnum): untyped = 1
template UseRfc7578PercentEncodedFilename*(_: type QFormDataBuilderOptionEnum): untyped = 2
template PreferLatin1EncodedFilename*(_: type QFormDataBuilderOptionEnum): untyped = 4
template StrictRfc7578*(_: type QFormDataBuilderOptionEnum): untyped = 3


import ./gen_qformdatabuilder_types
export gen_qformdatabuilder_types

import
  ../QtCore/gen_qiodevice_types,
  ./gen_qhttpheaders_types
export
  gen_qiodevice_types,
  gen_qhttpheaders_types

type cQFormDataPartBuilder*{.exportc: "QFormDataPartBuilder", incompleteStruct.} = object
type cQFormDataBuilder*{.exportc: "QFormDataBuilder", incompleteStruct.} = object

proc fcQFormDataPartBuilder_swap(self: pointer, other: pointer): void {.importc: "QFormDataPartBuilder_swap".}
proc fcQFormDataPartBuilder_setBodyData(self: pointer, data: struct_seaqt_string): pointer {.importc: "QFormDataPartBuilder_setBody_data".}
proc fcQFormDataPartBuilder_setBodyDeviceBody(self: pointer, body: pointer): pointer {.importc: "QFormDataPartBuilder_setBodyDevice_body".}
proc fcQFormDataPartBuilder_setHeaders(self: pointer, headers: pointer): pointer {.importc: "QFormDataPartBuilder_setHeaders".}
proc fcQFormDataPartBuilder_setBodyDataFileName(self: pointer, data: struct_seaqt_string, fileName: struct_seaqt_string): pointer {.importc: "QFormDataPartBuilder_setBody_data_fileName".}
proc fcQFormDataPartBuilder_setBodyDataFileNameMimeType(self: pointer, data: struct_seaqt_string, fileName: struct_seaqt_string, mimeType: struct_seaqt_string): pointer {.importc: "QFormDataPartBuilder_setBody_data_fileName_mimeType".}
proc fcQFormDataPartBuilder_setBodyDeviceBodyFileName(self: pointer, body: pointer, fileName: struct_seaqt_string): pointer {.importc: "QFormDataPartBuilder_setBodyDevice_body_fileName".}
proc fcQFormDataPartBuilder_setBodyDeviceBodyFileNameMimeType(self: pointer, body: pointer, fileName: struct_seaqt_string, mimeType: struct_seaqt_string): pointer {.importc: "QFormDataPartBuilder_setBodyDevice_body_fileName_mimeType".}
proc fcQFormDataPartBuilder_new(): ptr cQFormDataPartBuilder {.importc: "QFormDataPartBuilder_new".}
proc fcQFormDataPartBuilder_new2(fromVal: pointer): ptr cQFormDataPartBuilder {.importc: "QFormDataPartBuilder_new_from".}
proc fcQFormDataBuilder_swap(self: pointer, other: pointer): void {.importc: "QFormDataBuilder_swap".}
proc fcQFormDataBuilder_part(self: pointer, name: struct_seaqt_string): pointer {.importc: "QFormDataBuilder_part".}
proc fcQFormDataBuilder_new(): ptr cQFormDataBuilder {.importc: "QFormDataBuilder_new".}

proc swap*(self: gen_qformdatabuilder_types.QFormDataPartBuilder, other: gen_qformdatabuilder_types.QFormDataPartBuilder): void =
  fcQFormDataPartBuilder_swap(self.h, other.h)

proc setBody*(self: gen_qformdatabuilder_types.QFormDataPartBuilder, data: openArray[byte]): gen_qformdatabuilder_types.QFormDataPartBuilder =
  gen_qformdatabuilder_types.QFormDataPartBuilder(h: fcQFormDataPartBuilder_setBodyData(self.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data)))), owned: true)

proc setBodyDevice*(self: gen_qformdatabuilder_types.QFormDataPartBuilder, body: gen_qiodevice_types.QIODevice): gen_qformdatabuilder_types.QFormDataPartBuilder =
  gen_qformdatabuilder_types.QFormDataPartBuilder(h: fcQFormDataPartBuilder_setBodyDeviceBody(self.h, body.h), owned: true)

proc setHeaders*(self: gen_qformdatabuilder_types.QFormDataPartBuilder, headers: gen_qhttpheaders_types.QHttpHeaders): gen_qformdatabuilder_types.QFormDataPartBuilder =
  gen_qformdatabuilder_types.QFormDataPartBuilder(h: fcQFormDataPartBuilder_setHeaders(self.h, headers.h), owned: true)

proc setBody*(self: gen_qformdatabuilder_types.QFormDataPartBuilder, data: openArray[byte], fileName: openArray[char]): gen_qformdatabuilder_types.QFormDataPartBuilder =
  gen_qformdatabuilder_types.QFormDataPartBuilder(h: fcQFormDataPartBuilder_setBodyDataFileName(self.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data))), struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName)))), owned: true)

proc setBody*(self: gen_qformdatabuilder_types.QFormDataPartBuilder, data: openArray[byte], fileName: openArray[char], mimeType: openArray[char]): gen_qformdatabuilder_types.QFormDataPartBuilder =
  gen_qformdatabuilder_types.QFormDataPartBuilder(h: fcQFormDataPartBuilder_setBodyDataFileNameMimeType(self.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data))), struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_seaqt_string(data: if len(mimeType) > 0: addr mimeType[0] else: nil, len: csize_t(len(mimeType)))), owned: true)

proc setBodyDevice*(self: gen_qformdatabuilder_types.QFormDataPartBuilder, body: gen_qiodevice_types.QIODevice, fileName: openArray[char]): gen_qformdatabuilder_types.QFormDataPartBuilder =
  gen_qformdatabuilder_types.QFormDataPartBuilder(h: fcQFormDataPartBuilder_setBodyDeviceBodyFileName(self.h, body.h, struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName)))), owned: true)

proc setBodyDevice*(self: gen_qformdatabuilder_types.QFormDataPartBuilder, body: gen_qiodevice_types.QIODevice, fileName: openArray[char], mimeType: openArray[char]): gen_qformdatabuilder_types.QFormDataPartBuilder =
  gen_qformdatabuilder_types.QFormDataPartBuilder(h: fcQFormDataPartBuilder_setBodyDeviceBodyFileNameMimeType(self.h, body.h, struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_seaqt_string(data: if len(mimeType) > 0: addr mimeType[0] else: nil, len: csize_t(len(mimeType)))), owned: true)

proc create*(T: type gen_qformdatabuilder_types.QFormDataPartBuilder): gen_qformdatabuilder_types.QFormDataPartBuilder =
  let tmp = gen_qformdatabuilder_types.QFormDataPartBuilder(h: fcQFormDataPartBuilder_new(), owned: true)
  tmp
proc create*(T: type gen_qformdatabuilder_types.QFormDataPartBuilder,
    fromVal: gen_qformdatabuilder_types.QFormDataPartBuilder): gen_qformdatabuilder_types.QFormDataPartBuilder =
  let tmp = gen_qformdatabuilder_types.QFormDataPartBuilder(h: fcQFormDataPartBuilder_new2(fromVal.h), owned: true)
  tmp
proc swap*(self: gen_qformdatabuilder_types.QFormDataBuilder, other: gen_qformdatabuilder_types.QFormDataBuilder): void =
  fcQFormDataBuilder_swap(self.h, other.h)

proc part*(self: gen_qformdatabuilder_types.QFormDataBuilder, name: openArray[char]): gen_qformdatabuilder_types.QFormDataPartBuilder =
  gen_qformdatabuilder_types.QFormDataPartBuilder(h: fcQFormDataBuilder_part(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc create*(T: type gen_qformdatabuilder_types.QFormDataBuilder): gen_qformdatabuilder_types.QFormDataBuilder =
  let tmp = gen_qformdatabuilder_types.QFormDataBuilder(h: fcQFormDataBuilder_new(), owned: true)
  tmp
