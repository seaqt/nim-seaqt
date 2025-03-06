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
{.compile("gen_qcamerazoomcontrol.cpp", cflags).}


import ./gen_qcamerazoomcontrol_types
export gen_qcamerazoomcontrol_types

import
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediacontrol
export
  gen_qobjectdefs_types,
  gen_qmediacontrol

type cQCameraZoomControl*{.exportc: "QCameraZoomControl", incompleteStruct.} = object

proc fcQCameraZoomControl_metaObject(self: pointer, ): pointer {.importc: "QCameraZoomControl_metaObject".}
proc fcQCameraZoomControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraZoomControl_metacast".}
proc fcQCameraZoomControl_tr(s: cstring): struct_miqt_string {.importc: "QCameraZoomControl_tr".}
proc fcQCameraZoomControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraZoomControl_trUtf8".}
proc fcQCameraZoomControl_maximumOpticalZoom(self: pointer, ): float64 {.importc: "QCameraZoomControl_maximumOpticalZoom".}
proc fcQCameraZoomControl_maximumDigitalZoom(self: pointer, ): float64 {.importc: "QCameraZoomControl_maximumDigitalZoom".}
proc fcQCameraZoomControl_requestedOpticalZoom(self: pointer, ): float64 {.importc: "QCameraZoomControl_requestedOpticalZoom".}
proc fcQCameraZoomControl_requestedDigitalZoom(self: pointer, ): float64 {.importc: "QCameraZoomControl_requestedDigitalZoom".}
proc fcQCameraZoomControl_currentOpticalZoom(self: pointer, ): float64 {.importc: "QCameraZoomControl_currentOpticalZoom".}
proc fcQCameraZoomControl_currentDigitalZoom(self: pointer, ): float64 {.importc: "QCameraZoomControl_currentDigitalZoom".}
proc fcQCameraZoomControl_zoomTo(self: pointer, optical: float64, digital: float64): void {.importc: "QCameraZoomControl_zoomTo".}
proc fcQCameraZoomControl_maximumOpticalZoomChanged(self: pointer, param1: float64): void {.importc: "QCameraZoomControl_maximumOpticalZoomChanged".}
proc fcQCameraZoomControl_connect_maximumOpticalZoomChanged(self: pointer, slot: int) {.importc: "QCameraZoomControl_connect_maximumOpticalZoomChanged".}
proc fcQCameraZoomControl_maximumDigitalZoomChanged(self: pointer, param1: float64): void {.importc: "QCameraZoomControl_maximumDigitalZoomChanged".}
proc fcQCameraZoomControl_connect_maximumDigitalZoomChanged(self: pointer, slot: int) {.importc: "QCameraZoomControl_connect_maximumDigitalZoomChanged".}
proc fcQCameraZoomControl_requestedOpticalZoomChanged(self: pointer, opticalZoom: float64): void {.importc: "QCameraZoomControl_requestedOpticalZoomChanged".}
proc fcQCameraZoomControl_connect_requestedOpticalZoomChanged(self: pointer, slot: int) {.importc: "QCameraZoomControl_connect_requestedOpticalZoomChanged".}
proc fcQCameraZoomControl_requestedDigitalZoomChanged(self: pointer, digitalZoom: float64): void {.importc: "QCameraZoomControl_requestedDigitalZoomChanged".}
proc fcQCameraZoomControl_connect_requestedDigitalZoomChanged(self: pointer, slot: int) {.importc: "QCameraZoomControl_connect_requestedDigitalZoomChanged".}
proc fcQCameraZoomControl_currentOpticalZoomChanged(self: pointer, opticalZoom: float64): void {.importc: "QCameraZoomControl_currentOpticalZoomChanged".}
proc fcQCameraZoomControl_connect_currentOpticalZoomChanged(self: pointer, slot: int) {.importc: "QCameraZoomControl_connect_currentOpticalZoomChanged".}
proc fcQCameraZoomControl_currentDigitalZoomChanged(self: pointer, digitalZoom: float64): void {.importc: "QCameraZoomControl_currentDigitalZoomChanged".}
proc fcQCameraZoomControl_connect_currentDigitalZoomChanged(self: pointer, slot: int) {.importc: "QCameraZoomControl_connect_currentDigitalZoomChanged".}
proc fcQCameraZoomControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraZoomControl_tr2".}
proc fcQCameraZoomControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraZoomControl_tr3".}
proc fcQCameraZoomControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraZoomControl_trUtf82".}
proc fcQCameraZoomControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraZoomControl_trUtf83".}
proc fcQCameraZoomControl_delete(self: pointer) {.importc: "QCameraZoomControl_delete".}


