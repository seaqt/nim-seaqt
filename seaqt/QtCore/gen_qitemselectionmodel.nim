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
{.compile("gen_qitemselectionmodel.cpp", cflags).}


type QItemSelectionModelSelectionFlagEnum* = distinct cint
template NoUpdate*(_: type QItemSelectionModelSelectionFlagEnum): untyped = 0
template Clear*(_: type QItemSelectionModelSelectionFlagEnum): untyped = 1
template Select*(_: type QItemSelectionModelSelectionFlagEnum): untyped = 2
template Deselect*(_: type QItemSelectionModelSelectionFlagEnum): untyped = 4
template Toggle*(_: type QItemSelectionModelSelectionFlagEnum): untyped = 8
template Current*(_: type QItemSelectionModelSelectionFlagEnum): untyped = 16
template Rows*(_: type QItemSelectionModelSelectionFlagEnum): untyped = 32
template Columns*(_: type QItemSelectionModelSelectionFlagEnum): untyped = 64
template SelectCurrent*(_: type QItemSelectionModelSelectionFlagEnum): untyped = 18
template ToggleCurrent*(_: type QItemSelectionModelSelectionFlagEnum): untyped = 24
template ClearAndSelect*(_: type QItemSelectionModelSelectionFlagEnum): untyped = 3


import ./gen_qitemselectionmodel_types
export gen_qitemselectionmodel_types

import
  ./gen_qabstractitemmodel_types,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types
export
  gen_qabstractitemmodel_types,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQItemSelectionRange*{.exportc: "QItemSelectionRange", incompleteStruct.} = object
type cQItemSelectionModel*{.exportc: "QItemSelectionModel", incompleteStruct.} = object
type cQItemSelection*{.exportc: "QItemSelection", incompleteStruct.} = object

