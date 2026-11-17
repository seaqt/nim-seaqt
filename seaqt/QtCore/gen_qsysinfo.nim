import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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


type QSysInfoSizesEnum* = distinct cint
template WordSize*(_: type QSysInfoSizesEnum): untyped = 64


type QSysInfoEndianEnum* = distinct cint
template BigEndian*(_: type QSysInfoEndianEnum): untyped = 0
template LittleEndian*(_: type QSysInfoEndianEnum): untyped = 1
template ByteOrder*(_: type QSysInfoEndianEnum): untyped = 1


type QSysInfoWinVersionEnum* = distinct cint
template WV_None*(_: type QSysInfoWinVersionEnum): untyped = 0
template WV_32s*(_: type QSysInfoWinVersionEnum): untyped = 1
template WV_95*(_: type QSysInfoWinVersionEnum): untyped = 2
template WV_98*(_: type QSysInfoWinVersionEnum): untyped = 3
template WV_Me*(_: type QSysInfoWinVersionEnum): untyped = 4
template WV_DOS_based*(_: type QSysInfoWinVersionEnum): untyped = 15
template WV_NT*(_: type QSysInfoWinVersionEnum): untyped = 16
template WV_2000*(_: type QSysInfoWinVersionEnum): untyped = 32
template WV_XP*(_: type QSysInfoWinVersionEnum): untyped = 48
template WV_2003*(_: type QSysInfoWinVersionEnum): untyped = 64
template WV_VISTA*(_: type QSysInfoWinVersionEnum): untyped = 128
template WV_WINDOWS7*(_: type QSysInfoWinVersionEnum): untyped = 144
template WV_WINDOWS8*(_: type QSysInfoWinVersionEnum): untyped = 160
template WV_WINDOWS8_1*(_: type QSysInfoWinVersionEnum): untyped = 176
template WV_WINDOWS10*(_: type QSysInfoWinVersionEnum): untyped = 192
template WV_NT_based*(_: type QSysInfoWinVersionEnum): untyped = 240
template WV_4_0*(_: type QSysInfoWinVersionEnum): untyped = 16
template WV_5_0*(_: type QSysInfoWinVersionEnum): untyped = 32
template WV_5_1*(_: type QSysInfoWinVersionEnum): untyped = 48
template WV_5_2*(_: type QSysInfoWinVersionEnum): untyped = 64
template WV_6_0*(_: type QSysInfoWinVersionEnum): untyped = 128
template WV_6_1*(_: type QSysInfoWinVersionEnum): untyped = 144
template WV_6_2*(_: type QSysInfoWinVersionEnum): untyped = 160
template WV_6_3*(_: type QSysInfoWinVersionEnum): untyped = 176
template WV_10_0*(_: type QSysInfoWinVersionEnum): untyped = 192
template WV_CE*(_: type QSysInfoWinVersionEnum): untyped = 256
template WV_CENET*(_: type QSysInfoWinVersionEnum): untyped = 512
template WV_CE_5*(_: type QSysInfoWinVersionEnum): untyped = 768
template WV_CE_6*(_: type QSysInfoWinVersionEnum): untyped = 1024
template WV_CE_based*(_: type QSysInfoWinVersionEnum): untyped = 3840


