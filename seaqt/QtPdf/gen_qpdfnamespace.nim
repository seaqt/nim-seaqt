import ./qtpdf_pkg

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


{.compile("gen_qpdfnamespace.cpp", QtPdfCFlags).}


type QPdfRotationEnum* = distinct cint
template Rotate0*(_: type QPdfRotationEnum): untyped = 0
template Rotate90*(_: type QPdfRotationEnum): untyped = 1
template Rotate180*(_: type QPdfRotationEnum): untyped = 2
template Rotate270*(_: type QPdfRotationEnum): untyped = 3


type QPdfRenderFlagEnum* = distinct cint
template NoRenderFlags*(_: type QPdfRenderFlagEnum): untyped = 0
template RenderAnnotations*(_: type QPdfRenderFlagEnum): untyped = 1
template RenderOptimizedForLcd*(_: type QPdfRenderFlagEnum): untyped = 2
template RenderGrayscale*(_: type QPdfRenderFlagEnum): untyped = 4
template RenderForceHalftone*(_: type QPdfRenderFlagEnum): untyped = 8
template RenderTextAliased*(_: type QPdfRenderFlagEnum): untyped = 16
template RenderImageAliased*(_: type QPdfRenderFlagEnum): untyped = 32
template RenderPathAliased*(_: type QPdfRenderFlagEnum): untyped = 64


import ./gen_qpdfnamespace_types
export gen_qpdfnamespace_types