proc fcQItemSelectionRange_new(): ptr cQItemSelectionRange {.importc: "QItemSelectionRange_new".}
proc fcQItemSelectionRange_new2(topL: pointer, bottomR: pointer): ptr cQItemSelectionRange {.importc: "QItemSelectionRange_new2".}
proc fcQItemSelectionRange_new3(index: pointer): ptr cQItemSelectionRange {.importc: "QItemSelectionRange_new3".}
proc fcQItemSelectionRange_new4(param1: pointer): ptr cQItemSelectionRange {.importc: "QItemSelectionRange_new4".}
proc fcQItemSelectionRange_swap(self: pointer, other: pointer): void {.importc: "QItemSelectionRange_swap".}
proc fcQItemSelectionRange_top(self: pointer, ): cint {.importc: "QItemSelectionRange_top".}
proc fcQItemSelectionRange_left(self: pointer, ): cint {.importc: "QItemSelectionRange_left".}
proc fcQItemSelectionRange_bottom(self: pointer, ): cint {.importc: "QItemSelectionRange_bottom".}
proc fcQItemSelectionRange_right(self: pointer, ): cint {.importc: "QItemSelectionRange_right".}
proc fcQItemSelectionRange_width(self: pointer, ): cint {.importc: "QItemSelectionRange_width".}
proc fcQItemSelectionRange_height(self: pointer, ): cint {.importc: "QItemSelectionRange_height".}
proc fcQItemSelectionRange_topLeft(self: pointer, ): pointer {.importc: "QItemSelectionRange_topLeft".}
proc fcQItemSelectionRange_bottomRight(self: pointer, ): pointer {.importc: "QItemSelectionRange_bottomRight".}
proc fcQItemSelectionRange_parent(self: pointer, ): pointer {.importc: "QItemSelectionRange_parent".}
proc fcQItemSelectionRange_model(self: pointer, ): pointer {.importc: "QItemSelectionRange_model".}
proc fcQItemSelectionRange_contains(self: pointer, index: pointer): bool {.importc: "QItemSelectionRange_contains".}
proc fcQItemSelectionRange_contains2(self: pointer, row: cint, column: cint, parentIndex: pointer): bool {.importc: "QItemSelectionRange_contains2".}
proc fcQItemSelectionRange_intersects(self: pointer, other: pointer): bool {.importc: "QItemSelectionRange_intersects".}
proc fcQItemSelectionRange_intersected(self: pointer, other: pointer): pointer {.importc: "QItemSelectionRange_intersected".}
proc fcQItemSelectionRange_operatorEqual(self: pointer, other: pointer): bool {.importc: "QItemSelectionRange_operatorEqual".}
proc fcQItemSelectionRange_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QItemSelectionRange_operatorNotEqual".}
proc fcQItemSelectionRange_isValid(self: pointer, ): bool {.importc: "QItemSelectionRange_isValid".}
proc fcQItemSelectionRange_isEmpty(self: pointer, ): bool {.importc: "QItemSelectionRange_isEmpty".}
proc fcQItemSelectionRange_indexes(self: pointer, ): struct_miqt_array {.importc: "QItemSelectionRange_indexes".}
proc fcQItemSelectionRange_delete(self: pointer) {.importc: "QItemSelectionRange_delete".}
proc fcQItemSelectionModel_new(): ptr cQItemSelectionModel {.importc: "QItemSelectionModel_new".}
proc fcQItemSelectionModel_new2(model: pointer, parent: pointer): ptr cQItemSelectionModel {.importc: "QItemSelectionModel_new2".}
proc fcQItemSelectionModel_new3(model: pointer): ptr cQItemSelectionModel {.importc: "QItemSelectionModel_new3".}
proc fcQItemSelectionModel_metaObject(self: pointer, ): pointer {.importc: "QItemSelectionModel_metaObject".}
proc fcQItemSelectionModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QItemSelectionModel_metacast".}
proc fcQItemSelectionModel_tr(s: cstring): struct_miqt_string {.importc: "QItemSelectionModel_tr".}
proc fcQItemSelectionModel_currentIndex(self: pointer, ): pointer {.importc: "QItemSelectionModel_currentIndex".}
proc fcQItemSelectionModel_isSelected(self: pointer, index: pointer): bool {.importc: "QItemSelectionModel_isSelected".}
proc fcQItemSelectionModel_isRowSelected(self: pointer, row: cint): bool {.importc: "QItemSelectionModel_isRowSelected".}
proc fcQItemSelectionModel_isColumnSelected(self: pointer, column: cint): bool {.importc: "QItemSelectionModel_isColumnSelected".}
proc fcQItemSelectionModel_rowIntersectsSelection(self: pointer, row: cint): bool {.importc: "QItemSelectionModel_rowIntersectsSelection".}
proc fcQItemSelectionModel_columnIntersectsSelection(self: pointer, column: cint): bool {.importc: "QItemSelectionModel_columnIntersectsSelection".}
proc fcQItemSelectionModel_hasSelection(self: pointer, ): bool {.importc: "QItemSelectionModel_hasSelection".}
proc fcQItemSelectionModel_selectedIndexes(self: pointer, ): struct_miqt_array {.importc: "QItemSelectionModel_selectedIndexes".}
proc fcQItemSelectionModel_selectedRows(self: pointer, ): struct_miqt_array {.importc: "QItemSelectionModel_selectedRows".}
proc fcQItemSelectionModel_selectedColumns(self: pointer, ): struct_miqt_array {.importc: "QItemSelectionModel_selectedColumns".}
proc fcQItemSelectionModel_selection(self: pointer, ): pointer {.importc: "QItemSelectionModel_selection".}
proc fcQItemSelectionModel_model(self: pointer, ): pointer {.importc: "QItemSelectionModel_model".}
proc fcQItemSelectionModel_model2(self: pointer, ): pointer {.importc: "QItemSelectionModel_model2".}
proc fcQItemSelectionModel_setModel(self: pointer, model: pointer): void {.importc: "QItemSelectionModel_setModel".}
proc fcQItemSelectionModel_setCurrentIndex(self: pointer, index: pointer, command: cint): void {.importc: "QItemSelectionModel_setCurrentIndex".}
proc fcQItemSelectionModel_select(self: pointer, index: pointer, command: cint): void {.importc: "QItemSelectionModel_select".}
proc fcQItemSelectionModel_select2(self: pointer, selection: pointer, command: cint): void {.importc: "QItemSelectionModel_select2".}
proc fcQItemSelectionModel_clear(self: pointer, ): void {.importc: "QItemSelectionModel_clear".}
proc fcQItemSelectionModel_reset(self: pointer, ): void {.importc: "QItemSelectionModel_reset".}
proc fcQItemSelectionModel_clearSelection(self: pointer, ): void {.importc: "QItemSelectionModel_clearSelection".}
proc fcQItemSelectionModel_clearCurrentIndex(self: pointer, ): void {.importc: "QItemSelectionModel_clearCurrentIndex".}
proc fcQItemSelectionModel_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.importc: "QItemSelectionModel_selectionChanged".}
proc fcQItemSelectionModel_connect_selectionChanged(self: pointer, slot: int) {.importc: "QItemSelectionModel_connect_selectionChanged".}
proc fcQItemSelectionModel_currentChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QItemSelectionModel_currentChanged".}
proc fcQItemSelectionModel_connect_currentChanged(self: pointer, slot: int) {.importc: "QItemSelectionModel_connect_currentChanged".}
proc fcQItemSelectionModel_currentRowChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QItemSelectionModel_currentRowChanged".}
proc fcQItemSelectionModel_connect_currentRowChanged(self: pointer, slot: int) {.importc: "QItemSelectionModel_connect_currentRowChanged".}
proc fcQItemSelectionModel_currentColumnChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QItemSelectionModel_currentColumnChanged".}
proc fcQItemSelectionModel_connect_currentColumnChanged(self: pointer, slot: int) {.importc: "QItemSelectionModel_connect_currentColumnChanged".}
proc fcQItemSelectionModel_modelChanged(self: pointer, model: pointer): void {.importc: "QItemSelectionModel_modelChanged".}
proc fcQItemSelectionModel_connect_modelChanged(self: pointer, slot: int) {.importc: "QItemSelectionModel_connect_modelChanged".}
proc fcQItemSelectionModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QItemSelectionModel_tr2".}
proc fcQItemSelectionModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QItemSelectionModel_tr3".}
proc fcQItemSelectionModel_isRowSelected2(self: pointer, row: cint, parent: pointer): bool {.importc: "QItemSelectionModel_isRowSelected2".}
proc fcQItemSelectionModel_isColumnSelected2(self: pointer, column: cint, parent: pointer): bool {.importc: "QItemSelectionModel_isColumnSelected2".}
proc fcQItemSelectionModel_rowIntersectsSelection2(self: pointer, row: cint, parent: pointer): bool {.importc: "QItemSelectionModel_rowIntersectsSelection2".}
proc fcQItemSelectionModel_columnIntersectsSelection2(self: pointer, column: cint, parent: pointer): bool {.importc: "QItemSelectionModel_columnIntersectsSelection2".}
proc fcQItemSelectionModel_selectedRows1(self: pointer, column: cint): struct_miqt_array {.importc: "QItemSelectionModel_selectedRows1".}
proc fcQItemSelectionModel_selectedColumns1(self: pointer, row: cint): struct_miqt_array {.importc: "QItemSelectionModel_selectedColumns1".}
proc fQItemSelectionModel_virtualbase_setCurrentIndex(self: pointer, index: pointer, command: cint): void{.importc: "QItemSelectionModel_virtualbase_setCurrentIndex".}
proc fcQItemSelectionModel_override_virtual_setCurrentIndex(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_setCurrentIndex".}
proc fQItemSelectionModel_virtualbase_select(self: pointer, index: pointer, command: cint): void{.importc: "QItemSelectionModel_virtualbase_select".}
proc fcQItemSelectionModel_override_virtual_select(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_select".}
proc fQItemSelectionModel_virtualbase_select2(self: pointer, selection: pointer, command: cint): void{.importc: "QItemSelectionModel_virtualbase_select2".}
proc fcQItemSelectionModel_override_virtual_select2(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_select2".}
proc fQItemSelectionModel_virtualbase_clear(self: pointer, ): void{.importc: "QItemSelectionModel_virtualbase_clear".}
proc fcQItemSelectionModel_override_virtual_clear(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_clear".}
proc fQItemSelectionModel_virtualbase_reset(self: pointer, ): void{.importc: "QItemSelectionModel_virtualbase_reset".}
proc fcQItemSelectionModel_override_virtual_reset(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_reset".}
proc fQItemSelectionModel_virtualbase_clearCurrentIndex(self: pointer, ): void{.importc: "QItemSelectionModel_virtualbase_clearCurrentIndex".}
proc fcQItemSelectionModel_override_virtual_clearCurrentIndex(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_clearCurrentIndex".}
proc fQItemSelectionModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QItemSelectionModel_virtualbase_event".}
proc fcQItemSelectionModel_override_virtual_event(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_event".}
proc fQItemSelectionModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QItemSelectionModel_virtualbase_eventFilter".}
proc fcQItemSelectionModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_eventFilter".}
proc fQItemSelectionModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QItemSelectionModel_virtualbase_timerEvent".}
proc fcQItemSelectionModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_timerEvent".}
proc fQItemSelectionModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QItemSelectionModel_virtualbase_childEvent".}
proc fcQItemSelectionModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_childEvent".}
proc fQItemSelectionModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QItemSelectionModel_virtualbase_customEvent".}
proc fcQItemSelectionModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_customEvent".}
proc fQItemSelectionModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QItemSelectionModel_virtualbase_connectNotify".}
proc fcQItemSelectionModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_connectNotify".}
proc fQItemSelectionModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QItemSelectionModel_virtualbase_disconnectNotify".}
proc fcQItemSelectionModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_disconnectNotify".}
proc fcQItemSelectionModel_delete(self: pointer) {.importc: "QItemSelectionModel_delete".}
proc fcQItemSelection_new(topLeft: pointer, bottomRight: pointer): ptr cQItemSelection {.importc: "QItemSelection_new".}
proc fcQItemSelection_new2(): ptr cQItemSelection {.importc: "QItemSelection_new2".}
proc fcQItemSelection_new3(param1: pointer): ptr cQItemSelection {.importc: "QItemSelection_new3".}
proc fcQItemSelection_select(self: pointer, topLeft: pointer, bottomRight: pointer): void {.importc: "QItemSelection_select".}
proc fcQItemSelection_contains(self: pointer, index: pointer): bool {.importc: "QItemSelection_contains".}
proc fcQItemSelection_indexes(self: pointer, ): struct_miqt_array {.importc: "QItemSelection_indexes".}
proc fcQItemSelection_merge(self: pointer, other: pointer, command: cint): void {.importc: "QItemSelection_merge".}
proc fcQItemSelection_split(range: pointer, other: pointer, resultVal: pointer): void {.importc: "QItemSelection_split".}
proc fcQItemSelection_delete(self: pointer) {.importc: "QItemSelection_delete".}


func init*(T: type gen_qitemselectionmodel_types.QItemSelectionRange, h: ptr cQItemSelectionRange): gen_qitemselectionmodel_types.QItemSelectionRange =
  T(h: h)
proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionRange, ): gen_qitemselectionmodel_types.QItemSelectionRange =
  gen_qitemselectionmodel_types.QItemSelectionRange.init(fcQItemSelectionRange_new())

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionRange, topL: gen_qabstractitemmodel_types.QModelIndex, bottomR: gen_qabstractitemmodel_types.QModelIndex): gen_qitemselectionmodel_types.QItemSelectionRange =
  gen_qitemselectionmodel_types.QItemSelectionRange.init(fcQItemSelectionRange_new2(topL.h, bottomR.h))

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionRange, index: gen_qabstractitemmodel_types.QModelIndex): gen_qitemselectionmodel_types.QItemSelectionRange =
  gen_qitemselectionmodel_types.QItemSelectionRange.init(fcQItemSelectionRange_new3(index.h))

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionRange, param1: gen_qitemselectionmodel_types.QItemSelectionRange): gen_qitemselectionmodel_types.QItemSelectionRange =
  gen_qitemselectionmodel_types.QItemSelectionRange.init(fcQItemSelectionRange_new4(param1.h))

proc swap*(self: gen_qitemselectionmodel_types.QItemSelectionRange, other: gen_qitemselectionmodel_types.QItemSelectionRange): void =
  fcQItemSelectionRange_swap(self.h, other.h)

proc top*(self: gen_qitemselectionmodel_types.QItemSelectionRange, ): cint =
  fcQItemSelectionRange_top(self.h)

proc left*(self: gen_qitemselectionmodel_types.QItemSelectionRange, ): cint =
  fcQItemSelectionRange_left(self.h)

proc bottom*(self: gen_qitemselectionmodel_types.QItemSelectionRange, ): cint =
  fcQItemSelectionRange_bottom(self.h)

proc right*(self: gen_qitemselectionmodel_types.QItemSelectionRange, ): cint =
  fcQItemSelectionRange_right(self.h)

proc width*(self: gen_qitemselectionmodel_types.QItemSelectionRange, ): cint =
  fcQItemSelectionRange_width(self.h)

proc height*(self: gen_qitemselectionmodel_types.QItemSelectionRange, ): cint =
  fcQItemSelectionRange_height(self.h)

proc topLeft*(self: gen_qitemselectionmodel_types.QItemSelectionRange, ): gen_qabstractitemmodel_types.QPersistentModelIndex =
  gen_qabstractitemmodel_types.QPersistentModelIndex(h: fcQItemSelectionRange_topLeft(self.h))

proc bottomRight*(self: gen_qitemselectionmodel_types.QItemSelectionRange, ): gen_qabstractitemmodel_types.QPersistentModelIndex =
  gen_qabstractitemmodel_types.QPersistentModelIndex(h: fcQItemSelectionRange_bottomRight(self.h))

proc parent*(self: gen_qitemselectionmodel_types.QItemSelectionRange, ): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQItemSelectionRange_parent(self.h))

proc model*(self: gen_qitemselectionmodel_types.QItemSelectionRange, ): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQItemSelectionRange_model(self.h))

proc contains*(self: gen_qitemselectionmodel_types.QItemSelectionRange, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQItemSelectionRange_contains(self.h, index.h)

proc contains*(self: gen_qitemselectionmodel_types.QItemSelectionRange, row: cint, column: cint, parentIndex: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQItemSelectionRange_contains2(self.h, row, column, parentIndex.h)

proc intersects*(self: gen_qitemselectionmodel_types.QItemSelectionRange, other: gen_qitemselectionmodel_types.QItemSelectionRange): bool =
  fcQItemSelectionRange_intersects(self.h, other.h)

proc intersected*(self: gen_qitemselectionmodel_types.QItemSelectionRange, other: gen_qitemselectionmodel_types.QItemSelectionRange): gen_qitemselectionmodel_types.QItemSelectionRange =
  gen_qitemselectionmodel_types.QItemSelectionRange(h: fcQItemSelectionRange_intersected(self.h, other.h))

proc operatorEqual*(self: gen_qitemselectionmodel_types.QItemSelectionRange, other: gen_qitemselectionmodel_types.QItemSelectionRange): bool =
  fcQItemSelectionRange_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qitemselectionmodel_types.QItemSelectionRange, other: gen_qitemselectionmodel_types.QItemSelectionRange): bool =
  fcQItemSelectionRange_operatorNotEqual(self.h, other.h)

proc isValid*(self: gen_qitemselectionmodel_types.QItemSelectionRange, ): bool =
  fcQItemSelectionRange_isValid(self.h)

proc isEmpty*(self: gen_qitemselectionmodel_types.QItemSelectionRange, ): bool =
  fcQItemSelectionRange_isEmpty(self.h)

proc indexes*(self: gen_qitemselectionmodel_types.QItemSelectionRange, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQItemSelectionRange_indexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc delete*(self: gen_qitemselectionmodel_types.QItemSelectionRange) =
  fcQItemSelectionRange_delete(self.h)

func init*(T: type gen_qitemselectionmodel_types.QItemSelectionModel, h: ptr cQItemSelectionModel): gen_qitemselectionmodel_types.QItemSelectionModel =
  T(h: h)
proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionModel, ): gen_qitemselectionmodel_types.QItemSelectionModel =
  gen_qitemselectionmodel_types.QItemSelectionModel.init(fcQItemSelectionModel_new())

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionModel, model: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qobject_types.QObject): gen_qitemselectionmodel_types.QItemSelectionModel =
  gen_qitemselectionmodel_types.QItemSelectionModel.init(fcQItemSelectionModel_new2(model.h, parent.h))

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionModel, model: gen_qabstractitemmodel_types.QAbstractItemModel): gen_qitemselectionmodel_types.QItemSelectionModel =
  gen_qitemselectionmodel_types.QItemSelectionModel.init(fcQItemSelectionModel_new3(model.h))

