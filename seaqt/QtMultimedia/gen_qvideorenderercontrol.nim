import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qvideorenderercontrol.cpp", cflags).}


import ./gen_qvideorenderercontrol_types
export gen_qvideorenderercontrol_types

import
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qabstractvideosurface_types,
  ./gen_qmediacontrol
export
  gen_qobjectdefs_types,
  gen_qabstractvideosurface_types,
  gen_qmediacontrol

type cQVideoRendererControl*{.exportc: "QVideoRendererControl", incompleteStruct.} = object

proc fcQVideoRendererControl_metaObject(self: pointer, ): pointer {.importc: "QVideoRendererControl_metaObject".}
proc fcQVideoRendererControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoRendererControl_metacast".}
proc fcQVideoRendererControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoRendererControl_metacall".}
proc fcQVideoRendererControl_tr(s: cstring): struct_miqt_string {.importc: "QVideoRendererControl_tr".}
proc fcQVideoRendererControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QVideoRendererControl_trUtf8".}
proc fcQVideoRendererControl_surface(self: pointer, ): pointer {.importc: "QVideoRendererControl_surface".}
proc fcQVideoRendererControl_setSurface(self: pointer, surface: pointer): void {.importc: "QVideoRendererControl_setSurface".}
proc fcQVideoRendererControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoRendererControl_tr2".}
proc fcQVideoRendererControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoRendererControl_tr3".}
proc fcQVideoRendererControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoRendererControl_trUtf82".}
proc fcQVideoRendererControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoRendererControl_trUtf83".}
proc fcQVideoRendererControl_staticMetaObject(): pointer {.importc: "QVideoRendererControl_staticMetaObject".}
proc fcQVideoRendererControl_delete(self: pointer) {.importc: "QVideoRendererControl_delete".}


func init*(T: type gen_qvideorenderercontrol_types.QVideoRendererControl, h: ptr cQVideoRendererControl): gen_qvideorenderercontrol_types.QVideoRendererControl =
  T(h: h)
proc metaObject*(self: gen_qvideorenderercontrol_types.QVideoRendererControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoRendererControl_metaObject(self.h))

proc metacast*(self: gen_qvideorenderercontrol_types.QVideoRendererControl, param1: cstring): pointer =
  fcQVideoRendererControl_metacast(self.h, param1)

proc metacall*(self: gen_qvideorenderercontrol_types.QVideoRendererControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoRendererControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvideorenderercontrol_types.QVideoRendererControl, s: cstring): string =
  let v_ms = fcQVideoRendererControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideorenderercontrol_types.QVideoRendererControl, s: cstring): string =
  let v_ms = fcQVideoRendererControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc surface*(self: gen_qvideorenderercontrol_types.QVideoRendererControl, ): gen_qabstractvideosurface_types.QAbstractVideoSurface =
  gen_qabstractvideosurface_types.QAbstractVideoSurface(h: fcQVideoRendererControl_surface(self.h))

proc setSurface*(self: gen_qvideorenderercontrol_types.QVideoRendererControl, surface: gen_qabstractvideosurface_types.QAbstractVideoSurface): void =
  fcQVideoRendererControl_setSurface(self.h, surface.h)

proc tr*(_: type gen_qvideorenderercontrol_types.QVideoRendererControl, s: cstring, c: cstring): string =
  let v_ms = fcQVideoRendererControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvideorenderercontrol_types.QVideoRendererControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoRendererControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideorenderercontrol_types.QVideoRendererControl, s: cstring, c: cstring): string =
  let v_ms = fcQVideoRendererControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideorenderercontrol_types.QVideoRendererControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoRendererControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qvideorenderercontrol_types.QVideoRendererControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoRendererControl_staticMetaObject())
proc delete*(self: gen_qvideorenderercontrol_types.QVideoRendererControl) =
  fcQVideoRendererControl_delete(self.h)
