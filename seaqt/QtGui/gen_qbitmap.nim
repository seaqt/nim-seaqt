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

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qbitmap.cpp", cflags).}


import ./gen_qbitmap_types
export gen_qbitmap_types

import
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qimage_types,
  ./gen_qmatrix_types,
  ./gen_qpaintdevice_types,
  ./gen_qpaintengine_types,
  ./gen_qpainter_types,
  ./gen_qpixmap,
  ./gen_qtransform_types
export
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qimage_types,
  gen_qmatrix_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpixmap,
  gen_qtransform_types

type cQBitmap*{.exportc: "QBitmap", incompleteStruct.} = object

proc fcQBitmap_operatorAssign(self: pointer, other: pointer): void {.importc: "QBitmap_operatorAssign".}
proc fcQBitmap_operatorAssignWithQPixmap(self: pointer, param1: pointer): void {.importc: "QBitmap_operatorAssignWithQPixmap".}
proc fcQBitmap_swap(self: pointer, other: pointer): void {.importc: "QBitmap_swap".}
proc fcQBitmap_ToQVariant(self: pointer, ): pointer {.importc: "QBitmap_ToQVariant".}
proc fcQBitmap_clear(self: pointer, ): void {.importc: "QBitmap_clear".}
proc fcQBitmap_fromImage(image: pointer): pointer {.importc: "QBitmap_fromImage".}
proc fcQBitmap_fromData(size: pointer, bits: ptr uint8): pointer {.importc: "QBitmap_fromData".}
proc fcQBitmap_transformed(self: pointer, param1: pointer): pointer {.importc: "QBitmap_transformed".}
proc fcQBitmap_transformedWithMatrix(self: pointer, matrix: pointer): pointer {.importc: "QBitmap_transformedWithMatrix".}
proc fcQBitmap_fromImage2(image: pointer, flags: cint): pointer {.importc: "QBitmap_fromImage2".}
proc fcQBitmap_fromData3(size: pointer, bits: ptr uint8, monoFormat: cint): pointer {.importc: "QBitmap_fromData3".}
type cQBitmapVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQBitmapVTable, self: ptr cQBitmap) {.cdecl, raises:[], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQBitmap_virtualbase_devType(self: pointer, ): cint {.importc: "QBitmap_virtualbase_devType".}
proc fcQBitmap_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QBitmap_virtualbase_paintEngine".}
proc fcQBitmap_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QBitmap_virtualbase_metric".}
proc fcQBitmap_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QBitmap_virtualbase_initPainter".}
proc fcQBitmap_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QBitmap_virtualbase_redirected".}
proc fcQBitmap_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QBitmap_virtualbase_sharedPainter".}
proc fcQBitmap_new(vtbl: pointer, ): ptr cQBitmap {.importc: "QBitmap_new".}
proc fcQBitmap_new2(vtbl: pointer, param1: pointer): ptr cQBitmap {.importc: "QBitmap_new2".}
proc fcQBitmap_new3(vtbl: pointer, w: cint, h: cint): ptr cQBitmap {.importc: "QBitmap_new3".}
proc fcQBitmap_new4(vtbl: pointer, param1: pointer): ptr cQBitmap {.importc: "QBitmap_new4".}
proc fcQBitmap_new5(vtbl: pointer, fileName: struct_miqt_string): ptr cQBitmap {.importc: "QBitmap_new5".}
proc fcQBitmap_new6(vtbl: pointer, other: pointer): ptr cQBitmap {.importc: "QBitmap_new6".}
proc fcQBitmap_new7(vtbl: pointer, fileName: struct_miqt_string, format: cstring): ptr cQBitmap {.importc: "QBitmap_new7".}

proc operatorAssign*(self: gen_qbitmap_types.QBitmap, other: gen_qbitmap_types.QBitmap): void =
  fcQBitmap_operatorAssign(self.h, other.h)

proc operatorAssign*(self: gen_qbitmap_types.QBitmap, param1: gen_qpixmap_types.QPixmap): void =
  fcQBitmap_operatorAssignWithQPixmap(self.h, param1.h)

proc swap*(self: gen_qbitmap_types.QBitmap, other: gen_qbitmap_types.QBitmap): void =
  fcQBitmap_swap(self.h, other.h)

proc ToQVariant*(self: gen_qbitmap_types.QBitmap, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQBitmap_ToQVariant(self.h), owned: true)

proc clear*(self: gen_qbitmap_types.QBitmap, ): void =
  fcQBitmap_clear(self.h)

proc fromImage*(_: type gen_qbitmap_types.QBitmap, image: gen_qimage_types.QImage): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQBitmap_fromImage(image.h), owned: true)

proc fromData*(_: type gen_qbitmap_types.QBitmap, size: gen_qsize_types.QSize, bits: ptr uint8): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQBitmap_fromData(size.h, bits), owned: true)