proc metaObject*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQItemSelectionModel_metaObject(self.h))

proc metacast*(self: gen_qitemselectionmodel_types.QItemSelectionModel, param1: cstring): pointer =
  fcQItemSelectionModel_metacast(self.h, param1)

proc tr*(_: type gen_qitemselectionmodel_types.QItemSelectionModel, s: cstring): string =
  let v_ms = fcQItemSelectionModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc currentIndex*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQItemSelectionModel_currentIndex(self.h))

proc isSelected*(self: gen_qitemselectionmodel_types.QItemSelectionModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQItemSelectionModel_isSelected(self.h, index.h)

proc isRowSelected*(self: gen_qitemselectionmodel_types.QItemSelectionModel, row: cint): bool =
  fcQItemSelectionModel_isRowSelected(self.h, row)

proc isColumnSelected*(self: gen_qitemselectionmodel_types.QItemSelectionModel, column: cint): bool =
  fcQItemSelectionModel_isColumnSelected(self.h, column)

proc rowIntersectsSelection*(self: gen_qitemselectionmodel_types.QItemSelectionModel, row: cint): bool =
  fcQItemSelectionModel_rowIntersectsSelection(self.h, row)

proc columnIntersectsSelection*(self: gen_qitemselectionmodel_types.QItemSelectionModel, column: cint): bool =
  fcQItemSelectionModel_columnIntersectsSelection(self.h, column)

proc hasSelection*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): bool =
  fcQItemSelectionModel_hasSelection(self.h)

