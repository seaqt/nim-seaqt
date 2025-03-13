import ./Qt5Core_libs

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


type QMimeDatabaseMatchModeEnum* = distinct cint
template MatchDefault*(_: type QMimeDatabaseMatchModeEnum): untyped = 0
template MatchExtension*(_: type QMimeDatabaseMatchModeEnum): untyped = 1
template MatchContent*(_: type QMimeDatabaseMatchModeEnum): untyped = 2


import ./gen_qmimedatabase_types
export gen_qmimedatabase_types

import
  ./gen_qfileinfo_types,
  ./gen_qiodevice_types,
  ./gen_qmimetype_types,
  ./gen_qurl_types
export
  gen_qfileinfo_types,
  gen_qiodevice_types,
  gen_qmimetype_types,
  gen_qurl_types

type cQMimeDatabase*{.exportc: "QMimeDatabase", incompleteStruct.} = object

proc fcQMimeDatabase_mimeTypeForName(self: pointer, nameOrAlias: struct_miqt_string): pointer {.importc: "QMimeDatabase_mimeTypeForName".}
proc fcQMimeDatabase_mimeTypeForFile(self: pointer, fileName: struct_miqt_string): pointer {.importc: "QMimeDatabase_mimeTypeForFile".}
proc fcQMimeDatabase_mimeTypeForFileWithFileInfo(self: pointer, fileInfo: pointer): pointer {.importc: "QMimeDatabase_mimeTypeForFileWithFileInfo".}
proc fcQMimeDatabase_mimeTypesForFileName(self: pointer, fileName: struct_miqt_string): struct_miqt_array {.importc: "QMimeDatabase_mimeTypesForFileName".}
proc fcQMimeDatabase_mimeTypeForData(self: pointer, data: struct_miqt_string): pointer {.importc: "QMimeDatabase_mimeTypeForData".}
proc fcQMimeDatabase_mimeTypeForDataWithDevice(self: pointer, device: pointer): pointer {.importc: "QMimeDatabase_mimeTypeForDataWithDevice".}
proc fcQMimeDatabase_mimeTypeForUrl(self: pointer, url: pointer): pointer {.importc: "QMimeDatabase_mimeTypeForUrl".}
proc fcQMimeDatabase_mimeTypeForFileNameAndData(self: pointer, fileName: struct_miqt_string, device: pointer): pointer {.importc: "QMimeDatabase_mimeTypeForFileNameAndData".}
proc fcQMimeDatabase_mimeTypeForFileNameAndData2(self: pointer, fileName: struct_miqt_string, data: struct_miqt_string): pointer {.importc: "QMimeDatabase_mimeTypeForFileNameAndData2".}
proc fcQMimeDatabase_suffixForFileName(self: pointer, fileName: struct_miqt_string): struct_miqt_string {.importc: "QMimeDatabase_suffixForFileName".}
proc fcQMimeDatabase_allMimeTypes(self: pointer): struct_miqt_array {.importc: "QMimeDatabase_allMimeTypes".}
proc fcQMimeDatabase_mimeTypeForFile2(self: pointer, fileName: struct_miqt_string, mode: cint): pointer {.importc: "QMimeDatabase_mimeTypeForFile2".}
proc fcQMimeDatabase_mimeTypeForFile22(self: pointer, fileInfo: pointer, mode: cint): pointer {.importc: "QMimeDatabase_mimeTypeForFile22".}
proc fcQMimeDatabase_new(): ptr cQMimeDatabase {.importc: "QMimeDatabase_new".}

proc mimeTypeForName*(self: gen_qmimedatabase_types.QMimeDatabase, nameOrAlias: openArray[char]): gen_qmimetype_types.QMimeType =
  gen_qmimetype_types.QMimeType(h: fcQMimeDatabase_mimeTypeForName(self.h, struct_miqt_string(data: if len(nameOrAlias) > 0: addr nameOrAlias[0] else: nil, len: csize_t(len(nameOrAlias)))), owned: true)

