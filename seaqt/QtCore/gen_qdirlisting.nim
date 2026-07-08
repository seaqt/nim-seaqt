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


type QDirListingIteratorFlagEnum* = distinct cint
template Default*(_: type QDirListingIteratorFlagEnum): untyped = 0
template ExcludeFiles*(_: type QDirListingIteratorFlagEnum): untyped = 4
template ExcludeDirs*(_: type QDirListingIteratorFlagEnum): untyped = 8
template ExcludeSpecial*(_: type QDirListingIteratorFlagEnum): untyped = 16
template ResolveSymlinks*(_: type QDirListingIteratorFlagEnum): untyped = 32
template FilesOnly*(_: type QDirListingIteratorFlagEnum): untyped = 24
template DirsOnly*(_: type QDirListingIteratorFlagEnum): untyped = 20
template IncludeHidden*(_: type QDirListingIteratorFlagEnum): untyped = 64
template IncludeDotAndDotDot*(_: type QDirListingIteratorFlagEnum): untyped = 128
template CaseSensitive*(_: type QDirListingIteratorFlagEnum): untyped = 256
template Recursive*(_: type QDirListingIteratorFlagEnum): untyped = 1024
template FollowDirSymlinks*(_: type QDirListingIteratorFlagEnum): untyped = 2048


import ./gen_qdirlisting_types
export gen_qdirlisting_types

import
  ./gen_qdatetime_types,
  ./gen_qfileinfo_types,
  ./gen_qtimezone_types
export
  gen_qdatetime_types,
  gen_qfileinfo_types,
  gen_qtimezone_types

type cQDirListing*{.exportc: "QDirListing", incompleteStruct.} = object
type cQDirListingDirEntry*{.exportc: "QDirListing__DirEntry", incompleteStruct.} = object
type cQDirListingsentinel*{.exportc: "QDirListing__sentinel", incompleteStruct.} = object
type cQDirListingconst_iterator*{.exportc: "QDirListing__const_iterator", incompleteStruct.} = object

