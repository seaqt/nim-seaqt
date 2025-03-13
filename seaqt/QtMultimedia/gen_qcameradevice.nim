import ./Qt6Multimedia_libs

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


type QCameraDevicePositionEnum* = distinct cint
template UnspecifiedPosition*(_: type QCameraDevicePositionEnum): untyped = 0
template BackFace*(_: type QCameraDevicePositionEnum): untyped = 1
template FrontFace*(_: type QCameraDevicePositionEnum): untyped = 2


import ./gen_qcameradevice_types
export gen_qcameradevice_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types
export
  gen_qobjectdefs_types,
  gen_qsize_types

type cQCameraFormat*{.exportc: "QCameraFormat", incompleteStruct.} = object
type cQCameraDevice*{.exportc: "QCameraDevice", incompleteStruct.} = object

proc fcQCameraFormat_operatorAssign(self: pointer, other: pointer): void {.importc: "QCameraFormat_operatorAssign".}
proc fcQCameraFormat_pixelFormat(self: pointer): cint {.importc: "QCameraFormat_pixelFormat".}
proc fcQCameraFormat_resolution(self: pointer): pointer {.importc: "QCameraFormat_resolution".}
proc fcQCameraFormat_minFrameRate(self: pointer): float32 {.importc: "QCameraFormat_minFrameRate".}
proc fcQCameraFormat_maxFrameRate(self: pointer): float32 {.importc: "QCameraFormat_maxFrameRate".}
proc fcQCameraFormat_isNull(self: pointer): bool {.importc: "QCameraFormat_isNull".}
proc fcQCameraFormat_operatorEqual(self: pointer, other: pointer): bool {.importc: "QCameraFormat_operatorEqual".}
proc fcQCameraFormat_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QCameraFormat_operatorNotEqual".}
proc fcQCameraFormat_new(): ptr cQCameraFormat {.importc: "QCameraFormat_new".}
proc fcQCameraFormat_new2(other: pointer): ptr cQCameraFormat {.importc: "QCameraFormat_new2".}
proc fcQCameraFormat_staticMetaObject(): pointer {.importc: "QCameraFormat_staticMetaObject".}
proc fcQCameraDevice_operatorAssign(self: pointer, other: pointer): void {.importc: "QCameraDevice_operatorAssign".}
proc fcQCameraDevice_operatorEqual(self: pointer, other: pointer): bool {.importc: "QCameraDevice_operatorEqual".}
proc fcQCameraDevice_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QCameraDevice_operatorNotEqual".}
proc fcQCameraDevice_isNull(self: pointer): bool {.importc: "QCameraDevice_isNull".}
proc fcQCameraDevice_id(self: pointer): struct_miqt_string {.importc: "QCameraDevice_id".}
proc fcQCameraDevice_description(self: pointer): struct_miqt_string {.importc: "QCameraDevice_description".}
proc fcQCameraDevice_isDefault(self: pointer): bool {.importc: "QCameraDevice_isDefault".}
proc fcQCameraDevice_position(self: pointer): cint {.importc: "QCameraDevice_position".}
proc fcQCameraDevice_photoResolutions(self: pointer): struct_miqt_array {.importc: "QCameraDevice_photoResolutions".}
proc fcQCameraDevice_videoFormats(self: pointer): struct_miqt_array {.importc: "QCameraDevice_videoFormats".}
proc fcQCameraDevice_new(): ptr cQCameraDevice {.importc: "QCameraDevice_new".}
proc fcQCameraDevice_new2(other: pointer): ptr cQCameraDevice {.importc: "QCameraDevice_new2".}
proc fcQCameraDevice_staticMetaObject(): pointer {.importc: "QCameraDevice_staticMetaObject".}

proc operatorAssign*(self: gen_qcameradevice_types.QCameraFormat, other: gen_qcameradevice_types.QCameraFormat): void =
  fcQCameraFormat_operatorAssign(self.h, other.h)

proc pixelFormat*(self: gen_qcameradevice_types.QCameraFormat): cint =
  cint(fcQCameraFormat_pixelFormat(self.h))

