import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qscreen.cpp", cflags).}


import ./gen_qscreen_types
export gen_qscreen_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qpixmap_types,
  ./gen_qtransform_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qpixmap_types,
  gen_qtransform_types

type cQScreen*{.exportc: "QScreen", incompleteStruct.} = object

proc fcQScreen_metaObject(self: pointer, ): pointer {.importc: "QScreen_metaObject".}
proc fcQScreen_metacast(self: pointer, param1: cstring): pointer {.importc: "QScreen_metacast".}
proc fcQScreen_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScreen_metacall".}
proc fcQScreen_tr(s: cstring): struct_miqt_string {.importc: "QScreen_tr".}
proc fcQScreen_trUtf8(s: cstring): struct_miqt_string {.importc: "QScreen_trUtf8".}
proc fcQScreen_name(self: pointer, ): struct_miqt_string {.importc: "QScreen_name".}
proc fcQScreen_manufacturer(self: pointer, ): struct_miqt_string {.importc: "QScreen_manufacturer".}
proc fcQScreen_model(self: pointer, ): struct_miqt_string {.importc: "QScreen_model".}
proc fcQScreen_serialNumber(self: pointer, ): struct_miqt_string {.importc: "QScreen_serialNumber".}
proc fcQScreen_depth(self: pointer, ): cint {.importc: "QScreen_depth".}
proc fcQScreen_size(self: pointer, ): pointer {.importc: "QScreen_size".}
proc fcQScreen_geometry(self: pointer, ): pointer {.importc: "QScreen_geometry".}
proc fcQScreen_physicalSize(self: pointer, ): pointer {.importc: "QScreen_physicalSize".}
proc fcQScreen_physicalDotsPerInchX(self: pointer, ): float64 {.importc: "QScreen_physicalDotsPerInchX".}
proc fcQScreen_physicalDotsPerInchY(self: pointer, ): float64 {.importc: "QScreen_physicalDotsPerInchY".}
proc fcQScreen_physicalDotsPerInch(self: pointer, ): float64 {.importc: "QScreen_physicalDotsPerInch".}
proc fcQScreen_logicalDotsPerInchX(self: pointer, ): float64 {.importc: "QScreen_logicalDotsPerInchX".}
proc fcQScreen_logicalDotsPerInchY(self: pointer, ): float64 {.importc: "QScreen_logicalDotsPerInchY".}
proc fcQScreen_logicalDotsPerInch(self: pointer, ): float64 {.importc: "QScreen_logicalDotsPerInch".}
proc fcQScreen_devicePixelRatio(self: pointer, ): float64 {.importc: "QScreen_devicePixelRatio".}
proc fcQScreen_availableSize(self: pointer, ): pointer {.importc: "QScreen_availableSize".}
proc fcQScreen_availableGeometry(self: pointer, ): pointer {.importc: "QScreen_availableGeometry".}
proc fcQScreen_virtualSiblings(self: pointer, ): struct_miqt_array {.importc: "QScreen_virtualSiblings".}
proc fcQScreen_virtualSiblingAt(self: pointer, point: pointer): pointer {.importc: "QScreen_virtualSiblingAt".}
proc fcQScreen_virtualSize(self: pointer, ): pointer {.importc: "QScreen_virtualSize".}
proc fcQScreen_virtualGeometry(self: pointer, ): pointer {.importc: "QScreen_virtualGeometry".}
proc fcQScreen_availableVirtualSize(self: pointer, ): pointer {.importc: "QScreen_availableVirtualSize".}
proc fcQScreen_availableVirtualGeometry(self: pointer, ): pointer {.importc: "QScreen_availableVirtualGeometry".}
proc fcQScreen_primaryOrientation(self: pointer, ): cint {.importc: "QScreen_primaryOrientation".}
proc fcQScreen_orientation(self: pointer, ): cint {.importc: "QScreen_orientation".}
proc fcQScreen_nativeOrientation(self: pointer, ): cint {.importc: "QScreen_nativeOrientation".}
proc fcQScreen_orientationUpdateMask(self: pointer, ): cint {.importc: "QScreen_orientationUpdateMask".}
proc fcQScreen_setOrientationUpdateMask(self: pointer, mask: cint): void {.importc: "QScreen_setOrientationUpdateMask".}
proc fcQScreen_angleBetween(self: pointer, a: cint, b: cint): cint {.importc: "QScreen_angleBetween".}
proc fcQScreen_transformBetween(self: pointer, a: cint, b: cint, target: pointer): pointer {.importc: "QScreen_transformBetween".}
proc fcQScreen_mapBetween(self: pointer, a: cint, b: cint, rect: pointer): pointer {.importc: "QScreen_mapBetween".}
proc fcQScreen_isPortrait(self: pointer, orientation: cint): bool {.importc: "QScreen_isPortrait".}
proc fcQScreen_isLandscape(self: pointer, orientation: cint): bool {.importc: "QScreen_isLandscape".}
proc fcQScreen_grabWindow(self: pointer, window: uint): pointer {.importc: "QScreen_grabWindow".}
proc fcQScreen_refreshRate(self: pointer, ): float64 {.importc: "QScreen_refreshRate".}
proc fcQScreen_geometryChanged(self: pointer, geometry: pointer): void {.importc: "QScreen_geometryChanged".}
proc fcQScreen_connect_geometryChanged(self: pointer, slot: int, callback: proc (slot: int, geometry: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QScreen_connect_geometryChanged".}
proc fcQScreen_availableGeometryChanged(self: pointer, geometry: pointer): void {.importc: "QScreen_availableGeometryChanged".}
proc fcQScreen_connect_availableGeometryChanged(self: pointer, slot: int, callback: proc (slot: int, geometry: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QScreen_connect_availableGeometryChanged".}
proc fcQScreen_physicalSizeChanged(self: pointer, size: pointer): void {.importc: "QScreen_physicalSizeChanged".}
proc fcQScreen_connect_physicalSizeChanged(self: pointer, slot: int, callback: proc (slot: int, size: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QScreen_connect_physicalSizeChanged".}
proc fcQScreen_physicalDotsPerInchChanged(self: pointer, dpi: float64): void {.importc: "QScreen_physicalDotsPerInchChanged".}
proc fcQScreen_connect_physicalDotsPerInchChanged(self: pointer, slot: int, callback: proc (slot: int, dpi: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QScreen_connect_physicalDotsPerInchChanged".}
proc fcQScreen_logicalDotsPerInchChanged(self: pointer, dpi: float64): void {.importc: "QScreen_logicalDotsPerInchChanged".}
proc fcQScreen_connect_logicalDotsPerInchChanged(self: pointer, slot: int, callback: proc (slot: int, dpi: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QScreen_connect_logicalDotsPerInchChanged".}
proc fcQScreen_virtualGeometryChanged(self: pointer, rect: pointer): void {.importc: "QScreen_virtualGeometryChanged".}
proc fcQScreen_connect_virtualGeometryChanged(self: pointer, slot: int, callback: proc (slot: int, rect: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QScreen_connect_virtualGeometryChanged".}
proc fcQScreen_primaryOrientationChanged(self: pointer, orientation: cint): void {.importc: "QScreen_primaryOrientationChanged".}
proc fcQScreen_connect_primaryOrientationChanged(self: pointer, slot: int, callback: proc (slot: int, orientation: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QScreen_connect_primaryOrientationChanged".}
proc fcQScreen_orientationChanged(self: pointer, orientation: cint): void {.importc: "QScreen_orientationChanged".}
proc fcQScreen_connect_orientationChanged(self: pointer, slot: int, callback: proc (slot: int, orientation: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QScreen_connect_orientationChanged".}
proc fcQScreen_refreshRateChanged(self: pointer, refreshRate: float64): void {.importc: "QScreen_refreshRateChanged".}
proc fcQScreen_connect_refreshRateChanged(self: pointer, slot: int, callback: proc (slot: int, refreshRate: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QScreen_connect_refreshRateChanged".}
proc fcQScreen_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QScreen_tr2".}
proc fcQScreen_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScreen_tr3".}
proc fcQScreen_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QScreen_trUtf82".}
proc fcQScreen_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScreen_trUtf83".}
proc fcQScreen_grabWindow2(self: pointer, window: uint, x: cint): pointer {.importc: "QScreen_grabWindow2".}
proc fcQScreen_grabWindow3(self: pointer, window: uint, x: cint, y: cint): pointer {.importc: "QScreen_grabWindow3".}
proc fcQScreen_grabWindow4(self: pointer, window: uint, x: cint, y: cint, w: cint): pointer {.importc: "QScreen_grabWindow4".}
proc fcQScreen_grabWindow5(self: pointer, window: uint, x: cint, y: cint, w: cint, h: cint): pointer {.importc: "QScreen_grabWindow5".}
proc fcQScreen_protectedbase_sender(self: pointer, ): pointer {.importc: "QScreen_protectedbase_sender".}
proc fcQScreen_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QScreen_protectedbase_senderSignalIndex".}
proc fcQScreen_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QScreen_protectedbase_receivers".}
proc fcQScreen_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QScreen_protectedbase_isSignalConnected".}
proc fcQScreen_staticMetaObject(): pointer {.importc: "QScreen_staticMetaObject".}
proc fcQScreen_delete(self: pointer) {.importc: "QScreen_delete".}

proc metaObject*(self: gen_qscreen_types.QScreen, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScreen_metaObject(self.h))

proc metacast*(self: gen_qscreen_types.QScreen, param1: cstring): pointer =
  fcQScreen_metacast(self.h, param1)

proc metacall*(self: gen_qscreen_types.QScreen, param1: cint, param2: cint, param3: pointer): cint =
  fcQScreen_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscreen_types.QScreen, s: cstring): string =
  let v_ms = fcQScreen_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscreen_types.QScreen, s: cstring): string =
  let v_ms = fcQScreen_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc name*(self: gen_qscreen_types.QScreen, ): string =
  let v_ms = fcQScreen_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc manufacturer*(self: gen_qscreen_types.QScreen, ): string =
  let v_ms = fcQScreen_manufacturer(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc model*(self: gen_qscreen_types.QScreen, ): string =
  let v_ms = fcQScreen_model(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc serialNumber*(self: gen_qscreen_types.QScreen, ): string =
  let v_ms = fcQScreen_serialNumber(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc depth*(self: gen_qscreen_types.QScreen, ): cint =
  fcQScreen_depth(self.h)

proc size*(self: gen_qscreen_types.QScreen, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScreen_size(self.h))

proc geometry*(self: gen_qscreen_types.QScreen, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQScreen_geometry(self.h))

proc physicalSize*(self: gen_qscreen_types.QScreen, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQScreen_physicalSize(self.h))

proc physicalDotsPerInchX*(self: gen_qscreen_types.QScreen, ): float64 =
  fcQScreen_physicalDotsPerInchX(self.h)

proc physicalDotsPerInchY*(self: gen_qscreen_types.QScreen, ): float64 =
  fcQScreen_physicalDotsPerInchY(self.h)

proc physicalDotsPerInch*(self: gen_qscreen_types.QScreen, ): float64 =
  fcQScreen_physicalDotsPerInch(self.h)

proc logicalDotsPerInchX*(self: gen_qscreen_types.QScreen, ): float64 =
  fcQScreen_logicalDotsPerInchX(self.h)

proc logicalDotsPerInchY*(self: gen_qscreen_types.QScreen, ): float64 =
  fcQScreen_logicalDotsPerInchY(self.h)

proc logicalDotsPerInch*(self: gen_qscreen_types.QScreen, ): float64 =
  fcQScreen_logicalDotsPerInch(self.h)

proc devicePixelRatio*(self: gen_qscreen_types.QScreen, ): float64 =
  fcQScreen_devicePixelRatio(self.h)

proc availableSize*(self: gen_qscreen_types.QScreen, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScreen_availableSize(self.h))

proc availableGeometry*(self: gen_qscreen_types.QScreen, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQScreen_availableGeometry(self.h))

proc virtualSiblings*(self: gen_qscreen_types.QScreen, ): seq[gen_qscreen_types.QScreen] =
  var v_ma = fcQScreen_virtualSiblings(self.h)
  var vx_ret = newSeq[gen_qscreen_types.QScreen](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qscreen_types.QScreen(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc virtualSiblingAt*(self: gen_qscreen_types.QScreen, point: gen_qpoint_types.QPoint): gen_qscreen_types.QScreen =
  gen_qscreen_types.QScreen(h: fcQScreen_virtualSiblingAt(self.h, point.h))

proc virtualSize*(self: gen_qscreen_types.QScreen, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScreen_virtualSize(self.h))

proc virtualGeometry*(self: gen_qscreen_types.QScreen, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQScreen_virtualGeometry(self.h))

proc availableVirtualSize*(self: gen_qscreen_types.QScreen, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScreen_availableVirtualSize(self.h))

proc availableVirtualGeometry*(self: gen_qscreen_types.QScreen, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQScreen_availableVirtualGeometry(self.h))

proc primaryOrientation*(self: gen_qscreen_types.QScreen, ): cint =
  cint(fcQScreen_primaryOrientation(self.h))

proc orientation*(self: gen_qscreen_types.QScreen, ): cint =
  cint(fcQScreen_orientation(self.h))

proc nativeOrientation*(self: gen_qscreen_types.QScreen, ): cint =
  cint(fcQScreen_nativeOrientation(self.h))

proc orientationUpdateMask*(self: gen_qscreen_types.QScreen, ): cint =
  cint(fcQScreen_orientationUpdateMask(self.h))

proc setOrientationUpdateMask*(self: gen_qscreen_types.QScreen, mask: cint): void =
  fcQScreen_setOrientationUpdateMask(self.h, cint(mask))

proc angleBetween*(self: gen_qscreen_types.QScreen, a: cint, b: cint): cint =
  fcQScreen_angleBetween(self.h, cint(a), cint(b))

proc transformBetween*(self: gen_qscreen_types.QScreen, a: cint, b: cint, target: gen_qrect_types.QRect): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQScreen_transformBetween(self.h, cint(a), cint(b), target.h))

proc mapBetween*(self: gen_qscreen_types.QScreen, a: cint, b: cint, rect: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQScreen_mapBetween(self.h, cint(a), cint(b), rect.h))

proc isPortrait*(self: gen_qscreen_types.QScreen, orientation: cint): bool =
  fcQScreen_isPortrait(self.h, cint(orientation))

proc isLandscape*(self: gen_qscreen_types.QScreen, orientation: cint): bool =
  fcQScreen_isLandscape(self.h, cint(orientation))

proc grabWindow*(self: gen_qscreen_types.QScreen, window: uint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQScreen_grabWindow(self.h, window))

proc refreshRate*(self: gen_qscreen_types.QScreen, ): float64 =
  fcQScreen_refreshRate(self.h)

proc geometryChanged*(self: gen_qscreen_types.QScreen, geometry: gen_qrect_types.QRect): void =
  fcQScreen_geometryChanged(self.h, geometry.h)

type QScreengeometryChangedSlot* = proc(geometry: gen_qrect_types.QRect)
proc miqt_exec_callback_cQScreen_geometryChanged(slot: int, geometry: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QScreengeometryChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: geometry)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQScreen_geometryChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QScreengeometryChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ongeometryChanged*(self: gen_qscreen_types.QScreen, slot: QScreengeometryChangedSlot) =
  var tmp = new QScreengeometryChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQScreen_connect_geometryChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQScreen_geometryChanged, miqt_exec_callback_cQScreen_geometryChanged_release)

proc availableGeometryChanged*(self: gen_qscreen_types.QScreen, geometry: gen_qrect_types.QRect): void =
  fcQScreen_availableGeometryChanged(self.h, geometry.h)

type QScreenavailableGeometryChangedSlot* = proc(geometry: gen_qrect_types.QRect)
proc miqt_exec_callback_cQScreen_availableGeometryChanged(slot: int, geometry: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QScreenavailableGeometryChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: geometry)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQScreen_availableGeometryChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QScreenavailableGeometryChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onavailableGeometryChanged*(self: gen_qscreen_types.QScreen, slot: QScreenavailableGeometryChangedSlot) =
  var tmp = new QScreenavailableGeometryChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQScreen_connect_availableGeometryChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQScreen_availableGeometryChanged, miqt_exec_callback_cQScreen_availableGeometryChanged_release)

proc physicalSizeChanged*(self: gen_qscreen_types.QScreen, size: gen_qsize_types.QSizeF): void =
  fcQScreen_physicalSizeChanged(self.h, size.h)

type QScreenphysicalSizeChangedSlot* = proc(size: gen_qsize_types.QSizeF)
proc miqt_exec_callback_cQScreen_physicalSizeChanged(slot: int, size: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QScreenphysicalSizeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSizeF(h: size)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQScreen_physicalSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QScreenphysicalSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onphysicalSizeChanged*(self: gen_qscreen_types.QScreen, slot: QScreenphysicalSizeChangedSlot) =
  var tmp = new QScreenphysicalSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQScreen_connect_physicalSizeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQScreen_physicalSizeChanged, miqt_exec_callback_cQScreen_physicalSizeChanged_release)

proc physicalDotsPerInchChanged*(self: gen_qscreen_types.QScreen, dpi: float64): void =
  fcQScreen_physicalDotsPerInchChanged(self.h, dpi)

type QScreenphysicalDotsPerInchChangedSlot* = proc(dpi: float64)
proc miqt_exec_callback_cQScreen_physicalDotsPerInchChanged(slot: int, dpi: float64) {.cdecl.} =
  let nimfunc = cast[ptr QScreenphysicalDotsPerInchChangedSlot](cast[pointer](slot))
  let slotval1 = dpi

  nimfunc[](slotval1)

proc miqt_exec_callback_cQScreen_physicalDotsPerInchChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QScreenphysicalDotsPerInchChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onphysicalDotsPerInchChanged*(self: gen_qscreen_types.QScreen, slot: QScreenphysicalDotsPerInchChangedSlot) =
  var tmp = new QScreenphysicalDotsPerInchChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQScreen_connect_physicalDotsPerInchChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQScreen_physicalDotsPerInchChanged, miqt_exec_callback_cQScreen_physicalDotsPerInchChanged_release)

proc logicalDotsPerInchChanged*(self: gen_qscreen_types.QScreen, dpi: float64): void =
  fcQScreen_logicalDotsPerInchChanged(self.h, dpi)

type QScreenlogicalDotsPerInchChangedSlot* = proc(dpi: float64)
proc miqt_exec_callback_cQScreen_logicalDotsPerInchChanged(slot: int, dpi: float64) {.cdecl.} =
  let nimfunc = cast[ptr QScreenlogicalDotsPerInchChangedSlot](cast[pointer](slot))
  let slotval1 = dpi

  nimfunc[](slotval1)

proc miqt_exec_callback_cQScreen_logicalDotsPerInchChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QScreenlogicalDotsPerInchChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlogicalDotsPerInchChanged*(self: gen_qscreen_types.QScreen, slot: QScreenlogicalDotsPerInchChangedSlot) =
  var tmp = new QScreenlogicalDotsPerInchChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQScreen_connect_logicalDotsPerInchChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQScreen_logicalDotsPerInchChanged, miqt_exec_callback_cQScreen_logicalDotsPerInchChanged_release)

proc virtualGeometryChanged*(self: gen_qscreen_types.QScreen, rect: gen_qrect_types.QRect): void =
  fcQScreen_virtualGeometryChanged(self.h, rect.h)

type QScreenvirtualGeometryChangedSlot* = proc(rect: gen_qrect_types.QRect)
proc miqt_exec_callback_cQScreen_virtualGeometryChanged(slot: int, rect: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QScreenvirtualGeometryChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rect)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQScreen_virtualGeometryChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QScreenvirtualGeometryChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvirtualGeometryChanged*(self: gen_qscreen_types.QScreen, slot: QScreenvirtualGeometryChangedSlot) =
  var tmp = new QScreenvirtualGeometryChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQScreen_connect_virtualGeometryChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQScreen_virtualGeometryChanged, miqt_exec_callback_cQScreen_virtualGeometryChanged_release)

proc primaryOrientationChanged*(self: gen_qscreen_types.QScreen, orientation: cint): void =
  fcQScreen_primaryOrientationChanged(self.h, cint(orientation))

type QScreenprimaryOrientationChangedSlot* = proc(orientation: cint)
proc miqt_exec_callback_cQScreen_primaryOrientationChanged(slot: int, orientation: cint) {.cdecl.} =
  let nimfunc = cast[ptr QScreenprimaryOrientationChangedSlot](cast[pointer](slot))
  let slotval1 = cint(orientation)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQScreen_primaryOrientationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QScreenprimaryOrientationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onprimaryOrientationChanged*(self: gen_qscreen_types.QScreen, slot: QScreenprimaryOrientationChangedSlot) =
  var tmp = new QScreenprimaryOrientationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQScreen_connect_primaryOrientationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQScreen_primaryOrientationChanged, miqt_exec_callback_cQScreen_primaryOrientationChanged_release)

proc orientationChanged*(self: gen_qscreen_types.QScreen, orientation: cint): void =
  fcQScreen_orientationChanged(self.h, cint(orientation))

type QScreenorientationChangedSlot* = proc(orientation: cint)
proc miqt_exec_callback_cQScreen_orientationChanged(slot: int, orientation: cint) {.cdecl.} =
  let nimfunc = cast[ptr QScreenorientationChangedSlot](cast[pointer](slot))
  let slotval1 = cint(orientation)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQScreen_orientationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QScreenorientationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onorientationChanged*(self: gen_qscreen_types.QScreen, slot: QScreenorientationChangedSlot) =
  var tmp = new QScreenorientationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQScreen_connect_orientationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQScreen_orientationChanged, miqt_exec_callback_cQScreen_orientationChanged_release)

proc refreshRateChanged*(self: gen_qscreen_types.QScreen, refreshRate: float64): void =
  fcQScreen_refreshRateChanged(self.h, refreshRate)

type QScreenrefreshRateChangedSlot* = proc(refreshRate: float64)
proc miqt_exec_callback_cQScreen_refreshRateChanged(slot: int, refreshRate: float64) {.cdecl.} =
  let nimfunc = cast[ptr QScreenrefreshRateChangedSlot](cast[pointer](slot))
  let slotval1 = refreshRate

  nimfunc[](slotval1)

proc miqt_exec_callback_cQScreen_refreshRateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QScreenrefreshRateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrefreshRateChanged*(self: gen_qscreen_types.QScreen, slot: QScreenrefreshRateChangedSlot) =
  var tmp = new QScreenrefreshRateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQScreen_connect_refreshRateChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQScreen_refreshRateChanged, miqt_exec_callback_cQScreen_refreshRateChanged_release)

proc tr*(_: type gen_qscreen_types.QScreen, s: cstring, c: cstring): string =
  let v_ms = fcQScreen_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscreen_types.QScreen, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQScreen_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscreen_types.QScreen, s: cstring, c: cstring): string =
  let v_ms = fcQScreen_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscreen_types.QScreen, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQScreen_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc grabWindow*(self: gen_qscreen_types.QScreen, window: uint, x: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQScreen_grabWindow2(self.h, window, x))

proc grabWindow*(self: gen_qscreen_types.QScreen, window: uint, x: cint, y: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQScreen_grabWindow3(self.h, window, x, y))

proc grabWindow*(self: gen_qscreen_types.QScreen, window: uint, x: cint, y: cint, w: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQScreen_grabWindow4(self.h, window, x, y, w))

proc grabWindow*(self: gen_qscreen_types.QScreen, window: uint, x: cint, y: cint, w: cint, h: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQScreen_grabWindow5(self.h, window, x, y, w, h))

proc sender*(self: gen_qscreen_types.QScreen, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQScreen_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscreen_types.QScreen, ): cint =
  fcQScreen_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscreen_types.QScreen, signal: cstring): cint =
  fcQScreen_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscreen_types.QScreen, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQScreen_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qscreen_types.QScreen): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScreen_staticMetaObject())
proc delete*(self: gen_qscreen_types.QScreen) =
  fcQScreen_delete(self.h)
