import ./qtwidgets_pkg

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


{.compile("gen_qdatawidgetmapper.cpp", QtWidgetsCFlags).}


type QDataWidgetMapperSubmitPolicyEnum* = distinct cint
template AutoSubmit*(_: type QDataWidgetMapperSubmitPolicyEnum): untyped = 0
template ManualSubmit*(_: type QDataWidgetMapperSubmitPolicyEnum): untyped = 1


import ./gen_qdatawidgetmapper_types
export gen_qdatawidgetmapper_types

import
  ../QtCore/gen_qabstractitemmodel_types,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qabstractitemdelegate_types,
  ./gen_qwidget_types
export
  gen_qabstractitemmodel_types,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qabstractitemdelegate_types,
  gen_qwidget_types

type cQDataWidgetMapper*{.exportc: "QDataWidgetMapper", incompleteStruct.} = object

proc fcQDataWidgetMapper_metaObject(self: pointer): pointer {.importc: "QDataWidgetMapper_metaObject".}
proc fcQDataWidgetMapper_metacast(self: pointer, param1: cstring): pointer {.importc: "QDataWidgetMapper_metacast".}
proc fcQDataWidgetMapper_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDataWidgetMapper_metacall".}
proc fcQDataWidgetMapper_tr(s: cstring): struct_miqt_string {.importc: "QDataWidgetMapper_tr".}
proc fcQDataWidgetMapper_setModel(self: pointer, model: pointer): void {.importc: "QDataWidgetMapper_setModel".}
proc fcQDataWidgetMapper_model(self: pointer): pointer {.importc: "QDataWidgetMapper_model".}
proc fcQDataWidgetMapper_setItemDelegate(self: pointer, delegate: pointer): void {.importc: "QDataWidgetMapper_setItemDelegate".}
proc fcQDataWidgetMapper_itemDelegate(self: pointer): pointer {.importc: "QDataWidgetMapper_itemDelegate".}
proc fcQDataWidgetMapper_setRootIndex(self: pointer, index: pointer): void {.importc: "QDataWidgetMapper_setRootIndex".}
proc fcQDataWidgetMapper_rootIndex(self: pointer): pointer {.importc: "QDataWidgetMapper_rootIndex".}
proc fcQDataWidgetMapper_setOrientation(self: pointer, aOrientation: cint): void {.importc: "QDataWidgetMapper_setOrientation".}
proc fcQDataWidgetMapper_orientation(self: pointer): cint {.importc: "QDataWidgetMapper_orientation".}
proc fcQDataWidgetMapper_setSubmitPolicy(self: pointer, policy: cint): void {.importc: "QDataWidgetMapper_setSubmitPolicy".}
proc fcQDataWidgetMapper_submitPolicy(self: pointer): cint {.importc: "QDataWidgetMapper_submitPolicy".}
proc fcQDataWidgetMapper_addMapping(self: pointer, widget: pointer, section: cint): void {.importc: "QDataWidgetMapper_addMapping".}
proc fcQDataWidgetMapper_addMapping2(self: pointer, widget: pointer, section: cint, propertyName: struct_miqt_string): void {.importc: "QDataWidgetMapper_addMapping2".}
proc fcQDataWidgetMapper_removeMapping(self: pointer, widget: pointer): void {.importc: "QDataWidgetMapper_removeMapping".}
proc fcQDataWidgetMapper_mappedSection(self: pointer, widget: pointer): cint {.importc: "QDataWidgetMapper_mappedSection".}
proc fcQDataWidgetMapper_mappedPropertyName(self: pointer, widget: pointer): struct_miqt_string {.importc: "QDataWidgetMapper_mappedPropertyName".}
proc fcQDataWidgetMapper_mappedWidgetAt(self: pointer, section: cint): pointer {.importc: "QDataWidgetMapper_mappedWidgetAt".}
proc fcQDataWidgetMapper_clearMapping(self: pointer): void {.importc: "QDataWidgetMapper_clearMapping".}
proc fcQDataWidgetMapper_currentIndex(self: pointer): cint {.importc: "QDataWidgetMapper_currentIndex".}
proc fcQDataWidgetMapper_revert(self: pointer): void {.importc: "QDataWidgetMapper_revert".}
proc fcQDataWidgetMapper_submit(self: pointer): bool {.importc: "QDataWidgetMapper_submit".}
proc fcQDataWidgetMapper_toFirst(self: pointer): void {.importc: "QDataWidgetMapper_toFirst".}
proc fcQDataWidgetMapper_toLast(self: pointer): void {.importc: "QDataWidgetMapper_toLast".}
proc fcQDataWidgetMapper_toNext(self: pointer): void {.importc: "QDataWidgetMapper_toNext".}
proc fcQDataWidgetMapper_toPrevious(self: pointer): void {.importc: "QDataWidgetMapper_toPrevious".}
proc fcQDataWidgetMapper_setCurrentIndex(self: pointer, index: cint): void {.importc: "QDataWidgetMapper_setCurrentIndex".}
proc fcQDataWidgetMapper_setCurrentModelIndex(self: pointer, index: pointer): void {.importc: "QDataWidgetMapper_setCurrentModelIndex".}
proc fcQDataWidgetMapper_currentIndexChanged(self: pointer, index: cint): void {.importc: "QDataWidgetMapper_currentIndexChanged".}
proc fcQDataWidgetMapper_connect_currentIndexChanged(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDataWidgetMapper_connect_currentIndexChanged".}
proc fcQDataWidgetMapper_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDataWidgetMapper_tr2".}
proc fcQDataWidgetMapper_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDataWidgetMapper_tr3".}
proc fcQDataWidgetMapper_vtbl(self: pointer): pointer {.importc: "QDataWidgetMapper_vtbl".}
proc fcQDataWidgetMapper_vdata(self: pointer): pointer {.importc: "QDataWidgetMapper_vdata".}

type cQDataWidgetMapperVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setCurrentIndex*: proc(self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQDataWidgetMapper_virtualbase_metaObject(self: pointer): pointer {.importc: "QDataWidgetMapper_virtualbase_metaObject".}
proc fcQDataWidgetMapper_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDataWidgetMapper_virtualbase_metacast".}
proc fcQDataWidgetMapper_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDataWidgetMapper_virtualbase_metacall".}
proc fcQDataWidgetMapper_virtualbase_setCurrentIndex(self: pointer, index: cint): void {.importc: "QDataWidgetMapper_virtualbase_setCurrentIndex".}
proc fcQDataWidgetMapper_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDataWidgetMapper_virtualbase_event".}
proc fcQDataWidgetMapper_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDataWidgetMapper_virtualbase_eventFilter".}
proc fcQDataWidgetMapper_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDataWidgetMapper_virtualbase_timerEvent".}
proc fcQDataWidgetMapper_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDataWidgetMapper_virtualbase_childEvent".}
proc fcQDataWidgetMapper_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDataWidgetMapper_virtualbase_customEvent".}
proc fcQDataWidgetMapper_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDataWidgetMapper_virtualbase_connectNotify".}
proc fcQDataWidgetMapper_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDataWidgetMapper_virtualbase_disconnectNotify".}
proc fcQDataWidgetMapper_protectedbase_sender(self: pointer): pointer {.importc: "QDataWidgetMapper_protectedbase_sender".}
proc fcQDataWidgetMapper_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDataWidgetMapper_protectedbase_senderSignalIndex".}
proc fcQDataWidgetMapper_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDataWidgetMapper_protectedbase_receivers".}
proc fcQDataWidgetMapper_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDataWidgetMapper_protectedbase_isSignalConnected".}
proc fcQDataWidgetMapper_new(vtbl, vdata: pointer): ptr cQDataWidgetMapper {.importc: "QDataWidgetMapper_new".}
proc fcQDataWidgetMapper_new2(vtbl, vdata: pointer, parent: pointer): ptr cQDataWidgetMapper {.importc: "QDataWidgetMapper_new2".}
proc fcQDataWidgetMapper_staticMetaObject(): pointer {.importc: "QDataWidgetMapper_staticMetaObject".}

proc metaObject*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDataWidgetMapper_metaObject(self.h), owned: false)

proc metacast*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, param1: cstring): pointer =
  fcQDataWidgetMapper_metacast(self.h, param1)

