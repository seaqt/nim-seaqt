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
{.compile("gen_qmediaavailabilitycontrol.cpp", cflags).}


import ./gen_qmediaavailabilitycontrol_types
export gen_qmediaavailabilitycontrol_types

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

type cQMediaAvailabilityControl*{.exportc: "QMediaAvailabilityControl", incompleteStruct.} = object

proc fcQMediaAvailabilityControl_metaObject(self: pointer): pointer {.importc: "QMediaAvailabilityControl_metaObject".}
proc fcQMediaAvailabilityControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaAvailabilityControl_metacast".}
proc fcQMediaAvailabilityControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaAvailabilityControl_metacall".}
proc fcQMediaAvailabilityControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaAvailabilityControl_tr".}
proc fcQMediaAvailabilityControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaAvailabilityControl_trUtf8".}
proc fcQMediaAvailabilityControl_availability(self: pointer): cint {.importc: "QMediaAvailabilityControl_availability".}
proc fcQMediaAvailabilityControl_availabilityChanged(self: pointer, availability: cint): void {.importc: "QMediaAvailabilityControl_availabilityChanged".}
proc fcQMediaAvailabilityControl_connect_availabilityChanged(self: pointer, slot: int, callback: proc (slot: int, availability: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaAvailabilityControl_connect_availabilityChanged".}
proc fcQMediaAvailabilityControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaAvailabilityControl_tr2".}
proc fcQMediaAvailabilityControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaAvailabilityControl_tr3".}
proc fcQMediaAvailabilityControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaAvailabilityControl_trUtf82".}
proc fcQMediaAvailabilityControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaAvailabilityControl_trUtf83".}
proc fcQMediaAvailabilityControl_protectedbase_sender(self: pointer): pointer {.importc: "QMediaAvailabilityControl_protectedbase_sender".}
proc fcQMediaAvailabilityControl_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMediaAvailabilityControl_protectedbase_senderSignalIndex".}
proc fcQMediaAvailabilityControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaAvailabilityControl_protectedbase_receivers".}
proc fcQMediaAvailabilityControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaAvailabilityControl_protectedbase_isSignalConnected".}
proc fcQMediaAvailabilityControl_staticMetaObject(): pointer {.importc: "QMediaAvailabilityControl_staticMetaObject".}

proc metaObject*(self: gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaAvailabilityControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, param1: cstring): pointer =
  fcQMediaAvailabilityControl_metacast(self.h, param1)

proc metacall*(self: gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaAvailabilityControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, s: cstring): string =
  let v_ms = fcQMediaAvailabilityControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, s: cstring): string =
  let v_ms = fcQMediaAvailabilityControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availability*(self: gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl): cint =
  cint(fcQMediaAvailabilityControl_availability(self.h))

proc availabilityChanged*(self: gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, availability: cint): void =
  fcQMediaAvailabilityControl_availabilityChanged(self.h, cint(availability))

type QMediaAvailabilityControlavailabilityChangedSlot* = proc(availability: cint)
proc cQMediaAvailabilityControl_slot_callback_availabilityChanged(slot: int, availability: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaAvailabilityControlavailabilityChangedSlot](cast[pointer](slot))
  let slotval1 = cint(availability)

  nimfunc[](slotval1)

proc cQMediaAvailabilityControl_slot_callback_availabilityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaAvailabilityControlavailabilityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onavailabilityChanged*(self: gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, slot: QMediaAvailabilityControlavailabilityChangedSlot) =
  var tmp = new QMediaAvailabilityControlavailabilityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaAvailabilityControl_connect_availabilityChanged(self.h, cast[int](addr tmp[]), cQMediaAvailabilityControl_slot_callback_availabilityChanged, cQMediaAvailabilityControl_slot_callback_availabilityChanged_release)

proc tr*(_: type gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaAvailabilityControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaAvailabilityControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaAvailabilityControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaAvailabilityControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaAvailabilityControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl): cint =
  fcQMediaAvailabilityControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, signal: cstring): cint =
  fcQMediaAvailabilityControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaAvailabilityControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaAvailabilityControl_staticMetaObject())
