import ./qtwidgets_pkg

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


{.compile("gen_qcombobox.cpp", QtWidgetsCFlags).}


type QComboBoxInsertPolicyEnum* = distinct cint
template NoInsert*(_: type QComboBoxInsertPolicyEnum): untyped = 0
template InsertAtTop*(_: type QComboBoxInsertPolicyEnum): untyped = 1
template InsertAtCurrent*(_: type QComboBoxInsertPolicyEnum): untyped = 2
template InsertAtBottom*(_: type QComboBoxInsertPolicyEnum): untyped = 3
template InsertAfterCurrent*(_: type QComboBoxInsertPolicyEnum): untyped = 4
template InsertBeforeCurrent*(_: type QComboBoxInsertPolicyEnum): untyped = 5
template InsertAlphabetically*(_: type QComboBoxInsertPolicyEnum): untyped = 6


type QComboBoxSizeAdjustPolicyEnum* = distinct cint
template AdjustToContents*(_: type QComboBoxSizeAdjustPolicyEnum): untyped = 0
template AdjustToContentsOnFirstShow*(_: type QComboBoxSizeAdjustPolicyEnum): untyped = 1
template AdjustToMinimumContentsLength*(_: type QComboBoxSizeAdjustPolicyEnum): untyped = 2
template AdjustToMinimumContentsLengthWithIcon*(_: type QComboBoxSizeAdjustPolicyEnum): untyped = 3


import ./gen_qcombobox_types
export gen_qcombobox_types

import
  ../QtCore/gen_qabstractitemmodel_types,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qvalidator_types,
  ./gen_qabstractitemdelegate_types,
  ./gen_qabstractitemview_types,
  ./gen_qcompleter_types,
  ./gen_qlineedit_types,
  ./gen_qstyleoption_types,
  ./gen_qwidget
export
  gen_qabstractitemmodel_types,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qicon_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qvalidator_types,
  gen_qabstractitemdelegate_types,
  gen_qabstractitemview_types,
  gen_qcompleter_types,
  gen_qlineedit_types,
  gen_qstyleoption_types,
  gen_qwidget

type cQComboBox*{.exportc: "QComboBox", incompleteStruct.} = object