proc metacall*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, param1: cint, param2: cint, param3: pointer): cint =
  fcQDataWidgetMapper_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdatawidgetmapper_types.QDataWidgetMapper, s: cstring): string =
  let v_ms = fcQDataWidgetMapper_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setModel*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQDataWidgetMapper_setModel(self.h, model.h)

proc model*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQDataWidgetMapper_model(self.h), owned: false)

proc setItemDelegate*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, delegate: gen_qabstractitemdelegate_types.QAbstractItemDelegate): void =
  fcQDataWidgetMapper_setItemDelegate(self.h, delegate.h)

proc itemDelegate*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQDataWidgetMapper_itemDelegate(self.h), owned: false)

proc setRootIndex*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQDataWidgetMapper_setRootIndex(self.h, index.h)

proc rootIndex*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDataWidgetMapper_rootIndex(self.h), owned: true)

proc setOrientation*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, aOrientation: cint): void =
  fcQDataWidgetMapper_setOrientation(self.h, cint(aOrientation))

proc orientation*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper): cint =
  cint(fcQDataWidgetMapper_orientation(self.h))

proc setSubmitPolicy*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, policy: cint): void =
  fcQDataWidgetMapper_setSubmitPolicy(self.h, cint(policy))

proc submitPolicy*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper): cint =
  cint(fcQDataWidgetMapper_submitPolicy(self.h))

