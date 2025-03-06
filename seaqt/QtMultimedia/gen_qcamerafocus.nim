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
{.compile("gen_qcamerafocus.cpp", cflags).}


type QCameraFocusZoneFocusZoneStatusEnum* = distinct cint
template Invalid*(_: type QCameraFocusZoneFocusZoneStatusEnum): untyped = 0
template Unused*(_: type QCameraFocusZoneFocusZoneStatusEnum): untyped = 1
template Selected*(_: type QCameraFocusZoneFocusZoneStatusEnum): untyped = 2
template Focused*(_: type QCameraFocusZoneFocusZoneStatusEnum): untyped = 3


type QCameraFocusFocusModeEnum* = distinct cint
template ManualFocus*(_: type QCameraFocusFocusModeEnum): untyped = 1
template HyperfocalFocus*(_: type QCameraFocusFocusModeEnum): untyped = 2
template InfinityFocus*(_: type QCameraFocusFocusModeEnum): untyped = 4
template AutoFocus*(_: type QCameraFocusFocusModeEnum): untyped = 8
template ContinuousFocus*(_: type QCameraFocusFocusModeEnum): untyped = 16
template MacroFocus*(_: type QCameraFocusFocusModeEnum): untyped = 32


type QCameraFocusFocusPointModeEnum* = distinct cint
template FocusPointAuto*(_: type QCameraFocusFocusPointModeEnum): untyped = 0
template FocusPointCenter*(_: type QCameraFocusFocusPointModeEnum): untyped = 1
template FocusPointFaceDetection*(_: type QCameraFocusFocusPointModeEnum): untyped = 2
template FocusPointCustom*(_: type QCameraFocusFocusPointModeEnum): untyped = 3


import ./gen_qcamerafocus_types
export gen_qcamerafocus_types

import
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types
export
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types

type cQCameraFocusZone*{.exportc: "QCameraFocusZone", incompleteStruct.} = object
type cQCameraFocus*{.exportc: "QCameraFocus", incompleteStruct.} = object

