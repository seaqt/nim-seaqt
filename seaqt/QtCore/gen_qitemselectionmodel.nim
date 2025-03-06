import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
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

proc fcQItemSelectionRange_operatorAssign(self: pointer, other: pointer): void {.importc: "QItemSelectionRange_operatorAssign".}
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
proc fcQItemSelectionRange_operatorLesser(self: pointer, other: pointer): bool {.importc: "QItemSelectionRange_operatorLesser".}
proc fcQItemSelectionRange_isValid(self: pointer, ): bool {.importc: "QItemSelectionRange_isValid".}
proc fcQItemSelectionRange_isEmpty(self: pointer, ): bool {.importc: "QItemSelectionRange_isEmpty".}
proc fcQItemSelectionRange_indexes(self: pointer, ): struct_miqt_array {.importc: "QItemSelectionRange_indexes".}
proc fcQItemSelectionRange_new(): ptr cQItemSelectionRange {.importc: "QItemSelectionRange_new".}
proc fcQItemSelectionRange_new2(other: pointer): ptr cQItemSelectionRange {.importc: "QItemSelectionRange_new2".}
proc fcQItemSelectionRange_new3(topL: pointer, bottomR: pointer): ptr cQItemSelectionRange {.importc: "QItemSelectionRange_new3".}
proc fcQItemSelectionRange_new4(index: pointer): ptr cQItemSelectionRange {.importc: "QItemSelectionRange_new4".}
proc fcQItemSelectionRange_delete(self: pointer) {.importc: "QItemSelectionRange_delete".}
proc fcQItemSelectionModel_metaObject(self: pointer, ): pointer {.importc: "QItemSelectionModel_metaObject".}
proc fcQItemSelectionModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QItemSelectionModel_metacast".}
proc fcQItemSelectionModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QItemSelectionModel_metacall".}
proc fcQItemSelectionModel_tr(s: cstring): struct_miqt_string {.importc: "QItemSelectionModel_tr".}
proc fcQItemSelectionModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QItemSelectionModel_trUtf8".}
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
proc fcQItemSelectionModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QItemSelectionModel_trUtf82".}
proc fcQItemSelectionModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QItemSelectionModel_trUtf83".}
proc fcQItemSelectionModel_isRowSelected2(self: pointer, row: cint, parent: pointer): bool {.importc: "QItemSelectionModel_isRowSelected2".}
proc fcQItemSelectionModel_isColumnSelected2(self: pointer, column: cint, parent: pointer): bool {.importc: "QItemSelectionModel_isColumnSelected2".}
proc fcQItemSelectionModel_rowIntersectsSelection2(self: pointer, row: cint, parent: pointer): bool {.importc: "QItemSelectionModel_rowIntersectsSelection2".}
proc fcQItemSelectionModel_columnIntersectsSelection2(self: pointer, column: cint, parent: pointer): bool {.importc: "QItemSelectionModel_columnIntersectsSelection2".}
proc fcQItemSelectionModel_selectedRows1(self: pointer, column: cint): struct_miqt_array {.importc: "QItemSelectionModel_selectedRows1".}
proc fcQItemSelectionModel_selectedColumns1(self: pointer, row: cint): struct_miqt_array {.importc: "QItemSelectionModel_selectedColumns1".}
type cQItemSelectionModelVTable = object
  destructor*: proc(vtbl: ptr cQItemSelectionModelVTable, self: ptr cQItemSelectionModel) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setCurrentIndex*: proc(vtbl, self: pointer, index: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  select*: proc(vtbl, self: pointer, index: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  select2*: proc(vtbl, self: pointer, selection: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  clear*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  reset*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  clearCurrentIndex*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQItemSelectionModel_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QItemSelectionModel_virtualbase_metaObject".}
proc fcQItemSelectionModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QItemSelectionModel_virtualbase_metacast".}
proc fcQItemSelectionModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QItemSelectionModel_virtualbase_metacall".}
proc fcQItemSelectionModel_virtualbase_setCurrentIndex(self: pointer, index: pointer, command: cint): void {.importc: "QItemSelectionModel_virtualbase_setCurrentIndex".}
proc fcQItemSelectionModel_virtualbase_select(self: pointer, index: pointer, command: cint): void {.importc: "QItemSelectionModel_virtualbase_select".}
proc fcQItemSelectionModel_virtualbase_select2(self: pointer, selection: pointer, command: cint): void {.importc: "QItemSelectionModel_virtualbase_select2".}
proc fcQItemSelectionModel_virtualbase_clear(self: pointer, ): void {.importc: "QItemSelectionModel_virtualbase_clear".}
proc fcQItemSelectionModel_virtualbase_reset(self: pointer, ): void {.importc: "QItemSelectionModel_virtualbase_reset".}
proc fcQItemSelectionModel_virtualbase_clearCurrentIndex(self: pointer, ): void {.importc: "QItemSelectionModel_virtualbase_clearCurrentIndex".}
proc fcQItemSelectionModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QItemSelectionModel_virtualbase_event".}
proc fcQItemSelectionModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QItemSelectionModel_virtualbase_eventFilter".}
proc fcQItemSelectionModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QItemSelectionModel_virtualbase_timerEvent".}
proc fcQItemSelectionModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QItemSelectionModel_virtualbase_childEvent".}
proc fcQItemSelectionModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QItemSelectionModel_virtualbase_customEvent".}
proc fcQItemSelectionModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QItemSelectionModel_virtualbase_connectNotify".}
proc fcQItemSelectionModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QItemSelectionModel_virtualbase_disconnectNotify".}
proc fcQItemSelectionModel_new(vtbl: pointer, ): ptr cQItemSelectionModel {.importc: "QItemSelectionModel_new".}
proc fcQItemSelectionModel_new2(vtbl: pointer, model: pointer, parent: pointer): ptr cQItemSelectionModel {.importc: "QItemSelectionModel_new2".}
proc fcQItemSelectionModel_new3(vtbl: pointer, model: pointer): ptr cQItemSelectionModel {.importc: "QItemSelectionModel_new3".}
proc fcQItemSelectionModel_staticMetaObject(): pointer {.importc: "QItemSelectionModel_staticMetaObject".}
proc fcQItemSelectionModel_delete(self: pointer) {.importc: "QItemSelectionModel_delete".}
proc fcQItemSelection_select(self: pointer, topLeft: pointer, bottomRight: pointer): void {.importc: "QItemSelection_select".}
proc fcQItemSelection_contains(self: pointer, index: pointer): bool {.importc: "QItemSelection_contains".}
proc fcQItemSelection_indexes(self: pointer, ): struct_miqt_array {.importc: "QItemSelection_indexes".}
proc fcQItemSelection_merge(self: pointer, other: pointer, command: cint): void {.importc: "QItemSelection_merge".}
proc fcQItemSelection_split(range: pointer, other: pointer, resultVal: pointer): void {.importc: "QItemSelection_split".}
proc fcQItemSelection_operatorAssign(self: pointer, param1: pointer): void {.importc: "QItemSelection_operatorAssign".}
proc fcQItemSelection_new(): ptr cQItemSelection {.importc: "QItemSelection_new".}
proc fcQItemSelection_new2(topLeft: pointer, bottomRight: pointer): ptr cQItemSelection {.importc: "QItemSelection_new2".}
proc fcQItemSelection_delete(self: pointer) {.importc: "QItemSelection_delete".}

proc operatorAssign*(self: gen_qitemselectionmodel_types.QItemSelectionRange, other: gen_qitemselectionmodel_types.QItemSelectionRange): void =
  fcQItemSelectionRange_operatorAssign(self.h, other.h)

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

proc operatorLesser*(self: gen_qitemselectionmodel_types.QItemSelectionRange, other: gen_qitemselectionmodel_types.QItemSelectionRange): bool =
  fcQItemSelectionRange_operatorLesser(self.h, other.h)

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

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionRange): gen_qitemselectionmodel_types.QItemSelectionRange =
  gen_qitemselectionmodel_types.QItemSelectionRange(h: fcQItemSelectionRange_new())

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionRange,
    other: gen_qitemselectionmodel_types.QItemSelectionRange): gen_qitemselectionmodel_types.QItemSelectionRange =
  gen_qitemselectionmodel_types.QItemSelectionRange(h: fcQItemSelectionRange_new2(other.h))

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionRange,
    topL: gen_qabstractitemmodel_types.QModelIndex, bottomR: gen_qabstractitemmodel_types.QModelIndex): gen_qitemselectionmodel_types.QItemSelectionRange =
  gen_qitemselectionmodel_types.QItemSelectionRange(h: fcQItemSelectionRange_new3(topL.h, bottomR.h))

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionRange,
    index: gen_qabstractitemmodel_types.QModelIndex): gen_qitemselectionmodel_types.QItemSelectionRange =
  gen_qitemselectionmodel_types.QItemSelectionRange(h: fcQItemSelectionRange_new4(index.h))

