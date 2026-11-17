import ./qtremoteobjects_pkg

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


type QtRemoteObjectsQRemoteObjectPacketTypeEnumEnum* = distinct cint
template Invalid*(_: type QtRemoteObjectsQRemoteObjectPacketTypeEnumEnum): untyped = 0
template Handshake*(_: type QtRemoteObjectsQRemoteObjectPacketTypeEnumEnum): untyped = 1
template InitPacket*(_: type QtRemoteObjectsQRemoteObjectPacketTypeEnumEnum): untyped = 2
template InitDynamicPacket*(_: type QtRemoteObjectsQRemoteObjectPacketTypeEnumEnum): untyped = 3
template AddObject*(_: type QtRemoteObjectsQRemoteObjectPacketTypeEnumEnum): untyped = 4
template RemoveObject*(_: type QtRemoteObjectsQRemoteObjectPacketTypeEnumEnum): untyped = 5
template InvokePacket*(_: type QtRemoteObjectsQRemoteObjectPacketTypeEnumEnum): untyped = 6
template InvokeReplyPacket*(_: type QtRemoteObjectsQRemoteObjectPacketTypeEnumEnum): untyped = 7
template PropertyChangePacket*(_: type QtRemoteObjectsQRemoteObjectPacketTypeEnumEnum): untyped = 8
template ObjectList*(_: type QtRemoteObjectsQRemoteObjectPacketTypeEnumEnum): untyped = 9
template Ping*(_: type QtRemoteObjectsQRemoteObjectPacketTypeEnumEnum): untyped = 10
template Pong*(_: type QtRemoteObjectsQRemoteObjectPacketTypeEnumEnum): untyped = 11


type QtRemoteObjectsInitialActionEnum* = distinct cint
template FetchRootSize*(_: type QtRemoteObjectsInitialActionEnum): untyped = 0
template PrefetchData*(_: type QtRemoteObjectsInitialActionEnum): untyped = 1


import ./gen_qtremoteobjectglobal_types
export gen_qtremoteobjectglobal_types

import
  ../QtCore/gen_qurl_types
export
  gen_qurl_types

type cQRemoteObjectSourceLocationInfo*{.exportc: "QRemoteObjectSourceLocationInfo", incompleteStruct.} = object

proc fcQRemoteObjectSourceLocationInfo_operatorEqual(self: pointer, other: pointer): bool {.importc: "QRemoteObjectSourceLocationInfo_operatorEqual".}
proc fcQRemoteObjectSourceLocationInfo_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QRemoteObjectSourceLocationInfo_operatorNotEqual".}
proc fcQRemoteObjectSourceLocationInfo_typeName(self: pointer): struct_seaqt_string {.importc: "QRemoteObjectSourceLocationInfo_typeName".}
proc fcQRemoteObjectSourceLocationInfo_setTypeName(self: pointer, typeName: struct_seaqt_string): void {.importc: "QRemoteObjectSourceLocationInfo_setTypeName".}
proc fcQRemoteObjectSourceLocationInfo_hostUrl(self: pointer): pointer {.importc: "QRemoteObjectSourceLocationInfo_hostUrl".}
proc fcQRemoteObjectSourceLocationInfo_setHostUrl(self: pointer, hostUrl: pointer): void {.importc: "QRemoteObjectSourceLocationInfo_setHostUrl".}
proc fcQRemoteObjectSourceLocationInfo_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QRemoteObjectSourceLocationInfo_operatorAssign".}
proc fcQRemoteObjectSourceLocationInfo_new(): ptr cQRemoteObjectSourceLocationInfo {.importc: "QRemoteObjectSourceLocationInfo_new".}
proc fcQRemoteObjectSourceLocationInfo_new2(typeName_x: struct_seaqt_string, hostUrl_x: pointer): ptr cQRemoteObjectSourceLocationInfo {.importc: "QRemoteObjectSourceLocationInfo_new_typeName__hostUrl_".}
proc fcQRemoteObjectSourceLocationInfo_new3(fromVal: pointer): ptr cQRemoteObjectSourceLocationInfo {.importc: "QRemoteObjectSourceLocationInfo_new_from".}

proc operatorEqual*(self: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo, other: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo): bool =
  fcQRemoteObjectSourceLocationInfo_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo, other: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo): bool =
  fcQRemoteObjectSourceLocationInfo_operatorNotEqual(self.h, other.h)

proc typeName*(self: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo): string =
  let vtypeName_ms = fcQRemoteObjectSourceLocationInfo_typeName(self.h)
  let vtypeNamex_ret = string.fromBytes(vtypeName_ms)
  c_free(vtypeName_ms.data)
  vtypeNamex_ret

proc setTypeName*(self: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo, typeName: openArray[char]): void =
  fcQRemoteObjectSourceLocationInfo_setTypeName(self.h, struct_seaqt_string(data: if len(typeName) > 0: addr typeName[0] else: nil, len: csize_t(len(typeName))))

proc hostUrl*(self: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQRemoteObjectSourceLocationInfo_hostUrl(self.h), owned: true)

proc setHostUrl*(self: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo, hostUrl: gen_qurl_types.QUrl): void =
  fcQRemoteObjectSourceLocationInfo_setHostUrl(self.h, hostUrl.h)

proc operatorAssign*(self: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo, fromVal: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo): void =
  fcQRemoteObjectSourceLocationInfo_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo): gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo =
  let tmp = gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo(h: fcQRemoteObjectSourceLocationInfo_new(), owned: true)
  tmp
proc create*(T: type gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo,
    typeName_x: openArray[char], hostUrl_x: gen_qurl_types.QUrl): gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo =
  let tmp = gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo(h: fcQRemoteObjectSourceLocationInfo_new2(struct_seaqt_string(data: if len(typeName_x) > 0: addr typeName_x[0] else: nil, len: csize_t(len(typeName_x))), hostUrl_x.h), owned: true)
  tmp
proc create*(T: type gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo,
    fromVal: gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo): gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo =
  let tmp = gen_qtremoteobjectglobal_types.QRemoteObjectSourceLocationInfo(h: fcQRemoteObjectSourceLocationInfo_new3(fromVal.h), owned: true)
  tmp
