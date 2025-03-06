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
{.compile("gen_qfileselector.cpp", cflags).}


import ./gen_qfileselector_types
export gen_qfileselector_types

import
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types,
  ./gen_qurl_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types

type cQFileSelector*{.exportc: "QFileSelector", incompleteStruct.} = object

proc fcQFileSelector_new(): ptr cQFileSelector {.importc: "QFileSelector_new".}
proc fcQFileSelector_new2(parent: pointer): ptr cQFileSelector {.importc: "QFileSelector_new2".}
proc fcQFileSelector_metaObject(self: pointer, ): pointer {.importc: "QFileSelector_metaObject".}
proc fcQFileSelector_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileSelector_metacast".}
proc fcQFileSelector_tr(s: cstring): struct_miqt_string {.importc: "QFileSelector_tr".}
proc fcQFileSelector_select(self: pointer, filePath: struct_miqt_string): struct_miqt_string {.importc: "QFileSelector_select".}
proc fcQFileSelector_selectWithFilePath(self: pointer, filePath: pointer): pointer {.importc: "QFileSelector_selectWithFilePath".}
proc fcQFileSelector_extraSelectors(self: pointer, ): struct_miqt_array {.importc: "QFileSelector_extraSelectors".}
proc fcQFileSelector_setExtraSelectors(self: pointer, list: struct_miqt_array): void {.importc: "QFileSelector_setExtraSelectors".}
proc fcQFileSelector_allSelectors(self: pointer, ): struct_miqt_array {.importc: "QFileSelector_allSelectors".}
proc fcQFileSelector_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileSelector_tr2".}
proc fcQFileSelector_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileSelector_tr3".}
proc fQFileSelector_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QFileSelector_virtualbase_event".}
proc fcQFileSelector_override_virtual_event(self: pointer, slot: int) {.importc: "QFileSelector_override_virtual_event".}
proc fQFileSelector_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QFileSelector_virtualbase_eventFilter".}
proc fcQFileSelector_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFileSelector_override_virtual_eventFilter".}
proc fQFileSelector_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFileSelector_virtualbase_timerEvent".}
proc fcQFileSelector_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFileSelector_override_virtual_timerEvent".}
proc fQFileSelector_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFileSelector_virtualbase_childEvent".}
proc fcQFileSelector_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFileSelector_override_virtual_childEvent".}
proc fQFileSelector_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFileSelector_virtualbase_customEvent".}
proc fcQFileSelector_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFileSelector_override_virtual_customEvent".}
proc fQFileSelector_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFileSelector_virtualbase_connectNotify".}
proc fcQFileSelector_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFileSelector_override_virtual_connectNotify".}
proc fQFileSelector_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFileSelector_virtualbase_disconnectNotify".}
proc fcQFileSelector_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFileSelector_override_virtual_disconnectNotify".}
proc fcQFileSelector_delete(self: pointer) {.importc: "QFileSelector_delete".}


func init*(T: type gen_qfileselector_types.QFileSelector, h: ptr cQFileSelector): gen_qfileselector_types.QFileSelector =
  T(h: h)
proc create*(T: type gen_qfileselector_types.QFileSelector, ): gen_qfileselector_types.QFileSelector =
  gen_qfileselector_types.QFileSelector.init(fcQFileSelector_new())

proc create*(T: type gen_qfileselector_types.QFileSelector, parent: gen_qobject_types.QObject): gen_qfileselector_types.QFileSelector =
  gen_qfileselector_types.QFileSelector.init(fcQFileSelector_new2(parent.h))

proc metaObject*(self: gen_qfileselector_types.QFileSelector, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSelector_metaObject(self.h))

proc metacast*(self: gen_qfileselector_types.QFileSelector, param1: cstring): pointer =
  fcQFileSelector_metacast(self.h, param1)

proc tr*(_: type gen_qfileselector_types.QFileSelector, s: cstring): string =
  let v_ms = fcQFileSelector_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc select*(self: gen_qfileselector_types.QFileSelector, filePath: string): string =
  let v_ms = fcQFileSelector_select(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc select*(self: gen_qfileselector_types.QFileSelector, filePath: gen_qurl_types.QUrl): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileSelector_selectWithFilePath(self.h, filePath.h))

