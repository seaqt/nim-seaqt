import ./qtnetwork_pkg

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


{.compile("gen_qrestaccessmanager.cpp", QtNetworkCFlags).}


import ./gen_qrestaccessmanager_types
export gen_qrestaccessmanager_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qjsondocument_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qhttpmultipart_types,
  ./gen_qnetworkaccessmanager_types,
  ./gen_qnetworkreply_types,
  ./gen_qnetworkrequest_types,
  std/tables
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qjsondocument_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qhttpmultipart_types,
  gen_qnetworkaccessmanager_types,
  gen_qnetworkreply_types,
  gen_qnetworkrequest_types

type cQRestAccessManager*{.exportc: "QRestAccessManager", incompleteStruct.} = object

proc fcQRestAccessManager_metaObject(self: pointer): pointer {.importc: "QRestAccessManager_metaObject".}
proc fcQRestAccessManager_metacast(self: pointer, param1: cstring): pointer {.importc: "QRestAccessManager_metacast".}
proc fcQRestAccessManager_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRestAccessManager_metacall".}
proc fcQRestAccessManager_trS(s: cstring): struct_seaqt_string {.importc: "QRestAccessManager_tr_s".}
proc fcQRestAccessManager_networkAccessManager(self: pointer): pointer {.importc: "QRestAccessManager_networkAccessManager".}
proc fcQRestAccessManager_deleteResource(self: pointer, request: pointer): pointer {.importc: "QRestAccessManager_deleteResource".}
proc fcQRestAccessManager_head(self: pointer, request: pointer): pointer {.importc: "QRestAccessManager_head".}
proc fcQRestAccessManager_get_QNetworkRequest(self: pointer, request: pointer): pointer {.importc: "QRestAccessManager_get_QNetworkRequest".}
proc fcQRestAccessManager_get_QNetworkRequest_QByteArray(self: pointer, request: pointer, data: struct_seaqt_string): pointer {.importc: "QRestAccessManager_get_QNetworkRequest_QByteArray".}
proc fcQRestAccessManager_get_QNetworkRequest_QJsonDocument(self: pointer, request: pointer, data: pointer): pointer {.importc: "QRestAccessManager_get_QNetworkRequest_QJsonDocument".}
proc fcQRestAccessManager_get_QNetworkRequest_QIODevice(self: pointer, request: pointer, data: pointer): pointer {.importc: "QRestAccessManager_get_QNetworkRequest_QIODevice".}
proc fcQRestAccessManager_post_QNetworkRequest_QJsonDocument(self: pointer, request: pointer, data: pointer): pointer {.importc: "QRestAccessManager_post_QNetworkRequest_QJsonDocument".}
proc fcQRestAccessManager_post_QNetworkRequest_QVariantMap(self: pointer, request: pointer, data: struct_seaqt_map): pointer {.importc: "QRestAccessManager_post_QNetworkRequest_QVariantMap".}
proc fcQRestAccessManager_post_QNetworkRequest_QByteArray(self: pointer, request: pointer, data: struct_seaqt_string): pointer {.importc: "QRestAccessManager_post_QNetworkRequest_QByteArray".}
proc fcQRestAccessManager_post_QNetworkRequest_QHttpMultiPart(self: pointer, request: pointer, data: pointer): pointer {.importc: "QRestAccessManager_post_QNetworkRequest_QHttpMultiPart".}
proc fcQRestAccessManager_post_QNetworkRequest_QIODevice(self: pointer, request: pointer, data: pointer): pointer {.importc: "QRestAccessManager_post_QNetworkRequest_QIODevice".}
proc fcQRestAccessManager_put_QNetworkRequest_QJsonDocument(self: pointer, request: pointer, data: pointer): pointer {.importc: "QRestAccessManager_put_QNetworkRequest_QJsonDocument".}
proc fcQRestAccessManager_put_QNetworkRequest_QVariantMap(self: pointer, request: pointer, data: struct_seaqt_map): pointer {.importc: "QRestAccessManager_put_QNetworkRequest_QVariantMap".}
proc fcQRestAccessManager_put_QNetworkRequest_QByteArray(self: pointer, request: pointer, data: struct_seaqt_string): pointer {.importc: "QRestAccessManager_put_QNetworkRequest_QByteArray".}
proc fcQRestAccessManager_put_QNetworkRequest_QHttpMultiPart(self: pointer, request: pointer, data: pointer): pointer {.importc: "QRestAccessManager_put_QNetworkRequest_QHttpMultiPart".}
proc fcQRestAccessManager_put_QNetworkRequest_QIODevice(self: pointer, request: pointer, data: pointer): pointer {.importc: "QRestAccessManager_put_QNetworkRequest_QIODevice".}
proc fcQRestAccessManager_patch_QNetworkRequest_QJsonDocument(self: pointer, request: pointer, data: pointer): pointer {.importc: "QRestAccessManager_patch_QNetworkRequest_QJsonDocument".}
proc fcQRestAccessManager_patch_QNetworkRequest_QVariantMap(self: pointer, request: pointer, data: struct_seaqt_map): pointer {.importc: "QRestAccessManager_patch_QNetworkRequest_QVariantMap".}
proc fcQRestAccessManager_patch_QNetworkRequest_QByteArray(self: pointer, request: pointer, data: struct_seaqt_string): pointer {.importc: "QRestAccessManager_patch_QNetworkRequest_QByteArray".}
proc fcQRestAccessManager_patch_QNetworkRequest_QIODevice(self: pointer, request: pointer, data: pointer): pointer {.importc: "QRestAccessManager_patch_QNetworkRequest_QIODevice".}
proc fcQRestAccessManager_sendCustomRequest_QNetworkRequest_QByteArray_QByteArray(self: pointer, request: pointer, methodVal: struct_seaqt_string, data: struct_seaqt_string): pointer {.importc: "QRestAccessManager_sendCustomRequest_QNetworkRequest_QByteArray_QByteArray".}
proc fcQRestAccessManager_sendCustomRequest_QNetworkRequest_QByteArray_QIODevice(self: pointer, request: pointer, methodVal: struct_seaqt_string, data: pointer): pointer {.importc: "QRestAccessManager_sendCustomRequest_QNetworkRequest_QByteArray_QIODevice".}
proc fcQRestAccessManager_sendCustomRequest_QNetworkRequest_QByteArray_QHttpMultiPart(self: pointer, request: pointer, methodVal: struct_seaqt_string, data: pointer): pointer {.importc: "QRestAccessManager_sendCustomRequest_QNetworkRequest_QByteArray_QHttpMultiPart".}
proc fcQRestAccessManager_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QRestAccessManager_tr_s_c".}
proc fcQRestAccessManager_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QRestAccessManager_tr_s_c_n".}
proc fcQRestAccessManager_vdata(self: pointer): ptr pointer {.importc: "QRestAccessManager_vdata".}
proc fvdata_cQRestAccessManager(self: pointer): pointer {.importc: "vdata_QRestAccessManager".}

type cQRestAccessManagerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQRestAccessManager_virtualbase_metaObject(self: pointer): pointer {.importc: "QRestAccessManager_virtualbase_metaObject".}
proc fcQRestAccessManager_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRestAccessManager_virtualbase_metacast".}
proc fcQRestAccessManager_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRestAccessManager_virtualbase_metacall".}
proc fcQRestAccessManager_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QRestAccessManager_virtualbase_event".}
proc fcQRestAccessManager_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRestAccessManager_virtualbase_eventFilter".}
proc fcQRestAccessManager_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QRestAccessManager_virtualbase_timerEvent".}
proc fcQRestAccessManager_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRestAccessManager_virtualbase_childEvent".}
proc fcQRestAccessManager_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRestAccessManager_virtualbase_customEvent".}
proc fcQRestAccessManager_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRestAccessManager_virtualbase_connectNotify".}
proc fcQRestAccessManager_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRestAccessManager_virtualbase_disconnectNotify".}
proc fcQRestAccessManager_protectedbase_sender(self: pointer): pointer {.importc: "QRestAccessManager_protectedbase_sender".}
proc fcQRestAccessManager_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRestAccessManager_protectedbase_senderSignalIndex".}
proc fcQRestAccessManager_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRestAccessManager_protectedbase_receivers".}
proc fcQRestAccessManager_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRestAccessManager_protectedbase_isSignalConnected".}
proc fcQRestAccessManager_new(vtbl: pointer, vdata: csize_t, manager: pointer): ptr cQRestAccessManager {.importc: "QRestAccessManager_new_manager".}
proc fcQRestAccessManager_new2(vtbl: pointer, vdata: csize_t, manager: pointer, parent: pointer): ptr cQRestAccessManager {.importc: "QRestAccessManager_new_manager_parent".}
proc fcQRestAccessManager_staticMetaObject(): pointer {.importc: "QRestAccessManager_staticMetaObject".}