proc selectedIndexes*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQItemSelectionModel_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc selectedRows*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQItemSelectionModel_selectedRows(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc selectedColumns*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQItemSelectionModel_selectedColumns(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc selection*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQItemSelectionModel_selection(self.h))

proc model*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQItemSelectionModel_model(self.h))

proc model2*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQItemSelectionModel_model2(self.h))

proc setModel*(self: gen_qitemselectionmodel_types.QItemSelectionModel, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQItemSelectionModel_setModel(self.h, model.h)

proc setCurrentIndex*(self: gen_qitemselectionmodel_types.QItemSelectionModel, index: gen_qabstractitemmodel_types.QModelIndex, command: cint): void =
  fcQItemSelectionModel_setCurrentIndex(self.h, index.h, cint(command))

proc select*(self: gen_qitemselectionmodel_types.QItemSelectionModel, index: gen_qabstractitemmodel_types.QModelIndex, command: cint): void =
  fcQItemSelectionModel_select(self.h, index.h, cint(command))

proc select*(self: gen_qitemselectionmodel_types.QItemSelectionModel, selection: gen_qitemselectionmodel_types.QItemSelection, command: cint): void =
  fcQItemSelectionModel_select2(self.h, selection.h, cint(command))

proc clear*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): void =
  fcQItemSelectionModel_clear(self.h)

