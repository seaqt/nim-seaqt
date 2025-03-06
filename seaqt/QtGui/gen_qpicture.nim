import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qpicture.cpp", cflags).}


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

proc fcQPicture_isNull(self: pointer, ): bool {.importc: "QPicture_isNull".}
proc fcQPicture_devType(self: pointer, ): cint {.importc: "QPicture_devType".}
proc fcQPicture_size(self: pointer, ): cuint {.importc: "QPicture_size".}
proc fcQPicture_data(self: pointer, ): cstring {.importc: "QPicture_data".}
proc fcQPicture_setData(self: pointer, data: cstring, size: cuint): void {.importc: "QPicture_setData".}
proc fcQPicture_play(self: pointer, p: pointer): bool {.importc: "QPicture_play".}
proc fcQPicture_load(self: pointer, dev: pointer): bool {.importc: "QPicture_load".}
proc fcQPicture_loadWithFileName(self: pointer, fileName: struct_miqt_string): bool {.importc: "QPicture_loadWithFileName".}
proc fcQPicture_save(self: pointer, dev: pointer): bool {.importc: "QPicture_save".}
proc fcQPicture_saveWithFileName(self: pointer, fileName: struct_miqt_string): bool {.importc: "QPicture_saveWithFileName".}
proc fcQPicture_boundingRect(self: pointer, ): pointer {.importc: "QPicture_boundingRect".}
proc fcQPicture_setBoundingRect(self: pointer, r: pointer): void {.importc: "QPicture_setBoundingRect".}
proc fcQPicture_operatorAssign(self: pointer, p: pointer): void {.importc: "QPicture_operatorAssign".}
proc fcQPicture_swap(self: pointer, other: pointer): void {.importc: "QPicture_swap".}
proc fcQPicture_detach(self: pointer, ): void {.importc: "QPicture_detach".}
proc fcQPicture_isDetached(self: pointer, ): bool {.importc: "QPicture_isDetached".}
proc fcQPicture_paintEngine(self: pointer, ): pointer {.importc: "QPicture_paintEngine".}
type cQPictureVTable = object
  destructor*: proc(vtbl: ptr cQPictureVTable, self: ptr cQPicture) {.cdecl, raises:[], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setData*: proc(vtbl, self: pointer, data: cstring, size: cuint): void {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, m: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQPicture_virtualbase_devType(self: pointer, ): cint {.importc: "QPicture_virtualbase_devType".}
proc fcQPicture_virtualbase_setData(self: pointer, data: cstring, size: cuint): void {.importc: "QPicture_virtualbase_setData".}
proc fcQPicture_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QPicture_virtualbase_paintEngine".}
proc fcQPicture_virtualbase_metric(self: pointer, m: cint): cint {.importc: "QPicture_virtualbase_metric".}
proc fcQPicture_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QPicture_virtualbase_initPainter".}
proc fcQPicture_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QPicture_virtualbase_redirected".}
proc fcQPicture_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QPicture_virtualbase_sharedPainter".}
proc fcQPicture_new(vtbl: pointer, ): ptr cQPicture {.importc: "QPicture_new".}
proc fcQPicture_new2(vtbl: pointer, param1: pointer): ptr cQPicture {.importc: "QPicture_new2".}
proc fcQPicture_new3(vtbl: pointer, formatVersion: cint): ptr cQPicture {.importc: "QPicture_new3".}
proc fcQPicture_delete(self: pointer) {.importc: "QPicture_delete".}

proc isNull*(self: gen_qpicture_types.QPicture, ): bool =
  fcQPicture_isNull(self.h)

proc devType*(self: gen_qpicture_types.QPicture, ): cint =
  fcQPicture_devType(self.h)

proc size*(self: gen_qpicture_types.QPicture, ): cuint =
  fcQPicture_size(self.h)

proc data*(self: gen_qpicture_types.QPicture, ): cstring =
  (fcQPicture_data(self.h))

proc setData*(self: gen_qpicture_types.QPicture, data: cstring, size: cuint): void =
  fcQPicture_setData(self.h, data, size)

proc play*(self: gen_qpicture_types.QPicture, p: gen_qpainter_types.QPainter): bool =
  fcQPicture_play(self.h, p.h)

proc load*(self: gen_qpicture_types.QPicture, dev: gen_qiodevice_types.QIODevice): bool =
  fcQPicture_load(self.h, dev.h)

proc load*(self: gen_qpicture_types.QPicture, fileName: string): bool =
  fcQPicture_loadWithFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc save*(self: gen_qpicture_types.QPicture, dev: gen_qiodevice_types.QIODevice): bool =
  fcQPicture_save(self.h, dev.h)

proc save*(self: gen_qpicture_types.QPicture, fileName: string): bool =
  fcQPicture_saveWithFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc boundingRect*(self: gen_qpicture_types.QPicture, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPicture_boundingRect(self.h))

proc setBoundingRect*(self: gen_qpicture_types.QPicture, r: gen_qrect_types.QRect): void =
  fcQPicture_setBoundingRect(self.h, r.h)

proc operatorAssign*(self: gen_qpicture_types.QPicture, p: gen_qpicture_types.QPicture): void =
  fcQPicture_operatorAssign(self.h, p.h)

proc swap*(self: gen_qpicture_types.QPicture, other: gen_qpicture_types.QPicture): void =
  fcQPicture_swap(self.h, other.h)

proc detach*(self: gen_qpicture_types.QPicture, ): void =
  fcQPicture_detach(self.h)

proc isDetached*(self: gen_qpicture_types.QPicture, ): bool =
  fcQPicture_isDetached(self.h)

proc paintEngine*(self: gen_qpicture_types.QPicture, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPicture_paintEngine(self.h))

type QPicturedevTypeProc* = proc(self: QPicture): cint {.raises: [], gcsafe.}
type QPicturesetDataProc* = proc(self: QPicture, data: cstring, size: cuint): void {.raises: [], gcsafe.}
type QPicturepaintEngineProc* = proc(self: QPicture): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QPicturemetricProc* = proc(self: QPicture, m: cint): cint {.raises: [], gcsafe.}
type QPictureinitPainterProc* = proc(self: QPicture, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QPictureredirectedProc* = proc(self: QPicture, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QPicturesharedPainterProc* = proc(self: QPicture): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QPictureVTable* = object
  vtbl: cQPictureVTable
  devType*: QPicturedevTypeProc
  setData*: QPicturesetDataProc
  paintEngine*: QPicturepaintEngineProc
  metric*: QPicturemetricProc
  initPainter*: QPictureinitPainterProc
  redirected*: QPictureredirectedProc
  sharedPainter*: QPicturesharedPainterProc
proc QPicturedevType*(self: gen_qpicture_types.QPicture, ): cint =
  fcQPicture_virtualbase_devType(self.h)

proc miqt_exec_callback_cQPicture_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPictureVTable](vtbl)
  let self = QPicture(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QPicturesetData*(self: gen_qpicture_types.QPicture, data: cstring, size: cuint): void =
  fcQPicture_virtualbase_setData(self.h, data, size)

proc miqt_exec_callback_cQPicture_setData(vtbl: pointer, self: pointer, data: cstring, size: cuint): void {.cdecl.} =
  let vtbl = cast[ptr QPictureVTable](vtbl)
  let self = QPicture(h: self)
  let slotval1 = (data)
  let slotval2 = size
  vtbl[].setData(self, slotval1, slotval2)

proc QPicturepaintEngine*(self: gen_qpicture_types.QPicture, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPicture_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQPicture_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPictureVTable](vtbl)
  let self = QPicture(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QPicturemetric*(self: gen_qpicture_types.QPicture, m: cint): cint =
  fcQPicture_virtualbase_metric(self.h, cint(m))

proc miqt_exec_callback_cQPicture_metric(vtbl: pointer, self: pointer, m: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPictureVTable](vtbl)
  let self = QPicture(h: self)
  let slotval1 = cint(m)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QPictureinitPainter*(self: gen_qpicture_types.QPicture, painter: gen_qpainter_types.QPainter): void =
  fcQPicture_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQPicture_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPictureVTable](vtbl)
  let self = QPicture(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QPictureredirected*(self: gen_qpicture_types.QPicture, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPicture_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQPicture_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPictureVTable](vtbl)
  let self = QPicture(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QPicturesharedPainter*(self: gen_qpicture_types.QPicture, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPicture_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQPicture_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPictureVTable](vtbl)
  let self = QPicture(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc create*(T: type gen_qpicture_types.QPicture,
    vtbl: ref QPictureVTable = nil): gen_qpicture_types.QPicture =
  let vtbl = if vtbl == nil: new QPictureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPictureVTable, _: ptr cQPicture) {.cdecl.} =
    let vtbl = cast[ref QPictureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPicture_devType
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQPicture_setData
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPicture_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPicture_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPicture_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPicture_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPicture_sharedPainter
  gen_qpicture_types.QPicture(h: fcQPicture_new(addr(vtbl[]), ))

proc create*(T: type gen_qpicture_types.QPicture,
    param1: gen_qpicture_types.QPicture,
    vtbl: ref QPictureVTable = nil): gen_qpicture_types.QPicture =
  let vtbl = if vtbl == nil: new QPictureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPictureVTable, _: ptr cQPicture) {.cdecl.} =
    let vtbl = cast[ref QPictureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPicture_devType
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQPicture_setData
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPicture_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPicture_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPicture_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPicture_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPicture_sharedPainter
  gen_qpicture_types.QPicture(h: fcQPicture_new2(addr(vtbl[]), param1.h))

proc create*(T: type gen_qpicture_types.QPicture,
    formatVersion: cint,
    vtbl: ref QPictureVTable = nil): gen_qpicture_types.QPicture =
  let vtbl = if vtbl == nil: new QPictureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPictureVTable, _: ptr cQPicture) {.cdecl.} =
    let vtbl = cast[ref QPictureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPicture_devType
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQPicture_setData
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPicture_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPicture_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPicture_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPicture_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPicture_sharedPainter
  gen_qpicture_types.QPicture(h: fcQPicture_new3(addr(vtbl[]), formatVersion))

proc delete*(self: gen_qpicture_types.QPicture) =
  fcQPicture_delete(self.h)