proc metaObject*(self: gen_qrestaccessmanager_types.QRestAccessManager): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRestAccessManager_metaObject(self.h), owned: false)

proc metacast*(self: gen_qrestaccessmanager_types.QRestAccessManager, param1: cstring): pointer =
  fcQRestAccessManager_metacast(self.h, param1)

proc metacall*(self: gen_qrestaccessmanager_types.QRestAccessManager, param1: cint, param2: cint, param3: pointer): cint =
  fcQRestAccessManager_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qrestaccessmanager_types.QRestAccessManager, s: cstring): string =
  let v_ms = fcQRestAccessManager_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc networkAccessManager*(self: gen_qrestaccessmanager_types.QRestAccessManager): gen_qnetworkaccessmanager_types.QNetworkAccessManager =
  gen_qnetworkaccessmanager_types.QNetworkAccessManager(h: fcQRestAccessManager_networkAccessManager(self.h), owned: false)

proc deleteResource*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_deleteResource(self.h, request.h), owned: false)

proc head*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_head(self.h, request.h), owned: false)

proc get*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_get_QNetworkRequest(self.h, request.h), owned: false)

proc get*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: openArray[byte]): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_get_QNetworkRequest_QByteArray(self.h, request.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data)))), owned: false)

proc get*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: gen_qjsondocument_types.QJsonDocument): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_get_QNetworkRequest_QJsonDocument(self.h, request.h, data.h), owned: false)

proc get*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: gen_qiodevice_types.QIODevice): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_get_QNetworkRequest_QIODevice(self.h, request.h, data.h), owned: false)

proc post*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: gen_qjsondocument_types.QJsonDocument): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_post_QNetworkRequest_QJsonDocument(self.h, request.h, data.h), owned: false)

proc post*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: Table[string,gen_qvariant_types.QVariant]): gen_qnetworkreply_types.QNetworkReply =
  var data_Keys_CArray = newSeq[struct_seaqt_string](len(data))
  var data_Values_CArray = newSeq[pointer](len(data))
  var data_ctr = 0
  for data_k in data.keys():
    data_Keys_CArray[data_ctr] = struct_seaqt_string(data: if len(data_k) > 0: addr data_k[0] else: nil, len: csize_t(len(data_k)))
    data_ctr += 1
  data_ctr = 0
  for data_v in data.values():
    data_Values_CArray[data_ctr] = data_v.h
    data_ctr += 1

  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_post_QNetworkRequest_QVariantMap(self.h, request.h, struct_seaqt_map(len: csize_t(len(data)),keys: if len(data) == 0: nil else: addr(data_Keys_CArray[0]), values: if len(data) == 0: nil else: addr(data_Values_CArray[0]),)), owned: false)

