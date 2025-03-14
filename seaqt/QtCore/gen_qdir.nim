import ./qtcore_pkg

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


type QDirFilterEnum* = distinct cint
template Dirs*(_: type QDirFilterEnum): untyped = 1
template Files*(_: type QDirFilterEnum): untyped = 2
template Drives*(_: type QDirFilterEnum): untyped = 4
template NoSymLinks*(_: type QDirFilterEnum): untyped = 8
template AllEntries*(_: type QDirFilterEnum): untyped = 7
template TypeMask*(_: type QDirFilterEnum): untyped = 15
template Readable*(_: type QDirFilterEnum): untyped = 16
template Writable*(_: type QDirFilterEnum): untyped = 32
template Executable*(_: type QDirFilterEnum): untyped = 64
template PermissionMask*(_: type QDirFilterEnum): untyped = 112
template Modified*(_: type QDirFilterEnum): untyped = 128
template Hidden*(_: type QDirFilterEnum): untyped = 256
template System*(_: type QDirFilterEnum): untyped = 512
template AccessMask*(_: type QDirFilterEnum): untyped = 1008
template AllDirs*(_: type QDirFilterEnum): untyped = 1024
template CaseSensitive*(_: type QDirFilterEnum): untyped = 2048
template NoDot*(_: type QDirFilterEnum): untyped = 8192
template NoDotDot*(_: type QDirFilterEnum): untyped = 16384
template NoDotAndDotDot*(_: type QDirFilterEnum): untyped = 24576
template NoFilter*(_: type QDirFilterEnum): untyped = -1


type QDirSortFlagEnum* = distinct cint
template Name*(_: type QDirSortFlagEnum): untyped = 0
template Time*(_: type QDirSortFlagEnum): untyped = 1
template Size*(_: type QDirSortFlagEnum): untyped = 2
template Unsorted*(_: type QDirSortFlagEnum): untyped = 3
template SortByMask*(_: type QDirSortFlagEnum): untyped = 3
template DirsFirst*(_: type QDirSortFlagEnum): untyped = 4
template Reversed*(_: type QDirSortFlagEnum): untyped = 8
template IgnoreCase*(_: type QDirSortFlagEnum): untyped = 16
template DirsLast*(_: type QDirSortFlagEnum): untyped = 32
template LocaleAware*(_: type QDirSortFlagEnum): untyped = 64
template Type*(_: type QDirSortFlagEnum): untyped = 128
template NoSort*(_: type QDirSortFlagEnum): untyped = -1


import ./gen_qdir_types
export gen_qdir_types

import
  ./gen_qchar_types,
  ./gen_qfileinfo_types
export
  gen_qchar_types,
  gen_qfileinfo_types

type cQDir*{.exportc: "QDir", incompleteStruct.} = object

