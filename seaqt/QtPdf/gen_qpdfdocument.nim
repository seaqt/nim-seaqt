import ./qtpdf_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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


{.compile("gen_qpdfdocument.cpp", QtPdfCFlags).}


type QPdfDocumentStatusEnum* = distinct cint
template Null*(_: type QPdfDocumentStatusEnum): untyped = 0
template Loading*(_: type QPdfDocumentStatusEnum): untyped = 1
template Ready*(_: type QPdfDocumentStatusEnum): untyped = 2
template Unloading*(_: type QPdfDocumentStatusEnum): untyped = 3
template Error*(_: type QPdfDocumentStatusEnum): untyped = 4


type QPdfDocumentDocumentErrorEnum* = distinct cint
template NoError*(_: type QPdfDocumentDocumentErrorEnum): untyped = 0
template UnknownError*(_: type QPdfDocumentDocumentErrorEnum): untyped = 1
template DataNotYetAvailableError*(_: type QPdfDocumentDocumentErrorEnum): untyped = 2
template FileNotFoundError*(_: type QPdfDocumentDocumentErrorEnum): untyped = 3
template InvalidFileFormatError*(_: type QPdfDocumentDocumentErrorEnum): untyped = 4
template IncorrectPasswordError*(_: type QPdfDocumentDocumentErrorEnum): untyped = 5
template UnsupportedSecuritySchemeError*(_: type QPdfDocumentDocumentErrorEnum): untyped = 6


type QPdfDocumentMetaDataFieldEnum* = distinct cint
template Title*(_: type QPdfDocumentMetaDataFieldEnum): untyped = 0
template Subject*(_: type QPdfDocumentMetaDataFieldEnum): untyped = 1
template Author*(_: type QPdfDocumentMetaDataFieldEnum): untyped = 2
template Keywords*(_: type QPdfDocumentMetaDataFieldEnum): untyped = 3
template Producer*(_: type QPdfDocumentMetaDataFieldEnum): untyped = 4
template Creator*(_: type QPdfDocumentMetaDataFieldEnum): untyped = 5
template CreationDate*(_: type QPdfDocumentMetaDataFieldEnum): untyped = 6
template ModificationDate*(_: type QPdfDocumentMetaDataFieldEnum): untyped = 7


import ./gen_qpdfdocument_types
export gen_qpdfdocument_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qimage_types,
  ./gen_qpdfdocumentrenderoptions_types,
  ./gen_qpdfselection_types
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qimage_types,
  gen_qpdfdocumentrenderoptions_types,
  gen_qpdfselection_types

type cQPdfDocument*{.exportc: "QPdfDocument", incompleteStruct.} = object

