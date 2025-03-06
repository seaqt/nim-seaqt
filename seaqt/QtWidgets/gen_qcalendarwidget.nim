import ./Qt6Widgets_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
{.compile("gen_qcalendarwidget.cpp", cflags).}


type QCalendarWidgetHorizontalHeaderFormatEnum* = distinct cint
template NoHorizontalHeader*(_: type QCalendarWidgetHorizontalHeaderFormatEnum): untyped = 0
template SingleLetterDayNames*(_: type QCalendarWidgetHorizontalHeaderFormatEnum): untyped = 1
template ShortDayNames*(_: type QCalendarWidgetHorizontalHeaderFormatEnum): untyped = 2
template LongDayNames*(_: type QCalendarWidgetHorizontalHeaderFormatEnum): untyped = 3


type QCalendarWidgetVerticalHeaderFormatEnum* = distinct cint
template NoVerticalHeader*(_: type QCalendarWidgetVerticalHeaderFormatEnum): untyped = 0
template ISOWeekNumbers*(_: type QCalendarWidgetVerticalHeaderFormatEnum): untyped = 1


type QCalendarWidgetSelectionModeEnum* = distinct cint
template NoSelection*(_: type QCalendarWidgetSelectionModeEnum): untyped = 0
template SingleSelection*(_: type QCalendarWidgetSelectionModeEnum): untyped = 1


import ./gen_qcalendarwidget_types
export gen_qcalendarwidget_types

import
  ../QtCore/gen_qcalendar_types,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qdatetime_types,
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
  ../QtGui/gen_qtextformat_types,
  ./gen_qwidget,
  std/tables
export
  gen_qcalendar_types,
  gen_qcoreevent_types,
  gen_qdatetime_types,
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
  gen_qtextformat_types,
  gen_qwidget

type cQCalendarWidget*{.exportc: "QCalendarWidget", incompleteStruct.} = object

