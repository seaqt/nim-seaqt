import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qmimedata.cpp", cflags).}


import ./gen_qmimedata_types
export gen_qmimedata_types

import
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qmetatype_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types,
  ./gen_qurl_types,
  ./gen_qvariant_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qmetatype_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qvariant_types

type cQMimeData*{.exportc: "QMimeData", incompleteStruct.} = object

proc fcQMimeData_metaObject(self: pointer): pointer {.importc: "QMimeData_metaObject".}
proc fcQMimeData_metacast(self: pointer, param1: cstring): pointer {.importc: "QMimeData_metacast".}
proc fcQMimeData_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMimeData_metacall".}
proc fcQMimeData_tr(s: cstring): struct_miqt_string {.importc: "QMimeData_tr".}
proc fcQMimeData_urls(self: pointer): struct_miqt_array {.importc: "QMimeData_urls".}
proc fcQMimeData_setUrls(self: pointer, urls: struct_miqt_array): void {.importc: "QMimeData_setUrls".}
proc fcQMimeData_hasUrls(self: pointer): bool {.importc: "QMimeData_hasUrls".}
proc fcQMimeData_text(self: pointer): struct_miqt_string {.importc: "QMimeData_text".}
proc fcQMimeData_setText(self: pointer, text: struct_miqt_string): void {.importc: "QMimeData_setText".}
proc fcQMimeData_hasText(self: pointer): bool {.importc: "QMimeData_hasText".}
proc fcQMimeData_html(self: pointer): struct_miqt_string {.importc: "QMimeData_html".}
proc fcQMimeData_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QMimeData_setHtml".}
proc fcQMimeData_hasHtml(self: pointer): bool {.importc: "QMimeData_hasHtml".}
proc fcQMimeData_imageData(self: pointer): pointer {.importc: "QMimeData_imageData".}
proc fcQMimeData_setImageData(self: pointer, image: pointer): void {.importc: "QMimeData_setImageData".}
proc fcQMimeData_hasImage(self: pointer): bool {.importc: "QMimeData_hasImage".}
proc fcQMimeData_colorData(self: pointer): pointer {.importc: "QMimeData_colorData".}
proc fcQMimeData_setColorData(self: pointer, color: pointer): void {.importc: "QMimeData_setColorData".}
proc fcQMimeData_hasColor(self: pointer): bool {.importc: "QMimeData_hasColor".}
proc fcQMimeData_data(self: pointer, mimetype: struct_miqt_string): struct_miqt_string {.importc: "QMimeData_data".}
proc fcQMimeData_setData(self: pointer, mimetype: struct_miqt_string, data: struct_miqt_string): void {.importc: "QMimeData_setData".}
proc fcQMimeData_removeFormat(self: pointer, mimetype: struct_miqt_string): void {.importc: "QMimeData_removeFormat".}
proc fcQMimeData_hasFormat(self: pointer, mimetype: struct_miqt_string): bool {.importc: "QMimeData_hasFormat".}
proc fcQMimeData_formats(self: pointer): struct_miqt_array {.importc: "QMimeData_formats".}
proc fcQMimeData_clear(self: pointer): void {.importc: "QMimeData_clear".}
proc fcQMimeData_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMimeData_tr2".}
proc fcQMimeData_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMimeData_tr3".}
proc fcQMimeData_vtbl(self: pointer): pointer {.importc: "QMimeData_vtbl".}
proc fcQMimeData_vdata(self: pointer): pointer {.importc: "QMimeData_vdata".}
type cQMimeDataVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  hasFormat*: proc(self: pointer, mimetype: struct_miqt_string): bool {.cdecl, raises: [], gcsafe.}
  formats*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  retrieveData*: proc(self: pointer, mimetype: struct_miqt_string, preferredType: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQMimeData_virtualbase_metaObject(self: pointer): pointer {.importc: "QMimeData_virtualbase_metaObject".}
proc fcQMimeData_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMimeData_virtualbase_metacast".}
proc fcQMimeData_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMimeData_virtualbase_metacall".}
proc fcQMimeData_virtualbase_hasFormat(self: pointer, mimetype: struct_miqt_string): bool {.importc: "QMimeData_virtualbase_hasFormat".}
proc fcQMimeData_virtualbase_formats(self: pointer): struct_miqt_array {.importc: "QMimeData_virtualbase_formats".}
proc fcQMimeData_virtualbase_retrieveData(self: pointer, mimetype: struct_miqt_string, preferredType: pointer): pointer {.importc: "QMimeData_virtualbase_retrieveData".}
proc fcQMimeData_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QMimeData_virtualbase_event".}
proc fcQMimeData_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QMimeData_virtualbase_eventFilter".}
proc fcQMimeData_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QMimeData_virtualbase_timerEvent".}
proc fcQMimeData_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMimeData_virtualbase_childEvent".}
proc fcQMimeData_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMimeData_virtualbase_customEvent".}
proc fcQMimeData_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMimeData_virtualbase_connectNotify".}
proc fcQMimeData_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMimeData_virtualbase_disconnectNotify".}
proc fcQMimeData_protectedbase_sender(self: pointer): pointer {.importc: "QMimeData_protectedbase_sender".}
proc fcQMimeData_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMimeData_protectedbase_senderSignalIndex".}
proc fcQMimeData_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMimeData_protectedbase_receivers".}
proc fcQMimeData_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMimeData_protectedbase_isSignalConnected".}
proc fcQMimeData_new(vtbl, vdata: pointer): ptr cQMimeData {.importc: "QMimeData_new".}
proc fcQMimeData_staticMetaObject(): pointer {.importc: "QMimeData_staticMetaObject".}

proc metaObject*(self: gen_qmimedata_types.QMimeData): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMimeData_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmimedata_types.QMimeData, param1: cstring): pointer =
  fcQMimeData_metacast(self.h, param1)

