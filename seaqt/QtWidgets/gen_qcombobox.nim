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
{.compile("gen_qcombobox.cpp", cflags).}


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
template AdjustToMinimumContentsLengthWithIcon*(_: type QComboBoxSizeAdjustPolicyEnum): untyped = 2


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

proc fcQComboBox_metaObject(self: pointer, ): pointer {.importc: "QComboBox_metaObject".}
proc fcQComboBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QComboBox_metacast".}
proc fcQComboBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QComboBox_metacall".}
proc fcQComboBox_tr(s: cstring): struct_miqt_string {.importc: "QComboBox_tr".}
proc fcQComboBox_maxVisibleItems(self: pointer, ): cint {.importc: "QComboBox_maxVisibleItems".}
proc fcQComboBox_setMaxVisibleItems(self: pointer, maxItems: cint): void {.importc: "QComboBox_setMaxVisibleItems".}
proc fcQComboBox_count(self: pointer, ): cint {.importc: "QComboBox_count".}
proc fcQComboBox_setMaxCount(self: pointer, max: cint): void {.importc: "QComboBox_setMaxCount".}
proc fcQComboBox_maxCount(self: pointer, ): cint {.importc: "QComboBox_maxCount".}
proc fcQComboBox_duplicatesEnabled(self: pointer, ): bool {.importc: "QComboBox_duplicatesEnabled".}
proc fcQComboBox_setDuplicatesEnabled(self: pointer, enable: bool): void {.importc: "QComboBox_setDuplicatesEnabled".}
proc fcQComboBox_setFrame(self: pointer, frame: bool): void {.importc: "QComboBox_setFrame".}
proc fcQComboBox_hasFrame(self: pointer, ): bool {.importc: "QComboBox_hasFrame".}
proc fcQComboBox_findText(self: pointer, text: struct_miqt_string): cint {.importc: "QComboBox_findText".}
proc fcQComboBox_findData(self: pointer, data: pointer): cint {.importc: "QComboBox_findData".}
proc fcQComboBox_insertPolicy(self: pointer, ): cint {.importc: "QComboBox_insertPolicy".}
proc fcQComboBox_setInsertPolicy(self: pointer, policy: cint): void {.importc: "QComboBox_setInsertPolicy".}
proc fcQComboBox_sizeAdjustPolicy(self: pointer, ): cint {.importc: "QComboBox_sizeAdjustPolicy".}
proc fcQComboBox_setSizeAdjustPolicy(self: pointer, policy: cint): void {.importc: "QComboBox_setSizeAdjustPolicy".}
proc fcQComboBox_minimumContentsLength(self: pointer, ): cint {.importc: "QComboBox_minimumContentsLength".}
proc fcQComboBox_setMinimumContentsLength(self: pointer, characters: cint): void {.importc: "QComboBox_setMinimumContentsLength".}
proc fcQComboBox_iconSize(self: pointer, ): pointer {.importc: "QComboBox_iconSize".}
proc fcQComboBox_setIconSize(self: pointer, size: pointer): void {.importc: "QComboBox_setIconSize".}
proc fcQComboBox_setPlaceholderText(self: pointer, placeholderText: struct_miqt_string): void {.importc: "QComboBox_setPlaceholderText".}
proc fcQComboBox_placeholderText(self: pointer, ): struct_miqt_string {.importc: "QComboBox_placeholderText".}
proc fcQComboBox_isEditable(self: pointer, ): bool {.importc: "QComboBox_isEditable".}
proc fcQComboBox_setEditable(self: pointer, editable: bool): void {.importc: "QComboBox_setEditable".}
proc fcQComboBox_setLineEdit(self: pointer, edit: pointer): void {.importc: "QComboBox_setLineEdit".}
proc fcQComboBox_lineEdit(self: pointer, ): pointer {.importc: "QComboBox_lineEdit".}
proc fcQComboBox_setValidator(self: pointer, v: pointer): void {.importc: "QComboBox_setValidator".}
proc fcQComboBox_validator(self: pointer, ): pointer {.importc: "QComboBox_validator".}
proc fcQComboBox_setCompleter(self: pointer, c: pointer): void {.importc: "QComboBox_setCompleter".}
proc fcQComboBox_completer(self: pointer, ): pointer {.importc: "QComboBox_completer".}
proc fcQComboBox_itemDelegate(self: pointer, ): pointer {.importc: "QComboBox_itemDelegate".}
proc fcQComboBox_setItemDelegate(self: pointer, delegate: pointer): void {.importc: "QComboBox_setItemDelegate".}
proc fcQComboBox_model(self: pointer, ): pointer {.importc: "QComboBox_model".}
proc fcQComboBox_setModel(self: pointer, model: pointer): void {.importc: "QComboBox_setModel".}
proc fcQComboBox_rootModelIndex(self: pointer, ): pointer {.importc: "QComboBox_rootModelIndex".}
proc fcQComboBox_setRootModelIndex(self: pointer, index: pointer): void {.importc: "QComboBox_setRootModelIndex".}
proc fcQComboBox_modelColumn(self: pointer, ): cint {.importc: "QComboBox_modelColumn".}
proc fcQComboBox_setModelColumn(self: pointer, visibleColumn: cint): void {.importc: "QComboBox_setModelColumn".}
proc fcQComboBox_currentIndex(self: pointer, ): cint {.importc: "QComboBox_currentIndex".}
proc fcQComboBox_currentText(self: pointer, ): struct_miqt_string {.importc: "QComboBox_currentText".}
proc fcQComboBox_currentData(self: pointer, ): pointer {.importc: "QComboBox_currentData".}
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
proc fcQComboBox_view(self: pointer, ): pointer {.importc: "QComboBox_view".}
proc fcQComboBox_setView(self: pointer, itemView: pointer): void {.importc: "QComboBox_setView".}
proc fcQComboBox_sizeHint(self: pointer, ): pointer {.importc: "QComboBox_sizeHint".}
proc fcQComboBox_minimumSizeHint(self: pointer, ): pointer {.importc: "QComboBox_minimumSizeHint".}
proc fcQComboBox_showPopup(self: pointer, ): void {.importc: "QComboBox_showPopup".}
proc fcQComboBox_hidePopup(self: pointer, ): void {.importc: "QComboBox_hidePopup".}
proc fcQComboBox_event(self: pointer, event: pointer): bool {.importc: "QComboBox_event".}
proc fcQComboBox_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QComboBox_inputMethodQuery".}
proc fcQComboBox_inputMethodQuery2(self: pointer, query: cint, argument: pointer): pointer {.importc: "QComboBox_inputMethodQuery2".}
proc fcQComboBox_clear(self: pointer, ): void {.importc: "QComboBox_clear".}
proc fcQComboBox_clearEditText(self: pointer, ): void {.importc: "QComboBox_clearEditText".}
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
proc fcQComboBox_currentTextChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_currentTextChanged".}
proc fcQComboBox_connect_currentTextChanged(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QComboBox_connect_currentTextChanged".}
proc fcQComboBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QComboBox_tr2".}
proc fcQComboBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QComboBox_tr3".}
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
type cQComboBoxVTable = object
  destructor*: proc(vtbl: ptr cQComboBoxVTable, self: ptr cQComboBox) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setModel*: proc(vtbl, self: pointer, model: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  showPopup*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  hidePopup*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQComboBox_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QComboBox_virtualbase_metaObject".}
proc fcQComboBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QComboBox_virtualbase_metacast".}
proc fcQComboBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QComboBox_virtualbase_metacall".}
proc fcQComboBox_virtualbase_setModel(self: pointer, model: pointer): void {.importc: "QComboBox_virtualbase_setModel".}
proc fcQComboBox_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QComboBox_virtualbase_sizeHint".}
proc fcQComboBox_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QComboBox_virtualbase_minimumSizeHint".}
proc fcQComboBox_virtualbase_showPopup(self: pointer, ): void {.importc: "QComboBox_virtualbase_showPopup".}
proc fcQComboBox_virtualbase_hidePopup(self: pointer, ): void {.importc: "QComboBox_virtualbase_hidePopup".}
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
proc fcQComboBox_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QComboBox_virtualbase_initStyleOption".}
proc fcQComboBox_virtualbase_devType(self: pointer, ): cint {.importc: "QComboBox_virtualbase_devType".}
proc fcQComboBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QComboBox_virtualbase_setVisible".}
proc fcQComboBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QComboBox_virtualbase_heightForWidth".}
proc fcQComboBox_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QComboBox_virtualbase_hasHeightForWidth".}
proc fcQComboBox_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QComboBox_virtualbase_paintEngine".}
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
proc fcQComboBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QComboBox_virtualbase_nativeEvent".}
proc fcQComboBox_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QComboBox_virtualbase_metric".}
proc fcQComboBox_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QComboBox_virtualbase_initPainter".}
proc fcQComboBox_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QComboBox_virtualbase_redirected".}
proc fcQComboBox_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QComboBox_virtualbase_sharedPainter".}
proc fcQComboBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QComboBox_virtualbase_focusNextPrevChild".}
proc fcQComboBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QComboBox_virtualbase_eventFilter".}
proc fcQComboBox_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_timerEvent".}
proc fcQComboBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_childEvent".}
proc fcQComboBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QComboBox_virtualbase_customEvent".}
proc fcQComboBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QComboBox_virtualbase_connectNotify".}
proc fcQComboBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QComboBox_virtualbase_disconnectNotify".}
proc fcQComboBox_new(vtbl: pointer, parent: pointer): ptr cQComboBox {.importc: "QComboBox_new".}
proc fcQComboBox_new2(vtbl: pointer, ): ptr cQComboBox {.importc: "QComboBox_new2".}
proc fcQComboBox_staticMetaObject(): pointer {.importc: "QComboBox_staticMetaObject".}
proc fcQComboBox_delete(self: pointer) {.importc: "QComboBox_delete".}

proc metaObject*(self: gen_qcombobox_types.QComboBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQComboBox_metaObject(self.h))

proc metacast*(self: gen_qcombobox_types.QComboBox, param1: cstring): pointer =
  fcQComboBox_metacast(self.h, param1)

proc metacall*(self: gen_qcombobox_types.QComboBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQComboBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcombobox_types.QComboBox, s: cstring): string =
  let v_ms = fcQComboBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc maxVisibleItems*(self: gen_qcombobox_types.QComboBox, ): cint =
  fcQComboBox_maxVisibleItems(self.h)

proc setMaxVisibleItems*(self: gen_qcombobox_types.QComboBox, maxItems: cint): void =
  fcQComboBox_setMaxVisibleItems(self.h, maxItems)

proc count*(self: gen_qcombobox_types.QComboBox, ): cint =
  fcQComboBox_count(self.h)

proc setMaxCount*(self: gen_qcombobox_types.QComboBox, max: cint): void =
  fcQComboBox_setMaxCount(self.h, max)

proc maxCount*(self: gen_qcombobox_types.QComboBox, ): cint =
  fcQComboBox_maxCount(self.h)

proc duplicatesEnabled*(self: gen_qcombobox_types.QComboBox, ): bool =
  fcQComboBox_duplicatesEnabled(self.h)

proc setDuplicatesEnabled*(self: gen_qcombobox_types.QComboBox, enable: bool): void =
  fcQComboBox_setDuplicatesEnabled(self.h, enable)

proc setFrame*(self: gen_qcombobox_types.QComboBox, frame: bool): void =
  fcQComboBox_setFrame(self.h, frame)

proc hasFrame*(self: gen_qcombobox_types.QComboBox, ): bool =
  fcQComboBox_hasFrame(self.h)

proc findText*(self: gen_qcombobox_types.QComboBox, text: string): cint =
  fcQComboBox_findText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc findData*(self: gen_qcombobox_types.QComboBox, data: gen_qvariant_types.QVariant): cint =
  fcQComboBox_findData(self.h, data.h)

proc insertPolicy*(self: gen_qcombobox_types.QComboBox, ): cint =
  cint(fcQComboBox_insertPolicy(self.h))

proc setInsertPolicy*(self: gen_qcombobox_types.QComboBox, policy: cint): void =
  fcQComboBox_setInsertPolicy(self.h, cint(policy))

proc sizeAdjustPolicy*(self: gen_qcombobox_types.QComboBox, ): cint =
  cint(fcQComboBox_sizeAdjustPolicy(self.h))

proc setSizeAdjustPolicy*(self: gen_qcombobox_types.QComboBox, policy: cint): void =
  fcQComboBox_setSizeAdjustPolicy(self.h, cint(policy))

proc minimumContentsLength*(self: gen_qcombobox_types.QComboBox, ): cint =
  fcQComboBox_minimumContentsLength(self.h)

proc setMinimumContentsLength*(self: gen_qcombobox_types.QComboBox, characters: cint): void =
  fcQComboBox_setMinimumContentsLength(self.h, characters)

proc iconSize*(self: gen_qcombobox_types.QComboBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQComboBox_iconSize(self.h))

proc setIconSize*(self: gen_qcombobox_types.QComboBox, size: gen_qsize_types.QSize): void =
  fcQComboBox_setIconSize(self.h, size.h)

proc setPlaceholderText*(self: gen_qcombobox_types.QComboBox, placeholderText: string): void =
  fcQComboBox_setPlaceholderText(self.h, struct_miqt_string(data: placeholderText, len: csize_t(len(placeholderText))))

proc placeholderText*(self: gen_qcombobox_types.QComboBox, ): string =
  let v_ms = fcQComboBox_placeholderText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isEditable*(self: gen_qcombobox_types.QComboBox, ): bool =
  fcQComboBox_isEditable(self.h)

proc setEditable*(self: gen_qcombobox_types.QComboBox, editable: bool): void =
  fcQComboBox_setEditable(self.h, editable)

proc setLineEdit*(self: gen_qcombobox_types.QComboBox, edit: gen_qlineedit_types.QLineEdit): void =
  fcQComboBox_setLineEdit(self.h, edit.h)

proc lineEdit*(self: gen_qcombobox_types.QComboBox, ): gen_qlineedit_types.QLineEdit =
  gen_qlineedit_types.QLineEdit(h: fcQComboBox_lineEdit(self.h))

proc setValidator*(self: gen_qcombobox_types.QComboBox, v: gen_qvalidator_types.QValidator): void =
  fcQComboBox_setValidator(self.h, v.h)

proc validator*(self: gen_qcombobox_types.QComboBox, ): gen_qvalidator_types.QValidator =
  gen_qvalidator_types.QValidator(h: fcQComboBox_validator(self.h))

proc setCompleter*(self: gen_qcombobox_types.QComboBox, c: gen_qcompleter_types.QCompleter): void =
  fcQComboBox_setCompleter(self.h, c.h)

proc completer*(self: gen_qcombobox_types.QComboBox, ): gen_qcompleter_types.QCompleter =
  gen_qcompleter_types.QCompleter(h: fcQComboBox_completer(self.h))

proc itemDelegate*(self: gen_qcombobox_types.QComboBox, ): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQComboBox_itemDelegate(self.h))

proc setItemDelegate*(self: gen_qcombobox_types.QComboBox, delegate: gen_qabstractitemdelegate_types.QAbstractItemDelegate): void =
  fcQComboBox_setItemDelegate(self.h, delegate.h)

proc model*(self: gen_qcombobox_types.QComboBox, ): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQComboBox_model(self.h))