proc addMapping*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, widget: gen_qwidget_types.QWidget, section: cint): void =
  fcQDataWidgetMapper_addMapping(self.h, widget.h, section)

proc addMapping*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, widget: gen_qwidget_types.QWidget, section: cint, propertyName: openArray[byte]): void =
  fcQDataWidgetMapper_addMapping2(self.h, widget.h, section, struct_miqt_string(data: cast[cstring](if len(propertyName) == 0: nil else: unsafeAddr propertyName[0]), len: csize_t(len(propertyName))))

proc removeMapping*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, widget: gen_qwidget_types.QWidget): void =
  fcQDataWidgetMapper_removeMapping(self.h, widget.h)

proc mappedSection*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, widget: gen_qwidget_types.QWidget): cint =
  fcQDataWidgetMapper_mappedSection(self.h, widget.h)

proc mappedPropertyName*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, widget: gen_qwidget_types.QWidget): seq[byte] =
  var v_bytearray = fcQDataWidgetMapper_mappedPropertyName(self.h, widget.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc mappedWidgetAt*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, section: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDataWidgetMapper_mappedWidgetAt(self.h, section), owned: false)

proc clearMapping*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper): void =
  fcQDataWidgetMapper_clearMapping(self.h)

proc currentIndex*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper): cint =
  fcQDataWidgetMapper_currentIndex(self.h)

proc revert*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper): void =
  fcQDataWidgetMapper_revert(self.h)

proc submit*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper): bool =
  fcQDataWidgetMapper_submit(self.h)

proc toFirst*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper): void =
  fcQDataWidgetMapper_toFirst(self.h)

proc toLast*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper): void =
  fcQDataWidgetMapper_toLast(self.h)

proc toNext*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper): void =
  fcQDataWidgetMapper_toNext(self.h)

proc toPrevious*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper): void =
  fcQDataWidgetMapper_toPrevious(self.h)

proc setCurrentIndex*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, index: cint): void =
  fcQDataWidgetMapper_setCurrentIndex(self.h, index)

proc setCurrentModelIndex*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQDataWidgetMapper_setCurrentModelIndex(self.h, index.h)

proc currentIndexChanged*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, index: cint): void =
  fcQDataWidgetMapper_currentIndexChanged(self.h, index)

