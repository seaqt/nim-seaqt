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


{.compile("gen_qwebengineurlrequestjob.cpp", QtWebEngineCoreCFlags).}


type QWebEngineUrlRequestJobErrorEnum* = distinct cint
template NoError*(_: type QWebEngineUrlRequestJobErrorEnum): untyped = 0
template UrlNotFound*(_: type QWebEngineUrlRequestJobErrorEnum): untyped = 1
template UrlInvalid*(_: type QWebEngineUrlRequestJobErrorEnum): untyped = 2
template RequestAborted*(_: type QWebEngineUrlRequestJobErrorEnum): untyped = 3
template RequestDenied*(_: type QWebEngineUrlRequestJobErrorEnum): untyped = 4
template RequestFailed*(_: type QWebEngineUrlRequestJobErrorEnum): untyped = 5


import ./gen_qwebengineurlrequestjob_types
export gen_qwebengineurlrequestjob_types

import
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types
export
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types

type cQWebEngineUrlRequestJob*{.exportc: "QWebEngineUrlRequestJob", incompleteStruct.} = object

proc fcQWebEngineUrlRequestJob_metaObject(self: pointer): pointer {.importc: "QWebEngineUrlRequestJob_metaObject".}
proc fcQWebEngineUrlRequestJob_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineUrlRequestJob_metacast".}
proc fcQWebEngineUrlRequestJob_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineUrlRequestJob_metacall".}
proc fcQWebEngineUrlRequestJob_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestJob_tr".}
proc fcQWebEngineUrlRequestJob_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestJob_trUtf8".}
proc fcQWebEngineUrlRequestJob_requestUrl(self: pointer): pointer {.importc: "QWebEngineUrlRequestJob_requestUrl".}
proc fcQWebEngineUrlRequestJob_requestMethod(self: pointer): struct_miqt_string {.importc: "QWebEngineUrlRequestJob_requestMethod".}
proc fcQWebEngineUrlRequestJob_initiator(self: pointer): pointer {.importc: "QWebEngineUrlRequestJob_initiator".}
proc fcQWebEngineUrlRequestJob_reply(self: pointer, contentType: struct_miqt_string, device: pointer): void {.importc: "QWebEngineUrlRequestJob_reply".}
proc fcQWebEngineUrlRequestJob_fail(self: pointer, error: cint): void {.importc: "QWebEngineUrlRequestJob_fail".}
proc fcQWebEngineUrlRequestJob_redirect(self: pointer, url: pointer): void {.importc: "QWebEngineUrlRequestJob_redirect".}
proc fcQWebEngineUrlRequestJob_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestJob_tr2".}
proc fcQWebEngineUrlRequestJob_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineUrlRequestJob_tr3".}
proc fcQWebEngineUrlRequestJob_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestJob_trUtf82".}
proc fcQWebEngineUrlRequestJob_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineUrlRequestJob_trUtf83".}
proc fcQWebEngineUrlRequestJob_protectedbase_sender(self: pointer): pointer {.importc: "QWebEngineUrlRequestJob_protectedbase_sender".}
proc fcQWebEngineUrlRequestJob_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWebEngineUrlRequestJob_protectedbase_senderSignalIndex".}
proc fcQWebEngineUrlRequestJob_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebEngineUrlRequestJob_protectedbase_receivers".}
proc fcQWebEngineUrlRequestJob_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebEngineUrlRequestJob_protectedbase_isSignalConnected".}
proc fcQWebEngineUrlRequestJob_staticMetaObject(): pointer {.importc: "QWebEngineUrlRequestJob_staticMetaObject".}

proc metaObject*(self: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineUrlRequestJob_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob, param1: cstring): pointer =
  fcQWebEngineUrlRequestJob_metacast(self.h, param1)

proc metacall*(self: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineUrlRequestJob_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob, s: cstring): string =
  let v_ms = fcQWebEngineUrlRequestJob_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob, s: cstring): string =
  let v_ms = fcQWebEngineUrlRequestJob_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc requestUrl*(self: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineUrlRequestJob_requestUrl(self.h), owned: true)

proc requestMethod*(self: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob): seq[byte] =
  var v_bytearray = fcQWebEngineUrlRequestJob_requestMethod(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc initiator*(self: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineUrlRequestJob_initiator(self.h), owned: true)

proc reply*(self: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob, contentType: openArray[byte], device: gen_qiodevice_types.QIODevice): void =
  fcQWebEngineUrlRequestJob_reply(self.h, struct_miqt_string(data: cast[cstring](if len(contentType) == 0: nil else: unsafeAddr contentType[0]), len: csize_t(len(contentType))), device.h)

proc fail*(self: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob, error: cint): void =
  fcQWebEngineUrlRequestJob_fail(self.h, cint(error))

proc redirect*(self: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob, url: gen_qurl_types.QUrl): void =
  fcQWebEngineUrlRequestJob_redirect(self.h, url.h)

proc tr*(_: type gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineUrlRequestJob_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineUrlRequestJob_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineUrlRequestJob_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineUrlRequestJob_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebEngineUrlRequestJob_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob): cint =
  fcQWebEngineUrlRequestJob_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob, signal: cstring): cint =
  fcQWebEngineUrlRequestJob_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebEngineUrlRequestJob_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineUrlRequestJob_staticMetaObject())
