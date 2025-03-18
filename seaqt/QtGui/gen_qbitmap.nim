import ./qtgui_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qbitmap.cpp", QtGuiCFlags).}


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
proc fcQBitmap_ToQVariant(self: pointer): pointer {.importc: "QBitmap_ToQVariant".}
proc fcQBitmap_clear(self: pointer): void {.importc: "QBitmap_clear".}
proc fcQBitmap_fromImage(image: pointer): pointer {.importc: "QBitmap_fromImage".}
proc fcQBitmap_fromData(size: pointer, bits: ptr uint8): pointer {.importc: "QBitmap_fromData".}
proc fcQBitmap_transformed(self: pointer, param1: pointer): pointer {.importc: "QBitmap_transformed".}
proc fcQBitmap_transformedWithMatrix(self: pointer, matrix: pointer): pointer {.importc: "QBitmap_transformedWithMatrix".}
proc fcQBitmap_fromImage2(image: pointer, flags: cint): pointer {.importc: "QBitmap_fromImage2".}
proc fcQBitmap_fromData3(size: pointer, bits: ptr uint8, monoFormat: cint): pointer {.importc: "QBitmap_fromData3".}
proc fcQBitmap_vtbl(self: pointer): pointer {.importc: "QBitmap_vtbl".}
proc fcQBitmap_vdata(self: pointer): pointer {.importc: "QBitmap_vdata".}

type cQBitmapVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQBitmap_virtualbase_devType(self: pointer): cint {.importc: "QBitmap_virtualbase_devType".}
proc fcQBitmap_virtualbase_paintEngine(self: pointer): pointer {.importc: "QBitmap_virtualbase_paintEngine".}
proc fcQBitmap_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QBitmap_virtualbase_metric".}
proc fcQBitmap_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QBitmap_virtualbase_initPainter".}
proc fcQBitmap_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QBitmap_virtualbase_redirected".}
proc fcQBitmap_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QBitmap_virtualbase_sharedPainter".}
proc fcQBitmap_new(vtbl, vdata: pointer): ptr cQBitmap {.importc: "QBitmap_new".}
proc fcQBitmap_new2(vtbl, vdata: pointer, param1: pointer): ptr cQBitmap {.importc: "QBitmap_new2".}
proc fcQBitmap_new3(vtbl, vdata: pointer, w: cint, h: cint): ptr cQBitmap {.importc: "QBitmap_new3".}
proc fcQBitmap_new4(vtbl, vdata: pointer, param1: pointer): ptr cQBitmap {.importc: "QBitmap_new4".}
proc fcQBitmap_new5(vtbl, vdata: pointer, fileName: struct_miqt_string): ptr cQBitmap {.importc: "QBitmap_new5".}
proc fcQBitmap_new6(vtbl, vdata: pointer, other: pointer): ptr cQBitmap {.importc: "QBitmap_new6".}
proc fcQBitmap_new7(vtbl, vdata: pointer, fileName: struct_miqt_string, format: cstring): ptr cQBitmap {.importc: "QBitmap_new7".}

proc operatorAssign*(self: gen_qbitmap_types.QBitmap, other: gen_qbitmap_types.QBitmap): void =
  fcQBitmap_operatorAssign(self.h, other.h)

proc operatorAssign*(self: gen_qbitmap_types.QBitmap, param1: gen_qpixmap_types.QPixmap): void =
  fcQBitmap_operatorAssignWithQPixmap(self.h, param1.h)

proc swap*(self: gen_qbitmap_types.QBitmap, other: gen_qbitmap_types.QBitmap): void =
  fcQBitmap_swap(self.h, other.h)

proc ToQVariant*(self: gen_qbitmap_types.QBitmap): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQBitmap_ToQVariant(self.h), owned: true)

proc clear*(self: gen_qbitmap_types.QBitmap): void =
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

proc QBitmapdevType*(self: gen_qbitmap_types.QBitmap): cint =
  fcQBitmap_virtualbase_devType(self.h)

proc QBitmappaintEngine*(self: gen_qbitmap_types.QBitmap): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQBitmap_virtualbase_paintEngine(self.h), owned: false)

proc QBitmapmetric*(self: gen_qbitmap_types.QBitmap, param1: cint): cint =
  fcQBitmap_virtualbase_metric(self.h, cint(param1))

proc QBitmapinitPainter*(self: gen_qbitmap_types.QBitmap, painter: gen_qpainter_types.QPainter): void =
  fcQBitmap_virtualbase_initPainter(self.h, painter.h)

proc QBitmapredirected*(self: gen_qbitmap_types.QBitmap, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQBitmap_virtualbase_redirected(self.h, offset.h), owned: false)

proc QBitmapsharedPainter*(self: gen_qbitmap_types.QBitmap): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQBitmap_virtualbase_sharedPainter(self.h), owned: false)