type QDataWidgetMappercurrentIndexChangedSlot* = proc(index: cint)
proc fcQDataWidgetMapper_slot_callback_currentIndexChanged(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QDataWidgetMappercurrentIndexChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc fcQDataWidgetMapper_slot_callback_currentIndexChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDataWidgetMappercurrentIndexChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentIndexChanged*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, slot: QDataWidgetMappercurrentIndexChangedSlot) =
  var tmp = new QDataWidgetMappercurrentIndexChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_connect_currentIndexChanged(self.h, cast[int](addr tmp[]), fcQDataWidgetMapper_slot_callback_currentIndexChanged, fcQDataWidgetMapper_slot_callback_currentIndexChanged_release)

proc tr*(_: type gen_qdatawidgetmapper_types.QDataWidgetMapper, s: cstring, c: cstring): string =
  let v_ms = fcQDataWidgetMapper_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdatawidgetmapper_types.QDataWidgetMapper, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDataWidgetMapper_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QDataWidgetMappermetaObjectProc* = proc(self: QDataWidgetMapper): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDataWidgetMappermetacastProc* = proc(self: QDataWidgetMapper, param1: cstring): pointer {.raises: [], gcsafe.}
type QDataWidgetMappermetacallProc* = proc(self: QDataWidgetMapper, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDataWidgetMappersetCurrentIndexProc* = proc(self: QDataWidgetMapper, index: cint): void {.raises: [], gcsafe.}
type QDataWidgetMappereventProc* = proc(self: QDataWidgetMapper, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDataWidgetMappereventFilterProc* = proc(self: QDataWidgetMapper, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDataWidgetMappertimerEventProc* = proc(self: QDataWidgetMapper, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDataWidgetMapperchildEventProc* = proc(self: QDataWidgetMapper, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDataWidgetMappercustomEventProc* = proc(self: QDataWidgetMapper, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDataWidgetMapperconnectNotifyProc* = proc(self: QDataWidgetMapper, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDataWidgetMapperdisconnectNotifyProc* = proc(self: QDataWidgetMapper, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QDataWidgetMapperVTable* {.inheritable, pure.} = object
  vtbl: cQDataWidgetMapperVTable
  metaObject*: QDataWidgetMappermetaObjectProc
  metacast*: QDataWidgetMappermetacastProc
  metacall*: QDataWidgetMappermetacallProc
  setCurrentIndex*: QDataWidgetMappersetCurrentIndexProc
  event*: QDataWidgetMappereventProc
  eventFilter*: QDataWidgetMappereventFilterProc
  timerEvent*: QDataWidgetMappertimerEventProc
  childEvent*: QDataWidgetMapperchildEventProc
  customEvent*: QDataWidgetMappercustomEventProc
  connectNotify*: QDataWidgetMapperconnectNotifyProc
  disconnectNotify*: QDataWidgetMapperdisconnectNotifyProc

proc QDataWidgetMappermetaObject*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDataWidgetMapper_virtualbase_metaObject(self.h), owned: false)

proc QDataWidgetMappermetacast*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, param1: cstring): pointer =
  fcQDataWidgetMapper_virtualbase_metacast(self.h, param1)

proc QDataWidgetMappermetacall*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, param1: cint, param2: cint, param3: pointer): cint =
  fcQDataWidgetMapper_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QDataWidgetMappersetCurrentIndex*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, index: cint): void =
  fcQDataWidgetMapper_virtualbase_setCurrentIndex(self.h, index)

proc QDataWidgetMapperevent*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, event: gen_qcoreevent_types.QEvent): bool =
  fcQDataWidgetMapper_virtualbase_event(self.h, event.h)

proc QDataWidgetMappereventFilter*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDataWidgetMapper_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QDataWidgetMappertimerEvent*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDataWidgetMapper_virtualbase_timerEvent(self.h, event.h)

proc QDataWidgetMapperchildEvent*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDataWidgetMapper_virtualbase_childEvent(self.h, event.h)

proc QDataWidgetMappercustomEvent*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, event: gen_qcoreevent_types.QEvent): void =
  fcQDataWidgetMapper_virtualbase_customEvent(self.h, event.h)

proc QDataWidgetMapperconnectNotify*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDataWidgetMapper_virtualbase_connectNotify(self.h, signal.h)

proc QDataWidgetMapperdisconnectNotify*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDataWidgetMapper_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQDataWidgetMapper_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDataWidgetMapperVTable](fcQDataWidgetMapper_vdata(self))
  let self = QDataWidgetMapper(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDataWidgetMapper_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDataWidgetMapperVTable](fcQDataWidgetMapper_vdata(self))
  let self = QDataWidgetMapper(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQDataWidgetMapper_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDataWidgetMapperVTable](fcQDataWidgetMapper_vdata(self))
  let self = QDataWidgetMapper(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDataWidgetMapper_vtable_callback_setCurrentIndex(self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDataWidgetMapperVTable](fcQDataWidgetMapper_vdata(self))
  let self = QDataWidgetMapper(h: self)
  let slotval1 = index
  vtbl[].setCurrentIndex(self, slotval1)

proc fcQDataWidgetMapper_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDataWidgetMapperVTable](fcQDataWidgetMapper_vdata(self))
  let self = QDataWidgetMapper(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQDataWidgetMapper_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDataWidgetMapperVTable](fcQDataWidgetMapper_vdata(self))
  let self = QDataWidgetMapper(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQDataWidgetMapper_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDataWidgetMapperVTable](fcQDataWidgetMapper_vdata(self))
  let self = QDataWidgetMapper(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQDataWidgetMapper_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDataWidgetMapperVTable](fcQDataWidgetMapper_vdata(self))
  let self = QDataWidgetMapper(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQDataWidgetMapper_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDataWidgetMapperVTable](fcQDataWidgetMapper_vdata(self))
  let self = QDataWidgetMapper(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQDataWidgetMapper_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDataWidgetMapperVTable](fcQDataWidgetMapper_vdata(self))
  let self = QDataWidgetMapper(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQDataWidgetMapper_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDataWidgetMapperVTable](fcQDataWidgetMapper_vdata(self))
  let self = QDataWidgetMapper(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDataWidgetMapper* {.inheritable.} = ref object of QDataWidgetMapper
  vtbl*: cQDataWidgetMapperVTable

method metaObject*(self: VirtualQDataWidgetMapper): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDataWidgetMappermetaObject(self[])
method metacast*(self: VirtualQDataWidgetMapper, param1: cstring): pointer {.base.} =
  QDataWidgetMappermetacast(self[], param1)
method metacall*(self: VirtualQDataWidgetMapper, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDataWidgetMappermetacall(self[], param1, param2, param3)
method setCurrentIndex*(self: VirtualQDataWidgetMapper, index: cint): void {.base.} =
  QDataWidgetMappersetCurrentIndex(self[], index)
method event*(self: VirtualQDataWidgetMapper, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDataWidgetMapperevent(self[], event)
method eventFilter*(self: VirtualQDataWidgetMapper, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDataWidgetMappereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQDataWidgetMapper, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDataWidgetMappertimerEvent(self[], event)
method childEvent*(self: VirtualQDataWidgetMapper, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDataWidgetMapperchildEvent(self[], event)
method customEvent*(self: VirtualQDataWidgetMapper, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDataWidgetMappercustomEvent(self[], event)
method connectNotify*(self: VirtualQDataWidgetMapper, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDataWidgetMapperconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQDataWidgetMapper, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDataWidgetMapperdisconnectNotify(self[], signal)

proc fcQDataWidgetMapper_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDataWidgetMapper](fcQDataWidgetMapper_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDataWidgetMapper_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDataWidgetMapper](fcQDataWidgetMapper_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQDataWidgetMapper_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDataWidgetMapper](fcQDataWidgetMapper_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDataWidgetMapper_method_callback_setCurrentIndex(self: pointer, index: cint): void {.cdecl.} =
  let inst = cast[VirtualQDataWidgetMapper](fcQDataWidgetMapper_vdata(self))
  let slotval1 = index
  inst.setCurrentIndex(slotval1)

proc fcQDataWidgetMapper_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDataWidgetMapper](fcQDataWidgetMapper_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQDataWidgetMapper_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDataWidgetMapper](fcQDataWidgetMapper_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQDataWidgetMapper_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDataWidgetMapper](fcQDataWidgetMapper_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQDataWidgetMapper_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDataWidgetMapper](fcQDataWidgetMapper_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQDataWidgetMapper_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDataWidgetMapper](fcQDataWidgetMapper_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQDataWidgetMapper_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDataWidgetMapper](fcQDataWidgetMapper_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQDataWidgetMapper_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDataWidgetMapper](fcQDataWidgetMapper_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDataWidgetMapper_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper): cint =
  fcQDataWidgetMapper_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, signal: cstring): cint =
  fcQDataWidgetMapper_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDataWidgetMapper_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qdatawidgetmapper_types.QDataWidgetMapper,
    vtbl: ref QDataWidgetMapperVTable = nil): gen_qdatawidgetmapper_types.QDataWidgetMapper =
  let vtbl = if vtbl == nil: new QDataWidgetMapperVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDataWidgetMapperVTable](fcQDataWidgetMapper_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDataWidgetMapper_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDataWidgetMapper_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDataWidgetMapper_vtable_callback_metacall
  if not isNil(vtbl[].setCurrentIndex):
    vtbl[].vtbl.setCurrentIndex = fcQDataWidgetMapper_vtable_callback_setCurrentIndex
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDataWidgetMapper_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDataWidgetMapper_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDataWidgetMapper_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDataWidgetMapper_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDataWidgetMapper_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDataWidgetMapper_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDataWidgetMapper_vtable_callback_disconnectNotify
  gen_qdatawidgetmapper_types.QDataWidgetMapper(h: fcQDataWidgetMapper_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qdatawidgetmapper_types.QDataWidgetMapper,
    parent: gen_qobject_types.QObject,
    vtbl: ref QDataWidgetMapperVTable = nil): gen_qdatawidgetmapper_types.QDataWidgetMapper =
  let vtbl = if vtbl == nil: new QDataWidgetMapperVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDataWidgetMapperVTable](fcQDataWidgetMapper_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDataWidgetMapper_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDataWidgetMapper_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDataWidgetMapper_vtable_callback_metacall
  if not isNil(vtbl[].setCurrentIndex):
    vtbl[].vtbl.setCurrentIndex = fcQDataWidgetMapper_vtable_callback_setCurrentIndex
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDataWidgetMapper_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDataWidgetMapper_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDataWidgetMapper_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDataWidgetMapper_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDataWidgetMapper_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDataWidgetMapper_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDataWidgetMapper_vtable_callback_disconnectNotify
  gen_qdatawidgetmapper_types.QDataWidgetMapper(h: fcQDataWidgetMapper_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQDataWidgetMapper_mvtbl = cQDataWidgetMapperVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDataWidgetMapper()[])](self.fcQDataWidgetMapper_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQDataWidgetMapper_method_callback_metaObject,
  metacast: fcQDataWidgetMapper_method_callback_metacast,
  metacall: fcQDataWidgetMapper_method_callback_metacall,
  setCurrentIndex: fcQDataWidgetMapper_method_callback_setCurrentIndex,
  event: fcQDataWidgetMapper_method_callback_event,
  eventFilter: fcQDataWidgetMapper_method_callback_eventFilter,
  timerEvent: fcQDataWidgetMapper_method_callback_timerEvent,
  childEvent: fcQDataWidgetMapper_method_callback_childEvent,
  customEvent: fcQDataWidgetMapper_method_callback_customEvent,
  connectNotify: fcQDataWidgetMapper_method_callback_connectNotify,
  disconnectNotify: fcQDataWidgetMapper_method_callback_disconnectNotify,
)
proc create*(T: type gen_qdatawidgetmapper_types.QDataWidgetMapper,
    inst: VirtualQDataWidgetMapper) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDataWidgetMapper_new(addr(cQDataWidgetMapper_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qdatawidgetmapper_types.QDataWidgetMapper,
    parent: gen_qobject_types.QObject,
    inst: VirtualQDataWidgetMapper) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDataWidgetMapper_new2(addr(cQDataWidgetMapper_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qdatawidgetmapper_types.QDataWidgetMapper): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDataWidgetMapper_staticMetaObject())
