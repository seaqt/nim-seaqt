import ./qtgui_pkg

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


{.compile("gen_qclipboard.cpp", QtGuiCFlags).}


type QClipboardModeEnum* = distinct cint
template Clipboard*(_: type QClipboardModeEnum): untyped = 0
template Selection*(_: type QClipboardModeEnum): untyped = 1
template FindBuffer*(_: type QClipboardModeEnum): untyped = 2
template LastMode*(_: type QClipboardModeEnum): untyped = 2


import ./gen_qclipboard_types
export gen_qclipboard_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qmimedata_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qimage_types,
  ./gen_qpixmap_types
export
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qimage_types,
  gen_qpixmap_types

type cQClipboard*{.exportc: "QClipboard", incompleteStruct.} = object

proc fcQClipboard_metaObject(self: pointer): pointer {.importc: "QClipboard_metaObject".}
proc fcQClipboard_metacast(self: pointer, param1: cstring): pointer {.importc: "QClipboard_metacast".}
proc fcQClipboard_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QClipboard_metacall".}
proc fcQClipboard_trS(s: cstring): struct_seaqt_string {.importc: "QClipboard_tr_s".}
proc fcQClipboard_trUtf8S(s: cstring): struct_seaqt_string {.importc: "QClipboard_trUtf8_s".}
proc fcQClipboard_clear(self: pointer): void {.importc: "QClipboard_clear".}
proc fcQClipboard_supportsSelection(self: pointer): bool {.importc: "QClipboard_supportsSelection".}
proc fcQClipboard_supportsFindBuffer(self: pointer): bool {.importc: "QClipboard_supportsFindBuffer".}
proc fcQClipboard_ownsSelection(self: pointer): bool {.importc: "QClipboard_ownsSelection".}
proc fcQClipboard_ownsClipboard(self: pointer): bool {.importc: "QClipboard_ownsClipboard".}
proc fcQClipboard_ownsFindBuffer(self: pointer): bool {.importc: "QClipboard_ownsFindBuffer".}
proc fcQClipboard_text(self: pointer): struct_seaqt_string {.importc: "QClipboard_text".}
proc fcQClipboard_textSubtype(self: pointer, subtype: struct_seaqt_string): struct_seaqt_string {.importc: "QClipboard_text_subtype".}
proc fcQClipboard_setText_QString(self: pointer, param1: struct_seaqt_string): void {.importc: "QClipboard_setText_QString".}
proc fcQClipboard_mimeData(self: pointer): pointer {.importc: "QClipboard_mimeData".}
proc fcQClipboard_setMimeDataData(self: pointer, data: pointer): void {.importc: "QClipboard_setMimeData_data".}
proc fcQClipboard_image(self: pointer): pointer {.importc: "QClipboard_image".}
proc fcQClipboard_pixmap(self: pointer): pointer {.importc: "QClipboard_pixmap".}
proc fcQClipboard_setImage_QImage(self: pointer, param1: pointer): void {.importc: "QClipboard_setImage_QImage".}
proc fcQClipboard_setPixmap_QPixmap(self: pointer, param1: pointer): void {.importc: "QClipboard_setPixmap_QPixmap".}
proc fcQClipboard_changed(self: pointer, mode: cint): void {.importc: "QClipboard_changed".}
proc fcQClipboard_connect_changed(self: pointer, slot: int, callback: proc (slot: int, mode: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QClipboard_connect_changed".}
proc fcQClipboard_selectionChanged(self: pointer): void {.importc: "QClipboard_selectionChanged".}
proc fcQClipboard_connect_selectionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QClipboard_connect_selectionChanged".}
proc fcQClipboard_findBufferChanged(self: pointer): void {.importc: "QClipboard_findBufferChanged".}
proc fcQClipboard_connect_findBufferChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QClipboard_connect_findBufferChanged".}
proc fcQClipboard_dataChanged(self: pointer): void {.importc: "QClipboard_dataChanged".}
proc fcQClipboard_connect_dataChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QClipboard_connect_dataChanged".}
proc fcQClipboard_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QClipboard_tr_s_c".}
proc fcQClipboard_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QClipboard_tr_s_c_n".}
proc fcQClipboard_trUtf8SC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QClipboard_trUtf8_s_c".}
proc fcQClipboard_trUtf8SCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QClipboard_trUtf8_s_c_n".}
proc fcQClipboard_clearMode(self: pointer, mode: cint): void {.importc: "QClipboard_clear_mode".}
proc fcQClipboard_textMode(self: pointer, mode: cint): struct_seaqt_string {.importc: "QClipboard_text_mode".}
proc fcQClipboard_textSubtypeMode(self: pointer, subtype: struct_seaqt_string, mode: cint): struct_seaqt_string {.importc: "QClipboard_text_subtype_mode".}
proc fcQClipboard_setText_QString_QClipboard_Mode(self: pointer, param1: struct_seaqt_string, mode: cint): void {.importc: "QClipboard_setText_QString_QClipboard_Mode".}
proc fcQClipboard_mimeDataMode(self: pointer, mode: cint): pointer {.importc: "QClipboard_mimeData_mode".}
proc fcQClipboard_setMimeDataDataMode(self: pointer, data: pointer, mode: cint): void {.importc: "QClipboard_setMimeData_data_mode".}
proc fcQClipboard_imageMode(self: pointer, mode: cint): pointer {.importc: "QClipboard_image_mode".}
proc fcQClipboard_pixmapMode(self: pointer, mode: cint): pointer {.importc: "QClipboard_pixmap_mode".}
proc fcQClipboard_setImage_QImage_QClipboard_Mode(self: pointer, param1: pointer, mode: cint): void {.importc: "QClipboard_setImage_QImage_QClipboard_Mode".}
proc fcQClipboard_setPixmap_QPixmap_QClipboard_Mode(self: pointer, param1: pointer, mode: cint): void {.importc: "QClipboard_setPixmap_QPixmap_QClipboard_Mode".}
proc fcQClipboard_protectedbase_sender(self: pointer): pointer {.importc: "QClipboard_protectedbase_sender".}
proc fcQClipboard_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QClipboard_protectedbase_senderSignalIndex".}
proc fcQClipboard_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QClipboard_protectedbase_receivers".}
proc fcQClipboard_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QClipboard_protectedbase_isSignalConnected".}
proc fcQClipboard_staticMetaObject(): pointer {.importc: "QClipboard_staticMetaObject".}

proc metaObject*(self: gen_qclipboard_types.QClipboard): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQClipboard_metaObject(self.h), owned: false)

proc metacast*(self: gen_qclipboard_types.QClipboard, param1: cstring): pointer =
  fcQClipboard_metacast(self.h, param1)

proc metacall*(self: gen_qclipboard_types.QClipboard, param1: cint, param2: cint, param3: pointer): cint =
  fcQClipboard_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qclipboard_types.QClipboard, s: cstring): string =
  let v_ms = fcQClipboard_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qclipboard_types.QClipboard, s: cstring): string =
  let v_ms = fcQClipboard_trUtf8S(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc clear*(self: gen_qclipboard_types.QClipboard): void =
  fcQClipboard_clear(self.h)

proc supportsSelection*(self: gen_qclipboard_types.QClipboard): bool =
  fcQClipboard_supportsSelection(self.h)

proc supportsFindBuffer*(self: gen_qclipboard_types.QClipboard): bool =
  fcQClipboard_supportsFindBuffer(self.h)

proc ownsSelection*(self: gen_qclipboard_types.QClipboard): bool =
  fcQClipboard_ownsSelection(self.h)

proc ownsClipboard*(self: gen_qclipboard_types.QClipboard): bool =
  fcQClipboard_ownsClipboard(self.h)

proc ownsFindBuffer*(self: gen_qclipboard_types.QClipboard): bool =
  fcQClipboard_ownsFindBuffer(self.h)

proc text*(self: gen_qclipboard_types.QClipboard): string =
  let v_ms = fcQClipboard_text(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc text*(self: gen_qclipboard_types.QClipboard, subtype: openArray[char]): string =
  let v_ms = fcQClipboard_textSubtype(self.h, struct_seaqt_string(data: if len(subtype) > 0: addr subtype[0] else: nil, len: csize_t(len(subtype))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qclipboard_types.QClipboard, param1: openArray[char]): void =
  fcQClipboard_setText_QString(self.h, struct_seaqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

proc mimeData*(self: gen_qclipboard_types.QClipboard): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData(h: fcQClipboard_mimeData(self.h), owned: false)

proc setMimeData*(self: gen_qclipboard_types.QClipboard, data: gen_qmimedata_types.QMimeData): void =
  fcQClipboard_setMimeDataData(self.h, data.h)

proc image*(self: gen_qclipboard_types.QClipboard): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQClipboard_image(self.h), owned: true)

proc pixmap*(self: gen_qclipboard_types.QClipboard): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQClipboard_pixmap(self.h), owned: true)

proc setImage*(self: gen_qclipboard_types.QClipboard, param1: gen_qimage_types.QImage): void =
  fcQClipboard_setImage_QImage(self.h, param1.h)

proc setPixmap*(self: gen_qclipboard_types.QClipboard, param1: gen_qpixmap_types.QPixmap): void =
  fcQClipboard_setPixmap_QPixmap(self.h, param1.h)

proc changed*(self: gen_qclipboard_types.QClipboard, mode: cint): void =
  fcQClipboard_changed(self.h, cint(mode))

type QClipboardchangedSlot* = proc(mode: cint)
proc fcQClipboard_slot_callback_changed(slot: int, mode: cint) {.cdecl.} =
  let nimfunc = cast[ptr QClipboardchangedSlot](cast[pointer](slot))
  let slotval1 = cint(mode)

  nimfunc[](slotval1)

proc fcQClipboard_slot_callback_changed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QClipboardchangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onChanged*(self: gen_qclipboard_types.QClipboard, slot: QClipboardchangedSlot) =
  var tmp = new QClipboardchangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQClipboard_connect_changed(self.h, cast[int](addr tmp[]), fcQClipboard_slot_callback_changed, fcQClipboard_slot_callback_changed_release)

proc selectionChanged*(self: gen_qclipboard_types.QClipboard): void =
  fcQClipboard_selectionChanged(self.h)

type QClipboardselectionChangedSlot* = proc()
proc fcQClipboard_slot_callback_selectionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QClipboardselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQClipboard_slot_callback_selectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QClipboardselectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSelectionChanged*(self: gen_qclipboard_types.QClipboard, slot: QClipboardselectionChangedSlot) =
  var tmp = new QClipboardselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQClipboard_connect_selectionChanged(self.h, cast[int](addr tmp[]), fcQClipboard_slot_callback_selectionChanged, fcQClipboard_slot_callback_selectionChanged_release)

proc findBufferChanged*(self: gen_qclipboard_types.QClipboard): void =
  fcQClipboard_findBufferChanged(self.h)

type QClipboardfindBufferChangedSlot* = proc()
proc fcQClipboard_slot_callback_findBufferChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QClipboardfindBufferChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQClipboard_slot_callback_findBufferChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QClipboardfindBufferChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFindBufferChanged*(self: gen_qclipboard_types.QClipboard, slot: QClipboardfindBufferChangedSlot) =
  var tmp = new QClipboardfindBufferChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQClipboard_connect_findBufferChanged(self.h, cast[int](addr tmp[]), fcQClipboard_slot_callback_findBufferChanged, fcQClipboard_slot_callback_findBufferChanged_release)

proc dataChanged*(self: gen_qclipboard_types.QClipboard): void =
  fcQClipboard_dataChanged(self.h)

type QClipboarddataChangedSlot* = proc()
proc fcQClipboard_slot_callback_dataChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QClipboarddataChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQClipboard_slot_callback_dataChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QClipboarddataChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDataChanged*(self: gen_qclipboard_types.QClipboard, slot: QClipboarddataChangedSlot) =
  var tmp = new QClipboarddataChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQClipboard_connect_dataChanged(self.h, cast[int](addr tmp[]), fcQClipboard_slot_callback_dataChanged, fcQClipboard_slot_callback_dataChanged_release)

proc tr*(_: type gen_qclipboard_types.QClipboard, s: cstring, c: cstring): string =
  let v_ms = fcQClipboard_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qclipboard_types.QClipboard, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQClipboard_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qclipboard_types.QClipboard, s: cstring, c: cstring): string =
  let v_ms = fcQClipboard_trUtf8SC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qclipboard_types.QClipboard, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQClipboard_trUtf8SCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc clear*(self: gen_qclipboard_types.QClipboard, mode: cint): void =
  fcQClipboard_clearMode(self.h, cint(mode))

proc text*(self: gen_qclipboard_types.QClipboard, mode: cint): string =
  let v_ms = fcQClipboard_textMode(self.h, cint(mode))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc text*(self: gen_qclipboard_types.QClipboard, subtype: openArray[char], mode: cint): string =
  let v_ms = fcQClipboard_textSubtypeMode(self.h, struct_seaqt_string(data: if len(subtype) > 0: addr subtype[0] else: nil, len: csize_t(len(subtype))), cint(mode))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qclipboard_types.QClipboard, param1: openArray[char], mode: cint): void =
  fcQClipboard_setText_QString_QClipboard_Mode(self.h, struct_seaqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), cint(mode))