proc setModel*(self: gen_qcombobox_types.QComboBox, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQComboBox_setModel(self.h, model.h)

proc rootModelIndex*(self: gen_qcombobox_types.QComboBox, ): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQComboBox_rootModelIndex(self.h))

proc setRootModelIndex*(self: gen_qcombobox_types.QComboBox, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQComboBox_setRootModelIndex(self.h, index.h)

proc modelColumn*(self: gen_qcombobox_types.QComboBox, ): cint =
  fcQComboBox_modelColumn(self.h)

proc setModelColumn*(self: gen_qcombobox_types.QComboBox, visibleColumn: cint): void =
  fcQComboBox_setModelColumn(self.h, visibleColumn)

proc currentIndex*(self: gen_qcombobox_types.QComboBox, ): cint =
  fcQComboBox_currentIndex(self.h)

proc currentText*(self: gen_qcombobox_types.QComboBox, ): string =
  let v_ms = fcQComboBox_currentText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc currentData*(self: gen_qcombobox_types.QComboBox, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQComboBox_currentData(self.h))

proc itemText*(self: gen_qcombobox_types.QComboBox, index: cint): string =
  let v_ms = fcQComboBox_itemText(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc itemIcon*(self: gen_qcombobox_types.QComboBox, index: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQComboBox_itemIcon(self.h, index))

proc itemData*(self: gen_qcombobox_types.QComboBox, index: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQComboBox_itemData(self.h, index))

proc addItem*(self: gen_qcombobox_types.QComboBox, text: string): void =
  fcQComboBox_addItem(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc addItem*(self: gen_qcombobox_types.QComboBox, icon: gen_qicon_types.QIcon, text: string): void =
  fcQComboBox_addItem2(self.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc addItems*(self: gen_qcombobox_types.QComboBox, texts: seq[string]): void =
  var texts_CArray = newSeq[struct_miqt_string](len(texts))
  for i in 0..<len(texts):
    texts_CArray[i] = struct_miqt_string(data: texts[i], len: csize_t(len(texts[i])))

  fcQComboBox_addItems(self.h, struct_miqt_array(len: csize_t(len(texts)), data: if len(texts) == 0: nil else: addr(texts_CArray[0])))

proc insertItem*(self: gen_qcombobox_types.QComboBox, index: cint, text: string): void =
  fcQComboBox_insertItem(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertItem*(self: gen_qcombobox_types.QComboBox, index: cint, icon: gen_qicon_types.QIcon, text: string): void =
  fcQComboBox_insertItem2(self.h, index, icon.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertItems*(self: gen_qcombobox_types.QComboBox, index: cint, texts: seq[string]): void =
  var texts_CArray = newSeq[struct_miqt_string](len(texts))
  for i in 0..<len(texts):
    texts_CArray[i] = struct_miqt_string(data: texts[i], len: csize_t(len(texts[i])))

  fcQComboBox_insertItems(self.h, index, struct_miqt_array(len: csize_t(len(texts)), data: if len(texts) == 0: nil else: addr(texts_CArray[0])))

proc insertSeparator*(self: gen_qcombobox_types.QComboBox, index: cint): void =
  fcQComboBox_insertSeparator(self.h, index)

proc removeItem*(self: gen_qcombobox_types.QComboBox, index: cint): void =
  fcQComboBox_removeItem(self.h, index)

proc setItemText*(self: gen_qcombobox_types.QComboBox, index: cint, text: string): void =
  fcQComboBox_setItemText(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setItemIcon*(self: gen_qcombobox_types.QComboBox, index: cint, icon: gen_qicon_types.QIcon): void =
  fcQComboBox_setItemIcon(self.h, index, icon.h)

proc setItemData*(self: gen_qcombobox_types.QComboBox, index: cint, value: gen_qvariant_types.QVariant): void =
  fcQComboBox_setItemData(self.h, index, value.h)

proc view*(self: gen_qcombobox_types.QComboBox, ): gen_qabstractitemview_types.QAbstractItemView =
  gen_qabstractitemview_types.QAbstractItemView(h: fcQComboBox_view(self.h))

proc setView*(self: gen_qcombobox_types.QComboBox, itemView: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQComboBox_setView(self.h, itemView.h)

proc sizeHint*(self: gen_qcombobox_types.QComboBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQComboBox_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qcombobox_types.QComboBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQComboBox_minimumSizeHint(self.h))

proc showPopup*(self: gen_qcombobox_types.QComboBox, ): void =
  fcQComboBox_showPopup(self.h)

proc hidePopup*(self: gen_qcombobox_types.QComboBox, ): void =
  fcQComboBox_hidePopup(self.h)

proc event*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QEvent): bool =
  fcQComboBox_event(self.h, event.h)

proc inputMethodQuery*(self: gen_qcombobox_types.QComboBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQComboBox_inputMethodQuery(self.h, cint(param1)))

proc inputMethodQuery*(self: gen_qcombobox_types.QComboBox, query: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQComboBox_inputMethodQuery2(self.h, cint(query), argument.h))

proc clear*(self: gen_qcombobox_types.QComboBox, ): void =
  fcQComboBox_clear(self.h)

proc clearEditText*(self: gen_qcombobox_types.QComboBox, ): void =
  fcQComboBox_clearEditText(self.h)

proc setEditText*(self: gen_qcombobox_types.QComboBox, text: string): void =
  fcQComboBox_setEditText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setCurrentIndex*(self: gen_qcombobox_types.QComboBox, index: cint): void =
  fcQComboBox_setCurrentIndex(self.h, index)

proc setCurrentText*(self: gen_qcombobox_types.QComboBox, text: string): void =
  fcQComboBox_setCurrentText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc editTextChanged*(self: gen_qcombobox_types.QComboBox, param1: string): void =
  fcQComboBox_editTextChanged(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QComboBoxeditTextChangedSlot* = proc(param1: string)
proc miqt_exec_callback_cQComboBox_editTextChanged(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QComboBoxeditTextChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQComboBox_editTextChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QComboBoxeditTextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oneditTextChanged*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxeditTextChangedSlot) =
  var tmp = new QComboBoxeditTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_editTextChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQComboBox_editTextChanged, miqt_exec_callback_cQComboBox_editTextChanged_release)

proc activated*(self: gen_qcombobox_types.QComboBox, index: cint): void =
  fcQComboBox_activated(self.h, index)

type QComboBoxactivatedSlot* = proc(index: cint)
proc miqt_exec_callback_cQComboBox_activated(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QComboBoxactivatedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc miqt_exec_callback_cQComboBox_activated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QComboBoxactivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactivated*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxactivatedSlot) =
  var tmp = new QComboBoxactivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_activated(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQComboBox_activated, miqt_exec_callback_cQComboBox_activated_release)

proc textActivated*(self: gen_qcombobox_types.QComboBox, param1: string): void =
  fcQComboBox_textActivated(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QComboBoxtextActivatedSlot* = proc(param1: string)
proc miqt_exec_callback_cQComboBox_textActivated(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QComboBoxtextActivatedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQComboBox_textActivated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QComboBoxtextActivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontextActivated*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxtextActivatedSlot) =
  var tmp = new QComboBoxtextActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_textActivated(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQComboBox_textActivated, miqt_exec_callback_cQComboBox_textActivated_release)

proc highlighted*(self: gen_qcombobox_types.QComboBox, index: cint): void =
  fcQComboBox_highlighted(self.h, index)

type QComboBoxhighlightedSlot* = proc(index: cint)
proc miqt_exec_callback_cQComboBox_highlighted(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QComboBoxhighlightedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc miqt_exec_callback_cQComboBox_highlighted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QComboBoxhighlightedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhighlighted*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxhighlightedSlot) =
  var tmp = new QComboBoxhighlightedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_highlighted(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQComboBox_highlighted, miqt_exec_callback_cQComboBox_highlighted_release)

proc textHighlighted*(self: gen_qcombobox_types.QComboBox, param1: string): void =
  fcQComboBox_textHighlighted(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QComboBoxtextHighlightedSlot* = proc(param1: string)
proc miqt_exec_callback_cQComboBox_textHighlighted(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QComboBoxtextHighlightedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQComboBox_textHighlighted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QComboBoxtextHighlightedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontextHighlighted*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxtextHighlightedSlot) =
  var tmp = new QComboBoxtextHighlightedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_textHighlighted(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQComboBox_textHighlighted, miqt_exec_callback_cQComboBox_textHighlighted_release)

proc currentIndexChanged*(self: gen_qcombobox_types.QComboBox, index: cint): void =
  fcQComboBox_currentIndexChanged(self.h, index)

type QComboBoxcurrentIndexChangedSlot* = proc(index: cint)
proc miqt_exec_callback_cQComboBox_currentIndexChanged(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QComboBoxcurrentIndexChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc miqt_exec_callback_cQComboBox_currentIndexChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QComboBoxcurrentIndexChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentIndexChanged*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxcurrentIndexChangedSlot) =
  var tmp = new QComboBoxcurrentIndexChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_currentIndexChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQComboBox_currentIndexChanged, miqt_exec_callback_cQComboBox_currentIndexChanged_release)

proc currentTextChanged*(self: gen_qcombobox_types.QComboBox, param1: string): void =
  fcQComboBox_currentTextChanged(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QComboBoxcurrentTextChangedSlot* = proc(param1: string)
proc miqt_exec_callback_cQComboBox_currentTextChanged(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QComboBoxcurrentTextChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQComboBox_currentTextChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QComboBoxcurrentTextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentTextChanged*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxcurrentTextChangedSlot) =
  var tmp = new QComboBoxcurrentTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_currentTextChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQComboBox_currentTextChanged, miqt_exec_callback_cQComboBox_currentTextChanged_release)

proc tr*(_: type gen_qcombobox_types.QComboBox, s: cstring, c: cstring): string =
  let v_ms = fcQComboBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcombobox_types.QComboBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQComboBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc findText*(self: gen_qcombobox_types.QComboBox, text: string, flags: cint): cint =
  fcQComboBox_findText2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(flags))

proc findData*(self: gen_qcombobox_types.QComboBox, data: gen_qvariant_types.QVariant, role: cint): cint =
  fcQComboBox_findData2(self.h, data.h, role)

proc findData*(self: gen_qcombobox_types.QComboBox, data: gen_qvariant_types.QVariant, role: cint, flags: cint): cint =
  fcQComboBox_findData3(self.h, data.h, role, cint(flags))

proc currentData*(self: gen_qcombobox_types.QComboBox, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQComboBox_currentData1(self.h, role))

proc itemData*(self: gen_qcombobox_types.QComboBox, index: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQComboBox_itemData2(self.h, index, role))

proc addItem*(self: gen_qcombobox_types.QComboBox, text: string, userData: gen_qvariant_types.QVariant): void =
  fcQComboBox_addItem22(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), userData.h)

proc addItem*(self: gen_qcombobox_types.QComboBox, icon: gen_qicon_types.QIcon, text: string, userData: gen_qvariant_types.QVariant): void =
  fcQComboBox_addItem3(self.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), userData.h)

proc insertItem*(self: gen_qcombobox_types.QComboBox, index: cint, text: string, userData: gen_qvariant_types.QVariant): void =
  fcQComboBox_insertItem3(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))), userData.h)

proc insertItem*(self: gen_qcombobox_types.QComboBox, index: cint, icon: gen_qicon_types.QIcon, text: string, userData: gen_qvariant_types.QVariant): void =
  fcQComboBox_insertItem4(self.h, index, icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), userData.h)

proc setItemData*(self: gen_qcombobox_types.QComboBox, index: cint, value: gen_qvariant_types.QVariant, role: cint): void =
  fcQComboBox_setItemData3(self.h, index, value.h, role)

type QComboBoxmetaObjectProc* = proc(self: QComboBox): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QComboBoxmetacastProc* = proc(self: QComboBox, param1: cstring): pointer {.raises: [], gcsafe.}
type QComboBoxmetacallProc* = proc(self: QComboBox, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QComboBoxsetModelProc* = proc(self: QComboBox, model: gen_qabstractitemmodel_types.QAbstractItemModel): void {.raises: [], gcsafe.}
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
type QComboBoxinitStyleOptionProc* = proc(self: QComboBox, option: gen_qstyleoption_types.QStyleOptionComboBox): void {.raises: [], gcsafe.}
type QComboBoxdevTypeProc* = proc(self: QComboBox): cint {.raises: [], gcsafe.}
type QComboBoxsetVisibleProc* = proc(self: QComboBox, visible: bool): void {.raises: [], gcsafe.}
type QComboBoxheightForWidthProc* = proc(self: QComboBox, param1: cint): cint {.raises: [], gcsafe.}
type QComboBoxhasHeightForWidthProc* = proc(self: QComboBox): bool {.raises: [], gcsafe.}
type QComboBoxpaintEngineProc* = proc(self: QComboBox): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QComboBoxmouseDoubleClickEventProc* = proc(self: QComboBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QComboBoxmouseMoveEventProc* = proc(self: QComboBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QComboBoxenterEventProc* = proc(self: QComboBox, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QComboBoxleaveEventProc* = proc(self: QComboBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QComboBoxmoveEventProc* = proc(self: QComboBox, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QComboBoxcloseEventProc* = proc(self: QComboBox, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QComboBoxtabletEventProc* = proc(self: QComboBox, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QComboBoxactionEventProc* = proc(self: QComboBox, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QComboBoxdragEnterEventProc* = proc(self: QComboBox, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QComboBoxdragMoveEventProc* = proc(self: QComboBox, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QComboBoxdragLeaveEventProc* = proc(self: QComboBox, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QComboBoxdropEventProc* = proc(self: QComboBox, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QComboBoxnativeEventProc* = proc(self: QComboBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
type QComboBoxVTable* = object
  vtbl: cQComboBoxVTable
  metaObject*: QComboBoxmetaObjectProc
  metacast*: QComboBoxmetacastProc
  metacall*: QComboBoxmetacallProc
  setModel*: QComboBoxsetModelProc
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
  initStyleOption*: QComboBoxinitStyleOptionProc
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
proc QComboBoxmetaObject*(self: gen_qcombobox_types.QComboBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQComboBox_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQComboBox_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QComboBoxmetacast*(self: gen_qcombobox_types.QComboBox, param1: cstring): pointer =
  fcQComboBox_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQComboBox_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QComboBoxmetacall*(self: gen_qcombobox_types.QComboBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQComboBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQComboBox_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QComboBoxsetModel*(self: gen_qcombobox_types.QComboBox, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQComboBox_virtualbase_setModel(self.h, model.h)

proc miqt_exec_callback_cQComboBox_setModel(vtbl: pointer, self: pointer, model: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)
  vtbl[].setModel(self, slotval1)

proc QComboBoxsizeHint*(self: gen_qcombobox_types.QComboBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQComboBox_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQComboBox_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QComboBoxminimumSizeHint*(self: gen_qcombobox_types.QComboBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQComboBox_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQComboBox_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QComboBoxshowPopup*(self: gen_qcombobox_types.QComboBox, ): void =
  fcQComboBox_virtualbase_showPopup(self.h)

proc miqt_exec_callback_cQComboBox_showPopup(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  vtbl[].showPopup(self)

proc QComboBoxhidePopup*(self: gen_qcombobox_types.QComboBox, ): void =
  fcQComboBox_virtualbase_hidePopup(self.h)

proc miqt_exec_callback_cQComboBox_hidePopup(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  vtbl[].hidePopup(self)

proc QComboBoxevent*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QEvent): bool =
  fcQComboBox_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQComboBox_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QComboBoxinputMethodQuery*(self: gen_qcombobox_types.QComboBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQComboBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQComboBox_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QComboBoxfocusInEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QFocusEvent): void =
  fcQComboBox_virtualbase_focusInEvent(self.h, e.h)

proc miqt_exec_callback_cQComboBox_focusInEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)
  vtbl[].focusInEvent(self, slotval1)

proc QComboBoxfocusOutEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QFocusEvent): void =
  fcQComboBox_virtualbase_focusOutEvent(self.h, e.h)

proc miqt_exec_callback_cQComboBox_focusOutEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)
  vtbl[].focusOutEvent(self, slotval1)

proc QComboBoxchangeEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qcoreevent_types.QEvent): void =
  fcQComboBox_virtualbase_changeEvent(self.h, e.h)

proc miqt_exec_callback_cQComboBox_changeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  vtbl[].changeEvent(self, slotval1)

proc QComboBoxresizeEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QResizeEvent): void =
  fcQComboBox_virtualbase_resizeEvent(self.h, e.h)

proc miqt_exec_callback_cQComboBox_resizeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)
  vtbl[].resizeEvent(self, slotval1)

proc QComboBoxpaintEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QPaintEvent): void =
  fcQComboBox_virtualbase_paintEvent(self.h, e.h)

proc miqt_exec_callback_cQComboBox_paintEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)
  vtbl[].paintEvent(self, slotval1)

proc QComboBoxshowEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QShowEvent): void =
  fcQComboBox_virtualbase_showEvent(self.h, e.h)

proc miqt_exec_callback_cQComboBox_showEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: e)
  vtbl[].showEvent(self, slotval1)

proc QComboBoxhideEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QHideEvent): void =
  fcQComboBox_virtualbase_hideEvent(self.h, e.h)

proc miqt_exec_callback_cQComboBox_hideEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: e)
  vtbl[].hideEvent(self, slotval1)

proc QComboBoxmousePressEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QMouseEvent): void =
  fcQComboBox_virtualbase_mousePressEvent(self.h, e.h)

proc miqt_exec_callback_cQComboBox_mousePressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mousePressEvent(self, slotval1)

proc QComboBoxmouseReleaseEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QMouseEvent): void =
  fcQComboBox_virtualbase_mouseReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQComboBox_mouseReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QComboBoxkeyPressEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QKeyEvent): void =
  fcQComboBox_virtualbase_keyPressEvent(self.h, e.h)

proc miqt_exec_callback_cQComboBox_keyPressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)
  vtbl[].keyPressEvent(self, slotval1)

proc QComboBoxkeyReleaseEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QKeyEvent): void =
  fcQComboBox_virtualbase_keyReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQComboBox_keyReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QComboBoxwheelEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QWheelEvent): void =
  fcQComboBox_virtualbase_wheelEvent(self.h, e.h)

proc miqt_exec_callback_cQComboBox_wheelEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)
  vtbl[].wheelEvent(self, slotval1)

proc QComboBoxcontextMenuEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QContextMenuEvent): void =
  fcQComboBox_virtualbase_contextMenuEvent(self.h, e.h)

proc miqt_exec_callback_cQComboBox_contextMenuEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e)
  vtbl[].contextMenuEvent(self, slotval1)

