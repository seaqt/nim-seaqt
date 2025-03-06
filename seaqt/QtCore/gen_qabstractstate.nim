import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qabstractstate.cpp", cflags).}


import ./gen_qabstractstate_types
export gen_qabstractstate_types

import
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types,
  ./gen_qstate_types,
  ./gen_qstatemachine_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qstate_types,
  gen_qstatemachine_types

type cQAbstractState*{.exportc: "QAbstractState", incompleteStruct.} = object

proc fcQAbstractState_metaObject(self: pointer, ): pointer {.importc: "QAbstractState_metaObject".}
proc fcQAbstractState_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractState_metacast".}
proc fcQAbstractState_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractState_metacall".}
proc fcQAbstractState_tr(s: cstring): struct_miqt_string {.importc: "QAbstractState_tr".}
proc fcQAbstractState_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractState_trUtf8".}
proc fcQAbstractState_parentState(self: pointer, ): pointer {.importc: "QAbstractState_parentState".}
proc fcQAbstractState_machine(self: pointer, ): pointer {.importc: "QAbstractState_machine".}
proc fcQAbstractState_active(self: pointer, ): bool {.importc: "QAbstractState_active".}
proc fcQAbstractState_activeChanged(self: pointer, active: bool): void {.importc: "QAbstractState_activeChanged".}
proc fcQAbstractState_connect_activeChanged(self: pointer, slot: int, callback: proc (slot: int, active: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractState_connect_activeChanged".}
proc fcQAbstractState_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractState_tr2".}
proc fcQAbstractState_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractState_tr3".}
proc fcQAbstractState_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractState_trUtf82".}
proc fcQAbstractState_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractState_trUtf83".}
proc fcQAbstractState_protectedbase_sender(self: pointer, ): pointer {.importc: "QAbstractState_protectedbase_sender".}
proc fcQAbstractState_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAbstractState_protectedbase_senderSignalIndex".}
proc fcQAbstractState_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractState_protectedbase_receivers".}
proc fcQAbstractState_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractState_protectedbase_isSignalConnected".}
proc fcQAbstractState_staticMetaObject(): pointer {.importc: "QAbstractState_staticMetaObject".}
proc fcQAbstractState_delete(self: pointer) {.importc: "QAbstractState_delete".}

proc metaObject*(self: gen_qabstractstate_types.QAbstractState, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractState_metaObject(self.h))

proc metacast*(self: gen_qabstractstate_types.QAbstractState, param1: cstring): pointer =
  fcQAbstractState_metacast(self.h, param1)

proc metacall*(self: gen_qabstractstate_types.QAbstractState, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractState_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractstate_types.QAbstractState, s: cstring): string =
  let v_ms = fcQAbstractState_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractstate_types.QAbstractState, s: cstring): string =
  let v_ms = fcQAbstractState_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc parentState*(self: gen_qabstractstate_types.QAbstractState, ): gen_qstate_types.QState =
  gen_qstate_types.QState(h: fcQAbstractState_parentState(self.h))

proc machine*(self: gen_qabstractstate_types.QAbstractState, ): gen_qstatemachine_types.QStateMachine =
  gen_qstatemachine_types.QStateMachine(h: fcQAbstractState_machine(self.h))

proc active*(self: gen_qabstractstate_types.QAbstractState, ): bool =
  fcQAbstractState_active(self.h)

proc activeChanged*(self: gen_qabstractstate_types.QAbstractState, active: bool): void =
  fcQAbstractState_activeChanged(self.h, active)

type QAbstractStateactiveChangedSlot* = proc(active: bool)
proc miqt_exec_callback_cQAbstractState_activeChanged(slot: int, active: bool) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractStateactiveChangedSlot](cast[pointer](slot))
  let slotval1 = active

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAbstractState_activeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractStateactiveChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactiveChanged*(self: gen_qabstractstate_types.QAbstractState, slot: QAbstractStateactiveChangedSlot) =
  var tmp = new QAbstractStateactiveChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractState_connect_activeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractState_activeChanged, miqt_exec_callback_cQAbstractState_activeChanged_release)

proc tr*(_: type gen_qabstractstate_types.QAbstractState, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractState_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractstate_types.QAbstractState, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractState_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractstate_types.QAbstractState, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractState_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractstate_types.QAbstractState, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractState_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qabstractstate_types.QAbstractState, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractState_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qabstractstate_types.QAbstractState, ): cint =
  fcQAbstractState_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractstate_types.QAbstractState, signal: cstring): cint =
  fcQAbstractState_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractstate_types.QAbstractState, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractState_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qabstractstate_types.QAbstractState): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractState_staticMetaObject())
proc delete*(self: gen_qabstractstate_types.QAbstractState) =
  fcQAbstractState_delete(self.h)