proc metacall*(self: gen_qmimedata_types.QMimeData, param1: cint, param2: cint, param3: pointer): cint =
  fcQMimeData_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmimedata_types.QMimeData, s: cstring): string =
  let v_ms = fcQMimeData_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc urls*(self: gen_qmimedata_types.QMimeData): seq[gen_qurl_types.QUrl] =
  var v_ma = fcQMimeData_urls(self.h)
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc setUrls*(self: gen_qmimedata_types.QMimeData, urls: seq[gen_qurl_types.QUrl]): void =
  var urls_CArray = newSeq[pointer](len(urls))
  for i in 0..<len(urls):
    urls_CArray[i] = urls[i].h

  fcQMimeData_setUrls(self.h, struct_miqt_array(len: csize_t(len(urls)), data: if len(urls) == 0: nil else: addr(urls_CArray[0])))

proc hasUrls*(self: gen_qmimedata_types.QMimeData): bool =
  fcQMimeData_hasUrls(self.h)

proc text*(self: gen_qmimedata_types.QMimeData): string =
  let v_ms = fcQMimeData_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qmimedata_types.QMimeData, text: string): void =
  fcQMimeData_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc hasText*(self: gen_qmimedata_types.QMimeData): bool =
  fcQMimeData_hasText(self.h)

proc html*(self: gen_qmimedata_types.QMimeData): string =
  let v_ms = fcQMimeData_html(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHtml*(self: gen_qmimedata_types.QMimeData, html: string): void =
  fcQMimeData_setHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc hasHtml*(self: gen_qmimedata_types.QMimeData): bool =
  fcQMimeData_hasHtml(self.h)

proc imageData*(self: gen_qmimedata_types.QMimeData): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMimeData_imageData(self.h), owned: true)

proc setImageData*(self: gen_qmimedata_types.QMimeData, image: gen_qvariant_types.QVariant): void =
  fcQMimeData_setImageData(self.h, image.h)

proc hasImage*(self: gen_qmimedata_types.QMimeData): bool =
  fcQMimeData_hasImage(self.h)

proc colorData*(self: gen_qmimedata_types.QMimeData): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMimeData_colorData(self.h), owned: true)

proc setColorData*(self: gen_qmimedata_types.QMimeData, color: gen_qvariant_types.QVariant): void =
  fcQMimeData_setColorData(self.h, color.h)

proc hasColor*(self: gen_qmimedata_types.QMimeData): bool =
  fcQMimeData_hasColor(self.h)

