import ./qtwebenginecore_pkg

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


type QWebEngineFileSystemAccessRequestHandleTypeEnum* = distinct cint
template File*(_: type QWebEngineFileSystemAccessRequestHandleTypeEnum): untyped = 0
template Directory*(_: type QWebEngineFileSystemAccessRequestHandleTypeEnum): untyped = 1


type QWebEngineFileSystemAccessRequestAccessFlagEnum* = distinct cint
template Read*(_: type QWebEngineFileSystemAccessRequestAccessFlagEnum): untyped = 1
template Write*(_: type QWebEngineFileSystemAccessRequestAccessFlagEnum): untyped = 2


import ./gen_qwebenginefilesystemaccessrequest_types
export gen_qwebenginefilesystemaccessrequest_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types
export
  gen_qobjectdefs_types,
  gen_qurl_types

type cQWebEngineFileSystemAccessRequest*{.exportc: "QWebEngineFileSystemAccessRequest", incompleteStruct.} = object

proc fcQWebEngineFileSystemAccessRequest_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebEngineFileSystemAccessRequest_operatorAssign".}
proc fcQWebEngineFileSystemAccessRequest_swap(self: pointer, other: pointer): void {.importc: "QWebEngineFileSystemAccessRequest_swap".}
proc fcQWebEngineFileSystemAccessRequest_accept(self: pointer): void {.importc: "QWebEngineFileSystemAccessRequest_accept".}
proc fcQWebEngineFileSystemAccessRequest_reject(self: pointer): void {.importc: "QWebEngineFileSystemAccessRequest_reject".}
proc fcQWebEngineFileSystemAccessRequest_origin(self: pointer): pointer {.importc: "QWebEngineFileSystemAccessRequest_origin".}
proc fcQWebEngineFileSystemAccessRequest_filePath(self: pointer): pointer {.importc: "QWebEngineFileSystemAccessRequest_filePath".}
proc fcQWebEngineFileSystemAccessRequest_handleType(self: pointer): cint {.importc: "QWebEngineFileSystemAccessRequest_handleType".}
proc fcQWebEngineFileSystemAccessRequest_accessFlags(self: pointer): cint {.importc: "QWebEngineFileSystemAccessRequest_accessFlags".}
proc fcQWebEngineFileSystemAccessRequest_new(other: pointer): ptr cQWebEngineFileSystemAccessRequest {.importc: "QWebEngineFileSystemAccessRequest_new".}
proc fcQWebEngineFileSystemAccessRequest_staticMetaObject(): pointer {.importc: "QWebEngineFileSystemAccessRequest_staticMetaObject".}

proc operatorAssign*(self: gen_qwebenginefilesystemaccessrequest_types.QWebEngineFileSystemAccessRequest, other: gen_qwebenginefilesystemaccessrequest_types.QWebEngineFileSystemAccessRequest): void =
  fcQWebEngineFileSystemAccessRequest_operatorAssign(self.h, other.h)

proc swap*(self: gen_qwebenginefilesystemaccessrequest_types.QWebEngineFileSystemAccessRequest, other: gen_qwebenginefilesystemaccessrequest_types.QWebEngineFileSystemAccessRequest): void =
  fcQWebEngineFileSystemAccessRequest_swap(self.h, other.h)

proc accept*(self: gen_qwebenginefilesystemaccessrequest_types.QWebEngineFileSystemAccessRequest): void =
  fcQWebEngineFileSystemAccessRequest_accept(self.h)

proc reject*(self: gen_qwebenginefilesystemaccessrequest_types.QWebEngineFileSystemAccessRequest): void =
  fcQWebEngineFileSystemAccessRequest_reject(self.h)

proc origin*(self: gen_qwebenginefilesystemaccessrequest_types.QWebEngineFileSystemAccessRequest): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineFileSystemAccessRequest_origin(self.h), owned: true)

proc filePath*(self: gen_qwebenginefilesystemaccessrequest_types.QWebEngineFileSystemAccessRequest): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineFileSystemAccessRequest_filePath(self.h), owned: true)

proc handleType*(self: gen_qwebenginefilesystemaccessrequest_types.QWebEngineFileSystemAccessRequest): cint =
  cint(fcQWebEngineFileSystemAccessRequest_handleType(self.h))

proc accessFlags*(self: gen_qwebenginefilesystemaccessrequest_types.QWebEngineFileSystemAccessRequest): cint =
  cint(fcQWebEngineFileSystemAccessRequest_accessFlags(self.h))

proc create*(T: type gen_qwebenginefilesystemaccessrequest_types.QWebEngineFileSystemAccessRequest,
    other: gen_qwebenginefilesystemaccessrequest_types.QWebEngineFileSystemAccessRequest): gen_qwebenginefilesystemaccessrequest_types.QWebEngineFileSystemAccessRequest =
  gen_qwebenginefilesystemaccessrequest_types.QWebEngineFileSystemAccessRequest(h: fcQWebEngineFileSystemAccessRequest_new(other.h), owned: true)

proc staticMetaObject*(_: type gen_qwebenginefilesystemaccessrequest_types.QWebEngineFileSystemAccessRequest): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineFileSystemAccessRequest_staticMetaObject())
