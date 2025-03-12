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


type QLibraryInfoLibraryLocationEnum* = distinct cint
template PrefixPath*(_: type QLibraryInfoLibraryLocationEnum): untyped = 0
template DocumentationPath*(_: type QLibraryInfoLibraryLocationEnum): untyped = 1
template HeadersPath*(_: type QLibraryInfoLibraryLocationEnum): untyped = 2
template LibrariesPath*(_: type QLibraryInfoLibraryLocationEnum): untyped = 3
template LibraryExecutablesPath*(_: type QLibraryInfoLibraryLocationEnum): untyped = 4
template BinariesPath*(_: type QLibraryInfoLibraryLocationEnum): untyped = 5
template PluginsPath*(_: type QLibraryInfoLibraryLocationEnum): untyped = 6
template ImportsPath*(_: type QLibraryInfoLibraryLocationEnum): untyped = 7
template Qml2ImportsPath*(_: type QLibraryInfoLibraryLocationEnum): untyped = 8
template ArchDataPath*(_: type QLibraryInfoLibraryLocationEnum): untyped = 9
template DataPath*(_: type QLibraryInfoLibraryLocationEnum): untyped = 10
template TranslationsPath*(_: type QLibraryInfoLibraryLocationEnum): untyped = 11
template ExamplesPath*(_: type QLibraryInfoLibraryLocationEnum): untyped = 12
template TestsPath*(_: type QLibraryInfoLibraryLocationEnum): untyped = 13
template SettingsPath*(_: type QLibraryInfoLibraryLocationEnum): untyped = 100


import ./gen_qlibraryinfo_types
export gen_qlibraryinfo_types

import
  ./gen_qdatetime_types,
  ./gen_qversionnumber_types
export
  gen_qdatetime_types,
  gen_qversionnumber_types

type cQLibraryInfo*{.exportc: "QLibraryInfo", incompleteStruct.} = object

proc fcQLibraryInfo_licensee(): struct_miqt_string {.importc: "QLibraryInfo_licensee".}
proc fcQLibraryInfo_licensedProducts(): struct_miqt_string {.importc: "QLibraryInfo_licensedProducts".}
proc fcQLibraryInfo_buildDate(): pointer {.importc: "QLibraryInfo_buildDate".}
proc fcQLibraryInfo_build(): cstring {.importc: "QLibraryInfo_build".}
proc fcQLibraryInfo_isDebugBuild(): bool {.importc: "QLibraryInfo_isDebugBuild".}
proc fcQLibraryInfo_version(): pointer {.importc: "QLibraryInfo_version".}
proc fcQLibraryInfo_location(param1: cint): struct_miqt_string {.importc: "QLibraryInfo_location".}
proc fcQLibraryInfo_platformPluginArguments(platformName: struct_miqt_string): struct_miqt_array {.importc: "QLibraryInfo_platformPluginArguments".}

proc licensee*(_: type gen_qlibraryinfo_types.QLibraryInfo): string =
  let v_ms = fcQLibraryInfo_licensee()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc licensedProducts*(_: type gen_qlibraryinfo_types.QLibraryInfo): string =
  let v_ms = fcQLibraryInfo_licensedProducts()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc buildDate*(_: type gen_qlibraryinfo_types.QLibraryInfo): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQLibraryInfo_buildDate(), owned: true)

proc build*(_: type gen_qlibraryinfo_types.QLibraryInfo): cstring =
  (fcQLibraryInfo_build())

proc isDebugBuild*(_: type gen_qlibraryinfo_types.QLibraryInfo): bool =
  fcQLibraryInfo_isDebugBuild()

proc version*(_: type gen_qlibraryinfo_types.QLibraryInfo): gen_qversionnumber_types.QVersionNumber =
  gen_qversionnumber_types.QVersionNumber(h: fcQLibraryInfo_version(), owned: true)

proc location*(_: type gen_qlibraryinfo_types.QLibraryInfo, param1: cint): string =
  let v_ms = fcQLibraryInfo_location(cint(param1))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc platformPluginArguments*(_: type gen_qlibraryinfo_types.QLibraryInfo, platformName: string): seq[string] =
  var v_ma = fcQLibraryInfo_platformPluginArguments(struct_miqt_string(data: platformName, len: csize_t(len(platformName))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