proc fcQPdfDocument_metaObject(self: pointer): pointer {.importc: "QPdfDocument_metaObject".}
proc fcQPdfDocument_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfDocument_metacast".}
proc fcQPdfDocument_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfDocument_metacall".}
proc fcQPdfDocument_tr(s: cstring): struct_seaqt_string {.importc: "QPdfDocument_tr".}
proc fcQPdfDocument_trUtf8(s: cstring): struct_seaqt_string {.importc: "QPdfDocument_trUtf8".}
proc fcQPdfDocument_load(self: pointer, fileName: struct_seaqt_string): cint {.importc: "QPdfDocument_load".}
proc fcQPdfDocument_status(self: pointer): cint {.importc: "QPdfDocument_status".}
proc fcQPdfDocument_loadWithDevice(self: pointer, device: pointer): void {.importc: "QPdfDocument_loadWithDevice".}
proc fcQPdfDocument_setPassword(self: pointer, password: struct_seaqt_string): void {.importc: "QPdfDocument_setPassword".}
proc fcQPdfDocument_password(self: pointer): struct_seaqt_string {.importc: "QPdfDocument_password".}
proc fcQPdfDocument_metaData(self: pointer, field: cint): pointer {.importc: "QPdfDocument_metaData".}
proc fcQPdfDocument_error(self: pointer): cint {.importc: "QPdfDocument_error".}
proc fcQPdfDocument_close(self: pointer): void {.importc: "QPdfDocument_close".}
proc fcQPdfDocument_pageCount(self: pointer): cint {.importc: "QPdfDocument_pageCount".}
proc fcQPdfDocument_pageSize(self: pointer, page: cint): pointer {.importc: "QPdfDocument_pageSize".}
proc fcQPdfDocument_render(self: pointer, page: cint, imageSize: pointer): pointer {.importc: "QPdfDocument_render".}
proc fcQPdfDocument_getSelection(self: pointer, page: cint, start: pointer, endVal: pointer): pointer {.importc: "QPdfDocument_getSelection".}
proc fcQPdfDocument_getSelectionAtIndex(self: pointer, page: cint, startIndex: cint, maxLength: cint): pointer {.importc: "QPdfDocument_getSelectionAtIndex".}
proc fcQPdfDocument_getAllText(self: pointer, page: cint): pointer {.importc: "QPdfDocument_getAllText".}
proc fcQPdfDocument_passwordChanged(self: pointer): void {.importc: "QPdfDocument_passwordChanged".}
proc fcQPdfDocument_connect_passwordChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfDocument_connect_passwordChanged".}
proc fcQPdfDocument_passwordRequired(self: pointer): void {.importc: "QPdfDocument_passwordRequired".}
proc fcQPdfDocument_connect_passwordRequired(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfDocument_connect_passwordRequired".}
proc fcQPdfDocument_statusChanged(self: pointer, status: cint): void {.importc: "QPdfDocument_statusChanged".}
proc fcQPdfDocument_connect_statusChanged(self: pointer, slot: int, callback: proc (slot: int, status: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfDocument_connect_statusChanged".}
proc fcQPdfDocument_pageCountChanged(self: pointer, pageCount: cint): void {.importc: "QPdfDocument_pageCountChanged".}
proc fcQPdfDocument_connect_pageCountChanged(self: pointer, slot: int, callback: proc (slot: int, pageCount: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPdfDocument_connect_pageCountChanged".}
proc fcQPdfDocument_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QPdfDocument_tr2".}
proc fcQPdfDocument_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QPdfDocument_tr3".}
proc fcQPdfDocument_trUtf82(s: cstring, c: cstring): struct_seaqt_string {.importc: "QPdfDocument_trUtf82".}
proc fcQPdfDocument_trUtf83(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QPdfDocument_trUtf83".}
proc fcQPdfDocument_render2(self: pointer, page: cint, imageSize: pointer, options: pointer): pointer {.importc: "QPdfDocument_render2".}
proc fcQPdfDocument_vdata(self: pointer): ptr pointer {.importc: "QPdfDocument_vdata".}
proc fvdata_cQPdfDocument(self: pointer): pointer {.importc: "vdata_QPdfDocument".}

type cQPdfDocumentVTable {.pure.} = object
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
proc fcQPdfDocument_virtualbase_metaObject(self: pointer): pointer {.importc: "QPdfDocument_virtualbase_metaObject".}
proc fcQPdfDocument_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfDocument_virtualbase_metacast".}
proc fcQPdfDocument_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfDocument_virtualbase_metacall".}
proc fcQPdfDocument_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPdfDocument_virtualbase_event".}
proc fcQPdfDocument_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPdfDocument_virtualbase_eventFilter".}
proc fcQPdfDocument_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPdfDocument_virtualbase_timerEvent".}
proc fcQPdfDocument_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPdfDocument_virtualbase_childEvent".}
proc fcQPdfDocument_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPdfDocument_virtualbase_customEvent".}
proc fcQPdfDocument_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPdfDocument_virtualbase_connectNotify".}
proc fcQPdfDocument_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPdfDocument_virtualbase_disconnectNotify".}
proc fcQPdfDocument_protectedbase_sender(self: pointer): pointer {.importc: "QPdfDocument_protectedbase_sender".}
proc fcQPdfDocument_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPdfDocument_protectedbase_senderSignalIndex".}
proc fcQPdfDocument_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPdfDocument_protectedbase_receivers".}
proc fcQPdfDocument_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPdfDocument_protectedbase_isSignalConnected".}
proc fcQPdfDocument_new(vtbl: pointer, vdata: csize_t): ptr cQPdfDocument {.importc: "QPdfDocument_new".}
proc fcQPdfDocument_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQPdfDocument {.importc: "QPdfDocument_new2".}
proc fcQPdfDocument_staticMetaObject(): pointer {.importc: "QPdfDocument_staticMetaObject".}

proc metaObject*(self: gen_qpdfdocument_types.QPdfDocument): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfDocument_metaObject(self.h), owned: false)

proc metacast*(self: gen_qpdfdocument_types.QPdfDocument, param1: cstring): pointer =
  fcQPdfDocument_metacast(self.h, param1)

proc metacall*(self: gen_qpdfdocument_types.QPdfDocument, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfDocument_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpdfdocument_types.QPdfDocument, s: cstring): string =
  let v_ms = fcQPdfDocument_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpdfdocument_types.QPdfDocument, s: cstring): string =
  let v_ms = fcQPdfDocument_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc load*(self: gen_qpdfdocument_types.QPdfDocument, fileName: openArray[char]): cint =
  cint(fcQPdfDocument_load(self.h, struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName)))))

proc status*(self: gen_qpdfdocument_types.QPdfDocument): cint =
  cint(fcQPdfDocument_status(self.h))

proc load*(self: gen_qpdfdocument_types.QPdfDocument, device: gen_qiodevice_types.QIODevice): void =
  fcQPdfDocument_loadWithDevice(self.h, device.h)

proc setPassword*(self: gen_qpdfdocument_types.QPdfDocument, password: openArray[char]): void =
  fcQPdfDocument_setPassword(self.h, struct_seaqt_string(data: if len(password) > 0: addr password[0] else: nil, len: csize_t(len(password))))

proc password*(self: gen_qpdfdocument_types.QPdfDocument): string =
  let v_ms = fcQPdfDocument_password(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc metaData*(self: gen_qpdfdocument_types.QPdfDocument, field: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPdfDocument_metaData(self.h, cint(field)), owned: true)

proc error*(self: gen_qpdfdocument_types.QPdfDocument): cint =
  cint(fcQPdfDocument_error(self.h))

proc close*(self: gen_qpdfdocument_types.QPdfDocument): void =
  fcQPdfDocument_close(self.h)

proc pageCount*(self: gen_qpdfdocument_types.QPdfDocument): cint =
  fcQPdfDocument_pageCount(self.h)

proc pageSize*(self: gen_qpdfdocument_types.QPdfDocument, page: cint): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQPdfDocument_pageSize(self.h, page), owned: true)

proc render*(self: gen_qpdfdocument_types.QPdfDocument, page: cint, imageSize: gen_qsize_types.QSize): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQPdfDocument_render(self.h, page, imageSize.h), owned: true)

