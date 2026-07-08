import ./qtpositioning_pkg

{.push raises: [].}

from system/ansi_c import c_free

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QGeoSatelliteInfoAttributeEnum* = distinct cint
template Elevation*(_: type QGeoSatelliteInfoAttributeEnum): untyped = 0
template Azimuth*(_: type QGeoSatelliteInfoAttributeEnum): untyped = 1


type QGeoSatelliteInfoSatelliteSystemEnum* = distinct cint
template Undefined*(_: type QGeoSatelliteInfoSatelliteSystemEnum): untyped = 0
template GPS*(_: type QGeoSatelliteInfoSatelliteSystemEnum): untyped = 1
template GLONASS*(_: type QGeoSatelliteInfoSatelliteSystemEnum): untyped = 2
template GALILEO*(_: type QGeoSatelliteInfoSatelliteSystemEnum): untyped = 3
template BEIDOU*(_: type QGeoSatelliteInfoSatelliteSystemEnum): untyped = 4
template QZSS*(_: type QGeoSatelliteInfoSatelliteSystemEnum): untyped = 5
template Multiple*(_: type QGeoSatelliteInfoSatelliteSystemEnum): untyped = 255
template CustomType*(_: type QGeoSatelliteInfoSatelliteSystemEnum): untyped = 256


import ./gen_qgeosatelliteinfo_types
export gen_qgeosatelliteinfo_types


type cQGeoSatelliteInfo*{.exportc: "QGeoSatelliteInfo", incompleteStruct.} = object

proc fcQGeoSatelliteInfo_operatorAssign(self: pointer, other: pointer): void {.importc: "QGeoSatelliteInfo_operatorAssign".}
proc fcQGeoSatelliteInfo_swap(self: pointer, other: pointer): void {.importc: "QGeoSatelliteInfo_swap".}
proc fcQGeoSatelliteInfo_setSatelliteSystem(self: pointer, system: cint): void {.importc: "QGeoSatelliteInfo_setSatelliteSystem".}
proc fcQGeoSatelliteInfo_satelliteSystem(self: pointer): cint {.importc: "QGeoSatelliteInfo_satelliteSystem".}
proc fcQGeoSatelliteInfo_setSatelliteIdentifier(self: pointer, satId: cint): void {.importc: "QGeoSatelliteInfo_setSatelliteIdentifier".}
proc fcQGeoSatelliteInfo_satelliteIdentifier(self: pointer): cint {.importc: "QGeoSatelliteInfo_satelliteIdentifier".}
proc fcQGeoSatelliteInfo_setSignalStrength(self: pointer, signalStrength: cint): void {.importc: "QGeoSatelliteInfo_setSignalStrength".}
proc fcQGeoSatelliteInfo_signalStrength(self: pointer): cint {.importc: "QGeoSatelliteInfo_signalStrength".}
proc fcQGeoSatelliteInfo_setAttribute(self: pointer, attribute: cint, value: float64): void {.importc: "QGeoSatelliteInfo_setAttribute".}
proc fcQGeoSatelliteInfo_attribute(self: pointer, attribute: cint): float64 {.importc: "QGeoSatelliteInfo_attribute".}
proc fcQGeoSatelliteInfo_removeAttribute(self: pointer, attribute: cint): void {.importc: "QGeoSatelliteInfo_removeAttribute".}
proc fcQGeoSatelliteInfo_hasAttribute(self: pointer, attribute: cint): bool {.importc: "QGeoSatelliteInfo_hasAttribute".}
proc fcQGeoSatelliteInfo_detach(self: pointer): void {.importc: "QGeoSatelliteInfo_detach".}
proc fcQGeoSatelliteInfo_new(): ptr cQGeoSatelliteInfo {.importc: "QGeoSatelliteInfo_new".}
proc fcQGeoSatelliteInfo_new2(other: pointer): ptr cQGeoSatelliteInfo {.importc: "QGeoSatelliteInfo_new2".}
proc fcQGeoSatelliteInfo_delete(self: pointer) {.importc: "QGeoSatelliteInfo_delete".}

