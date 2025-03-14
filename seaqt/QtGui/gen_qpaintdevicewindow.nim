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


{.compile("gen_qpaintdevicewindow.cpp", QtGuiCFlags).}


import ./gen_qpaintdevicewindow_types
export gen_qpaintdevicewindow_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ./gen_qregion_types,
  ./gen_qwindow
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qregion_types,
  gen_qwindow

type cQPaintDeviceWindow*{.exportc: "QPaintDeviceWindow", incompleteStruct.} = object

proc fcQPaintDeviceWindow_metaObject(self: pointer): pointer {.importc: "QPaintDeviceWindow_metaObject".}
proc fcQPaintDeviceWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QPaintDeviceWindow_metacast".}
proc fcQPaintDeviceWindow_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPaintDeviceWindow_metacall".}
proc fcQPaintDeviceWindow_tr(s: cstring): struct_miqt_string {.importc: "QPaintDeviceWindow_tr".}
proc fcQPaintDeviceWindow_update(self: pointer, rect: pointer): void {.importc: "QPaintDeviceWindow_update".}
proc fcQPaintDeviceWindow_updateWithRegion(self: pointer, region: pointer): void {.importc: "QPaintDeviceWindow_updateWithRegion".}
proc fcQPaintDeviceWindow_update2(self: pointer): void {.importc: "QPaintDeviceWindow_update2".}
proc fcQPaintDeviceWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPaintDeviceWindow_tr2".}
proc fcQPaintDeviceWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPaintDeviceWindow_tr3".}
proc fcQPaintDeviceWindow_protectedbase_resolveInterface(self: pointer, name: cstring, revision: cint): pointer {.importc: "QPaintDeviceWindow_protectedbase_resolveInterface".}
proc fcQPaintDeviceWindow_protectedbase_sender(self: pointer): pointer {.importc: "QPaintDeviceWindow_protectedbase_sender".}
proc fcQPaintDeviceWindow_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPaintDeviceWindow_protectedbase_senderSignalIndex".}
proc fcQPaintDeviceWindow_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPaintDeviceWindow_protectedbase_receivers".}
proc fcQPaintDeviceWindow_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPaintDeviceWindow_protectedbase_isSignalConnected".}
proc fcQPaintDeviceWindow_staticMetaObject(): pointer {.importc: "QPaintDeviceWindow_staticMetaObject".}

proc metaObject*(self: gen_qpaintdevicewindow_types.QPaintDeviceWindow): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPaintDeviceWindow_metaObject(self.h), owned: false)

proc metacast*(self: gen_qpaintdevicewindow_types.QPaintDeviceWindow, param1: cstring): pointer =
  fcQPaintDeviceWindow_metacast(self.h, param1)

proc metacall*(self: gen_qpaintdevicewindow_types.QPaintDeviceWindow, param1: cint, param2: cint, param3: pointer): cint =
  fcQPaintDeviceWindow_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpaintdevicewindow_types.QPaintDeviceWindow, s: cstring): string =
  let v_ms = fcQPaintDeviceWindow_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc update*(self: gen_qpaintdevicewindow_types.QPaintDeviceWindow, rect: gen_qrect_types.QRect): void =
  fcQPaintDeviceWindow_update(self.h, rect.h)

proc update*(self: gen_qpaintdevicewindow_types.QPaintDeviceWindow, region: gen_qregion_types.QRegion): void =
  fcQPaintDeviceWindow_updateWithRegion(self.h, region.h)

proc update*(self: gen_qpaintdevicewindow_types.QPaintDeviceWindow): void =
  fcQPaintDeviceWindow_update2(self.h)

proc tr*(_: type gen_qpaintdevicewindow_types.QPaintDeviceWindow, s: cstring, c: cstring): string =
  let v_ms = fcQPaintDeviceWindow_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpaintdevicewindow_types.QPaintDeviceWindow, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPaintDeviceWindow_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc resolveInterface*(self: gen_qpaintdevicewindow_types.QPaintDeviceWindow, name: cstring, revision: cint): pointer =
  fcQPaintDeviceWindow_protectedbase_resolveInterface(self.h, name, revision)

proc sender*(self: gen_qpaintdevicewindow_types.QPaintDeviceWindow): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPaintDeviceWindow_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qpaintdevicewindow_types.QPaintDeviceWindow): cint =
  fcQPaintDeviceWindow_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpaintdevicewindow_types.QPaintDeviceWindow, signal: cstring): cint =
  fcQPaintDeviceWindow_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpaintdevicewindow_types.QPaintDeviceWindow, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPaintDeviceWindow_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qpaintdevicewindow_types.QPaintDeviceWindow): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPaintDeviceWindow_staticMetaObject())
