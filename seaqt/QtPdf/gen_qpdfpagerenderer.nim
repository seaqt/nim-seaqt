import ./qtpdf_pkg

{.push raises: [].}

from system/ansi_c import c_free

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qpdfpagerenderer.cpp", QtPdfCFlags).}


type QPdfPageRendererRenderModeEnum* = distinct cint
template MultiThreaded*(_: type QPdfPageRendererRenderModeEnum): untyped = 0
template SingleThreaded*(_: type QPdfPageRendererRenderModeEnum): untyped = 1


import ./gen_qpdfpagerenderer_types
export gen_qpdfpagerenderer_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ../QtGui/gen_qimage_types,
  ./gen_qpdfdocument_types,
  ./gen_qpdfdocumentrenderoptions_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qimage_types,
  gen_qpdfdocument_types,
  gen_qpdfdocumentrenderoptions_types

type cQPdfPageRenderer*{.exportc: "QPdfPageRenderer", incompleteStruct.} = object

proc fcQPdfPageRenderer_metaObject(self: pointer): pointer {.importc: "QPdfPageRenderer_metaObject".}
proc fcQPdfPageRenderer_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfPageRenderer_metacast".}
proc fcQPdfPageRenderer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfPageRenderer_metacall".}
proc fcQPdfPageRenderer_tr(s: cstring): struct_seaqt_string {.importc: "QPdfPageRenderer_tr".}
proc fcQPdfPageRenderer_renderMode(self: pointer): cint {.importc: "QPdfPageRenderer_renderMode".}
proc fcQPdfPageRenderer_setRenderMode(self: pointer, mode: cint): void {.importc: "QPdfPageRenderer_setRenderMode".}
proc fcQPdfPageRenderer_document(self: pointer): pointer {.importc: "QPdfPageRenderer_document".}
proc fcQPdfPageRenderer_setDocument(self: pointer, document: pointer): void {.importc: "QPdfPageRenderer_setDocument".}
proc fcQPdfPageRenderer_requestPage(self: pointer, pageNumber: cint, imageSize: pointer): culonglong {.importc: "QPdfPageRenderer_requestPage".}
proc fcQPdfPageRenderer_documentChanged(self: pointer, document: pointer): void {.importc: "QPdfPageRenderer_documentChanged".}
proc fcQPdfPageRenderer_connect_documentChanged(self: pointer, slot: int, callback: proc (slot: int, document: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfPageRenderer_connect_documentChanged".}
proc fcQPdfPageRenderer_renderModeChanged(self: pointer, renderMode: cint): void {.importc: "QPdfPageRenderer_renderModeChanged".}
proc fcQPdfPageRenderer_connect_renderModeChanged(self: pointer, slot: int, callback: proc (slot: int, renderMode: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfPageRenderer_connect_renderModeChanged".}
proc fcQPdfPageRenderer_pageRendered(self: pointer, pageNumber: cint, imageSize: pointer, image: pointer, options: pointer, requestId: culonglong): void {.importc: "QPdfPageRenderer_pageRendered".}
proc fcQPdfPageRenderer_connect_pageRendered(self: pointer, slot: int, callback: proc (slot: int, pageNumber: cint, imageSize: pointer, image: pointer, options: pointer, requestId: culonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfPageRenderer_connect_pageRendered".}
proc fcQPdfPageRenderer_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QPdfPageRenderer_tr2".}
proc fcQPdfPageRenderer_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QPdfPageRenderer_tr3".}
proc fcQPdfPageRenderer_requestPage2(self: pointer, pageNumber: cint, imageSize: pointer, options: pointer): culonglong {.importc: "QPdfPageRenderer_requestPage2".}
proc fcQPdfPageRenderer_vdata(self: pointer): ptr pointer {.importc: "QPdfPageRenderer_vdata".}
proc fvdata_cQPdfPageRenderer(self: pointer): pointer {.importc: "vdata_QPdfPageRenderer".}

type cQPdfPageRendererVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPdfPageRenderer_virtualbase_metaObject(self: pointer): pointer {.importc: "QPdfPageRenderer_virtualbase_metaObject".}
proc fcQPdfPageRenderer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfPageRenderer_virtualbase_metacast".}
proc fcQPdfPageRenderer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfPageRenderer_virtualbase_metacall".}
proc fcQPdfPageRenderer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPdfPageRenderer_virtualbase_event".}
proc fcQPdfPageRenderer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPdfPageRenderer_virtualbase_eventFilter".}
proc fcQPdfPageRenderer_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPdfPageRenderer_virtualbase_timerEvent".}
proc fcQPdfPageRenderer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPdfPageRenderer_virtualbase_childEvent".}
proc fcQPdfPageRenderer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPdfPageRenderer_virtualbase_customEvent".}
proc fcQPdfPageRenderer_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPdfPageRenderer_virtualbase_connectNotify".}
proc fcQPdfPageRenderer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPdfPageRenderer_virtualbase_disconnectNotify".}
proc fcQPdfPageRenderer_protectedbase_sender(self: pointer): pointer {.importc: "QPdfPageRenderer_protectedbase_sender".}
proc fcQPdfPageRenderer_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPdfPageRenderer_protectedbase_senderSignalIndex".}
proc fcQPdfPageRenderer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPdfPageRenderer_protectedbase_receivers".}
proc fcQPdfPageRenderer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPdfPageRenderer_protectedbase_isSignalConnected".}
proc fcQPdfPageRenderer_new(vtbl: pointer, vdata: csize_t): ptr cQPdfPageRenderer {.importc: "QPdfPageRenderer_new".}
proc fcQPdfPageRenderer_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQPdfPageRenderer {.importc: "QPdfPageRenderer_new2".}
proc fcQPdfPageRenderer_staticMetaObject(): pointer {.importc: "QPdfPageRenderer_staticMetaObject".}
proc fcQPdfPageRenderer_delete(self: pointer) {.importc: "QPdfPageRenderer_delete".}

proc metaObject*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfPageRenderer_metaObject(self.h))

proc metacast*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, param1: cstring): pointer =
  fcQPdfPageRenderer_metacast(self.h, param1)

proc metacall*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfPageRenderer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpdfpagerenderer_types.QPdfPageRenderer, s: cstring): string =
  let v_ms = fcQPdfPageRenderer_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc renderMode*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer): cint =
  cint(fcQPdfPageRenderer_renderMode(self.h))

proc setRenderMode*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, mode: cint): void =
  fcQPdfPageRenderer_setRenderMode(self.h, cint(mode))

proc document*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer): gen_qpdfdocument_types.QPdfDocument =
  gen_qpdfdocument_types.QPdfDocument(h: fcQPdfPageRenderer_document(self.h))