proc fcQCalendarWidget_metaObject(self: pointer, ): pointer {.importc: "QCalendarWidget_metaObject".}
proc fcQCalendarWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QCalendarWidget_metacast".}
proc fcQCalendarWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCalendarWidget_metacall".}
proc fcQCalendarWidget_tr(s: cstring): struct_miqt_string {.importc: "QCalendarWidget_tr".}
proc fcQCalendarWidget_sizeHint(self: pointer, ): pointer {.importc: "QCalendarWidget_sizeHint".}
proc fcQCalendarWidget_minimumSizeHint(self: pointer, ): pointer {.importc: "QCalendarWidget_minimumSizeHint".}
proc fcQCalendarWidget_selectedDate(self: pointer, ): pointer {.importc: "QCalendarWidget_selectedDate".}
proc fcQCalendarWidget_yearShown(self: pointer, ): cint {.importc: "QCalendarWidget_yearShown".}
proc fcQCalendarWidget_monthShown(self: pointer, ): cint {.importc: "QCalendarWidget_monthShown".}
proc fcQCalendarWidget_minimumDate(self: pointer, ): pointer {.importc: "QCalendarWidget_minimumDate".}
proc fcQCalendarWidget_setMinimumDate(self: pointer, date: pointer): void {.importc: "QCalendarWidget_setMinimumDate".}
proc fcQCalendarWidget_maximumDate(self: pointer, ): pointer {.importc: "QCalendarWidget_maximumDate".}
proc fcQCalendarWidget_setMaximumDate(self: pointer, date: pointer): void {.importc: "QCalendarWidget_setMaximumDate".}
proc fcQCalendarWidget_firstDayOfWeek(self: pointer, ): cint {.importc: "QCalendarWidget_firstDayOfWeek".}
proc fcQCalendarWidget_setFirstDayOfWeek(self: pointer, dayOfWeek: cint): void {.importc: "QCalendarWidget_setFirstDayOfWeek".}
proc fcQCalendarWidget_isNavigationBarVisible(self: pointer, ): bool {.importc: "QCalendarWidget_isNavigationBarVisible".}
proc fcQCalendarWidget_isGridVisible(self: pointer, ): bool {.importc: "QCalendarWidget_isGridVisible".}
proc fcQCalendarWidget_calendar(self: pointer, ): pointer {.importc: "QCalendarWidget_calendar".}
proc fcQCalendarWidget_setCalendar(self: pointer, calendar: pointer): void {.importc: "QCalendarWidget_setCalendar".}
proc fcQCalendarWidget_selectionMode(self: pointer, ): cint {.importc: "QCalendarWidget_selectionMode".}
proc fcQCalendarWidget_setSelectionMode(self: pointer, mode: cint): void {.importc: "QCalendarWidget_setSelectionMode".}
proc fcQCalendarWidget_horizontalHeaderFormat(self: pointer, ): cint {.importc: "QCalendarWidget_horizontalHeaderFormat".}
proc fcQCalendarWidget_setHorizontalHeaderFormat(self: pointer, format: cint): void {.importc: "QCalendarWidget_setHorizontalHeaderFormat".}
proc fcQCalendarWidget_verticalHeaderFormat(self: pointer, ): cint {.importc: "QCalendarWidget_verticalHeaderFormat".}
proc fcQCalendarWidget_setVerticalHeaderFormat(self: pointer, format: cint): void {.importc: "QCalendarWidget_setVerticalHeaderFormat".}
proc fcQCalendarWidget_headerTextFormat(self: pointer, ): pointer {.importc: "QCalendarWidget_headerTextFormat".}
proc fcQCalendarWidget_setHeaderTextFormat(self: pointer, format: pointer): void {.importc: "QCalendarWidget_setHeaderTextFormat".}
proc fcQCalendarWidget_weekdayTextFormat(self: pointer, dayOfWeek: cint): pointer {.importc: "QCalendarWidget_weekdayTextFormat".}
proc fcQCalendarWidget_setWeekdayTextFormat(self: pointer, dayOfWeek: cint, format: pointer): void {.importc: "QCalendarWidget_setWeekdayTextFormat".}
proc fcQCalendarWidget_dateTextFormat(self: pointer, ): struct_miqt_map {.importc: "QCalendarWidget_dateTextFormat".}
proc fcQCalendarWidget_dateTextFormatWithDate(self: pointer, date: pointer): pointer {.importc: "QCalendarWidget_dateTextFormatWithDate".}
proc fcQCalendarWidget_setDateTextFormat(self: pointer, date: pointer, format: pointer): void {.importc: "QCalendarWidget_setDateTextFormat".}
proc fcQCalendarWidget_isDateEditEnabled(self: pointer, ): bool {.importc: "QCalendarWidget_isDateEditEnabled".}
proc fcQCalendarWidget_setDateEditEnabled(self: pointer, enable: bool): void {.importc: "QCalendarWidget_setDateEditEnabled".}
proc fcQCalendarWidget_dateEditAcceptDelay(self: pointer, ): cint {.importc: "QCalendarWidget_dateEditAcceptDelay".}
proc fcQCalendarWidget_setDateEditAcceptDelay(self: pointer, delay: cint): void {.importc: "QCalendarWidget_setDateEditAcceptDelay".}
proc fcQCalendarWidget_setSelectedDate(self: pointer, date: pointer): void {.importc: "QCalendarWidget_setSelectedDate".}
proc fcQCalendarWidget_setDateRange(self: pointer, min: pointer, max: pointer): void {.importc: "QCalendarWidget_setDateRange".}
proc fcQCalendarWidget_setCurrentPage(self: pointer, year: cint, month: cint): void {.importc: "QCalendarWidget_setCurrentPage".}
proc fcQCalendarWidget_setGridVisible(self: pointer, show: bool): void {.importc: "QCalendarWidget_setGridVisible".}
proc fcQCalendarWidget_setNavigationBarVisible(self: pointer, visible: bool): void {.importc: "QCalendarWidget_setNavigationBarVisible".}
proc fcQCalendarWidget_showNextMonth(self: pointer, ): void {.importc: "QCalendarWidget_showNextMonth".}
proc fcQCalendarWidget_showPreviousMonth(self: pointer, ): void {.importc: "QCalendarWidget_showPreviousMonth".}
proc fcQCalendarWidget_showNextYear(self: pointer, ): void {.importc: "QCalendarWidget_showNextYear".}
proc fcQCalendarWidget_showPreviousYear(self: pointer, ): void {.importc: "QCalendarWidget_showPreviousYear".}
proc fcQCalendarWidget_showSelectedDate(self: pointer, ): void {.importc: "QCalendarWidget_showSelectedDate".}
proc fcQCalendarWidget_showToday(self: pointer, ): void {.importc: "QCalendarWidget_showToday".}
proc fcQCalendarWidget_selectionChanged(self: pointer, ): void {.importc: "QCalendarWidget_selectionChanged".}
proc fcQCalendarWidget_connect_selectionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCalendarWidget_connect_selectionChanged".}
proc fcQCalendarWidget_clicked(self: pointer, date: pointer): void {.importc: "QCalendarWidget_clicked".}
proc fcQCalendarWidget_connect_clicked(self: pointer, slot: int, callback: proc (slot: int, date: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCalendarWidget_connect_clicked".}
proc fcQCalendarWidget_activated(self: pointer, date: pointer): void {.importc: "QCalendarWidget_activated".}
proc fcQCalendarWidget_connect_activated(self: pointer, slot: int, callback: proc (slot: int, date: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCalendarWidget_connect_activated".}
proc fcQCalendarWidget_currentPageChanged(self: pointer, year: cint, month: cint): void {.importc: "QCalendarWidget_currentPageChanged".}
proc fcQCalendarWidget_connect_currentPageChanged(self: pointer, slot: int, callback: proc (slot: int, year: cint, month: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCalendarWidget_connect_currentPageChanged".}
proc fcQCalendarWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCalendarWidget_tr2".}
proc fcQCalendarWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCalendarWidget_tr3".}
type cQCalendarWidgetVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQCalendarWidgetVTable, self: ptr cQCalendarWidget) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintCell*: proc(vtbl, self: pointer, painter: pointer, rect: pointer, date: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQCalendarWidget_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QCalendarWidget_virtualbase_metaObject".}
proc fcQCalendarWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QCalendarWidget_virtualbase_metacast".}
proc fcQCalendarWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCalendarWidget_virtualbase_metacall".}
proc fcQCalendarWidget_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QCalendarWidget_virtualbase_sizeHint".}
proc fcQCalendarWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QCalendarWidget_virtualbase_minimumSizeHint".}
proc fcQCalendarWidget_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QCalendarWidget_virtualbase_event".}
proc fcQCalendarWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QCalendarWidget_virtualbase_eventFilter".}
proc fcQCalendarWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_mousePressEvent".}
proc fcQCalendarWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_resizeEvent".}
proc fcQCalendarWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_keyPressEvent".}
proc fcQCalendarWidget_virtualbase_paintCell(self: pointer, painter: pointer, rect: pointer, date: pointer): void {.importc: "QCalendarWidget_virtualbase_paintCell".}
proc fcQCalendarWidget_virtualbase_devType(self: pointer, ): cint {.importc: "QCalendarWidget_virtualbase_devType".}
proc fcQCalendarWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QCalendarWidget_virtualbase_setVisible".}
proc fcQCalendarWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QCalendarWidget_virtualbase_heightForWidth".}
proc fcQCalendarWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QCalendarWidget_virtualbase_hasHeightForWidth".}
proc fcQCalendarWidget_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QCalendarWidget_virtualbase_paintEngine".}
proc fcQCalendarWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_mouseReleaseEvent".}
proc fcQCalendarWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQCalendarWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_mouseMoveEvent".}
proc fcQCalendarWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_wheelEvent".}
proc fcQCalendarWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_keyReleaseEvent".}
proc fcQCalendarWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_focusInEvent".}
proc fcQCalendarWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_focusOutEvent".}
proc fcQCalendarWidget_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_enterEvent".}
proc fcQCalendarWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_leaveEvent".}
proc fcQCalendarWidget_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_paintEvent".}
proc fcQCalendarWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_moveEvent".}
proc fcQCalendarWidget_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_closeEvent".}
proc fcQCalendarWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_contextMenuEvent".}
proc fcQCalendarWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_tabletEvent".}
proc fcQCalendarWidget_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_actionEvent".}
proc fcQCalendarWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_dragEnterEvent".}
proc fcQCalendarWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_dragMoveEvent".}
proc fcQCalendarWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_dragLeaveEvent".}
proc fcQCalendarWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_dropEvent".}
proc fcQCalendarWidget_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_showEvent".}
proc fcQCalendarWidget_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_hideEvent".}
proc fcQCalendarWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QCalendarWidget_virtualbase_nativeEvent".}
proc fcQCalendarWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QCalendarWidget_virtualbase_changeEvent".}
proc fcQCalendarWidget_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QCalendarWidget_virtualbase_metric".}
proc fcQCalendarWidget_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QCalendarWidget_virtualbase_initPainter".}
proc fcQCalendarWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QCalendarWidget_virtualbase_redirected".}
proc fcQCalendarWidget_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QCalendarWidget_virtualbase_sharedPainter".}
proc fcQCalendarWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QCalendarWidget_virtualbase_inputMethodEvent".}
proc fcQCalendarWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QCalendarWidget_virtualbase_inputMethodQuery".}
proc fcQCalendarWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QCalendarWidget_virtualbase_focusNextPrevChild".}
proc fcQCalendarWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_timerEvent".}
proc fcQCalendarWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_childEvent".}
proc fcQCalendarWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QCalendarWidget_virtualbase_customEvent".}
proc fcQCalendarWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QCalendarWidget_virtualbase_connectNotify".}
proc fcQCalendarWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QCalendarWidget_virtualbase_disconnectNotify".}
proc fcQCalendarWidget_protectedbase_updateCell(self: pointer, date: pointer): void {.importc: "QCalendarWidget_protectedbase_updateCell".}
proc fcQCalendarWidget_protectedbase_updateCells(self: pointer, ): void {.importc: "QCalendarWidget_protectedbase_updateCells".}
proc fcQCalendarWidget_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QCalendarWidget_protectedbase_updateMicroFocus".}
proc fcQCalendarWidget_protectedbase_create(self: pointer, ): void {.importc: "QCalendarWidget_protectedbase_create".}
proc fcQCalendarWidget_protectedbase_destroy(self: pointer, ): void {.importc: "QCalendarWidget_protectedbase_destroy".}
proc fcQCalendarWidget_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QCalendarWidget_protectedbase_focusNextChild".}
proc fcQCalendarWidget_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QCalendarWidget_protectedbase_focusPreviousChild".}
proc fcQCalendarWidget_protectedbase_sender(self: pointer, ): pointer {.importc: "QCalendarWidget_protectedbase_sender".}
proc fcQCalendarWidget_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QCalendarWidget_protectedbase_senderSignalIndex".}
proc fcQCalendarWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCalendarWidget_protectedbase_receivers".}
proc fcQCalendarWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCalendarWidget_protectedbase_isSignalConnected".}
proc fcQCalendarWidget_new(vtbl: pointer, parent: pointer): ptr cQCalendarWidget {.importc: "QCalendarWidget_new".}
proc fcQCalendarWidget_new2(vtbl: pointer, ): ptr cQCalendarWidget {.importc: "QCalendarWidget_new2".}
proc fcQCalendarWidget_staticMetaObject(): pointer {.importc: "QCalendarWidget_staticMetaObject".}

proc metaObject*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCalendarWidget_metaObject(self.h), owned: false)

proc metacast*(self: gen_qcalendarwidget_types.QCalendarWidget, param1: cstring): pointer =
  fcQCalendarWidget_metacast(self.h, param1)

proc metacall*(self: gen_qcalendarwidget_types.QCalendarWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQCalendarWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcalendarwidget_types.QCalendarWidget, s: cstring): string =
  let v_ms = fcQCalendarWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCalendarWidget_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCalendarWidget_minimumSizeHint(self.h), owned: true)

proc selectedDate*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQCalendarWidget_selectedDate(self.h), owned: true)

proc yearShown*(self: gen_qcalendarwidget_types.QCalendarWidget, ): cint =
  fcQCalendarWidget_yearShown(self.h)

proc monthShown*(self: gen_qcalendarwidget_types.QCalendarWidget, ): cint =
  fcQCalendarWidget_monthShown(self.h)

proc minimumDate*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQCalendarWidget_minimumDate(self.h), owned: true)

proc setMinimumDate*(self: gen_qcalendarwidget_types.QCalendarWidget, date: gen_qdatetime_types.QDate): void =
  fcQCalendarWidget_setMinimumDate(self.h, date.h)

proc maximumDate*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQCalendarWidget_maximumDate(self.h), owned: true)

proc setMaximumDate*(self: gen_qcalendarwidget_types.QCalendarWidget, date: gen_qdatetime_types.QDate): void =
  fcQCalendarWidget_setMaximumDate(self.h, date.h)

proc firstDayOfWeek*(self: gen_qcalendarwidget_types.QCalendarWidget, ): cint =
  cint(fcQCalendarWidget_firstDayOfWeek(self.h))

proc setFirstDayOfWeek*(self: gen_qcalendarwidget_types.QCalendarWidget, dayOfWeek: cint): void =
  fcQCalendarWidget_setFirstDayOfWeek(self.h, cint(dayOfWeek))

proc isNavigationBarVisible*(self: gen_qcalendarwidget_types.QCalendarWidget, ): bool =
  fcQCalendarWidget_isNavigationBarVisible(self.h)

proc isGridVisible*(self: gen_qcalendarwidget_types.QCalendarWidget, ): bool =
  fcQCalendarWidget_isGridVisible(self.h)

proc calendar*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qcalendar_types.QCalendar =
  gen_qcalendar_types.QCalendar(h: fcQCalendarWidget_calendar(self.h), owned: true)

proc setCalendar*(self: gen_qcalendarwidget_types.QCalendarWidget, calendar: gen_qcalendar_types.QCalendar): void =
  fcQCalendarWidget_setCalendar(self.h, calendar.h)

proc selectionMode*(self: gen_qcalendarwidget_types.QCalendarWidget, ): cint =
  cint(fcQCalendarWidget_selectionMode(self.h))

proc setSelectionMode*(self: gen_qcalendarwidget_types.QCalendarWidget, mode: cint): void =
  fcQCalendarWidget_setSelectionMode(self.h, cint(mode))

proc horizontalHeaderFormat*(self: gen_qcalendarwidget_types.QCalendarWidget, ): cint =
  cint(fcQCalendarWidget_horizontalHeaderFormat(self.h))

proc setHorizontalHeaderFormat*(self: gen_qcalendarwidget_types.QCalendarWidget, format: cint): void =
  fcQCalendarWidget_setHorizontalHeaderFormat(self.h, cint(format))

proc verticalHeaderFormat*(self: gen_qcalendarwidget_types.QCalendarWidget, ): cint =
  cint(fcQCalendarWidget_verticalHeaderFormat(self.h))

proc setVerticalHeaderFormat*(self: gen_qcalendarwidget_types.QCalendarWidget, format: cint): void =
  fcQCalendarWidget_setVerticalHeaderFormat(self.h, cint(format))

proc headerTextFormat*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQCalendarWidget_headerTextFormat(self.h), owned: true)

