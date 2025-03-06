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

proc fcQHeaderView_new(orientation: cint): ptr cQHeaderView {.importc: "QHeaderView_new".}
proc fcQHeaderView_new2(orientation: cint, parent: pointer): ptr cQHeaderView {.importc: "QHeaderView_new2".}
proc fcQHeaderView_metaObject(self: pointer, ): pointer {.importc: "QHeaderView_metaObject".}
proc fcQHeaderView_metacast(self: pointer, param1: cstring): pointer {.importc: "QHeaderView_metacast".}
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
proc fcQHeaderView_connect_sectionMoved(self: pointer, slot: int) {.importc: "QHeaderView_connect_sectionMoved".}
proc fcQHeaderView_sectionResized(self: pointer, logicalIndex: cint, oldSize: cint, newSize: cint): void {.importc: "QHeaderView_sectionResized".}
proc fcQHeaderView_connect_sectionResized(self: pointer, slot: int) {.importc: "QHeaderView_connect_sectionResized".}
proc fcQHeaderView_sectionPressed(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_sectionPressed".}
proc fcQHeaderView_connect_sectionPressed(self: pointer, slot: int) {.importc: "QHeaderView_connect_sectionPressed".}
proc fcQHeaderView_sectionClicked(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_sectionClicked".}
proc fcQHeaderView_connect_sectionClicked(self: pointer, slot: int) {.importc: "QHeaderView_connect_sectionClicked".}
proc fcQHeaderView_sectionEntered(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_sectionEntered".}
proc fcQHeaderView_connect_sectionEntered(self: pointer, slot: int) {.importc: "QHeaderView_connect_sectionEntered".}
proc fcQHeaderView_sectionDoubleClicked(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_sectionDoubleClicked".}
proc fcQHeaderView_connect_sectionDoubleClicked(self: pointer, slot: int) {.importc: "QHeaderView_connect_sectionDoubleClicked".}
proc fcQHeaderView_sectionCountChanged(self: pointer, oldCount: cint, newCount: cint): void {.importc: "QHeaderView_sectionCountChanged".}
proc fcQHeaderView_connect_sectionCountChanged(self: pointer, slot: int) {.importc: "QHeaderView_connect_sectionCountChanged".}
proc fcQHeaderView_sectionHandleDoubleClicked(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_sectionHandleDoubleClicked".}
proc fcQHeaderView_connect_sectionHandleDoubleClicked(self: pointer, slot: int) {.importc: "QHeaderView_connect_sectionHandleDoubleClicked".}
proc fcQHeaderView_geometriesChanged(self: pointer, ): void {.importc: "QHeaderView_geometriesChanged".}
proc fcQHeaderView_connect_geometriesChanged(self: pointer, slot: int) {.importc: "QHeaderView_connect_geometriesChanged".}
proc fcQHeaderView_sortIndicatorChanged(self: pointer, logicalIndex: cint, order: cint): void {.importc: "QHeaderView_sortIndicatorChanged".}
proc fcQHeaderView_connect_sortIndicatorChanged(self: pointer, slot: int) {.importc: "QHeaderView_connect_sortIndicatorChanged".}
proc fcQHeaderView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QHeaderView_tr2".}
proc fcQHeaderView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHeaderView_tr3".}
proc fcQHeaderView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QHeaderView_trUtf82".}
proc fcQHeaderView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHeaderView_trUtf83".}
proc fQHeaderView_virtualbase_setModel(self: pointer, model: pointer): void{.importc: "QHeaderView_virtualbase_setModel".}
proc fcQHeaderView_override_virtual_setModel(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_setModel".}
proc fQHeaderView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QHeaderView_virtualbase_sizeHint".}
proc fcQHeaderView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_sizeHint".}
proc fQHeaderView_virtualbase_setVisible(self: pointer, v: bool): void{.importc: "QHeaderView_virtualbase_setVisible".}
proc fcQHeaderView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_setVisible".}
proc fQHeaderView_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QHeaderView_virtualbase_doItemsLayout".}
proc fcQHeaderView_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_doItemsLayout".}
proc fQHeaderView_virtualbase_reset(self: pointer, ): void{.importc: "QHeaderView_virtualbase_reset".}
proc fcQHeaderView_override_virtual_reset(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_reset".}
proc fQHeaderView_virtualbase_currentChanged(self: pointer, current: pointer, old: pointer): void{.importc: "QHeaderView_virtualbase_currentChanged".}
proc fcQHeaderView_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_currentChanged".}
proc fQHeaderView_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QHeaderView_virtualbase_event".}
proc fcQHeaderView_override_virtual_event(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_event".}
proc fQHeaderView_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QHeaderView_virtualbase_paintEvent".}
proc fcQHeaderView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_paintEvent".}
proc fQHeaderView_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QHeaderView_virtualbase_mousePressEvent".}
proc fcQHeaderView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_mousePressEvent".}
proc fQHeaderView_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QHeaderView_virtualbase_mouseMoveEvent".}
proc fcQHeaderView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_mouseMoveEvent".}
proc fQHeaderView_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QHeaderView_virtualbase_mouseReleaseEvent".}
proc fcQHeaderView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_mouseReleaseEvent".}
proc fQHeaderView_virtualbase_mouseDoubleClickEvent(self: pointer, e: pointer): void{.importc: "QHeaderView_virtualbase_mouseDoubleClickEvent".}
proc fcQHeaderView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_mouseDoubleClickEvent".}
proc fQHeaderView_virtualbase_viewportEvent(self: pointer, e: pointer): bool{.importc: "QHeaderView_virtualbase_viewportEvent".}
proc fcQHeaderView_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_viewportEvent".}
proc fQHeaderView_virtualbase_paintSection(self: pointer, painter: pointer, rect: pointer, logicalIndex: cint): void{.importc: "QHeaderView_virtualbase_paintSection".}
proc fcQHeaderView_override_virtual_paintSection(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_paintSection".}
proc fQHeaderView_virtualbase_sectionSizeFromContents(self: pointer, logicalIndex: cint): pointer{.importc: "QHeaderView_virtualbase_sectionSizeFromContents".}
proc fcQHeaderView_override_virtual_sectionSizeFromContents(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_sectionSizeFromContents".}
proc fQHeaderView_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QHeaderView_virtualbase_horizontalOffset".}
proc fcQHeaderView_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_horizontalOffset".}
proc fQHeaderView_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QHeaderView_virtualbase_verticalOffset".}
proc fcQHeaderView_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_verticalOffset".}
proc fQHeaderView_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QHeaderView_virtualbase_updateGeometries".}
proc fcQHeaderView_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_updateGeometries".}
proc fQHeaderView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QHeaderView_virtualbase_scrollContentsBy".}
proc fcQHeaderView_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_scrollContentsBy".}
proc fQHeaderView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QHeaderView_virtualbase_dataChanged".}
proc fcQHeaderView_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_dataChanged".}
proc fQHeaderView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QHeaderView_virtualbase_rowsInserted".}
proc fcQHeaderView_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_rowsInserted".}
proc fQHeaderView_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QHeaderView_virtualbase_visualRect".}
proc fcQHeaderView_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_visualRect".}
proc fQHeaderView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QHeaderView_virtualbase_scrollTo".}
proc fcQHeaderView_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_scrollTo".}
proc fQHeaderView_virtualbase_indexAt(self: pointer, p: pointer): pointer{.importc: "QHeaderView_virtualbase_indexAt".}
proc fcQHeaderView_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_indexAt".}
proc fQHeaderView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QHeaderView_virtualbase_isIndexHidden".}
proc fcQHeaderView_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_isIndexHidden".}
proc fQHeaderView_virtualbase_moveCursor(self: pointer, param1: cint, param2: cint): pointer{.importc: "QHeaderView_virtualbase_moveCursor".}
proc fcQHeaderView_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_moveCursor".}
proc fQHeaderView_virtualbase_setSelection(self: pointer, rect: pointer, flags: cint): void{.importc: "QHeaderView_virtualbase_setSelection".}
proc fcQHeaderView_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_setSelection".}
proc fQHeaderView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QHeaderView_virtualbase_visualRegionForSelection".}
proc fcQHeaderView_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_visualRegionForSelection".}
proc fQHeaderView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QHeaderView_virtualbase_setSelectionModel".}
proc fcQHeaderView_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_setSelectionModel".}
proc fQHeaderView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QHeaderView_virtualbase_keyboardSearch".}
proc fcQHeaderView_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_keyboardSearch".}
proc fQHeaderView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QHeaderView_virtualbase_sizeHintForRow".}
proc fcQHeaderView_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_sizeHintForRow".}
proc fQHeaderView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QHeaderView_virtualbase_sizeHintForColumn".}
proc fcQHeaderView_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_sizeHintForColumn".}
proc fQHeaderView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QHeaderView_virtualbase_inputMethodQuery".}
proc fcQHeaderView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_inputMethodQuery".}
proc fQHeaderView_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QHeaderView_virtualbase_setRootIndex".}
proc fcQHeaderView_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_setRootIndex".}
proc fQHeaderView_virtualbase_selectAll(self: pointer, ): void{.importc: "QHeaderView_virtualbase_selectAll".}
proc fcQHeaderView_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_selectAll".}
proc fQHeaderView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QHeaderView_virtualbase_rowsAboutToBeRemoved".}
proc fcQHeaderView_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_rowsAboutToBeRemoved".}
proc fQHeaderView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QHeaderView_virtualbase_selectionChanged".}
proc fcQHeaderView_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_selectionChanged".}
proc fQHeaderView_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QHeaderView_virtualbase_updateEditorData".}
proc fcQHeaderView_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_updateEditorData".}
proc fQHeaderView_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QHeaderView_virtualbase_updateEditorGeometries".}
proc fcQHeaderView_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_updateEditorGeometries".}
proc fQHeaderView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QHeaderView_virtualbase_verticalScrollbarAction".}
proc fcQHeaderView_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_verticalScrollbarAction".}
proc fQHeaderView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QHeaderView_virtualbase_horizontalScrollbarAction".}
proc fcQHeaderView_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_horizontalScrollbarAction".}
proc fQHeaderView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QHeaderView_virtualbase_verticalScrollbarValueChanged".}
proc fcQHeaderView_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_verticalScrollbarValueChanged".}
proc fQHeaderView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QHeaderView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQHeaderView_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_horizontalScrollbarValueChanged".}
proc fQHeaderView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QHeaderView_virtualbase_closeEditor".}
proc fcQHeaderView_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_closeEditor".}
proc fQHeaderView_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QHeaderView_virtualbase_commitData".}
proc fcQHeaderView_override_virtual_commitData(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_commitData".}
proc fQHeaderView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QHeaderView_virtualbase_editorDestroyed".}
proc fcQHeaderView_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_editorDestroyed".}
proc fQHeaderView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QHeaderView_virtualbase_selectedIndexes".}
proc fcQHeaderView_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_selectedIndexes".}
proc fQHeaderView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QHeaderView_virtualbase_edit2".}
proc fcQHeaderView_override_virtual_edit2(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_edit2".}
proc fQHeaderView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QHeaderView_virtualbase_selectionCommand".}
proc fcQHeaderView_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_selectionCommand".}
proc fQHeaderView_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QHeaderView_virtualbase_startDrag".}
proc fcQHeaderView_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_startDrag".}
proc fQHeaderView_virtualbase_viewOptions(self: pointer, ): pointer{.importc: "QHeaderView_virtualbase_viewOptions".}
proc fcQHeaderView_override_virtual_viewOptions(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_viewOptions".}
proc fQHeaderView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QHeaderView_virtualbase_focusNextPrevChild".}
proc fcQHeaderView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_focusNextPrevChild".}
proc fQHeaderView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_dragEnterEvent".}
proc fcQHeaderView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_dragEnterEvent".}
proc fQHeaderView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_dragMoveEvent".}
proc fcQHeaderView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_dragMoveEvent".}
proc fQHeaderView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_dragLeaveEvent".}
proc fcQHeaderView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_dragLeaveEvent".}
proc fQHeaderView_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_dropEvent".}
proc fcQHeaderView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_dropEvent".}
proc fQHeaderView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_focusInEvent".}
proc fcQHeaderView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_focusInEvent".}
proc fQHeaderView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_focusOutEvent".}
proc fcQHeaderView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_focusOutEvent".}
proc fQHeaderView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_keyPressEvent".}
proc fcQHeaderView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_keyPressEvent".}
proc fQHeaderView_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_resizeEvent".}
proc fcQHeaderView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_resizeEvent".}
proc fQHeaderView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_timerEvent".}
proc fcQHeaderView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_timerEvent".}
proc fQHeaderView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_inputMethodEvent".}
proc fcQHeaderView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_inputMethodEvent".}
proc fQHeaderView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QHeaderView_virtualbase_eventFilter".}
proc fcQHeaderView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_eventFilter".}
proc fQHeaderView_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QHeaderView_virtualbase_viewportSizeHint".}
proc fcQHeaderView_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_viewportSizeHint".}
proc fQHeaderView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QHeaderView_virtualbase_minimumSizeHint".}
proc fcQHeaderView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_minimumSizeHint".}
proc fQHeaderView_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QHeaderView_virtualbase_setupViewport".}
proc fcQHeaderView_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_setupViewport".}
proc fQHeaderView_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QHeaderView_virtualbase_wheelEvent".}
proc fcQHeaderView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_wheelEvent".}
proc fQHeaderView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QHeaderView_virtualbase_contextMenuEvent".}
proc fcQHeaderView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_contextMenuEvent".}
proc fQHeaderView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QHeaderView_virtualbase_changeEvent".}
proc fcQHeaderView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_changeEvent".}
proc fQHeaderView_virtualbase_devType(self: pointer, ): cint{.importc: "QHeaderView_virtualbase_devType".}
proc fcQHeaderView_override_virtual_devType(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_devType".}
proc fQHeaderView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QHeaderView_virtualbase_heightForWidth".}
proc fcQHeaderView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_heightForWidth".}
proc fQHeaderView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QHeaderView_virtualbase_hasHeightForWidth".}
proc fcQHeaderView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_hasHeightForWidth".}
proc fQHeaderView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QHeaderView_virtualbase_paintEngine".}
proc fcQHeaderView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_paintEngine".}
proc fQHeaderView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_keyReleaseEvent".}
proc fcQHeaderView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_keyReleaseEvent".}
proc fQHeaderView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_enterEvent".}
proc fcQHeaderView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_enterEvent".}
proc fQHeaderView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_leaveEvent".}
proc fcQHeaderView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_leaveEvent".}
proc fQHeaderView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_moveEvent".}
proc fcQHeaderView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_moveEvent".}
proc fQHeaderView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_closeEvent".}
proc fcQHeaderView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_closeEvent".}
proc fQHeaderView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_tabletEvent".}
proc fcQHeaderView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_tabletEvent".}
proc fQHeaderView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_actionEvent".}
proc fcQHeaderView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_actionEvent".}
proc fQHeaderView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_showEvent".}
proc fcQHeaderView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_showEvent".}
proc fQHeaderView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_hideEvent".}
proc fcQHeaderView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_hideEvent".}
proc fQHeaderView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QHeaderView_virtualbase_nativeEvent".}
proc fcQHeaderView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_nativeEvent".}
proc fQHeaderView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QHeaderView_virtualbase_metric".}
proc fcQHeaderView_override_virtual_metric(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_metric".}
proc fQHeaderView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QHeaderView_virtualbase_initPainter".}
proc fcQHeaderView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_initPainter".}
proc fQHeaderView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QHeaderView_virtualbase_redirected".}
proc fcQHeaderView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_redirected".}
proc fQHeaderView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QHeaderView_virtualbase_sharedPainter".}
proc fcQHeaderView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_sharedPainter".}
proc fQHeaderView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_childEvent".}
proc fcQHeaderView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_childEvent".}
proc fQHeaderView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_customEvent".}
proc fcQHeaderView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_customEvent".}
proc fQHeaderView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QHeaderView_virtualbase_connectNotify".}
proc fcQHeaderView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_connectNotify".}
proc fQHeaderView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QHeaderView_virtualbase_disconnectNotify".}
proc fcQHeaderView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_disconnectNotify".}
proc fcQHeaderView_delete(self: pointer) {.importc: "QHeaderView_delete".}


func init*(T: type gen_qheaderview_types.QHeaderView, h: ptr cQHeaderView): gen_qheaderview_types.QHeaderView =
  T(h: h)
proc create*(T: type gen_qheaderview_types.QHeaderView, orientation: cint): gen_qheaderview_types.QHeaderView =
  gen_qheaderview_types.QHeaderView.init(fcQHeaderView_new(cint(orientation)))

proc create*(T: type gen_qheaderview_types.QHeaderView, orientation: cint, parent: gen_qwidget_types.QWidget): gen_qheaderview_types.QHeaderView =
  gen_qheaderview_types.QHeaderView.init(fcQHeaderView_new2(cint(orientation), parent.h))

proc metaObject*(self: gen_qheaderview_types.QHeaderView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHeaderView_metaObject(self.h))

proc metacast*(self: gen_qheaderview_types.QHeaderView, param1: cstring): pointer =
  fcQHeaderView_metacast(self.h, param1)

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
proc miqt_exec_callback_QHeaderView_sectionMoved(slot: int, logicalIndex: cint, oldVisualIndex: cint, newVisualIndex: cint) {.exportc.} =
  let nimfunc = cast[ptr QHeaderViewsectionMovedSlot](cast[pointer](slot))
  let slotval1 = logicalIndex

  let slotval2 = oldVisualIndex

  let slotval3 = newVisualIndex

  nimfunc[](slotval1, slotval2, slotval3)

proc onsectionMoved*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsectionMovedSlot) =
  var tmp = new QHeaderViewsectionMovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sectionMoved(self.h, cast[int](addr tmp[]))

proc sectionResized*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint, oldSize: cint, newSize: cint): void =
  fcQHeaderView_sectionResized(self.h, logicalIndex, oldSize, newSize)

type QHeaderViewsectionResizedSlot* = proc(logicalIndex: cint, oldSize: cint, newSize: cint)
proc miqt_exec_callback_QHeaderView_sectionResized(slot: int, logicalIndex: cint, oldSize: cint, newSize: cint) {.exportc.} =
  let nimfunc = cast[ptr QHeaderViewsectionResizedSlot](cast[pointer](slot))
  let slotval1 = logicalIndex

  let slotval2 = oldSize

  let slotval3 = newSize

  nimfunc[](slotval1, slotval2, slotval3)

proc onsectionResized*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsectionResizedSlot) =
  var tmp = new QHeaderViewsectionResizedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sectionResized(self.h, cast[int](addr tmp[]))

proc sectionPressed*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): void =
  fcQHeaderView_sectionPressed(self.h, logicalIndex)

type QHeaderViewsectionPressedSlot* = proc(logicalIndex: cint)
proc miqt_exec_callback_QHeaderView_sectionPressed(slot: int, logicalIndex: cint) {.exportc.} =
  let nimfunc = cast[ptr QHeaderViewsectionPressedSlot](cast[pointer](slot))
  let slotval1 = logicalIndex

  nimfunc[](slotval1)

proc onsectionPressed*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsectionPressedSlot) =
  var tmp = new QHeaderViewsectionPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sectionPressed(self.h, cast[int](addr tmp[]))

proc sectionClicked*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): void =
  fcQHeaderView_sectionClicked(self.h, logicalIndex)

type QHeaderViewsectionClickedSlot* = proc(logicalIndex: cint)
proc miqt_exec_callback_QHeaderView_sectionClicked(slot: int, logicalIndex: cint) {.exportc.} =
  let nimfunc = cast[ptr QHeaderViewsectionClickedSlot](cast[pointer](slot))
  let slotval1 = logicalIndex

  nimfunc[](slotval1)

proc onsectionClicked*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsectionClickedSlot) =
  var tmp = new QHeaderViewsectionClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sectionClicked(self.h, cast[int](addr tmp[]))

proc sectionEntered*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): void =
  fcQHeaderView_sectionEntered(self.h, logicalIndex)

type QHeaderViewsectionEnteredSlot* = proc(logicalIndex: cint)
proc miqt_exec_callback_QHeaderView_sectionEntered(slot: int, logicalIndex: cint) {.exportc.} =
  let nimfunc = cast[ptr QHeaderViewsectionEnteredSlot](cast[pointer](slot))
  let slotval1 = logicalIndex

  nimfunc[](slotval1)

proc onsectionEntered*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsectionEnteredSlot) =
  var tmp = new QHeaderViewsectionEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sectionEntered(self.h, cast[int](addr tmp[]))

proc sectionDoubleClicked*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): void =
  fcQHeaderView_sectionDoubleClicked(self.h, logicalIndex)

type QHeaderViewsectionDoubleClickedSlot* = proc(logicalIndex: cint)
proc miqt_exec_callback_QHeaderView_sectionDoubleClicked(slot: int, logicalIndex: cint) {.exportc.} =
  let nimfunc = cast[ptr QHeaderViewsectionDoubleClickedSlot](cast[pointer](slot))
  let slotval1 = logicalIndex

  nimfunc[](slotval1)

proc onsectionDoubleClicked*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsectionDoubleClickedSlot) =
  var tmp = new QHeaderViewsectionDoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sectionDoubleClicked(self.h, cast[int](addr tmp[]))

proc sectionCountChanged*(self: gen_qheaderview_types.QHeaderView, oldCount: cint, newCount: cint): void =
  fcQHeaderView_sectionCountChanged(self.h, oldCount, newCount)

type QHeaderViewsectionCountChangedSlot* = proc(oldCount: cint, newCount: cint)
proc miqt_exec_callback_QHeaderView_sectionCountChanged(slot: int, oldCount: cint, newCount: cint) {.exportc.} =
  let nimfunc = cast[ptr QHeaderViewsectionCountChangedSlot](cast[pointer](slot))
  let slotval1 = oldCount

  let slotval2 = newCount

  nimfunc[](slotval1, slotval2)

proc onsectionCountChanged*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsectionCountChangedSlot) =
  var tmp = new QHeaderViewsectionCountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sectionCountChanged(self.h, cast[int](addr tmp[]))

proc sectionHandleDoubleClicked*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): void =
  fcQHeaderView_sectionHandleDoubleClicked(self.h, logicalIndex)

type QHeaderViewsectionHandleDoubleClickedSlot* = proc(logicalIndex: cint)
proc miqt_exec_callback_QHeaderView_sectionHandleDoubleClicked(slot: int, logicalIndex: cint) {.exportc.} =
  let nimfunc = cast[ptr QHeaderViewsectionHandleDoubleClickedSlot](cast[pointer](slot))
  let slotval1 = logicalIndex

  nimfunc[](slotval1)

proc onsectionHandleDoubleClicked*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsectionHandleDoubleClickedSlot) =
  var tmp = new QHeaderViewsectionHandleDoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sectionHandleDoubleClicked(self.h, cast[int](addr tmp[]))

proc geometriesChanged*(self: gen_qheaderview_types.QHeaderView, ): void =
  fcQHeaderView_geometriesChanged(self.h)

type QHeaderViewgeometriesChangedSlot* = proc()
proc miqt_exec_callback_QHeaderView_geometriesChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QHeaderViewgeometriesChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc ongeometriesChanged*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewgeometriesChangedSlot) =
  var tmp = new QHeaderViewgeometriesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_geometriesChanged(self.h, cast[int](addr tmp[]))

