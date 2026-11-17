import ./qtmultimedia_pkg

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


import ./gen_qabstractvideobuffer_types
export gen_qabstractvideobuffer_types

import
  ./gen_qvideoframeformat_types
export
  gen_qvideoframeformat_types

type cQAbstractVideoBuffer*{.exportc: "QAbstractVideoBuffer", incompleteStruct.} = object

proc fcQAbstractVideoBuffer_unmap(self: pointer): void {.importc: "QAbstractVideoBuffer_unmap".}
proc fcQAbstractVideoBuffer_format(self: pointer): pointer {.importc: "QAbstractVideoBuffer_format".}

proc unmap*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer): void =
  fcQAbstractVideoBuffer_unmap(self.h)

proc format*(self: gen_qabstractvideobuffer_types.QAbstractVideoBuffer): gen_qvideoframeformat_types.QVideoFrameFormat =
  gen_qvideoframeformat_types.QVideoFrameFormat(h: fcQAbstractVideoBuffer_format(self.h), owned: true)

