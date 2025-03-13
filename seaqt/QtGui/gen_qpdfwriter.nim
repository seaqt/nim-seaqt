import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qpdfwriter.cpp", cflags).}


import ./gen_qpdfwriter_types
export gen_qpdfwriter_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmargins_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ./gen_qpagelayout_types,
  ./gen_qpageranges_types,
  ./gen_qpagesize_types,
  ./gen_qpaintdevice_types,
  ./gen_qpaintengine_types,
  ./gen_qpainter_types
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmargins_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qpagelayout_types,
  gen_qpageranges_types,
  gen_qpagesize_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types

type cQPdfWriter*{.exportc: "QPdfWriter", incompleteStruct.} = object

proc fcQPdfWriter_metaObject(self: pointer): pointer {.importc: "QPdfWriter_metaObject".}
proc fcQPdfWriter_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfWriter_metacast".}
proc fcQPdfWriter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfWriter_metacall".}
proc fcQPdfWriter_tr(s: cstring): struct_miqt_string {.importc: "QPdfWriter_tr".}
proc fcQPdfWriter_setPdfVersion(self: pointer, version: cint): void {.importc: "QPdfWriter_setPdfVersion".}
proc fcQPdfWriter_pdfVersion(self: pointer): cint {.importc: "QPdfWriter_pdfVersion".}
proc fcQPdfWriter_title(self: pointer): struct_miqt_string {.importc: "QPdfWriter_title".}
proc fcQPdfWriter_setTitle(self: pointer, title: struct_miqt_string): void {.importc: "QPdfWriter_setTitle".}
proc fcQPdfWriter_creator(self: pointer): struct_miqt_string {.importc: "QPdfWriter_creator".}
proc fcQPdfWriter_setCreator(self: pointer, creator: struct_miqt_string): void {.importc: "QPdfWriter_setCreator".}
proc fcQPdfWriter_newPage(self: pointer): bool {.importc: "QPdfWriter_newPage".}
proc fcQPdfWriter_setResolution(self: pointer, resolution: cint): void {.importc: "QPdfWriter_setResolution".}
proc fcQPdfWriter_resolution(self: pointer): cint {.importc: "QPdfWriter_resolution".}
proc fcQPdfWriter_setDocumentXmpMetadata(self: pointer, xmpMetadata: struct_miqt_string): void {.importc: "QPdfWriter_setDocumentXmpMetadata".}
proc fcQPdfWriter_documentXmpMetadata(self: pointer): struct_miqt_string {.importc: "QPdfWriter_documentXmpMetadata".}
proc fcQPdfWriter_addFileAttachment(self: pointer, fileName: struct_miqt_string, data: struct_miqt_string): void {.importc: "QPdfWriter_addFileAttachment".}
proc fcQPdfWriter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPdfWriter_tr2".}
proc fcQPdfWriter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPdfWriter_tr3".}
proc fcQPdfWriter_addFileAttachment3(self: pointer, fileName: struct_miqt_string, data: struct_miqt_string, mimeType: struct_miqt_string): void {.importc: "QPdfWriter_addFileAttachment3".}
proc fcQPdfWriter_vtbl(self: pointer): pointer {.importc: "QPdfWriter_vtbl".}
proc fcQPdfWriter_vdata(self: pointer): pointer {.importc: "QPdfWriter_vdata".}
type cQPdfWriterVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  newPage*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, id: cint): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  setPageLayout*: proc(self: pointer, pageLayout: pointer): bool {.cdecl, raises: [], gcsafe.}
  setPageSize*: proc(self: pointer, pageSize: pointer): bool {.cdecl, raises: [], gcsafe.}
  setPageOrientation*: proc(self: pointer, orientation: cint): bool {.cdecl, raises: [], gcsafe.}
  setPageMargins*: proc(self: pointer, margins: pointer, units: cint): bool {.cdecl, raises: [], gcsafe.}
  setPageRanges*: proc(self: pointer, ranges: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQPdfWriter_virtualbase_metaObject(self: pointer): pointer {.importc: "QPdfWriter_virtualbase_metaObject".}
proc fcQPdfWriter_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfWriter_virtualbase_metacast".}
proc fcQPdfWriter_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfWriter_virtualbase_metacall".}
proc fcQPdfWriter_virtualbase_newPage(self: pointer): bool {.importc: "QPdfWriter_virtualbase_newPage".}
proc fcQPdfWriter_virtualbase_paintEngine(self: pointer): pointer {.importc: "QPdfWriter_virtualbase_paintEngine".}
proc fcQPdfWriter_virtualbase_metric(self: pointer, id: cint): cint {.importc: "QPdfWriter_virtualbase_metric".}
proc fcQPdfWriter_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPdfWriter_virtualbase_event".}
proc fcQPdfWriter_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPdfWriter_virtualbase_eventFilter".}
proc fcQPdfWriter_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPdfWriter_virtualbase_timerEvent".}
proc fcQPdfWriter_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPdfWriter_virtualbase_childEvent".}
proc fcQPdfWriter_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPdfWriter_virtualbase_customEvent".}
proc fcQPdfWriter_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPdfWriter_virtualbase_connectNotify".}
proc fcQPdfWriter_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPdfWriter_virtualbase_disconnectNotify".}
proc fcQPdfWriter_virtualbase_setPageLayout(self: pointer, pageLayout: pointer): bool {.importc: "QPdfWriter_virtualbase_setPageLayout".}
proc fcQPdfWriter_virtualbase_setPageSize(self: pointer, pageSize: pointer): bool {.importc: "QPdfWriter_virtualbase_setPageSize".}
proc fcQPdfWriter_virtualbase_setPageOrientation(self: pointer, orientation: cint): bool {.importc: "QPdfWriter_virtualbase_setPageOrientation".}
proc fcQPdfWriter_virtualbase_setPageMargins(self: pointer, margins: pointer, units: cint): bool {.importc: "QPdfWriter_virtualbase_setPageMargins".}
proc fcQPdfWriter_virtualbase_setPageRanges(self: pointer, ranges: pointer): void {.importc: "QPdfWriter_virtualbase_setPageRanges".}
proc fcQPdfWriter_virtualbase_devType(self: pointer): cint {.importc: "QPdfWriter_virtualbase_devType".}
proc fcQPdfWriter_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QPdfWriter_virtualbase_initPainter".}
proc fcQPdfWriter_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QPdfWriter_virtualbase_redirected".}
proc fcQPdfWriter_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QPdfWriter_virtualbase_sharedPainter".}
proc fcQPdfWriter_protectedbase_sender(self: pointer): pointer {.importc: "QPdfWriter_protectedbase_sender".}
proc fcQPdfWriter_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPdfWriter_protectedbase_senderSignalIndex".}
proc fcQPdfWriter_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPdfWriter_protectedbase_receivers".}
proc fcQPdfWriter_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPdfWriter_protectedbase_isSignalConnected".}
proc fcQPdfWriter_new(vtbl, vdata: pointer, filename: struct_miqt_string): ptr cQPdfWriter {.importc: "QPdfWriter_new".}
proc fcQPdfWriter_new2(vtbl, vdata: pointer, device: pointer): ptr cQPdfWriter {.importc: "QPdfWriter_new2".}
proc fcQPdfWriter_staticMetaObject(): pointer {.importc: "QPdfWriter_staticMetaObject".}

proc metaObject*(self: gen_qpdfwriter_types.QPdfWriter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfWriter_metaObject(self.h), owned: false)

proc metacast*(self: gen_qpdfwriter_types.QPdfWriter, param1: cstring): pointer =
  fcQPdfWriter_metacast(self.h, param1)

proc metacall*(self: gen_qpdfwriter_types.QPdfWriter, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfWriter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpdfwriter_types.QPdfWriter, s: cstring): string =
  let v_ms = fcQPdfWriter_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPdfVersion*(self: gen_qpdfwriter_types.QPdfWriter, version: cint): void =
  fcQPdfWriter_setPdfVersion(self.h, cint(version))

proc pdfVersion*(self: gen_qpdfwriter_types.QPdfWriter): cint =
  cint(fcQPdfWriter_pdfVersion(self.h))

proc title*(self: gen_qpdfwriter_types.QPdfWriter): string =
  let v_ms = fcQPdfWriter_title(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setTitle*(self: gen_qpdfwriter_types.QPdfWriter, title: openArray[char]): void =
  fcQPdfWriter_setTitle(self.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))))