type QSysInfoMacVersionEnum* = distinct cint
template MV_None*(_: type QSysInfoMacVersionEnum): untyped = 65535
template MV_Unknown*(_: type QSysInfoMacVersionEnum): untyped = 0
template MV_9*(_: type QSysInfoMacVersionEnum): untyped = 1
template MV_10_0*(_: type QSysInfoMacVersionEnum): untyped = 2
template MV_10_1*(_: type QSysInfoMacVersionEnum): untyped = 3
template MV_10_2*(_: type QSysInfoMacVersionEnum): untyped = 4
template MV_10_3*(_: type QSysInfoMacVersionEnum): untyped = 5
template MV_10_4*(_: type QSysInfoMacVersionEnum): untyped = 6
template MV_10_5*(_: type QSysInfoMacVersionEnum): untyped = 7
template MV_10_6*(_: type QSysInfoMacVersionEnum): untyped = 8
template MV_10_7*(_: type QSysInfoMacVersionEnum): untyped = 9
template MV_10_8*(_: type QSysInfoMacVersionEnum): untyped = 10
template MV_10_9*(_: type QSysInfoMacVersionEnum): untyped = 11
template MV_10_10*(_: type QSysInfoMacVersionEnum): untyped = 12
template MV_10_11*(_: type QSysInfoMacVersionEnum): untyped = 13
template MV_10_12*(_: type QSysInfoMacVersionEnum): untyped = 14
template MV_CHEETAH*(_: type QSysInfoMacVersionEnum): untyped = 2
template MV_PUMA*(_: type QSysInfoMacVersionEnum): untyped = 3
template MV_JAGUAR*(_: type QSysInfoMacVersionEnum): untyped = 4
template MV_PANTHER*(_: type QSysInfoMacVersionEnum): untyped = 5
template MV_TIGER*(_: type QSysInfoMacVersionEnum): untyped = 6
template MV_LEOPARD*(_: type QSysInfoMacVersionEnum): untyped = 7
template MV_SNOWLEOPARD*(_: type QSysInfoMacVersionEnum): untyped = 8
template MV_LION*(_: type QSysInfoMacVersionEnum): untyped = 9
template MV_MOUNTAINLION*(_: type QSysInfoMacVersionEnum): untyped = 10
template MV_MAVERICKS*(_: type QSysInfoMacVersionEnum): untyped = 11
template MV_YOSEMITE*(_: type QSysInfoMacVersionEnum): untyped = 12
template MV_ELCAPITAN*(_: type QSysInfoMacVersionEnum): untyped = 13
template MV_SIERRA*(_: type QSysInfoMacVersionEnum): untyped = 14
template MV_IOS*(_: type QSysInfoMacVersionEnum): untyped = 256
template MV_IOS_4_3*(_: type QSysInfoMacVersionEnum): untyped = 323
template MV_IOS_5_0*(_: type QSysInfoMacVersionEnum): untyped = 336
template MV_IOS_5_1*(_: type QSysInfoMacVersionEnum): untyped = 337
template MV_IOS_6_0*(_: type QSysInfoMacVersionEnum): untyped = 352
template MV_IOS_6_1*(_: type QSysInfoMacVersionEnum): untyped = 353
template MV_IOS_7_0*(_: type QSysInfoMacVersionEnum): untyped = 368
template MV_IOS_7_1*(_: type QSysInfoMacVersionEnum): untyped = 369
template MV_IOS_8_0*(_: type QSysInfoMacVersionEnum): untyped = 384
template MV_IOS_8_1*(_: type QSysInfoMacVersionEnum): untyped = 385
template MV_IOS_8_2*(_: type QSysInfoMacVersionEnum): untyped = 386
template MV_IOS_8_3*(_: type QSysInfoMacVersionEnum): untyped = 387
template MV_IOS_8_4*(_: type QSysInfoMacVersionEnum): untyped = 388
template MV_IOS_9_0*(_: type QSysInfoMacVersionEnum): untyped = 400
template MV_IOS_9_1*(_: type QSysInfoMacVersionEnum): untyped = 401
template MV_IOS_9_2*(_: type QSysInfoMacVersionEnum): untyped = 402
template MV_IOS_9_3*(_: type QSysInfoMacVersionEnum): untyped = 403
template MV_IOS_10_0*(_: type QSysInfoMacVersionEnum): untyped = 416
template MV_TVOS*(_: type QSysInfoMacVersionEnum): untyped = 512
template MV_TVOS_9_0*(_: type QSysInfoMacVersionEnum): untyped = 656
template MV_TVOS_9_1*(_: type QSysInfoMacVersionEnum): untyped = 657
template MV_TVOS_9_2*(_: type QSysInfoMacVersionEnum): untyped = 658
template MV_TVOS_10_0*(_: type QSysInfoMacVersionEnum): untyped = 672
template MV_WATCHOS*(_: type QSysInfoMacVersionEnum): untyped = 1024
template MV_WATCHOS_2_0*(_: type QSysInfoMacVersionEnum): untyped = 1056
template MV_WATCHOS_2_1*(_: type QSysInfoMacVersionEnum): untyped = 1057
template MV_WATCHOS_2_2*(_: type QSysInfoMacVersionEnum): untyped = 1058
template MV_WATCHOS_3_0*(_: type QSysInfoMacVersionEnum): untyped = 1072


