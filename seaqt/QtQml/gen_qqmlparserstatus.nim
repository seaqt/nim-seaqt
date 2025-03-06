import ./Qt5Qml_libs

{.push raises: [].}

from system/ansi_c import c_free

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

const cflags = gorge("pkg-config --cflags Qt5Qml")  & " -fPIC"
{.compile("gen_qqmlparserstatus.cpp", cflags).}


import ./gen_qqmlparserstatus_types
export gen_qqmlparserstatus_types


type cQQmlParserStatus*{.exportc: "QQmlParserStatus", incompleteStruct.} = object

proc fcQQmlParserStatus_classBegin(self: pointer, ): void {.importc: "QQmlParserStatus_classBegin".}
proc fcQQmlParserStatus_componentComplete(self: pointer, ): void {.importc: "QQmlParserStatus_componentComplete".}
type cQQmlParserStatusVTable = object
  destructor*: proc(vtbl: ptr cQQmlParserStatusVTable, self: ptr cQQmlParserStatus) {.cdecl, raises:[], gcsafe.}
  classBegin*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  componentComplete*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlParserStatus_new(vtbl: pointer, ): ptr cQQmlParserStatus {.importc: "QQmlParserStatus_new".}
proc fcQQmlParserStatus_delete(self: pointer) {.importc: "QQmlParserStatus_delete".}

proc classBegin*(self: gen_qqmlparserstatus_types.QQmlParserStatus, ): void =
  fcQQmlParserStatus_classBegin(self.h)

proc componentComplete*(self: gen_qqmlparserstatus_types.QQmlParserStatus, ): void =
  fcQQmlParserStatus_componentComplete(self.h)

type QQmlParserStatusclassBeginProc* = proc(self: QQmlParserStatus): void {.raises: [], gcsafe.}
type QQmlParserStatuscomponentCompleteProc* = proc(self: QQmlParserStatus): void {.raises: [], gcsafe.}
type QQmlParserStatusVTable* = object
  vtbl: cQQmlParserStatusVTable
  classBegin*: QQmlParserStatusclassBeginProc
  componentComplete*: QQmlParserStatuscomponentCompleteProc
proc miqt_exec_callback_cQQmlParserStatus_classBegin(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlParserStatusVTable](vtbl)
  let self = QQmlParserStatus(h: self)
  vtbl[].classBegin(self)

proc miqt_exec_callback_cQQmlParserStatus_componentComplete(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlParserStatusVTable](vtbl)
  let self = QQmlParserStatus(h: self)
  vtbl[].componentComplete(self)

proc create*(T: type gen_qqmlparserstatus_types.QQmlParserStatus,
    vtbl: ref QQmlParserStatusVTable = nil): gen_qqmlparserstatus_types.QQmlParserStatus =
  let vtbl = if vtbl == nil: new QQmlParserStatusVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlParserStatusVTable, _: ptr cQQmlParserStatus) {.cdecl.} =
    let vtbl = cast[ref QQmlParserStatusVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.classBegin):
    vtbl[].vtbl.classBegin = miqt_exec_callback_cQQmlParserStatus_classBegin
  if not isNil(vtbl.componentComplete):
    vtbl[].vtbl.componentComplete = miqt_exec_callback_cQQmlParserStatus_componentComplete
  gen_qqmlparserstatus_types.QQmlParserStatus(h: fcQQmlParserStatus_new(addr(vtbl[]), ))

proc delete*(self: gen_qqmlparserstatus_types.QQmlParserStatus) =
  fcQQmlParserStatus_delete(self.h)