proc setDocument*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, document: gen_qpdfdocument_types.QPdfDocument): void =
  fcQPdfPageRenderer_setDocument(self.h, document.h)

proc requestPage*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, pageNumber: cint, imageSize: gen_qsize_types.QSize): culonglong =
  fcQPdfPageRenderer_requestPage(self.h, pageNumber, imageSize.h)

proc documentChanged*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, document: gen_qpdfdocument_types.QPdfDocument): void =
  fcQPdfPageRenderer_documentChanged(self.h, document.h)

type QPdfPageRendererdocumentChangedSlot* = proc(document: gen_qpdfdocument_types.QPdfDocument)
proc fcQPdfPageRenderer_slot_callback_documentChanged(slot: int, document: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QPdfPageRendererdocumentChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qpdfdocument_types.QPdfDocument(h: document)

  nimfunc[](slotval1)

proc fcQPdfPageRenderer_slot_callback_documentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfPageRendererdocumentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDocumentChanged*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, slot: QPdfPageRendererdocumentChangedSlot) =
  var tmp = new QPdfPageRendererdocumentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfPageRenderer_connect_documentChanged(self.h, cast[int](addr tmp[]), fcQPdfPageRenderer_slot_callback_documentChanged, fcQPdfPageRenderer_slot_callback_documentChanged_release)

proc renderModeChanged*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, renderMode: cint): void =
  fcQPdfPageRenderer_renderModeChanged(self.h, cint(renderMode))