proc reset*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): void =
  fcQItemSelectionModel_reset(self.h)

proc clearSelection*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): void =
  fcQItemSelectionModel_clearSelection(self.h)

proc clearCurrentIndex*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): void =
  fcQItemSelectionModel_clearCurrentIndex(self.h)

proc selectionChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQItemSelectionModel_selectionChanged(self.h, selected.h, deselected.h)

type QItemSelectionModelselectionChangedSlot* = proc(selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection)
proc miqt_exec_callback_QItemSelectionModel_selectionChanged(slot: int, selected: pointer, deselected: pointer) {.exportc.} =
  let nimfunc = cast[ptr QItemSelectionModelselectionChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)

  nimfunc[](slotval1, slotval2)

proc onselectionChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelselectionChangedSlot) =
  var tmp = new QItemSelectionModelselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_connect_selectionChanged(self.h, cast[int](addr tmp[]))

proc currentChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemSelectionModel_currentChanged(self.h, current.h, previous.h)

type QItemSelectionModelcurrentChangedSlot* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_QItemSelectionModel_currentChanged(slot: int, current: pointer, previous: pointer) {.exportc.} =
  let nimfunc = cast[ptr QItemSelectionModelcurrentChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)

  nimfunc[](slotval1, slotval2)