proc setHeaderTextFormat*(self: gen_qcalendarwidget_types.QCalendarWidget, format: gen_qtextformat_types.QTextCharFormat): void =
  fcQCalendarWidget_setHeaderTextFormat(self.h, format.h)

proc weekdayTextFormat*(self: gen_qcalendarwidget_types.QCalendarWidget, dayOfWeek: cint): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQCalendarWidget_weekdayTextFormat(self.h, cint(dayOfWeek)), owned: true)

proc setWeekdayTextFormat*(self: gen_qcalendarwidget_types.QCalendarWidget, dayOfWeek: cint, format: gen_qtextformat_types.QTextCharFormat): void =
  fcQCalendarWidget_setWeekdayTextFormat(self.h, cint(dayOfWeek), format.h)

proc dateTextFormat*(self: gen_qcalendarwidget_types.QCalendarWidget, ): Table[gen_qdatetime_types.QDate,gen_qtextformat_types.QTextCharFormat] =
  var v_mm = fcQCalendarWidget_dateTextFormat(self.h)
  var vx_ret: Table[gen_qdatetime_types.QDate, gen_qtextformat_types.QTextCharFormat]
  var v_Keys = cast[ptr UncheckedArray[pointer]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = gen_qdatetime_types.QDate(h: v_Keys[i], owned: true)

    var v_entry_Value = gen_qtextformat_types.QTextCharFormat(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc dateTextFormat*(self: gen_qcalendarwidget_types.QCalendarWidget, date: gen_qdatetime_types.QDate): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQCalendarWidget_dateTextFormatWithDate(self.h, date.h), owned: true)

proc setDateTextFormat*(self: gen_qcalendarwidget_types.QCalendarWidget, date: gen_qdatetime_types.QDate, format: gen_qtextformat_types.QTextCharFormat): void =
  fcQCalendarWidget_setDateTextFormat(self.h, date.h, format.h)

proc isDateEditEnabled*(self: gen_qcalendarwidget_types.QCalendarWidget, ): bool =
  fcQCalendarWidget_isDateEditEnabled(self.h)

proc setDateEditEnabled*(self: gen_qcalendarwidget_types.QCalendarWidget, enable: bool): void =
  fcQCalendarWidget_setDateEditEnabled(self.h, enable)

proc dateEditAcceptDelay*(self: gen_qcalendarwidget_types.QCalendarWidget, ): cint =
  fcQCalendarWidget_dateEditAcceptDelay(self.h)

proc setDateEditAcceptDelay*(self: gen_qcalendarwidget_types.QCalendarWidget, delay: cint): void =
  fcQCalendarWidget_setDateEditAcceptDelay(self.h, delay)

proc setSelectedDate*(self: gen_qcalendarwidget_types.QCalendarWidget, date: gen_qdatetime_types.QDate): void =
  fcQCalendarWidget_setSelectedDate(self.h, date.h)

proc setDateRange*(self: gen_qcalendarwidget_types.QCalendarWidget, min: gen_qdatetime_types.QDate, max: gen_qdatetime_types.QDate): void =
  fcQCalendarWidget_setDateRange(self.h, min.h, max.h)

proc setCurrentPage*(self: gen_qcalendarwidget_types.QCalendarWidget, year: cint, month: cint): void =
  fcQCalendarWidget_setCurrentPage(self.h, year, month)

proc setGridVisible*(self: gen_qcalendarwidget_types.QCalendarWidget, show: bool): void =
  fcQCalendarWidget_setGridVisible(self.h, show)

proc setNavigationBarVisible*(self: gen_qcalendarwidget_types.QCalendarWidget, visible: bool): void =
  fcQCalendarWidget_setNavigationBarVisible(self.h, visible)

proc showNextMonth*(self: gen_qcalendarwidget_types.QCalendarWidget, ): void =
  fcQCalendarWidget_showNextMonth(self.h)

proc showPreviousMonth*(self: gen_qcalendarwidget_types.QCalendarWidget, ): void =
  fcQCalendarWidget_showPreviousMonth(self.h)

proc showNextYear*(self: gen_qcalendarwidget_types.QCalendarWidget, ): void =
  fcQCalendarWidget_showNextYear(self.h)

proc showPreviousYear*(self: gen_qcalendarwidget_types.QCalendarWidget, ): void =
  fcQCalendarWidget_showPreviousYear(self.h)

proc showSelectedDate*(self: gen_qcalendarwidget_types.QCalendarWidget, ): void =
  fcQCalendarWidget_showSelectedDate(self.h)

proc showToday*(self: gen_qcalendarwidget_types.QCalendarWidget, ): void =
  fcQCalendarWidget_showToday(self.h)

proc selectionChanged*(self: gen_qcalendarwidget_types.QCalendarWidget, ): void =
  fcQCalendarWidget_selectionChanged(self.h)

type QCalendarWidgetselectionChangedSlot* = proc()
proc miqt_exec_callback_cQCalendarWidget_selectionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCalendarWidgetselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCalendarWidget_selectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCalendarWidgetselectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onselectionChanged*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetselectionChangedSlot) =
  var tmp = new QCalendarWidgetselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_connect_selectionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCalendarWidget_selectionChanged, miqt_exec_callback_cQCalendarWidget_selectionChanged_release)

