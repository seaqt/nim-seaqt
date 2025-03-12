import ./Qt5Multimedia_libs

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


import ./gen_qaudiobuffer_types
export gen_qaudiobuffer_types

import
  ./gen_qaudioformat_types
export
  gen_qaudioformat_types

type cQAudioBuffer*{.exportc: "QAudioBuffer", incompleteStruct.} = object

proc fcQAudioBuffer_operatorAssign(self: pointer, other: pointer): void {.importc: "QAudioBuffer_operatorAssign".}
proc fcQAudioBuffer_isValid(self: pointer): bool {.importc: "QAudioBuffer_isValid".}
proc fcQAudioBuffer_format(self: pointer): pointer {.importc: "QAudioBuffer_format".}
proc fcQAudioBuffer_frameCount(self: pointer): cint {.importc: "QAudioBuffer_frameCount".}
proc fcQAudioBuffer_sampleCount(self: pointer): cint {.importc: "QAudioBuffer_sampleCount".}
proc fcQAudioBuffer_byteCount(self: pointer): cint {.importc: "QAudioBuffer_byteCount".}
proc fcQAudioBuffer_duration(self: pointer): clonglong {.importc: "QAudioBuffer_duration".}
proc fcQAudioBuffer_startTime(self: pointer): clonglong {.importc: "QAudioBuffer_startTime".}
proc fcQAudioBuffer_constData(self: pointer): pointer {.importc: "QAudioBuffer_constData".}
proc fcQAudioBuffer_data(self: pointer): pointer {.importc: "QAudioBuffer_data".}
proc fcQAudioBuffer_data2(self: pointer): pointer {.importc: "QAudioBuffer_data2".}
proc fcQAudioBuffer_new(): ptr cQAudioBuffer {.importc: "QAudioBuffer_new".}
proc fcQAudioBuffer_new2(other: pointer): ptr cQAudioBuffer {.importc: "QAudioBuffer_new2".}
proc fcQAudioBuffer_new3(data: struct_miqt_string, format: pointer): ptr cQAudioBuffer {.importc: "QAudioBuffer_new3".}
proc fcQAudioBuffer_new4(numFrames: cint, format: pointer): ptr cQAudioBuffer {.importc: "QAudioBuffer_new4".}
proc fcQAudioBuffer_new5(data: struct_miqt_string, format: pointer, startTime: clonglong): ptr cQAudioBuffer {.importc: "QAudioBuffer_new5".}
proc fcQAudioBuffer_new6(numFrames: cint, format: pointer, startTime: clonglong): ptr cQAudioBuffer {.importc: "QAudioBuffer_new6".}

proc operatorAssign*(self: gen_qaudiobuffer_types.QAudioBuffer, other: gen_qaudiobuffer_types.QAudioBuffer): void =
  fcQAudioBuffer_operatorAssign(self.h, other.h)

proc isValid*(self: gen_qaudiobuffer_types.QAudioBuffer): bool =
  fcQAudioBuffer_isValid(self.h)

proc format*(self: gen_qaudiobuffer_types.QAudioBuffer): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioBuffer_format(self.h), owned: true)

proc frameCount*(self: gen_qaudiobuffer_types.QAudioBuffer): cint =
  fcQAudioBuffer_frameCount(self.h)

proc sampleCount*(self: gen_qaudiobuffer_types.QAudioBuffer): cint =
  fcQAudioBuffer_sampleCount(self.h)

proc byteCount*(self: gen_qaudiobuffer_types.QAudioBuffer): cint =
  fcQAudioBuffer_byteCount(self.h)

proc duration*(self: gen_qaudiobuffer_types.QAudioBuffer): clonglong =
  fcQAudioBuffer_duration(self.h)

proc startTime*(self: gen_qaudiobuffer_types.QAudioBuffer): clonglong =
  fcQAudioBuffer_startTime(self.h)

proc constData*(self: gen_qaudiobuffer_types.QAudioBuffer): pointer =
  fcQAudioBuffer_constData(self.h)

proc data*(self: gen_qaudiobuffer_types.QAudioBuffer): pointer =
  fcQAudioBuffer_data(self.h)

proc data2*(self: gen_qaudiobuffer_types.QAudioBuffer): pointer =
  fcQAudioBuffer_data2(self.h)

proc create*(T: type gen_qaudiobuffer_types.QAudioBuffer): gen_qaudiobuffer_types.QAudioBuffer =
  gen_qaudiobuffer_types.QAudioBuffer(h: fcQAudioBuffer_new(), owned: true)

proc create*(T: type gen_qaudiobuffer_types.QAudioBuffer,
    other: gen_qaudiobuffer_types.QAudioBuffer): gen_qaudiobuffer_types.QAudioBuffer =
  gen_qaudiobuffer_types.QAudioBuffer(h: fcQAudioBuffer_new2(other.h), owned: true)

proc create*(T: type gen_qaudiobuffer_types.QAudioBuffer,
    data: seq[byte], format: gen_qaudioformat_types.QAudioFormat): gen_qaudiobuffer_types.QAudioBuffer =
  gen_qaudiobuffer_types.QAudioBuffer(h: fcQAudioBuffer_new3(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), format.h), owned: true)

proc create*(T: type gen_qaudiobuffer_types.QAudioBuffer,
    numFrames: cint, format: gen_qaudioformat_types.QAudioFormat): gen_qaudiobuffer_types.QAudioBuffer =
  gen_qaudiobuffer_types.QAudioBuffer(h: fcQAudioBuffer_new4(numFrames, format.h), owned: true)

proc create*(T: type gen_qaudiobuffer_types.QAudioBuffer,
    data: seq[byte], format: gen_qaudioformat_types.QAudioFormat, startTime: clonglong): gen_qaudiobuffer_types.QAudioBuffer =
  gen_qaudiobuffer_types.QAudioBuffer(h: fcQAudioBuffer_new5(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), format.h, startTime), owned: true)

proc create*(T: type gen_qaudiobuffer_types.QAudioBuffer,
    numFrames: cint, format: gen_qaudioformat_types.QAudioFormat, startTime: clonglong): gen_qaudiobuffer_types.QAudioBuffer =
  gen_qaudiobuffer_types.QAudioBuffer(h: fcQAudioBuffer_new6(numFrames, format.h, startTime), owned: true)

