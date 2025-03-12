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


import ./gen_qfileinfo_types
export gen_qfileinfo_types

import
  ./gen_qdatetime_types,
  ./gen_qdir_types,
  ./gen_qfile_types
export
  gen_qdatetime_types,
  gen_qdir_types,
  gen_qfile_types

type cQFileInfo*{.exportc: "QFileInfo", incompleteStruct.} = object

proc fcQFileInfo_operatorAssign(self: pointer, fileinfo: pointer): void {.importc: "QFileInfo_operatorAssign".}
proc fcQFileInfo_swap(self: pointer, other: pointer): void {.importc: "QFileInfo_swap".}
proc fcQFileInfo_operatorEqual(self: pointer, fileinfo: pointer): bool {.importc: "QFileInfo_operatorEqual".}
proc fcQFileInfo_operatorNotEqual(self: pointer, fileinfo: pointer): bool {.importc: "QFileInfo_operatorNotEqual".}
proc fcQFileInfo_setFile(self: pointer, file: struct_miqt_string): void {.importc: "QFileInfo_setFile".}
proc fcQFileInfo_setFileWithFile(self: pointer, file: pointer): void {.importc: "QFileInfo_setFileWithFile".}
proc fcQFileInfo_setFile2(self: pointer, dir: pointer, file: struct_miqt_string): void {.importc: "QFileInfo_setFile2".}
proc fcQFileInfo_exists(self: pointer): bool {.importc: "QFileInfo_exists".}
proc fcQFileInfo_existsWithFile(file: struct_miqt_string): bool {.importc: "QFileInfo_existsWithFile".}
proc fcQFileInfo_refresh(self: pointer): void {.importc: "QFileInfo_refresh".}
proc fcQFileInfo_filePath(self: pointer): struct_miqt_string {.importc: "QFileInfo_filePath".}
proc fcQFileInfo_absoluteFilePath(self: pointer): struct_miqt_string {.importc: "QFileInfo_absoluteFilePath".}
proc fcQFileInfo_canonicalFilePath(self: pointer): struct_miqt_string {.importc: "QFileInfo_canonicalFilePath".}
proc fcQFileInfo_fileName(self: pointer): struct_miqt_string {.importc: "QFileInfo_fileName".}
proc fcQFileInfo_baseName(self: pointer): struct_miqt_string {.importc: "QFileInfo_baseName".}
proc fcQFileInfo_completeBaseName(self: pointer): struct_miqt_string {.importc: "QFileInfo_completeBaseName".}
proc fcQFileInfo_suffix(self: pointer): struct_miqt_string {.importc: "QFileInfo_suffix".}
proc fcQFileInfo_bundleName(self: pointer): struct_miqt_string {.importc: "QFileInfo_bundleName".}
proc fcQFileInfo_completeSuffix(self: pointer): struct_miqt_string {.importc: "QFileInfo_completeSuffix".}
proc fcQFileInfo_path(self: pointer): struct_miqt_string {.importc: "QFileInfo_path".}
proc fcQFileInfo_absolutePath(self: pointer): struct_miqt_string {.importc: "QFileInfo_absolutePath".}
proc fcQFileInfo_canonicalPath(self: pointer): struct_miqt_string {.importc: "QFileInfo_canonicalPath".}
proc fcQFileInfo_dir(self: pointer): pointer {.importc: "QFileInfo_dir".}
proc fcQFileInfo_absoluteDir(self: pointer): pointer {.importc: "QFileInfo_absoluteDir".}
proc fcQFileInfo_isReadable(self: pointer): bool {.importc: "QFileInfo_isReadable".}
proc fcQFileInfo_isWritable(self: pointer): bool {.importc: "QFileInfo_isWritable".}
proc fcQFileInfo_isExecutable(self: pointer): bool {.importc: "QFileInfo_isExecutable".}
proc fcQFileInfo_isHidden(self: pointer): bool {.importc: "QFileInfo_isHidden".}
proc fcQFileInfo_isNativePath(self: pointer): bool {.importc: "QFileInfo_isNativePath".}
proc fcQFileInfo_isRelative(self: pointer): bool {.importc: "QFileInfo_isRelative".}
proc fcQFileInfo_isAbsolute(self: pointer): bool {.importc: "QFileInfo_isAbsolute".}
proc fcQFileInfo_makeAbsolute(self: pointer): bool {.importc: "QFileInfo_makeAbsolute".}
proc fcQFileInfo_isFile(self: pointer): bool {.importc: "QFileInfo_isFile".}
proc fcQFileInfo_isDir(self: pointer): bool {.importc: "QFileInfo_isDir".}
proc fcQFileInfo_isSymLink(self: pointer): bool {.importc: "QFileInfo_isSymLink".}
proc fcQFileInfo_isSymbolicLink(self: pointer): bool {.importc: "QFileInfo_isSymbolicLink".}
proc fcQFileInfo_isShortcut(self: pointer): bool {.importc: "QFileInfo_isShortcut".}
proc fcQFileInfo_isJunction(self: pointer): bool {.importc: "QFileInfo_isJunction".}
proc fcQFileInfo_isRoot(self: pointer): bool {.importc: "QFileInfo_isRoot".}
proc fcQFileInfo_isBundle(self: pointer): bool {.importc: "QFileInfo_isBundle".}
proc fcQFileInfo_readLink(self: pointer): struct_miqt_string {.importc: "QFileInfo_readLink".}
proc fcQFileInfo_symLinkTarget(self: pointer): struct_miqt_string {.importc: "QFileInfo_symLinkTarget".}
proc fcQFileInfo_owner(self: pointer): struct_miqt_string {.importc: "QFileInfo_owner".}
proc fcQFileInfo_ownerId(self: pointer): cuint {.importc: "QFileInfo_ownerId".}
proc fcQFileInfo_group(self: pointer): struct_miqt_string {.importc: "QFileInfo_group".}
proc fcQFileInfo_groupId(self: pointer): cuint {.importc: "QFileInfo_groupId".}
proc fcQFileInfo_permission(self: pointer, permissions: cint): bool {.importc: "QFileInfo_permission".}
proc fcQFileInfo_permissions(self: pointer): cint {.importc: "QFileInfo_permissions".}
proc fcQFileInfo_size(self: pointer): clonglong {.importc: "QFileInfo_size".}
proc fcQFileInfo_created(self: pointer): pointer {.importc: "QFileInfo_created".}
proc fcQFileInfo_birthTime(self: pointer): pointer {.importc: "QFileInfo_birthTime".}
proc fcQFileInfo_metadataChangeTime(self: pointer): pointer {.importc: "QFileInfo_metadataChangeTime".}
proc fcQFileInfo_lastModified(self: pointer): pointer {.importc: "QFileInfo_lastModified".}
proc fcQFileInfo_lastRead(self: pointer): pointer {.importc: "QFileInfo_lastRead".}
proc fcQFileInfo_fileTime(self: pointer, time: cint): pointer {.importc: "QFileInfo_fileTime".}
proc fcQFileInfo_caching(self: pointer): bool {.importc: "QFileInfo_caching".}
proc fcQFileInfo_setCaching(self: pointer, on: bool): void {.importc: "QFileInfo_setCaching".}
proc fcQFileInfo_new(): ptr cQFileInfo {.importc: "QFileInfo_new".}
proc fcQFileInfo_new2(file: struct_miqt_string): ptr cQFileInfo {.importc: "QFileInfo_new2".}
proc fcQFileInfo_new3(file: pointer): ptr cQFileInfo {.importc: "QFileInfo_new3".}
proc fcQFileInfo_new4(dir: pointer, file: struct_miqt_string): ptr cQFileInfo {.importc: "QFileInfo_new4".}
proc fcQFileInfo_new5(fileinfo: pointer): ptr cQFileInfo {.importc: "QFileInfo_new5".}