proc mimeTypeForFile*(self: gen_qmimedatabase_types.QMimeDatabase, fileName: openArray[char]): gen_qmimetype_types.QMimeType =
  gen_qmimetype_types.QMimeType(h: fcQMimeDatabase_mimeTypeForFile(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName)))), owned: true)

proc mimeTypeForFile*(self: gen_qmimedatabase_types.QMimeDatabase, fileInfo: gen_qfileinfo_types.QFileInfo): gen_qmimetype_types.QMimeType =
  gen_qmimetype_types.QMimeType(h: fcQMimeDatabase_mimeTypeForFileWithFileInfo(self.h, fileInfo.h), owned: true)

proc mimeTypesForFileName*(self: gen_qmimedatabase_types.QMimeDatabase, fileName: openArray[char]): seq[gen_qmimetype_types.QMimeType] =
  var v_ma = fcQMimeDatabase_mimeTypesForFileName(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))
  var vx_ret = newSeq[gen_qmimetype_types.QMimeType](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmimetype_types.QMimeType(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc mimeTypeForData*(self: gen_qmimedatabase_types.QMimeDatabase, data: openArray[byte]): gen_qmimetype_types.QMimeType =
  gen_qmimetype_types.QMimeType(h: fcQMimeDatabase_mimeTypeForData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))), owned: true)

proc mimeTypeForData*(self: gen_qmimedatabase_types.QMimeDatabase, device: gen_qiodevice_types.QIODevice): gen_qmimetype_types.QMimeType =
  gen_qmimetype_types.QMimeType(h: fcQMimeDatabase_mimeTypeForDataWithDevice(self.h, device.h), owned: true)

proc mimeTypeForUrl*(self: gen_qmimedatabase_types.QMimeDatabase, url: gen_qurl_types.QUrl): gen_qmimetype_types.QMimeType =
  gen_qmimetype_types.QMimeType(h: fcQMimeDatabase_mimeTypeForUrl(self.h, url.h), owned: true)

proc mimeTypeForFileNameAndData*(self: gen_qmimedatabase_types.QMimeDatabase, fileName: openArray[char], device: gen_qiodevice_types.QIODevice): gen_qmimetype_types.QMimeType =
  gen_qmimetype_types.QMimeType(h: fcQMimeDatabase_mimeTypeForFileNameAndData(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), device.h), owned: true)

proc mimeTypeForFileNameAndData*(self: gen_qmimedatabase_types.QMimeDatabase, fileName: openArray[char], data: openArray[byte]): gen_qmimetype_types.QMimeType =
  gen_qmimetype_types.QMimeType(h: fcQMimeDatabase_mimeTypeForFileNameAndData2(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))), owned: true)

proc suffixForFileName*(self: gen_qmimedatabase_types.QMimeDatabase, fileName: openArray[char]): string =
  let v_ms = fcQMimeDatabase_suffixForFileName(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc allMimeTypes*(self: gen_qmimedatabase_types.QMimeDatabase): seq[gen_qmimetype_types.QMimeType] =
  var v_ma = fcQMimeDatabase_allMimeTypes(self.h)
  var vx_ret = newSeq[gen_qmimetype_types.QMimeType](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmimetype_types.QMimeType(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc mimeTypeForFile*(self: gen_qmimedatabase_types.QMimeDatabase, fileName: openArray[char], mode: cint): gen_qmimetype_types.QMimeType =
  gen_qmimetype_types.QMimeType(h: fcQMimeDatabase_mimeTypeForFile2(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), cint(mode)), owned: true)

proc mimeTypeForFile*(self: gen_qmimedatabase_types.QMimeDatabase, fileInfo: gen_qfileinfo_types.QFileInfo, mode: cint): gen_qmimetype_types.QMimeType =
  gen_qmimetype_types.QMimeType(h: fcQMimeDatabase_mimeTypeForFile22(self.h, fileInfo.h, cint(mode)), owned: true)

proc create*(T: type gen_qmimedatabase_types.QMimeDatabase): gen_qmimedatabase_types.QMimeDatabase =
  gen_qmimedatabase_types.QMimeDatabase(h: fcQMimeDatabase_new(), owned: true)