proc clicked*(self: gen_qcalendarwidget_types.QCalendarWidget, date: gen_qdatetime_types.QDate): void =
  fcQCalendarWidget_clicked(self.h, date.h)

type QCalendarWidgetclickedSlot* = proc(date: gen_qdatetime_types.QDate)
proc miqt_exec_callback_cQCalendarWidget_clicked(slot: int, date: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QCalendarWidgetclickedSlot](cast[pointer](slot))
  let slotval1 = gen_qdatetime_types.QDate(h: date, owned: true)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCalendarWidget_clicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCalendarWidgetclickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onclicked*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetclickedSlot) =
  var tmp = new QCalendarWidgetclickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_connect_clicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCalendarWidget_clicked, miqt_exec_callback_cQCalendarWidget_clicked_release)

proc activated*(self: gen_qcalendarwidget_types.QCalendarWidget, date: gen_qdatetime_types.QDate): void =
  fcQCalendarWidget_activated(self.h, date.h)

type QCalendarWidgetactivatedSlot* = proc(date: gen_qdatetime_types.QDate)
proc miqt_exec_callback_cQCalendarWidget_activated(slot: int, date: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QCalendarWidgetactivatedSlot](cast[pointer](slot))
  let slotval1 = gen_qdatetime_types.QDate(h: date, owned: true)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCalendarWidget_activated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCalendarWidgetactivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactivated*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetactivatedSlot) =
  var tmp = new QCalendarWidgetactivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_connect_activated(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCalendarWidget_activated, miqt_exec_callback_cQCalendarWidget_activated_release)

proc currentPageChanged*(self: gen_qcalendarwidget_types.QCalendarWidget, year: cint, month: cint): void =
  fcQCalendarWidget_currentPageChanged(self.h, year, month)

type QCalendarWidgetcurrentPageChangedSlot* = proc(year: cint, month: cint)
proc miqt_exec_callback_cQCalendarWidget_currentPageChanged(slot: int, year: cint, month: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCalendarWidgetcurrentPageChangedSlot](cast[pointer](slot))
  let slotval1 = year

  let slotval2 = month

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQCalendarWidget_currentPageChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCalendarWidgetcurrentPageChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentPageChanged*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetcurrentPageChangedSlot) =
  var tmp = new QCalendarWidgetcurrentPageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_connect_currentPageChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCalendarWidget_currentPageChanged, miqt_exec_callback_cQCalendarWidget_currentPageChanged_release)