func init*(T: type gen_qcamerazoomcontrol_types.QCameraZoomControl, h: ptr cQCameraZoomControl): gen_qcamerazoomcontrol_types.QCameraZoomControl =
  T(h: h)
proc metaObject*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraZoomControl_metaObject(self.h))

proc metacast*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, param1: cstring): pointer =
  fcQCameraZoomControl_metacast(self.h, param1)

proc tr*(_: type gen_qcamerazoomcontrol_types.QCameraZoomControl, s: cstring): string =
  let v_ms = fcQCameraZoomControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcamerazoomcontrol_types.QCameraZoomControl, s: cstring): string =
  let v_ms = fcQCameraZoomControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc maximumOpticalZoom*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, ): float64 =
  fcQCameraZoomControl_maximumOpticalZoom(self.h)

proc maximumDigitalZoom*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, ): float64 =
  fcQCameraZoomControl_maximumDigitalZoom(self.h)

proc requestedOpticalZoom*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, ): float64 =
  fcQCameraZoomControl_requestedOpticalZoom(self.h)

proc requestedDigitalZoom*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, ): float64 =
  fcQCameraZoomControl_requestedDigitalZoom(self.h)

proc currentOpticalZoom*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, ): float64 =
  fcQCameraZoomControl_currentOpticalZoom(self.h)

proc currentDigitalZoom*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, ): float64 =
  fcQCameraZoomControl_currentDigitalZoom(self.h)

proc zoomTo*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, optical: float64, digital: float64): void =
  fcQCameraZoomControl_zoomTo(self.h, optical, digital)

proc maximumOpticalZoomChanged*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, param1: float64): void =
  fcQCameraZoomControl_maximumOpticalZoomChanged(self.h, param1)

type QCameraZoomControlmaximumOpticalZoomChangedSlot* = proc(param1: float64)
proc miqt_exec_callback_QCameraZoomControl_maximumOpticalZoomChanged(slot: int, param1: float64) {.exportc.} =
  let nimfunc = cast[ptr QCameraZoomControlmaximumOpticalZoomChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onmaximumOpticalZoomChanged*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, slot: QCameraZoomControlmaximumOpticalZoomChangedSlot) =
  var tmp = new QCameraZoomControlmaximumOpticalZoomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraZoomControl_connect_maximumOpticalZoomChanged(self.h, cast[int](addr tmp[]))

proc maximumDigitalZoomChanged*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, param1: float64): void =
  fcQCameraZoomControl_maximumDigitalZoomChanged(self.h, param1)

type QCameraZoomControlmaximumDigitalZoomChangedSlot* = proc(param1: float64)
proc miqt_exec_callback_QCameraZoomControl_maximumDigitalZoomChanged(slot: int, param1: float64) {.exportc.} =
  let nimfunc = cast[ptr QCameraZoomControlmaximumDigitalZoomChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onmaximumDigitalZoomChanged*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, slot: QCameraZoomControlmaximumDigitalZoomChangedSlot) =
  var tmp = new QCameraZoomControlmaximumDigitalZoomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraZoomControl_connect_maximumDigitalZoomChanged(self.h, cast[int](addr tmp[]))

proc requestedOpticalZoomChanged*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, opticalZoom: float64): void =
  fcQCameraZoomControl_requestedOpticalZoomChanged(self.h, opticalZoom)