proc fcQDir_operatorAssign(self: pointer, param1: pointer): void {.importc: "QDir_operatorAssign".}
proc fcQDir_swap(self: pointer, other: pointer): void {.importc: "QDir_swap".}
proc fcQDir_setPath(self: pointer, path: struct_miqt_string): void {.importc: "QDir_setPath".}
proc fcQDir_path(self: pointer): struct_miqt_string {.importc: "QDir_path".}
proc fcQDir_absolutePath(self: pointer): struct_miqt_string {.importc: "QDir_absolutePath".}
proc fcQDir_canonicalPath(self: pointer): struct_miqt_string {.importc: "QDir_canonicalPath".}
proc fcQDir_setSearchPaths(prefix: struct_miqt_string, searchPaths: struct_miqt_array): void {.importc: "QDir_setSearchPaths".}
proc fcQDir_addSearchPath(prefix: struct_miqt_string, path: struct_miqt_string): void {.importc: "QDir_addSearchPath".}
proc fcQDir_searchPaths(prefix: struct_miqt_string): struct_miqt_array {.importc: "QDir_searchPaths".}
proc fcQDir_dirName(self: pointer): struct_miqt_string {.importc: "QDir_dirName".}
proc fcQDir_filePath(self: pointer, fileName: struct_miqt_string): struct_miqt_string {.importc: "QDir_filePath".}
proc fcQDir_absoluteFilePath(self: pointer, fileName: struct_miqt_string): struct_miqt_string {.importc: "QDir_absoluteFilePath".}
proc fcQDir_relativeFilePath(self: pointer, fileName: struct_miqt_string): struct_miqt_string {.importc: "QDir_relativeFilePath".}
proc fcQDir_toNativeSeparators(pathName: struct_miqt_string): struct_miqt_string {.importc: "QDir_toNativeSeparators".}
proc fcQDir_fromNativeSeparators(pathName: struct_miqt_string): struct_miqt_string {.importc: "QDir_fromNativeSeparators".}
proc fcQDir_cd(self: pointer, dirName: struct_miqt_string): bool {.importc: "QDir_cd".}
proc fcQDir_cdUp(self: pointer): bool {.importc: "QDir_cdUp".}
proc fcQDir_nameFilters(self: pointer): struct_miqt_array {.importc: "QDir_nameFilters".}
proc fcQDir_setNameFilters(self: pointer, nameFilters: struct_miqt_array): void {.importc: "QDir_setNameFilters".}
proc fcQDir_filter(self: pointer): cint {.importc: "QDir_filter".}
proc fcQDir_setFilter(self: pointer, filter: cint): void {.importc: "QDir_setFilter".}
proc fcQDir_sorting(self: pointer): cint {.importc: "QDir_sorting".}
proc fcQDir_setSorting(self: pointer, sort: cint): void {.importc: "QDir_setSorting".}
proc fcQDir_count(self: pointer): cuint {.importc: "QDir_count".}
proc fcQDir_isEmpty(self: pointer): bool {.importc: "QDir_isEmpty".}
proc fcQDir_operatorSubscript(self: pointer, param1: cint): struct_miqt_string {.importc: "QDir_operatorSubscript".}
proc fcQDir_nameFiltersFromString(nameFilter: struct_miqt_string): struct_miqt_array {.importc: "QDir_nameFiltersFromString".}
proc fcQDir_entryList(self: pointer): struct_miqt_array {.importc: "QDir_entryList".}
proc fcQDir_entryListWithNameFilters(self: pointer, nameFilters: struct_miqt_array): struct_miqt_array {.importc: "QDir_entryListWithNameFilters".}
proc fcQDir_entryInfoList(self: pointer): struct_miqt_array {.importc: "QDir_entryInfoList".}
proc fcQDir_entryInfoListWithNameFilters(self: pointer, nameFilters: struct_miqt_array): struct_miqt_array {.importc: "QDir_entryInfoListWithNameFilters".}
proc fcQDir_mkdir(self: pointer, dirName: struct_miqt_string): bool {.importc: "QDir_mkdir".}
proc fcQDir_mkdir2(self: pointer, dirName: struct_miqt_string, permissions: cint): bool {.importc: "QDir_mkdir2".}
proc fcQDir_rmdir(self: pointer, dirName: struct_miqt_string): bool {.importc: "QDir_rmdir".}
proc fcQDir_mkpath(self: pointer, dirPath: struct_miqt_string): bool {.importc: "QDir_mkpath".}
proc fcQDir_rmpath(self: pointer, dirPath: struct_miqt_string): bool {.importc: "QDir_rmpath".}
proc fcQDir_removeRecursively(self: pointer): bool {.importc: "QDir_removeRecursively".}
proc fcQDir_isReadable(self: pointer): bool {.importc: "QDir_isReadable".}
proc fcQDir_exists(self: pointer): bool {.importc: "QDir_exists".}
proc fcQDir_isRoot(self: pointer): bool {.importc: "QDir_isRoot".}
proc fcQDir_isRelativePath(path: struct_miqt_string): bool {.importc: "QDir_isRelativePath".}
proc fcQDir_isAbsolutePath(path: struct_miqt_string): bool {.importc: "QDir_isAbsolutePath".}
proc fcQDir_isRelative(self: pointer): bool {.importc: "QDir_isRelative".}
proc fcQDir_isAbsolute(self: pointer): bool {.importc: "QDir_isAbsolute".}
proc fcQDir_makeAbsolute(self: pointer): bool {.importc: "QDir_makeAbsolute".}
proc fcQDir_operatorEqual(self: pointer, dir: pointer): bool {.importc: "QDir_operatorEqual".}
proc fcQDir_operatorNotEqual(self: pointer, dir: pointer): bool {.importc: "QDir_operatorNotEqual".}
proc fcQDir_remove(self: pointer, fileName: struct_miqt_string): bool {.importc: "QDir_remove".}
proc fcQDir_rename(self: pointer, oldName: struct_miqt_string, newName: struct_miqt_string): bool {.importc: "QDir_rename".}
proc fcQDir_existsWithName(self: pointer, name: struct_miqt_string): bool {.importc: "QDir_existsWithName".}
proc fcQDir_drives(): struct_miqt_array {.importc: "QDir_drives".}
proc fcQDir_listSeparator(): pointer {.importc: "QDir_listSeparator".}
proc fcQDir_separator(): pointer {.importc: "QDir_separator".}
proc fcQDir_setCurrent(path: struct_miqt_string): bool {.importc: "QDir_setCurrent".}
proc fcQDir_current(): pointer {.importc: "QDir_current".}
proc fcQDir_currentPath(): struct_miqt_string {.importc: "QDir_currentPath".}
proc fcQDir_home(): pointer {.importc: "QDir_home".}
proc fcQDir_homePath(): struct_miqt_string {.importc: "QDir_homePath".}
proc fcQDir_root(): pointer {.importc: "QDir_root".}
proc fcQDir_rootPath(): struct_miqt_string {.importc: "QDir_rootPath".}
proc fcQDir_temp(): pointer {.importc: "QDir_temp".}
proc fcQDir_tempPath(): struct_miqt_string {.importc: "QDir_tempPath".}
proc fcQDir_match(filters: struct_miqt_array, fileName: struct_miqt_string): bool {.importc: "QDir_match".}
proc fcQDir_match2(filter: struct_miqt_string, fileName: struct_miqt_string): bool {.importc: "QDir_match2".}
proc fcQDir_cleanPath(path: struct_miqt_string): struct_miqt_string {.importc: "QDir_cleanPath".}
proc fcQDir_refresh(self: pointer): void {.importc: "QDir_refresh".}
proc fcQDir_isEmpty1(self: pointer, filters: cint): bool {.importc: "QDir_isEmpty1".}
proc fcQDir_entryList1(self: pointer, filters: cint): struct_miqt_array {.importc: "QDir_entryList1".}
proc fcQDir_entryList2(self: pointer, filters: cint, sort: cint): struct_miqt_array {.importc: "QDir_entryList2".}
proc fcQDir_entryList22(self: pointer, nameFilters: struct_miqt_array, filters: cint): struct_miqt_array {.importc: "QDir_entryList22".}
proc fcQDir_entryList3(self: pointer, nameFilters: struct_miqt_array, filters: cint, sort: cint): struct_miqt_array {.importc: "QDir_entryList3".}
proc fcQDir_entryInfoList1(self: pointer, filters: cint): struct_miqt_array {.importc: "QDir_entryInfoList1".}
proc fcQDir_entryInfoList2(self: pointer, filters: cint, sort: cint): struct_miqt_array {.importc: "QDir_entryInfoList2".}
proc fcQDir_entryInfoList22(self: pointer, nameFilters: struct_miqt_array, filters: cint): struct_miqt_array {.importc: "QDir_entryInfoList22".}
proc fcQDir_entryInfoList3(self: pointer, nameFilters: struct_miqt_array, filters: cint, sort: cint): struct_miqt_array {.importc: "QDir_entryInfoList3".}
proc fcQDir_new(param1: pointer): ptr cQDir {.importc: "QDir_new".}
proc fcQDir_new2(): ptr cQDir {.importc: "QDir_new2".}
proc fcQDir_new3(path: struct_miqt_string, nameFilter: struct_miqt_string): ptr cQDir {.importc: "QDir_new3".}
proc fcQDir_new4(path: struct_miqt_string): ptr cQDir {.importc: "QDir_new4".}
proc fcQDir_new5(path: struct_miqt_string, nameFilter: struct_miqt_string, sort: cint): ptr cQDir {.importc: "QDir_new5".}
proc fcQDir_new6(path: struct_miqt_string, nameFilter: struct_miqt_string, sort: cint, filter: cint): ptr cQDir {.importc: "QDir_new6".}

