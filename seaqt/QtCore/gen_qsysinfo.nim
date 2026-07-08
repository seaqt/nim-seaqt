import ./qtcore_pkg

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


type QSysInfoSizesEnum* = distinct cint
template WordSize*(_: type QSysInfoSizesEnum): untyped = 64


type QSysInfoEndianEnum* = distinct cint
template BigEndian*(_: type QSysInfoEndianEnum): untyped = 0
template LittleEndian*(_: type QSysInfoEndianEnum): untyped = 1
template ByteOrder*(_: type QSysInfoEndianEnum): untyped = 1


import ./gen_qsysinfo_types
export gen_qsysinfo_types


type cQSysInfo*{.exportc: "QSysInfo", incompleteStruct.} = object

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
