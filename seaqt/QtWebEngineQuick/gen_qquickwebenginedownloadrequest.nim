import ./qtwebenginequick_pkg

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


{.compile("gen_qquickwebenginedownloadrequest.cpp", QtWebEngineQuickCFlags).}


type QQuickWebEngineDownloadRequestQmlIsUncreatableEnum* = distinct cint
template yes*(_: type QQuickWebEngineDownloadRequestQmlIsUncreatableEnum): untyped = 1


import ./gen_qquickwebenginedownloadrequest_types
export gen_qquickwebenginedownloadrequest_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtWebEngineCore/gen_qwebenginedownloadrequest
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qwebenginedownloadrequest

type cQQuickWebEngineDownloadRequest*{.exportc: "QQuickWebEngineDownloadRequest", incompleteStruct.} = object

proc fcQQuickWebEngineDownloadRequest_metaObject(self: pointer): pointer {.importc: "QQuickWebEngineDownloadRequest_metaObject".}
proc fcQQuickWebEngineDownloadRequest_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickWebEngineDownloadRequest_metacast".}
proc fcQQuickWebEngineDownloadRequest_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickWebEngineDownloadRequest_metacall".}
proc fcQQuickWebEngineDownloadRequest_trS(s: cstring): struct_seaqt_string {.importc: "QQuickWebEngineDownloadRequest_tr_s".}
proc fcQQuickWebEngineDownloadRequest_qmlMarkerUncreatable(self: pointer): void {.importc: "QQuickWebEngineDownloadRequest_qmlMarker_uncreatable".}
proc fcQQuickWebEngineDownloadRequest_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QQuickWebEngineDownloadRequest_tr_s_c".}
proc fcQQuickWebEngineDownloadRequest_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QQuickWebEngineDownloadRequest_tr_s_c_n".}
proc fcQQuickWebEngineDownloadRequest_protectedbase_sender(self: pointer): pointer {.importc: "QQuickWebEngineDownloadRequest_protectedbase_sender".}
proc fcQQuickWebEngineDownloadRequest_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQuickWebEngineDownloadRequest_protectedbase_senderSignalIndex".}
proc fcQQuickWebEngineDownloadRequest_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickWebEngineDownloadRequest_protectedbase_receivers".}
proc fcQQuickWebEngineDownloadRequest_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickWebEngineDownloadRequest_protectedbase_isSignalConnected".}
proc fcQQuickWebEngineDownloadRequest_staticMetaObject(): pointer {.importc: "QQuickWebEngineDownloadRequest_staticMetaObject".}

proc metaObject*(self: gen_qquickwebenginedownloadrequest_types.QQuickWebEngineDownloadRequest): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickWebEngineDownloadRequest_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquickwebenginedownloadrequest_types.QQuickWebEngineDownloadRequest, param1: cstring): pointer =
  fcQQuickWebEngineDownloadRequest_metacast(self.h, param1)

proc metacall*(self: gen_qquickwebenginedownloadrequest_types.QQuickWebEngineDownloadRequest, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickWebEngineDownloadRequest_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickwebenginedownloadrequest_types.QQuickWebEngineDownloadRequest, s: cstring): string =
  let v_ms = fcQQuickWebEngineDownloadRequest_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc qmlMarkerUncreatable*(self: gen_qquickwebenginedownloadrequest_types.QQuickWebEngineDownloadRequest): void =
  fcQQuickWebEngineDownloadRequest_qmlMarkerUncreatable(self.h)

proc tr*(_: type gen_qquickwebenginedownloadrequest_types.QQuickWebEngineDownloadRequest, s: cstring, c: cstring): string =
  let v_ms = fcQQuickWebEngineDownloadRequest_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickwebenginedownloadrequest_types.QQuickWebEngineDownloadRequest, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickWebEngineDownloadRequest_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qquickwebenginedownloadrequest_types.QQuickWebEngineDownloadRequest): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickWebEngineDownloadRequest_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickwebenginedownloadrequest_types.QQuickWebEngineDownloadRequest): cint =
  fcQQuickWebEngineDownloadRequest_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickwebenginedownloadrequest_types.QQuickWebEngineDownloadRequest, signal: cstring): cint =
  fcQQuickWebEngineDownloadRequest_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickwebenginedownloadrequest_types.QQuickWebEngineDownloadRequest, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickWebEngineDownloadRequest_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qquickwebenginedownloadrequest_types.QQuickWebEngineDownloadRequest): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickWebEngineDownloadRequest_staticMetaObject())
