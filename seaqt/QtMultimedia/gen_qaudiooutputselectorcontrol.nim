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
{.compile("gen_qaudiooutputselectorcontrol.cpp", cflags).}


import ./gen_qaudiooutputselectorcontrol_types
export gen_qaudiooutputselectorcontrol_types

import
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediacontrol
export
  gen_qobjectdefs_types,
  gen_qmediacontrol

type cQAudioOutputSelectorControl*{.exportc: "QAudioOutputSelectorControl", incompleteStruct.} = object

proc fcQAudioOutputSelectorControl_metaObject(self: pointer, ): pointer {.importc: "QAudioOutputSelectorControl_metaObject".}
proc fcQAudioOutputSelectorControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioOutputSelectorControl_metacast".}
proc fcQAudioOutputSelectorControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioOutputSelectorControl_metacall".}
proc fcQAudioOutputSelectorControl_tr(s: cstring): struct_miqt_string {.importc: "QAudioOutputSelectorControl_tr".}
proc fcQAudioOutputSelectorControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioOutputSelectorControl_trUtf8".}
proc fcQAudioOutputSelectorControl_availableOutputs(self: pointer, ): struct_miqt_array {.importc: "QAudioOutputSelectorControl_availableOutputs".}
proc fcQAudioOutputSelectorControl_outputDescription(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QAudioOutputSelectorControl_outputDescription".}
proc fcQAudioOutputSelectorControl_defaultOutput(self: pointer, ): struct_miqt_string {.importc: "QAudioOutputSelectorControl_defaultOutput".}
proc fcQAudioOutputSelectorControl_activeOutput(self: pointer, ): struct_miqt_string {.importc: "QAudioOutputSelectorControl_activeOutput".}
proc fcQAudioOutputSelectorControl_setActiveOutput(self: pointer, name: struct_miqt_string): void {.importc: "QAudioOutputSelectorControl_setActiveOutput".}
proc fcQAudioOutputSelectorControl_activeOutputChanged(self: pointer, name: struct_miqt_string): void {.importc: "QAudioOutputSelectorControl_activeOutputChanged".}
proc fcQAudioOutputSelectorControl_connect_activeOutputChanged(self: pointer, slot: int) {.importc: "QAudioOutputSelectorControl_connect_activeOutputChanged".}
proc fcQAudioOutputSelectorControl_availableOutputsChanged(self: pointer, ): void {.importc: "QAudioOutputSelectorControl_availableOutputsChanged".}
proc fcQAudioOutputSelectorControl_connect_availableOutputsChanged(self: pointer, slot: int) {.importc: "QAudioOutputSelectorControl_connect_availableOutputsChanged".}
proc fcQAudioOutputSelectorControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioOutputSelectorControl_tr2".}
proc fcQAudioOutputSelectorControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioOutputSelectorControl_tr3".}
proc fcQAudioOutputSelectorControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioOutputSelectorControl_trUtf82".}
proc fcQAudioOutputSelectorControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioOutputSelectorControl_trUtf83".}
proc fcQAudioOutputSelectorControl_staticMetaObject(): pointer {.importc: "QAudioOutputSelectorControl_staticMetaObject".}
proc fcQAudioOutputSelectorControl_delete(self: pointer) {.importc: "QAudioOutputSelectorControl_delete".}


func init*(T: type gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, h: ptr cQAudioOutputSelectorControl): gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl =
  T(h: h)
proc metaObject*(self: gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioOutputSelectorControl_metaObject(self.h))

proc metacast*(self: gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, param1: cstring): pointer =
  fcQAudioOutputSelectorControl_metacast(self.h, param1)

proc metacall*(self: gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioOutputSelectorControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, s: cstring): string =
  let v_ms = fcQAudioOutputSelectorControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, s: cstring): string =
  let v_ms = fcQAudioOutputSelectorControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availableOutputs*(self: gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, ): seq[string] =
  var v_ma = fcQAudioOutputSelectorControl_availableOutputs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc outputDescription*(self: gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, name: string): string =
  let v_ms = fcQAudioOutputSelectorControl_outputDescription(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc defaultOutput*(self: gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, ): string =
  let v_ms = fcQAudioOutputSelectorControl_defaultOutput(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc activeOutput*(self: gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, ): string =
  let v_ms = fcQAudioOutputSelectorControl_activeOutput(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setActiveOutput*(self: gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, name: string): void =
  fcQAudioOutputSelectorControl_setActiveOutput(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc activeOutputChanged*(self: gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, name: string): void =
  fcQAudioOutputSelectorControl_activeOutputChanged(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

type QAudioOutputSelectorControlactiveOutputChangedSlot* = proc(name: string)
proc miqt_exec_callback_QAudioOutputSelectorControl_activeOutputChanged(slot: int, name: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QAudioOutputSelectorControlactiveOutputChangedSlot](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(toOpenArrayByte(vname_ms.data, 0, int(vname_ms.len)-1))
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret

  nimfunc[](slotval1)

proc onactiveOutputChanged*(self: gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, slot: QAudioOutputSelectorControlactiveOutputChangedSlot) =
  var tmp = new QAudioOutputSelectorControlactiveOutputChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutputSelectorControl_connect_activeOutputChanged(self.h, cast[int](addr tmp[]))

proc availableOutputsChanged*(self: gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, ): void =
  fcQAudioOutputSelectorControl_availableOutputsChanged(self.h)

type QAudioOutputSelectorControlavailableOutputsChangedSlot* = proc()
proc miqt_exec_callback_QAudioOutputSelectorControl_availableOutputsChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAudioOutputSelectorControlavailableOutputsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onavailableOutputsChanged*(self: gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, slot: QAudioOutputSelectorControlavailableOutputsChangedSlot) =
  var tmp = new QAudioOutputSelectorControlavailableOutputsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutputSelectorControl_connect_availableOutputsChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, s: cstring, c: cstring): string =
  let v_ms = fcQAudioOutputSelectorControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioOutputSelectorControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, s: cstring, c: cstring): string =
  let v_ms = fcQAudioOutputSelectorControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioOutputSelectorControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioOutputSelectorControl_staticMetaObject())
proc delete*(self: gen_qaudiooutputselectorcontrol_types.QAudioOutputSelectorControl) =
  fcQAudioOutputSelectorControl_delete(self.h)
