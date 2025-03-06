import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qaudiorolecontrol.cpp", cflags).}


import ./gen_qaudiorolecontrol_types
export gen_qaudiorolecontrol_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediacontrol
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qmediacontrol

type cQAudioRoleControl*{.exportc: "QAudioRoleControl", incompleteStruct.} = object

proc fcQAudioRoleControl_metaObject(self: pointer, ): pointer {.importc: "QAudioRoleControl_metaObject".}
proc fcQAudioRoleControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioRoleControl_metacast".}
proc fcQAudioRoleControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioRoleControl_metacall".}
proc fcQAudioRoleControl_tr(s: cstring): struct_miqt_string {.importc: "QAudioRoleControl_tr".}
proc fcQAudioRoleControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioRoleControl_trUtf8".}
proc fcQAudioRoleControl_audioRole(self: pointer, ): cint {.importc: "QAudioRoleControl_audioRole".}
proc fcQAudioRoleControl_setAudioRole(self: pointer, role: cint): void {.importc: "QAudioRoleControl_setAudioRole".}
proc fcQAudioRoleControl_supportedAudioRoles(self: pointer, ): struct_miqt_array {.importc: "QAudioRoleControl_supportedAudioRoles".}
proc fcQAudioRoleControl_audioRoleChanged(self: pointer, role: cint): void {.importc: "QAudioRoleControl_audioRoleChanged".}
proc fcQAudioRoleControl_connect_audioRoleChanged(self: pointer, slot: int, callback: proc (slot: int, role: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRoleControl_connect_audioRoleChanged".}
proc fcQAudioRoleControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioRoleControl_tr2".}
proc fcQAudioRoleControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioRoleControl_tr3".}
proc fcQAudioRoleControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioRoleControl_trUtf82".}
proc fcQAudioRoleControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioRoleControl_trUtf83".}
proc fcQAudioRoleControl_protectedbase_sender(self: pointer, ): pointer {.importc: "QAudioRoleControl_protectedbase_sender".}
proc fcQAudioRoleControl_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAudioRoleControl_protectedbase_senderSignalIndex".}
proc fcQAudioRoleControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioRoleControl_protectedbase_receivers".}
proc fcQAudioRoleControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioRoleControl_protectedbase_isSignalConnected".}
proc fcQAudioRoleControl_staticMetaObject(): pointer {.importc: "QAudioRoleControl_staticMetaObject".}

proc metaObject*(self: gen_qaudiorolecontrol_types.QAudioRoleControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioRoleControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaudiorolecontrol_types.QAudioRoleControl, param1: cstring): pointer =
  fcQAudioRoleControl_metacast(self.h, param1)

proc metacall*(self: gen_qaudiorolecontrol_types.QAudioRoleControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioRoleControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiorolecontrol_types.QAudioRoleControl, s: cstring): string =
  let v_ms = fcQAudioRoleControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiorolecontrol_types.QAudioRoleControl, s: cstring): string =
  let v_ms = fcQAudioRoleControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioRole*(self: gen_qaudiorolecontrol_types.QAudioRoleControl, ): cint =
  cint(fcQAudioRoleControl_audioRole(self.h))

proc setAudioRole*(self: gen_qaudiorolecontrol_types.QAudioRoleControl, role: cint): void =
  fcQAudioRoleControl_setAudioRole(self.h, cint(role))

proc supportedAudioRoles*(self: gen_qaudiorolecontrol_types.QAudioRoleControl, ): seq[cint] =
  var v_ma = fcQAudioRoleControl_supportedAudioRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc audioRoleChanged*(self: gen_qaudiorolecontrol_types.QAudioRoleControl, role: cint): void =
  fcQAudioRoleControl_audioRoleChanged(self.h, cint(role))

type QAudioRoleControlaudioRoleChangedSlot* = proc(role: cint)
proc miqt_exec_callback_cQAudioRoleControl_audioRoleChanged(slot: int, role: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRoleControlaudioRoleChangedSlot](cast[pointer](slot))
  let slotval1 = cint(role)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAudioRoleControl_audioRoleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRoleControlaudioRoleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioRoleChanged*(self: gen_qaudiorolecontrol_types.QAudioRoleControl, slot: QAudioRoleControlaudioRoleChangedSlot) =
  var tmp = new QAudioRoleControlaudioRoleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoleControl_connect_audioRoleChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioRoleControl_audioRoleChanged, miqt_exec_callback_cQAudioRoleControl_audioRoleChanged_release)

proc tr*(_: type gen_qaudiorolecontrol_types.QAudioRoleControl, s: cstring, c: cstring): string =
  let v_ms = fcQAudioRoleControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiorolecontrol_types.QAudioRoleControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioRoleControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiorolecontrol_types.QAudioRoleControl, s: cstring, c: cstring): string =
  let v_ms = fcQAudioRoleControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiorolecontrol_types.QAudioRoleControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioRoleControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qaudiorolecontrol_types.QAudioRoleControl, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioRoleControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaudiorolecontrol_types.QAudioRoleControl, ): cint =
  fcQAudioRoleControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudiorolecontrol_types.QAudioRoleControl, signal: cstring): cint =
  fcQAudioRoleControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudiorolecontrol_types.QAudioRoleControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioRoleControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qaudiorolecontrol_types.QAudioRoleControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioRoleControl_staticMetaObject())
