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
{.compile("gen_qpaintdevicewindow.cpp", cflags).}


import ./gen_qpaintdevicewindow_types
export gen_qpaintdevicewindow_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ./gen_qregion_types,
  ./gen_qwindow
export
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qregion_types,
  gen_qwindow

type cQPaintDeviceWindow*{.exportc: "QPaintDeviceWindow", incompleteStruct.} = object

proc fcQPaintDeviceWindow_metaObject(self: pointer, ): pointer {.importc: "QPaintDeviceWindow_metaObject".}
proc fcQPaintDeviceWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QPaintDeviceWindow_metacast".}
proc fcQPaintDeviceWindow_tr(s: cstring): struct_miqt_string {.importc: "QPaintDeviceWindow_tr".}
proc fcQPaintDeviceWindow_trUtf8(s: cstring): struct_miqt_string {.importc: "QPaintDeviceWindow_trUtf8".}
proc fcQPaintDeviceWindow_update(self: pointer, rect: pointer): void {.importc: "QPaintDeviceWindow_update".}
proc fcQPaintDeviceWindow_updateWithRegion(self: pointer, region: pointer): void {.importc: "QPaintDeviceWindow_updateWithRegion".}
proc fcQPaintDeviceWindow_update2(self: pointer, ): void {.importc: "QPaintDeviceWindow_update2".}
proc fcQPaintDeviceWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPaintDeviceWindow_tr2".}
proc fcQPaintDeviceWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPaintDeviceWindow_tr3".}
proc fcQPaintDeviceWindow_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPaintDeviceWindow_trUtf82".}
proc fcQPaintDeviceWindow_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPaintDeviceWindow_trUtf83".}
proc fcQPaintDeviceWindow_delete(self: pointer) {.importc: "QPaintDeviceWindow_delete".}


func init*(T: type gen_qpaintdevicewindow_types.QPaintDeviceWindow, h: ptr cQPaintDeviceWindow): gen_qpaintdevicewindow_types.QPaintDeviceWindow =
  T(h: h)
proc metaObject*(self: gen_qpaintdevicewindow_types.QPaintDeviceWindow, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPaintDeviceWindow_metaObject(self.h))

proc metacast*(self: gen_qpaintdevicewindow_types.QPaintDeviceWindow, param1: cstring): pointer =
  fcQPaintDeviceWindow_metacast(self.h, param1)

proc tr*(_: type gen_qpaintdevicewindow_types.QPaintDeviceWindow, s: cstring): string =
  let v_ms = fcQPaintDeviceWindow_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpaintdevicewindow_types.QPaintDeviceWindow, s: cstring): string =
  let v_ms = fcQPaintDeviceWindow_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc update*(self: gen_qpaintdevicewindow_types.QPaintDeviceWindow, rect: gen_qrect_types.QRect): void =
  fcQPaintDeviceWindow_update(self.h, rect.h)

proc update*(self: gen_qpaintdevicewindow_types.QPaintDeviceWindow, region: gen_qregion_types.QRegion): void =
  fcQPaintDeviceWindow_updateWithRegion(self.h, region.h)

proc update*(self: gen_qpaintdevicewindow_types.QPaintDeviceWindow, ): void =
  fcQPaintDeviceWindow_update2(self.h)

proc tr*(_: type gen_qpaintdevicewindow_types.QPaintDeviceWindow, s: cstring, c: cstring): string =
  let v_ms = fcQPaintDeviceWindow_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpaintdevicewindow_types.QPaintDeviceWindow, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPaintDeviceWindow_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpaintdevicewindow_types.QPaintDeviceWindow, s: cstring, c: cstring): string =
  let v_ms = fcQPaintDeviceWindow_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpaintdevicewindow_types.QPaintDeviceWindow, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPaintDeviceWindow_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_qpaintdevicewindow_types.QPaintDeviceWindow) =
  fcQPaintDeviceWindow_delete(self.h)
