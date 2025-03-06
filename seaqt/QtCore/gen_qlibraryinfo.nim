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
{.compile("gen_qlibraryinfo.cpp", cflags).}


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
proc fcQLibraryInfo_delete(self: pointer) {.importc: "QLibraryInfo_delete".}


func init*(T: type gen_qlibraryinfo_types.QLibraryInfo, h: ptr cQLibraryInfo): gen_qlibraryinfo_types.QLibraryInfo =
  T(h: h)
proc build*(_: type gen_qlibraryinfo_types.QLibraryInfo, ): cstring =
  (fcQLibraryInfo_build())

proc isDebugBuild*(_: type gen_qlibraryinfo_types.QLibraryInfo, ): bool =
  fcQLibraryInfo_isDebugBuild()

proc version*(_: type gen_qlibraryinfo_types.QLibraryInfo, ): gen_qversionnumber_types.QVersionNumber =
  gen_qversionnumber_types.QVersionNumber(h: fcQLibraryInfo_version())

proc path*(_: type gen_qlibraryinfo_types.QLibraryInfo, p: cint): string =
  let v_ms = fcQLibraryInfo_path(cint(p))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc location*(_: type gen_qlibraryinfo_types.QLibraryInfo, location: cint): string =
  let v_ms = fcQLibraryInfo_location(cint(location))
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
  vx_ret

proc delete*(self: gen_qlibraryinfo_types.QLibraryInfo) =
  fcQLibraryInfo_delete(self.h)