proc fcQDirListing_swap(self: pointer, other: pointer): void {.importc: "QDirListing_swap".}
proc fcQDirListing_iteratorPath(self: pointer): struct_seaqt_string {.importc: "QDirListing_iteratorPath".}
proc fcQDirListing_iteratorFlags(self: pointer): cint {.importc: "QDirListing_iteratorFlags".}
proc fcQDirListing_nameFilters(self: pointer): struct_seaqt_array {.importc: "QDirListing_nameFilters".}
proc fcQDirListing_begin(self: pointer): pointer {.importc: "QDirListing_begin".}
proc fcQDirListing_cbegin(self: pointer): pointer {.importc: "QDirListing_cbegin".}
proc fcQDirListing_endX(self: pointer): pointer {.importc: "QDirListing_end".}
proc fcQDirListing_cend(self: pointer): pointer {.importc: "QDirListing_cend".}
proc fcQDirListing_constBegin(self: pointer): pointer {.importc: "QDirListing_constBegin".}
proc fcQDirListing_constEnd(self: pointer): pointer {.importc: "QDirListing_constEnd".}
proc fcQDirListing_new(path: struct_seaqt_string): ptr cQDirListing {.importc: "QDirListing_new_path".}
proc fcQDirListing_new2(path: struct_seaqt_string, nameFilters: struct_seaqt_array): ptr cQDirListing {.importc: "QDirListing_new_path_nameFilters".}
proc fcQDirListing_new3(path: struct_seaqt_string, flags: cint): ptr cQDirListing {.importc: "QDirListing_new_path_flags".}
proc fcQDirListing_new4(path: struct_seaqt_string, nameFilters: struct_seaqt_array, flags: cint): ptr cQDirListing {.importc: "QDirListing_new_path_nameFilters_flags".}
proc fcQDirListingDirEntry_fileName(self: pointer): struct_seaqt_string {.importc: "QDirListing__DirEntry_fileName".}
proc fcQDirListingDirEntry_baseName(self: pointer): struct_seaqt_string {.importc: "QDirListing__DirEntry_baseName".}
proc fcQDirListingDirEntry_completeBaseName(self: pointer): struct_seaqt_string {.importc: "QDirListing__DirEntry_completeBaseName".}
proc fcQDirListingDirEntry_suffix(self: pointer): struct_seaqt_string {.importc: "QDirListing__DirEntry_suffix".}
proc fcQDirListingDirEntry_bundleName(self: pointer): struct_seaqt_string {.importc: "QDirListing__DirEntry_bundleName".}
proc fcQDirListingDirEntry_completeSuffix(self: pointer): struct_seaqt_string {.importc: "QDirListing__DirEntry_completeSuffix".}
proc fcQDirListingDirEntry_filePath(self: pointer): struct_seaqt_string {.importc: "QDirListing__DirEntry_filePath".}
proc fcQDirListingDirEntry_isDir(self: pointer): bool {.importc: "QDirListing__DirEntry_isDir".}
proc fcQDirListingDirEntry_isFile(self: pointer): bool {.importc: "QDirListing__DirEntry_isFile".}
proc fcQDirListingDirEntry_isSymLink(self: pointer): bool {.importc: "QDirListing__DirEntry_isSymLink".}
proc fcQDirListingDirEntry_exists(self: pointer): bool {.importc: "QDirListing__DirEntry_exists".}
proc fcQDirListingDirEntry_isHidden(self: pointer): bool {.importc: "QDirListing__DirEntry_isHidden".}
proc fcQDirListingDirEntry_isReadable(self: pointer): bool {.importc: "QDirListing__DirEntry_isReadable".}
proc fcQDirListingDirEntry_isWritable(self: pointer): bool {.importc: "QDirListing__DirEntry_isWritable".}
proc fcQDirListingDirEntry_isExecutable(self: pointer): bool {.importc: "QDirListing__DirEntry_isExecutable".}
proc fcQDirListingDirEntry_fileInfo(self: pointer): pointer {.importc: "QDirListing__DirEntry_fileInfo".}
proc fcQDirListingDirEntry_canonicalFilePath(self: pointer): struct_seaqt_string {.importc: "QDirListing__DirEntry_canonicalFilePath".}
proc fcQDirListingDirEntry_absoluteFilePath(self: pointer): struct_seaqt_string {.importc: "QDirListing__DirEntry_absoluteFilePath".}
proc fcQDirListingDirEntry_absolutePath(self: pointer): struct_seaqt_string {.importc: "QDirListing__DirEntry_absolutePath".}
proc fcQDirListingDirEntry_size(self: pointer): clonglong {.importc: "QDirListing__DirEntry_size".}
proc fcQDirListingDirEntry_birthTime(self: pointer, tz: pointer): pointer {.importc: "QDirListing__DirEntry_birthTime".}
proc fcQDirListingDirEntry_metadataChangeTime(self: pointer, tz: pointer): pointer {.importc: "QDirListing__DirEntry_metadataChangeTime".}
proc fcQDirListingDirEntry_lastModified(self: pointer, tz: pointer): pointer {.importc: "QDirListing__DirEntry_lastModified".}
proc fcQDirListingDirEntry_lastRead(self: pointer, tz: pointer): pointer {.importc: "QDirListing__DirEntry_lastRead".}
proc fcQDirListingDirEntry_fileTime(self: pointer, typeVal: cint, tz: pointer): pointer {.importc: "QDirListing__DirEntry_fileTime".}
proc fcQDirListingDirEntry_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QDirListing__DirEntry_operatorAssign".}
proc fcQDirListingDirEntry_new(fromVal: pointer): ptr cQDirListingDirEntry {.importc: "QDirListing__DirEntry_new_from".}
proc fcQDirListingDirEntry_new2(): ptr cQDirListingDirEntry {.importc: "QDirListing__DirEntry_new".}
proc fcQDirListingsentinel_new(): ptr cQDirListingsentinel {.importc: "QDirListing__sentinel_new".}
proc fcQDirListingsentinel_new2(fromVal: pointer): ptr cQDirListingsentinel {.importc: "QDirListing__sentinel_new_from".}
proc fcQDirListingconst_iterator_operatorMinusGreater(self: pointer): pointer {.importc: "QDirListing__const_iterator_operatorMinusGreater".}
proc fcQDirListingconst_iterator_operatorPlusPlus(self: pointer): pointer {.importc: "QDirListing__const_iterator_operatorPlusPlus".}
proc fcQDirListingconst_iterator_operatorPlusPlusInt(self: pointer, param1: cint): void {.importc: "QDirListing__const_iterator_operatorPlusPlus_int".}
proc fcQDirListingconst_iterator_new(): ptr cQDirListingconst_iterator {.importc: "QDirListing__const_iterator_new".}

proc swap*(self: gen_qdirlisting_types.QDirListing, other: gen_qdirlisting_types.QDirListing): void =
  fcQDirListing_swap(self.h, other.h)

proc iteratorPath*(self: gen_qdirlisting_types.QDirListing): string =
  let v_ms = fcQDirListing_iteratorPath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc iteratorFlags*(self: gen_qdirlisting_types.QDirListing): cint =
  cint(fcQDirListing_iteratorFlags(self.h))

