import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qdatawidgetmapper.cpp", cflags).}


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

proc fcQDataWidgetMapper_new(): ptr cQDataWidgetMapper {.importc: "QDataWidgetMapper_new".}
proc fcQDataWidgetMapper_new2(parent: pointer): ptr cQDataWidgetMapper {.importc: "QDataWidgetMapper_new2".}
proc fcQDataWidgetMapper_metaObject(self: pointer, ): pointer {.importc: "QDataWidgetMapper_metaObject".}
proc fcQDataWidgetMapper_metacast(self: pointer, param1: cstring): pointer {.importc: "QDataWidgetMapper_metacast".}
proc fcQDataWidgetMapper_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDataWidgetMapper_metacall".}
proc fcQDataWidgetMapper_tr(s: cstring): struct_miqt_string {.importc: "QDataWidgetMapper_tr".}
proc fcQDataWidgetMapper_setModel(self: pointer, model: pointer): void {.importc: "QDataWidgetMapper_setModel".}
proc fcQDataWidgetMapper_model(self: pointer, ): pointer {.importc: "QDataWidgetMapper_model".}
proc fcQDataWidgetMapper_setItemDelegate(self: pointer, delegate: pointer): void {.importc: "QDataWidgetMapper_setItemDelegate".}
proc fcQDataWidgetMapper_itemDelegate(self: pointer, ): pointer {.importc: "QDataWidgetMapper_itemDelegate".}
proc fcQDataWidgetMapper_setRootIndex(self: pointer, index: pointer): void {.importc: "QDataWidgetMapper_setRootIndex".}
proc fcQDataWidgetMapper_rootIndex(self: pointer, ): pointer {.importc: "QDataWidgetMapper_rootIndex".}
proc fcQDataWidgetMapper_setOrientation(self: pointer, aOrientation: cint): void {.importc: "QDataWidgetMapper_setOrientation".}
proc fcQDataWidgetMapper_orientation(self: pointer, ): cint {.importc: "QDataWidgetMapper_orientation".}
proc fcQDataWidgetMapper_setSubmitPolicy(self: pointer, policy: cint): void {.importc: "QDataWidgetMapper_setSubmitPolicy".}
proc fcQDataWidgetMapper_submitPolicy(self: pointer, ): cint {.importc: "QDataWidgetMapper_submitPolicy".}
proc fcQDataWidgetMapper_addMapping(self: pointer, widget: pointer, section: cint): void {.importc: "QDataWidgetMapper_addMapping".}
proc fcQDataWidgetMapper_addMapping2(self: pointer, widget: pointer, section: cint, propertyName: struct_miqt_string): void {.importc: "QDataWidgetMapper_addMapping2".}
proc fcQDataWidgetMapper_removeMapping(self: pointer, widget: pointer): void {.importc: "QDataWidgetMapper_removeMapping".}
proc fcQDataWidgetMapper_mappedSection(self: pointer, widget: pointer): cint {.importc: "QDataWidgetMapper_mappedSection".}
proc fcQDataWidgetMapper_mappedPropertyName(self: pointer, widget: pointer): struct_miqt_string {.importc: "QDataWidgetMapper_mappedPropertyName".}
proc fcQDataWidgetMapper_mappedWidgetAt(self: pointer, section: cint): pointer {.importc: "QDataWidgetMapper_mappedWidgetAt".}
proc fcQDataWidgetMapper_clearMapping(self: pointer, ): void {.importc: "QDataWidgetMapper_clearMapping".}
proc fcQDataWidgetMapper_currentIndex(self: pointer, ): cint {.importc: "QDataWidgetMapper_currentIndex".}
proc fcQDataWidgetMapper_revert(self: pointer, ): void {.importc: "QDataWidgetMapper_revert".}
proc fcQDataWidgetMapper_submit(self: pointer, ): bool {.importc: "QDataWidgetMapper_submit".}
proc fcQDataWidgetMapper_toFirst(self: pointer, ): void {.importc: "QDataWidgetMapper_toFirst".}
proc fcQDataWidgetMapper_toLast(self: pointer, ): void {.importc: "QDataWidgetMapper_toLast".}
proc fcQDataWidgetMapper_toNext(self: pointer, ): void {.importc: "QDataWidgetMapper_toNext".}
proc fcQDataWidgetMapper_toPrevious(self: pointer, ): void {.importc: "QDataWidgetMapper_toPrevious".}
proc fcQDataWidgetMapper_setCurrentIndex(self: pointer, index: cint): void {.importc: "QDataWidgetMapper_setCurrentIndex".}
proc fcQDataWidgetMapper_setCurrentModelIndex(self: pointer, index: pointer): void {.importc: "QDataWidgetMapper_setCurrentModelIndex".}
proc fcQDataWidgetMapper_currentIndexChanged(self: pointer, index: cint): void {.importc: "QDataWidgetMapper_currentIndexChanged".}
proc fcQDataWidgetMapper_connect_currentIndexChanged(self: pointer, slot: int) {.importc: "QDataWidgetMapper_connect_currentIndexChanged".}
proc fcQDataWidgetMapper_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDataWidgetMapper_tr2".}
proc fcQDataWidgetMapper_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDataWidgetMapper_tr3".}
proc fQDataWidgetMapper_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QDataWidgetMapper_virtualbase_metaObject".}
proc fcQDataWidgetMapper_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_metaObject".}
proc fQDataWidgetMapper_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QDataWidgetMapper_virtualbase_metacast".}
proc fcQDataWidgetMapper_override_virtual_metacast(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_metacast".}
proc fQDataWidgetMapper_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDataWidgetMapper_virtualbase_metacall".}
proc fcQDataWidgetMapper_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_metacall".}
proc fQDataWidgetMapper_virtualbase_setCurrentIndex(self: pointer, index: cint): void{.importc: "QDataWidgetMapper_virtualbase_setCurrentIndex".}
proc fcQDataWidgetMapper_override_virtual_setCurrentIndex(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_setCurrentIndex".}
proc fQDataWidgetMapper_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDataWidgetMapper_virtualbase_event".}
proc fcQDataWidgetMapper_override_virtual_event(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_event".}
proc fQDataWidgetMapper_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDataWidgetMapper_virtualbase_eventFilter".}
proc fcQDataWidgetMapper_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_eventFilter".}
proc fQDataWidgetMapper_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDataWidgetMapper_virtualbase_timerEvent".}
proc fcQDataWidgetMapper_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_timerEvent".}
proc fQDataWidgetMapper_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDataWidgetMapper_virtualbase_childEvent".}
proc fcQDataWidgetMapper_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_childEvent".}
proc fQDataWidgetMapper_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDataWidgetMapper_virtualbase_customEvent".}
proc fcQDataWidgetMapper_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_customEvent".}
proc fQDataWidgetMapper_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDataWidgetMapper_virtualbase_connectNotify".}
proc fcQDataWidgetMapper_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_connectNotify".}
proc fQDataWidgetMapper_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDataWidgetMapper_virtualbase_disconnectNotify".}
proc fcQDataWidgetMapper_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_disconnectNotify".}
proc fcQDataWidgetMapper_staticMetaObject(): pointer {.importc: "QDataWidgetMapper_staticMetaObject".}
proc fcQDataWidgetMapper_delete(self: pointer) {.importc: "QDataWidgetMapper_delete".}


func init*(T: type gen_qdatawidgetmapper_types.QDataWidgetMapper, h: ptr cQDataWidgetMapper): gen_qdatawidgetmapper_types.QDataWidgetMapper =
  T(h: h)
proc create*(T: type gen_qdatawidgetmapper_types.QDataWidgetMapper, ): gen_qdatawidgetmapper_types.QDataWidgetMapper =
  gen_qdatawidgetmapper_types.QDataWidgetMapper.init(fcQDataWidgetMapper_new())

proc create*(T: type gen_qdatawidgetmapper_types.QDataWidgetMapper, parent: gen_qobject_types.QObject): gen_qdatawidgetmapper_types.QDataWidgetMapper =
  gen_qdatawidgetmapper_types.QDataWidgetMapper.init(fcQDataWidgetMapper_new2(parent.h))

proc metaObject*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDataWidgetMapper_metaObject(self.h))

proc metacast*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, param1: cstring): pointer =
  fcQDataWidgetMapper_metacast(self.h, param1)

proc metacall*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, param1: cint, param2: cint, param3: pointer): cint =
  fcQDataWidgetMapper_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdatawidgetmapper_types.QDataWidgetMapper, s: cstring): string =
  let v_ms = fcQDataWidgetMapper_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setModel*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQDataWidgetMapper_setModel(self.h, model.h)