proc fcQCameraFocusZone_operatorAssign(self: pointer, other: pointer): void {.importc: "QCameraFocusZone_operatorAssign".}
proc fcQCameraFocusZone_operatorEqual(self: pointer, other: pointer): bool {.importc: "QCameraFocusZone_operatorEqual".}
proc fcQCameraFocusZone_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QCameraFocusZone_operatorNotEqual".}
proc fcQCameraFocusZone_isValid(self: pointer, ): bool {.importc: "QCameraFocusZone_isValid".}
proc fcQCameraFocusZone_area(self: pointer, ): pointer {.importc: "QCameraFocusZone_area".}
proc fcQCameraFocusZone_status(self: pointer, ): cint {.importc: "QCameraFocusZone_status".}
proc fcQCameraFocusZone_setStatus(self: pointer, status: cint): void {.importc: "QCameraFocusZone_setStatus".}
proc fcQCameraFocusZone_new(): ptr cQCameraFocusZone {.importc: "QCameraFocusZone_new".}
proc fcQCameraFocusZone_new2(area: pointer): ptr cQCameraFocusZone {.importc: "QCameraFocusZone_new2".}
proc fcQCameraFocusZone_new3(other: pointer): ptr cQCameraFocusZone {.importc: "QCameraFocusZone_new3".}
proc fcQCameraFocusZone_new4(area: pointer, status: cint): ptr cQCameraFocusZone {.importc: "QCameraFocusZone_new4".}
proc fcQCameraFocusZone_delete(self: pointer) {.importc: "QCameraFocusZone_delete".}
proc fcQCameraFocus_metaObject(self: pointer, ): pointer {.importc: "QCameraFocus_metaObject".}
proc fcQCameraFocus_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraFocus_metacast".}
proc fcQCameraFocus_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraFocus_metacall".}
proc fcQCameraFocus_tr(s: cstring): struct_miqt_string {.importc: "QCameraFocus_tr".}
proc fcQCameraFocus_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraFocus_trUtf8".}
proc fcQCameraFocus_isAvailable(self: pointer, ): bool {.importc: "QCameraFocus_isAvailable".}
proc fcQCameraFocus_focusMode(self: pointer, ): cint {.importc: "QCameraFocus_focusMode".}
proc fcQCameraFocus_setFocusMode(self: pointer, mode: cint): void {.importc: "QCameraFocus_setFocusMode".}
proc fcQCameraFocus_isFocusModeSupported(self: pointer, mode: cint): bool {.importc: "QCameraFocus_isFocusModeSupported".}
proc fcQCameraFocus_focusPointMode(self: pointer, ): cint {.importc: "QCameraFocus_focusPointMode".}
proc fcQCameraFocus_setFocusPointMode(self: pointer, mode: cint): void {.importc: "QCameraFocus_setFocusPointMode".}
proc fcQCameraFocus_isFocusPointModeSupported(self: pointer, param1: cint): bool {.importc: "QCameraFocus_isFocusPointModeSupported".}
proc fcQCameraFocus_customFocusPoint(self: pointer, ): pointer {.importc: "QCameraFocus_customFocusPoint".}
proc fcQCameraFocus_setCustomFocusPoint(self: pointer, point: pointer): void {.importc: "QCameraFocus_setCustomFocusPoint".}
proc fcQCameraFocus_focusZones(self: pointer, ): struct_miqt_array {.importc: "QCameraFocus_focusZones".}
proc fcQCameraFocus_maximumOpticalZoom(self: pointer, ): float64 {.importc: "QCameraFocus_maximumOpticalZoom".}
proc fcQCameraFocus_maximumDigitalZoom(self: pointer, ): float64 {.importc: "QCameraFocus_maximumDigitalZoom".}
proc fcQCameraFocus_opticalZoom(self: pointer, ): float64 {.importc: "QCameraFocus_opticalZoom".}
proc fcQCameraFocus_digitalZoom(self: pointer, ): float64 {.importc: "QCameraFocus_digitalZoom".}
proc fcQCameraFocus_zoomTo(self: pointer, opticalZoom: float64, digitalZoom: float64): void {.importc: "QCameraFocus_zoomTo".}
proc fcQCameraFocus_opticalZoomChanged(self: pointer, param1: float64): void {.importc: "QCameraFocus_opticalZoomChanged".}
proc fcQCameraFocus_connect_opticalZoomChanged(self: pointer, slot: int) {.importc: "QCameraFocus_connect_opticalZoomChanged".}
proc fcQCameraFocus_digitalZoomChanged(self: pointer, param1: float64): void {.importc: "QCameraFocus_digitalZoomChanged".}
proc fcQCameraFocus_connect_digitalZoomChanged(self: pointer, slot: int) {.importc: "QCameraFocus_connect_digitalZoomChanged".}
proc fcQCameraFocus_focusZonesChanged(self: pointer, ): void {.importc: "QCameraFocus_focusZonesChanged".}
proc fcQCameraFocus_connect_focusZonesChanged(self: pointer, slot: int) {.importc: "QCameraFocus_connect_focusZonesChanged".}
proc fcQCameraFocus_maximumOpticalZoomChanged(self: pointer, param1: float64): void {.importc: "QCameraFocus_maximumOpticalZoomChanged".}
proc fcQCameraFocus_connect_maximumOpticalZoomChanged(self: pointer, slot: int) {.importc: "QCameraFocus_connect_maximumOpticalZoomChanged".}
proc fcQCameraFocus_maximumDigitalZoomChanged(self: pointer, param1: float64): void {.importc: "QCameraFocus_maximumDigitalZoomChanged".}
proc fcQCameraFocus_connect_maximumDigitalZoomChanged(self: pointer, slot: int) {.importc: "QCameraFocus_connect_maximumDigitalZoomChanged".}
proc fcQCameraFocus_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraFocus_tr2".}
proc fcQCameraFocus_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraFocus_tr3".}
proc fcQCameraFocus_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraFocus_trUtf82".}
proc fcQCameraFocus_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraFocus_trUtf83".}
proc fcQCameraFocus_staticMetaObject(): pointer {.importc: "QCameraFocus_staticMetaObject".}

proc operatorAssign*(self: gen_qcamerafocus_types.QCameraFocusZone, other: gen_qcamerafocus_types.QCameraFocusZone): void =
  fcQCameraFocusZone_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qcamerafocus_types.QCameraFocusZone, other: gen_qcamerafocus_types.QCameraFocusZone): bool =
  fcQCameraFocusZone_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qcamerafocus_types.QCameraFocusZone, other: gen_qcamerafocus_types.QCameraFocusZone): bool =
  fcQCameraFocusZone_operatorNotEqual(self.h, other.h)

proc isValid*(self: gen_qcamerafocus_types.QCameraFocusZone, ): bool =
  fcQCameraFocusZone_isValid(self.h)

proc area*(self: gen_qcamerafocus_types.QCameraFocusZone, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQCameraFocusZone_area(self.h))

proc status*(self: gen_qcamerafocus_types.QCameraFocusZone, ): cint =
  cint(fcQCameraFocusZone_status(self.h))

proc setStatus*(self: gen_qcamerafocus_types.QCameraFocusZone, status: cint): void =
  fcQCameraFocusZone_setStatus(self.h, cint(status))

