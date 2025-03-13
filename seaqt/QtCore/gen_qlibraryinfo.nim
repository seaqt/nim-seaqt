import ./Qt6Core_libs

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


type QLibraryInfoLibraryPathEnum* = distinct cint
template PrefixPath*(_: type QLibraryInfoLibraryPathEnum): untyped = 0
template DocumentationPath*(_: type QLibraryInfoLibraryPathEnum): untyped = 1
template HeadersPath*(_: type QLibraryInfoLibraryPathEnum): untyped = 2
template LibrariesPath*(_: type QLibraryInfoLibraryPathEnum): untyped = 3
template LibraryExecutablesPath*(_: type QLibraryInfoLibraryPathEnum): untyped = 4
template BinariesPath*(_: type QLibraryInfoLibraryPathEnum): untyped = 5
template PluginsPath*(_: type QLibraryInfoLibraryPathEnum): untyped = 6
template QmlImportsPath*(_: type QLibraryInfoLibraryPathEnum): untyped = 7
template Qml2ImportsPath*(_: type QLibraryInfoLibraryPathEnum): untyped = 7
template ArchDataPath*(_: type QLibraryInfoLibraryPathEnum): untyped = 8
template DataPath*(_: type QLibraryInfoLibraryPathEnum): untyped = 9
template TranslationsPath*(_: type QLibraryInfoLibraryPathEnum): untyped = 10
template ExamplesPath*(_: type QLibraryInfoLibraryPathEnum): untyped = 11
template TestsPath*(_: type QLibraryInfoLibraryPathEnum): untyped = 12
template SettingsPath*(_: type QLibraryInfoLibraryPathEnum): untyped = 100


import ./gen_qlibraryinfo_types
export gen_qlibraryinfo_types

import
  ./gen_qversionnumber_types
export
  gen_qversionnumber_types

type cQLibraryInfo*{.exportc: "QLibraryInfo", incompleteStruct.} = object

proc fcQLibraryInfo_build(): cstring {.importc: "QLibraryInfo_build".}
proc fcQLibraryInfo_isDebugBuild(): bool {.importc: "QLibraryInfo_isDebugBuild".}
proc fcQLibraryInfo_version(): pointer {.importc: "QLibraryInfo_version".}
proc fcQLibraryInfo_path(p: cint): struct_miqt_string {.importc: "QLibraryInfo_path".}
proc fcQLibraryInfo_location(location: cint): struct_miqt_string {.importc: "QLibraryInfo_location".}
proc fcQLibraryInfo_platformPluginArguments(platformName: struct_miqt_string): struct_miqt_array {.importc: "QLibraryInfo_platformPluginArguments".}

proc build*(_: type gen_qlibraryinfo_types.QLibraryInfo): cstring =
  (fcQLibraryInfo_build())

proc isDebugBuild*(_: type gen_qlibraryinfo_types.QLibraryInfo): bool =
  fcQLibraryInfo_isDebugBuild()

proc version*(_: type gen_qlibraryinfo_types.QLibraryInfo): gen_qversionnumber_types.QVersionNumber =
  gen_qversionnumber_types.QVersionNumber(h: fcQLibraryInfo_version(), owned: true)

proc path*(_: type gen_qlibraryinfo_types.QLibraryInfo, p: cint): string =
  let v_ms = fcQLibraryInfo_path(cint(p))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc location*(_: type gen_qlibraryinfo_types.QLibraryInfo, location: cint): string =
  let v_ms = fcQLibraryInfo_location(cint(location))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc platformPluginArguments*(_: type gen_qlibraryinfo_types.QLibraryInfo, platformName: openArray[char]): seq[string] =
  var v_ma = fcQLibraryInfo_platformPluginArguments(struct_miqt_string(data: if len(platformName) > 0: addr platformName[0] else: nil, len: csize_t(len(platformName))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

