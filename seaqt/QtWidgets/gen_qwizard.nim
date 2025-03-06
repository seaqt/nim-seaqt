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
{.compile("gen_qwizard.cpp", cflags).}


type QWizardWizardButtonEnum* = distinct cint
template BackButton*(_: type QWizardWizardButtonEnum): untyped = 0
template NextButton*(_: type QWizardWizardButtonEnum): untyped = 1
template CommitButton*(_: type QWizardWizardButtonEnum): untyped = 2
template FinishButton*(_: type QWizardWizardButtonEnum): untyped = 3
template CancelButton*(_: type QWizardWizardButtonEnum): untyped = 4
template HelpButton*(_: type QWizardWizardButtonEnum): untyped = 5
template CustomButton1*(_: type QWizardWizardButtonEnum): untyped = 6
template CustomButton2*(_: type QWizardWizardButtonEnum): untyped = 7
template CustomButton3*(_: type QWizardWizardButtonEnum): untyped = 8
template Stretch*(_: type QWizardWizardButtonEnum): untyped = 9
template NoButton*(_: type QWizardWizardButtonEnum): untyped = -1
template NStandardButtons*(_: type QWizardWizardButtonEnum): untyped = 6
template NButtons*(_: type QWizardWizardButtonEnum): untyped = 9


type QWizardWizardPixmapEnum* = distinct cint
template WatermarkPixmap*(_: type QWizardWizardPixmapEnum): untyped = 0
template LogoPixmap*(_: type QWizardWizardPixmapEnum): untyped = 1
template BannerPixmap*(_: type QWizardWizardPixmapEnum): untyped = 2
template BackgroundPixmap*(_: type QWizardWizardPixmapEnum): untyped = 3
template NPixmaps*(_: type QWizardWizardPixmapEnum): untyped = 4


type QWizardWizardStyleEnum* = distinct cint
template ClassicStyle*(_: type QWizardWizardStyleEnum): untyped = 0
template ModernStyle*(_: type QWizardWizardStyleEnum): untyped = 1
template MacStyle*(_: type QWizardWizardStyleEnum): untyped = 2
template AeroStyle*(_: type QWizardWizardStyleEnum): untyped = 3
template NStyles*(_: type QWizardWizardStyleEnum): untyped = 4


type QWizardWizardOptionEnum* = distinct cint
template IndependentPages*(_: type QWizardWizardOptionEnum): untyped = 1
template IgnoreSubTitles*(_: type QWizardWizardOptionEnum): untyped = 2
template ExtendedWatermarkPixmap*(_: type QWizardWizardOptionEnum): untyped = 4
template NoDefaultButton*(_: type QWizardWizardOptionEnum): untyped = 8
template NoBackButtonOnStartPage*(_: type QWizardWizardOptionEnum): untyped = 16
template NoBackButtonOnLastPage*(_: type QWizardWizardOptionEnum): untyped = 32
template DisabledBackButtonOnLastPage*(_: type QWizardWizardOptionEnum): untyped = 64
template HaveNextButtonOnLastPage*(_: type QWizardWizardOptionEnum): untyped = 128
template HaveFinishButtonOnEarlyPages*(_: type QWizardWizardOptionEnum): untyped = 256
template NoCancelButton*(_: type QWizardWizardOptionEnum): untyped = 512
template CancelButtonOnLeft*(_: type QWizardWizardOptionEnum): untyped = 1024
template HaveHelpButton*(_: type QWizardWizardOptionEnum): untyped = 2048
template HelpButtonOnRight*(_: type QWizardWizardOptionEnum): untyped = 4096
template HaveCustomButton1*(_: type QWizardWizardOptionEnum): untyped = 8192
template HaveCustomButton2*(_: type QWizardWizardOptionEnum): untyped = 16384
template HaveCustomButton3*(_: type QWizardWizardOptionEnum): untyped = 32768
template NoCancelButtonOnLastPage*(_: type QWizardWizardOptionEnum): untyped = 65536


import ./gen_qwizard_types
export gen_qwizard_types

import
  ../QtCore/gen_qcoreevent_types,
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
  ../QtGui/gen_qpixmap_types,
  ./gen_qabstractbutton_types,
  ./gen_qdialog,
  ./gen_qwidget
export
  gen_qcoreevent_types,
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
  gen_qpixmap_types,
  gen_qabstractbutton_types,
  gen_qdialog,
  gen_qwidget

type cQWizard*{.exportc: "QWizard", incompleteStruct.} = object
type cQWizardPage*{.exportc: "QWizardPage", incompleteStruct.} = object

