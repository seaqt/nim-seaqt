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
{.compile("gen_qcamerainfo.cpp", cflags).}


import ./gen_qcamerainfo_types
export gen_qcamerainfo_types

import
  ./gen_qcamera_types
export
  gen_qcamera_types

type cQCameraInfo*{.exportc: "QCameraInfo", incompleteStruct.} = object

proc fcQCameraInfo_new(): ptr cQCameraInfo {.importc: "QCameraInfo_new".}
proc fcQCameraInfo_new2(camera: pointer): ptr cQCameraInfo {.importc: "QCameraInfo_new2".}
proc fcQCameraInfo_new3(other: pointer): ptr cQCameraInfo {.importc: "QCameraInfo_new3".}
proc fcQCameraInfo_new4(name: struct_miqt_string): ptr cQCameraInfo {.importc: "QCameraInfo_new4".}
proc fcQCameraInfo_operatorAssign(self: pointer, other: pointer): void {.importc: "QCameraInfo_operatorAssign".}
proc fcQCameraInfo_operatorEqual(self: pointer, other: pointer): bool {.importc: "QCameraInfo_operatorEqual".}
proc fcQCameraInfo_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QCameraInfo_operatorNotEqual".}
proc fcQCameraInfo_isNull(self: pointer, ): bool {.importc: "QCameraInfo_isNull".}
proc fcQCameraInfo_deviceName(self: pointer, ): struct_miqt_string {.importc: "QCameraInfo_deviceName".}
proc fcQCameraInfo_description(self: pointer, ): struct_miqt_string {.importc: "QCameraInfo_description".}
proc fcQCameraInfo_position(self: pointer, ): cint {.importc: "QCameraInfo_position".}
proc fcQCameraInfo_orientation(self: pointer, ): cint {.importc: "QCameraInfo_orientation".}
proc fcQCameraInfo_defaultCamera(): pointer {.importc: "QCameraInfo_defaultCamera".}
proc fcQCameraInfo_availableCameras(): struct_miqt_array {.importc: "QCameraInfo_availableCameras".}
proc fcQCameraInfo_availableCameras1(position: cint): struct_miqt_array {.importc: "QCameraInfo_availableCameras1".}
proc fcQCameraInfo_delete(self: pointer) {.importc: "QCameraInfo_delete".}


func init*(T: type gen_qcamerainfo_types.QCameraInfo, h: ptr cQCameraInfo): gen_qcamerainfo_types.QCameraInfo =
  T(h: h)
proc create*(T: type gen_qcamerainfo_types.QCameraInfo, ): gen_qcamerainfo_types.QCameraInfo =
  gen_qcamerainfo_types.QCameraInfo.init(fcQCameraInfo_new())

proc create*(T: type gen_qcamerainfo_types.QCameraInfo, camera: gen_qcamera_types.QCamera): gen_qcamerainfo_types.QCameraInfo =
  gen_qcamerainfo_types.QCameraInfo.init(fcQCameraInfo_new2(camera.h))

proc create*(T: type gen_qcamerainfo_types.QCameraInfo, other: gen_qcamerainfo_types.QCameraInfo): gen_qcamerainfo_types.QCameraInfo =
  gen_qcamerainfo_types.QCameraInfo.init(fcQCameraInfo_new3(other.h))

proc create*(T: type gen_qcamerainfo_types.QCameraInfo, name: seq[byte]): gen_qcamerainfo_types.QCameraInfo =
  gen_qcamerainfo_types.QCameraInfo.init(fcQCameraInfo_new4(struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name)))))

proc operatorAssign*(self: gen_qcamerainfo_types.QCameraInfo, other: gen_qcamerainfo_types.QCameraInfo): void =
  fcQCameraInfo_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qcamerainfo_types.QCameraInfo, other: gen_qcamerainfo_types.QCameraInfo): bool =
  fcQCameraInfo_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qcamerainfo_types.QCameraInfo, other: gen_qcamerainfo_types.QCameraInfo): bool =
  fcQCameraInfo_operatorNotEqual(self.h, other.h)

proc isNull*(self: gen_qcamerainfo_types.QCameraInfo, ): bool =
  fcQCameraInfo_isNull(self.h)

proc deviceName*(self: gen_qcamerainfo_types.QCameraInfo, ): string =
  let v_ms = fcQCameraInfo_deviceName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc description*(self: gen_qcamerainfo_types.QCameraInfo, ): string =
  let v_ms = fcQCameraInfo_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc position*(self: gen_qcamerainfo_types.QCameraInfo, ): cint =
  cint(fcQCameraInfo_position(self.h))

proc orientation*(self: gen_qcamerainfo_types.QCameraInfo, ): cint =
  fcQCameraInfo_orientation(self.h)

proc defaultCamera*(_: type gen_qcamerainfo_types.QCameraInfo, ): gen_qcamerainfo_types.QCameraInfo =
  gen_qcamerainfo_types.QCameraInfo(h: fcQCameraInfo_defaultCamera())

proc availableCameras*(_: type gen_qcamerainfo_types.QCameraInfo, ): seq[gen_qcamerainfo_types.QCameraInfo] =
  var v_ma = fcQCameraInfo_availableCameras()
  var vx_ret = newSeq[gen_qcamerainfo_types.QCameraInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcamerainfo_types.QCameraInfo(h: v_outCast[i])
  vx_ret

proc availableCameras*(_: type gen_qcamerainfo_types.QCameraInfo, position: cint): seq[gen_qcamerainfo_types.QCameraInfo] =
  var v_ma = fcQCameraInfo_availableCameras1(cint(position))
  var vx_ret = newSeq[gen_qcamerainfo_types.QCameraInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcamerainfo_types.QCameraInfo(h: v_outCast[i])
  vx_ret

proc delete*(self: gen_qcamerainfo_types.QCameraInfo) =
  fcQCameraInfo_delete(self.h)
