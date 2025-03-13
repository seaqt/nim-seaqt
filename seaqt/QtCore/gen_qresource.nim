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


type QResourceCompressionEnum* = distinct cint
template NoCompression*(_: type QResourceCompressionEnum): untyped = 0
template ZlibCompression*(_: type QResourceCompressionEnum): untyped = 1
template ZstdCompression*(_: type QResourceCompressionEnum): untyped = 2


import ./gen_qresource_types
export gen_qresource_types

import
  ./gen_qdatetime_types,
  ./gen_qlocale_types
export
  gen_qdatetime_types,
  gen_qlocale_types

type cQResource*{.exportc: "QResource", incompleteStruct.} = object

proc fcQResource_setFileName(self: pointer, file: struct_miqt_string): void {.importc: "QResource_setFileName".}
proc fcQResource_fileName(self: pointer): struct_miqt_string {.importc: "QResource_fileName".}
proc fcQResource_absoluteFilePath(self: pointer): struct_miqt_string {.importc: "QResource_absoluteFilePath".}
proc fcQResource_setLocale(self: pointer, locale: pointer): void {.importc: "QResource_setLocale".}
proc fcQResource_locale(self: pointer): pointer {.importc: "QResource_locale".}
proc fcQResource_isValid(self: pointer): bool {.importc: "QResource_isValid".}
proc fcQResource_compressionAlgorithm(self: pointer): cint {.importc: "QResource_compressionAlgorithm".}
proc fcQResource_size(self: pointer): clonglong {.importc: "QResource_size".}
proc fcQResource_data(self: pointer): ptr uint8 {.importc: "QResource_data".}
proc fcQResource_uncompressedSize(self: pointer): clonglong {.importc: "QResource_uncompressedSize".}
proc fcQResource_uncompressedData(self: pointer): struct_miqt_string {.importc: "QResource_uncompressedData".}
proc fcQResource_lastModified(self: pointer): pointer {.importc: "QResource_lastModified".}
proc fcQResource_addSearchPath(path: struct_miqt_string): void {.importc: "QResource_addSearchPath".}
proc fcQResource_searchPaths(): struct_miqt_array {.importc: "QResource_searchPaths".}
proc fcQResource_isCompressed(self: pointer): bool {.importc: "QResource_isCompressed".}
proc fcQResource_registerResource(rccFilename: struct_miqt_string): bool {.importc: "QResource_registerResource".}
proc fcQResource_unregisterResource(rccFilename: struct_miqt_string): bool {.importc: "QResource_unregisterResource".}
proc fcQResource_registerResourceWithRccData(rccData: ptr uint8): bool {.importc: "QResource_registerResourceWithRccData".}
proc fcQResource_unregisterResourceWithRccData(rccData: ptr uint8): bool {.importc: "QResource_unregisterResourceWithRccData".}
proc fcQResource_registerResource2(rccFilename: struct_miqt_string, resourceRoot: struct_miqt_string): bool {.importc: "QResource_registerResource2".}
proc fcQResource_unregisterResource2(rccFilename: struct_miqt_string, resourceRoot: struct_miqt_string): bool {.importc: "QResource_unregisterResource2".}
proc fcQResource_registerResource22(rccData: ptr uint8, resourceRoot: struct_miqt_string): bool {.importc: "QResource_registerResource22".}
proc fcQResource_unregisterResource22(rccData: ptr uint8, resourceRoot: struct_miqt_string): bool {.importc: "QResource_unregisterResource22".}
proc fcQResource_protectedbase_isDir(self: pointer): bool {.importc: "QResource_protectedbase_isDir".}
proc fcQResource_protectedbase_isFile(self: pointer): bool {.importc: "QResource_protectedbase_isFile".}
proc fcQResource_protectedbase_children(self: pointer): struct_miqt_array {.importc: "QResource_protectedbase_children".}
proc fcQResource_new(): ptr cQResource {.importc: "QResource_new".}
proc fcQResource_new2(file: struct_miqt_string): ptr cQResource {.importc: "QResource_new2".}
proc fcQResource_new3(file: struct_miqt_string, locale: pointer): ptr cQResource {.importc: "QResource_new3".}

proc setFileName*(self: gen_qresource_types.QResource, file: openArray[char]): void =
  fcQResource_setFileName(self.h, struct_miqt_string(data: if len(file) > 0: addr file[0] else: nil, len: csize_t(len(file))))

proc fileName*(self: gen_qresource_types.QResource): string =
  let v_ms = fcQResource_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc absoluteFilePath*(self: gen_qresource_types.QResource): string =
  let v_ms = fcQResource_absoluteFilePath(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setLocale*(self: gen_qresource_types.QResource, locale: gen_qlocale_types.QLocale): void =
  fcQResource_setLocale(self.h, locale.h)

proc locale*(self: gen_qresource_types.QResource): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQResource_locale(self.h), owned: true)