proc delete*(self: gen_qitemselectionmodel_types.QItemSelectionRange) =
  fcQItemSelectionRange_delete(self.h)
proc metaObject*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQItemSelectionModel_metaObject(self.h))

proc metacast*(self: gen_qitemselectionmodel_types.QItemSelectionModel, param1: cstring): pointer =
  fcQItemSelectionModel_metacast(self.h, param1)

proc metacall*(self: gen_qitemselectionmodel_types.QItemSelectionModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQItemSelectionModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qitemselectionmodel_types.QItemSelectionModel, s: cstring): string =
  let v_ms = fcQItemSelectionModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qitemselectionmodel_types.QItemSelectionModel, s: cstring): string =
  let v_ms = fcQItemSelectionModel_trUtf8(s)
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
proc miqt_exec_callback_cQItemSelectionModel_selectionChanged(slot: int, selected: pointer, deselected: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QItemSelectionModelselectionChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQItemSelectionModel_selectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QItemSelectionModelselectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onselectionChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelselectionChangedSlot) =
  var tmp = new QItemSelectionModelselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_connect_selectionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQItemSelectionModel_selectionChanged, miqt_exec_callback_cQItemSelectionModel_selectionChanged_release)

proc currentChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemSelectionModel_currentChanged(self.h, current.h, previous.h)

