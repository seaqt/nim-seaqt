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
  ./gen_qlineedit_types,
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
  gen_qlineedit_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQDateTimeEdit*{.exportc: "QDateTimeEdit", incompleteStruct.} = object
type cQTimeEdit*{.exportc: "QTimeEdit", incompleteStruct.} = object
type cQDateEdit*{.exportc: "QDateEdit", incompleteStruct.} = object

proc fcQDateTimeEdit_metaObject(self: pointer): pointer {.importc: "QDateTimeEdit_metaObject".}
proc fcQDateTimeEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QDateTimeEdit_metacast".}
proc fcQDateTimeEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDateTimeEdit_metacall".}
proc fcQDateTimeEdit_tr(s: cstring): struct_miqt_string {.importc: "QDateTimeEdit_tr".}
proc fcQDateTimeEdit_dateTime(self: pointer): pointer {.importc: "QDateTimeEdit_dateTime".}
proc fcQDateTimeEdit_date(self: pointer): pointer {.importc: "QDateTimeEdit_date".}
proc fcQDateTimeEdit_time(self: pointer): pointer {.importc: "QDateTimeEdit_time".}
proc fcQDateTimeEdit_calendar(self: pointer): pointer {.importc: "QDateTimeEdit_calendar".}
proc fcQDateTimeEdit_setCalendar(self: pointer, calendar: pointer): void {.importc: "QDateTimeEdit_setCalendar".}
proc fcQDateTimeEdit_minimumDateTime(self: pointer): pointer {.importc: "QDateTimeEdit_minimumDateTime".}
proc fcQDateTimeEdit_clearMinimumDateTime(self: pointer): void {.importc: "QDateTimeEdit_clearMinimumDateTime".}
proc fcQDateTimeEdit_setMinimumDateTime(self: pointer, dt: pointer): void {.importc: "QDateTimeEdit_setMinimumDateTime".}
proc fcQDateTimeEdit_maximumDateTime(self: pointer): pointer {.importc: "QDateTimeEdit_maximumDateTime".}
proc fcQDateTimeEdit_clearMaximumDateTime(self: pointer): void {.importc: "QDateTimeEdit_clearMaximumDateTime".}
proc fcQDateTimeEdit_setMaximumDateTime(self: pointer, dt: pointer): void {.importc: "QDateTimeEdit_setMaximumDateTime".}
proc fcQDateTimeEdit_setDateTimeRange(self: pointer, min: pointer, max: pointer): void {.importc: "QDateTimeEdit_setDateTimeRange".}
proc fcQDateTimeEdit_minimumDate(self: pointer): pointer {.importc: "QDateTimeEdit_minimumDate".}
proc fcQDateTimeEdit_setMinimumDate(self: pointer, min: pointer): void {.importc: "QDateTimeEdit_setMinimumDate".}
proc fcQDateTimeEdit_clearMinimumDate(self: pointer): void {.importc: "QDateTimeEdit_clearMinimumDate".}
proc fcQDateTimeEdit_maximumDate(self: pointer): pointer {.importc: "QDateTimeEdit_maximumDate".}
proc fcQDateTimeEdit_setMaximumDate(self: pointer, max: pointer): void {.importc: "QDateTimeEdit_setMaximumDate".}
proc fcQDateTimeEdit_clearMaximumDate(self: pointer): void {.importc: "QDateTimeEdit_clearMaximumDate".}
proc fcQDateTimeEdit_setDateRange(self: pointer, min: pointer, max: pointer): void {.importc: "QDateTimeEdit_setDateRange".}
proc fcQDateTimeEdit_minimumTime(self: pointer): pointer {.importc: "QDateTimeEdit_minimumTime".}
proc fcQDateTimeEdit_setMinimumTime(self: pointer, min: pointer): void {.importc: "QDateTimeEdit_setMinimumTime".}
proc fcQDateTimeEdit_clearMinimumTime(self: pointer): void {.importc: "QDateTimeEdit_clearMinimumTime".}
proc fcQDateTimeEdit_maximumTime(self: pointer): pointer {.importc: "QDateTimeEdit_maximumTime".}
proc fcQDateTimeEdit_setMaximumTime(self: pointer, max: pointer): void {.importc: "QDateTimeEdit_setMaximumTime".}
proc fcQDateTimeEdit_clearMaximumTime(self: pointer): void {.importc: "QDateTimeEdit_clearMaximumTime".}
proc fcQDateTimeEdit_setTimeRange(self: pointer, min: pointer, max: pointer): void {.importc: "QDateTimeEdit_setTimeRange".}
proc fcQDateTimeEdit_displayedSections(self: pointer): cint {.importc: "QDateTimeEdit_displayedSections".}
proc fcQDateTimeEdit_currentSection(self: pointer): cint {.importc: "QDateTimeEdit_currentSection".}
proc fcQDateTimeEdit_sectionAt(self: pointer, index: cint): cint {.importc: "QDateTimeEdit_sectionAt".}
proc fcQDateTimeEdit_setCurrentSection(self: pointer, section: cint): void {.importc: "QDateTimeEdit_setCurrentSection".}
proc fcQDateTimeEdit_currentSectionIndex(self: pointer): cint {.importc: "QDateTimeEdit_currentSectionIndex".}
proc fcQDateTimeEdit_setCurrentSectionIndex(self: pointer, index: cint): void {.importc: "QDateTimeEdit_setCurrentSectionIndex".}
proc fcQDateTimeEdit_calendarWidget(self: pointer): pointer {.importc: "QDateTimeEdit_calendarWidget".}
proc fcQDateTimeEdit_setCalendarWidget(self: pointer, calendarWidget: pointer): void {.importc: "QDateTimeEdit_setCalendarWidget".}
proc fcQDateTimeEdit_sectionCount(self: pointer): cint {.importc: "QDateTimeEdit_sectionCount".}
proc fcQDateTimeEdit_setSelectedSection(self: pointer, section: cint): void {.importc: "QDateTimeEdit_setSelectedSection".}
proc fcQDateTimeEdit_sectionText(self: pointer, section: cint): struct_miqt_string {.importc: "QDateTimeEdit_sectionText".}
proc fcQDateTimeEdit_displayFormat(self: pointer): struct_miqt_string {.importc: "QDateTimeEdit_displayFormat".}
proc fcQDateTimeEdit_setDisplayFormat(self: pointer, format: struct_miqt_string): void {.importc: "QDateTimeEdit_setDisplayFormat".}
proc fcQDateTimeEdit_calendarPopup(self: pointer): bool {.importc: "QDateTimeEdit_calendarPopup".}
proc fcQDateTimeEdit_setCalendarPopup(self: pointer, enable: bool): void {.importc: "QDateTimeEdit_setCalendarPopup".}
proc fcQDateTimeEdit_timeSpec(self: pointer): cint {.importc: "QDateTimeEdit_timeSpec".}
proc fcQDateTimeEdit_setTimeSpec(self: pointer, spec: cint): void {.importc: "QDateTimeEdit_setTimeSpec".}
proc fcQDateTimeEdit_sizeHint(self: pointer): pointer {.importc: "QDateTimeEdit_sizeHint".}
proc fcQDateTimeEdit_clear(self: pointer): void {.importc: "QDateTimeEdit_clear".}
proc fcQDateTimeEdit_stepBy(self: pointer, steps: cint): void {.importc: "QDateTimeEdit_stepBy".}
proc fcQDateTimeEdit_event(self: pointer, event: pointer): bool {.importc: "QDateTimeEdit_event".}
proc fcQDateTimeEdit_dateTimeChanged(self: pointer, dateTime: pointer): void {.importc: "QDateTimeEdit_dateTimeChanged".}
proc fcQDateTimeEdit_connect_dateTimeChanged(self: pointer, slot: int, callback: proc (slot: int, dateTime: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDateTimeEdit_connect_dateTimeChanged".}
proc fcQDateTimeEdit_timeChanged(self: pointer, time: pointer): void {.importc: "QDateTimeEdit_timeChanged".}
proc fcQDateTimeEdit_connect_timeChanged(self: pointer, slot: int, callback: proc (slot: int, time: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDateTimeEdit_connect_timeChanged".}
proc fcQDateTimeEdit_dateChanged(self: pointer, date: pointer): void {.importc: "QDateTimeEdit_dateChanged".}
proc fcQDateTimeEdit_connect_dateChanged(self: pointer, slot: int, callback: proc (slot: int, date: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDateTimeEdit_connect_dateChanged".}
proc fcQDateTimeEdit_setDateTime(self: pointer, dateTime: pointer): void {.importc: "QDateTimeEdit_setDateTime".}
proc fcQDateTimeEdit_setDate(self: pointer, date: pointer): void {.importc: "QDateTimeEdit_setDate".}
proc fcQDateTimeEdit_setTime(self: pointer, time: pointer): void {.importc: "QDateTimeEdit_setTime".}
proc fcQDateTimeEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDateTimeEdit_tr2".}
proc fcQDateTimeEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDateTimeEdit_tr3".}
proc fcQDateTimeEdit_vtbl(self: pointer): pointer {.importc: "QDateTimeEdit_vtbl".}
proc fcQDateTimeEdit_vdata(self: pointer): pointer {.importc: "QDateTimeEdit_vdata".}
type cQDateTimeEditVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  clear*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  stepBy*: proc(self: pointer, steps: cint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  validate*: proc(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  fixup*: proc(self: pointer, input: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  dateTimeFromText*: proc(self: pointer, text: struct_miqt_string): pointer {.cdecl, raises: [], gcsafe.}
  textFromDateTime*: proc(self: pointer, dt: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  stepEnabled*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQDateTimeEdit_virtualbase_metaObject(self: pointer): pointer {.importc: "QDateTimeEdit_virtualbase_metaObject".}
proc fcQDateTimeEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDateTimeEdit_virtualbase_metacast".}
proc fcQDateTimeEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDateTimeEdit_virtualbase_metacall".}
proc fcQDateTimeEdit_virtualbase_sizeHint(self: pointer): pointer {.importc: "QDateTimeEdit_virtualbase_sizeHint".}
proc fcQDateTimeEdit_virtualbase_clear(self: pointer): void {.importc: "QDateTimeEdit_virtualbase_clear".}
proc fcQDateTimeEdit_virtualbase_stepBy(self: pointer, steps: cint): void {.importc: "QDateTimeEdit_virtualbase_stepBy".}
proc fcQDateTimeEdit_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDateTimeEdit_virtualbase_event".}
proc fcQDateTimeEdit_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_keyPressEvent".}
proc fcQDateTimeEdit_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_wheelEvent".}
proc fcQDateTimeEdit_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_focusInEvent".}
proc fcQDateTimeEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDateTimeEdit_virtualbase_focusNextPrevChild".}
proc fcQDateTimeEdit_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QDateTimeEdit_virtualbase_validate".}
proc fcQDateTimeEdit_virtualbase_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QDateTimeEdit_virtualbase_fixup".}
proc fcQDateTimeEdit_virtualbase_dateTimeFromText(self: pointer, text: struct_miqt_string): pointer {.importc: "QDateTimeEdit_virtualbase_dateTimeFromText".}
proc fcQDateTimeEdit_virtualbase_textFromDateTime(self: pointer, dt: pointer): struct_miqt_string {.importc: "QDateTimeEdit_virtualbase_textFromDateTime".}
proc fcQDateTimeEdit_virtualbase_stepEnabled(self: pointer): cint {.importc: "QDateTimeEdit_virtualbase_stepEnabled".}
proc fcQDateTimeEdit_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_mousePressEvent".}
proc fcQDateTimeEdit_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_paintEvent".}
proc fcQDateTimeEdit_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QDateTimeEdit_virtualbase_initStyleOption".}
proc fcQDateTimeEdit_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QDateTimeEdit_virtualbase_minimumSizeHint".}
proc fcQDateTimeEdit_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDateTimeEdit_virtualbase_inputMethodQuery".}
proc fcQDateTimeEdit_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_resizeEvent".}
proc fcQDateTimeEdit_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_keyReleaseEvent".}
proc fcQDateTimeEdit_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_focusOutEvent".}
proc fcQDateTimeEdit_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_contextMenuEvent".}
proc fcQDateTimeEdit_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_changeEvent".}
proc fcQDateTimeEdit_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_closeEvent".}
proc fcQDateTimeEdit_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_hideEvent".}
proc fcQDateTimeEdit_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_mouseReleaseEvent".}
proc fcQDateTimeEdit_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_mouseMoveEvent".}
proc fcQDateTimeEdit_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_timerEvent".}
proc fcQDateTimeEdit_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_showEvent".}
proc fcQDateTimeEdit_virtualbase_devType(self: pointer): cint {.importc: "QDateTimeEdit_virtualbase_devType".}
proc fcQDateTimeEdit_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDateTimeEdit_virtualbase_setVisible".}
proc fcQDateTimeEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDateTimeEdit_virtualbase_heightForWidth".}
proc fcQDateTimeEdit_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QDateTimeEdit_virtualbase_hasHeightForWidth".}
proc fcQDateTimeEdit_virtualbase_paintEngine(self: pointer): pointer {.importc: "QDateTimeEdit_virtualbase_paintEngine".}
proc fcQDateTimeEdit_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQDateTimeEdit_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_enterEvent".}
proc fcQDateTimeEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_leaveEvent".}
proc fcQDateTimeEdit_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_moveEvent".}
proc fcQDateTimeEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_tabletEvent".}
proc fcQDateTimeEdit_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_actionEvent".}
proc fcQDateTimeEdit_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_dragEnterEvent".}
proc fcQDateTimeEdit_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_dragMoveEvent".}
proc fcQDateTimeEdit_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_dragLeaveEvent".}
proc fcQDateTimeEdit_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_dropEvent".}
proc fcQDateTimeEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QDateTimeEdit_virtualbase_nativeEvent".}
proc fcQDateTimeEdit_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QDateTimeEdit_virtualbase_metric".}
proc fcQDateTimeEdit_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QDateTimeEdit_virtualbase_initPainter".}
proc fcQDateTimeEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QDateTimeEdit_virtualbase_redirected".}
proc fcQDateTimeEdit_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QDateTimeEdit_virtualbase_sharedPainter".}
proc fcQDateTimeEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDateTimeEdit_virtualbase_inputMethodEvent".}
proc fcQDateTimeEdit_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDateTimeEdit_virtualbase_eventFilter".}
proc fcQDateTimeEdit_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_childEvent".}
proc fcQDateTimeEdit_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDateTimeEdit_virtualbase_customEvent".}
proc fcQDateTimeEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDateTimeEdit_virtualbase_connectNotify".}
proc fcQDateTimeEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDateTimeEdit_virtualbase_disconnectNotify".}
proc fcQDateTimeEdit_protectedbase_lineEdit(self: pointer): pointer {.importc: "QDateTimeEdit_protectedbase_lineEdit".}
proc fcQDateTimeEdit_protectedbase_setLineEdit(self: pointer, edit: pointer): void {.importc: "QDateTimeEdit_protectedbase_setLineEdit".}
proc fcQDateTimeEdit_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QDateTimeEdit_protectedbase_updateMicroFocus".}
proc fcQDateTimeEdit_protectedbase_create(self: pointer): void {.importc: "QDateTimeEdit_protectedbase_create".}
proc fcQDateTimeEdit_protectedbase_destroy(self: pointer): void {.importc: "QDateTimeEdit_protectedbase_destroy".}
proc fcQDateTimeEdit_protectedbase_focusNextChild(self: pointer): bool {.importc: "QDateTimeEdit_protectedbase_focusNextChild".}
proc fcQDateTimeEdit_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QDateTimeEdit_protectedbase_focusPreviousChild".}
proc fcQDateTimeEdit_protectedbase_sender(self: pointer): pointer {.importc: "QDateTimeEdit_protectedbase_sender".}
proc fcQDateTimeEdit_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDateTimeEdit_protectedbase_senderSignalIndex".}
proc fcQDateTimeEdit_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDateTimeEdit_protectedbase_receivers".}
proc fcQDateTimeEdit_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDateTimeEdit_protectedbase_isSignalConnected".}
proc fcQDateTimeEdit_new(vtbl, vdata: pointer, parent: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new".}
proc fcQDateTimeEdit_new2(vtbl, vdata: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new2".}
proc fcQDateTimeEdit_new3(vtbl, vdata: pointer, dt: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new3".}
proc fcQDateTimeEdit_new4(vtbl, vdata: pointer, d: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new4".}
proc fcQDateTimeEdit_new5(vtbl, vdata: pointer, t: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new5".}
proc fcQDateTimeEdit_new6(vtbl, vdata: pointer, dt: pointer, parent: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new6".}
proc fcQDateTimeEdit_new7(vtbl, vdata: pointer, d: pointer, parent: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new7".}
proc fcQDateTimeEdit_new8(vtbl, vdata: pointer, t: pointer, parent: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new8".}
proc fcQDateTimeEdit_staticMetaObject(): pointer {.importc: "QDateTimeEdit_staticMetaObject".}
proc fcQTimeEdit_metaObject(self: pointer): pointer {.importc: "QTimeEdit_metaObject".}
proc fcQTimeEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QTimeEdit_metacast".}
proc fcQTimeEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTimeEdit_metacall".}
proc fcQTimeEdit_tr(s: cstring): struct_miqt_string {.importc: "QTimeEdit_tr".}
proc fcQTimeEdit_userTimeChanged(self: pointer, time: pointer): void {.importc: "QTimeEdit_userTimeChanged".}
proc fcQTimeEdit_connect_userTimeChanged(self: pointer, slot: int, callback: proc (slot: int, time: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTimeEdit_connect_userTimeChanged".}
proc fcQTimeEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTimeEdit_tr2".}
proc fcQTimeEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTimeEdit_tr3".}
proc fcQTimeEdit_vtbl(self: pointer): pointer {.importc: "QTimeEdit_vtbl".}
proc fcQTimeEdit_vdata(self: pointer): pointer {.importc: "QTimeEdit_vdata".}
type cQTimeEditVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  clear*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  stepBy*: proc(self: pointer, steps: cint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  validate*: proc(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  fixup*: proc(self: pointer, input: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  dateTimeFromText*: proc(self: pointer, text: struct_miqt_string): pointer {.cdecl, raises: [], gcsafe.}
  textFromDateTime*: proc(self: pointer, dt: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  stepEnabled*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTimeEdit_virtualbase_metaObject(self: pointer): pointer {.importc: "QTimeEdit_virtualbase_metaObject".}
proc fcQTimeEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTimeEdit_virtualbase_metacast".}
proc fcQTimeEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTimeEdit_virtualbase_metacall".}
proc fcQTimeEdit_virtualbase_sizeHint(self: pointer): pointer {.importc: "QTimeEdit_virtualbase_sizeHint".}
proc fcQTimeEdit_virtualbase_clear(self: pointer): void {.importc: "QTimeEdit_virtualbase_clear".}
proc fcQTimeEdit_virtualbase_stepBy(self: pointer, steps: cint): void {.importc: "QTimeEdit_virtualbase_stepBy".}
proc fcQTimeEdit_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTimeEdit_virtualbase_event".}
proc fcQTimeEdit_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_keyPressEvent".}
proc fcQTimeEdit_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_wheelEvent".}
proc fcQTimeEdit_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_focusInEvent".}
proc fcQTimeEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QTimeEdit_virtualbase_focusNextPrevChild".}
proc fcQTimeEdit_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QTimeEdit_virtualbase_validate".}
proc fcQTimeEdit_virtualbase_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QTimeEdit_virtualbase_fixup".}
proc fcQTimeEdit_virtualbase_dateTimeFromText(self: pointer, text: struct_miqt_string): pointer {.importc: "QTimeEdit_virtualbase_dateTimeFromText".}
proc fcQTimeEdit_virtualbase_textFromDateTime(self: pointer, dt: pointer): struct_miqt_string {.importc: "QTimeEdit_virtualbase_textFromDateTime".}
proc fcQTimeEdit_virtualbase_stepEnabled(self: pointer): cint {.importc: "QTimeEdit_virtualbase_stepEnabled".}
proc fcQTimeEdit_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_mousePressEvent".}
proc fcQTimeEdit_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_paintEvent".}
proc fcQTimeEdit_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QTimeEdit_virtualbase_initStyleOption".}
proc fcQTimeEdit_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QTimeEdit_virtualbase_minimumSizeHint".}
proc fcQTimeEdit_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QTimeEdit_virtualbase_inputMethodQuery".}
proc fcQTimeEdit_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_resizeEvent".}
proc fcQTimeEdit_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_keyReleaseEvent".}
proc fcQTimeEdit_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_focusOutEvent".}
proc fcQTimeEdit_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_contextMenuEvent".}
proc fcQTimeEdit_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_changeEvent".}
proc fcQTimeEdit_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_closeEvent".}
proc fcQTimeEdit_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_hideEvent".}
proc fcQTimeEdit_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_mouseReleaseEvent".}
proc fcQTimeEdit_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_mouseMoveEvent".}
proc fcQTimeEdit_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_timerEvent".}
proc fcQTimeEdit_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_showEvent".}
proc fcQTimeEdit_virtualbase_devType(self: pointer): cint {.importc: "QTimeEdit_virtualbase_devType".}
proc fcQTimeEdit_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QTimeEdit_virtualbase_setVisible".}
proc fcQTimeEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QTimeEdit_virtualbase_heightForWidth".}
proc fcQTimeEdit_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QTimeEdit_virtualbase_hasHeightForWidth".}
proc fcQTimeEdit_virtualbase_paintEngine(self: pointer): pointer {.importc: "QTimeEdit_virtualbase_paintEngine".}
proc fcQTimeEdit_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQTimeEdit_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_enterEvent".}
proc fcQTimeEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_leaveEvent".}
proc fcQTimeEdit_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_moveEvent".}
proc fcQTimeEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_tabletEvent".}
proc fcQTimeEdit_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_actionEvent".}
proc fcQTimeEdit_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_dragEnterEvent".}
proc fcQTimeEdit_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_dragMoveEvent".}
proc fcQTimeEdit_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_dragLeaveEvent".}
proc fcQTimeEdit_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_dropEvent".}
proc fcQTimeEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QTimeEdit_virtualbase_nativeEvent".}
proc fcQTimeEdit_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QTimeEdit_virtualbase_metric".}
proc fcQTimeEdit_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QTimeEdit_virtualbase_initPainter".}
proc fcQTimeEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QTimeEdit_virtualbase_redirected".}
proc fcQTimeEdit_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QTimeEdit_virtualbase_sharedPainter".}
proc fcQTimeEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QTimeEdit_virtualbase_inputMethodEvent".}
proc fcQTimeEdit_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTimeEdit_virtualbase_eventFilter".}
proc fcQTimeEdit_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_childEvent".}
proc fcQTimeEdit_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTimeEdit_virtualbase_customEvent".}
proc fcQTimeEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTimeEdit_virtualbase_connectNotify".}
proc fcQTimeEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTimeEdit_virtualbase_disconnectNotify".}
proc fcQTimeEdit_protectedbase_lineEdit(self: pointer): pointer {.importc: "QTimeEdit_protectedbase_lineEdit".}
proc fcQTimeEdit_protectedbase_setLineEdit(self: pointer, edit: pointer): void {.importc: "QTimeEdit_protectedbase_setLineEdit".}
proc fcQTimeEdit_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QTimeEdit_protectedbase_updateMicroFocus".}
proc fcQTimeEdit_protectedbase_create(self: pointer): void {.importc: "QTimeEdit_protectedbase_create".}
proc fcQTimeEdit_protectedbase_destroy(self: pointer): void {.importc: "QTimeEdit_protectedbase_destroy".}
proc fcQTimeEdit_protectedbase_focusNextChild(self: pointer): bool {.importc: "QTimeEdit_protectedbase_focusNextChild".}
proc fcQTimeEdit_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QTimeEdit_protectedbase_focusPreviousChild".}
proc fcQTimeEdit_protectedbase_sender(self: pointer): pointer {.importc: "QTimeEdit_protectedbase_sender".}
proc fcQTimeEdit_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QTimeEdit_protectedbase_senderSignalIndex".}
proc fcQTimeEdit_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTimeEdit_protectedbase_receivers".}
proc fcQTimeEdit_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTimeEdit_protectedbase_isSignalConnected".}
proc fcQTimeEdit_new(vtbl, vdata: pointer, parent: pointer): ptr cQTimeEdit {.importc: "QTimeEdit_new".}
proc fcQTimeEdit_new2(vtbl, vdata: pointer): ptr cQTimeEdit {.importc: "QTimeEdit_new2".}
proc fcQTimeEdit_new3(vtbl, vdata: pointer, time: pointer): ptr cQTimeEdit {.importc: "QTimeEdit_new3".}
proc fcQTimeEdit_new4(vtbl, vdata: pointer, time: pointer, parent: pointer): ptr cQTimeEdit {.importc: "QTimeEdit_new4".}
proc fcQTimeEdit_staticMetaObject(): pointer {.importc: "QTimeEdit_staticMetaObject".}
proc fcQDateEdit_metaObject(self: pointer): pointer {.importc: "QDateEdit_metaObject".}
proc fcQDateEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QDateEdit_metacast".}
proc fcQDateEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDateEdit_metacall".}
proc fcQDateEdit_tr(s: cstring): struct_miqt_string {.importc: "QDateEdit_tr".}
proc fcQDateEdit_userDateChanged(self: pointer, date: pointer): void {.importc: "QDateEdit_userDateChanged".}
proc fcQDateEdit_connect_userDateChanged(self: pointer, slot: int, callback: proc (slot: int, date: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDateEdit_connect_userDateChanged".}
proc fcQDateEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDateEdit_tr2".}
proc fcQDateEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDateEdit_tr3".}
proc fcQDateEdit_vtbl(self: pointer): pointer {.importc: "QDateEdit_vtbl".}
proc fcQDateEdit_vdata(self: pointer): pointer {.importc: "QDateEdit_vdata".}
type cQDateEditVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  clear*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  stepBy*: proc(self: pointer, steps: cint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  validate*: proc(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  fixup*: proc(self: pointer, input: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  dateTimeFromText*: proc(self: pointer, text: struct_miqt_string): pointer {.cdecl, raises: [], gcsafe.}
  textFromDateTime*: proc(self: pointer, dt: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  stepEnabled*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQDateEdit_virtualbase_metaObject(self: pointer): pointer {.importc: "QDateEdit_virtualbase_metaObject".}
proc fcQDateEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDateEdit_virtualbase_metacast".}
proc fcQDateEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDateEdit_virtualbase_metacall".}
proc fcQDateEdit_virtualbase_sizeHint(self: pointer): pointer {.importc: "QDateEdit_virtualbase_sizeHint".}
proc fcQDateEdit_virtualbase_clear(self: pointer): void {.importc: "QDateEdit_virtualbase_clear".}
proc fcQDateEdit_virtualbase_stepBy(self: pointer, steps: cint): void {.importc: "QDateEdit_virtualbase_stepBy".}
proc fcQDateEdit_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDateEdit_virtualbase_event".}
proc fcQDateEdit_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_keyPressEvent".}
proc fcQDateEdit_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_wheelEvent".}
proc fcQDateEdit_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_focusInEvent".}
proc fcQDateEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDateEdit_virtualbase_focusNextPrevChild".}
proc fcQDateEdit_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QDateEdit_virtualbase_validate".}
proc fcQDateEdit_virtualbase_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QDateEdit_virtualbase_fixup".}
proc fcQDateEdit_virtualbase_dateTimeFromText(self: pointer, text: struct_miqt_string): pointer {.importc: "QDateEdit_virtualbase_dateTimeFromText".}
proc fcQDateEdit_virtualbase_textFromDateTime(self: pointer, dt: pointer): struct_miqt_string {.importc: "QDateEdit_virtualbase_textFromDateTime".}
proc fcQDateEdit_virtualbase_stepEnabled(self: pointer): cint {.importc: "QDateEdit_virtualbase_stepEnabled".}
proc fcQDateEdit_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_mousePressEvent".}
proc fcQDateEdit_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_paintEvent".}
proc fcQDateEdit_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QDateEdit_virtualbase_initStyleOption".}
proc fcQDateEdit_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QDateEdit_virtualbase_minimumSizeHint".}
proc fcQDateEdit_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDateEdit_virtualbase_inputMethodQuery".}
proc fcQDateEdit_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_resizeEvent".}
proc fcQDateEdit_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_keyReleaseEvent".}
proc fcQDateEdit_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_focusOutEvent".}
proc fcQDateEdit_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_contextMenuEvent".}
proc fcQDateEdit_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_changeEvent".}
proc fcQDateEdit_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_closeEvent".}
proc fcQDateEdit_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_hideEvent".}
proc fcQDateEdit_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_mouseReleaseEvent".}
proc fcQDateEdit_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_mouseMoveEvent".}
proc fcQDateEdit_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_timerEvent".}
proc fcQDateEdit_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_showEvent".}
proc fcQDateEdit_virtualbase_devType(self: pointer): cint {.importc: "QDateEdit_virtualbase_devType".}
proc fcQDateEdit_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDateEdit_virtualbase_setVisible".}
proc fcQDateEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDateEdit_virtualbase_heightForWidth".}
proc fcQDateEdit_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QDateEdit_virtualbase_hasHeightForWidth".}
proc fcQDateEdit_virtualbase_paintEngine(self: pointer): pointer {.importc: "QDateEdit_virtualbase_paintEngine".}
proc fcQDateEdit_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQDateEdit_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_enterEvent".}
proc fcQDateEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_leaveEvent".}
proc fcQDateEdit_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_moveEvent".}
proc fcQDateEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_tabletEvent".}
proc fcQDateEdit_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_actionEvent".}
proc fcQDateEdit_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_dragEnterEvent".}
proc fcQDateEdit_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_dragMoveEvent".}
proc fcQDateEdit_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_dragLeaveEvent".}
proc fcQDateEdit_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_dropEvent".}
proc fcQDateEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QDateEdit_virtualbase_nativeEvent".}
proc fcQDateEdit_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QDateEdit_virtualbase_metric".}
proc fcQDateEdit_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QDateEdit_virtualbase_initPainter".}
proc fcQDateEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QDateEdit_virtualbase_redirected".}
proc fcQDateEdit_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QDateEdit_virtualbase_sharedPainter".}
proc fcQDateEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDateEdit_virtualbase_inputMethodEvent".}
proc fcQDateEdit_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDateEdit_virtualbase_eventFilter".}
proc fcQDateEdit_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_childEvent".}
proc fcQDateEdit_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDateEdit_virtualbase_customEvent".}
proc fcQDateEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDateEdit_virtualbase_connectNotify".}
proc fcQDateEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDateEdit_virtualbase_disconnectNotify".}
proc fcQDateEdit_protectedbase_lineEdit(self: pointer): pointer {.importc: "QDateEdit_protectedbase_lineEdit".}
proc fcQDateEdit_protectedbase_setLineEdit(self: pointer, edit: pointer): void {.importc: "QDateEdit_protectedbase_setLineEdit".}
proc fcQDateEdit_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QDateEdit_protectedbase_updateMicroFocus".}
proc fcQDateEdit_protectedbase_create(self: pointer): void {.importc: "QDateEdit_protectedbase_create".}
proc fcQDateEdit_protectedbase_destroy(self: pointer): void {.importc: "QDateEdit_protectedbase_destroy".}
proc fcQDateEdit_protectedbase_focusNextChild(self: pointer): bool {.importc: "QDateEdit_protectedbase_focusNextChild".}
proc fcQDateEdit_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QDateEdit_protectedbase_focusPreviousChild".}
proc fcQDateEdit_protectedbase_sender(self: pointer): pointer {.importc: "QDateEdit_protectedbase_sender".}
proc fcQDateEdit_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDateEdit_protectedbase_senderSignalIndex".}
proc fcQDateEdit_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDateEdit_protectedbase_receivers".}
proc fcQDateEdit_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDateEdit_protectedbase_isSignalConnected".}
proc fcQDateEdit_new(vtbl, vdata: pointer, parent: pointer): ptr cQDateEdit {.importc: "QDateEdit_new".}
proc fcQDateEdit_new2(vtbl, vdata: pointer): ptr cQDateEdit {.importc: "QDateEdit_new2".}
proc fcQDateEdit_new3(vtbl, vdata: pointer, date: pointer): ptr cQDateEdit {.importc: "QDateEdit_new3".}
proc fcQDateEdit_new4(vtbl, vdata: pointer, date: pointer, parent: pointer): ptr cQDateEdit {.importc: "QDateEdit_new4".}
proc fcQDateEdit_staticMetaObject(): pointer {.importc: "QDateEdit_staticMetaObject".}

proc metaObject*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDateTimeEdit_metaObject(self.h), owned: false)

proc metacast*(self: gen_qdatetimeedit_types.QDateTimeEdit, param1: cstring): pointer =
  fcQDateTimeEdit_metacast(self.h, param1)

proc metacall*(self: gen_qdatetimeedit_types.QDateTimeEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQDateTimeEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdatetimeedit_types.QDateTimeEdit, s: cstring): string =
  let v_ms = fcQDateTimeEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc dateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTimeEdit_dateTime(self.h), owned: true)

proc date*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDateTimeEdit_date(self.h), owned: true)

proc time*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQDateTimeEdit_time(self.h), owned: true)

proc calendar*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qcalendar_types.QCalendar =
  gen_qcalendar_types.QCalendar(h: fcQDateTimeEdit_calendar(self.h), owned: true)

proc setCalendar*(self: gen_qdatetimeedit_types.QDateTimeEdit, calendar: gen_qcalendar_types.QCalendar): void =
  fcQDateTimeEdit_setCalendar(self.h, calendar.h)

proc minimumDateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTimeEdit_minimumDateTime(self.h), owned: true)

proc clearMinimumDateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit): void =
  fcQDateTimeEdit_clearMinimumDateTime(self.h)

proc setMinimumDateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, dt: gen_qdatetime_types.QDateTime): void =
  fcQDateTimeEdit_setMinimumDateTime(self.h, dt.h)

proc maximumDateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTimeEdit_maximumDateTime(self.h), owned: true)

proc clearMaximumDateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit): void =
  fcQDateTimeEdit_clearMaximumDateTime(self.h)

proc setMaximumDateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, dt: gen_qdatetime_types.QDateTime): void =
  fcQDateTimeEdit_setMaximumDateTime(self.h, dt.h)

proc setDateTimeRange*(self: gen_qdatetimeedit_types.QDateTimeEdit, min: gen_qdatetime_types.QDateTime, max: gen_qdatetime_types.QDateTime): void =
  fcQDateTimeEdit_setDateTimeRange(self.h, min.h, max.h)

proc minimumDate*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDateTimeEdit_minimumDate(self.h), owned: true)

proc setMinimumDate*(self: gen_qdatetimeedit_types.QDateTimeEdit, min: gen_qdatetime_types.QDate): void =
  fcQDateTimeEdit_setMinimumDate(self.h, min.h)

proc clearMinimumDate*(self: gen_qdatetimeedit_types.QDateTimeEdit): void =
  fcQDateTimeEdit_clearMinimumDate(self.h)

proc maximumDate*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQDateTimeEdit_maximumDate(self.h), owned: true)

proc setMaximumDate*(self: gen_qdatetimeedit_types.QDateTimeEdit, max: gen_qdatetime_types.QDate): void =
  fcQDateTimeEdit_setMaximumDate(self.h, max.h)

proc clearMaximumDate*(self: gen_qdatetimeedit_types.QDateTimeEdit): void =
  fcQDateTimeEdit_clearMaximumDate(self.h)

proc setDateRange*(self: gen_qdatetimeedit_types.QDateTimeEdit, min: gen_qdatetime_types.QDate, max: gen_qdatetime_types.QDate): void =
  fcQDateTimeEdit_setDateRange(self.h, min.h, max.h)

proc minimumTime*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQDateTimeEdit_minimumTime(self.h), owned: true)

proc setMinimumTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, min: gen_qdatetime_types.QTime): void =
  fcQDateTimeEdit_setMinimumTime(self.h, min.h)

proc clearMinimumTime*(self: gen_qdatetimeedit_types.QDateTimeEdit): void =
  fcQDateTimeEdit_clearMinimumTime(self.h)

proc maximumTime*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQDateTimeEdit_maximumTime(self.h), owned: true)

proc setMaximumTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, max: gen_qdatetime_types.QTime): void =
  fcQDateTimeEdit_setMaximumTime(self.h, max.h)

proc clearMaximumTime*(self: gen_qdatetimeedit_types.QDateTimeEdit): void =
  fcQDateTimeEdit_clearMaximumTime(self.h)

proc setTimeRange*(self: gen_qdatetimeedit_types.QDateTimeEdit, min: gen_qdatetime_types.QTime, max: gen_qdatetime_types.QTime): void =
  fcQDateTimeEdit_setTimeRange(self.h, min.h, max.h)

proc displayedSections*(self: gen_qdatetimeedit_types.QDateTimeEdit): cint =
  cint(fcQDateTimeEdit_displayedSections(self.h))

proc currentSection*(self: gen_qdatetimeedit_types.QDateTimeEdit): cint =
  cint(fcQDateTimeEdit_currentSection(self.h))

proc sectionAt*(self: gen_qdatetimeedit_types.QDateTimeEdit, index: cint): cint =
  cint(fcQDateTimeEdit_sectionAt(self.h, index))

proc setCurrentSection*(self: gen_qdatetimeedit_types.QDateTimeEdit, section: cint): void =
  fcQDateTimeEdit_setCurrentSection(self.h, cint(section))

proc currentSectionIndex*(self: gen_qdatetimeedit_types.QDateTimeEdit): cint =
  fcQDateTimeEdit_currentSectionIndex(self.h)

proc setCurrentSectionIndex*(self: gen_qdatetimeedit_types.QDateTimeEdit, index: cint): void =
  fcQDateTimeEdit_setCurrentSectionIndex(self.h, index)

proc calendarWidget*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qcalendarwidget_types.QCalendarWidget =
  gen_qcalendarwidget_types.QCalendarWidget(h: fcQDateTimeEdit_calendarWidget(self.h), owned: false)

proc setCalendarWidget*(self: gen_qdatetimeedit_types.QDateTimeEdit, calendarWidget: gen_qcalendarwidget_types.QCalendarWidget): void =
  fcQDateTimeEdit_setCalendarWidget(self.h, calendarWidget.h)

proc sectionCount*(self: gen_qdatetimeedit_types.QDateTimeEdit): cint =
  fcQDateTimeEdit_sectionCount(self.h)

proc setSelectedSection*(self: gen_qdatetimeedit_types.QDateTimeEdit, section: cint): void =
  fcQDateTimeEdit_setSelectedSection(self.h, cint(section))

proc sectionText*(self: gen_qdatetimeedit_types.QDateTimeEdit, section: cint): string =
  let v_ms = fcQDateTimeEdit_sectionText(self.h, cint(section))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc displayFormat*(self: gen_qdatetimeedit_types.QDateTimeEdit): string =
  let v_ms = fcQDateTimeEdit_displayFormat(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDisplayFormat*(self: gen_qdatetimeedit_types.QDateTimeEdit, format: string): void =
  fcQDateTimeEdit_setDisplayFormat(self.h, struct_miqt_string(data: format, len: csize_t(len(format))))

proc calendarPopup*(self: gen_qdatetimeedit_types.QDateTimeEdit): bool =
  fcQDateTimeEdit_calendarPopup(self.h)

proc setCalendarPopup*(self: gen_qdatetimeedit_types.QDateTimeEdit, enable: bool): void =
  fcQDateTimeEdit_setCalendarPopup(self.h, enable)

proc timeSpec*(self: gen_qdatetimeedit_types.QDateTimeEdit): cint =
  cint(fcQDateTimeEdit_timeSpec(self.h))

proc setTimeSpec*(self: gen_qdatetimeedit_types.QDateTimeEdit, spec: cint): void =
  fcQDateTimeEdit_setTimeSpec(self.h, cint(spec))

proc sizeHint*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDateTimeEdit_sizeHint(self.h), owned: true)

proc clear*(self: gen_qdatetimeedit_types.QDateTimeEdit): void =
  fcQDateTimeEdit_clear(self.h)

proc stepBy*(self: gen_qdatetimeedit_types.QDateTimeEdit, steps: cint): void =
  fcQDateTimeEdit_stepBy(self.h, steps)

proc event*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qcoreevent_types.QEvent): bool =
  fcQDateTimeEdit_event(self.h, event.h)

proc dateTimeChanged*(self: gen_qdatetimeedit_types.QDateTimeEdit, dateTime: gen_qdatetime_types.QDateTime): void =
  fcQDateTimeEdit_dateTimeChanged(self.h, dateTime.h)

type QDateTimeEditdateTimeChangedSlot* = proc(dateTime: gen_qdatetime_types.QDateTime)
proc cQDateTimeEdit_slot_callback_dateTimeChanged(slot: int, dateTime: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDateTimeEditdateTimeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qdatetime_types.QDateTime(h: dateTime, owned: false)

  nimfunc[](slotval1)

proc cQDateTimeEdit_slot_callback_dateTimeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDateTimeEditdateTimeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondateTimeChanged*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditdateTimeChangedSlot) =
  var tmp = new QDateTimeEditdateTimeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_connect_dateTimeChanged(self.h, cast[int](addr tmp[]), cQDateTimeEdit_slot_callback_dateTimeChanged, cQDateTimeEdit_slot_callback_dateTimeChanged_release)

proc timeChanged*(self: gen_qdatetimeedit_types.QDateTimeEdit, time: gen_qdatetime_types.QTime): void =
  fcQDateTimeEdit_timeChanged(self.h, time.h)

type QDateTimeEdittimeChangedSlot* = proc(time: gen_qdatetime_types.QTime)
proc cQDateTimeEdit_slot_callback_timeChanged(slot: int, time: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDateTimeEdittimeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qdatetime_types.QTime(h: time, owned: true)

  nimfunc[](slotval1)

proc cQDateTimeEdit_slot_callback_timeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDateTimeEdittimeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontimeChanged*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEdittimeChangedSlot) =
  var tmp = new QDateTimeEdittimeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_connect_timeChanged(self.h, cast[int](addr tmp[]), cQDateTimeEdit_slot_callback_timeChanged, cQDateTimeEdit_slot_callback_timeChanged_release)

proc dateChanged*(self: gen_qdatetimeedit_types.QDateTimeEdit, date: gen_qdatetime_types.QDate): void =
  fcQDateTimeEdit_dateChanged(self.h, date.h)

type QDateTimeEditdateChangedSlot* = proc(date: gen_qdatetime_types.QDate)
proc cQDateTimeEdit_slot_callback_dateChanged(slot: int, date: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDateTimeEditdateChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qdatetime_types.QDate(h: date, owned: true)

  nimfunc[](slotval1)

proc cQDateTimeEdit_slot_callback_dateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDateTimeEditdateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondateChanged*(self: gen_qdatetimeedit_types.QDateTimeEdit, slot: QDateTimeEditdateChangedSlot) =
  var tmp = new QDateTimeEditdateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_connect_dateChanged(self.h, cast[int](addr tmp[]), cQDateTimeEdit_slot_callback_dateChanged, cQDateTimeEdit_slot_callback_dateChanged_release)

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

type QDateTimeEditmetaObjectProc* = proc(self: QDateTimeEdit): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDateTimeEditmetacastProc* = proc(self: QDateTimeEdit, param1: cstring): pointer {.raises: [], gcsafe.}
type QDateTimeEditmetacallProc* = proc(self: QDateTimeEdit, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDateTimeEditsizeHintProc* = proc(self: QDateTimeEdit): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDateTimeEditclearProc* = proc(self: QDateTimeEdit): void {.raises: [], gcsafe.}
type QDateTimeEditstepByProc* = proc(self: QDateTimeEdit, steps: cint): void {.raises: [], gcsafe.}
type QDateTimeEditeventProc* = proc(self: QDateTimeEdit, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDateTimeEditkeyPressEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDateTimeEditwheelEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QDateTimeEditfocusInEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDateTimeEditfocusNextPrevChildProc* = proc(self: QDateTimeEdit, next: bool): bool {.raises: [], gcsafe.}
type QDateTimeEditvalidateProc* = proc(self: QDateTimeEdit, input: string, pos: ptr cint): cint {.raises: [], gcsafe.}
type QDateTimeEditfixupProc* = proc(self: QDateTimeEdit, input: string): void {.raises: [], gcsafe.}
type QDateTimeEditdateTimeFromTextProc* = proc(self: QDateTimeEdit, text: string): gen_qdatetime_types.QDateTime {.raises: [], gcsafe.}
type QDateTimeEdittextFromDateTimeProc* = proc(self: QDateTimeEdit, dt: gen_qdatetime_types.QDateTime): string {.raises: [], gcsafe.}
type QDateTimeEditstepEnabledProc* = proc(self: QDateTimeEdit): cint {.raises: [], gcsafe.}
type QDateTimeEditmousePressEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDateTimeEditpaintEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QDateTimeEditinitStyleOptionProc* = proc(self: QDateTimeEdit, option: gen_qstyleoption_types.QStyleOptionSpinBox): void {.raises: [], gcsafe.}
type QDateTimeEditminimumSizeHintProc* = proc(self: QDateTimeEdit): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDateTimeEditinputMethodQueryProc* = proc(self: QDateTimeEdit, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QDateTimeEditresizeEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QDateTimeEditkeyReleaseEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDateTimeEditfocusOutEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDateTimeEditcontextMenuEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QDateTimeEditchangeEventProc* = proc(self: QDateTimeEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDateTimeEditcloseEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QDateTimeEdithideEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QDateTimeEditmouseReleaseEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDateTimeEditmouseMoveEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDateTimeEdittimerEventProc* = proc(self: QDateTimeEdit, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDateTimeEditshowEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QDateTimeEditdevTypeProc* = proc(self: QDateTimeEdit): cint {.raises: [], gcsafe.}
type QDateTimeEditsetVisibleProc* = proc(self: QDateTimeEdit, visible: bool): void {.raises: [], gcsafe.}
type QDateTimeEditheightForWidthProc* = proc(self: QDateTimeEdit, param1: cint): cint {.raises: [], gcsafe.}
type QDateTimeEdithasHeightForWidthProc* = proc(self: QDateTimeEdit): bool {.raises: [], gcsafe.}
type QDateTimeEditpaintEngineProc* = proc(self: QDateTimeEdit): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QDateTimeEditmouseDoubleClickEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDateTimeEditenterEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QDateTimeEditleaveEventProc* = proc(self: QDateTimeEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDateTimeEditmoveEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QDateTimeEdittabletEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QDateTimeEditactionEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QDateTimeEditdragEnterEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QDateTimeEditdragMoveEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QDateTimeEditdragLeaveEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QDateTimeEditdropEventProc* = proc(self: QDateTimeEdit, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QDateTimeEditnativeEventProc* = proc(self: QDateTimeEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QDateTimeEditmetricProc* = proc(self: QDateTimeEdit, param1: cint): cint {.raises: [], gcsafe.}
type QDateTimeEditinitPainterProc* = proc(self: QDateTimeEdit, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QDateTimeEditredirectedProc* = proc(self: QDateTimeEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QDateTimeEditsharedPainterProc* = proc(self: QDateTimeEdit): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QDateTimeEditinputMethodEventProc* = proc(self: QDateTimeEdit, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QDateTimeEditeventFilterProc* = proc(self: QDateTimeEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDateTimeEditchildEventProc* = proc(self: QDateTimeEdit, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDateTimeEditcustomEventProc* = proc(self: QDateTimeEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDateTimeEditconnectNotifyProc* = proc(self: QDateTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDateTimeEditdisconnectNotifyProc* = proc(self: QDateTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDateTimeEditVTable* {.inheritable, pure.} = object
  vtbl: cQDateTimeEditVTable
  metaObject*: QDateTimeEditmetaObjectProc
  metacast*: QDateTimeEditmetacastProc
  metacall*: QDateTimeEditmetacallProc
  sizeHint*: QDateTimeEditsizeHintProc
  clear*: QDateTimeEditclearProc
  stepBy*: QDateTimeEditstepByProc
  event*: QDateTimeEditeventProc
  keyPressEvent*: QDateTimeEditkeyPressEventProc
  wheelEvent*: QDateTimeEditwheelEventProc
  focusInEvent*: QDateTimeEditfocusInEventProc
  focusNextPrevChild*: QDateTimeEditfocusNextPrevChildProc
  validate*: QDateTimeEditvalidateProc
  fixup*: QDateTimeEditfixupProc
  dateTimeFromText*: QDateTimeEditdateTimeFromTextProc
  textFromDateTime*: QDateTimeEdittextFromDateTimeProc
  stepEnabled*: QDateTimeEditstepEnabledProc
  mousePressEvent*: QDateTimeEditmousePressEventProc
  paintEvent*: QDateTimeEditpaintEventProc
  initStyleOption*: QDateTimeEditinitStyleOptionProc
  minimumSizeHint*: QDateTimeEditminimumSizeHintProc
  inputMethodQuery*: QDateTimeEditinputMethodQueryProc
  resizeEvent*: QDateTimeEditresizeEventProc
  keyReleaseEvent*: QDateTimeEditkeyReleaseEventProc
  focusOutEvent*: QDateTimeEditfocusOutEventProc
  contextMenuEvent*: QDateTimeEditcontextMenuEventProc
  changeEvent*: QDateTimeEditchangeEventProc
  closeEvent*: QDateTimeEditcloseEventProc
  hideEvent*: QDateTimeEdithideEventProc
  mouseReleaseEvent*: QDateTimeEditmouseReleaseEventProc
  mouseMoveEvent*: QDateTimeEditmouseMoveEventProc
  timerEvent*: QDateTimeEdittimerEventProc
  showEvent*: QDateTimeEditshowEventProc
  devType*: QDateTimeEditdevTypeProc
  setVisible*: QDateTimeEditsetVisibleProc
  heightForWidth*: QDateTimeEditheightForWidthProc
  hasHeightForWidth*: QDateTimeEdithasHeightForWidthProc
  paintEngine*: QDateTimeEditpaintEngineProc
  mouseDoubleClickEvent*: QDateTimeEditmouseDoubleClickEventProc
  enterEvent*: QDateTimeEditenterEventProc
  leaveEvent*: QDateTimeEditleaveEventProc
  moveEvent*: QDateTimeEditmoveEventProc
  tabletEvent*: QDateTimeEdittabletEventProc
  actionEvent*: QDateTimeEditactionEventProc
  dragEnterEvent*: QDateTimeEditdragEnterEventProc
  dragMoveEvent*: QDateTimeEditdragMoveEventProc
  dragLeaveEvent*: QDateTimeEditdragLeaveEventProc
  dropEvent*: QDateTimeEditdropEventProc
  nativeEvent*: QDateTimeEditnativeEventProc
  metric*: QDateTimeEditmetricProc
  initPainter*: QDateTimeEditinitPainterProc
  redirected*: QDateTimeEditredirectedProc
  sharedPainter*: QDateTimeEditsharedPainterProc
  inputMethodEvent*: QDateTimeEditinputMethodEventProc
  eventFilter*: QDateTimeEditeventFilterProc
  childEvent*: QDateTimeEditchildEventProc
  customEvent*: QDateTimeEditcustomEventProc
  connectNotify*: QDateTimeEditconnectNotifyProc
  disconnectNotify*: QDateTimeEditdisconnectNotifyProc
proc QDateTimeEditmetaObject*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDateTimeEdit_virtualbase_metaObject(self.h), owned: false)

proc cQDateTimeEdit_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDateTimeEditmetacast*(self: gen_qdatetimeedit_types.QDateTimeEdit, param1: cstring): pointer =
  fcQDateTimeEdit_virtualbase_metacast(self.h, param1)

proc cQDateTimeEdit_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QDateTimeEditmetacall*(self: gen_qdatetimeedit_types.QDateTimeEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQDateTimeEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQDateTimeEdit_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDateTimeEditsizeHint*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDateTimeEdit_virtualbase_sizeHint(self.h), owned: true)

proc cQDateTimeEdit_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDateTimeEditclear*(self: gen_qdatetimeedit_types.QDateTimeEdit): void =
  fcQDateTimeEdit_virtualbase_clear(self.h)

proc cQDateTimeEdit_vtable_callback_clear(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  vtbl[].clear(self)

proc QDateTimeEditstepBy*(self: gen_qdatetimeedit_types.QDateTimeEdit, steps: cint): void =
  fcQDateTimeEdit_virtualbase_stepBy(self.h, steps)

proc cQDateTimeEdit_vtable_callback_stepBy(self: pointer, steps: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = steps
  vtbl[].stepBy(self, slotval1)

proc QDateTimeEditevent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qcoreevent_types.QEvent): bool =
  fcQDateTimeEdit_virtualbase_event(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QDateTimeEditkeyPressEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QKeyEvent): void =
  fcQDateTimeEdit_virtualbase_keyPressEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QDateTimeEditwheelEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QWheelEvent): void =
  fcQDateTimeEdit_virtualbase_wheelEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QDateTimeEditfocusInEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QFocusEvent): void =
  fcQDateTimeEdit_virtualbase_focusInEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QDateTimeEditfocusNextPrevChild*(self: gen_qdatetimeedit_types.QDateTimeEdit, next: bool): bool =
  fcQDateTimeEdit_virtualbase_focusNextPrevChild(self.h, next)

proc cQDateTimeEdit_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QDateTimeEditvalidate*(self: gen_qdatetimeedit_types.QDateTimeEdit, input: string, pos: ptr cint): cint =
  cint(fcQDateTimeEdit_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

proc cQDateTimeEdit_vtable_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc QDateTimeEditfixup*(self: gen_qdatetimeedit_types.QDateTimeEdit, input: string): void =
  fcQDateTimeEdit_virtualbase_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

proc cQDateTimeEdit_vtable_callback_fixup(self: pointer, input: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  vtbl[].fixup(self, slotval1)

proc QDateTimeEditdateTimeFromText*(self: gen_qdatetimeedit_types.QDateTimeEdit, text: string): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateTimeEdit_virtualbase_dateTimeFromText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))), owned: true)

proc cQDateTimeEdit_vtable_callback_dateTimeFromText(self: pointer, text: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  var virtualReturn = vtbl[].dateTimeFromText(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDateTimeEdittextFromDateTime*(self: gen_qdatetimeedit_types.QDateTimeEdit, dt: gen_qdatetime_types.QDateTime): string =
  let v_ms = fcQDateTimeEdit_virtualbase_textFromDateTime(self.h, dt.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc cQDateTimeEdit_vtable_callback_textFromDateTime(self: pointer, dt: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qdatetime_types.QDateTime(h: dt, owned: false)
  var virtualReturn = vtbl[].textFromDateTime(self, slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc QDateTimeEditstepEnabled*(self: gen_qdatetimeedit_types.QDateTimeEdit): cint =
  cint(fcQDateTimeEdit_virtualbase_stepEnabled(self.h))

proc cQDateTimeEdit_vtable_callback_stepEnabled(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  var virtualReturn = vtbl[].stepEnabled(self)
  cint(virtualReturn)

proc QDateTimeEditmousePressEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQDateTimeEdit_virtualbase_mousePressEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QDateTimeEditpaintEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QPaintEvent): void =
  fcQDateTimeEdit_virtualbase_paintEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QDateTimeEditinitStyleOption*(self: gen_qdatetimeedit_types.QDateTimeEdit, option: gen_qstyleoption_types.QStyleOptionSpinBox): void =
  fcQDateTimeEdit_virtualbase_initStyleOption(self.h, option.h)

proc cQDateTimeEdit_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionSpinBox(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QDateTimeEditminimumSizeHint*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDateTimeEdit_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQDateTimeEdit_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDateTimeEditinputMethodQuery*(self: gen_qdatetimeedit_types.QDateTimeEdit, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDateTimeEdit_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQDateTimeEdit_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDateTimeEditresizeEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QResizeEvent): void =
  fcQDateTimeEdit_virtualbase_resizeEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QDateTimeEditkeyReleaseEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QKeyEvent): void =
  fcQDateTimeEdit_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QDateTimeEditfocusOutEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QFocusEvent): void =
  fcQDateTimeEdit_virtualbase_focusOutEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QDateTimeEditcontextMenuEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QContextMenuEvent): void =
  fcQDateTimeEdit_virtualbase_contextMenuEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QDateTimeEditchangeEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQDateTimeEdit_virtualbase_changeEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QDateTimeEditcloseEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QCloseEvent): void =
  fcQDateTimeEdit_virtualbase_closeEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QDateTimeEdithideEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QHideEvent): void =
  fcQDateTimeEdit_virtualbase_hideEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QDateTimeEditmouseReleaseEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQDateTimeEdit_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QDateTimeEditmouseMoveEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQDateTimeEdit_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QDateTimeEdittimerEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDateTimeEdit_virtualbase_timerEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QDateTimeEditshowEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QShowEvent): void =
  fcQDateTimeEdit_virtualbase_showEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QDateTimeEditdevType*(self: gen_qdatetimeedit_types.QDateTimeEdit): cint =
  fcQDateTimeEdit_virtualbase_devType(self.h)

proc cQDateTimeEdit_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QDateTimeEditsetVisible*(self: gen_qdatetimeedit_types.QDateTimeEdit, visible: bool): void =
  fcQDateTimeEdit_virtualbase_setVisible(self.h, visible)

proc cQDateTimeEdit_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QDateTimeEditheightForWidth*(self: gen_qdatetimeedit_types.QDateTimeEdit, param1: cint): cint =
  fcQDateTimeEdit_virtualbase_heightForWidth(self.h, param1)

proc cQDateTimeEdit_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QDateTimeEdithasHeightForWidth*(self: gen_qdatetimeedit_types.QDateTimeEdit): bool =
  fcQDateTimeEdit_virtualbase_hasHeightForWidth(self.h)

proc cQDateTimeEdit_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QDateTimeEditpaintEngine*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDateTimeEdit_virtualbase_paintEngine(self.h), owned: false)

proc cQDateTimeEdit_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDateTimeEditmouseDoubleClickEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQDateTimeEdit_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QDateTimeEditenterEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QEnterEvent): void =
  fcQDateTimeEdit_virtualbase_enterEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QDateTimeEditleaveEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQDateTimeEdit_virtualbase_leaveEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QDateTimeEditmoveEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QMoveEvent): void =
  fcQDateTimeEdit_virtualbase_moveEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QDateTimeEdittabletEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QTabletEvent): void =
  fcQDateTimeEdit_virtualbase_tabletEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QDateTimeEditactionEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QActionEvent): void =
  fcQDateTimeEdit_virtualbase_actionEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QDateTimeEditdragEnterEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDateTimeEdit_virtualbase_dragEnterEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QDateTimeEditdragMoveEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDateTimeEdit_virtualbase_dragMoveEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QDateTimeEditdragLeaveEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDateTimeEdit_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QDateTimeEditdropEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qevent_types.QDropEvent): void =
  fcQDateTimeEdit_virtualbase_dropEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QDateTimeEditnativeEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQDateTimeEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQDateTimeEdit_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDateTimeEditmetric*(self: gen_qdatetimeedit_types.QDateTimeEdit, param1: cint): cint =
  fcQDateTimeEdit_virtualbase_metric(self.h, cint(param1))

proc cQDateTimeEdit_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QDateTimeEditinitPainter*(self: gen_qdatetimeedit_types.QDateTimeEdit, painter: gen_qpainter_types.QPainter): void =
  fcQDateTimeEdit_virtualbase_initPainter(self.h, painter.h)

proc cQDateTimeEdit_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QDateTimeEditredirected*(self: gen_qdatetimeedit_types.QDateTimeEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDateTimeEdit_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQDateTimeEdit_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDateTimeEditsharedPainter*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDateTimeEdit_virtualbase_sharedPainter(self.h), owned: false)

proc cQDateTimeEdit_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDateTimeEditinputMethodEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDateTimeEdit_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQDateTimeEdit_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QDateTimeEditeventFilter*(self: gen_qdatetimeedit_types.QDateTimeEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDateTimeEdit_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQDateTimeEdit_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QDateTimeEditchildEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDateTimeEdit_virtualbase_childEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QDateTimeEditcustomEvent*(self: gen_qdatetimeedit_types.QDateTimeEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQDateTimeEdit_virtualbase_customEvent(self.h, event.h)

proc cQDateTimeEdit_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QDateTimeEditconnectNotify*(self: gen_qdatetimeedit_types.QDateTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDateTimeEdit_virtualbase_connectNotify(self.h, signal.h)

proc cQDateTimeEdit_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QDateTimeEditdisconnectNotify*(self: gen_qdatetimeedit_types.QDateTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDateTimeEdit_virtualbase_disconnectNotify(self.h, signal.h)

proc cQDateTimeEdit_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
  let self = QDateTimeEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDateTimeEdit* {.inheritable.} = ref object of QDateTimeEdit
  vtbl*: cQDateTimeEditVTable
method metaObject*(self: VirtualQDateTimeEdit): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDateTimeEditmetaObject(self[])
proc cQDateTimeEdit_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQDateTimeEdit, param1: cstring): pointer {.base.} =
  QDateTimeEditmetacast(self[], param1)
proc cQDateTimeEdit_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQDateTimeEdit, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDateTimeEditmetacall(self[], param1, param2, param3)
proc cQDateTimeEdit_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQDateTimeEdit): gen_qsize_types.QSize {.base.} =
  QDateTimeEditsizeHint(self[])
proc cQDateTimeEdit_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method clear*(self: VirtualQDateTimeEdit): void {.base.} =
  QDateTimeEditclear(self[])
proc cQDateTimeEdit_method_callback_clear(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  inst.clear()

method stepBy*(self: VirtualQDateTimeEdit, steps: cint): void {.base.} =
  QDateTimeEditstepBy(self[], steps)
proc cQDateTimeEdit_method_callback_stepBy(self: pointer, steps: cint): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = steps
  inst.stepBy(slotval1)

method event*(self: VirtualQDateTimeEdit, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDateTimeEditevent(self[], event)
proc cQDateTimeEdit_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method keyPressEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDateTimeEditkeyPressEvent(self[], event)
proc cQDateTimeEdit_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method wheelEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QDateTimeEditwheelEvent(self[], event)
proc cQDateTimeEdit_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method focusInEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDateTimeEditfocusInEvent(self[], event)
proc cQDateTimeEdit_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusNextPrevChild*(self: VirtualQDateTimeEdit, next: bool): bool {.base.} =
  QDateTimeEditfocusNextPrevChild(self[], next)
proc cQDateTimeEdit_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method validate*(self: VirtualQDateTimeEdit, input: string, pos: ptr cint): cint {.base.} =
  QDateTimeEditvalidate(self[], input, pos)
proc cQDateTimeEdit_method_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = inst.validate(slotval1, slotval2)
  cint(virtualReturn)

method fixup*(self: VirtualQDateTimeEdit, input: string): void {.base.} =
  QDateTimeEditfixup(self[], input)
proc cQDateTimeEdit_method_callback_fixup(self: pointer, input: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  inst.fixup(slotval1)

method dateTimeFromText*(self: VirtualQDateTimeEdit, text: string): gen_qdatetime_types.QDateTime {.base.} =
  QDateTimeEditdateTimeFromText(self[], text)
proc cQDateTimeEdit_method_callback_dateTimeFromText(self: pointer, text: struct_miqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  var virtualReturn = inst.dateTimeFromText(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method textFromDateTime*(self: VirtualQDateTimeEdit, dt: gen_qdatetime_types.QDateTime): string {.base.} =
  QDateTimeEdittextFromDateTime(self[], dt)
proc cQDateTimeEdit_method_callback_textFromDateTime(self: pointer, dt: pointer): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qdatetime_types.QDateTime(h: dt, owned: false)
  var virtualReturn = inst.textFromDateTime(slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

method stepEnabled*(self: VirtualQDateTimeEdit): cint {.base.} =
  QDateTimeEditstepEnabled(self[])
proc cQDateTimeEdit_method_callback_stepEnabled(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  var virtualReturn = inst.stepEnabled()
  cint(virtualReturn)

method mousePressEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDateTimeEditmousePressEvent(self[], event)
proc cQDateTimeEdit_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method paintEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QDateTimeEditpaintEvent(self[], event)
proc cQDateTimeEdit_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method initStyleOption*(self: VirtualQDateTimeEdit, option: gen_qstyleoption_types.QStyleOptionSpinBox): void {.base.} =
  QDateTimeEditinitStyleOption(self[], option)
proc cQDateTimeEdit_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionSpinBox(h: option, owned: false)
  inst.initStyleOption(slotval1)

method minimumSizeHint*(self: VirtualQDateTimeEdit): gen_qsize_types.QSize {.base.} =
  QDateTimeEditminimumSizeHint(self[])
proc cQDateTimeEdit_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodQuery*(self: VirtualQDateTimeEdit, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QDateTimeEditinputMethodQuery(self[], param1)
proc cQDateTimeEdit_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method resizeEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QDateTimeEditresizeEvent(self[], event)
proc cQDateTimeEdit_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method keyReleaseEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDateTimeEditkeyReleaseEvent(self[], event)
proc cQDateTimeEdit_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusOutEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDateTimeEditfocusOutEvent(self[], event)
proc cQDateTimeEdit_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method contextMenuEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QDateTimeEditcontextMenuEvent(self[], event)
proc cQDateTimeEdit_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method changeEvent*(self: VirtualQDateTimeEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDateTimeEditchangeEvent(self[], event)
proc cQDateTimeEdit_method_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.changeEvent(slotval1)

method closeEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QDateTimeEditcloseEvent(self[], event)
proc cQDateTimeEdit_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method hideEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QHideEvent): void {.base.} =
  QDateTimeEdithideEvent(self[], event)
proc cQDateTimeEdit_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDateTimeEditmouseReleaseEvent(self[], event)
proc cQDateTimeEdit_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseMoveEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDateTimeEditmouseMoveEvent(self[], event)
proc cQDateTimeEdit_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method timerEvent*(self: VirtualQDateTimeEdit, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDateTimeEdittimerEvent(self[], event)
proc cQDateTimeEdit_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method showEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QShowEvent): void {.base.} =
  QDateTimeEditshowEvent(self[], event)
proc cQDateTimeEdit_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method devType*(self: VirtualQDateTimeEdit): cint {.base.} =
  QDateTimeEditdevType(self[])
proc cQDateTimeEdit_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQDateTimeEdit, visible: bool): void {.base.} =
  QDateTimeEditsetVisible(self[], visible)
proc cQDateTimeEdit_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQDateTimeEdit, param1: cint): cint {.base.} =
  QDateTimeEditheightForWidth(self[], param1)
proc cQDateTimeEdit_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQDateTimeEdit): bool {.base.} =
  QDateTimeEdithasHeightForWidth(self[])
proc cQDateTimeEdit_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQDateTimeEdit): gen_qpaintengine_types.QPaintEngine {.base.} =
  QDateTimeEditpaintEngine(self[])
proc cQDateTimeEdit_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDateTimeEditmouseDoubleClickEvent(self[], event)
proc cQDateTimeEdit_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method enterEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QDateTimeEditenterEvent(self[], event)
proc cQDateTimeEdit_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQDateTimeEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDateTimeEditleaveEvent(self[], event)
proc cQDateTimeEdit_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QDateTimeEditmoveEvent(self[], event)
proc cQDateTimeEdit_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method tabletEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QDateTimeEdittabletEvent(self[], event)
proc cQDateTimeEdit_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QActionEvent): void {.base.} =
  QDateTimeEditactionEvent(self[], event)
proc cQDateTimeEdit_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QDateTimeEditdragEnterEvent(self[], event)
proc cQDateTimeEdit_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QDateTimeEditdragMoveEvent(self[], event)
proc cQDateTimeEdit_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QDateTimeEditdragLeaveEvent(self[], event)
proc cQDateTimeEdit_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQDateTimeEdit, event: gen_qevent_types.QDropEvent): void {.base.} =
  QDateTimeEditdropEvent(self[], event)
proc cQDateTimeEdit_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method nativeEvent*(self: VirtualQDateTimeEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QDateTimeEditnativeEvent(self[], eventType, message, resultVal)
proc cQDateTimeEdit_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQDateTimeEdit, param1: cint): cint {.base.} =
  QDateTimeEditmetric(self[], param1)
proc cQDateTimeEdit_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQDateTimeEdit, painter: gen_qpainter_types.QPainter): void {.base.} =
  QDateTimeEditinitPainter(self[], painter)
proc cQDateTimeEdit_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQDateTimeEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QDateTimeEditredirected(self[], offset)
proc cQDateTimeEdit_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQDateTimeEdit): gen_qpainter_types.QPainter {.base.} =
  QDateTimeEditsharedPainter(self[])
proc cQDateTimeEdit_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQDateTimeEdit, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QDateTimeEditinputMethodEvent(self[], param1)
proc cQDateTimeEdit_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method eventFilter*(self: VirtualQDateTimeEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDateTimeEditeventFilter(self[], watched, event)
proc cQDateTimeEdit_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQDateTimeEdit, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDateTimeEditchildEvent(self[], event)
proc cQDateTimeEdit_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQDateTimeEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDateTimeEditcustomEvent(self[], event)
proc cQDateTimeEdit_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQDateTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDateTimeEditconnectNotify(self[], signal)
proc cQDateTimeEdit_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQDateTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDateTimeEditdisconnectNotify(self[], signal)
proc cQDateTimeEdit_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateTimeEdit](fcQDateTimeEdit_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc lineEdit*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qlineedit_types.QLineEdit =
  gen_qlineedit_types.QLineEdit(h: fcQDateTimeEdit_protectedbase_lineEdit(self.h), owned: false)

proc setLineEdit*(self: gen_qdatetimeedit_types.QDateTimeEdit, edit: gen_qlineedit_types.QLineEdit): void =
  fcQDateTimeEdit_protectedbase_setLineEdit(self.h, edit.h)

proc updateMicroFocus*(self: gen_qdatetimeedit_types.QDateTimeEdit): void =
  fcQDateTimeEdit_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qdatetimeedit_types.QDateTimeEdit): void =
  fcQDateTimeEdit_protectedbase_create(self.h)

proc destroy*(self: gen_qdatetimeedit_types.QDateTimeEdit): void =
  fcQDateTimeEdit_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qdatetimeedit_types.QDateTimeEdit): bool =
  fcQDateTimeEdit_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qdatetimeedit_types.QDateTimeEdit): bool =
  fcQDateTimeEdit_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qdatetimeedit_types.QDateTimeEdit): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDateTimeEdit_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qdatetimeedit_types.QDateTimeEdit): cint =
  fcQDateTimeEdit_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qdatetimeedit_types.QDateTimeEdit, signal: cstring): cint =
  fcQDateTimeEdit_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qdatetimeedit_types.QDateTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDateTimeEdit_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QDateTimeEditVTable = nil): gen_qdatetimeedit_types.QDateTimeEdit =
  let vtbl = if vtbl == nil: new QDateTimeEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDateTimeEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDateTimeEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDateTimeEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDateTimeEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQDateTimeEdit_vtable_callback_clear
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQDateTimeEdit_vtable_callback_stepBy
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDateTimeEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDateTimeEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDateTimeEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDateTimeEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDateTimeEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQDateTimeEdit_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQDateTimeEdit_vtable_callback_fixup
  if not isNil(vtbl[].dateTimeFromText):
    vtbl[].vtbl.dateTimeFromText = cQDateTimeEdit_vtable_callback_dateTimeFromText
  if not isNil(vtbl[].textFromDateTime):
    vtbl[].vtbl.textFromDateTime = cQDateTimeEdit_vtable_callback_textFromDateTime
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQDateTimeEdit_vtable_callback_stepEnabled
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDateTimeEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDateTimeEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQDateTimeEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDateTimeEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDateTimeEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDateTimeEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDateTimeEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDateTimeEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDateTimeEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDateTimeEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDateTimeEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDateTimeEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDateTimeEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDateTimeEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDateTimeEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDateTimeEdit_vtable_callback_showEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDateTimeEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDateTimeEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDateTimeEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDateTimeEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDateTimeEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDateTimeEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDateTimeEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDateTimeEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDateTimeEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDateTimeEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDateTimeEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDateTimeEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDateTimeEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDateTimeEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDateTimeEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDateTimeEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDateTimeEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDateTimeEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDateTimeEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDateTimeEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDateTimeEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDateTimeEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDateTimeEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDateTimeEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDateTimeEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDateTimeEdit_vtable_callback_disconnectNotify
  gen_qdatetimeedit_types.QDateTimeEdit(h: fcQDateTimeEdit_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit,
    vtbl: ref QDateTimeEditVTable = nil): gen_qdatetimeedit_types.QDateTimeEdit =
  let vtbl = if vtbl == nil: new QDateTimeEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDateTimeEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDateTimeEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDateTimeEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDateTimeEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQDateTimeEdit_vtable_callback_clear
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQDateTimeEdit_vtable_callback_stepBy
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDateTimeEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDateTimeEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDateTimeEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDateTimeEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDateTimeEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQDateTimeEdit_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQDateTimeEdit_vtable_callback_fixup
  if not isNil(vtbl[].dateTimeFromText):
    vtbl[].vtbl.dateTimeFromText = cQDateTimeEdit_vtable_callback_dateTimeFromText
  if not isNil(vtbl[].textFromDateTime):
    vtbl[].vtbl.textFromDateTime = cQDateTimeEdit_vtable_callback_textFromDateTime
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQDateTimeEdit_vtable_callback_stepEnabled
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDateTimeEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDateTimeEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQDateTimeEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDateTimeEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDateTimeEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDateTimeEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDateTimeEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDateTimeEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDateTimeEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDateTimeEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDateTimeEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDateTimeEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDateTimeEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDateTimeEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDateTimeEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDateTimeEdit_vtable_callback_showEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDateTimeEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDateTimeEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDateTimeEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDateTimeEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDateTimeEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDateTimeEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDateTimeEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDateTimeEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDateTimeEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDateTimeEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDateTimeEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDateTimeEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDateTimeEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDateTimeEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDateTimeEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDateTimeEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDateTimeEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDateTimeEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDateTimeEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDateTimeEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDateTimeEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDateTimeEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDateTimeEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDateTimeEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDateTimeEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDateTimeEdit_vtable_callback_disconnectNotify
  gen_qdatetimeedit_types.QDateTimeEdit(h: fcQDateTimeEdit_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit,
    dt: gen_qdatetime_types.QDateTime,
    vtbl: ref QDateTimeEditVTable = nil): gen_qdatetimeedit_types.QDateTimeEdit =
  let vtbl = if vtbl == nil: new QDateTimeEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDateTimeEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDateTimeEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDateTimeEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDateTimeEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQDateTimeEdit_vtable_callback_clear
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQDateTimeEdit_vtable_callback_stepBy
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDateTimeEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDateTimeEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDateTimeEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDateTimeEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDateTimeEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQDateTimeEdit_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQDateTimeEdit_vtable_callback_fixup
  if not isNil(vtbl[].dateTimeFromText):
    vtbl[].vtbl.dateTimeFromText = cQDateTimeEdit_vtable_callback_dateTimeFromText
  if not isNil(vtbl[].textFromDateTime):
    vtbl[].vtbl.textFromDateTime = cQDateTimeEdit_vtable_callback_textFromDateTime
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQDateTimeEdit_vtable_callback_stepEnabled
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDateTimeEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDateTimeEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQDateTimeEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDateTimeEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDateTimeEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDateTimeEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDateTimeEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDateTimeEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDateTimeEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDateTimeEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDateTimeEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDateTimeEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDateTimeEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDateTimeEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDateTimeEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDateTimeEdit_vtable_callback_showEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDateTimeEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDateTimeEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDateTimeEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDateTimeEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDateTimeEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDateTimeEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDateTimeEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDateTimeEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDateTimeEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDateTimeEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDateTimeEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDateTimeEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDateTimeEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDateTimeEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDateTimeEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDateTimeEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDateTimeEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDateTimeEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDateTimeEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDateTimeEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDateTimeEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDateTimeEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDateTimeEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDateTimeEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDateTimeEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDateTimeEdit_vtable_callback_disconnectNotify
  gen_qdatetimeedit_types.QDateTimeEdit(h: fcQDateTimeEdit_new3(addr(vtbl[].vtbl), addr(vtbl[]), dt.h), owned: true)

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit,
    d: gen_qdatetime_types.QDate,
    vtbl: ref QDateTimeEditVTable = nil): gen_qdatetimeedit_types.QDateTimeEdit =
  let vtbl = if vtbl == nil: new QDateTimeEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDateTimeEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDateTimeEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDateTimeEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDateTimeEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQDateTimeEdit_vtable_callback_clear
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQDateTimeEdit_vtable_callback_stepBy
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDateTimeEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDateTimeEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDateTimeEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDateTimeEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDateTimeEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQDateTimeEdit_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQDateTimeEdit_vtable_callback_fixup
  if not isNil(vtbl[].dateTimeFromText):
    vtbl[].vtbl.dateTimeFromText = cQDateTimeEdit_vtable_callback_dateTimeFromText
  if not isNil(vtbl[].textFromDateTime):
    vtbl[].vtbl.textFromDateTime = cQDateTimeEdit_vtable_callback_textFromDateTime
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQDateTimeEdit_vtable_callback_stepEnabled
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDateTimeEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDateTimeEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQDateTimeEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDateTimeEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDateTimeEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDateTimeEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDateTimeEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDateTimeEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDateTimeEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDateTimeEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDateTimeEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDateTimeEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDateTimeEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDateTimeEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDateTimeEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDateTimeEdit_vtable_callback_showEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDateTimeEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDateTimeEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDateTimeEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDateTimeEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDateTimeEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDateTimeEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDateTimeEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDateTimeEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDateTimeEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDateTimeEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDateTimeEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDateTimeEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDateTimeEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDateTimeEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDateTimeEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDateTimeEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDateTimeEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDateTimeEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDateTimeEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDateTimeEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDateTimeEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDateTimeEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDateTimeEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDateTimeEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDateTimeEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDateTimeEdit_vtable_callback_disconnectNotify
  gen_qdatetimeedit_types.QDateTimeEdit(h: fcQDateTimeEdit_new4(addr(vtbl[].vtbl), addr(vtbl[]), d.h), owned: true)

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit,
    t: gen_qdatetime_types.QTime,
    vtbl: ref QDateTimeEditVTable = nil): gen_qdatetimeedit_types.QDateTimeEdit =
  let vtbl = if vtbl == nil: new QDateTimeEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDateTimeEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDateTimeEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDateTimeEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDateTimeEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQDateTimeEdit_vtable_callback_clear
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQDateTimeEdit_vtable_callback_stepBy
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDateTimeEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDateTimeEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDateTimeEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDateTimeEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDateTimeEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQDateTimeEdit_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQDateTimeEdit_vtable_callback_fixup
  if not isNil(vtbl[].dateTimeFromText):
    vtbl[].vtbl.dateTimeFromText = cQDateTimeEdit_vtable_callback_dateTimeFromText
  if not isNil(vtbl[].textFromDateTime):
    vtbl[].vtbl.textFromDateTime = cQDateTimeEdit_vtable_callback_textFromDateTime
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQDateTimeEdit_vtable_callback_stepEnabled
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDateTimeEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDateTimeEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQDateTimeEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDateTimeEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDateTimeEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDateTimeEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDateTimeEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDateTimeEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDateTimeEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDateTimeEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDateTimeEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDateTimeEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDateTimeEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDateTimeEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDateTimeEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDateTimeEdit_vtable_callback_showEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDateTimeEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDateTimeEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDateTimeEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDateTimeEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDateTimeEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDateTimeEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDateTimeEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDateTimeEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDateTimeEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDateTimeEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDateTimeEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDateTimeEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDateTimeEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDateTimeEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDateTimeEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDateTimeEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDateTimeEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDateTimeEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDateTimeEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDateTimeEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDateTimeEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDateTimeEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDateTimeEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDateTimeEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDateTimeEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDateTimeEdit_vtable_callback_disconnectNotify
  gen_qdatetimeedit_types.QDateTimeEdit(h: fcQDateTimeEdit_new5(addr(vtbl[].vtbl), addr(vtbl[]), t.h), owned: true)

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit,
    dt: gen_qdatetime_types.QDateTime, parent: gen_qwidget_types.QWidget,
    vtbl: ref QDateTimeEditVTable = nil): gen_qdatetimeedit_types.QDateTimeEdit =
  let vtbl = if vtbl == nil: new QDateTimeEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDateTimeEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDateTimeEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDateTimeEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDateTimeEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQDateTimeEdit_vtable_callback_clear
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQDateTimeEdit_vtable_callback_stepBy
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDateTimeEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDateTimeEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDateTimeEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDateTimeEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDateTimeEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQDateTimeEdit_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQDateTimeEdit_vtable_callback_fixup
  if not isNil(vtbl[].dateTimeFromText):
    vtbl[].vtbl.dateTimeFromText = cQDateTimeEdit_vtable_callback_dateTimeFromText
  if not isNil(vtbl[].textFromDateTime):
    vtbl[].vtbl.textFromDateTime = cQDateTimeEdit_vtable_callback_textFromDateTime
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQDateTimeEdit_vtable_callback_stepEnabled
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDateTimeEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDateTimeEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQDateTimeEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDateTimeEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDateTimeEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDateTimeEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDateTimeEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDateTimeEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDateTimeEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDateTimeEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDateTimeEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDateTimeEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDateTimeEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDateTimeEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDateTimeEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDateTimeEdit_vtable_callback_showEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDateTimeEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDateTimeEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDateTimeEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDateTimeEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDateTimeEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDateTimeEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDateTimeEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDateTimeEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDateTimeEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDateTimeEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDateTimeEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDateTimeEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDateTimeEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDateTimeEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDateTimeEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDateTimeEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDateTimeEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDateTimeEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDateTimeEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDateTimeEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDateTimeEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDateTimeEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDateTimeEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDateTimeEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDateTimeEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDateTimeEdit_vtable_callback_disconnectNotify
  gen_qdatetimeedit_types.QDateTimeEdit(h: fcQDateTimeEdit_new6(addr(vtbl[].vtbl), addr(vtbl[]), dt.h, parent.h), owned: true)

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit,
    d: gen_qdatetime_types.QDate, parent: gen_qwidget_types.QWidget,
    vtbl: ref QDateTimeEditVTable = nil): gen_qdatetimeedit_types.QDateTimeEdit =
  let vtbl = if vtbl == nil: new QDateTimeEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDateTimeEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDateTimeEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDateTimeEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDateTimeEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQDateTimeEdit_vtable_callback_clear
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQDateTimeEdit_vtable_callback_stepBy
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDateTimeEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDateTimeEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDateTimeEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDateTimeEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDateTimeEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQDateTimeEdit_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQDateTimeEdit_vtable_callback_fixup
  if not isNil(vtbl[].dateTimeFromText):
    vtbl[].vtbl.dateTimeFromText = cQDateTimeEdit_vtable_callback_dateTimeFromText
  if not isNil(vtbl[].textFromDateTime):
    vtbl[].vtbl.textFromDateTime = cQDateTimeEdit_vtable_callback_textFromDateTime
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQDateTimeEdit_vtable_callback_stepEnabled
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDateTimeEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDateTimeEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQDateTimeEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDateTimeEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDateTimeEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDateTimeEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDateTimeEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDateTimeEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDateTimeEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDateTimeEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDateTimeEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDateTimeEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDateTimeEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDateTimeEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDateTimeEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDateTimeEdit_vtable_callback_showEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDateTimeEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDateTimeEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDateTimeEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDateTimeEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDateTimeEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDateTimeEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDateTimeEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDateTimeEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDateTimeEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDateTimeEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDateTimeEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDateTimeEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDateTimeEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDateTimeEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDateTimeEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDateTimeEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDateTimeEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDateTimeEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDateTimeEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDateTimeEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDateTimeEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDateTimeEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDateTimeEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDateTimeEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDateTimeEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDateTimeEdit_vtable_callback_disconnectNotify
  gen_qdatetimeedit_types.QDateTimeEdit(h: fcQDateTimeEdit_new7(addr(vtbl[].vtbl), addr(vtbl[]), d.h, parent.h), owned: true)

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit,
    t: gen_qdatetime_types.QTime, parent: gen_qwidget_types.QWidget,
    vtbl: ref QDateTimeEditVTable = nil): gen_qdatetimeedit_types.QDateTimeEdit =
  let vtbl = if vtbl == nil: new QDateTimeEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDateTimeEditVTable](fcQDateTimeEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDateTimeEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDateTimeEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDateTimeEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDateTimeEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQDateTimeEdit_vtable_callback_clear
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQDateTimeEdit_vtable_callback_stepBy
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDateTimeEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDateTimeEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDateTimeEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDateTimeEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDateTimeEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQDateTimeEdit_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQDateTimeEdit_vtable_callback_fixup
  if not isNil(vtbl[].dateTimeFromText):
    vtbl[].vtbl.dateTimeFromText = cQDateTimeEdit_vtable_callback_dateTimeFromText
  if not isNil(vtbl[].textFromDateTime):
    vtbl[].vtbl.textFromDateTime = cQDateTimeEdit_vtable_callback_textFromDateTime
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQDateTimeEdit_vtable_callback_stepEnabled
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDateTimeEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDateTimeEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQDateTimeEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDateTimeEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDateTimeEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDateTimeEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDateTimeEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDateTimeEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDateTimeEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDateTimeEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDateTimeEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDateTimeEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDateTimeEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDateTimeEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDateTimeEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDateTimeEdit_vtable_callback_showEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDateTimeEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDateTimeEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDateTimeEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDateTimeEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDateTimeEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDateTimeEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDateTimeEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDateTimeEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDateTimeEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDateTimeEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDateTimeEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDateTimeEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDateTimeEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDateTimeEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDateTimeEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDateTimeEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDateTimeEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDateTimeEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDateTimeEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDateTimeEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDateTimeEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDateTimeEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDateTimeEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDateTimeEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDateTimeEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDateTimeEdit_vtable_callback_disconnectNotify
  gen_qdatetimeedit_types.QDateTimeEdit(h: fcQDateTimeEdit_new8(addr(vtbl[].vtbl), addr(vtbl[]), t.h, parent.h), owned: true)

const cQDateTimeEdit_mvtbl = cQDateTimeEditVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDateTimeEdit()[])](self.fcQDateTimeEdit_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQDateTimeEdit_method_callback_metaObject,
  metacast: cQDateTimeEdit_method_callback_metacast,
  metacall: cQDateTimeEdit_method_callback_metacall,
  sizeHint: cQDateTimeEdit_method_callback_sizeHint,
  clear: cQDateTimeEdit_method_callback_clear,
  stepBy: cQDateTimeEdit_method_callback_stepBy,
  event: cQDateTimeEdit_method_callback_event,
  keyPressEvent: cQDateTimeEdit_method_callback_keyPressEvent,
  wheelEvent: cQDateTimeEdit_method_callback_wheelEvent,
  focusInEvent: cQDateTimeEdit_method_callback_focusInEvent,
  focusNextPrevChild: cQDateTimeEdit_method_callback_focusNextPrevChild,
  validate: cQDateTimeEdit_method_callback_validate,
  fixup: cQDateTimeEdit_method_callback_fixup,
  dateTimeFromText: cQDateTimeEdit_method_callback_dateTimeFromText,
  textFromDateTime: cQDateTimeEdit_method_callback_textFromDateTime,
  stepEnabled: cQDateTimeEdit_method_callback_stepEnabled,
  mousePressEvent: cQDateTimeEdit_method_callback_mousePressEvent,
  paintEvent: cQDateTimeEdit_method_callback_paintEvent,
  initStyleOption: cQDateTimeEdit_method_callback_initStyleOption,
  minimumSizeHint: cQDateTimeEdit_method_callback_minimumSizeHint,
  inputMethodQuery: cQDateTimeEdit_method_callback_inputMethodQuery,
  resizeEvent: cQDateTimeEdit_method_callback_resizeEvent,
  keyReleaseEvent: cQDateTimeEdit_method_callback_keyReleaseEvent,
  focusOutEvent: cQDateTimeEdit_method_callback_focusOutEvent,
  contextMenuEvent: cQDateTimeEdit_method_callback_contextMenuEvent,
  changeEvent: cQDateTimeEdit_method_callback_changeEvent,
  closeEvent: cQDateTimeEdit_method_callback_closeEvent,
  hideEvent: cQDateTimeEdit_method_callback_hideEvent,
  mouseReleaseEvent: cQDateTimeEdit_method_callback_mouseReleaseEvent,
  mouseMoveEvent: cQDateTimeEdit_method_callback_mouseMoveEvent,
  timerEvent: cQDateTimeEdit_method_callback_timerEvent,
  showEvent: cQDateTimeEdit_method_callback_showEvent,
  devType: cQDateTimeEdit_method_callback_devType,
  setVisible: cQDateTimeEdit_method_callback_setVisible,
  heightForWidth: cQDateTimeEdit_method_callback_heightForWidth,
  hasHeightForWidth: cQDateTimeEdit_method_callback_hasHeightForWidth,
  paintEngine: cQDateTimeEdit_method_callback_paintEngine,
  mouseDoubleClickEvent: cQDateTimeEdit_method_callback_mouseDoubleClickEvent,
  enterEvent: cQDateTimeEdit_method_callback_enterEvent,
  leaveEvent: cQDateTimeEdit_method_callback_leaveEvent,
  moveEvent: cQDateTimeEdit_method_callback_moveEvent,
  tabletEvent: cQDateTimeEdit_method_callback_tabletEvent,
  actionEvent: cQDateTimeEdit_method_callback_actionEvent,
  dragEnterEvent: cQDateTimeEdit_method_callback_dragEnterEvent,
  dragMoveEvent: cQDateTimeEdit_method_callback_dragMoveEvent,
  dragLeaveEvent: cQDateTimeEdit_method_callback_dragLeaveEvent,
  dropEvent: cQDateTimeEdit_method_callback_dropEvent,
  nativeEvent: cQDateTimeEdit_method_callback_nativeEvent,
  metric: cQDateTimeEdit_method_callback_metric,
  initPainter: cQDateTimeEdit_method_callback_initPainter,
  redirected: cQDateTimeEdit_method_callback_redirected,
  sharedPainter: cQDateTimeEdit_method_callback_sharedPainter,
  inputMethodEvent: cQDateTimeEdit_method_callback_inputMethodEvent,
  eventFilter: cQDateTimeEdit_method_callback_eventFilter,
  childEvent: cQDateTimeEdit_method_callback_childEvent,
  customEvent: cQDateTimeEdit_method_callback_customEvent,
  connectNotify: cQDateTimeEdit_method_callback_connectNotify,
  disconnectNotify: cQDateTimeEdit_method_callback_disconnectNotify,
)
proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQDateTimeEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDateTimeEdit_new(addr(cQDateTimeEdit_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit,
    inst: VirtualQDateTimeEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDateTimeEdit_new2(addr(cQDateTimeEdit_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit,
    dt: gen_qdatetime_types.QDateTime,
    inst: VirtualQDateTimeEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDateTimeEdit_new3(addr(cQDateTimeEdit_mvtbl), addr(inst[]), dt.h)
  inst[].owned = true

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit,
    d: gen_qdatetime_types.QDate,
    inst: VirtualQDateTimeEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDateTimeEdit_new4(addr(cQDateTimeEdit_mvtbl), addr(inst[]), d.h)
  inst[].owned = true

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit,
    t: gen_qdatetime_types.QTime,
    inst: VirtualQDateTimeEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDateTimeEdit_new5(addr(cQDateTimeEdit_mvtbl), addr(inst[]), t.h)
  inst[].owned = true

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit,
    dt: gen_qdatetime_types.QDateTime, parent: gen_qwidget_types.QWidget,
    inst: VirtualQDateTimeEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDateTimeEdit_new6(addr(cQDateTimeEdit_mvtbl), addr(inst[]), dt.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit,
    d: gen_qdatetime_types.QDate, parent: gen_qwidget_types.QWidget,
    inst: VirtualQDateTimeEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDateTimeEdit_new7(addr(cQDateTimeEdit_mvtbl), addr(inst[]), d.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qdatetimeedit_types.QDateTimeEdit,
    t: gen_qdatetime_types.QTime, parent: gen_qwidget_types.QWidget,
    inst: VirtualQDateTimeEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDateTimeEdit_new8(addr(cQDateTimeEdit_mvtbl), addr(inst[]), t.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qdatetimeedit_types.QDateTimeEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDateTimeEdit_staticMetaObject())
proc metaObject*(self: gen_qdatetimeedit_types.QTimeEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTimeEdit_metaObject(self.h), owned: false)

proc metacast*(self: gen_qdatetimeedit_types.QTimeEdit, param1: cstring): pointer =
  fcQTimeEdit_metacast(self.h, param1)

proc metacall*(self: gen_qdatetimeedit_types.QTimeEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQTimeEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdatetimeedit_types.QTimeEdit, s: cstring): string =
  let v_ms = fcQTimeEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc userTimeChanged*(self: gen_qdatetimeedit_types.QTimeEdit, time: gen_qdatetime_types.QTime): void =
  fcQTimeEdit_userTimeChanged(self.h, time.h)

type QTimeEdituserTimeChangedSlot* = proc(time: gen_qdatetime_types.QTime)
proc cQTimeEdit_slot_callback_userTimeChanged(slot: int, time: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QTimeEdituserTimeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qdatetime_types.QTime(h: time, owned: true)

  nimfunc[](slotval1)

proc cQTimeEdit_slot_callback_userTimeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTimeEdituserTimeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onuserTimeChanged*(self: gen_qdatetimeedit_types.QTimeEdit, slot: QTimeEdituserTimeChangedSlot) =
  var tmp = new QTimeEdituserTimeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_connect_userTimeChanged(self.h, cast[int](addr tmp[]), cQTimeEdit_slot_callback_userTimeChanged, cQTimeEdit_slot_callback_userTimeChanged_release)

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

type QTimeEditmetaObjectProc* = proc(self: QTimeEdit): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTimeEditmetacastProc* = proc(self: QTimeEdit, param1: cstring): pointer {.raises: [], gcsafe.}
type QTimeEditmetacallProc* = proc(self: QTimeEdit, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTimeEditsizeHintProc* = proc(self: QTimeEdit): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTimeEditclearProc* = proc(self: QTimeEdit): void {.raises: [], gcsafe.}
type QTimeEditstepByProc* = proc(self: QTimeEdit, steps: cint): void {.raises: [], gcsafe.}
type QTimeEditeventProc* = proc(self: QTimeEdit, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTimeEditkeyPressEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTimeEditwheelEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QTimeEditfocusInEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTimeEditfocusNextPrevChildProc* = proc(self: QTimeEdit, next: bool): bool {.raises: [], gcsafe.}
type QTimeEditvalidateProc* = proc(self: QTimeEdit, input: string, pos: ptr cint): cint {.raises: [], gcsafe.}
type QTimeEditfixupProc* = proc(self: QTimeEdit, input: string): void {.raises: [], gcsafe.}
type QTimeEditdateTimeFromTextProc* = proc(self: QTimeEdit, text: string): gen_qdatetime_types.QDateTime {.raises: [], gcsafe.}
type QTimeEdittextFromDateTimeProc* = proc(self: QTimeEdit, dt: gen_qdatetime_types.QDateTime): string {.raises: [], gcsafe.}
type QTimeEditstepEnabledProc* = proc(self: QTimeEdit): cint {.raises: [], gcsafe.}
type QTimeEditmousePressEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTimeEditpaintEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QTimeEditinitStyleOptionProc* = proc(self: QTimeEdit, option: gen_qstyleoption_types.QStyleOptionSpinBox): void {.raises: [], gcsafe.}
type QTimeEditminimumSizeHintProc* = proc(self: QTimeEdit): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTimeEditinputMethodQueryProc* = proc(self: QTimeEdit, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTimeEditresizeEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QTimeEditkeyReleaseEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTimeEditfocusOutEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTimeEditcontextMenuEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QTimeEditchangeEventProc* = proc(self: QTimeEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTimeEditcloseEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QTimeEdithideEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QTimeEditmouseReleaseEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTimeEditmouseMoveEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTimeEdittimerEventProc* = proc(self: QTimeEdit, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTimeEditshowEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QTimeEditdevTypeProc* = proc(self: QTimeEdit): cint {.raises: [], gcsafe.}
type QTimeEditsetVisibleProc* = proc(self: QTimeEdit, visible: bool): void {.raises: [], gcsafe.}
type QTimeEditheightForWidthProc* = proc(self: QTimeEdit, param1: cint): cint {.raises: [], gcsafe.}
type QTimeEdithasHeightForWidthProc* = proc(self: QTimeEdit): bool {.raises: [], gcsafe.}
type QTimeEditpaintEngineProc* = proc(self: QTimeEdit): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QTimeEditmouseDoubleClickEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTimeEditenterEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QTimeEditleaveEventProc* = proc(self: QTimeEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTimeEditmoveEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QTimeEdittabletEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QTimeEditactionEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QTimeEditdragEnterEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QTimeEditdragMoveEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QTimeEditdragLeaveEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QTimeEditdropEventProc* = proc(self: QTimeEdit, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QTimeEditnativeEventProc* = proc(self: QTimeEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QTimeEditmetricProc* = proc(self: QTimeEdit, param1: cint): cint {.raises: [], gcsafe.}
type QTimeEditinitPainterProc* = proc(self: QTimeEdit, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QTimeEditredirectedProc* = proc(self: QTimeEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QTimeEditsharedPainterProc* = proc(self: QTimeEdit): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QTimeEditinputMethodEventProc* = proc(self: QTimeEdit, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QTimeEditeventFilterProc* = proc(self: QTimeEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTimeEditchildEventProc* = proc(self: QTimeEdit, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTimeEditcustomEventProc* = proc(self: QTimeEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTimeEditconnectNotifyProc* = proc(self: QTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTimeEditdisconnectNotifyProc* = proc(self: QTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTimeEditVTable* {.inheritable, pure.} = object
  vtbl: cQTimeEditVTable
  metaObject*: QTimeEditmetaObjectProc
  metacast*: QTimeEditmetacastProc
  metacall*: QTimeEditmetacallProc
  sizeHint*: QTimeEditsizeHintProc
  clear*: QTimeEditclearProc
  stepBy*: QTimeEditstepByProc
  event*: QTimeEditeventProc
  keyPressEvent*: QTimeEditkeyPressEventProc
  wheelEvent*: QTimeEditwheelEventProc
  focusInEvent*: QTimeEditfocusInEventProc
  focusNextPrevChild*: QTimeEditfocusNextPrevChildProc
  validate*: QTimeEditvalidateProc
  fixup*: QTimeEditfixupProc
  dateTimeFromText*: QTimeEditdateTimeFromTextProc
  textFromDateTime*: QTimeEdittextFromDateTimeProc
  stepEnabled*: QTimeEditstepEnabledProc
  mousePressEvent*: QTimeEditmousePressEventProc
  paintEvent*: QTimeEditpaintEventProc
  initStyleOption*: QTimeEditinitStyleOptionProc
  minimumSizeHint*: QTimeEditminimumSizeHintProc
  inputMethodQuery*: QTimeEditinputMethodQueryProc
  resizeEvent*: QTimeEditresizeEventProc
  keyReleaseEvent*: QTimeEditkeyReleaseEventProc
  focusOutEvent*: QTimeEditfocusOutEventProc
  contextMenuEvent*: QTimeEditcontextMenuEventProc
  changeEvent*: QTimeEditchangeEventProc
  closeEvent*: QTimeEditcloseEventProc
  hideEvent*: QTimeEdithideEventProc
  mouseReleaseEvent*: QTimeEditmouseReleaseEventProc
  mouseMoveEvent*: QTimeEditmouseMoveEventProc
  timerEvent*: QTimeEdittimerEventProc
  showEvent*: QTimeEditshowEventProc
  devType*: QTimeEditdevTypeProc
  setVisible*: QTimeEditsetVisibleProc
  heightForWidth*: QTimeEditheightForWidthProc
  hasHeightForWidth*: QTimeEdithasHeightForWidthProc
  paintEngine*: QTimeEditpaintEngineProc
  mouseDoubleClickEvent*: QTimeEditmouseDoubleClickEventProc
  enterEvent*: QTimeEditenterEventProc
  leaveEvent*: QTimeEditleaveEventProc
  moveEvent*: QTimeEditmoveEventProc
  tabletEvent*: QTimeEdittabletEventProc
  actionEvent*: QTimeEditactionEventProc
  dragEnterEvent*: QTimeEditdragEnterEventProc
  dragMoveEvent*: QTimeEditdragMoveEventProc
  dragLeaveEvent*: QTimeEditdragLeaveEventProc
  dropEvent*: QTimeEditdropEventProc
  nativeEvent*: QTimeEditnativeEventProc
  metric*: QTimeEditmetricProc
  initPainter*: QTimeEditinitPainterProc
  redirected*: QTimeEditredirectedProc
  sharedPainter*: QTimeEditsharedPainterProc
  inputMethodEvent*: QTimeEditinputMethodEventProc
  eventFilter*: QTimeEditeventFilterProc
  childEvent*: QTimeEditchildEventProc
  customEvent*: QTimeEditcustomEventProc
  connectNotify*: QTimeEditconnectNotifyProc
  disconnectNotify*: QTimeEditdisconnectNotifyProc
proc QTimeEditmetaObject*(self: gen_qdatetimeedit_types.QTimeEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTimeEdit_virtualbase_metaObject(self.h), owned: false)

proc cQTimeEdit_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTimeEditmetacast*(self: gen_qdatetimeedit_types.QTimeEdit, param1: cstring): pointer =
  fcQTimeEdit_virtualbase_metacast(self.h, param1)

proc cQTimeEdit_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTimeEditmetacall*(self: gen_qdatetimeedit_types.QTimeEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQTimeEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQTimeEdit_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTimeEditsizeHint*(self: gen_qdatetimeedit_types.QTimeEdit): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTimeEdit_virtualbase_sizeHint(self.h), owned: true)

proc cQTimeEdit_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTimeEditclear*(self: gen_qdatetimeedit_types.QTimeEdit): void =
  fcQTimeEdit_virtualbase_clear(self.h)

proc cQTimeEdit_vtable_callback_clear(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  vtbl[].clear(self)

proc QTimeEditstepBy*(self: gen_qdatetimeedit_types.QTimeEdit, steps: cint): void =
  fcQTimeEdit_virtualbase_stepBy(self.h, steps)

proc cQTimeEdit_vtable_callback_stepBy(self: pointer, steps: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = steps
  vtbl[].stepBy(self, slotval1)

proc QTimeEditevent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qcoreevent_types.QEvent): bool =
  fcQTimeEdit_virtualbase_event(self.h, event.h)

proc cQTimeEdit_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTimeEditkeyPressEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QKeyEvent): void =
  fcQTimeEdit_virtualbase_keyPressEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QTimeEditwheelEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QWheelEvent): void =
  fcQTimeEdit_virtualbase_wheelEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QTimeEditfocusInEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QFocusEvent): void =
  fcQTimeEdit_virtualbase_focusInEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QTimeEditfocusNextPrevChild*(self: gen_qdatetimeedit_types.QTimeEdit, next: bool): bool =
  fcQTimeEdit_virtualbase_focusNextPrevChild(self.h, next)

proc cQTimeEdit_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QTimeEditvalidate*(self: gen_qdatetimeedit_types.QTimeEdit, input: string, pos: ptr cint): cint =
  cint(fcQTimeEdit_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

proc cQTimeEdit_vtable_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc QTimeEditfixup*(self: gen_qdatetimeedit_types.QTimeEdit, input: string): void =
  fcQTimeEdit_virtualbase_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

proc cQTimeEdit_vtable_callback_fixup(self: pointer, input: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  vtbl[].fixup(self, slotval1)

proc QTimeEditdateTimeFromText*(self: gen_qdatetimeedit_types.QTimeEdit, text: string): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQTimeEdit_virtualbase_dateTimeFromText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))), owned: true)

proc cQTimeEdit_vtable_callback_dateTimeFromText(self: pointer, text: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  var virtualReturn = vtbl[].dateTimeFromText(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTimeEdittextFromDateTime*(self: gen_qdatetimeedit_types.QTimeEdit, dt: gen_qdatetime_types.QDateTime): string =
  let v_ms = fcQTimeEdit_virtualbase_textFromDateTime(self.h, dt.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc cQTimeEdit_vtable_callback_textFromDateTime(self: pointer, dt: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qdatetime_types.QDateTime(h: dt, owned: false)
  var virtualReturn = vtbl[].textFromDateTime(self, slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc QTimeEditstepEnabled*(self: gen_qdatetimeedit_types.QTimeEdit): cint =
  cint(fcQTimeEdit_virtualbase_stepEnabled(self.h))

proc cQTimeEdit_vtable_callback_stepEnabled(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  var virtualReturn = vtbl[].stepEnabled(self)
  cint(virtualReturn)

proc QTimeEditmousePressEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQTimeEdit_virtualbase_mousePressEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QTimeEditpaintEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QPaintEvent): void =
  fcQTimeEdit_virtualbase_paintEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QTimeEditinitStyleOption*(self: gen_qdatetimeedit_types.QTimeEdit, option: gen_qstyleoption_types.QStyleOptionSpinBox): void =
  fcQTimeEdit_virtualbase_initStyleOption(self.h, option.h)

proc cQTimeEdit_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionSpinBox(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QTimeEditminimumSizeHint*(self: gen_qdatetimeedit_types.QTimeEdit): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTimeEdit_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQTimeEdit_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTimeEditinputMethodQuery*(self: gen_qdatetimeedit_types.QTimeEdit, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTimeEdit_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQTimeEdit_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTimeEditresizeEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QResizeEvent): void =
  fcQTimeEdit_virtualbase_resizeEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QTimeEditkeyReleaseEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QKeyEvent): void =
  fcQTimeEdit_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QTimeEditfocusOutEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QFocusEvent): void =
  fcQTimeEdit_virtualbase_focusOutEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QTimeEditcontextMenuEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QContextMenuEvent): void =
  fcQTimeEdit_virtualbase_contextMenuEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QTimeEditchangeEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQTimeEdit_virtualbase_changeEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QTimeEditcloseEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QCloseEvent): void =
  fcQTimeEdit_virtualbase_closeEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QTimeEdithideEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QHideEvent): void =
  fcQTimeEdit_virtualbase_hideEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QTimeEditmouseReleaseEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQTimeEdit_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QTimeEditmouseMoveEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQTimeEdit_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QTimeEdittimerEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTimeEdit_virtualbase_timerEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QTimeEditshowEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QShowEvent): void =
  fcQTimeEdit_virtualbase_showEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QTimeEditdevType*(self: gen_qdatetimeedit_types.QTimeEdit): cint =
  fcQTimeEdit_virtualbase_devType(self.h)

proc cQTimeEdit_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QTimeEditsetVisible*(self: gen_qdatetimeedit_types.QTimeEdit, visible: bool): void =
  fcQTimeEdit_virtualbase_setVisible(self.h, visible)

proc cQTimeEdit_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QTimeEditheightForWidth*(self: gen_qdatetimeedit_types.QTimeEdit, param1: cint): cint =
  fcQTimeEdit_virtualbase_heightForWidth(self.h, param1)

proc cQTimeEdit_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QTimeEdithasHeightForWidth*(self: gen_qdatetimeedit_types.QTimeEdit): bool =
  fcQTimeEdit_virtualbase_hasHeightForWidth(self.h)

proc cQTimeEdit_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QTimeEditpaintEngine*(self: gen_qdatetimeedit_types.QTimeEdit): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQTimeEdit_virtualbase_paintEngine(self.h), owned: false)

proc cQTimeEdit_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTimeEditmouseDoubleClickEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQTimeEdit_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QTimeEditenterEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QEnterEvent): void =
  fcQTimeEdit_virtualbase_enterEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QTimeEditleaveEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQTimeEdit_virtualbase_leaveEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QTimeEditmoveEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QMoveEvent): void =
  fcQTimeEdit_virtualbase_moveEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QTimeEdittabletEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QTabletEvent): void =
  fcQTimeEdit_virtualbase_tabletEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QTimeEditactionEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QActionEvent): void =
  fcQTimeEdit_virtualbase_actionEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QTimeEditdragEnterEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QDragEnterEvent): void =
  fcQTimeEdit_virtualbase_dragEnterEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QTimeEditdragMoveEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QDragMoveEvent): void =
  fcQTimeEdit_virtualbase_dragMoveEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QTimeEditdragLeaveEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQTimeEdit_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QTimeEditdropEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qevent_types.QDropEvent): void =
  fcQTimeEdit_virtualbase_dropEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QTimeEditnativeEvent*(self: gen_qdatetimeedit_types.QTimeEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQTimeEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQTimeEdit_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTimeEditmetric*(self: gen_qdatetimeedit_types.QTimeEdit, param1: cint): cint =
  fcQTimeEdit_virtualbase_metric(self.h, cint(param1))

proc cQTimeEdit_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QTimeEditinitPainter*(self: gen_qdatetimeedit_types.QTimeEdit, painter: gen_qpainter_types.QPainter): void =
  fcQTimeEdit_virtualbase_initPainter(self.h, painter.h)

proc cQTimeEdit_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QTimeEditredirected*(self: gen_qdatetimeedit_types.QTimeEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQTimeEdit_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQTimeEdit_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTimeEditsharedPainter*(self: gen_qdatetimeedit_types.QTimeEdit): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQTimeEdit_virtualbase_sharedPainter(self.h), owned: false)

proc cQTimeEdit_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTimeEditinputMethodEvent*(self: gen_qdatetimeedit_types.QTimeEdit, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQTimeEdit_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQTimeEdit_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QTimeEditeventFilter*(self: gen_qdatetimeedit_types.QTimeEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTimeEdit_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQTimeEdit_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTimeEditchildEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTimeEdit_virtualbase_childEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QTimeEditcustomEvent*(self: gen_qdatetimeedit_types.QTimeEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQTimeEdit_virtualbase_customEvent(self.h, event.h)

proc cQTimeEdit_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QTimeEditconnectNotify*(self: gen_qdatetimeedit_types.QTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTimeEdit_virtualbase_connectNotify(self.h, signal.h)

proc cQTimeEdit_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QTimeEditdisconnectNotify*(self: gen_qdatetimeedit_types.QTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTimeEdit_virtualbase_disconnectNotify(self.h, signal.h)

proc cQTimeEdit_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimeEditVTable](fcQTimeEdit_vdata(self))
  let self = QTimeEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTimeEdit* {.inheritable.} = ref object of QTimeEdit
  vtbl*: cQTimeEditVTable
method metaObject*(self: VirtualQTimeEdit): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTimeEditmetaObject(self[])
proc cQTimeEdit_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQTimeEdit, param1: cstring): pointer {.base.} =
  QTimeEditmetacast(self[], param1)
proc cQTimeEdit_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQTimeEdit, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTimeEditmetacall(self[], param1, param2, param3)
proc cQTimeEdit_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQTimeEdit): gen_qsize_types.QSize {.base.} =
  QTimeEditsizeHint(self[])
proc cQTimeEdit_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method clear*(self: VirtualQTimeEdit): void {.base.} =
  QTimeEditclear(self[])
proc cQTimeEdit_method_callback_clear(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  inst.clear()

method stepBy*(self: VirtualQTimeEdit, steps: cint): void {.base.} =
  QTimeEditstepBy(self[], steps)
proc cQTimeEdit_method_callback_stepBy(self: pointer, steps: cint): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = steps
  inst.stepBy(slotval1)

method event*(self: VirtualQTimeEdit, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTimeEditevent(self[], event)
proc cQTimeEdit_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method keyPressEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QTimeEditkeyPressEvent(self[], event)
proc cQTimeEdit_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method wheelEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QTimeEditwheelEvent(self[], event)
proc cQTimeEdit_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method focusInEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QTimeEditfocusInEvent(self[], event)
proc cQTimeEdit_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusNextPrevChild*(self: VirtualQTimeEdit, next: bool): bool {.base.} =
  QTimeEditfocusNextPrevChild(self[], next)
proc cQTimeEdit_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method validate*(self: VirtualQTimeEdit, input: string, pos: ptr cint): cint {.base.} =
  QTimeEditvalidate(self[], input, pos)
proc cQTimeEdit_method_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = inst.validate(slotval1, slotval2)
  cint(virtualReturn)

method fixup*(self: VirtualQTimeEdit, input: string): void {.base.} =
  QTimeEditfixup(self[], input)
proc cQTimeEdit_method_callback_fixup(self: pointer, input: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  inst.fixup(slotval1)

method dateTimeFromText*(self: VirtualQTimeEdit, text: string): gen_qdatetime_types.QDateTime {.base.} =
  QTimeEditdateTimeFromText(self[], text)
proc cQTimeEdit_method_callback_dateTimeFromText(self: pointer, text: struct_miqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  var virtualReturn = inst.dateTimeFromText(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method textFromDateTime*(self: VirtualQTimeEdit, dt: gen_qdatetime_types.QDateTime): string {.base.} =
  QTimeEdittextFromDateTime(self[], dt)
proc cQTimeEdit_method_callback_textFromDateTime(self: pointer, dt: pointer): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qdatetime_types.QDateTime(h: dt, owned: false)
  var virtualReturn = inst.textFromDateTime(slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

method stepEnabled*(self: VirtualQTimeEdit): cint {.base.} =
  QTimeEditstepEnabled(self[])
proc cQTimeEdit_method_callback_stepEnabled(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  var virtualReturn = inst.stepEnabled()
  cint(virtualReturn)

method mousePressEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTimeEditmousePressEvent(self[], event)
proc cQTimeEdit_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method paintEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QTimeEditpaintEvent(self[], event)
proc cQTimeEdit_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method initStyleOption*(self: VirtualQTimeEdit, option: gen_qstyleoption_types.QStyleOptionSpinBox): void {.base.} =
  QTimeEditinitStyleOption(self[], option)
proc cQTimeEdit_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionSpinBox(h: option, owned: false)
  inst.initStyleOption(slotval1)

method minimumSizeHint*(self: VirtualQTimeEdit): gen_qsize_types.QSize {.base.} =
  QTimeEditminimumSizeHint(self[])
proc cQTimeEdit_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodQuery*(self: VirtualQTimeEdit, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QTimeEditinputMethodQuery(self[], param1)
proc cQTimeEdit_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method resizeEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QTimeEditresizeEvent(self[], event)
proc cQTimeEdit_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method keyReleaseEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QTimeEditkeyReleaseEvent(self[], event)
proc cQTimeEdit_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusOutEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QTimeEditfocusOutEvent(self[], event)
proc cQTimeEdit_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method contextMenuEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QTimeEditcontextMenuEvent(self[], event)
proc cQTimeEdit_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method changeEvent*(self: VirtualQTimeEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTimeEditchangeEvent(self[], event)
proc cQTimeEdit_method_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.changeEvent(slotval1)

method closeEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QTimeEditcloseEvent(self[], event)
proc cQTimeEdit_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method hideEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QHideEvent): void {.base.} =
  QTimeEdithideEvent(self[], event)
proc cQTimeEdit_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTimeEditmouseReleaseEvent(self[], event)
proc cQTimeEdit_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseMoveEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTimeEditmouseMoveEvent(self[], event)
proc cQTimeEdit_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method timerEvent*(self: VirtualQTimeEdit, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTimeEdittimerEvent(self[], event)
proc cQTimeEdit_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method showEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QShowEvent): void {.base.} =
  QTimeEditshowEvent(self[], event)
proc cQTimeEdit_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method devType*(self: VirtualQTimeEdit): cint {.base.} =
  QTimeEditdevType(self[])
proc cQTimeEdit_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQTimeEdit, visible: bool): void {.base.} =
  QTimeEditsetVisible(self[], visible)
proc cQTimeEdit_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQTimeEdit, param1: cint): cint {.base.} =
  QTimeEditheightForWidth(self[], param1)
proc cQTimeEdit_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQTimeEdit): bool {.base.} =
  QTimeEdithasHeightForWidth(self[])
proc cQTimeEdit_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQTimeEdit): gen_qpaintengine_types.QPaintEngine {.base.} =
  QTimeEditpaintEngine(self[])
proc cQTimeEdit_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTimeEditmouseDoubleClickEvent(self[], event)
proc cQTimeEdit_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method enterEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QTimeEditenterEvent(self[], event)
proc cQTimeEdit_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQTimeEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTimeEditleaveEvent(self[], event)
proc cQTimeEdit_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QTimeEditmoveEvent(self[], event)
proc cQTimeEdit_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method tabletEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QTimeEdittabletEvent(self[], event)
proc cQTimeEdit_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QActionEvent): void {.base.} =
  QTimeEditactionEvent(self[], event)
proc cQTimeEdit_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QTimeEditdragEnterEvent(self[], event)
proc cQTimeEdit_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QTimeEditdragMoveEvent(self[], event)
proc cQTimeEdit_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QTimeEditdragLeaveEvent(self[], event)
proc cQTimeEdit_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQTimeEdit, event: gen_qevent_types.QDropEvent): void {.base.} =
  QTimeEditdropEvent(self[], event)
proc cQTimeEdit_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method nativeEvent*(self: VirtualQTimeEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QTimeEditnativeEvent(self[], eventType, message, resultVal)
proc cQTimeEdit_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQTimeEdit, param1: cint): cint {.base.} =
  QTimeEditmetric(self[], param1)
proc cQTimeEdit_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQTimeEdit, painter: gen_qpainter_types.QPainter): void {.base.} =
  QTimeEditinitPainter(self[], painter)
proc cQTimeEdit_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQTimeEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QTimeEditredirected(self[], offset)
proc cQTimeEdit_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQTimeEdit): gen_qpainter_types.QPainter {.base.} =
  QTimeEditsharedPainter(self[])
proc cQTimeEdit_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQTimeEdit, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QTimeEditinputMethodEvent(self[], param1)
proc cQTimeEdit_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method eventFilter*(self: VirtualQTimeEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTimeEditeventFilter(self[], watched, event)
proc cQTimeEdit_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQTimeEdit, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTimeEditchildEvent(self[], event)
proc cQTimeEdit_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQTimeEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTimeEditcustomEvent(self[], event)
proc cQTimeEdit_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTimeEditconnectNotify(self[], signal)
proc cQTimeEdit_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTimeEditdisconnectNotify(self[], signal)
proc cQTimeEdit_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimeEdit](fcQTimeEdit_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc lineEdit*(self: gen_qdatetimeedit_types.QTimeEdit): gen_qlineedit_types.QLineEdit =
  gen_qlineedit_types.QLineEdit(h: fcQTimeEdit_protectedbase_lineEdit(self.h), owned: false)

proc setLineEdit*(self: gen_qdatetimeedit_types.QTimeEdit, edit: gen_qlineedit_types.QLineEdit): void =
  fcQTimeEdit_protectedbase_setLineEdit(self.h, edit.h)

proc updateMicroFocus*(self: gen_qdatetimeedit_types.QTimeEdit): void =
  fcQTimeEdit_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qdatetimeedit_types.QTimeEdit): void =
  fcQTimeEdit_protectedbase_create(self.h)

proc destroy*(self: gen_qdatetimeedit_types.QTimeEdit): void =
  fcQTimeEdit_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qdatetimeedit_types.QTimeEdit): bool =
  fcQTimeEdit_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qdatetimeedit_types.QTimeEdit): bool =
  fcQTimeEdit_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qdatetimeedit_types.QTimeEdit): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTimeEdit_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qdatetimeedit_types.QTimeEdit): cint =
  fcQTimeEdit_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qdatetimeedit_types.QTimeEdit, signal: cstring): cint =
  fcQTimeEdit_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qdatetimeedit_types.QTimeEdit, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTimeEdit_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qdatetimeedit_types.QTimeEdit,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QTimeEditVTable = nil): gen_qdatetimeedit_types.QTimeEdit =
  let vtbl = if vtbl == nil: new QTimeEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTimeEditVTable](fcQTimeEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQTimeEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQTimeEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQTimeEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQTimeEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQTimeEdit_vtable_callback_clear
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQTimeEdit_vtable_callback_stepBy
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQTimeEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQTimeEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQTimeEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQTimeEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQTimeEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQTimeEdit_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQTimeEdit_vtable_callback_fixup
  if not isNil(vtbl[].dateTimeFromText):
    vtbl[].vtbl.dateTimeFromText = cQTimeEdit_vtable_callback_dateTimeFromText
  if not isNil(vtbl[].textFromDateTime):
    vtbl[].vtbl.textFromDateTime = cQTimeEdit_vtable_callback_textFromDateTime
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQTimeEdit_vtable_callback_stepEnabled
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQTimeEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQTimeEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQTimeEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQTimeEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQTimeEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQTimeEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQTimeEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQTimeEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQTimeEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQTimeEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQTimeEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQTimeEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQTimeEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQTimeEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQTimeEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQTimeEdit_vtable_callback_showEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQTimeEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQTimeEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQTimeEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQTimeEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQTimeEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQTimeEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQTimeEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQTimeEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQTimeEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQTimeEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQTimeEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQTimeEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQTimeEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQTimeEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQTimeEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQTimeEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQTimeEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQTimeEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQTimeEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQTimeEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQTimeEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQTimeEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQTimeEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQTimeEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQTimeEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQTimeEdit_vtable_callback_disconnectNotify
  gen_qdatetimeedit_types.QTimeEdit(h: fcQTimeEdit_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qdatetimeedit_types.QTimeEdit,
    vtbl: ref QTimeEditVTable = nil): gen_qdatetimeedit_types.QTimeEdit =
  let vtbl = if vtbl == nil: new QTimeEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTimeEditVTable](fcQTimeEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQTimeEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQTimeEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQTimeEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQTimeEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQTimeEdit_vtable_callback_clear
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQTimeEdit_vtable_callback_stepBy
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQTimeEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQTimeEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQTimeEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQTimeEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQTimeEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQTimeEdit_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQTimeEdit_vtable_callback_fixup
  if not isNil(vtbl[].dateTimeFromText):
    vtbl[].vtbl.dateTimeFromText = cQTimeEdit_vtable_callback_dateTimeFromText
  if not isNil(vtbl[].textFromDateTime):
    vtbl[].vtbl.textFromDateTime = cQTimeEdit_vtable_callback_textFromDateTime
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQTimeEdit_vtable_callback_stepEnabled
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQTimeEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQTimeEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQTimeEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQTimeEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQTimeEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQTimeEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQTimeEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQTimeEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQTimeEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQTimeEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQTimeEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQTimeEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQTimeEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQTimeEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQTimeEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQTimeEdit_vtable_callback_showEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQTimeEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQTimeEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQTimeEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQTimeEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQTimeEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQTimeEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQTimeEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQTimeEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQTimeEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQTimeEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQTimeEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQTimeEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQTimeEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQTimeEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQTimeEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQTimeEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQTimeEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQTimeEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQTimeEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQTimeEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQTimeEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQTimeEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQTimeEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQTimeEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQTimeEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQTimeEdit_vtable_callback_disconnectNotify
  gen_qdatetimeedit_types.QTimeEdit(h: fcQTimeEdit_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qdatetimeedit_types.QTimeEdit,
    time: gen_qdatetime_types.QTime,
    vtbl: ref QTimeEditVTable = nil): gen_qdatetimeedit_types.QTimeEdit =
  let vtbl = if vtbl == nil: new QTimeEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTimeEditVTable](fcQTimeEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQTimeEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQTimeEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQTimeEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQTimeEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQTimeEdit_vtable_callback_clear
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQTimeEdit_vtable_callback_stepBy
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQTimeEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQTimeEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQTimeEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQTimeEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQTimeEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQTimeEdit_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQTimeEdit_vtable_callback_fixup
  if not isNil(vtbl[].dateTimeFromText):
    vtbl[].vtbl.dateTimeFromText = cQTimeEdit_vtable_callback_dateTimeFromText
  if not isNil(vtbl[].textFromDateTime):
    vtbl[].vtbl.textFromDateTime = cQTimeEdit_vtable_callback_textFromDateTime
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQTimeEdit_vtable_callback_stepEnabled
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQTimeEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQTimeEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQTimeEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQTimeEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQTimeEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQTimeEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQTimeEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQTimeEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQTimeEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQTimeEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQTimeEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQTimeEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQTimeEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQTimeEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQTimeEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQTimeEdit_vtable_callback_showEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQTimeEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQTimeEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQTimeEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQTimeEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQTimeEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQTimeEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQTimeEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQTimeEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQTimeEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQTimeEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQTimeEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQTimeEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQTimeEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQTimeEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQTimeEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQTimeEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQTimeEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQTimeEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQTimeEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQTimeEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQTimeEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQTimeEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQTimeEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQTimeEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQTimeEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQTimeEdit_vtable_callback_disconnectNotify
  gen_qdatetimeedit_types.QTimeEdit(h: fcQTimeEdit_new3(addr(vtbl[].vtbl), addr(vtbl[]), time.h), owned: true)

proc create*(T: type gen_qdatetimeedit_types.QTimeEdit,
    time: gen_qdatetime_types.QTime, parent: gen_qwidget_types.QWidget,
    vtbl: ref QTimeEditVTable = nil): gen_qdatetimeedit_types.QTimeEdit =
  let vtbl = if vtbl == nil: new QTimeEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTimeEditVTable](fcQTimeEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQTimeEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQTimeEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQTimeEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQTimeEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQTimeEdit_vtable_callback_clear
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQTimeEdit_vtable_callback_stepBy
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQTimeEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQTimeEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQTimeEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQTimeEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQTimeEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQTimeEdit_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQTimeEdit_vtable_callback_fixup
  if not isNil(vtbl[].dateTimeFromText):
    vtbl[].vtbl.dateTimeFromText = cQTimeEdit_vtable_callback_dateTimeFromText
  if not isNil(vtbl[].textFromDateTime):
    vtbl[].vtbl.textFromDateTime = cQTimeEdit_vtable_callback_textFromDateTime
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQTimeEdit_vtable_callback_stepEnabled
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQTimeEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQTimeEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQTimeEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQTimeEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQTimeEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQTimeEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQTimeEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQTimeEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQTimeEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQTimeEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQTimeEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQTimeEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQTimeEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQTimeEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQTimeEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQTimeEdit_vtable_callback_showEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQTimeEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQTimeEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQTimeEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQTimeEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQTimeEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQTimeEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQTimeEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQTimeEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQTimeEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQTimeEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQTimeEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQTimeEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQTimeEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQTimeEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQTimeEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQTimeEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQTimeEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQTimeEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQTimeEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQTimeEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQTimeEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQTimeEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQTimeEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQTimeEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQTimeEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQTimeEdit_vtable_callback_disconnectNotify
  gen_qdatetimeedit_types.QTimeEdit(h: fcQTimeEdit_new4(addr(vtbl[].vtbl), addr(vtbl[]), time.h, parent.h), owned: true)

const cQTimeEdit_mvtbl = cQTimeEditVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTimeEdit()[])](self.fcQTimeEdit_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQTimeEdit_method_callback_metaObject,
  metacast: cQTimeEdit_method_callback_metacast,
  metacall: cQTimeEdit_method_callback_metacall,
  sizeHint: cQTimeEdit_method_callback_sizeHint,
  clear: cQTimeEdit_method_callback_clear,
  stepBy: cQTimeEdit_method_callback_stepBy,
  event: cQTimeEdit_method_callback_event,
  keyPressEvent: cQTimeEdit_method_callback_keyPressEvent,
  wheelEvent: cQTimeEdit_method_callback_wheelEvent,
  focusInEvent: cQTimeEdit_method_callback_focusInEvent,
  focusNextPrevChild: cQTimeEdit_method_callback_focusNextPrevChild,
  validate: cQTimeEdit_method_callback_validate,
  fixup: cQTimeEdit_method_callback_fixup,
  dateTimeFromText: cQTimeEdit_method_callback_dateTimeFromText,
  textFromDateTime: cQTimeEdit_method_callback_textFromDateTime,
  stepEnabled: cQTimeEdit_method_callback_stepEnabled,
  mousePressEvent: cQTimeEdit_method_callback_mousePressEvent,
  paintEvent: cQTimeEdit_method_callback_paintEvent,
  initStyleOption: cQTimeEdit_method_callback_initStyleOption,
  minimumSizeHint: cQTimeEdit_method_callback_minimumSizeHint,
  inputMethodQuery: cQTimeEdit_method_callback_inputMethodQuery,
  resizeEvent: cQTimeEdit_method_callback_resizeEvent,
  keyReleaseEvent: cQTimeEdit_method_callback_keyReleaseEvent,
  focusOutEvent: cQTimeEdit_method_callback_focusOutEvent,
  contextMenuEvent: cQTimeEdit_method_callback_contextMenuEvent,
  changeEvent: cQTimeEdit_method_callback_changeEvent,
  closeEvent: cQTimeEdit_method_callback_closeEvent,
  hideEvent: cQTimeEdit_method_callback_hideEvent,
  mouseReleaseEvent: cQTimeEdit_method_callback_mouseReleaseEvent,
  mouseMoveEvent: cQTimeEdit_method_callback_mouseMoveEvent,
  timerEvent: cQTimeEdit_method_callback_timerEvent,
  showEvent: cQTimeEdit_method_callback_showEvent,
  devType: cQTimeEdit_method_callback_devType,
  setVisible: cQTimeEdit_method_callback_setVisible,
  heightForWidth: cQTimeEdit_method_callback_heightForWidth,
  hasHeightForWidth: cQTimeEdit_method_callback_hasHeightForWidth,
  paintEngine: cQTimeEdit_method_callback_paintEngine,
  mouseDoubleClickEvent: cQTimeEdit_method_callback_mouseDoubleClickEvent,
  enterEvent: cQTimeEdit_method_callback_enterEvent,
  leaveEvent: cQTimeEdit_method_callback_leaveEvent,
  moveEvent: cQTimeEdit_method_callback_moveEvent,
  tabletEvent: cQTimeEdit_method_callback_tabletEvent,
  actionEvent: cQTimeEdit_method_callback_actionEvent,
  dragEnterEvent: cQTimeEdit_method_callback_dragEnterEvent,
  dragMoveEvent: cQTimeEdit_method_callback_dragMoveEvent,
  dragLeaveEvent: cQTimeEdit_method_callback_dragLeaveEvent,
  dropEvent: cQTimeEdit_method_callback_dropEvent,
  nativeEvent: cQTimeEdit_method_callback_nativeEvent,
  metric: cQTimeEdit_method_callback_metric,
  initPainter: cQTimeEdit_method_callback_initPainter,
  redirected: cQTimeEdit_method_callback_redirected,
  sharedPainter: cQTimeEdit_method_callback_sharedPainter,
  inputMethodEvent: cQTimeEdit_method_callback_inputMethodEvent,
  eventFilter: cQTimeEdit_method_callback_eventFilter,
  childEvent: cQTimeEdit_method_callback_childEvent,
  customEvent: cQTimeEdit_method_callback_customEvent,
  connectNotify: cQTimeEdit_method_callback_connectNotify,
  disconnectNotify: cQTimeEdit_method_callback_disconnectNotify,
)
proc create*(T: type gen_qdatetimeedit_types.QTimeEdit,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQTimeEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTimeEdit_new(addr(cQTimeEdit_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qdatetimeedit_types.QTimeEdit,
    inst: VirtualQTimeEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTimeEdit_new2(addr(cQTimeEdit_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qdatetimeedit_types.QTimeEdit,
    time: gen_qdatetime_types.QTime,
    inst: VirtualQTimeEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTimeEdit_new3(addr(cQTimeEdit_mvtbl), addr(inst[]), time.h)
  inst[].owned = true

proc create*(T: type gen_qdatetimeedit_types.QTimeEdit,
    time: gen_qdatetime_types.QTime, parent: gen_qwidget_types.QWidget,
    inst: VirtualQTimeEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTimeEdit_new4(addr(cQTimeEdit_mvtbl), addr(inst[]), time.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qdatetimeedit_types.QTimeEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTimeEdit_staticMetaObject())
proc metaObject*(self: gen_qdatetimeedit_types.QDateEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDateEdit_metaObject(self.h), owned: false)

proc metacast*(self: gen_qdatetimeedit_types.QDateEdit, param1: cstring): pointer =
  fcQDateEdit_metacast(self.h, param1)

proc metacall*(self: gen_qdatetimeedit_types.QDateEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQDateEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdatetimeedit_types.QDateEdit, s: cstring): string =
  let v_ms = fcQDateEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc userDateChanged*(self: gen_qdatetimeedit_types.QDateEdit, date: gen_qdatetime_types.QDate): void =
  fcQDateEdit_userDateChanged(self.h, date.h)

type QDateEdituserDateChangedSlot* = proc(date: gen_qdatetime_types.QDate)
proc cQDateEdit_slot_callback_userDateChanged(slot: int, date: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDateEdituserDateChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qdatetime_types.QDate(h: date, owned: true)

  nimfunc[](slotval1)

proc cQDateEdit_slot_callback_userDateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDateEdituserDateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onuserDateChanged*(self: gen_qdatetimeedit_types.QDateEdit, slot: QDateEdituserDateChangedSlot) =
  var tmp = new QDateEdituserDateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_connect_userDateChanged(self.h, cast[int](addr tmp[]), cQDateEdit_slot_callback_userDateChanged, cQDateEdit_slot_callback_userDateChanged_release)

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

type QDateEditmetaObjectProc* = proc(self: QDateEdit): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDateEditmetacastProc* = proc(self: QDateEdit, param1: cstring): pointer {.raises: [], gcsafe.}
type QDateEditmetacallProc* = proc(self: QDateEdit, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDateEditsizeHintProc* = proc(self: QDateEdit): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDateEditclearProc* = proc(self: QDateEdit): void {.raises: [], gcsafe.}
type QDateEditstepByProc* = proc(self: QDateEdit, steps: cint): void {.raises: [], gcsafe.}
type QDateEditeventProc* = proc(self: QDateEdit, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDateEditkeyPressEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDateEditwheelEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QDateEditfocusInEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDateEditfocusNextPrevChildProc* = proc(self: QDateEdit, next: bool): bool {.raises: [], gcsafe.}
type QDateEditvalidateProc* = proc(self: QDateEdit, input: string, pos: ptr cint): cint {.raises: [], gcsafe.}
type QDateEditfixupProc* = proc(self: QDateEdit, input: string): void {.raises: [], gcsafe.}
type QDateEditdateTimeFromTextProc* = proc(self: QDateEdit, text: string): gen_qdatetime_types.QDateTime {.raises: [], gcsafe.}
type QDateEdittextFromDateTimeProc* = proc(self: QDateEdit, dt: gen_qdatetime_types.QDateTime): string {.raises: [], gcsafe.}
type QDateEditstepEnabledProc* = proc(self: QDateEdit): cint {.raises: [], gcsafe.}
type QDateEditmousePressEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDateEditpaintEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QDateEditinitStyleOptionProc* = proc(self: QDateEdit, option: gen_qstyleoption_types.QStyleOptionSpinBox): void {.raises: [], gcsafe.}
type QDateEditminimumSizeHintProc* = proc(self: QDateEdit): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDateEditinputMethodQueryProc* = proc(self: QDateEdit, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QDateEditresizeEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QDateEditkeyReleaseEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDateEditfocusOutEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDateEditcontextMenuEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QDateEditchangeEventProc* = proc(self: QDateEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDateEditcloseEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QDateEdithideEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QDateEditmouseReleaseEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDateEditmouseMoveEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDateEdittimerEventProc* = proc(self: QDateEdit, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDateEditshowEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QDateEditdevTypeProc* = proc(self: QDateEdit): cint {.raises: [], gcsafe.}
type QDateEditsetVisibleProc* = proc(self: QDateEdit, visible: bool): void {.raises: [], gcsafe.}
type QDateEditheightForWidthProc* = proc(self: QDateEdit, param1: cint): cint {.raises: [], gcsafe.}
type QDateEdithasHeightForWidthProc* = proc(self: QDateEdit): bool {.raises: [], gcsafe.}
type QDateEditpaintEngineProc* = proc(self: QDateEdit): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QDateEditmouseDoubleClickEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDateEditenterEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QDateEditleaveEventProc* = proc(self: QDateEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDateEditmoveEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QDateEdittabletEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QDateEditactionEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QDateEditdragEnterEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QDateEditdragMoveEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QDateEditdragLeaveEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QDateEditdropEventProc* = proc(self: QDateEdit, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QDateEditnativeEventProc* = proc(self: QDateEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QDateEditmetricProc* = proc(self: QDateEdit, param1: cint): cint {.raises: [], gcsafe.}
type QDateEditinitPainterProc* = proc(self: QDateEdit, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QDateEditredirectedProc* = proc(self: QDateEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QDateEditsharedPainterProc* = proc(self: QDateEdit): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QDateEditinputMethodEventProc* = proc(self: QDateEdit, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QDateEditeventFilterProc* = proc(self: QDateEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDateEditchildEventProc* = proc(self: QDateEdit, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDateEditcustomEventProc* = proc(self: QDateEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDateEditconnectNotifyProc* = proc(self: QDateEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDateEditdisconnectNotifyProc* = proc(self: QDateEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDateEditVTable* {.inheritable, pure.} = object
  vtbl: cQDateEditVTable
  metaObject*: QDateEditmetaObjectProc
  metacast*: QDateEditmetacastProc
  metacall*: QDateEditmetacallProc
  sizeHint*: QDateEditsizeHintProc
  clear*: QDateEditclearProc
  stepBy*: QDateEditstepByProc
  event*: QDateEditeventProc
  keyPressEvent*: QDateEditkeyPressEventProc
  wheelEvent*: QDateEditwheelEventProc
  focusInEvent*: QDateEditfocusInEventProc
  focusNextPrevChild*: QDateEditfocusNextPrevChildProc
  validate*: QDateEditvalidateProc
  fixup*: QDateEditfixupProc
  dateTimeFromText*: QDateEditdateTimeFromTextProc
  textFromDateTime*: QDateEdittextFromDateTimeProc
  stepEnabled*: QDateEditstepEnabledProc
  mousePressEvent*: QDateEditmousePressEventProc
  paintEvent*: QDateEditpaintEventProc
  initStyleOption*: QDateEditinitStyleOptionProc
  minimumSizeHint*: QDateEditminimumSizeHintProc
  inputMethodQuery*: QDateEditinputMethodQueryProc
  resizeEvent*: QDateEditresizeEventProc
  keyReleaseEvent*: QDateEditkeyReleaseEventProc
  focusOutEvent*: QDateEditfocusOutEventProc
  contextMenuEvent*: QDateEditcontextMenuEventProc
  changeEvent*: QDateEditchangeEventProc
  closeEvent*: QDateEditcloseEventProc
  hideEvent*: QDateEdithideEventProc
  mouseReleaseEvent*: QDateEditmouseReleaseEventProc
  mouseMoveEvent*: QDateEditmouseMoveEventProc
  timerEvent*: QDateEdittimerEventProc
  showEvent*: QDateEditshowEventProc
  devType*: QDateEditdevTypeProc
  setVisible*: QDateEditsetVisibleProc
  heightForWidth*: QDateEditheightForWidthProc
  hasHeightForWidth*: QDateEdithasHeightForWidthProc
  paintEngine*: QDateEditpaintEngineProc
  mouseDoubleClickEvent*: QDateEditmouseDoubleClickEventProc
  enterEvent*: QDateEditenterEventProc
  leaveEvent*: QDateEditleaveEventProc
  moveEvent*: QDateEditmoveEventProc
  tabletEvent*: QDateEdittabletEventProc
  actionEvent*: QDateEditactionEventProc
  dragEnterEvent*: QDateEditdragEnterEventProc
  dragMoveEvent*: QDateEditdragMoveEventProc
  dragLeaveEvent*: QDateEditdragLeaveEventProc
  dropEvent*: QDateEditdropEventProc
  nativeEvent*: QDateEditnativeEventProc
  metric*: QDateEditmetricProc
  initPainter*: QDateEditinitPainterProc
  redirected*: QDateEditredirectedProc
  sharedPainter*: QDateEditsharedPainterProc
  inputMethodEvent*: QDateEditinputMethodEventProc
  eventFilter*: QDateEditeventFilterProc
  childEvent*: QDateEditchildEventProc
  customEvent*: QDateEditcustomEventProc
  connectNotify*: QDateEditconnectNotifyProc
  disconnectNotify*: QDateEditdisconnectNotifyProc
proc QDateEditmetaObject*(self: gen_qdatetimeedit_types.QDateEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDateEdit_virtualbase_metaObject(self.h), owned: false)

proc cQDateEdit_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDateEditmetacast*(self: gen_qdatetimeedit_types.QDateEdit, param1: cstring): pointer =
  fcQDateEdit_virtualbase_metacast(self.h, param1)

proc cQDateEdit_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QDateEditmetacall*(self: gen_qdatetimeedit_types.QDateEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQDateEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQDateEdit_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDateEditsizeHint*(self: gen_qdatetimeedit_types.QDateEdit): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDateEdit_virtualbase_sizeHint(self.h), owned: true)

proc cQDateEdit_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDateEditclear*(self: gen_qdatetimeedit_types.QDateEdit): void =
  fcQDateEdit_virtualbase_clear(self.h)

proc cQDateEdit_vtable_callback_clear(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  vtbl[].clear(self)

proc QDateEditstepBy*(self: gen_qdatetimeedit_types.QDateEdit, steps: cint): void =
  fcQDateEdit_virtualbase_stepBy(self.h, steps)

proc cQDateEdit_vtable_callback_stepBy(self: pointer, steps: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = steps
  vtbl[].stepBy(self, slotval1)

proc QDateEditevent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qcoreevent_types.QEvent): bool =
  fcQDateEdit_virtualbase_event(self.h, event.h)

proc cQDateEdit_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QDateEditkeyPressEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QKeyEvent): void =
  fcQDateEdit_virtualbase_keyPressEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QDateEditwheelEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QWheelEvent): void =
  fcQDateEdit_virtualbase_wheelEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QDateEditfocusInEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QFocusEvent): void =
  fcQDateEdit_virtualbase_focusInEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QDateEditfocusNextPrevChild*(self: gen_qdatetimeedit_types.QDateEdit, next: bool): bool =
  fcQDateEdit_virtualbase_focusNextPrevChild(self.h, next)

proc cQDateEdit_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QDateEditvalidate*(self: gen_qdatetimeedit_types.QDateEdit, input: string, pos: ptr cint): cint =
  cint(fcQDateEdit_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

proc cQDateEdit_vtable_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc QDateEditfixup*(self: gen_qdatetimeedit_types.QDateEdit, input: string): void =
  fcQDateEdit_virtualbase_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

proc cQDateEdit_vtable_callback_fixup(self: pointer, input: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  vtbl[].fixup(self, slotval1)

proc QDateEditdateTimeFromText*(self: gen_qdatetimeedit_types.QDateEdit, text: string): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQDateEdit_virtualbase_dateTimeFromText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))), owned: true)

proc cQDateEdit_vtable_callback_dateTimeFromText(self: pointer, text: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  var virtualReturn = vtbl[].dateTimeFromText(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDateEdittextFromDateTime*(self: gen_qdatetimeedit_types.QDateEdit, dt: gen_qdatetime_types.QDateTime): string =
  let v_ms = fcQDateEdit_virtualbase_textFromDateTime(self.h, dt.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc cQDateEdit_vtable_callback_textFromDateTime(self: pointer, dt: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qdatetime_types.QDateTime(h: dt, owned: false)
  var virtualReturn = vtbl[].textFromDateTime(self, slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc QDateEditstepEnabled*(self: gen_qdatetimeedit_types.QDateEdit): cint =
  cint(fcQDateEdit_virtualbase_stepEnabled(self.h))

proc cQDateEdit_vtable_callback_stepEnabled(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  var virtualReturn = vtbl[].stepEnabled(self)
  cint(virtualReturn)

proc QDateEditmousePressEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQDateEdit_virtualbase_mousePressEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QDateEditpaintEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QPaintEvent): void =
  fcQDateEdit_virtualbase_paintEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QDateEditinitStyleOption*(self: gen_qdatetimeedit_types.QDateEdit, option: gen_qstyleoption_types.QStyleOptionSpinBox): void =
  fcQDateEdit_virtualbase_initStyleOption(self.h, option.h)

proc cQDateEdit_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionSpinBox(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QDateEditminimumSizeHint*(self: gen_qdatetimeedit_types.QDateEdit): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDateEdit_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQDateEdit_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDateEditinputMethodQuery*(self: gen_qdatetimeedit_types.QDateEdit, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDateEdit_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQDateEdit_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDateEditresizeEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QResizeEvent): void =
  fcQDateEdit_virtualbase_resizeEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QDateEditkeyReleaseEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QKeyEvent): void =
  fcQDateEdit_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QDateEditfocusOutEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QFocusEvent): void =
  fcQDateEdit_virtualbase_focusOutEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QDateEditcontextMenuEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QContextMenuEvent): void =
  fcQDateEdit_virtualbase_contextMenuEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QDateEditchangeEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQDateEdit_virtualbase_changeEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QDateEditcloseEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QCloseEvent): void =
  fcQDateEdit_virtualbase_closeEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QDateEdithideEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QHideEvent): void =
  fcQDateEdit_virtualbase_hideEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QDateEditmouseReleaseEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQDateEdit_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QDateEditmouseMoveEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQDateEdit_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QDateEdittimerEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDateEdit_virtualbase_timerEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QDateEditshowEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QShowEvent): void =
  fcQDateEdit_virtualbase_showEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QDateEditdevType*(self: gen_qdatetimeedit_types.QDateEdit): cint =
  fcQDateEdit_virtualbase_devType(self.h)

proc cQDateEdit_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QDateEditsetVisible*(self: gen_qdatetimeedit_types.QDateEdit, visible: bool): void =
  fcQDateEdit_virtualbase_setVisible(self.h, visible)

proc cQDateEdit_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QDateEditheightForWidth*(self: gen_qdatetimeedit_types.QDateEdit, param1: cint): cint =
  fcQDateEdit_virtualbase_heightForWidth(self.h, param1)

proc cQDateEdit_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QDateEdithasHeightForWidth*(self: gen_qdatetimeedit_types.QDateEdit): bool =
  fcQDateEdit_virtualbase_hasHeightForWidth(self.h)

proc cQDateEdit_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QDateEditpaintEngine*(self: gen_qdatetimeedit_types.QDateEdit): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDateEdit_virtualbase_paintEngine(self.h), owned: false)

proc cQDateEdit_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDateEditmouseDoubleClickEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQDateEdit_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QDateEditenterEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QEnterEvent): void =
  fcQDateEdit_virtualbase_enterEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QDateEditleaveEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQDateEdit_virtualbase_leaveEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QDateEditmoveEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QMoveEvent): void =
  fcQDateEdit_virtualbase_moveEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QDateEdittabletEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QTabletEvent): void =
  fcQDateEdit_virtualbase_tabletEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QDateEditactionEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QActionEvent): void =
  fcQDateEdit_virtualbase_actionEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QDateEditdragEnterEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDateEdit_virtualbase_dragEnterEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QDateEditdragMoveEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDateEdit_virtualbase_dragMoveEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QDateEditdragLeaveEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDateEdit_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QDateEditdropEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qevent_types.QDropEvent): void =
  fcQDateEdit_virtualbase_dropEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QDateEditnativeEvent*(self: gen_qdatetimeedit_types.QDateEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQDateEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQDateEdit_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDateEditmetric*(self: gen_qdatetimeedit_types.QDateEdit, param1: cint): cint =
  fcQDateEdit_virtualbase_metric(self.h, cint(param1))

proc cQDateEdit_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QDateEditinitPainter*(self: gen_qdatetimeedit_types.QDateEdit, painter: gen_qpainter_types.QPainter): void =
  fcQDateEdit_virtualbase_initPainter(self.h, painter.h)

proc cQDateEdit_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QDateEditredirected*(self: gen_qdatetimeedit_types.QDateEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDateEdit_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQDateEdit_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDateEditsharedPainter*(self: gen_qdatetimeedit_types.QDateEdit): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDateEdit_virtualbase_sharedPainter(self.h), owned: false)

proc cQDateEdit_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDateEditinputMethodEvent*(self: gen_qdatetimeedit_types.QDateEdit, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDateEdit_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQDateEdit_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QDateEditeventFilter*(self: gen_qdatetimeedit_types.QDateEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDateEdit_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQDateEdit_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QDateEditchildEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDateEdit_virtualbase_childEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QDateEditcustomEvent*(self: gen_qdatetimeedit_types.QDateEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQDateEdit_virtualbase_customEvent(self.h, event.h)

proc cQDateEdit_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QDateEditconnectNotify*(self: gen_qdatetimeedit_types.QDateEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDateEdit_virtualbase_connectNotify(self.h, signal.h)

proc cQDateEdit_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QDateEditdisconnectNotify*(self: gen_qdatetimeedit_types.QDateEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDateEdit_virtualbase_disconnectNotify(self.h, signal.h)

proc cQDateEdit_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDateEditVTable](fcQDateEdit_vdata(self))
  let self = QDateEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDateEdit* {.inheritable.} = ref object of QDateEdit
  vtbl*: cQDateEditVTable
method metaObject*(self: VirtualQDateEdit): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDateEditmetaObject(self[])
proc cQDateEdit_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQDateEdit, param1: cstring): pointer {.base.} =
  QDateEditmetacast(self[], param1)
proc cQDateEdit_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQDateEdit, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDateEditmetacall(self[], param1, param2, param3)
proc cQDateEdit_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQDateEdit): gen_qsize_types.QSize {.base.} =
  QDateEditsizeHint(self[])
proc cQDateEdit_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method clear*(self: VirtualQDateEdit): void {.base.} =
  QDateEditclear(self[])
proc cQDateEdit_method_callback_clear(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  inst.clear()

method stepBy*(self: VirtualQDateEdit, steps: cint): void {.base.} =
  QDateEditstepBy(self[], steps)
proc cQDateEdit_method_callback_stepBy(self: pointer, steps: cint): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = steps
  inst.stepBy(slotval1)

method event*(self: VirtualQDateEdit, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDateEditevent(self[], event)
proc cQDateEdit_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method keyPressEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDateEditkeyPressEvent(self[], event)
proc cQDateEdit_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method wheelEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QDateEditwheelEvent(self[], event)
proc cQDateEdit_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method focusInEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDateEditfocusInEvent(self[], event)
proc cQDateEdit_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusNextPrevChild*(self: VirtualQDateEdit, next: bool): bool {.base.} =
  QDateEditfocusNextPrevChild(self[], next)
proc cQDateEdit_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method validate*(self: VirtualQDateEdit, input: string, pos: ptr cint): cint {.base.} =
  QDateEditvalidate(self[], input, pos)
proc cQDateEdit_method_callback_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  var virtualReturn = inst.validate(slotval1, slotval2)
  cint(virtualReturn)

method fixup*(self: VirtualQDateEdit, input: string): void {.base.} =
  QDateEditfixup(self[], input)
proc cQDateEdit_method_callback_fixup(self: pointer, input: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  inst.fixup(slotval1)

method dateTimeFromText*(self: VirtualQDateEdit, text: string): gen_qdatetime_types.QDateTime {.base.} =
  QDateEditdateTimeFromText(self[], text)
proc cQDateEdit_method_callback_dateTimeFromText(self: pointer, text: struct_miqt_string): pointer {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  var virtualReturn = inst.dateTimeFromText(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method textFromDateTime*(self: VirtualQDateEdit, dt: gen_qdatetime_types.QDateTime): string {.base.} =
  QDateEdittextFromDateTime(self[], dt)
proc cQDateEdit_method_callback_textFromDateTime(self: pointer, dt: pointer): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qdatetime_types.QDateTime(h: dt, owned: false)
  var virtualReturn = inst.textFromDateTime(slotval1)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

method stepEnabled*(self: VirtualQDateEdit): cint {.base.} =
  QDateEditstepEnabled(self[])
proc cQDateEdit_method_callback_stepEnabled(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  var virtualReturn = inst.stepEnabled()
  cint(virtualReturn)

method mousePressEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDateEditmousePressEvent(self[], event)
proc cQDateEdit_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method paintEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QDateEditpaintEvent(self[], event)
proc cQDateEdit_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method initStyleOption*(self: VirtualQDateEdit, option: gen_qstyleoption_types.QStyleOptionSpinBox): void {.base.} =
  QDateEditinitStyleOption(self[], option)
proc cQDateEdit_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionSpinBox(h: option, owned: false)
  inst.initStyleOption(slotval1)

method minimumSizeHint*(self: VirtualQDateEdit): gen_qsize_types.QSize {.base.} =
  QDateEditminimumSizeHint(self[])
proc cQDateEdit_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodQuery*(self: VirtualQDateEdit, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QDateEditinputMethodQuery(self[], param1)
proc cQDateEdit_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method resizeEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QDateEditresizeEvent(self[], event)
proc cQDateEdit_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method keyReleaseEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDateEditkeyReleaseEvent(self[], event)
proc cQDateEdit_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusOutEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDateEditfocusOutEvent(self[], event)
proc cQDateEdit_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method contextMenuEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QDateEditcontextMenuEvent(self[], event)
proc cQDateEdit_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method changeEvent*(self: VirtualQDateEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDateEditchangeEvent(self[], event)
proc cQDateEdit_method_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.changeEvent(slotval1)

method closeEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QDateEditcloseEvent(self[], event)
proc cQDateEdit_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method hideEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QHideEvent): void {.base.} =
  QDateEdithideEvent(self[], event)
proc cQDateEdit_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDateEditmouseReleaseEvent(self[], event)
proc cQDateEdit_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseMoveEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDateEditmouseMoveEvent(self[], event)
proc cQDateEdit_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method timerEvent*(self: VirtualQDateEdit, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDateEdittimerEvent(self[], event)
proc cQDateEdit_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method showEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QShowEvent): void {.base.} =
  QDateEditshowEvent(self[], event)
proc cQDateEdit_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method devType*(self: VirtualQDateEdit): cint {.base.} =
  QDateEditdevType(self[])
proc cQDateEdit_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQDateEdit, visible: bool): void {.base.} =
  QDateEditsetVisible(self[], visible)
proc cQDateEdit_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQDateEdit, param1: cint): cint {.base.} =
  QDateEditheightForWidth(self[], param1)
proc cQDateEdit_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQDateEdit): bool {.base.} =
  QDateEdithasHeightForWidth(self[])
proc cQDateEdit_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQDateEdit): gen_qpaintengine_types.QPaintEngine {.base.} =
  QDateEditpaintEngine(self[])
proc cQDateEdit_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDateEditmouseDoubleClickEvent(self[], event)
proc cQDateEdit_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method enterEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QDateEditenterEvent(self[], event)
proc cQDateEdit_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQDateEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDateEditleaveEvent(self[], event)
proc cQDateEdit_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QDateEditmoveEvent(self[], event)
proc cQDateEdit_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method tabletEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QDateEdittabletEvent(self[], event)
proc cQDateEdit_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QActionEvent): void {.base.} =
  QDateEditactionEvent(self[], event)
proc cQDateEdit_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QDateEditdragEnterEvent(self[], event)
proc cQDateEdit_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QDateEditdragMoveEvent(self[], event)
proc cQDateEdit_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QDateEditdragLeaveEvent(self[], event)
proc cQDateEdit_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQDateEdit, event: gen_qevent_types.QDropEvent): void {.base.} =
  QDateEditdropEvent(self[], event)
proc cQDateEdit_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method nativeEvent*(self: VirtualQDateEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QDateEditnativeEvent(self[], eventType, message, resultVal)
proc cQDateEdit_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQDateEdit, param1: cint): cint {.base.} =
  QDateEditmetric(self[], param1)
proc cQDateEdit_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQDateEdit, painter: gen_qpainter_types.QPainter): void {.base.} =
  QDateEditinitPainter(self[], painter)
proc cQDateEdit_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQDateEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QDateEditredirected(self[], offset)
proc cQDateEdit_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQDateEdit): gen_qpainter_types.QPainter {.base.} =
  QDateEditsharedPainter(self[])
proc cQDateEdit_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQDateEdit, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QDateEditinputMethodEvent(self[], param1)
proc cQDateEdit_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method eventFilter*(self: VirtualQDateEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDateEditeventFilter(self[], watched, event)
proc cQDateEdit_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQDateEdit, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDateEditchildEvent(self[], event)
proc cQDateEdit_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQDateEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDateEditcustomEvent(self[], event)
proc cQDateEdit_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQDateEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDateEditconnectNotify(self[], signal)
proc cQDateEdit_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQDateEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDateEditdisconnectNotify(self[], signal)
proc cQDateEdit_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDateEdit](fcQDateEdit_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc lineEdit*(self: gen_qdatetimeedit_types.QDateEdit): gen_qlineedit_types.QLineEdit =
  gen_qlineedit_types.QLineEdit(h: fcQDateEdit_protectedbase_lineEdit(self.h), owned: false)

proc setLineEdit*(self: gen_qdatetimeedit_types.QDateEdit, edit: gen_qlineedit_types.QLineEdit): void =
  fcQDateEdit_protectedbase_setLineEdit(self.h, edit.h)

proc updateMicroFocus*(self: gen_qdatetimeedit_types.QDateEdit): void =
  fcQDateEdit_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qdatetimeedit_types.QDateEdit): void =
  fcQDateEdit_protectedbase_create(self.h)

proc destroy*(self: gen_qdatetimeedit_types.QDateEdit): void =
  fcQDateEdit_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qdatetimeedit_types.QDateEdit): bool =
  fcQDateEdit_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qdatetimeedit_types.QDateEdit): bool =
  fcQDateEdit_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qdatetimeedit_types.QDateEdit): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDateEdit_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qdatetimeedit_types.QDateEdit): cint =
  fcQDateEdit_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qdatetimeedit_types.QDateEdit, signal: cstring): cint =
  fcQDateEdit_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qdatetimeedit_types.QDateEdit, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDateEdit_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qdatetimeedit_types.QDateEdit,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QDateEditVTable = nil): gen_qdatetimeedit_types.QDateEdit =
  let vtbl = if vtbl == nil: new QDateEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDateEditVTable](fcQDateEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDateEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDateEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDateEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDateEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQDateEdit_vtable_callback_clear
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQDateEdit_vtable_callback_stepBy
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDateEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDateEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDateEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDateEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDateEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQDateEdit_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQDateEdit_vtable_callback_fixup
  if not isNil(vtbl[].dateTimeFromText):
    vtbl[].vtbl.dateTimeFromText = cQDateEdit_vtable_callback_dateTimeFromText
  if not isNil(vtbl[].textFromDateTime):
    vtbl[].vtbl.textFromDateTime = cQDateEdit_vtable_callback_textFromDateTime
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQDateEdit_vtable_callback_stepEnabled
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDateEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDateEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQDateEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDateEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDateEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDateEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDateEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDateEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDateEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDateEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDateEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDateEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDateEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDateEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDateEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDateEdit_vtable_callback_showEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDateEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDateEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDateEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDateEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDateEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDateEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDateEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDateEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDateEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDateEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDateEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDateEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDateEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDateEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDateEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDateEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDateEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDateEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDateEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDateEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDateEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDateEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDateEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDateEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDateEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDateEdit_vtable_callback_disconnectNotify
  gen_qdatetimeedit_types.QDateEdit(h: fcQDateEdit_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qdatetimeedit_types.QDateEdit,
    vtbl: ref QDateEditVTable = nil): gen_qdatetimeedit_types.QDateEdit =
  let vtbl = if vtbl == nil: new QDateEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDateEditVTable](fcQDateEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDateEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDateEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDateEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDateEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQDateEdit_vtable_callback_clear
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQDateEdit_vtable_callback_stepBy
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDateEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDateEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDateEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDateEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDateEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQDateEdit_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQDateEdit_vtable_callback_fixup
  if not isNil(vtbl[].dateTimeFromText):
    vtbl[].vtbl.dateTimeFromText = cQDateEdit_vtable_callback_dateTimeFromText
  if not isNil(vtbl[].textFromDateTime):
    vtbl[].vtbl.textFromDateTime = cQDateEdit_vtable_callback_textFromDateTime
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQDateEdit_vtable_callback_stepEnabled
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDateEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDateEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQDateEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDateEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDateEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDateEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDateEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDateEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDateEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDateEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDateEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDateEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDateEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDateEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDateEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDateEdit_vtable_callback_showEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDateEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDateEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDateEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDateEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDateEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDateEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDateEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDateEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDateEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDateEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDateEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDateEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDateEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDateEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDateEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDateEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDateEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDateEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDateEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDateEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDateEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDateEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDateEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDateEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDateEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDateEdit_vtable_callback_disconnectNotify
  gen_qdatetimeedit_types.QDateEdit(h: fcQDateEdit_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qdatetimeedit_types.QDateEdit,
    date: gen_qdatetime_types.QDate,
    vtbl: ref QDateEditVTable = nil): gen_qdatetimeedit_types.QDateEdit =
  let vtbl = if vtbl == nil: new QDateEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDateEditVTable](fcQDateEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDateEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDateEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDateEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDateEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQDateEdit_vtable_callback_clear
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQDateEdit_vtable_callback_stepBy
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDateEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDateEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDateEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDateEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDateEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQDateEdit_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQDateEdit_vtable_callback_fixup
  if not isNil(vtbl[].dateTimeFromText):
    vtbl[].vtbl.dateTimeFromText = cQDateEdit_vtable_callback_dateTimeFromText
  if not isNil(vtbl[].textFromDateTime):
    vtbl[].vtbl.textFromDateTime = cQDateEdit_vtable_callback_textFromDateTime
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQDateEdit_vtable_callback_stepEnabled
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDateEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDateEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQDateEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDateEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDateEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDateEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDateEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDateEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDateEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDateEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDateEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDateEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDateEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDateEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDateEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDateEdit_vtable_callback_showEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDateEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDateEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDateEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDateEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDateEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDateEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDateEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDateEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDateEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDateEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDateEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDateEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDateEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDateEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDateEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDateEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDateEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDateEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDateEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDateEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDateEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDateEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDateEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDateEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDateEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDateEdit_vtable_callback_disconnectNotify
  gen_qdatetimeedit_types.QDateEdit(h: fcQDateEdit_new3(addr(vtbl[].vtbl), addr(vtbl[]), date.h), owned: true)

proc create*(T: type gen_qdatetimeedit_types.QDateEdit,
    date: gen_qdatetime_types.QDate, parent: gen_qwidget_types.QWidget,
    vtbl: ref QDateEditVTable = nil): gen_qdatetimeedit_types.QDateEdit =
  let vtbl = if vtbl == nil: new QDateEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDateEditVTable](fcQDateEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDateEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDateEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDateEdit_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDateEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQDateEdit_vtable_callback_clear
  if not isNil(vtbl[].stepBy):
    vtbl[].vtbl.stepBy = cQDateEdit_vtable_callback_stepBy
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDateEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDateEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDateEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDateEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDateEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].validate):
    vtbl[].vtbl.validate = cQDateEdit_vtable_callback_validate
  if not isNil(vtbl[].fixup):
    vtbl[].vtbl.fixup = cQDateEdit_vtable_callback_fixup
  if not isNil(vtbl[].dateTimeFromText):
    vtbl[].vtbl.dateTimeFromText = cQDateEdit_vtable_callback_dateTimeFromText
  if not isNil(vtbl[].textFromDateTime):
    vtbl[].vtbl.textFromDateTime = cQDateEdit_vtable_callback_textFromDateTime
  if not isNil(vtbl[].stepEnabled):
    vtbl[].vtbl.stepEnabled = cQDateEdit_vtable_callback_stepEnabled
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDateEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDateEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQDateEdit_vtable_callback_initStyleOption
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDateEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDateEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDateEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDateEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDateEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDateEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDateEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDateEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDateEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDateEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDateEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDateEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDateEdit_vtable_callback_showEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDateEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDateEdit_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDateEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDateEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDateEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDateEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDateEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDateEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDateEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDateEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDateEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDateEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDateEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDateEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDateEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDateEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDateEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDateEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDateEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDateEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDateEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDateEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDateEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDateEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDateEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDateEdit_vtable_callback_disconnectNotify
  gen_qdatetimeedit_types.QDateEdit(h: fcQDateEdit_new4(addr(vtbl[].vtbl), addr(vtbl[]), date.h, parent.h), owned: true)

const cQDateEdit_mvtbl = cQDateEditVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDateEdit()[])](self.fcQDateEdit_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQDateEdit_method_callback_metaObject,
  metacast: cQDateEdit_method_callback_metacast,
  metacall: cQDateEdit_method_callback_metacall,
  sizeHint: cQDateEdit_method_callback_sizeHint,
  clear: cQDateEdit_method_callback_clear,
  stepBy: cQDateEdit_method_callback_stepBy,
  event: cQDateEdit_method_callback_event,
  keyPressEvent: cQDateEdit_method_callback_keyPressEvent,
  wheelEvent: cQDateEdit_method_callback_wheelEvent,
  focusInEvent: cQDateEdit_method_callback_focusInEvent,
  focusNextPrevChild: cQDateEdit_method_callback_focusNextPrevChild,
  validate: cQDateEdit_method_callback_validate,
  fixup: cQDateEdit_method_callback_fixup,
  dateTimeFromText: cQDateEdit_method_callback_dateTimeFromText,
  textFromDateTime: cQDateEdit_method_callback_textFromDateTime,
  stepEnabled: cQDateEdit_method_callback_stepEnabled,
  mousePressEvent: cQDateEdit_method_callback_mousePressEvent,
  paintEvent: cQDateEdit_method_callback_paintEvent,
  initStyleOption: cQDateEdit_method_callback_initStyleOption,
  minimumSizeHint: cQDateEdit_method_callback_minimumSizeHint,
  inputMethodQuery: cQDateEdit_method_callback_inputMethodQuery,
  resizeEvent: cQDateEdit_method_callback_resizeEvent,
  keyReleaseEvent: cQDateEdit_method_callback_keyReleaseEvent,
  focusOutEvent: cQDateEdit_method_callback_focusOutEvent,
  contextMenuEvent: cQDateEdit_method_callback_contextMenuEvent,
  changeEvent: cQDateEdit_method_callback_changeEvent,
  closeEvent: cQDateEdit_method_callback_closeEvent,
  hideEvent: cQDateEdit_method_callback_hideEvent,
  mouseReleaseEvent: cQDateEdit_method_callback_mouseReleaseEvent,
  mouseMoveEvent: cQDateEdit_method_callback_mouseMoveEvent,
  timerEvent: cQDateEdit_method_callback_timerEvent,
  showEvent: cQDateEdit_method_callback_showEvent,
  devType: cQDateEdit_method_callback_devType,
  setVisible: cQDateEdit_method_callback_setVisible,
  heightForWidth: cQDateEdit_method_callback_heightForWidth,
  hasHeightForWidth: cQDateEdit_method_callback_hasHeightForWidth,
  paintEngine: cQDateEdit_method_callback_paintEngine,
  mouseDoubleClickEvent: cQDateEdit_method_callback_mouseDoubleClickEvent,
  enterEvent: cQDateEdit_method_callback_enterEvent,
  leaveEvent: cQDateEdit_method_callback_leaveEvent,
  moveEvent: cQDateEdit_method_callback_moveEvent,
  tabletEvent: cQDateEdit_method_callback_tabletEvent,
  actionEvent: cQDateEdit_method_callback_actionEvent,
  dragEnterEvent: cQDateEdit_method_callback_dragEnterEvent,
  dragMoveEvent: cQDateEdit_method_callback_dragMoveEvent,
  dragLeaveEvent: cQDateEdit_method_callback_dragLeaveEvent,
  dropEvent: cQDateEdit_method_callback_dropEvent,
  nativeEvent: cQDateEdit_method_callback_nativeEvent,
  metric: cQDateEdit_method_callback_metric,
  initPainter: cQDateEdit_method_callback_initPainter,
  redirected: cQDateEdit_method_callback_redirected,
  sharedPainter: cQDateEdit_method_callback_sharedPainter,
  inputMethodEvent: cQDateEdit_method_callback_inputMethodEvent,
  eventFilter: cQDateEdit_method_callback_eventFilter,
  childEvent: cQDateEdit_method_callback_childEvent,
  customEvent: cQDateEdit_method_callback_customEvent,
  connectNotify: cQDateEdit_method_callback_connectNotify,
  disconnectNotify: cQDateEdit_method_callback_disconnectNotify,
)
proc create*(T: type gen_qdatetimeedit_types.QDateEdit,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQDateEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDateEdit_new(addr(cQDateEdit_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qdatetimeedit_types.QDateEdit,
    inst: VirtualQDateEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDateEdit_new2(addr(cQDateEdit_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qdatetimeedit_types.QDateEdit,
    date: gen_qdatetime_types.QDate,
    inst: VirtualQDateEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDateEdit_new3(addr(cQDateEdit_mvtbl), addr(inst[]), date.h)
  inst[].owned = true

proc create*(T: type gen_qdatetimeedit_types.QDateEdit,
    date: gen_qdatetime_types.QDate, parent: gen_qwidget_types.QWidget,
    inst: VirtualQDateEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDateEdit_new4(addr(cQDateEdit_mvtbl), addr(inst[]), date.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qdatetimeedit_types.QDateEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDateEdit_staticMetaObject())
