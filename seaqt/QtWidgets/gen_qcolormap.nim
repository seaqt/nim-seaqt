import ./Qt5Widgets_libs

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


type QColormapModeEnum* = distinct cint
template Direct*(_: type QColormapModeEnum): untyped = 0
template Indexed*(_: type QColormapModeEnum): untyped = 1
template Gray*(_: type QColormapModeEnum): untyped = 2


import ./gen_qcolormap_types
export gen_qcolormap_types

import
  ../QtGui/gen_qcolor_types
export
  gen_qcolor_types

type cQColormap*{.exportc: "QColormap", incompleteStruct.} = object

proc fcQColormap_initialize(): void {.importc: "QColormap_initialize".}
proc fcQColormap_cleanup(): void {.importc: "QColormap_cleanup".}
proc fcQColormap_instance(): pointer {.importc: "QColormap_instance".}
proc fcQColormap_operatorAssign(self: pointer, colormap: pointer): void {.importc: "QColormap_operatorAssign".}
proc fcQColormap_mode(self: pointer, ): cint {.importc: "QColormap_mode".}
proc fcQColormap_depth(self: pointer, ): cint {.importc: "QColormap_depth".}
proc fcQColormap_size(self: pointer, ): cint {.importc: "QColormap_size".}
proc fcQColormap_pixel(self: pointer, color: pointer): cuint {.importc: "QColormap_pixel".}
proc fcQColormap_colorAt(self: pointer, pixel: cuint): pointer {.importc: "QColormap_colorAt".}
proc fcQColormap_colormap(self: pointer, ): struct_miqt_array {.importc: "QColormap_colormap".}
proc fcQColormap_instance1(screen: cint): pointer {.importc: "QColormap_instance1".}
proc fcQColormap_new(colormap: pointer): ptr cQColormap {.importc: "QColormap_new".}

proc initialize*(_: type gen_qcolormap_types.QColormap, ): void =
  fcQColormap_initialize()

proc cleanup*(_: type gen_qcolormap_types.QColormap, ): void =
  fcQColormap_cleanup()

proc instance*(_: type gen_qcolormap_types.QColormap, ): gen_qcolormap_types.QColormap =
  gen_qcolormap_types.QColormap(h: fcQColormap_instance(), owned: true)

proc operatorAssign*(self: gen_qcolormap_types.QColormap, colormap: gen_qcolormap_types.QColormap): void =
  fcQColormap_operatorAssign(self.h, colormap.h)

proc mode*(self: gen_qcolormap_types.QColormap, ): cint =
  cint(fcQColormap_mode(self.h))

proc depth*(self: gen_qcolormap_types.QColormap, ): cint =
  fcQColormap_depth(self.h)

proc size*(self: gen_qcolormap_types.QColormap, ): cint =
  fcQColormap_size(self.h)

proc pixel*(self: gen_qcolormap_types.QColormap, color: gen_qcolor_types.QColor): cuint =
  fcQColormap_pixel(self.h, color.h)

proc colorAt*(self: gen_qcolormap_types.QColormap, pixel: cuint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColormap_colorAt(self.h, pixel), owned: true)

proc colormap*(self: gen_qcolormap_types.QColormap, ): seq[gen_qcolor_types.QColor] =
  var v_ma = fcQColormap_colormap(self.h)
  var vx_ret = newSeq[gen_qcolor_types.QColor](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcolor_types.QColor(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc instance*(_: type gen_qcolormap_types.QColormap, screen: cint): gen_qcolormap_types.QColormap =
  gen_qcolormap_types.QColormap(h: fcQColormap_instance1(screen), owned: true)

proc create*(T: type gen_qcolormap_types.QColormap,
    colormap: gen_qcolormap_types.QColormap): gen_qcolormap_types.QColormap =
  gen_qcolormap_types.QColormap(h: fcQColormap_new(colormap.h), owned: true)

