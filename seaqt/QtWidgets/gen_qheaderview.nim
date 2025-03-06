import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
{.compile("gen_qheaderview.cpp", cflags).}


type QHeaderViewResizeModeEnum* = distinct cint
template Interactive*(_: type QHeaderViewResizeModeEnum): untyped = 0
template Stretch*(_: type QHeaderViewResizeModeEnum): untyped = 1
template Fixed*(_: type QHeaderViewResizeModeEnum): untyped = 2
template ResizeToContents*(_: type QHeaderViewResizeModeEnum): untyped = 3
template Custom*(_: type QHeaderViewResizeModeEnum): untyped = 2


import ./gen_qheaderview_types
export gen_qheaderview_types

import
  ../QtCore/gen_qabstractitemmodel_types,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qitemselectionmodel_types,
  ../QtCore/gen_qmargins_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qregion_types,
  ./gen_qabstractitemview,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
export
  gen_qabstractitemmodel_types,
  gen_qcoreevent_types,
  gen_qitemselectionmodel_types,
  gen_qmargins_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qregion_types,
  gen_qabstractitemview,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQHeaderView*{.exportc: "QHeaderView", incompleteStruct.} = object

proc fcQHeaderView_metaObject(self: pointer, ): pointer {.importc: "QHeaderView_metaObject".}
proc fcQHeaderView_metacast(self: pointer, param1: cstring): pointer {.importc: "QHeaderView_metacast".}
proc fcQHeaderView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHeaderView_metacall".}
proc fcQHeaderView_tr(s: cstring): struct_miqt_string {.importc: "QHeaderView_tr".}
proc fcQHeaderView_trUtf8(s: cstring): struct_miqt_string {.importc: "QHeaderView_trUtf8".}
proc fcQHeaderView_setModel(self: pointer, model: pointer): void {.importc: "QHeaderView_setModel".}
proc fcQHeaderView_orientation(self: pointer, ): cint {.importc: "QHeaderView_orientation".}
proc fcQHeaderView_offset(self: pointer, ): cint {.importc: "QHeaderView_offset".}
proc fcQHeaderView_length(self: pointer, ): cint {.importc: "QHeaderView_length".}
proc fcQHeaderView_sizeHint(self: pointer, ): pointer {.importc: "QHeaderView_sizeHint".}
proc fcQHeaderView_setVisible(self: pointer, v: bool): void {.importc: "QHeaderView_setVisible".}
proc fcQHeaderView_sectionSizeHint(self: pointer, logicalIndex: cint): cint {.importc: "QHeaderView_sectionSizeHint".}
proc fcQHeaderView_visualIndexAt(self: pointer, position: cint): cint {.importc: "QHeaderView_visualIndexAt".}
proc fcQHeaderView_logicalIndexAt(self: pointer, position: cint): cint {.importc: "QHeaderView_logicalIndexAt".}
proc fcQHeaderView_logicalIndexAt2(self: pointer, x: cint, y: cint): cint {.importc: "QHeaderView_logicalIndexAt2".}
proc fcQHeaderView_logicalIndexAtWithPos(self: pointer, pos: pointer): cint {.importc: "QHeaderView_logicalIndexAtWithPos".}
proc fcQHeaderView_sectionSize(self: pointer, logicalIndex: cint): cint {.importc: "QHeaderView_sectionSize".}
proc fcQHeaderView_sectionPosition(self: pointer, logicalIndex: cint): cint {.importc: "QHeaderView_sectionPosition".}
proc fcQHeaderView_sectionViewportPosition(self: pointer, logicalIndex: cint): cint {.importc: "QHeaderView_sectionViewportPosition".}
proc fcQHeaderView_moveSection(self: pointer, fromVal: cint, to: cint): void {.importc: "QHeaderView_moveSection".}
proc fcQHeaderView_swapSections(self: pointer, first: cint, second: cint): void {.importc: "QHeaderView_swapSections".}
proc fcQHeaderView_resizeSection(self: pointer, logicalIndex: cint, size: cint): void {.importc: "QHeaderView_resizeSection".}
proc fcQHeaderView_resizeSections(self: pointer, mode: cint): void {.importc: "QHeaderView_resizeSections".}
proc fcQHeaderView_isSectionHidden(self: pointer, logicalIndex: cint): bool {.importc: "QHeaderView_isSectionHidden".}
proc fcQHeaderView_setSectionHidden(self: pointer, logicalIndex: cint, hide: bool): void {.importc: "QHeaderView_setSectionHidden".}
proc fcQHeaderView_hiddenSectionCount(self: pointer, ): cint {.importc: "QHeaderView_hiddenSectionCount".}
proc fcQHeaderView_hideSection(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_hideSection".}
proc fcQHeaderView_showSection(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_showSection".}
proc fcQHeaderView_count(self: pointer, ): cint {.importc: "QHeaderView_count".}
proc fcQHeaderView_visualIndex(self: pointer, logicalIndex: cint): cint {.importc: "QHeaderView_visualIndex".}
proc fcQHeaderView_logicalIndex(self: pointer, visualIndex: cint): cint {.importc: "QHeaderView_logicalIndex".}
proc fcQHeaderView_setSectionsMovable(self: pointer, movable: bool): void {.importc: "QHeaderView_setSectionsMovable".}
proc fcQHeaderView_sectionsMovable(self: pointer, ): bool {.importc: "QHeaderView_sectionsMovable".}
proc fcQHeaderView_setFirstSectionMovable(self: pointer, movable: bool): void {.importc: "QHeaderView_setFirstSectionMovable".}
proc fcQHeaderView_isFirstSectionMovable(self: pointer, ): bool {.importc: "QHeaderView_isFirstSectionMovable".}
proc fcQHeaderView_setSectionsClickable(self: pointer, clickable: bool): void {.importc: "QHeaderView_setSectionsClickable".}
proc fcQHeaderView_sectionsClickable(self: pointer, ): bool {.importc: "QHeaderView_sectionsClickable".}
proc fcQHeaderView_setHighlightSections(self: pointer, highlight: bool): void {.importc: "QHeaderView_setHighlightSections".}
proc fcQHeaderView_highlightSections(self: pointer, ): bool {.importc: "QHeaderView_highlightSections".}
proc fcQHeaderView_sectionResizeMode(self: pointer, logicalIndex: cint): cint {.importc: "QHeaderView_sectionResizeMode".}
proc fcQHeaderView_setSectionResizeMode(self: pointer, mode: cint): void {.importc: "QHeaderView_setSectionResizeMode".}
proc fcQHeaderView_setSectionResizeMode2(self: pointer, logicalIndex: cint, mode: cint): void {.importc: "QHeaderView_setSectionResizeMode2".}
proc fcQHeaderView_setResizeContentsPrecision(self: pointer, precision: cint): void {.importc: "QHeaderView_setResizeContentsPrecision".}
proc fcQHeaderView_resizeContentsPrecision(self: pointer, ): cint {.importc: "QHeaderView_resizeContentsPrecision".}
proc fcQHeaderView_stretchSectionCount(self: pointer, ): cint {.importc: "QHeaderView_stretchSectionCount".}
proc fcQHeaderView_setSortIndicatorShown(self: pointer, show: bool): void {.importc: "QHeaderView_setSortIndicatorShown".}
proc fcQHeaderView_isSortIndicatorShown(self: pointer, ): bool {.importc: "QHeaderView_isSortIndicatorShown".}
proc fcQHeaderView_setSortIndicator(self: pointer, logicalIndex: cint, order: cint): void {.importc: "QHeaderView_setSortIndicator".}
proc fcQHeaderView_sortIndicatorSection(self: pointer, ): cint {.importc: "QHeaderView_sortIndicatorSection".}
proc fcQHeaderView_sortIndicatorOrder(self: pointer, ): cint {.importc: "QHeaderView_sortIndicatorOrder".}
proc fcQHeaderView_stretchLastSection(self: pointer, ): bool {.importc: "QHeaderView_stretchLastSection".}
proc fcQHeaderView_setStretchLastSection(self: pointer, stretch: bool): void {.importc: "QHeaderView_setStretchLastSection".}
proc fcQHeaderView_cascadingSectionResizes(self: pointer, ): bool {.importc: "QHeaderView_cascadingSectionResizes".}
proc fcQHeaderView_setCascadingSectionResizes(self: pointer, enable: bool): void {.importc: "QHeaderView_setCascadingSectionResizes".}
proc fcQHeaderView_defaultSectionSize(self: pointer, ): cint {.importc: "QHeaderView_defaultSectionSize".}
proc fcQHeaderView_setDefaultSectionSize(self: pointer, size: cint): void {.importc: "QHeaderView_setDefaultSectionSize".}
proc fcQHeaderView_resetDefaultSectionSize(self: pointer, ): void {.importc: "QHeaderView_resetDefaultSectionSize".}
proc fcQHeaderView_minimumSectionSize(self: pointer, ): cint {.importc: "QHeaderView_minimumSectionSize".}
proc fcQHeaderView_setMinimumSectionSize(self: pointer, size: cint): void {.importc: "QHeaderView_setMinimumSectionSize".}
proc fcQHeaderView_maximumSectionSize(self: pointer, ): cint {.importc: "QHeaderView_maximumSectionSize".}
proc fcQHeaderView_setMaximumSectionSize(self: pointer, size: cint): void {.importc: "QHeaderView_setMaximumSectionSize".}
proc fcQHeaderView_defaultAlignment(self: pointer, ): cint {.importc: "QHeaderView_defaultAlignment".}
proc fcQHeaderView_setDefaultAlignment(self: pointer, alignment: cint): void {.importc: "QHeaderView_setDefaultAlignment".}
proc fcQHeaderView_doItemsLayout(self: pointer, ): void {.importc: "QHeaderView_doItemsLayout".}
proc fcQHeaderView_sectionsMoved(self: pointer, ): bool {.importc: "QHeaderView_sectionsMoved".}
proc fcQHeaderView_sectionsHidden(self: pointer, ): bool {.importc: "QHeaderView_sectionsHidden".}
proc fcQHeaderView_saveState(self: pointer, ): struct_miqt_string {.importc: "QHeaderView_saveState".}
proc fcQHeaderView_restoreState(self: pointer, state: struct_miqt_string): bool {.importc: "QHeaderView_restoreState".}
proc fcQHeaderView_reset(self: pointer, ): void {.importc: "QHeaderView_reset".}
proc fcQHeaderView_setOffset(self: pointer, offset: cint): void {.importc: "QHeaderView_setOffset".}
proc fcQHeaderView_setOffsetToSectionPosition(self: pointer, visualIndex: cint): void {.importc: "QHeaderView_setOffsetToSectionPosition".}
proc fcQHeaderView_setOffsetToLastSection(self: pointer, ): void {.importc: "QHeaderView_setOffsetToLastSection".}
proc fcQHeaderView_headerDataChanged(self: pointer, orientation: cint, logicalFirst: cint, logicalLast: cint): void {.importc: "QHeaderView_headerDataChanged".}
proc fcQHeaderView_sectionMoved(self: pointer, logicalIndex: cint, oldVisualIndex: cint, newVisualIndex: cint): void {.importc: "QHeaderView_sectionMoved".}
proc fcQHeaderView_connect_sectionMoved(self: pointer, slot: int, callback: proc (slot: int, logicalIndex: cint, oldVisualIndex: cint, newVisualIndex: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QHeaderView_connect_sectionMoved".}
proc fcQHeaderView_sectionResized(self: pointer, logicalIndex: cint, oldSize: cint, newSize: cint): void {.importc: "QHeaderView_sectionResized".}
proc fcQHeaderView_connect_sectionResized(self: pointer, slot: int, callback: proc (slot: int, logicalIndex: cint, oldSize: cint, newSize: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QHeaderView_connect_sectionResized".}
proc fcQHeaderView_sectionPressed(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_sectionPressed".}
proc fcQHeaderView_connect_sectionPressed(self: pointer, slot: int, callback: proc (slot: int, logicalIndex: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QHeaderView_connect_sectionPressed".}
proc fcQHeaderView_sectionClicked(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_sectionClicked".}
proc fcQHeaderView_connect_sectionClicked(self: pointer, slot: int, callback: proc (slot: int, logicalIndex: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QHeaderView_connect_sectionClicked".}
proc fcQHeaderView_sectionEntered(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_sectionEntered".}
proc fcQHeaderView_connect_sectionEntered(self: pointer, slot: int, callback: proc (slot: int, logicalIndex: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QHeaderView_connect_sectionEntered".}
proc fcQHeaderView_sectionDoubleClicked(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_sectionDoubleClicked".}
proc fcQHeaderView_connect_sectionDoubleClicked(self: pointer, slot: int, callback: proc (slot: int, logicalIndex: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QHeaderView_connect_sectionDoubleClicked".}
proc fcQHeaderView_sectionCountChanged(self: pointer, oldCount: cint, newCount: cint): void {.importc: "QHeaderView_sectionCountChanged".}
proc fcQHeaderView_connect_sectionCountChanged(self: pointer, slot: int, callback: proc (slot: int, oldCount: cint, newCount: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QHeaderView_connect_sectionCountChanged".}
proc fcQHeaderView_sectionHandleDoubleClicked(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_sectionHandleDoubleClicked".}
proc fcQHeaderView_connect_sectionHandleDoubleClicked(self: pointer, slot: int, callback: proc (slot: int, logicalIndex: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QHeaderView_connect_sectionHandleDoubleClicked".}
proc fcQHeaderView_geometriesChanged(self: pointer, ): void {.importc: "QHeaderView_geometriesChanged".}
proc fcQHeaderView_connect_geometriesChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QHeaderView_connect_geometriesChanged".}
proc fcQHeaderView_sortIndicatorChanged(self: pointer, logicalIndex: cint, order: cint): void {.importc: "QHeaderView_sortIndicatorChanged".}
proc fcQHeaderView_connect_sortIndicatorChanged(self: pointer, slot: int, callback: proc (slot: int, logicalIndex: cint, order: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QHeaderView_connect_sortIndicatorChanged".}
proc fcQHeaderView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QHeaderView_tr2".}
proc fcQHeaderView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHeaderView_tr3".}
proc fcQHeaderView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QHeaderView_trUtf82".}
proc fcQHeaderView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHeaderView_trUtf83".}
type cQHeaderViewVTable = object
  destructor*: proc(vtbl: ptr cQHeaderViewVTable, self: ptr cQHeaderView) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setModel*: proc(vtbl, self: pointer, model: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, v: bool): void {.cdecl, raises: [], gcsafe.}
  doItemsLayout*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  reset*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  currentChanged*: proc(vtbl, self: pointer, current: pointer, old: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintSection*: proc(vtbl, self: pointer, painter: pointer, rect: pointer, logicalIndex: cint): void {.cdecl, raises: [], gcsafe.}
  sectionSizeFromContents*: proc(vtbl, self: pointer, logicalIndex: cint): pointer {.cdecl, raises: [], gcsafe.}
  horizontalOffset*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  verticalOffset*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  updateGeometries*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(vtbl, self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  dataChanged*: proc(vtbl, self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl, raises: [], gcsafe.}
  rowsInserted*: proc(vtbl, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  visualRect*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  scrollTo*: proc(vtbl, self: pointer, index: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  indexAt*: proc(vtbl, self: pointer, p: pointer): pointer {.cdecl, raises: [], gcsafe.}
  isIndexHidden*: proc(vtbl, self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveCursor*: proc(vtbl, self: pointer, param1: cint, param2: cint): pointer {.cdecl, raises: [], gcsafe.}
  setSelection*: proc(vtbl, self: pointer, rect: pointer, flags: cint): void {.cdecl, raises: [], gcsafe.}
  visualRegionForSelection*: proc(vtbl, self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setSelectionModel*: proc(vtbl, self: pointer, selectionModel: pointer): void {.cdecl, raises: [], gcsafe.}
  keyboardSearch*: proc(vtbl, self: pointer, search: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  sizeHintForRow*: proc(vtbl, self: pointer, row: cint): cint {.cdecl, raises: [], gcsafe.}
  sizeHintForColumn*: proc(vtbl, self: pointer, column: cint): cint {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  setRootIndex*: proc(vtbl, self: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  selectAll*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  rowsAboutToBeRemoved*: proc(vtbl, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  selectionChanged*: proc(vtbl, self: pointer, selected: pointer, deselected: pointer): void {.cdecl, raises: [], gcsafe.}
  updateEditorData*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  updateEditorGeometries*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarAction*: proc(vtbl, self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarAction*: proc(vtbl, self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarValueChanged*: proc(vtbl, self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarValueChanged*: proc(vtbl, self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  closeEditor*: proc(vtbl, self: pointer, editor: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  commitData*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  editorDestroyed*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  selectedIndexes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  edit2*: proc(vtbl, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionCommand*: proc(vtbl, self: pointer, index: pointer, event: pointer): cint {.cdecl, raises: [], gcsafe.}
  startDrag*: proc(vtbl, self: pointer, supportedActions: cint): void {.cdecl, raises: [], gcsafe.}
  viewOptions*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(vtbl, self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQHeaderView_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QHeaderView_virtualbase_metaObject".}
proc fcQHeaderView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QHeaderView_virtualbase_metacast".}
proc fcQHeaderView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHeaderView_virtualbase_metacall".}
proc fcQHeaderView_virtualbase_setModel(self: pointer, model: pointer): void {.importc: "QHeaderView_virtualbase_setModel".}
proc fcQHeaderView_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QHeaderView_virtualbase_sizeHint".}
proc fcQHeaderView_virtualbase_setVisible(self: pointer, v: bool): void {.importc: "QHeaderView_virtualbase_setVisible".}
proc fcQHeaderView_virtualbase_doItemsLayout(self: pointer, ): void {.importc: "QHeaderView_virtualbase_doItemsLayout".}
proc fcQHeaderView_virtualbase_reset(self: pointer, ): void {.importc: "QHeaderView_virtualbase_reset".}
proc fcQHeaderView_virtualbase_currentChanged(self: pointer, current: pointer, old: pointer): void {.importc: "QHeaderView_virtualbase_currentChanged".}
proc fcQHeaderView_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QHeaderView_virtualbase_event".}
proc fcQHeaderView_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QHeaderView_virtualbase_paintEvent".}
proc fcQHeaderView_virtualbase_mousePressEvent(self: pointer, e: pointer): void {.importc: "QHeaderView_virtualbase_mousePressEvent".}
proc fcQHeaderView_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void {.importc: "QHeaderView_virtualbase_mouseMoveEvent".}
proc fcQHeaderView_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void {.importc: "QHeaderView_virtualbase_mouseReleaseEvent".}
proc fcQHeaderView_virtualbase_mouseDoubleClickEvent(self: pointer, e: pointer): void {.importc: "QHeaderView_virtualbase_mouseDoubleClickEvent".}
proc fcQHeaderView_virtualbase_viewportEvent(self: pointer, e: pointer): bool {.importc: "QHeaderView_virtualbase_viewportEvent".}
proc fcQHeaderView_virtualbase_paintSection(self: pointer, painter: pointer, rect: pointer, logicalIndex: cint): void {.importc: "QHeaderView_virtualbase_paintSection".}
proc fcQHeaderView_virtualbase_sectionSizeFromContents(self: pointer, logicalIndex: cint): pointer {.importc: "QHeaderView_virtualbase_sectionSizeFromContents".}
proc fcQHeaderView_virtualbase_horizontalOffset(self: pointer, ): cint {.importc: "QHeaderView_virtualbase_horizontalOffset".}
proc fcQHeaderView_virtualbase_verticalOffset(self: pointer, ): cint {.importc: "QHeaderView_virtualbase_verticalOffset".}
proc fcQHeaderView_virtualbase_updateGeometries(self: pointer, ): void {.importc: "QHeaderView_virtualbase_updateGeometries".}
proc fcQHeaderView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QHeaderView_virtualbase_scrollContentsBy".}
proc fcQHeaderView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QHeaderView_virtualbase_dataChanged".}
proc fcQHeaderView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QHeaderView_virtualbase_rowsInserted".}
proc fcQHeaderView_virtualbase_visualRect(self: pointer, index: pointer): pointer {.importc: "QHeaderView_virtualbase_visualRect".}
proc fcQHeaderView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QHeaderView_virtualbase_scrollTo".}
proc fcQHeaderView_virtualbase_indexAt(self: pointer, p: pointer): pointer {.importc: "QHeaderView_virtualbase_indexAt".}
proc fcQHeaderView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool {.importc: "QHeaderView_virtualbase_isIndexHidden".}
proc fcQHeaderView_virtualbase_moveCursor(self: pointer, param1: cint, param2: cint): pointer {.importc: "QHeaderView_virtualbase_moveCursor".}
proc fcQHeaderView_virtualbase_setSelection(self: pointer, rect: pointer, flags: cint): void {.importc: "QHeaderView_virtualbase_setSelection".}
proc fcQHeaderView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer {.importc: "QHeaderView_virtualbase_visualRegionForSelection".}
proc fcQHeaderView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QHeaderView_virtualbase_setSelectionModel".}
proc fcQHeaderView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QHeaderView_virtualbase_keyboardSearch".}
proc fcQHeaderView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint {.importc: "QHeaderView_virtualbase_sizeHintForRow".}
proc fcQHeaderView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint {.importc: "QHeaderView_virtualbase_sizeHintForColumn".}
proc fcQHeaderView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QHeaderView_virtualbase_inputMethodQuery".}
proc fcQHeaderView_virtualbase_setRootIndex(self: pointer, index: pointer): void {.importc: "QHeaderView_virtualbase_setRootIndex".}
proc fcQHeaderView_virtualbase_selectAll(self: pointer, ): void {.importc: "QHeaderView_virtualbase_selectAll".}
proc fcQHeaderView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QHeaderView_virtualbase_rowsAboutToBeRemoved".}
proc fcQHeaderView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.importc: "QHeaderView_virtualbase_selectionChanged".}
proc fcQHeaderView_virtualbase_updateEditorData(self: pointer, ): void {.importc: "QHeaderView_virtualbase_updateEditorData".}
proc fcQHeaderView_virtualbase_updateEditorGeometries(self: pointer, ): void {.importc: "QHeaderView_virtualbase_updateEditorGeometries".}
proc fcQHeaderView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void {.importc: "QHeaderView_virtualbase_verticalScrollbarAction".}
proc fcQHeaderView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void {.importc: "QHeaderView_virtualbase_horizontalScrollbarAction".}
proc fcQHeaderView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QHeaderView_virtualbase_verticalScrollbarValueChanged".}
proc fcQHeaderView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QHeaderView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQHeaderView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void {.importc: "QHeaderView_virtualbase_closeEditor".}
proc fcQHeaderView_virtualbase_commitData(self: pointer, editor: pointer): void {.importc: "QHeaderView_virtualbase_commitData".}
proc fcQHeaderView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void {.importc: "QHeaderView_virtualbase_editorDestroyed".}
proc fcQHeaderView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array {.importc: "QHeaderView_virtualbase_selectedIndexes".}
proc fcQHeaderView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.importc: "QHeaderView_virtualbase_edit2".}
proc fcQHeaderView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.importc: "QHeaderView_virtualbase_selectionCommand".}
proc fcQHeaderView_virtualbase_startDrag(self: pointer, supportedActions: cint): void {.importc: "QHeaderView_virtualbase_startDrag".}
proc fcQHeaderView_virtualbase_viewOptions(self: pointer, ): pointer {.importc: "QHeaderView_virtualbase_viewOptions".}
proc fcQHeaderView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QHeaderView_virtualbase_focusNextPrevChild".}
proc fcQHeaderView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_dragEnterEvent".}
proc fcQHeaderView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_dragMoveEvent".}
proc fcQHeaderView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_dragLeaveEvent".}
proc fcQHeaderView_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_dropEvent".}
proc fcQHeaderView_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_focusInEvent".}
proc fcQHeaderView_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_focusOutEvent".}
proc fcQHeaderView_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_keyPressEvent".}
proc fcQHeaderView_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_resizeEvent".}
proc fcQHeaderView_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_timerEvent".}
proc fcQHeaderView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_inputMethodEvent".}
proc fcQHeaderView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QHeaderView_virtualbase_eventFilter".}
proc fcQHeaderView_virtualbase_viewportSizeHint(self: pointer, ): pointer {.importc: "QHeaderView_virtualbase_viewportSizeHint".}
proc fcQHeaderView_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QHeaderView_virtualbase_minimumSizeHint".}
proc fcQHeaderView_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QHeaderView_virtualbase_setupViewport".}
proc fcQHeaderView_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QHeaderView_virtualbase_wheelEvent".}
proc fcQHeaderView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QHeaderView_virtualbase_contextMenuEvent".}
proc fcQHeaderView_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QHeaderView_virtualbase_changeEvent".}
proc fcQHeaderView_virtualbase_devType(self: pointer, ): cint {.importc: "QHeaderView_virtualbase_devType".}
proc fcQHeaderView_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QHeaderView_virtualbase_heightForWidth".}
proc fcQHeaderView_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QHeaderView_virtualbase_hasHeightForWidth".}
proc fcQHeaderView_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QHeaderView_virtualbase_paintEngine".}
proc fcQHeaderView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_keyReleaseEvent".}
proc fcQHeaderView_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_enterEvent".}
proc fcQHeaderView_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_leaveEvent".}
proc fcQHeaderView_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_moveEvent".}
proc fcQHeaderView_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_closeEvent".}
proc fcQHeaderView_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_tabletEvent".}
proc fcQHeaderView_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_actionEvent".}
proc fcQHeaderView_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_showEvent".}
proc fcQHeaderView_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_hideEvent".}
proc fcQHeaderView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QHeaderView_virtualbase_nativeEvent".}
proc fcQHeaderView_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QHeaderView_virtualbase_metric".}
proc fcQHeaderView_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QHeaderView_virtualbase_initPainter".}
proc fcQHeaderView_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QHeaderView_virtualbase_redirected".}
proc fcQHeaderView_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QHeaderView_virtualbase_sharedPainter".}
proc fcQHeaderView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_childEvent".}
proc fcQHeaderView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QHeaderView_virtualbase_customEvent".}
proc fcQHeaderView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QHeaderView_virtualbase_connectNotify".}
proc fcQHeaderView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QHeaderView_virtualbase_disconnectNotify".}
proc fcQHeaderView_protectedbase_updateSection(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_protectedbase_updateSection".}
proc fcQHeaderView_protectedbase_resizeSections2(self: pointer, ): void {.importc: "QHeaderView_protectedbase_resizeSections2".}
proc fcQHeaderView_protectedbase_sectionsInserted(self: pointer, parent: pointer, logicalFirst: cint, logicalLast: cint): void {.importc: "QHeaderView_protectedbase_sectionsInserted".}
proc fcQHeaderView_protectedbase_sectionsAboutToBeRemoved(self: pointer, parent: pointer, logicalFirst: cint, logicalLast: cint): void {.importc: "QHeaderView_protectedbase_sectionsAboutToBeRemoved".}
proc fcQHeaderView_protectedbase_initialize(self: pointer, ): void {.importc: "QHeaderView_protectedbase_initialize".}
proc fcQHeaderView_protectedbase_initializeSections(self: pointer, ): void {.importc: "QHeaderView_protectedbase_initializeSections".}
proc fcQHeaderView_protectedbase_initializeSections2(self: pointer, start: cint, endVal: cint): void {.importc: "QHeaderView_protectedbase_initializeSections2".}
proc fcQHeaderView_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QHeaderView_protectedbase_initStyleOption".}
proc fcQHeaderView_protectedbase_setHorizontalStepsPerItem(self: pointer, steps: cint): void {.importc: "QHeaderView_protectedbase_setHorizontalStepsPerItem".}
proc fcQHeaderView_protectedbase_horizontalStepsPerItem(self: pointer, ): cint {.importc: "QHeaderView_protectedbase_horizontalStepsPerItem".}
proc fcQHeaderView_protectedbase_setVerticalStepsPerItem(self: pointer, steps: cint): void {.importc: "QHeaderView_protectedbase_setVerticalStepsPerItem".}
proc fcQHeaderView_protectedbase_verticalStepsPerItem(self: pointer, ): cint {.importc: "QHeaderView_protectedbase_verticalStepsPerItem".}
proc fcQHeaderView_protectedbase_state(self: pointer, ): cint {.importc: "QHeaderView_protectedbase_state".}
proc fcQHeaderView_protectedbase_setState(self: pointer, state: cint): void {.importc: "QHeaderView_protectedbase_setState".}
proc fcQHeaderView_protectedbase_scheduleDelayedItemsLayout(self: pointer, ): void {.importc: "QHeaderView_protectedbase_scheduleDelayedItemsLayout".}
proc fcQHeaderView_protectedbase_executeDelayedItemsLayout(self: pointer, ): void {.importc: "QHeaderView_protectedbase_executeDelayedItemsLayout".}
proc fcQHeaderView_protectedbase_setDirtyRegion(self: pointer, region: pointer): void {.importc: "QHeaderView_protectedbase_setDirtyRegion".}
proc fcQHeaderView_protectedbase_scrollDirtyRegion(self: pointer, dx: cint, dy: cint): void {.importc: "QHeaderView_protectedbase_scrollDirtyRegion".}
proc fcQHeaderView_protectedbase_dirtyRegionOffset(self: pointer, ): pointer {.importc: "QHeaderView_protectedbase_dirtyRegionOffset".}
proc fcQHeaderView_protectedbase_startAutoScroll(self: pointer, ): void {.importc: "QHeaderView_protectedbase_startAutoScroll".}
proc fcQHeaderView_protectedbase_stopAutoScroll(self: pointer, ): void {.importc: "QHeaderView_protectedbase_stopAutoScroll".}
proc fcQHeaderView_protectedbase_doAutoScroll(self: pointer, ): void {.importc: "QHeaderView_protectedbase_doAutoScroll".}
proc fcQHeaderView_protectedbase_dropIndicatorPosition(self: pointer, ): cint {.importc: "QHeaderView_protectedbase_dropIndicatorPosition".}
proc fcQHeaderView_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QHeaderView_protectedbase_setViewportMargins".}
proc fcQHeaderView_protectedbase_viewportMargins(self: pointer, ): pointer {.importc: "QHeaderView_protectedbase_viewportMargins".}
proc fcQHeaderView_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QHeaderView_protectedbase_drawFrame".}
proc fcQHeaderView_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QHeaderView_protectedbase_updateMicroFocus".}
proc fcQHeaderView_protectedbase_create(self: pointer, ): void {.importc: "QHeaderView_protectedbase_create".}
proc fcQHeaderView_protectedbase_destroy(self: pointer, ): void {.importc: "QHeaderView_protectedbase_destroy".}
proc fcQHeaderView_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QHeaderView_protectedbase_focusNextChild".}
proc fcQHeaderView_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QHeaderView_protectedbase_focusPreviousChild".}
proc fcQHeaderView_protectedbase_sender(self: pointer, ): pointer {.importc: "QHeaderView_protectedbase_sender".}
proc fcQHeaderView_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QHeaderView_protectedbase_senderSignalIndex".}
proc fcQHeaderView_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QHeaderView_protectedbase_receivers".}
proc fcQHeaderView_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QHeaderView_protectedbase_isSignalConnected".}
proc fcQHeaderView_new(vtbl: pointer, orientation: cint): ptr cQHeaderView {.importc: "QHeaderView_new".}
proc fcQHeaderView_new2(vtbl: pointer, orientation: cint, parent: pointer): ptr cQHeaderView {.importc: "QHeaderView_new2".}
proc fcQHeaderView_staticMetaObject(): pointer {.importc: "QHeaderView_staticMetaObject".}
proc fcQHeaderView_delete(self: pointer) {.importc: "QHeaderView_delete".}

proc metaObject*(self: gen_qheaderview_types.QHeaderView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHeaderView_metaObject(self.h))

proc metacast*(self: gen_qheaderview_types.QHeaderView, param1: cstring): pointer =
  fcQHeaderView_metacast(self.h, param1)

proc metacall*(self: gen_qheaderview_types.QHeaderView, param1: cint, param2: cint, param3: pointer): cint =
  fcQHeaderView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qheaderview_types.QHeaderView, s: cstring): string =
  let v_ms = fcQHeaderView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qheaderview_types.QHeaderView, s: cstring): string =
  let v_ms = fcQHeaderView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setModel*(self: gen_qheaderview_types.QHeaderView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQHeaderView_setModel(self.h, model.h)

proc orientation*(self: gen_qheaderview_types.QHeaderView, ): cint =
  cint(fcQHeaderView_orientation(self.h))

proc offset*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fcQHeaderView_offset(self.h)

proc length*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fcQHeaderView_length(self.h)

proc sizeHint*(self: gen_qheaderview_types.QHeaderView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQHeaderView_sizeHint(self.h))

proc setVisible*(self: gen_qheaderview_types.QHeaderView, v: bool): void =
  fcQHeaderView_setVisible(self.h, v)

proc sectionSizeHint*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): cint =
  fcQHeaderView_sectionSizeHint(self.h, logicalIndex)

proc visualIndexAt*(self: gen_qheaderview_types.QHeaderView, position: cint): cint =
  fcQHeaderView_visualIndexAt(self.h, position)

proc logicalIndexAt*(self: gen_qheaderview_types.QHeaderView, position: cint): cint =
  fcQHeaderView_logicalIndexAt(self.h, position)

proc logicalIndexAt*(self: gen_qheaderview_types.QHeaderView, x: cint, y: cint): cint =
  fcQHeaderView_logicalIndexAt2(self.h, x, y)

proc logicalIndexAt*(self: gen_qheaderview_types.QHeaderView, pos: gen_qpoint_types.QPoint): cint =
  fcQHeaderView_logicalIndexAtWithPos(self.h, pos.h)

proc sectionSize*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): cint =
  fcQHeaderView_sectionSize(self.h, logicalIndex)

proc sectionPosition*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): cint =
  fcQHeaderView_sectionPosition(self.h, logicalIndex)

proc sectionViewportPosition*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): cint =
  fcQHeaderView_sectionViewportPosition(self.h, logicalIndex)

proc moveSection*(self: gen_qheaderview_types.QHeaderView, fromVal: cint, to: cint): void =
  fcQHeaderView_moveSection(self.h, fromVal, to)

proc swapSections*(self: gen_qheaderview_types.QHeaderView, first: cint, second: cint): void =
  fcQHeaderView_swapSections(self.h, first, second)

proc resizeSection*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint, size: cint): void =
  fcQHeaderView_resizeSection(self.h, logicalIndex, size)

proc resizeSections*(self: gen_qheaderview_types.QHeaderView, mode: cint): void =
  fcQHeaderView_resizeSections(self.h, cint(mode))

proc isSectionHidden*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): bool =
  fcQHeaderView_isSectionHidden(self.h, logicalIndex)

proc setSectionHidden*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint, hide: bool): void =
  fcQHeaderView_setSectionHidden(self.h, logicalIndex, hide)

proc hiddenSectionCount*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fcQHeaderView_hiddenSectionCount(self.h)

proc hideSection*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): void =
  fcQHeaderView_hideSection(self.h, logicalIndex)

proc showSection*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): void =
  fcQHeaderView_showSection(self.h, logicalIndex)

proc count*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fcQHeaderView_count(self.h)

proc visualIndex*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): cint =
  fcQHeaderView_visualIndex(self.h, logicalIndex)

proc logicalIndex*(self: gen_qheaderview_types.QHeaderView, visualIndex: cint): cint =
  fcQHeaderView_logicalIndex(self.h, visualIndex)

proc setSectionsMovable*(self: gen_qheaderview_types.QHeaderView, movable: bool): void =
  fcQHeaderView_setSectionsMovable(self.h, movable)

proc sectionsMovable*(self: gen_qheaderview_types.QHeaderView, ): bool =
  fcQHeaderView_sectionsMovable(self.h)

proc setFirstSectionMovable*(self: gen_qheaderview_types.QHeaderView, movable: bool): void =
  fcQHeaderView_setFirstSectionMovable(self.h, movable)

proc isFirstSectionMovable*(self: gen_qheaderview_types.QHeaderView, ): bool =
  fcQHeaderView_isFirstSectionMovable(self.h)

proc setSectionsClickable*(self: gen_qheaderview_types.QHeaderView, clickable: bool): void =
  fcQHeaderView_setSectionsClickable(self.h, clickable)

proc sectionsClickable*(self: gen_qheaderview_types.QHeaderView, ): bool =
  fcQHeaderView_sectionsClickable(self.h)

proc setHighlightSections*(self: gen_qheaderview_types.QHeaderView, highlight: bool): void =
  fcQHeaderView_setHighlightSections(self.h, highlight)

proc highlightSections*(self: gen_qheaderview_types.QHeaderView, ): bool =
  fcQHeaderView_highlightSections(self.h)

proc sectionResizeMode*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): cint =
  cint(fcQHeaderView_sectionResizeMode(self.h, logicalIndex))

proc setSectionResizeMode*(self: gen_qheaderview_types.QHeaderView, mode: cint): void =
  fcQHeaderView_setSectionResizeMode(self.h, cint(mode))

proc setSectionResizeMode*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint, mode: cint): void =
  fcQHeaderView_setSectionResizeMode2(self.h, logicalIndex, cint(mode))

proc setResizeContentsPrecision*(self: gen_qheaderview_types.QHeaderView, precision: cint): void =
  fcQHeaderView_setResizeContentsPrecision(self.h, precision)

proc resizeContentsPrecision*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fcQHeaderView_resizeContentsPrecision(self.h)

proc stretchSectionCount*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fcQHeaderView_stretchSectionCount(self.h)

proc setSortIndicatorShown*(self: gen_qheaderview_types.QHeaderView, show: bool): void =
  fcQHeaderView_setSortIndicatorShown(self.h, show)

proc isSortIndicatorShown*(self: gen_qheaderview_types.QHeaderView, ): bool =
  fcQHeaderView_isSortIndicatorShown(self.h)

proc setSortIndicator*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint, order: cint): void =
  fcQHeaderView_setSortIndicator(self.h, logicalIndex, cint(order))

proc sortIndicatorSection*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fcQHeaderView_sortIndicatorSection(self.h)

proc sortIndicatorOrder*(self: gen_qheaderview_types.QHeaderView, ): cint =
  cint(fcQHeaderView_sortIndicatorOrder(self.h))

proc stretchLastSection*(self: gen_qheaderview_types.QHeaderView, ): bool =
  fcQHeaderView_stretchLastSection(self.h)

proc setStretchLastSection*(self: gen_qheaderview_types.QHeaderView, stretch: bool): void =
  fcQHeaderView_setStretchLastSection(self.h, stretch)

proc cascadingSectionResizes*(self: gen_qheaderview_types.QHeaderView, ): bool =
  fcQHeaderView_cascadingSectionResizes(self.h)

proc setCascadingSectionResizes*(self: gen_qheaderview_types.QHeaderView, enable: bool): void =
  fcQHeaderView_setCascadingSectionResizes(self.h, enable)

proc defaultSectionSize*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fcQHeaderView_defaultSectionSize(self.h)

proc setDefaultSectionSize*(self: gen_qheaderview_types.QHeaderView, size: cint): void =
  fcQHeaderView_setDefaultSectionSize(self.h, size)

proc resetDefaultSectionSize*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_resetDefaultSectionSize(self.h)

proc minimumSectionSize*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fcQHeaderView_minimumSectionSize(self.h)

proc setMinimumSectionSize*(self: gen_qheaderview_types.QHeaderView, size: cint): void =
  fcQHeaderView_setMinimumSectionSize(self.h, size)

proc maximumSectionSize*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fcQHeaderView_maximumSectionSize(self.h)

proc setMaximumSectionSize*(self: gen_qheaderview_types.QHeaderView, size: cint): void =
  fcQHeaderView_setMaximumSectionSize(self.h, size)

proc defaultAlignment*(self: gen_qheaderview_types.QHeaderView, ): cint =
  cint(fcQHeaderView_defaultAlignment(self.h))

proc setDefaultAlignment*(self: gen_qheaderview_types.QHeaderView, alignment: cint): void =
  fcQHeaderView_setDefaultAlignment(self.h, cint(alignment))

proc doItemsLayout*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_doItemsLayout(self.h)

proc sectionsMoved*(self: gen_qheaderview_types.QHeaderView, ): bool =
  fcQHeaderView_sectionsMoved(self.h)

proc sectionsHidden*(self: gen_qheaderview_types.QHeaderView, ): bool =
  fcQHeaderView_sectionsHidden(self.h)

proc saveState*(self: gen_qheaderview_types.QHeaderView, ): seq[byte] =
  var v_bytearray = fcQHeaderView_saveState(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc restoreState*(self: gen_qheaderview_types.QHeaderView, state: seq[byte]): bool =
  fcQHeaderView_restoreState(self.h, struct_miqt_string(data: cast[cstring](if len(state) == 0: nil else: unsafeAddr state[0]), len: csize_t(len(state))))

proc reset*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_reset(self.h)

proc setOffset*(self: gen_qheaderview_types.QHeaderView, offset: cint): void =
  fcQHeaderView_setOffset(self.h, offset)

proc setOffsetToSectionPosition*(self: gen_qheaderview_types.QHeaderView, visualIndex: cint): void =
  fcQHeaderView_setOffsetToSectionPosition(self.h, visualIndex)

proc setOffsetToLastSection*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_setOffsetToLastSection(self.h)

proc headerDataChanged*(self: gen_qheaderview_types.QHeaderView, orientation: cint, logicalFirst: cint, logicalLast: cint): void =
  fcQHeaderView_headerDataChanged(self.h, cint(orientation), logicalFirst, logicalLast)

proc sectionMoved*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint, oldVisualIndex: cint, newVisualIndex: cint): void =
  fcQHeaderView_sectionMoved(self.h, logicalIndex, oldVisualIndex, newVisualIndex)

type QHeaderViewsectionMovedSlot* = proc(logicalIndex: cint, oldVisualIndex: cint, newVisualIndex: cint)
proc miqt_exec_callback_cQHeaderView_sectionMoved(slot: int, logicalIndex: cint, oldVisualIndex: cint, newVisualIndex: cint) {.cdecl.} =
  let nimfunc = cast[ptr QHeaderViewsectionMovedSlot](cast[pointer](slot))
  let slotval1 = logicalIndex

  let slotval2 = oldVisualIndex

  let slotval3 = newVisualIndex

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQHeaderView_sectionMoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QHeaderViewsectionMovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsectionMoved*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsectionMovedSlot) =
  var tmp = new QHeaderViewsectionMovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sectionMoved(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQHeaderView_sectionMoved, miqt_exec_callback_cQHeaderView_sectionMoved_release)

proc sectionResized*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint, oldSize: cint, newSize: cint): void =
  fcQHeaderView_sectionResized(self.h, logicalIndex, oldSize, newSize)

type QHeaderViewsectionResizedSlot* = proc(logicalIndex: cint, oldSize: cint, newSize: cint)
proc miqt_exec_callback_cQHeaderView_sectionResized(slot: int, logicalIndex: cint, oldSize: cint, newSize: cint) {.cdecl.} =
  let nimfunc = cast[ptr QHeaderViewsectionResizedSlot](cast[pointer](slot))
  let slotval1 = logicalIndex

  let slotval2 = oldSize

  let slotval3 = newSize

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQHeaderView_sectionResized_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QHeaderViewsectionResizedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsectionResized*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsectionResizedSlot) =
  var tmp = new QHeaderViewsectionResizedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sectionResized(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQHeaderView_sectionResized, miqt_exec_callback_cQHeaderView_sectionResized_release)

proc sectionPressed*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): void =
  fcQHeaderView_sectionPressed(self.h, logicalIndex)

type QHeaderViewsectionPressedSlot* = proc(logicalIndex: cint)
proc miqt_exec_callback_cQHeaderView_sectionPressed(slot: int, logicalIndex: cint) {.cdecl.} =
  let nimfunc = cast[ptr QHeaderViewsectionPressedSlot](cast[pointer](slot))
  let slotval1 = logicalIndex

  nimfunc[](slotval1)

proc miqt_exec_callback_cQHeaderView_sectionPressed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QHeaderViewsectionPressedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsectionPressed*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsectionPressedSlot) =
  var tmp = new QHeaderViewsectionPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sectionPressed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQHeaderView_sectionPressed, miqt_exec_callback_cQHeaderView_sectionPressed_release)

proc sectionClicked*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): void =
  fcQHeaderView_sectionClicked(self.h, logicalIndex)

type QHeaderViewsectionClickedSlot* = proc(logicalIndex: cint)
proc miqt_exec_callback_cQHeaderView_sectionClicked(slot: int, logicalIndex: cint) {.cdecl.} =
  let nimfunc = cast[ptr QHeaderViewsectionClickedSlot](cast[pointer](slot))
  let slotval1 = logicalIndex

  nimfunc[](slotval1)

proc miqt_exec_callback_cQHeaderView_sectionClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QHeaderViewsectionClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsectionClicked*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsectionClickedSlot) =
  var tmp = new QHeaderViewsectionClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sectionClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQHeaderView_sectionClicked, miqt_exec_callback_cQHeaderView_sectionClicked_release)

proc sectionEntered*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): void =
  fcQHeaderView_sectionEntered(self.h, logicalIndex)

type QHeaderViewsectionEnteredSlot* = proc(logicalIndex: cint)
proc miqt_exec_callback_cQHeaderView_sectionEntered(slot: int, logicalIndex: cint) {.cdecl.} =
  let nimfunc = cast[ptr QHeaderViewsectionEnteredSlot](cast[pointer](slot))
  let slotval1 = logicalIndex

  nimfunc[](slotval1)

proc miqt_exec_callback_cQHeaderView_sectionEntered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QHeaderViewsectionEnteredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsectionEntered*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsectionEnteredSlot) =
  var tmp = new QHeaderViewsectionEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sectionEntered(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQHeaderView_sectionEntered, miqt_exec_callback_cQHeaderView_sectionEntered_release)

proc sectionDoubleClicked*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): void =
  fcQHeaderView_sectionDoubleClicked(self.h, logicalIndex)

type QHeaderViewsectionDoubleClickedSlot* = proc(logicalIndex: cint)
proc miqt_exec_callback_cQHeaderView_sectionDoubleClicked(slot: int, logicalIndex: cint) {.cdecl.} =
  let nimfunc = cast[ptr QHeaderViewsectionDoubleClickedSlot](cast[pointer](slot))
  let slotval1 = logicalIndex

  nimfunc[](slotval1)

proc miqt_exec_callback_cQHeaderView_sectionDoubleClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QHeaderViewsectionDoubleClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsectionDoubleClicked*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsectionDoubleClickedSlot) =
  var tmp = new QHeaderViewsectionDoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sectionDoubleClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQHeaderView_sectionDoubleClicked, miqt_exec_callback_cQHeaderView_sectionDoubleClicked_release)

proc sectionCountChanged*(self: gen_qheaderview_types.QHeaderView, oldCount: cint, newCount: cint): void =
  fcQHeaderView_sectionCountChanged(self.h, oldCount, newCount)

type QHeaderViewsectionCountChangedSlot* = proc(oldCount: cint, newCount: cint)
proc miqt_exec_callback_cQHeaderView_sectionCountChanged(slot: int, oldCount: cint, newCount: cint) {.cdecl.} =
  let nimfunc = cast[ptr QHeaderViewsectionCountChangedSlot](cast[pointer](slot))
  let slotval1 = oldCount

  let slotval2 = newCount

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQHeaderView_sectionCountChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QHeaderViewsectionCountChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsectionCountChanged*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsectionCountChangedSlot) =
  var tmp = new QHeaderViewsectionCountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sectionCountChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQHeaderView_sectionCountChanged, miqt_exec_callback_cQHeaderView_sectionCountChanged_release)

proc sectionHandleDoubleClicked*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): void =
  fcQHeaderView_sectionHandleDoubleClicked(self.h, logicalIndex)

type QHeaderViewsectionHandleDoubleClickedSlot* = proc(logicalIndex: cint)
proc miqt_exec_callback_cQHeaderView_sectionHandleDoubleClicked(slot: int, logicalIndex: cint) {.cdecl.} =
  let nimfunc = cast[ptr QHeaderViewsectionHandleDoubleClickedSlot](cast[pointer](slot))
  let slotval1 = logicalIndex

  nimfunc[](slotval1)

proc miqt_exec_callback_cQHeaderView_sectionHandleDoubleClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QHeaderViewsectionHandleDoubleClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsectionHandleDoubleClicked*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsectionHandleDoubleClickedSlot) =
  var tmp = new QHeaderViewsectionHandleDoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sectionHandleDoubleClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQHeaderView_sectionHandleDoubleClicked, miqt_exec_callback_cQHeaderView_sectionHandleDoubleClicked_release)

proc geometriesChanged*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_geometriesChanged(self.h)

type QHeaderViewgeometriesChangedSlot* = proc()
proc miqt_exec_callback_cQHeaderView_geometriesChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QHeaderViewgeometriesChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQHeaderView_geometriesChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QHeaderViewgeometriesChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ongeometriesChanged*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewgeometriesChangedSlot) =
  var tmp = new QHeaderViewgeometriesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_geometriesChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQHeaderView_geometriesChanged, miqt_exec_callback_cQHeaderView_geometriesChanged_release)

proc sortIndicatorChanged*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint, order: cint): void =
  fcQHeaderView_sortIndicatorChanged(self.h, logicalIndex, cint(order))

type QHeaderViewsortIndicatorChangedSlot* = proc(logicalIndex: cint, order: cint)
proc miqt_exec_callback_cQHeaderView_sortIndicatorChanged(slot: int, logicalIndex: cint, order: cint) {.cdecl.} =
  let nimfunc = cast[ptr QHeaderViewsortIndicatorChangedSlot](cast[pointer](slot))
  let slotval1 = logicalIndex

  let slotval2 = cint(order)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQHeaderView_sortIndicatorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QHeaderViewsortIndicatorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsortIndicatorChanged*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsortIndicatorChangedSlot) =
  var tmp = new QHeaderViewsortIndicatorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sortIndicatorChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQHeaderView_sortIndicatorChanged, miqt_exec_callback_cQHeaderView_sortIndicatorChanged_release)

proc tr*(_: type gen_qheaderview_types.QHeaderView, s: cstring, c: cstring): string =
  let v_ms = fcQHeaderView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qheaderview_types.QHeaderView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQHeaderView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qheaderview_types.QHeaderView, s: cstring, c: cstring): string =
  let v_ms = fcQHeaderView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qheaderview_types.QHeaderView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQHeaderView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QHeaderViewmetaObjectProc* = proc(self: QHeaderView): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QHeaderViewmetacastProc* = proc(self: QHeaderView, param1: cstring): pointer {.raises: [], gcsafe.}
type QHeaderViewmetacallProc* = proc(self: QHeaderView, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QHeaderViewsetModelProc* = proc(self: QHeaderView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void {.raises: [], gcsafe.}
type QHeaderViewsizeHintProc* = proc(self: QHeaderView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QHeaderViewsetVisibleProc* = proc(self: QHeaderView, v: bool): void {.raises: [], gcsafe.}
type QHeaderViewdoItemsLayoutProc* = proc(self: QHeaderView): void {.raises: [], gcsafe.}
type QHeaderViewresetProc* = proc(self: QHeaderView): void {.raises: [], gcsafe.}
type QHeaderViewcurrentChangedProc* = proc(self: QHeaderView, current: gen_qabstractitemmodel_types.QModelIndex, old: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QHeaderVieweventProc* = proc(self: QHeaderView, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QHeaderViewpaintEventProc* = proc(self: QHeaderView, e: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QHeaderViewmousePressEventProc* = proc(self: QHeaderView, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QHeaderViewmouseMoveEventProc* = proc(self: QHeaderView, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QHeaderViewmouseReleaseEventProc* = proc(self: QHeaderView, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QHeaderViewmouseDoubleClickEventProc* = proc(self: QHeaderView, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QHeaderViewviewportEventProc* = proc(self: QHeaderView, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QHeaderViewpaintSectionProc* = proc(self: QHeaderView, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, logicalIndex: cint): void {.raises: [], gcsafe.}
type QHeaderViewsectionSizeFromContentsProc* = proc(self: QHeaderView, logicalIndex: cint): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QHeaderViewhorizontalOffsetProc* = proc(self: QHeaderView): cint {.raises: [], gcsafe.}
type QHeaderViewverticalOffsetProc* = proc(self: QHeaderView): cint {.raises: [], gcsafe.}
type QHeaderViewupdateGeometriesProc* = proc(self: QHeaderView): void {.raises: [], gcsafe.}
type QHeaderViewscrollContentsByProc* = proc(self: QHeaderView, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QHeaderViewdataChangedProc* = proc(self: QHeaderView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void {.raises: [], gcsafe.}
type QHeaderViewrowsInsertedProc* = proc(self: QHeaderView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QHeaderViewvisualRectProc* = proc(self: QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QHeaderViewscrollToProc* = proc(self: QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.raises: [], gcsafe.}
type QHeaderViewindexAtProc* = proc(self: QHeaderView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QHeaderViewisIndexHiddenProc* = proc(self: QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QHeaderViewmoveCursorProc* = proc(self: QHeaderView, param1: cint, param2: cint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QHeaderViewsetSelectionProc* = proc(self: QHeaderView, rect: gen_qrect_types.QRect, flags: cint): void {.raises: [], gcsafe.}
type QHeaderViewvisualRegionForSelectionProc* = proc(self: QHeaderView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.raises: [], gcsafe.}
type QHeaderViewsetSelectionModelProc* = proc(self: QHeaderView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.raises: [], gcsafe.}
type QHeaderViewkeyboardSearchProc* = proc(self: QHeaderView, search: string): void {.raises: [], gcsafe.}
type QHeaderViewsizeHintForRowProc* = proc(self: QHeaderView, row: cint): cint {.raises: [], gcsafe.}
type QHeaderViewsizeHintForColumnProc* = proc(self: QHeaderView, column: cint): cint {.raises: [], gcsafe.}
type QHeaderViewinputMethodQueryProc* = proc(self: QHeaderView, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QHeaderViewsetRootIndexProc* = proc(self: QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QHeaderViewselectAllProc* = proc(self: QHeaderView): void {.raises: [], gcsafe.}
type QHeaderViewrowsAboutToBeRemovedProc* = proc(self: QHeaderView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QHeaderViewselectionChangedProc* = proc(self: QHeaderView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.raises: [], gcsafe.}
type QHeaderViewupdateEditorDataProc* = proc(self: QHeaderView): void {.raises: [], gcsafe.}
type QHeaderViewupdateEditorGeometriesProc* = proc(self: QHeaderView): void {.raises: [], gcsafe.}
type QHeaderViewverticalScrollbarActionProc* = proc(self: QHeaderView, action: cint): void {.raises: [], gcsafe.}
type QHeaderViewhorizontalScrollbarActionProc* = proc(self: QHeaderView, action: cint): void {.raises: [], gcsafe.}
type QHeaderViewverticalScrollbarValueChangedProc* = proc(self: QHeaderView, value: cint): void {.raises: [], gcsafe.}
type QHeaderViewhorizontalScrollbarValueChangedProc* = proc(self: QHeaderView, value: cint): void {.raises: [], gcsafe.}
type QHeaderViewcloseEditorProc* = proc(self: QHeaderView, editor: gen_qwidget_types.QWidget, hint: cint): void {.raises: [], gcsafe.}
type QHeaderViewcommitDataProc* = proc(self: QHeaderView, editor: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QHeaderVieweditorDestroyedProc* = proc(self: QHeaderView, editor: gen_qobject_types.QObject): void {.raises: [], gcsafe.}
type QHeaderViewselectedIndexesProc* = proc(self: QHeaderView): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QHeaderViewedit2Proc* = proc(self: QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QHeaderViewselectionCommandProc* = proc(self: QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.raises: [], gcsafe.}
type QHeaderViewstartDragProc* = proc(self: QHeaderView, supportedActions: cint): void {.raises: [], gcsafe.}
type QHeaderViewviewOptionsProc* = proc(self: QHeaderView): gen_qstyleoption_types.QStyleOptionViewItem {.raises: [], gcsafe.}
type QHeaderViewfocusNextPrevChildProc* = proc(self: QHeaderView, next: bool): bool {.raises: [], gcsafe.}
type QHeaderViewdragEnterEventProc* = proc(self: QHeaderView, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QHeaderViewdragMoveEventProc* = proc(self: QHeaderView, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QHeaderViewdragLeaveEventProc* = proc(self: QHeaderView, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QHeaderViewdropEventProc* = proc(self: QHeaderView, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QHeaderViewfocusInEventProc* = proc(self: QHeaderView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QHeaderViewfocusOutEventProc* = proc(self: QHeaderView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QHeaderViewkeyPressEventProc* = proc(self: QHeaderView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QHeaderViewresizeEventProc* = proc(self: QHeaderView, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QHeaderViewtimerEventProc* = proc(self: QHeaderView, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QHeaderViewinputMethodEventProc* = proc(self: QHeaderView, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QHeaderVieweventFilterProc* = proc(self: QHeaderView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QHeaderViewviewportSizeHintProc* = proc(self: QHeaderView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QHeaderViewminimumSizeHintProc* = proc(self: QHeaderView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QHeaderViewsetupViewportProc* = proc(self: QHeaderView, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QHeaderViewwheelEventProc* = proc(self: QHeaderView, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QHeaderViewcontextMenuEventProc* = proc(self: QHeaderView, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QHeaderViewchangeEventProc* = proc(self: QHeaderView, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QHeaderViewdevTypeProc* = proc(self: QHeaderView): cint {.raises: [], gcsafe.}
type QHeaderViewheightForWidthProc* = proc(self: QHeaderView, param1: cint): cint {.raises: [], gcsafe.}
type QHeaderViewhasHeightForWidthProc* = proc(self: QHeaderView): bool {.raises: [], gcsafe.}
type QHeaderViewpaintEngineProc* = proc(self: QHeaderView): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QHeaderViewkeyReleaseEventProc* = proc(self: QHeaderView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QHeaderViewenterEventProc* = proc(self: QHeaderView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QHeaderViewleaveEventProc* = proc(self: QHeaderView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QHeaderViewmoveEventProc* = proc(self: QHeaderView, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QHeaderViewcloseEventProc* = proc(self: QHeaderView, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QHeaderViewtabletEventProc* = proc(self: QHeaderView, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QHeaderViewactionEventProc* = proc(self: QHeaderView, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QHeaderViewshowEventProc* = proc(self: QHeaderView, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QHeaderViewhideEventProc* = proc(self: QHeaderView, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QHeaderViewnativeEventProc* = proc(self: QHeaderView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QHeaderViewmetricProc* = proc(self: QHeaderView, param1: cint): cint {.raises: [], gcsafe.}
type QHeaderViewinitPainterProc* = proc(self: QHeaderView, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QHeaderViewredirectedProc* = proc(self: QHeaderView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QHeaderViewsharedPainterProc* = proc(self: QHeaderView): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QHeaderViewchildEventProc* = proc(self: QHeaderView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QHeaderViewcustomEventProc* = proc(self: QHeaderView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QHeaderViewconnectNotifyProc* = proc(self: QHeaderView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QHeaderViewdisconnectNotifyProc* = proc(self: QHeaderView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QHeaderViewVTable* = object
  vtbl: cQHeaderViewVTable
  metaObject*: QHeaderViewmetaObjectProc
  metacast*: QHeaderViewmetacastProc
  metacall*: QHeaderViewmetacallProc
  setModel*: QHeaderViewsetModelProc
  sizeHint*: QHeaderViewsizeHintProc
  setVisible*: QHeaderViewsetVisibleProc
  doItemsLayout*: QHeaderViewdoItemsLayoutProc
  reset*: QHeaderViewresetProc
  currentChanged*: QHeaderViewcurrentChangedProc
  event*: QHeaderVieweventProc
  paintEvent*: QHeaderViewpaintEventProc
  mousePressEvent*: QHeaderViewmousePressEventProc
  mouseMoveEvent*: QHeaderViewmouseMoveEventProc
  mouseReleaseEvent*: QHeaderViewmouseReleaseEventProc
  mouseDoubleClickEvent*: QHeaderViewmouseDoubleClickEventProc
  viewportEvent*: QHeaderViewviewportEventProc
  paintSection*: QHeaderViewpaintSectionProc
  sectionSizeFromContents*: QHeaderViewsectionSizeFromContentsProc
  horizontalOffset*: QHeaderViewhorizontalOffsetProc
  verticalOffset*: QHeaderViewverticalOffsetProc
  updateGeometries*: QHeaderViewupdateGeometriesProc
  scrollContentsBy*: QHeaderViewscrollContentsByProc
  dataChanged*: QHeaderViewdataChangedProc
  rowsInserted*: QHeaderViewrowsInsertedProc
  visualRect*: QHeaderViewvisualRectProc
  scrollTo*: QHeaderViewscrollToProc
  indexAt*: QHeaderViewindexAtProc
  isIndexHidden*: QHeaderViewisIndexHiddenProc
  moveCursor*: QHeaderViewmoveCursorProc
  setSelection*: QHeaderViewsetSelectionProc
  visualRegionForSelection*: QHeaderViewvisualRegionForSelectionProc
  setSelectionModel*: QHeaderViewsetSelectionModelProc
  keyboardSearch*: QHeaderViewkeyboardSearchProc
  sizeHintForRow*: QHeaderViewsizeHintForRowProc
  sizeHintForColumn*: QHeaderViewsizeHintForColumnProc
  inputMethodQuery*: QHeaderViewinputMethodQueryProc
  setRootIndex*: QHeaderViewsetRootIndexProc
  selectAll*: QHeaderViewselectAllProc
  rowsAboutToBeRemoved*: QHeaderViewrowsAboutToBeRemovedProc
  selectionChanged*: QHeaderViewselectionChangedProc
  updateEditorData*: QHeaderViewupdateEditorDataProc
  updateEditorGeometries*: QHeaderViewupdateEditorGeometriesProc
  verticalScrollbarAction*: QHeaderViewverticalScrollbarActionProc
  horizontalScrollbarAction*: QHeaderViewhorizontalScrollbarActionProc
  verticalScrollbarValueChanged*: QHeaderViewverticalScrollbarValueChangedProc
  horizontalScrollbarValueChanged*: QHeaderViewhorizontalScrollbarValueChangedProc
  closeEditor*: QHeaderViewcloseEditorProc
  commitData*: QHeaderViewcommitDataProc
  editorDestroyed*: QHeaderVieweditorDestroyedProc
  selectedIndexes*: QHeaderViewselectedIndexesProc
  edit2*: QHeaderViewedit2Proc
  selectionCommand*: QHeaderViewselectionCommandProc
  startDrag*: QHeaderViewstartDragProc
  viewOptions*: QHeaderViewviewOptionsProc
  focusNextPrevChild*: QHeaderViewfocusNextPrevChildProc
  dragEnterEvent*: QHeaderViewdragEnterEventProc
  dragMoveEvent*: QHeaderViewdragMoveEventProc
  dragLeaveEvent*: QHeaderViewdragLeaveEventProc
  dropEvent*: QHeaderViewdropEventProc
  focusInEvent*: QHeaderViewfocusInEventProc
  focusOutEvent*: QHeaderViewfocusOutEventProc
  keyPressEvent*: QHeaderViewkeyPressEventProc
  resizeEvent*: QHeaderViewresizeEventProc
  timerEvent*: QHeaderViewtimerEventProc
  inputMethodEvent*: QHeaderViewinputMethodEventProc
  eventFilter*: QHeaderVieweventFilterProc
  viewportSizeHint*: QHeaderViewviewportSizeHintProc
  minimumSizeHint*: QHeaderViewminimumSizeHintProc
  setupViewport*: QHeaderViewsetupViewportProc
  wheelEvent*: QHeaderViewwheelEventProc
  contextMenuEvent*: QHeaderViewcontextMenuEventProc
  changeEvent*: QHeaderViewchangeEventProc
  devType*: QHeaderViewdevTypeProc
  heightForWidth*: QHeaderViewheightForWidthProc
  hasHeightForWidth*: QHeaderViewhasHeightForWidthProc
  paintEngine*: QHeaderViewpaintEngineProc
  keyReleaseEvent*: QHeaderViewkeyReleaseEventProc
  enterEvent*: QHeaderViewenterEventProc
  leaveEvent*: QHeaderViewleaveEventProc
  moveEvent*: QHeaderViewmoveEventProc
  closeEvent*: QHeaderViewcloseEventProc
  tabletEvent*: QHeaderViewtabletEventProc
  actionEvent*: QHeaderViewactionEventProc
  showEvent*: QHeaderViewshowEventProc
  hideEvent*: QHeaderViewhideEventProc
  nativeEvent*: QHeaderViewnativeEventProc
  metric*: QHeaderViewmetricProc
  initPainter*: QHeaderViewinitPainterProc
  redirected*: QHeaderViewredirectedProc
  sharedPainter*: QHeaderViewsharedPainterProc
  childEvent*: QHeaderViewchildEventProc
  customEvent*: QHeaderViewcustomEventProc
  connectNotify*: QHeaderViewconnectNotifyProc
  disconnectNotify*: QHeaderViewdisconnectNotifyProc
proc QHeaderViewmetaObject*(self: gen_qheaderview_types.QHeaderView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHeaderView_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQHeaderView_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QHeaderViewmetacast*(self: gen_qheaderview_types.QHeaderView, param1: cstring): pointer =
  fcQHeaderView_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQHeaderView_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QHeaderViewmetacall*(self: gen_qheaderview_types.QHeaderView, param1: cint, param2: cint, param3: pointer): cint =
  fcQHeaderView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQHeaderView_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QHeaderViewsetModel*(self: gen_qheaderview_types.QHeaderView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQHeaderView_virtualbase_setModel(self.h, model.h)

proc miqt_exec_callback_cQHeaderView_setModel(vtbl: pointer, self: pointer, model: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)
  vtbl[].setModel(self, slotval1)

proc QHeaderViewsizeHint*(self: gen_qheaderview_types.QHeaderView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQHeaderView_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQHeaderView_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QHeaderViewsetVisible*(self: gen_qheaderview_types.QHeaderView, v: bool): void =
  fcQHeaderView_virtualbase_setVisible(self.h, v)

proc miqt_exec_callback_cQHeaderView_setVisible(vtbl: pointer, self: pointer, v: bool): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = v
  vtbl[].setVisible(self, slotval1)

proc QHeaderViewdoItemsLayout*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_virtualbase_doItemsLayout(self.h)

proc miqt_exec_callback_cQHeaderView_doItemsLayout(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  vtbl[].doItemsLayout(self)

proc QHeaderViewreset*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_virtualbase_reset(self.h)

proc miqt_exec_callback_cQHeaderView_reset(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  vtbl[].reset(self)

proc QHeaderViewcurrentChanged*(self: gen_qheaderview_types.QHeaderView, current: gen_qabstractitemmodel_types.QModelIndex, old: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQHeaderView_virtualbase_currentChanged(self.h, current.h, old.h)

proc miqt_exec_callback_cQHeaderView_currentChanged(vtbl: pointer, self: pointer, current: pointer, old: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: old)
  vtbl[].currentChanged(self, slotval1, slotval2)

proc QHeaderViewevent*(self: gen_qheaderview_types.QHeaderView, e: gen_qcoreevent_types.QEvent): bool =
  fcQHeaderView_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQHeaderView_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QHeaderViewpaintEvent*(self: gen_qheaderview_types.QHeaderView, e: gen_qevent_types.QPaintEvent): void =
  fcQHeaderView_virtualbase_paintEvent(self.h, e.h)

proc miqt_exec_callback_cQHeaderView_paintEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)
  vtbl[].paintEvent(self, slotval1)

proc QHeaderViewmousePressEvent*(self: gen_qheaderview_types.QHeaderView, e: gen_qevent_types.QMouseEvent): void =
  fcQHeaderView_virtualbase_mousePressEvent(self.h, e.h)

proc miqt_exec_callback_cQHeaderView_mousePressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mousePressEvent(self, slotval1)

proc QHeaderViewmouseMoveEvent*(self: gen_qheaderview_types.QHeaderView, e: gen_qevent_types.QMouseEvent): void =
  fcQHeaderView_virtualbase_mouseMoveEvent(self.h, e.h)

proc miqt_exec_callback_cQHeaderView_mouseMoveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QHeaderViewmouseReleaseEvent*(self: gen_qheaderview_types.QHeaderView, e: gen_qevent_types.QMouseEvent): void =
  fcQHeaderView_virtualbase_mouseReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQHeaderView_mouseReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QHeaderViewmouseDoubleClickEvent*(self: gen_qheaderview_types.QHeaderView, e: gen_qevent_types.QMouseEvent): void =
  fcQHeaderView_virtualbase_mouseDoubleClickEvent(self.h, e.h)

proc miqt_exec_callback_cQHeaderView_mouseDoubleClickEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QHeaderViewviewportEvent*(self: gen_qheaderview_types.QHeaderView, e: gen_qcoreevent_types.QEvent): bool =
  fcQHeaderView_virtualbase_viewportEvent(self.h, e.h)

proc miqt_exec_callback_cQHeaderView_viewportEvent(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QHeaderViewpaintSection*(self: gen_qheaderview_types.QHeaderView, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, logicalIndex: cint): void =
  fcQHeaderView_virtualbase_paintSection(self.h, painter.h, rect.h, logicalIndex)

proc miqt_exec_callback_cQHeaderView_paintSection(vtbl: pointer, self: pointer, painter: pointer, rect: pointer, logicalIndex: cint): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qrect_types.QRect(h: rect)
  let slotval3 = logicalIndex
  vtbl[].paintSection(self, slotval1, slotval2, slotval3)

proc QHeaderViewsectionSizeFromContents*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQHeaderView_virtualbase_sectionSizeFromContents(self.h, logicalIndex))

proc miqt_exec_callback_cQHeaderView_sectionSizeFromContents(vtbl: pointer, self: pointer, logicalIndex: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = logicalIndex
  var virtualReturn = vtbl[].sectionSizeFromContents(self, slotval1)
  virtualReturn.h

proc QHeaderViewhorizontalOffset*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fcQHeaderView_virtualbase_horizontalOffset(self.h)

proc miqt_exec_callback_cQHeaderView_horizontalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  var virtualReturn = vtbl[].horizontalOffset(self)
  virtualReturn

proc QHeaderViewverticalOffset*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fcQHeaderView_virtualbase_verticalOffset(self.h)

proc miqt_exec_callback_cQHeaderView_verticalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  var virtualReturn = vtbl[].verticalOffset(self)
  virtualReturn

proc QHeaderViewupdateGeometries*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_virtualbase_updateGeometries(self.h)

proc miqt_exec_callback_cQHeaderView_updateGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  vtbl[].updateGeometries(self)

proc QHeaderViewscrollContentsBy*(self: gen_qheaderview_types.QHeaderView, dx: cint, dy: cint): void =
  fcQHeaderView_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQHeaderView_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QHeaderViewdataChanged*(self: gen_qheaderview_types.QHeaderView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQHeaderView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc miqt_exec_callback_cQHeaderView_dataChanged(vtbl: pointer, self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)
  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret
  vtbl[].dataChanged(self, slotval1, slotval2, slotval3)

proc QHeaderViewrowsInserted*(self: gen_qheaderview_types.QHeaderView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQHeaderView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQHeaderView_rowsInserted(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsInserted(self, slotval1, slotval2, slotval3)

proc QHeaderViewvisualRect*(self: gen_qheaderview_types.QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQHeaderView_virtualbase_visualRect(self.h, index.h))

proc miqt_exec_callback_cQHeaderView_visualRect(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].visualRect(self, slotval1)
  virtualReturn.h

proc QHeaderViewscrollTo*(self: gen_qheaderview_types.QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQHeaderView_virtualbase_scrollTo(self.h, index.h, cint(hint))

proc miqt_exec_callback_cQHeaderView_scrollTo(vtbl: pointer, self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(hint)
  vtbl[].scrollTo(self, slotval1, slotval2)

proc QHeaderViewindexAt*(self: gen_qheaderview_types.QHeaderView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQHeaderView_virtualbase_indexAt(self.h, p.h))

proc miqt_exec_callback_cQHeaderView_indexAt(vtbl: pointer, self: pointer, p: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: p)
  var virtualReturn = vtbl[].indexAt(self, slotval1)
  virtualReturn.h

proc QHeaderViewisIndexHidden*(self: gen_qheaderview_types.QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQHeaderView_virtualbase_isIndexHidden(self.h, index.h)

proc miqt_exec_callback_cQHeaderView_isIndexHidden(vtbl: pointer, self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].isIndexHidden(self, slotval1)
  virtualReturn

proc QHeaderViewmoveCursor*(self: gen_qheaderview_types.QHeaderView, param1: cint, param2: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQHeaderView_virtualbase_moveCursor(self.h, cint(param1), cint(param2)))

proc miqt_exec_callback_cQHeaderView_moveCursor(vtbl: pointer, self: pointer, param1: cint, param2: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = cint(param2)
  var virtualReturn = vtbl[].moveCursor(self, slotval1, slotval2)
  virtualReturn.h

proc QHeaderViewsetSelection*(self: gen_qheaderview_types.QHeaderView, rect: gen_qrect_types.QRect, flags: cint): void =
  fcQHeaderView_virtualbase_setSelection(self.h, rect.h, cint(flags))

proc miqt_exec_callback_cQHeaderView_setSelection(vtbl: pointer, self: pointer, rect: pointer, flags: cint): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect)
  let slotval2 = cint(flags)
  vtbl[].setSelection(self, slotval1, slotval2)

proc QHeaderViewvisualRegionForSelection*(self: gen_qheaderview_types.QHeaderView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQHeaderView_virtualbase_visualRegionForSelection(self.h, selection.h))

proc miqt_exec_callback_cQHeaderView_visualRegionForSelection(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)
  var virtualReturn = vtbl[].visualRegionForSelection(self, slotval1)
  virtualReturn.h

proc QHeaderViewsetSelectionModel*(self: gen_qheaderview_types.QHeaderView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQHeaderView_virtualbase_setSelectionModel(self.h, selectionModel.h)

proc miqt_exec_callback_cQHeaderView_setSelectionModel(vtbl: pointer, self: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)
  vtbl[].setSelectionModel(self, slotval1)

proc QHeaderViewkeyboardSearch*(self: gen_qheaderview_types.QHeaderView, search: string): void =
  fcQHeaderView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

proc miqt_exec_callback_cQHeaderView_keyboardSearch(vtbl: pointer, self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  vtbl[].keyboardSearch(self, slotval1)

proc QHeaderViewsizeHintForRow*(self: gen_qheaderview_types.QHeaderView, row: cint): cint =
  fcQHeaderView_virtualbase_sizeHintForRow(self.h, row)

proc miqt_exec_callback_cQHeaderView_sizeHintForRow(vtbl: pointer, self: pointer, row: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].sizeHintForRow(self, slotval1)
  virtualReturn

proc QHeaderViewsizeHintForColumn*(self: gen_qheaderview_types.QHeaderView, column: cint): cint =
  fcQHeaderView_virtualbase_sizeHintForColumn(self.h, column)

proc miqt_exec_callback_cQHeaderView_sizeHintForColumn(vtbl: pointer, self: pointer, column: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = column
  var virtualReturn = vtbl[].sizeHintForColumn(self, slotval1)
  virtualReturn

proc QHeaderViewinputMethodQuery*(self: gen_qheaderview_types.QHeaderView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQHeaderView_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQHeaderView_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QHeaderViewsetRootIndex*(self: gen_qheaderview_types.QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQHeaderView_virtualbase_setRootIndex(self.h, index.h)

proc miqt_exec_callback_cQHeaderView_setRootIndex(vtbl: pointer, self: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].setRootIndex(self, slotval1)

proc QHeaderViewselectAll*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_virtualbase_selectAll(self.h)

proc miqt_exec_callback_cQHeaderView_selectAll(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  vtbl[].selectAll(self)

proc QHeaderViewrowsAboutToBeRemoved*(self: gen_qheaderview_types.QHeaderView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQHeaderView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQHeaderView_rowsAboutToBeRemoved(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsAboutToBeRemoved(self, slotval1, slotval2, slotval3)

proc QHeaderViewselectionChanged*(self: gen_qheaderview_types.QHeaderView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQHeaderView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

proc miqt_exec_callback_cQHeaderView_selectionChanged(vtbl: pointer, self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)
  vtbl[].selectionChanged(self, slotval1, slotval2)

proc QHeaderViewupdateEditorData*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_virtualbase_updateEditorData(self.h)

proc miqt_exec_callback_cQHeaderView_updateEditorData(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  vtbl[].updateEditorData(self)

proc QHeaderViewupdateEditorGeometries*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_virtualbase_updateEditorGeometries(self.h)

proc miqt_exec_callback_cQHeaderView_updateEditorGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  vtbl[].updateEditorGeometries(self)

proc QHeaderViewverticalScrollbarAction*(self: gen_qheaderview_types.QHeaderView, action: cint): void =
  fcQHeaderView_virtualbase_verticalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQHeaderView_verticalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = action
  vtbl[].verticalScrollbarAction(self, slotval1)

proc QHeaderViewhorizontalScrollbarAction*(self: gen_qheaderview_types.QHeaderView, action: cint): void =
  fcQHeaderView_virtualbase_horizontalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQHeaderView_horizontalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = action
  vtbl[].horizontalScrollbarAction(self, slotval1)

proc QHeaderViewverticalScrollbarValueChanged*(self: gen_qheaderview_types.QHeaderView, value: cint): void =
  fcQHeaderView_virtualbase_verticalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQHeaderView_verticalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = value
  vtbl[].verticalScrollbarValueChanged(self, slotval1)

proc QHeaderViewhorizontalScrollbarValueChanged*(self: gen_qheaderview_types.QHeaderView, value: cint): void =
  fcQHeaderView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQHeaderView_horizontalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = value
  vtbl[].horizontalScrollbarValueChanged(self, slotval1)

proc QHeaderViewcloseEditor*(self: gen_qheaderview_types.QHeaderView, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQHeaderView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

proc miqt_exec_callback_cQHeaderView_closeEditor(vtbl: pointer, self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  let slotval2 = cint(hint)
  vtbl[].closeEditor(self, slotval1, slotval2)

proc QHeaderViewcommitData*(self: gen_qheaderview_types.QHeaderView, editor: gen_qwidget_types.QWidget): void =
  fcQHeaderView_virtualbase_commitData(self.h, editor.h)

proc miqt_exec_callback_cQHeaderView_commitData(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  vtbl[].commitData(self, slotval1)

proc QHeaderVieweditorDestroyed*(self: gen_qheaderview_types.QHeaderView, editor: gen_qobject_types.QObject): void =
  fcQHeaderView_virtualbase_editorDestroyed(self.h, editor.h)

proc miqt_exec_callback_cQHeaderView_editorDestroyed(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: editor)
  vtbl[].editorDestroyed(self, slotval1)

proc QHeaderViewselectedIndexes*(self: gen_qheaderview_types.QHeaderView, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQHeaderView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc miqt_exec_callback_cQHeaderView_selectedIndexes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  var virtualReturn = vtbl[].selectedIndexes(self)
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QHeaderViewedit*(self: gen_qheaderview_types.QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fcQHeaderView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

proc miqt_exec_callback_cQHeaderView_edit2(vtbl: pointer, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].edit2(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QHeaderViewselectionCommand*(self: gen_qheaderview_types.QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fcQHeaderView_virtualbase_selectionCommand(self.h, index.h, event.h))

proc miqt_exec_callback_cQHeaderView_selectionCommand(vtbl: pointer, self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].selectionCommand(self, slotval1, slotval2)
  cint(virtualReturn)

proc QHeaderViewstartDrag*(self: gen_qheaderview_types.QHeaderView, supportedActions: cint): void =
  fcQHeaderView_virtualbase_startDrag(self.h, cint(supportedActions))

proc miqt_exec_callback_cQHeaderView_startDrag(vtbl: pointer, self: pointer, supportedActions: cint): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = cint(supportedActions)
  vtbl[].startDrag(self, slotval1)

proc QHeaderViewviewOptions*(self: gen_qheaderview_types.QHeaderView, ): gen_qstyleoption_types.QStyleOptionViewItem =
  gen_qstyleoption_types.QStyleOptionViewItem(h: fcQHeaderView_virtualbase_viewOptions(self.h))

proc miqt_exec_callback_cQHeaderView_viewOptions(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  var virtualReturn = vtbl[].viewOptions(self)
  virtualReturn.h

proc QHeaderViewfocusNextPrevChild*(self: gen_qheaderview_types.QHeaderView, next: bool): bool =
  fcQHeaderView_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQHeaderView_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QHeaderViewdragEnterEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QDragEnterEvent): void =
  fcQHeaderView_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QHeaderViewdragMoveEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QDragMoveEvent): void =
  fcQHeaderView_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QHeaderViewdragLeaveEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQHeaderView_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QHeaderViewdropEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QDropEvent): void =
  fcQHeaderView_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QHeaderViewfocusInEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QFocusEvent): void =
  fcQHeaderView_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QHeaderViewfocusOutEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QFocusEvent): void =
  fcQHeaderView_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QHeaderViewkeyPressEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QKeyEvent): void =
  fcQHeaderView_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QHeaderViewresizeEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QResizeEvent): void =
  fcQHeaderView_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QHeaderViewtimerEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQHeaderView_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QHeaderViewinputMethodEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QInputMethodEvent): void =
  fcQHeaderView_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QHeaderVieweventFilter*(self: gen_qheaderview_types.QHeaderView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQHeaderView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc miqt_exec_callback_cQHeaderView_eventFilter(vtbl: pointer, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QHeaderViewviewportSizeHint*(self: gen_qheaderview_types.QHeaderView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQHeaderView_virtualbase_viewportSizeHint(self.h))

proc miqt_exec_callback_cQHeaderView_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.h

proc QHeaderViewminimumSizeHint*(self: gen_qheaderview_types.QHeaderView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQHeaderView_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQHeaderView_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QHeaderViewsetupViewport*(self: gen_qheaderview_types.QHeaderView, viewport: gen_qwidget_types.QWidget): void =
  fcQHeaderView_virtualbase_setupViewport(self.h, viewport.h)

proc miqt_exec_callback_cQHeaderView_setupViewport(vtbl: pointer, self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)
  vtbl[].setupViewport(self, slotval1)

proc QHeaderViewwheelEvent*(self: gen_qheaderview_types.QHeaderView, param1: gen_qevent_types.QWheelEvent): void =
  fcQHeaderView_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQHeaderView_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)
  vtbl[].wheelEvent(self, slotval1)

proc QHeaderViewcontextMenuEvent*(self: gen_qheaderview_types.QHeaderView, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQHeaderView_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQHeaderView_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QHeaderViewchangeEvent*(self: gen_qheaderview_types.QHeaderView, param1: gen_qcoreevent_types.QEvent): void =
  fcQHeaderView_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQHeaderView_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QHeaderViewdevType*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fcQHeaderView_virtualbase_devType(self.h)

proc miqt_exec_callback_cQHeaderView_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QHeaderViewheightForWidth*(self: gen_qheaderview_types.QHeaderView, param1: cint): cint =
  fcQHeaderView_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQHeaderView_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QHeaderViewhasHeightForWidth*(self: gen_qheaderview_types.QHeaderView, ): bool =
  fcQHeaderView_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQHeaderView_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QHeaderViewpaintEngine*(self: gen_qheaderview_types.QHeaderView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQHeaderView_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQHeaderView_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QHeaderViewkeyReleaseEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QKeyEvent): void =
  fcQHeaderView_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QHeaderViewenterEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qcoreevent_types.QEvent): void =
  fcQHeaderView_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QHeaderViewleaveEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qcoreevent_types.QEvent): void =
  fcQHeaderView_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QHeaderViewmoveEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QMoveEvent): void =
  fcQHeaderView_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QHeaderViewcloseEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QCloseEvent): void =
  fcQHeaderView_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QHeaderViewtabletEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QTabletEvent): void =
  fcQHeaderView_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QHeaderViewactionEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QActionEvent): void =
  fcQHeaderView_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QHeaderViewshowEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QShowEvent): void =
  fcQHeaderView_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QHeaderViewhideEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QHideEvent): void =
  fcQHeaderView_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QHeaderViewnativeEvent*(self: gen_qheaderview_types.QHeaderView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQHeaderView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQHeaderView_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QHeaderViewmetric*(self: gen_qheaderview_types.QHeaderView, param1: cint): cint =
  fcQHeaderView_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQHeaderView_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QHeaderViewinitPainter*(self: gen_qheaderview_types.QHeaderView, painter: gen_qpainter_types.QPainter): void =
  fcQHeaderView_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQHeaderView_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QHeaderViewredirected*(self: gen_qheaderview_types.QHeaderView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQHeaderView_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQHeaderView_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QHeaderViewsharedPainter*(self: gen_qheaderview_types.QHeaderView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQHeaderView_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQHeaderView_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QHeaderViewchildEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQHeaderView_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QHeaderViewcustomEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qcoreevent_types.QEvent): void =
  fcQHeaderView_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQHeaderView_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QHeaderViewconnectNotify*(self: gen_qheaderview_types.QHeaderView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQHeaderView_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQHeaderView_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QHeaderViewdisconnectNotify*(self: gen_qheaderview_types.QHeaderView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQHeaderView_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQHeaderView_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHeaderViewVTable](vtbl)
  let self = QHeaderView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc updateSection*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): void =
  fcQHeaderView_protectedbase_updateSection(self.h, logicalIndex)

proc resizeSections*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_protectedbase_resizeSections2(self.h)

proc sectionsInserted*(self: gen_qheaderview_types.QHeaderView, parent: gen_qabstractitemmodel_types.QModelIndex, logicalFirst: cint, logicalLast: cint): void =
  fcQHeaderView_protectedbase_sectionsInserted(self.h, parent.h, logicalFirst, logicalLast)

proc sectionsAboutToBeRemoved*(self: gen_qheaderview_types.QHeaderView, parent: gen_qabstractitemmodel_types.QModelIndex, logicalFirst: cint, logicalLast: cint): void =
  fcQHeaderView_protectedbase_sectionsAboutToBeRemoved(self.h, parent.h, logicalFirst, logicalLast)

proc initialize*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_protectedbase_initialize(self.h)

proc initializeSections*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_protectedbase_initializeSections(self.h)

proc initializeSections*(self: gen_qheaderview_types.QHeaderView, start: cint, endVal: cint): void =
  fcQHeaderView_protectedbase_initializeSections2(self.h, start, endVal)

proc initStyleOption*(self: gen_qheaderview_types.QHeaderView, option: gen_qstyleoption_types.QStyleOptionHeader): void =
  fcQHeaderView_protectedbase_initStyleOption(self.h, option.h)

proc setHorizontalStepsPerItem*(self: gen_qheaderview_types.QHeaderView, steps: cint): void =
  fcQHeaderView_protectedbase_setHorizontalStepsPerItem(self.h, steps)

proc horizontalStepsPerItem*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fcQHeaderView_protectedbase_horizontalStepsPerItem(self.h)

proc setVerticalStepsPerItem*(self: gen_qheaderview_types.QHeaderView, steps: cint): void =
  fcQHeaderView_protectedbase_setVerticalStepsPerItem(self.h, steps)

proc verticalStepsPerItem*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fcQHeaderView_protectedbase_verticalStepsPerItem(self.h)

proc state*(self: gen_qheaderview_types.QHeaderView, ): cint =
  cint(fcQHeaderView_protectedbase_state(self.h))

proc setState*(self: gen_qheaderview_types.QHeaderView, state: cint): void =
  fcQHeaderView_protectedbase_setState(self.h, cint(state))

proc scheduleDelayedItemsLayout*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_protectedbase_scheduleDelayedItemsLayout(self.h)

proc executeDelayedItemsLayout*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_protectedbase_executeDelayedItemsLayout(self.h)

proc setDirtyRegion*(self: gen_qheaderview_types.QHeaderView, region: gen_qregion_types.QRegion): void =
  fcQHeaderView_protectedbase_setDirtyRegion(self.h, region.h)

proc scrollDirtyRegion*(self: gen_qheaderview_types.QHeaderView, dx: cint, dy: cint): void =
  fcQHeaderView_protectedbase_scrollDirtyRegion(self.h, dx, dy)

proc dirtyRegionOffset*(self: gen_qheaderview_types.QHeaderView, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQHeaderView_protectedbase_dirtyRegionOffset(self.h))

proc startAutoScroll*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_protectedbase_startAutoScroll(self.h)

proc stopAutoScroll*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_protectedbase_stopAutoScroll(self.h)

proc doAutoScroll*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_protectedbase_doAutoScroll(self.h)

proc dropIndicatorPosition*(self: gen_qheaderview_types.QHeaderView, ): cint =
  cint(fcQHeaderView_protectedbase_dropIndicatorPosition(self.h))

proc setViewportMargins*(self: gen_qheaderview_types.QHeaderView, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQHeaderView_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qheaderview_types.QHeaderView, ): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQHeaderView_protectedbase_viewportMargins(self.h))

proc drawFrame*(self: gen_qheaderview_types.QHeaderView, param1: gen_qpainter_types.QPainter): void =
  fcQHeaderView_protectedbase_drawFrame(self.h, param1.h)

proc updateMicroFocus*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_protectedbase_create(self.h)

proc destroy*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qheaderview_types.QHeaderView, ): bool =
  fcQHeaderView_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qheaderview_types.QHeaderView, ): bool =
  fcQHeaderView_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qheaderview_types.QHeaderView, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQHeaderView_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fcQHeaderView_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qheaderview_types.QHeaderView, signal: cstring): cint =
  fcQHeaderView_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qheaderview_types.QHeaderView, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQHeaderView_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qheaderview_types.QHeaderView,
    orientation: cint,
    vtbl: ref QHeaderViewVTable = nil): gen_qheaderview_types.QHeaderView =
  let vtbl = if vtbl == nil: new QHeaderViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQHeaderViewVTable, _: ptr cQHeaderView) {.cdecl.} =
    let vtbl = cast[ref QHeaderViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQHeaderView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQHeaderView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQHeaderView_metacall
  if not isNil(vtbl.setModel):
    vtbl[].vtbl.setModel = miqt_exec_callback_cQHeaderView_setModel
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQHeaderView_sizeHint
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQHeaderView_setVisible
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQHeaderView_doItemsLayout
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQHeaderView_reset
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQHeaderView_currentChanged
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQHeaderView_event
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQHeaderView_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQHeaderView_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQHeaderView_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQHeaderView_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQHeaderView_mouseDoubleClickEvent
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQHeaderView_viewportEvent
  if not isNil(vtbl.paintSection):
    vtbl[].vtbl.paintSection = miqt_exec_callback_cQHeaderView_paintSection
  if not isNil(vtbl.sectionSizeFromContents):
    vtbl[].vtbl.sectionSizeFromContents = miqt_exec_callback_cQHeaderView_sectionSizeFromContents
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQHeaderView_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQHeaderView_verticalOffset
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQHeaderView_updateGeometries
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQHeaderView_scrollContentsBy
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQHeaderView_dataChanged
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQHeaderView_rowsInserted
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQHeaderView_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQHeaderView_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQHeaderView_indexAt
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQHeaderView_isIndexHidden
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQHeaderView_moveCursor
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQHeaderView_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQHeaderView_visualRegionForSelection
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQHeaderView_setSelectionModel
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQHeaderView_keyboardSearch
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQHeaderView_sizeHintForRow
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQHeaderView_sizeHintForColumn
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQHeaderView_inputMethodQuery
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQHeaderView_setRootIndex
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQHeaderView_selectAll
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQHeaderView_rowsAboutToBeRemoved
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQHeaderView_selectionChanged
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQHeaderView_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQHeaderView_updateEditorGeometries
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQHeaderView_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQHeaderView_horizontalScrollbarAction
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQHeaderView_verticalScrollbarValueChanged
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQHeaderView_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQHeaderView_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQHeaderView_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQHeaderView_editorDestroyed
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQHeaderView_selectedIndexes
  if not isNil(vtbl.edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQHeaderView_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQHeaderView_selectionCommand
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQHeaderView_startDrag
  if not isNil(vtbl.viewOptions):
    vtbl[].vtbl.viewOptions = miqt_exec_callback_cQHeaderView_viewOptions
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQHeaderView_focusNextPrevChild
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQHeaderView_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQHeaderView_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQHeaderView_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQHeaderView_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQHeaderView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQHeaderView_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQHeaderView_keyPressEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQHeaderView_resizeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQHeaderView_timerEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQHeaderView_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQHeaderView_eventFilter
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQHeaderView_viewportSizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQHeaderView_minimumSizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQHeaderView_setupViewport
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQHeaderView_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQHeaderView_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQHeaderView_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQHeaderView_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQHeaderView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQHeaderView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQHeaderView_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQHeaderView_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQHeaderView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQHeaderView_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQHeaderView_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQHeaderView_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQHeaderView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQHeaderView_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQHeaderView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQHeaderView_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQHeaderView_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQHeaderView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQHeaderView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQHeaderView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQHeaderView_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQHeaderView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQHeaderView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQHeaderView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQHeaderView_disconnectNotify
  gen_qheaderview_types.QHeaderView(h: fcQHeaderView_new(addr(vtbl[]), cint(orientation)))

proc create*(T: type gen_qheaderview_types.QHeaderView,
    orientation: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QHeaderViewVTable = nil): gen_qheaderview_types.QHeaderView =
  let vtbl = if vtbl == nil: new QHeaderViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQHeaderViewVTable, _: ptr cQHeaderView) {.cdecl.} =
    let vtbl = cast[ref QHeaderViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQHeaderView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQHeaderView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQHeaderView_metacall
  if not isNil(vtbl.setModel):
    vtbl[].vtbl.setModel = miqt_exec_callback_cQHeaderView_setModel
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQHeaderView_sizeHint
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQHeaderView_setVisible
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQHeaderView_doItemsLayout
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQHeaderView_reset
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQHeaderView_currentChanged
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQHeaderView_event
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQHeaderView_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQHeaderView_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQHeaderView_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQHeaderView_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQHeaderView_mouseDoubleClickEvent
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQHeaderView_viewportEvent
  if not isNil(vtbl.paintSection):
    vtbl[].vtbl.paintSection = miqt_exec_callback_cQHeaderView_paintSection
  if not isNil(vtbl.sectionSizeFromContents):
    vtbl[].vtbl.sectionSizeFromContents = miqt_exec_callback_cQHeaderView_sectionSizeFromContents
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQHeaderView_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQHeaderView_verticalOffset
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQHeaderView_updateGeometries
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQHeaderView_scrollContentsBy
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQHeaderView_dataChanged
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQHeaderView_rowsInserted
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQHeaderView_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQHeaderView_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQHeaderView_indexAt
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQHeaderView_isIndexHidden
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQHeaderView_moveCursor
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQHeaderView_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQHeaderView_visualRegionForSelection
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQHeaderView_setSelectionModel
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQHeaderView_keyboardSearch
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQHeaderView_sizeHintForRow
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQHeaderView_sizeHintForColumn
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQHeaderView_inputMethodQuery
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQHeaderView_setRootIndex
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQHeaderView_selectAll
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQHeaderView_rowsAboutToBeRemoved
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQHeaderView_selectionChanged
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQHeaderView_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQHeaderView_updateEditorGeometries
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQHeaderView_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQHeaderView_horizontalScrollbarAction
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQHeaderView_verticalScrollbarValueChanged
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQHeaderView_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQHeaderView_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQHeaderView_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQHeaderView_editorDestroyed
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQHeaderView_selectedIndexes
  if not isNil(vtbl.edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQHeaderView_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQHeaderView_selectionCommand
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQHeaderView_startDrag
  if not isNil(vtbl.viewOptions):
    vtbl[].vtbl.viewOptions = miqt_exec_callback_cQHeaderView_viewOptions
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQHeaderView_focusNextPrevChild
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQHeaderView_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQHeaderView_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQHeaderView_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQHeaderView_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQHeaderView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQHeaderView_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQHeaderView_keyPressEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQHeaderView_resizeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQHeaderView_timerEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQHeaderView_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQHeaderView_eventFilter
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQHeaderView_viewportSizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQHeaderView_minimumSizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQHeaderView_setupViewport
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQHeaderView_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQHeaderView_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQHeaderView_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQHeaderView_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQHeaderView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQHeaderView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQHeaderView_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQHeaderView_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQHeaderView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQHeaderView_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQHeaderView_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQHeaderView_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQHeaderView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQHeaderView_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQHeaderView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQHeaderView_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQHeaderView_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQHeaderView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQHeaderView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQHeaderView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQHeaderView_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQHeaderView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQHeaderView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQHeaderView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQHeaderView_disconnectNotify
  gen_qheaderview_types.QHeaderView(h: fcQHeaderView_new2(addr(vtbl[]), cint(orientation), parent.h))

proc staticMetaObject*(_: type gen_qheaderview_types.QHeaderView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHeaderView_staticMetaObject())
proc delete*(self: gen_qheaderview_types.QHeaderView) =
  fcQHeaderView_delete(self.h)
