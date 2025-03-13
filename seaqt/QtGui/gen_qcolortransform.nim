import ./Qt6Gui_libs

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


import ./gen_qcolortransform_types
export gen_qcolortransform_types

import
  ./gen_qcolor_types,
  ./gen_qrgba64_types
export
  gen_qcolor_types,
  gen_qrgba64_types

type cQColorTransform*{.exportc: "QColorTransform", incompleteStruct.} = object

proc fcQColorTransform_operatorAssign(self: pointer, other: pointer): void {.importc: "QColorTransform_operatorAssign".}
proc fcQColorTransform_swap(self: pointer, other: pointer): void {.importc: "QColorTransform_swap".}
proc fcQColorTransform_isIdentity(self: pointer): bool {.importc: "QColorTransform_isIdentity".}
proc fcQColorTransform_map(self: pointer, argb: cuint): cuint {.importc: "QColorTransform_map".}
proc fcQColorTransform_mapWithRgba64(self: pointer, rgba64: pointer): pointer {.importc: "QColorTransform_mapWithRgba64".}
proc fcQColorTransform_mapWithColor(self: pointer, color: pointer): pointer {.importc: "QColorTransform_mapWithColor".}
proc fcQColorTransform_new(): ptr cQColorTransform {.importc: "QColorTransform_new".}
proc fcQColorTransform_new2(colorTransform: pointer): ptr cQColorTransform {.importc: "QColorTransform_new2".}

proc operatorAssign*(self: gen_qcolortransform_types.QColorTransform, other: gen_qcolortransform_types.QColorTransform): void =
  fcQColorTransform_operatorAssign(self.h, other.h)

proc swap*(self: gen_qcolortransform_types.QColorTransform, other: gen_qcolortransform_types.QColorTransform): void =
  fcQColorTransform_swap(self.h, other.h)

proc isIdentity*(self: gen_qcolortransform_types.QColorTransform): bool =
  fcQColorTransform_isIdentity(self.h)

proc map*(self: gen_qcolortransform_types.QColorTransform, argb: cuint): cuint =
  fcQColorTransform_map(self.h, argb)

proc map*(self: gen_qcolortransform_types.QColorTransform, rgba64: gen_qrgba64_types.QRgba64): gen_qrgba64_types.QRgba64 =
  gen_qrgba64_types.QRgba64(h: fcQColorTransform_mapWithRgba64(self.h, rgba64.h), owned: true)

proc map*(self: gen_qcolortransform_types.QColorTransform, color: gen_qcolor_types.QColor): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorTransform_mapWithColor(self.h, color.h), owned: true)

proc create*(T: type gen_qcolortransform_types.QColorTransform): gen_qcolortransform_types.QColorTransform =
  gen_qcolortransform_types.QColorTransform(h: fcQColorTransform_new(), owned: true)

proc create*(T: type gen_qcolortransform_types.QColorTransform,
    colorTransform: gen_qcolortransform_types.QColorTransform): gen_qcolortransform_types.QColorTransform =
  gen_qcolortransform_types.QColorTransform(h: fcQColorTransform_new2(colorTransform.h), owned: true)