proc post*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: openArray[byte]): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_post_QNetworkRequest_QByteArray(self.h, request.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data)))), owned: false)

proc post*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: gen_qhttpmultipart_types.QHttpMultiPart): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_post_QNetworkRequest_QHttpMultiPart(self.h, request.h, data.h), owned: false)

proc post*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: gen_qiodevice_types.QIODevice): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_post_QNetworkRequest_QIODevice(self.h, request.h, data.h), owned: false)

proc put*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: gen_qjsondocument_types.QJsonDocument): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_put_QNetworkRequest_QJsonDocument(self.h, request.h, data.h), owned: false)

proc put*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: Table[string,gen_qvariant_types.QVariant]): gen_qnetworkreply_types.QNetworkReply =
  var data_Keys_CArray = newSeq[struct_seaqt_string](len(data))
  var data_Values_CArray = newSeq[pointer](len(data))
  var data_ctr = 0
  for data_k in data.keys():
    data_Keys_CArray[data_ctr] = struct_seaqt_string(data: if len(data_k) > 0: addr data_k[0] else: nil, len: csize_t(len(data_k)))
    data_ctr += 1
  data_ctr = 0
  for data_v in data.values():
    data_Values_CArray[data_ctr] = data_v.h
    data_ctr += 1

  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_put_QNetworkRequest_QVariantMap(self.h, request.h, struct_seaqt_map(len: csize_t(len(data)),keys: if len(data) == 0: nil else: addr(data_Keys_CArray[0]), values: if len(data) == 0: nil else: addr(data_Values_CArray[0]),)), owned: false)

proc put*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: openArray[byte]): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_put_QNetworkRequest_QByteArray(self.h, request.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data)))), owned: false)

proc put*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: gen_qhttpmultipart_types.QHttpMultiPart): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_put_QNetworkRequest_QHttpMultiPart(self.h, request.h, data.h), owned: false)

proc put*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: gen_qiodevice_types.QIODevice): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_put_QNetworkRequest_QIODevice(self.h, request.h, data.h), owned: false)

proc patch*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: gen_qjsondocument_types.QJsonDocument): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_patch_QNetworkRequest_QJsonDocument(self.h, request.h, data.h), owned: false)

proc patch*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: Table[string,gen_qvariant_types.QVariant]): gen_qnetworkreply_types.QNetworkReply =
  var data_Keys_CArray = newSeq[struct_seaqt_string](len(data))
  var data_Values_CArray = newSeq[pointer](len(data))
  var data_ctr = 0
  for data_k in data.keys():
    data_Keys_CArray[data_ctr] = struct_seaqt_string(data: if len(data_k) > 0: addr data_k[0] else: nil, len: csize_t(len(data_k)))
    data_ctr += 1
  data_ctr = 0
  for data_v in data.values():
    data_Values_CArray[data_ctr] = data_v.h
    data_ctr += 1

  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_patch_QNetworkRequest_QVariantMap(self.h, request.h, struct_seaqt_map(len: csize_t(len(data)),keys: if len(data) == 0: nil else: addr(data_Keys_CArray[0]), values: if len(data) == 0: nil else: addr(data_Values_CArray[0]),)), owned: false)

proc patch*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: openArray[byte]): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_patch_QNetworkRequest_QByteArray(self.h, request.h, struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data)))), owned: false)

proc patch*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: gen_qiodevice_types.QIODevice): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_patch_QNetworkRequest_QIODevice(self.h, request.h, data.h), owned: false)

proc sendCustomRequest*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, methodVal: openArray[byte], data: openArray[byte]): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_sendCustomRequest_QNetworkRequest_QByteArray_QByteArray(self.h, request.h, struct_seaqt_string(data: if len(methodVal) > 0: addr methodVal[0] else: nil, len: csize_t(len(methodVal))), struct_seaqt_string(data: if len(data) > 0: addr data[0] else: nil, len: csize_t(len(data)))), owned: false)

