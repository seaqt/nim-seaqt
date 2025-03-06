import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qstandardpaths.cpp", cflags).}


type QStandardPathsStandardLocationEnum* = distinct cint
template DesktopLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 0
template DocumentsLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 1
template FontsLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 2
template ApplicationsLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 3
template MusicLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 4
template MoviesLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 5
template PicturesLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 6
template TempLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 7
template HomeLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 8
template DataLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 9
template CacheLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 10
template GenericDataLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 11
template RuntimeLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 12
template ConfigLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 13
template DownloadLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 14
template GenericCacheLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 15
template GenericConfigLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 16
template AppDataLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 17
template AppConfigLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 18
template AppLocalDataLocation*(_: type QStandardPathsStandardLocationEnum): untyped = 9


type QStandardPathsLocateOptionEnum* = distinct cint
template LocateFile*(_: type QStandardPathsLocateOptionEnum): untyped = 0
template LocateDirectory*(_: type QStandardPathsLocateOptionEnum): untyped = 1


import ./gen_qstandardpaths_types
export gen_qstandardpaths_types

import
  ./gen_qobjectdefs_types
export
  gen_qobjectdefs_types

type cQStandardPaths*{.exportc: "QStandardPaths", incompleteStruct.} = object

proc fcQStandardPaths_writableLocation(typeVal: cint): struct_miqt_string {.importc: "QStandardPaths_writableLocation".}
proc fcQStandardPaths_standardLocations(typeVal: cint): struct_miqt_array {.importc: "QStandardPaths_standardLocations".}
proc fcQStandardPaths_locate(typeVal: cint, fileName: struct_miqt_string): struct_miqt_string {.importc: "QStandardPaths_locate".}
proc fcQStandardPaths_locateAll(typeVal: cint, fileName: struct_miqt_string): struct_miqt_array {.importc: "QStandardPaths_locateAll".}
proc fcQStandardPaths_displayName(typeVal: cint): struct_miqt_string {.importc: "QStandardPaths_displayName".}
proc fcQStandardPaths_findExecutable(executableName: struct_miqt_string): struct_miqt_string {.importc: "QStandardPaths_findExecutable".}
proc fcQStandardPaths_enableTestMode(testMode: bool): void {.importc: "QStandardPaths_enableTestMode".}
proc fcQStandardPaths_setTestModeEnabled(testMode: bool): void {.importc: "QStandardPaths_setTestModeEnabled".}
proc fcQStandardPaths_isTestModeEnabled(): bool {.importc: "QStandardPaths_isTestModeEnabled".}
proc fcQStandardPaths_locate3(typeVal: cint, fileName: struct_miqt_string, options: cint): struct_miqt_string {.importc: "QStandardPaths_locate3".}
proc fcQStandardPaths_locateAll3(typeVal: cint, fileName: struct_miqt_string, options: cint): struct_miqt_array {.importc: "QStandardPaths_locateAll3".}
proc fcQStandardPaths_findExecutable2(executableName: struct_miqt_string, paths: struct_miqt_array): struct_miqt_string {.importc: "QStandardPaths_findExecutable2".}
proc fcQStandardPaths_staticMetaObject(): pointer {.importc: "QStandardPaths_staticMetaObject".}

proc writableLocation*(_: type gen_qstandardpaths_types.QStandardPaths, typeVal: cint): string =
  let v_ms = fcQStandardPaths_writableLocation(cint(typeVal))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc standardLocations*(_: type gen_qstandardpaths_types.QStandardPaths, typeVal: cint): seq[string] =
  var v_ma = fcQStandardPaths_standardLocations(cint(typeVal))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc locate*(_: type gen_qstandardpaths_types.QStandardPaths, typeVal: cint, fileName: string): string =
  let v_ms = fcQStandardPaths_locate(cint(typeVal), struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc locateAll*(_: type gen_qstandardpaths_types.QStandardPaths, typeVal: cint, fileName: string): seq[string] =
  var v_ma = fcQStandardPaths_locateAll(cint(typeVal), struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc displayName*(_: type gen_qstandardpaths_types.QStandardPaths, typeVal: cint): string =
  let v_ms = fcQStandardPaths_displayName(cint(typeVal))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc findExecutable*(_: type gen_qstandardpaths_types.QStandardPaths, executableName: string): string =
  let v_ms = fcQStandardPaths_findExecutable(struct_miqt_string(data: executableName, len: csize_t(len(executableName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc enableTestMode*(_: type gen_qstandardpaths_types.QStandardPaths, testMode: bool): void =
  fcQStandardPaths_enableTestMode(testMode)

proc setTestModeEnabled*(_: type gen_qstandardpaths_types.QStandardPaths, testMode: bool): void =
  fcQStandardPaths_setTestModeEnabled(testMode)

proc isTestModeEnabled*(_: type gen_qstandardpaths_types.QStandardPaths, ): bool =
  fcQStandardPaths_isTestModeEnabled()

proc locate*(_: type gen_qstandardpaths_types.QStandardPaths, typeVal: cint, fileName: string, options: cint): string =
  let v_ms = fcQStandardPaths_locate3(cint(typeVal), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(options))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc locateAll*(_: type gen_qstandardpaths_types.QStandardPaths, typeVal: cint, fileName: string, options: cint): seq[string] =
  var v_ma = fcQStandardPaths_locateAll3(cint(typeVal), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(options))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc findExecutable*(_: type gen_qstandardpaths_types.QStandardPaths, executableName: string, paths: seq[string]): string =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  let v_ms = fcQStandardPaths_findExecutable2(struct_miqt_string(data: executableName, len: csize_t(len(executableName))), struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qstandardpaths_types.QStandardPaths): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStandardPaths_staticMetaObject())