type QCameraZoomControlrequestedOpticalZoomChangedSlot* = proc(opticalZoom: float64)
proc miqt_exec_callback_QCameraZoomControl_requestedOpticalZoomChanged(slot: int, opticalZoom: float64) {.exportc.} =
  let nimfunc = cast[ptr QCameraZoomControlrequestedOpticalZoomChangedSlot](cast[pointer](slot))
  let slotval1 = opticalZoom

  nimfunc[](slotval1)

proc onrequestedOpticalZoomChanged*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, slot: QCameraZoomControlrequestedOpticalZoomChangedSlot) =
  var tmp = new QCameraZoomControlrequestedOpticalZoomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraZoomControl_connect_requestedOpticalZoomChanged(self.h, cast[int](addr tmp[]))

proc requestedDigitalZoomChanged*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, digitalZoom: float64): void =
  fcQCameraZoomControl_requestedDigitalZoomChanged(self.h, digitalZoom)

type QCameraZoomControlrequestedDigitalZoomChangedSlot* = proc(digitalZoom: float64)
proc miqt_exec_callback_QCameraZoomControl_requestedDigitalZoomChanged(slot: int, digitalZoom: float64) {.exportc.} =
  let nimfunc = cast[ptr QCameraZoomControlrequestedDigitalZoomChangedSlot](cast[pointer](slot))
  let slotval1 = digitalZoom

  nimfunc[](slotval1)

proc onrequestedDigitalZoomChanged*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, slot: QCameraZoomControlrequestedDigitalZoomChangedSlot) =
  var tmp = new QCameraZoomControlrequestedDigitalZoomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraZoomControl_connect_requestedDigitalZoomChanged(self.h, cast[int](addr tmp[]))

proc currentOpticalZoomChanged*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, opticalZoom: float64): void =
  fcQCameraZoomControl_currentOpticalZoomChanged(self.h, opticalZoom)

type QCameraZoomControlcurrentOpticalZoomChangedSlot* = proc(opticalZoom: float64)
proc miqt_exec_callback_QCameraZoomControl_currentOpticalZoomChanged(slot: int, opticalZoom: float64) {.exportc.} =
  let nimfunc = cast[ptr QCameraZoomControlcurrentOpticalZoomChangedSlot](cast[pointer](slot))
  let slotval1 = opticalZoom

  nimfunc[](slotval1)

proc oncurrentOpticalZoomChanged*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, slot: QCameraZoomControlcurrentOpticalZoomChangedSlot) =
  var tmp = new QCameraZoomControlcurrentOpticalZoomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraZoomControl_connect_currentOpticalZoomChanged(self.h, cast[int](addr tmp[]))

proc currentDigitalZoomChanged*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, digitalZoom: float64): void =
  fcQCameraZoomControl_currentDigitalZoomChanged(self.h, digitalZoom)

type QCameraZoomControlcurrentDigitalZoomChangedSlot* = proc(digitalZoom: float64)
proc miqt_exec_callback_QCameraZoomControl_currentDigitalZoomChanged(slot: int, digitalZoom: float64) {.exportc.} =
  let nimfunc = cast[ptr QCameraZoomControlcurrentDigitalZoomChangedSlot](cast[pointer](slot))
  let slotval1 = digitalZoom

  nimfunc[](slotval1)

proc oncurrentDigitalZoomChanged*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl, slot: QCameraZoomControlcurrentDigitalZoomChangedSlot) =
  var tmp = new QCameraZoomControlcurrentDigitalZoomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraZoomControl_connect_currentDigitalZoomChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qcamerazoomcontrol_types.QCameraZoomControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraZoomControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcamerazoomcontrol_types.QCameraZoomControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraZoomControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcamerazoomcontrol_types.QCameraZoomControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraZoomControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcamerazoomcontrol_types.QCameraZoomControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraZoomControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_qcamerazoomcontrol_types.QCameraZoomControl) =
  fcQCameraZoomControl_delete(self.h)