type QItemSelectionModelcurrentChangedSlot* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_cQItemSelectionModel_currentChanged(slot: int, current: pointer, previous: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QItemSelectionModelcurrentChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQItemSelectionModel_currentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QItemSelectionModelcurrentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelcurrentChangedSlot) =
  var tmp = new QItemSelectionModelcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_connect_currentChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQItemSelectionModel_currentChanged, miqt_exec_callback_cQItemSelectionModel_currentChanged_release)

proc currentRowChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemSelectionModel_currentRowChanged(self.h, current.h, previous.h)

type QItemSelectionModelcurrentRowChangedSlot* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_cQItemSelectionModel_currentRowChanged(slot: int, current: pointer, previous: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QItemSelectionModelcurrentRowChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQItemSelectionModel_currentRowChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QItemSelectionModelcurrentRowChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentRowChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelcurrentRowChangedSlot) =
  var tmp = new QItemSelectionModelcurrentRowChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_connect_currentRowChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQItemSelectionModel_currentRowChanged, miqt_exec_callback_cQItemSelectionModel_currentRowChanged_release)

proc currentColumnChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQItemSelectionModel_currentColumnChanged(self.h, current.h, previous.h)

type QItemSelectionModelcurrentColumnChangedSlot* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_cQItemSelectionModel_currentColumnChanged(slot: int, current: pointer, previous: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QItemSelectionModelcurrentColumnChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQItemSelectionModel_currentColumnChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QItemSelectionModelcurrentColumnChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentColumnChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelcurrentColumnChangedSlot) =
  var tmp = new QItemSelectionModelcurrentColumnChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_connect_currentColumnChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQItemSelectionModel_currentColumnChanged, miqt_exec_callback_cQItemSelectionModel_currentColumnChanged_release)

