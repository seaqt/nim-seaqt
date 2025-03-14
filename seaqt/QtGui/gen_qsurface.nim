import ./qtgui_pkg

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


type QSurfaceSurfaceClassEnum* = distinct cint
template Window*(_: type QSurfaceSurfaceClassEnum): untyped = 0
template Offscreen*(_: type QSurfaceSurfaceClassEnum): untyped = 1


type QSurfaceSurfaceTypeEnum* = distinct cint
template RasterSurface*(_: type QSurfaceSurfaceTypeEnum): untyped = 0
template OpenGLSurface*(_: type QSurfaceSurfaceTypeEnum): untyped = 1
template RasterGLSurface*(_: type QSurfaceSurfaceTypeEnum): untyped = 2
template OpenVGSurface*(_: type QSurfaceSurfaceTypeEnum): untyped = 3
template VulkanSurface*(_: type QSurfaceSurfaceTypeEnum): untyped = 4
template MetalSurface*(_: type QSurfaceSurfaceTypeEnum): untyped = 5
template Direct3DSurface*(_: type QSurfaceSurfaceTypeEnum): untyped = 6


import ./gen_qsurface_types
export gen_qsurface_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ./gen_qsurfaceformat_types
export
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qsurfaceformat_types

type cQSurface*{.exportc: "QSurface", incompleteStruct.} = object

proc fcQSurface_surfaceClass(self: pointer): cint {.importc: "QSurface_surfaceClass".}
proc fcQSurface_format(self: pointer): pointer {.importc: "QSurface_format".}
proc fcQSurface_surfaceType(self: pointer): cint {.importc: "QSurface_surfaceType".}
proc fcQSurface_supportsOpenGL(self: pointer): bool {.importc: "QSurface_supportsOpenGL".}
proc fcQSurface_size(self: pointer): pointer {.importc: "QSurface_size".}
proc fcQSurface_staticMetaObject(): pointer {.importc: "QSurface_staticMetaObject".}

proc surfaceClass*(self: gen_qsurface_types.QSurface): cint =
  cint(fcQSurface_surfaceClass(self.h))

proc format*(self: gen_qsurface_types.QSurface): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQSurface_format(self.h), owned: true)

proc surfaceType*(self: gen_qsurface_types.QSurface): cint =
  cint(fcQSurface_surfaceType(self.h))

proc supportsOpenGL*(self: gen_qsurface_types.QSurface): bool =
  fcQSurface_supportsOpenGL(self.h)

proc size*(self: gen_qsurface_types.QSurface): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSurface_size(self.h), owned: true)

proc staticMetaObject*(_: type gen_qsurface_types.QSurface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSurface_staticMetaObject())
