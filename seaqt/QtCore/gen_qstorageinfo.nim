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


import ./gen_qstorageinfo_types
export gen_qstorageinfo_types

import
  ./gen_qdir_types
export
  gen_qdir_types

type cQStorageInfo*{.exportc: "QStorageInfo", incompleteStruct.} = object

proc fcQStorageInfo_operatorAssign(self: pointer, other: pointer): void {.importc: "QStorageInfo_operatorAssign".}
proc fcQStorageInfo_swap(self: pointer, other: pointer): void {.importc: "QStorageInfo_swap".}
proc fcQStorageInfo_setPath(self: pointer, path: struct_miqt_string): void {.importc: "QStorageInfo_setPath".}
proc fcQStorageInfo_rootPath(self: pointer): struct_miqt_string {.importc: "QStorageInfo_rootPath".}
proc fcQStorageInfo_device(self: pointer): struct_miqt_string {.importc: "QStorageInfo_device".}
proc fcQStorageInfo_subvolume(self: pointer): struct_miqt_string {.importc: "QStorageInfo_subvolume".}
proc fcQStorageInfo_fileSystemType(self: pointer): struct_miqt_string {.importc: "QStorageInfo_fileSystemType".}
proc fcQStorageInfo_name(self: pointer): struct_miqt_string {.importc: "QStorageInfo_name".}
proc fcQStorageInfo_displayName(self: pointer): struct_miqt_string {.importc: "QStorageInfo_displayName".}
proc fcQStorageInfo_bytesTotal(self: pointer): clonglong {.importc: "QStorageInfo_bytesTotal".}
proc fcQStorageInfo_bytesFree(self: pointer): clonglong {.importc: "QStorageInfo_bytesFree".}
proc fcQStorageInfo_bytesAvailable(self: pointer): clonglong {.importc: "QStorageInfo_bytesAvailable".}
proc fcQStorageInfo_blockSize(self: pointer): cint {.importc: "QStorageInfo_blockSize".}
proc fcQStorageInfo_isRoot(self: pointer): bool {.importc: "QStorageInfo_isRoot".}
proc fcQStorageInfo_isReadOnly(self: pointer): bool {.importc: "QStorageInfo_isReadOnly".}
proc fcQStorageInfo_isReady(self: pointer): bool {.importc: "QStorageInfo_isReady".}
proc fcQStorageInfo_isValid(self: pointer): bool {.importc: "QStorageInfo_isValid".}
proc fcQStorageInfo_refresh(self: pointer): void {.importc: "QStorageInfo_refresh".}
proc fcQStorageInfo_mountedVolumes(): struct_miqt_array {.importc: "QStorageInfo_mountedVolumes".}
proc fcQStorageInfo_root(): pointer {.importc: "QStorageInfo_root".}
proc fcQStorageInfo_new(): ptr cQStorageInfo {.importc: "QStorageInfo_new".}
proc fcQStorageInfo_new2(path: struct_miqt_string): ptr cQStorageInfo {.importc: "QStorageInfo_new2".}
proc fcQStorageInfo_new3(dir: pointer): ptr cQStorageInfo {.importc: "QStorageInfo_new3".}
proc fcQStorageInfo_new4(other: pointer): ptr cQStorageInfo {.importc: "QStorageInfo_new4".}

proc operatorAssign*(self: gen_qstorageinfo_types.QStorageInfo, other: gen_qstorageinfo_types.QStorageInfo): void =
  fcQStorageInfo_operatorAssign(self.h, other.h)

proc swap*(self: gen_qstorageinfo_types.QStorageInfo, other: gen_qstorageinfo_types.QStorageInfo): void =
  fcQStorageInfo_swap(self.h, other.h)

proc setPath*(self: gen_qstorageinfo_types.QStorageInfo, path: string): void =
  fcQStorageInfo_setPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc rootPath*(self: gen_qstorageinfo_types.QStorageInfo): string =
  let v_ms = fcQStorageInfo_rootPath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc device*(self: gen_qstorageinfo_types.QStorageInfo): seq[byte] =
  var v_bytearray = fcQStorageInfo_device(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc subvolume*(self: gen_qstorageinfo_types.QStorageInfo): seq[byte] =
  var v_bytearray = fcQStorageInfo_subvolume(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fileSystemType*(self: gen_qstorageinfo_types.QStorageInfo): seq[byte] =
  var v_bytearray = fcQStorageInfo_fileSystemType(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc name*(self: gen_qstorageinfo_types.QStorageInfo): string =
  let v_ms = fcQStorageInfo_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc displayName*(self: gen_qstorageinfo_types.QStorageInfo): string =
  let v_ms = fcQStorageInfo_displayName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc bytesTotal*(self: gen_qstorageinfo_types.QStorageInfo): clonglong =
  fcQStorageInfo_bytesTotal(self.h)

proc bytesFree*(self: gen_qstorageinfo_types.QStorageInfo): clonglong =
  fcQStorageInfo_bytesFree(self.h)

proc bytesAvailable*(self: gen_qstorageinfo_types.QStorageInfo): clonglong =
  fcQStorageInfo_bytesAvailable(self.h)

proc blockSize*(self: gen_qstorageinfo_types.QStorageInfo): cint =
  fcQStorageInfo_blockSize(self.h)

proc isRoot*(self: gen_qstorageinfo_types.QStorageInfo): bool =
  fcQStorageInfo_isRoot(self.h)

proc isReadOnly*(self: gen_qstorageinfo_types.QStorageInfo): bool =
  fcQStorageInfo_isReadOnly(self.h)

proc isReady*(self: gen_qstorageinfo_types.QStorageInfo): bool =
  fcQStorageInfo_isReady(self.h)

proc isValid*(self: gen_qstorageinfo_types.QStorageInfo): bool =
  fcQStorageInfo_isValid(self.h)

proc refresh*(self: gen_qstorageinfo_types.QStorageInfo): void =
  fcQStorageInfo_refresh(self.h)

proc mountedVolumes*(_: type gen_qstorageinfo_types.QStorageInfo): seq[gen_qstorageinfo_types.QStorageInfo] =
  var v_ma = fcQStorageInfo_mountedVolumes()
  var vx_ret = newSeq[gen_qstorageinfo_types.QStorageInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qstorageinfo_types.QStorageInfo(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc root*(_: type gen_qstorageinfo_types.QStorageInfo): gen_qstorageinfo_types.QStorageInfo =
  gen_qstorageinfo_types.QStorageInfo(h: fcQStorageInfo_root(), owned: true)

proc create*(T: type gen_qstorageinfo_types.QStorageInfo): gen_qstorageinfo_types.QStorageInfo =
  gen_qstorageinfo_types.QStorageInfo(h: fcQStorageInfo_new(), owned: true)

proc create*(T: type gen_qstorageinfo_types.QStorageInfo,
    path: string): gen_qstorageinfo_types.QStorageInfo =
  gen_qstorageinfo_types.QStorageInfo(h: fcQStorageInfo_new2(struct_miqt_string(data: path, len: csize_t(len(path)))), owned: true)

proc create*(T: type gen_qstorageinfo_types.QStorageInfo,
    dir: gen_qdir_types.QDir): gen_qstorageinfo_types.QStorageInfo =
  gen_qstorageinfo_types.QStorageInfo(h: fcQStorageInfo_new3(dir.h), owned: true)

proc create*(T: type gen_qstorageinfo_types.QStorageInfo,
    other: gen_qstorageinfo_types.QStorageInfo): gen_qstorageinfo_types.QStorageInfo =
  gen_qstorageinfo_types.QStorageInfo(h: fcQStorageInfo_new4(other.h), owned: true)

