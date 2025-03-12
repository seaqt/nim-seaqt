import ./Qt6Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt6Quick") & " -fPIC"
{.compile("gen_qquickitemgrabresult.cpp", cflags).}


import ./gen_qquickitemgrabresult_types
export gen_qquickitemgrabresult_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtGui/gen_qimage_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qimage_types

type cQQuickItemGrabResult*{.exportc: "QQuickItemGrabResult", incompleteStruct.} = object

proc fcQQuickItemGrabResult_metaObject(self: pointer): pointer {.importc: "QQuickItemGrabResult_metaObject".}
proc fcQQuickItemGrabResult_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickItemGrabResult_metacast".}
proc fcQQuickItemGrabResult_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickItemGrabResult_metacall".}
proc fcQQuickItemGrabResult_tr(s: cstring): struct_miqt_string {.importc: "QQuickItemGrabResult_tr".}
proc fcQQuickItemGrabResult_image(self: pointer): pointer {.importc: "QQuickItemGrabResult_image".}
proc fcQQuickItemGrabResult_url(self: pointer): pointer {.importc: "QQuickItemGrabResult_url".}
proc fcQQuickItemGrabResult_saveToFile(self: pointer, fileName: struct_miqt_string): bool {.importc: "QQuickItemGrabResult_saveToFile".}
proc fcQQuickItemGrabResult_saveToFileWithFileName(self: pointer, fileName: pointer): bool {.importc: "QQuickItemGrabResult_saveToFileWithFileName".}
proc fcQQuickItemGrabResult_ready(self: pointer): void {.importc: "QQuickItemGrabResult_ready".}
proc fcQQuickItemGrabResult_connect_ready(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickItemGrabResult_connect_ready".}
proc fcQQuickItemGrabResult_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickItemGrabResult_tr2".}
proc fcQQuickItemGrabResult_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickItemGrabResult_tr3".}
proc fcQQuickItemGrabResult_protectedbase_sender(self: pointer): pointer {.importc: "QQuickItemGrabResult_protectedbase_sender".}
proc fcQQuickItemGrabResult_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQuickItemGrabResult_protectedbase_senderSignalIndex".}
proc fcQQuickItemGrabResult_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickItemGrabResult_protectedbase_receivers".}
proc fcQQuickItemGrabResult_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickItemGrabResult_protectedbase_isSignalConnected".}
proc fcQQuickItemGrabResult_staticMetaObject(): pointer {.importc: "QQuickItemGrabResult_staticMetaObject".}

proc metaObject*(self: gen_qquickitemgrabresult_types.QQuickItemGrabResult): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickItemGrabResult_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquickitemgrabresult_types.QQuickItemGrabResult, param1: cstring): pointer =
  fcQQuickItemGrabResult_metacast(self.h, param1)

proc metacall*(self: gen_qquickitemgrabresult_types.QQuickItemGrabResult, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickItemGrabResult_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickitemgrabresult_types.QQuickItemGrabResult, s: cstring): string =
  let v_ms = fcQQuickItemGrabResult_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc image*(self: gen_qquickitemgrabresult_types.QQuickItemGrabResult): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQQuickItemGrabResult_image(self.h), owned: true)

proc url*(self: gen_qquickitemgrabresult_types.QQuickItemGrabResult): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQuickItemGrabResult_url(self.h), owned: true)

proc saveToFile*(self: gen_qquickitemgrabresult_types.QQuickItemGrabResult, fileName: string): bool =
  fcQQuickItemGrabResult_saveToFile(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc saveToFile*(self: gen_qquickitemgrabresult_types.QQuickItemGrabResult, fileName: gen_qurl_types.QUrl): bool =
  fcQQuickItemGrabResult_saveToFileWithFileName(self.h, fileName.h)

proc ready*(self: gen_qquickitemgrabresult_types.QQuickItemGrabResult): void =
  fcQQuickItemGrabResult_ready(self.h)

type QQuickItemGrabResultreadySlot* = proc()
proc cQQuickItemGrabResult_slot_callback_ready(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickItemGrabResultreadySlot](cast[pointer](slot))
  nimfunc[]()

proc cQQuickItemGrabResult_slot_callback_ready_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickItemGrabResultreadySlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onready*(self: gen_qquickitemgrabresult_types.QQuickItemGrabResult, slot: QQuickItemGrabResultreadySlot) =
  var tmp = new QQuickItemGrabResultreadySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickItemGrabResult_connect_ready(self.h, cast[int](addr tmp[]), cQQuickItemGrabResult_slot_callback_ready, cQQuickItemGrabResult_slot_callback_ready_release)

proc tr*(_: type gen_qquickitemgrabresult_types.QQuickItemGrabResult, s: cstring, c: cstring): string =
  let v_ms = fcQQuickItemGrabResult_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickitemgrabresult_types.QQuickItemGrabResult, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickItemGrabResult_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qquickitemgrabresult_types.QQuickItemGrabResult): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickItemGrabResult_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickitemgrabresult_types.QQuickItemGrabResult): cint =
  fcQQuickItemGrabResult_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickitemgrabresult_types.QQuickItemGrabResult, signal: cstring): cint =
  fcQQuickItemGrabResult_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickitemgrabresult_types.QQuickItemGrabResult, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickItemGrabResult_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qquickitemgrabresult_types.QQuickItemGrabResult): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickItemGrabResult_staticMetaObject())