proc sendCustomRequest*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, methodVal: openArray[byte], data: gen_qiodevice_types.QIODevice): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_sendCustomRequest_QNetworkRequest_QByteArray_QIODevice(self.h, request.h, struct_seaqt_string(data: if len(methodVal) > 0: addr methodVal[0] else: nil, len: csize_t(len(methodVal))), data.h), owned: false)

proc sendCustomRequest*(self: gen_qrestaccessmanager_types.QRestAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, methodVal: openArray[byte], data: gen_qhttpmultipart_types.QHttpMultiPart): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQRestAccessManager_sendCustomRequest_QNetworkRequest_QByteArray_QHttpMultiPart(self.h, request.h, struct_seaqt_string(data: if len(methodVal) > 0: addr methodVal[0] else: nil, len: csize_t(len(methodVal))), data.h), owned: false)

proc tr*(_: type gen_qrestaccessmanager_types.QRestAccessManager, s: cstring, c: cstring): string =
  let v_ms = fcQRestAccessManager_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qrestaccessmanager_types.QRestAccessManager, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRestAccessManager_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QRestAccessManagermetaObjectProc* = proc(self: QRestAccessManager): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QRestAccessManagermetacastProc* = proc(self: QRestAccessManager, param1: cstring): pointer {.raises: [], gcsafe.}