proc data*(self: gen_qmimedata_types.QMimeData, mimetype: string): seq[byte] =
  var v_bytearray = fcQMimeData_data(self.h, struct_miqt_string(data: mimetype, len: csize_t(len(mimetype))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setData*(self: gen_qmimedata_types.QMimeData, mimetype: string, data: seq[byte]): void =
  fcQMimeData_setData(self.h, struct_miqt_string(data: mimetype, len: csize_t(len(mimetype))), struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc removeFormat*(self: gen_qmimedata_types.QMimeData, mimetype: string): void =
  fcQMimeData_removeFormat(self.h, struct_miqt_string(data: mimetype, len: csize_t(len(mimetype))))

proc hasFormat*(self: gen_qmimedata_types.QMimeData, mimetype: string): bool =
  fcQMimeData_hasFormat(self.h, struct_miqt_string(data: mimetype, len: csize_t(len(mimetype))))

proc formats*(self: gen_qmimedata_types.QMimeData): seq[string] =
  var v_ma = fcQMimeData_formats(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc clear*(self: gen_qmimedata_types.QMimeData): void =
  fcQMimeData_clear(self.h)

proc tr*(_: type gen_qmimedata_types.QMimeData, s: cstring, c: cstring): string =
  let v_ms = fcQMimeData_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmimedata_types.QMimeData, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMimeData_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QMimeDatametaObjectProc* = proc(self: QMimeData): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QMimeDatametacastProc* = proc(self: QMimeData, param1: cstring): pointer {.raises: [], gcsafe.}
type QMimeDatametacallProc* = proc(self: QMimeData, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QMimeDatahasFormatProc* = proc(self: QMimeData, mimetype: string): bool {.raises: [], gcsafe.}
type QMimeDataformatsProc* = proc(self: QMimeData): seq[string] {.raises: [], gcsafe.}
type QMimeDataretrieveDataProc* = proc(self: QMimeData, mimetype: string, preferredType: gen_qmetatype_types.QMetaType): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QMimeDataeventProc* = proc(self: QMimeData, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMimeDataeventFilterProc* = proc(self: QMimeData, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMimeDatatimerEventProc* = proc(self: QMimeData, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QMimeDatachildEventProc* = proc(self: QMimeData, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QMimeDatacustomEventProc* = proc(self: QMimeData, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMimeDataconnectNotifyProc* = proc(self: QMimeData, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMimeDatadisconnectNotifyProc* = proc(self: QMimeData, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMimeDataVTable* {.inheritable, pure.} = object
  vtbl: cQMimeDataVTable
  metaObject*: QMimeDatametaObjectProc
  metacast*: QMimeDatametacastProc
  metacall*: QMimeDatametacallProc
  hasFormat*: QMimeDatahasFormatProc
  formats*: QMimeDataformatsProc
  retrieveData*: QMimeDataretrieveDataProc
  event*: QMimeDataeventProc
  eventFilter*: QMimeDataeventFilterProc
  timerEvent*: QMimeDatatimerEventProc
  childEvent*: QMimeDatachildEventProc
  customEvent*: QMimeDatacustomEventProc
  connectNotify*: QMimeDataconnectNotifyProc
  disconnectNotify*: QMimeDatadisconnectNotifyProc
proc QMimeDatametaObject*(self: gen_qmimedata_types.QMimeData): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMimeData_virtualbase_metaObject(self.h), owned: false)

proc cQMimeData_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMimeDataVTable](fcQMimeData_vdata(self))
  let self = QMimeData(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMimeDatametacast*(self: gen_qmimedata_types.QMimeData, param1: cstring): pointer =
  fcQMimeData_virtualbase_metacast(self.h, param1)

proc cQMimeData_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMimeDataVTable](fcQMimeData_vdata(self))
  let self = QMimeData(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QMimeDatametacall*(self: gen_qmimedata_types.QMimeData, param1: cint, param2: cint, param3: pointer): cint =
  fcQMimeData_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQMimeData_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMimeDataVTable](fcQMimeData_vdata(self))
  let self = QMimeData(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMimeDatahasFormat*(self: gen_qmimedata_types.QMimeData, mimetype: string): bool =
  fcQMimeData_virtualbase_hasFormat(self.h, struct_miqt_string(data: mimetype, len: csize_t(len(mimetype))))

proc cQMimeData_vtable_callback_hasFormat(self: pointer, mimetype: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QMimeDataVTable](fcQMimeData_vdata(self))
  let self = QMimeData(h: self)
  let vmimetype_ms = mimetype
  let vmimetypex_ret = string.fromBytes(toOpenArrayByte(vmimetype_ms.data, 0, int(vmimetype_ms.len)-1))
  c_free(vmimetype_ms.data)
  let slotval1 = vmimetypex_ret
  var virtualReturn = vtbl[].hasFormat(self, slotval1)
  virtualReturn

proc QMimeDataformats*(self: gen_qmimedata_types.QMimeData): seq[string] =
  var v_ma = fcQMimeData_virtualbase_formats(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc cQMimeData_vtable_callback_formats(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QMimeDataVTable](fcQMimeData_vdata(self))
  let self = QMimeData(h: self)
  var virtualReturn = vtbl[].formats(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QMimeDataretrieveData*(self: gen_qmimedata_types.QMimeData, mimetype: string, preferredType: gen_qmetatype_types.QMetaType): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMimeData_virtualbase_retrieveData(self.h, struct_miqt_string(data: mimetype, len: csize_t(len(mimetype))), preferredType.h), owned: true)

proc cQMimeData_vtable_callback_retrieveData(self: pointer, mimetype: struct_miqt_string, preferredType: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMimeDataVTable](fcQMimeData_vdata(self))
  let self = QMimeData(h: self)
  let vmimetype_ms = mimetype
  let vmimetypex_ret = string.fromBytes(toOpenArrayByte(vmimetype_ms.data, 0, int(vmimetype_ms.len)-1))
  c_free(vmimetype_ms.data)
  let slotval1 = vmimetypex_ret
  let slotval2 = gen_qmetatype_types.QMetaType(h: preferredType, owned: true)
  var virtualReturn = vtbl[].retrieveData(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMimeDataevent*(self: gen_qmimedata_types.QMimeData, event: gen_qcoreevent_types.QEvent): bool =
  fcQMimeData_virtualbase_event(self.h, event.h)

proc cQMimeData_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMimeDataVTable](fcQMimeData_vdata(self))
  let self = QMimeData(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QMimeDataeventFilter*(self: gen_qmimedata_types.QMimeData, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMimeData_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQMimeData_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMimeDataVTable](fcQMimeData_vdata(self))
  let self = QMimeData(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QMimeDatatimerEvent*(self: gen_qmimedata_types.QMimeData, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQMimeData_virtualbase_timerEvent(self.h, event.h)

proc cQMimeData_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMimeDataVTable](fcQMimeData_vdata(self))
  let self = QMimeData(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QMimeDatachildEvent*(self: gen_qmimedata_types.QMimeData, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMimeData_virtualbase_childEvent(self.h, event.h)

proc cQMimeData_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMimeDataVTable](fcQMimeData_vdata(self))
  let self = QMimeData(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QMimeDatacustomEvent*(self: gen_qmimedata_types.QMimeData, event: gen_qcoreevent_types.QEvent): void =
  fcQMimeData_virtualbase_customEvent(self.h, event.h)

proc cQMimeData_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMimeDataVTable](fcQMimeData_vdata(self))
  let self = QMimeData(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QMimeDataconnectNotify*(self: gen_qmimedata_types.QMimeData, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMimeData_virtualbase_connectNotify(self.h, signal.h)

proc cQMimeData_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMimeDataVTable](fcQMimeData_vdata(self))
  let self = QMimeData(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QMimeDatadisconnectNotify*(self: gen_qmimedata_types.QMimeData, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMimeData_virtualbase_disconnectNotify(self.h, signal.h)

proc cQMimeData_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMimeDataVTable](fcQMimeData_vdata(self))
  let self = QMimeData(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQMimeData* {.inheritable.} = ref object of QMimeData
  vtbl*: cQMimeDataVTable
method metaObject*(self: VirtualQMimeData): gen_qobjectdefs_types.QMetaObject {.base.} =
  QMimeDatametaObject(self[])
proc cQMimeData_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMimeData](fcQMimeData_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQMimeData, param1: cstring): pointer {.base.} =
  QMimeDatametacast(self[], param1)
proc cQMimeData_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQMimeData](fcQMimeData_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQMimeData, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QMimeDatametacall(self[], param1, param2, param3)
proc cQMimeData_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMimeData](fcQMimeData_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method hasFormat*(self: VirtualQMimeData, mimetype: string): bool {.base.} =
  QMimeDatahasFormat(self[], mimetype)
proc cQMimeData_method_callback_hasFormat(self: pointer, mimetype: struct_miqt_string): bool {.cdecl.} =
  let inst = cast[VirtualQMimeData](fcQMimeData_vdata(self))
  let vmimetype_ms = mimetype
  let vmimetypex_ret = string.fromBytes(toOpenArrayByte(vmimetype_ms.data, 0, int(vmimetype_ms.len)-1))
  c_free(vmimetype_ms.data)
  let slotval1 = vmimetypex_ret
  var virtualReturn = inst.hasFormat(slotval1)
  virtualReturn

method formats*(self: VirtualQMimeData): seq[string] {.base.} =
  QMimeDataformats(self[])
proc cQMimeData_method_callback_formats(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQMimeData](fcQMimeData_vdata(self))
  var virtualReturn = inst.formats()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method retrieveData*(self: VirtualQMimeData, mimetype: string, preferredType: gen_qmetatype_types.QMetaType): gen_qvariant_types.QVariant {.base.} =
  QMimeDataretrieveData(self[], mimetype, preferredType)
proc cQMimeData_method_callback_retrieveData(self: pointer, mimetype: struct_miqt_string, preferredType: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMimeData](fcQMimeData_vdata(self))
  let vmimetype_ms = mimetype
  let vmimetypex_ret = string.fromBytes(toOpenArrayByte(vmimetype_ms.data, 0, int(vmimetype_ms.len)-1))
  c_free(vmimetype_ms.data)
  let slotval1 = vmimetypex_ret
  let slotval2 = gen_qmetatype_types.QMetaType(h: preferredType, owned: true)
  var virtualReturn = inst.retrieveData(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQMimeData, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMimeDataevent(self[], event)
proc cQMimeData_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMimeData](fcQMimeData_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQMimeData, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMimeDataeventFilter(self[], watched, event)
proc cQMimeData_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMimeData](fcQMimeData_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQMimeData, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QMimeDatatimerEvent(self[], event)
proc cQMimeData_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMimeData](fcQMimeData_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQMimeData, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QMimeDatachildEvent(self[], event)
proc cQMimeData_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMimeData](fcQMimeData_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQMimeData, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMimeDatacustomEvent(self[], event)
proc cQMimeData_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMimeData](fcQMimeData_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQMimeData, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMimeDataconnectNotify(self[], signal)
proc cQMimeData_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMimeData](fcQMimeData_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQMimeData, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMimeDatadisconnectNotify(self[], signal)
proc cQMimeData_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMimeData](fcQMimeData_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qmimedata_types.QMimeData): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMimeData_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmimedata_types.QMimeData): cint =
  fcQMimeData_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmimedata_types.QMimeData, signal: cstring): cint =
  fcQMimeData_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmimedata_types.QMimeData, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMimeData_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qmimedata_types.QMimeData,
    vtbl: ref QMimeDataVTable = nil): gen_qmimedata_types.QMimeData =
  let vtbl = if vtbl == nil: new QMimeDataVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMimeDataVTable](fcQMimeData_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMimeData_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMimeData_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMimeData_vtable_callback_metacall
  if not isNil(vtbl[].hasFormat):
    vtbl[].vtbl.hasFormat = cQMimeData_vtable_callback_hasFormat
  if not isNil(vtbl[].formats):
    vtbl[].vtbl.formats = cQMimeData_vtable_callback_formats
  if not isNil(vtbl[].retrieveData):
    vtbl[].vtbl.retrieveData = cQMimeData_vtable_callback_retrieveData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMimeData_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMimeData_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMimeData_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMimeData_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMimeData_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMimeData_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMimeData_vtable_callback_disconnectNotify
  gen_qmimedata_types.QMimeData(h: fcQMimeData_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQMimeData_mvtbl = cQMimeDataVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQMimeData()[])](self.fcQMimeData_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQMimeData_method_callback_metaObject,
  metacast: cQMimeData_method_callback_metacast,
  metacall: cQMimeData_method_callback_metacall,
  hasFormat: cQMimeData_method_callback_hasFormat,
  formats: cQMimeData_method_callback_formats,
  retrieveData: cQMimeData_method_callback_retrieveData,
  event: cQMimeData_method_callback_event,
  eventFilter: cQMimeData_method_callback_eventFilter,
  timerEvent: cQMimeData_method_callback_timerEvent,
  childEvent: cQMimeData_method_callback_childEvent,
  customEvent: cQMimeData_method_callback_customEvent,
  connectNotify: cQMimeData_method_callback_connectNotify,
  disconnectNotify: cQMimeData_method_callback_disconnectNotify,
)
proc create*(T: type gen_qmimedata_types.QMimeData,
    inst: VirtualQMimeData) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMimeData_new(addr(cQMimeData_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qmimedata_types.QMimeData): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMimeData_staticMetaObject())