proc sortIndicatorChanged*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint, order: cint): void =
  fcQHeaderView_sortIndicatorChanged(self.h, logicalIndex, cint(order))

type QHeaderViewsortIndicatorChangedSlot* = proc(logicalIndex: cint, order: cint)
proc miqt_exec_callback_QHeaderView_sortIndicatorChanged(slot: int, logicalIndex: cint, order: cint) {.exportc.} =
  let nimfunc = cast[ptr QHeaderViewsortIndicatorChangedSlot](cast[pointer](slot))
  let slotval1 = logicalIndex

  let slotval2 = cint(order)

  nimfunc[](slotval1, slotval2)

proc onsortIndicatorChanged*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsortIndicatorChangedSlot) =
  var tmp = new QHeaderViewsortIndicatorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_connect_sortIndicatorChanged(self.h, cast[int](addr tmp[]))

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

proc QHeaderViewsetModel*(self: gen_qheaderview_types.QHeaderView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fQHeaderView_virtualbase_setModel(self.h, model.h)

type QHeaderViewsetModelProc* = proc(model: gen_qabstractitemmodel_types.QAbstractItemModel): void
proc onsetModel*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsetModelProc) =
  # TODO check subclass
  var tmp = new QHeaderViewsetModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_setModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_setModel(self: ptr cQHeaderView, slot: int, model: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_setModel ".} =
  var nimfunc = cast[ptr QHeaderViewsetModelProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)


  nimfunc[](slotval1)
proc QHeaderViewsizeHint*(self: gen_qheaderview_types.QHeaderView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQHeaderView_virtualbase_sizeHint(self.h))

type QHeaderViewsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsizeHintProc) =
  # TODO check subclass
  var tmp = new QHeaderViewsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_sizeHint(self: ptr cQHeaderView, slot: int): pointer {.exportc: "miqt_exec_callback_QHeaderView_sizeHint ".} =
  var nimfunc = cast[ptr QHeaderViewsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QHeaderViewsetVisible*(self: gen_qheaderview_types.QHeaderView, v: bool): void =
  fQHeaderView_virtualbase_setVisible(self.h, v)

type QHeaderViewsetVisibleProc* = proc(v: bool): void
proc onsetVisible*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsetVisibleProc) =
  # TODO check subclass
  var tmp = new QHeaderViewsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_setVisible(self: ptr cQHeaderView, slot: int, v: bool): void {.exportc: "miqt_exec_callback_QHeaderView_setVisible ".} =
  var nimfunc = cast[ptr QHeaderViewsetVisibleProc](cast[pointer](slot))
  let slotval1 = v


  nimfunc[](slotval1)
