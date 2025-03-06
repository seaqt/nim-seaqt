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

proc fcQCalendarWidget_new(parent: pointer): ptr cQCalendarWidget {.importc: "QCalendarWidget_new".}
proc fcQCalendarWidget_new2(): ptr cQCalendarWidget {.importc: "QCalendarWidget_new2".}
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
proc fcQCalendarWidget_connect_selectionChanged(self: pointer, slot: int) {.importc: "QCalendarWidget_connect_selectionChanged".}
proc fcQCalendarWidget_clicked(self: pointer, date: pointer): void {.importc: "QCalendarWidget_clicked".}
proc fcQCalendarWidget_connect_clicked(self: pointer, slot: int) {.importc: "QCalendarWidget_connect_clicked".}
proc fcQCalendarWidget_activated(self: pointer, date: pointer): void {.importc: "QCalendarWidget_activated".}
proc fcQCalendarWidget_connect_activated(self: pointer, slot: int) {.importc: "QCalendarWidget_connect_activated".}
proc fcQCalendarWidget_currentPageChanged(self: pointer, year: cint, month: cint): void {.importc: "QCalendarWidget_currentPageChanged".}
proc fcQCalendarWidget_connect_currentPageChanged(self: pointer, slot: int) {.importc: "QCalendarWidget_connect_currentPageChanged".}
proc fcQCalendarWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCalendarWidget_tr2".}
proc fcQCalendarWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCalendarWidget_tr3".}
proc fQCalendarWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QCalendarWidget_virtualbase_metaObject".}
proc fcQCalendarWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_metaObject".}
proc fQCalendarWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QCalendarWidget_virtualbase_metacast".}
proc fcQCalendarWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_metacast".}
proc fQCalendarWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QCalendarWidget_virtualbase_metacall".}
proc fcQCalendarWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_metacall".}
proc fQCalendarWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QCalendarWidget_virtualbase_sizeHint".}
proc fcQCalendarWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_sizeHint".}
proc fQCalendarWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QCalendarWidget_virtualbase_minimumSizeHint".}
proc fcQCalendarWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_minimumSizeHint".}
proc fQCalendarWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QCalendarWidget_virtualbase_event".}
proc fcQCalendarWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_event".}
proc fQCalendarWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QCalendarWidget_virtualbase_eventFilter".}
proc fcQCalendarWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_eventFilter".}
proc fQCalendarWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_mousePressEvent".}
proc fcQCalendarWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_mousePressEvent".}
proc fQCalendarWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_resizeEvent".}
proc fcQCalendarWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_resizeEvent".}
proc fQCalendarWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_keyPressEvent".}
proc fcQCalendarWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_keyPressEvent".}
proc fQCalendarWidget_virtualbase_paintCell(self: pointer, painter: pointer, rect: pointer, date: pointer): void{.importc: "QCalendarWidget_virtualbase_paintCell".}
proc fcQCalendarWidget_override_virtual_paintCell(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_paintCell".}
proc fQCalendarWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QCalendarWidget_virtualbase_devType".}
proc fcQCalendarWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_devType".}
proc fQCalendarWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QCalendarWidget_virtualbase_setVisible".}
proc fcQCalendarWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_setVisible".}
proc fQCalendarWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QCalendarWidget_virtualbase_heightForWidth".}
proc fcQCalendarWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_heightForWidth".}
proc fQCalendarWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QCalendarWidget_virtualbase_hasHeightForWidth".}
proc fcQCalendarWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_hasHeightForWidth".}
proc fQCalendarWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QCalendarWidget_virtualbase_paintEngine".}
proc fcQCalendarWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_paintEngine".}
proc fQCalendarWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_mouseReleaseEvent".}
proc fcQCalendarWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_mouseReleaseEvent".}
proc fQCalendarWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQCalendarWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_mouseDoubleClickEvent".}
proc fQCalendarWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_mouseMoveEvent".}
proc fcQCalendarWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_mouseMoveEvent".}
proc fQCalendarWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_wheelEvent".}
proc fcQCalendarWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_wheelEvent".}
proc fQCalendarWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_keyReleaseEvent".}
proc fcQCalendarWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_keyReleaseEvent".}
proc fQCalendarWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_focusInEvent".}
proc fcQCalendarWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_focusInEvent".}
proc fQCalendarWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_focusOutEvent".}
proc fcQCalendarWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_focusOutEvent".}
proc fQCalendarWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_enterEvent".}
proc fcQCalendarWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_enterEvent".}
proc fQCalendarWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_leaveEvent".}
proc fcQCalendarWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_leaveEvent".}
proc fQCalendarWidget_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_paintEvent".}
proc fcQCalendarWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_paintEvent".}
proc fQCalendarWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_moveEvent".}
proc fcQCalendarWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_moveEvent".}
proc fQCalendarWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_closeEvent".}
proc fcQCalendarWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_closeEvent".}
proc fQCalendarWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_contextMenuEvent".}
proc fcQCalendarWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_contextMenuEvent".}
proc fQCalendarWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_tabletEvent".}
proc fcQCalendarWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_tabletEvent".}
proc fQCalendarWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_actionEvent".}
proc fcQCalendarWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_actionEvent".}
proc fQCalendarWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_dragEnterEvent".}
proc fcQCalendarWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_dragEnterEvent".}
proc fQCalendarWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_dragMoveEvent".}
proc fcQCalendarWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_dragMoveEvent".}
proc fQCalendarWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_dragLeaveEvent".}
proc fcQCalendarWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_dragLeaveEvent".}
proc fQCalendarWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_dropEvent".}
proc fcQCalendarWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_dropEvent".}
proc fQCalendarWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_showEvent".}
proc fcQCalendarWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_showEvent".}
proc fQCalendarWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_hideEvent".}
proc fcQCalendarWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_hideEvent".}
proc fQCalendarWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QCalendarWidget_virtualbase_nativeEvent".}
proc fcQCalendarWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_nativeEvent".}
proc fQCalendarWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QCalendarWidget_virtualbase_changeEvent".}
proc fcQCalendarWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_changeEvent".}
proc fQCalendarWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QCalendarWidget_virtualbase_metric".}
proc fcQCalendarWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_metric".}
proc fQCalendarWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QCalendarWidget_virtualbase_initPainter".}
proc fcQCalendarWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_initPainter".}
proc fQCalendarWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QCalendarWidget_virtualbase_redirected".}
proc fcQCalendarWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_redirected".}
proc fQCalendarWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QCalendarWidget_virtualbase_sharedPainter".}
proc fcQCalendarWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_sharedPainter".}
proc fQCalendarWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QCalendarWidget_virtualbase_inputMethodEvent".}
proc fcQCalendarWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_inputMethodEvent".}
proc fQCalendarWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QCalendarWidget_virtualbase_inputMethodQuery".}
proc fcQCalendarWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_inputMethodQuery".}
proc fQCalendarWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QCalendarWidget_virtualbase_focusNextPrevChild".}
proc fcQCalendarWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_focusNextPrevChild".}
proc fQCalendarWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_timerEvent".}
proc fcQCalendarWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_timerEvent".}
proc fQCalendarWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_childEvent".}
proc fcQCalendarWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_childEvent".}
proc fQCalendarWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_customEvent".}
proc fcQCalendarWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_customEvent".}
proc fQCalendarWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QCalendarWidget_virtualbase_connectNotify".}
proc fcQCalendarWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_connectNotify".}
proc fQCalendarWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QCalendarWidget_virtualbase_disconnectNotify".}
proc fcQCalendarWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_disconnectNotify".}
proc fcQCalendarWidget_staticMetaObject(): pointer {.importc: "QCalendarWidget_staticMetaObject".}
proc fcQCalendarWidget_delete(self: pointer) {.importc: "QCalendarWidget_delete".}


func init*(T: type gen_qcalendarwidget_types.QCalendarWidget, h: ptr cQCalendarWidget): gen_qcalendarwidget_types.QCalendarWidget =
  T(h: h)
proc create*(T: type gen_qcalendarwidget_types.QCalendarWidget, parent: gen_qwidget_types.QWidget): gen_qcalendarwidget_types.QCalendarWidget =
  gen_qcalendarwidget_types.QCalendarWidget.init(fcQCalendarWidget_new(parent.h))

proc create*(T: type gen_qcalendarwidget_types.QCalendarWidget, ): gen_qcalendarwidget_types.QCalendarWidget =
  gen_qcalendarwidget_types.QCalendarWidget.init(fcQCalendarWidget_new2())

proc metaObject*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCalendarWidget_metaObject(self.h))

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
  gen_qsize_types.QSize(h: fcQCalendarWidget_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCalendarWidget_minimumSizeHint(self.h))