import ./gen_qsysinfo_types
export gen_qsysinfo_types


type cQSysInfo*{.exportc: "QSysInfo", incompleteStruct.} = object

proc fcQSysInfo_windowsVersion(): cint {.importc: "QSysInfo_windowsVersion".}
proc fcQSysInfo_macVersion(): cint {.importc: "QSysInfo_macVersion".}
proc fcQSysInfo_buildCpuArchitecture(): struct_seaqt_string {.importc: "QSysInfo_buildCpuArchitecture".}
proc fcQSysInfo_currentCpuArchitecture(): struct_seaqt_string {.importc: "QSysInfo_currentCpuArchitecture".}
proc fcQSysInfo_buildAbi(): struct_seaqt_string {.importc: "QSysInfo_buildAbi".}
proc fcQSysInfo_kernelType(): struct_seaqt_string {.importc: "QSysInfo_kernelType".}
proc fcQSysInfo_kernelVersion(): struct_seaqt_string {.importc: "QSysInfo_kernelVersion".}
proc fcQSysInfo_productType(): struct_seaqt_string {.importc: "QSysInfo_productType".}
proc fcQSysInfo_productVersion(): struct_seaqt_string {.importc: "QSysInfo_productVersion".}
proc fcQSysInfo_prettyProductName(): struct_seaqt_string {.importc: "QSysInfo_prettyProductName".}
proc fcQSysInfo_machineHostName(): struct_seaqt_string {.importc: "QSysInfo_machineHostName".}
proc fcQSysInfo_machineUniqueId(): struct_seaqt_string {.importc: "QSysInfo_machineUniqueId".}
proc fcQSysInfo_bootUniqueId(): struct_seaqt_string {.importc: "QSysInfo_bootUniqueId".}
proc fcQSysInfo_delete(self: pointer) {.importc: "QSysInfo_delete".}

proc windowsVersion*(_: type gen_qsysinfo_types.QSysInfo): cint =
  cint(fcQSysInfo_windowsVersion())

proc macVersion*(_: type gen_qsysinfo_types.QSysInfo): cint =
  cint(fcQSysInfo_macVersion())

proc buildCpuArchitecture*(_: type gen_qsysinfo_types.QSysInfo): string =
  let v_ms = fcQSysInfo_buildCpuArchitecture()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc currentCpuArchitecture*(_: type gen_qsysinfo_types.QSysInfo): string =
  let v_ms = fcQSysInfo_currentCpuArchitecture()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc buildAbi*(_: type gen_qsysinfo_types.QSysInfo): string =
  let v_ms = fcQSysInfo_buildAbi()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc kernelType*(_: type gen_qsysinfo_types.QSysInfo): string =
  let v_ms = fcQSysInfo_kernelType()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc kernelVersion*(_: type gen_qsysinfo_types.QSysInfo): string =
  let v_ms = fcQSysInfo_kernelVersion()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc productType*(_: type gen_qsysinfo_types.QSysInfo): string =
  let v_ms = fcQSysInfo_productType()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc productVersion*(_: type gen_qsysinfo_types.QSysInfo): string =
  let v_ms = fcQSysInfo_productVersion()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc prettyProductName*(_: type gen_qsysinfo_types.QSysInfo): string =
  let v_ms = fcQSysInfo_prettyProductName()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc machineHostName*(_: type gen_qsysinfo_types.QSysInfo): string =
  let v_ms = fcQSysInfo_machineHostName()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc machineUniqueId*(_: type gen_qsysinfo_types.QSysInfo): seq[byte] =
  var v_bytearray = fcQSysInfo_machineUniqueId()
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc bootUniqueId*(_: type gen_qsysinfo_types.QSysInfo): seq[byte] =
  var v_bytearray = fcQSysInfo_bootUniqueId()
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc delete*(self: gen_qsysinfo_types.QSysInfo) =
  fcQSysInfo_delete(self.h)