proc create*(T: type gen_qcamerafocus_types.QCameraFocusZone): gen_qcamerafocus_types.QCameraFocusZone =
  gen_qcamerafocus_types.QCameraFocusZone(h: fcQCameraFocusZone_new())

proc create*(T: type gen_qcamerafocus_types.QCameraFocusZone,
    area: gen_qrect_types.QRectF): gen_qcamerafocus_types.QCameraFocusZone =
  gen_qcamerafocus_types.QCameraFocusZone(h: fcQCameraFocusZone_new2(area.h))

proc create*(T: type gen_qcamerafocus_types.QCameraFocusZone,
    other: gen_qcamerafocus_types.QCameraFocusZone): gen_qcamerafocus_types.QCameraFocusZone =
  gen_qcamerafocus_types.QCameraFocusZone(h: fcQCameraFocusZone_new3(other.h))

proc create*(T: type gen_qcamerafocus_types.QCameraFocusZone,
    area: gen_qrect_types.QRectF, status: cint): gen_qcamerafocus_types.QCameraFocusZone =
  gen_qcamerafocus_types.QCameraFocusZone(h: fcQCameraFocusZone_new4(area.h, cint(status)))

proc delete*(self: gen_qcamerafocus_types.QCameraFocusZone) =
  fcQCameraFocusZone_delete(self.h)
proc metaObject*(self: gen_qcamerafocus_types.QCameraFocus, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraFocus_metaObject(self.h))

proc metacast*(self: gen_qcamerafocus_types.QCameraFocus, param1: cstring): pointer =
  fcQCameraFocus_metacast(self.h, param1)

proc metacall*(self: gen_qcamerafocus_types.QCameraFocus, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraFocus_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcamerafocus_types.QCameraFocus, s: cstring): string =
  let v_ms = fcQCameraFocus_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcamerafocus_types.QCameraFocus, s: cstring): string =
  let v_ms = fcQCameraFocus_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: gen_qcamerafocus_types.QCameraFocus, ): bool =
  fcQCameraFocus_isAvailable(self.h)

proc focusMode*(self: gen_qcamerafocus_types.QCameraFocus, ): cint =
  cint(fcQCameraFocus_focusMode(self.h))

proc setFocusMode*(self: gen_qcamerafocus_types.QCameraFocus, mode: cint): void =
  fcQCameraFocus_setFocusMode(self.h, cint(mode))

proc isFocusModeSupported*(self: gen_qcamerafocus_types.QCameraFocus, mode: cint): bool =
  fcQCameraFocus_isFocusModeSupported(self.h, cint(mode))

proc focusPointMode*(self: gen_qcamerafocus_types.QCameraFocus, ): cint =
  cint(fcQCameraFocus_focusPointMode(self.h))

proc setFocusPointMode*(self: gen_qcamerafocus_types.QCameraFocus, mode: cint): void =
  fcQCameraFocus_setFocusPointMode(self.h, cint(mode))

proc isFocusPointModeSupported*(self: gen_qcamerafocus_types.QCameraFocus, param1: cint): bool =
  fcQCameraFocus_isFocusPointModeSupported(self.h, cint(param1))

proc customFocusPoint*(self: gen_qcamerafocus_types.QCameraFocus, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQCameraFocus_customFocusPoint(self.h))

proc setCustomFocusPoint*(self: gen_qcamerafocus_types.QCameraFocus, point: gen_qpoint_types.QPointF): void =
  fcQCameraFocus_setCustomFocusPoint(self.h, point.h)

