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


{.compile("gen_qpicture.cpp", QtGuiCFlags).}


import ./gen_qpicture_types
export gen_qpicture_types

import
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ./gen_qpaintdevice,
  ./gen_qpaintengine_types,
  ./gen_qpainter_types
export
  gen_qiodevice_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qpaintdevice,
  gen_qpaintengine_types,
  gen_qpainter_types

type cQPicture*{.exportc: "QPicture", incompleteStruct.} = object

proc fcQPicture_isNull(self: pointer): bool {.importc: "QPicture_isNull".}
proc fcQPicture_devType(self: pointer): cint {.importc: "QPicture_devType".}
proc fcQPicture_size(self: pointer): cuint {.importc: "QPicture_size".}
proc fcQPicture_data(self: pointer): cstring {.importc: "QPicture_data".}
proc fcQPicture_setData(self: pointer, data: cstring, size: cuint): void {.importc: "QPicture_setData".}
proc fcQPicture_play(self: pointer, p: pointer): bool {.importc: "QPicture_play".}
proc fcQPicture_load(self: pointer, dev: pointer): bool {.importc: "QPicture_load".}
proc fcQPicture_loadWithFileName(self: pointer, fileName: struct_miqt_string): bool {.importc: "QPicture_loadWithFileName".}
proc fcQPicture_save(self: pointer, dev: pointer): bool {.importc: "QPicture_save".}
proc fcQPicture_saveWithFileName(self: pointer, fileName: struct_miqt_string): bool {.importc: "QPicture_saveWithFileName".}
proc fcQPicture_boundingRect(self: pointer): pointer {.importc: "QPicture_boundingRect".}
proc fcQPicture_setBoundingRect(self: pointer, r: pointer): void {.importc: "QPicture_setBoundingRect".}
proc fcQPicture_operatorAssign(self: pointer, p: pointer): void {.importc: "QPicture_operatorAssign".}
proc fcQPicture_swap(self: pointer, other: pointer): void {.importc: "QPicture_swap".}
proc fcQPicture_detach(self: pointer): void {.importc: "QPicture_detach".}
proc fcQPicture_isDetached(self: pointer): bool {.importc: "QPicture_isDetached".}
proc fcQPicture_paintEngine(self: pointer): pointer {.importc: "QPicture_paintEngine".}
proc fcQPicture_vtbl(self: pointer): pointer {.importc: "QPicture_vtbl".}
proc fcQPicture_vdata(self: pointer): pointer {.importc: "QPicture_vdata".}

type cQPictureVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, data: cstring, size: cuint): void {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, m: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQPicture_virtualbase_devType(self: pointer): cint {.importc: "QPicture_virtualbase_devType".}
proc fcQPicture_virtualbase_setData(self: pointer, data: cstring, size: cuint): void {.importc: "QPicture_virtualbase_setData".}
proc fcQPicture_virtualbase_paintEngine(self: pointer): pointer {.importc: "QPicture_virtualbase_paintEngine".}
proc fcQPicture_virtualbase_metric(self: pointer, m: cint): cint {.importc: "QPicture_virtualbase_metric".}
proc fcQPicture_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QPicture_virtualbase_initPainter".}
proc fcQPicture_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QPicture_virtualbase_redirected".}
proc fcQPicture_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QPicture_virtualbase_sharedPainter".}
proc fcQPicture_new(vtbl, vdata: pointer): ptr cQPicture {.importc: "QPicture_new".}
proc fcQPicture_new2(vtbl, vdata: pointer, param1: pointer): ptr cQPicture {.importc: "QPicture_new2".}
proc fcQPicture_new3(vtbl, vdata: pointer, formatVersion: cint): ptr cQPicture {.importc: "QPicture_new3".}

proc isNull*(self: gen_qpicture_types.QPicture): bool =
  fcQPicture_isNull(self.h)

proc devType*(self: gen_qpicture_types.QPicture): cint =
  fcQPicture_devType(self.h)

proc size*(self: gen_qpicture_types.QPicture): cuint =
  fcQPicture_size(self.h)

proc data*(self: gen_qpicture_types.QPicture): cstring =
  (fcQPicture_data(self.h))

proc setData*(self: gen_qpicture_types.QPicture, data: cstring, size: cuint): void =
  fcQPicture_setData(self.h, data, size)

proc play*(self: gen_qpicture_types.QPicture, p: gen_qpainter_types.QPainter): bool =
  fcQPicture_play(self.h, p.h)

proc load*(self: gen_qpicture_types.QPicture, dev: gen_qiodevice_types.QIODevice): bool =
  fcQPicture_load(self.h, dev.h)

proc load*(self: gen_qpicture_types.QPicture, fileName: openArray[char]): bool =
  fcQPicture_loadWithFileName(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc save*(self: gen_qpicture_types.QPicture, dev: gen_qiodevice_types.QIODevice): bool =
  fcQPicture_save(self.h, dev.h)

proc save*(self: gen_qpicture_types.QPicture, fileName: openArray[char]): bool =
  fcQPicture_saveWithFileName(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc boundingRect*(self: gen_qpicture_types.QPicture): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPicture_boundingRect(self.h), owned: true)

proc setBoundingRect*(self: gen_qpicture_types.QPicture, r: gen_qrect_types.QRect): void =
  fcQPicture_setBoundingRect(self.h, r.h)

proc operatorAssign*(self: gen_qpicture_types.QPicture, p: gen_qpicture_types.QPicture): void =
  fcQPicture_operatorAssign(self.h, p.h)

proc swap*(self: gen_qpicture_types.QPicture, other: gen_qpicture_types.QPicture): void =
  fcQPicture_swap(self.h, other.h)

proc detach*(self: gen_qpicture_types.QPicture): void =
  fcQPicture_detach(self.h)

proc isDetached*(self: gen_qpicture_types.QPicture): bool =
  fcQPicture_isDetached(self.h)

proc paintEngine*(self: gen_qpicture_types.QPicture): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPicture_paintEngine(self.h), owned: false)

type QPicturedevTypeProc* = proc(self: QPicture): cint {.raises: [], gcsafe.}
type QPicturesetDataProc* = proc(self: QPicture, data: cstring, size: cuint): void {.raises: [], gcsafe.}
type QPicturepaintEngineProc* = proc(self: QPicture): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QPicturemetricProc* = proc(self: QPicture, m: cint): cint {.raises: [], gcsafe.}
type QPictureinitPainterProc* = proc(self: QPicture, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QPictureredirectedProc* = proc(self: QPicture, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QPicturesharedPainterProc* = proc(self: QPicture): gen_qpainter_types.QPainter {.raises: [], gcsafe.}

type QPictureVTable* {.inheritable, pure.} = object
  vtbl: cQPictureVTable
  devType*: QPicturedevTypeProc
  setData*: QPicturesetDataProc
  paintEngine*: QPicturepaintEngineProc
  metric*: QPicturemetricProc
  initPainter*: QPictureinitPainterProc
  redirected*: QPictureredirectedProc
  sharedPainter*: QPicturesharedPainterProc

proc QPicturedevType*(self: gen_qpicture_types.QPicture): cint =
  fcQPicture_virtualbase_devType(self.h)

proc QPicturesetData*(self: gen_qpicture_types.QPicture, data: cstring, size: cuint): void =
  fcQPicture_virtualbase_setData(self.h, data, size)

proc QPicturepaintEngine*(self: gen_qpicture_types.QPicture): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPicture_virtualbase_paintEngine(self.h), owned: false)

proc QPicturemetric*(self: gen_qpicture_types.QPicture, m: cint): cint =
  fcQPicture_virtualbase_metric(self.h, cint(m))

proc QPictureinitPainter*(self: gen_qpicture_types.QPicture, painter: gen_qpainter_types.QPainter): void =
  fcQPicture_virtualbase_initPainter(self.h, painter.h)

proc QPictureredirected*(self: gen_qpicture_types.QPicture, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPicture_virtualbase_redirected(self.h, offset.h), owned: false)

proc QPicturesharedPainter*(self: gen_qpicture_types.QPicture): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPicture_virtualbase_sharedPainter(self.h), owned: false)


proc fcQPicture_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPictureVTable](fcQPicture_vdata(self))
  let self = QPicture(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQPicture_vtable_callback_setData(self: pointer, data: cstring, size: cuint): void {.cdecl.} =
  let vtbl = cast[ptr QPictureVTable](fcQPicture_vdata(self))
  let self = QPicture(h: self)
  let slotval1 = (data)
  let slotval2 = size
  vtbl[].setData(self, slotval1, slotval2)

proc fcQPicture_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPictureVTable](fcQPicture_vdata(self))
  let self = QPicture(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPicture_vtable_callback_metric(self: pointer, m: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPictureVTable](fcQPicture_vdata(self))
  let self = QPicture(h: self)
  let slotval1 = cint(m)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQPicture_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPictureVTable](fcQPicture_vdata(self))
  let self = QPicture(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQPicture_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPictureVTable](fcQPicture_vdata(self))
  let self = QPicture(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPicture_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPictureVTable](fcQPicture_vdata(self))
  let self = QPicture(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQPicture* {.inheritable.} = ref object of QPicture
  vtbl*: cQPictureVTable

method devType*(self: VirtualQPicture): cint {.base.} =
  QPicturedevType(self[])
method setData*(self: VirtualQPicture, data: cstring, size: cuint): void {.base.} =
  QPicturesetData(self[], data, size)
method paintEngine*(self: VirtualQPicture): gen_qpaintengine_types.QPaintEngine {.base.} =
  QPicturepaintEngine(self[])
method metric*(self: VirtualQPicture, m: cint): cint {.base.} =
  QPicturemetric(self[], m)
method initPainter*(self: VirtualQPicture, painter: gen_qpainter_types.QPainter): void {.base.} =
  QPictureinitPainter(self[], painter)
method redirected*(self: VirtualQPicture, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QPictureredirected(self[], offset)
method sharedPainter*(self: VirtualQPicture): gen_qpainter_types.QPainter {.base.} =
  QPicturesharedPainter(self[])

proc fcQPicture_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPicture](fcQPicture_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQPicture_method_callback_setData(self: pointer, data: cstring, size: cuint): void {.cdecl.} =
  let inst = cast[VirtualQPicture](fcQPicture_vdata(self))
  let slotval1 = (data)
  let slotval2 = size
  inst.setData(slotval1, slotval2)

proc fcQPicture_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPicture](fcQPicture_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPicture_method_callback_metric(self: pointer, m: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPicture](fcQPicture_vdata(self))
  let slotval1 = cint(m)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQPicture_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPicture](fcQPicture_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQPicture_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPicture](fcQPicture_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPicture_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPicture](fcQPicture_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h


proc create*(T: type gen_qpicture_types.QPicture,
    vtbl: ref QPictureVTable = nil): gen_qpicture_types.QPicture =
  let vtbl = if vtbl == nil: new QPictureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPictureVTable](fcQPicture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQPicture_vtable_callback_devType
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQPicture_vtable_callback_setData
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQPicture_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQPicture_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQPicture_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQPicture_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQPicture_vtable_callback_sharedPainter
  gen_qpicture_types.QPicture(h: fcQPicture_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qpicture_types.QPicture,
    param1: gen_qpicture_types.QPicture,
    vtbl: ref QPictureVTable = nil): gen_qpicture_types.QPicture =
  let vtbl = if vtbl == nil: new QPictureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPictureVTable](fcQPicture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQPicture_vtable_callback_devType
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQPicture_vtable_callback_setData
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQPicture_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQPicture_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQPicture_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQPicture_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQPicture_vtable_callback_sharedPainter
  gen_qpicture_types.QPicture(h: fcQPicture_new2(addr(vtbl[].vtbl), addr(vtbl[]), param1.h), owned: true)

proc create*(T: type gen_qpicture_types.QPicture,
    formatVersion: cint,
    vtbl: ref QPictureVTable = nil): gen_qpicture_types.QPicture =
  let vtbl = if vtbl == nil: new QPictureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPictureVTable](fcQPicture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQPicture_vtable_callback_devType
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQPicture_vtable_callback_setData
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQPicture_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQPicture_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQPicture_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQPicture_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQPicture_vtable_callback_sharedPainter
  gen_qpicture_types.QPicture(h: fcQPicture_new3(addr(vtbl[].vtbl), addr(vtbl[]), formatVersion), owned: true)

const cQPicture_mvtbl = cQPictureVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPicture()[])](self.fcQPicture_vtbl())
    inst[].h = nil
    inst[].owned = false,

  devType: fcQPicture_method_callback_devType,
  setData: fcQPicture_method_callback_setData,
  paintEngine: fcQPicture_method_callback_paintEngine,
  metric: fcQPicture_method_callback_metric,
  initPainter: fcQPicture_method_callback_initPainter,
  redirected: fcQPicture_method_callback_redirected,
  sharedPainter: fcQPicture_method_callback_sharedPainter,
)
proc create*(T: type gen_qpicture_types.QPicture,
    inst: VirtualQPicture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPicture_new(addr(cQPicture_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qpicture_types.QPicture,
    param1: gen_qpicture_types.QPicture,
    inst: VirtualQPicture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPicture_new2(addr(cQPicture_mvtbl), addr(inst[]), param1.h)
  inst[].owned = true

proc create*(T: type gen_qpicture_types.QPicture,
    formatVersion: cint,
    inst: VirtualQPicture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPicture_new3(addr(cQPicture_mvtbl), addr(inst[]), formatVersion)
  inst[].owned = true