proc fcQWizard_new(parent: pointer): ptr cQWizard {.importc: "QWizard_new".}
proc fcQWizard_new2(): ptr cQWizard {.importc: "QWizard_new2".}
proc fcQWizard_new3(parent: pointer, flags: cint): ptr cQWizard {.importc: "QWizard_new3".}
proc fcQWizard_metaObject(self: pointer, ): pointer {.importc: "QWizard_metaObject".}
proc fcQWizard_metacast(self: pointer, param1: cstring): pointer {.importc: "QWizard_metacast".}
proc fcQWizard_tr(s: cstring): struct_miqt_string {.importc: "QWizard_tr".}
proc fcQWizard_addPage(self: pointer, page: pointer): cint {.importc: "QWizard_addPage".}
proc fcQWizard_setPage(self: pointer, id: cint, page: pointer): void {.importc: "QWizard_setPage".}
proc fcQWizard_removePage(self: pointer, id: cint): void {.importc: "QWizard_removePage".}
proc fcQWizard_page(self: pointer, id: cint): pointer {.importc: "QWizard_page".}
proc fcQWizard_hasVisitedPage(self: pointer, id: cint): bool {.importc: "QWizard_hasVisitedPage".}
proc fcQWizard_visitedIds(self: pointer, ): struct_miqt_array {.importc: "QWizard_visitedIds".}
proc fcQWizard_pageIds(self: pointer, ): struct_miqt_array {.importc: "QWizard_pageIds".}
proc fcQWizard_setStartId(self: pointer, id: cint): void {.importc: "QWizard_setStartId".}
proc fcQWizard_startId(self: pointer, ): cint {.importc: "QWizard_startId".}
proc fcQWizard_currentPage(self: pointer, ): pointer {.importc: "QWizard_currentPage".}
proc fcQWizard_currentId(self: pointer, ): cint {.importc: "QWizard_currentId".}
proc fcQWizard_validateCurrentPage(self: pointer, ): bool {.importc: "QWizard_validateCurrentPage".}
proc fcQWizard_nextId(self: pointer, ): cint {.importc: "QWizard_nextId".}
proc fcQWizard_setField(self: pointer, name: struct_miqt_string, value: pointer): void {.importc: "QWizard_setField".}
proc fcQWizard_field(self: pointer, name: struct_miqt_string): pointer {.importc: "QWizard_field".}
proc fcQWizard_setWizardStyle(self: pointer, style: cint): void {.importc: "QWizard_setWizardStyle".}
proc fcQWizard_wizardStyle(self: pointer, ): cint {.importc: "QWizard_wizardStyle".}
proc fcQWizard_setOption(self: pointer, option: cint): void {.importc: "QWizard_setOption".}
proc fcQWizard_testOption(self: pointer, option: cint): bool {.importc: "QWizard_testOption".}
proc fcQWizard_setOptions(self: pointer, options: cint): void {.importc: "QWizard_setOptions".}
proc fcQWizard_options(self: pointer, ): cint {.importc: "QWizard_options".}
proc fcQWizard_setButtonText(self: pointer, which: cint, text: struct_miqt_string): void {.importc: "QWizard_setButtonText".}
proc fcQWizard_buttonText(self: pointer, which: cint): struct_miqt_string {.importc: "QWizard_buttonText".}
proc fcQWizard_setButtonLayout(self: pointer, layout: struct_miqt_array): void {.importc: "QWizard_setButtonLayout".}
proc fcQWizard_setButton(self: pointer, which: cint, button: pointer): void {.importc: "QWizard_setButton".}
proc fcQWizard_button(self: pointer, which: cint): pointer {.importc: "QWizard_button".}
proc fcQWizard_setTitleFormat(self: pointer, format: cint): void {.importc: "QWizard_setTitleFormat".}
proc fcQWizard_titleFormat(self: pointer, ): cint {.importc: "QWizard_titleFormat".}
proc fcQWizard_setSubTitleFormat(self: pointer, format: cint): void {.importc: "QWizard_setSubTitleFormat".}
proc fcQWizard_subTitleFormat(self: pointer, ): cint {.importc: "QWizard_subTitleFormat".}
proc fcQWizard_setPixmap(self: pointer, which: cint, pixmap: pointer): void {.importc: "QWizard_setPixmap".}
proc fcQWizard_pixmap(self: pointer, which: cint): pointer {.importc: "QWizard_pixmap".}
proc fcQWizard_setSideWidget(self: pointer, widget: pointer): void {.importc: "QWizard_setSideWidget".}
proc fcQWizard_sideWidget(self: pointer, ): pointer {.importc: "QWizard_sideWidget".}
proc fcQWizard_setDefaultProperty(self: pointer, className: cstring, property: cstring, changedSignal: cstring): void {.importc: "QWizard_setDefaultProperty".}
proc fcQWizard_setVisible(self: pointer, visible: bool): void {.importc: "QWizard_setVisible".}
proc fcQWizard_sizeHint(self: pointer, ): pointer {.importc: "QWizard_sizeHint".}
proc fcQWizard_currentIdChanged(self: pointer, id: cint): void {.importc: "QWizard_currentIdChanged".}
proc fcQWizard_connect_currentIdChanged(self: pointer, slot: int) {.importc: "QWizard_connect_currentIdChanged".}
proc fcQWizard_helpRequested(self: pointer, ): void {.importc: "QWizard_helpRequested".}
proc fcQWizard_connect_helpRequested(self: pointer, slot: int) {.importc: "QWizard_connect_helpRequested".}
proc fcQWizard_customButtonClicked(self: pointer, which: cint): void {.importc: "QWizard_customButtonClicked".}
proc fcQWizard_connect_customButtonClicked(self: pointer, slot: int) {.importc: "QWizard_connect_customButtonClicked".}
proc fcQWizard_pageAdded(self: pointer, id: cint): void {.importc: "QWizard_pageAdded".}
proc fcQWizard_connect_pageAdded(self: pointer, slot: int) {.importc: "QWizard_connect_pageAdded".}
proc fcQWizard_pageRemoved(self: pointer, id: cint): void {.importc: "QWizard_pageRemoved".}
proc fcQWizard_connect_pageRemoved(self: pointer, slot: int) {.importc: "QWizard_connect_pageRemoved".}
proc fcQWizard_back(self: pointer, ): void {.importc: "QWizard_back".}
proc fcQWizard_next(self: pointer, ): void {.importc: "QWizard_next".}
proc fcQWizard_setCurrentId(self: pointer, id: cint): void {.importc: "QWizard_setCurrentId".}
proc fcQWizard_restart(self: pointer, ): void {.importc: "QWizard_restart".}
proc fcQWizard_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWizard_tr2".}
proc fcQWizard_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWizard_tr3".}
proc fcQWizard_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QWizard_setOption2".}
proc fQWizard_virtualbase_validateCurrentPage(self: pointer, ): bool{.importc: "QWizard_virtualbase_validateCurrentPage".}
proc fcQWizard_override_virtual_validateCurrentPage(self: pointer, slot: int) {.importc: "QWizard_override_virtual_validateCurrentPage".}
proc fQWizard_virtualbase_nextId(self: pointer, ): cint{.importc: "QWizard_virtualbase_nextId".}
proc fcQWizard_override_virtual_nextId(self: pointer, slot: int) {.importc: "QWizard_override_virtual_nextId".}
proc fQWizard_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QWizard_virtualbase_setVisible".}
proc fcQWizard_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QWizard_override_virtual_setVisible".}
proc fQWizard_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QWizard_virtualbase_sizeHint".}
proc fcQWizard_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QWizard_override_virtual_sizeHint".}
proc fQWizard_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWizard_virtualbase_event".}
proc fcQWizard_override_virtual_event(self: pointer, slot: int) {.importc: "QWizard_override_virtual_event".}
proc fQWizard_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_resizeEvent".}
proc fcQWizard_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_resizeEvent".}
proc fQWizard_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_paintEvent".}
proc fcQWizard_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_paintEvent".}
proc fQWizard_virtualbase_done(self: pointer, resultVal: cint): void{.importc: "QWizard_virtualbase_done".}
proc fcQWizard_override_virtual_done(self: pointer, slot: int) {.importc: "QWizard_override_virtual_done".}
proc fQWizard_virtualbase_initializePage(self: pointer, id: cint): void{.importc: "QWizard_virtualbase_initializePage".}
proc fcQWizard_override_virtual_initializePage(self: pointer, slot: int) {.importc: "QWizard_override_virtual_initializePage".}
proc fQWizard_virtualbase_cleanupPage(self: pointer, id: cint): void{.importc: "QWizard_virtualbase_cleanupPage".}
proc fcQWizard_override_virtual_cleanupPage(self: pointer, slot: int) {.importc: "QWizard_override_virtual_cleanupPage".}
proc fQWizard_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QWizard_virtualbase_minimumSizeHint".}
proc fcQWizard_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QWizard_override_virtual_minimumSizeHint".}
proc fQWizard_virtualbase_open(self: pointer, ): void{.importc: "QWizard_virtualbase_open".}
proc fcQWizard_override_virtual_open(self: pointer, slot: int) {.importc: "QWizard_override_virtual_open".}
proc fQWizard_virtualbase_exec(self: pointer, ): cint{.importc: "QWizard_virtualbase_exec".}
proc fcQWizard_override_virtual_exec(self: pointer, slot: int) {.importc: "QWizard_override_virtual_exec".}
proc fQWizard_virtualbase_accept(self: pointer, ): void{.importc: "QWizard_virtualbase_accept".}
proc fcQWizard_override_virtual_accept(self: pointer, slot: int) {.importc: "QWizard_override_virtual_accept".}
proc fQWizard_virtualbase_reject(self: pointer, ): void{.importc: "QWizard_virtualbase_reject".}
proc fcQWizard_override_virtual_reject(self: pointer, slot: int) {.importc: "QWizard_override_virtual_reject".}
proc fQWizard_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QWizard_virtualbase_keyPressEvent".}
proc fcQWizard_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_keyPressEvent".}
proc fQWizard_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QWizard_virtualbase_closeEvent".}
proc fcQWizard_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_closeEvent".}
proc fQWizard_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QWizard_virtualbase_showEvent".}
proc fcQWizard_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_showEvent".}
proc fQWizard_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QWizard_virtualbase_contextMenuEvent".}
proc fcQWizard_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_contextMenuEvent".}
proc fQWizard_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QWizard_virtualbase_eventFilter".}
proc fcQWizard_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWizard_override_virtual_eventFilter".}
proc fQWizard_virtualbase_devType(self: pointer, ): cint{.importc: "QWizard_virtualbase_devType".}
proc fcQWizard_override_virtual_devType(self: pointer, slot: int) {.importc: "QWizard_override_virtual_devType".}
proc fQWizard_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QWizard_virtualbase_heightForWidth".}
proc fcQWizard_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QWizard_override_virtual_heightForWidth".}
proc fQWizard_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QWizard_virtualbase_hasHeightForWidth".}
proc fcQWizard_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QWizard_override_virtual_hasHeightForWidth".}
proc fQWizard_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QWizard_virtualbase_paintEngine".}
proc fcQWizard_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QWizard_override_virtual_paintEngine".}
proc fQWizard_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_mousePressEvent".}
proc fcQWizard_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_mousePressEvent".}
proc fQWizard_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_mouseReleaseEvent".}
proc fcQWizard_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_mouseReleaseEvent".}
proc fQWizard_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_mouseDoubleClickEvent".}
proc fcQWizard_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_mouseDoubleClickEvent".}
proc fQWizard_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_mouseMoveEvent".}
proc fcQWizard_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_mouseMoveEvent".}
proc fQWizard_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_wheelEvent".}
proc fcQWizard_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_wheelEvent".}
proc fQWizard_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_keyReleaseEvent".}
proc fcQWizard_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_keyReleaseEvent".}
proc fQWizard_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_focusInEvent".}
proc fcQWizard_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_focusInEvent".}
proc fQWizard_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_focusOutEvent".}
proc fcQWizard_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_focusOutEvent".}
proc fQWizard_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_enterEvent".}
proc fcQWizard_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_enterEvent".}
proc fQWizard_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_leaveEvent".}
proc fcQWizard_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_leaveEvent".}
proc fQWizard_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_moveEvent".}
proc fcQWizard_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_moveEvent".}
proc fQWizard_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_tabletEvent".}
proc fcQWizard_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_tabletEvent".}
proc fQWizard_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_actionEvent".}
proc fcQWizard_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_actionEvent".}
proc fQWizard_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_dragEnterEvent".}
proc fcQWizard_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_dragEnterEvent".}
proc fQWizard_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_dragMoveEvent".}
proc fcQWizard_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_dragMoveEvent".}
proc fQWizard_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_dragLeaveEvent".}
proc fcQWizard_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_dragLeaveEvent".}
proc fQWizard_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_dropEvent".}
proc fcQWizard_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_dropEvent".}
proc fQWizard_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_hideEvent".}
proc fcQWizard_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_hideEvent".}
proc fQWizard_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QWizard_virtualbase_nativeEvent".}
proc fcQWizard_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_nativeEvent".}
proc fQWizard_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QWizard_virtualbase_changeEvent".}
proc fcQWizard_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_changeEvent".}
proc fQWizard_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QWizard_virtualbase_metric".}
proc fcQWizard_override_virtual_metric(self: pointer, slot: int) {.importc: "QWizard_override_virtual_metric".}
proc fQWizard_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QWizard_virtualbase_initPainter".}
proc fcQWizard_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QWizard_override_virtual_initPainter".}
proc fQWizard_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QWizard_virtualbase_redirected".}
proc fcQWizard_override_virtual_redirected(self: pointer, slot: int) {.importc: "QWizard_override_virtual_redirected".}
proc fQWizard_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QWizard_virtualbase_sharedPainter".}
proc fcQWizard_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QWizard_override_virtual_sharedPainter".}
proc fQWizard_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QWizard_virtualbase_inputMethodEvent".}
proc fcQWizard_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_inputMethodEvent".}
proc fQWizard_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QWizard_virtualbase_inputMethodQuery".}
proc fcQWizard_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QWizard_override_virtual_inputMethodQuery".}
proc fQWizard_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QWizard_virtualbase_focusNextPrevChild".}
proc fcQWizard_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QWizard_override_virtual_focusNextPrevChild".}
proc fQWizard_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_timerEvent".}
proc fcQWizard_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_timerEvent".}
proc fQWizard_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_childEvent".}
proc fcQWizard_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_childEvent".}
proc fQWizard_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_customEvent".}
proc fcQWizard_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_customEvent".}
proc fQWizard_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWizard_virtualbase_connectNotify".}
proc fcQWizard_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWizard_override_virtual_connectNotify".}
proc fQWizard_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWizard_virtualbase_disconnectNotify".}
proc fcQWizard_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWizard_override_virtual_disconnectNotify".}
proc fcQWizard_delete(self: pointer) {.importc: "QWizard_delete".}
proc fcQWizardPage_new(parent: pointer): ptr cQWizardPage {.importc: "QWizardPage_new".}
proc fcQWizardPage_new2(): ptr cQWizardPage {.importc: "QWizardPage_new2".}
proc fcQWizardPage_metaObject(self: pointer, ): pointer {.importc: "QWizardPage_metaObject".}
proc fcQWizardPage_metacast(self: pointer, param1: cstring): pointer {.importc: "QWizardPage_metacast".}
proc fcQWizardPage_tr(s: cstring): struct_miqt_string {.importc: "QWizardPage_tr".}
proc fcQWizardPage_setTitle(self: pointer, title: struct_miqt_string): void {.importc: "QWizardPage_setTitle".}
proc fcQWizardPage_title(self: pointer, ): struct_miqt_string {.importc: "QWizardPage_title".}
proc fcQWizardPage_setSubTitle(self: pointer, subTitle: struct_miqt_string): void {.importc: "QWizardPage_setSubTitle".}
proc fcQWizardPage_subTitle(self: pointer, ): struct_miqt_string {.importc: "QWizardPage_subTitle".}
proc fcQWizardPage_setPixmap(self: pointer, which: cint, pixmap: pointer): void {.importc: "QWizardPage_setPixmap".}
proc fcQWizardPage_pixmap(self: pointer, which: cint): pointer {.importc: "QWizardPage_pixmap".}
proc fcQWizardPage_setFinalPage(self: pointer, finalPage: bool): void {.importc: "QWizardPage_setFinalPage".}
proc fcQWizardPage_isFinalPage(self: pointer, ): bool {.importc: "QWizardPage_isFinalPage".}
proc fcQWizardPage_setCommitPage(self: pointer, commitPage: bool): void {.importc: "QWizardPage_setCommitPage".}
proc fcQWizardPage_isCommitPage(self: pointer, ): bool {.importc: "QWizardPage_isCommitPage".}
proc fcQWizardPage_setButtonText(self: pointer, which: cint, text: struct_miqt_string): void {.importc: "QWizardPage_setButtonText".}
proc fcQWizardPage_buttonText(self: pointer, which: cint): struct_miqt_string {.importc: "QWizardPage_buttonText".}
proc fcQWizardPage_initializePage(self: pointer, ): void {.importc: "QWizardPage_initializePage".}
proc fcQWizardPage_cleanupPage(self: pointer, ): void {.importc: "QWizardPage_cleanupPage".}
proc fcQWizardPage_validatePage(self: pointer, ): bool {.importc: "QWizardPage_validatePage".}
proc fcQWizardPage_isComplete(self: pointer, ): bool {.importc: "QWizardPage_isComplete".}
proc fcQWizardPage_nextId(self: pointer, ): cint {.importc: "QWizardPage_nextId".}
proc fcQWizardPage_completeChanged(self: pointer, ): void {.importc: "QWizardPage_completeChanged".}
proc fcQWizardPage_connect_completeChanged(self: pointer, slot: int) {.importc: "QWizardPage_connect_completeChanged".}
proc fcQWizardPage_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWizardPage_tr2".}
proc fcQWizardPage_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWizardPage_tr3".}
proc fQWizardPage_virtualbase_initializePage(self: pointer, ): void{.importc: "QWizardPage_virtualbase_initializePage".}
proc fcQWizardPage_override_virtual_initializePage(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_initializePage".}
proc fQWizardPage_virtualbase_cleanupPage(self: pointer, ): void{.importc: "QWizardPage_virtualbase_cleanupPage".}
proc fcQWizardPage_override_virtual_cleanupPage(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_cleanupPage".}
proc fQWizardPage_virtualbase_validatePage(self: pointer, ): bool{.importc: "QWizardPage_virtualbase_validatePage".}
proc fcQWizardPage_override_virtual_validatePage(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_validatePage".}
proc fQWizardPage_virtualbase_isComplete(self: pointer, ): bool{.importc: "QWizardPage_virtualbase_isComplete".}
proc fcQWizardPage_override_virtual_isComplete(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_isComplete".}
proc fQWizardPage_virtualbase_nextId(self: pointer, ): cint{.importc: "QWizardPage_virtualbase_nextId".}
proc fcQWizardPage_override_virtual_nextId(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_nextId".}
proc fQWizardPage_virtualbase_devType(self: pointer, ): cint{.importc: "QWizardPage_virtualbase_devType".}
proc fcQWizardPage_override_virtual_devType(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_devType".}
proc fQWizardPage_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QWizardPage_virtualbase_setVisible".}
proc fcQWizardPage_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_setVisible".}
proc fQWizardPage_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QWizardPage_virtualbase_sizeHint".}
proc fcQWizardPage_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_sizeHint".}
proc fQWizardPage_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QWizardPage_virtualbase_minimumSizeHint".}
proc fcQWizardPage_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_minimumSizeHint".}
proc fQWizardPage_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QWizardPage_virtualbase_heightForWidth".}
proc fcQWizardPage_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_heightForWidth".}
proc fQWizardPage_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QWizardPage_virtualbase_hasHeightForWidth".}
proc fcQWizardPage_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_hasHeightForWidth".}
proc fQWizardPage_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QWizardPage_virtualbase_paintEngine".}
proc fcQWizardPage_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_paintEngine".}
proc fQWizardPage_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWizardPage_virtualbase_event".}
proc fcQWizardPage_override_virtual_event(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_event".}
proc fQWizardPage_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_mousePressEvent".}
proc fcQWizardPage_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_mousePressEvent".}
proc fQWizardPage_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_mouseReleaseEvent".}
proc fcQWizardPage_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_mouseReleaseEvent".}
proc fQWizardPage_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_mouseDoubleClickEvent".}
proc fcQWizardPage_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_mouseDoubleClickEvent".}
proc fQWizardPage_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_mouseMoveEvent".}
proc fcQWizardPage_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_mouseMoveEvent".}
proc fQWizardPage_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_wheelEvent".}
proc fcQWizardPage_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_wheelEvent".}
proc fQWizardPage_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_keyPressEvent".}
proc fcQWizardPage_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_keyPressEvent".}
proc fQWizardPage_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_keyReleaseEvent".}
proc fcQWizardPage_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_keyReleaseEvent".}
proc fQWizardPage_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_focusInEvent".}
proc fcQWizardPage_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_focusInEvent".}
proc fQWizardPage_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_focusOutEvent".}
proc fcQWizardPage_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_focusOutEvent".}
proc fQWizardPage_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_enterEvent".}
proc fcQWizardPage_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_enterEvent".}
proc fQWizardPage_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_leaveEvent".}
proc fcQWizardPage_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_leaveEvent".}
proc fQWizardPage_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_paintEvent".}
proc fcQWizardPage_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_paintEvent".}
proc fQWizardPage_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_moveEvent".}
proc fcQWizardPage_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_moveEvent".}
proc fQWizardPage_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_resizeEvent".}
proc fcQWizardPage_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_resizeEvent".}
proc fQWizardPage_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_closeEvent".}
proc fcQWizardPage_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_closeEvent".}
proc fQWizardPage_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_contextMenuEvent".}
proc fcQWizardPage_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_contextMenuEvent".}
proc fQWizardPage_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_tabletEvent".}
proc fcQWizardPage_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_tabletEvent".}
proc fQWizardPage_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_actionEvent".}
proc fcQWizardPage_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_actionEvent".}
proc fQWizardPage_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_dragEnterEvent".}
proc fcQWizardPage_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_dragEnterEvent".}
proc fQWizardPage_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_dragMoveEvent".}
proc fcQWizardPage_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_dragMoveEvent".}
proc fQWizardPage_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_dragLeaveEvent".}
proc fcQWizardPage_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_dragLeaveEvent".}
proc fQWizardPage_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_dropEvent".}
proc fcQWizardPage_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_dropEvent".}
proc fQWizardPage_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_showEvent".}
proc fcQWizardPage_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_showEvent".}
proc fQWizardPage_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_hideEvent".}
proc fcQWizardPage_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_hideEvent".}
proc fQWizardPage_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QWizardPage_virtualbase_nativeEvent".}
proc fcQWizardPage_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_nativeEvent".}
proc fQWizardPage_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QWizardPage_virtualbase_changeEvent".}
proc fcQWizardPage_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_changeEvent".}
proc fQWizardPage_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QWizardPage_virtualbase_metric".}
proc fcQWizardPage_override_virtual_metric(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_metric".}
proc fQWizardPage_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QWizardPage_virtualbase_initPainter".}
proc fcQWizardPage_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_initPainter".}
proc fQWizardPage_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QWizardPage_virtualbase_redirected".}
proc fcQWizardPage_override_virtual_redirected(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_redirected".}
proc fQWizardPage_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QWizardPage_virtualbase_sharedPainter".}
proc fcQWizardPage_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_sharedPainter".}
proc fQWizardPage_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QWizardPage_virtualbase_inputMethodEvent".}
proc fcQWizardPage_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_inputMethodEvent".}
proc fQWizardPage_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QWizardPage_virtualbase_inputMethodQuery".}
proc fcQWizardPage_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_inputMethodQuery".}
proc fQWizardPage_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QWizardPage_virtualbase_focusNextPrevChild".}
proc fcQWizardPage_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_focusNextPrevChild".}
proc fQWizardPage_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWizardPage_virtualbase_eventFilter".}
proc fcQWizardPage_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_eventFilter".}
proc fQWizardPage_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_timerEvent".}
proc fcQWizardPage_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_timerEvent".}
proc fQWizardPage_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_childEvent".}
proc fcQWizardPage_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_childEvent".}
proc fQWizardPage_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_customEvent".}
proc fcQWizardPage_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_customEvent".}
proc fQWizardPage_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWizardPage_virtualbase_connectNotify".}
proc fcQWizardPage_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_connectNotify".}
proc fQWizardPage_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWizardPage_virtualbase_disconnectNotify".}
proc fcQWizardPage_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_disconnectNotify".}
proc fcQWizardPage_delete(self: pointer) {.importc: "QWizardPage_delete".}


func init*(T: type gen_qwizard_types.QWizard, h: ptr cQWizard): gen_qwizard_types.QWizard =
  T(h: h)
proc create*(T: type gen_qwizard_types.QWizard, parent: gen_qwidget_types.QWidget): gen_qwizard_types.QWizard =
  gen_qwizard_types.QWizard.init(fcQWizard_new(parent.h))

proc create*(T: type gen_qwizard_types.QWizard, ): gen_qwizard_types.QWizard =
  gen_qwizard_types.QWizard.init(fcQWizard_new2())

proc create*(T: type gen_qwizard_types.QWizard, parent: gen_qwidget_types.QWidget, flags: cint): gen_qwizard_types.QWizard =
  gen_qwizard_types.QWizard.init(fcQWizard_new3(parent.h, cint(flags)))

proc metaObject*(self: gen_qwizard_types.QWizard, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWizard_metaObject(self.h))

proc metacast*(self: gen_qwizard_types.QWizard, param1: cstring): pointer =
  fcQWizard_metacast(self.h, param1)

proc tr*(_: type gen_qwizard_types.QWizard, s: cstring): string =
  let v_ms = fcQWizard_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addPage*(self: gen_qwizard_types.QWizard, page: gen_qwizard_types.QWizardPage): cint =
  fcQWizard_addPage(self.h, page.h)

proc setPage*(self: gen_qwizard_types.QWizard, id: cint, page: gen_qwizard_types.QWizardPage): void =
  fcQWizard_setPage(self.h, id, page.h)

proc removePage*(self: gen_qwizard_types.QWizard, id: cint): void =
  fcQWizard_removePage(self.h, id)

proc page*(self: gen_qwizard_types.QWizard, id: cint): gen_qwizard_types.QWizardPage =
  gen_qwizard_types.QWizardPage(h: fcQWizard_page(self.h, id))

proc hasVisitedPage*(self: gen_qwizard_types.QWizard, id: cint): bool =
  fcQWizard_hasVisitedPage(self.h, id)

proc visitedIds*(self: gen_qwizard_types.QWizard, ): seq[cint] =
  var v_ma = fcQWizard_visitedIds(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc pageIds*(self: gen_qwizard_types.QWizard, ): seq[cint] =
  var v_ma = fcQWizard_pageIds(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc setStartId*(self: gen_qwizard_types.QWizard, id: cint): void =
  fcQWizard_setStartId(self.h, id)

proc startId*(self: gen_qwizard_types.QWizard, ): cint =
  fcQWizard_startId(self.h)

proc currentPage*(self: gen_qwizard_types.QWizard, ): gen_qwizard_types.QWizardPage =
  gen_qwizard_types.QWizardPage(h: fcQWizard_currentPage(self.h))

proc currentId*(self: gen_qwizard_types.QWizard, ): cint =
  fcQWizard_currentId(self.h)

proc validateCurrentPage*(self: gen_qwizard_types.QWizard, ): bool =
  fcQWizard_validateCurrentPage(self.h)

proc nextId*(self: gen_qwizard_types.QWizard, ): cint =
  fcQWizard_nextId(self.h)

proc setField*(self: gen_qwizard_types.QWizard, name: string, value: gen_qvariant_types.QVariant): void =
  fcQWizard_setField(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), value.h)

proc field*(self: gen_qwizard_types.QWizard, name: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWizard_field(self.h, struct_miqt_string(data: name, len: csize_t(len(name)))))

proc setWizardStyle*(self: gen_qwizard_types.QWizard, style: cint): void =
  fcQWizard_setWizardStyle(self.h, cint(style))

proc wizardStyle*(self: gen_qwizard_types.QWizard, ): cint =
  cint(fcQWizard_wizardStyle(self.h))

proc setOption*(self: gen_qwizard_types.QWizard, option: cint): void =
  fcQWizard_setOption(self.h, cint(option))

proc testOption*(self: gen_qwizard_types.QWizard, option: cint): bool =
  fcQWizard_testOption(self.h, cint(option))

proc setOptions*(self: gen_qwizard_types.QWizard, options: cint): void =
  fcQWizard_setOptions(self.h, cint(options))

proc options*(self: gen_qwizard_types.QWizard, ): cint =
  cint(fcQWizard_options(self.h))

proc setButtonText*(self: gen_qwizard_types.QWizard, which: cint, text: string): void =
  fcQWizard_setButtonText(self.h, cint(which), struct_miqt_string(data: text, len: csize_t(len(text))))

proc buttonText*(self: gen_qwizard_types.QWizard, which: cint): string =
  let v_ms = fcQWizard_buttonText(self.h, cint(which))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setButtonLayout*(self: gen_qwizard_types.QWizard, layout: seq[cint]): void =
  var layout_CArray = newSeq[cint](len(layout))
  for i in 0..<len(layout):
    layout_CArray[i] = cint(layout[i])

  fcQWizard_setButtonLayout(self.h, struct_miqt_array(len: csize_t(len(layout)), data: if len(layout) == 0: nil else: addr(layout_CArray[0])))

proc setButton*(self: gen_qwizard_types.QWizard, which: cint, button: gen_qabstractbutton_types.QAbstractButton): void =
  fcQWizard_setButton(self.h, cint(which), button.h)

proc button*(self: gen_qwizard_types.QWizard, which: cint): gen_qabstractbutton_types.QAbstractButton =
  gen_qabstractbutton_types.QAbstractButton(h: fcQWizard_button(self.h, cint(which)))

proc setTitleFormat*(self: gen_qwizard_types.QWizard, format: cint): void =
  fcQWizard_setTitleFormat(self.h, cint(format))

proc titleFormat*(self: gen_qwizard_types.QWizard, ): cint =
  cint(fcQWizard_titleFormat(self.h))

proc setSubTitleFormat*(self: gen_qwizard_types.QWizard, format: cint): void =
  fcQWizard_setSubTitleFormat(self.h, cint(format))

proc subTitleFormat*(self: gen_qwizard_types.QWizard, ): cint =
  cint(fcQWizard_subTitleFormat(self.h))

proc setPixmap*(self: gen_qwizard_types.QWizard, which: cint, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQWizard_setPixmap(self.h, cint(which), pixmap.h)

proc pixmap*(self: gen_qwizard_types.QWizard, which: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQWizard_pixmap(self.h, cint(which)))

proc setSideWidget*(self: gen_qwizard_types.QWizard, widget: gen_qwidget_types.QWidget): void =
  fcQWizard_setSideWidget(self.h, widget.h)

proc sideWidget*(self: gen_qwizard_types.QWizard, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWizard_sideWidget(self.h))

proc setDefaultProperty*(self: gen_qwizard_types.QWizard, className: cstring, property: cstring, changedSignal: cstring): void =
  fcQWizard_setDefaultProperty(self.h, className, property, changedSignal)

proc setVisible*(self: gen_qwizard_types.QWizard, visible: bool): void =
  fcQWizard_setVisible(self.h, visible)

proc sizeHint*(self: gen_qwizard_types.QWizard, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWizard_sizeHint(self.h))

proc currentIdChanged*(self: gen_qwizard_types.QWizard, id: cint): void =
  fcQWizard_currentIdChanged(self.h, id)

type QWizardcurrentIdChangedSlot* = proc(id: cint)
proc miqt_exec_callback_QWizard_currentIdChanged(slot: int, id: cint) {.exportc.} =
  let nimfunc = cast[ptr QWizardcurrentIdChangedSlot](cast[pointer](slot))
  let slotval1 = id

  nimfunc[](slotval1)

proc oncurrentIdChanged*(self: gen_qwizard_types.QWizard, slot: QWizardcurrentIdChangedSlot) =
  var tmp = new QWizardcurrentIdChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_connect_currentIdChanged(self.h, cast[int](addr tmp[]))

proc helpRequested*(self: gen_qwizard_types.QWizard, ): void =
  fcQWizard_helpRequested(self.h)

type QWizardhelpRequestedSlot* = proc()
proc miqt_exec_callback_QWizard_helpRequested(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWizardhelpRequestedSlot](cast[pointer](slot))
  nimfunc[]()

proc onhelpRequested*(self: gen_qwizard_types.QWizard, slot: QWizardhelpRequestedSlot) =
  var tmp = new QWizardhelpRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_connect_helpRequested(self.h, cast[int](addr tmp[]))

proc customButtonClicked*(self: gen_qwizard_types.QWizard, which: cint): void =
  fcQWizard_customButtonClicked(self.h, which)

type QWizardcustomButtonClickedSlot* = proc(which: cint)
proc miqt_exec_callback_QWizard_customButtonClicked(slot: int, which: cint) {.exportc.} =
  let nimfunc = cast[ptr QWizardcustomButtonClickedSlot](cast[pointer](slot))
  let slotval1 = which

  nimfunc[](slotval1)

proc oncustomButtonClicked*(self: gen_qwizard_types.QWizard, slot: QWizardcustomButtonClickedSlot) =
  var tmp = new QWizardcustomButtonClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_connect_customButtonClicked(self.h, cast[int](addr tmp[]))

proc pageAdded*(self: gen_qwizard_types.QWizard, id: cint): void =
  fcQWizard_pageAdded(self.h, id)

type QWizardpageAddedSlot* = proc(id: cint)
proc miqt_exec_callback_QWizard_pageAdded(slot: int, id: cint) {.exportc.} =
  let nimfunc = cast[ptr QWizardpageAddedSlot](cast[pointer](slot))
  let slotval1 = id

  nimfunc[](slotval1)

proc onpageAdded*(self: gen_qwizard_types.QWizard, slot: QWizardpageAddedSlot) =
  var tmp = new QWizardpageAddedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_connect_pageAdded(self.h, cast[int](addr tmp[]))

proc pageRemoved*(self: gen_qwizard_types.QWizard, id: cint): void =
  fcQWizard_pageRemoved(self.h, id)

type QWizardpageRemovedSlot* = proc(id: cint)
proc miqt_exec_callback_QWizard_pageRemoved(slot: int, id: cint) {.exportc.} =
  let nimfunc = cast[ptr QWizardpageRemovedSlot](cast[pointer](slot))
  let slotval1 = id

  nimfunc[](slotval1)

proc onpageRemoved*(self: gen_qwizard_types.QWizard, slot: QWizardpageRemovedSlot) =
  var tmp = new QWizardpageRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_connect_pageRemoved(self.h, cast[int](addr tmp[]))

proc back*(self: gen_qwizard_types.QWizard, ): void =
  fcQWizard_back(self.h)

proc next*(self: gen_qwizard_types.QWizard, ): void =
  fcQWizard_next(self.h)

proc setCurrentId*(self: gen_qwizard_types.QWizard, id: cint): void =
  fcQWizard_setCurrentId(self.h, id)

proc restart*(self: gen_qwizard_types.QWizard, ): void =
  fcQWizard_restart(self.h)

proc tr*(_: type gen_qwizard_types.QWizard, s: cstring, c: cstring): string =
  let v_ms = fcQWizard_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwizard_types.QWizard, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWizard_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption*(self: gen_qwizard_types.QWizard, option: cint, on: bool): void =
  fcQWizard_setOption2(self.h, cint(option), on)

proc QWizardvalidateCurrentPage*(self: gen_qwizard_types.QWizard, ): bool =
  fQWizard_virtualbase_validateCurrentPage(self.h)

type QWizardvalidateCurrentPageProc* = proc(): bool
proc onvalidateCurrentPage*(self: gen_qwizard_types.QWizard, slot: QWizardvalidateCurrentPageProc) =
  # TODO check subclass
  var tmp = new QWizardvalidateCurrentPageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_validateCurrentPage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_validateCurrentPage(self: ptr cQWizard, slot: int): bool {.exportc: "miqt_exec_callback_QWizard_validateCurrentPage ".} =
  var nimfunc = cast[ptr QWizardvalidateCurrentPageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWizardnextId*(self: gen_qwizard_types.QWizard, ): cint =
  fQWizard_virtualbase_nextId(self.h)

type QWizardnextIdProc* = proc(): cint
proc onnextId*(self: gen_qwizard_types.QWizard, slot: QWizardnextIdProc) =
  # TODO check subclass
  var tmp = new QWizardnextIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_nextId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_nextId(self: ptr cQWizard, slot: int): cint {.exportc: "miqt_exec_callback_QWizard_nextId ".} =
  var nimfunc = cast[ptr QWizardnextIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWizardsetVisible*(self: gen_qwizard_types.QWizard, visible: bool): void =
  fQWizard_virtualbase_setVisible(self.h, visible)

type QWizardsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qwizard_types.QWizard, slot: QWizardsetVisibleProc) =
  # TODO check subclass
  var tmp = new QWizardsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_setVisible(self: ptr cQWizard, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QWizard_setVisible ".} =
  var nimfunc = cast[ptr QWizardsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QWizardsizeHint*(self: gen_qwizard_types.QWizard, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWizard_virtualbase_sizeHint(self.h))

type QWizardsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qwizard_types.QWizard, slot: QWizardsizeHintProc) =
  # TODO check subclass
  var tmp = new QWizardsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_sizeHint(self: ptr cQWizard, slot: int): pointer {.exportc: "miqt_exec_callback_QWizard_sizeHint ".} =
  var nimfunc = cast[ptr QWizardsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWizardevent*(self: gen_qwizard_types.QWizard, event: gen_qcoreevent_types.QEvent): bool =
  fQWizard_virtualbase_event(self.h, event.h)

type QWizardeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qwizard_types.QWizard, slot: QWizardeventProc) =
  # TODO check subclass
  var tmp = new QWizardeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_event(self: ptr cQWizard, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWizard_event ".} =
  var nimfunc = cast[ptr QWizardeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWizardresizeEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QResizeEvent): void =
  fQWizard_virtualbase_resizeEvent(self.h, event.h)

type QWizardresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qwizard_types.QWizard, slot: QWizardresizeEventProc) =
  # TODO check subclass
  var tmp = new QWizardresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_resizeEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_resizeEvent ".} =
  var nimfunc = cast[ptr QWizardresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QWizardpaintEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QPaintEvent): void =
  fQWizard_virtualbase_paintEvent(self.h, event.h)

type QWizardpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qwizard_types.QWizard, slot: QWizardpaintEventProc) =
  # TODO check subclass
  var tmp = new QWizardpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_paintEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_paintEvent ".} =
  var nimfunc = cast[ptr QWizardpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QWizarddone*(self: gen_qwizard_types.QWizard, resultVal: cint): void =
  fQWizard_virtualbase_done(self.h, resultVal)

type QWizarddoneProc* = proc(resultVal: cint): void
proc ondone*(self: gen_qwizard_types.QWizard, slot: QWizarddoneProc) =
  # TODO check subclass
  var tmp = new QWizarddoneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_done(self: ptr cQWizard, slot: int, resultVal: cint): void {.exportc: "miqt_exec_callback_QWizard_done ".} =
  var nimfunc = cast[ptr QWizarddoneProc](cast[pointer](slot))
  let slotval1 = resultVal


  nimfunc[](slotval1)
proc QWizardinitializePage*(self: gen_qwizard_types.QWizard, id: cint): void =
  fQWizard_virtualbase_initializePage(self.h, id)

type QWizardinitializePageProc* = proc(id: cint): void
proc oninitializePage*(self: gen_qwizard_types.QWizard, slot: QWizardinitializePageProc) =
  # TODO check subclass
  var tmp = new QWizardinitializePageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_initializePage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_initializePage(self: ptr cQWizard, slot: int, id: cint): void {.exportc: "miqt_exec_callback_QWizard_initializePage ".} =
  var nimfunc = cast[ptr QWizardinitializePageProc](cast[pointer](slot))
  let slotval1 = id


  nimfunc[](slotval1)
proc QWizardcleanupPage*(self: gen_qwizard_types.QWizard, id: cint): void =
  fQWizard_virtualbase_cleanupPage(self.h, id)

type QWizardcleanupPageProc* = proc(id: cint): void
proc oncleanupPage*(self: gen_qwizard_types.QWizard, slot: QWizardcleanupPageProc) =
  # TODO check subclass
  var tmp = new QWizardcleanupPageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_cleanupPage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_cleanupPage(self: ptr cQWizard, slot: int, id: cint): void {.exportc: "miqt_exec_callback_QWizard_cleanupPage ".} =
  var nimfunc = cast[ptr QWizardcleanupPageProc](cast[pointer](slot))
  let slotval1 = id


  nimfunc[](slotval1)
proc QWizardminimumSizeHint*(self: gen_qwizard_types.QWizard, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWizard_virtualbase_minimumSizeHint(self.h))

type QWizardminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qwizard_types.QWizard, slot: QWizardminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QWizardminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_minimumSizeHint(self: ptr cQWizard, slot: int): pointer {.exportc: "miqt_exec_callback_QWizard_minimumSizeHint ".} =
  var nimfunc = cast[ptr QWizardminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWizardopen*(self: gen_qwizard_types.QWizard, ): void =
  fQWizard_virtualbase_open(self.h)

type QWizardopenProc* = proc(): void
proc onopen*(self: gen_qwizard_types.QWizard, slot: QWizardopenProc) =
  # TODO check subclass
  var tmp = new QWizardopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_open(self: ptr cQWizard, slot: int): void {.exportc: "miqt_exec_callback_QWizard_open ".} =
  var nimfunc = cast[ptr QWizardopenProc](cast[pointer](slot))

  nimfunc[]()
proc QWizardexec*(self: gen_qwizard_types.QWizard, ): cint =
  fQWizard_virtualbase_exec(self.h)

type QWizardexecProc* = proc(): cint
proc onexec*(self: gen_qwizard_types.QWizard, slot: QWizardexecProc) =
  # TODO check subclass
  var tmp = new QWizardexecProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_exec(self: ptr cQWizard, slot: int): cint {.exportc: "miqt_exec_callback_QWizard_exec ".} =
  var nimfunc = cast[ptr QWizardexecProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWizardaccept*(self: gen_qwizard_types.QWizard, ): void =
  fQWizard_virtualbase_accept(self.h)

type QWizardacceptProc* = proc(): void
proc onaccept*(self: gen_qwizard_types.QWizard, slot: QWizardacceptProc) =
  # TODO check subclass
  var tmp = new QWizardacceptProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_accept(self: ptr cQWizard, slot: int): void {.exportc: "miqt_exec_callback_QWizard_accept ".} =
  var nimfunc = cast[ptr QWizardacceptProc](cast[pointer](slot))

  nimfunc[]()
proc QWizardreject*(self: gen_qwizard_types.QWizard, ): void =
  fQWizard_virtualbase_reject(self.h)

type QWizardrejectProc* = proc(): void
proc onreject*(self: gen_qwizard_types.QWizard, slot: QWizardrejectProc) =
  # TODO check subclass
  var tmp = new QWizardrejectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_reject(self: ptr cQWizard, slot: int): void {.exportc: "miqt_exec_callback_QWizard_reject ".} =
  var nimfunc = cast[ptr QWizardrejectProc](cast[pointer](slot))

  nimfunc[]()
proc QWizardkeyPressEvent*(self: gen_qwizard_types.QWizard, param1: gen_qevent_types.QKeyEvent): void =
  fQWizard_virtualbase_keyPressEvent(self.h, param1.h)

type QWizardkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qwizard_types.QWizard, slot: QWizardkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QWizardkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_keyPressEvent(self: ptr cQWizard, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWizard_keyPressEvent ".} =
  var nimfunc = cast[ptr QWizardkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QWizardcloseEvent*(self: gen_qwizard_types.QWizard, param1: gen_qevent_types.QCloseEvent): void =
  fQWizard_virtualbase_closeEvent(self.h, param1.h)

type QWizardcloseEventProc* = proc(param1: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qwizard_types.QWizard, slot: QWizardcloseEventProc) =
  # TODO check subclass
  var tmp = new QWizardcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_closeEvent(self: ptr cQWizard, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWizard_closeEvent ".} =
  var nimfunc = cast[ptr QWizardcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)


  nimfunc[](slotval1)
proc QWizardshowEvent*(self: gen_qwizard_types.QWizard, param1: gen_qevent_types.QShowEvent): void =
  fQWizard_virtualbase_showEvent(self.h, param1.h)

type QWizardshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qwizard_types.QWizard, slot: QWizardshowEventProc) =
  # TODO check subclass
  var tmp = new QWizardshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_showEvent(self: ptr cQWizard, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWizard_showEvent ".} =
  var nimfunc = cast[ptr QWizardshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QWizardcontextMenuEvent*(self: gen_qwizard_types.QWizard, param1: gen_qevent_types.QContextMenuEvent): void =
  fQWizard_virtualbase_contextMenuEvent(self.h, param1.h)

type QWizardcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qwizard_types.QWizard, slot: QWizardcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QWizardcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_contextMenuEvent(self: ptr cQWizard, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWizard_contextMenuEvent ".} =
  var nimfunc = cast[ptr QWizardcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QWizardeventFilter*(self: gen_qwizard_types.QWizard, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQWizard_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QWizardeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qwizard_types.QWizard, slot: QWizardeventFilterProc) =
  # TODO check subclass
  var tmp = new QWizardeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_eventFilter(self: ptr cQWizard, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QWizard_eventFilter ".} =
  var nimfunc = cast[ptr QWizardeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWizarddevType*(self: gen_qwizard_types.QWizard, ): cint =
  fQWizard_virtualbase_devType(self.h)

type QWizarddevTypeProc* = proc(): cint
proc ondevType*(self: gen_qwizard_types.QWizard, slot: QWizarddevTypeProc) =
  # TODO check subclass
  var tmp = new QWizarddevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_devType(self: ptr cQWizard, slot: int): cint {.exportc: "miqt_exec_callback_QWizard_devType ".} =
  var nimfunc = cast[ptr QWizarddevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWizardheightForWidth*(self: gen_qwizard_types.QWizard, param1: cint): cint =
  fQWizard_virtualbase_heightForWidth(self.h, param1)

type QWizardheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qwizard_types.QWizard, slot: QWizardheightForWidthProc) =
  # TODO check subclass
  var tmp = new QWizardheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_heightForWidth(self: ptr cQWizard, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWizard_heightForWidth ".} =
  var nimfunc = cast[ptr QWizardheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWizardhasHeightForWidth*(self: gen_qwizard_types.QWizard, ): bool =
  fQWizard_virtualbase_hasHeightForWidth(self.h)

type QWizardhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qwizard_types.QWizard, slot: QWizardhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QWizardhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_hasHeightForWidth(self: ptr cQWizard, slot: int): bool {.exportc: "miqt_exec_callback_QWizard_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QWizardhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWizardpaintEngine*(self: gen_qwizard_types.QWizard, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQWizard_virtualbase_paintEngine(self.h))

type QWizardpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qwizard_types.QWizard, slot: QWizardpaintEngineProc) =
  # TODO check subclass
  var tmp = new QWizardpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_paintEngine(self: ptr cQWizard, slot: int): pointer {.exportc: "miqt_exec_callback_QWizard_paintEngine ".} =
  var nimfunc = cast[ptr QWizardpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWizardmousePressEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QMouseEvent): void =
  fQWizard_virtualbase_mousePressEvent(self.h, event.h)

type QWizardmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qwizard_types.QWizard, slot: QWizardmousePressEventProc) =
  # TODO check subclass
  var tmp = new QWizardmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_mousePressEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_mousePressEvent ".} =
  var nimfunc = cast[ptr QWizardmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWizardmouseReleaseEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QMouseEvent): void =
  fQWizard_virtualbase_mouseReleaseEvent(self.h, event.h)

type QWizardmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qwizard_types.QWizard, slot: QWizardmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QWizardmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_mouseReleaseEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QWizardmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWizardmouseDoubleClickEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QMouseEvent): void =
  fQWizard_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QWizardmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qwizard_types.QWizard, slot: QWizardmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QWizardmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_mouseDoubleClickEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QWizardmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWizardmouseMoveEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QMouseEvent): void =
  fQWizard_virtualbase_mouseMoveEvent(self.h, event.h)

type QWizardmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qwizard_types.QWizard, slot: QWizardmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QWizardmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_mouseMoveEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QWizardmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWizardwheelEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QWheelEvent): void =
  fQWizard_virtualbase_wheelEvent(self.h, event.h)

type QWizardwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qwizard_types.QWizard, slot: QWizardwheelEventProc) =
  # TODO check subclass
  var tmp = new QWizardwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_wheelEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_wheelEvent ".} =
  var nimfunc = cast[ptr QWizardwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QWizardkeyReleaseEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QKeyEvent): void =
  fQWizard_virtualbase_keyReleaseEvent(self.h, event.h)

type QWizardkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qwizard_types.QWizard, slot: QWizardkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QWizardkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_keyReleaseEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QWizardkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QWizardfocusInEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QFocusEvent): void =
  fQWizard_virtualbase_focusInEvent(self.h, event.h)

type QWizardfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qwizard_types.QWizard, slot: QWizardfocusInEventProc) =
  # TODO check subclass
  var tmp = new QWizardfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_focusInEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_focusInEvent ".} =
  var nimfunc = cast[ptr QWizardfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QWizardfocusOutEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QFocusEvent): void =
  fQWizard_virtualbase_focusOutEvent(self.h, event.h)

type QWizardfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qwizard_types.QWizard, slot: QWizardfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QWizardfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_focusOutEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_focusOutEvent ".} =
  var nimfunc = cast[ptr QWizardfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QWizardenterEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QEnterEvent): void =
  fQWizard_virtualbase_enterEvent(self.h, event.h)

type QWizardenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qwizard_types.QWizard, slot: QWizardenterEventProc) =
  # TODO check subclass
  var tmp = new QWizardenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_enterEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_enterEvent ".} =
  var nimfunc = cast[ptr QWizardenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QWizardleaveEvent*(self: gen_qwizard_types.QWizard, event: gen_qcoreevent_types.QEvent): void =
  fQWizard_virtualbase_leaveEvent(self.h, event.h)

type QWizardleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qwizard_types.QWizard, slot: QWizardleaveEventProc) =
  # TODO check subclass
  var tmp = new QWizardleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_leaveEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_leaveEvent ".} =
  var nimfunc = cast[ptr QWizardleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWizardmoveEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QMoveEvent): void =
  fQWizard_virtualbase_moveEvent(self.h, event.h)

type QWizardmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qwizard_types.QWizard, slot: QWizardmoveEventProc) =
  # TODO check subclass
  var tmp = new QWizardmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_moveEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_moveEvent ".} =
  var nimfunc = cast[ptr QWizardmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QWizardtabletEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QTabletEvent): void =
  fQWizard_virtualbase_tabletEvent(self.h, event.h)

type QWizardtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qwizard_types.QWizard, slot: QWizardtabletEventProc) =
  # TODO check subclass
  var tmp = new QWizardtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_tabletEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_tabletEvent ".} =
  var nimfunc = cast[ptr QWizardtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QWizardactionEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QActionEvent): void =
  fQWizard_virtualbase_actionEvent(self.h, event.h)

type QWizardactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qwizard_types.QWizard, slot: QWizardactionEventProc) =
  # TODO check subclass
  var tmp = new QWizardactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_actionEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_actionEvent ".} =
  var nimfunc = cast[ptr QWizardactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QWizarddragEnterEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QDragEnterEvent): void =
  fQWizard_virtualbase_dragEnterEvent(self.h, event.h)

type QWizarddragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qwizard_types.QWizard, slot: QWizarddragEnterEventProc) =
  # TODO check subclass
  var tmp = new QWizarddragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_dragEnterEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_dragEnterEvent ".} =
  var nimfunc = cast[ptr QWizarddragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QWizarddragMoveEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QDragMoveEvent): void =
  fQWizard_virtualbase_dragMoveEvent(self.h, event.h)

type QWizarddragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qwizard_types.QWizard, slot: QWizarddragMoveEventProc) =
  # TODO check subclass
  var tmp = new QWizarddragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_dragMoveEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_dragMoveEvent ".} =
  var nimfunc = cast[ptr QWizarddragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QWizarddragLeaveEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QDragLeaveEvent): void =
  fQWizard_virtualbase_dragLeaveEvent(self.h, event.h)

type QWizarddragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qwizard_types.QWizard, slot: QWizarddragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QWizarddragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_dragLeaveEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QWizarddragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QWizarddropEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QDropEvent): void =
  fQWizard_virtualbase_dropEvent(self.h, event.h)

type QWizarddropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qwizard_types.QWizard, slot: QWizarddropEventProc) =
  # TODO check subclass
  var tmp = new QWizarddropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_dropEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_dropEvent ".} =
  var nimfunc = cast[ptr QWizarddropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QWizardhideEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QHideEvent): void =
  fQWizard_virtualbase_hideEvent(self.h, event.h)

type QWizardhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qwizard_types.QWizard, slot: QWizardhideEventProc) =
  # TODO check subclass
  var tmp = new QWizardhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_hideEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_hideEvent ".} =
  var nimfunc = cast[ptr QWizardhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QWizardnativeEvent*(self: gen_qwizard_types.QWizard, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQWizard_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QWizardnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qwizard_types.QWizard, slot: QWizardnativeEventProc) =
  # TODO check subclass
  var tmp = new QWizardnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_nativeEvent(self: ptr cQWizard, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QWizard_nativeEvent ".} =
  var nimfunc = cast[ptr QWizardnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QWizardchangeEvent*(self: gen_qwizard_types.QWizard, param1: gen_qcoreevent_types.QEvent): void =
  fQWizard_virtualbase_changeEvent(self.h, param1.h)

type QWizardchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qwizard_types.QWizard, slot: QWizardchangeEventProc) =
  # TODO check subclass
  var tmp = new QWizardchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_changeEvent(self: ptr cQWizard, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWizard_changeEvent ".} =
  var nimfunc = cast[ptr QWizardchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QWizardmetric*(self: gen_qwizard_types.QWizard, param1: cint): cint =
  fQWizard_virtualbase_metric(self.h, cint(param1))

type QWizardmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qwizard_types.QWizard, slot: QWizardmetricProc) =
  # TODO check subclass
  var tmp = new QWizardmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_metric(self: ptr cQWizard, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWizard_metric ".} =
  var nimfunc = cast[ptr QWizardmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWizardinitPainter*(self: gen_qwizard_types.QWizard, painter: gen_qpainter_types.QPainter): void =
  fQWizard_virtualbase_initPainter(self.h, painter.h)

type QWizardinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qwizard_types.QWizard, slot: QWizardinitPainterProc) =
  # TODO check subclass
  var tmp = new QWizardinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_initPainter(self: ptr cQWizard, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QWizard_initPainter ".} =
  var nimfunc = cast[ptr QWizardinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QWizardredirected*(self: gen_qwizard_types.QWizard, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQWizard_virtualbase_redirected(self.h, offset.h))

type QWizardredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qwizard_types.QWizard, slot: QWizardredirectedProc) =
  # TODO check subclass
  var tmp = new QWizardredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_redirected(self: ptr cQWizard, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QWizard_redirected ".} =
  var nimfunc = cast[ptr QWizardredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QWizardsharedPainter*(self: gen_qwizard_types.QWizard, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQWizard_virtualbase_sharedPainter(self.h))

type QWizardsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qwizard_types.QWizard, slot: QWizardsharedPainterProc) =
  # TODO check subclass
  var tmp = new QWizardsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_sharedPainter(self: ptr cQWizard, slot: int): pointer {.exportc: "miqt_exec_callback_QWizard_sharedPainter ".} =
  var nimfunc = cast[ptr QWizardsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWizardinputMethodEvent*(self: gen_qwizard_types.QWizard, param1: gen_qevent_types.QInputMethodEvent): void =
  fQWizard_virtualbase_inputMethodEvent(self.h, param1.h)

type QWizardinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qwizard_types.QWizard, slot: QWizardinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QWizardinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_inputMethodEvent(self: ptr cQWizard, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWizard_inputMethodEvent ".} =
  var nimfunc = cast[ptr QWizardinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QWizardinputMethodQuery*(self: gen_qwizard_types.QWizard, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQWizard_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QWizardinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qwizard_types.QWizard, slot: QWizardinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QWizardinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_inputMethodQuery(self: ptr cQWizard, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QWizard_inputMethodQuery ".} =
  var nimfunc = cast[ptr QWizardinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QWizardfocusNextPrevChild*(self: gen_qwizard_types.QWizard, next: bool): bool =
  fQWizard_virtualbase_focusNextPrevChild(self.h, next)

type QWizardfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qwizard_types.QWizard, slot: QWizardfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QWizardfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_focusNextPrevChild(self: ptr cQWizard, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QWizard_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QWizardfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWizardtimerEvent*(self: gen_qwizard_types.QWizard, event: gen_qcoreevent_types.QTimerEvent): void =
  fQWizard_virtualbase_timerEvent(self.h, event.h)

type QWizardtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qwizard_types.QWizard, slot: QWizardtimerEventProc) =
  # TODO check subclass
  var tmp = new QWizardtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_timerEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_timerEvent ".} =
  var nimfunc = cast[ptr QWizardtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWizardchildEvent*(self: gen_qwizard_types.QWizard, event: gen_qcoreevent_types.QChildEvent): void =
  fQWizard_virtualbase_childEvent(self.h, event.h)

type QWizardchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qwizard_types.QWizard, slot: QWizardchildEventProc) =
  # TODO check subclass
  var tmp = new QWizardchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_childEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_childEvent ".} =
  var nimfunc = cast[ptr QWizardchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWizardcustomEvent*(self: gen_qwizard_types.QWizard, event: gen_qcoreevent_types.QEvent): void =
  fQWizard_virtualbase_customEvent(self.h, event.h)

type QWizardcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qwizard_types.QWizard, slot: QWizardcustomEventProc) =
  # TODO check subclass
  var tmp = new QWizardcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_customEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_customEvent ".} =
  var nimfunc = cast[ptr QWizardcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWizardconnectNotify*(self: gen_qwizard_types.QWizard, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWizard_virtualbase_connectNotify(self.h, signal.h)

type QWizardconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qwizard_types.QWizard, slot: QWizardconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWizardconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_connectNotify(self: ptr cQWizard, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWizard_connectNotify ".} =
  var nimfunc = cast[ptr QWizardconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWizarddisconnectNotify*(self: gen_qwizard_types.QWizard, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWizard_virtualbase_disconnectNotify(self.h, signal.h)

type QWizarddisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwizard_types.QWizard, slot: QWizarddisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWizarddisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_disconnectNotify(self: ptr cQWizard, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWizard_disconnectNotify ".} =
  var nimfunc = cast[ptr QWizarddisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qwizard_types.QWizard) =
  fcQWizard_delete(self.h)

func init*(T: type gen_qwizard_types.QWizardPage, h: ptr cQWizardPage): gen_qwizard_types.QWizardPage =
  T(h: h)
proc create*(T: type gen_qwizard_types.QWizardPage, parent: gen_qwidget_types.QWidget): gen_qwizard_types.QWizardPage =
  gen_qwizard_types.QWizardPage.init(fcQWizardPage_new(parent.h))

proc create*(T: type gen_qwizard_types.QWizardPage, ): gen_qwizard_types.QWizardPage =
  gen_qwizard_types.QWizardPage.init(fcQWizardPage_new2())

proc metaObject*(self: gen_qwizard_types.QWizardPage, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWizardPage_metaObject(self.h))

proc metacast*(self: gen_qwizard_types.QWizardPage, param1: cstring): pointer =
  fcQWizardPage_metacast(self.h, param1)

proc tr*(_: type gen_qwizard_types.QWizardPage, s: cstring): string =
  let v_ms = fcQWizardPage_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTitle*(self: gen_qwizard_types.QWizardPage, title: string): void =
  fcQWizardPage_setTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc title*(self: gen_qwizard_types.QWizardPage, ): string =
  let v_ms = fcQWizardPage_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSubTitle*(self: gen_qwizard_types.QWizardPage, subTitle: string): void =
  fcQWizardPage_setSubTitle(self.h, struct_miqt_string(data: subTitle, len: csize_t(len(subTitle))))

proc subTitle*(self: gen_qwizard_types.QWizardPage, ): string =
  let v_ms = fcQWizardPage_subTitle(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPixmap*(self: gen_qwizard_types.QWizardPage, which: cint, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQWizardPage_setPixmap(self.h, cint(which), pixmap.h)

proc pixmap*(self: gen_qwizard_types.QWizardPage, which: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQWizardPage_pixmap(self.h, cint(which)))

proc setFinalPage*(self: gen_qwizard_types.QWizardPage, finalPage: bool): void =
  fcQWizardPage_setFinalPage(self.h, finalPage)

proc isFinalPage*(self: gen_qwizard_types.QWizardPage, ): bool =
  fcQWizardPage_isFinalPage(self.h)

proc setCommitPage*(self: gen_qwizard_types.QWizardPage, commitPage: bool): void =
  fcQWizardPage_setCommitPage(self.h, commitPage)

proc isCommitPage*(self: gen_qwizard_types.QWizardPage, ): bool =
  fcQWizardPage_isCommitPage(self.h)

proc setButtonText*(self: gen_qwizard_types.QWizardPage, which: cint, text: string): void =
  fcQWizardPage_setButtonText(self.h, cint(which), struct_miqt_string(data: text, len: csize_t(len(text))))

proc buttonText*(self: gen_qwizard_types.QWizardPage, which: cint): string =
  let v_ms = fcQWizardPage_buttonText(self.h, cint(which))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc initializePage*(self: gen_qwizard_types.QWizardPage, ): void =
  fcQWizardPage_initializePage(self.h)

proc cleanupPage*(self: gen_qwizard_types.QWizardPage, ): void =
  fcQWizardPage_cleanupPage(self.h)

proc validatePage*(self: gen_qwizard_types.QWizardPage, ): bool =
  fcQWizardPage_validatePage(self.h)

proc isComplete*(self: gen_qwizard_types.QWizardPage, ): bool =
  fcQWizardPage_isComplete(self.h)

proc nextId*(self: gen_qwizard_types.QWizardPage, ): cint =
  fcQWizardPage_nextId(self.h)

proc completeChanged*(self: gen_qwizard_types.QWizardPage, ): void =
  fcQWizardPage_completeChanged(self.h)

type QWizardPagecompleteChangedSlot* = proc()
proc miqt_exec_callback_QWizardPage_completeChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWizardPagecompleteChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oncompleteChanged*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagecompleteChangedSlot) =
  var tmp = new QWizardPagecompleteChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_connect_completeChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qwizard_types.QWizardPage, s: cstring, c: cstring): string =
  let v_ms = fcQWizardPage_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwizard_types.QWizardPage, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWizardPage_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QWizardPageinitializePage*(self: gen_qwizard_types.QWizardPage, ): void =
  fQWizardPage_virtualbase_initializePage(self.h)

type QWizardPageinitializePageProc* = proc(): void
proc oninitializePage*(self: gen_qwizard_types.QWizardPage, slot: QWizardPageinitializePageProc) =
  # TODO check subclass
  var tmp = new QWizardPageinitializePageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_initializePage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_initializePage(self: ptr cQWizardPage, slot: int): void {.exportc: "miqt_exec_callback_QWizardPage_initializePage ".} =
  var nimfunc = cast[ptr QWizardPageinitializePageProc](cast[pointer](slot))

  nimfunc[]()
proc QWizardPagecleanupPage*(self: gen_qwizard_types.QWizardPage, ): void =
  fQWizardPage_virtualbase_cleanupPage(self.h)

type QWizardPagecleanupPageProc* = proc(): void
proc oncleanupPage*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagecleanupPageProc) =
  # TODO check subclass
  var tmp = new QWizardPagecleanupPageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_cleanupPage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_cleanupPage(self: ptr cQWizardPage, slot: int): void {.exportc: "miqt_exec_callback_QWizardPage_cleanupPage ".} =
  var nimfunc = cast[ptr QWizardPagecleanupPageProc](cast[pointer](slot))

  nimfunc[]()
proc QWizardPagevalidatePage*(self: gen_qwizard_types.QWizardPage, ): bool =
  fQWizardPage_virtualbase_validatePage(self.h)

type QWizardPagevalidatePageProc* = proc(): bool
proc onvalidatePage*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagevalidatePageProc) =
  # TODO check subclass
  var tmp = new QWizardPagevalidatePageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_validatePage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_validatePage(self: ptr cQWizardPage, slot: int): bool {.exportc: "miqt_exec_callback_QWizardPage_validatePage ".} =
  var nimfunc = cast[ptr QWizardPagevalidatePageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWizardPageisComplete*(self: gen_qwizard_types.QWizardPage, ): bool =
  fQWizardPage_virtualbase_isComplete(self.h)

type QWizardPageisCompleteProc* = proc(): bool
proc onisComplete*(self: gen_qwizard_types.QWizardPage, slot: QWizardPageisCompleteProc) =
  # TODO check subclass
  var tmp = new QWizardPageisCompleteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_isComplete(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_isComplete(self: ptr cQWizardPage, slot: int): bool {.exportc: "miqt_exec_callback_QWizardPage_isComplete ".} =
  var nimfunc = cast[ptr QWizardPageisCompleteProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWizardPagenextId*(self: gen_qwizard_types.QWizardPage, ): cint =
  fQWizardPage_virtualbase_nextId(self.h)

type QWizardPagenextIdProc* = proc(): cint
proc onnextId*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagenextIdProc) =
  # TODO check subclass
  var tmp = new QWizardPagenextIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_nextId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_nextId(self: ptr cQWizardPage, slot: int): cint {.exportc: "miqt_exec_callback_QWizardPage_nextId ".} =
  var nimfunc = cast[ptr QWizardPagenextIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWizardPagedevType*(self: gen_qwizard_types.QWizardPage, ): cint =
  fQWizardPage_virtualbase_devType(self.h)

type QWizardPagedevTypeProc* = proc(): cint
proc ondevType*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagedevTypeProc) =
  # TODO check subclass
  var tmp = new QWizardPagedevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_devType(self: ptr cQWizardPage, slot: int): cint {.exportc: "miqt_exec_callback_QWizardPage_devType ".} =
  var nimfunc = cast[ptr QWizardPagedevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWizardPagesetVisible*(self: gen_qwizard_types.QWizardPage, visible: bool): void =
  fQWizardPage_virtualbase_setVisible(self.h, visible)

type QWizardPagesetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagesetVisibleProc) =
  # TODO check subclass
  var tmp = new QWizardPagesetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_setVisible(self: ptr cQWizardPage, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QWizardPage_setVisible ".} =
  var nimfunc = cast[ptr QWizardPagesetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QWizardPagesizeHint*(self: gen_qwizard_types.QWizardPage, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWizardPage_virtualbase_sizeHint(self.h))

type QWizardPagesizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagesizeHintProc) =
  # TODO check subclass
  var tmp = new QWizardPagesizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_sizeHint(self: ptr cQWizardPage, slot: int): pointer {.exportc: "miqt_exec_callback_QWizardPage_sizeHint ".} =
  var nimfunc = cast[ptr QWizardPagesizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWizardPageminimumSizeHint*(self: gen_qwizard_types.QWizardPage, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQWizardPage_virtualbase_minimumSizeHint(self.h))

type QWizardPageminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qwizard_types.QWizardPage, slot: QWizardPageminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QWizardPageminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_minimumSizeHint(self: ptr cQWizardPage, slot: int): pointer {.exportc: "miqt_exec_callback_QWizardPage_minimumSizeHint ".} =
  var nimfunc = cast[ptr QWizardPageminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWizardPageheightForWidth*(self: gen_qwizard_types.QWizardPage, param1: cint): cint =
  fQWizardPage_virtualbase_heightForWidth(self.h, param1)

type QWizardPageheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qwizard_types.QWizardPage, slot: QWizardPageheightForWidthProc) =
  # TODO check subclass
  var tmp = new QWizardPageheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_heightForWidth(self: ptr cQWizardPage, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWizardPage_heightForWidth ".} =
  var nimfunc = cast[ptr QWizardPageheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWizardPagehasHeightForWidth*(self: gen_qwizard_types.QWizardPage, ): bool =
  fQWizardPage_virtualbase_hasHeightForWidth(self.h)

type QWizardPagehasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagehasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QWizardPagehasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_hasHeightForWidth(self: ptr cQWizardPage, slot: int): bool {.exportc: "miqt_exec_callback_QWizardPage_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QWizardPagehasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWizardPagepaintEngine*(self: gen_qwizard_types.QWizardPage, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQWizardPage_virtualbase_paintEngine(self.h))

type QWizardPagepaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagepaintEngineProc) =
  # TODO check subclass
  var tmp = new QWizardPagepaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_paintEngine(self: ptr cQWizardPage, slot: int): pointer {.exportc: "miqt_exec_callback_QWizardPage_paintEngine ".} =
  var nimfunc = cast[ptr QWizardPagepaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWizardPageevent*(self: gen_qwizard_types.QWizardPage, event: gen_qcoreevent_types.QEvent): bool =
  fQWizardPage_virtualbase_event(self.h, event.h)

type QWizardPageeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPageeventProc) =
  # TODO check subclass
  var tmp = new QWizardPageeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_event(self: ptr cQWizardPage, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWizardPage_event ".} =
  var nimfunc = cast[ptr QWizardPageeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWizardPagemousePressEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QMouseEvent): void =
  fQWizardPage_virtualbase_mousePressEvent(self.h, event.h)

type QWizardPagemousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagemousePressEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagemousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_mousePressEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_mousePressEvent ".} =
  var nimfunc = cast[ptr QWizardPagemousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagemouseReleaseEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QMouseEvent): void =
  fQWizardPage_virtualbase_mouseReleaseEvent(self.h, event.h)

type QWizardPagemouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagemouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagemouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_mouseReleaseEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QWizardPagemouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagemouseDoubleClickEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QMouseEvent): void =
  fQWizardPage_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QWizardPagemouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagemouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagemouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_mouseDoubleClickEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QWizardPagemouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagemouseMoveEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QMouseEvent): void =
  fQWizardPage_virtualbase_mouseMoveEvent(self.h, event.h)

type QWizardPagemouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagemouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagemouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_mouseMoveEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QWizardPagemouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagewheelEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QWheelEvent): void =
  fQWizardPage_virtualbase_wheelEvent(self.h, event.h)

type QWizardPagewheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagewheelEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagewheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_wheelEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_wheelEvent ".} =
  var nimfunc = cast[ptr QWizardPagewheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagekeyPressEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QKeyEvent): void =
  fQWizardPage_virtualbase_keyPressEvent(self.h, event.h)

type QWizardPagekeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagekeyPressEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagekeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_keyPressEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_keyPressEvent ".} =
  var nimfunc = cast[ptr QWizardPagekeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagekeyReleaseEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QKeyEvent): void =
  fQWizardPage_virtualbase_keyReleaseEvent(self.h, event.h)

type QWizardPagekeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagekeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagekeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_keyReleaseEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QWizardPagekeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagefocusInEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QFocusEvent): void =
  fQWizardPage_virtualbase_focusInEvent(self.h, event.h)

type QWizardPagefocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagefocusInEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagefocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_focusInEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_focusInEvent ".} =
  var nimfunc = cast[ptr QWizardPagefocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagefocusOutEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QFocusEvent): void =
  fQWizardPage_virtualbase_focusOutEvent(self.h, event.h)

type QWizardPagefocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagefocusOutEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagefocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_focusOutEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_focusOutEvent ".} =
  var nimfunc = cast[ptr QWizardPagefocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPageenterEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QEnterEvent): void =
  fQWizardPage_virtualbase_enterEvent(self.h, event.h)

type QWizardPageenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPageenterEventProc) =
  # TODO check subclass
  var tmp = new QWizardPageenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_enterEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_enterEvent ".} =
  var nimfunc = cast[ptr QWizardPageenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPageleaveEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qcoreevent_types.QEvent): void =
  fQWizardPage_virtualbase_leaveEvent(self.h, event.h)

type QWizardPageleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPageleaveEventProc) =
  # TODO check subclass
  var tmp = new QWizardPageleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_leaveEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_leaveEvent ".} =
  var nimfunc = cast[ptr QWizardPageleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagepaintEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QPaintEvent): void =
  fQWizardPage_virtualbase_paintEvent(self.h, event.h)

type QWizardPagepaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagepaintEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagepaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_paintEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_paintEvent ".} =
  var nimfunc = cast[ptr QWizardPagepaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagemoveEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QMoveEvent): void =
  fQWizardPage_virtualbase_moveEvent(self.h, event.h)

type QWizardPagemoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagemoveEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagemoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_moveEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_moveEvent ".} =
  var nimfunc = cast[ptr QWizardPagemoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPageresizeEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QResizeEvent): void =
  fQWizardPage_virtualbase_resizeEvent(self.h, event.h)

type QWizardPageresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPageresizeEventProc) =
  # TODO check subclass
  var tmp = new QWizardPageresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_resizeEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_resizeEvent ".} =
  var nimfunc = cast[ptr QWizardPageresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagecloseEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QCloseEvent): void =
  fQWizardPage_virtualbase_closeEvent(self.h, event.h)

type QWizardPagecloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagecloseEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagecloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_closeEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_closeEvent ".} =
  var nimfunc = cast[ptr QWizardPagecloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagecontextMenuEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QContextMenuEvent): void =
  fQWizardPage_virtualbase_contextMenuEvent(self.h, event.h)

type QWizardPagecontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagecontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagecontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_contextMenuEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_contextMenuEvent ".} =
  var nimfunc = cast[ptr QWizardPagecontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagetabletEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QTabletEvent): void =
  fQWizardPage_virtualbase_tabletEvent(self.h, event.h)

type QWizardPagetabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagetabletEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagetabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_tabletEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_tabletEvent ".} =
  var nimfunc = cast[ptr QWizardPagetabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPageactionEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QActionEvent): void =
  fQWizardPage_virtualbase_actionEvent(self.h, event.h)

type QWizardPageactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPageactionEventProc) =
  # TODO check subclass
  var tmp = new QWizardPageactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_actionEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_actionEvent ".} =
  var nimfunc = cast[ptr QWizardPageactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagedragEnterEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QDragEnterEvent): void =
  fQWizardPage_virtualbase_dragEnterEvent(self.h, event.h)

type QWizardPagedragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagedragEnterEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagedragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_dragEnterEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_dragEnterEvent ".} =
  var nimfunc = cast[ptr QWizardPagedragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagedragMoveEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QDragMoveEvent): void =
  fQWizardPage_virtualbase_dragMoveEvent(self.h, event.h)

type QWizardPagedragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagedragMoveEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagedragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_dragMoveEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_dragMoveEvent ".} =
  var nimfunc = cast[ptr QWizardPagedragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagedragLeaveEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QDragLeaveEvent): void =
  fQWizardPage_virtualbase_dragLeaveEvent(self.h, event.h)

type QWizardPagedragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagedragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagedragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_dragLeaveEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QWizardPagedragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagedropEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QDropEvent): void =
  fQWizardPage_virtualbase_dropEvent(self.h, event.h)

type QWizardPagedropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagedropEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagedropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_dropEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_dropEvent ".} =
  var nimfunc = cast[ptr QWizardPagedropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPageshowEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QShowEvent): void =
  fQWizardPage_virtualbase_showEvent(self.h, event.h)

type QWizardPageshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPageshowEventProc) =
  # TODO check subclass
  var tmp = new QWizardPageshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_showEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_showEvent ".} =
  var nimfunc = cast[ptr QWizardPageshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagehideEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QHideEvent): void =
  fQWizardPage_virtualbase_hideEvent(self.h, event.h)

type QWizardPagehideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagehideEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagehideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_hideEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_hideEvent ".} =
  var nimfunc = cast[ptr QWizardPagehideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagenativeEvent*(self: gen_qwizard_types.QWizardPage, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQWizardPage_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QWizardPagenativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagenativeEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagenativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_nativeEvent(self: ptr cQWizardPage, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QWizardPage_nativeEvent ".} =
  var nimfunc = cast[ptr QWizardPagenativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QWizardPagechangeEvent*(self: gen_qwizard_types.QWizardPage, param1: gen_qcoreevent_types.QEvent): void =
  fQWizardPage_virtualbase_changeEvent(self.h, param1.h)

type QWizardPagechangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagechangeEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagechangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_changeEvent(self: ptr cQWizardPage, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_changeEvent ".} =
  var nimfunc = cast[ptr QWizardPagechangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QWizardPagemetric*(self: gen_qwizard_types.QWizardPage, param1: cint): cint =
  fQWizardPage_virtualbase_metric(self.h, cint(param1))

type QWizardPagemetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagemetricProc) =
  # TODO check subclass
  var tmp = new QWizardPagemetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_metric(self: ptr cQWizardPage, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWizardPage_metric ".} =
  var nimfunc = cast[ptr QWizardPagemetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWizardPageinitPainter*(self: gen_qwizard_types.QWizardPage, painter: gen_qpainter_types.QPainter): void =
  fQWizardPage_virtualbase_initPainter(self.h, painter.h)

type QWizardPageinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qwizard_types.QWizardPage, slot: QWizardPageinitPainterProc) =
  # TODO check subclass
  var tmp = new QWizardPageinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_initPainter(self: ptr cQWizardPage, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_initPainter ".} =
  var nimfunc = cast[ptr QWizardPageinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QWizardPageredirected*(self: gen_qwizard_types.QWizardPage, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQWizardPage_virtualbase_redirected(self.h, offset.h))

type QWizardPageredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qwizard_types.QWizardPage, slot: QWizardPageredirectedProc) =
  # TODO check subclass
  var tmp = new QWizardPageredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_redirected(self: ptr cQWizardPage, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QWizardPage_redirected ".} =
  var nimfunc = cast[ptr QWizardPageredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QWizardPagesharedPainter*(self: gen_qwizard_types.QWizardPage, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQWizardPage_virtualbase_sharedPainter(self.h))

type QWizardPagesharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagesharedPainterProc) =
  # TODO check subclass
  var tmp = new QWizardPagesharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_sharedPainter(self: ptr cQWizardPage, slot: int): pointer {.exportc: "miqt_exec_callback_QWizardPage_sharedPainter ".} =
  var nimfunc = cast[ptr QWizardPagesharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWizardPageinputMethodEvent*(self: gen_qwizard_types.QWizardPage, param1: gen_qevent_types.QInputMethodEvent): void =
  fQWizardPage_virtualbase_inputMethodEvent(self.h, param1.h)

type QWizardPageinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPageinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QWizardPageinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_inputMethodEvent(self: ptr cQWizardPage, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_inputMethodEvent ".} =
  var nimfunc = cast[ptr QWizardPageinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QWizardPageinputMethodQuery*(self: gen_qwizard_types.QWizardPage, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQWizardPage_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QWizardPageinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qwizard_types.QWizardPage, slot: QWizardPageinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QWizardPageinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_inputMethodQuery(self: ptr cQWizardPage, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QWizardPage_inputMethodQuery ".} =
  var nimfunc = cast[ptr QWizardPageinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QWizardPagefocusNextPrevChild*(self: gen_qwizard_types.QWizardPage, next: bool): bool =
  fQWizardPage_virtualbase_focusNextPrevChild(self.h, next)

type QWizardPagefocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagefocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QWizardPagefocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_focusNextPrevChild(self: ptr cQWizardPage, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QWizardPage_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QWizardPagefocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWizardPageeventFilter*(self: gen_qwizard_types.QWizardPage, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQWizardPage_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWizardPageeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qwizard_types.QWizardPage, slot: QWizardPageeventFilterProc) =
  # TODO check subclass
  var tmp = new QWizardPageeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_eventFilter(self: ptr cQWizardPage, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWizardPage_eventFilter ".} =
  var nimfunc = cast[ptr QWizardPageeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWizardPagetimerEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qcoreevent_types.QTimerEvent): void =
  fQWizardPage_virtualbase_timerEvent(self.h, event.h)

type QWizardPagetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagetimerEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_timerEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_timerEvent ".} =
  var nimfunc = cast[ptr QWizardPagetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagechildEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qcoreevent_types.QChildEvent): void =
  fQWizardPage_virtualbase_childEvent(self.h, event.h)

type QWizardPagechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagechildEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_childEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_childEvent ".} =
  var nimfunc = cast[ptr QWizardPagechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPagecustomEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qcoreevent_types.QEvent): void =
  fQWizardPage_virtualbase_customEvent(self.h, event.h)

type QWizardPagecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagecustomEventProc) =
  # TODO check subclass
  var tmp = new QWizardPagecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_customEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_customEvent ".} =
  var nimfunc = cast[ptr QWizardPagecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWizardPageconnectNotify*(self: gen_qwizard_types.QWizardPage, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWizardPage_virtualbase_connectNotify(self.h, signal.h)

type QWizardPageconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qwizard_types.QWizardPage, slot: QWizardPageconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWizardPageconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_connectNotify(self: ptr cQWizardPage, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_connectNotify ".} =
  var nimfunc = cast[ptr QWizardPageconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWizardPagedisconnectNotify*(self: gen_qwizard_types.QWizardPage, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWizardPage_virtualbase_disconnectNotify(self.h, signal.h)

type QWizardPagedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWizardPagedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_disconnectNotify(self: ptr cQWizardPage, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_disconnectNotify ".} =
  var nimfunc = cast[ptr QWizardPagedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qwizard_types.QWizardPage) =
  fcQWizardPage_delete(self.h)
