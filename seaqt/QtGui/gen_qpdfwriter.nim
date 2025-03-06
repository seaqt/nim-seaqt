import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
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

proc fcQPdfWriter_metaObject(self: pointer, ): pointer {.importc: "QPdfWriter_metaObject".}
proc fcQPdfWriter_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfWriter_metacast".}
proc fcQPdfWriter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfWriter_metacall".}
proc fcQPdfWriter_tr(s: cstring): struct_miqt_string {.importc: "QPdfWriter_tr".}
proc fcQPdfWriter_setPdfVersion(self: pointer, version: cint): void {.importc: "QPdfWriter_setPdfVersion".}
proc fcQPdfWriter_pdfVersion(self: pointer, ): cint {.importc: "QPdfWriter_pdfVersion".}
proc fcQPdfWriter_title(self: pointer, ): struct_miqt_string {.importc: "QPdfWriter_title".}
proc fcQPdfWriter_setTitle(self: pointer, title: struct_miqt_string): void {.importc: "QPdfWriter_setTitle".}
proc fcQPdfWriter_creator(self: pointer, ): struct_miqt_string {.importc: "QPdfWriter_creator".}
proc fcQPdfWriter_setCreator(self: pointer, creator: struct_miqt_string): void {.importc: "QPdfWriter_setCreator".}
proc fcQPdfWriter_newPage(self: pointer, ): bool {.importc: "QPdfWriter_newPage".}
proc fcQPdfWriter_setResolution(self: pointer, resolution: cint): void {.importc: "QPdfWriter_setResolution".}
proc fcQPdfWriter_resolution(self: pointer, ): cint {.importc: "QPdfWriter_resolution".}
proc fcQPdfWriter_setDocumentXmpMetadata(self: pointer, xmpMetadata: struct_miqt_string): void {.importc: "QPdfWriter_setDocumentXmpMetadata".}
proc fcQPdfWriter_documentXmpMetadata(self: pointer, ): struct_miqt_string {.importc: "QPdfWriter_documentXmpMetadata".}
proc fcQPdfWriter_addFileAttachment(self: pointer, fileName: struct_miqt_string, data: struct_miqt_string): void {.importc: "QPdfWriter_addFileAttachment".}
proc fcQPdfWriter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPdfWriter_tr2".}
proc fcQPdfWriter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPdfWriter_tr3".}
proc fcQPdfWriter_addFileAttachment3(self: pointer, fileName: struct_miqt_string, data: struct_miqt_string, mimeType: struct_miqt_string): void {.importc: "QPdfWriter_addFileAttachment3".}
type cQPdfWriterVTable = object
  destructor*: proc(vtbl: ptr cQPdfWriterVTable, self: ptr cQPdfWriter) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  newPage*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, id: cint): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  setPageLayout*: proc(vtbl, self: pointer, pageLayout: pointer): bool {.cdecl, raises: [], gcsafe.}
  setPageSize*: proc(vtbl, self: pointer, pageSize: pointer): bool {.cdecl, raises: [], gcsafe.}
  setPageOrientation*: proc(vtbl, self: pointer, orientation: cint): bool {.cdecl, raises: [], gcsafe.}
  setPageMargins*: proc(vtbl, self: pointer, margins: pointer, units: cint): bool {.cdecl, raises: [], gcsafe.}
  setPageRanges*: proc(vtbl, self: pointer, ranges: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQPdfWriter_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QPdfWriter_virtualbase_metaObject".}
proc fcQPdfWriter_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfWriter_virtualbase_metacast".}
proc fcQPdfWriter_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfWriter_virtualbase_metacall".}
proc fcQPdfWriter_virtualbase_newPage(self: pointer, ): bool {.importc: "QPdfWriter_virtualbase_newPage".}
proc fcQPdfWriter_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QPdfWriter_virtualbase_paintEngine".}
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
proc fcQPdfWriter_virtualbase_devType(self: pointer, ): cint {.importc: "QPdfWriter_virtualbase_devType".}
proc fcQPdfWriter_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QPdfWriter_virtualbase_initPainter".}
proc fcQPdfWriter_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QPdfWriter_virtualbase_redirected".}
proc fcQPdfWriter_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QPdfWriter_virtualbase_sharedPainter".}
proc fcQPdfWriter_protectedbase_sender(self: pointer, ): pointer {.importc: "QPdfWriter_protectedbase_sender".}
proc fcQPdfWriter_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QPdfWriter_protectedbase_senderSignalIndex".}
proc fcQPdfWriter_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPdfWriter_protectedbase_receivers".}
proc fcQPdfWriter_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPdfWriter_protectedbase_isSignalConnected".}
proc fcQPdfWriter_new(vtbl: pointer, filename: struct_miqt_string): ptr cQPdfWriter {.importc: "QPdfWriter_new".}
proc fcQPdfWriter_new2(vtbl: pointer, device: pointer): ptr cQPdfWriter {.importc: "QPdfWriter_new2".}
proc fcQPdfWriter_staticMetaObject(): pointer {.importc: "QPdfWriter_staticMetaObject".}
proc fcQPdfWriter_delete(self: pointer) {.importc: "QPdfWriter_delete".}

proc metaObject*(self: gen_qpdfwriter_types.QPdfWriter, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfWriter_metaObject(self.h))

proc metacast*(self: gen_qpdfwriter_types.QPdfWriter, param1: cstring): pointer =
  fcQPdfWriter_metacast(self.h, param1)

proc metacall*(self: gen_qpdfwriter_types.QPdfWriter, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfWriter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpdfwriter_types.QPdfWriter, s: cstring): string =
  let v_ms = fcQPdfWriter_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPdfVersion*(self: gen_qpdfwriter_types.QPdfWriter, version: cint): void =
  fcQPdfWriter_setPdfVersion(self.h, cint(version))

proc pdfVersion*(self: gen_qpdfwriter_types.QPdfWriter, ): cint =
  cint(fcQPdfWriter_pdfVersion(self.h))

proc title*(self: gen_qpdfwriter_types.QPdfWriter, ): string =
  let v_ms = fcQPdfWriter_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTitle*(self: gen_qpdfwriter_types.QPdfWriter, title: string): void =
  fcQPdfWriter_setTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc creator*(self: gen_qpdfwriter_types.QPdfWriter, ): string =
  let v_ms = fcQPdfWriter_creator(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCreator*(self: gen_qpdfwriter_types.QPdfWriter, creator: string): void =
  fcQPdfWriter_setCreator(self.h, struct_miqt_string(data: creator, len: csize_t(len(creator))))

proc newPage*(self: gen_qpdfwriter_types.QPdfWriter, ): bool =
  fcQPdfWriter_newPage(self.h)

proc setResolution*(self: gen_qpdfwriter_types.QPdfWriter, resolution: cint): void =
  fcQPdfWriter_setResolution(self.h, resolution)

proc resolution*(self: gen_qpdfwriter_types.QPdfWriter, ): cint =
  fcQPdfWriter_resolution(self.h)

proc setDocumentXmpMetadata*(self: gen_qpdfwriter_types.QPdfWriter, xmpMetadata: seq[byte]): void =
  fcQPdfWriter_setDocumentXmpMetadata(self.h, struct_miqt_string(data: cast[cstring](if len(xmpMetadata) == 0: nil else: unsafeAddr xmpMetadata[0]), len: csize_t(len(xmpMetadata))))

proc documentXmpMetadata*(self: gen_qpdfwriter_types.QPdfWriter, ): seq[byte] =
  var v_bytearray = fcQPdfWriter_documentXmpMetadata(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc addFileAttachment*(self: gen_qpdfwriter_types.QPdfWriter, fileName: string, data: seq[byte]): void =
  fcQPdfWriter_addFileAttachment(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc tr*(_: type gen_qpdfwriter_types.QPdfWriter, s: cstring, c: cstring): string =
  let v_ms = fcQPdfWriter_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpdfwriter_types.QPdfWriter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPdfWriter_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addFileAttachment*(self: gen_qpdfwriter_types.QPdfWriter, fileName: string, data: seq[byte], mimeType: string): void =
  fcQPdfWriter_addFileAttachment3(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))))

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
type QPdfWriterVTable* = object
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
proc QPdfWritermetaObject*(self: gen_qpdfwriter_types.QPdfWriter, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfWriter_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQPdfWriter_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QPdfWritermetacast*(self: gen_qpdfwriter_types.QPdfWriter, param1: cstring): pointer =
  fcQPdfWriter_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQPdfWriter_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPdfWritermetacall*(self: gen_qpdfwriter_types.QPdfWriter, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfWriter_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQPdfWriter_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPdfWriternewPage*(self: gen_qpdfwriter_types.QPdfWriter, ): bool =
  fcQPdfWriter_virtualbase_newPage(self.h)

proc miqt_exec_callback_cQPdfWriter_newPage(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  var virtualReturn = vtbl[].newPage(self)
  virtualReturn

proc QPdfWriterpaintEngine*(self: gen_qpdfwriter_types.QPdfWriter, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPdfWriter_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQPdfWriter_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QPdfWritermetric*(self: gen_qpdfwriter_types.QPdfWriter, id: cint): cint =
  fcQPdfWriter_virtualbase_metric(self.h, cint(id))

proc miqt_exec_callback_cQPdfWriter_metric(vtbl: pointer, self: pointer, id: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  let slotval1 = cint(id)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QPdfWriterevent*(self: gen_qpdfwriter_types.QPdfWriter, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfWriter_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQPdfWriter_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPdfWritereventFilter*(self: gen_qpdfwriter_types.QPdfWriter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfWriter_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQPdfWriter_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPdfWritertimerEvent*(self: gen_qpdfwriter_types.QPdfWriter, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPdfWriter_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQPdfWriter_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QPdfWriterchildEvent*(self: gen_qpdfwriter_types.QPdfWriter, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPdfWriter_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQPdfWriter_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QPdfWritercustomEvent*(self: gen_qpdfwriter_types.QPdfWriter, event: gen_qcoreevent_types.QEvent): void =
  fcQPdfWriter_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQPdfWriter_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QPdfWriterconnectNotify*(self: gen_qpdfwriter_types.QPdfWriter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfWriter_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPdfWriter_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QPdfWriterdisconnectNotify*(self: gen_qpdfwriter_types.QPdfWriter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfWriter_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPdfWriter_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc QPdfWritersetPageLayout*(self: gen_qpdfwriter_types.QPdfWriter, pageLayout: gen_qpagelayout_types.QPageLayout): bool =
  fcQPdfWriter_virtualbase_setPageLayout(self.h, pageLayout.h)

proc miqt_exec_callback_cQPdfWriter_setPageLayout(vtbl: pointer, self: pointer, pageLayout: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qpagelayout_types.QPageLayout(h: pageLayout)
  var virtualReturn = vtbl[].setPageLayout(self, slotval1)
  virtualReturn

proc QPdfWritersetPageSize*(self: gen_qpdfwriter_types.QPdfWriter, pageSize: gen_qpagesize_types.QPageSize): bool =
  fcQPdfWriter_virtualbase_setPageSize(self.h, pageSize.h)

proc miqt_exec_callback_cQPdfWriter_setPageSize(vtbl: pointer, self: pointer, pageSize: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qpagesize_types.QPageSize(h: pageSize)
  var virtualReturn = vtbl[].setPageSize(self, slotval1)
  virtualReturn

proc QPdfWritersetPageOrientation*(self: gen_qpdfwriter_types.QPdfWriter, orientation: cint): bool =
  fcQPdfWriter_virtualbase_setPageOrientation(self.h, cint(orientation))

proc miqt_exec_callback_cQPdfWriter_setPageOrientation(vtbl: pointer, self: pointer, orientation: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  let slotval1 = cint(orientation)
  var virtualReturn = vtbl[].setPageOrientation(self, slotval1)
  virtualReturn

proc QPdfWritersetPageMargins*(self: gen_qpdfwriter_types.QPdfWriter, margins: gen_qmargins_types.QMarginsF, units: cint): bool =
  fcQPdfWriter_virtualbase_setPageMargins(self.h, margins.h, cint(units))

proc miqt_exec_callback_cQPdfWriter_setPageMargins(vtbl: pointer, self: pointer, margins: pointer, units: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qmargins_types.QMarginsF(h: margins)
  let slotval2 = cint(units)
  var virtualReturn = vtbl[].setPageMargins(self, slotval1, slotval2)
  virtualReturn

proc QPdfWritersetPageRanges*(self: gen_qpdfwriter_types.QPdfWriter, ranges: gen_qpageranges_types.QPageRanges): void =
  fcQPdfWriter_virtualbase_setPageRanges(self.h, ranges.h)

proc miqt_exec_callback_cQPdfWriter_setPageRanges(vtbl: pointer, self: pointer, ranges: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qpageranges_types.QPageRanges(h: ranges)
  vtbl[].setPageRanges(self, slotval1)

proc QPdfWriterdevType*(self: gen_qpdfwriter_types.QPdfWriter, ): cint =
  fcQPdfWriter_virtualbase_devType(self.h)

proc miqt_exec_callback_cQPdfWriter_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QPdfWriterinitPainter*(self: gen_qpdfwriter_types.QPdfWriter, painter: gen_qpainter_types.QPainter): void =
  fcQPdfWriter_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQPdfWriter_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QPdfWriterredirected*(self: gen_qpdfwriter_types.QPdfWriter, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPdfWriter_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQPdfWriter_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QPdfWritersharedPainter*(self: gen_qpdfwriter_types.QPdfWriter, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPdfWriter_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQPdfWriter_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfWriterVTable](vtbl)
  let self = QPdfWriter(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc sender*(self: gen_qpdfwriter_types.QPdfWriter, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPdfWriter_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qpdfwriter_types.QPdfWriter, ): cint =
  fcQPdfWriter_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpdfwriter_types.QPdfWriter, signal: cstring): cint =
  fcQPdfWriter_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpdfwriter_types.QPdfWriter, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPdfWriter_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpdfwriter_types.QPdfWriter,
    filename: string,
    vtbl: ref QPdfWriterVTable = nil): gen_qpdfwriter_types.QPdfWriter =
  let vtbl = if vtbl == nil: new QPdfWriterVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPdfWriterVTable, _: ptr cQPdfWriter) {.cdecl.} =
    let vtbl = cast[ref QPdfWriterVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPdfWriter_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPdfWriter_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPdfWriter_metacall
  if not isNil(vtbl.newPage):
    vtbl[].vtbl.newPage = miqt_exec_callback_cQPdfWriter_newPage
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPdfWriter_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPdfWriter_metric
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPdfWriter_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPdfWriter_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPdfWriter_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPdfWriter_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPdfWriter_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPdfWriter_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPdfWriter_disconnectNotify
  if not isNil(vtbl.setPageLayout):
    vtbl[].vtbl.setPageLayout = miqt_exec_callback_cQPdfWriter_setPageLayout
  if not isNil(vtbl.setPageSize):
    vtbl[].vtbl.setPageSize = miqt_exec_callback_cQPdfWriter_setPageSize
  if not isNil(vtbl.setPageOrientation):
    vtbl[].vtbl.setPageOrientation = miqt_exec_callback_cQPdfWriter_setPageOrientation
  if not isNil(vtbl.setPageMargins):
    vtbl[].vtbl.setPageMargins = miqt_exec_callback_cQPdfWriter_setPageMargins
  if not isNil(vtbl.setPageRanges):
    vtbl[].vtbl.setPageRanges = miqt_exec_callback_cQPdfWriter_setPageRanges
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPdfWriter_devType
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPdfWriter_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPdfWriter_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPdfWriter_sharedPainter
  gen_qpdfwriter_types.QPdfWriter(h: fcQPdfWriter_new(addr(vtbl[]), struct_miqt_string(data: filename, len: csize_t(len(filename)))))

proc create*(T: type gen_qpdfwriter_types.QPdfWriter,
    device: gen_qiodevice_types.QIODevice,
    vtbl: ref QPdfWriterVTable = nil): gen_qpdfwriter_types.QPdfWriter =
  let vtbl = if vtbl == nil: new QPdfWriterVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPdfWriterVTable, _: ptr cQPdfWriter) {.cdecl.} =
    let vtbl = cast[ref QPdfWriterVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPdfWriter_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPdfWriter_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPdfWriter_metacall
  if not isNil(vtbl.newPage):
    vtbl[].vtbl.newPage = miqt_exec_callback_cQPdfWriter_newPage
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPdfWriter_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPdfWriter_metric
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPdfWriter_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPdfWriter_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPdfWriter_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPdfWriter_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPdfWriter_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPdfWriter_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPdfWriter_disconnectNotify
  if not isNil(vtbl.setPageLayout):
    vtbl[].vtbl.setPageLayout = miqt_exec_callback_cQPdfWriter_setPageLayout
  if not isNil(vtbl.setPageSize):
    vtbl[].vtbl.setPageSize = miqt_exec_callback_cQPdfWriter_setPageSize
  if not isNil(vtbl.setPageOrientation):
    vtbl[].vtbl.setPageOrientation = miqt_exec_callback_cQPdfWriter_setPageOrientation
  if not isNil(vtbl.setPageMargins):
    vtbl[].vtbl.setPageMargins = miqt_exec_callback_cQPdfWriter_setPageMargins
  if not isNil(vtbl.setPageRanges):
    vtbl[].vtbl.setPageRanges = miqt_exec_callback_cQPdfWriter_setPageRanges
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPdfWriter_devType
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPdfWriter_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPdfWriter_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPdfWriter_sharedPainter
  gen_qpdfwriter_types.QPdfWriter(h: fcQPdfWriter_new2(addr(vtbl[]), device.h))

proc staticMetaObject*(_: type gen_qpdfwriter_types.QPdfWriter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfWriter_staticMetaObject())
proc delete*(self: gen_qpdfwriter_types.QPdfWriter) =
  fcQPdfWriter_delete(self.h)