proc modelChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQItemSelectionModel_modelChanged(self.h, model.h)

type QItemSelectionModelmodelChangedSlot* = proc(model: gen_qabstractitemmodel_types.QAbstractItemModel)
proc miqt_exec_callback_cQItemSelectionModel_modelChanged(slot: int, model: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QItemSelectionModelmodelChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQItemSelectionModel_modelChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QItemSelectionModelmodelChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmodelChanged*(self: gen_qitemselectionmodel_types.QItemSelectionModel, slot: QItemSelectionModelmodelChangedSlot) =
  var tmp = new QItemSelectionModelmodelChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_connect_modelChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQItemSelectionModel_modelChanged, miqt_exec_callback_cQItemSelectionModel_modelChanged_release)

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

proc trUtf8*(_: type gen_qitemselectionmodel_types.QItemSelectionModel, s: cstring, c: cstring): string =
  let v_ms = fcQItemSelectionModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qitemselectionmodel_types.QItemSelectionModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQItemSelectionModel_trUtf83(s, c, n)
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
type QItemSelectionModelVTable* = object
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
proc QItemSelectionModelmetaObject*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQItemSelectionModel_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQItemSelectionModel_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](vtbl)
  let self = QItemSelectionModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QItemSelectionModelmetacast*(self: gen_qitemselectionmodel_types.QItemSelectionModel, param1: cstring): pointer =
  fcQItemSelectionModel_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQItemSelectionModel_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](vtbl)
  let self = QItemSelectionModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QItemSelectionModelmetacall*(self: gen_qitemselectionmodel_types.QItemSelectionModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQItemSelectionModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQItemSelectionModel_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](vtbl)
  let self = QItemSelectionModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QItemSelectionModelsetCurrentIndex*(self: gen_qitemselectionmodel_types.QItemSelectionModel, index: gen_qabstractitemmodel_types.QModelIndex, command: cint): void =
  fcQItemSelectionModel_virtualbase_setCurrentIndex(self.h, index.h, cint(command))

proc miqt_exec_callback_cQItemSelectionModel_setCurrentIndex(vtbl: pointer, self: pointer, index: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](vtbl)
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(command)
  vtbl[].setCurrentIndex(self, slotval1, slotval2)

proc QItemSelectionModelselect*(self: gen_qitemselectionmodel_types.QItemSelectionModel, index: gen_qabstractitemmodel_types.QModelIndex, command: cint): void =
  fcQItemSelectionModel_virtualbase_select(self.h, index.h, cint(command))

proc miqt_exec_callback_cQItemSelectionModel_select(vtbl: pointer, self: pointer, index: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](vtbl)
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(command)
  vtbl[].select(self, slotval1, slotval2)

proc QItemSelectionModelselect*(self: gen_qitemselectionmodel_types.QItemSelectionModel, selection: gen_qitemselectionmodel_types.QItemSelection, command: cint): void =
  fcQItemSelectionModel_virtualbase_select2(self.h, selection.h, cint(command))

proc miqt_exec_callback_cQItemSelectionModel_select2(vtbl: pointer, self: pointer, selection: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](vtbl)
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)
  let slotval2 = cint(command)
  vtbl[].select2(self, slotval1, slotval2)

proc QItemSelectionModelclear*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): void =
  fcQItemSelectionModel_virtualbase_clear(self.h)

proc miqt_exec_callback_cQItemSelectionModel_clear(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](vtbl)
  let self = QItemSelectionModel(h: self)
  vtbl[].clear(self)

