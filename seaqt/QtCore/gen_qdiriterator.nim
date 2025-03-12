import ./Qt6Core_libs

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


type QDirIteratorIteratorFlagEnum* = distinct cint
template NoIteratorFlags*(_: type QDirIteratorIteratorFlagEnum): untyped = 0
template FollowSymlinks*(_: type QDirIteratorIteratorFlagEnum): untyped = 1
template Subdirectories*(_: type QDirIteratorIteratorFlagEnum): untyped = 2


import ./gen_qdiriterator_types
export gen_qdiriterator_types

import
  ./gen_qdir_types,
  ./gen_qfileinfo_types
export
  gen_qdir_types,
  gen_qfileinfo_types

type cQDirIterator*{.exportc: "QDirIterator", incompleteStruct.} = object

proc fcQDirIterator_next(self: pointer): struct_miqt_string {.importc: "QDirIterator_next".}
proc fcQDirIterator_nextFileInfo(self: pointer): pointer {.importc: "QDirIterator_nextFileInfo".}
proc fcQDirIterator_hasNext(self: pointer): bool {.importc: "QDirIterator_hasNext".}
proc fcQDirIterator_fileName(self: pointer): struct_miqt_string {.importc: "QDirIterator_fileName".}
proc fcQDirIterator_filePath(self: pointer): struct_miqt_string {.importc: "QDirIterator_filePath".}
proc fcQDirIterator_fileInfo(self: pointer): pointer {.importc: "QDirIterator_fileInfo".}
proc fcQDirIterator_path(self: pointer): struct_miqt_string {.importc: "QDirIterator_path".}
proc fcQDirIterator_new(dir: pointer): ptr cQDirIterator {.importc: "QDirIterator_new".}
proc fcQDirIterator_new2(path: struct_miqt_string): ptr cQDirIterator {.importc: "QDirIterator_new2".}
proc fcQDirIterator_new3(path: struct_miqt_string, filter: cint): ptr cQDirIterator {.importc: "QDirIterator_new3".}
proc fcQDirIterator_new4(path: struct_miqt_string, nameFilters: struct_miqt_array): ptr cQDirIterator {.importc: "QDirIterator_new4".}
proc fcQDirIterator_new5(dir: pointer, flags: cint): ptr cQDirIterator {.importc: "QDirIterator_new5".}
proc fcQDirIterator_new6(path: struct_miqt_string, flags: cint): ptr cQDirIterator {.importc: "QDirIterator_new6".}
proc fcQDirIterator_new7(path: struct_miqt_string, filter: cint, flags: cint): ptr cQDirIterator {.importc: "QDirIterator_new7".}
proc fcQDirIterator_new8(path: struct_miqt_string, nameFilters: struct_miqt_array, filters: cint): ptr cQDirIterator {.importc: "QDirIterator_new8".}
proc fcQDirIterator_new9(path: struct_miqt_string, nameFilters: struct_miqt_array, filters: cint, flags: cint): ptr cQDirIterator {.importc: "QDirIterator_new9".}

proc next*(self: gen_qdiriterator_types.QDirIterator): string =
  let v_ms = fcQDirIterator_next(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc nextFileInfo*(self: gen_qdiriterator_types.QDirIterator): gen_qfileinfo_types.QFileInfo =
  gen_qfileinfo_types.QFileInfo(h: fcQDirIterator_nextFileInfo(self.h), owned: true)

proc hasNext*(self: gen_qdiriterator_types.QDirIterator): bool =
  fcQDirIterator_hasNext(self.h)

proc fileName*(self: gen_qdiriterator_types.QDirIterator): string =
  let v_ms = fcQDirIterator_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc filePath*(self: gen_qdiriterator_types.QDirIterator): string =
  let v_ms = fcQDirIterator_filePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileInfo*(self: gen_qdiriterator_types.QDirIterator): gen_qfileinfo_types.QFileInfo =
  gen_qfileinfo_types.QFileInfo(h: fcQDirIterator_fileInfo(self.h), owned: true)

proc path*(self: gen_qdiriterator_types.QDirIterator): string =
  let v_ms = fcQDirIterator_path(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qdiriterator_types.QDirIterator,
    dir: gen_qdir_types.QDir): gen_qdiriterator_types.QDirIterator =
  gen_qdiriterator_types.QDirIterator(h: fcQDirIterator_new(dir.h), owned: true)

proc create*(T: type gen_qdiriterator_types.QDirIterator,
    path: string): gen_qdiriterator_types.QDirIterator =
  gen_qdiriterator_types.QDirIterator(h: fcQDirIterator_new2(struct_miqt_string(data: path, len: csize_t(len(path)))), owned: true)

proc create*(T: type gen_qdiriterator_types.QDirIterator,
    path: string, filter: cint): gen_qdiriterator_types.QDirIterator =
  gen_qdiriterator_types.QDirIterator(h: fcQDirIterator_new3(struct_miqt_string(data: path, len: csize_t(len(path))), cint(filter)), owned: true)

proc create*(T: type gen_qdiriterator_types.QDirIterator,
    path: string, nameFilters: seq[string]): gen_qdiriterator_types.QDirIterator =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: nameFilters[i], len: csize_t(len(nameFilters[i])))

  gen_qdiriterator_types.QDirIterator(h: fcQDirIterator_new4(struct_miqt_string(data: path, len: csize_t(len(path))), struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0]))), owned: true)

proc create*(T: type gen_qdiriterator_types.QDirIterator,
    dir: gen_qdir_types.QDir, flags: cint): gen_qdiriterator_types.QDirIterator =
  gen_qdiriterator_types.QDirIterator(h: fcQDirIterator_new5(dir.h, cint(flags)), owned: true)

proc create2*(T: type gen_qdiriterator_types.QDirIterator,
    path: string, flags: cint): gen_qdiriterator_types.QDirIterator =
  gen_qdiriterator_types.QDirIterator(h: fcQDirIterator_new6(struct_miqt_string(data: path, len: csize_t(len(path))), cint(flags)), owned: true)

proc create*(T: type gen_qdiriterator_types.QDirIterator,
    path: string, filter: cint, flags: cint): gen_qdiriterator_types.QDirIterator =
  gen_qdiriterator_types.QDirIterator(h: fcQDirIterator_new7(struct_miqt_string(data: path, len: csize_t(len(path))), cint(filter), cint(flags)), owned: true)

proc create*(T: type gen_qdiriterator_types.QDirIterator,
    path: string, nameFilters: seq[string], filters: cint): gen_qdiriterator_types.QDirIterator =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: nameFilters[i], len: csize_t(len(nameFilters[i])))

  gen_qdiriterator_types.QDirIterator(h: fcQDirIterator_new8(struct_miqt_string(data: path, len: csize_t(len(path))), struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters)), owned: true)

proc create*(T: type gen_qdiriterator_types.QDirIterator,
    path: string, nameFilters: seq[string], filters: cint, flags: cint): gen_qdiriterator_types.QDirIterator =
  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: nameFilters[i], len: csize_t(len(nameFilters[i])))

  gen_qdiriterator_types.QDirIterator(h: fcQDirIterator_new9(struct_miqt_string(data: path, len: csize_t(len(path))), struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters), cint(flags)), owned: true)