proc nameFilters*(self: gen_qdirlisting_types.QDirListing): seq[string] =
  var v_ma = fcQDirListing_nameFilters(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc begin*(self: gen_qdirlisting_types.QDirListing): gen_qdirlisting_types.QDirListingconst_iterator =
  gen_qdirlisting_types.QDirListingconst_iterator(h: fcQDirListing_begin(self.h), owned: true)

proc cbegin*(self: gen_qdirlisting_types.QDirListing): gen_qdirlisting_types.QDirListingconst_iterator =
  gen_qdirlisting_types.QDirListingconst_iterator(h: fcQDirListing_cbegin(self.h), owned: true)

proc endX*(self: gen_qdirlisting_types.QDirListing): gen_qdirlisting_types.QDirListingsentinel =
  gen_qdirlisting_types.QDirListingsentinel(h: fcQDirListing_endX(self.h), owned: true)

proc cend*(self: gen_qdirlisting_types.QDirListing): gen_qdirlisting_types.QDirListingsentinel =
  gen_qdirlisting_types.QDirListingsentinel(h: fcQDirListing_cend(self.h), owned: true)

proc constBegin*(self: gen_qdirlisting_types.QDirListing): gen_qdirlisting_types.QDirListingconst_iterator =
  gen_qdirlisting_types.QDirListingconst_iterator(h: fcQDirListing_constBegin(self.h), owned: true)

proc constEnd*(self: gen_qdirlisting_types.QDirListing): gen_qdirlisting_types.QDirListingsentinel =
  gen_qdirlisting_types.QDirListingsentinel(h: fcQDirListing_constEnd(self.h), owned: true)

proc create*(T: type gen_qdirlisting_types.QDirListing,
    path: openArray[char]): gen_qdirlisting_types.QDirListing =
  let tmp = gen_qdirlisting_types.QDirListing(h: fcQDirListing_new(struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path)))), owned: true)
  tmp
proc create*(T: type gen_qdirlisting_types.QDirListing,
    path: openArray[char], nameFilters: openArray[string]): gen_qdirlisting_types.QDirListing =
  var nameFilters_CArray = newSeq[struct_seaqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_seaqt_string(data: if len(nameFilters[i]) > 0: addr nameFilters[i][0] else: nil, len: csize_t(len(nameFilters[i])))

  let tmp = gen_qdirlisting_types.QDirListing(h: fcQDirListing_new2(struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))), struct_seaqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0]))), owned: true)
  tmp
proc create*(T: type gen_qdirlisting_types.QDirListing,
    path: openArray[char], flags: cint): gen_qdirlisting_types.QDirListing =
  let tmp = gen_qdirlisting_types.QDirListing(h: fcQDirListing_new3(struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))), cint(flags)), owned: true)
  tmp
proc create*(T: type gen_qdirlisting_types.QDirListing,
    path: openArray[char], nameFilters: openArray[string], flags: cint): gen_qdirlisting_types.QDirListing =
  var nameFilters_CArray = newSeq[struct_seaqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_seaqt_string(data: if len(nameFilters[i]) > 0: addr nameFilters[i][0] else: nil, len: csize_t(len(nameFilters[i])))

  let tmp = gen_qdirlisting_types.QDirListing(h: fcQDirListing_new4(struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))), struct_seaqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(flags)), owned: true)
  tmp
