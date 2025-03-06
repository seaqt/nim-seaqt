import ./Qt5Gui_libs

{.push raises: [].}

from system/ansi_c import c_free

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qsurface.cpp", cflags).}


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

proc fcQSurface_surfaceClass(self: pointer, ): cint {.importc: "QSurface_surfaceClass".}
proc fcQSurface_format(self: pointer, ): pointer {.importc: "QSurface_format".}
proc fcQSurface_surfaceType(self: pointer, ): cint {.importc: "QSurface_surfaceType".}
proc fcQSurface_supportsOpenGL(self: pointer, ): bool {.importc: "QSurface_supportsOpenGL".}
proc fcQSurface_size(self: pointer, ): pointer {.importc: "QSurface_size".}
proc fcQSurface_staticMetaObject(): pointer {.importc: "QSurface_staticMetaObject".}
proc fcQSurface_delete(self: pointer) {.importc: "QSurface_delete".}


func init*(T: type gen_qsurface_types.QSurface, h: ptr cQSurface): gen_qsurface_types.QSurface =
  T(h: h)
proc surfaceClass*(self: gen_qsurface_types.QSurface, ): cint =
  cint(fcQSurface_surfaceClass(self.h))

proc format*(self: gen_qsurface_types.QSurface, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQSurface_format(self.h))

proc surfaceType*(self: gen_qsurface_types.QSurface, ): cint =
  cint(fcQSurface_surfaceType(self.h))

proc supportsOpenGL*(self: gen_qsurface_types.QSurface, ): bool =
  fcQSurface_supportsOpenGL(self.h)

proc size*(self: gen_qsurface_types.QSurface, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSurface_size(self.h))

proc staticMetaObject*(_: type gen_qsurface_types.QSurface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSurface_staticMetaObject())
proc delete*(self: gen_qsurface_types.QSurface) =
  fcQSurface_delete(self.h)