proc selectedDate*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQCalendarWidget_selectedDate(self.h))

proc yearShown*(self: gen_qcalendarwidget_types.QCalendarWidget, ): cint =
  fcQCalendarWidget_yearShown(self.h)

proc monthShown*(self: gen_qcalendarwidget_types.QCalendarWidget, ): cint =
  fcQCalendarWidget_monthShown(self.h)

proc minimumDate*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQCalendarWidget_minimumDate(self.h))

proc setMinimumDate*(self: gen_qcalendarwidget_types.QCalendarWidget, date: gen_qdatetime_types.QDate): void =
  fcQCalendarWidget_setMinimumDate(self.h, date.h)

proc maximumDate*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQCalendarWidget_maximumDate(self.h))

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
  gen_qcalendar_types.QCalendar(h: fcQCalendarWidget_calendar(self.h))

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
  gen_qtextformat_types.QTextCharFormat(h: fcQCalendarWidget_headerTextFormat(self.h))

proc setHeaderTextFormat*(self: gen_qcalendarwidget_types.QCalendarWidget, format: gen_qtextformat_types.QTextCharFormat): void =
  fcQCalendarWidget_setHeaderTextFormat(self.h, format.h)

proc weekdayTextFormat*(self: gen_qcalendarwidget_types.QCalendarWidget, dayOfWeek: cint): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQCalendarWidget_weekdayTextFormat(self.h, cint(dayOfWeek)))