type QPdfPageRendererrenderModeChangedSlot* = proc(renderMode: cint)
proc fcQPdfPageRenderer_slot_callback_renderModeChanged(slot: int, renderMode: cint) {.cdecl.} =
  let nimfunc = cast[ptr QPdfPageRendererrenderModeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(renderMode)

  nimfunc[](slotval1)

proc fcQPdfPageRenderer_slot_callback_renderModeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfPageRendererrenderModeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRenderModeChanged*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, slot: QPdfPageRendererrenderModeChangedSlot) =
  var tmp = new QPdfPageRendererrenderModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfPageRenderer_connect_renderModeChanged(self.h, cast[int](addr tmp[]), fcQPdfPageRenderer_slot_callback_renderModeChanged, fcQPdfPageRenderer_slot_callback_renderModeChanged_release)

proc pageRendered*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, pageNumber: cint, imageSize: gen_qsize_types.QSize, image: gen_qimage_types.QImage, options: gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions, requestId: culonglong): void =
  fcQPdfPageRenderer_pageRendered(self.h, pageNumber, imageSize.h, image.h, options.h, requestId)

type QPdfPageRendererpageRenderedSlot* = proc(pageNumber: cint, imageSize: gen_qsize_types.QSize, image: gen_qimage_types.QImage, options: gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions, requestId: culonglong)
proc fcQPdfPageRenderer_slot_callback_pageRendered(slot: int, pageNumber: cint, imageSize: pointer, image: pointer, options: pointer, requestId: culonglong) {.cdecl.} =
  let nimfunc = cast[ptr QPdfPageRendererpageRenderedSlot](cast[pointer](slot))
  let slotval1 = pageNumber

  let slotval2 = gen_qsize_types.QSize(h: imageSize)

  let slotval3 = gen_qimage_types.QImage(h: image)

  let slotval4 = gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions(h: options)

  let slotval5 = requestId

  nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5)

proc fcQPdfPageRenderer_slot_callback_pageRendered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfPageRendererpageRenderedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPageRendered*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, slot: QPdfPageRendererpageRenderedSlot) =
  var tmp = new QPdfPageRendererpageRenderedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfPageRenderer_connect_pageRendered(self.h, cast[int](addr tmp[]), fcQPdfPageRenderer_slot_callback_pageRendered, fcQPdfPageRenderer_slot_callback_pageRendered_release)

proc tr*(_: type gen_qpdfpagerenderer_types.QPdfPageRenderer, s: cstring, c: cstring): string =
  let v_ms = fcQPdfPageRenderer_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpdfpagerenderer_types.QPdfPageRenderer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPdfPageRenderer_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc requestPage*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, pageNumber: cint, imageSize: gen_qsize_types.QSize, options: gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions): culonglong =
  fcQPdfPageRenderer_requestPage2(self.h, pageNumber, imageSize.h, options.h)

