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
{.compile("gen_qtouchdevice.cpp", cflags).}


type QTouchDeviceDeviceTypeEnum* = distinct cint
template TouchScreen*(_: type QTouchDeviceDeviceTypeEnum): untyped = 0
template TouchPad*(_: type QTouchDeviceDeviceTypeEnum): untyped = 1


type QTouchDeviceCapabilityFlagEnum* = distinct cint
template Position*(_: type QTouchDeviceCapabilityFlagEnum): untyped = 1
template Area*(_: type QTouchDeviceCapabilityFlagEnum): untyped = 2
template Pressure*(_: type QTouchDeviceCapabilityFlagEnum): untyped = 4
template Velocity*(_: type QTouchDeviceCapabilityFlagEnum): untyped = 8
template RawPositions*(_: type QTouchDeviceCapabilityFlagEnum): untyped = 16
template NormalizedPosition*(_: type QTouchDeviceCapabilityFlagEnum): untyped = 32
template MouseEmulation*(_: type QTouchDeviceCapabilityFlagEnum): untyped = 64


import ./gen_qtouchdevice_types
export gen_qtouchdevice_types

import
  ../QtCore/gen_qobjectdefs_types
export
  gen_qobjectdefs_types

type cQTouchDevice*{.exportc: "QTouchDevice", incompleteStruct.} = object

proc fcQTouchDevice_devices(): struct_miqt_array {.importc: "QTouchDevice_devices".}
proc fcQTouchDevice_name(self: pointer, ): struct_miqt_string {.importc: "QTouchDevice_name".}
proc fcQTouchDevice_typeX(self: pointer, ): cint {.importc: "QTouchDevice_type".}
proc fcQTouchDevice_capabilities(self: pointer, ): cint {.importc: "QTouchDevice_capabilities".}
proc fcQTouchDevice_maximumTouchPoints(self: pointer, ): cint {.importc: "QTouchDevice_maximumTouchPoints".}
proc fcQTouchDevice_setName(self: pointer, name: struct_miqt_string): void {.importc: "QTouchDevice_setName".}
proc fcQTouchDevice_setType(self: pointer, devType: cint): void {.importc: "QTouchDevice_setType".}
proc fcQTouchDevice_setCapabilities(self: pointer, caps: cint): void {.importc: "QTouchDevice_setCapabilities".}
proc fcQTouchDevice_setMaximumTouchPoints(self: pointer, max: cint): void {.importc: "QTouchDevice_setMaximumTouchPoints".}
proc fcQTouchDevice_new(): ptr cQTouchDevice {.importc: "QTouchDevice_new".}
proc fcQTouchDevice_staticMetaObject(): pointer {.importc: "QTouchDevice_staticMetaObject".}
proc fcQTouchDevice_delete(self: pointer) {.importc: "QTouchDevice_delete".}

proc devices*(_: type gen_qtouchdevice_types.QTouchDevice, ): seq[gen_qtouchdevice_types.QTouchDevice] =
  var v_ma = fcQTouchDevice_devices()
  var vx_ret = newSeq[gen_qtouchdevice_types.QTouchDevice](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtouchdevice_types.QTouchDevice(h: v_outCast[i])
  vx_ret

proc name*(self: gen_qtouchdevice_types.QTouchDevice, ): string =
  let v_ms = fcQTouchDevice_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc typeX*(self: gen_qtouchdevice_types.QTouchDevice, ): cint =
  cint(fcQTouchDevice_typeX(self.h))

proc capabilities*(self: gen_qtouchdevice_types.QTouchDevice, ): cint =
  cint(fcQTouchDevice_capabilities(self.h))

proc maximumTouchPoints*(self: gen_qtouchdevice_types.QTouchDevice, ): cint =
  fcQTouchDevice_maximumTouchPoints(self.h)

proc setName*(self: gen_qtouchdevice_types.QTouchDevice, name: string): void =
  fcQTouchDevice_setName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc setType*(self: gen_qtouchdevice_types.QTouchDevice, devType: cint): void =
  fcQTouchDevice_setType(self.h, cint(devType))

proc setCapabilities*(self: gen_qtouchdevice_types.QTouchDevice, caps: cint): void =
  fcQTouchDevice_setCapabilities(self.h, cint(caps))

proc setMaximumTouchPoints*(self: gen_qtouchdevice_types.QTouchDevice, max: cint): void =
  fcQTouchDevice_setMaximumTouchPoints(self.h, max)

proc create*(T: type gen_qtouchdevice_types.QTouchDevice): gen_qtouchdevice_types.QTouchDevice =
  gen_qtouchdevice_types.QTouchDevice(h: fcQTouchDevice_new())

proc staticMetaObject*(_: type gen_qtouchdevice_types.QTouchDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTouchDevice_staticMetaObject())
proc delete*(self: gen_qtouchdevice_types.QTouchDevice) =
  fcQTouchDevice_delete(self.h)