proc QComboBoxinputMethodEvent*(self: gen_qcombobox_types.QComboBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQComboBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQComboBox_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QComboBoxinitStyleOption*(self: gen_qcombobox_types.QComboBox, option: gen_qstyleoption_types.QStyleOptionComboBox): void =
  fcQComboBox_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQComboBox_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionComboBox(h: option)
  vtbl[].initStyleOption(self, slotval1)

proc QComboBoxdevType*(self: gen_qcombobox_types.QComboBox, ): cint =
  fcQComboBox_virtualbase_devType(self.h)

proc miqt_exec_callback_cQComboBox_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QComboBoxsetVisible*(self: gen_qcombobox_types.QComboBox, visible: bool): void =
  fcQComboBox_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQComboBox_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QComboBoxheightForWidth*(self: gen_qcombobox_types.QComboBox, param1: cint): cint =
  fcQComboBox_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQComboBox_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QComboBoxhasHeightForWidth*(self: gen_qcombobox_types.QComboBox, ): bool =
  fcQComboBox_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQComboBox_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QComboBoxpaintEngine*(self: gen_qcombobox_types.QComboBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQComboBox_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQComboBox_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QComboBoxmouseDoubleClickEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QMouseEvent): void =
  fcQComboBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQComboBox_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QComboBoxmouseMoveEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QMouseEvent): void =
  fcQComboBox_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQComboBox_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QComboBoxenterEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QEnterEvent): void =
  fcQComboBox_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQComboBox_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QComboBoxleaveEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QEvent): void =
  fcQComboBox_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQComboBox_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QComboBoxmoveEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QMoveEvent): void =
  fcQComboBox_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQComboBox_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QComboBoxcloseEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QCloseEvent): void =
  fcQComboBox_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQComboBox_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QComboBoxtabletEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QTabletEvent): void =
  fcQComboBox_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQComboBox_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QComboBoxactionEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QActionEvent): void =
  fcQComboBox_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQComboBox_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QComboBoxdragEnterEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQComboBox_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQComboBox_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QComboBoxdragMoveEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQComboBox_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQComboBox_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QComboBoxdragLeaveEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQComboBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQComboBox_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QComboBoxdropEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QDropEvent): void =
  fcQComboBox_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQComboBox_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QComboBoxnativeEvent*(self: gen_qcombobox_types.QComboBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQComboBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQComboBox_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QComboBoxmetric*(self: gen_qcombobox_types.QComboBox, param1: cint): cint =
  fcQComboBox_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQComboBox_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QComboBoxinitPainter*(self: gen_qcombobox_types.QComboBox, painter: gen_qpainter_types.QPainter): void =
  fcQComboBox_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQComboBox_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QComboBoxredirected*(self: gen_qcombobox_types.QComboBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQComboBox_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQComboBox_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QComboBoxsharedPainter*(self: gen_qcombobox_types.QComboBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQComboBox_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQComboBox_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QComboBoxfocusNextPrevChild*(self: gen_qcombobox_types.QComboBox, next: bool): bool =
  fcQComboBox_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQComboBox_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QComboBoxeventFilter*(self: gen_qcombobox_types.QComboBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQComboBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQComboBox_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QComboBoxtimerEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQComboBox_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQComboBox_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QComboBoxchildEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQComboBox_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQComboBox_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QComboBoxcustomEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QEvent): void =
  fcQComboBox_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQComboBox_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QComboBoxconnectNotify*(self: gen_qcombobox_types.QComboBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQComboBox_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQComboBox_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QComboBoxdisconnectNotify*(self: gen_qcombobox_types.QComboBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQComboBox_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQComboBox_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QComboBoxVTable](vtbl)
  let self = QComboBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qcombobox_types.QComboBox,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QComboBoxVTable = nil): gen_qcombobox_types.QComboBox =
  let vtbl = if vtbl == nil: new QComboBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQComboBoxVTable, _: ptr cQComboBox) {.cdecl.} =
    let vtbl = cast[ref QComboBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQComboBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQComboBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQComboBox_metacall
  if not isNil(vtbl.setModel):
    vtbl[].vtbl.setModel = miqt_exec_callback_cQComboBox_setModel
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQComboBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQComboBox_minimumSizeHint
  if not isNil(vtbl.showPopup):
    vtbl[].vtbl.showPopup = miqt_exec_callback_cQComboBox_showPopup
  if not isNil(vtbl.hidePopup):
    vtbl[].vtbl.hidePopup = miqt_exec_callback_cQComboBox_hidePopup
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQComboBox_event
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQComboBox_inputMethodQuery
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQComboBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQComboBox_focusOutEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQComboBox_changeEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQComboBox_resizeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQComboBox_paintEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQComboBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQComboBox_hideEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQComboBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQComboBox_mouseReleaseEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQComboBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQComboBox_keyReleaseEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQComboBox_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQComboBox_contextMenuEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQComboBox_inputMethodEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQComboBox_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQComboBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQComboBox_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQComboBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQComboBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQComboBox_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQComboBox_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQComboBox_mouseMoveEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQComboBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQComboBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQComboBox_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQComboBox_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQComboBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQComboBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQComboBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQComboBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQComboBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQComboBox_dropEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQComboBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQComboBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQComboBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQComboBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQComboBox_sharedPainter
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQComboBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQComboBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQComboBox_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQComboBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQComboBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQComboBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQComboBox_disconnectNotify
  gen_qcombobox_types.QComboBox(h: fcQComboBox_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qcombobox_types.QComboBox,
    vtbl: ref QComboBoxVTable = nil): gen_qcombobox_types.QComboBox =
  let vtbl = if vtbl == nil: new QComboBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQComboBoxVTable, _: ptr cQComboBox) {.cdecl.} =
    let vtbl = cast[ref QComboBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQComboBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQComboBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQComboBox_metacall
  if not isNil(vtbl.setModel):
    vtbl[].vtbl.setModel = miqt_exec_callback_cQComboBox_setModel
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQComboBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQComboBox_minimumSizeHint
  if not isNil(vtbl.showPopup):
    vtbl[].vtbl.showPopup = miqt_exec_callback_cQComboBox_showPopup
  if not isNil(vtbl.hidePopup):
    vtbl[].vtbl.hidePopup = miqt_exec_callback_cQComboBox_hidePopup
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQComboBox_event
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQComboBox_inputMethodQuery
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQComboBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQComboBox_focusOutEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQComboBox_changeEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQComboBox_resizeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQComboBox_paintEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQComboBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQComboBox_hideEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQComboBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQComboBox_mouseReleaseEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQComboBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQComboBox_keyReleaseEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQComboBox_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQComboBox_contextMenuEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQComboBox_inputMethodEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQComboBox_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQComboBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQComboBox_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQComboBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQComboBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQComboBox_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQComboBox_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQComboBox_mouseMoveEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQComboBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQComboBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQComboBox_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQComboBox_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQComboBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQComboBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQComboBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQComboBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQComboBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQComboBox_dropEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQComboBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQComboBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQComboBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQComboBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQComboBox_sharedPainter
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQComboBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQComboBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQComboBox_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQComboBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQComboBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQComboBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQComboBox_disconnectNotify
  gen_qcombobox_types.QComboBox(h: fcQComboBox_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qcombobox_types.QComboBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQComboBox_staticMetaObject())
proc delete*(self: gen_qcombobox_types.QComboBox) =
  fcQComboBox_delete(self.h)