proc oncurrentChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelcurrentChangedSlot) =
  var tmp = new QItemSelectionModelcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_connect_currentChanged(self.h, cast[int](addr tmp[]))

proc currentRowChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemSelectionModel_currentRowChanged(self.h, current.h, previous.h)

type QItemSelectionModelcurrentRowChangedSlot* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_QItemSelectionModel_currentRowChanged(slot: int, current: pointer, previous: pointer) {.exportc.} =
  let nimfunc = cast[ptr QItemSelectionModelcurrentRowChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)

  nimfunc[](slotval1, slotval2)

proc oncurrentRowChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelcurrentRowChangedSlot) =
  var tmp = new QItemSelectionModelcurrentRowChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_connect_currentRowChanged(self.h, cast[int](addr tmp[]))

proc currentColumnChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemSelectionModel_currentColumnChanged(self.h, current.h, previous.h)

type QItemSelectionModelcurrentColumnChangedSlot* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_QItemSelectionModel_currentColumnChanged(slot: int, current: pointer, previous: pointer) {.exportc.} =
  let nimfunc = cast[ptr QItemSelectionModelcurrentColumnChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)

  nimfunc[](slotval1, slotval2)

proc oncurrentColumnChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelcurrentColumnChangedSlot) =
  var tmp = new QItemSelectionModelcurrentColumnChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_connect_currentColumnChanged(self.h, cast[int](addr tmp[]))

proc modelChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQItemSelectionModel_modelChanged(self.h, model.h)

type QItemSelectionModelmodelChangedSlot* = proc(model: gen_qabstractitemmodel_types.QAbstractItemModel)
proc miqt_exec_callback_QItemSelectionModel_modelChanged(slot: int, model: pointer) {.exportc.} =
  let nimfunc = cast[ptr QItemSelectionModelmodelChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)

  nimfunc[](slotval1)

