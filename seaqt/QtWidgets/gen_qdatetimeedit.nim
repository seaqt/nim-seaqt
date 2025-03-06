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
{.compile("gen_qdatetimeedit.cpp", cflags).}


type QDateTimeEditSectionEnum* = distinct cint
template NoSection*(_: type QDateTimeEditSectionEnum): untyped = 0
template AmPmSection*(_: type QDateTimeEditSectionEnum): untyped = 1
template MSecSection*(_: type QDateTimeEditSectionEnum): untyped = 2
template SecondSection*(_: type QDateTimeEditSectionEnum): untyped = 4
template MinuteSection*(_: type QDateTimeEditSectionEnum): untyped = 8
template HourSection*(_: type QDateTimeEditSectionEnum): untyped = 16
template DaySection*(_: type QDateTimeEditSectionEnum): untyped = 256
template MonthSection*(_: type QDateTimeEditSectionEnum): untyped = 512
template YearSection*(_: type QDateTimeEditSectionEnum): untyped = 1024
template TimeSections_Mask*(_: type QDateTimeEditSectionEnum): untyped = 31
template DateSections_Mask*(_: type QDateTimeEditSectionEnum): untyped = 1792


import ./gen_qdatetimeedit_types
export gen_qdatetimeedit_types

import
  ../QtCore/gen_qcalendar_types,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qdatetime_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qabstractspinbox,
  ./gen_qcalendarwidget_types,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
export
  gen_qcalendar_types,
  gen_qcoreevent_types,
  gen_qdatetime_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qabstractspinbox,
  gen_qcalendarwidget_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQDateTimeEdit*{.exportc: "QDateTimeEdit", incompleteStruct.} = object
type cQTimeEdit*{.exportc: "QTimeEdit", incompleteStruct.} = object
type cQDateEdit*{.exportc: "QDateEdit", incompleteStruct.} = object

