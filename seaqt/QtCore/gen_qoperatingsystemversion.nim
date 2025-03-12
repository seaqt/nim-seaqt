import ./Qt5Core_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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


type QOperatingSystemVersionOSTypeEnum* = distinct cint
template Unknown*(_: type QOperatingSystemVersionOSTypeEnum): untyped = 0
template Windows*(_: type QOperatingSystemVersionOSTypeEnum): untyped = 1
template MacOS*(_: type QOperatingSystemVersionOSTypeEnum): untyped = 2
template IOS*(_: type QOperatingSystemVersionOSTypeEnum): untyped = 3
template TvOS*(_: type QOperatingSystemVersionOSTypeEnum): untyped = 4
template WatchOS*(_: type QOperatingSystemVersionOSTypeEnum): untyped = 5
template Android*(_: type QOperatingSystemVersionOSTypeEnum): untyped = 6


import ./gen_qoperatingsystemversion_types
export gen_qoperatingsystemversion_types


type cQOperatingSystemVersion*{.exportc: "QOperatingSystemVersion", incompleteStruct.} = object

proc fcQOperatingSystemVersion_current(): pointer {.importc: "QOperatingSystemVersion_current".}
proc fcQOperatingSystemVersion_currentType(): cint {.importc: "QOperatingSystemVersion_currentType".}
proc fcQOperatingSystemVersion_majorVersion(self: pointer): cint {.importc: "QOperatingSystemVersion_majorVersion".}
proc fcQOperatingSystemVersion_minorVersion(self: pointer): cint {.importc: "QOperatingSystemVersion_minorVersion".}
proc fcQOperatingSystemVersion_microVersion(self: pointer): cint {.importc: "QOperatingSystemVersion_microVersion".}
proc fcQOperatingSystemVersion_segmentCount(self: pointer): cint {.importc: "QOperatingSystemVersion_segmentCount".}
proc fcQOperatingSystemVersion_typeX(self: pointer): cint {.importc: "QOperatingSystemVersion_type".}
proc fcQOperatingSystemVersion_name(self: pointer): struct_miqt_string {.importc: "QOperatingSystemVersion_name".}
proc fcQOperatingSystemVersion_new(osType: cint, vmajor: cint): ptr cQOperatingSystemVersion {.importc: "QOperatingSystemVersion_new".}
proc fcQOperatingSystemVersion_new2(osType: cint, vmajor: cint, vminor: cint): ptr cQOperatingSystemVersion {.importc: "QOperatingSystemVersion_new2".}
proc fcQOperatingSystemVersion_new3(osType: cint, vmajor: cint, vminor: cint, vmicro: cint): ptr cQOperatingSystemVersion {.importc: "QOperatingSystemVersion_new3".}

proc current*(_: type gen_qoperatingsystemversion_types.QOperatingSystemVersion): gen_qoperatingsystemversion_types.QOperatingSystemVersion =
  gen_qoperatingsystemversion_types.QOperatingSystemVersion(h: fcQOperatingSystemVersion_current(), owned: true)

proc currentType*(_: type gen_qoperatingsystemversion_types.QOperatingSystemVersion): cint =
  cint(fcQOperatingSystemVersion_currentType())

proc majorVersion*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersion): cint =
  fcQOperatingSystemVersion_majorVersion(self.h)

proc minorVersion*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersion): cint =
  fcQOperatingSystemVersion_minorVersion(self.h)

proc microVersion*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersion): cint =
  fcQOperatingSystemVersion_microVersion(self.h)

proc segmentCount*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersion): cint =
  fcQOperatingSystemVersion_segmentCount(self.h)

proc typeX*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersion): cint =
  cint(fcQOperatingSystemVersion_typeX(self.h))

proc name*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersion): string =
  let v_ms = fcQOperatingSystemVersion_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qoperatingsystemversion_types.QOperatingSystemVersion,
    osType: cint, vmajor: cint): gen_qoperatingsystemversion_types.QOperatingSystemVersion =
  gen_qoperatingsystemversion_types.QOperatingSystemVersion(h: fcQOperatingSystemVersion_new(cint(osType), vmajor), owned: true)

proc create*(T: type gen_qoperatingsystemversion_types.QOperatingSystemVersion,
    osType: cint, vmajor: cint, vminor: cint): gen_qoperatingsystemversion_types.QOperatingSystemVersion =
  gen_qoperatingsystemversion_types.QOperatingSystemVersion(h: fcQOperatingSystemVersion_new2(cint(osType), vmajor, vminor), owned: true)

proc create*(T: type gen_qoperatingsystemversion_types.QOperatingSystemVersion,
    osType: cint, vmajor: cint, vminor: cint, vmicro: cint): gen_qoperatingsystemversion_types.QOperatingSystemVersion =
  gen_qoperatingsystemversion_types.QOperatingSystemVersion(h: fcQOperatingSystemVersion_new3(cint(osType), vmajor, vminor, vmicro), owned: true)