proc model*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, ): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQDataWidgetMapper_model(self.h))

proc setItemDelegate*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, delegate: gen_qabstractitemdelegate_types.QAbstractItemDelegate): void =
  fcQDataWidgetMapper_setItemDelegate(self.h, delegate.h)

proc itemDelegate*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, ): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQDataWidgetMapper_itemDelegate(self.h))

proc setRootIndex*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQDataWidgetMapper_setRootIndex(self.h, index.h)

proc rootIndex*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, ): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQDataWidgetMapper_rootIndex(self.h))

proc setOrientation*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, aOrientation: cint): void =
  fcQDataWidgetMapper_setOrientation(self.h, cint(aOrientation))

proc orientation*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, ): cint =
  cint(fcQDataWidgetMapper_orientation(self.h))

proc setSubmitPolicy*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, policy: cint): void =
  fcQDataWidgetMapper_setSubmitPolicy(self.h, cint(policy))

proc submitPolicy*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, ): cint =
  cint(fcQDataWidgetMapper_submitPolicy(self.h))

proc addMapping*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, widget: gen_qwidget_types.QWidget, section: cint): void =
  fcQDataWidgetMapper_addMapping(self.h, widget.h, section)

proc addMapping*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, widget: gen_qwidget_types.QWidget, section: cint, propertyName: seq[byte]): void =
  fcQDataWidgetMapper_addMapping2(self.h, widget.h, section, struct_miqt_string(data: cast[cstring](if len(propertyName) == 0: nil else: unsafeAddr propertyName[0]), len: csize_t(len(propertyName))))

