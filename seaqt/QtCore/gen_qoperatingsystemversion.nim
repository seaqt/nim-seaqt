import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qoperatingsystemversion.cpp", cflags).}


type QOperatingSystemVersionBaseOSTypeEnum* = distinct cint
template Unknown*(_: type QOperatingSystemVersionBaseOSTypeEnum): untyped = 0
template Windows*(_: type QOperatingSystemVersionBaseOSTypeEnum): untyped = 1
template MacOS*(_: type QOperatingSystemVersionBaseOSTypeEnum): untyped = 2
template IOS*(_: type QOperatingSystemVersionBaseOSTypeEnum): untyped = 3
template TvOS*(_: type QOperatingSystemVersionBaseOSTypeEnum): untyped = 4
template WatchOS*(_: type QOperatingSystemVersionBaseOSTypeEnum): untyped = 5
template Android*(_: type QOperatingSystemVersionBaseOSTypeEnum): untyped = 6


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

import
  ./gen_qversionnumber_types
export
  gen_qversionnumber_types

type cQOperatingSystemVersionBase*{.exportc: "QOperatingSystemVersionBase", incompleteStruct.} = object
type cQOperatingSystemVersion*{.exportc: "QOperatingSystemVersion", incompleteStruct.} = object

proc fcQOperatingSystemVersionBase_current(): pointer {.importc: "QOperatingSystemVersionBase_current".}
proc fcQOperatingSystemVersionBase_name(osversion: pointer): struct_miqt_string {.importc: "QOperatingSystemVersionBase_name".}
proc fcQOperatingSystemVersionBase_currentType(): cint {.importc: "QOperatingSystemVersionBase_currentType".}
proc fcQOperatingSystemVersionBase_version(self: pointer, ): pointer {.importc: "QOperatingSystemVersionBase_version".}
proc fcQOperatingSystemVersionBase_majorVersion(self: pointer, ): cint {.importc: "QOperatingSystemVersionBase_majorVersion".}
proc fcQOperatingSystemVersionBase_minorVersion(self: pointer, ): cint {.importc: "QOperatingSystemVersionBase_minorVersion".}
proc fcQOperatingSystemVersionBase_microVersion(self: pointer, ): cint {.importc: "QOperatingSystemVersionBase_microVersion".}
proc fcQOperatingSystemVersionBase_segmentCount(self: pointer, ): cint {.importc: "QOperatingSystemVersionBase_segmentCount".}
proc fcQOperatingSystemVersionBase_typeX(self: pointer, ): cint {.importc: "QOperatingSystemVersionBase_type".}
proc fcQOperatingSystemVersionBase_name2(self: pointer, ): struct_miqt_string {.importc: "QOperatingSystemVersionBase_name2".}
proc fcQOperatingSystemVersionBase_new(osType: cint, vmajor: cint): ptr cQOperatingSystemVersionBase {.importc: "QOperatingSystemVersionBase_new".}
proc fcQOperatingSystemVersionBase_new2(param1: pointer): ptr cQOperatingSystemVersionBase {.importc: "QOperatingSystemVersionBase_new2".}
proc fcQOperatingSystemVersionBase_new3(osType: cint, vmajor: cint, vminor: cint): ptr cQOperatingSystemVersionBase {.importc: "QOperatingSystemVersionBase_new3".}
proc fcQOperatingSystemVersionBase_new4(osType: cint, vmajor: cint, vminor: cint, vmicro: cint): ptr cQOperatingSystemVersionBase {.importc: "QOperatingSystemVersionBase_new4".}
proc fcQOperatingSystemVersionBase_delete(self: pointer) {.importc: "QOperatingSystemVersionBase_delete".}
proc fcQOperatingSystemVersion_current(): pointer {.importc: "QOperatingSystemVersion_current".}
proc fcQOperatingSystemVersion_currentType(): cint {.importc: "QOperatingSystemVersion_currentType".}
proc fcQOperatingSystemVersion_version(self: pointer, ): pointer {.importc: "QOperatingSystemVersion_version".}
proc fcQOperatingSystemVersion_majorVersion(self: pointer, ): cint {.importc: "QOperatingSystemVersion_majorVersion".}
proc fcQOperatingSystemVersion_minorVersion(self: pointer, ): cint {.importc: "QOperatingSystemVersion_minorVersion".}
proc fcQOperatingSystemVersion_microVersion(self: pointer, ): cint {.importc: "QOperatingSystemVersion_microVersion".}
proc fcQOperatingSystemVersion_segmentCount(self: pointer, ): cint {.importc: "QOperatingSystemVersion_segmentCount".}
proc fcQOperatingSystemVersion_typeX(self: pointer, ): cint {.importc: "QOperatingSystemVersion_type".}
proc fcQOperatingSystemVersion_name(self: pointer, ): struct_miqt_string {.importc: "QOperatingSystemVersion_name".}
proc fcQOperatingSystemVersion_new(osversion: pointer): ptr cQOperatingSystemVersion {.importc: "QOperatingSystemVersion_new".}
proc fcQOperatingSystemVersion_new2(osType: cint, vmajor: cint): ptr cQOperatingSystemVersion {.importc: "QOperatingSystemVersion_new2".}
proc fcQOperatingSystemVersion_new3(param1: pointer): ptr cQOperatingSystemVersion {.importc: "QOperatingSystemVersion_new3".}
proc fcQOperatingSystemVersion_new4(osType: cint, vmajor: cint, vminor: cint): ptr cQOperatingSystemVersion {.importc: "QOperatingSystemVersion_new4".}
proc fcQOperatingSystemVersion_new5(osType: cint, vmajor: cint, vminor: cint, vmicro: cint): ptr cQOperatingSystemVersion {.importc: "QOperatingSystemVersion_new5".}
proc fcQOperatingSystemVersion_delete(self: pointer) {.importc: "QOperatingSystemVersion_delete".}

