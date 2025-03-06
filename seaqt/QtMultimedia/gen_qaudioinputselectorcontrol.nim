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
{.compile("gen_qaudioinputselectorcontrol.cpp", cflags).}


import ./gen_qaudioinputselectorcontrol_types
export gen_qaudioinputselectorcontrol_types

import
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediacontrol
export
  gen_qobjectdefs_types,
  gen_qmediacontrol

type cQAudioInputSelectorControl*{.exportc: "QAudioInputSelectorControl", incompleteStruct.} = object

proc fcQAudioInputSelectorControl_metaObject(self: pointer, ): pointer {.importc: "QAudioInputSelectorControl_metaObject".}
proc fcQAudioInputSelectorControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioInputSelectorControl_metacast".}
proc fcQAudioInputSelectorControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioInputSelectorControl_metacall".}
proc fcQAudioInputSelectorControl_tr(s: cstring): struct_miqt_string {.importc: "QAudioInputSelectorControl_tr".}
proc fcQAudioInputSelectorControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioInputSelectorControl_trUtf8".}
proc fcQAudioInputSelectorControl_availableInputs(self: pointer, ): struct_miqt_array {.importc: "QAudioInputSelectorControl_availableInputs".}
proc fcQAudioInputSelectorControl_inputDescription(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QAudioInputSelectorControl_inputDescription".}
proc fcQAudioInputSelectorControl_defaultInput(self: pointer, ): struct_miqt_string {.importc: "QAudioInputSelectorControl_defaultInput".}
proc fcQAudioInputSelectorControl_activeInput(self: pointer, ): struct_miqt_string {.importc: "QAudioInputSelectorControl_activeInput".}
proc fcQAudioInputSelectorControl_setActiveInput(self: pointer, name: struct_miqt_string): void {.importc: "QAudioInputSelectorControl_setActiveInput".}
proc fcQAudioInputSelectorControl_activeInputChanged(self: pointer, name: struct_miqt_string): void {.importc: "QAudioInputSelectorControl_activeInputChanged".}
proc fcQAudioInputSelectorControl_connect_activeInputChanged(self: pointer, slot: int, callback: proc (slot: int, name: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioInputSelectorControl_connect_activeInputChanged".}
proc fcQAudioInputSelectorControl_availableInputsChanged(self: pointer, ): void {.importc: "QAudioInputSelectorControl_availableInputsChanged".}
proc fcQAudioInputSelectorControl_connect_availableInputsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioInputSelectorControl_connect_availableInputsChanged".}
proc fcQAudioInputSelectorControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioInputSelectorControl_tr2".}
proc fcQAudioInputSelectorControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioInputSelectorControl_tr3".}
proc fcQAudioInputSelectorControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioInputSelectorControl_trUtf82".}
proc fcQAudioInputSelectorControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioInputSelectorControl_trUtf83".}
proc fcQAudioInputSelectorControl_staticMetaObject(): pointer {.importc: "QAudioInputSelectorControl_staticMetaObject".}
proc fcQAudioInputSelectorControl_delete(self: pointer) {.importc: "QAudioInputSelectorControl_delete".}

proc metaObject*(self: gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioInputSelectorControl_metaObject(self.h))

proc metacast*(self: gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, param1: cstring): pointer =
  fcQAudioInputSelectorControl_metacast(self.h, param1)

proc metacall*(self: gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioInputSelectorControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, s: cstring): string =
  let v_ms = fcQAudioInputSelectorControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, s: cstring): string =
  let v_ms = fcQAudioInputSelectorControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availableInputs*(self: gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, ): seq[string] =
  var v_ma = fcQAudioInputSelectorControl_availableInputs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc inputDescription*(self: gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, name: string): string =
  let v_ms = fcQAudioInputSelectorControl_inputDescription(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc defaultInput*(self: gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, ): string =
  let v_ms = fcQAudioInputSelectorControl_defaultInput(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc activeInput*(self: gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, ): string =
  let v_ms = fcQAudioInputSelectorControl_activeInput(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setActiveInput*(self: gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, name: string): void =
  fcQAudioInputSelectorControl_setActiveInput(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc activeInputChanged*(self: gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, name: string): void =
  fcQAudioInputSelectorControl_activeInputChanged(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

type QAudioInputSelectorControlactiveInputChangedSlot* = proc(name: string)
proc miqt_exec_callback_cQAudioInputSelectorControl_activeInputChanged(slot: int, name: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QAudioInputSelectorControlactiveInputChangedSlot](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(toOpenArrayByte(vname_ms.data, 0, int(vname_ms.len)-1))
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAudioInputSelectorControl_activeInputChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioInputSelectorControlactiveInputChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactiveInputChanged*(self: gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, slot: QAudioInputSelectorControlactiveInputChangedSlot) =
  var tmp = new QAudioInputSelectorControlactiveInputChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInputSelectorControl_connect_activeInputChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioInputSelectorControl_activeInputChanged, miqt_exec_callback_cQAudioInputSelectorControl_activeInputChanged_release)

proc availableInputsChanged*(self: gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, ): void =
  fcQAudioInputSelectorControl_availableInputsChanged(self.h)

type QAudioInputSelectorControlavailableInputsChangedSlot* = proc()
proc miqt_exec_callback_cQAudioInputSelectorControl_availableInputsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioInputSelectorControlavailableInputsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioInputSelectorControl_availableInputsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioInputSelectorControlavailableInputsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onavailableInputsChanged*(self: gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, slot: QAudioInputSelectorControlavailableInputsChangedSlot) =
  var tmp = new QAudioInputSelectorControlavailableInputsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInputSelectorControl_connect_availableInputsChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioInputSelectorControl_availableInputsChanged, miqt_exec_callback_cQAudioInputSelectorControl_availableInputsChanged_release)

proc tr*(_: type gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, s: cstring, c: cstring): string =
  let v_ms = fcQAudioInputSelectorControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioInputSelectorControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, s: cstring, c: cstring): string =
  let v_ms = fcQAudioInputSelectorControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioInputSelectorControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioInputSelectorControl_staticMetaObject())
proc delete*(self: gen_qaudioinputselectorcontrol_types.QAudioInputSelectorControl) =
  fcQAudioInputSelectorControl_delete(self.h)