proc setWeekdayTextFormat*(self: gen_qcalendarwidget_types.QCalendarWidget, dayOfWeek: cint, format: gen_qtextformat_types.QTextCharFormat): void =
  fcQCalendarWidget_setWeekdayTextFormat(self.h, cint(dayOfWeek), format.h)

proc dateTextFormat*(self: gen_qcalendarwidget_types.QCalendarWidget, ): Table[gen_qdatetime_types.QDate,gen_qtextformat_types.QTextCharFormat] =
  var v_mm = fcQCalendarWidget_dateTextFormat(self.h)
  var vx_ret: Table[gen_qdatetime_types.QDate, gen_qtextformat_types.QTextCharFormat]
  var v_Keys = cast[ptr UncheckedArray[pointer]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = gen_qdatetime_types.QDate(h: v_Keys[i])

    var v_entry_Value = gen_qtextformat_types.QTextCharFormat(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc dateTextFormat*(self: gen_qcalendarwidget_types.QCalendarWidget, date: gen_qdatetime_types.QDate): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQCalendarWidget_dateTextFormatWithDate(self.h, date.h))

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
proc miqt_exec_callback_QCalendarWidget_selectionChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QCalendarWidgetselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onselectionChanged*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetselectionChangedSlot) =
  var tmp = new QCalendarWidgetselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_connect_selectionChanged(self.h, cast[int](addr tmp[]))

proc clicked*(self: gen_qcalendarwidget_types.QCalendarWidget, date: gen_qdatetime_types.QDate): void =
  fcQCalendarWidget_clicked(self.h, date.h)