type QRestAccessManagermetacallProc* = proc(self: QRestAccessManager, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QRestAccessManagereventProc* = proc(self: QRestAccessManager, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRestAccessManagereventFilterProc* = proc(self: QRestAccessManager, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRestAccessManagertimerEventProc* = proc(self: QRestAccessManager, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QRestAccessManagerchildEventProc* = proc(self: QRestAccessManager, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QRestAccessManagercustomEventProc* = proc(self: QRestAccessManager, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRestAccessManagerconnectNotifyProc* = proc(self: QRestAccessManager, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRestAccessManagerdisconnectNotifyProc* = proc(self: QRestAccessManager, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QRestAccessManagerVTable* {.inheritable, pure.} = object
  vtbl: cQRestAccessManagerVTable
  metaObject*: QRestAccessManagermetaObjectProc
  metacast*: QRestAccessManagermetacastProc
  metacall*: QRestAccessManagermetacallProc
  event*: QRestAccessManagereventProc
  eventFilter*: QRestAccessManagereventFilterProc
  timerEvent*: QRestAccessManagertimerEventProc
  childEvent*: QRestAccessManagerchildEventProc
  customEvent*: QRestAccessManagercustomEventProc
  connectNotify*: QRestAccessManagerconnectNotifyProc
  disconnectNotify*: QRestAccessManagerdisconnectNotifyProc

proc QRestAccessManagermetaObject*(self: gen_qrestaccessmanager_types.QRestAccessManager): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRestAccessManager_virtualbase_metaObject(self.h), owned: false)

proc QRestAccessManagermetacast*(self: gen_qrestaccessmanager_types.QRestAccessManager, param1: cstring): pointer =
  fcQRestAccessManager_virtualbase_metacast(self.h, param1)

proc QRestAccessManagermetacall*(self: gen_qrestaccessmanager_types.QRestAccessManager, param1: cint, param2: cint, param3: pointer): cint =
  fcQRestAccessManager_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QRestAccessManagerevent*(self: gen_qrestaccessmanager_types.QRestAccessManager, event: gen_qcoreevent_types.QEvent): bool =
  fcQRestAccessManager_virtualbase_event(self.h, event.h)

proc QRestAccessManagereventFilter*(self: gen_qrestaccessmanager_types.QRestAccessManager, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRestAccessManager_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QRestAccessManagertimerEvent*(self: gen_qrestaccessmanager_types.QRestAccessManager, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQRestAccessManager_virtualbase_timerEvent(self.h, event.h)

proc QRestAccessManagerchildEvent*(self: gen_qrestaccessmanager_types.QRestAccessManager, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRestAccessManager_virtualbase_childEvent(self.h, event.h)

proc QRestAccessManagercustomEvent*(self: gen_qrestaccessmanager_types.QRestAccessManager, event: gen_qcoreevent_types.QEvent): void =
  fcQRestAccessManager_virtualbase_customEvent(self.h, event.h)

proc QRestAccessManagerconnectNotify*(self: gen_qrestaccessmanager_types.QRestAccessManager, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRestAccessManager_virtualbase_connectNotify(self.h, signal.h)

proc QRestAccessManagerdisconnectNotify*(self: gen_qrestaccessmanager_types.QRestAccessManager, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRestAccessManager_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQRestAccessManager_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRestAccessManagerVTable](fcQRestAccessManager_vdata(self)[])
  let self = QRestAccessManager(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRestAccessManager_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRestAccessManagerVTable](fcQRestAccessManager_vdata(self)[])
  let self = QRestAccessManager(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQRestAccessManager_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRestAccessManagerVTable](fcQRestAccessManager_vdata(self)[])
  let self = QRestAccessManager(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRestAccessManager_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRestAccessManagerVTable](fcQRestAccessManager_vdata(self)[])
  let self = QRestAccessManager(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQRestAccessManager_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRestAccessManagerVTable](fcQRestAccessManager_vdata(self)[])
  let self = QRestAccessManager(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQRestAccessManager_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRestAccessManagerVTable](fcQRestAccessManager_vdata(self)[])
  let self = QRestAccessManager(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQRestAccessManager_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRestAccessManagerVTable](fcQRestAccessManager_vdata(self)[])
  let self = QRestAccessManager(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQRestAccessManager_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRestAccessManagerVTable](fcQRestAccessManager_vdata(self)[])
  let self = QRestAccessManager(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQRestAccessManager_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRestAccessManagerVTable](fcQRestAccessManager_vdata(self)[])
  let self = QRestAccessManager(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQRestAccessManager_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRestAccessManagerVTable](fcQRestAccessManager_vdata(self)[])
  let self = QRestAccessManager(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQRestAccessManager* {.inheritable.} = ref object of QRestAccessManager
  vtbl*: cQRestAccessManagerVTable

method metaObject*(self: VirtualQRestAccessManager): gen_qobjectdefs_types.QMetaObject {.base.} =
  QRestAccessManagermetaObject(self[])
method metacast*(self: VirtualQRestAccessManager, param1: cstring): pointer {.base.} =
  QRestAccessManagermetacast(self[], param1)
method metacall*(self: VirtualQRestAccessManager, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QRestAccessManagermetacall(self[], param1, param2, param3)
method event*(self: VirtualQRestAccessManager, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRestAccessManagerevent(self[], event)
method eventFilter*(self: VirtualQRestAccessManager, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRestAccessManagereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQRestAccessManager, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QRestAccessManagertimerEvent(self[], event)
method childEvent*(self: VirtualQRestAccessManager, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QRestAccessManagerchildEvent(self[], event)
method customEvent*(self: VirtualQRestAccessManager, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRestAccessManagercustomEvent(self[], event)
method connectNotify*(self: VirtualQRestAccessManager, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRestAccessManagerconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQRestAccessManager, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRestAccessManagerdisconnectNotify(self[], signal)

proc fcQRestAccessManager_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRestAccessManager](fcQRestAccessManager_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRestAccessManager_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQRestAccessManager](fcQRestAccessManager_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQRestAccessManager_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRestAccessManager](fcQRestAccessManager_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRestAccessManager_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRestAccessManager](fcQRestAccessManager_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQRestAccessManager_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRestAccessManager](fcQRestAccessManager_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQRestAccessManager_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRestAccessManager](fcQRestAccessManager_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQRestAccessManager_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRestAccessManager](fcQRestAccessManager_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQRestAccessManager_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRestAccessManager](fcQRestAccessManager_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQRestAccessManager_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRestAccessManager](fcQRestAccessManager_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQRestAccessManager_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRestAccessManager](fcQRestAccessManager_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qrestaccessmanager_types.QRestAccessManager): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRestAccessManager_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qrestaccessmanager_types.QRestAccessManager): cint =
  fcQRestAccessManager_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qrestaccessmanager_types.QRestAccessManager, signal: cstring): cint =
  fcQRestAccessManager_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qrestaccessmanager_types.QRestAccessManager, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRestAccessManager_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qrestaccessmanager_types.QRestAccessManager,
    manager: gen_qnetworkaccessmanager_types.QNetworkAccessManager,
    vtbl: ref QRestAccessManagerVTable = nil): gen_qrestaccessmanager_types.QRestAccessManager =
  let vtbl = if vtbl == nil: new QRestAccessManagerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRestAccessManagerVTable](fcQRestAccessManager_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRestAccessManager_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRestAccessManager_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRestAccessManager_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRestAccessManager_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRestAccessManager_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRestAccessManager_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRestAccessManager_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRestAccessManager_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRestAccessManager_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRestAccessManager_vtable_callback_disconnectNotify
  let tmp = gen_qrestaccessmanager_types.QRestAccessManager(h: fcQRestAccessManager_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), manager.h), owned: true)
  fcQRestAccessManager_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qrestaccessmanager_types.QRestAccessManager,
    manager: gen_qnetworkaccessmanager_types.QNetworkAccessManager, parent: gen_qobject_types.QObject,
    vtbl: ref QRestAccessManagerVTable = nil): gen_qrestaccessmanager_types.QRestAccessManager =
  let vtbl = if vtbl == nil: new QRestAccessManagerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRestAccessManagerVTable](fcQRestAccessManager_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRestAccessManager_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRestAccessManager_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRestAccessManager_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRestAccessManager_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRestAccessManager_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRestAccessManager_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRestAccessManager_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRestAccessManager_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRestAccessManager_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRestAccessManager_vtable_callback_disconnectNotify
  let tmp = gen_qrestaccessmanager_types.QRestAccessManager(h: fcQRestAccessManager_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), manager.h, parent.h), owned: true)
  fcQRestAccessManager_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQRestAccessManager_mvtbl = cQRestAccessManagerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQRestAccessManager()[])](self.fcQRestAccessManager_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQRestAccessManager_method_callback_metaObject,
  metacast: fcQRestAccessManager_method_callback_metacast,
  metacall: fcQRestAccessManager_method_callback_metacall,
  event: fcQRestAccessManager_method_callback_event,
  eventFilter: fcQRestAccessManager_method_callback_eventFilter,
  timerEvent: fcQRestAccessManager_method_callback_timerEvent,
  childEvent: fcQRestAccessManager_method_callback_childEvent,
  customEvent: fcQRestAccessManager_method_callback_customEvent,
  connectNotify: fcQRestAccessManager_method_callback_connectNotify,
  disconnectNotify: fcQRestAccessManager_method_callback_disconnectNotify,
)
proc create*(T: type gen_qrestaccessmanager_types.QRestAccessManager,
    manager: gen_qnetworkaccessmanager_types.QNetworkAccessManager,
    inst: VirtualQRestAccessManager) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRestAccessManager_new(addr(cQRestAccessManager_mvtbl), csize_t(sizeof(pointer)), manager.h)
  fcQRestAccessManager_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qrestaccessmanager_types.QRestAccessManager,
    manager: gen_qnetworkaccessmanager_types.QNetworkAccessManager, parent: gen_qobject_types.QObject,
    inst: VirtualQRestAccessManager) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRestAccessManager_new2(addr(cQRestAccessManager_mvtbl), csize_t(sizeof(pointer)), manager.h, parent.h)
  fcQRestAccessManager_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qrestaccessmanager_types.QRestAccessManager): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRestAccessManager_staticMetaObject())