proc getSelection*(self: gen_qpdfdocument_types.QPdfDocument, page: cint, start: gen_qpoint_types.QPointF, endVal: gen_qpoint_types.QPointF): gen_qpdfselection_types.QPdfSelection =
  gen_qpdfselection_types.QPdfSelection(h: fcQPdfDocument_getSelection(self.h, page, start.h, endVal.h), owned: true)

proc getSelectionAtIndex*(self: gen_qpdfdocument_types.QPdfDocument, page: cint, startIndex: cint, maxLength: cint): gen_qpdfselection_types.QPdfSelection =
  gen_qpdfselection_types.QPdfSelection(h: fcQPdfDocument_getSelectionAtIndex(self.h, page, startIndex, maxLength), owned: true)

proc getAllText*(self: gen_qpdfdocument_types.QPdfDocument, page: cint): gen_qpdfselection_types.QPdfSelection =
  gen_qpdfselection_types.QPdfSelection(h: fcQPdfDocument_getAllText(self.h, page), owned: true)

proc passwordChanged*(self: gen_qpdfdocument_types.QPdfDocument): void =
  fcQPdfDocument_passwordChanged(self.h)

type QPdfDocumentpasswordChangedSlot* = proc()
proc fcQPdfDocument_slot_callback_passwordChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QPdfDocumentpasswordChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQPdfDocument_slot_callback_passwordChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfDocumentpasswordChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPasswordChanged*(self: gen_qpdfdocument_types.QPdfDocument, slot: QPdfDocumentpasswordChangedSlot) =
  var tmp = new QPdfDocumentpasswordChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfDocument_connect_passwordChanged(self.h, cast[int](addr tmp[]), fcQPdfDocument_slot_callback_passwordChanged, fcQPdfDocument_slot_callback_passwordChanged_release)