proc QItemSelectionModelreset*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): void =
  fcQItemSelectionModel_virtualbase_reset(self.h)

proc miqt_exec_callback_cQItemSelectionModel_reset(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](vtbl)
  let self = QItemSelectionModel(h: self)
  vtbl[].reset(self)

proc QItemSelectionModelclearCurrentIndex*(self: gen_qitemselectionmodel_types.QItemSelectionModel, ): void =
  fcQItemSelectionModel_virtualbase_clearCurrentIndex(self.h)

proc miqt_exec_callback_cQItemSelectionModel_clearCurrentIndex(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](vtbl)
  let self = QItemSelectionModel(h: self)
  vtbl[].clearCurrentIndex(self)

proc QItemSelectionModelevent*(self: gen_qitemselectionmodel_types.QItemSelectionModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQItemSelectionModel_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQItemSelectionModel_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](vtbl)
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QItemSelectionModeleventFilter*(self: gen_qitemselectionmodel_types.QItemSelectionModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQItemSelectionModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQItemSelectionModel_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](vtbl)
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QItemSelectionModeltimerEvent*(self: gen_qitemselectionmodel_types.QItemSelectionModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQItemSelectionModel_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQItemSelectionModel_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](vtbl)
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QItemSelectionModelchildEvent*(self: gen_qitemselectionmodel_types.QItemSelectionModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQItemSelectionModel_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQItemSelectionModel_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](vtbl)
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QItemSelectionModelcustomEvent*(self: gen_qitemselectionmodel_types.QItemSelectionModel, event: gen_qcoreevent_types.QEvent): void =
  fcQItemSelectionModel_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQItemSelectionModel_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](vtbl)
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QItemSelectionModelconnectNotify*(self: gen_qitemselectionmodel_types.QItemSelectionModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQItemSelectionModel_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQItemSelectionModel_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](vtbl)
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QItemSelectionModeldisconnectNotify*(self: gen_qitemselectionmodel_types.QItemSelectionModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQItemSelectionModel_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQItemSelectionModel_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QItemSelectionModelVTable](vtbl)
  let self = QItemSelectionModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionModel,
    vtbl: ref QItemSelectionModelVTable = nil): gen_qitemselectionmodel_types.QItemSelectionModel =
  let vtbl = if vtbl == nil: new QItemSelectionModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQItemSelectionModelVTable, _: ptr cQItemSelectionModel) {.cdecl.} =
    let vtbl = cast[ref QItemSelectionModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQItemSelectionModel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQItemSelectionModel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQItemSelectionModel_metacall
  if not isNil(vtbl.setCurrentIndex):
    vtbl[].vtbl.setCurrentIndex = miqt_exec_callback_cQItemSelectionModel_setCurrentIndex
  if not isNil(vtbl.select):
    vtbl[].vtbl.select = miqt_exec_callback_cQItemSelectionModel_select
  if not isNil(vtbl.select2):
    vtbl[].vtbl.select2 = miqt_exec_callback_cQItemSelectionModel_select2
  if not isNil(vtbl.clear):
    vtbl[].vtbl.clear = miqt_exec_callback_cQItemSelectionModel_clear
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQItemSelectionModel_reset
  if not isNil(vtbl.clearCurrentIndex):
    vtbl[].vtbl.clearCurrentIndex = miqt_exec_callback_cQItemSelectionModel_clearCurrentIndex
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQItemSelectionModel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQItemSelectionModel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQItemSelectionModel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQItemSelectionModel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQItemSelectionModel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQItemSelectionModel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQItemSelectionModel_disconnectNotify
  gen_qitemselectionmodel_types.QItemSelectionModel(h: fcQItemSelectionModel_new(addr(vtbl[]), ))

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionModel,
    model: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qobject_types.QObject,
    vtbl: ref QItemSelectionModelVTable = nil): gen_qitemselectionmodel_types.QItemSelectionModel =
  let vtbl = if vtbl == nil: new QItemSelectionModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQItemSelectionModelVTable, _: ptr cQItemSelectionModel) {.cdecl.} =
    let vtbl = cast[ref QItemSelectionModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQItemSelectionModel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQItemSelectionModel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQItemSelectionModel_metacall
  if not isNil(vtbl.setCurrentIndex):
    vtbl[].vtbl.setCurrentIndex = miqt_exec_callback_cQItemSelectionModel_setCurrentIndex
  if not isNil(vtbl.select):
    vtbl[].vtbl.select = miqt_exec_callback_cQItemSelectionModel_select
  if not isNil(vtbl.select2):
    vtbl[].vtbl.select2 = miqt_exec_callback_cQItemSelectionModel_select2
  if not isNil(vtbl.clear):
    vtbl[].vtbl.clear = miqt_exec_callback_cQItemSelectionModel_clear
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQItemSelectionModel_reset
  if not isNil(vtbl.clearCurrentIndex):
    vtbl[].vtbl.clearCurrentIndex = miqt_exec_callback_cQItemSelectionModel_clearCurrentIndex
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQItemSelectionModel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQItemSelectionModel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQItemSelectionModel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQItemSelectionModel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQItemSelectionModel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQItemSelectionModel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQItemSelectionModel_disconnectNotify
  gen_qitemselectionmodel_types.QItemSelectionModel(h: fcQItemSelectionModel_new2(addr(vtbl[]), model.h, parent.h))

proc create*(T: type gen_qitemselectionmodel_types.QItemSelectionModel,
    model: gen_qabstractitemmodel_types.QAbstractItemModel,
    vtbl: ref QItemSelectionModelVTable = nil): gen_qitemselectionmodel_types.QItemSelectionModel =
  let vtbl = if vtbl == nil: new QItemSelectionModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQItemSelectionModelVTable, _: ptr cQItemSelectionModel) {.cdecl.} =
    let vtbl = cast[ref QItemSelectionModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQItemSelectionModel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQItemSelectionModel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQItemSelectionModel_metacall
  if not isNil(vtbl.setCurrentIndex):
    vtbl[].vtbl.setCurrentIndex = miqt_exec_callback_cQItemSelectionModel_setCurrentIndex
  if not isNil(vtbl.select):
    vtbl[].vtbl.select = miqt_exec_callback_cQItemSelectionModel_select
  if not isNil(vtbl.select2):
    vtbl[].vtbl.select2 = miqt_exec_callback_cQItemSelectionModel_select2
  if not isNil(vtbl.clear):
    vtbl[].vtbl.clear = miqt_exec_callback_cQItemSelectionModel_clear
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQItemSelectionModel_reset
  if not isNil(vtbl.clearCurrentIndex):
    vtbl[].vtbl.clearCurrentIndex = miqt_exec_callback_cQItemSelectionModel_clearCurrentIndex
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQItemSelectionModel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQItemSelectionModel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQItemSelectionModel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQItemSelectionModel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQItemSelectionModel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQItemSelectionModel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQItemSelectionModel_disconnectNotify
  gen_qitemselectionmodel_types.QItemSelectionModel(h: fcQItemSelectionModel_new3(addr(vtbl[]), model.h))

proc staticMetaObject*(_: type gen_qitemselectionmodel_types.QItemSelectionModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQItemSelectionModel_staticMetaObject())
proc delete*(self: gen_qitemselectionmodel_types.QItemSelectionModel) =
  fcQItemSelectionModel_delete(self.h)
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

proc operatorAssign*(self: gen_qitemselectionmodel_types.QItemSelection, param1: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQItemSelection_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQItemSelection_new())

proc create*(T: type gen_qitemselectionmodel_types.QItemSelection,
    topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQItemSelection_new2(topLeft.h, bottomRight.h))

proc delete*(self: gen_qitemselectionmodel_types.QItemSelection) =
  fcQItemSelection_delete(self.h)