proc fcQDateTimeEdit_new(parent: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new".}
proc fcQDateTimeEdit_new2(): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new2".}
proc fcQDateTimeEdit_new3(dt: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new3".}
proc fcQDateTimeEdit_new4(d: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new4".}
proc fcQDateTimeEdit_new5(t: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new5".}
proc fcQDateTimeEdit_new6(dt: pointer, parent: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new6".}
proc fcQDateTimeEdit_new7(d: pointer, parent: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new7".}
proc fcQDateTimeEdit_new8(t: pointer, parent: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new8".}
proc fcQDateTimeEdit_metaObject(self: pointer, ): pointer {.importc: "QDateTimeEdit_metaObject".}
proc fcQDateTimeEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QDateTimeEdit_metacast".}
proc fcQDateTimeEdit_tr(s: cstring): struct_miqt_string {.importc: "QDateTimeEdit_tr".}
proc fcQDateTimeEdit_dateTime(self: pointer, ): pointer {.importc: "QDateTimeEdit_dateTime".}
proc fcQDateTimeEdit_date(self: pointer, ): pointer {.importc: "QDateTimeEdit_date".}
proc fcQDateTimeEdit_time(self: pointer, ): pointer {.importc: "QDateTimeEdit_time".}
proc fcQDateTimeEdit_calendar(self: pointer, ): pointer {.importc: "QDateTimeEdit_calendar".}
proc fcQDateTimeEdit_setCalendar(self: pointer, calendar: pointer): void {.importc: "QDateTimeEdit_setCalendar".}
proc fcQDateTimeEdit_minimumDateTime(self: pointer, ): pointer {.importc: "QDateTimeEdit_minimumDateTime".}
proc fcQDateTimeEdit_clearMinimumDateTime(self: pointer, ): void {.importc: "QDateTimeEdit_clearMinimumDateTime".}
proc fcQDateTimeEdit_setMinimumDateTime(self: pointer, dt: pointer): void {.importc: "QDateTimeEdit_setMinimumDateTime".}
proc fcQDateTimeEdit_maximumDateTime(self: pointer, ): pointer {.importc: "QDateTimeEdit_maximumDateTime".}
proc fcQDateTimeEdit_clearMaximumDateTime(self: pointer, ): void {.importc: "QDateTimeEdit_clearMaximumDateTime".}
proc fcQDateTimeEdit_setMaximumDateTime(self: pointer, dt: pointer): void {.importc: "QDateTimeEdit_setMaximumDateTime".}
proc fcQDateTimeEdit_setDateTimeRange(self: pointer, min: pointer, max: pointer): void {.importc: "QDateTimeEdit_setDateTimeRange".}
proc fcQDateTimeEdit_minimumDate(self: pointer, ): pointer {.importc: "QDateTimeEdit_minimumDate".}
proc fcQDateTimeEdit_setMinimumDate(self: pointer, min: pointer): void {.importc: "QDateTimeEdit_setMinimumDate".}
proc fcQDateTimeEdit_clearMinimumDate(self: pointer, ): void {.importc: "QDateTimeEdit_clearMinimumDate".}
proc fcQDateTimeEdit_maximumDate(self: pointer, ): pointer {.importc: "QDateTimeEdit_maximumDate".}
proc fcQDateTimeEdit_setMaximumDate(self: pointer, max: pointer): void {.importc: "QDateTimeEdit_setMaximumDate".}
proc fcQDateTimeEdit_clearMaximumDate(self: pointer, ): void {.importc: "QDateTimeEdit_clearMaximumDate".}
proc fcQDateTimeEdit_setDateRange(self: pointer, min: pointer, max: pointer): void {.importc: "QDateTimeEdit_setDateRange".}
proc fcQDateTimeEdit_minimumTime(self: pointer, ): pointer {.importc: "QDateTimeEdit_minimumTime".}
proc fcQDateTimeEdit_setMinimumTime(self: pointer, min: pointer): void {.importc: "QDateTimeEdit_setMinimumTime".}
proc fcQDateTimeEdit_clearMinimumTime(self: pointer, ): void {.importc: "QDateTimeEdit_clearMinimumTime".}
proc fcQDateTimeEdit_maximumTime(self: pointer, ): pointer {.importc: "QDateTimeEdit_maximumTime".}
proc fcQDateTimeEdit_setMaximumTime(self: pointer, max: pointer): void {.importc: "QDateTimeEdit_setMaximumTime".}
proc fcQDateTimeEdit_clearMaximumTime(self: pointer, ): void {.importc: "QDateTimeEdit_clearMaximumTime".}
proc fcQDateTimeEdit_setTimeRange(self: pointer, min: pointer, max: pointer): void {.importc: "QDateTimeEdit_setTimeRange".}
proc fcQDateTimeEdit_displayedSections(self: pointer, ): cint {.importc: "QDateTimeEdit_displayedSections".}
proc fcQDateTimeEdit_currentSection(self: pointer, ): cint {.importc: "QDateTimeEdit_currentSection".}
proc fcQDateTimeEdit_sectionAt(self: pointer, index: cint): cint {.importc: "QDateTimeEdit_sectionAt".}
proc fcQDateTimeEdit_setCurrentSection(self: pointer, section: cint): void {.importc: "QDateTimeEdit_setCurrentSection".}
proc fcQDateTimeEdit_currentSectionIndex(self: pointer, ): cint {.importc: "QDateTimeEdit_currentSectionIndex".}
proc fcQDateTimeEdit_setCurrentSectionIndex(self: pointer, index: cint): void {.importc: "QDateTimeEdit_setCurrentSectionIndex".}
proc fcQDateTimeEdit_calendarWidget(self: pointer, ): pointer {.importc: "QDateTimeEdit_calendarWidget".}
proc fcQDateTimeEdit_setCalendarWidget(self: pointer, calendarWidget: pointer): void {.importc: "QDateTimeEdit_setCalendarWidget".}
proc fcQDateTimeEdit_sectionCount(self: pointer, ): cint {.importc: "QDateTimeEdit_sectionCount".}
proc fcQDateTimeEdit_setSelectedSection(self: pointer, section: cint): void {.importc: "QDateTimeEdit_setSelectedSection".}
proc fcQDateTimeEdit_sectionText(self: pointer, section: cint): struct_miqt_string {.importc: "QDateTimeEdit_sectionText".}
proc fcQDateTimeEdit_displayFormat(self: pointer, ): struct_miqt_string {.importc: "QDateTimeEdit_displayFormat".}
proc fcQDateTimeEdit_setDisplayFormat(self: pointer, format: struct_miqt_string): void {.importc: "QDateTimeEdit_setDisplayFormat".}
proc fcQDateTimeEdit_calendarPopup(self: pointer, ): bool {.importc: "QDateTimeEdit_calendarPopup".}
proc fcQDateTimeEdit_setCalendarPopup(self: pointer, enable: bool): void {.importc: "QDateTimeEdit_setCalendarPopup".}
proc fcQDateTimeEdit_timeSpec(self: pointer, ): cint {.importc: "QDateTimeEdit_timeSpec".}
proc fcQDateTimeEdit_setTimeSpec(self: pointer, spec: cint): void {.importc: "QDateTimeEdit_setTimeSpec".}
proc fcQDateTimeEdit_sizeHint(self: pointer, ): pointer {.importc: "QDateTimeEdit_sizeHint".}
proc fcQDateTimeEdit_clear(self: pointer, ): void {.importc: "QDateTimeEdit_clear".}
proc fcQDateTimeEdit_stepBy(self: pointer, steps: cint): void {.importc: "QDateTimeEdit_stepBy".}
proc fcQDateTimeEdit_event(self: pointer, event: pointer): bool {.importc: "QDateTimeEdit_event".}
proc fcQDateTimeEdit_dateTimeChanged(self: pointer, dateTime: pointer): void {.importc: "QDateTimeEdit_dateTimeChanged".}
proc fcQDateTimeEdit_connect_dateTimeChanged(self: pointer, slot: int) {.importc: "QDateTimeEdit_connect_dateTimeChanged".}
proc fcQDateTimeEdit_timeChanged(self: pointer, time: pointer): void {.importc: "QDateTimeEdit_timeChanged".}
proc fcQDateTimeEdit_connect_timeChanged(self: pointer, slot: int) {.importc: "QDateTimeEdit_connect_timeChanged".}
proc fcQDateTimeEdit_dateChanged(self: pointer, date: pointer): void {.importc: "QDateTimeEdit_dateChanged".}
proc fcQDateTimeEdit_connect_dateChanged(self: pointer, slot: int) {.importc: "QDateTimeEdit_connect_dateChanged".}
proc fcQDateTimeEdit_setDateTime(self: pointer, dateTime: pointer): void {.importc: "QDateTimeEdit_setDateTime".}
proc fcQDateTimeEdit_setDate(self: pointer, date: pointer): void {.importc: "QDateTimeEdit_setDate".}
proc fcQDateTimeEdit_setTime(self: pointer, time: pointer): void {.importc: "QDateTimeEdit_setTime".}
proc fcQDateTimeEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDateTimeEdit_tr2".}
proc fcQDateTimeEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDateTimeEdit_tr3".}
proc fQDateTimeEdit_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QDateTimeEdit_virtualbase_sizeHint".}
proc fcQDateTimeEdit_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_sizeHint".}
proc fQDateTimeEdit_virtualbase_clear(self: pointer, ): void{.importc: "QDateTimeEdit_virtualbase_clear".}
proc fcQDateTimeEdit_override_virtual_clear(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_clear".}
proc fQDateTimeEdit_virtualbase_stepBy(self: pointer, steps: cint): void{.importc: "QDateTimeEdit_virtualbase_stepBy".}
proc fcQDateTimeEdit_override_virtual_stepBy(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_stepBy".}
proc fQDateTimeEdit_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDateTimeEdit_virtualbase_event".}
proc fcQDateTimeEdit_override_virtual_event(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_event".}
proc fQDateTimeEdit_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_keyPressEvent".}
proc fcQDateTimeEdit_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_keyPressEvent".}
proc fQDateTimeEdit_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_wheelEvent".}
proc fcQDateTimeEdit_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_wheelEvent".}
proc fQDateTimeEdit_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_focusInEvent".}
proc fcQDateTimeEdit_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_focusInEvent".}
proc fQDateTimeEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QDateTimeEdit_virtualbase_focusNextPrevChild".}
proc fcQDateTimeEdit_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_focusNextPrevChild".}
proc fQDateTimeEdit_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint{.importc: "QDateTimeEdit_virtualbase_validate".}
proc fcQDateTimeEdit_override_virtual_validate(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_validate".}
proc fQDateTimeEdit_virtualbase_fixup(self: pointer, input: struct_miqt_string): void{.importc: "QDateTimeEdit_virtualbase_fixup".}
proc fcQDateTimeEdit_override_virtual_fixup(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_fixup".}
proc fQDateTimeEdit_virtualbase_dateTimeFromText(self: pointer, text: struct_miqt_string): pointer{.importc: "QDateTimeEdit_virtualbase_dateTimeFromText".}
proc fcQDateTimeEdit_override_virtual_dateTimeFromText(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_dateTimeFromText".}
proc fQDateTimeEdit_virtualbase_textFromDateTime(self: pointer, dt: pointer): struct_miqt_string{.importc: "QDateTimeEdit_virtualbase_textFromDateTime".}
proc fcQDateTimeEdit_override_virtual_textFromDateTime(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_textFromDateTime".}
proc fQDateTimeEdit_virtualbase_stepEnabled(self: pointer, ): cint{.importc: "QDateTimeEdit_virtualbase_stepEnabled".}
proc fcQDateTimeEdit_override_virtual_stepEnabled(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_stepEnabled".}
proc fQDateTimeEdit_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_mousePressEvent".}
proc fcQDateTimeEdit_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_mousePressEvent".}
proc fQDateTimeEdit_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_paintEvent".}
proc fcQDateTimeEdit_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_paintEvent".}
proc fQDateTimeEdit_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QDateTimeEdit_virtualbase_initStyleOption".}
proc fcQDateTimeEdit_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_initStyleOption".}
proc fQDateTimeEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QDateTimeEdit_virtualbase_minimumSizeHint".}
proc fcQDateTimeEdit_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_minimumSizeHint".}
proc fQDateTimeEdit_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QDateTimeEdit_virtualbase_inputMethodQuery".}
proc fcQDateTimeEdit_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_inputMethodQuery".}
proc fQDateTimeEdit_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_resizeEvent".}
proc fcQDateTimeEdit_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_resizeEvent".}
proc fQDateTimeEdit_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_keyReleaseEvent".}
proc fcQDateTimeEdit_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_keyReleaseEvent".}
proc fQDateTimeEdit_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_focusOutEvent".}
proc fcQDateTimeEdit_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_focusOutEvent".}
proc fQDateTimeEdit_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_contextMenuEvent".}
proc fcQDateTimeEdit_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_contextMenuEvent".}
proc fQDateTimeEdit_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_changeEvent".}
proc fcQDateTimeEdit_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_changeEvent".}
proc fQDateTimeEdit_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_closeEvent".}
proc fcQDateTimeEdit_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_closeEvent".}
proc fQDateTimeEdit_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_hideEvent".}
proc fcQDateTimeEdit_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_hideEvent".}
proc fQDateTimeEdit_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_mouseReleaseEvent".}
proc fcQDateTimeEdit_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_mouseReleaseEvent".}
proc fQDateTimeEdit_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_mouseMoveEvent".}
proc fcQDateTimeEdit_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_mouseMoveEvent".}
proc fQDateTimeEdit_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_timerEvent".}
proc fcQDateTimeEdit_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_timerEvent".}
proc fQDateTimeEdit_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_showEvent".}
proc fcQDateTimeEdit_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_showEvent".}
proc fQDateTimeEdit_virtualbase_devType(self: pointer, ): cint{.importc: "QDateTimeEdit_virtualbase_devType".}
proc fcQDateTimeEdit_override_virtual_devType(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_devType".}
proc fQDateTimeEdit_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QDateTimeEdit_virtualbase_setVisible".}
proc fcQDateTimeEdit_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_setVisible".}
proc fQDateTimeEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QDateTimeEdit_virtualbase_heightForWidth".}
proc fcQDateTimeEdit_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_heightForWidth".}
proc fQDateTimeEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QDateTimeEdit_virtualbase_hasHeightForWidth".}
proc fcQDateTimeEdit_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_hasHeightForWidth".}
proc fQDateTimeEdit_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QDateTimeEdit_virtualbase_paintEngine".}
proc fcQDateTimeEdit_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_paintEngine".}
proc fQDateTimeEdit_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQDateTimeEdit_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_mouseDoubleClickEvent".}
proc fQDateTimeEdit_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_enterEvent".}
proc fcQDateTimeEdit_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_enterEvent".}
proc fQDateTimeEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_leaveEvent".}
proc fcQDateTimeEdit_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_leaveEvent".}
proc fQDateTimeEdit_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_moveEvent".}
proc fcQDateTimeEdit_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_moveEvent".}
proc fQDateTimeEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_tabletEvent".}
proc fcQDateTimeEdit_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_tabletEvent".}
proc fQDateTimeEdit_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_actionEvent".}
proc fcQDateTimeEdit_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_actionEvent".}
proc fQDateTimeEdit_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_dragEnterEvent".}
proc fcQDateTimeEdit_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_dragEnterEvent".}
proc fQDateTimeEdit_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_dragMoveEvent".}
proc fcQDateTimeEdit_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_dragMoveEvent".}
proc fQDateTimeEdit_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_dragLeaveEvent".}
proc fcQDateTimeEdit_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_dragLeaveEvent".}
proc fQDateTimeEdit_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_dropEvent".}
proc fcQDateTimeEdit_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_dropEvent".}
proc fQDateTimeEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QDateTimeEdit_virtualbase_nativeEvent".}
proc fcQDateTimeEdit_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_nativeEvent".}
proc fQDateTimeEdit_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QDateTimeEdit_virtualbase_metric".}
proc fcQDateTimeEdit_override_virtual_metric(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_metric".}
proc fQDateTimeEdit_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QDateTimeEdit_virtualbase_initPainter".}
proc fcQDateTimeEdit_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_initPainter".}
proc fQDateTimeEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QDateTimeEdit_virtualbase_redirected".}
proc fcQDateTimeEdit_override_virtual_redirected(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_redirected".}
proc fQDateTimeEdit_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QDateTimeEdit_virtualbase_sharedPainter".}
proc fcQDateTimeEdit_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_sharedPainter".}
proc fQDateTimeEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QDateTimeEdit_virtualbase_inputMethodEvent".}
proc fcQDateTimeEdit_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_inputMethodEvent".}
proc fQDateTimeEdit_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDateTimeEdit_virtualbase_eventFilter".}
proc fcQDateTimeEdit_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_eventFilter".}
proc fQDateTimeEdit_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_childEvent".}
proc fcQDateTimeEdit_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_childEvent".}
proc fQDateTimeEdit_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_customEvent".}
proc fcQDateTimeEdit_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_customEvent".}
proc fQDateTimeEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDateTimeEdit_virtualbase_connectNotify".}
proc fcQDateTimeEdit_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_connectNotify".}
proc fQDateTimeEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDateTimeEdit_virtualbase_disconnectNotify".}
proc fcQDateTimeEdit_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_disconnectNotify".}
proc fcQDateTimeEdit_delete(self: pointer) {.importc: "QDateTimeEdit_delete".}
proc fcQTimeEdit_new(parent: pointer): ptr cQTimeEdit {.importc: "QTimeEdit_new".}
proc fcQTimeEdit_new2(): ptr cQTimeEdit {.importc: "QTimeEdit_new2".}
proc fcQTimeEdit_new3(time: pointer): ptr cQTimeEdit {.importc: "QTimeEdit_new3".}
proc fcQTimeEdit_new4(time: pointer, parent: pointer): ptr cQTimeEdit {.importc: "QTimeEdit_new4".}
proc fcQTimeEdit_metaObject(self: pointer, ): pointer {.importc: "QTimeEdit_metaObject".}
proc fcQTimeEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QTimeEdit_metacast".}
proc fcQTimeEdit_tr(s: cstring): struct_miqt_string {.importc: "QTimeEdit_tr".}
proc fcQTimeEdit_userTimeChanged(self: pointer, time: pointer): void {.importc: "QTimeEdit_userTimeChanged".}
proc fcQTimeEdit_connect_userTimeChanged(self: pointer, slot: int) {.importc: "QTimeEdit_connect_userTimeChanged".}
proc fcQTimeEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTimeEdit_tr2".}
proc fcQTimeEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTimeEdit_tr3".}
proc fQTimeEdit_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTimeEdit_virtualbase_sizeHint".}
proc fcQTimeEdit_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_sizeHint".}
proc fQTimeEdit_virtualbase_clear(self: pointer, ): void{.importc: "QTimeEdit_virtualbase_clear".}
proc fcQTimeEdit_override_virtual_clear(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_clear".}
proc fQTimeEdit_virtualbase_stepBy(self: pointer, steps: cint): void{.importc: "QTimeEdit_virtualbase_stepBy".}
proc fcQTimeEdit_override_virtual_stepBy(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_stepBy".}
proc fQTimeEdit_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTimeEdit_virtualbase_event".}
proc fcQTimeEdit_override_virtual_event(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_event".}
proc fQTimeEdit_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_keyPressEvent".}
proc fcQTimeEdit_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_keyPressEvent".}
proc fQTimeEdit_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_wheelEvent".}
proc fcQTimeEdit_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_wheelEvent".}
proc fQTimeEdit_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_focusInEvent".}
proc fcQTimeEdit_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_focusInEvent".}
proc fQTimeEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTimeEdit_virtualbase_focusNextPrevChild".}
proc fcQTimeEdit_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_focusNextPrevChild".}
proc fQTimeEdit_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint{.importc: "QTimeEdit_virtualbase_validate".}
proc fcQTimeEdit_override_virtual_validate(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_validate".}
proc fQTimeEdit_virtualbase_fixup(self: pointer, input: struct_miqt_string): void{.importc: "QTimeEdit_virtualbase_fixup".}
proc fcQTimeEdit_override_virtual_fixup(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_fixup".}
proc fQTimeEdit_virtualbase_dateTimeFromText(self: pointer, text: struct_miqt_string): pointer{.importc: "QTimeEdit_virtualbase_dateTimeFromText".}
proc fcQTimeEdit_override_virtual_dateTimeFromText(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_dateTimeFromText".}
proc fQTimeEdit_virtualbase_textFromDateTime(self: pointer, dt: pointer): struct_miqt_string{.importc: "QTimeEdit_virtualbase_textFromDateTime".}
proc fcQTimeEdit_override_virtual_textFromDateTime(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_textFromDateTime".}
proc fQTimeEdit_virtualbase_stepEnabled(self: pointer, ): cint{.importc: "QTimeEdit_virtualbase_stepEnabled".}
proc fcQTimeEdit_override_virtual_stepEnabled(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_stepEnabled".}
proc fQTimeEdit_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_mousePressEvent".}
proc fcQTimeEdit_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_mousePressEvent".}
proc fQTimeEdit_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_paintEvent".}
proc fcQTimeEdit_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_paintEvent".}
proc fQTimeEdit_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QTimeEdit_virtualbase_initStyleOption".}
proc fcQTimeEdit_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_initStyleOption".}
proc fQTimeEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTimeEdit_virtualbase_minimumSizeHint".}
proc fcQTimeEdit_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_minimumSizeHint".}
proc fQTimeEdit_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QTimeEdit_virtualbase_inputMethodQuery".}
proc fcQTimeEdit_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_inputMethodQuery".}
proc fQTimeEdit_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_resizeEvent".}
proc fcQTimeEdit_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_resizeEvent".}
proc fQTimeEdit_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_keyReleaseEvent".}
proc fcQTimeEdit_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_keyReleaseEvent".}
proc fQTimeEdit_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_focusOutEvent".}
proc fcQTimeEdit_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_focusOutEvent".}
proc fQTimeEdit_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_contextMenuEvent".}
proc fcQTimeEdit_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_contextMenuEvent".}
proc fQTimeEdit_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_changeEvent".}
proc fcQTimeEdit_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_changeEvent".}
proc fQTimeEdit_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_closeEvent".}
proc fcQTimeEdit_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_closeEvent".}
proc fQTimeEdit_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_hideEvent".}
proc fcQTimeEdit_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_hideEvent".}
proc fQTimeEdit_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_mouseReleaseEvent".}
proc fcQTimeEdit_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_mouseReleaseEvent".}
proc fQTimeEdit_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_mouseMoveEvent".}
proc fcQTimeEdit_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_mouseMoveEvent".}
proc fQTimeEdit_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_timerEvent".}
proc fcQTimeEdit_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_timerEvent".}
proc fQTimeEdit_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_showEvent".}
proc fcQTimeEdit_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_showEvent".}
proc fQTimeEdit_virtualbase_devType(self: pointer, ): cint{.importc: "QTimeEdit_virtualbase_devType".}
proc fcQTimeEdit_override_virtual_devType(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_devType".}
proc fQTimeEdit_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTimeEdit_virtualbase_setVisible".}
proc fcQTimeEdit_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_setVisible".}
proc fQTimeEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QTimeEdit_virtualbase_heightForWidth".}
proc fcQTimeEdit_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_heightForWidth".}
proc fQTimeEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTimeEdit_virtualbase_hasHeightForWidth".}
proc fcQTimeEdit_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_hasHeightForWidth".}
proc fQTimeEdit_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTimeEdit_virtualbase_paintEngine".}
proc fcQTimeEdit_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_paintEngine".}
proc fQTimeEdit_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQTimeEdit_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_mouseDoubleClickEvent".}
proc fQTimeEdit_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_enterEvent".}
proc fcQTimeEdit_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_enterEvent".}
proc fQTimeEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_leaveEvent".}
proc fcQTimeEdit_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_leaveEvent".}
proc fQTimeEdit_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_moveEvent".}
proc fcQTimeEdit_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_moveEvent".}
proc fQTimeEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_tabletEvent".}
proc fcQTimeEdit_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_tabletEvent".}
proc fQTimeEdit_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_actionEvent".}
proc fcQTimeEdit_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_actionEvent".}
proc fQTimeEdit_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_dragEnterEvent".}
proc fcQTimeEdit_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_dragEnterEvent".}
proc fQTimeEdit_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_dragMoveEvent".}
proc fcQTimeEdit_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_dragMoveEvent".}
proc fQTimeEdit_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_dragLeaveEvent".}
proc fcQTimeEdit_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_dragLeaveEvent".}
proc fQTimeEdit_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_dropEvent".}
proc fcQTimeEdit_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_dropEvent".}
proc fQTimeEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QTimeEdit_virtualbase_nativeEvent".}
proc fcQTimeEdit_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_nativeEvent".}
proc fQTimeEdit_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTimeEdit_virtualbase_metric".}
proc fcQTimeEdit_override_virtual_metric(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_metric".}
proc fQTimeEdit_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTimeEdit_virtualbase_initPainter".}
proc fcQTimeEdit_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_initPainter".}
proc fQTimeEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTimeEdit_virtualbase_redirected".}
proc fcQTimeEdit_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_redirected".}
proc fQTimeEdit_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTimeEdit_virtualbase_sharedPainter".}
proc fcQTimeEdit_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_sharedPainter".}
proc fQTimeEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QTimeEdit_virtualbase_inputMethodEvent".}
proc fcQTimeEdit_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_inputMethodEvent".}
proc fQTimeEdit_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTimeEdit_virtualbase_eventFilter".}
proc fcQTimeEdit_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_eventFilter".}
proc fQTimeEdit_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_childEvent".}
proc fcQTimeEdit_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_childEvent".}
proc fQTimeEdit_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_customEvent".}
proc fcQTimeEdit_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_customEvent".}
proc fQTimeEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTimeEdit_virtualbase_connectNotify".}
proc fcQTimeEdit_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_connectNotify".}
proc fQTimeEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTimeEdit_virtualbase_disconnectNotify".}
proc fcQTimeEdit_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_disconnectNotify".}
proc fcQTimeEdit_delete(self: pointer) {.importc: "QTimeEdit_delete".}
proc fcQDateEdit_new(parent: pointer): ptr cQDateEdit {.importc: "QDateEdit_new".}
proc fcQDateEdit_new2(): ptr cQDateEdit {.importc: "QDateEdit_new2".}
proc fcQDateEdit_new3(date: pointer): ptr cQDateEdit {.importc: "QDateEdit_new3".}
proc fcQDateEdit_new4(date: pointer, parent: pointer): ptr cQDateEdit {.importc: "QDateEdit_new4".}
proc fcQDateEdit_metaObject(self: pointer, ): pointer {.importc: "QDateEdit_metaObject".}
proc fcQDateEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QDateEdit_metacast".}
proc fcQDateEdit_tr(s: cstring): struct_miqt_string {.importc: "QDateEdit_tr".}
proc fcQDateEdit_userDateChanged(self: pointer, date: pointer): void {.importc: "QDateEdit_userDateChanged".}
proc fcQDateEdit_connect_userDateChanged(self: pointer, slot: int) {.importc: "QDateEdit_connect_userDateChanged".}
proc fcQDateEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDateEdit_tr2".}
proc fcQDateEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDateEdit_tr3".}
proc fQDateEdit_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QDateEdit_virtualbase_sizeHint".}
proc fcQDateEdit_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_sizeHint".}
proc fQDateEdit_virtualbase_clear(self: pointer, ): void{.importc: "QDateEdit_virtualbase_clear".}
proc fcQDateEdit_override_virtual_clear(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_clear".}
proc fQDateEdit_virtualbase_stepBy(self: pointer, steps: cint): void{.importc: "QDateEdit_virtualbase_stepBy".}
proc fcQDateEdit_override_virtual_stepBy(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_stepBy".}
proc fQDateEdit_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDateEdit_virtualbase_event".}
proc fcQDateEdit_override_virtual_event(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_event".}
proc fQDateEdit_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_keyPressEvent".}
proc fcQDateEdit_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_keyPressEvent".}
proc fQDateEdit_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_wheelEvent".}
proc fcQDateEdit_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_wheelEvent".}
proc fQDateEdit_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_focusInEvent".}
proc fcQDateEdit_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_focusInEvent".}
proc fQDateEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QDateEdit_virtualbase_focusNextPrevChild".}
proc fcQDateEdit_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_focusNextPrevChild".}
proc fQDateEdit_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint{.importc: "QDateEdit_virtualbase_validate".}
proc fcQDateEdit_override_virtual_validate(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_validate".}
proc fQDateEdit_virtualbase_fixup(self: pointer, input: struct_miqt_string): void{.importc: "QDateEdit_virtualbase_fixup".}
proc fcQDateEdit_override_virtual_fixup(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_fixup".}
proc fQDateEdit_virtualbase_dateTimeFromText(self: pointer, text: struct_miqt_string): pointer{.importc: "QDateEdit_virtualbase_dateTimeFromText".}
proc fcQDateEdit_override_virtual_dateTimeFromText(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_dateTimeFromText".}
proc fQDateEdit_virtualbase_textFromDateTime(self: pointer, dt: pointer): struct_miqt_string{.importc: "QDateEdit_virtualbase_textFromDateTime".}
proc fcQDateEdit_override_virtual_textFromDateTime(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_textFromDateTime".}
proc fQDateEdit_virtualbase_stepEnabled(self: pointer, ): cint{.importc: "QDateEdit_virtualbase_stepEnabled".}
proc fcQDateEdit_override_virtual_stepEnabled(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_stepEnabled".}
proc fQDateEdit_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_mousePressEvent".}
proc fcQDateEdit_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_mousePressEvent".}
proc fQDateEdit_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_paintEvent".}
proc fcQDateEdit_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_paintEvent".}
proc fQDateEdit_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QDateEdit_virtualbase_initStyleOption".}
proc fcQDateEdit_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_initStyleOption".}
proc fQDateEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QDateEdit_virtualbase_minimumSizeHint".}
proc fcQDateEdit_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_minimumSizeHint".}
proc fQDateEdit_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QDateEdit_virtualbase_inputMethodQuery".}
proc fcQDateEdit_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_inputMethodQuery".}
proc fQDateEdit_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_resizeEvent".}
proc fcQDateEdit_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_resizeEvent".}
proc fQDateEdit_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_keyReleaseEvent".}
proc fcQDateEdit_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_keyReleaseEvent".}
proc fQDateEdit_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_focusOutEvent".}
proc fcQDateEdit_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_focusOutEvent".}
proc fQDateEdit_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_contextMenuEvent".}
proc fcQDateEdit_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_contextMenuEvent".}
proc fQDateEdit_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_changeEvent".}
proc fcQDateEdit_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_changeEvent".}
proc fQDateEdit_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_closeEvent".}
proc fcQDateEdit_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_closeEvent".}
proc fQDateEdit_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_hideEvent".}
proc fcQDateEdit_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_hideEvent".}
proc fQDateEdit_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_mouseReleaseEvent".}
proc fcQDateEdit_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_mouseReleaseEvent".}
proc fQDateEdit_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_mouseMoveEvent".}
proc fcQDateEdit_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_mouseMoveEvent".}
proc fQDateEdit_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_timerEvent".}
proc fcQDateEdit_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_timerEvent".}
proc fQDateEdit_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_showEvent".}
proc fcQDateEdit_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_showEvent".}
proc fQDateEdit_virtualbase_devType(self: pointer, ): cint{.importc: "QDateEdit_virtualbase_devType".}
proc fcQDateEdit_override_virtual_devType(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_devType".}
proc fQDateEdit_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QDateEdit_virtualbase_setVisible".}
proc fcQDateEdit_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_setVisible".}
proc fQDateEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QDateEdit_virtualbase_heightForWidth".}
proc fcQDateEdit_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_heightForWidth".}
proc fQDateEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QDateEdit_virtualbase_hasHeightForWidth".}
proc fcQDateEdit_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_hasHeightForWidth".}
proc fQDateEdit_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QDateEdit_virtualbase_paintEngine".}
proc fcQDateEdit_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_paintEngine".}
proc fQDateEdit_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQDateEdit_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_mouseDoubleClickEvent".}
proc fQDateEdit_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_enterEvent".}
proc fcQDateEdit_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_enterEvent".}
proc fQDateEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_leaveEvent".}
proc fcQDateEdit_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_leaveEvent".}
proc fQDateEdit_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_moveEvent".}
proc fcQDateEdit_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_moveEvent".}
proc fQDateEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_tabletEvent".}
proc fcQDateEdit_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_tabletEvent".}
proc fQDateEdit_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_actionEvent".}
proc fcQDateEdit_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_actionEvent".}
proc fQDateEdit_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_dragEnterEvent".}
proc fcQDateEdit_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_dragEnterEvent".}
proc fQDateEdit_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_dragMoveEvent".}
proc fcQDateEdit_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_dragMoveEvent".}
proc fQDateEdit_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_dragLeaveEvent".}
proc fcQDateEdit_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_dragLeaveEvent".}
proc fQDateEdit_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_dropEvent".}
proc fcQDateEdit_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_dropEvent".}
proc fQDateEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QDateEdit_virtualbase_nativeEvent".}
proc fcQDateEdit_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_nativeEvent".}
proc fQDateEdit_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QDateEdit_virtualbase_metric".}
proc fcQDateEdit_override_virtual_metric(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_metric".}
proc fQDateEdit_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QDateEdit_virtualbase_initPainter".}
proc fcQDateEdit_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_initPainter".}
proc fQDateEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QDateEdit_virtualbase_redirected".}
proc fcQDateEdit_override_virtual_redirected(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_redirected".}
proc fQDateEdit_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QDateEdit_virtualbase_sharedPainter".}
proc fcQDateEdit_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_sharedPainter".}
proc fQDateEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QDateEdit_virtualbase_inputMethodEvent".}
proc fcQDateEdit_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_inputMethodEvent".}
proc fQDateEdit_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDateEdit_virtualbase_eventFilter".}
proc fcQDateEdit_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_eventFilter".}
proc fQDateEdit_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_childEvent".}
proc fcQDateEdit_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_childEvent".}
proc fQDateEdit_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_customEvent".}
proc fcQDateEdit_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_customEvent".}
proc fQDateEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDateEdit_virtualbase_connectNotify".}
proc fcQDateEdit_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_connectNotify".}
proc fQDateEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDateEdit_virtualbase_disconnectNotify".}
proc fcQDateEdit_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_disconnectNotify".}
proc fcQDateEdit_delete(self: pointer) {.importc: "QDateEdit_delete".}


func init*(T: type gen_qdatetimeedit_types.QDateTimeEdit, h: ptr cQDateTimeEdit): gen_qdatetimeedit_types.QDateTimeEdit =
  T(h: h)
proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit, parent: gen_qwidget_types.QWidget): gen_qdatetimeedit_types.QDateTimeEdit =
  gen_qdatetimeedit_types.QDateTimeEdit.init(fcQDateTimeEdit_new(parent.h))

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qdatetimeedit_types.QDateTimeEdit =
  gen_qdatetimeedit_types.QDateTimeEdit.init(fcQDateTimeEdit_new2())

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit, dt: gen_qdatetime_types.QDateTime): gen_qdatetimeedit_types.QDateTimeEdit =
  gen_qdatetimeedit_types.QDateTimeEdit.init(fcQDateTimeEdit_new3(dt.h))

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit, d: gen_qdatetime_types.QDate): gen_qdatetimeedit_types.QDateTimeEdit =
  gen_qdatetimeedit_types.QDateTimeEdit.init(fcQDateTimeEdit_new4(d.h))

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit, t: gen_qdatetime_types.QTime): gen_qdatetimeedit_types.QDateTimeEdit =
  gen_qdatetimeedit_types.QDateTimeEdit.init(fcQDateTimeEdit_new5(t.h))

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit, dt: gen_qdatetime_types.QDateTime, parent: gen_qwidget_types.QWidget): gen_qdatetimeedit_types.QDateTimeEdit =
  gen_qdatetimeedit_types.QDateTimeEdit.init(fcQDateTimeEdit_new6(dt.h, parent.h))

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit, d: gen_qdatetime_types.QDate, parent: gen_qwidget_types.QWidget): gen_qdatetimeedit_types.QDateTimeEdit =
  gen_qdatetimeedit_types.QDateTimeEdit.init(fcQDateTimeEdit_new7(d.h, parent.h))

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit, t: gen_qdatetime_types.QTime, parent: gen_qwidget_types.QWidget): gen_qdatetimeedit_types.QDateTimeEdit =
  gen_qdatetimeedit_types.QDateTimeEdit.init(fcQDateTimeEdit_new8(t.h, parent.h))

proc metaObject*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDateTimeEdit_metaObject(self.h))

proc metacast*(self: gen_qdatetimeedit_types.QDateTimeEdit, param1: cstring): pointer =
  fcQDateTimeEdit_metacast(self.h, param1)

proc tr*(_: type gen_qdatetimeedit_types.QDateTimeEdit, s: cstring): string =
  let v_ms = fcQDateTimeEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc dateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTimeEdit_dateTime(self.h))

proc date*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDateTimeEdit_date(self.h))

proc time*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQDateTimeEdit_time(self.h))

proc calendar*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qcalendar_types.QCalendar =
  gen_qcalendar_types.QCalendar(h: fcQDateTimeEdit_calendar(self.h))

proc setCalendar*(self: gen_qdatetimeedit_types.QDateTimeEdit, calendar: gen_qcalendar_types.QCalendar): void =
  fcQDateTimeEdit_setCalendar(self.h, calendar.h)

proc minimumDateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTimeEdit_minimumDateTime(self.h))

proc clearMinimumDateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): void =
  fcQDateTimeEdit_clearMinimumDateTime(self.h)

proc setMinimumDateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, dt: gen_qdatetime_types.QDateTime): void =
  fcQDateTimeEdit_setMinimumDateTime(self.h, dt.h)

proc maximumDateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTimeEdit_maximumDateTime(self.h))

proc clearMaximumDateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): void =
  fcQDateTimeEdit_clearMaximumDateTime(self.h)

proc setMaximumDateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, dt: gen_qdatetime_types.QDateTime): void =
  fcQDateTimeEdit_setMaximumDateTime(self.h, dt.h)

proc setDateTimeRange*(self: gen_qdatetimeedit_types.QDateTimeEdit, min: gen_qdatetime_types.QDateTime, max: gen_qdatetime_types.QDateTime): void =
  fcQDateTimeEdit_setDateTimeRange(self.h, min.h, max.h)

proc minimumDate*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDateTimeEdit_minimumDate(self.h))

proc setMinimumDate*(self: gen_qdatetimeedit_types.QDateTimeEdit, min: gen_qdatetime_types.QDate): void =
  fcQDateTimeEdit_setMinimumDate(self.h, min.h)

proc clearMinimumDate*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): void =
  fcQDateTimeEdit_clearMinimumDate(self.h)

proc maximumDate*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDateTimeEdit_maximumDate(self.h))

proc setMaximumDate*(self: gen_qdatetimeedit_types.QDateTimeEdit, max: gen_qdatetime_types.QDate): void =
  fcQDateTimeEdit_setMaximumDate(self.h, max.h)

proc clearMaximumDate*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): void =
  fcQDateTimeEdit_clearMaximumDate(self.h)

proc setDateRange*(self: gen_qdatetimeedit_types.QDateTimeEdit, min: gen_qdatetime_types.QDate, max: gen_qdatetime_types.QDate): void =
  fcQDateTimeEdit_setDateRange(self.h, min.h, max.h)

proc minimumTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQDateTimeEdit_minimumTime(self.h))

proc setMinimumTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, min: gen_qdatetime_types.QTime): void =
  fcQDateTimeEdit_setMinimumTime(self.h, min.h)

proc clearMinimumTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): void =
  fcQDateTimeEdit_clearMinimumTime(self.h)

proc maximumTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQDateTimeEdit_maximumTime(self.h))

proc setMaximumTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, max: gen_qdatetime_types.QTime): void =
  fcQDateTimeEdit_setMaximumTime(self.h, max.h)

proc clearMaximumTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): void =
  fcQDateTimeEdit_clearMaximumTime(self.h)

proc setTimeRange*(self: gen_qdatetimeedit_types.QDateTimeEdit, min: gen_qdatetime_types.QTime, max: gen_qdatetime_types.QTime): void =
  fcQDateTimeEdit_setTimeRange(self.h, min.h, max.h)

proc displayedSections*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): cint =
  cint(fcQDateTimeEdit_displayedSections(self.h))

proc currentSection*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): cint =
  cint(fcQDateTimeEdit_currentSection(self.h))

proc sectionAt*(self: gen_qdatetimeedit_types.QDateTimeEdit, index: cint): cint =
  cint(fcQDateTimeEdit_sectionAt(self.h, index))

proc setCurrentSection*(self: gen_qdatetimeedit_types.QDateTimeEdit, section: cint): void =
  fcQDateTimeEdit_setCurrentSection(self.h, cint(section))

proc currentSectionIndex*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): cint =
  fcQDateTimeEdit_currentSectionIndex(self.h)

proc setCurrentSectionIndex*(self: gen_qdatetimeedit_types.QDateTimeEdit, index: cint): void =
  fcQDateTimeEdit_setCurrentSectionIndex(self.h, index)

proc calendarWidget*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qcalendarwidget_types.QCalendarWidget =
  gen_qcalendarwidget_types.QCalendarWidget(h: fcQDateTimeEdit_calendarWidget(self.h))

proc setCalendarWidget*(self: gen_qdatetimeedit_types.QDateTimeEdit, calendarWidget: gen_qcalendarwidget_types.QCalendarWidget): void =
  fcQDateTimeEdit_setCalendarWidget(self.h, calendarWidget.h)

proc sectionCount*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): cint =
  fcQDateTimeEdit_sectionCount(self.h)

proc setSelectedSection*(self: gen_qdatetimeedit_types.QDateTimeEdit, section: cint): void =
  fcQDateTimeEdit_setSelectedSection(self.h, cint(section))

proc sectionText*(self: gen_qdatetimeedit_types.QDateTimeEdit, section: cint): string =
  let v_ms = fcQDateTimeEdit_sectionText(self.h, cint(section))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc displayFormat*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): string =
  let v_ms = fcQDateTimeEdit_displayFormat(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDisplayFormat*(self: gen_qdatetimeedit_types.QDateTimeEdit, format: string): void =
  fcQDateTimeEdit_setDisplayFormat(self.h, struct_miqt_string(data: format, len: csize_t(len(format))))

proc calendarPopup*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): bool =
  fcQDateTimeEdit_calendarPopup(self.h)

proc setCalendarPopup*(self: gen_qdatetimeedit_types.QDateTimeEdit, enable: bool): void =
  fcQDateTimeEdit_setCalendarPopup(self.h, enable)

proc timeSpec*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): cint =
  cint(fcQDateTimeEdit_timeSpec(self.h))

proc setTimeSpec*(self: gen_qdatetimeedit_types.QDateTimeEdit, spec: cint): void =
  fcQDateTimeEdit_setTimeSpec(self.h, cint(spec))

proc sizeHint*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDateTimeEdit_sizeHint(self.h))

proc clear*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): void =
  fcQDateTimeEdit_clear(self.h)

proc stepBy*(self: gen_qdatetimeedit_types.QDateTimeEdit, steps: cint): void =
  fcQDateTimeEdit_stepBy(self.h, steps)

proc event*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qcoreevent_types.QEvent): bool =
  fcQDateTimeEdit_event(self.h, event.h)

proc dateTimeChanged*(self: gen_qdatetimeedit_types.QDateTimeEdit, dateTime: gen_qdatetime_types.QDateTime): void =
  fcQDateTimeEdit_dateTimeChanged(self.h, dateTime.h)

type QDateTimeEditdateTimeChangedSlot* = proc(dateTime: gen_qdatetime_types.QDateTime)
proc miqt_exec_callback_QDateTimeEdit_dateTimeChanged(slot: int, dateTime: pointer) {.exportc.} =
  let nimfunc = cast[ptr QDateTimeEditdateTimeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qdatetime_types.QDateTime(h: dateTime)

  nimfunc[](slotval1)

proc ondateTimeChanged*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditdateTimeChangedSlot) =
  var tmp = new QDateTimeEditdateTimeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_connect_dateTimeChanged(self.h, cast[int](addr tmp[]))

proc timeChanged*(self: gen_qdatetimeedit_types.QDateTimeEdit, time: gen_qdatetime_types.QTime): void =
  fcQDateTimeEdit_timeChanged(self.h, time.h)

type QDateTimeEdittimeChangedSlot* = proc(time: gen_qdatetime_types.QTime)
proc miqt_exec_callback_QDateTimeEdit_timeChanged(slot: int, time: pointer) {.exportc.} =
  let nimfunc = cast[ptr QDateTimeEdittimeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qdatetime_types.QTime(h: time)

  nimfunc[](slotval1)

proc ontimeChanged*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEdittimeChangedSlot) =
  var tmp = new QDateTimeEdittimeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_connect_timeChanged(self.h, cast[int](addr tmp[]))

proc dateChanged*(self: gen_qdatetimeedit_types.QDateTimeEdit, date: gen_qdatetime_types.QDate): void =
  fcQDateTimeEdit_dateChanged(self.h, date.h)

type QDateTimeEditdateChangedSlot* = proc(date: gen_qdatetime_types.QDate)
proc miqt_exec_callback_QDateTimeEdit_dateChanged(slot: int, date: pointer) {.exportc.} =
  let nimfunc = cast[ptr QDateTimeEditdateChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qdatetime_types.QDate(h: date)

  nimfunc[](slotval1)

proc ondateChanged*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditdateChangedSlot) =
  var tmp = new QDateTimeEditdateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_connect_dateChanged(self.h, cast[int](addr tmp[]))

proc setDateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, dateTime: gen_qdatetime_types.QDateTime): void =
  fcQDateTimeEdit_setDateTime(self.h, dateTime.h)

proc setDate*(self: gen_qdatetimeedit_types.QDateTimeEdit, date: gen_qdatetime_types.QDate): void =
  fcQDateTimeEdit_setDate(self.h, date.h)

proc setTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, time: gen_qdatetime_types.QTime): void =
  fcQDateTimeEdit_setTime(self.h, time.h)

proc tr*(_: type gen_qdatetimeedit_types.QDateTimeEdit, s: cstring, c: cstring): string =
  let v_ms = fcQDateTimeEdit_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdatetimeedit_types.QDateTimeEdit, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDateTimeEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QDateTimeEditsizeHint*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQDateTimeEdit_virtualbase_sizeHint(self.h))

type QDateTimeEditsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditsizeHintProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_sizeHint(self: ptr cQDateTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateTimeEdit_sizeHint ".} =
  var nimfunc = cast[ptr QDateTimeEditsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDateTimeEditclear*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): void =
  fQDateTimeEdit_virtualbase_clear(self.h)

type QDateTimeEditclearProc* = proc(): void
proc onclear*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditclearProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditclearProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_clear(self: ptr cQDateTimeEdit, slot: int): void {.exportc: "miqt_exec_callback_QDateTimeEdit_clear ".} =
  var nimfunc = cast[ptr QDateTimeEditclearProc](cast[pointer](slot))

  nimfunc[]()
proc QDateTimeEditstepBy*(self: gen_qdatetimeedit_types.QDateTimeEdit, steps: cint): void =
  fQDateTimeEdit_virtualbase_stepBy(self.h, steps)

type QDateTimeEditstepByProc* = proc(steps: cint): void
proc onstepBy*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditstepByProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditstepByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_stepBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_stepBy(self: ptr cQDateTimeEdit, slot: int, steps: cint): void {.exportc: "miqt_exec_callback_QDateTimeEdit_stepBy ".} =
  var nimfunc = cast[ptr QDateTimeEditstepByProc](cast[pointer](slot))
  let slotval1 = steps


  nimfunc[](slotval1)
proc QDateTimeEditevent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qcoreevent_types.QEvent): bool =
  fQDateTimeEdit_virtualbase_event(self.h, event.h)

type QDateTimeEditeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditeventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_event(self: ptr cQDateTimeEdit, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDateTimeEdit_event ".} =
  var nimfunc = cast[ptr QDateTimeEditeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDateTimeEditkeyPressEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QKeyEvent): void =
  fQDateTimeEdit_virtualbase_keyPressEvent(self.h, event.h)

type QDateTimeEditkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_keyPressEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_keyPressEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditwheelEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QWheelEvent): void =
  fQDateTimeEdit_virtualbase_wheelEvent(self.h, event.h)

type QDateTimeEditwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditwheelEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_wheelEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_wheelEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditfocusInEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QFocusEvent): void =
  fQDateTimeEdit_virtualbase_focusInEvent(self.h, event.h)

type QDateTimeEditfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditfocusInEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_focusInEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_focusInEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditfocusNextPrevChild*(self: gen_qdatetimeedit_types.QDateTimeEdit, next: bool): bool =
  fQDateTimeEdit_virtualbase_focusNextPrevChild(self.h, next)

type QDateTimeEditfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_focusNextPrevChild(self: ptr cQDateTimeEdit, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QDateTimeEdit_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QDateTimeEditfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDateTimeEditvalidate*(self: gen_qdatetimeedit_types.QDateTimeEdit, input: string, pos: ptr cint): cint =
  cint(fQDateTimeEdit_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

type QDateTimeEditvalidateProc* = proc(input: string, pos: ptr cint): cint
proc onvalidate*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditvalidateProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_validate(self: ptr cQDateTimeEdit, slot: int, input: struct_miqt_string, pos: ptr cint): cint {.exportc: "miqt_exec_callback_QDateTimeEdit_validate ".} =
  var nimfunc = cast[ptr QDateTimeEditvalidateProc](cast[pointer](slot))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret

  let slotval2 = pos


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QDateTimeEditfixup*(self: gen_qdatetimeedit_types.QDateTimeEdit, input: string): void =
  fQDateTimeEdit_virtualbase_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

type QDateTimeEditfixupProc* = proc(input: string): void
proc onfixup*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditfixupProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditfixupProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_fixup(self: ptr cQDateTimeEdit, slot: int, input: struct_miqt_string): void {.exportc: "miqt_exec_callback_QDateTimeEdit_fixup ".} =
  var nimfunc = cast[ptr QDateTimeEditfixupProc](cast[pointer](slot))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret


  nimfunc[](slotval1)
proc QDateTimeEditdateTimeFromText*(self: gen_qdatetimeedit_types.QDateTimeEdit, text: string): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fQDateTimeEdit_virtualbase_dateTimeFromText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

type QDateTimeEditdateTimeFromTextProc* = proc(text: string): gen_qdatetime_types.QDateTime
proc ondateTimeFromText*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditdateTimeFromTextProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditdateTimeFromTextProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_dateTimeFromText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_dateTimeFromText(self: ptr cQDateTimeEdit, slot: int, text: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QDateTimeEdit_dateTimeFromText ".} =
  var nimfunc = cast[ptr QDateTimeEditdateTimeFromTextProc](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDateTimeEdittextFromDateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, dt: gen_qdatetime_types.QDateTime): string =
  let v_ms = fQDateTimeEdit_virtualbase_textFromDateTime(self.h, dt.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QDateTimeEdittextFromDateTimeProc* = proc(dt: gen_qdatetime_types.QDateTime): string
proc ontextFromDateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEdittextFromDateTimeProc) =
  # TODO check subclass
  var tmp = new QDateTimeEdittextFromDateTimeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_textFromDateTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_textFromDateTime(self: ptr cQDateTimeEdit, slot: int, dt: pointer): struct_miqt_string {.exportc: "miqt_exec_callback_QDateTimeEdit_textFromDateTime ".} =
  var nimfunc = cast[ptr QDateTimeEdittextFromDateTimeProc](cast[pointer](slot))
  let slotval1 = gen_qdatetime_types.QDateTime(h: dt)


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QDateTimeEditstepEnabled*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): cint =
  cint(fQDateTimeEdit_virtualbase_stepEnabled(self.h))

type QDateTimeEditstepEnabledProc* = proc(): cint
proc onstepEnabled*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditstepEnabledProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditstepEnabledProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_stepEnabled(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_stepEnabled(self: ptr cQDateTimeEdit, slot: int): cint {.exportc: "miqt_exec_callback_QDateTimeEdit_stepEnabled ".} =
  var nimfunc = cast[ptr QDateTimeEditstepEnabledProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QDateTimeEditmousePressEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QMouseEvent): void =
  fQDateTimeEdit_virtualbase_mousePressEvent(self.h, event.h)

type QDateTimeEditmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditmousePressEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_mousePressEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_mousePressEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditpaintEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QPaintEvent): void =
  fQDateTimeEdit_virtualbase_paintEvent(self.h, event.h)

type QDateTimeEditpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditpaintEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_paintEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_paintEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditinitStyleOption*(self: gen_qdatetimeedit_types.QDateTimeEdit, option: gen_qstyleoption_types.QStyleOptionSpinBox): void =
  fQDateTimeEdit_virtualbase_initStyleOption(self.h, option.h)

type QDateTimeEditinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionSpinBox): void
proc oninitStyleOption*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_initStyleOption(self: ptr cQDateTimeEdit, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_initStyleOption ".} =
  var nimfunc = cast[ptr QDateTimeEditinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionSpinBox(h: option)


  nimfunc[](slotval1)
proc QDateTimeEditminimumSizeHint*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQDateTimeEdit_virtualbase_minimumSizeHint(self.h))

type QDateTimeEditminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_minimumSizeHint(self: ptr cQDateTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateTimeEdit_minimumSizeHint ".} =
  var nimfunc = cast[ptr QDateTimeEditminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDateTimeEditinputMethodQuery*(self: gen_qdatetimeedit_types.QDateTimeEdit, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQDateTimeEdit_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QDateTimeEditinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_inputMethodQuery(self: ptr cQDateTimeEdit, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QDateTimeEdit_inputMethodQuery ".} =
  var nimfunc = cast[ptr QDateTimeEditinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDateTimeEditresizeEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QResizeEvent): void =
  fQDateTimeEdit_virtualbase_resizeEvent(self.h, event.h)

type QDateTimeEditresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditresizeEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_resizeEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_resizeEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditkeyReleaseEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QKeyEvent): void =
  fQDateTimeEdit_virtualbase_keyReleaseEvent(self.h, event.h)

type QDateTimeEditkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_keyReleaseEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditfocusOutEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QFocusEvent): void =
  fQDateTimeEdit_virtualbase_focusOutEvent(self.h, event.h)

type QDateTimeEditfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_focusOutEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_focusOutEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditcontextMenuEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QContextMenuEvent): void =
  fQDateTimeEdit_virtualbase_contextMenuEvent(self.h, event.h)

type QDateTimeEditcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_contextMenuEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_contextMenuEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditchangeEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qcoreevent_types.QEvent): void =
  fQDateTimeEdit_virtualbase_changeEvent(self.h, event.h)

type QDateTimeEditchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditchangeEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_changeEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_changeEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditcloseEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QCloseEvent): void =
  fQDateTimeEdit_virtualbase_closeEvent(self.h, event.h)

type QDateTimeEditcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditcloseEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_closeEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_closeEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEdithideEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QHideEvent): void =
  fQDateTimeEdit_virtualbase_hideEvent(self.h, event.h)

type QDateTimeEdithideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEdithideEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEdithideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_hideEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_hideEvent ".} =
  var nimfunc = cast[ptr QDateTimeEdithideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditmouseReleaseEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QMouseEvent): void =
  fQDateTimeEdit_virtualbase_mouseReleaseEvent(self.h, event.h)

type QDateTimeEditmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_mouseReleaseEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditmouseMoveEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QMouseEvent): void =
  fQDateTimeEdit_virtualbase_mouseMoveEvent(self.h, event.h)

type QDateTimeEditmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_mouseMoveEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEdittimerEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qcoreevent_types.QTimerEvent): void =
  fQDateTimeEdit_virtualbase_timerEvent(self.h, event.h)

type QDateTimeEdittimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEdittimerEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEdittimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_timerEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_timerEvent ".} =
  var nimfunc = cast[ptr QDateTimeEdittimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditshowEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QShowEvent): void =
  fQDateTimeEdit_virtualbase_showEvent(self.h, event.h)

type QDateTimeEditshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditshowEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_showEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_showEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditdevType*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): cint =
  fQDateTimeEdit_virtualbase_devType(self.h)

type QDateTimeEditdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditdevTypeProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_devType(self: ptr cQDateTimeEdit, slot: int): cint {.exportc: "miqt_exec_callback_QDateTimeEdit_devType ".} =
  var nimfunc = cast[ptr QDateTimeEditdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDateTimeEditsetVisible*(self: gen_qdatetimeedit_types.QDateTimeEdit, visible: bool): void =
  fQDateTimeEdit_virtualbase_setVisible(self.h, visible)

type QDateTimeEditsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditsetVisibleProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_setVisible(self: ptr cQDateTimeEdit, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QDateTimeEdit_setVisible ".} =
  var nimfunc = cast[ptr QDateTimeEditsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QDateTimeEditheightForWidth*(self: gen_qdatetimeedit_types.QDateTimeEdit, param1: cint): cint =
  fQDateTimeEdit_virtualbase_heightForWidth(self.h, param1)

type QDateTimeEditheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditheightForWidthProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_heightForWidth(self: ptr cQDateTimeEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDateTimeEdit_heightForWidth ".} =
  var nimfunc = cast[ptr QDateTimeEditheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDateTimeEdithasHeightForWidth*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): bool =
  fQDateTimeEdit_virtualbase_hasHeightForWidth(self.h)

type QDateTimeEdithasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEdithasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QDateTimeEdithasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_hasHeightForWidth(self: ptr cQDateTimeEdit, slot: int): bool {.exportc: "miqt_exec_callback_QDateTimeEdit_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QDateTimeEdithasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDateTimeEditpaintEngine*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQDateTimeEdit_virtualbase_paintEngine(self.h))

type QDateTimeEditpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditpaintEngineProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_paintEngine(self: ptr cQDateTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateTimeEdit_paintEngine ".} =
  var nimfunc = cast[ptr QDateTimeEditpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDateTimeEditmouseDoubleClickEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QMouseEvent): void =
  fQDateTimeEdit_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QDateTimeEditmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_mouseDoubleClickEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditenterEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QEnterEvent): void =
  fQDateTimeEdit_virtualbase_enterEvent(self.h, event.h)

type QDateTimeEditenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditenterEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_enterEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_enterEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditleaveEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qcoreevent_types.QEvent): void =
  fQDateTimeEdit_virtualbase_leaveEvent(self.h, event.h)

type QDateTimeEditleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditleaveEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_leaveEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_leaveEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditmoveEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QMoveEvent): void =
  fQDateTimeEdit_virtualbase_moveEvent(self.h, event.h)

type QDateTimeEditmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditmoveEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_moveEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_moveEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEdittabletEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QTabletEvent): void =
  fQDateTimeEdit_virtualbase_tabletEvent(self.h, event.h)

type QDateTimeEdittabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEdittabletEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEdittabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_tabletEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_tabletEvent ".} =
  var nimfunc = cast[ptr QDateTimeEdittabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditactionEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QActionEvent): void =
  fQDateTimeEdit_virtualbase_actionEvent(self.h, event.h)

type QDateTimeEditactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditactionEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_actionEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_actionEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditdragEnterEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QDragEnterEvent): void =
  fQDateTimeEdit_virtualbase_dragEnterEvent(self.h, event.h)

type QDateTimeEditdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_dragEnterEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_dragEnterEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditdragMoveEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QDragMoveEvent): void =
  fQDateTimeEdit_virtualbase_dragMoveEvent(self.h, event.h)

type QDateTimeEditdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_dragMoveEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_dragMoveEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditdragLeaveEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QDragLeaveEvent): void =
  fQDateTimeEdit_virtualbase_dragLeaveEvent(self.h, event.h)

type QDateTimeEditdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_dragLeaveEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditdropEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QDropEvent): void =
  fQDateTimeEdit_virtualbase_dropEvent(self.h, event.h)

type QDateTimeEditdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditdropEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_dropEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_dropEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditnativeEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQDateTimeEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QDateTimeEditnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditnativeEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_nativeEvent(self: ptr cQDateTimeEdit, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QDateTimeEdit_nativeEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDateTimeEditmetric*(self: gen_qdatetimeedit_types.QDateTimeEdit, param1: cint): cint =
  fQDateTimeEdit_virtualbase_metric(self.h, cint(param1))

type QDateTimeEditmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditmetricProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_metric(self: ptr cQDateTimeEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDateTimeEdit_metric ".} =
  var nimfunc = cast[ptr QDateTimeEditmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDateTimeEditinitPainter*(self: gen_qdatetimeedit_types.QDateTimeEdit, painter: gen_qpainter_types.QPainter): void =
  fQDateTimeEdit_virtualbase_initPainter(self.h, painter.h)

type QDateTimeEditinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditinitPainterProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_initPainter(self: ptr cQDateTimeEdit, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_initPainter ".} =
  var nimfunc = cast[ptr QDateTimeEditinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QDateTimeEditredirected*(self: gen_qdatetimeedit_types.QDateTimeEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQDateTimeEdit_virtualbase_redirected(self.h, offset.h))

type QDateTimeEditredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditredirectedProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_redirected(self: ptr cQDateTimeEdit, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QDateTimeEdit_redirected ".} =
  var nimfunc = cast[ptr QDateTimeEditredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDateTimeEditsharedPainter*(self: gen_qdatetimeedit_types.QDateTimeEdit, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQDateTimeEdit_virtualbase_sharedPainter(self.h))

type QDateTimeEditsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditsharedPainterProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_sharedPainter(self: ptr cQDateTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateTimeEdit_sharedPainter ".} =
  var nimfunc = cast[ptr QDateTimeEditsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDateTimeEditinputMethodEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, param1: gen_qevent_types.QInputMethodEvent): void =
  fQDateTimeEdit_virtualbase_inputMethodEvent(self.h, param1.h)

type QDateTimeEditinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_inputMethodEvent(self: ptr cQDateTimeEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_inputMethodEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QDateTimeEditeventFilter*(self: gen_qdatetimeedit_types.QDateTimeEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQDateTimeEdit_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDateTimeEditeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditeventFilterProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_eventFilter(self: ptr cQDateTimeEdit, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDateTimeEdit_eventFilter ".} =
  var nimfunc = cast[ptr QDateTimeEditeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QDateTimeEditchildEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qcoreevent_types.QChildEvent): void =
  fQDateTimeEdit_virtualbase_childEvent(self.h, event.h)

type QDateTimeEditchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditchildEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_childEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_childEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditcustomEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qcoreevent_types.QEvent): void =
  fQDateTimeEdit_virtualbase_customEvent(self.h, event.h)

type QDateTimeEditcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditcustomEventProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_customEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_customEvent ".} =
  var nimfunc = cast[ptr QDateTimeEditcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDateTimeEditconnectNotify*(self: gen_qdatetimeedit_types.QDateTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDateTimeEdit_virtualbase_connectNotify(self.h, signal.h)

type QDateTimeEditconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_connectNotify(self: ptr cQDateTimeEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_connectNotify ".} =
  var nimfunc = cast[ptr QDateTimeEditconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QDateTimeEditdisconnectNotify*(self: gen_qdatetimeedit_types.QDateTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDateTimeEdit_virtualbase_disconnectNotify(self.h, signal.h)

type QDateTimeEditdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDateTimeEditdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_disconnectNotify(self: ptr cQDateTimeEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_disconnectNotify ".} =
  var nimfunc = cast[ptr QDateTimeEditdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qdatetimeedit_types.QDateTimeEdit) =
  fcQDateTimeEdit_delete(self.h)

func init*(T: type gen_qdatetimeedit_types.QTimeEdit, h: ptr cQTimeEdit): gen_qdatetimeedit_types.QTimeEdit =
  T(h: h)
proc create*(T: type gen_qdatetimeedit_types.QTimeEdit, parent: gen_qwidget_types.QWidget): gen_qdatetimeedit_types.QTimeEdit =
  gen_qdatetimeedit_types.QTimeEdit.init(fcQTimeEdit_new(parent.h))

proc create*(T: type gen_qdatetimeedit_types.QTimeEdit, ): gen_qdatetimeedit_types.QTimeEdit =
  gen_qdatetimeedit_types.QTimeEdit.init(fcQTimeEdit_new2())

proc create*(T: type gen_qdatetimeedit_types.QTimeEdit, time: gen_qdatetime_types.QTime): gen_qdatetimeedit_types.QTimeEdit =
  gen_qdatetimeedit_types.QTimeEdit.init(fcQTimeEdit_new3(time.h))

proc create*(T: type gen_qdatetimeedit_types.QTimeEdit, time: gen_qdatetime_types.QTime, parent: gen_qwidget_types.QWidget): gen_qdatetimeedit_types.QTimeEdit =
  gen_qdatetimeedit_types.QTimeEdit.init(fcQTimeEdit_new4(time.h, parent.h))

proc metaObject*(self: gen_qdatetimeedit_types.QTimeEdit, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTimeEdit_metaObject(self.h))

proc metacast*(self: gen_qdatetimeedit_types.QTimeEdit, param1: cstring): pointer =
  fcQTimeEdit_metacast(self.h, param1)

proc tr*(_: type gen_qdatetimeedit_types.QTimeEdit, s: cstring): string =
  let v_ms = fcQTimeEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc userTimeChanged*(self: gen_qdatetimeedit_types.QTimeEdit, time: gen_qdatetime_types.QTime): void =
  fcQTimeEdit_userTimeChanged(self.h, time.h)

type QTimeEdituserTimeChangedSlot* = proc(time: gen_qdatetime_types.QTime)
proc miqt_exec_callback_QTimeEdit_userTimeChanged(slot: int, time: pointer) {.exportc.} =
  let nimfunc = cast[ptr QTimeEdituserTimeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qdatetime_types.QTime(h: time)

  nimfunc[](slotval1)

proc onuserTimeChanged*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEdituserTimeChangedSlot) =
  var tmp = new QTimeEdituserTimeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_connect_userTimeChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qdatetimeedit_types.QTimeEdit, s: cstring, c: cstring): string =
  let v_ms = fcQTimeEdit_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdatetimeedit_types.QTimeEdit, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTimeEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QTimeEditsizeHint*(self: gen_qdatetimeedit_types.QTimeEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTimeEdit_virtualbase_sizeHint(self.h))

type QTimeEditsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditsizeHintProc) =
  # TODO check subclass
  var tmp = new QTimeEditsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_sizeHint(self: ptr cQTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTimeEdit_sizeHint ".} =
  var nimfunc = cast[ptr QTimeEditsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTimeEditclear*(self: gen_qdatetimeedit_types.QTimeEdit, ): void =
  fQTimeEdit_virtualbase_clear(self.h)

type QTimeEditclearProc* = proc(): void
proc onclear*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditclearProc) =
  # TODO check subclass
  var tmp = new QTimeEditclearProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_clear(self: ptr cQTimeEdit, slot: int): void {.exportc: "miqt_exec_callback_QTimeEdit_clear ".} =
  var nimfunc = cast[ptr QTimeEditclearProc](cast[pointer](slot))

  nimfunc[]()
proc QTimeEditstepBy*(self: gen_qdatetimeedit_types.QTimeEdit, steps: cint): void =
  fQTimeEdit_virtualbase_stepBy(self.h, steps)

type QTimeEditstepByProc* = proc(steps: cint): void
proc onstepBy*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditstepByProc) =
  # TODO check subclass
  var tmp = new QTimeEditstepByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_stepBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_stepBy(self: ptr cQTimeEdit, slot: int, steps: cint): void {.exportc: "miqt_exec_callback_QTimeEdit_stepBy ".} =
  var nimfunc = cast[ptr QTimeEditstepByProc](cast[pointer](slot))
  let slotval1 = steps


  nimfunc[](slotval1)
proc QTimeEditevent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qcoreevent_types.QEvent): bool =
  fQTimeEdit_virtualbase_event(self.h, event.h)

type QTimeEditeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditeventProc) =
  # TODO check subclass
  var tmp = new QTimeEditeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_event(self: ptr cQTimeEdit, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTimeEdit_event ".} =
  var nimfunc = cast[ptr QTimeEditeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTimeEditkeyPressEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QKeyEvent): void =
  fQTimeEdit_virtualbase_keyPressEvent(self.h, event.h)

type QTimeEditkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_keyPressEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_keyPressEvent ".} =
  var nimfunc = cast[ptr QTimeEditkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditwheelEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QWheelEvent): void =
  fQTimeEdit_virtualbase_wheelEvent(self.h, event.h)

type QTimeEditwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditwheelEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_wheelEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_wheelEvent ".} =
  var nimfunc = cast[ptr QTimeEditwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditfocusInEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QFocusEvent): void =
  fQTimeEdit_virtualbase_focusInEvent(self.h, event.h)

type QTimeEditfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditfocusInEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_focusInEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_focusInEvent ".} =
  var nimfunc = cast[ptr QTimeEditfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditfocusNextPrevChild*(self: gen_qdatetimeedit_types.QTimeEdit, next: bool): bool =
  fQTimeEdit_virtualbase_focusNextPrevChild(self.h, next)

type QTimeEditfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QTimeEditfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_focusNextPrevChild(self: ptr cQTimeEdit, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTimeEdit_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QTimeEditfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTimeEditvalidate*(self: gen_qdatetimeedit_types.QTimeEdit, input: string, pos: ptr cint): cint =
  cint(fQTimeEdit_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

type QTimeEditvalidateProc* = proc(input: string, pos: ptr cint): cint
proc onvalidate*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditvalidateProc) =
  # TODO check subclass
  var tmp = new QTimeEditvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_validate(self: ptr cQTimeEdit, slot: int, input: struct_miqt_string, pos: ptr cint): cint {.exportc: "miqt_exec_callback_QTimeEdit_validate ".} =
  var nimfunc = cast[ptr QTimeEditvalidateProc](cast[pointer](slot))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret

  let slotval2 = pos


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QTimeEditfixup*(self: gen_qdatetimeedit_types.QTimeEdit, input: string): void =
  fQTimeEdit_virtualbase_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

type QTimeEditfixupProc* = proc(input: string): void
proc onfixup*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditfixupProc) =
  # TODO check subclass
  var tmp = new QTimeEditfixupProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_fixup(self: ptr cQTimeEdit, slot: int, input: struct_miqt_string): void {.exportc: "miqt_exec_callback_QTimeEdit_fixup ".} =
  var nimfunc = cast[ptr QTimeEditfixupProc](cast[pointer](slot))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret


  nimfunc[](slotval1)
proc QTimeEditdateTimeFromText*(self: gen_qdatetimeedit_types.QTimeEdit, text: string): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fQTimeEdit_virtualbase_dateTimeFromText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

type QTimeEditdateTimeFromTextProc* = proc(text: string): gen_qdatetime_types.QDateTime
proc ondateTimeFromText*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditdateTimeFromTextProc) =
  # TODO check subclass
  var tmp = new QTimeEditdateTimeFromTextProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_dateTimeFromText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_dateTimeFromText(self: ptr cQTimeEdit, slot: int, text: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QTimeEdit_dateTimeFromText ".} =
  var nimfunc = cast[ptr QTimeEditdateTimeFromTextProc](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTimeEdittextFromDateTime*(self: gen_qdatetimeedit_types.QTimeEdit, dt: gen_qdatetime_types.QDateTime): string =
  let v_ms = fQTimeEdit_virtualbase_textFromDateTime(self.h, dt.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QTimeEdittextFromDateTimeProc* = proc(dt: gen_qdatetime_types.QDateTime): string
proc ontextFromDateTime*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEdittextFromDateTimeProc) =
  # TODO check subclass
  var tmp = new QTimeEdittextFromDateTimeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_textFromDateTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_textFromDateTime(self: ptr cQTimeEdit, slot: int, dt: pointer): struct_miqt_string {.exportc: "miqt_exec_callback_QTimeEdit_textFromDateTime ".} =
  var nimfunc = cast[ptr QTimeEdittextFromDateTimeProc](cast[pointer](slot))
  let slotval1 = gen_qdatetime_types.QDateTime(h: dt)


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QTimeEditstepEnabled*(self: gen_qdatetimeedit_types.QTimeEdit, ): cint =
  cint(fQTimeEdit_virtualbase_stepEnabled(self.h))

type QTimeEditstepEnabledProc* = proc(): cint
proc onstepEnabled*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditstepEnabledProc) =
  # TODO check subclass
  var tmp = new QTimeEditstepEnabledProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_stepEnabled(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_stepEnabled(self: ptr cQTimeEdit, slot: int): cint {.exportc: "miqt_exec_callback_QTimeEdit_stepEnabled ".} =
  var nimfunc = cast[ptr QTimeEditstepEnabledProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QTimeEditmousePressEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QMouseEvent): void =
  fQTimeEdit_virtualbase_mousePressEvent(self.h, event.h)

type QTimeEditmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditmousePressEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_mousePressEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_mousePressEvent ".} =
  var nimfunc = cast[ptr QTimeEditmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditpaintEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QPaintEvent): void =
  fQTimeEdit_virtualbase_paintEvent(self.h, event.h)

type QTimeEditpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditpaintEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_paintEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_paintEvent ".} =
  var nimfunc = cast[ptr QTimeEditpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditinitStyleOption*(self: gen_qdatetimeedit_types.QTimeEdit, option: gen_qstyleoption_types.QStyleOptionSpinBox): void =
  fQTimeEdit_virtualbase_initStyleOption(self.h, option.h)

type QTimeEditinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionSpinBox): void
proc oninitStyleOption*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QTimeEditinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_initStyleOption(self: ptr cQTimeEdit, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_initStyleOption ".} =
  var nimfunc = cast[ptr QTimeEditinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionSpinBox(h: option)


  nimfunc[](slotval1)
proc QTimeEditminimumSizeHint*(self: gen_qdatetimeedit_types.QTimeEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTimeEdit_virtualbase_minimumSizeHint(self.h))

type QTimeEditminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QTimeEditminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_minimumSizeHint(self: ptr cQTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTimeEdit_minimumSizeHint ".} =
  var nimfunc = cast[ptr QTimeEditminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTimeEditinputMethodQuery*(self: gen_qdatetimeedit_types.QTimeEdit, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQTimeEdit_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QTimeEditinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QTimeEditinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_inputMethodQuery(self: ptr cQTimeEdit, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QTimeEdit_inputMethodQuery ".} =
  var nimfunc = cast[ptr QTimeEditinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTimeEditresizeEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QResizeEvent): void =
  fQTimeEdit_virtualbase_resizeEvent(self.h, event.h)

type QTimeEditresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditresizeEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_resizeEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_resizeEvent ".} =
  var nimfunc = cast[ptr QTimeEditresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditkeyReleaseEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QKeyEvent): void =
  fQTimeEdit_virtualbase_keyReleaseEvent(self.h, event.h)

type QTimeEditkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_keyReleaseEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QTimeEditkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditfocusOutEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QFocusEvent): void =
  fQTimeEdit_virtualbase_focusOutEvent(self.h, event.h)

type QTimeEditfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_focusOutEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_focusOutEvent ".} =
  var nimfunc = cast[ptr QTimeEditfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditcontextMenuEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QContextMenuEvent): void =
  fQTimeEdit_virtualbase_contextMenuEvent(self.h, event.h)

type QTimeEditcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_contextMenuEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_contextMenuEvent ".} =
  var nimfunc = cast[ptr QTimeEditcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditchangeEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qcoreevent_types.QEvent): void =
  fQTimeEdit_virtualbase_changeEvent(self.h, event.h)

type QTimeEditchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditchangeEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_changeEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_changeEvent ".} =
  var nimfunc = cast[ptr QTimeEditchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditcloseEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QCloseEvent): void =
  fQTimeEdit_virtualbase_closeEvent(self.h, event.h)

type QTimeEditcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditcloseEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_closeEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_closeEvent ".} =
  var nimfunc = cast[ptr QTimeEditcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEdithideEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QHideEvent): void =
  fQTimeEdit_virtualbase_hideEvent(self.h, event.h)

type QTimeEdithideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEdithideEventProc) =
  # TODO check subclass
  var tmp = new QTimeEdithideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_hideEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_hideEvent ".} =
  var nimfunc = cast[ptr QTimeEdithideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditmouseReleaseEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QMouseEvent): void =
  fQTimeEdit_virtualbase_mouseReleaseEvent(self.h, event.h)

type QTimeEditmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_mouseReleaseEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QTimeEditmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditmouseMoveEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QMouseEvent): void =
  fQTimeEdit_virtualbase_mouseMoveEvent(self.h, event.h)

type QTimeEditmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_mouseMoveEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QTimeEditmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEdittimerEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qcoreevent_types.QTimerEvent): void =
  fQTimeEdit_virtualbase_timerEvent(self.h, event.h)

type QTimeEdittimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEdittimerEventProc) =
  # TODO check subclass
  var tmp = new QTimeEdittimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_timerEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_timerEvent ".} =
  var nimfunc = cast[ptr QTimeEdittimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditshowEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QShowEvent): void =
  fQTimeEdit_virtualbase_showEvent(self.h, event.h)

type QTimeEditshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditshowEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_showEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_showEvent ".} =
  var nimfunc = cast[ptr QTimeEditshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditdevType*(self: gen_qdatetimeedit_types.QTimeEdit, ): cint =
  fQTimeEdit_virtualbase_devType(self.h)

type QTimeEditdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditdevTypeProc) =
  # TODO check subclass
  var tmp = new QTimeEditdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_devType(self: ptr cQTimeEdit, slot: int): cint {.exportc: "miqt_exec_callback_QTimeEdit_devType ".} =
  var nimfunc = cast[ptr QTimeEditdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTimeEditsetVisible*(self: gen_qdatetimeedit_types.QTimeEdit, visible: bool): void =
  fQTimeEdit_virtualbase_setVisible(self.h, visible)

type QTimeEditsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditsetVisibleProc) =
  # TODO check subclass
  var tmp = new QTimeEditsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_setVisible(self: ptr cQTimeEdit, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTimeEdit_setVisible ".} =
  var nimfunc = cast[ptr QTimeEditsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QTimeEditheightForWidth*(self: gen_qdatetimeedit_types.QTimeEdit, param1: cint): cint =
  fQTimeEdit_virtualbase_heightForWidth(self.h, param1)

type QTimeEditheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditheightForWidthProc) =
  # TODO check subclass
  var tmp = new QTimeEditheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_heightForWidth(self: ptr cQTimeEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTimeEdit_heightForWidth ".} =
  var nimfunc = cast[ptr QTimeEditheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTimeEdithasHeightForWidth*(self: gen_qdatetimeedit_types.QTimeEdit, ): bool =
  fQTimeEdit_virtualbase_hasHeightForWidth(self.h)

type QTimeEdithasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEdithasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QTimeEdithasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_hasHeightForWidth(self: ptr cQTimeEdit, slot: int): bool {.exportc: "miqt_exec_callback_QTimeEdit_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QTimeEdithasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTimeEditpaintEngine*(self: gen_qdatetimeedit_types.QTimeEdit, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQTimeEdit_virtualbase_paintEngine(self.h))

type QTimeEditpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditpaintEngineProc) =
  # TODO check subclass
  var tmp = new QTimeEditpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_paintEngine(self: ptr cQTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTimeEdit_paintEngine ".} =
  var nimfunc = cast[ptr QTimeEditpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTimeEditmouseDoubleClickEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QMouseEvent): void =
  fQTimeEdit_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QTimeEditmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_mouseDoubleClickEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QTimeEditmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditenterEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QEnterEvent): void =
  fQTimeEdit_virtualbase_enterEvent(self.h, event.h)

type QTimeEditenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditenterEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_enterEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_enterEvent ".} =
  var nimfunc = cast[ptr QTimeEditenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditleaveEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qcoreevent_types.QEvent): void =
  fQTimeEdit_virtualbase_leaveEvent(self.h, event.h)

type QTimeEditleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditleaveEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_leaveEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_leaveEvent ".} =
  var nimfunc = cast[ptr QTimeEditleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditmoveEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QMoveEvent): void =
  fQTimeEdit_virtualbase_moveEvent(self.h, event.h)

type QTimeEditmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditmoveEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_moveEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_moveEvent ".} =
  var nimfunc = cast[ptr QTimeEditmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEdittabletEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QTabletEvent): void =
  fQTimeEdit_virtualbase_tabletEvent(self.h, event.h)

type QTimeEdittabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEdittabletEventProc) =
  # TODO check subclass
  var tmp = new QTimeEdittabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_tabletEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_tabletEvent ".} =
  var nimfunc = cast[ptr QTimeEdittabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditactionEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QActionEvent): void =
  fQTimeEdit_virtualbase_actionEvent(self.h, event.h)

type QTimeEditactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditactionEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_actionEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_actionEvent ".} =
  var nimfunc = cast[ptr QTimeEditactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditdragEnterEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QDragEnterEvent): void =
  fQTimeEdit_virtualbase_dragEnterEvent(self.h, event.h)

type QTimeEditdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_dragEnterEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_dragEnterEvent ".} =
  var nimfunc = cast[ptr QTimeEditdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditdragMoveEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QDragMoveEvent): void =
  fQTimeEdit_virtualbase_dragMoveEvent(self.h, event.h)

type QTimeEditdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_dragMoveEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_dragMoveEvent ".} =
  var nimfunc = cast[ptr QTimeEditdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditdragLeaveEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QDragLeaveEvent): void =
  fQTimeEdit_virtualbase_dragLeaveEvent(self.h, event.h)

type QTimeEditdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_dragLeaveEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QTimeEditdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditdropEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QDropEvent): void =
  fQTimeEdit_virtualbase_dropEvent(self.h, event.h)

type QTimeEditdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditdropEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_dropEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_dropEvent ".} =
  var nimfunc = cast[ptr QTimeEditdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditnativeEvent*(self: gen_qdatetimeedit_types.QTimeEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQTimeEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTimeEditnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditnativeEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_nativeEvent(self: ptr cQTimeEdit, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QTimeEdit_nativeEvent ".} =
  var nimfunc = cast[ptr QTimeEditnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTimeEditmetric*(self: gen_qdatetimeedit_types.QTimeEdit, param1: cint): cint =
  fQTimeEdit_virtualbase_metric(self.h, cint(param1))

type QTimeEditmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditmetricProc) =
  # TODO check subclass
  var tmp = new QTimeEditmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_metric(self: ptr cQTimeEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTimeEdit_metric ".} =
  var nimfunc = cast[ptr QTimeEditmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTimeEditinitPainter*(self: gen_qdatetimeedit_types.QTimeEdit, painter: gen_qpainter_types.QPainter): void =
  fQTimeEdit_virtualbase_initPainter(self.h, painter.h)

type QTimeEditinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditinitPainterProc) =
  # TODO check subclass
  var tmp = new QTimeEditinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_initPainter(self: ptr cQTimeEdit, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_initPainter ".} =
  var nimfunc = cast[ptr QTimeEditinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QTimeEditredirected*(self: gen_qdatetimeedit_types.QTimeEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQTimeEdit_virtualbase_redirected(self.h, offset.h))

type QTimeEditredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditredirectedProc) =
  # TODO check subclass
  var tmp = new QTimeEditredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_redirected(self: ptr cQTimeEdit, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTimeEdit_redirected ".} =
  var nimfunc = cast[ptr QTimeEditredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTimeEditsharedPainter*(self: gen_qdatetimeedit_types.QTimeEdit, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQTimeEdit_virtualbase_sharedPainter(self.h))

type QTimeEditsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditsharedPainterProc) =
  # TODO check subclass
  var tmp = new QTimeEditsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_sharedPainter(self: ptr cQTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTimeEdit_sharedPainter ".} =
  var nimfunc = cast[ptr QTimeEditsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTimeEditinputMethodEvent*(self: gen_qdatetimeedit_types.QTimeEdit, param1: gen_qevent_types.QInputMethodEvent): void =
  fQTimeEdit_virtualbase_inputMethodEvent(self.h, param1.h)

type QTimeEditinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_inputMethodEvent(self: ptr cQTimeEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_inputMethodEvent ".} =
  var nimfunc = cast[ptr QTimeEditinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QTimeEditeventFilter*(self: gen_qdatetimeedit_types.QTimeEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTimeEdit_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTimeEditeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditeventFilterProc) =
  # TODO check subclass
  var tmp = new QTimeEditeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_eventFilter(self: ptr cQTimeEdit, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTimeEdit_eventFilter ".} =
  var nimfunc = cast[ptr QTimeEditeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTimeEditchildEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qcoreevent_types.QChildEvent): void =
  fQTimeEdit_virtualbase_childEvent(self.h, event.h)

type QTimeEditchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditchildEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_childEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_childEvent ".} =
  var nimfunc = cast[ptr QTimeEditchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditcustomEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qcoreevent_types.QEvent): void =
  fQTimeEdit_virtualbase_customEvent(self.h, event.h)

type QTimeEditcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditcustomEventProc) =
  # TODO check subclass
  var tmp = new QTimeEditcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_customEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_customEvent ".} =
  var nimfunc = cast[ptr QTimeEditcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTimeEditconnectNotify*(self: gen_qdatetimeedit_types.QTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTimeEdit_virtualbase_connectNotify(self.h, signal.h)

type QTimeEditconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTimeEditconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_connectNotify(self: ptr cQTimeEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_connectNotify ".} =
  var nimfunc = cast[ptr QTimeEditconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTimeEditdisconnectNotify*(self: gen_qdatetimeedit_types.QTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTimeEdit_virtualbase_disconnectNotify(self.h, signal.h)

type QTimeEditdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEditdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTimeEditdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_disconnectNotify(self: ptr cQTimeEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_disconnectNotify ".} =
  var nimfunc = cast[ptr QTimeEditdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qdatetimeedit_types.QTimeEdit) =
  fcQTimeEdit_delete(self.h)

func init*(T: type gen_qdatetimeedit_types.QDateEdit, h: ptr cQDateEdit): gen_qdatetimeedit_types.QDateEdit =
  T(h: h)
proc create*(T: type gen_qdatetimeedit_types.QDateEdit, parent: gen_qwidget_types.QWidget): gen_qdatetimeedit_types.QDateEdit =
  gen_qdatetimeedit_types.QDateEdit.init(fcQDateEdit_new(parent.h))

proc create*(T: type gen_qdatetimeedit_types.QDateEdit, ): gen_qdatetimeedit_types.QDateEdit =
  gen_qdatetimeedit_types.QDateEdit.init(fcQDateEdit_new2())

proc create*(T: type gen_qdatetimeedit_types.QDateEdit, date: gen_qdatetime_types.QDate): gen_qdatetimeedit_types.QDateEdit =
  gen_qdatetimeedit_types.QDateEdit.init(fcQDateEdit_new3(date.h))

proc create*(T: type gen_qdatetimeedit_types.QDateEdit, date: gen_qdatetime_types.QDate, parent: gen_qwidget_types.QWidget): gen_qdatetimeedit_types.QDateEdit =
  gen_qdatetimeedit_types.QDateEdit.init(fcQDateEdit_new4(date.h, parent.h))

proc metaObject*(self: gen_qdatetimeedit_types.QDateEdit, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDateEdit_metaObject(self.h))

proc metacast*(self: gen_qdatetimeedit_types.QDateEdit, param1: cstring): pointer =
  fcQDateEdit_metacast(self.h, param1)

proc tr*(_: type gen_qdatetimeedit_types.QDateEdit, s: cstring): string =
  let v_ms = fcQDateEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc userDateChanged*(self: gen_qdatetimeedit_types.QDateEdit, date: gen_qdatetime_types.QDate): void =
  fcQDateEdit_userDateChanged(self.h, date.h)

type QDateEdituserDateChangedSlot* = proc(date: gen_qdatetime_types.QDate)
proc miqt_exec_callback_QDateEdit_userDateChanged(slot: int, date: pointer) {.exportc.} =
  let nimfunc = cast[ptr QDateEdituserDateChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qdatetime_types.QDate(h: date)

  nimfunc[](slotval1)

proc onuserDateChanged*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEdituserDateChangedSlot) =
  var tmp = new QDateEdituserDateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_connect_userDateChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qdatetimeedit_types.QDateEdit, s: cstring, c: cstring): string =
  let v_ms = fcQDateEdit_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdatetimeedit_types.QDateEdit, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDateEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QDateEditsizeHint*(self: gen_qdatetimeedit_types.QDateEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQDateEdit_virtualbase_sizeHint(self.h))

type QDateEditsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditsizeHintProc) =
  # TODO check subclass
  var tmp = new QDateEditsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_sizeHint(self: ptr cQDateEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateEdit_sizeHint ".} =
  var nimfunc = cast[ptr QDateEditsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDateEditclear*(self: gen_qdatetimeedit_types.QDateEdit, ): void =
  fQDateEdit_virtualbase_clear(self.h)

type QDateEditclearProc* = proc(): void
proc onclear*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditclearProc) =
  # TODO check subclass
  var tmp = new QDateEditclearProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_clear(self: ptr cQDateEdit, slot: int): void {.exportc: "miqt_exec_callback_QDateEdit_clear ".} =
  var nimfunc = cast[ptr QDateEditclearProc](cast[pointer](slot))

  nimfunc[]()
proc QDateEditstepBy*(self: gen_qdatetimeedit_types.QDateEdit, steps: cint): void =
  fQDateEdit_virtualbase_stepBy(self.h, steps)

type QDateEditstepByProc* = proc(steps: cint): void
proc onstepBy*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditstepByProc) =
  # TODO check subclass
  var tmp = new QDateEditstepByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_stepBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_stepBy(self: ptr cQDateEdit, slot: int, steps: cint): void {.exportc: "miqt_exec_callback_QDateEdit_stepBy ".} =
  var nimfunc = cast[ptr QDateEditstepByProc](cast[pointer](slot))
  let slotval1 = steps


  nimfunc[](slotval1)
proc QDateEditevent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qcoreevent_types.QEvent): bool =
  fQDateEdit_virtualbase_event(self.h, event.h)

type QDateEditeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditeventProc) =
  # TODO check subclass
  var tmp = new QDateEditeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_event(self: ptr cQDateEdit, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDateEdit_event ".} =
  var nimfunc = cast[ptr QDateEditeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDateEditkeyPressEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QKeyEvent): void =
  fQDateEdit_virtualbase_keyPressEvent(self.h, event.h)

type QDateEditkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QDateEditkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_keyPressEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_keyPressEvent ".} =
  var nimfunc = cast[ptr QDateEditkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditwheelEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QWheelEvent): void =
  fQDateEdit_virtualbase_wheelEvent(self.h, event.h)

type QDateEditwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditwheelEventProc) =
  # TODO check subclass
  var tmp = new QDateEditwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_wheelEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_wheelEvent ".} =
  var nimfunc = cast[ptr QDateEditwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditfocusInEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QFocusEvent): void =
  fQDateEdit_virtualbase_focusInEvent(self.h, event.h)

type QDateEditfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditfocusInEventProc) =
  # TODO check subclass
  var tmp = new QDateEditfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_focusInEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_focusInEvent ".} =
  var nimfunc = cast[ptr QDateEditfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditfocusNextPrevChild*(self: gen_qdatetimeedit_types.QDateEdit, next: bool): bool =
  fQDateEdit_virtualbase_focusNextPrevChild(self.h, next)

type QDateEditfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QDateEditfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_focusNextPrevChild(self: ptr cQDateEdit, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QDateEdit_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QDateEditfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDateEditvalidate*(self: gen_qdatetimeedit_types.QDateEdit, input: string, pos: ptr cint): cint =
  cint(fQDateEdit_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

type QDateEditvalidateProc* = proc(input: string, pos: ptr cint): cint
proc onvalidate*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditvalidateProc) =
  # TODO check subclass
  var tmp = new QDateEditvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_validate(self: ptr cQDateEdit, slot: int, input: struct_miqt_string, pos: ptr cint): cint {.exportc: "miqt_exec_callback_QDateEdit_validate ".} =
  var nimfunc = cast[ptr QDateEditvalidateProc](cast[pointer](slot))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret

  let slotval2 = pos


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QDateEditfixup*(self: gen_qdatetimeedit_types.QDateEdit, input: string): void =
  fQDateEdit_virtualbase_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

type QDateEditfixupProc* = proc(input: string): void
proc onfixup*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditfixupProc) =
  # TODO check subclass
  var tmp = new QDateEditfixupProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_fixup(self: ptr cQDateEdit, slot: int, input: struct_miqt_string): void {.exportc: "miqt_exec_callback_QDateEdit_fixup ".} =
  var nimfunc = cast[ptr QDateEditfixupProc](cast[pointer](slot))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret


  nimfunc[](slotval1)
proc QDateEditdateTimeFromText*(self: gen_qdatetimeedit_types.QDateEdit, text: string): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fQDateEdit_virtualbase_dateTimeFromText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

type QDateEditdateTimeFromTextProc* = proc(text: string): gen_qdatetime_types.QDateTime
proc ondateTimeFromText*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditdateTimeFromTextProc) =
  # TODO check subclass
  var tmp = new QDateEditdateTimeFromTextProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_dateTimeFromText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_dateTimeFromText(self: ptr cQDateEdit, slot: int, text: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QDateEdit_dateTimeFromText ".} =
  var nimfunc = cast[ptr QDateEditdateTimeFromTextProc](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDateEdittextFromDateTime*(self: gen_qdatetimeedit_types.QDateEdit, dt: gen_qdatetime_types.QDateTime): string =
  let v_ms = fQDateEdit_virtualbase_textFromDateTime(self.h, dt.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QDateEdittextFromDateTimeProc* = proc(dt: gen_qdatetime_types.QDateTime): string
proc ontextFromDateTime*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEdittextFromDateTimeProc) =
  # TODO check subclass
  var tmp = new QDateEdittextFromDateTimeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_textFromDateTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_textFromDateTime(self: ptr cQDateEdit, slot: int, dt: pointer): struct_miqt_string {.exportc: "miqt_exec_callback_QDateEdit_textFromDateTime ".} =
  var nimfunc = cast[ptr QDateEdittextFromDateTimeProc](cast[pointer](slot))
  let slotval1 = gen_qdatetime_types.QDateTime(h: dt)


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QDateEditstepEnabled*(self: gen_qdatetimeedit_types.QDateEdit, ): cint =
  cint(fQDateEdit_virtualbase_stepEnabled(self.h))

type QDateEditstepEnabledProc* = proc(): cint
proc onstepEnabled*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditstepEnabledProc) =
  # TODO check subclass
  var tmp = new QDateEditstepEnabledProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_stepEnabled(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_stepEnabled(self: ptr cQDateEdit, slot: int): cint {.exportc: "miqt_exec_callback_QDateEdit_stepEnabled ".} =
  var nimfunc = cast[ptr QDateEditstepEnabledProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QDateEditmousePressEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QMouseEvent): void =
  fQDateEdit_virtualbase_mousePressEvent(self.h, event.h)

type QDateEditmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditmousePressEventProc) =
  # TODO check subclass
  var tmp = new QDateEditmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_mousePressEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_mousePressEvent ".} =
  var nimfunc = cast[ptr QDateEditmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditpaintEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QPaintEvent): void =
  fQDateEdit_virtualbase_paintEvent(self.h, event.h)

type QDateEditpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditpaintEventProc) =
  # TODO check subclass
  var tmp = new QDateEditpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_paintEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_paintEvent ".} =
  var nimfunc = cast[ptr QDateEditpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditinitStyleOption*(self: gen_qdatetimeedit_types.QDateEdit, option: gen_qstyleoption_types.QStyleOptionSpinBox): void =
  fQDateEdit_virtualbase_initStyleOption(self.h, option.h)

type QDateEditinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionSpinBox): void
proc oninitStyleOption*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QDateEditinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_initStyleOption(self: ptr cQDateEdit, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_initStyleOption ".} =
  var nimfunc = cast[ptr QDateEditinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionSpinBox(h: option)


  nimfunc[](slotval1)
proc QDateEditminimumSizeHint*(self: gen_qdatetimeedit_types.QDateEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQDateEdit_virtualbase_minimumSizeHint(self.h))

type QDateEditminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QDateEditminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_minimumSizeHint(self: ptr cQDateEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateEdit_minimumSizeHint ".} =
  var nimfunc = cast[ptr QDateEditminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDateEditinputMethodQuery*(self: gen_qdatetimeedit_types.QDateEdit, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQDateEdit_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QDateEditinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QDateEditinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_inputMethodQuery(self: ptr cQDateEdit, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QDateEdit_inputMethodQuery ".} =
  var nimfunc = cast[ptr QDateEditinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDateEditresizeEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QResizeEvent): void =
  fQDateEdit_virtualbase_resizeEvent(self.h, event.h)

type QDateEditresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditresizeEventProc) =
  # TODO check subclass
  var tmp = new QDateEditresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_resizeEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_resizeEvent ".} =
  var nimfunc = cast[ptr QDateEditresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditkeyReleaseEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QKeyEvent): void =
  fQDateEdit_virtualbase_keyReleaseEvent(self.h, event.h)

type QDateEditkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QDateEditkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_keyReleaseEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QDateEditkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditfocusOutEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QFocusEvent): void =
  fQDateEdit_virtualbase_focusOutEvent(self.h, event.h)

type QDateEditfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QDateEditfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_focusOutEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_focusOutEvent ".} =
  var nimfunc = cast[ptr QDateEditfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditcontextMenuEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QContextMenuEvent): void =
  fQDateEdit_virtualbase_contextMenuEvent(self.h, event.h)

type QDateEditcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QDateEditcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_contextMenuEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_contextMenuEvent ".} =
  var nimfunc = cast[ptr QDateEditcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditchangeEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qcoreevent_types.QEvent): void =
  fQDateEdit_virtualbase_changeEvent(self.h, event.h)

type QDateEditchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditchangeEventProc) =
  # TODO check subclass
  var tmp = new QDateEditchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_changeEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_changeEvent ".} =
  var nimfunc = cast[ptr QDateEditchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditcloseEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QCloseEvent): void =
  fQDateEdit_virtualbase_closeEvent(self.h, event.h)

type QDateEditcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditcloseEventProc) =
  # TODO check subclass
  var tmp = new QDateEditcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_closeEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_closeEvent ".} =
  var nimfunc = cast[ptr QDateEditcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QDateEdithideEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QHideEvent): void =
  fQDateEdit_virtualbase_hideEvent(self.h, event.h)

type QDateEdithideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEdithideEventProc) =
  # TODO check subclass
  var tmp = new QDateEdithideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_hideEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_hideEvent ".} =
  var nimfunc = cast[ptr QDateEdithideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditmouseReleaseEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QMouseEvent): void =
  fQDateEdit_virtualbase_mouseReleaseEvent(self.h, event.h)

type QDateEditmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QDateEditmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_mouseReleaseEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QDateEditmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditmouseMoveEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QMouseEvent): void =
  fQDateEdit_virtualbase_mouseMoveEvent(self.h, event.h)

type QDateEditmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QDateEditmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_mouseMoveEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QDateEditmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDateEdittimerEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qcoreevent_types.QTimerEvent): void =
  fQDateEdit_virtualbase_timerEvent(self.h, event.h)

type QDateEdittimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEdittimerEventProc) =
  # TODO check subclass
  var tmp = new QDateEdittimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_timerEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_timerEvent ".} =
  var nimfunc = cast[ptr QDateEdittimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditshowEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QShowEvent): void =
  fQDateEdit_virtualbase_showEvent(self.h, event.h)

type QDateEditshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditshowEventProc) =
  # TODO check subclass
  var tmp = new QDateEditshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_showEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_showEvent ".} =
  var nimfunc = cast[ptr QDateEditshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditdevType*(self: gen_qdatetimeedit_types.QDateEdit, ): cint =
  fQDateEdit_virtualbase_devType(self.h)

type QDateEditdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditdevTypeProc) =
  # TODO check subclass
  var tmp = new QDateEditdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_devType(self: ptr cQDateEdit, slot: int): cint {.exportc: "miqt_exec_callback_QDateEdit_devType ".} =
  var nimfunc = cast[ptr QDateEditdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDateEditsetVisible*(self: gen_qdatetimeedit_types.QDateEdit, visible: bool): void =
  fQDateEdit_virtualbase_setVisible(self.h, visible)

type QDateEditsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditsetVisibleProc) =
  # TODO check subclass
  var tmp = new QDateEditsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_setVisible(self: ptr cQDateEdit, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QDateEdit_setVisible ".} =
  var nimfunc = cast[ptr QDateEditsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QDateEditheightForWidth*(self: gen_qdatetimeedit_types.QDateEdit, param1: cint): cint =
  fQDateEdit_virtualbase_heightForWidth(self.h, param1)

type QDateEditheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditheightForWidthProc) =
  # TODO check subclass
  var tmp = new QDateEditheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_heightForWidth(self: ptr cQDateEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDateEdit_heightForWidth ".} =
  var nimfunc = cast[ptr QDateEditheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDateEdithasHeightForWidth*(self: gen_qdatetimeedit_types.QDateEdit, ): bool =
  fQDateEdit_virtualbase_hasHeightForWidth(self.h)

type QDateEdithasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEdithasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QDateEdithasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_hasHeightForWidth(self: ptr cQDateEdit, slot: int): bool {.exportc: "miqt_exec_callback_QDateEdit_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QDateEdithasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDateEditpaintEngine*(self: gen_qdatetimeedit_types.QDateEdit, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQDateEdit_virtualbase_paintEngine(self.h))

type QDateEditpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditpaintEngineProc) =
  # TODO check subclass
  var tmp = new QDateEditpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_paintEngine(self: ptr cQDateEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateEdit_paintEngine ".} =
  var nimfunc = cast[ptr QDateEditpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDateEditmouseDoubleClickEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QMouseEvent): void =
  fQDateEdit_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QDateEditmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QDateEditmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_mouseDoubleClickEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QDateEditmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditenterEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QEnterEvent): void =
  fQDateEdit_virtualbase_enterEvent(self.h, event.h)

type QDateEditenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditenterEventProc) =
  # TODO check subclass
  var tmp = new QDateEditenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_enterEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_enterEvent ".} =
  var nimfunc = cast[ptr QDateEditenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditleaveEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qcoreevent_types.QEvent): void =
  fQDateEdit_virtualbase_leaveEvent(self.h, event.h)

type QDateEditleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditleaveEventProc) =
  # TODO check subclass
  var tmp = new QDateEditleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_leaveEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_leaveEvent ".} =
  var nimfunc = cast[ptr QDateEditleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditmoveEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QMoveEvent): void =
  fQDateEdit_virtualbase_moveEvent(self.h, event.h)

type QDateEditmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditmoveEventProc) =
  # TODO check subclass
  var tmp = new QDateEditmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_moveEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_moveEvent ".} =
  var nimfunc = cast[ptr QDateEditmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QDateEdittabletEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QTabletEvent): void =
  fQDateEdit_virtualbase_tabletEvent(self.h, event.h)

type QDateEdittabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEdittabletEventProc) =
  # TODO check subclass
  var tmp = new QDateEdittabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_tabletEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_tabletEvent ".} =
  var nimfunc = cast[ptr QDateEdittabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditactionEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QActionEvent): void =
  fQDateEdit_virtualbase_actionEvent(self.h, event.h)

type QDateEditactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditactionEventProc) =
  # TODO check subclass
  var tmp = new QDateEditactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_actionEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_actionEvent ".} =
  var nimfunc = cast[ptr QDateEditactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditdragEnterEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QDragEnterEvent): void =
  fQDateEdit_virtualbase_dragEnterEvent(self.h, event.h)

type QDateEditdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QDateEditdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_dragEnterEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_dragEnterEvent ".} =
  var nimfunc = cast[ptr QDateEditdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditdragMoveEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QDragMoveEvent): void =
  fQDateEdit_virtualbase_dragMoveEvent(self.h, event.h)

type QDateEditdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QDateEditdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_dragMoveEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_dragMoveEvent ".} =
  var nimfunc = cast[ptr QDateEditdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditdragLeaveEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QDragLeaveEvent): void =
  fQDateEdit_virtualbase_dragLeaveEvent(self.h, event.h)

type QDateEditdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QDateEditdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_dragLeaveEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QDateEditdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditdropEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QDropEvent): void =
  fQDateEdit_virtualbase_dropEvent(self.h, event.h)

type QDateEditdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditdropEventProc) =
  # TODO check subclass
  var tmp = new QDateEditdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_dropEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_dropEvent ".} =
  var nimfunc = cast[ptr QDateEditdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditnativeEvent*(self: gen_qdatetimeedit_types.QDateEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQDateEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QDateEditnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditnativeEventProc) =
  # TODO check subclass
  var tmp = new QDateEditnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_nativeEvent(self: ptr cQDateEdit, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QDateEdit_nativeEvent ".} =
  var nimfunc = cast[ptr QDateEditnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDateEditmetric*(self: gen_qdatetimeedit_types.QDateEdit, param1: cint): cint =
  fQDateEdit_virtualbase_metric(self.h, cint(param1))

type QDateEditmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditmetricProc) =
  # TODO check subclass
  var tmp = new QDateEditmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_metric(self: ptr cQDateEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDateEdit_metric ".} =
  var nimfunc = cast[ptr QDateEditmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDateEditinitPainter*(self: gen_qdatetimeedit_types.QDateEdit, painter: gen_qpainter_types.QPainter): void =
  fQDateEdit_virtualbase_initPainter(self.h, painter.h)

type QDateEditinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditinitPainterProc) =
  # TODO check subclass
  var tmp = new QDateEditinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_initPainter(self: ptr cQDateEdit, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_initPainter ".} =
  var nimfunc = cast[ptr QDateEditinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QDateEditredirected*(self: gen_qdatetimeedit_types.QDateEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQDateEdit_virtualbase_redirected(self.h, offset.h))

type QDateEditredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditredirectedProc) =
  # TODO check subclass
  var tmp = new QDateEditredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_redirected(self: ptr cQDateEdit, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QDateEdit_redirected ".} =
  var nimfunc = cast[ptr QDateEditredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDateEditsharedPainter*(self: gen_qdatetimeedit_types.QDateEdit, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQDateEdit_virtualbase_sharedPainter(self.h))

type QDateEditsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditsharedPainterProc) =
  # TODO check subclass
  var tmp = new QDateEditsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_sharedPainter(self: ptr cQDateEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateEdit_sharedPainter ".} =
  var nimfunc = cast[ptr QDateEditsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDateEditinputMethodEvent*(self: gen_qdatetimeedit_types.QDateEdit, param1: gen_qevent_types.QInputMethodEvent): void =
  fQDateEdit_virtualbase_inputMethodEvent(self.h, param1.h)

type QDateEditinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QDateEditinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_inputMethodEvent(self: ptr cQDateEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_inputMethodEvent ".} =
  var nimfunc = cast[ptr QDateEditinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QDateEditeventFilter*(self: gen_qdatetimeedit_types.QDateEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQDateEdit_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDateEditeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditeventFilterProc) =
  # TODO check subclass
  var tmp = new QDateEditeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_eventFilter(self: ptr cQDateEdit, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDateEdit_eventFilter ".} =
  var nimfunc = cast[ptr QDateEditeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QDateEditchildEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qcoreevent_types.QChildEvent): void =
  fQDateEdit_virtualbase_childEvent(self.h, event.h)

type QDateEditchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditchildEventProc) =
  # TODO check subclass
  var tmp = new QDateEditchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_childEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_childEvent ".} =
  var nimfunc = cast[ptr QDateEditchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditcustomEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qcoreevent_types.QEvent): void =
  fQDateEdit_virtualbase_customEvent(self.h, event.h)

type QDateEditcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditcustomEventProc) =
  # TODO check subclass
  var tmp = new QDateEditcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_customEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_customEvent ".} =
  var nimfunc = cast[ptr QDateEditcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDateEditconnectNotify*(self: gen_qdatetimeedit_types.QDateEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDateEdit_virtualbase_connectNotify(self.h, signal.h)

type QDateEditconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDateEditconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_connectNotify(self: ptr cQDateEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_connectNotify ".} =
  var nimfunc = cast[ptr QDateEditconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QDateEditdisconnectNotify*(self: gen_qdatetimeedit_types.QDateEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDateEdit_virtualbase_disconnectNotify(self.h, signal.h)

type QDateEditdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEditdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDateEditdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_disconnectNotify(self: ptr cQDateEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_disconnectNotify ".} =
  var nimfunc = cast[ptr QDateEditdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qdatetimeedit_types.QDateEdit) =
  fcQDateEdit_delete(self.h)