proc fileName*(self: gen_qdirlisting_types.QDirListingDirEntry): string =
  let v_ms = fcQDirListingDirEntry_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc baseName*(self: gen_qdirlisting_types.QDirListingDirEntry): string =
  let v_ms = fcQDirListingDirEntry_baseName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc completeBaseName*(self: gen_qdirlisting_types.QDirListingDirEntry): string =
  let v_ms = fcQDirListingDirEntry_completeBaseName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc suffix*(self: gen_qdirlisting_types.QDirListingDirEntry): string =
  let v_ms = fcQDirListingDirEntry_suffix(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc bundleName*(self: gen_qdirlisting_types.QDirListingDirEntry): string =
  let v_ms = fcQDirListingDirEntry_bundleName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc completeSuffix*(self: gen_qdirlisting_types.QDirListingDirEntry): string =
  let v_ms = fcQDirListingDirEntry_completeSuffix(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc filePath*(self: gen_qdirlisting_types.QDirListingDirEntry): string =
  let v_ms = fcQDirListingDirEntry_filePath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isDir*(self: gen_qdirlisting_types.QDirListingDirEntry): bool =
  fcQDirListingDirEntry_isDir(self.h)

proc isFile*(self: gen_qdirlisting_types.QDirListingDirEntry): bool =
  fcQDirListingDirEntry_isFile(self.h)

proc isSymLink*(self: gen_qdirlisting_types.QDirListingDirEntry): bool =
  fcQDirListingDirEntry_isSymLink(self.h)

proc exists*(self: gen_qdirlisting_types.QDirListingDirEntry): bool =
  fcQDirListingDirEntry_exists(self.h)

proc isHidden*(self: gen_qdirlisting_types.QDirListingDirEntry): bool =
  fcQDirListingDirEntry_isHidden(self.h)

proc isReadable*(self: gen_qdirlisting_types.QDirListingDirEntry): bool =
  fcQDirListingDirEntry_isReadable(self.h)

proc isWritable*(self: gen_qdirlisting_types.QDirListingDirEntry): bool =
  fcQDirListingDirEntry_isWritable(self.h)

proc isExecutable*(self: gen_qdirlisting_types.QDirListingDirEntry): bool =
  fcQDirListingDirEntry_isExecutable(self.h)

proc fileInfo*(self: gen_qdirlisting_types.QDirListingDirEntry): gen_qfileinfo_types.QFileInfo =
  gen_qfileinfo_types.QFileInfo(h: fcQDirListingDirEntry_fileInfo(self.h), owned: true)

proc canonicalFilePath*(self: gen_qdirlisting_types.QDirListingDirEntry): string =
  let v_ms = fcQDirListingDirEntry_canonicalFilePath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc absoluteFilePath*(self: gen_qdirlisting_types.QDirListingDirEntry): string =
  let v_ms = fcQDirListingDirEntry_absoluteFilePath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc absolutePath*(self: gen_qdirlisting_types.QDirListingDirEntry): string =
  let v_ms = fcQDirListingDirEntry_absolutePath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc size*(self: gen_qdirlisting_types.QDirListingDirEntry): clonglong =
  fcQDirListingDirEntry_size(self.h)

proc birthTime*(self: gen_qdirlisting_types.QDirListingDirEntry, tz: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDirListingDirEntry_birthTime(self.h, tz.h), owned: true)

proc metadataChangeTime*(self: gen_qdirlisting_types.QDirListingDirEntry, tz: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDirListingDirEntry_metadataChangeTime(self.h, tz.h), owned: true)

proc lastModified*(self: gen_qdirlisting_types.QDirListingDirEntry, tz: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDirListingDirEntry_lastModified(self.h, tz.h), owned: true)

proc lastRead*(self: gen_qdirlisting_types.QDirListingDirEntry, tz: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDirListingDirEntry_lastRead(self.h, tz.h), owned: true)

proc fileTime*(self: gen_qdirlisting_types.QDirListingDirEntry, typeVal: cint, tz: gen_qtimezone_types.QTimeZone): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDirListingDirEntry_fileTime(self.h, cint(typeVal), tz.h), owned: true)

proc operatorAssign*(self: gen_qdirlisting_types.QDirListingDirEntry, fromVal: gen_qdirlisting_types.QDirListingDirEntry): void =
  fcQDirListingDirEntry_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qdirlisting_types.QDirListingDirEntry,
    fromVal: gen_qdirlisting_types.QDirListingDirEntry): gen_qdirlisting_types.QDirListingDirEntry =
  let tmp = gen_qdirlisting_types.QDirListingDirEntry(h: fcQDirListingDirEntry_new(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qdirlisting_types.QDirListingDirEntry): gen_qdirlisting_types.QDirListingDirEntry =
  let tmp = gen_qdirlisting_types.QDirListingDirEntry(h: fcQDirListingDirEntry_new2(), owned: true)
  tmp
proc create*(T: type gen_qdirlisting_types.QDirListingsentinel): gen_qdirlisting_types.QDirListingsentinel =
  let tmp = gen_qdirlisting_types.QDirListingsentinel(h: fcQDirListingsentinel_new(), owned: true)
  tmp
proc create*(T: type gen_qdirlisting_types.QDirListingsentinel,
    fromVal: gen_qdirlisting_types.QDirListingsentinel): gen_qdirlisting_types.QDirListingsentinel =
  let tmp = gen_qdirlisting_types.QDirListingsentinel(h: fcQDirListingsentinel_new2(fromVal.h), owned: true)
  tmp
proc operatorMinusGreater*(self: gen_qdirlisting_types.QDirListingconst_iterator): gen_qdirlisting_types.QDirListingDirEntry =
  gen_qdirlisting_types.QDirListingDirEntry(h: fcQDirListingconst_iterator_operatorMinusGreater(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qdirlisting_types.QDirListingconst_iterator): gen_qdirlisting_types.QDirListingconst_iterator =
  gen_qdirlisting_types.QDirListingconst_iterator(h: fcQDirListingconst_iterator_operatorPlusPlus(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qdirlisting_types.QDirListingconst_iterator, param1: cint): void =
  fcQDirListingconst_iterator_operatorPlusPlusInt(self.h, param1)

proc create*(T: type gen_qdirlisting_types.QDirListingconst_iterator): gen_qdirlisting_types.QDirListingconst_iterator =
  let tmp = gen_qdirlisting_types.QDirListingconst_iterator(h: fcQDirListingconst_iterator_new(), owned: true)
  tmp