proc fcQComboBox_metaObject(self: pointer): pointer {.importc: "QComboBox_metaObject".}
proc fcQComboBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QComboBox_metacast".}
proc fcQComboBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QComboBox_metacall".}
proc fcQComboBox_tr(s: cstring): struct_miqt_string {.importc: "QComboBox_tr".}
proc fcQComboBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QComboBox_trUtf8".}
proc fcQComboBox_maxVisibleItems(self: pointer): cint {.importc: "QComboBox_maxVisibleItems".}
proc fcQComboBox_setMaxVisibleItems(self: pointer, maxItems: cint): void {.importc: "QComboBox_setMaxVisibleItems".}
proc fcQComboBox_count(self: pointer): cint {.importc: "QComboBox_count".}
proc fcQComboBox_setMaxCount(self: pointer, max: cint): void {.importc: "QComboBox_setMaxCount".}
proc fcQComboBox_maxCount(self: pointer): cint {.importc: "QComboBox_maxCount".}
proc fcQComboBox_autoCompletion(self: pointer): bool {.importc: "QComboBox_autoCompletion".}
proc fcQComboBox_setAutoCompletion(self: pointer, enable: bool): void {.importc: "QComboBox_setAutoCompletion".}
proc fcQComboBox_autoCompletionCaseSensitivity(self: pointer): cint {.importc: "QComboBox_autoCompletionCaseSensitivity".}
proc fcQComboBox_setAutoCompletionCaseSensitivity(self: pointer, sensitivity: cint): void {.importc: "QComboBox_setAutoCompletionCaseSensitivity".}
proc fcQComboBox_duplicatesEnabled(self: pointer): bool {.importc: "QComboBox_duplicatesEnabled".}
proc fcQComboBox_setDuplicatesEnabled(self: pointer, enable: bool): void {.importc: "QComboBox_setDuplicatesEnabled".}
proc fcQComboBox_setFrame(self: pointer, frame: bool): void {.importc: "QComboBox_setFrame".}
proc fcQComboBox_hasFrame(self: pointer): bool {.importc: "QComboBox_hasFrame".}
proc fcQComboBox_findText(self: pointer, text: struct_miqt_string): cint {.importc: "QComboBox_findText".}
proc fcQComboBox_findData(self: pointer, data: pointer): cint {.importc: "QComboBox_findData".}
proc fcQComboBox_insertPolicy(self: pointer): cint {.importc: "QComboBox_insertPolicy".}
proc fcQComboBox_setInsertPolicy(self: pointer, policy: cint): void {.importc: "QComboBox_setInsertPolicy".}
proc fcQComboBox_sizeAdjustPolicy(self: pointer): cint {.importc: "QComboBox_sizeAdjustPolicy".}
proc fcQComboBox_setSizeAdjustPolicy(self: pointer, policy: cint): void {.importc: "QComboBox_setSizeAdjustPolicy".}
proc fcQComboBox_minimumContentsLength(self: pointer): cint {.importc: "QComboBox_minimumContentsLength".}
proc fcQComboBox_setMinimumContentsLength(self: pointer, characters: cint): void {.importc: "QComboBox_setMinimumContentsLength".}
proc fcQComboBox_iconSize(self: pointer): pointer {.importc: "QComboBox_iconSize".}
proc fcQComboBox_setIconSize(self: pointer, size: pointer): void {.importc: "QComboBox_setIconSize".}
proc fcQComboBox_setPlaceholderText(self: pointer, placeholderText: struct_miqt_string): void {.importc: "QComboBox_setPlaceholderText".}
proc fcQComboBox_placeholderText(self: pointer): struct_miqt_string {.importc: "QComboBox_placeholderText".}
proc fcQComboBox_isEditable(self: pointer): bool {.importc: "QComboBox_isEditable".}
proc fcQComboBox_setEditable(self: pointer, editable: bool): void {.importc: "QComboBox_setEditable".}
proc fcQComboBox_setLineEdit(self: pointer, edit: pointer): void {.importc: "QComboBox_setLineEdit".}
proc fcQComboBox_lineEdit(self: pointer): pointer {.importc: "QComboBox_lineEdit".}
proc fcQComboBox_setValidator(self: pointer, v: pointer): void {.importc: "QComboBox_setValidator".}
proc fcQComboBox_validator(self: pointer): pointer {.importc: "QComboBox_validator".}
proc fcQComboBox_setCompleter(self: pointer, c: pointer): void {.importc: "QComboBox_setCompleter".}
proc fcQComboBox_completer(self: pointer): pointer {.importc: "QComboBox_completer".}
proc fcQComboBox_itemDelegate(self: pointer): pointer {.importc: "QComboBox_itemDelegate".}
proc fcQComboBox_setItemDelegate(self: pointer, delegate: pointer): void {.importc: "QComboBox_setItemDelegate".}
proc fcQComboBox_model(self: pointer): pointer {.importc: "QComboBox_model".}
proc fcQComboBox_setModel(self: pointer, model: pointer): void {.importc: "QComboBox_setModel".}
proc fcQComboBox_rootModelIndex(self: pointer): pointer {.importc: "QComboBox_rootModelIndex".}
proc fcQComboBox_setRootModelIndex(self: pointer, index: pointer): void {.importc: "QComboBox_setRootModelIndex".}
proc fcQComboBox_modelColumn(self: pointer): cint {.importc: "QComboBox_modelColumn".}
proc fcQComboBox_setModelColumn(self: pointer, visibleColumn: cint): void {.importc: "QComboBox_setModelColumn".}
proc fcQComboBox_currentIndex(self: pointer): cint {.importc: "QComboBox_currentIndex".}
proc fcQComboBox_currentText(self: pointer): struct_miqt_string {.importc: "QComboBox_currentText".}
proc fcQComboBox_currentData(self: pointer): pointer {.importc: "QComboBox_currentData".}
proc fcQComboBox_itemText(self: pointer, index: cint): struct_miqt_string {.importc: "QComboBox_itemText".}
proc fcQComboBox_itemIcon(self: pointer, index: cint): pointer {.importc: "QComboBox_itemIcon".}
proc fcQComboBox_itemData(self: pointer, index: cint): pointer {.importc: "QComboBox_itemData".}
proc fcQComboBox_addItem(self: pointer, text: struct_miqt_string): void {.importc: "QComboBox_addItem".}
proc fcQComboBox_addItem2(self: pointer, icon: pointer, text: struct_miqt_string): void {.importc: "QComboBox_addItem2".}
proc fcQComboBox_addItems(self: pointer, texts: struct_miqt_array): void {.importc: "QComboBox_addItems".}
proc fcQComboBox_insertItem(self: pointer, index: cint, text: struct_miqt_string): void {.importc: "QComboBox_insertItem".}
proc fcQComboBox_insertItem2(self: pointer, index: cint, icon: pointer, text: struct_miqt_string): void {.importc: "QComboBox_insertItem2".}
proc fcQComboBox_insertItems(self: pointer, index: cint, texts: struct_miqt_array): void {.importc: "QComboBox_insertItems".}
proc fcQComboBox_insertSeparator(self: pointer, index: cint): void {.importc: "QComboBox_insertSeparator".}
proc fcQComboBox_removeItem(self: pointer, index: cint): void {.importc: "QComboBox_removeItem".}
proc fcQComboBox_setItemText(self: pointer, index: cint, text: struct_miqt_string): void {.importc: "QComboBox_setItemText".}
proc fcQComboBox_setItemIcon(self: pointer, index: cint, icon: pointer): void {.importc: "QComboBox_setItemIcon".}
proc fcQComboBox_setItemData(self: pointer, index: cint, value: pointer): void {.importc: "QComboBox_setItemData".}
proc fcQComboBox_view(self: pointer): pointer {.importc: "QComboBox_view".}
proc fcQComboBox_setView(self: pointer, itemView: pointer): void {.importc: "QComboBox_setView".}
proc fcQComboBox_sizeHint(self: pointer): pointer {.importc: "QComboBox_sizeHint".}
proc fcQComboBox_minimumSizeHint(self: pointer): pointer {.importc: "QComboBox_minimumSizeHint".}
proc fcQComboBox_showPopup(self: pointer): void {.importc: "QComboBox_showPopup".}
proc fcQComboBox_hidePopup(self: pointer): void {.importc: "QComboBox_hidePopup".}
proc fcQComboBox_event(self: pointer, event: pointer): bool {.importc: "QComboBox_event".}
proc fcQComboBox_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QComboBox_inputMethodQuery".}
proc fcQComboBox_inputMethodQuery2(self: pointer, query: cint, argument: pointer): pointer {.importc: "QComboBox_inputMethodQuery2".}
proc fcQComboBox_clear(self: pointer): void {.importc: "QComboBox_clear".}
proc fcQComboBox_clearEditText(self: pointer): void {.importc: "QComboBox_clearEditText".}
proc fcQComboBox_setEditText(self: pointer, text: struct_miqt_string): void {.importc: "QComboBox_setEditText".}
proc fcQComboBox_setCurrentIndex(self: pointer, index: cint): void {.importc: "QComboBox_setCurrentIndex".}
proc fcQComboBox_setCurrentText(self: pointer, text: struct_miqt_string): void {.importc: "QComboBox_setCurrentText".}
proc fcQComboBox_editTextChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_editTextChanged".}
proc fcQComboBox_connect_editTextChanged(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QComboBox_connect_editTextChanged".}
proc fcQComboBox_activated(self: pointer, index: cint): void {.importc: "QComboBox_activated".}
proc fcQComboBox_connect_activated(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QComboBox_connect_activated".}
proc fcQComboBox_textActivated(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_textActivated".}
proc fcQComboBox_connect_textActivated(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QComboBox_connect_textActivated".}
proc fcQComboBox_highlighted(self: pointer, index: cint): void {.importc: "QComboBox_highlighted".}
proc fcQComboBox_connect_highlighted(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QComboBox_connect_highlighted".}
proc fcQComboBox_textHighlighted(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_textHighlighted".}
proc fcQComboBox_connect_textHighlighted(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QComboBox_connect_textHighlighted".}
proc fcQComboBox_currentIndexChanged(self: pointer, index: cint): void {.importc: "QComboBox_currentIndexChanged".}
proc fcQComboBox_connect_currentIndexChanged(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QComboBox_connect_currentIndexChanged".}
proc fcQComboBox_currentIndexChangedWithQString(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_currentIndexChangedWithQString".}
proc fcQComboBox_connect_currentIndexChangedWithQString(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QComboBox_connect_currentIndexChangedWithQString".}
proc fcQComboBox_currentTextChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_currentTextChanged".}
proc fcQComboBox_connect_currentTextChanged(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QComboBox_connect_currentTextChanged".}
proc fcQComboBox_activatedWithQString(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_activatedWithQString".}
proc fcQComboBox_connect_activatedWithQString(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QComboBox_connect_activatedWithQString".}
proc fcQComboBox_highlightedWithQString(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_highlightedWithQString".}
proc fcQComboBox_connect_highlightedWithQString(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QComboBox_connect_highlightedWithQString".}
proc fcQComboBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QComboBox_tr2".}
proc fcQComboBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QComboBox_tr3".}
proc fcQComboBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QComboBox_trUtf82".}
proc fcQComboBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QComboBox_trUtf83".}
proc fcQComboBox_findText2(self: pointer, text: struct_miqt_string, flags: cint): cint {.importc: "QComboBox_findText2".}
proc fcQComboBox_findData2(self: pointer, data: pointer, role: cint): cint {.importc: "QComboBox_findData2".}
proc fcQComboBox_findData3(self: pointer, data: pointer, role: cint, flags: cint): cint {.importc: "QComboBox_findData3".}
proc fcQComboBox_currentData1(self: pointer, role: cint): pointer {.importc: "QComboBox_currentData1".}
proc fcQComboBox_itemData2(self: pointer, index: cint, role: cint): pointer {.importc: "QComboBox_itemData2".}
proc fcQComboBox_addItem22(self: pointer, text: struct_miqt_string, userData: pointer): void {.importc: "QComboBox_addItem22".}
proc fcQComboBox_addItem3(self: pointer, icon: pointer, text: struct_miqt_string, userData: pointer): void {.importc: "QComboBox_addItem3".}
proc fcQComboBox_insertItem3(self: pointer, index: cint, text: struct_miqt_string, userData: pointer): void {.importc: "QComboBox_insertItem3".}
proc fcQComboBox_insertItem4(self: pointer, index: cint, icon: pointer, text: struct_miqt_string, userData: pointer): void {.importc: "QComboBox_insertItem4".}
proc fcQComboBox_setItemData3(self: pointer, index: cint, value: pointer, role: cint): void {.importc: "QComboBox_setItemData3".}
proc fcQComboBox_vtbl(self: pointer): pointer {.importc: "QComboBox_vtbl".}
proc fcQComboBox_vdata(self: pointer): pointer {.importc: "QComboBox_vdata".}

type cQComboBoxVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  showPopup*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  hidePopup*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQComboBox_virtualbase_metaObject(self: pointer): pointer {.importc: "QComboBox_virtualbase_metaObject".}
proc fcQComboBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QComboBox_virtualbase_metacast".}
proc fcQComboBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QComboBox_virtualbase_metacall".}
proc fcQComboBox_virtualbase_sizeHint(self: pointer): pointer {.importc: "QComboBox_virtualbase_sizeHint".}
proc fcQComboBox_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QComboBox_virtualbase_minimumSizeHint".}
proc fcQComboBox_virtualbase_showPopup(self: pointer): void {.importc: "QComboBox_virtualbase_showPopup".}
proc fcQComboBox_virtualbase_hidePopup(self: pointer): void {.importc: "QComboBox_virtualbase_hidePopup".}
proc fcQComboBox_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QComboBox_virtualbase_event".}
proc fcQComboBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QComboBox_virtualbase_inputMethodQuery".}
proc fcQComboBox_virtualbase_focusInEvent(self: pointer, e: pointer): void {.importc: "QComboBox_virtualbase_focusInEvent".}
proc fcQComboBox_virtualbase_focusOutEvent(self: pointer, e: pointer): void {.importc: "QComboBox_virtualbase_focusOutEvent".}
proc fcQComboBox_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QComboBox_virtualbase_changeEvent".}
proc fcQComboBox_virtualbase_resizeEvent(self: pointer, e: pointer): void {.importc: "QComboBox_virtualbase_resizeEvent".}
proc fcQComboBox_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QComboBox_virtualbase_paintEvent".}
proc fcQComboBox_virtualbase_showEvent(self: pointer, e: pointer): void {.importc: "QComboBox_virtualbase_showEvent".}
proc fcQComboBox_virtualbase_hideEvent(self: pointer, e: pointer): void {.importc: "QComboBox_virtualbase_hideEvent".}
proc fcQComboBox_virtualbase_mousePressEvent(self: pointer, e: pointer): void {.importc: "QComboBox_virtualbase_mousePressEvent".}
proc fcQComboBox_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void {.importc: "QComboBox_virtualbase_mouseReleaseEvent".}
proc fcQComboBox_virtualbase_keyPressEvent(self: pointer, e: pointer): void {.importc: "QComboBox_virtualbase_keyPressEvent".}
proc fcQComboBox_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void {.importc: "QComboBox_virtualbase_keyReleaseEvent".}
proc fcQComboBox_virtualbase_wheelEvent(self: pointer, e: pointer): void {.importc: "QComboBox_virtualbase_wheelEvent".}
proc fcQComboBox_virtualbase_contextMenuEvent(self: pointer, e: pointer): void {.importc: "QComboBox_virtualbase_contextMenuEvent".}
proc fcQComboBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QComboBox_virtualbase_inputMethodEvent".}
proc fcQComboBox_virtualbase_devType(self: pointer): cint {.importc: "QComboBox_virtualbase_devType".}
proc fcQComboBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QComboBox_virtualbase_setVisible".}
proc fcQComboBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QComboBox_virtualbase_heightForWidth".}
proc fcQComboBox_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QComboBox_virtualbase_hasHeightForWidth".}
proc fcQComboBox_virtualbase_paintEngine(self: pointer): pointer {.importc: "QComboBox_virtualbase_paintEngine".}
proc fcQComboBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_mouseDoubleClickEvent".}
proc fcQComboBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_mouseMoveEvent".}
proc fcQComboBox_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_enterEvent".}
proc fcQComboBox_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_leaveEvent".}
proc fcQComboBox_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_moveEvent".}
proc fcQComboBox_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_closeEvent".}
proc fcQComboBox_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_tabletEvent".}
proc fcQComboBox_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_actionEvent".}
proc fcQComboBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_dragEnterEvent".}
proc fcQComboBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_dragMoveEvent".}
proc fcQComboBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_dragLeaveEvent".}
proc fcQComboBox_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_dropEvent".}
proc fcQComboBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QComboBox_virtualbase_nativeEvent".}
proc fcQComboBox_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QComboBox_virtualbase_metric".}
proc fcQComboBox_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QComboBox_virtualbase_initPainter".}
proc fcQComboBox_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QComboBox_virtualbase_redirected".}
proc fcQComboBox_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QComboBox_virtualbase_sharedPainter".}
proc fcQComboBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QComboBox_virtualbase_focusNextPrevChild".}
proc fcQComboBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QComboBox_virtualbase_eventFilter".}
proc fcQComboBox_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_timerEvent".}
proc fcQComboBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_childEvent".}
proc fcQComboBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_customEvent".}
proc fcQComboBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QComboBox_virtualbase_connectNotify".}
proc fcQComboBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QComboBox_virtualbase_disconnectNotify".}
proc fcQComboBox_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QComboBox_protectedbase_initStyleOption".}
proc fcQComboBox_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QComboBox_protectedbase_updateMicroFocus".}
proc fcQComboBox_protectedbase_create(self: pointer): void {.importc: "QComboBox_protectedbase_create".}
proc fcQComboBox_protectedbase_destroy(self: pointer): void {.importc: "QComboBox_protectedbase_destroy".}
proc fcQComboBox_protectedbase_focusNextChild(self: pointer): bool {.importc: "QComboBox_protectedbase_focusNextChild".}
proc fcQComboBox_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QComboBox_protectedbase_focusPreviousChild".}
proc fcQComboBox_protectedbase_sender(self: pointer): pointer {.importc: "QComboBox_protectedbase_sender".}
proc fcQComboBox_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QComboBox_protectedbase_senderSignalIndex".}
proc fcQComboBox_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QComboBox_protectedbase_receivers".}
proc fcQComboBox_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QComboBox_protectedbase_isSignalConnected".}
proc fcQComboBox_new(vtbl, vdata: pointer, parent: pointer): ptr cQComboBox {.importc: "QComboBox_new".}
proc fcQComboBox_new2(vtbl, vdata: pointer): ptr cQComboBox {.importc: "QComboBox_new2".}
proc fcQComboBox_staticMetaObject(): pointer {.importc: "QComboBox_staticMetaObject".}

proc metaObject*(self: gen_qcombobox_types.QComboBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQComboBox_metaObject(self.h), owned: false)

proc metacast*(self: gen_qcombobox_types.QComboBox, param1: cstring): pointer =
  fcQComboBox_metacast(self.h, param1)

proc metacall*(self: gen_qcombobox_types.QComboBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQComboBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcombobox_types.QComboBox, s: cstring): string =
  let v_ms = fcQComboBox_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcombobox_types.QComboBox, s: cstring): string =
  let v_ms = fcQComboBox_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc maxVisibleItems*(self: gen_qcombobox_types.QComboBox): cint =
  fcQComboBox_maxVisibleItems(self.h)

proc setMaxVisibleItems*(self: gen_qcombobox_types.QComboBox, maxItems: cint): void =
  fcQComboBox_setMaxVisibleItems(self.h, maxItems)

proc count*(self: gen_qcombobox_types.QComboBox): cint =
  fcQComboBox_count(self.h)

proc setMaxCount*(self: gen_qcombobox_types.QComboBox, max: cint): void =
  fcQComboBox_setMaxCount(self.h, max)

proc maxCount*(self: gen_qcombobox_types.QComboBox): cint =
  fcQComboBox_maxCount(self.h)

proc autoCompletion*(self: gen_qcombobox_types.QComboBox): bool =
  fcQComboBox_autoCompletion(self.h)

proc setAutoCompletion*(self: gen_qcombobox_types.QComboBox, enable: bool): void =
  fcQComboBox_setAutoCompletion(self.h, enable)

proc autoCompletionCaseSensitivity*(self: gen_qcombobox_types.QComboBox): cint =
  cint(fcQComboBox_autoCompletionCaseSensitivity(self.h))

proc setAutoCompletionCaseSensitivity*(self: gen_qcombobox_types.QComboBox, sensitivity: cint): void =
  fcQComboBox_setAutoCompletionCaseSensitivity(self.h, cint(sensitivity))

proc duplicatesEnabled*(self: gen_qcombobox_types.QComboBox): bool =
  fcQComboBox_duplicatesEnabled(self.h)

proc setDuplicatesEnabled*(self: gen_qcombobox_types.QComboBox, enable: bool): void =
  fcQComboBox_setDuplicatesEnabled(self.h, enable)

proc setFrame*(self: gen_qcombobox_types.QComboBox, frame: bool): void =
  fcQComboBox_setFrame(self.h, frame)

proc hasFrame*(self: gen_qcombobox_types.QComboBox): bool =
  fcQComboBox_hasFrame(self.h)

proc findText*(self: gen_qcombobox_types.QComboBox, text: openArray[char]): cint =
  fcQComboBox_findText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc findData*(self: gen_qcombobox_types.QComboBox, data: gen_qvariant_types.QVariant): cint =
  fcQComboBox_findData(self.h, data.h)

proc insertPolicy*(self: gen_qcombobox_types.QComboBox): cint =
  cint(fcQComboBox_insertPolicy(self.h))

proc setInsertPolicy*(self: gen_qcombobox_types.QComboBox, policy: cint): void =
  fcQComboBox_setInsertPolicy(self.h, cint(policy))

proc sizeAdjustPolicy*(self: gen_qcombobox_types.QComboBox): cint =
  cint(fcQComboBox_sizeAdjustPolicy(self.h))

proc setSizeAdjustPolicy*(self: gen_qcombobox_types.QComboBox, policy: cint): void =
  fcQComboBox_setSizeAdjustPolicy(self.h, cint(policy))

proc minimumContentsLength*(self: gen_qcombobox_types.QComboBox): cint =
  fcQComboBox_minimumContentsLength(self.h)

proc setMinimumContentsLength*(self: gen_qcombobox_types.QComboBox, characters: cint): void =
  fcQComboBox_setMinimumContentsLength(self.h, characters)

proc iconSize*(self: gen_qcombobox_types.QComboBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQComboBox_iconSize(self.h), owned: true)

proc setIconSize*(self: gen_qcombobox_types.QComboBox, size: gen_qsize_types.QSize): void =
  fcQComboBox_setIconSize(self.h, size.h)

proc setPlaceholderText*(self: gen_qcombobox_types.QComboBox, placeholderText: openArray[char]): void =
  fcQComboBox_setPlaceholderText(self.h, struct_miqt_string(data: if len(placeholderText) > 0: addr placeholderText[0] else: nil, len: csize_t(len(placeholderText))))

proc placeholderText*(self: gen_qcombobox_types.QComboBox): string =
  let v_ms = fcQComboBox_placeholderText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isEditable*(self: gen_qcombobox_types.QComboBox): bool =
  fcQComboBox_isEditable(self.h)

proc setEditable*(self: gen_qcombobox_types.QComboBox, editable: bool): void =
  fcQComboBox_setEditable(self.h, editable)

proc setLineEdit*(self: gen_qcombobox_types.QComboBox, edit: gen_qlineedit_types.QLineEdit): void =
  fcQComboBox_setLineEdit(self.h, edit.h)

proc lineEdit*(self: gen_qcombobox_types.QComboBox): gen_qlineedit_types.QLineEdit =
  gen_qlineedit_types.QLineEdit(h: fcQComboBox_lineEdit(self.h), owned: false)

proc setValidator*(self: gen_qcombobox_types.QComboBox, v: gen_qvalidator_types.QValidator): void =
  fcQComboBox_setValidator(self.h, v.h)

proc validator*(self: gen_qcombobox_types.QComboBox): gen_qvalidator_types.QValidator =
  gen_qvalidator_types.QValidator(h: fcQComboBox_validator(self.h), owned: false)

proc setCompleter*(self: gen_qcombobox_types.QComboBox, c: gen_qcompleter_types.QCompleter): void =
  fcQComboBox_setCompleter(self.h, c.h)

proc completer*(self: gen_qcombobox_types.QComboBox): gen_qcompleter_types.QCompleter =
  gen_qcompleter_types.QCompleter(h: fcQComboBox_completer(self.h), owned: false)

proc itemDelegate*(self: gen_qcombobox_types.QComboBox): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQComboBox_itemDelegate(self.h), owned: false)

proc setItemDelegate*(self: gen_qcombobox_types.QComboBox, delegate: gen_qabstractitemdelegate_types.QAbstractItemDelegate): void =
  fcQComboBox_setItemDelegate(self.h, delegate.h)

proc model*(self: gen_qcombobox_types.QComboBox): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQComboBox_model(self.h), owned: false)

proc setModel*(self: gen_qcombobox_types.QComboBox, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQComboBox_setModel(self.h, model.h)

proc rootModelIndex*(self: gen_qcombobox_types.QComboBox): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQComboBox_rootModelIndex(self.h), owned: true)

proc setRootModelIndex*(self: gen_qcombobox_types.QComboBox, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQComboBox_setRootModelIndex(self.h, index.h)

proc modelColumn*(self: gen_qcombobox_types.QComboBox): cint =
  fcQComboBox_modelColumn(self.h)

proc setModelColumn*(self: gen_qcombobox_types.QComboBox, visibleColumn: cint): void =
  fcQComboBox_setModelColumn(self.h, visibleColumn)

proc currentIndex*(self: gen_qcombobox_types.QComboBox): cint =
  fcQComboBox_currentIndex(self.h)

proc currentText*(self: gen_qcombobox_types.QComboBox): string =
  let v_ms = fcQComboBox_currentText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc currentData*(self: gen_qcombobox_types.QComboBox): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQComboBox_currentData(self.h), owned: true)

proc itemText*(self: gen_qcombobox_types.QComboBox, index: cint): string =
  let v_ms = fcQComboBox_itemText(self.h, index)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc itemIcon*(self: gen_qcombobox_types.QComboBox, index: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQComboBox_itemIcon(self.h, index), owned: true)

proc itemData*(self: gen_qcombobox_types.QComboBox, index: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQComboBox_itemData(self.h, index), owned: true)

proc addItem*(self: gen_qcombobox_types.QComboBox, text: openArray[char]): void =
  fcQComboBox_addItem(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc addItem*(self: gen_qcombobox_types.QComboBox, icon: gen_qicon_types.QIcon, text: openArray[char]): void =
  fcQComboBox_addItem2(self.h, icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc addItems*(self: gen_qcombobox_types.QComboBox, texts: openArray[string]): void =
  var texts_CArray = newSeq[struct_miqt_string](len(texts))
  for i in 0..<len(texts):
    texts_CArray[i] = struct_miqt_string(data: if len(texts[i]) > 0: addr texts[i][0] else: nil, len: csize_t(len(texts[i])))

  fcQComboBox_addItems(self.h, struct_miqt_array(len: csize_t(len(texts)), data: if len(texts) == 0: nil else: addr(texts_CArray[0])))

proc insertItem*(self: gen_qcombobox_types.QComboBox, index: cint, text: openArray[char]): void =
  fcQComboBox_insertItem(self.h, index, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc insertItem*(self: gen_qcombobox_types.QComboBox, index: cint, icon: gen_qicon_types.QIcon, text: openArray[char]): void =
  fcQComboBox_insertItem2(self.h, index, icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc insertItems*(self: gen_qcombobox_types.QComboBox, index: cint, texts: openArray[string]): void =
  var texts_CArray = newSeq[struct_miqt_string](len(texts))
  for i in 0..<len(texts):
    texts_CArray[i] = struct_miqt_string(data: if len(texts[i]) > 0: addr texts[i][0] else: nil, len: csize_t(len(texts[i])))

  fcQComboBox_insertItems(self.h, index, struct_miqt_array(len: csize_t(len(texts)), data: if len(texts) == 0: nil else: addr(texts_CArray[0])))

proc insertSeparator*(self: gen_qcombobox_types.QComboBox, index: cint): void =
  fcQComboBox_insertSeparator(self.h, index)

proc removeItem*(self: gen_qcombobox_types.QComboBox, index: cint): void =
  fcQComboBox_removeItem(self.h, index)

proc setItemText*(self: gen_qcombobox_types.QComboBox, index: cint, text: openArray[char]): void =
  fcQComboBox_setItemText(self.h, index, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc setItemIcon*(self: gen_qcombobox_types.QComboBox, index: cint, icon: gen_qicon_types.QIcon): void =
  fcQComboBox_setItemIcon(self.h, index, icon.h)

proc setItemData*(self: gen_qcombobox_types.QComboBox, index: cint, value: gen_qvariant_types.QVariant): void =
  fcQComboBox_setItemData(self.h, index, value.h)

proc view*(self: gen_qcombobox_types.QComboBox): gen_qabstractitemview_types.QAbstractItemView =
  gen_qabstractitemview_types.QAbstractItemView(h: fcQComboBox_view(self.h), owned: false)

proc setView*(self: gen_qcombobox_types.QComboBox, itemView: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQComboBox_setView(self.h, itemView.h)

proc sizeHint*(self: gen_qcombobox_types.QComboBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQComboBox_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qcombobox_types.QComboBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQComboBox_minimumSizeHint(self.h), owned: true)

proc showPopup*(self: gen_qcombobox_types.QComboBox): void =
  fcQComboBox_showPopup(self.h)

proc hidePopup*(self: gen_qcombobox_types.QComboBox): void =
  fcQComboBox_hidePopup(self.h)

proc event*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QEvent): bool =
  fcQComboBox_event(self.h, event.h)

proc inputMethodQuery*(self: gen_qcombobox_types.QComboBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQComboBox_inputMethodQuery(self.h, cint(param1)), owned: true)

proc inputMethodQuery*(self: gen_qcombobox_types.QComboBox, query: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQComboBox_inputMethodQuery2(self.h, cint(query), argument.h), owned: true)

proc clear*(self: gen_qcombobox_types.QComboBox): void =
  fcQComboBox_clear(self.h)

proc clearEditText*(self: gen_qcombobox_types.QComboBox): void =
  fcQComboBox_clearEditText(self.h)

proc setEditText*(self: gen_qcombobox_types.QComboBox, text: openArray[char]): void =
  fcQComboBox_setEditText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc setCurrentIndex*(self: gen_qcombobox_types.QComboBox, index: cint): void =
  fcQComboBox_setCurrentIndex(self.h, index)

proc setCurrentText*(self: gen_qcombobox_types.QComboBox, text: openArray[char]): void =
  fcQComboBox_setCurrentText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc editTextChanged*(self: gen_qcombobox_types.QComboBox, param1: openArray[char]): void =
  fcQComboBox_editTextChanged(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

type QComboBoxeditTextChangedSlot* = proc(param1: openArray[char])
proc fcQComboBox_slot_callback_editTextChanged(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QComboBoxeditTextChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc fcQComboBox_slot_callback_editTextChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QComboBoxeditTextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onEditTextChanged*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxeditTextChangedSlot) =
  var tmp = new QComboBoxeditTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_editTextChanged(self.h, cast[int](addr tmp[]), fcQComboBox_slot_callback_editTextChanged, fcQComboBox_slot_callback_editTextChanged_release)

proc activated*(self: gen_qcombobox_types.QComboBox, index: cint): void =
  fcQComboBox_activated(self.h, index)

type QComboBoxactivatedSlot* = proc(index: cint)
proc fcQComboBox_slot_callback_activated(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QComboBoxactivatedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc fcQComboBox_slot_callback_activated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QComboBoxactivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onActivated*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxactivatedSlot) =
  var tmp = new QComboBoxactivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_activated(self.h, cast[int](addr tmp[]), fcQComboBox_slot_callback_activated, fcQComboBox_slot_callback_activated_release)

proc textActivated*(self: gen_qcombobox_types.QComboBox, param1: openArray[char]): void =
  fcQComboBox_textActivated(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

type QComboBoxtextActivatedSlot* = proc(param1: openArray[char])
proc fcQComboBox_slot_callback_textActivated(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QComboBoxtextActivatedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc fcQComboBox_slot_callback_textActivated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QComboBoxtextActivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTextActivated*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxtextActivatedSlot) =
  var tmp = new QComboBoxtextActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_textActivated(self.h, cast[int](addr tmp[]), fcQComboBox_slot_callback_textActivated, fcQComboBox_slot_callback_textActivated_release)

proc highlighted*(self: gen_qcombobox_types.QComboBox, index: cint): void =
  fcQComboBox_highlighted(self.h, index)

type QComboBoxhighlightedSlot* = proc(index: cint)
proc fcQComboBox_slot_callback_highlighted(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QComboBoxhighlightedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc fcQComboBox_slot_callback_highlighted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QComboBoxhighlightedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onHighlighted*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxhighlightedSlot) =
  var tmp = new QComboBoxhighlightedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_highlighted(self.h, cast[int](addr tmp[]), fcQComboBox_slot_callback_highlighted, fcQComboBox_slot_callback_highlighted_release)

proc textHighlighted*(self: gen_qcombobox_types.QComboBox, param1: openArray[char]): void =
  fcQComboBox_textHighlighted(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

type QComboBoxtextHighlightedSlot* = proc(param1: openArray[char])
proc fcQComboBox_slot_callback_textHighlighted(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QComboBoxtextHighlightedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc fcQComboBox_slot_callback_textHighlighted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QComboBoxtextHighlightedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTextHighlighted*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxtextHighlightedSlot) =
  var tmp = new QComboBoxtextHighlightedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_textHighlighted(self.h, cast[int](addr tmp[]), fcQComboBox_slot_callback_textHighlighted, fcQComboBox_slot_callback_textHighlighted_release)

proc currentIndexChanged*(self: gen_qcombobox_types.QComboBox, index: cint): void =
  fcQComboBox_currentIndexChanged(self.h, index)

type QComboBoxcurrentIndexChangedSlot* = proc(index: cint)
proc fcQComboBox_slot_callback_currentIndexChanged(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QComboBoxcurrentIndexChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc fcQComboBox_slot_callback_currentIndexChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QComboBoxcurrentIndexChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentIndexChanged*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxcurrentIndexChangedSlot) =
  var tmp = new QComboBoxcurrentIndexChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_currentIndexChanged(self.h, cast[int](addr tmp[]), fcQComboBox_slot_callback_currentIndexChanged, fcQComboBox_slot_callback_currentIndexChanged_release)

proc currentIndexChanged*(self: gen_qcombobox_types.QComboBox, param1: openArray[char]): void =
  fcQComboBox_currentIndexChangedWithQString(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

type QComboBoxcurrentIndexChangedWithQStringSlot* = proc(param1: openArray[char])
proc fcQComboBox_slot_callback_currentIndexChangedWithQString(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QComboBoxcurrentIndexChangedWithQStringSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc fcQComboBox_slot_callback_currentIndexChangedWithQString_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QComboBoxcurrentIndexChangedWithQStringSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentIndexChanged*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxcurrentIndexChangedWithQStringSlot) =
  var tmp = new QComboBoxcurrentIndexChangedWithQStringSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_currentIndexChangedWithQString(self.h, cast[int](addr tmp[]), fcQComboBox_slot_callback_currentIndexChangedWithQString, fcQComboBox_slot_callback_currentIndexChangedWithQString_release)

proc currentTextChanged*(self: gen_qcombobox_types.QComboBox, param1: openArray[char]): void =
  fcQComboBox_currentTextChanged(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

type QComboBoxcurrentTextChangedSlot* = proc(param1: openArray[char])
proc fcQComboBox_slot_callback_currentTextChanged(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QComboBoxcurrentTextChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc fcQComboBox_slot_callback_currentTextChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QComboBoxcurrentTextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentTextChanged*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxcurrentTextChangedSlot) =
  var tmp = new QComboBoxcurrentTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_currentTextChanged(self.h, cast[int](addr tmp[]), fcQComboBox_slot_callback_currentTextChanged, fcQComboBox_slot_callback_currentTextChanged_release)

proc activated*(self: gen_qcombobox_types.QComboBox, param1: openArray[char]): void =
  fcQComboBox_activatedWithQString(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

type QComboBoxactivatedWithQStringSlot* = proc(param1: openArray[char])
proc fcQComboBox_slot_callback_activatedWithQString(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QComboBoxactivatedWithQStringSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc fcQComboBox_slot_callback_activatedWithQString_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QComboBoxactivatedWithQStringSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onActivated*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxactivatedWithQStringSlot) =
  var tmp = new QComboBoxactivatedWithQStringSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_activatedWithQString(self.h, cast[int](addr tmp[]), fcQComboBox_slot_callback_activatedWithQString, fcQComboBox_slot_callback_activatedWithQString_release)

proc highlighted*(self: gen_qcombobox_types.QComboBox, param1: openArray[char]): void =
  fcQComboBox_highlightedWithQString(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

type QComboBoxhighlightedWithQStringSlot* = proc(param1: openArray[char])
proc fcQComboBox_slot_callback_highlightedWithQString(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QComboBoxhighlightedWithQStringSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc fcQComboBox_slot_callback_highlightedWithQString_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QComboBoxhighlightedWithQStringSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onHighlighted*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxhighlightedWithQStringSlot) =
  var tmp = new QComboBoxhighlightedWithQStringSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_highlightedWithQString(self.h, cast[int](addr tmp[]), fcQComboBox_slot_callback_highlightedWithQString, fcQComboBox_slot_callback_highlightedWithQString_release)

proc tr*(_: type gen_qcombobox_types.QComboBox, s: cstring, c: cstring): string =
  let v_ms = fcQComboBox_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcombobox_types.QComboBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQComboBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcombobox_types.QComboBox, s: cstring, c: cstring): string =
  let v_ms = fcQComboBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcombobox_types.QComboBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQComboBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc findText*(self: gen_qcombobox_types.QComboBox, text: openArray[char], flags: cint): cint =
  fcQComboBox_findText2(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(flags))

proc findData*(self: gen_qcombobox_types.QComboBox, data: gen_qvariant_types.QVariant, role: cint): cint =
  fcQComboBox_findData2(self.h, data.h, role)

proc findData*(self: gen_qcombobox_types.QComboBox, data: gen_qvariant_types.QVariant, role: cint, flags: cint): cint =
  fcQComboBox_findData3(self.h, data.h, role, cint(flags))

proc currentData*(self: gen_qcombobox_types.QComboBox, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQComboBox_currentData1(self.h, role), owned: true)

proc itemData*(self: gen_qcombobox_types.QComboBox, index: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQComboBox_itemData2(self.h, index, role), owned: true)

proc addItem*(self: gen_qcombobox_types.QComboBox, text: openArray[char], userData: gen_qvariant_types.QVariant): void =
  fcQComboBox_addItem22(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), userData.h)

proc addItem*(self: gen_qcombobox_types.QComboBox, icon: gen_qicon_types.QIcon, text: openArray[char], userData: gen_qvariant_types.QVariant): void =
  fcQComboBox_addItem3(self.h, icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), userData.h)

proc insertItem*(self: gen_qcombobox_types.QComboBox, index: cint, text: openArray[char], userData: gen_qvariant_types.QVariant): void =
  fcQComboBox_insertItem3(self.h, index, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), userData.h)

proc insertItem*(self: gen_qcombobox_types.QComboBox, index: cint, icon: gen_qicon_types.QIcon, text: openArray[char], userData: gen_qvariant_types.QVariant): void =
  fcQComboBox_insertItem4(self.h, index, icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), userData.h)

proc setItemData*(self: gen_qcombobox_types.QComboBox, index: cint, value: gen_qvariant_types.QVariant, role: cint): void =
  fcQComboBox_setItemData3(self.h, index, value.h, role)

type QComboBoxmetaObjectProc* = proc(self: QComboBox): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QComboBoxmetacastProc* = proc(self: QComboBox, param1: cstring): pointer {.raises: [], gcsafe.}
type QComboBoxmetacallProc* = proc(self: QComboBox, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QComboBoxsizeHintProc* = proc(self: QComboBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QComboBoxminimumSizeHintProc* = proc(self: QComboBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QComboBoxshowPopupProc* = proc(self: QComboBox): void {.raises: [], gcsafe.}
type QComboBoxhidePopupProc* = proc(self: QComboBox): void {.raises: [], gcsafe.}
type QComboBoxeventProc* = proc(self: QComboBox, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QComboBoxinputMethodQueryProc* = proc(self: QComboBox, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QComboBoxfocusInEventProc* = proc(self: QComboBox, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QComboBoxfocusOutEventProc* = proc(self: QComboBox, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QComboBoxchangeEventProc* = proc(self: QComboBox, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QComboBoxresizeEventProc* = proc(self: QComboBox, e: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QComboBoxpaintEventProc* = proc(self: QComboBox, e: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QComboBoxshowEventProc* = proc(self: QComboBox, e: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QComboBoxhideEventProc* = proc(self: QComboBox, e: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QComboBoxmousePressEventProc* = proc(self: QComboBox, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QComboBoxmouseReleaseEventProc* = proc(self: QComboBox, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QComboBoxkeyPressEventProc* = proc(self: QComboBox, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QComboBoxkeyReleaseEventProc* = proc(self: QComboBox, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QComboBoxwheelEventProc* = proc(self: QComboBox, e: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QComboBoxcontextMenuEventProc* = proc(self: QComboBox, e: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QComboBoxinputMethodEventProc* = proc(self: QComboBox, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QComboBoxdevTypeProc* = proc(self: QComboBox): cint {.raises: [], gcsafe.}
type QComboBoxsetVisibleProc* = proc(self: QComboBox, visible: bool): void {.raises: [], gcsafe.}
type QComboBoxheightForWidthProc* = proc(self: QComboBox, param1: cint): cint {.raises: [], gcsafe.}
type QComboBoxhasHeightForWidthProc* = proc(self: QComboBox): bool {.raises: [], gcsafe.}
type QComboBoxpaintEngineProc* = proc(self: QComboBox): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QComboBoxmouseDoubleClickEventProc* = proc(self: QComboBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QComboBoxmouseMoveEventProc* = proc(self: QComboBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QComboBoxenterEventProc* = proc(self: QComboBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QComboBoxleaveEventProc* = proc(self: QComboBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QComboBoxmoveEventProc* = proc(self: QComboBox, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QComboBoxcloseEventProc* = proc(self: QComboBox, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QComboBoxtabletEventProc* = proc(self: QComboBox, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QComboBoxactionEventProc* = proc(self: QComboBox, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QComboBoxdragEnterEventProc* = proc(self: QComboBox, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QComboBoxdragMoveEventProc* = proc(self: QComboBox, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QComboBoxdragLeaveEventProc* = proc(self: QComboBox, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QComboBoxdropEventProc* = proc(self: QComboBox, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QComboBoxnativeEventProc* = proc(self: QComboBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QComboBoxmetricProc* = proc(self: QComboBox, param1: cint): cint {.raises: [], gcsafe.}
type QComboBoxinitPainterProc* = proc(self: QComboBox, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QComboBoxredirectedProc* = proc(self: QComboBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QComboBoxsharedPainterProc* = proc(self: QComboBox): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QComboBoxfocusNextPrevChildProc* = proc(self: QComboBox, next: bool): bool {.raises: [], gcsafe.}
type QComboBoxeventFilterProc* = proc(self: QComboBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QComboBoxtimerEventProc* = proc(self: QComboBox, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QComboBoxchildEventProc* = proc(self: QComboBox, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QComboBoxcustomEventProc* = proc(self: QComboBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QComboBoxconnectNotifyProc* = proc(self: QComboBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QComboBoxdisconnectNotifyProc* = proc(self: QComboBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QComboBoxVTable* {.inheritable, pure.} = object
  vtbl: cQComboBoxVTable
  metaObject*: QComboBoxmetaObjectProc
  metacast*: QComboBoxmetacastProc
  metacall*: QComboBoxmetacallProc
  sizeHint*: QComboBoxsizeHintProc
  minimumSizeHint*: QComboBoxminimumSizeHintProc
  showPopup*: QComboBoxshowPopupProc
  hidePopup*: QComboBoxhidePopupProc
  event*: QComboBoxeventProc
  inputMethodQuery*: QComboBoxinputMethodQueryProc
  focusInEvent*: QComboBoxfocusInEventProc
  focusOutEvent*: QComboBoxfocusOutEventProc
  changeEvent*: QComboBoxchangeEventProc
  resizeEvent*: QComboBoxresizeEventProc
  paintEvent*: QComboBoxpaintEventProc
  showEvent*: QComboBoxshowEventProc
  hideEvent*: QComboBoxhideEventProc
  mousePressEvent*: QComboBoxmousePressEventProc
  mouseReleaseEvent*: QComboBoxmouseReleaseEventProc
  keyPressEvent*: QComboBoxkeyPressEventProc
  keyReleaseEvent*: QComboBoxkeyReleaseEventProc
  wheelEvent*: QComboBoxwheelEventProc
  contextMenuEvent*: QComboBoxcontextMenuEventProc
  inputMethodEvent*: QComboBoxinputMethodEventProc
  devType*: QComboBoxdevTypeProc
  setVisible*: QComboBoxsetVisibleProc
  heightForWidth*: QComboBoxheightForWidthProc
  hasHeightForWidth*: QComboBoxhasHeightForWidthProc
  paintEngine*: QComboBoxpaintEngineProc
  mouseDoubleClickEvent*: QComboBoxmouseDoubleClickEventProc
  mouseMoveEvent*: QComboBoxmouseMoveEventProc
  enterEvent*: QComboBoxenterEventProc
  leaveEvent*: QComboBoxleaveEventProc
  moveEvent*: QComboBoxmoveEventProc
  closeEvent*: QComboBoxcloseEventProc
  tabletEvent*: QComboBoxtabletEventProc
  actionEvent*: QComboBoxactionEventProc
  dragEnterEvent*: QComboBoxdragEnterEventProc
  dragMoveEvent*: QComboBoxdragMoveEventProc
  dragLeaveEvent*: QComboBoxdragLeaveEventProc
  dropEvent*: QComboBoxdropEventProc
  nativeEvent*: QComboBoxnativeEventProc
  metric*: QComboBoxmetricProc
  initPainter*: QComboBoxinitPainterProc
  redirected*: QComboBoxredirectedProc
  sharedPainter*: QComboBoxsharedPainterProc
  focusNextPrevChild*: QComboBoxfocusNextPrevChildProc
  eventFilter*: QComboBoxeventFilterProc
  timerEvent*: QComboBoxtimerEventProc
  childEvent*: QComboBoxchildEventProc
  customEvent*: QComboBoxcustomEventProc
  connectNotify*: QComboBoxconnectNotifyProc
  disconnectNotify*: QComboBoxdisconnectNotifyProc

proc QComboBoxmetaObject*(self: gen_qcombobox_types.QComboBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQComboBox_virtualbase_metaObject(self.h), owned: false)

proc QComboBoxmetacast*(self: gen_qcombobox_types.QComboBox, param1: cstring): pointer =
  fcQComboBox_virtualbase_metacast(self.h, param1)

proc QComboBoxmetacall*(self: gen_qcombobox_types.QComboBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQComboBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QComboBoxsizeHint*(self: gen_qcombobox_types.QComboBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQComboBox_virtualbase_sizeHint(self.h), owned: true)

proc QComboBoxminimumSizeHint*(self: gen_qcombobox_types.QComboBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQComboBox_virtualbase_minimumSizeHint(self.h), owned: true)

proc QComboBoxshowPopup*(self: gen_qcombobox_types.QComboBox): void =
  fcQComboBox_virtualbase_showPopup(self.h)

proc QComboBoxhidePopup*(self: gen_qcombobox_types.QComboBox): void =
  fcQComboBox_virtualbase_hidePopup(self.h)

proc QComboBoxevent*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QEvent): bool =
  fcQComboBox_virtualbase_event(self.h, event.h)

proc QComboBoxinputMethodQuery*(self: gen_qcombobox_types.QComboBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQComboBox_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QComboBoxfocusInEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QFocusEvent): void =
  fcQComboBox_virtualbase_focusInEvent(self.h, e.h)

proc QComboBoxfocusOutEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QFocusEvent): void =
  fcQComboBox_virtualbase_focusOutEvent(self.h, e.h)

proc QComboBoxchangeEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qcoreevent_types.QEvent): void =
  fcQComboBox_virtualbase_changeEvent(self.h, e.h)

proc QComboBoxresizeEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QResizeEvent): void =
  fcQComboBox_virtualbase_resizeEvent(self.h, e.h)

proc QComboBoxpaintEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QPaintEvent): void =
  fcQComboBox_virtualbase_paintEvent(self.h, e.h)

proc QComboBoxshowEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QShowEvent): void =
  fcQComboBox_virtualbase_showEvent(self.h, e.h)

proc QComboBoxhideEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QHideEvent): void =
  fcQComboBox_virtualbase_hideEvent(self.h, e.h)

proc QComboBoxmousePressEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QMouseEvent): void =
  fcQComboBox_virtualbase_mousePressEvent(self.h, e.h)

proc QComboBoxmouseReleaseEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QMouseEvent): void =
  fcQComboBox_virtualbase_mouseReleaseEvent(self.h, e.h)

proc QComboBoxkeyPressEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QKeyEvent): void =
  fcQComboBox_virtualbase_keyPressEvent(self.h, e.h)

proc QComboBoxkeyReleaseEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QKeyEvent): void =
  fcQComboBox_virtualbase_keyReleaseEvent(self.h, e.h)

proc QComboBoxwheelEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QWheelEvent): void =
  fcQComboBox_virtualbase_wheelEvent(self.h, e.h)

proc QComboBoxcontextMenuEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QContextMenuEvent): void =
  fcQComboBox_virtualbase_contextMenuEvent(self.h, e.h)

proc QComboBoxinputMethodEvent*(self: gen_qcombobox_types.QComboBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQComboBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc QComboBoxdevType*(self: gen_qcombobox_types.QComboBox): cint =
  fcQComboBox_virtualbase_devType(self.h)

proc QComboBoxsetVisible*(self: gen_qcombobox_types.QComboBox, visible: bool): void =
  fcQComboBox_virtualbase_setVisible(self.h, visible)

proc QComboBoxheightForWidth*(self: gen_qcombobox_types.QComboBox, param1: cint): cint =
  fcQComboBox_virtualbase_heightForWidth(self.h, param1)

proc QComboBoxhasHeightForWidth*(self: gen_qcombobox_types.QComboBox): bool =
  fcQComboBox_virtualbase_hasHeightForWidth(self.h)

proc QComboBoxpaintEngine*(self: gen_qcombobox_types.QComboBox): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQComboBox_virtualbase_paintEngine(self.h), owned: false)

proc QComboBoxmouseDoubleClickEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QMouseEvent): void =
  fcQComboBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QComboBoxmouseMoveEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QMouseEvent): void =
  fcQComboBox_virtualbase_mouseMoveEvent(self.h, event.h)

proc QComboBoxenterEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QEvent): void =
  fcQComboBox_virtualbase_enterEvent(self.h, event.h)

proc QComboBoxleaveEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QEvent): void =
  fcQComboBox_virtualbase_leaveEvent(self.h, event.h)

proc QComboBoxmoveEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QMoveEvent): void =
  fcQComboBox_virtualbase_moveEvent(self.h, event.h)

proc QComboBoxcloseEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QCloseEvent): void =
  fcQComboBox_virtualbase_closeEvent(self.h, event.h)

proc QComboBoxtabletEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QTabletEvent): void =
  fcQComboBox_virtualbase_tabletEvent(self.h, event.h)

proc QComboBoxactionEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QActionEvent): void =
  fcQComboBox_virtualbase_actionEvent(self.h, event.h)

proc QComboBoxdragEnterEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQComboBox_virtualbase_dragEnterEvent(self.h, event.h)

proc QComboBoxdragMoveEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQComboBox_virtualbase_dragMoveEvent(self.h, event.h)

proc QComboBoxdragLeaveEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQComboBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc QComboBoxdropEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QDropEvent): void =
  fcQComboBox_virtualbase_dropEvent(self.h, event.h)

proc QComboBoxnativeEvent*(self: gen_qcombobox_types.QComboBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQComboBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QComboBoxmetric*(self: gen_qcombobox_types.QComboBox, param1: cint): cint =
  fcQComboBox_virtualbase_metric(self.h, cint(param1))

proc QComboBoxinitPainter*(self: gen_qcombobox_types.QComboBox, painter: gen_qpainter_types.QPainter): void =
  fcQComboBox_virtualbase_initPainter(self.h, painter.h)

proc QComboBoxredirected*(self: gen_qcombobox_types.QComboBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQComboBox_virtualbase_redirected(self.h, offset.h), owned: false)

proc QComboBoxsharedPainter*(self: gen_qcombobox_types.QComboBox): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQComboBox_virtualbase_sharedPainter(self.h), owned: false)

proc QComboBoxfocusNextPrevChild*(self: gen_qcombobox_types.QComboBox, next: bool): bool =
  fcQComboBox_virtualbase_focusNextPrevChild(self.h, next)

proc QComboBoxeventFilter*(self: gen_qcombobox_types.QComboBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQComboBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QComboBoxtimerEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQComboBox_virtualbase_timerEvent(self.h, event.h)

proc QComboBoxchildEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQComboBox_virtualbase_childEvent(self.h, event.h)

proc QComboBoxcustomEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QEvent): void =
  fcQComboBox_virtualbase_customEvent(self.h, event.h)

proc QComboBoxconnectNotify*(self: gen_qcombobox_types.QComboBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQComboBox_virtualbase_connectNotify(self.h, signal.h)

proc QComboBoxdisconnectNotify*(self: gen_qcombobox_types.QComboBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQComboBox_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQComboBox_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQComboBox_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQComboBox_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQComboBox_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQComboBox_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQComboBox_vtable_callback_showPopup(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  vtbl[].showPopup(self)

proc fcQComboBox_vtable_callback_hidePopup(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  vtbl[].hidePopup(self)

proc fcQComboBox_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQComboBox_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQComboBox_vtable_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQComboBox_vtable_callback_focusOutEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQComboBox_vtable_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQComboBox_vtable_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQComboBox_vtable_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQComboBox_vtable_callback_showEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: e, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQComboBox_vtable_callback_hideEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: e, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQComboBox_vtable_callback_mousePressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQComboBox_vtable_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQComboBox_vtable_callback_keyPressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQComboBox_vtable_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQComboBox_vtable_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQComboBox_vtable_callback_contextMenuEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQComboBox_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQComboBox_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQComboBox_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQComboBox_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQComboBox_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQComboBox_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQComboBox_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQComboBox_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQComboBox_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQComboBox_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQComboBox_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQComboBox_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQComboBox_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQComboBox_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQComboBox_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQComboBox_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQComboBox_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQComboBox_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQComboBox_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQComboBox_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQComboBox_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQComboBox_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQComboBox_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQComboBox_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQComboBox_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQComboBox_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQComboBox_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQComboBox_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQComboBox_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQComboBox_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](fcQComboBox_vdata(self))
  let self = QComboBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQComboBox* {.inheritable.} = ref object of QComboBox
  vtbl*: cQComboBoxVTable

method metaObject*(self: VirtualQComboBox): gen_qobjectdefs_types.QMetaObject {.base.} =
  QComboBoxmetaObject(self[])
method metacast*(self: VirtualQComboBox, param1: cstring): pointer {.base.} =
  QComboBoxmetacast(self[], param1)
method metacall*(self: VirtualQComboBox, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QComboBoxmetacall(self[], param1, param2, param3)
method sizeHint*(self: VirtualQComboBox): gen_qsize_types.QSize {.base.} =
  QComboBoxsizeHint(self[])
method minimumSizeHint*(self: VirtualQComboBox): gen_qsize_types.QSize {.base.} =
  QComboBoxminimumSizeHint(self[])
method showPopup*(self: VirtualQComboBox): void {.base.} =
  QComboBoxshowPopup(self[])
method hidePopup*(self: VirtualQComboBox): void {.base.} =
  QComboBoxhidePopup(self[])
method event*(self: VirtualQComboBox, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QComboBoxevent(self[], event)
method inputMethodQuery*(self: VirtualQComboBox, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QComboBoxinputMethodQuery(self[], param1)
method focusInEvent*(self: VirtualQComboBox, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QComboBoxfocusInEvent(self[], e)
method focusOutEvent*(self: VirtualQComboBox, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QComboBoxfocusOutEvent(self[], e)
method changeEvent*(self: VirtualQComboBox, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QComboBoxchangeEvent(self[], e)
method resizeEvent*(self: VirtualQComboBox, e: gen_qevent_types.QResizeEvent): void {.base.} =
  QComboBoxresizeEvent(self[], e)
method paintEvent*(self: VirtualQComboBox, e: gen_qevent_types.QPaintEvent): void {.base.} =
  QComboBoxpaintEvent(self[], e)
method showEvent*(self: VirtualQComboBox, e: gen_qevent_types.QShowEvent): void {.base.} =
  QComboBoxshowEvent(self[], e)
method hideEvent*(self: VirtualQComboBox, e: gen_qevent_types.QHideEvent): void {.base.} =
  QComboBoxhideEvent(self[], e)
method mousePressEvent*(self: VirtualQComboBox, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QComboBoxmousePressEvent(self[], e)
method mouseReleaseEvent*(self: VirtualQComboBox, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QComboBoxmouseReleaseEvent(self[], e)
method keyPressEvent*(self: VirtualQComboBox, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QComboBoxkeyPressEvent(self[], e)
method keyReleaseEvent*(self: VirtualQComboBox, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QComboBoxkeyReleaseEvent(self[], e)
method wheelEvent*(self: VirtualQComboBox, e: gen_qevent_types.QWheelEvent): void {.base.} =
  QComboBoxwheelEvent(self[], e)
method contextMenuEvent*(self: VirtualQComboBox, e: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QComboBoxcontextMenuEvent(self[], e)
method inputMethodEvent*(self: VirtualQComboBox, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QComboBoxinputMethodEvent(self[], param1)
method devType*(self: VirtualQComboBox): cint {.base.} =
  QComboBoxdevType(self[])
method setVisible*(self: VirtualQComboBox, visible: bool): void {.base.} =
  QComboBoxsetVisible(self[], visible)
method heightForWidth*(self: VirtualQComboBox, param1: cint): cint {.base.} =
  QComboBoxheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQComboBox): bool {.base.} =
  QComboBoxhasHeightForWidth(self[])
method paintEngine*(self: VirtualQComboBox): gen_qpaintengine_types.QPaintEngine {.base.} =
  QComboBoxpaintEngine(self[])
method mouseDoubleClickEvent*(self: VirtualQComboBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QComboBoxmouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQComboBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QComboBoxmouseMoveEvent(self[], event)
method enterEvent*(self: VirtualQComboBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QComboBoxenterEvent(self[], event)
method leaveEvent*(self: VirtualQComboBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QComboBoxleaveEvent(self[], event)
method moveEvent*(self: VirtualQComboBox, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QComboBoxmoveEvent(self[], event)
method closeEvent*(self: VirtualQComboBox, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QComboBoxcloseEvent(self[], event)
method tabletEvent*(self: VirtualQComboBox, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QComboBoxtabletEvent(self[], event)
method actionEvent*(self: VirtualQComboBox, event: gen_qevent_types.QActionEvent): void {.base.} =
  QComboBoxactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQComboBox, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QComboBoxdragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQComboBox, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QComboBoxdragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQComboBox, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QComboBoxdragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQComboBox, event: gen_qevent_types.QDropEvent): void {.base.} =
  QComboBoxdropEvent(self[], event)
method nativeEvent*(self: VirtualQComboBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QComboBoxnativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQComboBox, param1: cint): cint {.base.} =
  QComboBoxmetric(self[], param1)
method initPainter*(self: VirtualQComboBox, painter: gen_qpainter_types.QPainter): void {.base.} =
  QComboBoxinitPainter(self[], painter)
method redirected*(self: VirtualQComboBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QComboBoxredirected(self[], offset)
method sharedPainter*(self: VirtualQComboBox): gen_qpainter_types.QPainter {.base.} =
  QComboBoxsharedPainter(self[])
method focusNextPrevChild*(self: VirtualQComboBox, next: bool): bool {.base.} =
  QComboBoxfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQComboBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QComboBoxeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQComboBox, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QComboBoxtimerEvent(self[], event)
method childEvent*(self: VirtualQComboBox, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QComboBoxchildEvent(self[], event)
method customEvent*(self: VirtualQComboBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QComboBoxcustomEvent(self[], event)
method connectNotify*(self: VirtualQComboBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QComboBoxconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQComboBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QComboBoxdisconnectNotify(self[], signal)

proc fcQComboBox_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQComboBox_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQComboBox_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQComboBox_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQComboBox_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQComboBox_method_callback_showPopup(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  inst.showPopup()

proc fcQComboBox_method_callback_hidePopup(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  inst.hidePopup()

proc fcQComboBox_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQComboBox_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQComboBox_method_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  inst.focusInEvent(slotval1)

proc fcQComboBox_method_callback_focusOutEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQComboBox_method_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  inst.changeEvent(slotval1)

proc fcQComboBox_method_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  inst.resizeEvent(slotval1)

proc fcQComboBox_method_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  inst.paintEvent(slotval1)

proc fcQComboBox_method_callback_showEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: e, owned: false)
  inst.showEvent(slotval1)

proc fcQComboBox_method_callback_hideEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: e, owned: false)
  inst.hideEvent(slotval1)

proc fcQComboBox_method_callback_mousePressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQComboBox_method_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQComboBox_method_callback_keyPressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQComboBox_method_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQComboBox_method_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  inst.wheelEvent(slotval1)

proc fcQComboBox_method_callback_contextMenuEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQComboBox_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQComboBox_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQComboBox_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQComboBox_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQComboBox_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQComboBox_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQComboBox_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQComboBox_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQComboBox_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQComboBox_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQComboBox_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQComboBox_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQComboBox_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQComboBox_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQComboBox_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQComboBox_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQComboBox_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQComboBox_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQComboBox_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQComboBox_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQComboBox_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQComboBox_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQComboBox_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQComboBox_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQComboBox_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQComboBox_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQComboBox_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQComboBox_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQComboBox_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQComboBox_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQComboBox](fcQComboBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc initStyleOption*(self: gen_qcombobox_types.QComboBox, option: gen_qstyleoption_types.QStyleOptionComboBox): void =
  fcQComboBox_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qcombobox_types.QComboBox): void =
  fcQComboBox_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qcombobox_types.QComboBox): void =
  fcQComboBox_protectedbase_create(self.h)

proc destroy*(self: gen_qcombobox_types.QComboBox): void =
  fcQComboBox_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qcombobox_types.QComboBox): bool =
  fcQComboBox_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qcombobox_types.QComboBox): bool =
  fcQComboBox_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qcombobox_types.QComboBox): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQComboBox_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcombobox_types.QComboBox): cint =
  fcQComboBox_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcombobox_types.QComboBox, signal: cstring): cint =
  fcQComboBox_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcombobox_types.QComboBox, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQComboBox_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qcombobox_types.QComboBox,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QComboBoxVTable = nil): gen_qcombobox_types.QComboBox =
  let vtbl = if vtbl == nil: new QComboBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QComboBoxVTable](fcQComboBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQComboBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQComboBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQComboBox_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQComboBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQComboBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].showPopup):
    vtbl[].vtbl.showPopup = fcQComboBox_vtable_callback_showPopup
  if not isNil(vtbl[].hidePopup):
    vtbl[].vtbl.hidePopup = fcQComboBox_vtable_callback_hidePopup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQComboBox_vtable_callback_event
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQComboBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQComboBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQComboBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQComboBox_vtable_callback_changeEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQComboBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQComboBox_vtable_callback_paintEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQComboBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQComboBox_vtable_callback_hideEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQComboBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQComboBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQComboBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQComboBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQComboBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQComboBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQComboBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQComboBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQComboBox_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQComboBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQComboBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQComboBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQComboBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQComboBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQComboBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQComboBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQComboBox_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQComboBox_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQComboBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQComboBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQComboBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQComboBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQComboBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQComboBox_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQComboBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQComboBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQComboBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQComboBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQComboBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQComboBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQComboBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQComboBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQComboBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQComboBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQComboBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQComboBox_vtable_callback_disconnectNotify
  gen_qcombobox_types.QComboBox(h: fcQComboBox_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qcombobox_types.QComboBox,
    vtbl: ref QComboBoxVTable = nil): gen_qcombobox_types.QComboBox =
  let vtbl = if vtbl == nil: new QComboBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QComboBoxVTable](fcQComboBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQComboBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQComboBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQComboBox_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQComboBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQComboBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].showPopup):
    vtbl[].vtbl.showPopup = fcQComboBox_vtable_callback_showPopup
  if not isNil(vtbl[].hidePopup):
    vtbl[].vtbl.hidePopup = fcQComboBox_vtable_callback_hidePopup
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQComboBox_vtable_callback_event
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQComboBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQComboBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQComboBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQComboBox_vtable_callback_changeEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQComboBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQComboBox_vtable_callback_paintEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQComboBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQComboBox_vtable_callback_hideEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQComboBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQComboBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQComboBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQComboBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQComboBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQComboBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQComboBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQComboBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQComboBox_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQComboBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQComboBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQComboBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQComboBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQComboBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQComboBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQComboBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQComboBox_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQComboBox_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQComboBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQComboBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQComboBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQComboBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQComboBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQComboBox_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQComboBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQComboBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQComboBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQComboBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQComboBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQComboBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQComboBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQComboBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQComboBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQComboBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQComboBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQComboBox_vtable_callback_disconnectNotify
  gen_qcombobox_types.QComboBox(h: fcQComboBox_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQComboBox_mvtbl = cQComboBoxVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQComboBox()[])](self.fcQComboBox_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQComboBox_method_callback_metaObject,
  metacast: fcQComboBox_method_callback_metacast,
  metacall: fcQComboBox_method_callback_metacall,
  sizeHint: fcQComboBox_method_callback_sizeHint,
  minimumSizeHint: fcQComboBox_method_callback_minimumSizeHint,
  showPopup: fcQComboBox_method_callback_showPopup,
  hidePopup: fcQComboBox_method_callback_hidePopup,
  event: fcQComboBox_method_callback_event,
  inputMethodQuery: fcQComboBox_method_callback_inputMethodQuery,
  focusInEvent: fcQComboBox_method_callback_focusInEvent,
  focusOutEvent: fcQComboBox_method_callback_focusOutEvent,
  changeEvent: fcQComboBox_method_callback_changeEvent,
  resizeEvent: fcQComboBox_method_callback_resizeEvent,
  paintEvent: fcQComboBox_method_callback_paintEvent,
  showEvent: fcQComboBox_method_callback_showEvent,
  hideEvent: fcQComboBox_method_callback_hideEvent,
  mousePressEvent: fcQComboBox_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQComboBox_method_callback_mouseReleaseEvent,
  keyPressEvent: fcQComboBox_method_callback_keyPressEvent,
  keyReleaseEvent: fcQComboBox_method_callback_keyReleaseEvent,
  wheelEvent: fcQComboBox_method_callback_wheelEvent,
  contextMenuEvent: fcQComboBox_method_callback_contextMenuEvent,
  inputMethodEvent: fcQComboBox_method_callback_inputMethodEvent,
  devType: fcQComboBox_method_callback_devType,
  setVisible: fcQComboBox_method_callback_setVisible,
  heightForWidth: fcQComboBox_method_callback_heightForWidth,
  hasHeightForWidth: fcQComboBox_method_callback_hasHeightForWidth,
  paintEngine: fcQComboBox_method_callback_paintEngine,
  mouseDoubleClickEvent: fcQComboBox_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQComboBox_method_callback_mouseMoveEvent,
  enterEvent: fcQComboBox_method_callback_enterEvent,
  leaveEvent: fcQComboBox_method_callback_leaveEvent,
  moveEvent: fcQComboBox_method_callback_moveEvent,
  closeEvent: fcQComboBox_method_callback_closeEvent,
  tabletEvent: fcQComboBox_method_callback_tabletEvent,
  actionEvent: fcQComboBox_method_callback_actionEvent,
  dragEnterEvent: fcQComboBox_method_callback_dragEnterEvent,
  dragMoveEvent: fcQComboBox_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQComboBox_method_callback_dragLeaveEvent,
  dropEvent: fcQComboBox_method_callback_dropEvent,
  nativeEvent: fcQComboBox_method_callback_nativeEvent,
  metric: fcQComboBox_method_callback_metric,
  initPainter: fcQComboBox_method_callback_initPainter,
  redirected: fcQComboBox_method_callback_redirected,
  sharedPainter: fcQComboBox_method_callback_sharedPainter,
  focusNextPrevChild: fcQComboBox_method_callback_focusNextPrevChild,
  eventFilter: fcQComboBox_method_callback_eventFilter,
  timerEvent: fcQComboBox_method_callback_timerEvent,
  childEvent: fcQComboBox_method_callback_childEvent,
  customEvent: fcQComboBox_method_callback_customEvent,
  connectNotify: fcQComboBox_method_callback_connectNotify,
  disconnectNotify: fcQComboBox_method_callback_disconnectNotify,
)
proc create*(T: type gen_qcombobox_types.QComboBox,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQComboBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQComboBox_new(addr(cQComboBox_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qcombobox_types.QComboBox,
    inst: VirtualQComboBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQComboBox_new2(addr(cQComboBox_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qcombobox_types.QComboBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQComboBox_staticMetaObject())
