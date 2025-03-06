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
{.compile("gen_qmediaavailabilitycontrol.cpp", cflags).}


import ./gen_qmediaavailabilitycontrol_types
export gen_qmediaavailabilitycontrol_types

import
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediacontrol
export
  gen_qobjectdefs_types,
  gen_qmediacontrol

type cQMediaAvailabilityControl*{.exportc: "QMediaAvailabilityControl", incompleteStruct.} = object

proc fcQMediaAvailabilityControl_metaObject(self: pointer, ): pointer {.importc: "QMediaAvailabilityControl_metaObject".}
proc fcQMediaAvailabilityControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaAvailabilityControl_metacast".}
proc fcQMediaAvailabilityControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaAvailabilityControl_tr".}
proc fcQMediaAvailabilityControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaAvailabilityControl_trUtf8".}
proc fcQMediaAvailabilityControl_availability(self: pointer, ): cint {.importc: "QMediaAvailabilityControl_availability".}
proc fcQMediaAvailabilityControl_availabilityChanged(self: pointer, availability: cint): void {.importc: "QMediaAvailabilityControl_availabilityChanged".}
proc fcQMediaAvailabilityControl_connect_availabilityChanged(self: pointer, slot: int) {.importc: "QMediaAvailabilityControl_connect_availabilityChanged".}
proc fcQMediaAvailabilityControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaAvailabilityControl_tr2".}
proc fcQMediaAvailabilityControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaAvailabilityControl_tr3".}
proc fcQMediaAvailabilityControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaAvailabilityControl_trUtf82".}
proc fcQMediaAvailabilityControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaAvailabilityControl_trUtf83".}
proc fcQMediaAvailabilityControl_delete(self: pointer) {.importc: "QMediaAvailabilityControl_delete".}


func init*(T: type gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, h: ptr cQMediaAvailabilityControl): gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl =
  T(h: h)
proc metaObject*(self: gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaAvailabilityControl_metaObject(self.h))

proc metacast*(self: gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, param1: cstring): pointer =
  fcQMediaAvailabilityControl_metacast(self.h, param1)

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

proc availability*(self: gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, ): cint =
  cint(fcQMediaAvailabilityControl_availability(self.h))

proc availabilityChanged*(self: gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, availability: cint): void =
  fcQMediaAvailabilityControl_availabilityChanged(self.h, cint(availability))

type QMediaAvailabilityControlavailabilityChangedSlot* = proc(availability: cint)
proc miqt_exec_callback_QMediaAvailabilityControl_availabilityChanged(slot: int, availability: cint) {.exportc.} =
  let nimfunc = cast[ptr QMediaAvailabilityControlavailabilityChangedSlot](cast[pointer](slot))
  let slotval1 = cint(availability)

  nimfunc[](slotval1)

proc onavailabilityChanged*(self: gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl, slot: QMediaAvailabilityControlavailabilityChangedSlot) =
  var tmp = new QMediaAvailabilityControlavailabilityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaAvailabilityControl_connect_availabilityChanged(self.h, cast[int](addr tmp[]))

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

proc delete*(self: gen_qmediaavailabilitycontrol_types.QMediaAvailabilityControl) =
  fcQMediaAvailabilityControl_delete(self.h)