proc isValid*(self: gen_qresource_types.QResource): bool =
  fcQResource_isValid(self.h)

proc compressionAlgorithm*(self: gen_qresource_types.QResource): cint =
  cint(fcQResource_compressionAlgorithm(self.h))

proc size*(self: gen_qresource_types.QResource): clonglong =
  fcQResource_size(self.h)

proc data*(self: gen_qresource_types.QResource): ptr uint8 =
  fcQResource_data(self.h)

proc uncompressedSize*(self: gen_qresource_types.QResource): clonglong =
  fcQResource_uncompressedSize(self.h)

proc uncompressedData*(self: gen_qresource_types.QResource): seq[byte] =
  var v_bytearray = fcQResource_uncompressedData(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc lastModified*(self: gen_qresource_types.QResource): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQResource_lastModified(self.h), owned: true)

proc addSearchPath*(_: type gen_qresource_types.QResource, path: openArray[char]): void =
  fcQResource_addSearchPath(struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc searchPaths*(_: type gen_qresource_types.QResource): seq[string] =
  var v_ma = fcQResource_searchPaths()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc isCompressed*(self: gen_qresource_types.QResource): bool =
  fcQResource_isCompressed(self.h)

proc registerResource*(_: type gen_qresource_types.QResource, rccFilename: openArray[char]): bool =
  fcQResource_registerResource(struct_miqt_string(data: if len(rccFilename) > 0: addr rccFilename[0] else: nil, len: csize_t(len(rccFilename))))

proc unregisterResource*(_: type gen_qresource_types.QResource, rccFilename: openArray[char]): bool =
  fcQResource_unregisterResource(struct_miqt_string(data: if len(rccFilename) > 0: addr rccFilename[0] else: nil, len: csize_t(len(rccFilename))))

proc registerResource*(_: type gen_qresource_types.QResource, rccData: ptr uint8): bool =
  fcQResource_registerResourceWithRccData(rccData)

proc unregisterResource*(_: type gen_qresource_types.QResource, rccData: ptr uint8): bool =
  fcQResource_unregisterResourceWithRccData(rccData)

proc registerResource*(_: type gen_qresource_types.QResource, rccFilename: openArray[char], resourceRoot: openArray[char]): bool =
  fcQResource_registerResource2(struct_miqt_string(data: if len(rccFilename) > 0: addr rccFilename[0] else: nil, len: csize_t(len(rccFilename))), struct_miqt_string(data: if len(resourceRoot) > 0: addr resourceRoot[0] else: nil, len: csize_t(len(resourceRoot))))

proc unregisterResource*(_: type gen_qresource_types.QResource, rccFilename: openArray[char], resourceRoot: openArray[char]): bool =
  fcQResource_unregisterResource2(struct_miqt_string(data: if len(rccFilename) > 0: addr rccFilename[0] else: nil, len: csize_t(len(rccFilename))), struct_miqt_string(data: if len(resourceRoot) > 0: addr resourceRoot[0] else: nil, len: csize_t(len(resourceRoot))))

proc registerResource*(_: type gen_qresource_types.QResource, rccData: ptr uint8, resourceRoot: openArray[char]): bool =
  fcQResource_registerResource22(rccData, struct_miqt_string(data: if len(resourceRoot) > 0: addr resourceRoot[0] else: nil, len: csize_t(len(resourceRoot))))

proc unregisterResource*(_: type gen_qresource_types.QResource, rccData: ptr uint8, resourceRoot: openArray[char]): bool =
  fcQResource_unregisterResource22(rccData, struct_miqt_string(data: if len(resourceRoot) > 0: addr resourceRoot[0] else: nil, len: csize_t(len(resourceRoot))))

proc isDir*(self: gen_qresource_types.QResource): bool =
  fcQResource_protectedbase_isDir(self.h)

proc isFile*(self: gen_qresource_types.QResource): bool =
  fcQResource_protectedbase_isFile(self.h)

proc children*(self: gen_qresource_types.QResource): seq[string] =
  var v_ma = fcQResource_protectedbase_children(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc create*(T: type gen_qresource_types.QResource): gen_qresource_types.QResource =
  gen_qresource_types.QResource(h: fcQResource_new(), owned: true)

proc create*(T: type gen_qresource_types.QResource,
    file: openArray[char]): gen_qresource_types.QResource =
  gen_qresource_types.QResource(h: fcQResource_new2(struct_miqt_string(data: if len(file) > 0: addr file[0] else: nil, len: csize_t(len(file)))), owned: true)

proc create*(T: type gen_qresource_types.QResource,
    file: openArray[char], locale: gen_qlocale_types.QLocale): gen_qresource_types.QResource =
  gen_qresource_types.QResource(h: fcQResource_new3(struct_miqt_string(data: if len(file) > 0: addr file[0] else: nil, len: csize_t(len(file))), locale.h), owned: true)