proc passwordRequired*(self: gen_qpdfdocument_types.QPdfDocument): void =
  fcQPdfDocument_passwordRequired(self.h)

type QPdfDocumentpasswordRequiredSlot* = proc()
proc fcQPdfDocument_slot_callback_passwordRequired(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QPdfDocumentpasswordRequiredSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQPdfDocument_slot_callback_passwordRequired_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfDocumentpasswordRequiredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPasswordRequired*(self: gen_qpdfdocument_types.QPdfDocument, slot: QPdfDocumentpasswordRequiredSlot) =
  var tmp = new QPdfDocumentpasswordRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfDocument_connect_passwordRequired(self.h, cast[int](addr tmp[]), fcQPdfDocument_slot_callback_passwordRequired, fcQPdfDocument_slot_callback_passwordRequired_release)

proc statusChanged*(self: gen_qpdfdocument_types.QPdfDocument, status: cint): void =
  fcQPdfDocument_statusChanged(self.h, cint(status))

type QPdfDocumentstatusChangedSlot* = proc(status: cint)
proc fcQPdfDocument_slot_callback_statusChanged(slot: int, status: cint) {.cdecl.} =
  let nimfunc = cast[ptr QPdfDocumentstatusChangedSlot](cast[pointer](slot))
  let slotval1 = cint(status)

  nimfunc[](slotval1)

proc fcQPdfDocument_slot_callback_statusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfDocumentstatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStatusChanged*(self: gen_qpdfdocument_types.QPdfDocument, slot: QPdfDocumentstatusChangedSlot) =
  var tmp = new QPdfDocumentstatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfDocument_connect_statusChanged(self.h, cast[int](addr tmp[]), fcQPdfDocument_slot_callback_statusChanged, fcQPdfDocument_slot_callback_statusChanged_release)

proc pageCountChanged*(self: gen_qpdfdocument_types.QPdfDocument, pageCount: cint): void =
  fcQPdfDocument_pageCountChanged(self.h, pageCount)

type QPdfDocumentpageCountChangedSlot* = proc(pageCount: cint)
proc fcQPdfDocument_slot_callback_pageCountChanged(slot: int, pageCount: cint) {.cdecl.} =
  let nimfunc = cast[ptr QPdfDocumentpageCountChangedSlot](cast[pointer](slot))
  let slotval1 = pageCount

  nimfunc[](slotval1)

proc fcQPdfDocument_slot_callback_pageCountChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPdfDocumentpageCountChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPageCountChanged*(self: gen_qpdfdocument_types.QPdfDocument, slot: QPdfDocumentpageCountChangedSlot) =
  var tmp = new QPdfDocumentpageCountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfDocument_connect_pageCountChanged(self.h, cast[int](addr tmp[]), fcQPdfDocument_slot_callback_pageCountChanged, fcQPdfDocument_slot_callback_pageCountChanged_release)

proc tr*(_: type gen_qpdfdocument_types.QPdfDocument, s: cstring, c: cstring): string =
  let v_ms = fcQPdfDocument_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpdfdocument_types.QPdfDocument, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPdfDocument_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpdfdocument_types.QPdfDocument, s: cstring, c: cstring): string =
  let v_ms = fcQPdfDocument_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpdfdocument_types.QPdfDocument, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPdfDocument_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc render*(self: gen_qpdfdocument_types.QPdfDocument, page: cint, imageSize: gen_qsize_types.QSize, options: gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQPdfDocument_render2(self.h, page, imageSize.h, options.h), owned: true)