proc current*(_: type gen_qoperatingsystemversion_types.QOperatingSystemVersionBase, ): gen_qoperatingsystemversion_types.QOperatingSystemVersionBase =
  gen_qoperatingsystemversion_types.QOperatingSystemVersionBase(h: fcQOperatingSystemVersionBase_current())

proc name*(_: type gen_qoperatingsystemversion_types.QOperatingSystemVersionBase, osversion: gen_qoperatingsystemversion_types.QOperatingSystemVersionBase): string =
  let v_ms = fcQOperatingSystemVersionBase_name(osversion.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc currentType*(_: type gen_qoperatingsystemversion_types.QOperatingSystemVersionBase, ): cint =
  cint(fcQOperatingSystemVersionBase_currentType())

proc version*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersionBase, ): gen_qversionnumber_types.QVersionNumber =
  gen_qversionnumber_types.QVersionNumber(h: fcQOperatingSystemVersionBase_version(self.h))

proc majorVersion*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersionBase, ): cint =
  fcQOperatingSystemVersionBase_majorVersion(self.h)

proc minorVersion*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersionBase, ): cint =
  fcQOperatingSystemVersionBase_minorVersion(self.h)

proc microVersion*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersionBase, ): cint =
  fcQOperatingSystemVersionBase_microVersion(self.h)

proc segmentCount*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersionBase, ): cint =
  fcQOperatingSystemVersionBase_segmentCount(self.h)

proc typeX*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersionBase, ): cint =
  cint(fcQOperatingSystemVersionBase_typeX(self.h))

proc name*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersionBase, ): string =
  let v_ms = fcQOperatingSystemVersionBase_name2(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qoperatingsystemversion_types.QOperatingSystemVersionBase,
    osType: cint, vmajor: cint): gen_qoperatingsystemversion_types.QOperatingSystemVersionBase =
  gen_qoperatingsystemversion_types.QOperatingSystemVersionBase(h: fcQOperatingSystemVersionBase_new(cint(osType), vmajor))

proc create*(T: type gen_qoperatingsystemversion_types.QOperatingSystemVersionBase,
    param1: gen_qoperatingsystemversion_types.QOperatingSystemVersionBase): gen_qoperatingsystemversion_types.QOperatingSystemVersionBase =
  gen_qoperatingsystemversion_types.QOperatingSystemVersionBase(h: fcQOperatingSystemVersionBase_new2(param1.h))