proc fcQBitmap_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](fcQBitmap_vdata(self))
  let self = QBitmap(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQBitmap_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](fcQBitmap_vdata(self))
  let self = QBitmap(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBitmap_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](fcQBitmap_vdata(self))
  let self = QBitmap(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQBitmap_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](fcQBitmap_vdata(self))
  let self = QBitmap(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQBitmap_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](fcQBitmap_vdata(self))
  let self = QBitmap(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBitmap_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](fcQBitmap_vdata(self))
  let self = QBitmap(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQBitmap* {.inheritable.} = ref object of QBitmap
  vtbl*: cQBitmapVTable

method devType*(self: VirtualQBitmap): cint {.base.} =
  QBitmapdevType(self[])
method paintEngine*(self: VirtualQBitmap): gen_qpaintengine_types.QPaintEngine {.base.} =
  QBitmappaintEngine(self[])
method metric*(self: VirtualQBitmap, param1: cint): cint {.base.} =
  QBitmapmetric(self[], param1)
method initPainter*(self: VirtualQBitmap, painter: gen_qpainter_types.QPainter): void {.base.} =
  QBitmapinitPainter(self[], painter)
method redirected*(self: VirtualQBitmap, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QBitmapredirected(self[], offset)
method sharedPainter*(self: VirtualQBitmap): gen_qpainter_types.QPainter {.base.} =
  QBitmapsharedPainter(self[])

proc fcQBitmap_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQBitmap](fcQBitmap_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQBitmap_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQBitmap](fcQBitmap_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBitmap_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQBitmap](fcQBitmap_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQBitmap_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQBitmap](fcQBitmap_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQBitmap_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQBitmap](fcQBitmap_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQBitmap_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQBitmap](fcQBitmap_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h


proc create*(T: type gen_qbitmap_types.QBitmap,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](fcQBitmap_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQBitmap_vtable_callback_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQBitmap_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQBitmap_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQBitmap_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQBitmap_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQBitmap_vtable_callback_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qbitmap_types.QBitmap,
    param1: gen_qpixmap_types.QPixmap,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](fcQBitmap_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQBitmap_vtable_callback_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQBitmap_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQBitmap_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQBitmap_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQBitmap_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQBitmap_vtable_callback_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new2(addr(vtbl[].vtbl), addr(vtbl[]), param1.h), owned: true)

proc create*(T: type gen_qbitmap_types.QBitmap,
    w: cint, h: cint,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](fcQBitmap_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQBitmap_vtable_callback_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQBitmap_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQBitmap_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQBitmap_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQBitmap_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQBitmap_vtable_callback_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new3(addr(vtbl[].vtbl), addr(vtbl[]), w, h), owned: true)

proc create*(T: type gen_qbitmap_types.QBitmap,
    param1: gen_qsize_types.QSize,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](fcQBitmap_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQBitmap_vtable_callback_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQBitmap_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQBitmap_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQBitmap_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQBitmap_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQBitmap_vtable_callback_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new4(addr(vtbl[].vtbl), addr(vtbl[]), param1.h), owned: true)

proc create*(T: type gen_qbitmap_types.QBitmap,
    fileName: openArray[char],
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](fcQBitmap_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQBitmap_vtable_callback_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQBitmap_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQBitmap_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQBitmap_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQBitmap_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQBitmap_vtable_callback_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new5(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName)))), owned: true)

proc create*(T: type gen_qbitmap_types.QBitmap,
    other: gen_qbitmap_types.QBitmap,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](fcQBitmap_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQBitmap_vtable_callback_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQBitmap_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQBitmap_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQBitmap_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQBitmap_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQBitmap_vtable_callback_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new6(addr(vtbl[].vtbl), addr(vtbl[]), other.h), owned: true)

proc create*(T: type gen_qbitmap_types.QBitmap,
    fileName: openArray[char], format: cstring,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](fcQBitmap_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQBitmap_vtable_callback_devType
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQBitmap_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQBitmap_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQBitmap_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQBitmap_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQBitmap_vtable_callback_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new7(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), format), owned: true)

const cQBitmap_mvtbl = cQBitmapVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQBitmap()[])](self.fcQBitmap_vdata())
    inst[].h = nil
    inst[].owned = false,

  devType: fcQBitmap_method_callback_devType,
  paintEngine: fcQBitmap_method_callback_paintEngine,
  metric: fcQBitmap_method_callback_metric,
  initPainter: fcQBitmap_method_callback_initPainter,
  redirected: fcQBitmap_method_callback_redirected,
  sharedPainter: fcQBitmap_method_callback_sharedPainter,
)
proc create*(T: type gen_qbitmap_types.QBitmap,
    inst: VirtualQBitmap) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQBitmap_new(addr(cQBitmap_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qbitmap_types.QBitmap,
    param1: gen_qpixmap_types.QPixmap,
    inst: VirtualQBitmap) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQBitmap_new2(addr(cQBitmap_mvtbl), addr(inst[]), param1.h)
  inst[].owned = true

proc create*(T: type gen_qbitmap_types.QBitmap,
    w: cint, h: cint,
    inst: VirtualQBitmap) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQBitmap_new3(addr(cQBitmap_mvtbl), addr(inst[]), w, h)
  inst[].owned = true

proc create*(T: type gen_qbitmap_types.QBitmap,
    param1: gen_qsize_types.QSize,
    inst: VirtualQBitmap) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQBitmap_new4(addr(cQBitmap_mvtbl), addr(inst[]), param1.h)
  inst[].owned = true

proc create*(T: type gen_qbitmap_types.QBitmap,
    fileName: openArray[char],
    inst: VirtualQBitmap) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQBitmap_new5(addr(cQBitmap_mvtbl), addr(inst[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))
  inst[].owned = true

proc create*(T: type gen_qbitmap_types.QBitmap,
    other: gen_qbitmap_types.QBitmap,
    inst: VirtualQBitmap) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQBitmap_new6(addr(cQBitmap_mvtbl), addr(inst[]), other.h)
  inst[].owned = true

proc create*(T: type gen_qbitmap_types.QBitmap,
    fileName: openArray[char], format: cstring,
    inst: VirtualQBitmap) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQBitmap_new7(addr(cQBitmap_mvtbl), addr(inst[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), format)
  inst[].owned = true