proc creator*(self: gen_qpdfwriter_types.QPdfWriter): string =
  let v_ms = fcQPdfWriter_creator(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setCreator*(self: gen_qpdfwriter_types.QPdfWriter, creator: openArray[char]): void =
  fcQPdfWriter_setCreator(self.h, struct_miqt_string(data: if len(creator) > 0: addr creator[0] else: nil, len: csize_t(len(creator))))

proc newPage*(self: gen_qpdfwriter_types.QPdfWriter): bool =
  fcQPdfWriter_newPage(self.h)

proc setResolution*(self: gen_qpdfwriter_types.QPdfWriter, resolution: cint): void =
  fcQPdfWriter_setResolution(self.h, resolution)

proc resolution*(self: gen_qpdfwriter_types.QPdfWriter): cint =
  fcQPdfWriter_resolution(self.h)

proc setDocumentXmpMetadata*(self: gen_qpdfwriter_types.QPdfWriter, xmpMetadata: openArray[byte]): void =
  fcQPdfWriter_setDocumentXmpMetadata(self.h, struct_miqt_string(data: cast[cstring](if len(xmpMetadata) == 0: nil else: unsafeAddr xmpMetadata[0]), len: csize_t(len(xmpMetadata))))

proc documentXmpMetadata*(self: gen_qpdfwriter_types.QPdfWriter): seq[byte] =
  var v_bytearray = fcQPdfWriter_documentXmpMetadata(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc addFileAttachment*(self: gen_qpdfwriter_types.QPdfWriter, fileName: openArray[char], data: openArray[byte]): void =
  fcQPdfWriter_addFileAttachment(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc tr*(_: type gen_qpdfwriter_types.QPdfWriter, s: cstring, c: cstring): string =
  let v_ms = fcQPdfWriter_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpdfwriter_types.QPdfWriter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPdfWriter_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addFileAttachment*(self: gen_qpdfwriter_types.QPdfWriter, fileName: openArray[char], data: openArray[byte], mimeType: openArray[char]): void =
  fcQPdfWriter_addFileAttachment3(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: if len(mimeType) > 0: addr mimeType[0] else: nil, len: csize_t(len(mimeType))))

type QPdfWritermetaObjectProc* = proc(self: QPdfWriter): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPdfWritermetacastProc* = proc(self: QPdfWriter, param1: cstring): pointer {.raises: [], gcsafe.}
type QPdfWritermetacallProc* = proc(self: QPdfWriter, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPdfWriternewPageProc* = proc(self: QPdfWriter): bool {.raises: [], gcsafe.}
type QPdfWriterpaintEngineProc* = proc(self: QPdfWriter): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QPdfWritermetricProc* = proc(self: QPdfWriter, id: cint): cint {.raises: [], gcsafe.}
type QPdfWritereventProc* = proc(self: QPdfWriter, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfWritereventFilterProc* = proc(self: QPdfWriter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfWritertimerEventProc* = proc(self: QPdfWriter, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPdfWriterchildEventProc* = proc(self: QPdfWriter, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPdfWritercustomEventProc* = proc(self: QPdfWriter, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPdfWriterconnectNotifyProc* = proc(self: QPdfWriter, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPdfWriterdisconnectNotifyProc* = proc(self: QPdfWriter, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPdfWritersetPageLayoutProc* = proc(self: QPdfWriter, pageLayout: gen_qpagelayout_types.QPageLayout): bool {.raises: [], gcsafe.}
type QPdfWritersetPageSizeProc* = proc(self: QPdfWriter, pageSize: gen_qpagesize_types.QPageSize): bool {.raises: [], gcsafe.}
type QPdfWritersetPageOrientationProc* = proc(self: QPdfWriter, orientation: cint): bool {.raises: [], gcsafe.}
type QPdfWritersetPageMarginsProc* = proc(self: QPdfWriter, margins: gen_qmargins_types.QMarginsF, units: cint): bool {.raises: [], gcsafe.}
type QPdfWritersetPageRangesProc* = proc(self: QPdfWriter, ranges: gen_qpageranges_types.QPageRanges): void {.raises: [], gcsafe.}
type QPdfWriterdevTypeProc* = proc(self: QPdfWriter): cint {.raises: [], gcsafe.}
type QPdfWriterinitPainterProc* = proc(self: QPdfWriter, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QPdfWriterredirectedProc* = proc(self: QPdfWriter, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QPdfWritersharedPainterProc* = proc(self: QPdfWriter): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QPdfWriterVTable* {.inheritable, pure.} = object
  vtbl: cQPdfWriterVTable
  metaObject*: QPdfWritermetaObjectProc
  metacast*: QPdfWritermetacastProc
  metacall*: QPdfWritermetacallProc
  newPage*: QPdfWriternewPageProc
  paintEngine*: QPdfWriterpaintEngineProc
  metric*: QPdfWritermetricProc
  event*: QPdfWritereventProc
  eventFilter*: QPdfWritereventFilterProc
  timerEvent*: QPdfWritertimerEventProc
  childEvent*: QPdfWriterchildEventProc
  customEvent*: QPdfWritercustomEventProc
  connectNotify*: QPdfWriterconnectNotifyProc
  disconnectNotify*: QPdfWriterdisconnectNotifyProc
  setPageLayout*: QPdfWritersetPageLayoutProc
  setPageSize*: QPdfWritersetPageSizeProc
  setPageOrientation*: QPdfWritersetPageOrientationProc
  setPageMargins*: QPdfWritersetPageMarginsProc
  setPageRanges*: QPdfWritersetPageRangesProc
  devType*: QPdfWriterdevTypeProc
  initPainter*: QPdfWriterinitPainterProc
  redirected*: QPdfWriterredirectedProc
  sharedPainter*: QPdfWritersharedPainterProc
proc QPdfWritermetaObject*(self: gen_qpdfwriter_types.QPdfWriter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfWriter_virtualbase_metaObject(self.h), owned: false)

proc cQPdfWriter_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPdfWritermetacast*(self: gen_qpdfwriter_types.QPdfWriter, param1: cstring): pointer =
  fcQPdfWriter_virtualbase_metacast(self.h, param1)

proc cQPdfWriter_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPdfWritermetacall*(self: gen_qpdfwriter_types.QPdfWriter, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfWriter_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQPdfWriter_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPdfWriternewPage*(self: gen_qpdfwriter_types.QPdfWriter): bool =
  fcQPdfWriter_virtualbase_newPage(self.h)

proc cQPdfWriter_vtable_callback_newPage(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  var virtualReturn = vtbl[].newPage(self)
  virtualReturn

proc QPdfWriterpaintEngine*(self: gen_qpdfwriter_types.QPdfWriter): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPdfWriter_virtualbase_paintEngine(self.h), owned: false)

proc cQPdfWriter_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPdfWritermetric*(self: gen_qpdfwriter_types.QPdfWriter, id: cint): cint =
  fcQPdfWriter_virtualbase_metric(self.h, cint(id))

proc cQPdfWriter_vtable_callback_metric(self: pointer, id: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  let slotval1 = cint(id)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QPdfWriterevent*(self: gen_qpdfwriter_types.QPdfWriter, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfWriter_virtualbase_event(self.h, event.h)

proc cQPdfWriter_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPdfWritereventFilter*(self: gen_qpdfwriter_types.QPdfWriter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfWriter_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQPdfWriter_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPdfWritertimerEvent*(self: gen_qpdfwriter_types.QPdfWriter, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPdfWriter_virtualbase_timerEvent(self.h, event.h)

proc cQPdfWriter_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QPdfWriterchildEvent*(self: gen_qpdfwriter_types.QPdfWriter, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPdfWriter_virtualbase_childEvent(self.h, event.h)

proc cQPdfWriter_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QPdfWritercustomEvent*(self: gen_qpdfwriter_types.QPdfWriter, event: gen_qcoreevent_types.QEvent): void =
  fcQPdfWriter_virtualbase_customEvent(self.h, event.h)

proc cQPdfWriter_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QPdfWriterconnectNotify*(self: gen_qpdfwriter_types.QPdfWriter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfWriter_virtualbase_connectNotify(self.h, signal.h)

proc cQPdfWriter_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QPdfWriterdisconnectNotify*(self: gen_qpdfwriter_types.QPdfWriter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfWriter_virtualbase_disconnectNotify(self.h, signal.h)

proc cQPdfWriter_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc QPdfWritersetPageLayout*(self: gen_qpdfwriter_types.QPdfWriter, pageLayout: gen_qpagelayout_types.QPageLayout): bool =
  fcQPdfWriter_virtualbase_setPageLayout(self.h, pageLayout.h)

proc cQPdfWriter_vtable_callback_setPageLayout(self: pointer, pageLayout: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qpagelayout_types.QPageLayout(h: pageLayout, owned: false)
  var virtualReturn = vtbl[].setPageLayout(self, slotval1)
  virtualReturn

proc QPdfWritersetPageSize*(self: gen_qpdfwriter_types.QPdfWriter, pageSize: gen_qpagesize_types.QPageSize): bool =
  fcQPdfWriter_virtualbase_setPageSize(self.h, pageSize.h)

proc cQPdfWriter_vtable_callback_setPageSize(self: pointer, pageSize: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qpagesize_types.QPageSize(h: pageSize, owned: false)
  var virtualReturn = vtbl[].setPageSize(self, slotval1)
  virtualReturn

proc QPdfWritersetPageOrientation*(self: gen_qpdfwriter_types.QPdfWriter, orientation: cint): bool =
  fcQPdfWriter_virtualbase_setPageOrientation(self.h, cint(orientation))

proc cQPdfWriter_vtable_callback_setPageOrientation(self: pointer, orientation: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  let slotval1 = cint(orientation)
  var virtualReturn = vtbl[].setPageOrientation(self, slotval1)
  virtualReturn

proc QPdfWritersetPageMargins*(self: gen_qpdfwriter_types.QPdfWriter, margins: gen_qmargins_types.QMarginsF, units: cint): bool =
  fcQPdfWriter_virtualbase_setPageMargins(self.h, margins.h, cint(units))

proc cQPdfWriter_vtable_callback_setPageMargins(self: pointer, margins: pointer, units: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qmargins_types.QMarginsF(h: margins, owned: false)
  let slotval2 = cint(units)
  var virtualReturn = vtbl[].setPageMargins(self, slotval1, slotval2)
  virtualReturn

proc QPdfWritersetPageRanges*(self: gen_qpdfwriter_types.QPdfWriter, ranges: gen_qpageranges_types.QPageRanges): void =
  fcQPdfWriter_virtualbase_setPageRanges(self.h, ranges.h)

proc cQPdfWriter_vtable_callback_setPageRanges(self: pointer, ranges: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qpageranges_types.QPageRanges(h: ranges, owned: false)
  vtbl[].setPageRanges(self, slotval1)

proc QPdfWriterdevType*(self: gen_qpdfwriter_types.QPdfWriter): cint =
  fcQPdfWriter_virtualbase_devType(self.h)

proc cQPdfWriter_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QPdfWriterinitPainter*(self: gen_qpdfwriter_types.QPdfWriter, painter: gen_qpainter_types.QPainter): void =
  fcQPdfWriter_virtualbase_initPainter(self.h, painter.h)

proc cQPdfWriter_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QPdfWriterredirected*(self: gen_qpdfwriter_types.QPdfWriter, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPdfWriter_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQPdfWriter_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPdfWritersharedPainter*(self: gen_qpdfwriter_types.QPdfWriter): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPdfWriter_virtualbase_sharedPainter(self.h), owned: false)

proc cQPdfWriter_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](fcQPdfWriter_vdata(self))
  let self = QPdfWriter(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQPdfWriter* {.inheritable.} = ref object of QPdfWriter
  vtbl*: cQPdfWriterVTable
method metaObject*(self: VirtualQPdfWriter): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPdfWritermetaObject(self[])
proc cQPdfWriter_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQPdfWriter, param1: cstring): pointer {.base.} =
  QPdfWritermetacast(self[], param1)
proc cQPdfWriter_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQPdfWriter, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPdfWritermetacall(self[], param1, param2, param3)
proc cQPdfWriter_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method newPage*(self: VirtualQPdfWriter): bool {.base.} =
  QPdfWriternewPage(self[])
proc cQPdfWriter_method_callback_newPage(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  var virtualReturn = inst.newPage()
  virtualReturn

method paintEngine*(self: VirtualQPdfWriter): gen_qpaintengine_types.QPaintEngine {.base.} =
  QPdfWriterpaintEngine(self[])
proc cQPdfWriter_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metric*(self: VirtualQPdfWriter, id: cint): cint {.base.} =
  QPdfWritermetric(self[], id)
proc cQPdfWriter_method_callback_metric(self: pointer, id: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  let slotval1 = cint(id)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method event*(self: VirtualQPdfWriter, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfWriterevent(self[], event)
proc cQPdfWriter_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQPdfWriter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfWritereventFilter(self[], watched, event)
proc cQPdfWriter_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQPdfWriter, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPdfWritertimerEvent(self[], event)
proc cQPdfWriter_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQPdfWriter, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPdfWriterchildEvent(self[], event)
proc cQPdfWriter_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQPdfWriter, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPdfWritercustomEvent(self[], event)
proc cQPdfWriter_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQPdfWriter, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfWriterconnectNotify(self[], signal)
proc cQPdfWriter_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQPdfWriter, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfWriterdisconnectNotify(self[], signal)
proc cQPdfWriter_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

method setPageLayout*(self: VirtualQPdfWriter, pageLayout: gen_qpagelayout_types.QPageLayout): bool {.base.} =
  QPdfWritersetPageLayout(self[], pageLayout)
proc cQPdfWriter_method_callback_setPageLayout(self: pointer, pageLayout: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  let slotval1 = gen_qpagelayout_types.QPageLayout(h: pageLayout, owned: false)
  var virtualReturn = inst.setPageLayout(slotval1)
  virtualReturn

method setPageSize*(self: VirtualQPdfWriter, pageSize: gen_qpagesize_types.QPageSize): bool {.base.} =
  QPdfWritersetPageSize(self[], pageSize)
proc cQPdfWriter_method_callback_setPageSize(self: pointer, pageSize: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  let slotval1 = gen_qpagesize_types.QPageSize(h: pageSize, owned: false)
  var virtualReturn = inst.setPageSize(slotval1)
  virtualReturn

method setPageOrientation*(self: VirtualQPdfWriter, orientation: cint): bool {.base.} =
  QPdfWritersetPageOrientation(self[], orientation)
proc cQPdfWriter_method_callback_setPageOrientation(self: pointer, orientation: cint): bool {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  let slotval1 = cint(orientation)
  var virtualReturn = inst.setPageOrientation(slotval1)
  virtualReturn

method setPageMargins*(self: VirtualQPdfWriter, margins: gen_qmargins_types.QMarginsF, units: cint): bool {.base.} =
  QPdfWritersetPageMargins(self[], margins, units)
proc cQPdfWriter_method_callback_setPageMargins(self: pointer, margins: pointer, units: cint): bool {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  let slotval1 = gen_qmargins_types.QMarginsF(h: margins, owned: false)
  let slotval2 = cint(units)
  var virtualReturn = inst.setPageMargins(slotval1, slotval2)
  virtualReturn

method setPageRanges*(self: VirtualQPdfWriter, ranges: gen_qpageranges_types.QPageRanges): void {.base.} =
  QPdfWritersetPageRanges(self[], ranges)
proc cQPdfWriter_method_callback_setPageRanges(self: pointer, ranges: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  let slotval1 = gen_qpageranges_types.QPageRanges(h: ranges, owned: false)
  inst.setPageRanges(slotval1)

method devType*(self: VirtualQPdfWriter): cint {.base.} =
  QPdfWriterdevType(self[])
proc cQPdfWriter_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method initPainter*(self: VirtualQPdfWriter, painter: gen_qpainter_types.QPainter): void {.base.} =
  QPdfWriterinitPainter(self[], painter)
proc cQPdfWriter_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQPdfWriter, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QPdfWriterredirected(self[], offset)
proc cQPdfWriter_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQPdfWriter): gen_qpainter_types.QPainter {.base.} =
  QPdfWritersharedPainter(self[])
proc cQPdfWriter_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfWriter](fcQPdfWriter_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc sender*(self: gen_qpdfwriter_types.QPdfWriter): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPdfWriter_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qpdfwriter_types.QPdfWriter): cint =
  fcQPdfWriter_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpdfwriter_types.QPdfWriter, signal: cstring): cint =
  fcQPdfWriter_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpdfwriter_types.QPdfWriter, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPdfWriter_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpdfwriter_types.QPdfWriter,
    filename: openArray[char],
    vtbl: ref QPdfWriterVTable = nil): gen_qpdfwriter_types.QPdfWriter =
  let vtbl = if vtbl == nil: new QPdfWriterVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfWriterVTable](fcQPdfWriter_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPdfWriter_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPdfWriter_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPdfWriter_vtable_callback_metacall
  if not isNil(vtbl[].newPage):
    vtbl[].vtbl.newPage = cQPdfWriter_vtable_callback_newPage
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPdfWriter_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPdfWriter_vtable_callback_metric
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPdfWriter_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPdfWriter_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPdfWriter_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPdfWriter_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPdfWriter_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPdfWriter_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPdfWriter_vtable_callback_disconnectNotify
  if not isNil(vtbl[].setPageLayout):
    vtbl[].vtbl.setPageLayout = cQPdfWriter_vtable_callback_setPageLayout
  if not isNil(vtbl[].setPageSize):
    vtbl[].vtbl.setPageSize = cQPdfWriter_vtable_callback_setPageSize
  if not isNil(vtbl[].setPageOrientation):
    vtbl[].vtbl.setPageOrientation = cQPdfWriter_vtable_callback_setPageOrientation
  if not isNil(vtbl[].setPageMargins):
    vtbl[].vtbl.setPageMargins = cQPdfWriter_vtable_callback_setPageMargins
  if not isNil(vtbl[].setPageRanges):
    vtbl[].vtbl.setPageRanges = cQPdfWriter_vtable_callback_setPageRanges
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPdfWriter_vtable_callback_devType
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPdfWriter_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPdfWriter_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPdfWriter_vtable_callback_sharedPainter
  gen_qpdfwriter_types.QPdfWriter(h: fcQPdfWriter_new(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename)))), owned: true)

proc create*(T: type gen_qpdfwriter_types.QPdfWriter,
    device: gen_qiodevice_types.QIODevice,
    vtbl: ref QPdfWriterVTable = nil): gen_qpdfwriter_types.QPdfWriter =
  let vtbl = if vtbl == nil: new QPdfWriterVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfWriterVTable](fcQPdfWriter_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPdfWriter_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPdfWriter_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPdfWriter_vtable_callback_metacall
  if not isNil(vtbl[].newPage):
    vtbl[].vtbl.newPage = cQPdfWriter_vtable_callback_newPage
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPdfWriter_vtable_callback_paintEngine
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPdfWriter_vtable_callback_metric
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPdfWriter_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPdfWriter_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPdfWriter_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPdfWriter_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPdfWriter_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPdfWriter_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPdfWriter_vtable_callback_disconnectNotify
  if not isNil(vtbl[].setPageLayout):
    vtbl[].vtbl.setPageLayout = cQPdfWriter_vtable_callback_setPageLayout
  if not isNil(vtbl[].setPageSize):
    vtbl[].vtbl.setPageSize = cQPdfWriter_vtable_callback_setPageSize
  if not isNil(vtbl[].setPageOrientation):
    vtbl[].vtbl.setPageOrientation = cQPdfWriter_vtable_callback_setPageOrientation
  if not isNil(vtbl[].setPageMargins):
    vtbl[].vtbl.setPageMargins = cQPdfWriter_vtable_callback_setPageMargins
  if not isNil(vtbl[].setPageRanges):
    vtbl[].vtbl.setPageRanges = cQPdfWriter_vtable_callback_setPageRanges
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPdfWriter_vtable_callback_devType
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPdfWriter_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPdfWriter_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPdfWriter_vtable_callback_sharedPainter
  gen_qpdfwriter_types.QPdfWriter(h: fcQPdfWriter_new2(addr(vtbl[].vtbl), addr(vtbl[]), device.h), owned: true)

const cQPdfWriter_mvtbl = cQPdfWriterVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPdfWriter()[])](self.fcQPdfWriter_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQPdfWriter_method_callback_metaObject,
  metacast: cQPdfWriter_method_callback_metacast,
  metacall: cQPdfWriter_method_callback_metacall,
  newPage: cQPdfWriter_method_callback_newPage,
  paintEngine: cQPdfWriter_method_callback_paintEngine,
  metric: cQPdfWriter_method_callback_metric,
  event: cQPdfWriter_method_callback_event,
  eventFilter: cQPdfWriter_method_callback_eventFilter,
  timerEvent: cQPdfWriter_method_callback_timerEvent,
  childEvent: cQPdfWriter_method_callback_childEvent,
  customEvent: cQPdfWriter_method_callback_customEvent,
  connectNotify: cQPdfWriter_method_callback_connectNotify,
  disconnectNotify: cQPdfWriter_method_callback_disconnectNotify,
  setPageLayout: cQPdfWriter_method_callback_setPageLayout,
  setPageSize: cQPdfWriter_method_callback_setPageSize,
  setPageOrientation: cQPdfWriter_method_callback_setPageOrientation,
  setPageMargins: cQPdfWriter_method_callback_setPageMargins,
  setPageRanges: cQPdfWriter_method_callback_setPageRanges,
  devType: cQPdfWriter_method_callback_devType,
  initPainter: cQPdfWriter_method_callback_initPainter,
  redirected: cQPdfWriter_method_callback_redirected,
  sharedPainter: cQPdfWriter_method_callback_sharedPainter,
)
proc create*(T: type gen_qpdfwriter_types.QPdfWriter,
    filename: openArray[char],
    inst: VirtualQPdfWriter) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfWriter_new(addr(cQPdfWriter_mvtbl), addr(inst[]), struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))))
  inst[].owned = true

proc create*(T: type gen_qpdfwriter_types.QPdfWriter,
    device: gen_qiodevice_types.QIODevice,
    inst: VirtualQPdfWriter) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfWriter_new2(addr(cQPdfWriter_mvtbl), addr(inst[]), device.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qpdfwriter_types.QPdfWriter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfWriter_staticMetaObject())