type QCalendarWidgetclickedSlot* = proc(date: gen_qdatetime_types.QDate)
proc miqt_exec_callback_QCalendarWidget_clicked(slot: int, date: pointer) {.exportc.} =
  let nimfunc = cast[ptr QCalendarWidgetclickedSlot](cast[pointer](slot))
  let slotval1 = gen_qdatetime_types.QDate(h: date)

  nimfunc[](slotval1)

proc onclicked*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetclickedSlot) =
  var tmp = new QCalendarWidgetclickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_connect_clicked(self.h, cast[int](addr tmp[]))

proc activated*(self: gen_qcalendarwidget_types.QCalendarWidget, date: gen_qdatetime_types.QDate): void =
  fcQCalendarWidget_activated(self.h, date.h)

type QCalendarWidgetactivatedSlot* = proc(date: gen_qdatetime_types.QDate)
proc miqt_exec_callback_QCalendarWidget_activated(slot: int, date: pointer) {.exportc.} =
  let nimfunc = cast[ptr QCalendarWidgetactivatedSlot](cast[pointer](slot))
  let slotval1 = gen_qdatetime_types.QDate(h: date)

  nimfunc[](slotval1)

proc onactivated*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetactivatedSlot) =
  var tmp = new QCalendarWidgetactivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_connect_activated(self.h, cast[int](addr tmp[]))

proc currentPageChanged*(self: gen_qcalendarwidget_types.QCalendarWidget, year: cint, month: cint): void =
  fcQCalendarWidget_currentPageChanged(self.h, year, month)

type QCalendarWidgetcurrentPageChangedSlot* = proc(year: cint, month: cint)
proc miqt_exec_callback_QCalendarWidget_currentPageChanged(slot: int, year: cint, month: cint) {.exportc.} =
  let nimfunc = cast[ptr QCalendarWidgetcurrentPageChangedSlot](cast[pointer](slot))
  let slotval1 = year

  let slotval2 = month

  nimfunc[](slotval1, slotval2)

proc oncurrentPageChanged*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetcurrentPageChangedSlot) =
  var tmp = new QCalendarWidgetcurrentPageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_connect_currentPageChanged(self.h, cast[int](addr tmp[]))

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

proc QCalendarWidgetmetaObject*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQCalendarWidget_virtualbase_metaObject(self.h))

type QCalendarWidgetmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetmetaObjectProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_metaObject(self: ptr cQCalendarWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QCalendarWidget_metaObject ".} =
  var nimfunc = cast[ptr QCalendarWidgetmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCalendarWidgetmetacast*(self: gen_qcalendarwidget_types.QCalendarWidget, param1: cstring): pointer =
  fQCalendarWidget_virtualbase_metacast(self.h, param1)

type QCalendarWidgetmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetmetacastProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_metacast(self: ptr cQCalendarWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QCalendarWidget_metacast ".} =
  var nimfunc = cast[ptr QCalendarWidgetmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCalendarWidgetmetacall*(self: gen_qcalendarwidget_types.QCalendarWidget, param1: cint, param2: cint, param3: pointer): cint =
  fQCalendarWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QCalendarWidgetmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetmetacallProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_metacall(self: ptr cQCalendarWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QCalendarWidget_metacall ".} =
  var nimfunc = cast[ptr QCalendarWidgetmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QCalendarWidgetsizeHint*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQCalendarWidget_virtualbase_sizeHint(self.h))

type QCalendarWidgetsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetsizeHintProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_sizeHint(self: ptr cQCalendarWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QCalendarWidget_sizeHint ".} =
  var nimfunc = cast[ptr QCalendarWidgetsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCalendarWidgetminimumSizeHint*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQCalendarWidget_virtualbase_minimumSizeHint(self.h))

type QCalendarWidgetminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_minimumSizeHint(self: ptr cQCalendarWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QCalendarWidget_minimumSizeHint ".} =
  var nimfunc = cast[ptr QCalendarWidgetminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCalendarWidgetevent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qcoreevent_types.QEvent): bool =
  fQCalendarWidget_virtualbase_event(self.h, event.h)

type QCalendarWidgeteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgeteventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgeteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_event(self: ptr cQCalendarWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QCalendarWidget_event ".} =
  var nimfunc = cast[ptr QCalendarWidgeteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCalendarWidgeteventFilter*(self: gen_qcalendarwidget_types.QCalendarWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQCalendarWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QCalendarWidgeteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgeteventFilterProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgeteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_eventFilter(self: ptr cQCalendarWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QCalendarWidget_eventFilter ".} =
  var nimfunc = cast[ptr QCalendarWidgeteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QCalendarWidgetmousePressEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QMouseEvent): void =
  fQCalendarWidget_virtualbase_mousePressEvent(self.h, event.h)

type QCalendarWidgetmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetmousePressEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_mousePressEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_mousePressEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetresizeEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QResizeEvent): void =
  fQCalendarWidget_virtualbase_resizeEvent(self.h, event.h)

type QCalendarWidgetresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetresizeEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_resizeEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_resizeEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetkeyPressEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QKeyEvent): void =
  fQCalendarWidget_virtualbase_keyPressEvent(self.h, event.h)

type QCalendarWidgetkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_keyPressEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_keyPressEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetpaintCell*(self: gen_qcalendarwidget_types.QCalendarWidget, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, date: gen_qdatetime_types.QDate): void =
  fQCalendarWidget_virtualbase_paintCell(self.h, painter.h, rect.h, date.h)

type QCalendarWidgetpaintCellProc* = proc(painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, date: gen_qdatetime_types.QDate): void
proc onpaintCell*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetpaintCellProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetpaintCellProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_paintCell(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_paintCell(self: ptr cQCalendarWidget, slot: int, painter: pointer, rect: pointer, date: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_paintCell ".} =
  var nimfunc = cast[ptr QCalendarWidgetpaintCellProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qrect_types.QRect(h: rect)

  let slotval3 = gen_qdatetime_types.QDate(h: date)


  nimfunc[](slotval1, slotval2, slotval3)
proc QCalendarWidgetdevType*(self: gen_qcalendarwidget_types.QCalendarWidget, ): cint =
  fQCalendarWidget_virtualbase_devType(self.h)

type QCalendarWidgetdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetdevTypeProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_devType(self: ptr cQCalendarWidget, slot: int): cint {.exportc: "miqt_exec_callback_QCalendarWidget_devType ".} =
  var nimfunc = cast[ptr QCalendarWidgetdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QCalendarWidgetsetVisible*(self: gen_qcalendarwidget_types.QCalendarWidget, visible: bool): void =
  fQCalendarWidget_virtualbase_setVisible(self.h, visible)

type QCalendarWidgetsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetsetVisibleProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_setVisible(self: ptr cQCalendarWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QCalendarWidget_setVisible ".} =
  var nimfunc = cast[ptr QCalendarWidgetsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QCalendarWidgetheightForWidth*(self: gen_qcalendarwidget_types.QCalendarWidget, param1: cint): cint =
  fQCalendarWidget_virtualbase_heightForWidth(self.h, param1)

type QCalendarWidgetheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetheightForWidthProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_heightForWidth(self: ptr cQCalendarWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QCalendarWidget_heightForWidth ".} =
  var nimfunc = cast[ptr QCalendarWidgetheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCalendarWidgethasHeightForWidth*(self: gen_qcalendarwidget_types.QCalendarWidget, ): bool =
  fQCalendarWidget_virtualbase_hasHeightForWidth(self.h)

type QCalendarWidgethasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgethasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgethasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_hasHeightForWidth(self: ptr cQCalendarWidget, slot: int): bool {.exportc: "miqt_exec_callback_QCalendarWidget_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QCalendarWidgethasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QCalendarWidgetpaintEngine*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQCalendarWidget_virtualbase_paintEngine(self.h))

type QCalendarWidgetpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetpaintEngineProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_paintEngine(self: ptr cQCalendarWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QCalendarWidget_paintEngine ".} =
  var nimfunc = cast[ptr QCalendarWidgetpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCalendarWidgetmouseReleaseEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QMouseEvent): void =
  fQCalendarWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QCalendarWidgetmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_mouseReleaseEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetmouseDoubleClickEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QMouseEvent): void =
  fQCalendarWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QCalendarWidgetmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_mouseDoubleClickEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetmouseMoveEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QMouseEvent): void =
  fQCalendarWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QCalendarWidgetmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_mouseMoveEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetwheelEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QWheelEvent): void =
  fQCalendarWidget_virtualbase_wheelEvent(self.h, event.h)

type QCalendarWidgetwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetwheelEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_wheelEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_wheelEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetkeyReleaseEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QKeyEvent): void =
  fQCalendarWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QCalendarWidgetkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_keyReleaseEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetfocusInEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QFocusEvent): void =
  fQCalendarWidget_virtualbase_focusInEvent(self.h, event.h)

type QCalendarWidgetfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetfocusInEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_focusInEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_focusInEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetfocusOutEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QFocusEvent): void =
  fQCalendarWidget_virtualbase_focusOutEvent(self.h, event.h)

type QCalendarWidgetfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_focusOutEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_focusOutEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetenterEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QEnterEvent): void =
  fQCalendarWidget_virtualbase_enterEvent(self.h, event.h)

type QCalendarWidgetenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetenterEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_enterEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_enterEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetleaveEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qcoreevent_types.QEvent): void =
  fQCalendarWidget_virtualbase_leaveEvent(self.h, event.h)

type QCalendarWidgetleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetleaveEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_leaveEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_leaveEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetpaintEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QPaintEvent): void =
  fQCalendarWidget_virtualbase_paintEvent(self.h, event.h)

type QCalendarWidgetpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetpaintEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_paintEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_paintEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetmoveEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QMoveEvent): void =
  fQCalendarWidget_virtualbase_moveEvent(self.h, event.h)

type QCalendarWidgetmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetmoveEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_moveEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_moveEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetcloseEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QCloseEvent): void =
  fQCalendarWidget_virtualbase_closeEvent(self.h, event.h)

type QCalendarWidgetcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetcloseEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_closeEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_closeEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetcontextMenuEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fQCalendarWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QCalendarWidgetcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_contextMenuEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_contextMenuEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgettabletEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QTabletEvent): void =
  fQCalendarWidget_virtualbase_tabletEvent(self.h, event.h)

type QCalendarWidgettabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgettabletEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgettabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_tabletEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_tabletEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgettabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetactionEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QActionEvent): void =
  fQCalendarWidget_virtualbase_actionEvent(self.h, event.h)

type QCalendarWidgetactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetactionEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_actionEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_actionEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetdragEnterEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fQCalendarWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QCalendarWidgetdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_dragEnterEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_dragEnterEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetdragMoveEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fQCalendarWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QCalendarWidgetdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_dragMoveEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_dragMoveEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetdragLeaveEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fQCalendarWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QCalendarWidgetdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_dragLeaveEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetdropEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QDropEvent): void =
  fQCalendarWidget_virtualbase_dropEvent(self.h, event.h)

type QCalendarWidgetdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetdropEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_dropEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_dropEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetshowEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QShowEvent): void =
  fQCalendarWidget_virtualbase_showEvent(self.h, event.h)

type QCalendarWidgetshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetshowEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_showEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_showEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgethideEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qevent_types.QHideEvent): void =
  fQCalendarWidget_virtualbase_hideEvent(self.h, event.h)

type QCalendarWidgethideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgethideEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgethideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_hideEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_hideEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgethideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetnativeEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQCalendarWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QCalendarWidgetnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetnativeEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_nativeEvent(self: ptr cQCalendarWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QCalendarWidget_nativeEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QCalendarWidgetchangeEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, param1: gen_qcoreevent_types.QEvent): void =
  fQCalendarWidget_virtualbase_changeEvent(self.h, param1.h)

type QCalendarWidgetchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetchangeEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_changeEvent(self: ptr cQCalendarWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_changeEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QCalendarWidgetmetric*(self: gen_qcalendarwidget_types.QCalendarWidget, param1: cint): cint =
  fQCalendarWidget_virtualbase_metric(self.h, cint(param1))

type QCalendarWidgetmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetmetricProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_metric(self: ptr cQCalendarWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QCalendarWidget_metric ".} =
  var nimfunc = cast[ptr QCalendarWidgetmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCalendarWidgetinitPainter*(self: gen_qcalendarwidget_types.QCalendarWidget, painter: gen_qpainter_types.QPainter): void =
  fQCalendarWidget_virtualbase_initPainter(self.h, painter.h)

type QCalendarWidgetinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetinitPainterProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_initPainter(self: ptr cQCalendarWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_initPainter ".} =
  var nimfunc = cast[ptr QCalendarWidgetinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QCalendarWidgetredirected*(self: gen_qcalendarwidget_types.QCalendarWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQCalendarWidget_virtualbase_redirected(self.h, offset.h))

type QCalendarWidgetredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetredirectedProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_redirected(self: ptr cQCalendarWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QCalendarWidget_redirected ".} =
  var nimfunc = cast[ptr QCalendarWidgetredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QCalendarWidgetsharedPainter*(self: gen_qcalendarwidget_types.QCalendarWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQCalendarWidget_virtualbase_sharedPainter(self.h))

type QCalendarWidgetsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetsharedPainterProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_sharedPainter(self: ptr cQCalendarWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QCalendarWidget_sharedPainter ".} =
  var nimfunc = cast[ptr QCalendarWidgetsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCalendarWidgetinputMethodEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fQCalendarWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QCalendarWidgetinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_inputMethodEvent(self: ptr cQCalendarWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_inputMethodEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QCalendarWidgetinputMethodQuery*(self: gen_qcalendarwidget_types.QCalendarWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQCalendarWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QCalendarWidgetinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_inputMethodQuery(self: ptr cQCalendarWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QCalendarWidget_inputMethodQuery ".} =
  var nimfunc = cast[ptr QCalendarWidgetinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QCalendarWidgetfocusNextPrevChild*(self: gen_qcalendarwidget_types.QCalendarWidget, next: bool): bool =
  fQCalendarWidget_virtualbase_focusNextPrevChild(self.h, next)

type QCalendarWidgetfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_focusNextPrevChild(self: ptr cQCalendarWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QCalendarWidget_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QCalendarWidgetfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCalendarWidgettimerEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fQCalendarWidget_virtualbase_timerEvent(self.h, event.h)

type QCalendarWidgettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgettimerEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_timerEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_timerEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetchildEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fQCalendarWidget_virtualbase_childEvent(self.h, event.h)

type QCalendarWidgetchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetchildEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_childEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_childEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetcustomEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, event: gen_qcoreevent_types.QEvent): void =
  fQCalendarWidget_virtualbase_customEvent(self.h, event.h)

type QCalendarWidgetcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetcustomEventProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_customEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_customEvent ".} =
  var nimfunc = cast[ptr QCalendarWidgetcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QCalendarWidgetconnectNotify*(self: gen_qcalendarwidget_types.QCalendarWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQCalendarWidget_virtualbase_connectNotify(self.h, signal.h)

type QCalendarWidgetconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_connectNotify(self: ptr cQCalendarWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_connectNotify ".} =
  var nimfunc = cast[ptr QCalendarWidgetconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QCalendarWidgetdisconnectNotify*(self: gen_qcalendarwidget_types.QCalendarWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQCalendarWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QCalendarWidgetdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qcalendarwidget_types.QCalendarWidget, slot: QCalendarWidgetdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCalendarWidgetdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_disconnectNotify(self: ptr cQCalendarWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_disconnectNotify ".} =
  var nimfunc = cast[ptr QCalendarWidgetdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qcalendarwidget_types.QCalendarWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCalendarWidget_staticMetaObject())
proc delete*(self: gen_qcalendarwidget_types.QCalendarWidget) =
  fcQCalendarWidget_delete(self.h)
