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
{.compile("gen_qmediaaudioprobecontrol.cpp", cflags).}


import ./gen_qmediaaudioprobecontrol_types
export gen_qmediaaudioprobecontrol_types

import
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaudiobuffer_types,
  ./gen_qmediacontrol
export
  gen_qobjectdefs_types,
  gen_qaudiobuffer_types,
  gen_qmediacontrol

type cQMediaAudioProbeControl*{.exportc: "QMediaAudioProbeControl", incompleteStruct.} = object

proc fcQMediaAudioProbeControl_metaObject(self: pointer, ): pointer {.importc: "QMediaAudioProbeControl_metaObject".}
proc fcQMediaAudioProbeControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaAudioProbeControl_metacast".}
proc fcQMediaAudioProbeControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaAudioProbeControl_metacall".}
proc fcQMediaAudioProbeControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaAudioProbeControl_tr".}
proc fcQMediaAudioProbeControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaAudioProbeControl_trUtf8".}
proc fcQMediaAudioProbeControl_audioBufferProbed(self: pointer, buffer: pointer): void {.importc: "QMediaAudioProbeControl_audioBufferProbed".}
proc fcQMediaAudioProbeControl_connect_audioBufferProbed(self: pointer, slot: int) {.importc: "QMediaAudioProbeControl_connect_audioBufferProbed".}
proc fcQMediaAudioProbeControl_flush(self: pointer, ): void {.importc: "QMediaAudioProbeControl_flush".}
proc fcQMediaAudioProbeControl_connect_flush(self: pointer, slot: int) {.importc: "QMediaAudioProbeControl_connect_flush".}
proc fcQMediaAudioProbeControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaAudioProbeControl_tr2".}
proc fcQMediaAudioProbeControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaAudioProbeControl_tr3".}
proc fcQMediaAudioProbeControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaAudioProbeControl_trUtf82".}
proc fcQMediaAudioProbeControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaAudioProbeControl_trUtf83".}
proc fcQMediaAudioProbeControl_staticMetaObject(): pointer {.importc: "QMediaAudioProbeControl_staticMetaObject".}
proc fcQMediaAudioProbeControl_delete(self: pointer) {.importc: "QMediaAudioProbeControl_delete".}

proc metaObject*(self: gen_qmediaaudioprobecontrol_types.QMediaAudioProbeControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaAudioProbeControl_metaObject(self.h))

proc metacast*(self: gen_qmediaaudioprobecontrol_types.QMediaAudioProbeControl, param1: cstring): pointer =
  fcQMediaAudioProbeControl_metacast(self.h, param1)

proc metacall*(self: gen_qmediaaudioprobecontrol_types.QMediaAudioProbeControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaAudioProbeControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediaaudioprobecontrol_types.QMediaAudioProbeControl, s: cstring): string =
  let v_ms = fcQMediaAudioProbeControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaaudioprobecontrol_types.QMediaAudioProbeControl, s: cstring): string =
  let v_ms = fcQMediaAudioProbeControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioBufferProbed*(self: gen_qmediaaudioprobecontrol_types.QMediaAudioProbeControl, buffer: gen_qaudiobuffer_types.QAudioBuffer): void =
  fcQMediaAudioProbeControl_audioBufferProbed(self.h, buffer.h)

type QMediaAudioProbeControlaudioBufferProbedSlot* = proc(buffer: gen_qaudiobuffer_types.QAudioBuffer)
proc miqt_exec_callback_cQMediaAudioProbeControl_audioBufferProbed(slot: int, buffer: pointer) {.exportc: "miqt_exec_callback_QMediaAudioProbeControl_audioBufferProbed".} =
  let nimfunc = cast[ptr QMediaAudioProbeControlaudioBufferProbedSlot](cast[pointer](slot))
  let slotval1 = gen_qaudiobuffer_types.QAudioBuffer(h: buffer)

  nimfunc[](slotval1)

proc onaudioBufferProbed*(self: gen_qmediaaudioprobecontrol_types.QMediaAudioProbeControl, slot: QMediaAudioProbeControlaudioBufferProbedSlot) =
  var tmp = new QMediaAudioProbeControlaudioBufferProbedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaAudioProbeControl_connect_audioBufferProbed(self.h, cast[int](addr tmp[]))

proc flush*(self: gen_qmediaaudioprobecontrol_types.QMediaAudioProbeControl, ): void =
  fcQMediaAudioProbeControl_flush(self.h)

type QMediaAudioProbeControlflushSlot* = proc()
proc miqt_exec_callback_cQMediaAudioProbeControl_flush(slot: int) {.exportc: "miqt_exec_callback_QMediaAudioProbeControl_flush".} =
  let nimfunc = cast[ptr QMediaAudioProbeControlflushSlot](cast[pointer](slot))
  nimfunc[]()

proc onflush*(self: gen_qmediaaudioprobecontrol_types.QMediaAudioProbeControl, slot: QMediaAudioProbeControlflushSlot) =
  var tmp = new QMediaAudioProbeControlflushSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaAudioProbeControl_connect_flush(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qmediaaudioprobecontrol_types.QMediaAudioProbeControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaAudioProbeControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediaaudioprobecontrol_types.QMediaAudioProbeControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaAudioProbeControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaaudioprobecontrol_types.QMediaAudioProbeControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaAudioProbeControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaaudioprobecontrol_types.QMediaAudioProbeControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaAudioProbeControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qmediaaudioprobecontrol_types.QMediaAudioProbeControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaAudioProbeControl_staticMetaObject())
proc delete*(self: gen_qmediaaudioprobecontrol_types.QMediaAudioProbeControl) =
  fcQMediaAudioProbeControl_delete(self.h)