proc create*(T: type gen_qoperatingsystemversion_types.QOperatingSystemVersionBase,
    osType: cint, vmajor: cint, vminor: cint): gen_qoperatingsystemversion_types.QOperatingSystemVersionBase =
  gen_qoperatingsystemversion_types.QOperatingSystemVersionBase(h: fcQOperatingSystemVersionBase_new3(cint(osType), vmajor, vminor))

proc create*(T: type gen_qoperatingsystemversion_types.QOperatingSystemVersionBase,
    osType: cint, vmajor: cint, vminor: cint, vmicro: cint): gen_qoperatingsystemversion_types.QOperatingSystemVersionBase =
  gen_qoperatingsystemversion_types.QOperatingSystemVersionBase(h: fcQOperatingSystemVersionBase_new4(cint(osType), vmajor, vminor, vmicro))

proc delete*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersionBase) =
  fcQOperatingSystemVersionBase_delete(self.h)
proc current*(_: type gen_qoperatingsystemversion_types.QOperatingSystemVersion, ): gen_qoperatingsystemversion_types.QOperatingSystemVersion =
  gen_qoperatingsystemversion_types.QOperatingSystemVersion(h: fcQOperatingSystemVersion_current())

proc currentType*(_: type gen_qoperatingsystemversion_types.QOperatingSystemVersion, ): cint =
  cint(fcQOperatingSystemVersion_currentType())

proc version*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersion, ): gen_qversionnumber_types.QVersionNumber =
  gen_qversionnumber_types.QVersionNumber(h: fcQOperatingSystemVersion_version(self.h))

proc majorVersion*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersion, ): cint =
  fcQOperatingSystemVersion_majorVersion(self.h)

proc minorVersion*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersion, ): cint =
  fcQOperatingSystemVersion_minorVersion(self.h)

proc microVersion*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersion, ): cint =
  fcQOperatingSystemVersion_microVersion(self.h)

proc segmentCount*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersion, ): cint =
  fcQOperatingSystemVersion_segmentCount(self.h)

proc typeX*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersion, ): cint =
  cint(fcQOperatingSystemVersion_typeX(self.h))

proc name*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersion, ): string =
  let v_ms = fcQOperatingSystemVersion_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qoperatingsystemversion_types.QOperatingSystemVersion,
    osversion: gen_qoperatingsystemversion_types.QOperatingSystemVersionBase): gen_qoperatingsystemversion_types.QOperatingSystemVersion =
  gen_qoperatingsystemversion_types.QOperatingSystemVersion(h: fcQOperatingSystemVersion_new(osversion.h))

proc create*(T: type gen_qoperatingsystemversion_types.QOperatingSystemVersion,
    osType: cint, vmajor: cint): gen_qoperatingsystemversion_types.QOperatingSystemVersion =
  gen_qoperatingsystemversion_types.QOperatingSystemVersion(h: fcQOperatingSystemVersion_new2(cint(osType), vmajor))

proc create*(T: type gen_qoperatingsystemversion_types.QOperatingSystemVersion,
    param1: gen_qoperatingsystemversion_types.QOperatingSystemVersion): gen_qoperatingsystemversion_types.QOperatingSystemVersion =
  gen_qoperatingsystemversion_types.QOperatingSystemVersion(h: fcQOperatingSystemVersion_new3(param1.h))

proc create*(T: type gen_qoperatingsystemversion_types.QOperatingSystemVersion,
    osType: cint, vmajor: cint, vminor: cint): gen_qoperatingsystemversion_types.QOperatingSystemVersion =
  gen_qoperatingsystemversion_types.QOperatingSystemVersion(h: fcQOperatingSystemVersion_new4(cint(osType), vmajor, vminor))

proc create*(T: type gen_qoperatingsystemversion_types.QOperatingSystemVersion,
    osType: cint, vmajor: cint, vminor: cint, vmicro: cint): gen_qoperatingsystemversion_types.QOperatingSystemVersion =
  gen_qoperatingsystemversion_types.QOperatingSystemVersion(h: fcQOperatingSystemVersion_new5(cint(osType), vmajor, vminor, vmicro))

proc delete*(self: gen_qoperatingsystemversion_types.QOperatingSystemVersion) =
  fcQOperatingSystemVersion_delete(self.h)
