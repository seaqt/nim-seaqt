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

proc fcQComboBox_new(parent: pointer): ptr cQComboBox {.importc: "QComboBox_new".}
proc fcQComboBox_new2(): ptr cQComboBox {.importc: "QComboBox_new2".}
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
proc fcQComboBox_connect_editTextChanged(self: pointer, slot: int) {.importc: "QComboBox_connect_editTextChanged".}
proc fcQComboBox_activated(self: pointer, index: cint): void {.importc: "QComboBox_activated".}
proc fcQComboBox_connect_activated(self: pointer, slot: int) {.importc: "QComboBox_connect_activated".}
proc fcQComboBox_textActivated(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_textActivated".}
proc fcQComboBox_connect_textActivated(self: pointer, slot: int) {.importc: "QComboBox_connect_textActivated".}
proc fcQComboBox_highlighted(self: pointer, index: cint): void {.importc: "QComboBox_highlighted".}
proc fcQComboBox_connect_highlighted(self: pointer, slot: int) {.importc: "QComboBox_connect_highlighted".}
proc fcQComboBox_textHighlighted(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_textHighlighted".}
proc fcQComboBox_connect_textHighlighted(self: pointer, slot: int) {.importc: "QComboBox_connect_textHighlighted".}
proc fcQComboBox_currentIndexChanged(self: pointer, index: cint): void {.importc: "QComboBox_currentIndexChanged".}
proc fcQComboBox_connect_currentIndexChanged(self: pointer, slot: int) {.importc: "QComboBox_connect_currentIndexChanged".}
proc fcQComboBox_currentTextChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_currentTextChanged".}
proc fcQComboBox_connect_currentTextChanged(self: pointer, slot: int) {.importc: "QComboBox_connect_currentTextChanged".}
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
proc fQComboBox_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QComboBox_virtualbase_metaObject".}
proc fcQComboBox_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_metaObject".}
proc fQComboBox_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QComboBox_virtualbase_metacast".}
proc fcQComboBox_override_virtual_metacast(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_metacast".}
proc fQComboBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QComboBox_virtualbase_metacall".}
proc fcQComboBox_override_virtual_metacall(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_metacall".}
proc fQComboBox_virtualbase_setModel(self: pointer, model: pointer): void{.importc: "QComboBox_virtualbase_setModel".}
proc fcQComboBox_override_virtual_setModel(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_setModel".}
proc fQComboBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QComboBox_virtualbase_sizeHint".}
proc fcQComboBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_sizeHint".}
proc fQComboBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QComboBox_virtualbase_minimumSizeHint".}
proc fcQComboBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_minimumSizeHint".}
proc fQComboBox_virtualbase_showPopup(self: pointer, ): void{.importc: "QComboBox_virtualbase_showPopup".}
proc fcQComboBox_override_virtual_showPopup(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_showPopup".}
proc fQComboBox_virtualbase_hidePopup(self: pointer, ): void{.importc: "QComboBox_virtualbase_hidePopup".}
proc fcQComboBox_override_virtual_hidePopup(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_hidePopup".}
proc fQComboBox_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QComboBox_virtualbase_event".}
proc fcQComboBox_override_virtual_event(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_event".}
proc fQComboBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QComboBox_virtualbase_inputMethodQuery".}
proc fcQComboBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_inputMethodQuery".}
proc fQComboBox_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_focusInEvent".}
proc fcQComboBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_focusInEvent".}
proc fQComboBox_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_focusOutEvent".}
proc fcQComboBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_focusOutEvent".}
proc fQComboBox_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_changeEvent".}
proc fcQComboBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_changeEvent".}
proc fQComboBox_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_resizeEvent".}
proc fcQComboBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_resizeEvent".}
proc fQComboBox_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_paintEvent".}
proc fcQComboBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_paintEvent".}
proc fQComboBox_virtualbase_showEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_showEvent".}
proc fcQComboBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_showEvent".}
proc fQComboBox_virtualbase_hideEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_hideEvent".}
proc fcQComboBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_hideEvent".}
proc fQComboBox_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_mousePressEvent".}
proc fcQComboBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_mousePressEvent".}
proc fQComboBox_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_mouseReleaseEvent".}
proc fcQComboBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_mouseReleaseEvent".}
proc fQComboBox_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_keyPressEvent".}
proc fcQComboBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_keyPressEvent".}
proc fQComboBox_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_keyReleaseEvent".}
proc fcQComboBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_keyReleaseEvent".}
proc fQComboBox_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_wheelEvent".}
proc fcQComboBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_wheelEvent".}
proc fQComboBox_virtualbase_contextMenuEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_contextMenuEvent".}
proc fcQComboBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_contextMenuEvent".}
proc fQComboBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QComboBox_virtualbase_inputMethodEvent".}
proc fcQComboBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_inputMethodEvent".}
proc fQComboBox_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QComboBox_virtualbase_initStyleOption".}
proc fcQComboBox_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_initStyleOption".}
proc fQComboBox_virtualbase_devType(self: pointer, ): cint{.importc: "QComboBox_virtualbase_devType".}
proc fcQComboBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_devType".}
proc fQComboBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QComboBox_virtualbase_setVisible".}
proc fcQComboBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_setVisible".}
proc fQComboBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QComboBox_virtualbase_heightForWidth".}
proc fcQComboBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_heightForWidth".}
proc fQComboBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QComboBox_virtualbase_hasHeightForWidth".}
proc fcQComboBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_hasHeightForWidth".}
proc fQComboBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QComboBox_virtualbase_paintEngine".}
proc fcQComboBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_paintEngine".}
proc fQComboBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_mouseDoubleClickEvent".}
proc fcQComboBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_mouseDoubleClickEvent".}
proc fQComboBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_mouseMoveEvent".}
proc fcQComboBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_mouseMoveEvent".}
proc fQComboBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_enterEvent".}
proc fcQComboBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_enterEvent".}
proc fQComboBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_leaveEvent".}
proc fcQComboBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_leaveEvent".}
proc fQComboBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_moveEvent".}
proc fcQComboBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_moveEvent".}
proc fQComboBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_closeEvent".}
proc fcQComboBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_closeEvent".}
proc fQComboBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_tabletEvent".}
proc fcQComboBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_tabletEvent".}
proc fQComboBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_actionEvent".}
proc fcQComboBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_actionEvent".}
proc fQComboBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_dragEnterEvent".}
proc fcQComboBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_dragEnterEvent".}
proc fQComboBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_dragMoveEvent".}
proc fcQComboBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_dragMoveEvent".}
proc fQComboBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_dragLeaveEvent".}
proc fcQComboBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_dragLeaveEvent".}
proc fQComboBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_dropEvent".}
proc fcQComboBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_dropEvent".}
proc fQComboBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QComboBox_virtualbase_nativeEvent".}
proc fcQComboBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_nativeEvent".}
proc fQComboBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QComboBox_virtualbase_metric".}
proc fcQComboBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_metric".}
proc fQComboBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QComboBox_virtualbase_initPainter".}
proc fcQComboBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_initPainter".}
proc fQComboBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QComboBox_virtualbase_redirected".}
proc fcQComboBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_redirected".}
proc fQComboBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QComboBox_virtualbase_sharedPainter".}
proc fcQComboBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_sharedPainter".}
proc fQComboBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QComboBox_virtualbase_focusNextPrevChild".}
proc fcQComboBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_focusNextPrevChild".}
proc fQComboBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QComboBox_virtualbase_eventFilter".}
proc fcQComboBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_eventFilter".}
proc fQComboBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_timerEvent".}
proc fcQComboBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_timerEvent".}
proc fQComboBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_childEvent".}
proc fcQComboBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_childEvent".}
proc fQComboBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_customEvent".}
proc fcQComboBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_customEvent".}
proc fQComboBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QComboBox_virtualbase_connectNotify".}
proc fcQComboBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_connectNotify".}
proc fQComboBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QComboBox_virtualbase_disconnectNotify".}
proc fcQComboBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_disconnectNotify".}
proc fcQComboBox_staticMetaObject(): pointer {.importc: "QComboBox_staticMetaObject".}
proc fcQComboBox_delete(self: pointer) {.importc: "QComboBox_delete".}


func init*(T: type gen_qcombobox_types.QComboBox, h: ptr cQComboBox): gen_qcombobox_types.QComboBox =
  T(h: h)
proc create*(T: type gen_qcombobox_types.QComboBox, parent: gen_qwidget_types.QWidget): gen_qcombobox_types.QComboBox =
  gen_qcombobox_types.QComboBox.init(fcQComboBox_new(parent.h))

proc create*(T: type gen_qcombobox_types.QComboBox, ): gen_qcombobox_types.QComboBox =
  gen_qcombobox_types.QComboBox.init(fcQComboBox_new2())

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
proc miqt_exec_callback_QComboBox_editTextChanged(slot: int, param1: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QComboBoxeditTextChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc oneditTextChanged*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxeditTextChangedSlot) =
  var tmp = new QComboBoxeditTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_editTextChanged(self.h, cast[int](addr tmp[]))

proc activated*(self: gen_qcombobox_types.QComboBox, index: cint): void =
  fcQComboBox_activated(self.h, index)

type QComboBoxactivatedSlot* = proc(index: cint)
proc miqt_exec_callback_QComboBox_activated(slot: int, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QComboBoxactivatedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc onactivated*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxactivatedSlot) =
  var tmp = new QComboBoxactivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_activated(self.h, cast[int](addr tmp[]))

proc textActivated*(self: gen_qcombobox_types.QComboBox, param1: string): void =
  fcQComboBox_textActivated(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QComboBoxtextActivatedSlot* = proc(param1: string)
proc miqt_exec_callback_QComboBox_textActivated(slot: int, param1: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QComboBoxtextActivatedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc ontextActivated*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxtextActivatedSlot) =
  var tmp = new QComboBoxtextActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_textActivated(self.h, cast[int](addr tmp[]))

proc highlighted*(self: gen_qcombobox_types.QComboBox, index: cint): void =
  fcQComboBox_highlighted(self.h, index)

type QComboBoxhighlightedSlot* = proc(index: cint)
proc miqt_exec_callback_QComboBox_highlighted(slot: int, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QComboBoxhighlightedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc onhighlighted*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxhighlightedSlot) =
  var tmp = new QComboBoxhighlightedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_highlighted(self.h, cast[int](addr tmp[]))

proc textHighlighted*(self: gen_qcombobox_types.QComboBox, param1: string): void =
  fcQComboBox_textHighlighted(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QComboBoxtextHighlightedSlot* = proc(param1: string)
proc miqt_exec_callback_QComboBox_textHighlighted(slot: int, param1: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QComboBoxtextHighlightedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc ontextHighlighted*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxtextHighlightedSlot) =
  var tmp = new QComboBoxtextHighlightedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_textHighlighted(self.h, cast[int](addr tmp[]))

proc currentIndexChanged*(self: gen_qcombobox_types.QComboBox, index: cint): void =
  fcQComboBox_currentIndexChanged(self.h, index)

type QComboBoxcurrentIndexChangedSlot* = proc(index: cint)
proc miqt_exec_callback_QComboBox_currentIndexChanged(slot: int, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QComboBoxcurrentIndexChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc oncurrentIndexChanged*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxcurrentIndexChangedSlot) =
  var tmp = new QComboBoxcurrentIndexChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_currentIndexChanged(self.h, cast[int](addr tmp[]))

proc currentTextChanged*(self: gen_qcombobox_types.QComboBox, param1: string): void =
  fcQComboBox_currentTextChanged(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QComboBoxcurrentTextChangedSlot* = proc(param1: string)
proc miqt_exec_callback_QComboBox_currentTextChanged(slot: int, param1: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QComboBoxcurrentTextChangedSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc oncurrentTextChanged*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxcurrentTextChangedSlot) =
  var tmp = new QComboBoxcurrentTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_connect_currentTextChanged(self.h, cast[int](addr tmp[]))

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

proc QComboBoxmetaObject*(self: gen_qcombobox_types.QComboBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQComboBox_virtualbase_metaObject(self.h))

type QComboBoxmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxmetaObjectProc) =
  # TODO check subclass
  var tmp = new QComboBoxmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_metaObject(self: ptr cQComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QComboBox_metaObject ".} =
  var nimfunc = cast[ptr QComboBoxmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QComboBoxmetacast*(self: gen_qcombobox_types.QComboBox, param1: cstring): pointer =
  fQComboBox_virtualbase_metacast(self.h, param1)

type QComboBoxmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxmetacastProc) =
  # TODO check subclass
  var tmp = new QComboBoxmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_metacast(self: ptr cQComboBox, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QComboBox_metacast ".} =
  var nimfunc = cast[ptr QComboBoxmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QComboBoxmetacall*(self: gen_qcombobox_types.QComboBox, param1: cint, param2: cint, param3: pointer): cint =
  fQComboBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QComboBoxmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxmetacallProc) =
  # TODO check subclass
  var tmp = new QComboBoxmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_metacall(self: ptr cQComboBox, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QComboBox_metacall ".} =
  var nimfunc = cast[ptr QComboBoxmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QComboBoxsetModel*(self: gen_qcombobox_types.QComboBox, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fQComboBox_virtualbase_setModel(self.h, model.h)

type QComboBoxsetModelProc* = proc(model: gen_qabstractitemmodel_types.QAbstractItemModel): void
proc onsetModel*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxsetModelProc) =
  # TODO check subclass
  var tmp = new QComboBoxsetModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_setModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_setModel(self: ptr cQComboBox, slot: int, model: pointer): void {.exportc: "miqt_exec_callback_QComboBox_setModel ".} =
  var nimfunc = cast[ptr QComboBoxsetModelProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)


  nimfunc[](slotval1)
proc QComboBoxsizeHint*(self: gen_qcombobox_types.QComboBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQComboBox_virtualbase_sizeHint(self.h))

type QComboBoxsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxsizeHintProc) =
  # TODO check subclass
  var tmp = new QComboBoxsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_sizeHint(self: ptr cQComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QComboBox_sizeHint ".} =
  var nimfunc = cast[ptr QComboBoxsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QComboBoxminimumSizeHint*(self: gen_qcombobox_types.QComboBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQComboBox_virtualbase_minimumSizeHint(self.h))

type QComboBoxminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QComboBoxminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_minimumSizeHint(self: ptr cQComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QComboBox_minimumSizeHint ".} =
  var nimfunc = cast[ptr QComboBoxminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QComboBoxshowPopup*(self: gen_qcombobox_types.QComboBox, ): void =
  fQComboBox_virtualbase_showPopup(self.h)

type QComboBoxshowPopupProc* = proc(): void
proc onshowPopup*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxshowPopupProc) =
  # TODO check subclass
  var tmp = new QComboBoxshowPopupProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_showPopup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_showPopup(self: ptr cQComboBox, slot: int): void {.exportc: "miqt_exec_callback_QComboBox_showPopup ".} =
  var nimfunc = cast[ptr QComboBoxshowPopupProc](cast[pointer](slot))

  nimfunc[]()
proc QComboBoxhidePopup*(self: gen_qcombobox_types.QComboBox, ): void =
  fQComboBox_virtualbase_hidePopup(self.h)

type QComboBoxhidePopupProc* = proc(): void
proc onhidePopup*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxhidePopupProc) =
  # TODO check subclass
  var tmp = new QComboBoxhidePopupProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_hidePopup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_hidePopup(self: ptr cQComboBox, slot: int): void {.exportc: "miqt_exec_callback_QComboBox_hidePopup ".} =
  var nimfunc = cast[ptr QComboBoxhidePopupProc](cast[pointer](slot))

  nimfunc[]()
proc QComboBoxevent*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QEvent): bool =
  fQComboBox_virtualbase_event(self.h, event.h)

type QComboBoxeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxeventProc) =
  # TODO check subclass
  var tmp = new QComboBoxeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_event(self: ptr cQComboBox, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QComboBox_event ".} =
  var nimfunc = cast[ptr QComboBoxeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QComboBoxinputMethodQuery*(self: gen_qcombobox_types.QComboBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQComboBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QComboBoxinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QComboBoxinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_inputMethodQuery(self: ptr cQComboBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QComboBox_inputMethodQuery ".} =
  var nimfunc = cast[ptr QComboBoxinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QComboBoxfocusInEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QFocusEvent): void =
  fQComboBox_virtualbase_focusInEvent(self.h, e.h)

type QComboBoxfocusInEventProc* = proc(e: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxfocusInEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_focusInEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_focusInEvent ".} =
  var nimfunc = cast[ptr QComboBoxfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QComboBoxfocusOutEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QFocusEvent): void =
  fQComboBox_virtualbase_focusOutEvent(self.h, e.h)

type QComboBoxfocusOutEventProc* = proc(e: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_focusOutEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_focusOutEvent ".} =
  var nimfunc = cast[ptr QComboBoxfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QComboBoxchangeEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qcoreevent_types.QEvent): void =
  fQComboBox_virtualbase_changeEvent(self.h, e.h)

type QComboBoxchangeEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxchangeEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_changeEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_changeEvent ".} =
  var nimfunc = cast[ptr QComboBoxchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc QComboBoxresizeEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QResizeEvent): void =
  fQComboBox_virtualbase_resizeEvent(self.h, e.h)

type QComboBoxresizeEventProc* = proc(e: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxresizeEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_resizeEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_resizeEvent ".} =
  var nimfunc = cast[ptr QComboBoxresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)


  nimfunc[](slotval1)
proc QComboBoxpaintEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QPaintEvent): void =
  fQComboBox_virtualbase_paintEvent(self.h, e.h)

type QComboBoxpaintEventProc* = proc(e: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxpaintEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_paintEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_paintEvent ".} =
  var nimfunc = cast[ptr QComboBoxpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)


  nimfunc[](slotval1)
proc QComboBoxshowEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QShowEvent): void =
  fQComboBox_virtualbase_showEvent(self.h, e.h)

type QComboBoxshowEventProc* = proc(e: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxshowEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_showEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_showEvent ".} =
  var nimfunc = cast[ptr QComboBoxshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: e)


  nimfunc[](slotval1)
proc QComboBoxhideEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QHideEvent): void =
  fQComboBox_virtualbase_hideEvent(self.h, e.h)

type QComboBoxhideEventProc* = proc(e: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxhideEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_hideEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_hideEvent ".} =
  var nimfunc = cast[ptr QComboBoxhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: e)


  nimfunc[](slotval1)
proc QComboBoxmousePressEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QMouseEvent): void =
  fQComboBox_virtualbase_mousePressEvent(self.h, e.h)

type QComboBoxmousePressEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxmousePressEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_mousePressEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_mousePressEvent ".} =
  var nimfunc = cast[ptr QComboBoxmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QComboBoxmouseReleaseEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QMouseEvent): void =
  fQComboBox_virtualbase_mouseReleaseEvent(self.h, e.h)

type QComboBoxmouseReleaseEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_mouseReleaseEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QComboBoxmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QComboBoxkeyPressEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QKeyEvent): void =
  fQComboBox_virtualbase_keyPressEvent(self.h, e.h)

type QComboBoxkeyPressEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_keyPressEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_keyPressEvent ".} =
  var nimfunc = cast[ptr QComboBoxkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QComboBoxkeyReleaseEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QKeyEvent): void =
  fQComboBox_virtualbase_keyReleaseEvent(self.h, e.h)

type QComboBoxkeyReleaseEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_keyReleaseEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QComboBoxkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QComboBoxwheelEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QWheelEvent): void =
  fQComboBox_virtualbase_wheelEvent(self.h, e.h)

type QComboBoxwheelEventProc* = proc(e: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxwheelEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_wheelEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_wheelEvent ".} =
  var nimfunc = cast[ptr QComboBoxwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)


  nimfunc[](slotval1)
proc QComboBoxcontextMenuEvent*(self: gen_qcombobox_types.QComboBox, e: gen_qevent_types.QContextMenuEvent): void =
  fQComboBox_virtualbase_contextMenuEvent(self.h, e.h)

type QComboBoxcontextMenuEventProc* = proc(e: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_contextMenuEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_contextMenuEvent ".} =
  var nimfunc = cast[ptr QComboBoxcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e)


  nimfunc[](slotval1)
proc QComboBoxinputMethodEvent*(self: gen_qcombobox_types.QComboBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fQComboBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QComboBoxinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_inputMethodEvent(self: ptr cQComboBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QComboBox_inputMethodEvent ".} =
  var nimfunc = cast[ptr QComboBoxinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QComboBoxinitStyleOption*(self: gen_qcombobox_types.QComboBox, option: gen_qstyleoption_types.QStyleOptionComboBox): void =
  fQComboBox_virtualbase_initStyleOption(self.h, option.h)

type QComboBoxinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionComboBox): void
proc oninitStyleOption*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QComboBoxinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_initStyleOption(self: ptr cQComboBox, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QComboBox_initStyleOption ".} =
  var nimfunc = cast[ptr QComboBoxinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionComboBox(h: option)


  nimfunc[](slotval1)
proc QComboBoxdevType*(self: gen_qcombobox_types.QComboBox, ): cint =
  fQComboBox_virtualbase_devType(self.h)

type QComboBoxdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxdevTypeProc) =
  # TODO check subclass
  var tmp = new QComboBoxdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_devType(self: ptr cQComboBox, slot: int): cint {.exportc: "miqt_exec_callback_QComboBox_devType ".} =
  var nimfunc = cast[ptr QComboBoxdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QComboBoxsetVisible*(self: gen_qcombobox_types.QComboBox, visible: bool): void =
  fQComboBox_virtualbase_setVisible(self.h, visible)

type QComboBoxsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxsetVisibleProc) =
  # TODO check subclass
  var tmp = new QComboBoxsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_setVisible(self: ptr cQComboBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QComboBox_setVisible ".} =
  var nimfunc = cast[ptr QComboBoxsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QComboBoxheightForWidth*(self: gen_qcombobox_types.QComboBox, param1: cint): cint =
  fQComboBox_virtualbase_heightForWidth(self.h, param1)

type QComboBoxheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxheightForWidthProc) =
  # TODO check subclass
  var tmp = new QComboBoxheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_heightForWidth(self: ptr cQComboBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QComboBox_heightForWidth ".} =
  var nimfunc = cast[ptr QComboBoxheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QComboBoxhasHeightForWidth*(self: gen_qcombobox_types.QComboBox, ): bool =
  fQComboBox_virtualbase_hasHeightForWidth(self.h)

type QComboBoxhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QComboBoxhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_hasHeightForWidth(self: ptr cQComboBox, slot: int): bool {.exportc: "miqt_exec_callback_QComboBox_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QComboBoxhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QComboBoxpaintEngine*(self: gen_qcombobox_types.QComboBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQComboBox_virtualbase_paintEngine(self.h))

type QComboBoxpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxpaintEngineProc) =
  # TODO check subclass
  var tmp = new QComboBoxpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_paintEngine(self: ptr cQComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QComboBox_paintEngine ".} =
  var nimfunc = cast[ptr QComboBoxpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QComboBoxmouseDoubleClickEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QMouseEvent): void =
  fQComboBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QComboBoxmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_mouseDoubleClickEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QComboBoxmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QComboBoxmouseMoveEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QMouseEvent): void =
  fQComboBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QComboBoxmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_mouseMoveEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QComboBoxmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QComboBoxenterEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QEnterEvent): void =
  fQComboBox_virtualbase_enterEvent(self.h, event.h)

type QComboBoxenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxenterEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_enterEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_enterEvent ".} =
  var nimfunc = cast[ptr QComboBoxenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QComboBoxleaveEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QEvent): void =
  fQComboBox_virtualbase_leaveEvent(self.h, event.h)

type QComboBoxleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxleaveEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_leaveEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_leaveEvent ".} =
  var nimfunc = cast[ptr QComboBoxleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QComboBoxmoveEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QMoveEvent): void =
  fQComboBox_virtualbase_moveEvent(self.h, event.h)

type QComboBoxmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxmoveEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_moveEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_moveEvent ".} =
  var nimfunc = cast[ptr QComboBoxmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QComboBoxcloseEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QCloseEvent): void =
  fQComboBox_virtualbase_closeEvent(self.h, event.h)

type QComboBoxcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxcloseEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_closeEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_closeEvent ".} =
  var nimfunc = cast[ptr QComboBoxcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QComboBoxtabletEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QTabletEvent): void =
  fQComboBox_virtualbase_tabletEvent(self.h, event.h)

type QComboBoxtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxtabletEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_tabletEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_tabletEvent ".} =
  var nimfunc = cast[ptr QComboBoxtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QComboBoxactionEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QActionEvent): void =
  fQComboBox_virtualbase_actionEvent(self.h, event.h)

type QComboBoxactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxactionEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_actionEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_actionEvent ".} =
  var nimfunc = cast[ptr QComboBoxactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QComboBoxdragEnterEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QDragEnterEvent): void =
  fQComboBox_virtualbase_dragEnterEvent(self.h, event.h)

type QComboBoxdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_dragEnterEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_dragEnterEvent ".} =
  var nimfunc = cast[ptr QComboBoxdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QComboBoxdragMoveEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QDragMoveEvent): void =
  fQComboBox_virtualbase_dragMoveEvent(self.h, event.h)

type QComboBoxdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_dragMoveEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_dragMoveEvent ".} =
  var nimfunc = cast[ptr QComboBoxdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QComboBoxdragLeaveEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fQComboBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QComboBoxdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_dragLeaveEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QComboBoxdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QComboBoxdropEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qevent_types.QDropEvent): void =
  fQComboBox_virtualbase_dropEvent(self.h, event.h)

type QComboBoxdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxdropEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_dropEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_dropEvent ".} =
  var nimfunc = cast[ptr QComboBoxdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QComboBoxnativeEvent*(self: gen_qcombobox_types.QComboBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQComboBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QComboBoxnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxnativeEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_nativeEvent(self: ptr cQComboBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QComboBox_nativeEvent ".} =
  var nimfunc = cast[ptr QComboBoxnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QComboBoxmetric*(self: gen_qcombobox_types.QComboBox, param1: cint): cint =
  fQComboBox_virtualbase_metric(self.h, cint(param1))

type QComboBoxmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxmetricProc) =
  # TODO check subclass
  var tmp = new QComboBoxmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_metric(self: ptr cQComboBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QComboBox_metric ".} =
  var nimfunc = cast[ptr QComboBoxmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QComboBoxinitPainter*(self: gen_qcombobox_types.QComboBox, painter: gen_qpainter_types.QPainter): void =
  fQComboBox_virtualbase_initPainter(self.h, painter.h)

type QComboBoxinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxinitPainterProc) =
  # TODO check subclass
  var tmp = new QComboBoxinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_initPainter(self: ptr cQComboBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QComboBox_initPainter ".} =
  var nimfunc = cast[ptr QComboBoxinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QComboBoxredirected*(self: gen_qcombobox_types.QComboBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQComboBox_virtualbase_redirected(self.h, offset.h))

type QComboBoxredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxredirectedProc) =
  # TODO check subclass
  var tmp = new QComboBoxredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_redirected(self: ptr cQComboBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QComboBox_redirected ".} =
  var nimfunc = cast[ptr QComboBoxredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QComboBoxsharedPainter*(self: gen_qcombobox_types.QComboBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQComboBox_virtualbase_sharedPainter(self.h))

type QComboBoxsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxsharedPainterProc) =
  # TODO check subclass
  var tmp = new QComboBoxsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_sharedPainter(self: ptr cQComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QComboBox_sharedPainter ".} =
  var nimfunc = cast[ptr QComboBoxsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QComboBoxfocusNextPrevChild*(self: gen_qcombobox_types.QComboBox, next: bool): bool =
  fQComboBox_virtualbase_focusNextPrevChild(self.h, next)

type QComboBoxfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QComboBoxfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_focusNextPrevChild(self: ptr cQComboBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QComboBox_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QComboBoxfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QComboBoxeventFilter*(self: gen_qcombobox_types.QComboBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQComboBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QComboBoxeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxeventFilterProc) =
  # TODO check subclass
  var tmp = new QComboBoxeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_eventFilter(self: ptr cQComboBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QComboBox_eventFilter ".} =
  var nimfunc = cast[ptr QComboBoxeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QComboBoxtimerEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fQComboBox_virtualbase_timerEvent(self.h, event.h)

type QComboBoxtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxtimerEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_timerEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_timerEvent ".} =
  var nimfunc = cast[ptr QComboBoxtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QComboBoxchildEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QChildEvent): void =
  fQComboBox_virtualbase_childEvent(self.h, event.h)

type QComboBoxchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxchildEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_childEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_childEvent ".} =
  var nimfunc = cast[ptr QComboBoxchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QComboBoxcustomEvent*(self: gen_qcombobox_types.QComboBox, event: gen_qcoreevent_types.QEvent): void =
  fQComboBox_virtualbase_customEvent(self.h, event.h)

type QComboBoxcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxcustomEventProc) =
  # TODO check subclass
  var tmp = new QComboBoxcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_customEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_customEvent ".} =
  var nimfunc = cast[ptr QComboBoxcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QComboBoxconnectNotify*(self: gen_qcombobox_types.QComboBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQComboBox_virtualbase_connectNotify(self.h, signal.h)

type QComboBoxconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QComboBoxconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_connectNotify(self: ptr cQComboBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QComboBox_connectNotify ".} =
  var nimfunc = cast[ptr QComboBoxconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QComboBoxdisconnectNotify*(self: gen_qcombobox_types.QComboBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQComboBox_virtualbase_disconnectNotify(self.h, signal.h)

type QComboBoxdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qcombobox_types.QComboBox, slot: QComboBoxdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QComboBoxdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_disconnectNotify(self: ptr cQComboBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QComboBox_disconnectNotify ".} =
  var nimfunc = cast[ptr QComboBoxdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qcombobox_types.QComboBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQComboBox_staticMetaObject())
proc delete*(self: gen_qcombobox_types.QComboBox) =
  fcQComboBox_delete(self.h)