proc focusZones*(self: gen_qcamerafocus_types.QCameraFocus, ): seq[gen_qcamerafocus_types.QCameraFocusZone] =
  var v_ma = fcQCameraFocus_focusZones(self.h)
  var vx_ret = newSeq[gen_qcamerafocus_types.QCameraFocusZone](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcamerafocus_types.QCameraFocusZone(h: v_outCast[i])
  vx_ret

proc maximumOpticalZoom*(self: gen_qcamerafocus_types.QCameraFocus, ): float64 =
  fcQCameraFocus_maximumOpticalZoom(self.h)

proc maximumDigitalZoom*(self: gen_qcamerafocus_types.QCameraFocus, ): float64 =
  fcQCameraFocus_maximumDigitalZoom(self.h)

proc opticalZoom*(self: gen_qcamerafocus_types.QCameraFocus, ): float64 =
  fcQCameraFocus_opticalZoom(self.h)

proc digitalZoom*(self: gen_qcamerafocus_types.QCameraFocus, ): float64 =
  fcQCameraFocus_digitalZoom(self.h)

proc zoomTo*(self: gen_qcamerafocus_types.QCameraFocus, opticalZoom: float64, digitalZoom: float64): void =
  fcQCameraFocus_zoomTo(self.h, opticalZoom, digitalZoom)

proc opticalZoomChanged*(self: gen_qcamerafocus_types.QCameraFocus, param1: float64): void =
  fcQCameraFocus_opticalZoomChanged(self.h, param1)

type QCameraFocusopticalZoomChangedSlot* = proc(param1: float64)
proc miqt_exec_callback_cQCameraFocus_opticalZoomChanged(slot: int, param1: float64) {.exportc: "miqt_exec_callback_QCameraFocus_opticalZoomChanged".} =
  let nimfunc = cast[ptr QCameraFocusopticalZoomChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onopticalZoomChanged*(self: gen_qcamerafocus_types.QCameraFocus, slot: QCameraFocusopticalZoomChangedSlot) =
  var tmp = new QCameraFocusopticalZoomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraFocus_connect_opticalZoomChanged(self.h, cast[int](addr tmp[]))

proc digitalZoomChanged*(self: gen_qcamerafocus_types.QCameraFocus, param1: float64): void =
  fcQCameraFocus_digitalZoomChanged(self.h, param1)

type QCameraFocusdigitalZoomChangedSlot* = proc(param1: float64)
proc miqt_exec_callback_cQCameraFocus_digitalZoomChanged(slot: int, param1: float64) {.exportc: "miqt_exec_callback_QCameraFocus_digitalZoomChanged".} =
  let nimfunc = cast[ptr QCameraFocusdigitalZoomChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc ondigitalZoomChanged*(self: gen_qcamerafocus_types.QCameraFocus, slot: QCameraFocusdigitalZoomChangedSlot) =
  var tmp = new QCameraFocusdigitalZoomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraFocus_connect_digitalZoomChanged(self.h, cast[int](addr tmp[]))

proc focusZonesChanged*(self: gen_qcamerafocus_types.QCameraFocus, ): void =
  fcQCameraFocus_focusZonesChanged(self.h)

type QCameraFocusfocusZonesChangedSlot* = proc()
proc miqt_exec_callback_cQCameraFocus_focusZonesChanged(slot: int) {.exportc: "miqt_exec_callback_QCameraFocus_focusZonesChanged".} =
  let nimfunc = cast[ptr QCameraFocusfocusZonesChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onfocusZonesChanged*(self: gen_qcamerafocus_types.QCameraFocus, slot: QCameraFocusfocusZonesChangedSlot) =
  var tmp = new QCameraFocusfocusZonesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraFocus_connect_focusZonesChanged(self.h, cast[int](addr tmp[]))

proc maximumOpticalZoomChanged*(self: gen_qcamerafocus_types.QCameraFocus, param1: float64): void =
  fcQCameraFocus_maximumOpticalZoomChanged(self.h, param1)

type QCameraFocusmaximumOpticalZoomChangedSlot* = proc(param1: float64)
proc miqt_exec_callback_cQCameraFocus_maximumOpticalZoomChanged(slot: int, param1: float64) {.exportc: "miqt_exec_callback_QCameraFocus_maximumOpticalZoomChanged".} =
  let nimfunc = cast[ptr QCameraFocusmaximumOpticalZoomChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onmaximumOpticalZoomChanged*(self: gen_qcamerafocus_types.QCameraFocus, slot: QCameraFocusmaximumOpticalZoomChangedSlot) =
  var tmp = new QCameraFocusmaximumOpticalZoomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraFocus_connect_maximumOpticalZoomChanged(self.h, cast[int](addr tmp[]))

proc maximumDigitalZoomChanged*(self: gen_qcamerafocus_types.QCameraFocus, param1: float64): void =
  fcQCameraFocus_maximumDigitalZoomChanged(self.h, param1)

type QCameraFocusmaximumDigitalZoomChangedSlot* = proc(param1: float64)
proc miqt_exec_callback_cQCameraFocus_maximumDigitalZoomChanged(slot: int, param1: float64) {.exportc: "miqt_exec_callback_QCameraFocus_maximumDigitalZoomChanged".} =
  let nimfunc = cast[ptr QCameraFocusmaximumDigitalZoomChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onmaximumDigitalZoomChanged*(self: gen_qcamerafocus_types.QCameraFocus, slot: QCameraFocusmaximumDigitalZoomChangedSlot) =
  var tmp = new QCameraFocusmaximumDigitalZoomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraFocus_connect_maximumDigitalZoomChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qcamerafocus_types.QCameraFocus, s: cstring, c: cstring): string =
  let v_ms = fcQCameraFocus_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcamerafocus_types.QCameraFocus, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraFocus_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcamerafocus_types.QCameraFocus, s: cstring, c: cstring): string =
  let v_ms = fcQCameraFocus_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcamerafocus_types.QCameraFocus, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraFocus_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qcamerafocus_types.QCameraFocus): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraFocus_staticMetaObject())