proc removeMapping*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, widget: gen_qwidget_types.QWidget): void =
  fcQDataWidgetMapper_removeMapping(self.h, widget.h)

proc mappedSection*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, widget: gen_qwidget_types.QWidget): cint =
  fcQDataWidgetMapper_mappedSection(self.h, widget.h)

proc mappedPropertyName*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, widget: gen_qwidget_types.QWidget): seq[byte] =
  var v_bytearray = fcQDataWidgetMapper_mappedPropertyName(self.h, widget.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc mappedWidgetAt*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, section: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDataWidgetMapper_mappedWidgetAt(self.h, section))

proc clearMapping*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, ): void =
  fcQDataWidgetMapper_clearMapping(self.h)

proc currentIndex*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, ): cint =
  fcQDataWidgetMapper_currentIndex(self.h)

proc revert*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, ): void =
  fcQDataWidgetMapper_revert(self.h)

proc submit*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, ): bool =
  fcQDataWidgetMapper_submit(self.h)

proc toFirst*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, ): void =
  fcQDataWidgetMapper_toFirst(self.h)

proc toLast*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, ): void =
  fcQDataWidgetMapper_toLast(self.h)

proc toNext*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, ): void =
  fcQDataWidgetMapper_toNext(self.h)

proc toPrevious*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, ): void =
  fcQDataWidgetMapper_toPrevious(self.h)

proc setCurrentIndex*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, index: cint): void =
  fcQDataWidgetMapper_setCurrentIndex(self.h, index)

proc setCurrentModelIndex*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQDataWidgetMapper_setCurrentModelIndex(self.h, index.h)

proc currentIndexChanged*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, index: cint): void =
  fcQDataWidgetMapper_currentIndexChanged(self.h, index)

type QDataWidgetMappercurrentIndexChangedSlot* = proc(index: cint)
proc miqt_exec_callback_QDataWidgetMapper_currentIndexChanged(slot: int, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QDataWidgetMappercurrentIndexChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc oncurrentIndexChanged*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, slot: QDataWidgetMappercurrentIndexChangedSlot) =
  var tmp = new QDataWidgetMappercurrentIndexChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_connect_currentIndexChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qdatawidgetmapper_types.QDataWidgetMapper, s: cstring, c: cstring): string =
  let v_ms = fcQDataWidgetMapper_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdatawidgetmapper_types.QDataWidgetMapper, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDataWidgetMapper_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QDataWidgetMappermetaObject*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQDataWidgetMapper_virtualbase_metaObject(self.h))

type QDataWidgetMappermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, slot: QDataWidgetMappermetaObjectProc) =
  # TODO check subclass
  var tmp = new QDataWidgetMappermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_metaObject(self: ptr cQDataWidgetMapper, slot: int): pointer {.exportc: "miqt_exec_callback_QDataWidgetMapper_metaObject ".} =
  var nimfunc = cast[ptr QDataWidgetMappermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDataWidgetMappermetacast*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, param1: cstring): pointer =
  fQDataWidgetMapper_virtualbase_metacast(self.h, param1)

type QDataWidgetMappermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, slot: QDataWidgetMappermetacastProc) =
  # TODO check subclass
  var tmp = new QDataWidgetMappermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_metacast(self: ptr cQDataWidgetMapper, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QDataWidgetMapper_metacast ".} =
  var nimfunc = cast[ptr QDataWidgetMappermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDataWidgetMappermetacall*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, param1: cint, param2: cint, param3: pointer): cint =
  fQDataWidgetMapper_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDataWidgetMappermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, slot: QDataWidgetMappermetacallProc) =
  # TODO check subclass
  var tmp = new QDataWidgetMappermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_metacall(self: ptr cQDataWidgetMapper, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDataWidgetMapper_metacall ".} =
  var nimfunc = cast[ptr QDataWidgetMappermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDataWidgetMappersetCurrentIndex*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, index: cint): void =
  fQDataWidgetMapper_virtualbase_setCurrentIndex(self.h, index)

type QDataWidgetMappersetCurrentIndexProc* = proc(index: cint): void
proc onsetCurrentIndex*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, slot: QDataWidgetMappersetCurrentIndexProc) =
  # TODO check subclass
  var tmp = new QDataWidgetMappersetCurrentIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_setCurrentIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_setCurrentIndex(self: ptr cQDataWidgetMapper, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QDataWidgetMapper_setCurrentIndex ".} =
  var nimfunc = cast[ptr QDataWidgetMappersetCurrentIndexProc](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)
proc QDataWidgetMapperevent*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, event: gen_qcoreevent_types.QEvent): bool =
  fQDataWidgetMapper_virtualbase_event(self.h, event.h)

type QDataWidgetMappereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, slot: QDataWidgetMappereventProc) =
  # TODO check subclass
  var tmp = new QDataWidgetMappereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_event(self: ptr cQDataWidgetMapper, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDataWidgetMapper_event ".} =
  var nimfunc = cast[ptr QDataWidgetMappereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDataWidgetMappereventFilter*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQDataWidgetMapper_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDataWidgetMappereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, slot: QDataWidgetMappereventFilterProc) =
  # TODO check subclass
  var tmp = new QDataWidgetMappereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_eventFilter(self: ptr cQDataWidgetMapper, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDataWidgetMapper_eventFilter ".} =
  var nimfunc = cast[ptr QDataWidgetMappereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QDataWidgetMappertimerEvent*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, event: gen_qcoreevent_types.QTimerEvent): void =
  fQDataWidgetMapper_virtualbase_timerEvent(self.h, event.h)

type QDataWidgetMappertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, slot: QDataWidgetMappertimerEventProc) =
  # TODO check subclass
  var tmp = new QDataWidgetMappertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_timerEvent(self: ptr cQDataWidgetMapper, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDataWidgetMapper_timerEvent ".} =
  var nimfunc = cast[ptr QDataWidgetMappertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QDataWidgetMapperchildEvent*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, event: gen_qcoreevent_types.QChildEvent): void =
  fQDataWidgetMapper_virtualbase_childEvent(self.h, event.h)

type QDataWidgetMapperchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, slot: QDataWidgetMapperchildEventProc) =
  # TODO check subclass
  var tmp = new QDataWidgetMapperchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_childEvent(self: ptr cQDataWidgetMapper, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDataWidgetMapper_childEvent ".} =
  var nimfunc = cast[ptr QDataWidgetMapperchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QDataWidgetMappercustomEvent*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, event: gen_qcoreevent_types.QEvent): void =
  fQDataWidgetMapper_virtualbase_customEvent(self.h, event.h)

type QDataWidgetMappercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, slot: QDataWidgetMappercustomEventProc) =
  # TODO check subclass
  var tmp = new QDataWidgetMappercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_customEvent(self: ptr cQDataWidgetMapper, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDataWidgetMapper_customEvent ".} =
  var nimfunc = cast[ptr QDataWidgetMappercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDataWidgetMapperconnectNotify*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDataWidgetMapper_virtualbase_connectNotify(self.h, signal.h)

type QDataWidgetMapperconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, slot: QDataWidgetMapperconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDataWidgetMapperconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_connectNotify(self: ptr cQDataWidgetMapper, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDataWidgetMapper_connectNotify ".} =
  var nimfunc = cast[ptr QDataWidgetMapperconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QDataWidgetMapperdisconnectNotify*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDataWidgetMapper_virtualbase_disconnectNotify(self.h, signal.h)

type QDataWidgetMapperdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper, slot: QDataWidgetMapperdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDataWidgetMapperdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_disconnectNotify(self: ptr cQDataWidgetMapper, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDataWidgetMapper_disconnectNotify ".} =
  var nimfunc = cast[ptr QDataWidgetMapperdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qdatawidgetmapper_types.QDataWidgetMapper): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDataWidgetMapper_staticMetaObject())
proc delete*(self: gen_qdatawidgetmapper_types.QDataWidgetMapper) =
  fcQDataWidgetMapper_delete(self.h)
