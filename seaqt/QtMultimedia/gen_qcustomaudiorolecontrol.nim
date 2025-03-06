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
{.compile("gen_qcustomaudiorolecontrol.cpp", cflags).}


import ./gen_qcustomaudiorolecontrol_types
export gen_qcustomaudiorolecontrol_types

import
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediacontrol
export
  gen_qobjectdefs_types,
  gen_qmediacontrol

type cQCustomAudioRoleControl*{.exportc: "QCustomAudioRoleControl", incompleteStruct.} = object

proc fcQCustomAudioRoleControl_metaObject(self: pointer, ): pointer {.importc: "QCustomAudioRoleControl_metaObject".}
proc fcQCustomAudioRoleControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCustomAudioRoleControl_metacast".}
proc fcQCustomAudioRoleControl_tr(s: cstring): struct_miqt_string {.importc: "QCustomAudioRoleControl_tr".}
proc fcQCustomAudioRoleControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCustomAudioRoleControl_trUtf8".}
proc fcQCustomAudioRoleControl_customAudioRole(self: pointer, ): struct_miqt_string {.importc: "QCustomAudioRoleControl_customAudioRole".}
proc fcQCustomAudioRoleControl_setCustomAudioRole(self: pointer, role: struct_miqt_string): void {.importc: "QCustomAudioRoleControl_setCustomAudioRole".}
proc fcQCustomAudioRoleControl_supportedCustomAudioRoles(self: pointer, ): struct_miqt_array {.importc: "QCustomAudioRoleControl_supportedCustomAudioRoles".}
proc fcQCustomAudioRoleControl_customAudioRoleChanged(self: pointer, role: struct_miqt_string): void {.importc: "QCustomAudioRoleControl_customAudioRoleChanged".}
proc fcQCustomAudioRoleControl_connect_customAudioRoleChanged(self: pointer, slot: int) {.importc: "QCustomAudioRoleControl_connect_customAudioRoleChanged".}
proc fcQCustomAudioRoleControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCustomAudioRoleControl_tr2".}
proc fcQCustomAudioRoleControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCustomAudioRoleControl_tr3".}
proc fcQCustomAudioRoleControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCustomAudioRoleControl_trUtf82".}
proc fcQCustomAudioRoleControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCustomAudioRoleControl_trUtf83".}
proc fcQCustomAudioRoleControl_delete(self: pointer) {.importc: "QCustomAudioRoleControl_delete".}


func init*(T: type gen_qcustomaudiorolecontrol_types.QCustomAudioRoleControl, h: ptr cQCustomAudioRoleControl): gen_qcustomaudiorolecontrol_types.QCustomAudioRoleControl =
  T(h: h)
proc metaObject*(self: gen_qcustomaudiorolecontrol_types.QCustomAudioRoleControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCustomAudioRoleControl_metaObject(self.h))

proc metacast*(self: gen_qcustomaudiorolecontrol_types.QCustomAudioRoleControl, param1: cstring): pointer =
  fcQCustomAudioRoleControl_metacast(self.h, param1)

proc tr*(_: type gen_qcustomaudiorolecontrol_types.QCustomAudioRoleControl, s: cstring): string =
  let v_ms = fcQCustomAudioRoleControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcustomaudiorolecontrol_types.QCustomAudioRoleControl, s: cstring): string =
  let v_ms = fcQCustomAudioRoleControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc customAudioRole*(self: gen_qcustomaudiorolecontrol_types.QCustomAudioRoleControl, ): string =
  let v_ms = fcQCustomAudioRoleControl_customAudioRole(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCustomAudioRole*(self: gen_qcustomaudiorolecontrol_types.QCustomAudioRoleControl, role: string): void =
  fcQCustomAudioRoleControl_setCustomAudioRole(self.h, struct_miqt_string(data: role, len: csize_t(len(role))))

proc supportedCustomAudioRoles*(self: gen_qcustomaudiorolecontrol_types.QCustomAudioRoleControl, ): seq[string] =
  var v_ma = fcQCustomAudioRoleControl_supportedCustomAudioRoles(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc customAudioRoleChanged*(self: gen_qcustomaudiorolecontrol_types.QCustomAudioRoleControl, role: string): void =
  fcQCustomAudioRoleControl_customAudioRoleChanged(self.h, struct_miqt_string(data: role, len: csize_t(len(role))))

type QCustomAudioRoleControlcustomAudioRoleChangedSlot* = proc(role: string)
proc miqt_exec_callback_QCustomAudioRoleControl_customAudioRoleChanged(slot: int, role: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QCustomAudioRoleControlcustomAudioRoleChangedSlot](cast[pointer](slot))
  let vrole_ms = role
  let vrolex_ret = string.fromBytes(toOpenArrayByte(vrole_ms.data, 0, int(vrole_ms.len)-1))
  c_free(vrole_ms.data)
  let slotval1 = vrolex_ret

  nimfunc[](slotval1)

proc oncustomAudioRoleChanged*(self: gen_qcustomaudiorolecontrol_types.QCustomAudioRoleControl, slot: QCustomAudioRoleControlcustomAudioRoleChangedSlot) =
  var tmp = new QCustomAudioRoleControlcustomAudioRoleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCustomAudioRoleControl_connect_customAudioRoleChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qcustomaudiorolecontrol_types.QCustomAudioRoleControl, s: cstring, c: cstring): string =
  let v_ms = fcQCustomAudioRoleControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcustomaudiorolecontrol_types.QCustomAudioRoleControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCustomAudioRoleControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcustomaudiorolecontrol_types.QCustomAudioRoleControl, s: cstring, c: cstring): string =
  let v_ms = fcQCustomAudioRoleControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcustomaudiorolecontrol_types.QCustomAudioRoleControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCustomAudioRoleControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_qcustomaudiorolecontrol_types.QCustomAudioRoleControl) =
  fcQCustomAudioRoleControl_delete(self.h)