proc QHeaderViewdoItemsLayout*(self: gen_qheaderview_types.QHeaderView, ): void =
  fQHeaderView_virtualbase_doItemsLayout(self.h)

type QHeaderViewdoItemsLayoutProc* = proc(): void
proc ondoItemsLayout*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewdoItemsLayoutProc) =
  # TODO check subclass
  var tmp = new QHeaderViewdoItemsLayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_doItemsLayout(self: ptr cQHeaderView, slot: int): void {.exportc: "miqt_exec_callback_QHeaderView_doItemsLayout ".} =
  var nimfunc = cast[ptr QHeaderViewdoItemsLayoutProc](cast[pointer](slot))

  nimfunc[]()
proc QHeaderViewreset*(self: gen_qheaderview_types.QHeaderView, ): void =
  fQHeaderView_virtualbase_reset(self.h)

type QHeaderViewresetProc* = proc(): void
proc onreset*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewresetProc) =
  # TODO check subclass
  var tmp = new QHeaderViewresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_reset(self: ptr cQHeaderView, slot: int): void {.exportc: "miqt_exec_callback_QHeaderView_reset ".} =
  var nimfunc = cast[ptr QHeaderViewresetProc](cast[pointer](slot))

  nimfunc[]()
proc QHeaderViewcurrentChanged*(self: gen_qheaderview_types.QHeaderView, current: gen_qabstractitemmodel_types.QModelIndex, old: gen_qabstractitemmodel_types.QModelIndex): void =
  fQHeaderView_virtualbase_currentChanged(self.h, current.h, old.h)