proc onmodelChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelmodelChangedSlot) =
  var tmp = new QItemSelectionModelmodelChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_connect_modelChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qitemselectionmodel_types.QItemSelectionModel, s: cstring, c: cstring): string =
  let v_ms = fcQItemSelectionModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qitemselectionmodel_types.QItemSelectionModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQItemSelectionModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isRowSelected*(self: gen_qitemselectionmodel_types.QItemSelectionModel, row: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQItemSelectionModel_isRowSelected2(self.h, row, parent.h)

proc isColumnSelected*(self: gen_qitemselectionmodel_types.QItemSelectionModel, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQItemSelectionModel_isColumnSelected2(self.h, column, parent.h)

proc rowIntersectsSelection*(self: gen_qitemselectionmodel_types.QItemSelectionModel, row: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQItemSelectionModel_rowIntersectsSelection2(self.h, row, parent.h)

proc columnIntersectsSelection*(self: gen_qitemselectionmodel_types.QItemSelectionModel, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQItemSelectionModel_columnIntersectsSelection2(self.h, column, parent.h)

proc selectedRows*(self: gen_qitemselectionmodel_types.QItemSelectionModel, column: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQItemSelectionModel_selectedRows1(self.h, column)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc selectedColumns*(self: gen_qitemselectionmodel_types.QItemSelectionModel, row: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQItemSelectionModel_selectedColumns1(self.h, row)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc QItemSelectionModelsetCurrentIndex*(self: gen_qitemselectionmodel_types.QItemSelectionModel, index: gen_qabstractitemmodel_types.QModelIndex, command: cint): void =
  fQItemSelectionModel_virtualbase_setCurrentIndex(self.h, index.h, cint(command))

type QItemSelectionModelsetCurrentIndexProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, command: cint): void
proc onsetCurrentIndex*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelsetCurrentIndexProc) =
  # TODO check subclass
  var tmp = new QItemSelectionModelsetCurrentIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_setCurrentIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_setCurrentIndex(self: ptr cQItemSelectionModel, slot: int, index: pointer, command: cint): void {.exportc: "miqt_exec_callback_QItemSelectionModel_setCurrentIndex ".} =
  var nimfunc = cast[ptr QItemSelectionModelsetCurrentIndexProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(command)


  nimfunc[](slotval1, slotval2)
proc QItemSelectionModelselect*(self: gen_qitemselectionmodel_types.QItemSelectionModel, index: gen_qabstractitemmodel_types.QModelIndex, command: cint): void =
  fQItemSelectionModel_virtualbase_select(self.h, index.h, cint(command))

type QItemSelectionModelselectProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, command: cint): void
proc onselect*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelselectProc) =
  # TODO check subclass
  var tmp = new QItemSelectionModelselectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_select(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_select(self: ptr cQItemSelectionModel, slot: int, index: pointer, command: cint): void {.exportc: "miqt_exec_callback_QItemSelectionModel_select ".} =
  var nimfunc = cast[ptr QItemSelectionModelselectProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(command)


  nimfunc[](slotval1, slotval2)
proc QItemSelectionModelselect*(self: gen_qitemselectionmodel_types.QItemSelectionModel, selection: gen_qitemselectionmodel_types.QItemSelection, command: cint): void =
  fQItemSelectionModel_virtualbase_select2(self.h, selection.h, cint(command))

type QItemSelectionModelselect2Proc* = proc(selection: gen_qitemselectionmodel_types.QItemSelection, command: cint): void
proc onselect*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelselect2Proc) =
  # TODO check subclass
  var tmp = new QItemSelectionModelselect2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_select2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_select2(self: ptr cQItemSelectionModel, slot: int, selection: pointer, command: cint): void {.exportc: "miqt_exec_callback_QItemSelectionModel_select2 ".} =
  var nimfunc = cast[ptr QItemSelectionModelselect2Proc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)

  let slotval2 = cint(command)


  nimfunc[](slotval1, slotval2)
proc QItemSelectionModelclear*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): void =
  fQItemSelectionModel_virtualbase_clear(self.h)

type QItemSelectionModelclearProc* = proc(): void
proc onclear*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelclearProc) =
  # TODO check subclass
  var tmp = new QItemSelectionModelclearProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_clear(self: ptr cQItemSelectionModel, slot: int): void {.exportc: "miqt_exec_callback_QItemSelectionModel_clear ".} =
  var nimfunc = cast[ptr QItemSelectionModelclearProc](cast[pointer](slot))

  nimfunc[]()
proc QItemSelectionModelreset*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): void =
  fQItemSelectionModel_virtualbase_reset(self.h)

type QItemSelectionModelresetProc* = proc(): void
proc onreset*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelresetProc) =
  # TODO check subclass
  var tmp = new QItemSelectionModelresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_reset(self: ptr cQItemSelectionModel, slot: int): void {.exportc: "miqt_exec_callback_QItemSelectionModel_reset ".} =
  var nimfunc = cast[ptr QItemSelectionModelresetProc](cast[pointer](slot))

  nimfunc[]()
proc QItemSelectionModelclearCurrentIndex*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): void =
  fQItemSelectionModel_virtualbase_clearCurrentIndex(self.h)

type QItemSelectionModelclearCurrentIndexProc* = proc(): void
proc onclearCurrentIndex*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelclearCurrentIndexProc) =
  # TODO check subclass
  var tmp = new QItemSelectionModelclearCurrentIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_clearCurrentIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_clearCurrentIndex(self: ptr cQItemSelectionModel, slot: int): void {.exportc: "miqt_exec_callback_QItemSelectionModel_clearCurrentIndex ".} =
  var nimfunc = cast[ptr QItemSelectionModelclearCurrentIndexProc](cast[pointer](slot))

  nimfunc[]()
proc QItemSelectionModelevent*(self: gen_qitemselectionmodel_types.QItemSelectionModel, event: gen_qcoreevent_types.QEvent): bool =
  fQItemSelectionModel_virtualbase_event(self.h, event.h)

type QItemSelectionModeleventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModeleventProc) =
  # TODO check subclass
  var tmp = new QItemSelectionModeleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_event(self: ptr cQItemSelectionModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QItemSelectionModel_event ".} =
  var nimfunc = cast[ptr QItemSelectionModeleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QItemSelectionModeleventFilter*(self: gen_qitemselectionmodel_types.QItemSelectionModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQItemSelectionModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QItemSelectionModeleventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModeleventFilterProc) =
  # TODO check subclass
  var tmp = new QItemSelectionModeleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_eventFilter(self: ptr cQItemSelectionModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QItemSelectionModel_eventFilter ".} =
  var nimfunc = cast[ptr QItemSelectionModeleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QItemSelectionModeltimerEvent*(self: gen_qitemselectionmodel_types.QItemSelectionModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fQItemSelectionModel_virtualbase_timerEvent(self.h, event.h)

type QItemSelectionModeltimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModeltimerEventProc) =
  # TODO check subclass
  var tmp = new QItemSelectionModeltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_timerEvent(self: ptr cQItemSelectionModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QItemSelectionModel_timerEvent ".} =
  var nimfunc = cast[ptr QItemSelectionModeltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QItemSelectionModelchildEvent*(self: gen_qitemselectionmodel_types.QItemSelectionModel, event: gen_qcoreevent_types.QChildEvent): void =
  fQItemSelectionModel_virtualbase_childEvent(self.h, event.h)

type QItemSelectionModelchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelchildEventProc) =
  # TODO check subclass
  var tmp = new QItemSelectionModelchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_childEvent(self: ptr cQItemSelectionModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QItemSelectionModel_childEvent ".} =
  var nimfunc = cast[ptr QItemSelectionModelchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QItemSelectionModelcustomEvent*(self: gen_qitemselectionmodel_types.QItemSelectionModel, event: gen_qcoreevent_types.QEvent): void =
  fQItemSelectionModel_virtualbase_customEvent(self.h, event.h)

type QItemSelectionModelcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelcustomEventProc) =
  # TODO check subclass
  var tmp = new QItemSelectionModelcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_customEvent(self: ptr cQItemSelectionModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QItemSelectionModel_customEvent ".} =
  var nimfunc = cast[ptr QItemSelectionModelcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QItemSelectionModelconnectNotify*(self: gen_qitemselectionmodel_types.QItemSelectionModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQItemSelectionModel_virtualbase_connectNotify(self.h, signal.h)

type QItemSelectionModelconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QItemSelectionModelconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_connectNotify(self: ptr cQItemSelectionModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QItemSelectionModel_connectNotify ".} =
  var nimfunc = cast[ptr QItemSelectionModelconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QItemSelectionModeldisconnectNotify*(self: gen_qitemselectionmodel_types.QItemSelectionModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQItemSelectionModel_virtualbase_disconnectNotify(self.h, signal.h)

type QItemSelectionModeldisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModeldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QItemSelectionModeldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_disconnectNotify(self: ptr cQItemSelectionModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QItemSelectionModel_disconnectNotify ".} =
  var nimfunc = cast[ptr QItemSelectionModeldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qitemselectionmodel_types.QItemSelectionModel) =
  fcQItemSelectionModel_delete(self.h)

func init*(T: type gen_qitemselectionmodel_types.QItemSelection, h: ptr cQItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  T(h: h)
proc create*(T: type gen_qitemselectionmodel_types.QItemSelection, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection.init(fcQItemSelection_new(topLeft.h, bottomRight.h))

proc create*(T: type gen_qitemselectionmodel_types.QItemSelection, ): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection.init(fcQItemSelection_new2())

proc create*(T: type gen_qitemselectionmodel_types.QItemSelection, param1: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection.init(fcQItemSelection_new3(param1.h))

proc select*(self: gen_qitemselectionmodel_types.QItemSelection, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemSelection_select(self.h, topLeft.h, bottomRight.h)

proc contains*(self: gen_qitemselectionmodel_types.QItemSelection, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQItemSelection_contains(self.h, index.h)

proc indexes*(self: gen_qitemselectionmodel_types.QItemSelection, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQItemSelection_indexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc merge*(self: gen_qitemselectionmodel_types.QItemSelection, other: gen_qitemselectionmodel_types.QItemSelection, command: cint): void =
  fcQItemSelection_merge(self.h, other.h, cint(command))

proc split*(_: type gen_qitemselectionmodel_types.QItemSelection, range: gen_qitemselectionmodel_types.QItemSelectionRange, other: gen_qitemselectionmodel_types.QItemSelectionRange, resultVal: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQItemSelection_split(range.h, other.h, resultVal.h)

proc delete*(self: gen_qitemselectionmodel_types.QItemSelection) =
  fcQItemSelection_delete(self.h)