type QPdfDocumentmetaObjectProc* = proc(self: QPdfDocument): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPdfDocumentmetacastProc* = proc(self: QPdfDocument, param1: cstring): pointer {.raises: [], gcsafe.}
type QPdfDocumentmetacallProc* = proc(self: QPdfDocument, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPdfDocumenteventProc* = proc(self: QPdfDocument, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfDocumenteventFilterProc* = proc(self: QPdfDocument, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPdfDocumenttimerEventProc* = proc(self: QPdfDocument, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPdfDocumentchildEventProc* = proc(self: QPdfDocument, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPdfDocumentcustomEventProc* = proc(self: QPdfDocument, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPdfDocumentconnectNotifyProc* = proc(self: QPdfDocument, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPdfDocumentdisconnectNotifyProc* = proc(self: QPdfDocument, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QPdfDocumentVTable* {.inheritable, pure.} = object
  vtbl: cQPdfDocumentVTable
  metaObject*: QPdfDocumentmetaObjectProc
  metacast*: QPdfDocumentmetacastProc
  metacall*: QPdfDocumentmetacallProc
  event*: QPdfDocumenteventProc
  eventFilter*: QPdfDocumenteventFilterProc
  timerEvent*: QPdfDocumenttimerEventProc
  childEvent*: QPdfDocumentchildEventProc
  customEvent*: QPdfDocumentcustomEventProc
  connectNotify*: QPdfDocumentconnectNotifyProc
  disconnectNotify*: QPdfDocumentdisconnectNotifyProc

proc QPdfDocumentmetaObject*(self: gen_qpdfdocument_types.QPdfDocument): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfDocument_virtualbase_metaObject(self.h), owned: false)

proc QPdfDocumentmetacast*(self: gen_qpdfdocument_types.QPdfDocument, param1: cstring): pointer =
  fcQPdfDocument_virtualbase_metacast(self.h, param1)

proc QPdfDocumentmetacall*(self: gen_qpdfdocument_types.QPdfDocument, param1: cint, param2: cint, param3: pointer): cint =
  fcQPdfDocument_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QPdfDocumentevent*(self: gen_qpdfdocument_types.QPdfDocument, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfDocument_virtualbase_event(self.h, event.h)

proc QPdfDocumenteventFilter*(self: gen_qpdfdocument_types.QPdfDocument, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPdfDocument_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QPdfDocumenttimerEvent*(self: gen_qpdfdocument_types.QPdfDocument, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPdfDocument_virtualbase_timerEvent(self.h, event.h)

proc QPdfDocumentchildEvent*(self: gen_qpdfdocument_types.QPdfDocument, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPdfDocument_virtualbase_childEvent(self.h, event.h)

proc QPdfDocumentcustomEvent*(self: gen_qpdfdocument_types.QPdfDocument, event: gen_qcoreevent_types.QEvent): void =
  fcQPdfDocument_virtualbase_customEvent(self.h, event.h)

proc QPdfDocumentconnectNotify*(self: gen_qpdfdocument_types.QPdfDocument, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfDocument_virtualbase_connectNotify(self.h, signal.h)

proc QPdfDocumentdisconnectNotify*(self: gen_qpdfdocument_types.QPdfDocument, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPdfDocument_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQPdfDocument_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfDocumentVTable](fcQPdfDocument_vdata(self)[])
  let self = QPdfDocument(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfDocument_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPdfDocumentVTable](fcQPdfDocument_vdata(self)[])
  let self = QPdfDocument(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQPdfDocument_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPdfDocumentVTable](fcQPdfDocument_vdata(self)[])
  let self = QPdfDocument(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfDocument_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfDocumentVTable](fcQPdfDocument_vdata(self)[])
  let self = QPdfDocument(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQPdfDocument_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPdfDocumentVTable](fcQPdfDocument_vdata(self)[])
  let self = QPdfDocument(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQPdfDocument_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfDocumentVTable](fcQPdfDocument_vdata(self)[])
  let self = QPdfDocument(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQPdfDocument_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfDocumentVTable](fcQPdfDocument_vdata(self)[])
  let self = QPdfDocument(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQPdfDocument_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfDocumentVTable](fcQPdfDocument_vdata(self)[])
  let self = QPdfDocument(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQPdfDocument_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfDocumentVTable](fcQPdfDocument_vdata(self)[])
  let self = QPdfDocument(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQPdfDocument_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPdfDocumentVTable](fcQPdfDocument_vdata(self)[])
  let self = QPdfDocument(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPdfDocument* {.inheritable.} = ref object of QPdfDocument
  vtbl*: cQPdfDocumentVTable

method metaObject*(self: VirtualQPdfDocument): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPdfDocumentmetaObject(self[])
method metacast*(self: VirtualQPdfDocument, param1: cstring): pointer {.base.} =
  QPdfDocumentmetacast(self[], param1)
method metacall*(self: VirtualQPdfDocument, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPdfDocumentmetacall(self[], param1, param2, param3)
method event*(self: VirtualQPdfDocument, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfDocumentevent(self[], event)
method eventFilter*(self: VirtualQPdfDocument, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPdfDocumenteventFilter(self[], watched, event)
method timerEvent*(self: VirtualQPdfDocument, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPdfDocumenttimerEvent(self[], event)
method childEvent*(self: VirtualQPdfDocument, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPdfDocumentchildEvent(self[], event)
method customEvent*(self: VirtualQPdfDocument, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPdfDocumentcustomEvent(self[], event)
method connectNotify*(self: VirtualQPdfDocument, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfDocumentconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQPdfDocument, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPdfDocumentdisconnectNotify(self[], signal)

proc fcQPdfDocument_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfDocument](fcQPdfDocument_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPdfDocument_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPdfDocument](fcQPdfDocument_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQPdfDocument_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPdfDocument](fcQPdfDocument_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPdfDocument_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfDocument](fcQPdfDocument_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQPdfDocument_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPdfDocument](fcQPdfDocument_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQPdfDocument_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfDocument](fcQPdfDocument_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQPdfDocument_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfDocument](fcQPdfDocument_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQPdfDocument_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfDocument](fcQPdfDocument_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQPdfDocument_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfDocument](fcQPdfDocument_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQPdfDocument_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPdfDocument](fcQPdfDocument_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qpdfdocument_types.QPdfDocument): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPdfDocument_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qpdfdocument_types.QPdfDocument): cint =
  fcQPdfDocument_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpdfdocument_types.QPdfDocument, signal: cstring): cint =
  fcQPdfDocument_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpdfdocument_types.QPdfDocument, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPdfDocument_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpdfdocument_types.QPdfDocument,
    vtbl: ref QPdfDocumentVTable = nil): gen_qpdfdocument_types.QPdfDocument =
  let vtbl = if vtbl == nil: new QPdfDocumentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfDocumentVTable](fcQPdfDocument_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfDocument_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfDocument_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfDocument_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfDocument_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfDocument_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfDocument_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfDocument_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfDocument_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfDocument_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfDocument_vtable_callback_disconnectNotify
  let tmp = gen_qpdfdocument_types.QPdfDocument(h: fcQPdfDocument_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQPdfDocument_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qpdfdocument_types.QPdfDocument,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPdfDocumentVTable = nil): gen_qpdfdocument_types.QPdfDocument =
  let vtbl = if vtbl == nil: new QPdfDocumentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPdfDocumentVTable](fcQPdfDocument_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPdfDocument_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPdfDocument_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPdfDocument_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPdfDocument_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPdfDocument_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPdfDocument_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPdfDocument_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPdfDocument_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPdfDocument_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPdfDocument_vtable_callback_disconnectNotify
  let tmp = gen_qpdfdocument_types.QPdfDocument(h: fcQPdfDocument_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQPdfDocument_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQPdfDocument_mvtbl = cQPdfDocumentVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPdfDocument()[])](self.fcQPdfDocument_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQPdfDocument_method_callback_metaObject,
  metacast: fcQPdfDocument_method_callback_metacast,
  metacall: fcQPdfDocument_method_callback_metacall,
  event: fcQPdfDocument_method_callback_event,
  eventFilter: fcQPdfDocument_method_callback_eventFilter,
  timerEvent: fcQPdfDocument_method_callback_timerEvent,
  childEvent: fcQPdfDocument_method_callback_childEvent,
  customEvent: fcQPdfDocument_method_callback_customEvent,
  connectNotify: fcQPdfDocument_method_callback_connectNotify,
  disconnectNotify: fcQPdfDocument_method_callback_disconnectNotify,
)
proc create*(T: type gen_qpdfdocument_types.QPdfDocument,
    inst: VirtualQPdfDocument) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfDocument_new(addr(cQPdfDocument_mvtbl), csize_t(sizeof(pointer)))
  fcQPdfDocument_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qpdfdocument_types.QPdfDocument,
    parent: gen_qobject_types.QObject,
    inst: VirtualQPdfDocument) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPdfDocument_new2(addr(cQPdfDocument_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQPdfDocument_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qpdfdocument_types.QPdfDocument): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfDocument_staticMetaObject())