proc resolution*(self: gen_qcameradevice_types.QCameraFormat): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCameraFormat_resolution(self.h), owned: true)

proc minFrameRate*(self: gen_qcameradevice_types.QCameraFormat): float32 =
  fcQCameraFormat_minFrameRate(self.h)

proc maxFrameRate*(self: gen_qcameradevice_types.QCameraFormat): float32 =
  fcQCameraFormat_maxFrameRate(self.h)

proc isNull*(self: gen_qcameradevice_types.QCameraFormat): bool =
  fcQCameraFormat_isNull(self.h)

proc operatorEqual*(self: gen_qcameradevice_types.QCameraFormat, other: gen_qcameradevice_types.QCameraFormat): bool =
  fcQCameraFormat_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qcameradevice_types.QCameraFormat, other: gen_qcameradevice_types.QCameraFormat): bool =
  fcQCameraFormat_operatorNotEqual(self.h, other.h)

proc create*(T: type gen_qcameradevice_types.QCameraFormat): gen_qcameradevice_types.QCameraFormat =
  gen_qcameradevice_types.QCameraFormat(h: fcQCameraFormat_new(), owned: true)

proc create*(T: type gen_qcameradevice_types.QCameraFormat,
    other: gen_qcameradevice_types.QCameraFormat): gen_qcameradevice_types.QCameraFormat =
  gen_qcameradevice_types.QCameraFormat(h: fcQCameraFormat_new2(other.h), owned: true)

proc staticMetaObject*(_: type gen_qcameradevice_types.QCameraFormat): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraFormat_staticMetaObject())
proc operatorAssign*(self: gen_qcameradevice_types.QCameraDevice, other: gen_qcameradevice_types.QCameraDevice): void =
  fcQCameraDevice_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qcameradevice_types.QCameraDevice, other: gen_qcameradevice_types.QCameraDevice): bool =
  fcQCameraDevice_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qcameradevice_types.QCameraDevice, other: gen_qcameradevice_types.QCameraDevice): bool =
  fcQCameraDevice_operatorNotEqual(self.h, other.h)

proc isNull*(self: gen_qcameradevice_types.QCameraDevice): bool =
  fcQCameraDevice_isNull(self.h)

proc id*(self: gen_qcameradevice_types.QCameraDevice): seq[byte] =
  var v_bytearray = fcQCameraDevice_id(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc description*(self: gen_qcameradevice_types.QCameraDevice): string =
  let v_ms = fcQCameraDevice_description(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isDefault*(self: gen_qcameradevice_types.QCameraDevice): bool =
  fcQCameraDevice_isDefault(self.h)

proc position*(self: gen_qcameradevice_types.QCameraDevice): cint =
  cint(fcQCameraDevice_position(self.h))

proc photoResolutions*(self: gen_qcameradevice_types.QCameraDevice): seq[gen_qsize_types.QSize] =
  var v_ma = fcQCameraDevice_photoResolutions(self.h)
  var vx_ret = newSeq[gen_qsize_types.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize_types.QSize(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc videoFormats*(self: gen_qcameradevice_types.QCameraDevice): seq[gen_qcameradevice_types.QCameraFormat] =
  var v_ma = fcQCameraDevice_videoFormats(self.h)
  var vx_ret = newSeq[gen_qcameradevice_types.QCameraFormat](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcameradevice_types.QCameraFormat(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc create*(T: type gen_qcameradevice_types.QCameraDevice): gen_qcameradevice_types.QCameraDevice =
  gen_qcameradevice_types.QCameraDevice(h: fcQCameraDevice_new(), owned: true)

proc create*(T: type gen_qcameradevice_types.QCameraDevice,
    other: gen_qcameradevice_types.QCameraDevice): gen_qcameradevice_types.QCameraDevice =
  gen_qcameradevice_types.QCameraDevice(h: fcQCameraDevice_new2(other.h), owned: true)

proc staticMetaObject*(_: type gen_qcameradevice_types.QCameraDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraDevice_staticMetaObject())