proc operatorAssign*(self: gen_qdir_types.QDir, param1: gen_qdir_types.QDir): void =
  fcQDir_operatorAssign(self.h, param1.h)

proc swap*(self: gen_qdir_types.QDir, other: gen_qdir_types.QDir): void =
  fcQDir_swap(self.h, other.h)

proc setPath*(self: gen_qdir_types.QDir, path: openArray[char]): void =
  fcQDir_setPath(self.h, struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc path*(self: gen_qdir_types.QDir): string =
  let v_ms = fcQDir_path(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc absolutePath*(self: gen_qdir_types.QDir): string =
  let v_ms = fcQDir_absolutePath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc canonicalPath*(self: gen_qdir_types.QDir): string =
  let v_ms = fcQDir_canonicalPath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSearchPaths*(_: type gen_qdir_types.QDir, prefix: openArray[char], searchPaths: openArray[string]): void =
  var searchPaths_CArray = newSeq[struct_miqt_string](len(searchPaths))
  for i in 0..<len(searchPaths):
    searchPaths_CArray[i] = struct_miqt_string(data: if len(searchPaths[i]) > 0: addr searchPaths[i][0] else: nil, len: csize_t(len(searchPaths[i])))

  fcQDir_setSearchPaths(struct_miqt_string(data: if len(prefix) > 0: addr prefix[0] else: nil, len: csize_t(len(prefix))), struct_miqt_array(len: csize_t(len(searchPaths)), data: if len(searchPaths) == 0: nil else: addr(searchPaths_CArray[0])))

proc addSearchPath*(_: type gen_qdir_types.QDir, prefix: openArray[char], path: openArray[char]): void =
  fcQDir_addSearchPath(struct_miqt_string(data: if len(prefix) > 0: addr prefix[0] else: nil, len: csize_t(len(prefix))), struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc searchPaths*(_: type gen_qdir_types.QDir, prefix: openArray[char]): seq[string] =
  var v_ma = fcQDir_searchPaths(struct_miqt_string(data: if len(prefix) > 0: addr prefix[0] else: nil, len: csize_t(len(prefix))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc dirName*(self: gen_qdir_types.QDir): string =
  let v_ms = fcQDir_dirName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc filePath*(self: gen_qdir_types.QDir, fileName: openArray[char]): string =
  let v_ms = fcQDir_filePath(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc absoluteFilePath*(self: gen_qdir_types.QDir, fileName: openArray[char]): string =
  let v_ms = fcQDir_absoluteFilePath(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc relativeFilePath*(self: gen_qdir_types.QDir, fileName: openArray[char]): string =
  let v_ms = fcQDir_relativeFilePath(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toNativeSeparators*(_: type gen_qdir_types.QDir, pathName: openArray[char]): string =
  let v_ms = fcQDir_toNativeSeparators(struct_miqt_string(data: if len(pathName) > 0: addr pathName[0] else: nil, len: csize_t(len(pathName))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromNativeSeparators*(_: type gen_qdir_types.QDir, pathName: openArray[char]): string =
  let v_ms = fcQDir_fromNativeSeparators(struct_miqt_string(data: if len(pathName) > 0: addr pathName[0] else: nil, len: csize_t(len(pathName))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc cd*(self: gen_qdir_types.QDir, dirName: openArray[char]): bool =
  fcQDir_cd(self.h, struct_miqt_string(data: if len(dirName) > 0: addr dirName[0] else: nil, len: csize_t(len(dirName))))

proc cdUp*(self: gen_qdir_types.QDir): bool =
  fcQDir_cdUp(self.h)

proc nameFilters*(self: gen_qdir_types.QDir): seq[string] =
  var v_ma = fcQDir_nameFilters(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setNameFilters*(self: gen_qdir_types.QDir, nameFilters: openArray[string]): void =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: if len(nameFilters[i]) > 0: addr nameFilters[i][0] else: nil, len: csize_t(len(nameFilters[i])))

  fcQDir_setNameFilters(self.h, struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])))

proc filter*(self: gen_qdir_types.QDir): cint =
  cint(fcQDir_filter(self.h))

proc setFilter*(self: gen_qdir_types.QDir, filter: cint): void =
  fcQDir_setFilter(self.h, cint(filter))

proc sorting*(self: gen_qdir_types.QDir): cint =
  cint(fcQDir_sorting(self.h))

proc setSorting*(self: gen_qdir_types.QDir, sort: cint): void =
  fcQDir_setSorting(self.h, cint(sort))

proc count*(self: gen_qdir_types.QDir): cuint =
  fcQDir_count(self.h)

proc isEmpty*(self: gen_qdir_types.QDir): bool =
  fcQDir_isEmpty(self.h)

proc operatorSubscript*(self: gen_qdir_types.QDir, param1: cint): string =
  let v_ms = fcQDir_operatorSubscript(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc nameFiltersFromString*(_: type gen_qdir_types.QDir, nameFilter: openArray[char]): seq[string] =
  var v_ma = fcQDir_nameFiltersFromString(struct_miqt_string(data: if len(nameFilter) > 0: addr nameFilter[0] else: nil, len: csize_t(len(nameFilter))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc entryList*(self: gen_qdir_types.QDir): seq[string] =
  var v_ma = fcQDir_entryList(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc entryList*(self: gen_qdir_types.QDir, nameFilters: openArray[string]): seq[string] =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: if len(nameFilters[i]) > 0: addr nameFilters[i][0] else: nil, len: csize_t(len(nameFilters[i])))

  var v_ma = fcQDir_entryListWithNameFilters(self.h, struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc entryInfoList*(self: gen_qdir_types.QDir): seq[gen_qfileinfo_types.QFileInfo] =
  var v_ma = fcQDir_entryInfoList(self.h)
  var vx_ret = newSeq[gen_qfileinfo_types.QFileInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qfileinfo_types.QFileInfo(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc entryInfoList*(self: gen_qdir_types.QDir, nameFilters: openArray[string]): seq[gen_qfileinfo_types.QFileInfo] =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: if len(nameFilters[i]) > 0: addr nameFilters[i][0] else: nil, len: csize_t(len(nameFilters[i])))

  var v_ma = fcQDir_entryInfoListWithNameFilters(self.h, struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])))
  var vx_ret = newSeq[gen_qfileinfo_types.QFileInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qfileinfo_types.QFileInfo(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc mkdir*(self: gen_qdir_types.QDir, dirName: openArray[char]): bool =
  fcQDir_mkdir(self.h, struct_miqt_string(data: if len(dirName) > 0: addr dirName[0] else: nil, len: csize_t(len(dirName))))

proc mkdir*(self: gen_qdir_types.QDir, dirName: openArray[char], permissions: cint): bool =
  fcQDir_mkdir2(self.h, struct_miqt_string(data: if len(dirName) > 0: addr dirName[0] else: nil, len: csize_t(len(dirName))), cint(permissions))

proc rmdir*(self: gen_qdir_types.QDir, dirName: openArray[char]): bool =
  fcQDir_rmdir(self.h, struct_miqt_string(data: if len(dirName) > 0: addr dirName[0] else: nil, len: csize_t(len(dirName))))

proc mkpath*(self: gen_qdir_types.QDir, dirPath: openArray[char]): bool =
  fcQDir_mkpath(self.h, struct_miqt_string(data: if len(dirPath) > 0: addr dirPath[0] else: nil, len: csize_t(len(dirPath))))

proc rmpath*(self: gen_qdir_types.QDir, dirPath: openArray[char]): bool =
  fcQDir_rmpath(self.h, struct_miqt_string(data: if len(dirPath) > 0: addr dirPath[0] else: nil, len: csize_t(len(dirPath))))

proc removeRecursively*(self: gen_qdir_types.QDir): bool =
  fcQDir_removeRecursively(self.h)

proc isReadable*(self: gen_qdir_types.QDir): bool =
  fcQDir_isReadable(self.h)

proc exists*(self: gen_qdir_types.QDir): bool =
  fcQDir_exists(self.h)

proc isRoot*(self: gen_qdir_types.QDir): bool =
  fcQDir_isRoot(self.h)

proc isRelativePath*(_: type gen_qdir_types.QDir, path: openArray[char]): bool =
  fcQDir_isRelativePath(struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc isAbsolutePath*(_: type gen_qdir_types.QDir, path: openArray[char]): bool =
  fcQDir_isAbsolutePath(struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc isRelative*(self: gen_qdir_types.QDir): bool =
  fcQDir_isRelative(self.h)

proc isAbsolute*(self: gen_qdir_types.QDir): bool =
  fcQDir_isAbsolute(self.h)

proc makeAbsolute*(self: gen_qdir_types.QDir): bool =
  fcQDir_makeAbsolute(self.h)

proc operatorEqual*(self: gen_qdir_types.QDir, dir: gen_qdir_types.QDir): bool =
  fcQDir_operatorEqual(self.h, dir.h)

proc operatorNotEqual*(self: gen_qdir_types.QDir, dir: gen_qdir_types.QDir): bool =
  fcQDir_operatorNotEqual(self.h, dir.h)

proc remove*(self: gen_qdir_types.QDir, fileName: openArray[char]): bool =
  fcQDir_remove(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc rename*(self: gen_qdir_types.QDir, oldName: openArray[char], newName: openArray[char]): bool =
  fcQDir_rename(self.h, struct_miqt_string(data: if len(oldName) > 0: addr oldName[0] else: nil, len: csize_t(len(oldName))), struct_miqt_string(data: if len(newName) > 0: addr newName[0] else: nil, len: csize_t(len(newName))))

proc exists*(self: gen_qdir_types.QDir, name: openArray[char]): bool =
  fcQDir_existsWithName(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc drives*(_: type gen_qdir_types.QDir): seq[gen_qfileinfo_types.QFileInfo] =
  var v_ma = fcQDir_drives()
  var vx_ret = newSeq[gen_qfileinfo_types.QFileInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qfileinfo_types.QFileInfo(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc listSeparator*(_: type gen_qdir_types.QDir): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQDir_listSeparator(), owned: true)

proc separator*(_: type gen_qdir_types.QDir): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQDir_separator(), owned: true)

proc setCurrent*(_: type gen_qdir_types.QDir, path: openArray[char]): bool =
  fcQDir_setCurrent(struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc current*(_: type gen_qdir_types.QDir): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQDir_current(), owned: true)

proc currentPath*(_: type gen_qdir_types.QDir): string =
  let v_ms = fcQDir_currentPath()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc home*(_: type gen_qdir_types.QDir): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQDir_home(), owned: true)

proc homePath*(_: type gen_qdir_types.QDir): string =
  let v_ms = fcQDir_homePath()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc root*(_: type gen_qdir_types.QDir): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQDir_root(), owned: true)

proc rootPath*(_: type gen_qdir_types.QDir): string =
  let v_ms = fcQDir_rootPath()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc temp*(_: type gen_qdir_types.QDir): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQDir_temp(), owned: true)

proc tempPath*(_: type gen_qdir_types.QDir): string =
  let v_ms = fcQDir_tempPath()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc match*(_: type gen_qdir_types.QDir, filters: openArray[string], fileName: openArray[char]): bool =
  var filters_CArray = newSeq[struct_miqt_string](len(filters))
  for i in 0..<len(filters):
    filters_CArray[i] = struct_miqt_string(data: if len(filters[i]) > 0: addr filters[i][0] else: nil, len: csize_t(len(filters[i])))

  fcQDir_match(struct_miqt_array(len: csize_t(len(filters)), data: if len(filters) == 0: nil else: addr(filters_CArray[0])), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc match*(_: type gen_qdir_types.QDir, filter: openArray[char], fileName: openArray[char]): bool =
  fcQDir_match2(struct_miqt_string(data: if len(filter) > 0: addr filter[0] else: nil, len: csize_t(len(filter))), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc cleanPath*(_: type gen_qdir_types.QDir, path: openArray[char]): string =
  let v_ms = fcQDir_cleanPath(struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc refresh*(self: gen_qdir_types.QDir): void =
  fcQDir_refresh(self.h)

proc isEmpty*(self: gen_qdir_types.QDir, filters: cint): bool =
  fcQDir_isEmpty1(self.h, cint(filters))

proc entryList*(self: gen_qdir_types.QDir, filters: cint): seq[string] =
  var v_ma = fcQDir_entryList1(self.h, cint(filters))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc entryList*(self: gen_qdir_types.QDir, filters: cint, sort: cint): seq[string] =
  var v_ma = fcQDir_entryList2(self.h, cint(filters), cint(sort))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc entryList*(self: gen_qdir_types.QDir, nameFilters: openArray[string], filters: cint): seq[string] =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: if len(nameFilters[i]) > 0: addr nameFilters[i][0] else: nil, len: csize_t(len(nameFilters[i])))

  var v_ma = fcQDir_entryList22(self.h, struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc entryList*(self: gen_qdir_types.QDir, nameFilters: openArray[string], filters: cint, sort: cint): seq[string] =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: if len(nameFilters[i]) > 0: addr nameFilters[i][0] else: nil, len: csize_t(len(nameFilters[i])))

  var v_ma = fcQDir_entryList3(self.h, struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters), cint(sort))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc entryInfoList*(self: gen_qdir_types.QDir, filters: cint): seq[gen_qfileinfo_types.QFileInfo] =
  var v_ma = fcQDir_entryInfoList1(self.h, cint(filters))
  var vx_ret = newSeq[gen_qfileinfo_types.QFileInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qfileinfo_types.QFileInfo(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc entryInfoList*(self: gen_qdir_types.QDir, filters: cint, sort: cint): seq[gen_qfileinfo_types.QFileInfo] =
  var v_ma = fcQDir_entryInfoList2(self.h, cint(filters), cint(sort))
  var vx_ret = newSeq[gen_qfileinfo_types.QFileInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qfileinfo_types.QFileInfo(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc entryInfoList*(self: gen_qdir_types.QDir, nameFilters: openArray[string], filters: cint): seq[gen_qfileinfo_types.QFileInfo] =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: if len(nameFilters[i]) > 0: addr nameFilters[i][0] else: nil, len: csize_t(len(nameFilters[i])))

  var v_ma = fcQDir_entryInfoList22(self.h, struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters))
  var vx_ret = newSeq[gen_qfileinfo_types.QFileInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qfileinfo_types.QFileInfo(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc entryInfoList*(self: gen_qdir_types.QDir, nameFilters: openArray[string], filters: cint, sort: cint): seq[gen_qfileinfo_types.QFileInfo] =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: if len(nameFilters[i]) > 0: addr nameFilters[i][0] else: nil, len: csize_t(len(nameFilters[i])))

  var v_ma = fcQDir_entryInfoList3(self.h, struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters), cint(sort))
  var vx_ret = newSeq[gen_qfileinfo_types.QFileInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qfileinfo_types.QFileInfo(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc create*(T: type gen_qdir_types.QDir,
    param1: gen_qdir_types.QDir): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQDir_new(param1.h), owned: true)

proc create*(T: type gen_qdir_types.QDir): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQDir_new2(), owned: true)

proc create*(T: type gen_qdir_types.QDir,
    path: openArray[char], nameFilter: openArray[char]): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQDir_new3(struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))), struct_miqt_string(data: if len(nameFilter) > 0: addr nameFilter[0] else: nil, len: csize_t(len(nameFilter)))), owned: true)

proc create*(T: type gen_qdir_types.QDir,
    path: openArray[char]): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQDir_new4(struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path)))), owned: true)

proc create*(T: type gen_qdir_types.QDir,
    path: openArray[char], nameFilter: openArray[char], sort: cint): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQDir_new5(struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))), struct_miqt_string(data: if len(nameFilter) > 0: addr nameFilter[0] else: nil, len: csize_t(len(nameFilter))), cint(sort)), owned: true)

proc create*(T: type gen_qdir_types.QDir,
    path: openArray[char], nameFilter: openArray[char], sort: cint, filter: cint): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQDir_new6(struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))), struct_miqt_string(data: if len(nameFilter) > 0: addr nameFilter[0] else: nil, len: csize_t(len(nameFilter))), cint(sort), cint(filter)), owned: true)

