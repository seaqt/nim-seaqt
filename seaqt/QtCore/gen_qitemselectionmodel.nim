import ./qtcore_pkg

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

proc fcQItemSelectionRange_swap(self: pointer, other: pointer): void {.importc: "QItemSelectionRange_swap".}
proc fcQItemSelectionRange_top(self: pointer): cint {.importc: "QItemSelectionRange_top".}
proc fcQItemSelectionRange_left(self: pointer): cint {.importc: "QItemSelectionRange_left".}
proc fcQItemSelectionRange_bottom(self: pointer): cint {.importc: "QItemSelectionRange_bottom".}
proc fcQItemSelectionRange_right(self: pointer): cint {.importc: "QItemSelectionRange_right".}
proc fcQItemSelectionRange_width(self: pointer): cint {.importc: "QItemSelectionRange_width".}
proc fcQItemSelectionRange_height(self: pointer): cint {.importc: "QItemSelectionRange_height".}
proc fcQItemSelectionRange_topLeft(self: pointer): pointer {.importc: "QItemSelectionRange_topLeft".}
proc fcQItemSelectionRange_bottomRight(self: pointer): pointer {.importc: "QItemSelectionRange_bottomRight".}
proc fcQItemSelectionRange_parent(self: pointer): pointer {.importc: "QItemSelectionRange_parent".}
proc fcQItemSelectionRange_model(self: pointer): pointer {.importc: "QItemSelectionRange_model".}
proc fcQItemSelectionRange_contains(self: pointer, index: pointer): bool {.importc: "QItemSelectionRange_contains".}
proc fcQItemSelectionRange_contains2(self: pointer, row: cint, column: cint, parentIndex: pointer): bool {.importc: "QItemSelectionRange_contains2".}
proc fcQItemSelectionRange_intersects(self: pointer, other: pointer): bool {.importc: "QItemSelectionRange_intersects".}
proc fcQItemSelectionRange_intersected(self: pointer, other: pointer): pointer {.importc: "QItemSelectionRange_intersected".}
proc fcQItemSelectionRange_operatorEqual(self: pointer, other: pointer): bool {.importc: "QItemSelectionRange_operatorEqual".}
proc fcQItemSelectionRange_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QItemSelectionRange_operatorNotEqual".}
proc fcQItemSelectionRange_isValid(self: pointer): bool {.importc: "QItemSelectionRange_isValid".}
proc fcQItemSelectionRange_isEmpty(self: pointer): bool {.importc: "QItemSelectionRange_isEmpty".}
proc fcQItemSelectionRange_indexes(self: pointer): struct_miqt_array {.importc: "QItemSelectionRange_indexes".}
proc fcQItemSelectionRange_new(): ptr cQItemSelectionRange {.importc: "QItemSelectionRange_new".}
proc fcQItemSelectionRange_new2(topL: pointer, bottomR: pointer): ptr cQItemSelectionRange {.importc: "QItemSelectionRange_new2".}
proc fcQItemSelectionRange_new3(index: pointer): ptr cQItemSelectionRange {.importc: "QItemSelectionRange_new3".}
proc fcQItemSelectionRange_new4(param1: pointer): ptr cQItemSelectionRange {.importc: "QItemSelectionRange_new4".}
proc fcQItemSelectionModel_metaObject(self: pointer): pointer {.importc: "QItemSelectionModel_metaObject".}
proc fcQItemSelectionModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QItemSelectionModel_metacast".}
proc fcQItemSelectionModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QItemSelectionModel_metacall".}
proc fcQItemSelectionModel_tr(s: cstring): struct_miqt_string {.importc: "QItemSelectionModel_tr".}
proc fcQItemSelectionModel_currentIndex(self: pointer): pointer {.importc: "QItemSelectionModel_currentIndex".}
proc fcQItemSelectionModel_isSelected(self: pointer, index: pointer): bool {.importc: "QItemSelectionModel_isSelected".}
proc fcQItemSelectionModel_isRowSelected(self: pointer, row: cint): bool {.importc: "QItemSelectionModel_isRowSelected".}
proc fcQItemSelectionModel_isColumnSelected(self: pointer, column: cint): bool {.importc: "QItemSelectionModel_isColumnSelected".}
proc fcQItemSelectionModel_rowIntersectsSelection(self: pointer, row: cint): bool {.importc: "QItemSelectionModel_rowIntersectsSelection".}
proc fcQItemSelectionModel_columnIntersectsSelection(self: pointer, column: cint): bool {.importc: "QItemSelectionModel_columnIntersectsSelection".}
proc fcQItemSelectionModel_hasSelection(self: pointer): bool {.importc: "QItemSelectionModel_hasSelection".}
proc fcQItemSelectionModel_selectedIndexes(self: pointer): struct_miqt_array {.importc: "QItemSelectionModel_selectedIndexes".}
proc fcQItemSelectionModel_selectedRows(self: pointer): struct_miqt_array {.importc: "QItemSelectionModel_selectedRows".}
proc fcQItemSelectionModel_selectedColumns(self: pointer): struct_miqt_array {.importc: "QItemSelectionModel_selectedColumns".}
proc fcQItemSelectionModel_selection(self: pointer): pointer {.importc: "QItemSelectionModel_selection".}
proc fcQItemSelectionModel_model(self: pointer): pointer {.importc: "QItemSelectionModel_model".}
proc fcQItemSelectionModel_model2(self: pointer): pointer {.importc: "QItemSelectionModel_model2".}
proc fcQItemSelectionModel_setModel(self: pointer, model: pointer): void {.importc: "QItemSelectionModel_setModel".}
proc fcQItemSelectionModel_setCurrentIndex(self: pointer, index: pointer, command: cint): void {.importc: "QItemSelectionModel_setCurrentIndex".}
proc fcQItemSelectionModel_select(self: pointer, index: pointer, command: cint): void {.importc: "QItemSelectionModel_select".}
proc fcQItemSelectionModel_select2(self: pointer, selection: pointer, command: cint): void {.importc: "QItemSelectionModel_select2".}
proc fcQItemSelectionModel_clear(self: pointer): void {.importc: "QItemSelectionModel_clear".}
proc fcQItemSelectionModel_reset(self: pointer): void {.importc: "QItemSelectionModel_reset".}
proc fcQItemSelectionModel_clearSelection(self: pointer): void {.importc: "QItemSelectionModel_clearSelection".}
proc fcQItemSelectionModel_clearCurrentIndex(self: pointer): void {.importc: "QItemSelectionModel_clearCurrentIndex".}
proc fcQItemSelectionModel_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.importc: "QItemSelectionModel_selectionChanged".}
proc fcQItemSelectionModel_connect_selectionChanged(self: pointer, slot: int, callback: proc (slot: int, selected: pointer, deselected: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QItemSelectionModel_connect_selectionChanged".}
proc fcQItemSelectionModel_currentChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QItemSelectionModel_currentChanged".}
proc fcQItemSelectionModel_connect_currentChanged(self: pointer, slot: int, callback: proc (slot: int, current: pointer, previous: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QItemSelectionModel_connect_currentChanged".}
proc fcQItemSelectionModel_currentRowChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QItemSelectionModel_currentRowChanged".}
proc fcQItemSelectionModel_connect_currentRowChanged(self: pointer, slot: int, callback: proc (slot: int, current: pointer, previous: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QItemSelectionModel_connect_currentRowChanged".}
proc fcQItemSelectionModel_currentColumnChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QItemSelectionModel_currentColumnChanged".}
proc fcQItemSelectionModel_connect_currentColumnChanged(self: pointer, slot: int, callback: proc (slot: int, current: pointer, previous: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QItemSelectionModel_connect_currentColumnChanged".}
proc fcQItemSelectionModel_modelChanged(self: pointer, model: pointer): void {.importc: "QItemSelectionModel_modelChanged".}
proc fcQItemSelectionModel_connect_modelChanged(self: pointer, slot: int, callback: proc (slot: int, model: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QItemSelectionModel_connect_modelChanged".}
proc fcQItemSelectionModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QItemSelectionModel_tr2".}
proc fcQItemSelectionModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QItemSelectionModel_tr3".}
proc fcQItemSelectionModel_isRowSelected2(self: pointer, row: cint, parent: pointer): bool {.importc: "QItemSelectionModel_isRowSelected2".}
proc fcQItemSelectionModel_isColumnSelected2(self: pointer, column: cint, parent: pointer): bool {.importc: "QItemSelectionModel_isColumnSelected2".}
proc fcQItemSelectionModel_rowIntersectsSelection2(self: pointer, row: cint, parent: pointer): bool {.importc: "QItemSelectionModel_rowIntersectsSelection2".}
proc fcQItemSelectionModel_columnIntersectsSelection2(self: pointer, column: cint, parent: pointer): bool {.importc: "QItemSelectionModel_columnIntersectsSelection2".}
proc fcQItemSelectionModel_selectedRows1(self: pointer, column: cint): struct_miqt_array {.importc: "QItemSelectionModel_selectedRows1".}
proc fcQItemSelectionModel_selectedColumns1(self: pointer, row: cint): struct_miqt_array {.importc: "QItemSelectionModel_selectedColumns1".}
proc fcQItemSelectionModel_vtbl(self: pointer): pointer {.importc: "QItemSelectionModel_vtbl".}
proc fcQItemSelectionModel_vdata(self: pointer): pointer {.importc: "QItemSelectionModel_vdata".}

type cQItemSelectionModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setCurrentIndex*: proc(self: pointer, index: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  select*: proc(self: pointer, index: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  select2*: proc(self: pointer, selection: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  clear*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  clearCurrentIndex*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQItemSelectionModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QItemSelectionModel_virtualbase_metaObject".}
proc fcQItemSelectionModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QItemSelectionModel_virtualbase_metacast".}
proc fcQItemSelectionModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QItemSelectionModel_virtualbase_metacall".}
proc fcQItemSelectionModel_virtualbase_setCurrentIndex(self: pointer, index: pointer, command: cint): void {.importc: "QItemSelectionModel_virtualbase_setCurrentIndex".}
proc fcQItemSelectionModel_virtualbase_select(self: pointer, index: pointer, command: cint): void {.importc: "QItemSelectionModel_virtualbase_select".}
proc fcQItemSelectionModel_virtualbase_select2(self: pointer, selection: pointer, command: cint): void {.importc: "QItemSelectionModel_virtualbase_select2".}
proc fcQItemSelectionModel_virtualbase_clear(self: pointer): void {.importc: "QItemSelectionModel_virtualbase_clear".}
proc fcQItemSelectionModel_virtualbase_reset(self: pointer): void {.importc: "QItemSelectionModel_virtualbase_reset".}
proc fcQItemSelectionModel_virtualbase_clearCurrentIndex(self: pointer): void {.importc: "QItemSelectionModel_virtualbase_clearCurrentIndex".}
proc fcQItemSelectionModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QItemSelectionModel_virtualbase_event".}
proc fcQItemSelectionModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QItemSelectionModel_virtualbase_eventFilter".}
proc fcQItemSelectionModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QItemSelectionModel_virtualbase_timerEvent".}
proc fcQItemSelectionModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QItemSelectionModel_virtualbase_childEvent".}
proc fcQItemSelectionModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QItemSelectionModel_virtualbase_customEvent".}
proc fcQItemSelectionModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QItemSelectionModel_virtualbase_connectNotify".}
proc fcQItemSelectionModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QItemSelectionModel_virtualbase_disconnectNotify".}
proc fcQItemSelectionModel_protectedbase_emitSelectionChanged(self: pointer, newSelection: pointer, oldSelection: pointer): void {.importc: "QItemSelectionModel_protectedbase_emitSelectionChanged".}
proc fcQItemSelectionModel_protectedbase_sender(self: pointer): pointer {.importc: "QItemSelectionModel_protectedbase_sender".}
proc fcQItemSelectionModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QItemSelectionModel_protectedbase_senderSignalIndex".}
proc fcQItemSelectionModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QItemSelectionModel_protectedbase_receivers".}
proc fcQItemSelectionModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QItemSelectionModel_protectedbase_isSignalConnected".}
proc fcQItemSelectionModel_new(vtbl, vdata: pointer): ptr cQItemSelectionModel {.importc: "QItemSelectionModel_new".}
proc fcQItemSelectionModel_new2(vtbl, vdata: pointer, model: pointer, parent: pointer): ptr cQItemSelectionModel {.importc: "QItemSelectionModel_new2".}
proc fcQItemSelectionModel_new3(vtbl, vdata: pointer, model: pointer): ptr cQItemSelectionModel {.importc: "QItemSelectionModel_new3".}
proc fcQItemSelectionModel_staticMetaObject(): pointer {.importc: "QItemSelectionModel_staticMetaObject".}
proc fcQItemSelection_select(self: pointer, topLeft: pointer, bottomRight: pointer): void {.importc: "QItemSelection_select".}
proc fcQItemSelection_contains(self: pointer, index: pointer): bool {.importc: "QItemSelection_contains".}
proc fcQItemSelection_indexes(self: pointer): struct_miqt_array {.importc: "QItemSelection_indexes".}
proc fcQItemSelection_merge(self: pointer, other: pointer, command: cint): void {.importc: "QItemSelection_merge".}
proc fcQItemSelection_split(range: pointer, other: pointer, resultVal: pointer): void {.importc: "QItemSelection_split".}
proc fcQItemSelection_new(topLeft: pointer, bottomRight: pointer): ptr cQItemSelection {.importc: "QItemSelection_new".}
proc fcQItemSelection_new2(): ptr cQItemSelection {.importc: "QItemSelection_new2".}
proc fcQItemSelection_new3(param1: pointer): ptr cQItemSelection {.importc: "QItemSelection_new3".}

proc swap*(self: gen_qitemselectionmodel_types.QItemSelectionRange, other: gen_qitemselectionmodel_types.QItemSelectionRange): void =
  fcQItemSelectionRange_swap(self.h, other.h)

proc top*(self: gen_qitemselectionmodel_types.QItemSelectionRange): cint =
  fcQItemSelectionRange_top(self.h)

proc left*(self: gen_qitemselectionmodel_types.QItemSelectionRange): cint =
  fcQItemSelectionRange_left(self.h)

proc bottom*(self: gen_qitemselectionmodel_types.QItemSelectionRange): cint =
  fcQItemSelectionRange_bottom(self.h)

proc right*(self: gen_qitemselectionmodel_types.QItemSelectionRange): cint =
  fcQItemSelectionRange_right(self.h)

proc width*(self: gen_qitemselectionmodel_types.QItemSelectionRange): cint =
  fcQItemSelectionRange_width(self.h)

proc height*(self: gen_qitemselectionmodel_types.QItemSelectionRange): cint =
  fcQItemSelectionRange_height(self.h)

proc topLeft*(self: gen_qitemselectionmodel_types.QItemSelectionRange): gen_qabstractitemmodel_types.QPersistentModelIndex =
  gen_qabstractitemmodel_types.QPersistentModelIndex(h: fcQItemSelectionRange_topLeft(self.h), owned: false)

proc bottomRight*(self: gen_qitemselectionmodel_types.QItemSelectionRange): gen_qabstractitemmodel_types.QPersistentModelIndex =
  gen_qabstractitemmodel_types.QPersistentModelIndex(h: fcQItemSelectionRange_bottomRight(self.h), owned: false)

proc parent*(self: gen_qitemselectionmodel_types.QItemSelectionRange): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQItemSelectionRange_parent(self.h), owned: true)

proc model*(self: gen_qitemselectionmodel_types.QItemSelectionRange): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQItemSelectionRange_model(self.h), owned: false)

proc contains*(self: gen_qitemselectionmodel_types.QItemSelectionRange, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQItemSelectionRange_contains(self.h, index.h)

proc contains*(self: gen_qitemselectionmodel_types.QItemSelectionRange, row: cint, column: cint, parentIndex: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQItemSelectionRange_contains2(self.h, row, column, parentIndex.h)

proc intersects*(self: gen_qitemselectionmodel_types.QItemSelectionRange, other: gen_qitemselectionmodel_types.QItemSelectionRange): bool =
  fcQItemSelectionRange_intersects(self.h, other.h)

proc intersected*(self: gen_qitemselectionmodel_types.QItemSelectionRange, other: gen_qitemselectionmodel_types.QItemSelectionRange): gen_qitemselectionmodel_types.QItemSelectionRange =
  gen_qitemselectionmodel_types.QItemSelectionRange(h: fcQItemSelectionRange_intersected(self.h, other.h), owned: true)

proc operatorEqual*(self: gen_qitemselectionmodel_types.QItemSelectionRange, other: gen_qitemselectionmodel_types.QItemSelectionRange): bool =
  fcQItemSelectionRange_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qitemselectionmodel_types.QItemSelectionRange, other: gen_qitemselectionmodel_types.QItemSelectionRange): bool =
  fcQItemSelectionRange_operatorNotEqual(self.h, other.h)

proc isValid*(self: gen_qitemselectionmodel_types.QItemSelectionRange): bool =
  fcQItemSelectionRange_isValid(self.h)

proc isEmpty*(self: gen_qitemselectionmodel_types.QItemSelectionRange): bool =
  fcQItemSelectionRange_isEmpty(self.h)

proc indexes*(self: gen_qitemselectionmodel_types.QItemSelectionRange): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQItemSelectionRange_indexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionRange): gen_qitemselectionmodel_types.QItemSelectionRange =
  gen_qitemselectionmodel_types.QItemSelectionRange(h: fcQItemSelectionRange_new(), owned: true)

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionRange,
    topL: gen_qabstractitemmodel_types.QModelIndex, bottomR: gen_qabstractitemmodel_types.QModelIndex): gen_qitemselectionmodel_types.QItemSelectionRange =
  gen_qitemselectionmodel_types.QItemSelectionRange(h: fcQItemSelectionRange_new2(topL.h, bottomR.h), owned: true)

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionRange,
    index: gen_qabstractitemmodel_types.QModelIndex): gen_qitemselectionmodel_types.QItemSelectionRange =
  gen_qitemselectionmodel_types.QItemSelectionRange(h: fcQItemSelectionRange_new3(index.h), owned: true)

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionRange,
    param1: gen_qitemselectionmodel_types.QItemSelectionRange): gen_qitemselectionmodel_types.QItemSelectionRange =
  gen_qitemselectionmodel_types.QItemSelectionRange(h: fcQItemSelectionRange_new4(param1.h), owned: true)

proc metaObject*(self: gen_qitemselectionmodel_types.QItemSelectionModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQItemSelectionModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qitemselectionmodel_types.QItemSelectionModel, param1: cstring): pointer =
  fcQItemSelectionModel_metacast(self.h, param1)

proc metacall*(self: gen_qitemselectionmodel_types.QItemSelectionModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQItemSelectionModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qitemselectionmodel_types.QItemSelectionModel, s: cstring): string =
  let v_ms = fcQItemSelectionModel_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc currentIndex*(self: gen_qitemselectionmodel_types.QItemSelectionModel): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQItemSelectionModel_currentIndex(self.h), owned: true)

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

proc hasSelection*(self: gen_qitemselectionmodel_types.QItemSelectionModel): bool =
  fcQItemSelectionModel_hasSelection(self.h)

proc selectedIndexes*(self: gen_qitemselectionmodel_types.QItemSelectionModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQItemSelectionModel_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc selectedRows*(self: gen_qitemselectionmodel_types.QItemSelectionModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQItemSelectionModel_selectedRows(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc selectedColumns*(self: gen_qitemselectionmodel_types.QItemSelectionModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQItemSelectionModel_selectedColumns(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc selection*(self: gen_qitemselectionmodel_types.QItemSelectionModel): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQItemSelectionModel_selection(self.h), owned: true)

proc model*(self: gen_qitemselectionmodel_types.QItemSelectionModel): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQItemSelectionModel_model(self.h), owned: false)

proc model2*(self: gen_qitemselectionmodel_types.QItemSelectionModel): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQItemSelectionModel_model2(self.h), owned: false)

proc setModel*(self: gen_qitemselectionmodel_types.QItemSelectionModel, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQItemSelectionModel_setModel(self.h, model.h)

proc setCurrentIndex*(self: gen_qitemselectionmodel_types.QItemSelectionModel, index: gen_qabstractitemmodel_types.QModelIndex, command: cint): void =
  fcQItemSelectionModel_setCurrentIndex(self.h, index.h, cint(command))

proc select*(self: gen_qitemselectionmodel_types.QItemSelectionModel, index: gen_qabstractitemmodel_types.QModelIndex, command: cint): void =
  fcQItemSelectionModel_select(self.h, index.h, cint(command))

proc select*(self: gen_qitemselectionmodel_types.QItemSelectionModel, selection: gen_qitemselectionmodel_types.QItemSelection, command: cint): void =
  fcQItemSelectionModel_select2(self.h, selection.h, cint(command))

proc clear*(self: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQItemSelectionModel_clear(self.h)

proc reset*(self: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQItemSelectionModel_reset(self.h)

proc clearSelection*(self: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQItemSelectionModel_clearSelection(self.h)

proc clearCurrentIndex*(self: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQItemSelectionModel_clearCurrentIndex(self.h)

proc selectionChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQItemSelectionModel_selectionChanged(self.h, selected.h, deselected.h)

type QItemSelectionModelselectionChangedSlot* = proc(selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection)
proc fcQItemSelectionModel_slot_callback_selectionChanged(slot: int, selected: pointer, deselected: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QItemSelectionModelselectionChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected, owned: false)

  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQItemSelectionModel_slot_callback_selectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QItemSelectionModelselectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSelectionChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelselectionChangedSlot) =
  var tmp = new QItemSelectionModelselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_connect_selectionChanged(self.h, cast[int](addr tmp[]), fcQItemSelectionModel_slot_callback_selectionChanged, fcQItemSelectionModel_slot_callback_selectionChanged_release)

proc currentChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemSelectionModel_currentChanged(self.h, current.h, previous.h)

type QItemSelectionModelcurrentChangedSlot* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex)
proc fcQItemSelectionModel_slot_callback_currentChanged(slot: int, current: pointer, previous: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QItemSelectionModelcurrentChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQItemSelectionModel_slot_callback_currentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QItemSelectionModelcurrentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelcurrentChangedSlot) =
  var tmp = new QItemSelectionModelcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_connect_currentChanged(self.h, cast[int](addr tmp[]), fcQItemSelectionModel_slot_callback_currentChanged, fcQItemSelectionModel_slot_callback_currentChanged_release)

proc currentRowChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemSelectionModel_currentRowChanged(self.h, current.h, previous.h)

type QItemSelectionModelcurrentRowChangedSlot* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex)
proc fcQItemSelectionModel_slot_callback_currentRowChanged(slot: int, current: pointer, previous: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QItemSelectionModelcurrentRowChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQItemSelectionModel_slot_callback_currentRowChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QItemSelectionModelcurrentRowChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentRowChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelcurrentRowChangedSlot) =
  var tmp = new QItemSelectionModelcurrentRowChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_connect_currentRowChanged(self.h, cast[int](addr tmp[]), fcQItemSelectionModel_slot_callback_currentRowChanged, fcQItemSelectionModel_slot_callback_currentRowChanged_release)

proc currentColumnChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemSelectionModel_currentColumnChanged(self.h, current.h, previous.h)

type QItemSelectionModelcurrentColumnChangedSlot* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex)
proc fcQItemSelectionModel_slot_callback_currentColumnChanged(slot: int, current: pointer, previous: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QItemSelectionModelcurrentColumnChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQItemSelectionModel_slot_callback_currentColumnChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QItemSelectionModelcurrentColumnChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentColumnChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelcurrentColumnChangedSlot) =
  var tmp = new QItemSelectionModelcurrentColumnChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_connect_currentColumnChanged(self.h, cast[int](addr tmp[]), fcQItemSelectionModel_slot_callback_currentColumnChanged, fcQItemSelectionModel_slot_callback_currentColumnChanged_release)

proc modelChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQItemSelectionModel_modelChanged(self.h, model.h)

type QItemSelectionModelmodelChangedSlot* = proc(model: gen_qabstractitemmodel_types.QAbstractItemModel)
proc fcQItemSelectionModel_slot_callback_modelChanged(slot: int, model: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QItemSelectionModelmodelChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)

  nimfunc[](slotval1)

proc fcQItemSelectionModel_slot_callback_modelChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QItemSelectionModelmodelChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onModelChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelmodelChangedSlot) =
  var tmp = new QItemSelectionModelmodelChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_connect_modelChanged(self.h, cast[int](addr tmp[]), fcQItemSelectionModel_slot_callback_modelChanged, fcQItemSelectionModel_slot_callback_modelChanged_release)

proc tr*(_: type gen_qitemselectionmodel_types.QItemSelectionModel, s: cstring, c: cstring): string =
  let v_ms = fcQItemSelectionModel_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qitemselectionmodel_types.QItemSelectionModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQItemSelectionModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc selectedColumns*(self: gen_qitemselectionmodel_types.QItemSelectionModel, row: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQItemSelectionModel_selectedColumns1(self.h, row)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

type QItemSelectionModelmetaObjectProc* = proc(self: QItemSelectionModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QItemSelectionModelmetacastProc* = proc(self: QItemSelectionModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QItemSelectionModelmetacallProc* = proc(self: QItemSelectionModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QItemSelectionModelsetCurrentIndexProc* = proc(self: QItemSelectionModel, index: gen_qabstractitemmodel_types.QModelIndex, command: cint): void {.raises: [], gcsafe.}
type QItemSelectionModelselectProc* = proc(self: QItemSelectionModel, index: gen_qabstractitemmodel_types.QModelIndex, command: cint): void {.raises: [], gcsafe.}
type QItemSelectionModelselect2Proc* = proc(self: QItemSelectionModel, selection: gen_qitemselectionmodel_types.QItemSelection, command: cint): void {.raises: [], gcsafe.}
type QItemSelectionModelclearProc* = proc(self: QItemSelectionModel): void {.raises: [], gcsafe.}
type QItemSelectionModelresetProc* = proc(self: QItemSelectionModel): void {.raises: [], gcsafe.}
type QItemSelectionModelclearCurrentIndexProc* = proc(self: QItemSelectionModel): void {.raises: [], gcsafe.}
type QItemSelectionModeleventProc* = proc(self: QItemSelectionModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QItemSelectionModeleventFilterProc* = proc(self: QItemSelectionModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QItemSelectionModeltimerEventProc* = proc(self: QItemSelectionModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QItemSelectionModelchildEventProc* = proc(self: QItemSelectionModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QItemSelectionModelcustomEventProc* = proc(self: QItemSelectionModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QItemSelectionModelconnectNotifyProc* = proc(self: QItemSelectionModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QItemSelectionModeldisconnectNotifyProc* = proc(self: QItemSelectionModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QItemSelectionModelVTable* {.inheritable, pure.} = object
  vtbl: cQItemSelectionModelVTable
  metaObject*: QItemSelectionModelmetaObjectProc
  metacast*: QItemSelectionModelmetacastProc
  metacall*: QItemSelectionModelmetacallProc
  setCurrentIndex*: QItemSelectionModelsetCurrentIndexProc
  select*: QItemSelectionModelselectProc
  select2*: QItemSelectionModelselect2Proc
  clear*: QItemSelectionModelclearProc
  reset*: QItemSelectionModelresetProc
  clearCurrentIndex*: QItemSelectionModelclearCurrentIndexProc
  event*: QItemSelectionModeleventProc
  eventFilter*: QItemSelectionModeleventFilterProc
  timerEvent*: QItemSelectionModeltimerEventProc
  childEvent*: QItemSelectionModelchildEventProc
  customEvent*: QItemSelectionModelcustomEventProc
  connectNotify*: QItemSelectionModelconnectNotifyProc
  disconnectNotify*: QItemSelectionModeldisconnectNotifyProc

proc QItemSelectionModelmetaObject*(self: gen_qitemselectionmodel_types.QItemSelectionModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQItemSelectionModel_virtualbase_metaObject(self.h), owned: false)

proc QItemSelectionModelmetacast*(self: gen_qitemselectionmodel_types.QItemSelectionModel, param1: cstring): pointer =
  fcQItemSelectionModel_virtualbase_metacast(self.h, param1)

proc QItemSelectionModelmetacall*(self: gen_qitemselectionmodel_types.QItemSelectionModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQItemSelectionModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QItemSelectionModelsetCurrentIndex*(self: gen_qitemselectionmodel_types.QItemSelectionModel, index: gen_qabstractitemmodel_types.QModelIndex, command: cint): void =
  fcQItemSelectionModel_virtualbase_setCurrentIndex(self.h, index.h, cint(command))

proc QItemSelectionModelselect*(self: gen_qitemselectionmodel_types.QItemSelectionModel, index: gen_qabstractitemmodel_types.QModelIndex, command: cint): void =
  fcQItemSelectionModel_virtualbase_select(self.h, index.h, cint(command))

proc QItemSelectionModelselect*(self: gen_qitemselectionmodel_types.QItemSelectionModel, selection: gen_qitemselectionmodel_types.QItemSelection, command: cint): void =
  fcQItemSelectionModel_virtualbase_select2(self.h, selection.h, cint(command))

proc QItemSelectionModelclear*(self: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQItemSelectionModel_virtualbase_clear(self.h)

proc QItemSelectionModelreset*(self: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQItemSelectionModel_virtualbase_reset(self.h)

proc QItemSelectionModelclearCurrentIndex*(self: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQItemSelectionModel_virtualbase_clearCurrentIndex(self.h)

proc QItemSelectionModelevent*(self: gen_qitemselectionmodel_types.QItemSelectionModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQItemSelectionModel_virtualbase_event(self.h, event.h)

proc QItemSelectionModeleventFilter*(self: gen_qitemselectionmodel_types.QItemSelectionModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQItemSelectionModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QItemSelectionModeltimerEvent*(self: gen_qitemselectionmodel_types.QItemSelectionModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQItemSelectionModel_virtualbase_timerEvent(self.h, event.h)

proc QItemSelectionModelchildEvent*(self: gen_qitemselectionmodel_types.QItemSelectionModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQItemSelectionModel_virtualbase_childEvent(self.h, event.h)

proc QItemSelectionModelcustomEvent*(self: gen_qitemselectionmodel_types.QItemSelectionModel, event: gen_qcoreevent_types.QEvent): void =
  fcQItemSelectionModel_virtualbase_customEvent(self.h, event.h)

proc QItemSelectionModelconnectNotify*(self: gen_qitemselectionmodel_types.QItemSelectionModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQItemSelectionModel_virtualbase_connectNotify(self.h, signal.h)

proc QItemSelectionModeldisconnectNotify*(self: gen_qitemselectionmodel_types.QItemSelectionModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQItemSelectionModel_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQItemSelectionModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
  let self = QItemSelectionModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQItemSelectionModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
  let self = QItemSelectionModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQItemSelectionModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
  let self = QItemSelectionModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQItemSelectionModel_vtable_callback_setCurrentIndex(self: pointer, index: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(command)
  vtbl[].setCurrentIndex(self, slotval1, slotval2)

proc fcQItemSelectionModel_vtable_callback_select(self: pointer, index: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(command)
  vtbl[].select(self, slotval1, slotval2)

proc fcQItemSelectionModel_vtable_callback_select2(self: pointer, selection: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  let slotval2 = cint(command)
  vtbl[].select2(self, slotval1, slotval2)

proc fcQItemSelectionModel_vtable_callback_clear(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
  let self = QItemSelectionModel(h: self)
  vtbl[].clear(self)

proc fcQItemSelectionModel_vtable_callback_reset(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
  let self = QItemSelectionModel(h: self)
  vtbl[].reset(self)

proc fcQItemSelectionModel_vtable_callback_clearCurrentIndex(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
  let self = QItemSelectionModel(h: self)
  vtbl[].clearCurrentIndex(self)

proc fcQItemSelectionModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQItemSelectionModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQItemSelectionModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQItemSelectionModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQItemSelectionModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQItemSelectionModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQItemSelectionModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQItemSelectionModel* {.inheritable.} = ref object of QItemSelectionModel
  vtbl*: cQItemSelectionModelVTable

method metaObject*(self: VirtualQItemSelectionModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QItemSelectionModelmetaObject(self[])
method metacast*(self: VirtualQItemSelectionModel, param1: cstring): pointer {.base.} =
  QItemSelectionModelmetacast(self[], param1)
method metacall*(self: VirtualQItemSelectionModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QItemSelectionModelmetacall(self[], param1, param2, param3)
method setCurrentIndex*(self: VirtualQItemSelectionModel, index: gen_qabstractitemmodel_types.QModelIndex, command: cint): void {.base.} =
  QItemSelectionModelsetCurrentIndex(self[], index, command)
method select*(self: VirtualQItemSelectionModel, index: gen_qabstractitemmodel_types.QModelIndex, command: cint): void {.base.} =
  QItemSelectionModelselect(self[], index, command)
method select*(self: VirtualQItemSelectionModel, selection: gen_qitemselectionmodel_types.QItemSelection, command: cint): void {.base.} =
  QItemSelectionModelselect(self[], selection, command)
method clear*(self: VirtualQItemSelectionModel): void {.base.} =
  QItemSelectionModelclear(self[])
method reset*(self: VirtualQItemSelectionModel): void {.base.} =
  QItemSelectionModelreset(self[])
method clearCurrentIndex*(self: VirtualQItemSelectionModel): void {.base.} =
  QItemSelectionModelclearCurrentIndex(self[])
method event*(self: VirtualQItemSelectionModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QItemSelectionModelevent(self[], event)
method eventFilter*(self: VirtualQItemSelectionModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QItemSelectionModeleventFilter(self[], watched, event)
method timerEvent*(self: VirtualQItemSelectionModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QItemSelectionModeltimerEvent(self[], event)
method childEvent*(self: VirtualQItemSelectionModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QItemSelectionModelchildEvent(self[], event)
method customEvent*(self: VirtualQItemSelectionModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QItemSelectionModelcustomEvent(self[], event)
method connectNotify*(self: VirtualQItemSelectionModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QItemSelectionModelconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQItemSelectionModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QItemSelectionModeldisconnectNotify(self[], signal)

proc fcQItemSelectionModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQItemSelectionModel](fcQItemSelectionModel_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQItemSelectionModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQItemSelectionModel](fcQItemSelectionModel_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQItemSelectionModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQItemSelectionModel](fcQItemSelectionModel_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQItemSelectionModel_method_callback_setCurrentIndex(self: pointer, index: pointer, command: cint): void {.cdecl.} =
  let inst = cast[VirtualQItemSelectionModel](fcQItemSelectionModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(command)
  inst.setCurrentIndex(slotval1, slotval2)

proc fcQItemSelectionModel_method_callback_select(self: pointer, index: pointer, command: cint): void {.cdecl.} =
  let inst = cast[VirtualQItemSelectionModel](fcQItemSelectionModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(command)
  inst.select(slotval1, slotval2)

proc fcQItemSelectionModel_method_callback_select2(self: pointer, selection: pointer, command: cint): void {.cdecl.} =
  let inst = cast[VirtualQItemSelectionModel](fcQItemSelectionModel_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  let slotval2 = cint(command)
  inst.select(slotval1, slotval2)

proc fcQItemSelectionModel_method_callback_clear(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemSelectionModel](fcQItemSelectionModel_vdata(self))
  inst.clear()

proc fcQItemSelectionModel_method_callback_reset(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemSelectionModel](fcQItemSelectionModel_vdata(self))
  inst.reset()

proc fcQItemSelectionModel_method_callback_clearCurrentIndex(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemSelectionModel](fcQItemSelectionModel_vdata(self))
  inst.clearCurrentIndex()

proc fcQItemSelectionModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQItemSelectionModel](fcQItemSelectionModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQItemSelectionModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQItemSelectionModel](fcQItemSelectionModel_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQItemSelectionModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemSelectionModel](fcQItemSelectionModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQItemSelectionModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemSelectionModel](fcQItemSelectionModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQItemSelectionModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemSelectionModel](fcQItemSelectionModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQItemSelectionModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemSelectionModel](fcQItemSelectionModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQItemSelectionModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQItemSelectionModel](fcQItemSelectionModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc emitSelectionChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, newSelection: gen_qitemselectionmodel_types.QItemSelection, oldSelection: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQItemSelectionModel_protectedbase_emitSelectionChanged(self.h, newSelection.h, oldSelection.h)

proc sender*(self: gen_qitemselectionmodel_types.QItemSelectionModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQItemSelectionModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qitemselectionmodel_types.QItemSelectionModel): cint =
  fcQItemSelectionModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qitemselectionmodel_types.QItemSelectionModel, signal: cstring): cint =
  fcQItemSelectionModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qitemselectionmodel_types.QItemSelectionModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQItemSelectionModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionModel,
    vtbl: ref QItemSelectionModelVTable = nil): gen_qitemselectionmodel_types.QItemSelectionModel =
  let vtbl = if vtbl == nil: new QItemSelectionModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQItemSelectionModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQItemSelectionModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQItemSelectionModel_vtable_callback_metacall
  if not isNil(vtbl[].setCurrentIndex):
    vtbl[].vtbl.setCurrentIndex = fcQItemSelectionModel_vtable_callback_setCurrentIndex
  if not isNil(vtbl[].select):
    vtbl[].vtbl.select = fcQItemSelectionModel_vtable_callback_select
  if not isNil(vtbl[].select2):
    vtbl[].vtbl.select2 = fcQItemSelectionModel_vtable_callback_select2
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = fcQItemSelectionModel_vtable_callback_clear
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQItemSelectionModel_vtable_callback_reset
  if not isNil(vtbl[].clearCurrentIndex):
    vtbl[].vtbl.clearCurrentIndex = fcQItemSelectionModel_vtable_callback_clearCurrentIndex
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQItemSelectionModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQItemSelectionModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQItemSelectionModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQItemSelectionModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQItemSelectionModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQItemSelectionModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQItemSelectionModel_vtable_callback_disconnectNotify
  gen_qitemselectionmodel_types.QItemSelectionModel(h: fcQItemSelectionModel_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionModel,
    model: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qobject_types.QObject,
    vtbl: ref QItemSelectionModelVTable = nil): gen_qitemselectionmodel_types.QItemSelectionModel =
  let vtbl = if vtbl == nil: new QItemSelectionModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQItemSelectionModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQItemSelectionModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQItemSelectionModel_vtable_callback_metacall
  if not isNil(vtbl[].setCurrentIndex):
    vtbl[].vtbl.setCurrentIndex = fcQItemSelectionModel_vtable_callback_setCurrentIndex
  if not isNil(vtbl[].select):
    vtbl[].vtbl.select = fcQItemSelectionModel_vtable_callback_select
  if not isNil(vtbl[].select2):
    vtbl[].vtbl.select2 = fcQItemSelectionModel_vtable_callback_select2
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = fcQItemSelectionModel_vtable_callback_clear
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQItemSelectionModel_vtable_callback_reset
  if not isNil(vtbl[].clearCurrentIndex):
    vtbl[].vtbl.clearCurrentIndex = fcQItemSelectionModel_vtable_callback_clearCurrentIndex
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQItemSelectionModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQItemSelectionModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQItemSelectionModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQItemSelectionModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQItemSelectionModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQItemSelectionModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQItemSelectionModel_vtable_callback_disconnectNotify
  gen_qitemselectionmodel_types.QItemSelectionModel(h: fcQItemSelectionModel_new2(addr(vtbl[].vtbl), addr(vtbl[]), model.h, parent.h), owned: true)

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionModel,
    model: gen_qabstractitemmodel_types.QAbstractItemModel,
    vtbl: ref QItemSelectionModelVTable = nil): gen_qitemselectionmodel_types.QItemSelectionModel =
  let vtbl = if vtbl == nil: new QItemSelectionModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QItemSelectionModelVTable](fcQItemSelectionModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQItemSelectionModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQItemSelectionModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQItemSelectionModel_vtable_callback_metacall
  if not isNil(vtbl[].setCurrentIndex):
    vtbl[].vtbl.setCurrentIndex = fcQItemSelectionModel_vtable_callback_setCurrentIndex
  if not isNil(vtbl[].select):
    vtbl[].vtbl.select = fcQItemSelectionModel_vtable_callback_select
  if not isNil(vtbl[].select2):
    vtbl[].vtbl.select2 = fcQItemSelectionModel_vtable_callback_select2
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = fcQItemSelectionModel_vtable_callback_clear
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQItemSelectionModel_vtable_callback_reset
  if not isNil(vtbl[].clearCurrentIndex):
    vtbl[].vtbl.clearCurrentIndex = fcQItemSelectionModel_vtable_callback_clearCurrentIndex
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQItemSelectionModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQItemSelectionModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQItemSelectionModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQItemSelectionModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQItemSelectionModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQItemSelectionModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQItemSelectionModel_vtable_callback_disconnectNotify
  gen_qitemselectionmodel_types.QItemSelectionModel(h: fcQItemSelectionModel_new3(addr(vtbl[].vtbl), addr(vtbl[]), model.h), owned: true)

const cQItemSelectionModel_mvtbl = cQItemSelectionModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQItemSelectionModel()[])](self.fcQItemSelectionModel_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQItemSelectionModel_method_callback_metaObject,
  metacast: fcQItemSelectionModel_method_callback_metacast,
  metacall: fcQItemSelectionModel_method_callback_metacall,
  setCurrentIndex: fcQItemSelectionModel_method_callback_setCurrentIndex,
  select: fcQItemSelectionModel_method_callback_select,
  select2: fcQItemSelectionModel_method_callback_select2,
  clear: fcQItemSelectionModel_method_callback_clear,
  reset: fcQItemSelectionModel_method_callback_reset,
  clearCurrentIndex: fcQItemSelectionModel_method_callback_clearCurrentIndex,
  event: fcQItemSelectionModel_method_callback_event,
  eventFilter: fcQItemSelectionModel_method_callback_eventFilter,
  timerEvent: fcQItemSelectionModel_method_callback_timerEvent,
  childEvent: fcQItemSelectionModel_method_callback_childEvent,
  customEvent: fcQItemSelectionModel_method_callback_customEvent,
  connectNotify: fcQItemSelectionModel_method_callback_connectNotify,
  disconnectNotify: fcQItemSelectionModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionModel,
    inst: VirtualQItemSelectionModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQItemSelectionModel_new(addr(cQItemSelectionModel_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionModel,
    model: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qobject_types.QObject,
    inst: VirtualQItemSelectionModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQItemSelectionModel_new2(addr(cQItemSelectionModel_mvtbl), addr(inst[]), model.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionModel,
    model: gen_qabstractitemmodel_types.QAbstractItemModel,
    inst: VirtualQItemSelectionModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQItemSelectionModel_new3(addr(cQItemSelectionModel_mvtbl), addr(inst[]), model.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qitemselectionmodel_types.QItemSelectionModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQItemSelectionModel_staticMetaObject())
proc select*(self: gen_qitemselectionmodel_types.QItemSelection, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemSelection_select(self.h, topLeft.h, bottomRight.h)

proc contains*(self: gen_qitemselectionmodel_types.QItemSelection, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQItemSelection_contains(self.h, index.h)

proc indexes*(self: gen_qitemselectionmodel_types.QItemSelection): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQItemSelection_indexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc merge*(self: gen_qitemselectionmodel_types.QItemSelection, other: gen_qitemselectionmodel_types.QItemSelection, command: cint): void =
  fcQItemSelection_merge(self.h, other.h, cint(command))

proc split*(_: type gen_qitemselectionmodel_types.QItemSelection, range: gen_qitemselectionmodel_types.QItemSelectionRange, other: gen_qitemselectionmodel_types.QItemSelectionRange, resultVal: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQItemSelection_split(range.h, other.h, resultVal.h)

proc create*(T: type gen_qitemselectionmodel_types.QItemSelection,
    topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQItemSelection_new(topLeft.h, bottomRight.h), owned: true)

proc create*(T: type gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQItemSelection_new2(), owned: true)

proc create*(T: type gen_qitemselectionmodel_types.QItemSelection,
    param1: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQItemSelection_new3(param1.h), owned: true)