proc extraSelectors*(self: gen_qfileselector_types.QFileSelector, ): seq[string] =
  var v_ma = fcQFileSelector_extraSelectors(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setExtraSelectors*(self: gen_qfileselector_types.QFileSelector, list: seq[string]): void =
  var list_CArray = newSeq[struct_miqt_string](len(list))
  for i in 0..<len(list):
    list_CArray[i] = struct_miqt_string(data: list[i], len: csize_t(len(list[i])))

  fcQFileSelector_setExtraSelectors(self.h, struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

proc allSelectors*(self: gen_qfileselector_types.QFileSelector, ): seq[string] =
  var v_ma = fcQFileSelector_allSelectors(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc tr*(_: type gen_qfileselector_types.QFileSelector, s: cstring, c: cstring): string =
  let v_ms = fcQFileSelector_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfileselector_types.QFileSelector, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFileSelector_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QFileSelectorevent*(self: gen_qfileselector_types.QFileSelector, event: gen_qcoreevent_types.QEvent): bool =
  fQFileSelector_virtualbase_event(self.h, event.h)

type QFileSelectoreventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qfileselector_types.QFileSelector, slot: QFileSelectoreventProc) =
  # TODO check subclass
  var tmp = new QFileSelectoreventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSelector_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSelector_event(self: ptr cQFileSelector, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QFileSelector_event ".} =
  var nimfunc = cast[ptr QFileSelectoreventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileSelectoreventFilter*(self: gen_qfileselector_types.QFileSelector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQFileSelector_virtualbase_eventFilter(self.h, watched.h, event.h)

type QFileSelectoreventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qfileselector_types.QFileSelector, slot: QFileSelectoreventFilterProc) =
  # TODO check subclass
  var tmp = new QFileSelectoreventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSelector_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSelector_eventFilter(self: ptr cQFileSelector, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFileSelector_eventFilter ".} =
  var nimfunc = cast[ptr QFileSelectoreventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QFileSelectortimerEvent*(self: gen_qfileselector_types.QFileSelector, event: gen_qcoreevent_types.QTimerEvent): void =
  fQFileSelector_virtualbase_timerEvent(self.h, event.h)

type QFileSelectortimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qfileselector_types.QFileSelector, slot: QFileSelectortimerEventProc) =
  # TODO check subclass
  var tmp = new QFileSelectortimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSelector_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSelector_timerEvent(self: ptr cQFileSelector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSelector_timerEvent ".} =
  var nimfunc = cast[ptr QFileSelectortimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QFileSelectorchildEvent*(self: gen_qfileselector_types.QFileSelector, event: gen_qcoreevent_types.QChildEvent): void =
  fQFileSelector_virtualbase_childEvent(self.h, event.h)

type QFileSelectorchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qfileselector_types.QFileSelector, slot: QFileSelectorchildEventProc) =
  # TODO check subclass
  var tmp = new QFileSelectorchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSelector_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSelector_childEvent(self: ptr cQFileSelector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSelector_childEvent ".} =
  var nimfunc = cast[ptr QFileSelectorchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QFileSelectorcustomEvent*(self: gen_qfileselector_types.QFileSelector, event: gen_qcoreevent_types.QEvent): void =
  fQFileSelector_virtualbase_customEvent(self.h, event.h)

type QFileSelectorcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qfileselector_types.QFileSelector, slot: QFileSelectorcustomEventProc) =
  # TODO check subclass
  var tmp = new QFileSelectorcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSelector_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSelector_customEvent(self: ptr cQFileSelector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSelector_customEvent ".} =
  var nimfunc = cast[ptr QFileSelectorcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFileSelectorconnectNotify*(self: gen_qfileselector_types.QFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFileSelector_virtualbase_connectNotify(self.h, signal.h)

type QFileSelectorconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qfileselector_types.QFileSelector, slot: QFileSelectorconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFileSelectorconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSelector_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSelector_connectNotify(self: ptr cQFileSelector, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFileSelector_connectNotify ".} =
  var nimfunc = cast[ptr QFileSelectorconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QFileSelectordisconnectNotify*(self: gen_qfileselector_types.QFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFileSelector_virtualbase_disconnectNotify(self.h, signal.h)

type QFileSelectordisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qfileselector_types.QFileSelector, slot: QFileSelectordisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFileSelectordisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSelector_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSelector_disconnectNotify(self: ptr cQFileSelector, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFileSelector_disconnectNotify ".} =
  var nimfunc = cast[ptr QFileSelectordisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qfileselector_types.QFileSelector) =
  fcQFileSelector_delete(self.h)