proc operatorAssign*(self: gen_qgeosatelliteinfo_types.QGeoSatelliteInfo, other: gen_qgeosatelliteinfo_types.QGeoSatelliteInfo): void =
  fcQGeoSatelliteInfo_operatorAssign(self.h, other.h)

proc swap*(self: gen_qgeosatelliteinfo_types.QGeoSatelliteInfo, other: gen_qgeosatelliteinfo_types.QGeoSatelliteInfo): void =
  fcQGeoSatelliteInfo_swap(self.h, other.h)

proc setSatelliteSystem*(self: gen_qgeosatelliteinfo_types.QGeoSatelliteInfo, system: cint): void =
  fcQGeoSatelliteInfo_setSatelliteSystem(self.h, cint(system))

proc satelliteSystem*(self: gen_qgeosatelliteinfo_types.QGeoSatelliteInfo): cint =
  cint(fcQGeoSatelliteInfo_satelliteSystem(self.h))

proc setSatelliteIdentifier*(self: gen_qgeosatelliteinfo_types.QGeoSatelliteInfo, satId: cint): void =
  fcQGeoSatelliteInfo_setSatelliteIdentifier(self.h, satId)

proc satelliteIdentifier*(self: gen_qgeosatelliteinfo_types.QGeoSatelliteInfo): cint =
  fcQGeoSatelliteInfo_satelliteIdentifier(self.h)

proc setSignalStrength*(self: gen_qgeosatelliteinfo_types.QGeoSatelliteInfo, signalStrength: cint): void =
  fcQGeoSatelliteInfo_setSignalStrength(self.h, signalStrength)

proc signalStrength*(self: gen_qgeosatelliteinfo_types.QGeoSatelliteInfo): cint =
  fcQGeoSatelliteInfo_signalStrength(self.h)

proc setAttribute*(self: gen_qgeosatelliteinfo_types.QGeoSatelliteInfo, attribute: cint, value: float64): void =
  fcQGeoSatelliteInfo_setAttribute(self.h, cint(attribute), value)

proc attribute*(self: gen_qgeosatelliteinfo_types.QGeoSatelliteInfo, attribute: cint): float64 =
  fcQGeoSatelliteInfo_attribute(self.h, cint(attribute))

proc removeAttribute*(self: gen_qgeosatelliteinfo_types.QGeoSatelliteInfo, attribute: cint): void =
  fcQGeoSatelliteInfo_removeAttribute(self.h, cint(attribute))

proc hasAttribute*(self: gen_qgeosatelliteinfo_types.QGeoSatelliteInfo, attribute: cint): bool =
  fcQGeoSatelliteInfo_hasAttribute(self.h, cint(attribute))

proc detach*(self: gen_qgeosatelliteinfo_types.QGeoSatelliteInfo): void =
  fcQGeoSatelliteInfo_detach(self.h)

proc create*(T: type gen_qgeosatelliteinfo_types.QGeoSatelliteInfo): gen_qgeosatelliteinfo_types.QGeoSatelliteInfo =
  let tmp = gen_qgeosatelliteinfo_types.QGeoSatelliteInfo(h: fcQGeoSatelliteInfo_new())
  tmp
proc create*(T: type gen_qgeosatelliteinfo_types.QGeoSatelliteInfo,
    other: gen_qgeosatelliteinfo_types.QGeoSatelliteInfo): gen_qgeosatelliteinfo_types.QGeoSatelliteInfo =
  let tmp = gen_qgeosatelliteinfo_types.QGeoSatelliteInfo(h: fcQGeoSatelliteInfo_new2(other.h))
  tmp
proc delete*(self: gen_qgeosatelliteinfo_types.QGeoSatelliteInfo) =
  fcQGeoSatelliteInfo_delete(self.h)
