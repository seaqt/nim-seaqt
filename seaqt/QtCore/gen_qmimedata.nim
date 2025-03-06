import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
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

proc fcQMimeData_new(): ptr cQMimeData {.importc: "QMimeData_new".}
proc fcQMimeData_metaObject(self: pointer, ): pointer {.importc: "QMimeData_metaObject".}
proc fcQMimeData_metacast(self: pointer, param1: cstring): pointer {.importc: "QMimeData_metacast".}
proc fcQMimeData_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMimeData_metacall".}
proc fcQMimeData_tr(s: cstring): struct_miqt_string {.importc: "QMimeData_tr".}
proc fcQMimeData_urls(self: pointer, ): struct_miqt_array {.importc: "QMimeData_urls".}
proc fcQMimeData_setUrls(self: pointer, urls: struct_miqt_array): void {.importc: "QMimeData_setUrls".}
proc fcQMimeData_hasUrls(self: pointer, ): bool {.importc: "QMimeData_hasUrls".}
proc fcQMimeData_text(self: pointer, ): struct_miqt_string {.importc: "QMimeData_text".}
proc fcQMimeData_setText(self: pointer, text: struct_miqt_string): void {.importc: "QMimeData_setText".}
proc fcQMimeData_hasText(self: pointer, ): bool {.importc: "QMimeData_hasText".}
proc fcQMimeData_html(self: pointer, ): struct_miqt_string {.importc: "QMimeData_html".}
proc fcQMimeData_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QMimeData_setHtml".}
proc fcQMimeData_hasHtml(self: pointer, ): bool {.importc: "QMimeData_hasHtml".}
proc fcQMimeData_imageData(self: pointer, ): pointer {.importc: "QMimeData_imageData".}
proc fcQMimeData_setImageData(self: pointer, image: pointer): void {.importc: "QMimeData_setImageData".}
proc fcQMimeData_hasImage(self: pointer, ): bool {.importc: "QMimeData_hasImage".}
proc fcQMimeData_colorData(self: pointer, ): pointer {.importc: "QMimeData_colorData".}
proc fcQMimeData_setColorData(self: pointer, color: pointer): void {.importc: "QMimeData_setColorData".}
proc fcQMimeData_hasColor(self: pointer, ): bool {.importc: "QMimeData_hasColor".}
proc fcQMimeData_data(self: pointer, mimetype: struct_miqt_string): struct_miqt_string {.importc: "QMimeData_data".}
proc fcQMimeData_setData(self: pointer, mimetype: struct_miqt_string, data: struct_miqt_string): void {.importc: "QMimeData_setData".}
proc fcQMimeData_removeFormat(self: pointer, mimetype: struct_miqt_string): void {.importc: "QMimeData_removeFormat".}
proc fcQMimeData_hasFormat(self: pointer, mimetype: struct_miqt_string): bool {.importc: "QMimeData_hasFormat".}
proc fcQMimeData_formats(self: pointer, ): struct_miqt_array {.importc: "QMimeData_formats".}
proc fcQMimeData_clear(self: pointer, ): void {.importc: "QMimeData_clear".}
proc fcQMimeData_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMimeData_tr2".}
proc fcQMimeData_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMimeData_tr3".}
proc fQMimeData_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QMimeData_virtualbase_metaObject".}
proc fcQMimeData_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_metaObject".}
proc fQMimeData_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QMimeData_virtualbase_metacast".}
proc fcQMimeData_override_virtual_metacast(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_metacast".}
proc fQMimeData_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMimeData_virtualbase_metacall".}
proc fcQMimeData_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_metacall".}
proc fQMimeData_virtualbase_hasFormat(self: pointer, mimetype: struct_miqt_string): bool{.importc: "QMimeData_virtualbase_hasFormat".}
proc fcQMimeData_override_virtual_hasFormat(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_hasFormat".}
proc fQMimeData_virtualbase_formats(self: pointer, ): struct_miqt_array{.importc: "QMimeData_virtualbase_formats".}
proc fcQMimeData_override_virtual_formats(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_formats".}
proc fQMimeData_virtualbase_retrieveData(self: pointer, mimetype: struct_miqt_string, preferredType: pointer): pointer{.importc: "QMimeData_virtualbase_retrieveData".}
proc fcQMimeData_override_virtual_retrieveData(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_retrieveData".}
proc fQMimeData_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMimeData_virtualbase_event".}
proc fcQMimeData_override_virtual_event(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_event".}
proc fQMimeData_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMimeData_virtualbase_eventFilter".}
proc fcQMimeData_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_eventFilter".}
proc fQMimeData_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMimeData_virtualbase_timerEvent".}
proc fcQMimeData_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_timerEvent".}
proc fQMimeData_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMimeData_virtualbase_childEvent".}
proc fcQMimeData_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_childEvent".}
proc fQMimeData_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMimeData_virtualbase_customEvent".}
proc fcQMimeData_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_customEvent".}
proc fQMimeData_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMimeData_virtualbase_connectNotify".}
proc fcQMimeData_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_connectNotify".}
proc fQMimeData_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMimeData_virtualbase_disconnectNotify".}
proc fcQMimeData_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_disconnectNotify".}
proc fcQMimeData_staticMetaObject(): pointer {.importc: "QMimeData_staticMetaObject".}
proc fcQMimeData_delete(self: pointer) {.importc: "QMimeData_delete".}


func init*(T: type gen_qmimedata_types.QMimeData, h: ptr cQMimeData): gen_qmimedata_types.QMimeData =
  T(h: h)
proc create*(T: type gen_qmimedata_types.QMimeData, ): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData.init(fcQMimeData_new())

proc metaObject*(self: gen_qmimedata_types.QMimeData, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMimeData_metaObject(self.h))

proc metacast*(self: gen_qmimedata_types.QMimeData, param1: cstring): pointer =
  fcQMimeData_metacast(self.h, param1)

proc metacall*(self: gen_qmimedata_types.QMimeData, param1: cint, param2: cint, param3: pointer): cint =
  fcQMimeData_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmimedata_types.QMimeData, s: cstring): string =
  let v_ms = fcQMimeData_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc urls*(self: gen_qmimedata_types.QMimeData, ): seq[gen_qurl_types.QUrl] =
  var v_ma = fcQMimeData_urls(self.h)
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i])
  vx_ret

proc setUrls*(self: gen_qmimedata_types.QMimeData, urls: seq[gen_qurl_types.QUrl]): void =
  var urls_CArray = newSeq[pointer](len(urls))
  for i in 0..<len(urls):
    urls_CArray[i] = urls[i].h

  fcQMimeData_setUrls(self.h, struct_miqt_array(len: csize_t(len(urls)), data: if len(urls) == 0: nil else: addr(urls_CArray[0])))

proc hasUrls*(self: gen_qmimedata_types.QMimeData, ): bool =
  fcQMimeData_hasUrls(self.h)

proc text*(self: gen_qmimedata_types.QMimeData, ): string =
  let v_ms = fcQMimeData_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qmimedata_types.QMimeData, text: string): void =
  fcQMimeData_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc hasText*(self: gen_qmimedata_types.QMimeData, ): bool =
  fcQMimeData_hasText(self.h)

proc html*(self: gen_qmimedata_types.QMimeData, ): string =
  let v_ms = fcQMimeData_html(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHtml*(self: gen_qmimedata_types.QMimeData, html: string): void =
  fcQMimeData_setHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc hasHtml*(self: gen_qmimedata_types.QMimeData, ): bool =
  fcQMimeData_hasHtml(self.h)

proc imageData*(self: gen_qmimedata_types.QMimeData, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMimeData_imageData(self.h))

proc setImageData*(self: gen_qmimedata_types.QMimeData, image: gen_qvariant_types.QVariant): void =
  fcQMimeData_setImageData(self.h, image.h)

proc hasImage*(self: gen_qmimedata_types.QMimeData, ): bool =
  fcQMimeData_hasImage(self.h)

proc colorData*(self: gen_qmimedata_types.QMimeData, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMimeData_colorData(self.h))

proc setColorData*(self: gen_qmimedata_types.QMimeData, color: gen_qvariant_types.QVariant): void =
  fcQMimeData_setColorData(self.h, color.h)

proc hasColor*(self: gen_qmimedata_types.QMimeData, ): bool =
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

proc formats*(self: gen_qmimedata_types.QMimeData, ): seq[string] =
  var v_ma = fcQMimeData_formats(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc clear*(self: gen_qmimedata_types.QMimeData, ): void =
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

proc QMimeDatametaObject*(self: gen_qmimedata_types.QMimeData, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQMimeData_virtualbase_metaObject(self.h))

type QMimeDatametaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qmimedata_types.QMimeData, slot: QMimeDatametaObjectProc) =
  # TODO check subclass
  var tmp = new QMimeDatametaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_metaObject(self: ptr cQMimeData, slot: int): pointer {.exportc: "miqt_exec_callback_QMimeData_metaObject ".} =
  var nimfunc = cast[ptr QMimeDatametaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMimeDatametacast*(self: gen_qmimedata_types.QMimeData, param1: cstring): pointer =
  fQMimeData_virtualbase_metacast(self.h, param1)

type QMimeDatametacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qmimedata_types.QMimeData, slot: QMimeDatametacastProc) =
  # TODO check subclass
  var tmp = new QMimeDatametacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_metacast(self: ptr cQMimeData, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QMimeData_metacast ".} =
  var nimfunc = cast[ptr QMimeDatametacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMimeDatametacall*(self: gen_qmimedata_types.QMimeData, param1: cint, param2: cint, param3: pointer): cint =
  fQMimeData_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMimeDatametacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qmimedata_types.QMimeData, slot: QMimeDatametacallProc) =
  # TODO check subclass
  var tmp = new QMimeDatametacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_metacall(self: ptr cQMimeData, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMimeData_metacall ".} =
  var nimfunc = cast[ptr QMimeDatametacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMimeDatahasFormat*(self: gen_qmimedata_types.QMimeData, mimetype: string): bool =
  fQMimeData_virtualbase_hasFormat(self.h, struct_miqt_string(data: mimetype, len: csize_t(len(mimetype))))

type QMimeDatahasFormatProc* = proc(mimetype: string): bool
proc onhasFormat*(self: gen_qmimedata_types.QMimeData, slot: QMimeDatahasFormatProc) =
  # TODO check subclass
  var tmp = new QMimeDatahasFormatProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_hasFormat(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_hasFormat(self: ptr cQMimeData, slot: int, mimetype: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QMimeData_hasFormat ".} =
  var nimfunc = cast[ptr QMimeDatahasFormatProc](cast[pointer](slot))
  let vmimetype_ms = mimetype
  let vmimetypex_ret = string.fromBytes(toOpenArrayByte(vmimetype_ms.data, 0, int(vmimetype_ms.len)-1))
  c_free(vmimetype_ms.data)
  let slotval1 = vmimetypex_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMimeDataformats*(self: gen_qmimedata_types.QMimeData, ): seq[string] =
  var v_ma = fQMimeData_virtualbase_formats(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QMimeDataformatsProc* = proc(): seq[string]
proc onformats*(self: gen_qmimedata_types.QMimeData, slot: QMimeDataformatsProc) =
  # TODO check subclass
  var tmp = new QMimeDataformatsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_formats(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_formats(self: ptr cQMimeData, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QMimeData_formats ".} =
  var nimfunc = cast[ptr QMimeDataformatsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QMimeDataretrieveData*(self: gen_qmimedata_types.QMimeData, mimetype: string, preferredType: gen_qmetatype_types.QMetaType): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQMimeData_virtualbase_retrieveData(self.h, struct_miqt_string(data: mimetype, len: csize_t(len(mimetype))), preferredType.h))

type QMimeDataretrieveDataProc* = proc(mimetype: string, preferredType: gen_qmetatype_types.QMetaType): gen_qvariant_types.QVariant
proc onretrieveData*(self: gen_qmimedata_types.QMimeData, slot: QMimeDataretrieveDataProc) =
  # TODO check subclass
  var tmp = new QMimeDataretrieveDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_retrieveData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_retrieveData(self: ptr cQMimeData, slot: int, mimetype: struct_miqt_string, preferredType: pointer): pointer {.exportc: "miqt_exec_callback_QMimeData_retrieveData ".} =
  var nimfunc = cast[ptr QMimeDataretrieveDataProc](cast[pointer](slot))
  let vmimetype_ms = mimetype
  let vmimetypex_ret = string.fromBytes(toOpenArrayByte(vmimetype_ms.data, 0, int(vmimetype_ms.len)-1))
  c_free(vmimetype_ms.data)
  let slotval1 = vmimetypex_ret

  let slotval2 = gen_qmetatype_types.QMetaType(h: preferredType)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QMimeDataevent*(self: gen_qmimedata_types.QMimeData, event: gen_qcoreevent_types.QEvent): bool =
  fQMimeData_virtualbase_event(self.h, event.h)

type QMimeDataeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qmimedata_types.QMimeData, slot: QMimeDataeventProc) =
  # TODO check subclass
  var tmp = new QMimeDataeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_event(self: ptr cQMimeData, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMimeData_event ".} =
  var nimfunc = cast[ptr QMimeDataeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMimeDataeventFilter*(self: gen_qmimedata_types.QMimeData, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQMimeData_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMimeDataeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qmimedata_types.QMimeData, slot: QMimeDataeventFilterProc) =
  # TODO check subclass
  var tmp = new QMimeDataeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_eventFilter(self: ptr cQMimeData, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMimeData_eventFilter ".} =
  var nimfunc = cast[ptr QMimeDataeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QMimeDatatimerEvent*(self: gen_qmimedata_types.QMimeData, event: gen_qcoreevent_types.QTimerEvent): void =
  fQMimeData_virtualbase_timerEvent(self.h, event.h)

type QMimeDatatimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qmimedata_types.QMimeData, slot: QMimeDatatimerEventProc) =
  # TODO check subclass
  var tmp = new QMimeDatatimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_timerEvent(self: ptr cQMimeData, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMimeData_timerEvent ".} =
  var nimfunc = cast[ptr QMimeDatatimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QMimeDatachildEvent*(self: gen_qmimedata_types.QMimeData, event: gen_qcoreevent_types.QChildEvent): void =
  fQMimeData_virtualbase_childEvent(self.h, event.h)

type QMimeDatachildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qmimedata_types.QMimeData, slot: QMimeDatachildEventProc) =
  # TODO check subclass
  var tmp = new QMimeDatachildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_childEvent(self: ptr cQMimeData, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMimeData_childEvent ".} =
  var nimfunc = cast[ptr QMimeDatachildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QMimeDatacustomEvent*(self: gen_qmimedata_types.QMimeData, event: gen_qcoreevent_types.QEvent): void =
  fQMimeData_virtualbase_customEvent(self.h, event.h)

type QMimeDatacustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qmimedata_types.QMimeData, slot: QMimeDatacustomEventProc) =
  # TODO check subclass
  var tmp = new QMimeDatacustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_customEvent(self: ptr cQMimeData, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMimeData_customEvent ".} =
  var nimfunc = cast[ptr QMimeDatacustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMimeDataconnectNotify*(self: gen_qmimedata_types.QMimeData, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMimeData_virtualbase_connectNotify(self.h, signal.h)

type QMimeDataconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qmimedata_types.QMimeData, slot: QMimeDataconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMimeDataconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_connectNotify(self: ptr cQMimeData, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMimeData_connectNotify ".} =
  var nimfunc = cast[ptr QMimeDataconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QMimeDatadisconnectNotify*(self: gen_qmimedata_types.QMimeData, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMimeData_virtualbase_disconnectNotify(self.h, signal.h)

type QMimeDatadisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qmimedata_types.QMimeData, slot: QMimeDatadisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMimeDatadisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_disconnectNotify(self: ptr cQMimeData, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMimeData_disconnectNotify ".} =
  var nimfunc = cast[ptr QMimeDatadisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qmimedata_types.QMimeData): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMimeData_staticMetaObject())
proc delete*(self: gen_qmimedata_types.QMimeData) =
  fcQMimeData_delete(self.h)
