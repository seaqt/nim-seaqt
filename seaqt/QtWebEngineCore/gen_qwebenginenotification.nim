import ./Qt5WebEngineCore_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebEngineCore") & " -fPIC"
{.compile("gen_qwebenginenotification.cpp", cflags).}


import ./gen_qwebenginenotification_types
export gen_qwebenginenotification_types

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

type cQWebEngineNotification*{.exportc: "QWebEngineNotification", incompleteStruct.} = object

proc fcQWebEngineNotification_metaObject(self: pointer, ): pointer {.importc: "QWebEngineNotification_metaObject".}
proc fcQWebEngineNotification_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineNotification_metacast".}
proc fcQWebEngineNotification_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineNotification_metacall".}
proc fcQWebEngineNotification_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineNotification_tr".}
proc fcQWebEngineNotification_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebEngineNotification_trUtf8".}
proc fcQWebEngineNotification_matches(self: pointer, other: pointer): bool {.importc: "QWebEngineNotification_matches".}
proc fcQWebEngineNotification_origin(self: pointer, ): pointer {.importc: "QWebEngineNotification_origin".}
proc fcQWebEngineNotification_icon(self: pointer, ): pointer {.importc: "QWebEngineNotification_icon".}
proc fcQWebEngineNotification_title(self: pointer, ): struct_miqt_string {.importc: "QWebEngineNotification_title".}
proc fcQWebEngineNotification_message(self: pointer, ): struct_miqt_string {.importc: "QWebEngineNotification_message".}
proc fcQWebEngineNotification_tag(self: pointer, ): struct_miqt_string {.importc: "QWebEngineNotification_tag".}
proc fcQWebEngineNotification_language(self: pointer, ): struct_miqt_string {.importc: "QWebEngineNotification_language".}
proc fcQWebEngineNotification_direction(self: pointer, ): cint {.importc: "QWebEngineNotification_direction".}
proc fcQWebEngineNotification_show(self: pointer, ): void {.importc: "QWebEngineNotification_show".}
proc fcQWebEngineNotification_click(self: pointer, ): void {.importc: "QWebEngineNotification_click".}
proc fcQWebEngineNotification_close(self: pointer, ): void {.importc: "QWebEngineNotification_close".}
proc fcQWebEngineNotification_closed(self: pointer, ): void {.importc: "QWebEngineNotification_closed".}
proc fcQWebEngineNotification_connect_closed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineNotification_connect_closed".}
proc fcQWebEngineNotification_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineNotification_tr2".}
proc fcQWebEngineNotification_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineNotification_tr3".}
proc fcQWebEngineNotification_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineNotification_trUtf82".}
proc fcQWebEngineNotification_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineNotification_trUtf83".}
proc fcQWebEngineNotification_protectedbase_sender(self: pointer, ): pointer {.importc: "QWebEngineNotification_protectedbase_sender".}
proc fcQWebEngineNotification_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QWebEngineNotification_protectedbase_senderSignalIndex".}
proc fcQWebEngineNotification_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebEngineNotification_protectedbase_receivers".}
proc fcQWebEngineNotification_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebEngineNotification_protectedbase_isSignalConnected".}
proc fcQWebEngineNotification_staticMetaObject(): pointer {.importc: "QWebEngineNotification_staticMetaObject".}

proc metaObject*(self: gen_qwebenginenotification_types.QWebEngineNotification, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineNotification_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwebenginenotification_types.QWebEngineNotification, param1: cstring): pointer =
  fcQWebEngineNotification_metacast(self.h, param1)

proc metacall*(self: gen_qwebenginenotification_types.QWebEngineNotification, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineNotification_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebenginenotification_types.QWebEngineNotification, s: cstring): string =
  let v_ms = fcQWebEngineNotification_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebenginenotification_types.QWebEngineNotification, s: cstring): string =
  let v_ms = fcQWebEngineNotification_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc matches*(self: gen_qwebenginenotification_types.QWebEngineNotification, other: gen_qwebenginenotification_types.QWebEngineNotification): bool =
  fcQWebEngineNotification_matches(self.h, other.h)

proc origin*(self: gen_qwebenginenotification_types.QWebEngineNotification, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineNotification_origin(self.h), owned: true)

proc icon*(self: gen_qwebenginenotification_types.QWebEngineNotification, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQWebEngineNotification_icon(self.h), owned: true)

proc title*(self: gen_qwebenginenotification_types.QWebEngineNotification, ): string =
  let v_ms = fcQWebEngineNotification_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc message*(self: gen_qwebenginenotification_types.QWebEngineNotification, ): string =
  let v_ms = fcQWebEngineNotification_message(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tag*(self: gen_qwebenginenotification_types.QWebEngineNotification, ): string =
  let v_ms = fcQWebEngineNotification_tag(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qwebenginenotification_types.QWebEngineNotification, ): string =
  let v_ms = fcQWebEngineNotification_language(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc direction*(self: gen_qwebenginenotification_types.QWebEngineNotification, ): cint =
  cint(fcQWebEngineNotification_direction(self.h))

proc show*(self: gen_qwebenginenotification_types.QWebEngineNotification, ): void =
  fcQWebEngineNotification_show(self.h)

proc click*(self: gen_qwebenginenotification_types.QWebEngineNotification, ): void =
  fcQWebEngineNotification_click(self.h)

proc close*(self: gen_qwebenginenotification_types.QWebEngineNotification, ): void =
  fcQWebEngineNotification_close(self.h)

proc closed*(self: gen_qwebenginenotification_types.QWebEngineNotification, ): void =
  fcQWebEngineNotification_closed(self.h)

type QWebEngineNotificationclosedSlot* = proc()
proc miqt_exec_callback_cQWebEngineNotification_closed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineNotificationclosedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWebEngineNotification_closed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineNotificationclosedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onclosed*(self: gen_qwebenginenotification_types.QWebEngineNotification, slot: QWebEngineNotificationclosedSlot) =
  var tmp = new QWebEngineNotificationclosedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineNotification_connect_closed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWebEngineNotification_closed, miqt_exec_callback_cQWebEngineNotification_closed_release)

proc tr*(_: type gen_qwebenginenotification_types.QWebEngineNotification, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineNotification_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebenginenotification_types.QWebEngineNotification, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineNotification_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebenginenotification_types.QWebEngineNotification, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineNotification_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebenginenotification_types.QWebEngineNotification, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineNotification_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qwebenginenotification_types.QWebEngineNotification, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebEngineNotification_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwebenginenotification_types.QWebEngineNotification, ): cint =
  fcQWebEngineNotification_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebenginenotification_types.QWebEngineNotification, signal: cstring): cint =
  fcQWebEngineNotification_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebenginenotification_types.QWebEngineNotification, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebEngineNotification_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qwebenginenotification_types.QWebEngineNotification): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineNotification_staticMetaObject())
