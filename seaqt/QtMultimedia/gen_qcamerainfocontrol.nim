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
{.compile("gen_qcamerainfocontrol.cpp", cflags).}


import ./gen_qcamerainfocontrol_types
export gen_qcamerainfocontrol_types

import
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediacontrol
export
  gen_qobjectdefs_types,
  gen_qmediacontrol

type cQCameraInfoControl*{.exportc: "QCameraInfoControl", incompleteStruct.} = object

proc fcQCameraInfoControl_metaObject(self: pointer, ): pointer {.importc: "QCameraInfoControl_metaObject".}
proc fcQCameraInfoControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraInfoControl_metacast".}
proc fcQCameraInfoControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraInfoControl_metacall".}
proc fcQCameraInfoControl_tr(s: cstring): struct_miqt_string {.importc: "QCameraInfoControl_tr".}
proc fcQCameraInfoControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraInfoControl_trUtf8".}
proc fcQCameraInfoControl_cameraPosition(self: pointer, deviceName: struct_miqt_string): cint {.importc: "QCameraInfoControl_cameraPosition".}
proc fcQCameraInfoControl_cameraOrientation(self: pointer, deviceName: struct_miqt_string): cint {.importc: "QCameraInfoControl_cameraOrientation".}
proc fcQCameraInfoControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraInfoControl_tr2".}
proc fcQCameraInfoControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraInfoControl_tr3".}
proc fcQCameraInfoControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraInfoControl_trUtf82".}
proc fcQCameraInfoControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraInfoControl_trUtf83".}
proc fcQCameraInfoControl_staticMetaObject(): pointer {.importc: "QCameraInfoControl_staticMetaObject".}
proc fcQCameraInfoControl_delete(self: pointer) {.importc: "QCameraInfoControl_delete".}

proc metaObject*(self: gen_qcamerainfocontrol_types.QCameraInfoControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraInfoControl_metaObject(self.h))

proc metacast*(self: gen_qcamerainfocontrol_types.QCameraInfoControl, param1: cstring): pointer =
  fcQCameraInfoControl_metacast(self.h, param1)

proc metacall*(self: gen_qcamerainfocontrol_types.QCameraInfoControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraInfoControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcamerainfocontrol_types.QCameraInfoControl, s: cstring): string =
  let v_ms = fcQCameraInfoControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcamerainfocontrol_types.QCameraInfoControl, s: cstring): string =
  let v_ms = fcQCameraInfoControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc cameraPosition*(self: gen_qcamerainfocontrol_types.QCameraInfoControl, deviceName: string): cint =
  cint(fcQCameraInfoControl_cameraPosition(self.h, struct_miqt_string(data: deviceName, len: csize_t(len(deviceName)))))

proc cameraOrientation*(self: gen_qcamerainfocontrol_types.QCameraInfoControl, deviceName: string): cint =
  fcQCameraInfoControl_cameraOrientation(self.h, struct_miqt_string(data: deviceName, len: csize_t(len(deviceName))))

proc tr*(_: type gen_qcamerainfocontrol_types.QCameraInfoControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraInfoControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcamerainfocontrol_types.QCameraInfoControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraInfoControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcamerainfocontrol_types.QCameraInfoControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraInfoControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcamerainfocontrol_types.QCameraInfoControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraInfoControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qcamerainfocontrol_types.QCameraInfoControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraInfoControl_staticMetaObject())
proc delete*(self: gen_qcamerainfocontrol_types.QCameraInfoControl) =
  fcQCameraInfoControl_delete(self.h)
