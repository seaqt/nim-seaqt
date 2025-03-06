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

proc fcQWizard_metaObject(self: pointer, ): pointer {.importc: "QWizard_metaObject".}
proc fcQWizard_metacast(self: pointer, param1: cstring): pointer {.importc: "QWizard_metacast".}
proc fcQWizard_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWizard_metacall".}
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
proc fcQWizard_connect_currentIdChanged(self: pointer, slot: int, callback: proc (slot: int, id: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWizard_connect_currentIdChanged".}
proc fcQWizard_helpRequested(self: pointer, ): void {.importc: "QWizard_helpRequested".}
proc fcQWizard_connect_helpRequested(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWizard_connect_helpRequested".}
proc fcQWizard_customButtonClicked(self: pointer, which: cint): void {.importc: "QWizard_customButtonClicked".}
proc fcQWizard_connect_customButtonClicked(self: pointer, slot: int, callback: proc (slot: int, which: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWizard_connect_customButtonClicked".}
proc fcQWizard_pageAdded(self: pointer, id: cint): void {.importc: "QWizard_pageAdded".}
proc fcQWizard_connect_pageAdded(self: pointer, slot: int, callback: proc (slot: int, id: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWizard_connect_pageAdded".}
proc fcQWizard_pageRemoved(self: pointer, id: cint): void {.importc: "QWizard_pageRemoved".}
proc fcQWizard_connect_pageRemoved(self: pointer, slot: int, callback: proc (slot: int, id: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWizard_connect_pageRemoved".}
proc fcQWizard_back(self: pointer, ): void {.importc: "QWizard_back".}
proc fcQWizard_next(self: pointer, ): void {.importc: "QWizard_next".}
proc fcQWizard_setCurrentId(self: pointer, id: cint): void {.importc: "QWizard_setCurrentId".}
proc fcQWizard_restart(self: pointer, ): void {.importc: "QWizard_restart".}
proc fcQWizard_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWizard_tr2".}
proc fcQWizard_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWizard_tr3".}
proc fcQWizard_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QWizard_setOption2".}
type cQWizardVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQWizardVTable, self: ptr cQWizard) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  validateCurrentPage*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  nextId*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  done*: proc(vtbl, self: pointer, resultVal: cint): void {.cdecl, raises: [], gcsafe.}
  initializePage*: proc(vtbl, self: pointer, id: cint): void {.cdecl, raises: [], gcsafe.}
  cleanupPage*: proc(vtbl, self: pointer, id: cint): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  accept*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  reject*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQWizard_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QWizard_virtualbase_metaObject".}
proc fcQWizard_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWizard_virtualbase_metacast".}
proc fcQWizard_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWizard_virtualbase_metacall".}
proc fcQWizard_virtualbase_validateCurrentPage(self: pointer, ): bool {.importc: "QWizard_virtualbase_validateCurrentPage".}
proc fcQWizard_virtualbase_nextId(self: pointer, ): cint {.importc: "QWizard_virtualbase_nextId".}
proc fcQWizard_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QWizard_virtualbase_setVisible".}
proc fcQWizard_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QWizard_virtualbase_sizeHint".}
proc fcQWizard_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWizard_virtualbase_event".}
proc fcQWizard_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_resizeEvent".}
proc fcQWizard_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_paintEvent".}
proc fcQWizard_virtualbase_done(self: pointer, resultVal: cint): void {.importc: "QWizard_virtualbase_done".}
proc fcQWizard_virtualbase_initializePage(self: pointer, id: cint): void {.importc: "QWizard_virtualbase_initializePage".}
proc fcQWizard_virtualbase_cleanupPage(self: pointer, id: cint): void {.importc: "QWizard_virtualbase_cleanupPage".}
proc fcQWizard_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QWizard_virtualbase_minimumSizeHint".}
proc fcQWizard_virtualbase_open(self: pointer, ): void {.importc: "QWizard_virtualbase_open".}
proc fcQWizard_virtualbase_exec(self: pointer, ): cint {.importc: "QWizard_virtualbase_exec".}
proc fcQWizard_virtualbase_accept(self: pointer, ): void {.importc: "QWizard_virtualbase_accept".}
proc fcQWizard_virtualbase_reject(self: pointer, ): void {.importc: "QWizard_virtualbase_reject".}
proc fcQWizard_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QWizard_virtualbase_keyPressEvent".}
proc fcQWizard_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QWizard_virtualbase_closeEvent".}
proc fcQWizard_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QWizard_virtualbase_showEvent".}
proc fcQWizard_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QWizard_virtualbase_contextMenuEvent".}
proc fcQWizard_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QWizard_virtualbase_eventFilter".}
proc fcQWizard_virtualbase_devType(self: pointer, ): cint {.importc: "QWizard_virtualbase_devType".}
proc fcQWizard_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QWizard_virtualbase_heightForWidth".}
proc fcQWizard_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QWizard_virtualbase_hasHeightForWidth".}
proc fcQWizard_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QWizard_virtualbase_paintEngine".}
proc fcQWizard_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_mousePressEvent".}
proc fcQWizard_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_mouseReleaseEvent".}
proc fcQWizard_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_mouseDoubleClickEvent".}
proc fcQWizard_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_mouseMoveEvent".}
proc fcQWizard_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_wheelEvent".}
proc fcQWizard_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_keyReleaseEvent".}
proc fcQWizard_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_focusInEvent".}
proc fcQWizard_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_focusOutEvent".}
proc fcQWizard_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_enterEvent".}
proc fcQWizard_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_leaveEvent".}
proc fcQWizard_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_moveEvent".}
proc fcQWizard_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_tabletEvent".}
proc fcQWizard_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_actionEvent".}
proc fcQWizard_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_dragEnterEvent".}
proc fcQWizard_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_dragMoveEvent".}
proc fcQWizard_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_dragLeaveEvent".}
proc fcQWizard_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_dropEvent".}
proc fcQWizard_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_hideEvent".}
proc fcQWizard_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QWizard_virtualbase_nativeEvent".}
proc fcQWizard_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QWizard_virtualbase_changeEvent".}
proc fcQWizard_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QWizard_virtualbase_metric".}
proc fcQWizard_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QWizard_virtualbase_initPainter".}
proc fcQWizard_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QWizard_virtualbase_redirected".}
proc fcQWizard_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QWizard_virtualbase_sharedPainter".}
proc fcQWizard_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QWizard_virtualbase_inputMethodEvent".}
proc fcQWizard_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QWizard_virtualbase_inputMethodQuery".}
proc fcQWizard_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QWizard_virtualbase_focusNextPrevChild".}
proc fcQWizard_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_timerEvent".}
proc fcQWizard_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_childEvent".}
proc fcQWizard_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWizard_virtualbase_customEvent".}
proc fcQWizard_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWizard_virtualbase_connectNotify".}
proc fcQWizard_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWizard_virtualbase_disconnectNotify".}
proc fcQWizard_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QWizard_protectedbase_adjustPosition".}
proc fcQWizard_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QWizard_protectedbase_updateMicroFocus".}
proc fcQWizard_protectedbase_create(self: pointer, ): void {.importc: "QWizard_protectedbase_create".}
proc fcQWizard_protectedbase_destroy(self: pointer, ): void {.importc: "QWizard_protectedbase_destroy".}
proc fcQWizard_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QWizard_protectedbase_focusNextChild".}
proc fcQWizard_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QWizard_protectedbase_focusPreviousChild".}
proc fcQWizard_protectedbase_sender(self: pointer, ): pointer {.importc: "QWizard_protectedbase_sender".}
proc fcQWizard_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QWizard_protectedbase_senderSignalIndex".}
proc fcQWizard_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWizard_protectedbase_receivers".}
proc fcQWizard_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWizard_protectedbase_isSignalConnected".}
proc fcQWizard_new(vtbl: pointer, parent: pointer): ptr cQWizard {.importc: "QWizard_new".}
proc fcQWizard_new2(vtbl: pointer, ): ptr cQWizard {.importc: "QWizard_new2".}
proc fcQWizard_new3(vtbl: pointer, parent: pointer, flags: cint): ptr cQWizard {.importc: "QWizard_new3".}
proc fcQWizard_staticMetaObject(): pointer {.importc: "QWizard_staticMetaObject".}
proc fcQWizardPage_metaObject(self: pointer, ): pointer {.importc: "QWizardPage_metaObject".}
proc fcQWizardPage_metacast(self: pointer, param1: cstring): pointer {.importc: "QWizardPage_metacast".}
proc fcQWizardPage_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWizardPage_metacall".}
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
proc fcQWizardPage_connect_completeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWizardPage_connect_completeChanged".}
proc fcQWizardPage_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWizardPage_tr2".}
proc fcQWizardPage_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWizardPage_tr3".}
type cQWizardPageVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQWizardPageVTable, self: ptr cQWizardPage) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  initializePage*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  cleanupPage*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  validatePage*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  isComplete*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  nextId*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWizardPage_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QWizardPage_virtualbase_metaObject".}
proc fcQWizardPage_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWizardPage_virtualbase_metacast".}
proc fcQWizardPage_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWizardPage_virtualbase_metacall".}
proc fcQWizardPage_virtualbase_initializePage(self: pointer, ): void {.importc: "QWizardPage_virtualbase_initializePage".}
proc fcQWizardPage_virtualbase_cleanupPage(self: pointer, ): void {.importc: "QWizardPage_virtualbase_cleanupPage".}
proc fcQWizardPage_virtualbase_validatePage(self: pointer, ): bool {.importc: "QWizardPage_virtualbase_validatePage".}
proc fcQWizardPage_virtualbase_isComplete(self: pointer, ): bool {.importc: "QWizardPage_virtualbase_isComplete".}
proc fcQWizardPage_virtualbase_nextId(self: pointer, ): cint {.importc: "QWizardPage_virtualbase_nextId".}
proc fcQWizardPage_virtualbase_devType(self: pointer, ): cint {.importc: "QWizardPage_virtualbase_devType".}
proc fcQWizardPage_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QWizardPage_virtualbase_setVisible".}
proc fcQWizardPage_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QWizardPage_virtualbase_sizeHint".}
proc fcQWizardPage_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QWizardPage_virtualbase_minimumSizeHint".}
proc fcQWizardPage_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QWizardPage_virtualbase_heightForWidth".}
proc fcQWizardPage_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QWizardPage_virtualbase_hasHeightForWidth".}
proc fcQWizardPage_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QWizardPage_virtualbase_paintEngine".}
proc fcQWizardPage_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWizardPage_virtualbase_event".}
proc fcQWizardPage_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_mousePressEvent".}
proc fcQWizardPage_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_mouseReleaseEvent".}
proc fcQWizardPage_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_mouseDoubleClickEvent".}
proc fcQWizardPage_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_mouseMoveEvent".}
proc fcQWizardPage_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_wheelEvent".}
proc fcQWizardPage_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_keyPressEvent".}
proc fcQWizardPage_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_keyReleaseEvent".}
proc fcQWizardPage_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_focusInEvent".}
proc fcQWizardPage_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_focusOutEvent".}
proc fcQWizardPage_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_enterEvent".}
proc fcQWizardPage_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_leaveEvent".}
proc fcQWizardPage_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_paintEvent".}
proc fcQWizardPage_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_moveEvent".}
proc fcQWizardPage_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_resizeEvent".}
proc fcQWizardPage_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_closeEvent".}
proc fcQWizardPage_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_contextMenuEvent".}
proc fcQWizardPage_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_tabletEvent".}
proc fcQWizardPage_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_actionEvent".}
proc fcQWizardPage_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_dragEnterEvent".}
proc fcQWizardPage_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_dragMoveEvent".}
proc fcQWizardPage_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_dragLeaveEvent".}
proc fcQWizardPage_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_dropEvent".}
proc fcQWizardPage_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_showEvent".}
proc fcQWizardPage_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_hideEvent".}
proc fcQWizardPage_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QWizardPage_virtualbase_nativeEvent".}
proc fcQWizardPage_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QWizardPage_virtualbase_changeEvent".}
proc fcQWizardPage_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QWizardPage_virtualbase_metric".}
proc fcQWizardPage_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QWizardPage_virtualbase_initPainter".}
proc fcQWizardPage_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QWizardPage_virtualbase_redirected".}
proc fcQWizardPage_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QWizardPage_virtualbase_sharedPainter".}
proc fcQWizardPage_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QWizardPage_virtualbase_inputMethodEvent".}
proc fcQWizardPage_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QWizardPage_virtualbase_inputMethodQuery".}
proc fcQWizardPage_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QWizardPage_virtualbase_focusNextPrevChild".}
proc fcQWizardPage_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWizardPage_virtualbase_eventFilter".}
proc fcQWizardPage_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_timerEvent".}
proc fcQWizardPage_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_childEvent".}
proc fcQWizardPage_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWizardPage_virtualbase_customEvent".}
proc fcQWizardPage_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWizardPage_virtualbase_connectNotify".}
proc fcQWizardPage_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWizardPage_virtualbase_disconnectNotify".}
proc fcQWizardPage_protectedbase_setField(self: pointer, name: struct_miqt_string, value: pointer): void {.importc: "QWizardPage_protectedbase_setField".}
proc fcQWizardPage_protectedbase_field(self: pointer, name: struct_miqt_string): pointer {.importc: "QWizardPage_protectedbase_field".}
proc fcQWizardPage_protectedbase_registerField(self: pointer, name: struct_miqt_string, widget: pointer): void {.importc: "QWizardPage_protectedbase_registerField".}
proc fcQWizardPage_protectedbase_wizard(self: pointer, ): pointer {.importc: "QWizardPage_protectedbase_wizard".}
proc fcQWizardPage_protectedbase_registerField3(self: pointer, name: struct_miqt_string, widget: pointer, property: cstring): void {.importc: "QWizardPage_protectedbase_registerField3".}
proc fcQWizardPage_protectedbase_registerField4(self: pointer, name: struct_miqt_string, widget: pointer, property: cstring, changedSignal: cstring): void {.importc: "QWizardPage_protectedbase_registerField4".}
proc fcQWizardPage_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QWizardPage_protectedbase_updateMicroFocus".}
proc fcQWizardPage_protectedbase_create(self: pointer, ): void {.importc: "QWizardPage_protectedbase_create".}
proc fcQWizardPage_protectedbase_destroy(self: pointer, ): void {.importc: "QWizardPage_protectedbase_destroy".}
proc fcQWizardPage_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QWizardPage_protectedbase_focusNextChild".}
proc fcQWizardPage_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QWizardPage_protectedbase_focusPreviousChild".}
proc fcQWizardPage_protectedbase_sender(self: pointer, ): pointer {.importc: "QWizardPage_protectedbase_sender".}
proc fcQWizardPage_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QWizardPage_protectedbase_senderSignalIndex".}
proc fcQWizardPage_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWizardPage_protectedbase_receivers".}
proc fcQWizardPage_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWizardPage_protectedbase_isSignalConnected".}
proc fcQWizardPage_new(vtbl: pointer, parent: pointer): ptr cQWizardPage {.importc: "QWizardPage_new".}
proc fcQWizardPage_new2(vtbl: pointer, ): ptr cQWizardPage {.importc: "QWizardPage_new2".}
proc fcQWizardPage_staticMetaObject(): pointer {.importc: "QWizardPage_staticMetaObject".}

proc metaObject*(self: gen_qwizard_types.QWizard, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWizard_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwizard_types.QWizard, param1: cstring): pointer =
  fcQWizard_metacast(self.h, param1)

proc metacall*(self: gen_qwizard_types.QWizard, param1: cint, param2: cint, param3: pointer): cint =
  fcQWizard_metacall(self.h, cint(param1), param2, param3)

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
  gen_qwizard_types.QWizardPage(h: fcQWizard_page(self.h, id), owned: false)

proc hasVisitedPage*(self: gen_qwizard_types.QWizard, id: cint): bool =
  fcQWizard_hasVisitedPage(self.h, id)

proc visitedIds*(self: gen_qwizard_types.QWizard, ): seq[cint] =
  var v_ma = fcQWizard_visitedIds(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc pageIds*(self: gen_qwizard_types.QWizard, ): seq[cint] =
  var v_ma = fcQWizard_pageIds(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc setStartId*(self: gen_qwizard_types.QWizard, id: cint): void =
  fcQWizard_setStartId(self.h, id)

proc startId*(self: gen_qwizard_types.QWizard, ): cint =
  fcQWizard_startId(self.h)

proc currentPage*(self: gen_qwizard_types.QWizard, ): gen_qwizard_types.QWizardPage =
  gen_qwizard_types.QWizardPage(h: fcQWizard_currentPage(self.h), owned: false)

proc currentId*(self: gen_qwizard_types.QWizard, ): cint =
  fcQWizard_currentId(self.h)

proc validateCurrentPage*(self: gen_qwizard_types.QWizard, ): bool =
  fcQWizard_validateCurrentPage(self.h)

proc nextId*(self: gen_qwizard_types.QWizard, ): cint =
  fcQWizard_nextId(self.h)

proc setField*(self: gen_qwizard_types.QWizard, name: string, value: gen_qvariant_types.QVariant): void =
  fcQWizard_setField(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), value.h)

proc field*(self: gen_qwizard_types.QWizard, name: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWizard_field(self.h, struct_miqt_string(data: name, len: csize_t(len(name)))), owned: true)

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
  gen_qabstractbutton_types.QAbstractButton(h: fcQWizard_button(self.h, cint(which)), owned: false)

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
  gen_qpixmap_types.QPixmap(h: fcQWizard_pixmap(self.h, cint(which)), owned: true)

proc setSideWidget*(self: gen_qwizard_types.QWizard, widget: gen_qwidget_types.QWidget): void =
  fcQWizard_setSideWidget(self.h, widget.h)

proc sideWidget*(self: gen_qwizard_types.QWizard, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWizard_sideWidget(self.h), owned: false)

proc setDefaultProperty*(self: gen_qwizard_types.QWizard, className: cstring, property: cstring, changedSignal: cstring): void =
  fcQWizard_setDefaultProperty(self.h, className, property, changedSignal)

proc setVisible*(self: gen_qwizard_types.QWizard, visible: bool): void =
  fcQWizard_setVisible(self.h, visible)

proc sizeHint*(self: gen_qwizard_types.QWizard, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWizard_sizeHint(self.h), owned: true)

proc currentIdChanged*(self: gen_qwizard_types.QWizard, id: cint): void =
  fcQWizard_currentIdChanged(self.h, id)

type QWizardcurrentIdChangedSlot* = proc(id: cint)
proc miqt_exec_callback_cQWizard_currentIdChanged(slot: int, id: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWizardcurrentIdChangedSlot](cast[pointer](slot))
  let slotval1 = id

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWizard_currentIdChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWizardcurrentIdChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentIdChanged*(self: gen_qwizard_types.QWizard, slot: QWizardcurrentIdChangedSlot) =
  var tmp = new QWizardcurrentIdChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_connect_currentIdChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWizard_currentIdChanged, miqt_exec_callback_cQWizard_currentIdChanged_release)

proc helpRequested*(self: gen_qwizard_types.QWizard, ): void =
  fcQWizard_helpRequested(self.h)

type QWizardhelpRequestedSlot* = proc()
proc miqt_exec_callback_cQWizard_helpRequested(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWizardhelpRequestedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWizard_helpRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWizardhelpRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhelpRequested*(self: gen_qwizard_types.QWizard, slot: QWizardhelpRequestedSlot) =
  var tmp = new QWizardhelpRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_connect_helpRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWizard_helpRequested, miqt_exec_callback_cQWizard_helpRequested_release)

proc customButtonClicked*(self: gen_qwizard_types.QWizard, which: cint): void =
  fcQWizard_customButtonClicked(self.h, which)

type QWizardcustomButtonClickedSlot* = proc(which: cint)
proc miqt_exec_callback_cQWizard_customButtonClicked(slot: int, which: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWizardcustomButtonClickedSlot](cast[pointer](slot))
  let slotval1 = which

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWizard_customButtonClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWizardcustomButtonClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncustomButtonClicked*(self: gen_qwizard_types.QWizard, slot: QWizardcustomButtonClickedSlot) =
  var tmp = new QWizardcustomButtonClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_connect_customButtonClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWizard_customButtonClicked, miqt_exec_callback_cQWizard_customButtonClicked_release)

proc pageAdded*(self: gen_qwizard_types.QWizard, id: cint): void =
  fcQWizard_pageAdded(self.h, id)

type QWizardpageAddedSlot* = proc(id: cint)
proc miqt_exec_callback_cQWizard_pageAdded(slot: int, id: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWizardpageAddedSlot](cast[pointer](slot))
  let slotval1 = id

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWizard_pageAdded_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWizardpageAddedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpageAdded*(self: gen_qwizard_types.QWizard, slot: QWizardpageAddedSlot) =
  var tmp = new QWizardpageAddedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_connect_pageAdded(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWizard_pageAdded, miqt_exec_callback_cQWizard_pageAdded_release)

proc pageRemoved*(self: gen_qwizard_types.QWizard, id: cint): void =
  fcQWizard_pageRemoved(self.h, id)

type QWizardpageRemovedSlot* = proc(id: cint)
proc miqt_exec_callback_cQWizard_pageRemoved(slot: int, id: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWizardpageRemovedSlot](cast[pointer](slot))
  let slotval1 = id

  nimfunc[](slotval1)

proc miqt_exec_callback_cQWizard_pageRemoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWizardpageRemovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpageRemoved*(self: gen_qwizard_types.QWizard, slot: QWizardpageRemovedSlot) =
  var tmp = new QWizardpageRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_connect_pageRemoved(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWizard_pageRemoved, miqt_exec_callback_cQWizard_pageRemoved_release)

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

type QWizardmetaObjectProc* = proc(self: QWizard): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWizardmetacastProc* = proc(self: QWizard, param1: cstring): pointer {.raises: [], gcsafe.}
type QWizardmetacallProc* = proc(self: QWizard, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWizardvalidateCurrentPageProc* = proc(self: QWizard): bool {.raises: [], gcsafe.}
type QWizardnextIdProc* = proc(self: QWizard): cint {.raises: [], gcsafe.}
type QWizardsetVisibleProc* = proc(self: QWizard, visible: bool): void {.raises: [], gcsafe.}
type QWizardsizeHintProc* = proc(self: QWizard): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWizardeventProc* = proc(self: QWizard, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWizardresizeEventProc* = proc(self: QWizard, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QWizardpaintEventProc* = proc(self: QWizard, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QWizarddoneProc* = proc(self: QWizard, resultVal: cint): void {.raises: [], gcsafe.}
type QWizardinitializePageProc* = proc(self: QWizard, id: cint): void {.raises: [], gcsafe.}
type QWizardcleanupPageProc* = proc(self: QWizard, id: cint): void {.raises: [], gcsafe.}
type QWizardminimumSizeHintProc* = proc(self: QWizard): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWizardopenProc* = proc(self: QWizard): void {.raises: [], gcsafe.}
type QWizardexecProc* = proc(self: QWizard): cint {.raises: [], gcsafe.}
type QWizardacceptProc* = proc(self: QWizard): void {.raises: [], gcsafe.}
type QWizardrejectProc* = proc(self: QWizard): void {.raises: [], gcsafe.}
type QWizardkeyPressEventProc* = proc(self: QWizard, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QWizardcloseEventProc* = proc(self: QWizard, param1: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QWizardshowEventProc* = proc(self: QWizard, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QWizardcontextMenuEventProc* = proc(self: QWizard, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QWizardeventFilterProc* = proc(self: QWizard, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWizarddevTypeProc* = proc(self: QWizard): cint {.raises: [], gcsafe.}
type QWizardheightForWidthProc* = proc(self: QWizard, param1: cint): cint {.raises: [], gcsafe.}
type QWizardhasHeightForWidthProc* = proc(self: QWizard): bool {.raises: [], gcsafe.}
type QWizardpaintEngineProc* = proc(self: QWizard): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QWizardmousePressEventProc* = proc(self: QWizard, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWizardmouseReleaseEventProc* = proc(self: QWizard, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWizardmouseDoubleClickEventProc* = proc(self: QWizard, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWizardmouseMoveEventProc* = proc(self: QWizard, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWizardwheelEventProc* = proc(self: QWizard, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QWizardkeyReleaseEventProc* = proc(self: QWizard, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QWizardfocusInEventProc* = proc(self: QWizard, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QWizardfocusOutEventProc* = proc(self: QWizard, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QWizardenterEventProc* = proc(self: QWizard, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QWizardleaveEventProc* = proc(self: QWizard, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWizardmoveEventProc* = proc(self: QWizard, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QWizardtabletEventProc* = proc(self: QWizard, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QWizardactionEventProc* = proc(self: QWizard, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QWizarddragEnterEventProc* = proc(self: QWizard, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QWizarddragMoveEventProc* = proc(self: QWizard, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QWizarddragLeaveEventProc* = proc(self: QWizard, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QWizarddropEventProc* = proc(self: QWizard, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QWizardhideEventProc* = proc(self: QWizard, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QWizardnativeEventProc* = proc(self: QWizard, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QWizardchangeEventProc* = proc(self: QWizard, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWizardmetricProc* = proc(self: QWizard, param1: cint): cint {.raises: [], gcsafe.}
type QWizardinitPainterProc* = proc(self: QWizard, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QWizardredirectedProc* = proc(self: QWizard, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QWizardsharedPainterProc* = proc(self: QWizard): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QWizardinputMethodEventProc* = proc(self: QWizard, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QWizardinputMethodQueryProc* = proc(self: QWizard, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QWizardfocusNextPrevChildProc* = proc(self: QWizard, next: bool): bool {.raises: [], gcsafe.}
type QWizardtimerEventProc* = proc(self: QWizard, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWizardchildEventProc* = proc(self: QWizard, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWizardcustomEventProc* = proc(self: QWizard, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWizardconnectNotifyProc* = proc(self: QWizard, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWizarddisconnectNotifyProc* = proc(self: QWizard, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWizardVTable* {.inheritable, pure.} = object
  vtbl: cQWizardVTable
  metaObject*: QWizardmetaObjectProc
  metacast*: QWizardmetacastProc
  metacall*: QWizardmetacallProc
  validateCurrentPage*: QWizardvalidateCurrentPageProc
  nextId*: QWizardnextIdProc
  setVisible*: QWizardsetVisibleProc
  sizeHint*: QWizardsizeHintProc
  event*: QWizardeventProc
  resizeEvent*: QWizardresizeEventProc
  paintEvent*: QWizardpaintEventProc
  done*: QWizarddoneProc
  initializePage*: QWizardinitializePageProc
  cleanupPage*: QWizardcleanupPageProc
  minimumSizeHint*: QWizardminimumSizeHintProc
  open*: QWizardopenProc
  exec*: QWizardexecProc
  accept*: QWizardacceptProc
  reject*: QWizardrejectProc
  keyPressEvent*: QWizardkeyPressEventProc
  closeEvent*: QWizardcloseEventProc
  showEvent*: QWizardshowEventProc
  contextMenuEvent*: QWizardcontextMenuEventProc
  eventFilter*: QWizardeventFilterProc
  devType*: QWizarddevTypeProc
  heightForWidth*: QWizardheightForWidthProc
  hasHeightForWidth*: QWizardhasHeightForWidthProc
  paintEngine*: QWizardpaintEngineProc
  mousePressEvent*: QWizardmousePressEventProc
  mouseReleaseEvent*: QWizardmouseReleaseEventProc
  mouseDoubleClickEvent*: QWizardmouseDoubleClickEventProc
  mouseMoveEvent*: QWizardmouseMoveEventProc
  wheelEvent*: QWizardwheelEventProc
  keyReleaseEvent*: QWizardkeyReleaseEventProc
  focusInEvent*: QWizardfocusInEventProc
  focusOutEvent*: QWizardfocusOutEventProc
  enterEvent*: QWizardenterEventProc
  leaveEvent*: QWizardleaveEventProc
  moveEvent*: QWizardmoveEventProc
  tabletEvent*: QWizardtabletEventProc
  actionEvent*: QWizardactionEventProc
  dragEnterEvent*: QWizarddragEnterEventProc
  dragMoveEvent*: QWizarddragMoveEventProc
  dragLeaveEvent*: QWizarddragLeaveEventProc
  dropEvent*: QWizarddropEventProc
  hideEvent*: QWizardhideEventProc
  nativeEvent*: QWizardnativeEventProc
  changeEvent*: QWizardchangeEventProc
  metric*: QWizardmetricProc
  initPainter*: QWizardinitPainterProc
  redirected*: QWizardredirectedProc
  sharedPainter*: QWizardsharedPainterProc
  inputMethodEvent*: QWizardinputMethodEventProc
  inputMethodQuery*: QWizardinputMethodQueryProc
  focusNextPrevChild*: QWizardfocusNextPrevChildProc
  timerEvent*: QWizardtimerEventProc
  childEvent*: QWizardchildEventProc
  customEvent*: QWizardcustomEventProc
  connectNotify*: QWizardconnectNotifyProc
  disconnectNotify*: QWizarddisconnectNotifyProc
proc QWizardmetaObject*(self: gen_qwizard_types.QWizard, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWizard_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQWizard_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWizardmetacast*(self: gen_qwizard_types.QWizard, param1: cstring): pointer =
  fcQWizard_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQWizard_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWizardmetacall*(self: gen_qwizard_types.QWizard, param1: cint, param2: cint, param3: pointer): cint =
  fcQWizard_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQWizard_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWizardvalidateCurrentPage*(self: gen_qwizard_types.QWizard, ): bool =
  fcQWizard_virtualbase_validateCurrentPage(self.h)

proc miqt_exec_callback_cQWizard_validateCurrentPage(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  var virtualReturn = vtbl[].validateCurrentPage(self)
  virtualReturn

proc QWizardnextId*(self: gen_qwizard_types.QWizard, ): cint =
  fcQWizard_virtualbase_nextId(self.h)

proc miqt_exec_callback_cQWizard_nextId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  var virtualReturn = vtbl[].nextId(self)
  virtualReturn

proc QWizardsetVisible*(self: gen_qwizard_types.QWizard, visible: bool): void =
  fcQWizard_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQWizard_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QWizardsizeHint*(self: gen_qwizard_types.QWizard, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWizard_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQWizard_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWizardevent*(self: gen_qwizard_types.QWizard, event: gen_qcoreevent_types.QEvent): bool =
  fcQWizard_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQWizard_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWizardresizeEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QResizeEvent): void =
  fcQWizard_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QWizardpaintEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QPaintEvent): void =
  fcQWizard_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QWizarddone*(self: gen_qwizard_types.QWizard, resultVal: cint): void =
  fcQWizard_virtualbase_done(self.h, resultVal)

proc miqt_exec_callback_cQWizard_done(vtbl: pointer, self: pointer, resultVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = resultVal
  vtbl[].done(self, slotval1)

proc QWizardinitializePage*(self: gen_qwizard_types.QWizard, id: cint): void =
  fcQWizard_virtualbase_initializePage(self.h, id)

proc miqt_exec_callback_cQWizard_initializePage(vtbl: pointer, self: pointer, id: cint): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = id
  vtbl[].initializePage(self, slotval1)

proc QWizardcleanupPage*(self: gen_qwizard_types.QWizard, id: cint): void =
  fcQWizard_virtualbase_cleanupPage(self.h, id)

proc miqt_exec_callback_cQWizard_cleanupPage(vtbl: pointer, self: pointer, id: cint): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = id
  vtbl[].cleanupPage(self, slotval1)

proc QWizardminimumSizeHint*(self: gen_qwizard_types.QWizard, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWizard_virtualbase_minimumSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQWizard_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWizardopen*(self: gen_qwizard_types.QWizard, ): void =
  fcQWizard_virtualbase_open(self.h)

proc miqt_exec_callback_cQWizard_open(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  vtbl[].open(self)

proc QWizardexec*(self: gen_qwizard_types.QWizard, ): cint =
  fcQWizard_virtualbase_exec(self.h)

proc miqt_exec_callback_cQWizard_exec(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QWizardaccept*(self: gen_qwizard_types.QWizard, ): void =
  fcQWizard_virtualbase_accept(self.h)

proc miqt_exec_callback_cQWizard_accept(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  vtbl[].accept(self)

proc QWizardreject*(self: gen_qwizard_types.QWizard, ): void =
  fcQWizard_virtualbase_reject(self.h)

proc miqt_exec_callback_cQWizard_reject(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  vtbl[].reject(self)

proc QWizardkeyPressEvent*(self: gen_qwizard_types.QWizard, param1: gen_qevent_types.QKeyEvent): void =
  fcQWizard_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQWizard_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QWizardcloseEvent*(self: gen_qwizard_types.QWizard, param1: gen_qevent_types.QCloseEvent): void =
  fcQWizard_virtualbase_closeEvent(self.h, param1.h)

proc miqt_exec_callback_cQWizard_closeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QWizardshowEvent*(self: gen_qwizard_types.QWizard, param1: gen_qevent_types.QShowEvent): void =
  fcQWizard_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQWizard_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QWizardcontextMenuEvent*(self: gen_qwizard_types.QWizard, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQWizard_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQWizard_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QWizardeventFilter*(self: gen_qwizard_types.QWizard, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQWizard_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQWizard_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWizarddevType*(self: gen_qwizard_types.QWizard, ): cint =
  fcQWizard_virtualbase_devType(self.h)

proc miqt_exec_callback_cQWizard_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QWizardheightForWidth*(self: gen_qwizard_types.QWizard, param1: cint): cint =
  fcQWizard_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQWizard_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QWizardhasHeightForWidth*(self: gen_qwizard_types.QWizard, ): bool =
  fcQWizard_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQWizard_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QWizardpaintEngine*(self: gen_qwizard_types.QWizard, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQWizard_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQWizard_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWizardmousePressEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QMouseEvent): void =
  fcQWizard_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QWizardmouseReleaseEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QMouseEvent): void =
  fcQWizard_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QWizardmouseDoubleClickEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QMouseEvent): void =
  fcQWizard_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QWizardmouseMoveEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QMouseEvent): void =
  fcQWizard_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QWizardwheelEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QWheelEvent): void =
  fcQWizard_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QWizardkeyReleaseEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QKeyEvent): void =
  fcQWizard_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QWizardfocusInEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QFocusEvent): void =
  fcQWizard_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QWizardfocusOutEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QFocusEvent): void =
  fcQWizard_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QWizardenterEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QEnterEvent): void =
  fcQWizard_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QWizardleaveEvent*(self: gen_qwizard_types.QWizard, event: gen_qcoreevent_types.QEvent): void =
  fcQWizard_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QWizardmoveEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QMoveEvent): void =
  fcQWizard_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QWizardtabletEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QTabletEvent): void =
  fcQWizard_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QWizardactionEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QActionEvent): void =
  fcQWizard_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QWizarddragEnterEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QDragEnterEvent): void =
  fcQWizard_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QWizarddragMoveEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QDragMoveEvent): void =
  fcQWizard_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QWizarddragLeaveEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQWizard_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QWizarddropEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QDropEvent): void =
  fcQWizard_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QWizardhideEvent*(self: gen_qwizard_types.QWizard, event: gen_qevent_types.QHideEvent): void =
  fcQWizard_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QWizardnativeEvent*(self: gen_qwizard_types.QWizard, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQWizard_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQWizard_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWizardchangeEvent*(self: gen_qwizard_types.QWizard, param1: gen_qcoreevent_types.QEvent): void =
  fcQWizard_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQWizard_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QWizardmetric*(self: gen_qwizard_types.QWizard, param1: cint): cint =
  fcQWizard_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQWizard_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QWizardinitPainter*(self: gen_qwizard_types.QWizard, painter: gen_qpainter_types.QPainter): void =
  fcQWizard_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQWizard_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QWizardredirected*(self: gen_qwizard_types.QWizard, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQWizard_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQWizard_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWizardsharedPainter*(self: gen_qwizard_types.QWizard, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQWizard_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQWizard_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWizardinputMethodEvent*(self: gen_qwizard_types.QWizard, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQWizard_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQWizard_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QWizardinputMethodQuery*(self: gen_qwizard_types.QWizard, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWizard_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc miqt_exec_callback_cQWizard_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWizardfocusNextPrevChild*(self: gen_qwizard_types.QWizard, next: bool): bool =
  fcQWizard_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQWizard_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QWizardtimerEvent*(self: gen_qwizard_types.QWizard, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWizard_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QWizardchildEvent*(self: gen_qwizard_types.QWizard, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWizard_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QWizardcustomEvent*(self: gen_qwizard_types.QWizard, event: gen_qcoreevent_types.QEvent): void =
  fcQWizard_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQWizard_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QWizardconnectNotify*(self: gen_qwizard_types.QWizard, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWizard_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWizard_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QWizarddisconnectNotify*(self: gen_qwizard_types.QWizard, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWizard_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWizard_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardVTable](vtbl)
  let self = QWizard(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWizard* {.inheritable.} = ref object of QWizard
  vtbl*: cQWizardVTable
method metaObject*(self: VirtualQWizard, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWizardmetaObject(self[])
proc miqt_exec_method_cQWizard_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQWizard, param1: cstring): pointer {.base.} =
  QWizardmetacast(self[], param1)
proc miqt_exec_method_cQWizard_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQWizard, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWizardmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQWizard_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method validateCurrentPage*(self: VirtualQWizard, ): bool {.base.} =
  QWizardvalidateCurrentPage(self[])
proc miqt_exec_method_cQWizard_validateCurrentPage(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  var virtualReturn = vtbl.validateCurrentPage()
  virtualReturn

method nextId*(self: VirtualQWizard, ): cint {.base.} =
  QWizardnextId(self[])
proc miqt_exec_method_cQWizard_nextId(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  var virtualReturn = vtbl.nextId()
  virtualReturn

method setVisible*(self: VirtualQWizard, visible: bool): void {.base.} =
  QWizardsetVisible(self[], visible)
proc miqt_exec_method_cQWizard_setVisible(vtbl: pointer, inst: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = visible
  vtbl.setVisible(slotval1)

method sizeHint*(self: VirtualQWizard, ): gen_qsize_types.QSize {.base.} =
  QWizardsizeHint(self[])
proc miqt_exec_method_cQWizard_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQWizard, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWizardevent(self[], event)
proc miqt_exec_method_cQWizard_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method resizeEvent*(self: VirtualQWizard, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QWizardresizeEvent(self[], event)
proc miqt_exec_method_cQWizard_resizeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl.resizeEvent(slotval1)

method paintEvent*(self: VirtualQWizard, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QWizardpaintEvent(self[], event)
proc miqt_exec_method_cQWizard_paintEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl.paintEvent(slotval1)

method done*(self: VirtualQWizard, resultVal: cint): void {.base.} =
  QWizarddone(self[], resultVal)
proc miqt_exec_method_cQWizard_done(vtbl: pointer, inst: pointer, resultVal: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = resultVal
  vtbl.done(slotval1)

method initializePage*(self: VirtualQWizard, id: cint): void {.base.} =
  QWizardinitializePage(self[], id)
proc miqt_exec_method_cQWizard_initializePage(vtbl: pointer, inst: pointer, id: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = id
  vtbl.initializePage(slotval1)

method cleanupPage*(self: VirtualQWizard, id: cint): void {.base.} =
  QWizardcleanupPage(self[], id)
proc miqt_exec_method_cQWizard_cleanupPage(vtbl: pointer, inst: pointer, id: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = id
  vtbl.cleanupPage(slotval1)

method minimumSizeHint*(self: VirtualQWizard, ): gen_qsize_types.QSize {.base.} =
  QWizardminimumSizeHint(self[])
proc miqt_exec_method_cQWizard_minimumSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  var virtualReturn = vtbl.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method open*(self: VirtualQWizard, ): void {.base.} =
  QWizardopen(self[])
proc miqt_exec_method_cQWizard_open(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  vtbl.open()

method exec*(self: VirtualQWizard, ): cint {.base.} =
  QWizardexec(self[])
proc miqt_exec_method_cQWizard_exec(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  var virtualReturn = vtbl.exec()
  virtualReturn

method accept*(self: VirtualQWizard, ): void {.base.} =
  QWizardaccept(self[])
proc miqt_exec_method_cQWizard_accept(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  vtbl.accept()

method reject*(self: VirtualQWizard, ): void {.base.} =
  QWizardreject(self[])
proc miqt_exec_method_cQWizard_reject(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  vtbl.reject()

method keyPressEvent*(self: VirtualQWizard, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QWizardkeyPressEvent(self[], param1)
proc miqt_exec_method_cQWizard_keyPressEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl.keyPressEvent(slotval1)

method closeEvent*(self: VirtualQWizard, param1: gen_qevent_types.QCloseEvent): void {.base.} =
  QWizardcloseEvent(self[], param1)
proc miqt_exec_method_cQWizard_closeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl.closeEvent(slotval1)

method showEvent*(self: VirtualQWizard, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QWizardshowEvent(self[], param1)
proc miqt_exec_method_cQWizard_showEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl.showEvent(slotval1)

method contextMenuEvent*(self: VirtualQWizard, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QWizardcontextMenuEvent(self[], param1)
proc miqt_exec_method_cQWizard_contextMenuEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl.contextMenuEvent(slotval1)

method eventFilter*(self: VirtualQWizard, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWizardeventFilter(self[], param1, param2)
proc miqt_exec_method_cQWizard_eventFilter(vtbl: pointer, inst: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method devType*(self: VirtualQWizard, ): cint {.base.} =
  QWizarddevType(self[])
proc miqt_exec_method_cQWizard_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method heightForWidth*(self: VirtualQWizard, param1: cint): cint {.base.} =
  QWizardheightForWidth(self[], param1)
proc miqt_exec_method_cQWizard_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQWizard, ): bool {.base.} =
  QWizardhasHeightForWidth(self[])
proc miqt_exec_method_cQWizard_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQWizard, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QWizardpaintEngine(self[])
proc miqt_exec_method_cQWizard_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQWizard, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWizardmousePressEvent(self[], event)
proc miqt_exec_method_cQWizard_mousePressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQWizard, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWizardmouseReleaseEvent(self[], event)
proc miqt_exec_method_cQWizard_mouseReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQWizard, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWizardmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQWizard_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQWizard, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWizardmouseMoveEvent(self[], event)
proc miqt_exec_method_cQWizard_mouseMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQWizard, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QWizardwheelEvent(self[], event)
proc miqt_exec_method_cQWizard_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method keyReleaseEvent*(self: VirtualQWizard, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QWizardkeyReleaseEvent(self[], event)
proc miqt_exec_method_cQWizard_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQWizard, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QWizardfocusInEvent(self[], event)
proc miqt_exec_method_cQWizard_focusInEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQWizard, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QWizardfocusOutEvent(self[], event)
proc miqt_exec_method_cQWizard_focusOutEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQWizard, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QWizardenterEvent(self[], event)
proc miqt_exec_method_cQWizard_enterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl.enterEvent(slotval1)

method leaveEvent*(self: VirtualQWizard, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWizardleaveEvent(self[], event)
proc miqt_exec_method_cQWizard_leaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.leaveEvent(slotval1)

method moveEvent*(self: VirtualQWizard, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QWizardmoveEvent(self[], event)
proc miqt_exec_method_cQWizard_moveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl.moveEvent(slotval1)

method tabletEvent*(self: VirtualQWizard, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QWizardtabletEvent(self[], event)
proc miqt_exec_method_cQWizard_tabletEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl.tabletEvent(slotval1)

method actionEvent*(self: VirtualQWizard, event: gen_qevent_types.QActionEvent): void {.base.} =
  QWizardactionEvent(self[], event)
proc miqt_exec_method_cQWizard_actionEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQWizard, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QWizarddragEnterEvent(self[], event)
proc miqt_exec_method_cQWizard_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQWizard, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QWizarddragMoveEvent(self[], event)
proc miqt_exec_method_cQWizard_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQWizard, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QWizarddragLeaveEvent(self[], event)
proc miqt_exec_method_cQWizard_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQWizard, event: gen_qevent_types.QDropEvent): void {.base.} =
  QWizarddropEvent(self[], event)
proc miqt_exec_method_cQWizard_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method hideEvent*(self: VirtualQWizard, event: gen_qevent_types.QHideEvent): void {.base.} =
  QWizardhideEvent(self[], event)
proc miqt_exec_method_cQWizard_hideEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl.hideEvent(slotval1)

method nativeEvent*(self: VirtualQWizard, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QWizardnativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQWizard_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQWizard, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QWizardchangeEvent(self[], param1)
proc miqt_exec_method_cQWizard_changeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl.changeEvent(slotval1)

method metric*(self: VirtualQWizard, param1: cint): cint {.base.} =
  QWizardmetric(self[], param1)
proc miqt_exec_method_cQWizard_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQWizard, painter: gen_qpainter_types.QPainter): void {.base.} =
  QWizardinitPainter(self[], painter)
proc miqt_exec_method_cQWizard_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQWizard, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QWizardredirected(self[], offset)
proc miqt_exec_method_cQWizard_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQWizard, ): gen_qpainter_types.QPainter {.base.} =
  QWizardsharedPainter(self[])
proc miqt_exec_method_cQWizard_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQWizard, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QWizardinputMethodEvent(self[], param1)
proc miqt_exec_method_cQWizard_inputMethodEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQWizard, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QWizardinputMethodQuery(self[], param1)
proc miqt_exec_method_cQWizard_inputMethodQuery(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQWizard, next: bool): bool {.base.} =
  QWizardfocusNextPrevChild(self[], next)
proc miqt_exec_method_cQWizard_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method timerEvent*(self: VirtualQWizard, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWizardtimerEvent(self[], event)
proc miqt_exec_method_cQWizard_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQWizard, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWizardchildEvent(self[], event)
proc miqt_exec_method_cQWizard_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQWizard, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWizardcustomEvent(self[], event)
proc miqt_exec_method_cQWizard_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQWizard, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWizardconnectNotify(self[], signal)
proc miqt_exec_method_cQWizard_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQWizard, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWizarddisconnectNotify(self[], signal)
proc miqt_exec_method_cQWizard_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizard](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc adjustPosition*(self: gen_qwizard_types.QWizard, param1: gen_qwidget_types.QWidget): void =
  fcQWizard_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qwizard_types.QWizard, ): void =
  fcQWizard_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qwizard_types.QWizard, ): void =
  fcQWizard_protectedbase_create(self.h)

proc destroy*(self: gen_qwizard_types.QWizard, ): void =
  fcQWizard_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qwizard_types.QWizard, ): bool =
  fcQWizard_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qwizard_types.QWizard, ): bool =
  fcQWizard_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qwizard_types.QWizard, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWizard_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwizard_types.QWizard, ): cint =
  fcQWizard_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwizard_types.QWizard, signal: cstring): cint =
  fcQWizard_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwizard_types.QWizard, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWizard_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwizard_types.QWizard,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QWizardVTable = nil): gen_qwizard_types.QWizard =
  let vtbl = if vtbl == nil: new QWizardVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWizardVTable, _: ptr cQWizard) {.cdecl.} =
    let vtbl = cast[ref QWizardVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWizard_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWizard_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWizard_metacall
  if not isNil(vtbl[].validateCurrentPage):
    vtbl[].vtbl.validateCurrentPage = miqt_exec_callback_cQWizard_validateCurrentPage
  if not isNil(vtbl[].nextId):
    vtbl[].vtbl.nextId = miqt_exec_callback_cQWizard_nextId
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQWizard_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQWizard_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWizard_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWizard_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWizard_paintEvent
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = miqt_exec_callback_cQWizard_done
  if not isNil(vtbl[].initializePage):
    vtbl[].vtbl.initializePage = miqt_exec_callback_cQWizard_initializePage
  if not isNil(vtbl[].cleanupPage):
    vtbl[].vtbl.cleanupPage = miqt_exec_callback_cQWizard_cleanupPage
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQWizard_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = miqt_exec_callback_cQWizard_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQWizard_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQWizard_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQWizard_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWizard_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWizard_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWizard_showEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQWizard_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWizard_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQWizard_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQWizard_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQWizard_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQWizard_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWizard_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWizard_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWizard_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWizard_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWizard_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWizard_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWizard_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWizard_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQWizard_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQWizard_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWizard_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWizard_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQWizard_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQWizard_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQWizard_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQWizard_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQWizard_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWizard_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWizard_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQWizard_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQWizard_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQWizard_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQWizard_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQWizard_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQWizard_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQWizard_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQWizard_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWizard_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWizard_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWizard_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWizard_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWizard_disconnectNotify
  gen_qwizard_types.QWizard(h: fcQWizard_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qwizard_types.QWizard,
    vtbl: ref QWizardVTable = nil): gen_qwizard_types.QWizard =
  let vtbl = if vtbl == nil: new QWizardVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWizardVTable, _: ptr cQWizard) {.cdecl.} =
    let vtbl = cast[ref QWizardVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWizard_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWizard_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWizard_metacall
  if not isNil(vtbl[].validateCurrentPage):
    vtbl[].vtbl.validateCurrentPage = miqt_exec_callback_cQWizard_validateCurrentPage
  if not isNil(vtbl[].nextId):
    vtbl[].vtbl.nextId = miqt_exec_callback_cQWizard_nextId
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQWizard_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQWizard_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWizard_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWizard_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWizard_paintEvent
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = miqt_exec_callback_cQWizard_done
  if not isNil(vtbl[].initializePage):
    vtbl[].vtbl.initializePage = miqt_exec_callback_cQWizard_initializePage
  if not isNil(vtbl[].cleanupPage):
    vtbl[].vtbl.cleanupPage = miqt_exec_callback_cQWizard_cleanupPage
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQWizard_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = miqt_exec_callback_cQWizard_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQWizard_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQWizard_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQWizard_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWizard_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWizard_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWizard_showEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQWizard_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWizard_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQWizard_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQWizard_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQWizard_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQWizard_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWizard_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWizard_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWizard_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWizard_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWizard_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWizard_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWizard_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWizard_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQWizard_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQWizard_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWizard_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWizard_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQWizard_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQWizard_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQWizard_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQWizard_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQWizard_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWizard_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWizard_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQWizard_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQWizard_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQWizard_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQWizard_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQWizard_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQWizard_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQWizard_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQWizard_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWizard_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWizard_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWizard_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWizard_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWizard_disconnectNotify
  gen_qwizard_types.QWizard(h: fcQWizard_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qwizard_types.QWizard,
    parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QWizardVTable = nil): gen_qwizard_types.QWizard =
  let vtbl = if vtbl == nil: new QWizardVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWizardVTable, _: ptr cQWizard) {.cdecl.} =
    let vtbl = cast[ref QWizardVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWizard_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWizard_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWizard_metacall
  if not isNil(vtbl[].validateCurrentPage):
    vtbl[].vtbl.validateCurrentPage = miqt_exec_callback_cQWizard_validateCurrentPage
  if not isNil(vtbl[].nextId):
    vtbl[].vtbl.nextId = miqt_exec_callback_cQWizard_nextId
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQWizard_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQWizard_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWizard_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWizard_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWizard_paintEvent
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = miqt_exec_callback_cQWizard_done
  if not isNil(vtbl[].initializePage):
    vtbl[].vtbl.initializePage = miqt_exec_callback_cQWizard_initializePage
  if not isNil(vtbl[].cleanupPage):
    vtbl[].vtbl.cleanupPage = miqt_exec_callback_cQWizard_cleanupPage
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQWizard_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = miqt_exec_callback_cQWizard_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQWizard_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQWizard_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQWizard_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWizard_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWizard_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWizard_showEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQWizard_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWizard_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQWizard_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQWizard_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQWizard_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQWizard_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWizard_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWizard_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWizard_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWizard_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWizard_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWizard_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWizard_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWizard_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQWizard_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQWizard_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWizard_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWizard_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQWizard_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQWizard_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQWizard_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQWizard_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQWizard_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWizard_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWizard_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQWizard_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQWizard_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQWizard_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQWizard_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQWizard_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQWizard_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQWizard_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQWizard_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWizard_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWizard_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWizard_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWizard_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWizard_disconnectNotify
  gen_qwizard_types.QWizard(h: fcQWizard_new3(addr(vtbl[].vtbl), parent.h, cint(flags)), owned: true)

proc create*(T: type gen_qwizard_types.QWizard,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQWizard) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWizardVTable, _: ptr cQWizard) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQWizard()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQWizard_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQWizard_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQWizard_metacall
  vtbl[].vtbl.validateCurrentPage = miqt_exec_method_cQWizard_validateCurrentPage
  vtbl[].vtbl.nextId = miqt_exec_method_cQWizard_nextId
  vtbl[].vtbl.setVisible = miqt_exec_method_cQWizard_setVisible
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQWizard_sizeHint
  vtbl[].vtbl.event = miqt_exec_method_cQWizard_event
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQWizard_resizeEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQWizard_paintEvent
  vtbl[].vtbl.done = miqt_exec_method_cQWizard_done
  vtbl[].vtbl.initializePage = miqt_exec_method_cQWizard_initializePage
  vtbl[].vtbl.cleanupPage = miqt_exec_method_cQWizard_cleanupPage
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQWizard_minimumSizeHint
  vtbl[].vtbl.open = miqt_exec_method_cQWizard_open
  vtbl[].vtbl.exec = miqt_exec_method_cQWizard_exec
  vtbl[].vtbl.accept = miqt_exec_method_cQWizard_accept
  vtbl[].vtbl.reject = miqt_exec_method_cQWizard_reject
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQWizard_keyPressEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQWizard_closeEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQWizard_showEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQWizard_contextMenuEvent
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQWizard_eventFilter
  vtbl[].vtbl.devType = miqt_exec_method_cQWizard_devType
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQWizard_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQWizard_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQWizard_paintEngine
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQWizard_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQWizard_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQWizard_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQWizard_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQWizard_wheelEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQWizard_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQWizard_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQWizard_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQWizard_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQWizard_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQWizard_moveEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQWizard_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQWizard_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQWizard_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQWizard_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQWizard_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQWizard_dropEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQWizard_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQWizard_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQWizard_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQWizard_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQWizard_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQWizard_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQWizard_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQWizard_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQWizard_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQWizard_focusNextPrevChild
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQWizard_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQWizard_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQWizard_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQWizard_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQWizard_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQWizard_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qwizard_types.QWizard,
    vtbl: VirtualQWizard) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWizardVTable, _: ptr cQWizard) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQWizard()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQWizard_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQWizard_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQWizard_metacall
  vtbl[].vtbl.validateCurrentPage = miqt_exec_method_cQWizard_validateCurrentPage
  vtbl[].vtbl.nextId = miqt_exec_method_cQWizard_nextId
  vtbl[].vtbl.setVisible = miqt_exec_method_cQWizard_setVisible
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQWizard_sizeHint
  vtbl[].vtbl.event = miqt_exec_method_cQWizard_event
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQWizard_resizeEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQWizard_paintEvent
  vtbl[].vtbl.done = miqt_exec_method_cQWizard_done
  vtbl[].vtbl.initializePage = miqt_exec_method_cQWizard_initializePage
  vtbl[].vtbl.cleanupPage = miqt_exec_method_cQWizard_cleanupPage
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQWizard_minimumSizeHint
  vtbl[].vtbl.open = miqt_exec_method_cQWizard_open
  vtbl[].vtbl.exec = miqt_exec_method_cQWizard_exec
  vtbl[].vtbl.accept = miqt_exec_method_cQWizard_accept
  vtbl[].vtbl.reject = miqt_exec_method_cQWizard_reject
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQWizard_keyPressEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQWizard_closeEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQWizard_showEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQWizard_contextMenuEvent
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQWizard_eventFilter
  vtbl[].vtbl.devType = miqt_exec_method_cQWizard_devType
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQWizard_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQWizard_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQWizard_paintEngine
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQWizard_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQWizard_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQWizard_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQWizard_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQWizard_wheelEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQWizard_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQWizard_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQWizard_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQWizard_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQWizard_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQWizard_moveEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQWizard_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQWizard_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQWizard_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQWizard_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQWizard_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQWizard_dropEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQWizard_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQWizard_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQWizard_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQWizard_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQWizard_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQWizard_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQWizard_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQWizard_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQWizard_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQWizard_focusNextPrevChild
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQWizard_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQWizard_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQWizard_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQWizard_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQWizard_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQWizard_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qwizard_types.QWizard,
    parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: VirtualQWizard) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWizardVTable, _: ptr cQWizard) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQWizard()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQWizard, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQWizard_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQWizard_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQWizard_metacall
  vtbl[].vtbl.validateCurrentPage = miqt_exec_method_cQWizard_validateCurrentPage
  vtbl[].vtbl.nextId = miqt_exec_method_cQWizard_nextId
  vtbl[].vtbl.setVisible = miqt_exec_method_cQWizard_setVisible
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQWizard_sizeHint
  vtbl[].vtbl.event = miqt_exec_method_cQWizard_event
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQWizard_resizeEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQWizard_paintEvent
  vtbl[].vtbl.done = miqt_exec_method_cQWizard_done
  vtbl[].vtbl.initializePage = miqt_exec_method_cQWizard_initializePage
  vtbl[].vtbl.cleanupPage = miqt_exec_method_cQWizard_cleanupPage
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQWizard_minimumSizeHint
  vtbl[].vtbl.open = miqt_exec_method_cQWizard_open
  vtbl[].vtbl.exec = miqt_exec_method_cQWizard_exec
  vtbl[].vtbl.accept = miqt_exec_method_cQWizard_accept
  vtbl[].vtbl.reject = miqt_exec_method_cQWizard_reject
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQWizard_keyPressEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQWizard_closeEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQWizard_showEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQWizard_contextMenuEvent
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQWizard_eventFilter
  vtbl[].vtbl.devType = miqt_exec_method_cQWizard_devType
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQWizard_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQWizard_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQWizard_paintEngine
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQWizard_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQWizard_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQWizard_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQWizard_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQWizard_wheelEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQWizard_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQWizard_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQWizard_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQWizard_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQWizard_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQWizard_moveEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQWizard_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQWizard_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQWizard_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQWizard_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQWizard_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQWizard_dropEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQWizard_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQWizard_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQWizard_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQWizard_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQWizard_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQWizard_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQWizard_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQWizard_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQWizard_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQWizard_focusNextPrevChild
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQWizard_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQWizard_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQWizard_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQWizard_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQWizard_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQWizard_new3(addr(vtbl[].vtbl), parent.h, cint(flags))
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qwizard_types.QWizard): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWizard_staticMetaObject())
proc metaObject*(self: gen_qwizard_types.QWizardPage, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWizardPage_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwizard_types.QWizardPage, param1: cstring): pointer =
  fcQWizardPage_metacast(self.h, param1)

proc metacall*(self: gen_qwizard_types.QWizardPage, param1: cint, param2: cint, param3: pointer): cint =
  fcQWizardPage_metacall(self.h, cint(param1), param2, param3)

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
  gen_qpixmap_types.QPixmap(h: fcQWizardPage_pixmap(self.h, cint(which)), owned: true)

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
proc miqt_exec_callback_cQWizardPage_completeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWizardPagecompleteChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQWizardPage_completeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWizardPagecompleteChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncompleteChanged*(self: gen_qwizard_types.QWizardPage, slot: QWizardPagecompleteChangedSlot) =
  var tmp = new QWizardPagecompleteChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_connect_completeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQWizardPage_completeChanged, miqt_exec_callback_cQWizardPage_completeChanged_release)

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

type QWizardPagemetaObjectProc* = proc(self: QWizardPage): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWizardPagemetacastProc* = proc(self: QWizardPage, param1: cstring): pointer {.raises: [], gcsafe.}
type QWizardPagemetacallProc* = proc(self: QWizardPage, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWizardPageinitializePageProc* = proc(self: QWizardPage): void {.raises: [], gcsafe.}
type QWizardPagecleanupPageProc* = proc(self: QWizardPage): void {.raises: [], gcsafe.}
type QWizardPagevalidatePageProc* = proc(self: QWizardPage): bool {.raises: [], gcsafe.}
type QWizardPageisCompleteProc* = proc(self: QWizardPage): bool {.raises: [], gcsafe.}
type QWizardPagenextIdProc* = proc(self: QWizardPage): cint {.raises: [], gcsafe.}
type QWizardPagedevTypeProc* = proc(self: QWizardPage): cint {.raises: [], gcsafe.}
type QWizardPagesetVisibleProc* = proc(self: QWizardPage, visible: bool): void {.raises: [], gcsafe.}
type QWizardPagesizeHintProc* = proc(self: QWizardPage): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWizardPageminimumSizeHintProc* = proc(self: QWizardPage): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWizardPageheightForWidthProc* = proc(self: QWizardPage, param1: cint): cint {.raises: [], gcsafe.}
type QWizardPagehasHeightForWidthProc* = proc(self: QWizardPage): bool {.raises: [], gcsafe.}
type QWizardPagepaintEngineProc* = proc(self: QWizardPage): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QWizardPageeventProc* = proc(self: QWizardPage, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWizardPagemousePressEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWizardPagemouseReleaseEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWizardPagemouseDoubleClickEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWizardPagemouseMoveEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWizardPagewheelEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QWizardPagekeyPressEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QWizardPagekeyReleaseEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QWizardPagefocusInEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QWizardPagefocusOutEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QWizardPageenterEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QWizardPageleaveEventProc* = proc(self: QWizardPage, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWizardPagepaintEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QWizardPagemoveEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QWizardPageresizeEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QWizardPagecloseEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QWizardPagecontextMenuEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QWizardPagetabletEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QWizardPageactionEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QWizardPagedragEnterEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QWizardPagedragMoveEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QWizardPagedragLeaveEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QWizardPagedropEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QWizardPageshowEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QWizardPagehideEventProc* = proc(self: QWizardPage, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QWizardPagenativeEventProc* = proc(self: QWizardPage, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QWizardPagechangeEventProc* = proc(self: QWizardPage, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWizardPagemetricProc* = proc(self: QWizardPage, param1: cint): cint {.raises: [], gcsafe.}
type QWizardPageinitPainterProc* = proc(self: QWizardPage, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QWizardPageredirectedProc* = proc(self: QWizardPage, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QWizardPagesharedPainterProc* = proc(self: QWizardPage): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QWizardPageinputMethodEventProc* = proc(self: QWizardPage, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QWizardPageinputMethodQueryProc* = proc(self: QWizardPage, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QWizardPagefocusNextPrevChildProc* = proc(self: QWizardPage, next: bool): bool {.raises: [], gcsafe.}
type QWizardPageeventFilterProc* = proc(self: QWizardPage, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWizardPagetimerEventProc* = proc(self: QWizardPage, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWizardPagechildEventProc* = proc(self: QWizardPage, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWizardPagecustomEventProc* = proc(self: QWizardPage, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWizardPageconnectNotifyProc* = proc(self: QWizardPage, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWizardPagedisconnectNotifyProc* = proc(self: QWizardPage, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWizardPageVTable* {.inheritable, pure.} = object
  vtbl: cQWizardPageVTable
  metaObject*: QWizardPagemetaObjectProc
  metacast*: QWizardPagemetacastProc
  metacall*: QWizardPagemetacallProc
  initializePage*: QWizardPageinitializePageProc
  cleanupPage*: QWizardPagecleanupPageProc
  validatePage*: QWizardPagevalidatePageProc
  isComplete*: QWizardPageisCompleteProc
  nextId*: QWizardPagenextIdProc
  devType*: QWizardPagedevTypeProc
  setVisible*: QWizardPagesetVisibleProc
  sizeHint*: QWizardPagesizeHintProc
  minimumSizeHint*: QWizardPageminimumSizeHintProc
  heightForWidth*: QWizardPageheightForWidthProc
  hasHeightForWidth*: QWizardPagehasHeightForWidthProc
  paintEngine*: QWizardPagepaintEngineProc
  event*: QWizardPageeventProc
  mousePressEvent*: QWizardPagemousePressEventProc
  mouseReleaseEvent*: QWizardPagemouseReleaseEventProc
  mouseDoubleClickEvent*: QWizardPagemouseDoubleClickEventProc
  mouseMoveEvent*: QWizardPagemouseMoveEventProc
  wheelEvent*: QWizardPagewheelEventProc
  keyPressEvent*: QWizardPagekeyPressEventProc
  keyReleaseEvent*: QWizardPagekeyReleaseEventProc
  focusInEvent*: QWizardPagefocusInEventProc
  focusOutEvent*: QWizardPagefocusOutEventProc
  enterEvent*: QWizardPageenterEventProc
  leaveEvent*: QWizardPageleaveEventProc
  paintEvent*: QWizardPagepaintEventProc
  moveEvent*: QWizardPagemoveEventProc
  resizeEvent*: QWizardPageresizeEventProc
  closeEvent*: QWizardPagecloseEventProc
  contextMenuEvent*: QWizardPagecontextMenuEventProc
  tabletEvent*: QWizardPagetabletEventProc
  actionEvent*: QWizardPageactionEventProc
  dragEnterEvent*: QWizardPagedragEnterEventProc
  dragMoveEvent*: QWizardPagedragMoveEventProc
  dragLeaveEvent*: QWizardPagedragLeaveEventProc
  dropEvent*: QWizardPagedropEventProc
  showEvent*: QWizardPageshowEventProc
  hideEvent*: QWizardPagehideEventProc
  nativeEvent*: QWizardPagenativeEventProc
  changeEvent*: QWizardPagechangeEventProc
  metric*: QWizardPagemetricProc
  initPainter*: QWizardPageinitPainterProc
  redirected*: QWizardPageredirectedProc
  sharedPainter*: QWizardPagesharedPainterProc
  inputMethodEvent*: QWizardPageinputMethodEventProc
  inputMethodQuery*: QWizardPageinputMethodQueryProc
  focusNextPrevChild*: QWizardPagefocusNextPrevChildProc
  eventFilter*: QWizardPageeventFilterProc
  timerEvent*: QWizardPagetimerEventProc
  childEvent*: QWizardPagechildEventProc
  customEvent*: QWizardPagecustomEventProc
  connectNotify*: QWizardPageconnectNotifyProc
  disconnectNotify*: QWizardPagedisconnectNotifyProc
proc QWizardPagemetaObject*(self: gen_qwizard_types.QWizardPage, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWizardPage_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQWizardPage_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWizardPagemetacast*(self: gen_qwizard_types.QWizardPage, param1: cstring): pointer =
  fcQWizardPage_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQWizardPage_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWizardPagemetacall*(self: gen_qwizard_types.QWizardPage, param1: cint, param2: cint, param3: pointer): cint =
  fcQWizardPage_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQWizardPage_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWizardPageinitializePage*(self: gen_qwizard_types.QWizardPage, ): void =
  fcQWizardPage_virtualbase_initializePage(self.h)

proc miqt_exec_callback_cQWizardPage_initializePage(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  vtbl[].initializePage(self)

proc QWizardPagecleanupPage*(self: gen_qwizard_types.QWizardPage, ): void =
  fcQWizardPage_virtualbase_cleanupPage(self.h)

proc miqt_exec_callback_cQWizardPage_cleanupPage(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  vtbl[].cleanupPage(self)

proc QWizardPagevalidatePage*(self: gen_qwizard_types.QWizardPage, ): bool =
  fcQWizardPage_virtualbase_validatePage(self.h)

proc miqt_exec_callback_cQWizardPage_validatePage(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  var virtualReturn = vtbl[].validatePage(self)
  virtualReturn

proc QWizardPageisComplete*(self: gen_qwizard_types.QWizardPage, ): bool =
  fcQWizardPage_virtualbase_isComplete(self.h)

proc miqt_exec_callback_cQWizardPage_isComplete(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  var virtualReturn = vtbl[].isComplete(self)
  virtualReturn

proc QWizardPagenextId*(self: gen_qwizard_types.QWizardPage, ): cint =
  fcQWizardPage_virtualbase_nextId(self.h)

proc miqt_exec_callback_cQWizardPage_nextId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  var virtualReturn = vtbl[].nextId(self)
  virtualReturn

proc QWizardPagedevType*(self: gen_qwizard_types.QWizardPage, ): cint =
  fcQWizardPage_virtualbase_devType(self.h)

proc miqt_exec_callback_cQWizardPage_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QWizardPagesetVisible*(self: gen_qwizard_types.QWizardPage, visible: bool): void =
  fcQWizardPage_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQWizardPage_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QWizardPagesizeHint*(self: gen_qwizard_types.QWizardPage, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWizardPage_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQWizardPage_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWizardPageminimumSizeHint*(self: gen_qwizard_types.QWizardPage, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWizardPage_virtualbase_minimumSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQWizardPage_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWizardPageheightForWidth*(self: gen_qwizard_types.QWizardPage, param1: cint): cint =
  fcQWizardPage_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQWizardPage_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QWizardPagehasHeightForWidth*(self: gen_qwizard_types.QWizardPage, ): bool =
  fcQWizardPage_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQWizardPage_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QWizardPagepaintEngine*(self: gen_qwizard_types.QWizardPage, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQWizardPage_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQWizardPage_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWizardPageevent*(self: gen_qwizard_types.QWizardPage, event: gen_qcoreevent_types.QEvent): bool =
  fcQWizardPage_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWizardPagemousePressEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QMouseEvent): void =
  fcQWizardPage_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QWizardPagemouseReleaseEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QMouseEvent): void =
  fcQWizardPage_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QWizardPagemouseDoubleClickEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QMouseEvent): void =
  fcQWizardPage_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QWizardPagemouseMoveEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QMouseEvent): void =
  fcQWizardPage_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QWizardPagewheelEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QWheelEvent): void =
  fcQWizardPage_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QWizardPagekeyPressEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QKeyEvent): void =
  fcQWizardPage_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QWizardPagekeyReleaseEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QKeyEvent): void =
  fcQWizardPage_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QWizardPagefocusInEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QFocusEvent): void =
  fcQWizardPage_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QWizardPagefocusOutEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QFocusEvent): void =
  fcQWizardPage_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QWizardPageenterEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QEnterEvent): void =
  fcQWizardPage_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QWizardPageleaveEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qcoreevent_types.QEvent): void =
  fcQWizardPage_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QWizardPagepaintEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QPaintEvent): void =
  fcQWizardPage_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QWizardPagemoveEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QMoveEvent): void =
  fcQWizardPage_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QWizardPageresizeEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QResizeEvent): void =
  fcQWizardPage_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QWizardPagecloseEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QCloseEvent): void =
  fcQWizardPage_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QWizardPagecontextMenuEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QContextMenuEvent): void =
  fcQWizardPage_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QWizardPagetabletEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QTabletEvent): void =
  fcQWizardPage_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QWizardPageactionEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QActionEvent): void =
  fcQWizardPage_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QWizardPagedragEnterEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QDragEnterEvent): void =
  fcQWizardPage_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QWizardPagedragMoveEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QDragMoveEvent): void =
  fcQWizardPage_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QWizardPagedragLeaveEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQWizardPage_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QWizardPagedropEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QDropEvent): void =
  fcQWizardPage_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QWizardPageshowEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QShowEvent): void =
  fcQWizardPage_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QWizardPagehideEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qevent_types.QHideEvent): void =
  fcQWizardPage_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QWizardPagenativeEvent*(self: gen_qwizard_types.QWizardPage, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQWizardPage_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQWizardPage_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWizardPagechangeEvent*(self: gen_qwizard_types.QWizardPage, param1: gen_qcoreevent_types.QEvent): void =
  fcQWizardPage_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQWizardPage_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QWizardPagemetric*(self: gen_qwizard_types.QWizardPage, param1: cint): cint =
  fcQWizardPage_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQWizardPage_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QWizardPageinitPainter*(self: gen_qwizard_types.QWizardPage, painter: gen_qpainter_types.QPainter): void =
  fcQWizardPage_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQWizardPage_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QWizardPageredirected*(self: gen_qwizard_types.QWizardPage, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQWizardPage_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQWizardPage_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWizardPagesharedPainter*(self: gen_qwizard_types.QWizardPage, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQWizardPage_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQWizardPage_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWizardPageinputMethodEvent*(self: gen_qwizard_types.QWizardPage, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQWizardPage_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQWizardPage_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QWizardPageinputMethodQuery*(self: gen_qwizard_types.QWizardPage, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWizardPage_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc miqt_exec_callback_cQWizardPage_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWizardPagefocusNextPrevChild*(self: gen_qwizard_types.QWizardPage, next: bool): bool =
  fcQWizardPage_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQWizardPage_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QWizardPageeventFilter*(self: gen_qwizard_types.QWizardPage, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWizardPage_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQWizardPage_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWizardPagetimerEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWizardPage_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QWizardPagechildEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWizardPage_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QWizardPagecustomEvent*(self: gen_qwizard_types.QWizardPage, event: gen_qcoreevent_types.QEvent): void =
  fcQWizardPage_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQWizardPage_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QWizardPageconnectNotify*(self: gen_qwizard_types.QWizardPage, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWizardPage_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWizardPage_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QWizardPagedisconnectNotify*(self: gen_qwizard_types.QWizardPage, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWizardPage_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWizardPage_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWizardPageVTable](vtbl)
  let self = QWizardPage(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWizardPage* {.inheritable.} = ref object of QWizardPage
  vtbl*: cQWizardPageVTable
method metaObject*(self: VirtualQWizardPage, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWizardPagemetaObject(self[])
proc miqt_exec_method_cQWizardPage_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQWizardPage, param1: cstring): pointer {.base.} =
  QWizardPagemetacast(self[], param1)
proc miqt_exec_method_cQWizardPage_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQWizardPage, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWizardPagemetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQWizardPage_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method initializePage*(self: VirtualQWizardPage, ): void {.base.} =
  QWizardPageinitializePage(self[])
proc miqt_exec_method_cQWizardPage_initializePage(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  vtbl.initializePage()

method cleanupPage*(self: VirtualQWizardPage, ): void {.base.} =
  QWizardPagecleanupPage(self[])
proc miqt_exec_method_cQWizardPage_cleanupPage(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  vtbl.cleanupPage()

method validatePage*(self: VirtualQWizardPage, ): bool {.base.} =
  QWizardPagevalidatePage(self[])
proc miqt_exec_method_cQWizardPage_validatePage(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  var virtualReturn = vtbl.validatePage()
  virtualReturn

method isComplete*(self: VirtualQWizardPage, ): bool {.base.} =
  QWizardPageisComplete(self[])
proc miqt_exec_method_cQWizardPage_isComplete(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  var virtualReturn = vtbl.isComplete()
  virtualReturn

method nextId*(self: VirtualQWizardPage, ): cint {.base.} =
  QWizardPagenextId(self[])
proc miqt_exec_method_cQWizardPage_nextId(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  var virtualReturn = vtbl.nextId()
  virtualReturn

method devType*(self: VirtualQWizardPage, ): cint {.base.} =
  QWizardPagedevType(self[])
proc miqt_exec_method_cQWizardPage_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method setVisible*(self: VirtualQWizardPage, visible: bool): void {.base.} =
  QWizardPagesetVisible(self[], visible)
proc miqt_exec_method_cQWizardPage_setVisible(vtbl: pointer, inst: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = visible
  vtbl.setVisible(slotval1)

method sizeHint*(self: VirtualQWizardPage, ): gen_qsize_types.QSize {.base.} =
  QWizardPagesizeHint(self[])
proc miqt_exec_method_cQWizardPage_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQWizardPage, ): gen_qsize_types.QSize {.base.} =
  QWizardPageminimumSizeHint(self[])
proc miqt_exec_method_cQWizardPage_minimumSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  var virtualReturn = vtbl.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQWizardPage, param1: cint): cint {.base.} =
  QWizardPageheightForWidth(self[], param1)
proc miqt_exec_method_cQWizardPage_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQWizardPage, ): bool {.base.} =
  QWizardPagehasHeightForWidth(self[])
proc miqt_exec_method_cQWizardPage_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQWizardPage, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QWizardPagepaintEngine(self[])
proc miqt_exec_method_cQWizardPage_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQWizardPage, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWizardPageevent(self[], event)
proc miqt_exec_method_cQWizardPage_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWizardPagemousePressEvent(self[], event)
proc miqt_exec_method_cQWizardPage_mousePressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWizardPagemouseReleaseEvent(self[], event)
proc miqt_exec_method_cQWizardPage_mouseReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWizardPagemouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQWizardPage_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWizardPagemouseMoveEvent(self[], event)
proc miqt_exec_method_cQWizardPage_mouseMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QWizardPagewheelEvent(self[], event)
proc miqt_exec_method_cQWizardPage_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QWizardPagekeyPressEvent(self[], event)
proc miqt_exec_method_cQWizardPage_keyPressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QWizardPagekeyReleaseEvent(self[], event)
proc miqt_exec_method_cQWizardPage_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QWizardPagefocusInEvent(self[], event)
proc miqt_exec_method_cQWizardPage_focusInEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QWizardPagefocusOutEvent(self[], event)
proc miqt_exec_method_cQWizardPage_focusOutEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QWizardPageenterEvent(self[], event)
proc miqt_exec_method_cQWizardPage_enterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl.enterEvent(slotval1)

method leaveEvent*(self: VirtualQWizardPage, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWizardPageleaveEvent(self[], event)
proc miqt_exec_method_cQWizardPage_leaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.leaveEvent(slotval1)

method paintEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QWizardPagepaintEvent(self[], event)
proc miqt_exec_method_cQWizardPage_paintEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl.paintEvent(slotval1)

method moveEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QWizardPagemoveEvent(self[], event)
proc miqt_exec_method_cQWizardPage_moveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl.moveEvent(slotval1)

method resizeEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QWizardPageresizeEvent(self[], event)
proc miqt_exec_method_cQWizardPage_resizeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl.resizeEvent(slotval1)

method closeEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QWizardPagecloseEvent(self[], event)
proc miqt_exec_method_cQWizardPage_closeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QWizardPagecontextMenuEvent(self[], event)
proc miqt_exec_method_cQWizardPage_contextMenuEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QWizardPagetabletEvent(self[], event)
proc miqt_exec_method_cQWizardPage_tabletEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl.tabletEvent(slotval1)

method actionEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QActionEvent): void {.base.} =
  QWizardPageactionEvent(self[], event)
proc miqt_exec_method_cQWizardPage_actionEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QWizardPagedragEnterEvent(self[], event)
proc miqt_exec_method_cQWizardPage_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QWizardPagedragMoveEvent(self[], event)
proc miqt_exec_method_cQWizardPage_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QWizardPagedragLeaveEvent(self[], event)
proc miqt_exec_method_cQWizardPage_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QDropEvent): void {.base.} =
  QWizardPagedropEvent(self[], event)
proc miqt_exec_method_cQWizardPage_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method showEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QShowEvent): void {.base.} =
  QWizardPageshowEvent(self[], event)
proc miqt_exec_method_cQWizardPage_showEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl.showEvent(slotval1)

method hideEvent*(self: VirtualQWizardPage, event: gen_qevent_types.QHideEvent): void {.base.} =
  QWizardPagehideEvent(self[], event)
proc miqt_exec_method_cQWizardPage_hideEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl.hideEvent(slotval1)

method nativeEvent*(self: VirtualQWizardPage, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QWizardPagenativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQWizardPage_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQWizardPage, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QWizardPagechangeEvent(self[], param1)
proc miqt_exec_method_cQWizardPage_changeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl.changeEvent(slotval1)

method metric*(self: VirtualQWizardPage, param1: cint): cint {.base.} =
  QWizardPagemetric(self[], param1)
proc miqt_exec_method_cQWizardPage_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQWizardPage, painter: gen_qpainter_types.QPainter): void {.base.} =
  QWizardPageinitPainter(self[], painter)
proc miqt_exec_method_cQWizardPage_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQWizardPage, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QWizardPageredirected(self[], offset)
proc miqt_exec_method_cQWizardPage_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQWizardPage, ): gen_qpainter_types.QPainter {.base.} =
  QWizardPagesharedPainter(self[])
proc miqt_exec_method_cQWizardPage_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQWizardPage, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QWizardPageinputMethodEvent(self[], param1)
proc miqt_exec_method_cQWizardPage_inputMethodEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQWizardPage, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QWizardPageinputMethodQuery(self[], param1)
proc miqt_exec_method_cQWizardPage_inputMethodQuery(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQWizardPage, next: bool): bool {.base.} =
  QWizardPagefocusNextPrevChild(self[], next)
proc miqt_exec_method_cQWizardPage_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQWizardPage, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWizardPageeventFilter(self[], watched, event)
proc miqt_exec_method_cQWizardPage_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQWizardPage, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWizardPagetimerEvent(self[], event)
proc miqt_exec_method_cQWizardPage_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQWizardPage, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWizardPagechildEvent(self[], event)
proc miqt_exec_method_cQWizardPage_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQWizardPage, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWizardPagecustomEvent(self[], event)
proc miqt_exec_method_cQWizardPage_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQWizardPage, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWizardPageconnectNotify(self[], signal)
proc miqt_exec_method_cQWizardPage_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQWizardPage, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWizardPagedisconnectNotify(self[], signal)
proc miqt_exec_method_cQWizardPage_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWizardPage](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc setField*(self: gen_qwizard_types.QWizardPage, name: string, value: gen_qvariant_types.QVariant): void =
  fcQWizardPage_protectedbase_setField(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), value.h)

proc field*(self: gen_qwizard_types.QWizardPage, name: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWizardPage_protectedbase_field(self.h, struct_miqt_string(data: name, len: csize_t(len(name)))), owned: true)

proc registerField*(self: gen_qwizard_types.QWizardPage, name: string, widget: gen_qwidget_types.QWidget): void =
  fcQWizardPage_protectedbase_registerField(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), widget.h)

proc wizard*(self: gen_qwizard_types.QWizardPage, ): gen_qwizard_types.QWizard =
  gen_qwizard_types.QWizard(h: fcQWizardPage_protectedbase_wizard(self.h), owned: false)

proc registerField*(self: gen_qwizard_types.QWizardPage, name: string, widget: gen_qwidget_types.QWidget, property: cstring): void =
  fcQWizardPage_protectedbase_registerField3(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), widget.h, property)

proc registerField*(self: gen_qwizard_types.QWizardPage, name: string, widget: gen_qwidget_types.QWidget, property: cstring, changedSignal: cstring): void =
  fcQWizardPage_protectedbase_registerField4(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), widget.h, property, changedSignal)

proc updateMicroFocus*(self: gen_qwizard_types.QWizardPage, ): void =
  fcQWizardPage_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qwizard_types.QWizardPage, ): void =
  fcQWizardPage_protectedbase_create(self.h)

proc destroy*(self: gen_qwizard_types.QWizardPage, ): void =
  fcQWizardPage_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qwizard_types.QWizardPage, ): bool =
  fcQWizardPage_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qwizard_types.QWizardPage, ): bool =
  fcQWizardPage_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qwizard_types.QWizardPage, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWizardPage_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwizard_types.QWizardPage, ): cint =
  fcQWizardPage_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwizard_types.QWizardPage, signal: cstring): cint =
  fcQWizardPage_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwizard_types.QWizardPage, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWizardPage_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwizard_types.QWizardPage,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QWizardPageVTable = nil): gen_qwizard_types.QWizardPage =
  let vtbl = if vtbl == nil: new QWizardPageVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWizardPageVTable, _: ptr cQWizardPage) {.cdecl.} =
    let vtbl = cast[ref QWizardPageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWizardPage_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWizardPage_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWizardPage_metacall
  if not isNil(vtbl[].initializePage):
    vtbl[].vtbl.initializePage = miqt_exec_callback_cQWizardPage_initializePage
  if not isNil(vtbl[].cleanupPage):
    vtbl[].vtbl.cleanupPage = miqt_exec_callback_cQWizardPage_cleanupPage
  if not isNil(vtbl[].validatePage):
    vtbl[].vtbl.validatePage = miqt_exec_callback_cQWizardPage_validatePage
  if not isNil(vtbl[].isComplete):
    vtbl[].vtbl.isComplete = miqt_exec_callback_cQWizardPage_isComplete
  if not isNil(vtbl[].nextId):
    vtbl[].vtbl.nextId = miqt_exec_callback_cQWizardPage_nextId
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQWizardPage_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQWizardPage_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQWizardPage_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQWizardPage_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQWizardPage_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQWizardPage_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQWizardPage_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWizardPage_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWizardPage_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWizardPage_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWizardPage_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWizardPage_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWizardPage_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWizardPage_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWizardPage_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWizardPage_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWizardPage_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQWizardPage_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQWizardPage_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWizardPage_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWizardPage_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWizardPage_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWizardPage_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQWizardPage_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWizardPage_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQWizardPage_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQWizardPage_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQWizardPage_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQWizardPage_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQWizardPage_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWizardPage_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWizardPage_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWizardPage_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQWizardPage_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQWizardPage_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQWizardPage_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQWizardPage_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQWizardPage_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQWizardPage_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQWizardPage_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQWizardPage_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWizardPage_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWizardPage_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWizardPage_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWizardPage_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWizardPage_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWizardPage_disconnectNotify
  gen_qwizard_types.QWizardPage(h: fcQWizardPage_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qwizard_types.QWizardPage,
    vtbl: ref QWizardPageVTable = nil): gen_qwizard_types.QWizardPage =
  let vtbl = if vtbl == nil: new QWizardPageVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWizardPageVTable, _: ptr cQWizardPage) {.cdecl.} =
    let vtbl = cast[ref QWizardPageVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWizardPage_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWizardPage_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWizardPage_metacall
  if not isNil(vtbl[].initializePage):
    vtbl[].vtbl.initializePage = miqt_exec_callback_cQWizardPage_initializePage
  if not isNil(vtbl[].cleanupPage):
    vtbl[].vtbl.cleanupPage = miqt_exec_callback_cQWizardPage_cleanupPage
  if not isNil(vtbl[].validatePage):
    vtbl[].vtbl.validatePage = miqt_exec_callback_cQWizardPage_validatePage
  if not isNil(vtbl[].isComplete):
    vtbl[].vtbl.isComplete = miqt_exec_callback_cQWizardPage_isComplete
  if not isNil(vtbl[].nextId):
    vtbl[].vtbl.nextId = miqt_exec_callback_cQWizardPage_nextId
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQWizardPage_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQWizardPage_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQWizardPage_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQWizardPage_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQWizardPage_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQWizardPage_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQWizardPage_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWizardPage_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWizardPage_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWizardPage_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWizardPage_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWizardPage_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWizardPage_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWizardPage_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWizardPage_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWizardPage_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWizardPage_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQWizardPage_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQWizardPage_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWizardPage_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWizardPage_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWizardPage_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWizardPage_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQWizardPage_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWizardPage_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQWizardPage_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQWizardPage_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQWizardPage_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQWizardPage_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQWizardPage_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWizardPage_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWizardPage_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWizardPage_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQWizardPage_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQWizardPage_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQWizardPage_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQWizardPage_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQWizardPage_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQWizardPage_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQWizardPage_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQWizardPage_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWizardPage_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWizardPage_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWizardPage_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWizardPage_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWizardPage_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWizardPage_disconnectNotify
  gen_qwizard_types.QWizardPage(h: fcQWizardPage_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qwizard_types.QWizardPage,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQWizardPage) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWizardPageVTable, _: ptr cQWizardPage) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQWizardPage()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQWizardPage_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQWizardPage_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQWizardPage_metacall
  vtbl[].vtbl.initializePage = miqt_exec_method_cQWizardPage_initializePage
  vtbl[].vtbl.cleanupPage = miqt_exec_method_cQWizardPage_cleanupPage
  vtbl[].vtbl.validatePage = miqt_exec_method_cQWizardPage_validatePage
  vtbl[].vtbl.isComplete = miqt_exec_method_cQWizardPage_isComplete
  vtbl[].vtbl.nextId = miqt_exec_method_cQWizardPage_nextId
  vtbl[].vtbl.devType = miqt_exec_method_cQWizardPage_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQWizardPage_setVisible
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQWizardPage_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQWizardPage_minimumSizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQWizardPage_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQWizardPage_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQWizardPage_paintEngine
  vtbl[].vtbl.event = miqt_exec_method_cQWizardPage_event
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQWizardPage_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQWizardPage_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQWizardPage_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQWizardPage_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQWizardPage_wheelEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQWizardPage_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQWizardPage_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQWizardPage_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQWizardPage_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQWizardPage_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQWizardPage_leaveEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQWizardPage_paintEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQWizardPage_moveEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQWizardPage_resizeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQWizardPage_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQWizardPage_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQWizardPage_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQWizardPage_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQWizardPage_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQWizardPage_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQWizardPage_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQWizardPage_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQWizardPage_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQWizardPage_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQWizardPage_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQWizardPage_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQWizardPage_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQWizardPage_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQWizardPage_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQWizardPage_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQWizardPage_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQWizardPage_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQWizardPage_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQWizardPage_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQWizardPage_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQWizardPage_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQWizardPage_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQWizardPage_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQWizardPage_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQWizardPage_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qwizard_types.QWizardPage,
    vtbl: VirtualQWizardPage) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWizardPageVTable, _: ptr cQWizardPage) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQWizardPage()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQWizardPage, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQWizardPage_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQWizardPage_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQWizardPage_metacall
  vtbl[].vtbl.initializePage = miqt_exec_method_cQWizardPage_initializePage
  vtbl[].vtbl.cleanupPage = miqt_exec_method_cQWizardPage_cleanupPage
  vtbl[].vtbl.validatePage = miqt_exec_method_cQWizardPage_validatePage
  vtbl[].vtbl.isComplete = miqt_exec_method_cQWizardPage_isComplete
  vtbl[].vtbl.nextId = miqt_exec_method_cQWizardPage_nextId
  vtbl[].vtbl.devType = miqt_exec_method_cQWizardPage_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQWizardPage_setVisible
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQWizardPage_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQWizardPage_minimumSizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQWizardPage_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQWizardPage_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQWizardPage_paintEngine
  vtbl[].vtbl.event = miqt_exec_method_cQWizardPage_event
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQWizardPage_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQWizardPage_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQWizardPage_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQWizardPage_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQWizardPage_wheelEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQWizardPage_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQWizardPage_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQWizardPage_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQWizardPage_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQWizardPage_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQWizardPage_leaveEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQWizardPage_paintEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQWizardPage_moveEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQWizardPage_resizeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQWizardPage_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQWizardPage_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQWizardPage_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQWizardPage_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQWizardPage_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQWizardPage_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQWizardPage_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQWizardPage_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQWizardPage_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQWizardPage_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQWizardPage_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQWizardPage_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQWizardPage_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQWizardPage_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQWizardPage_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQWizardPage_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQWizardPage_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQWizardPage_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQWizardPage_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQWizardPage_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQWizardPage_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQWizardPage_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQWizardPage_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQWizardPage_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQWizardPage_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQWizardPage_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qwizard_types.QWizardPage): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWizardPage_staticMetaObject())