type QPdfPageRenderermetaObjectProc* = proc(self: QPdfPageRenderer): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPdfPageRenderermetacastProc* = proc(self: QPdfPageRenderer, param1: cstring): pointer {.raises: [], gcsafe.}
type QPdfPageRenderermetacallProc* = proc(self: QPdfPageRenderer, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPdfPageRenderereventProc* = proc(self: QPdfPageRenderer, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfPageRenderereventFilterProc* = proc(self: QPdfPageRenderer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfPageRenderertimerEventProc* = proc(self: QPdfPageRenderer, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPdfPageRendererchildEventProc* = proc(self: QPdfPageRenderer, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPdfPageRenderercustomEventProc* = proc(self: QPdfPageRenderer, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPdfPageRendererconnectNotifyProc* = proc(self: QPdfPageRenderer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPdfPageRendererdisconnectNotifyProc* = proc(self: QPdfPageRenderer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPdfPageRendererVTable* = object
  vtbl: cQPdfPageRendererVTable
  metaObject*: QPdfPageRenderermetaObjectProc
  metacast*: QPdfPageRenderermetacastProc
  metacall*: QPdfPageRenderermetacallProc
  event*: QPdfPageRenderereventProc
  eventFilter*: QPdfPageRenderereventFilterProc
  timerEvent*: QPdfPageRenderertimerEventProc
  childEvent*: QPdfPageRendererchildEventProc
  customEvent*: QPdfPageRenderercustomEventProc
  connectNotify*: QPdfPageRendererconnectNotifyProc
  disconnectNotify*: QPdfPageRendererdisconnectNotifyProc

proc QPdfPageRenderermetaObject*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfPageRenderer_virtualbase_metaObject(self.h))

proc QPdfPageRenderermetacast*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, param1: cstring): pointer =
  fcQPdfPageRenderer_virtualbase_metacast(self.h, param1)

proc QPdfPageRenderermetacall*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfPageRenderer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QPdfPageRendererevent*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfPageRenderer_virtualbase_event(self.h, event.h)

proc QPdfPageRenderereventFilter*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfPageRenderer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QPdfPageRenderertimerEvent*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPdfPageRenderer_virtualbase_timerEvent(self.h, event.h)

proc QPdfPageRendererchildEvent*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPdfPageRenderer_virtualbase_childEvent(self.h, event.h)

proc QPdfPageRenderercustomEvent*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, event: gen_qcoreevent_types.QEvent): void =
  fcQPdfPageRenderer_virtualbase_customEvent(self.h, event.h)

proc QPdfPageRendererconnectNotify*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfPageRenderer_virtualbase_connectNotify(self.h, signal.h)

proc QPdfPageRendererdisconnectNotify*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfPageRenderer_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQPdfPageRenderer_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfPageRendererVTable](fcQPdfPageRenderer_vdata(self)[])
  let self = QPdfPageRenderer(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc fcQPdfPageRenderer_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfPageRendererVTable](fcQPdfPageRenderer_vdata(self)[])
  let self = QPdfPageRenderer(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQPdfPageRenderer_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfPageRendererVTable](fcQPdfPageRenderer_vdata(self)[])
  let self = QPdfPageRenderer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfPageRenderer_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfPageRendererVTable](fcQPdfPageRenderer_vdata(self)[])
  let self = QPdfPageRenderer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQPdfPageRenderer_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfPageRendererVTable](fcQPdfPageRenderer_vdata(self)[])
  let self = QPdfPageRenderer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQPdfPageRenderer_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageRendererVTable](fcQPdfPageRenderer_vdata(self)[])
  let self = QPdfPageRenderer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc fcQPdfPageRenderer_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageRendererVTable](fcQPdfPageRenderer_vdata(self)[])
  let self = QPdfPageRenderer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc fcQPdfPageRenderer_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageRendererVTable](fcQPdfPageRenderer_vdata(self)[])
  let self = QPdfPageRenderer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc fcQPdfPageRenderer_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageRendererVTable](fcQPdfPageRenderer_vdata(self)[])
  let self = QPdfPageRenderer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc fcQPdfPageRenderer_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfPageRendererVTable](fcQPdfPageRenderer_vdata(self)[])
  let self = QPdfPageRenderer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPdfPageRenderer* {.inheritable.} = ref object of QPdfPageRenderer
  vtbl*: cQPdfPageRendererVTable

method metaObject*(self: VirtualQPdfPageRenderer): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPdfPageRenderermetaObject(self[])
method metacast*(self: VirtualQPdfPageRenderer, param1: cstring): pointer {.base.} =
  QPdfPageRenderermetacast(self[], param1)