proc tr*(_: type gen_qcalendarwidget_types.QCalendarWidget, s: cstring, c: cstring): string =
  let v_ms = fcQCalendarWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcalendarwidget_types.QCalendarWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCalendarWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QCalendarWidgetmetaObjectProc* = proc(self: QCalendarWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QCalendarWidgetmetacastProc* = proc(self: QCalendarWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QCalendarWidgetmetacallProc* = proc(self: QCalendarWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QCalendarWidgetsizeHintProc* = proc(self: QCalendarWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QCalendarWidgetminimumSizeHintProc* = proc(self: QCalendarWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QCalendarWidgeteventProc* = proc(self: QCalendarWidget, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCalendarWidgeteventFilterProc* = proc(self: QCalendarWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCalendarWidgetmousePressEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetresizeEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetkeyPressEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetpaintCellProc* = proc(self: QCalendarWidget, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, date: gen_qdatetime_types.QDate): void {.raises: [], gcsafe.}
type QCalendarWidgetdevTypeProc* = proc(self: QCalendarWidget): cint {.raises: [], gcsafe.}
type QCalendarWidgetsetVisibleProc* = proc(self: QCalendarWidget, visible: bool): void {.raises: [], gcsafe.}
type QCalendarWidgetheightForWidthProc* = proc(self: QCalendarWidget, param1: cint): cint {.raises: [], gcsafe.}
type QCalendarWidgethasHeightForWidthProc* = proc(self: QCalendarWidget): bool {.raises: [], gcsafe.}
type QCalendarWidgetpaintEngineProc* = proc(self: QCalendarWidget): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QCalendarWidgetmouseReleaseEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetmouseDoubleClickEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetmouseMoveEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetwheelEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetkeyReleaseEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetfocusInEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetfocusOutEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetenterEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetleaveEventProc* = proc(self: QCalendarWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetpaintEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetmoveEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetcloseEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetcontextMenuEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QCalendarWidgettabletEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetactionEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetdragEnterEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetdragMoveEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetdragLeaveEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetdropEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetshowEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QCalendarWidgethideEventProc* = proc(self: QCalendarWidget, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetnativeEventProc* = proc(self: QCalendarWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QCalendarWidgetchangeEventProc* = proc(self: QCalendarWidget, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetmetricProc* = proc(self: QCalendarWidget, param1: cint): cint {.raises: [], gcsafe.}
type QCalendarWidgetinitPainterProc* = proc(self: QCalendarWidget, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QCalendarWidgetredirectedProc* = proc(self: QCalendarWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QCalendarWidgetsharedPainterProc* = proc(self: QCalendarWidget): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QCalendarWidgetinputMethodEventProc* = proc(self: QCalendarWidget, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetinputMethodQueryProc* = proc(self: QCalendarWidget, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QCalendarWidgetfocusNextPrevChildProc* = proc(self: QCalendarWidget, next: bool): bool {.raises: [], gcsafe.}
type QCalendarWidgettimerEventProc* = proc(self: QCalendarWidget, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetchildEventProc* = proc(self: QCalendarWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetcustomEventProc* = proc(self: QCalendarWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCalendarWidgetconnectNotifyProc* = proc(self: QCalendarWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QCalendarWidgetdisconnectNotifyProc* = proc(self: QCalendarWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QCalendarWidgetVTable* {.inheritable, pure.} = object
  vtbl: cQCalendarWidgetVTable
  metaObject*: QCalendarWidgetmetaObjectProc
  metacast*: QCalendarWidgetmetacastProc
  metacall*: QCalendarWidgetmetacallProc
  sizeHint*: QCalendarWidgetsizeHintProc
  minimumSizeHint*: QCalendarWidgetminimumSizeHintProc
  event*: QCalendarWidgeteventProc
  eventFilter*: QCalendarWidgeteventFilterProc
  mousePressEvent*: QCalendarWidgetmousePressEventProc
  resizeEvent*: QCalendarWidgetresizeEventProc
  keyPressEvent*: QCalendarWidgetkeyPressEventProc
  paintCell*: QCalendarWidgetpaintCellProc
  devType*: QCalendarWidgetdevTypeProc
  setVisible*: QCalendarWidgetsetVisibleProc
  heightForWidth*: QCalendarWidgetheightForWidthProc
  hasHeightForWidth*: QCalendarWidgethasHeightForWidthProc
  paintEngine*: QCalendarWidgetpaintEngineProc
  mouseReleaseEvent*: QCalendarWidgetmouseReleaseEventProc
  mouseDoubleClickEvent*: QCalendarWidgetmouseDoubleClickEventProc
  mouseMoveEvent*: QCalendarWidgetmouseMoveEventProc
  wheelEvent*: QCalendarWidgetwheelEventProc
  keyReleaseEvent*: QCalendarWidgetkeyReleaseEventProc
  focusInEvent*: QCalendarWidgetfocusInEventProc
  focusOutEvent*: QCalendarWidgetfocusOutEventProc
  enterEvent*: QCalendarWidgetenterEventProc
  leaveEvent*: QCalendarWidgetleaveEventProc
  paintEvent*: QCalendarWidgetpaintEventProc
  moveEvent*: QCalendarWidgetmoveEventProc
  closeEvent*: QCalendarWidgetcloseEventProc
  contextMenuEvent*: QCalendarWidgetcontextMenuEventProc
  tabletEvent*: QCalendarWidgettabletEventProc
  actionEvent*: QCalendarWidgetactionEventProc
  dragEnterEvent*: QCalendarWidgetdragEnterEventProc
  dragMoveEvent*: QCalendarWidgetdragMoveEventProc
  dragLeaveEvent*: QCalendarWidgetdragLeaveEventProc
  dropEvent*: QCalendarWidgetdropEventProc
  showEvent*: QCalendarWidgetshowEventProc
  hideEvent*: QCalendarWidgethideEventProc
  nativeEvent*: QCalendarWidgetnativeEventProc
  changeEvent*: QCalendarWidgetchangeEventProc
  metric*: QCalendarWidgetmetricProc
  initPainter*: QCalendarWidgetinitPainterProc
  redirected*: QCalendarWidgetredirectedProc
  sharedPainter*: QCalendarWidgetsharedPainterProc
  inputMethodEvent*: QCalendarWidgetinputMethodEventProc
  inputMethodQuery*: QCalendarWidgetinputMethodQueryProc
  focusNextPrevChild*: QCalendarWidgetfocusNextPrevChildProc
  timerEvent*: QCalendarWidgettimerEventProc
  childEvent*: QCalendarWidgetchildEventProc
  customEvent*: QCalendarWidgetcustomEventProc
  connectNotify*: QCalendarWidgetconnectNotifyProc
  disconnectNotify*: QCalendarWidgetdisconnectNotifyProc
proc QCalendarWidgetmetaObject*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCalendarWidget_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQCalendarWidget_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCalendarWidgetmetacast*(self: gen_qcalendarwidget_types.QCalendarWidget, param1: cstring): pointer =
  fcQCalendarWidget_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQCalendarWidget_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QCalendarWidgetmetacall*(self: gen_qcalendarwidget_types.QCalendarWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQCalendarWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQCalendarWidget_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QCalendarWidgetsizeHint*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCalendarWidget_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQCalendarWidget_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCalendarWidgetminimumSizeHint*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCalendarWidget_virtualbase_minimumSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQCalendarWidget_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCalendarWidgetevent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQCalendarWidget_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QCalendarWidgeteventFilter*(self: gen_qcalendarwidget_types.QCalendarWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCalendarWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QCalendarWidgetmousePressEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQCalendarWidget_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QCalendarWidgetresizeEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QResizeEvent): void =
  fcQCalendarWidget_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QCalendarWidgetkeyPressEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQCalendarWidget_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QCalendarWidgetpaintCell*(self: gen_qcalendarwidget_types.QCalendarWidget, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, date: gen_qdatetime_types.QDate): void =
  fcQCalendarWidget_virtualbase_paintCell(self.h, painter.h, rect.h, date.h)

proc miqt_exec_callback_cQCalendarWidget_paintCell(vtbl: pointer, self: pointer, painter: pointer, rect: pointer, date: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval3 = gen_qdatetime_types.QDate(h: date, owned: true)
  vtbl[].paintCell(self, slotval1, slotval2, slotval3)

proc QCalendarWidgetdevType*(self: gen_qcalendarwidget_types.QCalendarWidget, ): cint =
  fcQCalendarWidget_virtualbase_devType(self.h)

proc miqt_exec_callback_cQCalendarWidget_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QCalendarWidgetsetVisible*(self: gen_qcalendarwidget_types.QCalendarWidget, visible: bool): void =
  fcQCalendarWidget_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQCalendarWidget_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QCalendarWidgetheightForWidth*(self: gen_qcalendarwidget_types.QCalendarWidget, param1: cint): cint =
  fcQCalendarWidget_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQCalendarWidget_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QCalendarWidgethasHeightForWidth*(self: gen_qcalendarwidget_types.QCalendarWidget, ): bool =
  fcQCalendarWidget_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQCalendarWidget_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QCalendarWidgetpaintEngine*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQCalendarWidget_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQCalendarWidget_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCalendarWidgetmouseReleaseEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQCalendarWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QCalendarWidgetmouseDoubleClickEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQCalendarWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QCalendarWidgetmouseMoveEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQCalendarWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QCalendarWidgetwheelEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QWheelEvent): void =
  fcQCalendarWidget_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QCalendarWidgetkeyReleaseEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQCalendarWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QCalendarWidgetfocusInEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQCalendarWidget_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QCalendarWidgetfocusOutEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQCalendarWidget_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QCalendarWidgetenterEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QEnterEvent): void =
  fcQCalendarWidget_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QCalendarWidgetleaveEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQCalendarWidget_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QCalendarWidgetpaintEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QPaintEvent): void =
  fcQCalendarWidget_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QCalendarWidgetmoveEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQCalendarWidget_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QCalendarWidgetcloseEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQCalendarWidget_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QCalendarWidgetcontextMenuEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fcQCalendarWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QCalendarWidgettabletEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQCalendarWidget_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QCalendarWidgetactionEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QActionEvent): void =
  fcQCalendarWidget_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QCalendarWidgetdragEnterEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQCalendarWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QCalendarWidgetdragMoveEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQCalendarWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QCalendarWidgetdragLeaveEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQCalendarWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QCalendarWidgetdropEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QDropEvent): void =
  fcQCalendarWidget_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QCalendarWidgetshowEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QShowEvent): void =
  fcQCalendarWidget_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QCalendarWidgethideEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QHideEvent): void =
  fcQCalendarWidget_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QCalendarWidgetnativeEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQCalendarWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQCalendarWidget_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QCalendarWidgetchangeEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQCalendarWidget_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQCalendarWidget_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QCalendarWidgetmetric*(self: gen_qcalendarwidget_types.QCalendarWidget, param1: cint): cint =
  fcQCalendarWidget_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQCalendarWidget_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QCalendarWidgetinitPainter*(self: gen_qcalendarwidget_types.QCalendarWidget, painter: gen_qpainter_types.QPainter): void =
  fcQCalendarWidget_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQCalendarWidget_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QCalendarWidgetredirected*(self: gen_qcalendarwidget_types.QCalendarWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQCalendarWidget_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQCalendarWidget_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCalendarWidgetsharedPainter*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQCalendarWidget_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQCalendarWidget_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCalendarWidgetinputMethodEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQCalendarWidget_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQCalendarWidget_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QCalendarWidgetinputMethodQuery*(self: gen_qcalendarwidget_types.QCalendarWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQCalendarWidget_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc miqt_exec_callback_cQCalendarWidget_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCalendarWidgetfocusNextPrevChild*(self: gen_qcalendarwidget_types.QCalendarWidget, next: bool): bool =
  fcQCalendarWidget_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQCalendarWidget_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QCalendarWidgettimerEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQCalendarWidget_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QCalendarWidgetchildEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQCalendarWidget_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QCalendarWidgetcustomEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQCalendarWidget_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQCalendarWidget_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QCalendarWidgetconnectNotify*(self: gen_qcalendarwidget_types.QCalendarWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCalendarWidget_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCalendarWidget_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QCalendarWidgetdisconnectNotify*(self: gen_qcalendarwidget_types.QCalendarWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCalendarWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCalendarWidget_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCalendarWidgetVTable](vtbl)
  let self = QCalendarWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQCalendarWidget* {.inheritable.} = ref object of QCalendarWidget
  vtbl*: cQCalendarWidgetVTable
method metaObject*(self: VirtualQCalendarWidget, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QCalendarWidgetmetaObject(self[])
proc miqt_exec_method_cQCalendarWidget_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQCalendarWidget, param1: cstring): pointer {.base.} =
  QCalendarWidgetmetacast(self[], param1)
proc miqt_exec_method_cQCalendarWidget_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQCalendarWidget, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QCalendarWidgetmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQCalendarWidget_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQCalendarWidget, ): gen_qsize_types.QSize {.base.} =
  QCalendarWidgetsizeHint(self[])
proc miqt_exec_method_cQCalendarWidget_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQCalendarWidget, ): gen_qsize_types.QSize {.base.} =
  QCalendarWidgetminimumSizeHint(self[])
proc miqt_exec_method_cQCalendarWidget_minimumSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  var virtualReturn = vtbl.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQCalendarWidget, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCalendarWidgetevent(self[], event)
proc miqt_exec_method_cQCalendarWidget_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQCalendarWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCalendarWidgeteventFilter(self[], watched, event)
proc miqt_exec_method_cQCalendarWidget_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method mousePressEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QCalendarWidgetmousePressEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_mousePressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mousePressEvent(slotval1)

method resizeEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QCalendarWidgetresizeEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_resizeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl.resizeEvent(slotval1)

method keyPressEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QCalendarWidgetkeyPressEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_keyPressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyPressEvent(slotval1)

method paintCell*(self: VirtualQCalendarWidget, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, date: gen_qdatetime_types.QDate): void {.base.} =
  QCalendarWidgetpaintCell(self[], painter, rect, date)
proc miqt_exec_method_cQCalendarWidget_paintCell(vtbl: pointer, inst: pointer, painter: pointer, rect: pointer, date: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval3 = gen_qdatetime_types.QDate(h: date, owned: true)
  vtbl.paintCell(slotval1, slotval2, slotval3)

method devType*(self: VirtualQCalendarWidget, ): cint {.base.} =
  QCalendarWidgetdevType(self[])
proc miqt_exec_method_cQCalendarWidget_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method setVisible*(self: VirtualQCalendarWidget, visible: bool): void {.base.} =
  QCalendarWidgetsetVisible(self[], visible)
proc miqt_exec_method_cQCalendarWidget_setVisible(vtbl: pointer, inst: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = visible
  vtbl.setVisible(slotval1)

method heightForWidth*(self: VirtualQCalendarWidget, param1: cint): cint {.base.} =
  QCalendarWidgetheightForWidth(self[], param1)
proc miqt_exec_method_cQCalendarWidget_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQCalendarWidget, ): bool {.base.} =
  QCalendarWidgethasHeightForWidth(self[])
proc miqt_exec_method_cQCalendarWidget_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQCalendarWidget, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QCalendarWidgetpaintEngine(self[])
proc miqt_exec_method_cQCalendarWidget_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseReleaseEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QCalendarWidgetmouseReleaseEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_mouseReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QCalendarWidgetmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QCalendarWidgetmouseMoveEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_mouseMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QCalendarWidgetwheelEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method keyReleaseEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QCalendarWidgetkeyReleaseEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QCalendarWidgetfocusInEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_focusInEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QCalendarWidgetfocusOutEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_focusOutEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QCalendarWidgetenterEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_enterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl.enterEvent(slotval1)

method leaveEvent*(self: VirtualQCalendarWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QCalendarWidgetleaveEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_leaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.leaveEvent(slotval1)

method paintEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QCalendarWidgetpaintEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_paintEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl.paintEvent(slotval1)

method moveEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QCalendarWidgetmoveEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_moveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl.moveEvent(slotval1)

method closeEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QCalendarWidgetcloseEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_closeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QCalendarWidgetcontextMenuEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_contextMenuEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QCalendarWidgettabletEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_tabletEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl.tabletEvent(slotval1)

method actionEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QActionEvent): void {.base.} =
  QCalendarWidgetactionEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_actionEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QCalendarWidgetdragEnterEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QCalendarWidgetdragMoveEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QCalendarWidgetdragLeaveEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QDropEvent): void {.base.} =
  QCalendarWidgetdropEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method showEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QShowEvent): void {.base.} =
  QCalendarWidgetshowEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_showEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl.showEvent(slotval1)

method hideEvent*(self: VirtualQCalendarWidget, event: gen_qevent_types.QHideEvent): void {.base.} =
  QCalendarWidgethideEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_hideEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl.hideEvent(slotval1)

method nativeEvent*(self: VirtualQCalendarWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QCalendarWidgetnativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQCalendarWidget_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQCalendarWidget, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QCalendarWidgetchangeEvent(self[], param1)
proc miqt_exec_method_cQCalendarWidget_changeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl.changeEvent(slotval1)

method metric*(self: VirtualQCalendarWidget, param1: cint): cint {.base.} =
  QCalendarWidgetmetric(self[], param1)
proc miqt_exec_method_cQCalendarWidget_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQCalendarWidget, painter: gen_qpainter_types.QPainter): void {.base.} =
  QCalendarWidgetinitPainter(self[], painter)
proc miqt_exec_method_cQCalendarWidget_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQCalendarWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QCalendarWidgetredirected(self[], offset)
proc miqt_exec_method_cQCalendarWidget_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQCalendarWidget, ): gen_qpainter_types.QPainter {.base.} =
  QCalendarWidgetsharedPainter(self[])
proc miqt_exec_method_cQCalendarWidget_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQCalendarWidget, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QCalendarWidgetinputMethodEvent(self[], param1)
proc miqt_exec_method_cQCalendarWidget_inputMethodEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQCalendarWidget, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QCalendarWidgetinputMethodQuery(self[], param1)
proc miqt_exec_method_cQCalendarWidget_inputMethodQuery(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQCalendarWidget, next: bool): bool {.base.} =
  QCalendarWidgetfocusNextPrevChild(self[], next)
proc miqt_exec_method_cQCalendarWidget_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method timerEvent*(self: VirtualQCalendarWidget, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QCalendarWidgettimerEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQCalendarWidget, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QCalendarWidgetchildEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQCalendarWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QCalendarWidgetcustomEvent(self[], event)
proc miqt_exec_method_cQCalendarWidget_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQCalendarWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCalendarWidgetconnectNotify(self[], signal)
proc miqt_exec_method_cQCalendarWidget_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQCalendarWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCalendarWidgetdisconnectNotify(self[], signal)
proc miqt_exec_method_cQCalendarWidget_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCalendarWidget](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc updateCell*(self: gen_qcalendarwidget_types.QCalendarWidget, date: gen_qdatetime_types.QDate): void =
  fcQCalendarWidget_protectedbase_updateCell(self.h, date.h)

proc updateCells*(self: gen_qcalendarwidget_types.QCalendarWidget, ): void =
  fcQCalendarWidget_protectedbase_updateCells(self.h)

proc updateMicroFocus*(self: gen_qcalendarwidget_types.QCalendarWidget, ): void =
  fcQCalendarWidget_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qcalendarwidget_types.QCalendarWidget, ): void =
  fcQCalendarWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qcalendarwidget_types.QCalendarWidget, ): void =
  fcQCalendarWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qcalendarwidget_types.QCalendarWidget, ): bool =
  fcQCalendarWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qcalendarwidget_types.QCalendarWidget, ): bool =
  fcQCalendarWidget_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCalendarWidget_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcalendarwidget_types.QCalendarWidget, ): cint =
  fcQCalendarWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcalendarwidget_types.QCalendarWidget, signal: cstring): cint =
  fcQCalendarWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcalendarwidget_types.QCalendarWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCalendarWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qcalendarwidget_types.QCalendarWidget,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QCalendarWidgetVTable = nil): gen_qcalendarwidget_types.QCalendarWidget =
  let vtbl = if vtbl == nil: new QCalendarWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCalendarWidgetVTable, _: ptr cQCalendarWidget) {.cdecl.} =
    let vtbl = cast[ref QCalendarWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCalendarWidget_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCalendarWidget_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCalendarWidget_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQCalendarWidget_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQCalendarWidget_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCalendarWidget_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCalendarWidget_eventFilter
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQCalendarWidget_mousePressEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQCalendarWidget_resizeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQCalendarWidget_keyPressEvent
  if not isNil(vtbl[].paintCell):
    vtbl[].vtbl.paintCell = miqt_exec_callback_cQCalendarWidget_paintCell
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQCalendarWidget_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQCalendarWidget_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQCalendarWidget_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQCalendarWidget_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQCalendarWidget_paintEngine
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQCalendarWidget_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQCalendarWidget_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQCalendarWidget_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQCalendarWidget_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQCalendarWidget_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQCalendarWidget_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQCalendarWidget_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQCalendarWidget_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQCalendarWidget_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQCalendarWidget_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQCalendarWidget_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQCalendarWidget_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQCalendarWidget_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQCalendarWidget_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQCalendarWidget_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQCalendarWidget_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQCalendarWidget_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQCalendarWidget_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQCalendarWidget_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQCalendarWidget_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQCalendarWidget_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQCalendarWidget_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQCalendarWidget_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQCalendarWidget_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQCalendarWidget_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQCalendarWidget_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQCalendarWidget_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQCalendarWidget_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQCalendarWidget_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQCalendarWidget_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCalendarWidget_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCalendarWidget_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCalendarWidget_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCalendarWidget_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCalendarWidget_disconnectNotify
  gen_qcalendarwidget_types.QCalendarWidget(h: fcQCalendarWidget_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qcalendarwidget_types.QCalendarWidget,
    vtbl: ref QCalendarWidgetVTable = nil): gen_qcalendarwidget_types.QCalendarWidget =
  let vtbl = if vtbl == nil: new QCalendarWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCalendarWidgetVTable, _: ptr cQCalendarWidget) {.cdecl.} =
    let vtbl = cast[ref QCalendarWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCalendarWidget_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCalendarWidget_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCalendarWidget_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQCalendarWidget_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQCalendarWidget_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCalendarWidget_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCalendarWidget_eventFilter
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQCalendarWidget_mousePressEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQCalendarWidget_resizeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQCalendarWidget_keyPressEvent
  if not isNil(vtbl[].paintCell):
    vtbl[].vtbl.paintCell = miqt_exec_callback_cQCalendarWidget_paintCell
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQCalendarWidget_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQCalendarWidget_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQCalendarWidget_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQCalendarWidget_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQCalendarWidget_paintEngine
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQCalendarWidget_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQCalendarWidget_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQCalendarWidget_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQCalendarWidget_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQCalendarWidget_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQCalendarWidget_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQCalendarWidget_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQCalendarWidget_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQCalendarWidget_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQCalendarWidget_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQCalendarWidget_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQCalendarWidget_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQCalendarWidget_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQCalendarWidget_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQCalendarWidget_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQCalendarWidget_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQCalendarWidget_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQCalendarWidget_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQCalendarWidget_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQCalendarWidget_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQCalendarWidget_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQCalendarWidget_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQCalendarWidget_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQCalendarWidget_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQCalendarWidget_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQCalendarWidget_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQCalendarWidget_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQCalendarWidget_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQCalendarWidget_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQCalendarWidget_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCalendarWidget_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCalendarWidget_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCalendarWidget_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCalendarWidget_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCalendarWidget_disconnectNotify
  gen_qcalendarwidget_types.QCalendarWidget(h: fcQCalendarWidget_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qcalendarwidget_types.QCalendarWidget,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQCalendarWidget) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCalendarWidgetVTable, _: ptr cQCalendarWidget) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQCalendarWidget()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQCalendarWidget_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQCalendarWidget_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQCalendarWidget_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQCalendarWidget_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQCalendarWidget_minimumSizeHint
  vtbl[].vtbl.event = miqt_exec_method_cQCalendarWidget_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQCalendarWidget_eventFilter
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQCalendarWidget_mousePressEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQCalendarWidget_resizeEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQCalendarWidget_keyPressEvent
  vtbl[].vtbl.paintCell = miqt_exec_method_cQCalendarWidget_paintCell
  vtbl[].vtbl.devType = miqt_exec_method_cQCalendarWidget_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQCalendarWidget_setVisible
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQCalendarWidget_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQCalendarWidget_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQCalendarWidget_paintEngine
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQCalendarWidget_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQCalendarWidget_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQCalendarWidget_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQCalendarWidget_wheelEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQCalendarWidget_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQCalendarWidget_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQCalendarWidget_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQCalendarWidget_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQCalendarWidget_leaveEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQCalendarWidget_paintEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQCalendarWidget_moveEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQCalendarWidget_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQCalendarWidget_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQCalendarWidget_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQCalendarWidget_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQCalendarWidget_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQCalendarWidget_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQCalendarWidget_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQCalendarWidget_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQCalendarWidget_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQCalendarWidget_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQCalendarWidget_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQCalendarWidget_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQCalendarWidget_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQCalendarWidget_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQCalendarWidget_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQCalendarWidget_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQCalendarWidget_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQCalendarWidget_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQCalendarWidget_focusNextPrevChild
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQCalendarWidget_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQCalendarWidget_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQCalendarWidget_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQCalendarWidget_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQCalendarWidget_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQCalendarWidget_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qcalendarwidget_types.QCalendarWidget,
    vtbl: VirtualQCalendarWidget) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCalendarWidgetVTable, _: ptr cQCalendarWidget) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQCalendarWidget()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQCalendarWidget, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQCalendarWidget_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQCalendarWidget_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQCalendarWidget_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQCalendarWidget_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQCalendarWidget_minimumSizeHint
  vtbl[].vtbl.event = miqt_exec_method_cQCalendarWidget_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQCalendarWidget_eventFilter
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQCalendarWidget_mousePressEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQCalendarWidget_resizeEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQCalendarWidget_keyPressEvent
  vtbl[].vtbl.paintCell = miqt_exec_method_cQCalendarWidget_paintCell
  vtbl[].vtbl.devType = miqt_exec_method_cQCalendarWidget_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQCalendarWidget_setVisible
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQCalendarWidget_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQCalendarWidget_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQCalendarWidget_paintEngine
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQCalendarWidget_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQCalendarWidget_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQCalendarWidget_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQCalendarWidget_wheelEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQCalendarWidget_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQCalendarWidget_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQCalendarWidget_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQCalendarWidget_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQCalendarWidget_leaveEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQCalendarWidget_paintEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQCalendarWidget_moveEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQCalendarWidget_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQCalendarWidget_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQCalendarWidget_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQCalendarWidget_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQCalendarWidget_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQCalendarWidget_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQCalendarWidget_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQCalendarWidget_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQCalendarWidget_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQCalendarWidget_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQCalendarWidget_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQCalendarWidget_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQCalendarWidget_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQCalendarWidget_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQCalendarWidget_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQCalendarWidget_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQCalendarWidget_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQCalendarWidget_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQCalendarWidget_focusNextPrevChild
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQCalendarWidget_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQCalendarWidget_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQCalendarWidget_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQCalendarWidget_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQCalendarWidget_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQCalendarWidget_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qcalendarwidget_types.QCalendarWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCalendarWidget_staticMetaObject())
