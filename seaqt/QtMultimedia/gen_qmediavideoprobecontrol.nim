import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qmediavideoprobecontrol.cpp", cflags).}


import ./gen_qmediavideoprobecontrol_types
export gen_qmediavideoprobecontrol_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediacontrol,
  ./gen_qvideoframe_types
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qmediacontrol,
  gen_qvideoframe_types

type cQMediaVideoProbeControl*{.exportc: "QMediaVideoProbeControl", incompleteStruct.} = object

proc fcQMediaVideoProbeControl_metaObject(self: pointer, ): pointer {.importc: "QMediaVideoProbeControl_metaObject".}
proc fcQMediaVideoProbeControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaVideoProbeControl_metacast".}
proc fcQMediaVideoProbeControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaVideoProbeControl_metacall".}
proc fcQMediaVideoProbeControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaVideoProbeControl_tr".}
proc fcQMediaVideoProbeControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaVideoProbeControl_trUtf8".}
proc fcQMediaVideoProbeControl_videoFrameProbed(self: pointer, frame: pointer): void {.importc: "QMediaVideoProbeControl_videoFrameProbed".}
proc fcQMediaVideoProbeControl_connect_videoFrameProbed(self: pointer, slot: int, callback: proc (slot: int, frame: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaVideoProbeControl_connect_videoFrameProbed".}
proc fcQMediaVideoProbeControl_flush(self: pointer, ): void {.importc: "QMediaVideoProbeControl_flush".}
proc fcQMediaVideoProbeControl_connect_flush(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaVideoProbeControl_connect_flush".}
proc fcQMediaVideoProbeControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaVideoProbeControl_tr2".}
proc fcQMediaVideoProbeControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaVideoProbeControl_tr3".}
proc fcQMediaVideoProbeControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaVideoProbeControl_trUtf82".}
proc fcQMediaVideoProbeControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaVideoProbeControl_trUtf83".}
proc fcQMediaVideoProbeControl_protectedbase_sender(self: pointer, ): pointer {.importc: "QMediaVideoProbeControl_protectedbase_sender".}
proc fcQMediaVideoProbeControl_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QMediaVideoProbeControl_protectedbase_senderSignalIndex".}
proc fcQMediaVideoProbeControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaVideoProbeControl_protectedbase_receivers".}
proc fcQMediaVideoProbeControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaVideoProbeControl_protectedbase_isSignalConnected".}
proc fcQMediaVideoProbeControl_staticMetaObject(): pointer {.importc: "QMediaVideoProbeControl_staticMetaObject".}
proc fcQMediaVideoProbeControl_delete(self: pointer) {.importc: "QMediaVideoProbeControl_delete".}

proc metaObject*(self: gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaVideoProbeControl_metaObject(self.h))

proc metacast*(self: gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl, param1: cstring): pointer =
  fcQMediaVideoProbeControl_metacast(self.h, param1)

proc metacall*(self: gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaVideoProbeControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl, s: cstring): string =
  let v_ms = fcQMediaVideoProbeControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl, s: cstring): string =
  let v_ms = fcQMediaVideoProbeControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc videoFrameProbed*(self: gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl, frame: gen_qvideoframe_types.QVideoFrame): void =
  fcQMediaVideoProbeControl_videoFrameProbed(self.h, frame.h)

type QMediaVideoProbeControlvideoFrameProbedSlot* = proc(frame: gen_qvideoframe_types.QVideoFrame)
proc miqt_exec_callback_cQMediaVideoProbeControl_videoFrameProbed(slot: int, frame: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMediaVideoProbeControlvideoFrameProbedSlot](cast[pointer](slot))
  let slotval1 = gen_qvideoframe_types.QVideoFrame(h: frame)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaVideoProbeControl_videoFrameProbed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaVideoProbeControlvideoFrameProbedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvideoFrameProbed*(self: gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl, slot: QMediaVideoProbeControlvideoFrameProbedSlot) =
  var tmp = new QMediaVideoProbeControlvideoFrameProbedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaVideoProbeControl_connect_videoFrameProbed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaVideoProbeControl_videoFrameProbed, miqt_exec_callback_cQMediaVideoProbeControl_videoFrameProbed_release)

proc flush*(self: gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl, ): void =
  fcQMediaVideoProbeControl_flush(self.h)

type QMediaVideoProbeControlflushSlot* = proc()
proc miqt_exec_callback_cQMediaVideoProbeControl_flush(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaVideoProbeControlflushSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMediaVideoProbeControl_flush_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaVideoProbeControlflushSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onflush*(self: gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl, slot: QMediaVideoProbeControlflushSlot) =
  var tmp = new QMediaVideoProbeControlflushSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaVideoProbeControl_connect_flush(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaVideoProbeControl_flush, miqt_exec_callback_cQMediaVideoProbeControl_flush_release)

proc tr*(_: type gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaVideoProbeControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaVideoProbeControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaVideoProbeControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaVideoProbeControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaVideoProbeControl_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl, ): cint =
  fcQMediaVideoProbeControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl, signal: cstring): cint =
  fcQMediaVideoProbeControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaVideoProbeControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaVideoProbeControl_staticMetaObject())
proc delete*(self: gen_qmediavideoprobecontrol_types.QMediaVideoProbeControl) =
  fcQMediaVideoProbeControl_delete(self.h)