method metacall*(self: VirtualQPdfPageRenderer, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPdfPageRenderermetacall(self[], param1, param2, param3)
method event*(self: VirtualQPdfPageRenderer, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfPageRendererevent(self[], event)
method eventFilter*(self: VirtualQPdfPageRenderer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfPageRenderereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQPdfPageRenderer, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPdfPageRenderertimerEvent(self[], event)
method childEvent*(self: VirtualQPdfPageRenderer, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPdfPageRendererchildEvent(self[], event)
method customEvent*(self: VirtualQPdfPageRenderer, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPdfPageRenderercustomEvent(self[], event)
method connectNotify*(self: VirtualQPdfPageRenderer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfPageRendererconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQPdfPageRenderer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfPageRendererdisconnectNotify(self[], signal)

proc fcQPdfPageRenderer_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfPageRenderer](fcQPdfPageRenderer_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.h

proc fcQPdfPageRenderer_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfPageRenderer](fcQPdfPageRenderer_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQPdfPageRenderer_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfPageRenderer](fcQPdfPageRenderer_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfPageRenderer_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfPageRenderer](fcQPdfPageRenderer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQPdfPageRenderer_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfPageRenderer](fcQPdfPageRenderer_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQPdfPageRenderer_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageRenderer](fcQPdfPageRenderer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  inst.timerEvent(slotval1)

proc fcQPdfPageRenderer_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageRenderer](fcQPdfPageRenderer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  inst.childEvent(slotval1)

proc fcQPdfPageRenderer_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageRenderer](fcQPdfPageRenderer_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.customEvent(slotval1)

proc fcQPdfPageRenderer_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageRenderer](fcQPdfPageRenderer_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.connectNotify(slotval1)

proc fcQPdfPageRenderer_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfPageRenderer](fcQPdfPageRenderer_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPdfPageRenderer_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer): cint =
  fcQPdfPageRenderer_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, signal: cstring): cint =
  fcQPdfPageRenderer_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPdfPageRenderer_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpdfpagerenderer_types.QPdfPageRenderer,
    vtbl: ref QPdfPageRendererVTable = nil): gen_qpdfpagerenderer_types.QPdfPageRenderer =
  let vtbl = if vtbl == nil: new QPdfPageRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfPageRendererVTable](fcQPdfPageRenderer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfPageRenderer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfPageRenderer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfPageRenderer_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfPageRenderer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfPageRenderer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfPageRenderer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfPageRenderer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfPageRenderer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfPageRenderer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfPageRenderer_vtable_callback_disconnectNotify
  let tmp = gen_qpdfpagerenderer_types.QPdfPageRenderer(h: fcQPdfPageRenderer_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQPdfPageRenderer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qpdfpagerenderer_types.QPdfPageRenderer,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPdfPageRendererVTable = nil): gen_qpdfpagerenderer_types.QPdfPageRenderer =
  let vtbl = if vtbl == nil: new QPdfPageRendererVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfPageRendererVTable](fcQPdfPageRenderer_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfPageRenderer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfPageRenderer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfPageRenderer_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfPageRenderer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfPageRenderer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfPageRenderer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfPageRenderer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfPageRenderer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfPageRenderer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfPageRenderer_vtable_callback_disconnectNotify
  let tmp = gen_qpdfpagerenderer_types.QPdfPageRenderer(h: fcQPdfPageRenderer_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h))
  fcQPdfPageRenderer_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQPdfPageRenderer_mvtbl = cQPdfPageRendererVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPdfPageRenderer()[])](self.fcQPdfPageRenderer_vdata()[])
    inst[].h = nil,

  metaObject: fcQPdfPageRenderer_method_callback_metaObject,
  metacast: fcQPdfPageRenderer_method_callback_metacast,
  metacall: fcQPdfPageRenderer_method_callback_metacall,
  event: fcQPdfPageRenderer_method_callback_event,
  eventFilter: fcQPdfPageRenderer_method_callback_eventFilter,
  timerEvent: fcQPdfPageRenderer_method_callback_timerEvent,
  childEvent: fcQPdfPageRenderer_method_callback_childEvent,
  customEvent: fcQPdfPageRenderer_method_callback_customEvent,
  connectNotify: fcQPdfPageRenderer_method_callback_connectNotify,
  disconnectNotify: fcQPdfPageRenderer_method_callback_disconnectNotify,
)
proc create*(T: type gen_qpdfpagerenderer_types.QPdfPageRenderer,
    inst: VirtualQPdfPageRenderer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfPageRenderer_new(addr(cQPdfPageRenderer_mvtbl), csize_t(sizeof(pointer)))
  fcQPdfPageRenderer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qpdfpagerenderer_types.QPdfPageRenderer,
    parent: gen_qobject_types.QObject,
    inst: VirtualQPdfPageRenderer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfPageRenderer_new2(addr(cQPdfPageRenderer_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQPdfPageRenderer_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qpdfpagerenderer_types.QPdfPageRenderer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfPageRenderer_staticMetaObject())
proc delete*(self: gen_qpdfpagerenderer_types.QPdfPageRenderer) =
  fcQPdfPageRenderer_delete(self.h)