proc transformed*(self: gen_qbitmap_types.QBitmap, param1: gen_qmatrix_types.QMatrix): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQBitmap_transformed(self.h, param1.h), owned: true)

proc transformed*(self: gen_qbitmap_types.QBitmap, matrix: gen_qtransform_types.QTransform): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQBitmap_transformedWithMatrix(self.h, matrix.h), owned: true)

proc fromImage*(_: type gen_qbitmap_types.QBitmap, image: gen_qimage_types.QImage, flags: cint): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQBitmap_fromImage2(image.h, cint(flags)), owned: true)

proc fromData*(_: type gen_qbitmap_types.QBitmap, size: gen_qsize_types.QSize, bits: ptr uint8, monoFormat: cint): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQBitmap_fromData3(size.h, bits, cint(monoFormat)), owned: true)

type QBitmapdevTypeProc* = proc(self: QBitmap): cint {.raises: [], gcsafe.}
type QBitmappaintEngineProc* = proc(self: QBitmap): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QBitmapmetricProc* = proc(self: QBitmap, param1: cint): cint {.raises: [], gcsafe.}
type QBitmapinitPainterProc* = proc(self: QBitmap, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QBitmapredirectedProc* = proc(self: QBitmap, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QBitmapsharedPainterProc* = proc(self: QBitmap): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QBitmapVTable* {.inheritable, pure.} = object
  vtbl: cQBitmapVTable
  devType*: QBitmapdevTypeProc
  paintEngine*: QBitmappaintEngineProc
  metric*: QBitmapmetricProc
  initPainter*: QBitmapinitPainterProc
  redirected*: QBitmapredirectedProc
  sharedPainter*: QBitmapsharedPainterProc
proc QBitmapdevType*(self: gen_qbitmap_types.QBitmap, ): cint =
  fcQBitmap_virtualbase_devType(self.h)

proc miqt_exec_callback_cQBitmap_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](vtbl)
  let self = QBitmap(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QBitmappaintEngine*(self: gen_qbitmap_types.QBitmap, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQBitmap_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQBitmap_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](vtbl)
  let self = QBitmap(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QBitmapmetric*(self: gen_qbitmap_types.QBitmap, param1: cint): cint =
  fcQBitmap_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQBitmap_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](vtbl)
  let self = QBitmap(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QBitmapinitPainter*(self: gen_qbitmap_types.QBitmap, painter: gen_qpainter_types.QPainter): void =
  fcQBitmap_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQBitmap_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](vtbl)
  let self = QBitmap(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QBitmapredirected*(self: gen_qbitmap_types.QBitmap, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQBitmap_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQBitmap_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](vtbl)
  let self = QBitmap(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QBitmapsharedPainter*(self: gen_qbitmap_types.QBitmap, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQBitmap_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQBitmap_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](vtbl)
  let self = QBitmap(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQBitmap* {.inheritable.} = ref object of QBitmap
  vtbl*: cQBitmapVTable
method devType*(self: VirtualQBitmap, ): cint {.base.} =
  QBitmapdevType(self[])
proc miqt_exec_method_cQBitmap_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQBitmap](cast[uint](vtbl) - uint(offsetOf(VirtualQBitmap, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method paintEngine*(self: VirtualQBitmap, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QBitmappaintEngine(self[])
proc miqt_exec_method_cQBitmap_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQBitmap](cast[uint](vtbl) - uint(offsetOf(VirtualQBitmap, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metric*(self: VirtualQBitmap, param1: cint): cint {.base.} =
  QBitmapmetric(self[], param1)
proc miqt_exec_method_cQBitmap_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQBitmap](cast[uint](vtbl) - uint(offsetOf(VirtualQBitmap, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQBitmap, painter: gen_qpainter_types.QPainter): void {.base.} =
  QBitmapinitPainter(self[], painter)
proc miqt_exec_method_cQBitmap_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQBitmap](cast[uint](vtbl) - uint(offsetOf(VirtualQBitmap, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQBitmap, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QBitmapredirected(self[], offset)
proc miqt_exec_method_cQBitmap_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQBitmap](cast[uint](vtbl) - uint(offsetOf(VirtualQBitmap, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQBitmap, ): gen_qpainter_types.QPainter {.base.} =
  QBitmapsharedPainter(self[])
proc miqt_exec_method_cQBitmap_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQBitmap](cast[uint](vtbl) - uint(offsetOf(VirtualQBitmap, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc create*(T: type gen_qbitmap_types.QBitmap,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQBitmap_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQBitmap_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQBitmap_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQBitmap_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQBitmap_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQBitmap_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qbitmap_types.QBitmap,
    param1: gen_qpixmap_types.QPixmap,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQBitmap_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQBitmap_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQBitmap_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQBitmap_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQBitmap_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQBitmap_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new2(addr(vtbl[].vtbl), param1.h), owned: true)

proc create*(T: type gen_qbitmap_types.QBitmap,
    w: cint, h: cint,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQBitmap_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQBitmap_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQBitmap_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQBitmap_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQBitmap_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQBitmap_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new3(addr(vtbl[].vtbl), w, h), owned: true)

proc create*(T: type gen_qbitmap_types.QBitmap,
    param1: gen_qsize_types.QSize,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQBitmap_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQBitmap_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQBitmap_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQBitmap_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQBitmap_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQBitmap_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new4(addr(vtbl[].vtbl), param1.h), owned: true)

proc create*(T: type gen_qbitmap_types.QBitmap,
    fileName: string,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQBitmap_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQBitmap_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQBitmap_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQBitmap_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQBitmap_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQBitmap_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new5(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName)))), owned: true)

proc create*(T: type gen_qbitmap_types.QBitmap,
    other: gen_qbitmap_types.QBitmap,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQBitmap_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQBitmap_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQBitmap_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQBitmap_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQBitmap_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQBitmap_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new6(addr(vtbl[].vtbl), other.h), owned: true)

proc create*(T: type gen_qbitmap_types.QBitmap,
    fileName: string, format: cstring,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQBitmap_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQBitmap_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQBitmap_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQBitmap_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQBitmap_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQBitmap_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new7(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format), owned: true)

proc create*(T: type gen_qbitmap_types.QBitmap,
    vtbl: VirtualQBitmap) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQBitmap()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQBitmap, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.devType = miqt_exec_method_cQBitmap_devType
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQBitmap_paintEngine
  vtbl[].vtbl.metric = miqt_exec_method_cQBitmap_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQBitmap_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQBitmap_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQBitmap_sharedPainter
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQBitmap_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qbitmap_types.QBitmap,
    param1: gen_qpixmap_types.QPixmap,
    vtbl: VirtualQBitmap) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQBitmap()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQBitmap, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.devType = miqt_exec_method_cQBitmap_devType
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQBitmap_paintEngine
  vtbl[].vtbl.metric = miqt_exec_method_cQBitmap_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQBitmap_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQBitmap_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQBitmap_sharedPainter
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQBitmap_new2(addr(vtbl[].vtbl), param1.h)
  vtbl[].owned = true

proc create*(T: type gen_qbitmap_types.QBitmap,
    w: cint, h: cint,
    vtbl: VirtualQBitmap) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQBitmap()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQBitmap, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.devType = miqt_exec_method_cQBitmap_devType
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQBitmap_paintEngine
  vtbl[].vtbl.metric = miqt_exec_method_cQBitmap_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQBitmap_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQBitmap_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQBitmap_sharedPainter
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQBitmap_new3(addr(vtbl[].vtbl), w, h)
  vtbl[].owned = true

proc create*(T: type gen_qbitmap_types.QBitmap,
    param1: gen_qsize_types.QSize,
    vtbl: VirtualQBitmap) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQBitmap()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQBitmap, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.devType = miqt_exec_method_cQBitmap_devType
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQBitmap_paintEngine
  vtbl[].vtbl.metric = miqt_exec_method_cQBitmap_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQBitmap_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQBitmap_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQBitmap_sharedPainter
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQBitmap_new4(addr(vtbl[].vtbl), param1.h)
  vtbl[].owned = true

proc create*(T: type gen_qbitmap_types.QBitmap,
    fileName: string,
    vtbl: VirtualQBitmap) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQBitmap()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQBitmap, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.devType = miqt_exec_method_cQBitmap_devType
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQBitmap_paintEngine
  vtbl[].vtbl.metric = miqt_exec_method_cQBitmap_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQBitmap_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQBitmap_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQBitmap_sharedPainter
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQBitmap_new5(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  vtbl[].owned = true

proc create*(T: type gen_qbitmap_types.QBitmap,
    other: gen_qbitmap_types.QBitmap,
    vtbl: VirtualQBitmap) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQBitmap()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQBitmap, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.devType = miqt_exec_method_cQBitmap_devType
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQBitmap_paintEngine
  vtbl[].vtbl.metric = miqt_exec_method_cQBitmap_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQBitmap_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQBitmap_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQBitmap_sharedPainter
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQBitmap_new6(addr(vtbl[].vtbl), other.h)
  vtbl[].owned = true

proc create*(T: type gen_qbitmap_types.QBitmap,
    fileName: string, format: cstring,
    vtbl: VirtualQBitmap) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQBitmap()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQBitmap, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.devType = miqt_exec_method_cQBitmap_devType
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQBitmap_paintEngine
  vtbl[].vtbl.metric = miqt_exec_method_cQBitmap_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQBitmap_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQBitmap_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQBitmap_sharedPainter
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQBitmap_new7(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format)
  vtbl[].owned = true