proc mimeData*(self: gen_qclipboard_types.QClipboard, mode: cint): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData(h: fcQClipboard_mimeDataMode(self.h, cint(mode)), owned: false)

proc setMimeData*(self: gen_qclipboard_types.QClipboard, data: gen_qmimedata_types.QMimeData, mode: cint): void =
  fcQClipboard_setMimeDataDataMode(self.h, data.h, cint(mode))

proc image*(self: gen_qclipboard_types.QClipboard, mode: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQClipboard_imageMode(self.h, cint(mode)), owned: true)

proc pixmap*(self: gen_qclipboard_types.QClipboard, mode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQClipboard_pixmapMode(self.h, cint(mode)), owned: true)

proc setImage*(self: gen_qclipboard_types.QClipboard, param1: gen_qimage_types.QImage, mode: cint): void =
  fcQClipboard_setImage_QImage_QClipboard_Mode(self.h, param1.h, cint(mode))

proc setPixmap*(self: gen_qclipboard_types.QClipboard, param1: gen_qpixmap_types.QPixmap, mode: cint): void =
  fcQClipboard_setPixmap_QPixmap_QClipboard_Mode(self.h, param1.h, cint(mode))

proc sender*(self: gen_qclipboard_types.QClipboard): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQClipboard_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qclipboard_types.QClipboard): cint =
  fcQClipboard_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qclipboard_types.QClipboard, signal: cstring): cint =
  fcQClipboard_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qclipboard_types.QClipboard, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQClipboard_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qclipboard_types.QClipboard): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQClipboard_staticMetaObject())