type QHeaderViewcurrentChangedProc* = proc(current: gen_qabstractitemmodel_types.QModelIndex, old: gen_qabstractitemmodel_types.QModelIndex): void
proc oncurrentChanged*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewcurrentChangedProc) =
  # TODO check subclass
  var tmp = new QHeaderViewcurrentChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_currentChanged(self: ptr cQHeaderView, slot: int, current: pointer, old: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_currentChanged ".} =
  var nimfunc = cast[ptr QHeaderViewcurrentChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: old)


  nimfunc[](slotval1, slotval2)
proc QHeaderViewevent*(self: gen_qheaderview_types.QHeaderView, e: gen_qcoreevent_types.QEvent): bool =
  fQHeaderView_virtualbase_event(self.h, e.h)

type QHeaderVieweventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderVieweventProc) =
  # TODO check subclass
  var tmp = new QHeaderVieweventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_event(self: ptr cQHeaderView, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QHeaderView_event ".} =
  var nimfunc = cast[ptr QHeaderVieweventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QHeaderViewpaintEvent*(self: gen_qheaderview_types.QHeaderView, e: gen_qevent_types.QPaintEvent): void =
  fQHeaderView_virtualbase_paintEvent(self.h, e.h)

type QHeaderViewpaintEventProc* = proc(e: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewpaintEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_paintEvent(self: ptr cQHeaderView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_paintEvent ".} =
  var nimfunc = cast[ptr QHeaderViewpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)


  nimfunc[](slotval1)
proc QHeaderViewmousePressEvent*(self: gen_qheaderview_types.QHeaderView, e: gen_qevent_types.QMouseEvent): void =
  fQHeaderView_virtualbase_mousePressEvent(self.h, e.h)

type QHeaderViewmousePressEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewmousePressEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_mousePressEvent(self: ptr cQHeaderView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_mousePressEvent ".} =
  var nimfunc = cast[ptr QHeaderViewmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QHeaderViewmouseMoveEvent*(self: gen_qheaderview_types.QHeaderView, e: gen_qevent_types.QMouseEvent): void =
  fQHeaderView_virtualbase_mouseMoveEvent(self.h, e.h)

type QHeaderViewmouseMoveEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_mouseMoveEvent(self: ptr cQHeaderView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QHeaderViewmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QHeaderViewmouseReleaseEvent*(self: gen_qheaderview_types.QHeaderView, e: gen_qevent_types.QMouseEvent): void =
  fQHeaderView_virtualbase_mouseReleaseEvent(self.h, e.h)

type QHeaderViewmouseReleaseEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_mouseReleaseEvent(self: ptr cQHeaderView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QHeaderViewmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QHeaderViewmouseDoubleClickEvent*(self: gen_qheaderview_types.QHeaderView, e: gen_qevent_types.QMouseEvent): void =
  fQHeaderView_virtualbase_mouseDoubleClickEvent(self.h, e.h)

type QHeaderViewmouseDoubleClickEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_mouseDoubleClickEvent(self: ptr cQHeaderView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QHeaderViewmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QHeaderViewviewportEvent*(self: gen_qheaderview_types.QHeaderView, e: gen_qcoreevent_types.QEvent): bool =
  fQHeaderView_virtualbase_viewportEvent(self.h, e.h)

type QHeaderViewviewportEventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onviewportEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewviewportEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_viewportEvent(self: ptr cQHeaderView, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QHeaderView_viewportEvent ".} =
  var nimfunc = cast[ptr QHeaderViewviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QHeaderViewpaintSection*(self: gen_qheaderview_types.QHeaderView, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, logicalIndex: cint): void =
  fQHeaderView_virtualbase_paintSection(self.h, painter.h, rect.h, logicalIndex)

type QHeaderViewpaintSectionProc* = proc(painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, logicalIndex: cint): void
proc onpaintSection*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewpaintSectionProc) =
  # TODO check subclass
  var tmp = new QHeaderViewpaintSectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_paintSection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_paintSection(self: ptr cQHeaderView, slot: int, painter: pointer, rect: pointer, logicalIndex: cint): void {.exportc: "miqt_exec_callback_QHeaderView_paintSection ".} =
  var nimfunc = cast[ptr QHeaderViewpaintSectionProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qrect_types.QRect(h: rect)

  let slotval3 = logicalIndex


  nimfunc[](slotval1, slotval2, slotval3)
proc QHeaderViewsectionSizeFromContents*(self: gen_qheaderview_types.QHeaderView, logicalIndex: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQHeaderView_virtualbase_sectionSizeFromContents(self.h, logicalIndex))

type QHeaderViewsectionSizeFromContentsProc* = proc(logicalIndex: cint): gen_qsize_types.QSize
proc onsectionSizeFromContents*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsectionSizeFromContentsProc) =
  # TODO check subclass
  var tmp = new QHeaderViewsectionSizeFromContentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_sectionSizeFromContents(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_sectionSizeFromContents(self: ptr cQHeaderView, slot: int, logicalIndex: cint): pointer {.exportc: "miqt_exec_callback_QHeaderView_sectionSizeFromContents ".} =
  var nimfunc = cast[ptr QHeaderViewsectionSizeFromContentsProc](cast[pointer](slot))
  let slotval1 = logicalIndex


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QHeaderViewhorizontalOffset*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fQHeaderView_virtualbase_horizontalOffset(self.h)

type QHeaderViewhorizontalOffsetProc* = proc(): cint
proc onhorizontalOffset*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewhorizontalOffsetProc) =
  # TODO check subclass
  var tmp = new QHeaderViewhorizontalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_horizontalOffset(self: ptr cQHeaderView, slot: int): cint {.exportc: "miqt_exec_callback_QHeaderView_horizontalOffset ".} =
  var nimfunc = cast[ptr QHeaderViewhorizontalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QHeaderViewverticalOffset*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fQHeaderView_virtualbase_verticalOffset(self.h)

type QHeaderViewverticalOffsetProc* = proc(): cint
proc onverticalOffset*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewverticalOffsetProc) =
  # TODO check subclass
  var tmp = new QHeaderViewverticalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_verticalOffset(self: ptr cQHeaderView, slot: int): cint {.exportc: "miqt_exec_callback_QHeaderView_verticalOffset ".} =
  var nimfunc = cast[ptr QHeaderViewverticalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QHeaderViewupdateGeometries*(self: gen_qheaderview_types.QHeaderView, ): void =
  fQHeaderView_virtualbase_updateGeometries(self.h)

type QHeaderViewupdateGeometriesProc* = proc(): void
proc onupdateGeometries*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewupdateGeometriesProc) =
  # TODO check subclass
  var tmp = new QHeaderViewupdateGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_updateGeometries(self: ptr cQHeaderView, slot: int): void {.exportc: "miqt_exec_callback_QHeaderView_updateGeometries ".} =
  var nimfunc = cast[ptr QHeaderViewupdateGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QHeaderViewscrollContentsBy*(self: gen_qheaderview_types.QHeaderView, dx: cint, dy: cint): void =
  fQHeaderView_virtualbase_scrollContentsBy(self.h, dx, dy)

type QHeaderViewscrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewscrollContentsByProc) =
  # TODO check subclass
  var tmp = new QHeaderViewscrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_scrollContentsBy(self: ptr cQHeaderView, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QHeaderView_scrollContentsBy ".} =
  var nimfunc = cast[ptr QHeaderViewscrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QHeaderViewdataChanged*(self: gen_qheaderview_types.QHeaderView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fQHeaderView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QHeaderViewdataChangedProc* = proc(topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewdataChangedProc) =
  # TODO check subclass
  var tmp = new QHeaderViewdataChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_dataChanged(self: ptr cQHeaderView, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QHeaderView_dataChanged ".} =
  var nimfunc = cast[ptr QHeaderViewdataChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](slotval1, slotval2, slotval3)
proc QHeaderViewrowsInserted*(self: gen_qheaderview_types.QHeaderView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQHeaderView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QHeaderViewrowsInsertedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewrowsInsertedProc) =
  # TODO check subclass
  var tmp = new QHeaderViewrowsInsertedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_rowsInserted(self: ptr cQHeaderView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QHeaderView_rowsInserted ".} =
  var nimfunc = cast[ptr QHeaderViewrowsInsertedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QHeaderViewvisualRect*(self: gen_qheaderview_types.QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQHeaderView_virtualbase_visualRect(self.h, index.h))

type QHeaderViewvisualRectProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect
proc onvisualRect*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewvisualRectProc) =
  # TODO check subclass
  var tmp = new QHeaderViewvisualRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_visualRect(self: ptr cQHeaderView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QHeaderView_visualRect ".} =
  var nimfunc = cast[ptr QHeaderViewvisualRectProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QHeaderViewscrollTo*(self: gen_qheaderview_types.QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fQHeaderView_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QHeaderViewscrollToProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void
proc onscrollTo*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewscrollToProc) =
  # TODO check subclass
  var tmp = new QHeaderViewscrollToProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_scrollTo(self: ptr cQHeaderView, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QHeaderView_scrollTo ".} =
  var nimfunc = cast[ptr QHeaderViewscrollToProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QHeaderViewindexAt*(self: gen_qheaderview_types.QHeaderView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQHeaderView_virtualbase_indexAt(self.h, p.h))

type QHeaderViewindexAtProc* = proc(p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex
proc onindexAt*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewindexAtProc) =
  # TODO check subclass
  var tmp = new QHeaderViewindexAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_indexAt(self: ptr cQHeaderView, slot: int, p: pointer): pointer {.exportc: "miqt_exec_callback_QHeaderView_indexAt ".} =
  var nimfunc = cast[ptr QHeaderViewindexAtProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: p)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QHeaderViewisIndexHidden*(self: gen_qheaderview_types.QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQHeaderView_virtualbase_isIndexHidden(self.h, index.h)

type QHeaderViewisIndexHiddenProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onisIndexHidden*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewisIndexHiddenProc) =
  # TODO check subclass
  var tmp = new QHeaderViewisIndexHiddenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_isIndexHidden(self: ptr cQHeaderView, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QHeaderView_isIndexHidden ".} =
  var nimfunc = cast[ptr QHeaderViewisIndexHiddenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QHeaderViewmoveCursor*(self: gen_qheaderview_types.QHeaderView, param1: cint, param2: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQHeaderView_virtualbase_moveCursor(self.h, cint(param1), cint(param2)))

type QHeaderViewmoveCursorProc* = proc(param1: cint, param2: cint): gen_qabstractitemmodel_types.QModelIndex
proc onmoveCursor*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewmoveCursorProc) =
  # TODO check subclass
  var tmp = new QHeaderViewmoveCursorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_moveCursor(self: ptr cQHeaderView, slot: int, param1: cint, param2: cint): pointer {.exportc: "miqt_exec_callback_QHeaderView_moveCursor ".} =
  var nimfunc = cast[ptr QHeaderViewmoveCursorProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = cint(param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QHeaderViewsetSelection*(self: gen_qheaderview_types.QHeaderView, rect: gen_qrect_types.QRect, flags: cint): void =
  fQHeaderView_virtualbase_setSelection(self.h, rect.h, cint(flags))

type QHeaderViewsetSelectionProc* = proc(rect: gen_qrect_types.QRect, flags: cint): void
proc onsetSelection*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsetSelectionProc) =
  # TODO check subclass
  var tmp = new QHeaderViewsetSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_setSelection(self: ptr cQHeaderView, slot: int, rect: pointer, flags: cint): void {.exportc: "miqt_exec_callback_QHeaderView_setSelection ".} =
  var nimfunc = cast[ptr QHeaderViewsetSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rect)

  let slotval2 = cint(flags)


  nimfunc[](slotval1, slotval2)
proc QHeaderViewvisualRegionForSelection*(self: gen_qheaderview_types.QHeaderView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fQHeaderView_virtualbase_visualRegionForSelection(self.h, selection.h))

type QHeaderViewvisualRegionForSelectionProc* = proc(selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion
proc onvisualRegionForSelection*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewvisualRegionForSelectionProc) =
  # TODO check subclass
  var tmp = new QHeaderViewvisualRegionForSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_visualRegionForSelection(self: ptr cQHeaderView, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QHeaderView_visualRegionForSelection ".} =
  var nimfunc = cast[ptr QHeaderViewvisualRegionForSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QHeaderViewsetSelectionModel*(self: gen_qheaderview_types.QHeaderView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fQHeaderView_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QHeaderViewsetSelectionModelProc* = proc(selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void
proc onsetSelectionModel*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsetSelectionModelProc) =
  # TODO check subclass
  var tmp = new QHeaderViewsetSelectionModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_setSelectionModel(self: ptr cQHeaderView, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_setSelectionModel ".} =
  var nimfunc = cast[ptr QHeaderViewsetSelectionModelProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)


  nimfunc[](slotval1)
proc QHeaderViewkeyboardSearch*(self: gen_qheaderview_types.QHeaderView, search: string): void =
  fQHeaderView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QHeaderViewkeyboardSearchProc* = proc(search: string): void
proc onkeyboardSearch*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewkeyboardSearchProc) =
  # TODO check subclass
  var tmp = new QHeaderViewkeyboardSearchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_keyboardSearch(self: ptr cQHeaderView, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QHeaderView_keyboardSearch ".} =
  var nimfunc = cast[ptr QHeaderViewkeyboardSearchProc](cast[pointer](slot))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](slotval1)
proc QHeaderViewsizeHintForRow*(self: gen_qheaderview_types.QHeaderView, row: cint): cint =
  fQHeaderView_virtualbase_sizeHintForRow(self.h, row)

type QHeaderViewsizeHintForRowProc* = proc(row: cint): cint
proc onsizeHintForRow*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsizeHintForRowProc) =
  # TODO check subclass
  var tmp = new QHeaderViewsizeHintForRowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_sizeHintForRow(self: ptr cQHeaderView, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QHeaderView_sizeHintForRow ".} =
  var nimfunc = cast[ptr QHeaderViewsizeHintForRowProc](cast[pointer](slot))
  let slotval1 = row


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QHeaderViewsizeHintForColumn*(self: gen_qheaderview_types.QHeaderView, column: cint): cint =
  fQHeaderView_virtualbase_sizeHintForColumn(self.h, column)

type QHeaderViewsizeHintForColumnProc* = proc(column: cint): cint
proc onsizeHintForColumn*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsizeHintForColumnProc) =
  # TODO check subclass
  var tmp = new QHeaderViewsizeHintForColumnProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_sizeHintForColumn(self: ptr cQHeaderView, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QHeaderView_sizeHintForColumn ".} =
  var nimfunc = cast[ptr QHeaderViewsizeHintForColumnProc](cast[pointer](slot))
  let slotval1 = column


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QHeaderViewinputMethodQuery*(self: gen_qheaderview_types.QHeaderView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQHeaderView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QHeaderViewinputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QHeaderViewinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_inputMethodQuery(self: ptr cQHeaderView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QHeaderView_inputMethodQuery ".} =
  var nimfunc = cast[ptr QHeaderViewinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QHeaderViewsetRootIndex*(self: gen_qheaderview_types.QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQHeaderView_virtualbase_setRootIndex(self.h, index.h)

type QHeaderViewsetRootIndexProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): void
proc onsetRootIndex*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsetRootIndexProc) =
  # TODO check subclass
  var tmp = new QHeaderViewsetRootIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_setRootIndex(self: ptr cQHeaderView, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_setRootIndex ".} =
  var nimfunc = cast[ptr QHeaderViewsetRootIndexProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1)
proc QHeaderViewselectAll*(self: gen_qheaderview_types.QHeaderView, ): void =
  fQHeaderView_virtualbase_selectAll(self.h)

type QHeaderViewselectAllProc* = proc(): void
proc onselectAll*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewselectAllProc) =
  # TODO check subclass
  var tmp = new QHeaderViewselectAllProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_selectAll(self: ptr cQHeaderView, slot: int): void {.exportc: "miqt_exec_callback_QHeaderView_selectAll ".} =
  var nimfunc = cast[ptr QHeaderViewselectAllProc](cast[pointer](slot))

  nimfunc[]()
proc QHeaderViewrowsAboutToBeRemoved*(self: gen_qheaderview_types.QHeaderView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQHeaderView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QHeaderViewrowsAboutToBeRemovedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewrowsAboutToBeRemovedProc) =
  # TODO check subclass
  var tmp = new QHeaderViewrowsAboutToBeRemovedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_rowsAboutToBeRemoved(self: ptr cQHeaderView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QHeaderView_rowsAboutToBeRemoved ".} =
  var nimfunc = cast[ptr QHeaderViewrowsAboutToBeRemovedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QHeaderViewselectionChanged*(self: gen_qheaderview_types.QHeaderView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fQHeaderView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QHeaderViewselectionChangedProc* = proc(selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void
proc onselectionChanged*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewselectionChangedProc) =
  # TODO check subclass
  var tmp = new QHeaderViewselectionChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_selectionChanged(self: ptr cQHeaderView, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_selectionChanged ".} =
  var nimfunc = cast[ptr QHeaderViewselectionChangedProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)


  nimfunc[](slotval1, slotval2)
proc QHeaderViewupdateEditorData*(self: gen_qheaderview_types.QHeaderView, ): void =
  fQHeaderView_virtualbase_updateEditorData(self.h)

type QHeaderViewupdateEditorDataProc* = proc(): void
proc onupdateEditorData*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewupdateEditorDataProc) =
  # TODO check subclass
  var tmp = new QHeaderViewupdateEditorDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_updateEditorData(self: ptr cQHeaderView, slot: int): void {.exportc: "miqt_exec_callback_QHeaderView_updateEditorData ".} =
  var nimfunc = cast[ptr QHeaderViewupdateEditorDataProc](cast[pointer](slot))

  nimfunc[]()
proc QHeaderViewupdateEditorGeometries*(self: gen_qheaderview_types.QHeaderView, ): void =
  fQHeaderView_virtualbase_updateEditorGeometries(self.h)

type QHeaderViewupdateEditorGeometriesProc* = proc(): void
proc onupdateEditorGeometries*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewupdateEditorGeometriesProc) =
  # TODO check subclass
  var tmp = new QHeaderViewupdateEditorGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_updateEditorGeometries(self: ptr cQHeaderView, slot: int): void {.exportc: "miqt_exec_callback_QHeaderView_updateEditorGeometries ".} =
  var nimfunc = cast[ptr QHeaderViewupdateEditorGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QHeaderViewverticalScrollbarAction*(self: gen_qheaderview_types.QHeaderView, action: cint): void =
  fQHeaderView_virtualbase_verticalScrollbarAction(self.h, action)

type QHeaderViewverticalScrollbarActionProc* = proc(action: cint): void
proc onverticalScrollbarAction*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewverticalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QHeaderViewverticalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_verticalScrollbarAction(self: ptr cQHeaderView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QHeaderView_verticalScrollbarAction ".} =
  var nimfunc = cast[ptr QHeaderViewverticalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QHeaderViewhorizontalScrollbarAction*(self: gen_qheaderview_types.QHeaderView, action: cint): void =
  fQHeaderView_virtualbase_horizontalScrollbarAction(self.h, action)

type QHeaderViewhorizontalScrollbarActionProc* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewhorizontalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QHeaderViewhorizontalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_horizontalScrollbarAction(self: ptr cQHeaderView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QHeaderView_horizontalScrollbarAction ".} =
  var nimfunc = cast[ptr QHeaderViewhorizontalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QHeaderViewverticalScrollbarValueChanged*(self: gen_qheaderview_types.QHeaderView, value: cint): void =
  fQHeaderView_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QHeaderViewverticalScrollbarValueChangedProc* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewverticalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QHeaderViewverticalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_verticalScrollbarValueChanged(self: ptr cQHeaderView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QHeaderView_verticalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QHeaderViewverticalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QHeaderViewhorizontalScrollbarValueChanged*(self: gen_qheaderview_types.QHeaderView, value: cint): void =
  fQHeaderView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QHeaderViewhorizontalScrollbarValueChangedProc* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewhorizontalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QHeaderViewhorizontalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_horizontalScrollbarValueChanged(self: ptr cQHeaderView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QHeaderView_horizontalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QHeaderViewhorizontalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QHeaderViewcloseEditor*(self: gen_qheaderview_types.QHeaderView, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fQHeaderView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QHeaderViewcloseEditorProc* = proc(editor: gen_qwidget_types.QWidget, hint: cint): void
proc oncloseEditor*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewcloseEditorProc) =
  # TODO check subclass
  var tmp = new QHeaderViewcloseEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_closeEditor(self: ptr cQHeaderView, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QHeaderView_closeEditor ".} =
  var nimfunc = cast[ptr QHeaderViewcloseEditorProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QHeaderViewcommitData*(self: gen_qheaderview_types.QHeaderView, editor: gen_qwidget_types.QWidget): void =
  fQHeaderView_virtualbase_commitData(self.h, editor.h)

type QHeaderViewcommitDataProc* = proc(editor: gen_qwidget_types.QWidget): void
proc oncommitData*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewcommitDataProc) =
  # TODO check subclass
  var tmp = new QHeaderViewcommitDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_commitData(self: ptr cQHeaderView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_commitData ".} =
  var nimfunc = cast[ptr QHeaderViewcommitDataProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)


  nimfunc[](slotval1)
proc QHeaderVieweditorDestroyed*(self: gen_qheaderview_types.QHeaderView, editor: gen_qobject_types.QObject): void =
  fQHeaderView_virtualbase_editorDestroyed(self.h, editor.h)

type QHeaderVieweditorDestroyedProc* = proc(editor: gen_qobject_types.QObject): void
proc oneditorDestroyed*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderVieweditorDestroyedProc) =
  # TODO check subclass
  var tmp = new QHeaderVieweditorDestroyedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_editorDestroyed(self: ptr cQHeaderView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_editorDestroyed ".} =
  var nimfunc = cast[ptr QHeaderVieweditorDestroyedProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: editor)


  nimfunc[](slotval1)
proc QHeaderViewselectedIndexes*(self: gen_qheaderview_types.QHeaderView, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQHeaderView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QHeaderViewselectedIndexesProc* = proc(): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onselectedIndexes*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewselectedIndexesProc) =
  # TODO check subclass
  var tmp = new QHeaderViewselectedIndexesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_selectedIndexes(self: ptr cQHeaderView, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QHeaderView_selectedIndexes ".} =
  var nimfunc = cast[ptr QHeaderViewselectedIndexesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QHeaderViewedit*(self: gen_qheaderview_types.QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fQHeaderView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QHeaderViewedit2Proc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool
proc onedit*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewedit2Proc) =
  # TODO check subclass
  var tmp = new QHeaderViewedit2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_edit2(self: ptr cQHeaderView, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QHeaderView_edit2 ".} =
  var nimfunc = cast[ptr QHeaderViewedit2Proc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(trigger)

  let slotval3 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QHeaderViewselectionCommand*(self: gen_qheaderview_types.QHeaderView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fQHeaderView_virtualbase_selectionCommand(self.h, index.h, event.h))

type QHeaderViewselectionCommandProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint
proc onselectionCommand*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewselectionCommandProc) =
  # TODO check subclass
  var tmp = new QHeaderViewselectionCommandProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_selectionCommand(self: ptr cQHeaderView, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QHeaderView_selectionCommand ".} =
  var nimfunc = cast[ptr QHeaderViewselectionCommandProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QHeaderViewstartDrag*(self: gen_qheaderview_types.QHeaderView, supportedActions: cint): void =
  fQHeaderView_virtualbase_startDrag(self.h, cint(supportedActions))

type QHeaderViewstartDragProc* = proc(supportedActions: cint): void
proc onstartDrag*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewstartDragProc) =
  # TODO check subclass
  var tmp = new QHeaderViewstartDragProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_startDrag(self: ptr cQHeaderView, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QHeaderView_startDrag ".} =
  var nimfunc = cast[ptr QHeaderViewstartDragProc](cast[pointer](slot))
  let slotval1 = cint(supportedActions)


  nimfunc[](slotval1)
proc QHeaderViewviewOptions*(self: gen_qheaderview_types.QHeaderView, ): gen_qstyleoption_types.QStyleOptionViewItem =
  gen_qstyleoption_types.QStyleOptionViewItem(h: fQHeaderView_virtualbase_viewOptions(self.h))

type QHeaderViewviewOptionsProc* = proc(): gen_qstyleoption_types.QStyleOptionViewItem
proc onviewOptions*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewviewOptionsProc) =
  # TODO check subclass
  var tmp = new QHeaderViewviewOptionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_viewOptions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_viewOptions(self: ptr cQHeaderView, slot: int): pointer {.exportc: "miqt_exec_callback_QHeaderView_viewOptions ".} =
  var nimfunc = cast[ptr QHeaderViewviewOptionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QHeaderViewfocusNextPrevChild*(self: gen_qheaderview_types.QHeaderView, next: bool): bool =
  fQHeaderView_virtualbase_focusNextPrevChild(self.h, next)

type QHeaderViewfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QHeaderViewfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_focusNextPrevChild(self: ptr cQHeaderView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QHeaderView_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QHeaderViewfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QHeaderViewdragEnterEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QDragEnterEvent): void =
  fQHeaderView_virtualbase_dragEnterEvent(self.h, event.h)

type QHeaderViewdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_dragEnterEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_dragEnterEvent ".} =
  var nimfunc = cast[ptr QHeaderViewdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewdragMoveEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QDragMoveEvent): void =
  fQHeaderView_virtualbase_dragMoveEvent(self.h, event.h)

type QHeaderViewdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_dragMoveEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_dragMoveEvent ".} =
  var nimfunc = cast[ptr QHeaderViewdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewdragLeaveEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QDragLeaveEvent): void =
  fQHeaderView_virtualbase_dragLeaveEvent(self.h, event.h)

type QHeaderViewdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_dragLeaveEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QHeaderViewdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewdropEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QDropEvent): void =
  fQHeaderView_virtualbase_dropEvent(self.h, event.h)

type QHeaderViewdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewdropEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_dropEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_dropEvent ".} =
  var nimfunc = cast[ptr QHeaderViewdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewfocusInEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QFocusEvent): void =
  fQHeaderView_virtualbase_focusInEvent(self.h, event.h)

type QHeaderViewfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewfocusInEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_focusInEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_focusInEvent ".} =
  var nimfunc = cast[ptr QHeaderViewfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewfocusOutEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QFocusEvent): void =
  fQHeaderView_virtualbase_focusOutEvent(self.h, event.h)

type QHeaderViewfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_focusOutEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_focusOutEvent ".} =
  var nimfunc = cast[ptr QHeaderViewfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewkeyPressEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QKeyEvent): void =
  fQHeaderView_virtualbase_keyPressEvent(self.h, event.h)

type QHeaderViewkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_keyPressEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_keyPressEvent ".} =
  var nimfunc = cast[ptr QHeaderViewkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewresizeEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QResizeEvent): void =
  fQHeaderView_virtualbase_resizeEvent(self.h, event.h)

type QHeaderViewresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewresizeEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_resizeEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_resizeEvent ".} =
  var nimfunc = cast[ptr QHeaderViewresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewtimerEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qcoreevent_types.QTimerEvent): void =
  fQHeaderView_virtualbase_timerEvent(self.h, event.h)

type QHeaderViewtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewtimerEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_timerEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_timerEvent ".} =
  var nimfunc = cast[ptr QHeaderViewtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewinputMethodEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QInputMethodEvent): void =
  fQHeaderView_virtualbase_inputMethodEvent(self.h, event.h)

type QHeaderViewinputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_inputMethodEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_inputMethodEvent ".} =
  var nimfunc = cast[ptr QHeaderViewinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderVieweventFilter*(self: gen_qheaderview_types.QHeaderView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQHeaderView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QHeaderVieweventFilterProc* = proc(objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderVieweventFilterProc) =
  # TODO check subclass
  var tmp = new QHeaderVieweventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_eventFilter(self: ptr cQHeaderView, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QHeaderView_eventFilter ".} =
  var nimfunc = cast[ptr QHeaderVieweventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QHeaderViewviewportSizeHint*(self: gen_qheaderview_types.QHeaderView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQHeaderView_virtualbase_viewportSizeHint(self.h))

type QHeaderViewviewportSizeHintProc* = proc(): gen_qsize_types.QSize
proc onviewportSizeHint*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QHeaderViewviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_viewportSizeHint(self: ptr cQHeaderView, slot: int): pointer {.exportc: "miqt_exec_callback_QHeaderView_viewportSizeHint ".} =
  var nimfunc = cast[ptr QHeaderViewviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QHeaderViewminimumSizeHint*(self: gen_qheaderview_types.QHeaderView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQHeaderView_virtualbase_minimumSizeHint(self.h))

type QHeaderViewminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QHeaderViewminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_minimumSizeHint(self: ptr cQHeaderView, slot: int): pointer {.exportc: "miqt_exec_callback_QHeaderView_minimumSizeHint ".} =
  var nimfunc = cast[ptr QHeaderViewminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QHeaderViewsetupViewport*(self: gen_qheaderview_types.QHeaderView, viewport: gen_qwidget_types.QWidget): void =
  fQHeaderView_virtualbase_setupViewport(self.h, viewport.h)

type QHeaderViewsetupViewportProc* = proc(viewport: gen_qwidget_types.QWidget): void
proc onsetupViewport*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsetupViewportProc) =
  # TODO check subclass
  var tmp = new QHeaderViewsetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_setupViewport(self: ptr cQHeaderView, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_setupViewport ".} =
  var nimfunc = cast[ptr QHeaderViewsetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QHeaderViewwheelEvent*(self: gen_qheaderview_types.QHeaderView, param1: gen_qevent_types.QWheelEvent): void =
  fQHeaderView_virtualbase_wheelEvent(self.h, param1.h)

type QHeaderViewwheelEventProc* = proc(param1: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewwheelEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_wheelEvent(self: ptr cQHeaderView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_wheelEvent ".} =
  var nimfunc = cast[ptr QHeaderViewwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QHeaderViewcontextMenuEvent*(self: gen_qheaderview_types.QHeaderView, param1: gen_qevent_types.QContextMenuEvent): void =
  fQHeaderView_virtualbase_contextMenuEvent(self.h, param1.h)

type QHeaderViewcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_contextMenuEvent(self: ptr cQHeaderView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_contextMenuEvent ".} =
  var nimfunc = cast[ptr QHeaderViewcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QHeaderViewchangeEvent*(self: gen_qheaderview_types.QHeaderView, param1: gen_qcoreevent_types.QEvent): void =
  fQHeaderView_virtualbase_changeEvent(self.h, param1.h)

type QHeaderViewchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewchangeEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_changeEvent(self: ptr cQHeaderView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_changeEvent ".} =
  var nimfunc = cast[ptr QHeaderViewchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QHeaderViewdevType*(self: gen_qheaderview_types.QHeaderView, ): cint =
  fQHeaderView_virtualbase_devType(self.h)

type QHeaderViewdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewdevTypeProc) =
  # TODO check subclass
  var tmp = new QHeaderViewdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_devType(self: ptr cQHeaderView, slot: int): cint {.exportc: "miqt_exec_callback_QHeaderView_devType ".} =
  var nimfunc = cast[ptr QHeaderViewdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QHeaderViewheightForWidth*(self: gen_qheaderview_types.QHeaderView, param1: cint): cint =
  fQHeaderView_virtualbase_heightForWidth(self.h, param1)

type QHeaderViewheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewheightForWidthProc) =
  # TODO check subclass
  var tmp = new QHeaderViewheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_heightForWidth(self: ptr cQHeaderView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QHeaderView_heightForWidth ".} =
  var nimfunc = cast[ptr QHeaderViewheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QHeaderViewhasHeightForWidth*(self: gen_qheaderview_types.QHeaderView, ): bool =
  fQHeaderView_virtualbase_hasHeightForWidth(self.h)

type QHeaderViewhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QHeaderViewhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_hasHeightForWidth(self: ptr cQHeaderView, slot: int): bool {.exportc: "miqt_exec_callback_QHeaderView_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QHeaderViewhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QHeaderViewpaintEngine*(self: gen_qheaderview_types.QHeaderView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQHeaderView_virtualbase_paintEngine(self.h))

type QHeaderViewpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewpaintEngineProc) =
  # TODO check subclass
  var tmp = new QHeaderViewpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_paintEngine(self: ptr cQHeaderView, slot: int): pointer {.exportc: "miqt_exec_callback_QHeaderView_paintEngine ".} =
  var nimfunc = cast[ptr QHeaderViewpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QHeaderViewkeyReleaseEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QKeyEvent): void =
  fQHeaderView_virtualbase_keyReleaseEvent(self.h, event.h)

type QHeaderViewkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_keyReleaseEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QHeaderViewkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewenterEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qcoreevent_types.QEvent): void =
  fQHeaderView_virtualbase_enterEvent(self.h, event.h)

type QHeaderViewenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewenterEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_enterEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_enterEvent ".} =
  var nimfunc = cast[ptr QHeaderViewenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewleaveEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qcoreevent_types.QEvent): void =
  fQHeaderView_virtualbase_leaveEvent(self.h, event.h)

type QHeaderViewleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewleaveEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_leaveEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_leaveEvent ".} =
  var nimfunc = cast[ptr QHeaderViewleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewmoveEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QMoveEvent): void =
  fQHeaderView_virtualbase_moveEvent(self.h, event.h)

type QHeaderViewmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewmoveEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_moveEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_moveEvent ".} =
  var nimfunc = cast[ptr QHeaderViewmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewcloseEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QCloseEvent): void =
  fQHeaderView_virtualbase_closeEvent(self.h, event.h)

type QHeaderViewcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewcloseEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_closeEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_closeEvent ".} =
  var nimfunc = cast[ptr QHeaderViewcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewtabletEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QTabletEvent): void =
  fQHeaderView_virtualbase_tabletEvent(self.h, event.h)

type QHeaderViewtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewtabletEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_tabletEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_tabletEvent ".} =
  var nimfunc = cast[ptr QHeaderViewtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewactionEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QActionEvent): void =
  fQHeaderView_virtualbase_actionEvent(self.h, event.h)

type QHeaderViewactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewactionEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_actionEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_actionEvent ".} =
  var nimfunc = cast[ptr QHeaderViewactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewshowEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QShowEvent): void =
  fQHeaderView_virtualbase_showEvent(self.h, event.h)

type QHeaderViewshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewshowEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_showEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_showEvent ".} =
  var nimfunc = cast[ptr QHeaderViewshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewhideEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qevent_types.QHideEvent): void =
  fQHeaderView_virtualbase_hideEvent(self.h, event.h)

type QHeaderViewhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewhideEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_hideEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_hideEvent ".} =
  var nimfunc = cast[ptr QHeaderViewhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewnativeEvent*(self: gen_qheaderview_types.QHeaderView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQHeaderView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QHeaderViewnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewnativeEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_nativeEvent(self: ptr cQHeaderView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QHeaderView_nativeEvent ".} =
  var nimfunc = cast[ptr QHeaderViewnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QHeaderViewmetric*(self: gen_qheaderview_types.QHeaderView, param1: cint): cint =
  fQHeaderView_virtualbase_metric(self.h, cint(param1))

type QHeaderViewmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewmetricProc) =
  # TODO check subclass
  var tmp = new QHeaderViewmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_metric(self: ptr cQHeaderView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QHeaderView_metric ".} =
  var nimfunc = cast[ptr QHeaderViewmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QHeaderViewinitPainter*(self: gen_qheaderview_types.QHeaderView, painter: gen_qpainter_types.QPainter): void =
  fQHeaderView_virtualbase_initPainter(self.h, painter.h)

type QHeaderViewinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewinitPainterProc) =
  # TODO check subclass
  var tmp = new QHeaderViewinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_initPainter(self: ptr cQHeaderView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_initPainter ".} =
  var nimfunc = cast[ptr QHeaderViewinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QHeaderViewredirected*(self: gen_qheaderview_types.QHeaderView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQHeaderView_virtualbase_redirected(self.h, offset.h))

type QHeaderViewredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewredirectedProc) =
  # TODO check subclass
  var tmp = new QHeaderViewredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_redirected(self: ptr cQHeaderView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QHeaderView_redirected ".} =
  var nimfunc = cast[ptr QHeaderViewredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QHeaderViewsharedPainter*(self: gen_qheaderview_types.QHeaderView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQHeaderView_virtualbase_sharedPainter(self.h))

type QHeaderViewsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewsharedPainterProc) =
  # TODO check subclass
  var tmp = new QHeaderViewsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_sharedPainter(self: ptr cQHeaderView, slot: int): pointer {.exportc: "miqt_exec_callback_QHeaderView_sharedPainter ".} =
  var nimfunc = cast[ptr QHeaderViewsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QHeaderViewchildEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qcoreevent_types.QChildEvent): void =
  fQHeaderView_virtualbase_childEvent(self.h, event.h)

type QHeaderViewchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewchildEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_childEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_childEvent ".} =
  var nimfunc = cast[ptr QHeaderViewchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewcustomEvent*(self: gen_qheaderview_types.QHeaderView, event: gen_qcoreevent_types.QEvent): void =
  fQHeaderView_virtualbase_customEvent(self.h, event.h)

type QHeaderViewcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewcustomEventProc) =
  # TODO check subclass
  var tmp = new QHeaderViewcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_customEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_customEvent ".} =
  var nimfunc = cast[ptr QHeaderViewcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QHeaderViewconnectNotify*(self: gen_qheaderview_types.QHeaderView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQHeaderView_virtualbase_connectNotify(self.h, signal.h)

type QHeaderViewconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QHeaderViewconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_connectNotify(self: ptr cQHeaderView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_connectNotify ".} =
  var nimfunc = cast[ptr QHeaderViewconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QHeaderViewdisconnectNotify*(self: gen_qheaderview_types.QHeaderView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQHeaderView_virtualbase_disconnectNotify(self.h, signal.h)

type QHeaderViewdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qheaderview_types.QHeaderView, slot: QHeaderViewdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QHeaderViewdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_disconnectNotify(self: ptr cQHeaderView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_disconnectNotify ".} =
  var nimfunc = cast[ptr QHeaderViewdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qheaderview_types.QHeaderView) =
  fcQHeaderView_delete(self.h)