proc operatorAssign*(self: gen_qfileinfo_types.QFileInfo, fileinfo: gen_qfileinfo_types.QFileInfo): void =
  fcQFileInfo_operatorAssign(self.h, fileinfo.h)

proc swap*(self: gen_qfileinfo_types.QFileInfo, other: gen_qfileinfo_types.QFileInfo): void =
  fcQFileInfo_swap(self.h, other.h)

proc operatorEqual*(self: gen_qfileinfo_types.QFileInfo, fileinfo: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_operatorEqual(self.h, fileinfo.h)

proc operatorNotEqual*(self: gen_qfileinfo_types.QFileInfo, fileinfo: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_operatorNotEqual(self.h, fileinfo.h)

proc setFile*(self: gen_qfileinfo_types.QFileInfo, file: string): void =
  fcQFileInfo_setFile(self.h, struct_miqt_string(data: file, len: csize_t(len(file))))

proc setFile*(self: gen_qfileinfo_types.QFileInfo, file: gen_qfile_types.QFile): void =
  fcQFileInfo_setFileWithFile(self.h, file.h)

proc setFile*(self: gen_qfileinfo_types.QFileInfo, dir: gen_qdir_types.QDir, file: string): void =
  fcQFileInfo_setFile2(self.h, dir.h, struct_miqt_string(data: file, len: csize_t(len(file))))

proc exists*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_exists(self.h)

proc exists*(_: type gen_qfileinfo_types.QFileInfo, file: string): bool =
  fcQFileInfo_existsWithFile(struct_miqt_string(data: file, len: csize_t(len(file))))

proc refresh*(self: gen_qfileinfo_types.QFileInfo): void =
  fcQFileInfo_refresh(self.h)

proc filePath*(self: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileInfo_filePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc absoluteFilePath*(self: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileInfo_absoluteFilePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc canonicalFilePath*(self: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileInfo_canonicalFilePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileName*(self: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileInfo_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc baseName*(self: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileInfo_baseName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc completeBaseName*(self: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileInfo_completeBaseName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc suffix*(self: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileInfo_suffix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc bundleName*(self: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileInfo_bundleName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc completeSuffix*(self: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileInfo_completeSuffix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc path*(self: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileInfo_path(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc absolutePath*(self: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileInfo_absolutePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc canonicalPath*(self: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileInfo_canonicalPath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc dir*(self: gen_qfileinfo_types.QFileInfo): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQFileInfo_dir(self.h), owned: true)

proc absoluteDir*(self: gen_qfileinfo_types.QFileInfo): gen_qdir_types.QDir =
  gen_qdir_types.QDir(h: fcQFileInfo_absoluteDir(self.h), owned: true)

proc isReadable*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_isReadable(self.h)

proc isWritable*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_isWritable(self.h)

proc isExecutable*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_isExecutable(self.h)

proc isHidden*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_isHidden(self.h)

proc isNativePath*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_isNativePath(self.h)

proc isRelative*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_isRelative(self.h)

proc isAbsolute*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_isAbsolute(self.h)

proc makeAbsolute*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_makeAbsolute(self.h)

proc isFile*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_isFile(self.h)

proc isDir*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_isDir(self.h)

proc isSymLink*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_isSymLink(self.h)

proc isSymbolicLink*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_isSymbolicLink(self.h)

proc isShortcut*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_isShortcut(self.h)

proc isJunction*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_isJunction(self.h)

proc isRoot*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_isRoot(self.h)

proc isBundle*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_isBundle(self.h)

proc readLink*(self: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileInfo_readLink(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc symLinkTarget*(self: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileInfo_symLinkTarget(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc owner*(self: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileInfo_owner(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc ownerId*(self: gen_qfileinfo_types.QFileInfo): cuint =
  fcQFileInfo_ownerId(self.h)

proc group*(self: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileInfo_group(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc groupId*(self: gen_qfileinfo_types.QFileInfo): cuint =
  fcQFileInfo_groupId(self.h)

proc permission*(self: gen_qfileinfo_types.QFileInfo, permissions: cint): bool =
  fcQFileInfo_permission(self.h, cint(permissions))

proc permissions*(self: gen_qfileinfo_types.QFileInfo): cint =
  cint(fcQFileInfo_permissions(self.h))

proc size*(self: gen_qfileinfo_types.QFileInfo): clonglong =
  fcQFileInfo_size(self.h)

proc created*(self: gen_qfileinfo_types.QFileInfo): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQFileInfo_created(self.h), owned: true)

proc birthTime*(self: gen_qfileinfo_types.QFileInfo): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQFileInfo_birthTime(self.h), owned: true)

proc metadataChangeTime*(self: gen_qfileinfo_types.QFileInfo): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQFileInfo_metadataChangeTime(self.h), owned: true)

proc lastModified*(self: gen_qfileinfo_types.QFileInfo): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQFileInfo_lastModified(self.h), owned: true)

proc lastRead*(self: gen_qfileinfo_types.QFileInfo): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQFileInfo_lastRead(self.h), owned: true)

proc fileTime*(self: gen_qfileinfo_types.QFileInfo, time: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQFileInfo_fileTime(self.h, cint(time)), owned: true)

proc caching*(self: gen_qfileinfo_types.QFileInfo): bool =
  fcQFileInfo_caching(self.h)

proc setCaching*(self: gen_qfileinfo_types.QFileInfo, on: bool): void =
  fcQFileInfo_setCaching(self.h, on)

proc create*(T: type gen_qfileinfo_types.QFileInfo): gen_qfileinfo_types.QFileInfo =
  gen_qfileinfo_types.QFileInfo(h: fcQFileInfo_new(), owned: true)

proc create*(T: type gen_qfileinfo_types.QFileInfo,
    file: string): gen_qfileinfo_types.QFileInfo =
  gen_qfileinfo_types.QFileInfo(h: fcQFileInfo_new2(struct_miqt_string(data: file, len: csize_t(len(file)))), owned: true)

proc create*(T: type gen_qfileinfo_types.QFileInfo,
    file: gen_qfile_types.QFile): gen_qfileinfo_types.QFileInfo =
  gen_qfileinfo_types.QFileInfo(h: fcQFileInfo_new3(file.h), owned: true)

proc create*(T: type gen_qfileinfo_types.QFileInfo,
    dir: gen_qdir_types.QDir, file: string): gen_qfileinfo_types.QFileInfo =
  gen_qfileinfo_types.QFileInfo(h: fcQFileInfo_new4(dir.h, struct_miqt_string(data: file, len: csize_t(len(file)))), owned: true)

proc create*(T: type gen_qfileinfo_types.QFileInfo,
    fileinfo: gen_qfileinfo_types.QFileInfo): gen_qfileinfo_types.QFileInfo =
  gen_qfileinfo_types.QFileInfo(h: fcQFileInfo_new5(fileinfo.h), owned: true)

