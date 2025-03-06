import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qaccessible.cpp", cflags).}


type QAccessibleEventEnum* = distinct cint
template SoundPlayed*(_: type QAccessibleEventEnum): untyped = 1
template Alert*(_: type QAccessibleEventEnum): untyped = 2
template ForegroundChanged*(_: type QAccessibleEventEnum): untyped = 3
template MenuStart*(_: type QAccessibleEventEnum): untyped = 4
template MenuEnd*(_: type QAccessibleEventEnum): untyped = 5
template PopupMenuStart*(_: type QAccessibleEventEnum): untyped = 6
template PopupMenuEnd*(_: type QAccessibleEventEnum): untyped = 7
template ContextHelpStart*(_: type QAccessibleEventEnum): untyped = 12
template ContextHelpEnd*(_: type QAccessibleEventEnum): untyped = 13
template DragDropStart*(_: type QAccessibleEventEnum): untyped = 14
template DragDropEnd*(_: type QAccessibleEventEnum): untyped = 15
template DialogStart*(_: type QAccessibleEventEnum): untyped = 16
template DialogEnd*(_: type QAccessibleEventEnum): untyped = 17
template ScrollingStart*(_: type QAccessibleEventEnum): untyped = 18
template ScrollingEnd*(_: type QAccessibleEventEnum): untyped = 19
template MenuCommand*(_: type QAccessibleEventEnum): untyped = 24
template ActionChanged*(_: type QAccessibleEventEnum): untyped = 257
template ActiveDescendantChanged*(_: type QAccessibleEventEnum): untyped = 258
template AttributeChanged*(_: type QAccessibleEventEnum): untyped = 259
template DocumentContentChanged*(_: type QAccessibleEventEnum): untyped = 260
template DocumentLoadComplete*(_: type QAccessibleEventEnum): untyped = 261
template DocumentLoadStopped*(_: type QAccessibleEventEnum): untyped = 262
template DocumentReload*(_: type QAccessibleEventEnum): untyped = 263
template HyperlinkEndIndexChanged*(_: type QAccessibleEventEnum): untyped = 264
template HyperlinkNumberOfAnchorsChanged*(_: type QAccessibleEventEnum): untyped = 265
template HyperlinkSelectedLinkChanged*(_: type QAccessibleEventEnum): untyped = 266
template HypertextLinkActivated*(_: type QAccessibleEventEnum): untyped = 267
template HypertextLinkSelected*(_: type QAccessibleEventEnum): untyped = 268
template HyperlinkStartIndexChanged*(_: type QAccessibleEventEnum): untyped = 269
template HypertextChanged*(_: type QAccessibleEventEnum): untyped = 270
template HypertextNLinksChanged*(_: type QAccessibleEventEnum): untyped = 271
template ObjectAttributeChanged*(_: type QAccessibleEventEnum): untyped = 272
template PageChanged*(_: type QAccessibleEventEnum): untyped = 273
template SectionChanged*(_: type QAccessibleEventEnum): untyped = 274
template TableCaptionChanged*(_: type QAccessibleEventEnum): untyped = 275
template TableColumnDescriptionChanged*(_: type QAccessibleEventEnum): untyped = 276
template TableColumnHeaderChanged*(_: type QAccessibleEventEnum): untyped = 277
template TableModelChanged*(_: type QAccessibleEventEnum): untyped = 278
template TableRowDescriptionChanged*(_: type QAccessibleEventEnum): untyped = 279
template TableRowHeaderChanged*(_: type QAccessibleEventEnum): untyped = 280
template TableSummaryChanged*(_: type QAccessibleEventEnum): untyped = 281
template TextAttributeChanged*(_: type QAccessibleEventEnum): untyped = 282
template TextCaretMoved*(_: type QAccessibleEventEnum): untyped = 283
template TextColumnChanged*(_: type QAccessibleEventEnum): untyped = 285
template TextInserted*(_: type QAccessibleEventEnum): untyped = 286
template TextRemoved*(_: type QAccessibleEventEnum): untyped = 287
template TextUpdated*(_: type QAccessibleEventEnum): untyped = 288
template TextSelectionChanged*(_: type QAccessibleEventEnum): untyped = 289
template VisibleDataChanged*(_: type QAccessibleEventEnum): untyped = 290
template ObjectCreated*(_: type QAccessibleEventEnum): untyped = 32768
template ObjectDestroyed*(_: type QAccessibleEventEnum): untyped = 32769
template ObjectShow*(_: type QAccessibleEventEnum): untyped = 32770
template ObjectHide*(_: type QAccessibleEventEnum): untyped = 32771
template ObjectReorder*(_: type QAccessibleEventEnum): untyped = 32772
template Focus*(_: type QAccessibleEventEnum): untyped = 32773
template Selection*(_: type QAccessibleEventEnum): untyped = 32774
template SelectionAdd*(_: type QAccessibleEventEnum): untyped = 32775
template SelectionRemove*(_: type QAccessibleEventEnum): untyped = 32776
template SelectionWithin*(_: type QAccessibleEventEnum): untyped = 32777
template StateChanged*(_: type QAccessibleEventEnum): untyped = 32778
template LocationChanged*(_: type QAccessibleEventEnum): untyped = 32779
template NameChanged*(_: type QAccessibleEventEnum): untyped = 32780
template DescriptionChanged*(_: type QAccessibleEventEnum): untyped = 32781
template ValueChanged*(_: type QAccessibleEventEnum): untyped = 32782
template ParentChanged*(_: type QAccessibleEventEnum): untyped = 32783
template HelpChanged*(_: type QAccessibleEventEnum): untyped = 32928
template DefaultActionChanged*(_: type QAccessibleEventEnum): untyped = 32944
template AcceleratorChanged*(_: type QAccessibleEventEnum): untyped = 32960
template InvalidEvent*(_: type QAccessibleEventEnum): untyped = 32961


type QAccessibleRoleEnum* = distinct cint
template NoRole*(_: type QAccessibleRoleEnum): untyped = 0
template TitleBar*(_: type QAccessibleRoleEnum): untyped = 1
template MenuBar*(_: type QAccessibleRoleEnum): untyped = 2
template ScrollBar*(_: type QAccessibleRoleEnum): untyped = 3
template Grip*(_: type QAccessibleRoleEnum): untyped = 4
template Sound*(_: type QAccessibleRoleEnum): untyped = 5
template Cursor*(_: type QAccessibleRoleEnum): untyped = 6
template Caret*(_: type QAccessibleRoleEnum): untyped = 7
template AlertMessage*(_: type QAccessibleRoleEnum): untyped = 8
template Window*(_: type QAccessibleRoleEnum): untyped = 9
template Client*(_: type QAccessibleRoleEnum): untyped = 10
template PopupMenu*(_: type QAccessibleRoleEnum): untyped = 11
template MenuItem*(_: type QAccessibleRoleEnum): untyped = 12
template ToolTip*(_: type QAccessibleRoleEnum): untyped = 13
template Application*(_: type QAccessibleRoleEnum): untyped = 14
template Document*(_: type QAccessibleRoleEnum): untyped = 15
template Pane*(_: type QAccessibleRoleEnum): untyped = 16
template Chart*(_: type QAccessibleRoleEnum): untyped = 17
template Dialog*(_: type QAccessibleRoleEnum): untyped = 18
template Border*(_: type QAccessibleRoleEnum): untyped = 19
template Grouping*(_: type QAccessibleRoleEnum): untyped = 20
template Separator*(_: type QAccessibleRoleEnum): untyped = 21
template ToolBar*(_: type QAccessibleRoleEnum): untyped = 22
template StatusBar*(_: type QAccessibleRoleEnum): untyped = 23
template Table*(_: type QAccessibleRoleEnum): untyped = 24
template ColumnHeader*(_: type QAccessibleRoleEnum): untyped = 25
template RowHeader*(_: type QAccessibleRoleEnum): untyped = 26
template Column*(_: type QAccessibleRoleEnum): untyped = 27
template Row*(_: type QAccessibleRoleEnum): untyped = 28
template Cell*(_: type QAccessibleRoleEnum): untyped = 29
template Link*(_: type QAccessibleRoleEnum): untyped = 30
template HelpBalloon*(_: type QAccessibleRoleEnum): untyped = 31
template Assistant*(_: type QAccessibleRoleEnum): untyped = 32
template List*(_: type QAccessibleRoleEnum): untyped = 33
template ListItem*(_: type QAccessibleRoleEnum): untyped = 34
template Tree*(_: type QAccessibleRoleEnum): untyped = 35
template TreeItem*(_: type QAccessibleRoleEnum): untyped = 36
template PageTab*(_: type QAccessibleRoleEnum): untyped = 37
template PropertyPage*(_: type QAccessibleRoleEnum): untyped = 38
template Indicator*(_: type QAccessibleRoleEnum): untyped = 39
template Graphic*(_: type QAccessibleRoleEnum): untyped = 40
template StaticText*(_: type QAccessibleRoleEnum): untyped = 41
template EditableText*(_: type QAccessibleRoleEnum): untyped = 42
template Button*(_: type QAccessibleRoleEnum): untyped = 43
template PushButton*(_: type QAccessibleRoleEnum): untyped = 43
template CheckBox*(_: type QAccessibleRoleEnum): untyped = 44
template RadioButton*(_: type QAccessibleRoleEnum): untyped = 45
template ComboBox*(_: type QAccessibleRoleEnum): untyped = 46
template ProgressBar*(_: type QAccessibleRoleEnum): untyped = 48
template Dial*(_: type QAccessibleRoleEnum): untyped = 49
template HotkeyField*(_: type QAccessibleRoleEnum): untyped = 50
template Slider*(_: type QAccessibleRoleEnum): untyped = 51
template SpinBox*(_: type QAccessibleRoleEnum): untyped = 52
template Canvas*(_: type QAccessibleRoleEnum): untyped = 53
template Animation*(_: type QAccessibleRoleEnum): untyped = 54
template Equation*(_: type QAccessibleRoleEnum): untyped = 55
template ButtonDropDown*(_: type QAccessibleRoleEnum): untyped = 56
template ButtonMenu*(_: type QAccessibleRoleEnum): untyped = 57
template ButtonDropGrid*(_: type QAccessibleRoleEnum): untyped = 58
template Whitespace*(_: type QAccessibleRoleEnum): untyped = 59
template PageTabList*(_: type QAccessibleRoleEnum): untyped = 60
template Clock*(_: type QAccessibleRoleEnum): untyped = 61
template Splitter*(_: type QAccessibleRoleEnum): untyped = 62
template LayeredPane*(_: type QAccessibleRoleEnum): untyped = 128
template Terminal*(_: type QAccessibleRoleEnum): untyped = 129
template Desktop*(_: type QAccessibleRoleEnum): untyped = 130
template Paragraph*(_: type QAccessibleRoleEnum): untyped = 131
template WebDocument*(_: type QAccessibleRoleEnum): untyped = 132
template Section*(_: type QAccessibleRoleEnum): untyped = 133
template Notification*(_: type QAccessibleRoleEnum): untyped = 134
template ColorChooser*(_: type QAccessibleRoleEnum): untyped = 1028
template Footer*(_: type QAccessibleRoleEnum): untyped = 1038
template Form*(_: type QAccessibleRoleEnum): untyped = 1040
template Heading*(_: type QAccessibleRoleEnum): untyped = 1044
template Note*(_: type QAccessibleRoleEnum): untyped = 1051
template ComplementaryContent*(_: type QAccessibleRoleEnum): untyped = 1068
template UserRole*(_: type QAccessibleRoleEnum): untyped = 65535


type QAccessibleTextEnum* = distinct cint
template Name*(_: type QAccessibleTextEnum): untyped = 0
template Description*(_: type QAccessibleTextEnum): untyped = 1
template Value*(_: type QAccessibleTextEnum): untyped = 2
template Help*(_: type QAccessibleTextEnum): untyped = 3
template Accelerator*(_: type QAccessibleTextEnum): untyped = 4
template DebugDescription*(_: type QAccessibleTextEnum): untyped = 5
template UserText*(_: type QAccessibleTextEnum): untyped = 65535


type QAccessibleRelationFlagEnum* = distinct cint
template Label*(_: type QAccessibleRelationFlagEnum): untyped = 1
template Labelled*(_: type QAccessibleRelationFlagEnum): untyped = 2
template Controller*(_: type QAccessibleRelationFlagEnum): untyped = 4
template Controlled*(_: type QAccessibleRelationFlagEnum): untyped = 8
template AllRelations*(_: type QAccessibleRelationFlagEnum): untyped = 4294967295


type QAccessibleInterfaceTypeEnum* = distinct cint
template TextInterface*(_: type QAccessibleInterfaceTypeEnum): untyped = 0
template EditableTextInterface*(_: type QAccessibleInterfaceTypeEnum): untyped = 1
template ValueInterface*(_: type QAccessibleInterfaceTypeEnum): untyped = 2
template ActionInterface*(_: type QAccessibleInterfaceTypeEnum): untyped = 3
template ImageInterface*(_: type QAccessibleInterfaceTypeEnum): untyped = 4
template TableInterface*(_: type QAccessibleInterfaceTypeEnum): untyped = 5
template TableCellInterface*(_: type QAccessibleInterfaceTypeEnum): untyped = 6


type QAccessibleTextBoundaryTypeEnum* = distinct cint
template CharBoundary*(_: type QAccessibleTextBoundaryTypeEnum): untyped = 0
template WordBoundary*(_: type QAccessibleTextBoundaryTypeEnum): untyped = 1
template SentenceBoundary*(_: type QAccessibleTextBoundaryTypeEnum): untyped = 2
template ParagraphBoundary*(_: type QAccessibleTextBoundaryTypeEnum): untyped = 3
template LineBoundary*(_: type QAccessibleTextBoundaryTypeEnum): untyped = 4
template NoBoundary*(_: type QAccessibleTextBoundaryTypeEnum): untyped = 5


type QAccessibleTableModelChangeEventModelChangeTypeEnum* = distinct cint
template ModelReset*(_: type QAccessibleTableModelChangeEventModelChangeTypeEnum): untyped = 0
template DataChanged*(_: type QAccessibleTableModelChangeEventModelChangeTypeEnum): untyped = 1
template RowsInserted*(_: type QAccessibleTableModelChangeEventModelChangeTypeEnum): untyped = 2
template ColumnsInserted*(_: type QAccessibleTableModelChangeEventModelChangeTypeEnum): untyped = 3
template RowsRemoved*(_: type QAccessibleTableModelChangeEventModelChangeTypeEnum): untyped = 4
template ColumnsRemoved*(_: type QAccessibleTableModelChangeEventModelChangeTypeEnum): untyped = 5


import ./gen_qaccessible_types
export gen_qaccessible_types

import
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qcolor_types,
  ./gen_qtextcursor_types,
  ./gen_qwindow_types
export
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qcolor_types,
  gen_qtextcursor_types,
  gen_qwindow_types

type cQAccessible*{.exportc: "QAccessible", incompleteStruct.} = object
type cQAccessibleInterface*{.exportc: "QAccessibleInterface", incompleteStruct.} = object
type cQAccessibleTextInterface*{.exportc: "QAccessibleTextInterface", incompleteStruct.} = object
type cQAccessibleEditableTextInterface*{.exportc: "QAccessibleEditableTextInterface", incompleteStruct.} = object
type cQAccessibleValueInterface*{.exportc: "QAccessibleValueInterface", incompleteStruct.} = object
type cQAccessibleTableCellInterface*{.exportc: "QAccessibleTableCellInterface", incompleteStruct.} = object
type cQAccessibleTableInterface*{.exportc: "QAccessibleTableInterface", incompleteStruct.} = object
type cQAccessibleActionInterface*{.exportc: "QAccessibleActionInterface", incompleteStruct.} = object
type cQAccessibleImageInterface*{.exportc: "QAccessibleImageInterface", incompleteStruct.} = object
type cQAccessibleEvent*{.exportc: "QAccessibleEvent", incompleteStruct.} = object
type cQAccessibleStateChangeEvent*{.exportc: "QAccessibleStateChangeEvent", incompleteStruct.} = object
type cQAccessibleTextCursorEvent*{.exportc: "QAccessibleTextCursorEvent", incompleteStruct.} = object
type cQAccessibleTextSelectionEvent*{.exportc: "QAccessibleTextSelectionEvent", incompleteStruct.} = object
type cQAccessibleTextInsertEvent*{.exportc: "QAccessibleTextInsertEvent", incompleteStruct.} = object
type cQAccessibleTextRemoveEvent*{.exportc: "QAccessibleTextRemoveEvent", incompleteStruct.} = object
type cQAccessibleTextUpdateEvent*{.exportc: "QAccessibleTextUpdateEvent", incompleteStruct.} = object
type cQAccessibleValueChangeEvent*{.exportc: "QAccessibleValueChangeEvent", incompleteStruct.} = object
type cQAccessibleTableModelChangeEvent*{.exportc: "QAccessibleTableModelChangeEvent", incompleteStruct.} = object
type cQAccessibleState*{.exportc: "QAccessible__State", incompleteStruct.} = object
type cQAccessibleActivationObserver*{.exportc: "QAccessible__ActivationObserver", incompleteStruct.} = object

proc fcQAccessible_installActivationObserver(param1: pointer): void {.importc: "QAccessible_installActivationObserver".}
proc fcQAccessible_removeActivationObserver(param1: pointer): void {.importc: "QAccessible_removeActivationObserver".}
proc fcQAccessible_queryAccessibleInterface(param1: pointer): pointer {.importc: "QAccessible_queryAccessibleInterface".}
proc fcQAccessible_uniqueId(iface: pointer): cuint {.importc: "QAccessible_uniqueId".}
proc fcQAccessible_accessibleInterface(uniqueId: cuint): pointer {.importc: "QAccessible_accessibleInterface".}
proc fcQAccessible_registerAccessibleInterface(iface: pointer): cuint {.importc: "QAccessible_registerAccessibleInterface".}
proc fcQAccessible_deleteAccessibleInterface(uniqueId: cuint): void {.importc: "QAccessible_deleteAccessibleInterface".}
proc fcQAccessible_updateAccessibility(event: pointer): void {.importc: "QAccessible_updateAccessibility".}
proc fcQAccessible_isActive(): bool {.importc: "QAccessible_isActive".}
proc fcQAccessible_setActive(active: bool): void {.importc: "QAccessible_setActive".}
proc fcQAccessible_setRootObject(objectVal: pointer): void {.importc: "QAccessible_setRootObject".}
proc fcQAccessible_cleanup(): void {.importc: "QAccessible_cleanup".}
proc fcQAccessible_qAccessibleTextBoundaryHelper(cursor: pointer, boundaryType: cint): struct_miqt_map {.importc: "QAccessible_qAccessibleTextBoundaryHelper".}
proc fcQAccessible_staticMetaObject(): pointer {.importc: "QAccessible_staticMetaObject".}
proc fcQAccessible_delete(self: pointer) {.importc: "QAccessible_delete".}
proc fcQAccessibleInterface_isValid(self: pointer, ): bool {.importc: "QAccessibleInterface_isValid".}
proc fcQAccessibleInterface_objectX(self: pointer, ): pointer {.importc: "QAccessibleInterface_object".}
proc fcQAccessibleInterface_window(self: pointer, ): pointer {.importc: "QAccessibleInterface_window".}
proc fcQAccessibleInterface_relations(self: pointer, match: cint): struct_miqt_array {.importc: "QAccessibleInterface_relations".}
proc fcQAccessibleInterface_focusChild(self: pointer, ): pointer {.importc: "QAccessibleInterface_focusChild".}
proc fcQAccessibleInterface_childAt(self: pointer, x: cint, y: cint): pointer {.importc: "QAccessibleInterface_childAt".}
proc fcQAccessibleInterface_parent(self: pointer, ): pointer {.importc: "QAccessibleInterface_parent".}
proc fcQAccessibleInterface_child(self: pointer, index: cint): pointer {.importc: "QAccessibleInterface_child".}
proc fcQAccessibleInterface_childCount(self: pointer, ): cint {.importc: "QAccessibleInterface_childCount".}
proc fcQAccessibleInterface_indexOfChild(self: pointer, param1: pointer): cint {.importc: "QAccessibleInterface_indexOfChild".}
proc fcQAccessibleInterface_text(self: pointer, t: cint): struct_miqt_string {.importc: "QAccessibleInterface_text".}
proc fcQAccessibleInterface_setText(self: pointer, t: cint, text: struct_miqt_string): void {.importc: "QAccessibleInterface_setText".}
proc fcQAccessibleInterface_rect(self: pointer, ): pointer {.importc: "QAccessibleInterface_rect".}
proc fcQAccessibleInterface_role(self: pointer, ): cint {.importc: "QAccessibleInterface_role".}
proc fcQAccessibleInterface_state(self: pointer, ): pointer {.importc: "QAccessibleInterface_state".}
proc fcQAccessibleInterface_foregroundColor(self: pointer, ): pointer {.importc: "QAccessibleInterface_foregroundColor".}
proc fcQAccessibleInterface_backgroundColor(self: pointer, ): pointer {.importc: "QAccessibleInterface_backgroundColor".}
proc fcQAccessibleInterface_textInterface(self: pointer, ): pointer {.importc: "QAccessibleInterface_textInterface".}
proc fcQAccessibleInterface_editableTextInterface(self: pointer, ): pointer {.importc: "QAccessibleInterface_editableTextInterface".}
proc fcQAccessibleInterface_valueInterface(self: pointer, ): pointer {.importc: "QAccessibleInterface_valueInterface".}
proc fcQAccessibleInterface_actionInterface(self: pointer, ): pointer {.importc: "QAccessibleInterface_actionInterface".}
proc fcQAccessibleInterface_imageInterface(self: pointer, ): pointer {.importc: "QAccessibleInterface_imageInterface".}
proc fcQAccessibleInterface_tableInterface(self: pointer, ): pointer {.importc: "QAccessibleInterface_tableInterface".}
proc fcQAccessibleInterface_tableCellInterface(self: pointer, ): pointer {.importc: "QAccessibleInterface_tableCellInterface".}
proc fcQAccessibleInterface_virtualHook(self: pointer, id: cint, data: pointer): void {.importc: "QAccessibleInterface_virtualHook".}
proc fcQAccessibleInterface_interfaceCast(self: pointer, param1: cint): pointer {.importc: "QAccessibleInterface_interfaceCast".}
proc fcQAccessibleTextInterface_selection(self: pointer, selectionIndex: cint, startOffset: ptr cint, endOffset: ptr cint): void {.importc: "QAccessibleTextInterface_selection".}
proc fcQAccessibleTextInterface_selectionCount(self: pointer, ): cint {.importc: "QAccessibleTextInterface_selectionCount".}
proc fcQAccessibleTextInterface_addSelection(self: pointer, startOffset: cint, endOffset: cint): void {.importc: "QAccessibleTextInterface_addSelection".}
proc fcQAccessibleTextInterface_removeSelection(self: pointer, selectionIndex: cint): void {.importc: "QAccessibleTextInterface_removeSelection".}
proc fcQAccessibleTextInterface_setSelection(self: pointer, selectionIndex: cint, startOffset: cint, endOffset: cint): void {.importc: "QAccessibleTextInterface_setSelection".}
proc fcQAccessibleTextInterface_cursorPosition(self: pointer, ): cint {.importc: "QAccessibleTextInterface_cursorPosition".}
proc fcQAccessibleTextInterface_setCursorPosition(self: pointer, position: cint): void {.importc: "QAccessibleTextInterface_setCursorPosition".}
proc fcQAccessibleTextInterface_text(self: pointer, startOffset: cint, endOffset: cint): struct_miqt_string {.importc: "QAccessibleTextInterface_text".}
proc fcQAccessibleTextInterface_textBeforeOffset(self: pointer, offset: cint, boundaryType: cint, startOffset: ptr cint, endOffset: ptr cint): struct_miqt_string {.importc: "QAccessibleTextInterface_textBeforeOffset".}
proc fcQAccessibleTextInterface_textAfterOffset(self: pointer, offset: cint, boundaryType: cint, startOffset: ptr cint, endOffset: ptr cint): struct_miqt_string {.importc: "QAccessibleTextInterface_textAfterOffset".}
proc fcQAccessibleTextInterface_textAtOffset(self: pointer, offset: cint, boundaryType: cint, startOffset: ptr cint, endOffset: ptr cint): struct_miqt_string {.importc: "QAccessibleTextInterface_textAtOffset".}
proc fcQAccessibleTextInterface_characterCount(self: pointer, ): cint {.importc: "QAccessibleTextInterface_characterCount".}
proc fcQAccessibleTextInterface_characterRect(self: pointer, offset: cint): pointer {.importc: "QAccessibleTextInterface_characterRect".}
proc fcQAccessibleTextInterface_offsetAtPoint(self: pointer, point: pointer): cint {.importc: "QAccessibleTextInterface_offsetAtPoint".}
proc fcQAccessibleTextInterface_scrollToSubstring(self: pointer, startIndex: cint, endIndex: cint): void {.importc: "QAccessibleTextInterface_scrollToSubstring".}
proc fcQAccessibleTextInterface_attributes(self: pointer, offset: cint, startOffset: ptr cint, endOffset: ptr cint): struct_miqt_string {.importc: "QAccessibleTextInterface_attributes".}
proc fcQAccessibleTextInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessibleTextInterface_operatorAssign".}
proc fcQAccessibleTextInterface_delete(self: pointer) {.importc: "QAccessibleTextInterface_delete".}
proc fcQAccessibleEditableTextInterface_deleteText(self: pointer, startOffset: cint, endOffset: cint): void {.importc: "QAccessibleEditableTextInterface_deleteText".}
proc fcQAccessibleEditableTextInterface_insertText(self: pointer, offset: cint, text: struct_miqt_string): void {.importc: "QAccessibleEditableTextInterface_insertText".}
proc fcQAccessibleEditableTextInterface_replaceText(self: pointer, startOffset: cint, endOffset: cint, text: struct_miqt_string): void {.importc: "QAccessibleEditableTextInterface_replaceText".}
proc fcQAccessibleEditableTextInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessibleEditableTextInterface_operatorAssign".}
proc fcQAccessibleEditableTextInterface_delete(self: pointer) {.importc: "QAccessibleEditableTextInterface_delete".}
proc fcQAccessibleValueInterface_currentValue(self: pointer, ): pointer {.importc: "QAccessibleValueInterface_currentValue".}
proc fcQAccessibleValueInterface_setCurrentValue(self: pointer, value: pointer): void {.importc: "QAccessibleValueInterface_setCurrentValue".}
proc fcQAccessibleValueInterface_maximumValue(self: pointer, ): pointer {.importc: "QAccessibleValueInterface_maximumValue".}
proc fcQAccessibleValueInterface_minimumValue(self: pointer, ): pointer {.importc: "QAccessibleValueInterface_minimumValue".}
proc fcQAccessibleValueInterface_minimumStepSize(self: pointer, ): pointer {.importc: "QAccessibleValueInterface_minimumStepSize".}
proc fcQAccessibleValueInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessibleValueInterface_operatorAssign".}
proc fcQAccessibleValueInterface_delete(self: pointer) {.importc: "QAccessibleValueInterface_delete".}
proc fcQAccessibleTableCellInterface_isSelected(self: pointer, ): bool {.importc: "QAccessibleTableCellInterface_isSelected".}
proc fcQAccessibleTableCellInterface_columnHeaderCells(self: pointer, ): struct_miqt_array {.importc: "QAccessibleTableCellInterface_columnHeaderCells".}
proc fcQAccessibleTableCellInterface_rowHeaderCells(self: pointer, ): struct_miqt_array {.importc: "QAccessibleTableCellInterface_rowHeaderCells".}
proc fcQAccessibleTableCellInterface_columnIndex(self: pointer, ): cint {.importc: "QAccessibleTableCellInterface_columnIndex".}
proc fcQAccessibleTableCellInterface_rowIndex(self: pointer, ): cint {.importc: "QAccessibleTableCellInterface_rowIndex".}
proc fcQAccessibleTableCellInterface_columnExtent(self: pointer, ): cint {.importc: "QAccessibleTableCellInterface_columnExtent".}
proc fcQAccessibleTableCellInterface_rowExtent(self: pointer, ): cint {.importc: "QAccessibleTableCellInterface_rowExtent".}
proc fcQAccessibleTableCellInterface_table(self: pointer, ): pointer {.importc: "QAccessibleTableCellInterface_table".}
proc fcQAccessibleTableCellInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessibleTableCellInterface_operatorAssign".}
proc fcQAccessibleTableCellInterface_delete(self: pointer) {.importc: "QAccessibleTableCellInterface_delete".}
proc fcQAccessibleTableInterface_caption(self: pointer, ): pointer {.importc: "QAccessibleTableInterface_caption".}
proc fcQAccessibleTableInterface_summary(self: pointer, ): pointer {.importc: "QAccessibleTableInterface_summary".}
proc fcQAccessibleTableInterface_cellAt(self: pointer, row: cint, column: cint): pointer {.importc: "QAccessibleTableInterface_cellAt".}
proc fcQAccessibleTableInterface_selectedCellCount(self: pointer, ): cint {.importc: "QAccessibleTableInterface_selectedCellCount".}
proc fcQAccessibleTableInterface_selectedCells(self: pointer, ): struct_miqt_array {.importc: "QAccessibleTableInterface_selectedCells".}
proc fcQAccessibleTableInterface_columnDescription(self: pointer, column: cint): struct_miqt_string {.importc: "QAccessibleTableInterface_columnDescription".}
proc fcQAccessibleTableInterface_rowDescription(self: pointer, row: cint): struct_miqt_string {.importc: "QAccessibleTableInterface_rowDescription".}
proc fcQAccessibleTableInterface_selectedColumnCount(self: pointer, ): cint {.importc: "QAccessibleTableInterface_selectedColumnCount".}
proc fcQAccessibleTableInterface_selectedRowCount(self: pointer, ): cint {.importc: "QAccessibleTableInterface_selectedRowCount".}
proc fcQAccessibleTableInterface_columnCount(self: pointer, ): cint {.importc: "QAccessibleTableInterface_columnCount".}
proc fcQAccessibleTableInterface_rowCount(self: pointer, ): cint {.importc: "QAccessibleTableInterface_rowCount".}
proc fcQAccessibleTableInterface_selectedColumns(self: pointer, ): struct_miqt_array {.importc: "QAccessibleTableInterface_selectedColumns".}
proc fcQAccessibleTableInterface_selectedRows(self: pointer, ): struct_miqt_array {.importc: "QAccessibleTableInterface_selectedRows".}
proc fcQAccessibleTableInterface_isColumnSelected(self: pointer, column: cint): bool {.importc: "QAccessibleTableInterface_isColumnSelected".}
proc fcQAccessibleTableInterface_isRowSelected(self: pointer, row: cint): bool {.importc: "QAccessibleTableInterface_isRowSelected".}
proc fcQAccessibleTableInterface_selectRow(self: pointer, row: cint): bool {.importc: "QAccessibleTableInterface_selectRow".}
proc fcQAccessibleTableInterface_selectColumn(self: pointer, column: cint): bool {.importc: "QAccessibleTableInterface_selectColumn".}
proc fcQAccessibleTableInterface_unselectRow(self: pointer, row: cint): bool {.importc: "QAccessibleTableInterface_unselectRow".}
proc fcQAccessibleTableInterface_unselectColumn(self: pointer, column: cint): bool {.importc: "QAccessibleTableInterface_unselectColumn".}
proc fcQAccessibleTableInterface_modelChange(self: pointer, event: pointer): void {.importc: "QAccessibleTableInterface_modelChange".}
proc fcQAccessibleTableInterface_delete(self: pointer) {.importc: "QAccessibleTableInterface_delete".}
proc fcQAccessibleActionInterface_tr(sourceText: cstring): struct_miqt_string {.importc: "QAccessibleActionInterface_tr".}
proc fcQAccessibleActionInterface_trUtf8(sourceText: cstring): struct_miqt_string {.importc: "QAccessibleActionInterface_trUtf8".}
proc fcQAccessibleActionInterface_actionNames(self: pointer, ): struct_miqt_array {.importc: "QAccessibleActionInterface_actionNames".}
proc fcQAccessibleActionInterface_localizedActionName(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QAccessibleActionInterface_localizedActionName".}
proc fcQAccessibleActionInterface_localizedActionDescription(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QAccessibleActionInterface_localizedActionDescription".}
proc fcQAccessibleActionInterface_doAction(self: pointer, actionName: struct_miqt_string): void {.importc: "QAccessibleActionInterface_doAction".}
proc fcQAccessibleActionInterface_keyBindingsForAction(self: pointer, actionName: struct_miqt_string): struct_miqt_array {.importc: "QAccessibleActionInterface_keyBindingsForAction".}
proc fcQAccessibleActionInterface_pressAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_pressAction".}
proc fcQAccessibleActionInterface_increaseAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_increaseAction".}
proc fcQAccessibleActionInterface_decreaseAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_decreaseAction".}
proc fcQAccessibleActionInterface_showMenuAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_showMenuAction".}
proc fcQAccessibleActionInterface_setFocusAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_setFocusAction".}
proc fcQAccessibleActionInterface_toggleAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_toggleAction".}
proc fcQAccessibleActionInterface_scrollLeftAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_scrollLeftAction".}
proc fcQAccessibleActionInterface_scrollRightAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_scrollRightAction".}
proc fcQAccessibleActionInterface_scrollUpAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_scrollUpAction".}
proc fcQAccessibleActionInterface_scrollDownAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_scrollDownAction".}
proc fcQAccessibleActionInterface_nextPageAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_nextPageAction".}
proc fcQAccessibleActionInterface_previousPageAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_previousPageAction".}
proc fcQAccessibleActionInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessibleActionInterface_operatorAssign".}
proc fcQAccessibleActionInterface_tr2(sourceText: cstring, disambiguation: cstring): struct_miqt_string {.importc: "QAccessibleActionInterface_tr2".}
proc fcQAccessibleActionInterface_tr3(sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QAccessibleActionInterface_tr3".}
proc fcQAccessibleActionInterface_trUtf82(sourceText: cstring, disambiguation: cstring): struct_miqt_string {.importc: "QAccessibleActionInterface_trUtf82".}
proc fcQAccessibleActionInterface_trUtf83(sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QAccessibleActionInterface_trUtf83".}
proc fcQAccessibleActionInterface_delete(self: pointer) {.importc: "QAccessibleActionInterface_delete".}
proc fcQAccessibleImageInterface_imageDescription(self: pointer, ): struct_miqt_string {.importc: "QAccessibleImageInterface_imageDescription".}
proc fcQAccessibleImageInterface_imageSize(self: pointer, ): pointer {.importc: "QAccessibleImageInterface_imageSize".}
proc fcQAccessibleImageInterface_imagePosition(self: pointer, ): pointer {.importc: "QAccessibleImageInterface_imagePosition".}
proc fcQAccessibleImageInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessibleImageInterface_operatorAssign".}
proc fcQAccessibleImageInterface_delete(self: pointer) {.importc: "QAccessibleImageInterface_delete".}
proc fcQAccessibleEvent_typeX(self: pointer, ): cint {.importc: "QAccessibleEvent_type".}
proc fcQAccessibleEvent_objectX(self: pointer, ): pointer {.importc: "QAccessibleEvent_object".}
proc fcQAccessibleEvent_uniqueId(self: pointer, ): cuint {.importc: "QAccessibleEvent_uniqueId".}
proc fcQAccessibleEvent_setChild(self: pointer, chld: cint): void {.importc: "QAccessibleEvent_setChild".}
proc fcQAccessibleEvent_child(self: pointer, ): cint {.importc: "QAccessibleEvent_child".}
proc fcQAccessibleEvent_accessibleInterface(self: pointer, ): pointer {.importc: "QAccessibleEvent_accessibleInterface".}
type cQAccessibleEventVTable = object
  destructor*: proc(vtbl: ptr cQAccessibleEventVTable, self: ptr cQAccessibleEvent) {.cdecl, raises:[], gcsafe.}
  accessibleInterface*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQAccessibleEvent_virtualbase_accessibleInterface(self: pointer, ): pointer {.importc: "QAccessibleEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleEvent_new(vtbl: pointer, obj: pointer, typ: cint): ptr cQAccessibleEvent {.importc: "QAccessibleEvent_new".}
proc fcQAccessibleEvent_new2(vtbl: pointer, iface: pointer, typ: cint): ptr cQAccessibleEvent {.importc: "QAccessibleEvent_new2".}
proc fcQAccessibleEvent_delete(self: pointer) {.importc: "QAccessibleEvent_delete".}
proc fcQAccessibleStateChangeEvent_changedStates(self: pointer, ): pointer {.importc: "QAccessibleStateChangeEvent_changedStates".}
type cQAccessibleStateChangeEventVTable = object
  destructor*: proc(vtbl: ptr cQAccessibleStateChangeEventVTable, self: ptr cQAccessibleStateChangeEvent) {.cdecl, raises:[], gcsafe.}
  accessibleInterface*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQAccessibleStateChangeEvent_virtualbase_accessibleInterface(self: pointer, ): pointer {.importc: "QAccessibleStateChangeEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleStateChangeEvent_new(vtbl: pointer, obj: pointer, state: pointer): ptr cQAccessibleStateChangeEvent {.importc: "QAccessibleStateChangeEvent_new".}
proc fcQAccessibleStateChangeEvent_new2(vtbl: pointer, iface: pointer, state: pointer): ptr cQAccessibleStateChangeEvent {.importc: "QAccessibleStateChangeEvent_new2".}
proc fcQAccessibleStateChangeEvent_delete(self: pointer) {.importc: "QAccessibleStateChangeEvent_delete".}
proc fcQAccessibleTextCursorEvent_setCursorPosition(self: pointer, position: cint): void {.importc: "QAccessibleTextCursorEvent_setCursorPosition".}
proc fcQAccessibleTextCursorEvent_cursorPosition(self: pointer, ): cint {.importc: "QAccessibleTextCursorEvent_cursorPosition".}
type cQAccessibleTextCursorEventVTable = object
  destructor*: proc(vtbl: ptr cQAccessibleTextCursorEventVTable, self: ptr cQAccessibleTextCursorEvent) {.cdecl, raises:[], gcsafe.}
  accessibleInterface*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQAccessibleTextCursorEvent_virtualbase_accessibleInterface(self: pointer, ): pointer {.importc: "QAccessibleTextCursorEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleTextCursorEvent_new(vtbl: pointer, obj: pointer, cursorPos: cint): ptr cQAccessibleTextCursorEvent {.importc: "QAccessibleTextCursorEvent_new".}
proc fcQAccessibleTextCursorEvent_new2(vtbl: pointer, iface: pointer, cursorPos: cint): ptr cQAccessibleTextCursorEvent {.importc: "QAccessibleTextCursorEvent_new2".}
proc fcQAccessibleTextCursorEvent_delete(self: pointer) {.importc: "QAccessibleTextCursorEvent_delete".}
proc fcQAccessibleTextSelectionEvent_setSelection(self: pointer, start: cint, endVal: cint): void {.importc: "QAccessibleTextSelectionEvent_setSelection".}
proc fcQAccessibleTextSelectionEvent_selectionStart(self: pointer, ): cint {.importc: "QAccessibleTextSelectionEvent_selectionStart".}
proc fcQAccessibleTextSelectionEvent_selectionEnd(self: pointer, ): cint {.importc: "QAccessibleTextSelectionEvent_selectionEnd".}
type cQAccessibleTextSelectionEventVTable = object
  destructor*: proc(vtbl: ptr cQAccessibleTextSelectionEventVTable, self: ptr cQAccessibleTextSelectionEvent) {.cdecl, raises:[], gcsafe.}
  accessibleInterface*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQAccessibleTextSelectionEvent_virtualbase_accessibleInterface(self: pointer, ): pointer {.importc: "QAccessibleTextSelectionEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleTextSelectionEvent_new(vtbl: pointer, obj: pointer, start: cint, endVal: cint): ptr cQAccessibleTextSelectionEvent {.importc: "QAccessibleTextSelectionEvent_new".}
proc fcQAccessibleTextSelectionEvent_new2(vtbl: pointer, iface: pointer, start: cint, endVal: cint): ptr cQAccessibleTextSelectionEvent {.importc: "QAccessibleTextSelectionEvent_new2".}
proc fcQAccessibleTextSelectionEvent_delete(self: pointer) {.importc: "QAccessibleTextSelectionEvent_delete".}
proc fcQAccessibleTextInsertEvent_textInserted(self: pointer, ): struct_miqt_string {.importc: "QAccessibleTextInsertEvent_textInserted".}
proc fcQAccessibleTextInsertEvent_changePosition(self: pointer, ): cint {.importc: "QAccessibleTextInsertEvent_changePosition".}
type cQAccessibleTextInsertEventVTable = object
  destructor*: proc(vtbl: ptr cQAccessibleTextInsertEventVTable, self: ptr cQAccessibleTextInsertEvent) {.cdecl, raises:[], gcsafe.}
  accessibleInterface*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQAccessibleTextInsertEvent_virtualbase_accessibleInterface(self: pointer, ): pointer {.importc: "QAccessibleTextInsertEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleTextInsertEvent_new(vtbl: pointer, obj: pointer, position: cint, text: struct_miqt_string): ptr cQAccessibleTextInsertEvent {.importc: "QAccessibleTextInsertEvent_new".}
proc fcQAccessibleTextInsertEvent_new2(vtbl: pointer, iface: pointer, position: cint, text: struct_miqt_string): ptr cQAccessibleTextInsertEvent {.importc: "QAccessibleTextInsertEvent_new2".}
proc fcQAccessibleTextInsertEvent_delete(self: pointer) {.importc: "QAccessibleTextInsertEvent_delete".}
proc fcQAccessibleTextRemoveEvent_textRemoved(self: pointer, ): struct_miqt_string {.importc: "QAccessibleTextRemoveEvent_textRemoved".}
proc fcQAccessibleTextRemoveEvent_changePosition(self: pointer, ): cint {.importc: "QAccessibleTextRemoveEvent_changePosition".}
type cQAccessibleTextRemoveEventVTable = object
  destructor*: proc(vtbl: ptr cQAccessibleTextRemoveEventVTable, self: ptr cQAccessibleTextRemoveEvent) {.cdecl, raises:[], gcsafe.}
  accessibleInterface*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQAccessibleTextRemoveEvent_virtualbase_accessibleInterface(self: pointer, ): pointer {.importc: "QAccessibleTextRemoveEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleTextRemoveEvent_new(vtbl: pointer, obj: pointer, position: cint, text: struct_miqt_string): ptr cQAccessibleTextRemoveEvent {.importc: "QAccessibleTextRemoveEvent_new".}
proc fcQAccessibleTextRemoveEvent_new2(vtbl: pointer, iface: pointer, position: cint, text: struct_miqt_string): ptr cQAccessibleTextRemoveEvent {.importc: "QAccessibleTextRemoveEvent_new2".}
proc fcQAccessibleTextRemoveEvent_delete(self: pointer) {.importc: "QAccessibleTextRemoveEvent_delete".}
proc fcQAccessibleTextUpdateEvent_textRemoved(self: pointer, ): struct_miqt_string {.importc: "QAccessibleTextUpdateEvent_textRemoved".}
proc fcQAccessibleTextUpdateEvent_textInserted(self: pointer, ): struct_miqt_string {.importc: "QAccessibleTextUpdateEvent_textInserted".}
proc fcQAccessibleTextUpdateEvent_changePosition(self: pointer, ): cint {.importc: "QAccessibleTextUpdateEvent_changePosition".}
type cQAccessibleTextUpdateEventVTable = object
  destructor*: proc(vtbl: ptr cQAccessibleTextUpdateEventVTable, self: ptr cQAccessibleTextUpdateEvent) {.cdecl, raises:[], gcsafe.}
  accessibleInterface*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQAccessibleTextUpdateEvent_virtualbase_accessibleInterface(self: pointer, ): pointer {.importc: "QAccessibleTextUpdateEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleTextUpdateEvent_new(vtbl: pointer, obj: pointer, position: cint, oldText: struct_miqt_string, text: struct_miqt_string): ptr cQAccessibleTextUpdateEvent {.importc: "QAccessibleTextUpdateEvent_new".}
proc fcQAccessibleTextUpdateEvent_new2(vtbl: pointer, iface: pointer, position: cint, oldText: struct_miqt_string, text: struct_miqt_string): ptr cQAccessibleTextUpdateEvent {.importc: "QAccessibleTextUpdateEvent_new2".}
proc fcQAccessibleTextUpdateEvent_delete(self: pointer) {.importc: "QAccessibleTextUpdateEvent_delete".}
proc fcQAccessibleValueChangeEvent_setValue(self: pointer, val: pointer): void {.importc: "QAccessibleValueChangeEvent_setValue".}
proc fcQAccessibleValueChangeEvent_value(self: pointer, ): pointer {.importc: "QAccessibleValueChangeEvent_value".}
type cQAccessibleValueChangeEventVTable = object
  destructor*: proc(vtbl: ptr cQAccessibleValueChangeEventVTable, self: ptr cQAccessibleValueChangeEvent) {.cdecl, raises:[], gcsafe.}
  accessibleInterface*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQAccessibleValueChangeEvent_virtualbase_accessibleInterface(self: pointer, ): pointer {.importc: "QAccessibleValueChangeEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleValueChangeEvent_new(vtbl: pointer, obj: pointer, val: pointer): ptr cQAccessibleValueChangeEvent {.importc: "QAccessibleValueChangeEvent_new".}
proc fcQAccessibleValueChangeEvent_new2(vtbl: pointer, iface: pointer, val: pointer): ptr cQAccessibleValueChangeEvent {.importc: "QAccessibleValueChangeEvent_new2".}
proc fcQAccessibleValueChangeEvent_delete(self: pointer) {.importc: "QAccessibleValueChangeEvent_delete".}
proc fcQAccessibleTableModelChangeEvent_setModelChangeType(self: pointer, changeType: cint): void {.importc: "QAccessibleTableModelChangeEvent_setModelChangeType".}
proc fcQAccessibleTableModelChangeEvent_modelChangeType(self: pointer, ): cint {.importc: "QAccessibleTableModelChangeEvent_modelChangeType".}
proc fcQAccessibleTableModelChangeEvent_setFirstRow(self: pointer, row: cint): void {.importc: "QAccessibleTableModelChangeEvent_setFirstRow".}
proc fcQAccessibleTableModelChangeEvent_setFirstColumn(self: pointer, col: cint): void {.importc: "QAccessibleTableModelChangeEvent_setFirstColumn".}
proc fcQAccessibleTableModelChangeEvent_setLastRow(self: pointer, row: cint): void {.importc: "QAccessibleTableModelChangeEvent_setLastRow".}
proc fcQAccessibleTableModelChangeEvent_setLastColumn(self: pointer, col: cint): void {.importc: "QAccessibleTableModelChangeEvent_setLastColumn".}
proc fcQAccessibleTableModelChangeEvent_firstRow(self: pointer, ): cint {.importc: "QAccessibleTableModelChangeEvent_firstRow".}
proc fcQAccessibleTableModelChangeEvent_firstColumn(self: pointer, ): cint {.importc: "QAccessibleTableModelChangeEvent_firstColumn".}
proc fcQAccessibleTableModelChangeEvent_lastRow(self: pointer, ): cint {.importc: "QAccessibleTableModelChangeEvent_lastRow".}
proc fcQAccessibleTableModelChangeEvent_lastColumn(self: pointer, ): cint {.importc: "QAccessibleTableModelChangeEvent_lastColumn".}
type cQAccessibleTableModelChangeEventVTable = object
  destructor*: proc(vtbl: ptr cQAccessibleTableModelChangeEventVTable, self: ptr cQAccessibleTableModelChangeEvent) {.cdecl, raises:[], gcsafe.}
  accessibleInterface*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQAccessibleTableModelChangeEvent_virtualbase_accessibleInterface(self: pointer, ): pointer {.importc: "QAccessibleTableModelChangeEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleTableModelChangeEvent_new(vtbl: pointer, obj: pointer, changeType: cint): ptr cQAccessibleTableModelChangeEvent {.importc: "QAccessibleTableModelChangeEvent_new".}
proc fcQAccessibleTableModelChangeEvent_new2(vtbl: pointer, iface: pointer, changeType: cint): ptr cQAccessibleTableModelChangeEvent {.importc: "QAccessibleTableModelChangeEvent_new2".}
proc fcQAccessibleTableModelChangeEvent_delete(self: pointer) {.importc: "QAccessibleTableModelChangeEvent_delete".}
proc fcQAccessibleState_new(): ptr cQAccessibleState {.importc: "QAccessible__State_new".}
proc fcQAccessibleState_new2(param1: pointer): ptr cQAccessibleState {.importc: "QAccessible__State_new2".}
proc fcQAccessibleState_delete(self: pointer) {.importc: "QAccessible__State_delete".}
proc fcQAccessibleActivationObserver_accessibilityActiveChanged(self: pointer, active: bool): void {.importc: "QAccessible__ActivationObserver_accessibilityActiveChanged".}
proc fcQAccessibleActivationObserver_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessible__ActivationObserver_operatorAssign".}
proc fcQAccessibleActivationObserver_delete(self: pointer) {.importc: "QAccessible__ActivationObserver_delete".}

proc installActivationObserver*(_: type gen_qaccessible_types.QAccessible, param1: gen_qaccessible_types.QAccessibleActivationObserver): void =
  fcQAccessible_installActivationObserver(param1.h)

proc removeActivationObserver*(_: type gen_qaccessible_types.QAccessible, param1: gen_qaccessible_types.QAccessibleActivationObserver): void =
  fcQAccessible_removeActivationObserver(param1.h)

proc queryAccessibleInterface*(_: type gen_qaccessible_types.QAccessible, param1: gen_qobject_types.QObject): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessible_queryAccessibleInterface(param1.h))

proc uniqueId*(_: type gen_qaccessible_types.QAccessible, iface: gen_qaccessible_types.QAccessibleInterface): cuint =
  fcQAccessible_uniqueId(iface.h)

proc accessibleInterface*(_: type gen_qaccessible_types.QAccessible, uniqueId: cuint): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessible_accessibleInterface(uniqueId))

proc registerAccessibleInterface*(_: type gen_qaccessible_types.QAccessible, iface: gen_qaccessible_types.QAccessibleInterface): cuint =
  fcQAccessible_registerAccessibleInterface(iface.h)

proc deleteAccessibleInterface*(_: type gen_qaccessible_types.QAccessible, uniqueId: cuint): void =
  fcQAccessible_deleteAccessibleInterface(uniqueId)

proc updateAccessibility*(_: type gen_qaccessible_types.QAccessible, event: gen_qaccessible_types.QAccessibleEvent): void =
  fcQAccessible_updateAccessibility(event.h)

proc isActive*(_: type gen_qaccessible_types.QAccessible, ): bool =
  fcQAccessible_isActive()

proc setActive*(_: type gen_qaccessible_types.QAccessible, active: bool): void =
  fcQAccessible_setActive(active)

proc setRootObject*(_: type gen_qaccessible_types.QAccessible, objectVal: gen_qobject_types.QObject): void =
  fcQAccessible_setRootObject(objectVal.h)

proc cleanup*(_: type gen_qaccessible_types.QAccessible, ): void =
  fcQAccessible_cleanup()

proc qAccessibleTextBoundaryHelper*(_: type gen_qaccessible_types.QAccessible, cursor: gen_qtextcursor_types.QTextCursor, boundaryType: cint): tuple[first: cint, second: cint] =
  var v_mm = fcQAccessible_qAccessibleTextBoundaryHelper(cursor.h, cint(boundaryType))
  var v_First_CArray = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = v_First_CArray[0]

  var v_entry_Second = v_Second_CArray[0]

  c_free(v_mm.keys)
  c_free(v_mm.values)
  (first: v_entry_First , second: v_entry_Second )

proc staticMetaObject*(_: type gen_qaccessible_types.QAccessible): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessible_staticMetaObject())
proc delete*(self: gen_qaccessible_types.QAccessible) =
  fcQAccessible_delete(self.h)
proc isValid*(self: gen_qaccessible_types.QAccessibleInterface, ): bool =
  fcQAccessibleInterface_isValid(self.h)

proc objectX*(self: gen_qaccessible_types.QAccessibleInterface, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAccessibleInterface_objectX(self.h))

proc window*(self: gen_qaccessible_types.QAccessibleInterface, ): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQAccessibleInterface_window(self.h))

proc relations*(self: gen_qaccessible_types.QAccessibleInterface, match: cint): seq[tuple[first: gen_qaccessible_types.QAccessibleInterface, second: cint]] =
  var v_ma = fcQAccessibleInterface_relations(self.h, cint(match))
  var vx_ret = newSeq[tuple[first: gen_qaccessible_types.QAccessibleInterface, second: cint]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_vv_mm = v_outCast[i]
    var vx_vv_First_CArray = cast[ptr UncheckedArray[pointer]](vx_vv_mm.keys)
    var vx_vv_Second_CArray = cast[ptr UncheckedArray[cint]](vx_vv_mm.values)
    var vx_vv_entry_First = gen_qaccessible_types.QAccessibleInterface(h: vx_vv_First_CArray[0])

    var vx_vv_entry_Second = cint(vx_vv_Second_CArray[0])

    c_free(vx_vv_mm.keys)
    c_free(vx_vv_mm.values)
    vx_ret[i] = (first: vx_vv_entry_First , second: vx_vv_entry_Second )
  c_free(v_ma.data)
  vx_ret

proc focusChild*(self: gen_qaccessible_types.QAccessibleInterface, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleInterface_focusChild(self.h))

proc childAt*(self: gen_qaccessible_types.QAccessibleInterface, x: cint, y: cint): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleInterface_childAt(self.h, x, y))

proc parent*(self: gen_qaccessible_types.QAccessibleInterface, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleInterface_parent(self.h))

proc child*(self: gen_qaccessible_types.QAccessibleInterface, index: cint): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleInterface_child(self.h, index))

proc childCount*(self: gen_qaccessible_types.QAccessibleInterface, ): cint =
  fcQAccessibleInterface_childCount(self.h)

proc indexOfChild*(self: gen_qaccessible_types.QAccessibleInterface, param1: gen_qaccessible_types.QAccessibleInterface): cint =
  fcQAccessibleInterface_indexOfChild(self.h, param1.h)

proc text*(self: gen_qaccessible_types.QAccessibleInterface, t: cint): string =
  let v_ms = fcQAccessibleInterface_text(self.h, cint(t))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qaccessible_types.QAccessibleInterface, t: cint, text: string): void =
  fcQAccessibleInterface_setText(self.h, cint(t), struct_miqt_string(data: text, len: csize_t(len(text))))

proc rect*(self: gen_qaccessible_types.QAccessibleInterface, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQAccessibleInterface_rect(self.h))

proc role*(self: gen_qaccessible_types.QAccessibleInterface, ): cint =
  cint(fcQAccessibleInterface_role(self.h))

proc state*(self: gen_qaccessible_types.QAccessibleInterface, ): gen_qaccessible_types.QAccessibleState =
  gen_qaccessible_types.QAccessibleState(h: fcQAccessibleInterface_state(self.h))

proc foregroundColor*(self: gen_qaccessible_types.QAccessibleInterface, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQAccessibleInterface_foregroundColor(self.h))

proc backgroundColor*(self: gen_qaccessible_types.QAccessibleInterface, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQAccessibleInterface_backgroundColor(self.h))

proc textInterface*(self: gen_qaccessible_types.QAccessibleInterface, ): gen_qaccessible_types.QAccessibleTextInterface =
  gen_qaccessible_types.QAccessibleTextInterface(h: fcQAccessibleInterface_textInterface(self.h))

proc editableTextInterface*(self: gen_qaccessible_types.QAccessibleInterface, ): gen_qaccessible_types.QAccessibleEditableTextInterface =
  gen_qaccessible_types.QAccessibleEditableTextInterface(h: fcQAccessibleInterface_editableTextInterface(self.h))

proc valueInterface*(self: gen_qaccessible_types.QAccessibleInterface, ): gen_qaccessible_types.QAccessibleValueInterface =
  gen_qaccessible_types.QAccessibleValueInterface(h: fcQAccessibleInterface_valueInterface(self.h))

proc actionInterface*(self: gen_qaccessible_types.QAccessibleInterface, ): gen_qaccessible_types.QAccessibleActionInterface =
  gen_qaccessible_types.QAccessibleActionInterface(h: fcQAccessibleInterface_actionInterface(self.h))

proc imageInterface*(self: gen_qaccessible_types.QAccessibleInterface, ): gen_qaccessible_types.QAccessibleImageInterface =
  gen_qaccessible_types.QAccessibleImageInterface(h: fcQAccessibleInterface_imageInterface(self.h))

proc tableInterface*(self: gen_qaccessible_types.QAccessibleInterface, ): gen_qaccessible_types.QAccessibleTableInterface =
  gen_qaccessible_types.QAccessibleTableInterface(h: fcQAccessibleInterface_tableInterface(self.h))

proc tableCellInterface*(self: gen_qaccessible_types.QAccessibleInterface, ): gen_qaccessible_types.QAccessibleTableCellInterface =
  gen_qaccessible_types.QAccessibleTableCellInterface(h: fcQAccessibleInterface_tableCellInterface(self.h))

proc virtualHook*(self: gen_qaccessible_types.QAccessibleInterface, id: cint, data: pointer): void =
  fcQAccessibleInterface_virtualHook(self.h, id, data)

proc interfaceCast*(self: gen_qaccessible_types.QAccessibleInterface, param1: cint): pointer =
  fcQAccessibleInterface_interfaceCast(self.h, cint(param1))

proc selection*(self: gen_qaccessible_types.QAccessibleTextInterface, selectionIndex: cint, startOffset: ptr cint, endOffset: ptr cint): void =
  fcQAccessibleTextInterface_selection(self.h, selectionIndex, startOffset, endOffset)

proc selectionCount*(self: gen_qaccessible_types.QAccessibleTextInterface, ): cint =
  fcQAccessibleTextInterface_selectionCount(self.h)

proc addSelection*(self: gen_qaccessible_types.QAccessibleTextInterface, startOffset: cint, endOffset: cint): void =
  fcQAccessibleTextInterface_addSelection(self.h, startOffset, endOffset)

proc removeSelection*(self: gen_qaccessible_types.QAccessibleTextInterface, selectionIndex: cint): void =
  fcQAccessibleTextInterface_removeSelection(self.h, selectionIndex)

proc setSelection*(self: gen_qaccessible_types.QAccessibleTextInterface, selectionIndex: cint, startOffset: cint, endOffset: cint): void =
  fcQAccessibleTextInterface_setSelection(self.h, selectionIndex, startOffset, endOffset)

proc cursorPosition*(self: gen_qaccessible_types.QAccessibleTextInterface, ): cint =
  fcQAccessibleTextInterface_cursorPosition(self.h)

proc setCursorPosition*(self: gen_qaccessible_types.QAccessibleTextInterface, position: cint): void =
  fcQAccessibleTextInterface_setCursorPosition(self.h, position)

proc text*(self: gen_qaccessible_types.QAccessibleTextInterface, startOffset: cint, endOffset: cint): string =
  let v_ms = fcQAccessibleTextInterface_text(self.h, startOffset, endOffset)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textBeforeOffset*(self: gen_qaccessible_types.QAccessibleTextInterface, offset: cint, boundaryType: cint, startOffset: ptr cint, endOffset: ptr cint): string =
  let v_ms = fcQAccessibleTextInterface_textBeforeOffset(self.h, offset, cint(boundaryType), startOffset, endOffset)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textAfterOffset*(self: gen_qaccessible_types.QAccessibleTextInterface, offset: cint, boundaryType: cint, startOffset: ptr cint, endOffset: ptr cint): string =
  let v_ms = fcQAccessibleTextInterface_textAfterOffset(self.h, offset, cint(boundaryType), startOffset, endOffset)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textAtOffset*(self: gen_qaccessible_types.QAccessibleTextInterface, offset: cint, boundaryType: cint, startOffset: ptr cint, endOffset: ptr cint): string =
  let v_ms = fcQAccessibleTextInterface_textAtOffset(self.h, offset, cint(boundaryType), startOffset, endOffset)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc characterCount*(self: gen_qaccessible_types.QAccessibleTextInterface, ): cint =
  fcQAccessibleTextInterface_characterCount(self.h)

proc characterRect*(self: gen_qaccessible_types.QAccessibleTextInterface, offset: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQAccessibleTextInterface_characterRect(self.h, offset))

proc offsetAtPoint*(self: gen_qaccessible_types.QAccessibleTextInterface, point: gen_qpoint_types.QPoint): cint =
  fcQAccessibleTextInterface_offsetAtPoint(self.h, point.h)

proc scrollToSubstring*(self: gen_qaccessible_types.QAccessibleTextInterface, startIndex: cint, endIndex: cint): void =
  fcQAccessibleTextInterface_scrollToSubstring(self.h, startIndex, endIndex)

proc attributes*(self: gen_qaccessible_types.QAccessibleTextInterface, offset: cint, startOffset: ptr cint, endOffset: ptr cint): string =
  let v_ms = fcQAccessibleTextInterface_attributes(self.h, offset, startOffset, endOffset)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc operatorAssign*(self: gen_qaccessible_types.QAccessibleTextInterface, param1: gen_qaccessible_types.QAccessibleTextInterface): void =
  fcQAccessibleTextInterface_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qaccessible_types.QAccessibleTextInterface) =
  fcQAccessibleTextInterface_delete(self.h)
proc deleteText*(self: gen_qaccessible_types.QAccessibleEditableTextInterface, startOffset: cint, endOffset: cint): void =
  fcQAccessibleEditableTextInterface_deleteText(self.h, startOffset, endOffset)

proc insertText*(self: gen_qaccessible_types.QAccessibleEditableTextInterface, offset: cint, text: string): void =
  fcQAccessibleEditableTextInterface_insertText(self.h, offset, struct_miqt_string(data: text, len: csize_t(len(text))))

proc replaceText*(self: gen_qaccessible_types.QAccessibleEditableTextInterface, startOffset: cint, endOffset: cint, text: string): void =
  fcQAccessibleEditableTextInterface_replaceText(self.h, startOffset, endOffset, struct_miqt_string(data: text, len: csize_t(len(text))))

proc operatorAssign*(self: gen_qaccessible_types.QAccessibleEditableTextInterface, param1: gen_qaccessible_types.QAccessibleEditableTextInterface): void =
  fcQAccessibleEditableTextInterface_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qaccessible_types.QAccessibleEditableTextInterface) =
  fcQAccessibleEditableTextInterface_delete(self.h)
proc currentValue*(self: gen_qaccessible_types.QAccessibleValueInterface, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAccessibleValueInterface_currentValue(self.h))

proc setCurrentValue*(self: gen_qaccessible_types.QAccessibleValueInterface, value: gen_qvariant_types.QVariant): void =
  fcQAccessibleValueInterface_setCurrentValue(self.h, value.h)

proc maximumValue*(self: gen_qaccessible_types.QAccessibleValueInterface, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAccessibleValueInterface_maximumValue(self.h))

proc minimumValue*(self: gen_qaccessible_types.QAccessibleValueInterface, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAccessibleValueInterface_minimumValue(self.h))

proc minimumStepSize*(self: gen_qaccessible_types.QAccessibleValueInterface, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAccessibleValueInterface_minimumStepSize(self.h))

proc operatorAssign*(self: gen_qaccessible_types.QAccessibleValueInterface, param1: gen_qaccessible_types.QAccessibleValueInterface): void =
  fcQAccessibleValueInterface_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qaccessible_types.QAccessibleValueInterface) =
  fcQAccessibleValueInterface_delete(self.h)
proc isSelected*(self: gen_qaccessible_types.QAccessibleTableCellInterface, ): bool =
  fcQAccessibleTableCellInterface_isSelected(self.h)

proc columnHeaderCells*(self: gen_qaccessible_types.QAccessibleTableCellInterface, ): seq[gen_qaccessible_types.QAccessibleInterface] =
  var v_ma = fcQAccessibleTableCellInterface_columnHeaderCells(self.h)
  var vx_ret = newSeq[gen_qaccessible_types.QAccessibleInterface](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaccessible_types.QAccessibleInterface(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc rowHeaderCells*(self: gen_qaccessible_types.QAccessibleTableCellInterface, ): seq[gen_qaccessible_types.QAccessibleInterface] =
  var v_ma = fcQAccessibleTableCellInterface_rowHeaderCells(self.h)
  var vx_ret = newSeq[gen_qaccessible_types.QAccessibleInterface](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaccessible_types.QAccessibleInterface(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc columnIndex*(self: gen_qaccessible_types.QAccessibleTableCellInterface, ): cint =
  fcQAccessibleTableCellInterface_columnIndex(self.h)

proc rowIndex*(self: gen_qaccessible_types.QAccessibleTableCellInterface, ): cint =
  fcQAccessibleTableCellInterface_rowIndex(self.h)

proc columnExtent*(self: gen_qaccessible_types.QAccessibleTableCellInterface, ): cint =
  fcQAccessibleTableCellInterface_columnExtent(self.h)

proc rowExtent*(self: gen_qaccessible_types.QAccessibleTableCellInterface, ): cint =
  fcQAccessibleTableCellInterface_rowExtent(self.h)

proc table*(self: gen_qaccessible_types.QAccessibleTableCellInterface, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleTableCellInterface_table(self.h))

proc operatorAssign*(self: gen_qaccessible_types.QAccessibleTableCellInterface, param1: gen_qaccessible_types.QAccessibleTableCellInterface): void =
  fcQAccessibleTableCellInterface_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qaccessible_types.QAccessibleTableCellInterface) =
  fcQAccessibleTableCellInterface_delete(self.h)
proc caption*(self: gen_qaccessible_types.QAccessibleTableInterface, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleTableInterface_caption(self.h))

proc summary*(self: gen_qaccessible_types.QAccessibleTableInterface, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleTableInterface_summary(self.h))

proc cellAt*(self: gen_qaccessible_types.QAccessibleTableInterface, row: cint, column: cint): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleTableInterface_cellAt(self.h, row, column))

proc selectedCellCount*(self: gen_qaccessible_types.QAccessibleTableInterface, ): cint =
  fcQAccessibleTableInterface_selectedCellCount(self.h)

proc selectedCells*(self: gen_qaccessible_types.QAccessibleTableInterface, ): seq[gen_qaccessible_types.QAccessibleInterface] =
  var v_ma = fcQAccessibleTableInterface_selectedCells(self.h)
  var vx_ret = newSeq[gen_qaccessible_types.QAccessibleInterface](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaccessible_types.QAccessibleInterface(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc columnDescription*(self: gen_qaccessible_types.QAccessibleTableInterface, column: cint): string =
  let v_ms = fcQAccessibleTableInterface_columnDescription(self.h, column)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc rowDescription*(self: gen_qaccessible_types.QAccessibleTableInterface, row: cint): string =
  let v_ms = fcQAccessibleTableInterface_rowDescription(self.h, row)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selectedColumnCount*(self: gen_qaccessible_types.QAccessibleTableInterface, ): cint =
  fcQAccessibleTableInterface_selectedColumnCount(self.h)

proc selectedRowCount*(self: gen_qaccessible_types.QAccessibleTableInterface, ): cint =
  fcQAccessibleTableInterface_selectedRowCount(self.h)

proc columnCount*(self: gen_qaccessible_types.QAccessibleTableInterface, ): cint =
  fcQAccessibleTableInterface_columnCount(self.h)

proc rowCount*(self: gen_qaccessible_types.QAccessibleTableInterface, ): cint =
  fcQAccessibleTableInterface_rowCount(self.h)

proc selectedColumns*(self: gen_qaccessible_types.QAccessibleTableInterface, ): seq[cint] =
  var v_ma = fcQAccessibleTableInterface_selectedColumns(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc selectedRows*(self: gen_qaccessible_types.QAccessibleTableInterface, ): seq[cint] =
  var v_ma = fcQAccessibleTableInterface_selectedRows(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc isColumnSelected*(self: gen_qaccessible_types.QAccessibleTableInterface, column: cint): bool =
  fcQAccessibleTableInterface_isColumnSelected(self.h, column)

proc isRowSelected*(self: gen_qaccessible_types.QAccessibleTableInterface, row: cint): bool =
  fcQAccessibleTableInterface_isRowSelected(self.h, row)

proc selectRow*(self: gen_qaccessible_types.QAccessibleTableInterface, row: cint): bool =
  fcQAccessibleTableInterface_selectRow(self.h, row)

proc selectColumn*(self: gen_qaccessible_types.QAccessibleTableInterface, column: cint): bool =
  fcQAccessibleTableInterface_selectColumn(self.h, column)

proc unselectRow*(self: gen_qaccessible_types.QAccessibleTableInterface, row: cint): bool =
  fcQAccessibleTableInterface_unselectRow(self.h, row)

proc unselectColumn*(self: gen_qaccessible_types.QAccessibleTableInterface, column: cint): bool =
  fcQAccessibleTableInterface_unselectColumn(self.h, column)

proc modelChange*(self: gen_qaccessible_types.QAccessibleTableInterface, event: gen_qaccessible_types.QAccessibleTableModelChangeEvent): void =
  fcQAccessibleTableInterface_modelChange(self.h, event.h)

proc delete*(self: gen_qaccessible_types.QAccessibleTableInterface) =
  fcQAccessibleTableInterface_delete(self.h)
proc tr*(_: type gen_qaccessible_types.QAccessibleActionInterface, sourceText: cstring): string =
  let v_ms = fcQAccessibleActionInterface_tr(sourceText)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaccessible_types.QAccessibleActionInterface, sourceText: cstring): string =
  let v_ms = fcQAccessibleActionInterface_trUtf8(sourceText)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc actionNames*(self: gen_qaccessible_types.QAccessibleActionInterface, ): seq[string] =
  var v_ma = fcQAccessibleActionInterface_actionNames(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc localizedActionName*(self: gen_qaccessible_types.QAccessibleActionInterface, name: string): string =
  let v_ms = fcQAccessibleActionInterface_localizedActionName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc localizedActionDescription*(self: gen_qaccessible_types.QAccessibleActionInterface, name: string): string =
  let v_ms = fcQAccessibleActionInterface_localizedActionDescription(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc doAction*(self: gen_qaccessible_types.QAccessibleActionInterface, actionName: string): void =
  fcQAccessibleActionInterface_doAction(self.h, struct_miqt_string(data: actionName, len: csize_t(len(actionName))))

proc keyBindingsForAction*(self: gen_qaccessible_types.QAccessibleActionInterface, actionName: string): seq[string] =
  var v_ma = fcQAccessibleActionInterface_keyBindingsForAction(self.h, struct_miqt_string(data: actionName, len: csize_t(len(actionName))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc pressAction*(_: type gen_qaccessible_types.QAccessibleActionInterface, ): string =
  let v_ms = fcQAccessibleActionInterface_pressAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc increaseAction*(_: type gen_qaccessible_types.QAccessibleActionInterface, ): string =
  let v_ms = fcQAccessibleActionInterface_increaseAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc decreaseAction*(_: type gen_qaccessible_types.QAccessibleActionInterface, ): string =
  let v_ms = fcQAccessibleActionInterface_decreaseAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc showMenuAction*(_: type gen_qaccessible_types.QAccessibleActionInterface, ): string =
  let v_ms = fcQAccessibleActionInterface_showMenuAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFocusAction*(_: type gen_qaccessible_types.QAccessibleActionInterface, ): string =
  let v_ms = fcQAccessibleActionInterface_setFocusAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toggleAction*(_: type gen_qaccessible_types.QAccessibleActionInterface, ): string =
  let v_ms = fcQAccessibleActionInterface_toggleAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc scrollLeftAction*(_: type gen_qaccessible_types.QAccessibleActionInterface, ): string =
  let v_ms = fcQAccessibleActionInterface_scrollLeftAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc scrollRightAction*(_: type gen_qaccessible_types.QAccessibleActionInterface, ): string =
  let v_ms = fcQAccessibleActionInterface_scrollRightAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc scrollUpAction*(_: type gen_qaccessible_types.QAccessibleActionInterface, ): string =
  let v_ms = fcQAccessibleActionInterface_scrollUpAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc scrollDownAction*(_: type gen_qaccessible_types.QAccessibleActionInterface, ): string =
  let v_ms = fcQAccessibleActionInterface_scrollDownAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc nextPageAction*(_: type gen_qaccessible_types.QAccessibleActionInterface, ): string =
  let v_ms = fcQAccessibleActionInterface_nextPageAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc previousPageAction*(_: type gen_qaccessible_types.QAccessibleActionInterface, ): string =
  let v_ms = fcQAccessibleActionInterface_previousPageAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc operatorAssign*(self: gen_qaccessible_types.QAccessibleActionInterface, param1: gen_qaccessible_types.QAccessibleActionInterface): void =
  fcQAccessibleActionInterface_operatorAssign(self.h, param1.h)

proc tr*(_: type gen_qaccessible_types.QAccessibleActionInterface, sourceText: cstring, disambiguation: cstring): string =
  let v_ms = fcQAccessibleActionInterface_tr2(sourceText, disambiguation)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaccessible_types.QAccessibleActionInterface, sourceText: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQAccessibleActionInterface_tr3(sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaccessible_types.QAccessibleActionInterface, sourceText: cstring, disambiguation: cstring): string =
  let v_ms = fcQAccessibleActionInterface_trUtf82(sourceText, disambiguation)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaccessible_types.QAccessibleActionInterface, sourceText: cstring, disambiguation: cstring, n: cint): string =
  let v_ms = fcQAccessibleActionInterface_trUtf83(sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_qaccessible_types.QAccessibleActionInterface) =
  fcQAccessibleActionInterface_delete(self.h)
proc imageDescription*(self: gen_qaccessible_types.QAccessibleImageInterface, ): string =
  let v_ms = fcQAccessibleImageInterface_imageDescription(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc imageSize*(self: gen_qaccessible_types.QAccessibleImageInterface, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAccessibleImageInterface_imageSize(self.h))

proc imagePosition*(self: gen_qaccessible_types.QAccessibleImageInterface, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQAccessibleImageInterface_imagePosition(self.h))

proc operatorAssign*(self: gen_qaccessible_types.QAccessibleImageInterface, param1: gen_qaccessible_types.QAccessibleImageInterface): void =
  fcQAccessibleImageInterface_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qaccessible_types.QAccessibleImageInterface) =
  fcQAccessibleImageInterface_delete(self.h)
proc typeX*(self: gen_qaccessible_types.QAccessibleEvent, ): cint =
  cint(fcQAccessibleEvent_typeX(self.h))

proc objectX*(self: gen_qaccessible_types.QAccessibleEvent, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAccessibleEvent_objectX(self.h))

proc uniqueId*(self: gen_qaccessible_types.QAccessibleEvent, ): cuint =
  fcQAccessibleEvent_uniqueId(self.h)

proc setChild*(self: gen_qaccessible_types.QAccessibleEvent, chld: cint): void =
  fcQAccessibleEvent_setChild(self.h, chld)

proc child*(self: gen_qaccessible_types.QAccessibleEvent, ): cint =
  fcQAccessibleEvent_child(self.h)

proc accessibleInterface*(self: gen_qaccessible_types.QAccessibleEvent, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleEvent_accessibleInterface(self.h))

type QAccessibleEventaccessibleInterfaceProc* = proc(self: QAccessibleEvent): gen_qaccessible_types.QAccessibleInterface {.raises: [], gcsafe.}
type QAccessibleEventVTable* = object
  vtbl: cQAccessibleEventVTable
  accessibleInterface*: QAccessibleEventaccessibleInterfaceProc
proc QAccessibleEventaccessibleInterface*(self: gen_qaccessible_types.QAccessibleEvent, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleEvent_virtualbase_accessibleInterface(self.h))

proc miqt_exec_callback_cQAccessibleEvent_accessibleInterface(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessibleEventVTable](vtbl)
  let self = QAccessibleEvent(h: self)
  var virtualReturn = vtbl[].accessibleInterface(self)
  virtualReturn.h

proc create*(T: type gen_qaccessible_types.QAccessibleEvent,
    obj: gen_qobject_types.QObject, typ: cint,
    vtbl: ref QAccessibleEventVTable = nil): gen_qaccessible_types.QAccessibleEvent =
  let vtbl = if vtbl == nil: new QAccessibleEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleEventVTable, _: ptr cQAccessibleEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleEvent(h: fcQAccessibleEvent_new(addr(vtbl[]), obj.h, cint(typ)))

proc create*(T: type gen_qaccessible_types.QAccessibleEvent,
    iface: gen_qaccessible_types.QAccessibleInterface, typ: cint,
    vtbl: ref QAccessibleEventVTable = nil): gen_qaccessible_types.QAccessibleEvent =
  let vtbl = if vtbl == nil: new QAccessibleEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleEventVTable, _: ptr cQAccessibleEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleEvent(h: fcQAccessibleEvent_new2(addr(vtbl[]), iface.h, cint(typ)))

proc delete*(self: gen_qaccessible_types.QAccessibleEvent) =
  fcQAccessibleEvent_delete(self.h)
proc changedStates*(self: gen_qaccessible_types.QAccessibleStateChangeEvent, ): gen_qaccessible_types.QAccessibleState =
  gen_qaccessible_types.QAccessibleState(h: fcQAccessibleStateChangeEvent_changedStates(self.h))

type QAccessibleStateChangeEventaccessibleInterfaceProc* = proc(self: QAccessibleStateChangeEvent): gen_qaccessible_types.QAccessibleInterface {.raises: [], gcsafe.}
type QAccessibleStateChangeEventVTable* = object
  vtbl: cQAccessibleStateChangeEventVTable
  accessibleInterface*: QAccessibleStateChangeEventaccessibleInterfaceProc
proc QAccessibleStateChangeEventaccessibleInterface*(self: gen_qaccessible_types.QAccessibleStateChangeEvent, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleStateChangeEvent_virtualbase_accessibleInterface(self.h))

proc miqt_exec_callback_cQAccessibleStateChangeEvent_accessibleInterface(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessibleStateChangeEventVTable](vtbl)
  let self = QAccessibleStateChangeEvent(h: self)
  var virtualReturn = vtbl[].accessibleInterface(self)
  virtualReturn.h

proc create*(T: type gen_qaccessible_types.QAccessibleStateChangeEvent,
    obj: gen_qobject_types.QObject, state: gen_qaccessible_types.QAccessibleState,
    vtbl: ref QAccessibleStateChangeEventVTable = nil): gen_qaccessible_types.QAccessibleStateChangeEvent =
  let vtbl = if vtbl == nil: new QAccessibleStateChangeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleStateChangeEventVTable, _: ptr cQAccessibleStateChangeEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleStateChangeEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleStateChangeEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleStateChangeEvent(h: fcQAccessibleStateChangeEvent_new(addr(vtbl[]), obj.h, state.h))

proc create*(T: type gen_qaccessible_types.QAccessibleStateChangeEvent,
    iface: gen_qaccessible_types.QAccessibleInterface, state: gen_qaccessible_types.QAccessibleState,
    vtbl: ref QAccessibleStateChangeEventVTable = nil): gen_qaccessible_types.QAccessibleStateChangeEvent =
  let vtbl = if vtbl == nil: new QAccessibleStateChangeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleStateChangeEventVTable, _: ptr cQAccessibleStateChangeEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleStateChangeEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleStateChangeEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleStateChangeEvent(h: fcQAccessibleStateChangeEvent_new2(addr(vtbl[]), iface.h, state.h))

proc delete*(self: gen_qaccessible_types.QAccessibleStateChangeEvent) =
  fcQAccessibleStateChangeEvent_delete(self.h)
proc setCursorPosition*(self: gen_qaccessible_types.QAccessibleTextCursorEvent, position: cint): void =
  fcQAccessibleTextCursorEvent_setCursorPosition(self.h, position)

proc cursorPosition*(self: gen_qaccessible_types.QAccessibleTextCursorEvent, ): cint =
  fcQAccessibleTextCursorEvent_cursorPosition(self.h)

type QAccessibleTextCursorEventaccessibleInterfaceProc* = proc(self: QAccessibleTextCursorEvent): gen_qaccessible_types.QAccessibleInterface {.raises: [], gcsafe.}
type QAccessibleTextCursorEventVTable* = object
  vtbl: cQAccessibleTextCursorEventVTable
  accessibleInterface*: QAccessibleTextCursorEventaccessibleInterfaceProc
proc QAccessibleTextCursorEventaccessibleInterface*(self: gen_qaccessible_types.QAccessibleTextCursorEvent, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleTextCursorEvent_virtualbase_accessibleInterface(self.h))

proc miqt_exec_callback_cQAccessibleTextCursorEvent_accessibleInterface(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessibleTextCursorEventVTable](vtbl)
  let self = QAccessibleTextCursorEvent(h: self)
  var virtualReturn = vtbl[].accessibleInterface(self)
  virtualReturn.h

proc create*(T: type gen_qaccessible_types.QAccessibleTextCursorEvent,
    obj: gen_qobject_types.QObject, cursorPos: cint,
    vtbl: ref QAccessibleTextCursorEventVTable = nil): gen_qaccessible_types.QAccessibleTextCursorEvent =
  let vtbl = if vtbl == nil: new QAccessibleTextCursorEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleTextCursorEventVTable, _: ptr cQAccessibleTextCursorEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleTextCursorEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleTextCursorEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleTextCursorEvent(h: fcQAccessibleTextCursorEvent_new(addr(vtbl[]), obj.h, cursorPos))

proc create*(T: type gen_qaccessible_types.QAccessibleTextCursorEvent,
    iface: gen_qaccessible_types.QAccessibleInterface, cursorPos: cint,
    vtbl: ref QAccessibleTextCursorEventVTable = nil): gen_qaccessible_types.QAccessibleTextCursorEvent =
  let vtbl = if vtbl == nil: new QAccessibleTextCursorEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleTextCursorEventVTable, _: ptr cQAccessibleTextCursorEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleTextCursorEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleTextCursorEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleTextCursorEvent(h: fcQAccessibleTextCursorEvent_new2(addr(vtbl[]), iface.h, cursorPos))

proc delete*(self: gen_qaccessible_types.QAccessibleTextCursorEvent) =
  fcQAccessibleTextCursorEvent_delete(self.h)
proc setSelection*(self: gen_qaccessible_types.QAccessibleTextSelectionEvent, start: cint, endVal: cint): void =
  fcQAccessibleTextSelectionEvent_setSelection(self.h, start, endVal)

proc selectionStart*(self: gen_qaccessible_types.QAccessibleTextSelectionEvent, ): cint =
  fcQAccessibleTextSelectionEvent_selectionStart(self.h)

proc selectionEnd*(self: gen_qaccessible_types.QAccessibleTextSelectionEvent, ): cint =
  fcQAccessibleTextSelectionEvent_selectionEnd(self.h)

type QAccessibleTextSelectionEventaccessibleInterfaceProc* = proc(self: QAccessibleTextSelectionEvent): gen_qaccessible_types.QAccessibleInterface {.raises: [], gcsafe.}
type QAccessibleTextSelectionEventVTable* = object
  vtbl: cQAccessibleTextSelectionEventVTable
  accessibleInterface*: QAccessibleTextSelectionEventaccessibleInterfaceProc
proc QAccessibleTextSelectionEventaccessibleInterface*(self: gen_qaccessible_types.QAccessibleTextSelectionEvent, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleTextSelectionEvent_virtualbase_accessibleInterface(self.h))

proc miqt_exec_callback_cQAccessibleTextSelectionEvent_accessibleInterface(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessibleTextSelectionEventVTable](vtbl)
  let self = QAccessibleTextSelectionEvent(h: self)
  var virtualReturn = vtbl[].accessibleInterface(self)
  virtualReturn.h

proc create*(T: type gen_qaccessible_types.QAccessibleTextSelectionEvent,
    obj: gen_qobject_types.QObject, start: cint, endVal: cint,
    vtbl: ref QAccessibleTextSelectionEventVTable = nil): gen_qaccessible_types.QAccessibleTextSelectionEvent =
  let vtbl = if vtbl == nil: new QAccessibleTextSelectionEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleTextSelectionEventVTable, _: ptr cQAccessibleTextSelectionEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleTextSelectionEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleTextSelectionEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleTextSelectionEvent(h: fcQAccessibleTextSelectionEvent_new(addr(vtbl[]), obj.h, start, endVal))

proc create*(T: type gen_qaccessible_types.QAccessibleTextSelectionEvent,
    iface: gen_qaccessible_types.QAccessibleInterface, start: cint, endVal: cint,
    vtbl: ref QAccessibleTextSelectionEventVTable = nil): gen_qaccessible_types.QAccessibleTextSelectionEvent =
  let vtbl = if vtbl == nil: new QAccessibleTextSelectionEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleTextSelectionEventVTable, _: ptr cQAccessibleTextSelectionEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleTextSelectionEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleTextSelectionEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleTextSelectionEvent(h: fcQAccessibleTextSelectionEvent_new2(addr(vtbl[]), iface.h, start, endVal))

proc delete*(self: gen_qaccessible_types.QAccessibleTextSelectionEvent) =
  fcQAccessibleTextSelectionEvent_delete(self.h)
proc textInserted*(self: gen_qaccessible_types.QAccessibleTextInsertEvent, ): string =
  let v_ms = fcQAccessibleTextInsertEvent_textInserted(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc changePosition*(self: gen_qaccessible_types.QAccessibleTextInsertEvent, ): cint =
  fcQAccessibleTextInsertEvent_changePosition(self.h)

type QAccessibleTextInsertEventaccessibleInterfaceProc* = proc(self: QAccessibleTextInsertEvent): gen_qaccessible_types.QAccessibleInterface {.raises: [], gcsafe.}
type QAccessibleTextInsertEventVTable* = object
  vtbl: cQAccessibleTextInsertEventVTable
  accessibleInterface*: QAccessibleTextInsertEventaccessibleInterfaceProc
proc QAccessibleTextInsertEventaccessibleInterface*(self: gen_qaccessible_types.QAccessibleTextInsertEvent, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleTextInsertEvent_virtualbase_accessibleInterface(self.h))

proc miqt_exec_callback_cQAccessibleTextInsertEvent_accessibleInterface(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessibleTextInsertEventVTable](vtbl)
  let self = QAccessibleTextInsertEvent(h: self)
  var virtualReturn = vtbl[].accessibleInterface(self)
  virtualReturn.h

proc create*(T: type gen_qaccessible_types.QAccessibleTextInsertEvent,
    obj: gen_qobject_types.QObject, position: cint, text: string,
    vtbl: ref QAccessibleTextInsertEventVTable = nil): gen_qaccessible_types.QAccessibleTextInsertEvent =
  let vtbl = if vtbl == nil: new QAccessibleTextInsertEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleTextInsertEventVTable, _: ptr cQAccessibleTextInsertEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleTextInsertEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleTextInsertEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleTextInsertEvent(h: fcQAccessibleTextInsertEvent_new(addr(vtbl[]), obj.h, position, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qaccessible_types.QAccessibleTextInsertEvent,
    iface: gen_qaccessible_types.QAccessibleInterface, position: cint, text: string,
    vtbl: ref QAccessibleTextInsertEventVTable = nil): gen_qaccessible_types.QAccessibleTextInsertEvent =
  let vtbl = if vtbl == nil: new QAccessibleTextInsertEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleTextInsertEventVTable, _: ptr cQAccessibleTextInsertEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleTextInsertEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleTextInsertEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleTextInsertEvent(h: fcQAccessibleTextInsertEvent_new2(addr(vtbl[]), iface.h, position, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc delete*(self: gen_qaccessible_types.QAccessibleTextInsertEvent) =
  fcQAccessibleTextInsertEvent_delete(self.h)
proc textRemoved*(self: gen_qaccessible_types.QAccessibleTextRemoveEvent, ): string =
  let v_ms = fcQAccessibleTextRemoveEvent_textRemoved(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc changePosition*(self: gen_qaccessible_types.QAccessibleTextRemoveEvent, ): cint =
  fcQAccessibleTextRemoveEvent_changePosition(self.h)

type QAccessibleTextRemoveEventaccessibleInterfaceProc* = proc(self: QAccessibleTextRemoveEvent): gen_qaccessible_types.QAccessibleInterface {.raises: [], gcsafe.}
type QAccessibleTextRemoveEventVTable* = object
  vtbl: cQAccessibleTextRemoveEventVTable
  accessibleInterface*: QAccessibleTextRemoveEventaccessibleInterfaceProc
proc QAccessibleTextRemoveEventaccessibleInterface*(self: gen_qaccessible_types.QAccessibleTextRemoveEvent, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleTextRemoveEvent_virtualbase_accessibleInterface(self.h))

proc miqt_exec_callback_cQAccessibleTextRemoveEvent_accessibleInterface(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessibleTextRemoveEventVTable](vtbl)
  let self = QAccessibleTextRemoveEvent(h: self)
  var virtualReturn = vtbl[].accessibleInterface(self)
  virtualReturn.h

proc create*(T: type gen_qaccessible_types.QAccessibleTextRemoveEvent,
    obj: gen_qobject_types.QObject, position: cint, text: string,
    vtbl: ref QAccessibleTextRemoveEventVTable = nil): gen_qaccessible_types.QAccessibleTextRemoveEvent =
  let vtbl = if vtbl == nil: new QAccessibleTextRemoveEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleTextRemoveEventVTable, _: ptr cQAccessibleTextRemoveEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleTextRemoveEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleTextRemoveEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleTextRemoveEvent(h: fcQAccessibleTextRemoveEvent_new(addr(vtbl[]), obj.h, position, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qaccessible_types.QAccessibleTextRemoveEvent,
    iface: gen_qaccessible_types.QAccessibleInterface, position: cint, text: string,
    vtbl: ref QAccessibleTextRemoveEventVTable = nil): gen_qaccessible_types.QAccessibleTextRemoveEvent =
  let vtbl = if vtbl == nil: new QAccessibleTextRemoveEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleTextRemoveEventVTable, _: ptr cQAccessibleTextRemoveEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleTextRemoveEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleTextRemoveEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleTextRemoveEvent(h: fcQAccessibleTextRemoveEvent_new2(addr(vtbl[]), iface.h, position, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc delete*(self: gen_qaccessible_types.QAccessibleTextRemoveEvent) =
  fcQAccessibleTextRemoveEvent_delete(self.h)
proc textRemoved*(self: gen_qaccessible_types.QAccessibleTextUpdateEvent, ): string =
  let v_ms = fcQAccessibleTextUpdateEvent_textRemoved(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textInserted*(self: gen_qaccessible_types.QAccessibleTextUpdateEvent, ): string =
  let v_ms = fcQAccessibleTextUpdateEvent_textInserted(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc changePosition*(self: gen_qaccessible_types.QAccessibleTextUpdateEvent, ): cint =
  fcQAccessibleTextUpdateEvent_changePosition(self.h)

type QAccessibleTextUpdateEventaccessibleInterfaceProc* = proc(self: QAccessibleTextUpdateEvent): gen_qaccessible_types.QAccessibleInterface {.raises: [], gcsafe.}
type QAccessibleTextUpdateEventVTable* = object
  vtbl: cQAccessibleTextUpdateEventVTable
  accessibleInterface*: QAccessibleTextUpdateEventaccessibleInterfaceProc
proc QAccessibleTextUpdateEventaccessibleInterface*(self: gen_qaccessible_types.QAccessibleTextUpdateEvent, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleTextUpdateEvent_virtualbase_accessibleInterface(self.h))

proc miqt_exec_callback_cQAccessibleTextUpdateEvent_accessibleInterface(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessibleTextUpdateEventVTable](vtbl)
  let self = QAccessibleTextUpdateEvent(h: self)
  var virtualReturn = vtbl[].accessibleInterface(self)
  virtualReturn.h

proc create*(T: type gen_qaccessible_types.QAccessibleTextUpdateEvent,
    obj: gen_qobject_types.QObject, position: cint, oldText: string, text: string,
    vtbl: ref QAccessibleTextUpdateEventVTable = nil): gen_qaccessible_types.QAccessibleTextUpdateEvent =
  let vtbl = if vtbl == nil: new QAccessibleTextUpdateEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleTextUpdateEventVTable, _: ptr cQAccessibleTextUpdateEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleTextUpdateEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleTextUpdateEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleTextUpdateEvent(h: fcQAccessibleTextUpdateEvent_new(addr(vtbl[]), obj.h, position, struct_miqt_string(data: oldText, len: csize_t(len(oldText))), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qaccessible_types.QAccessibleTextUpdateEvent,
    iface: gen_qaccessible_types.QAccessibleInterface, position: cint, oldText: string, text: string,
    vtbl: ref QAccessibleTextUpdateEventVTable = nil): gen_qaccessible_types.QAccessibleTextUpdateEvent =
  let vtbl = if vtbl == nil: new QAccessibleTextUpdateEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleTextUpdateEventVTable, _: ptr cQAccessibleTextUpdateEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleTextUpdateEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleTextUpdateEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleTextUpdateEvent(h: fcQAccessibleTextUpdateEvent_new2(addr(vtbl[]), iface.h, position, struct_miqt_string(data: oldText, len: csize_t(len(oldText))), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc delete*(self: gen_qaccessible_types.QAccessibleTextUpdateEvent) =
  fcQAccessibleTextUpdateEvent_delete(self.h)
proc setValue*(self: gen_qaccessible_types.QAccessibleValueChangeEvent, val: gen_qvariant_types.QVariant): void =
  fcQAccessibleValueChangeEvent_setValue(self.h, val.h)

proc value*(self: gen_qaccessible_types.QAccessibleValueChangeEvent, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAccessibleValueChangeEvent_value(self.h))

type QAccessibleValueChangeEventaccessibleInterfaceProc* = proc(self: QAccessibleValueChangeEvent): gen_qaccessible_types.QAccessibleInterface {.raises: [], gcsafe.}
type QAccessibleValueChangeEventVTable* = object
  vtbl: cQAccessibleValueChangeEventVTable
  accessibleInterface*: QAccessibleValueChangeEventaccessibleInterfaceProc
proc QAccessibleValueChangeEventaccessibleInterface*(self: gen_qaccessible_types.QAccessibleValueChangeEvent, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleValueChangeEvent_virtualbase_accessibleInterface(self.h))

proc miqt_exec_callback_cQAccessibleValueChangeEvent_accessibleInterface(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessibleValueChangeEventVTable](vtbl)
  let self = QAccessibleValueChangeEvent(h: self)
  var virtualReturn = vtbl[].accessibleInterface(self)
  virtualReturn.h

proc create*(T: type gen_qaccessible_types.QAccessibleValueChangeEvent,
    obj: gen_qobject_types.QObject, val: gen_qvariant_types.QVariant,
    vtbl: ref QAccessibleValueChangeEventVTable = nil): gen_qaccessible_types.QAccessibleValueChangeEvent =
  let vtbl = if vtbl == nil: new QAccessibleValueChangeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleValueChangeEventVTable, _: ptr cQAccessibleValueChangeEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleValueChangeEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleValueChangeEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleValueChangeEvent(h: fcQAccessibleValueChangeEvent_new(addr(vtbl[]), obj.h, val.h))

proc create*(T: type gen_qaccessible_types.QAccessibleValueChangeEvent,
    iface: gen_qaccessible_types.QAccessibleInterface, val: gen_qvariant_types.QVariant,
    vtbl: ref QAccessibleValueChangeEventVTable = nil): gen_qaccessible_types.QAccessibleValueChangeEvent =
  let vtbl = if vtbl == nil: new QAccessibleValueChangeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleValueChangeEventVTable, _: ptr cQAccessibleValueChangeEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleValueChangeEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleValueChangeEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleValueChangeEvent(h: fcQAccessibleValueChangeEvent_new2(addr(vtbl[]), iface.h, val.h))

proc delete*(self: gen_qaccessible_types.QAccessibleValueChangeEvent) =
  fcQAccessibleValueChangeEvent_delete(self.h)
proc setModelChangeType*(self: gen_qaccessible_types.QAccessibleTableModelChangeEvent, changeType: cint): void =
  fcQAccessibleTableModelChangeEvent_setModelChangeType(self.h, cint(changeType))

proc modelChangeType*(self: gen_qaccessible_types.QAccessibleTableModelChangeEvent, ): cint =
  cint(fcQAccessibleTableModelChangeEvent_modelChangeType(self.h))

proc setFirstRow*(self: gen_qaccessible_types.QAccessibleTableModelChangeEvent, row: cint): void =
  fcQAccessibleTableModelChangeEvent_setFirstRow(self.h, row)

proc setFirstColumn*(self: gen_qaccessible_types.QAccessibleTableModelChangeEvent, col: cint): void =
  fcQAccessibleTableModelChangeEvent_setFirstColumn(self.h, col)

proc setLastRow*(self: gen_qaccessible_types.QAccessibleTableModelChangeEvent, row: cint): void =
  fcQAccessibleTableModelChangeEvent_setLastRow(self.h, row)

proc setLastColumn*(self: gen_qaccessible_types.QAccessibleTableModelChangeEvent, col: cint): void =
  fcQAccessibleTableModelChangeEvent_setLastColumn(self.h, col)

proc firstRow*(self: gen_qaccessible_types.QAccessibleTableModelChangeEvent, ): cint =
  fcQAccessibleTableModelChangeEvent_firstRow(self.h)

proc firstColumn*(self: gen_qaccessible_types.QAccessibleTableModelChangeEvent, ): cint =
  fcQAccessibleTableModelChangeEvent_firstColumn(self.h)

proc lastRow*(self: gen_qaccessible_types.QAccessibleTableModelChangeEvent, ): cint =
  fcQAccessibleTableModelChangeEvent_lastRow(self.h)

proc lastColumn*(self: gen_qaccessible_types.QAccessibleTableModelChangeEvent, ): cint =
  fcQAccessibleTableModelChangeEvent_lastColumn(self.h)

type QAccessibleTableModelChangeEventaccessibleInterfaceProc* = proc(self: QAccessibleTableModelChangeEvent): gen_qaccessible_types.QAccessibleInterface {.raises: [], gcsafe.}
type QAccessibleTableModelChangeEventVTable* = object
  vtbl: cQAccessibleTableModelChangeEventVTable
  accessibleInterface*: QAccessibleTableModelChangeEventaccessibleInterfaceProc
proc QAccessibleTableModelChangeEventaccessibleInterface*(self: gen_qaccessible_types.QAccessibleTableModelChangeEvent, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessibleTableModelChangeEvent_virtualbase_accessibleInterface(self.h))

proc miqt_exec_callback_cQAccessibleTableModelChangeEvent_accessibleInterface(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessibleTableModelChangeEventVTable](vtbl)
  let self = QAccessibleTableModelChangeEvent(h: self)
  var virtualReturn = vtbl[].accessibleInterface(self)
  virtualReturn.h

proc create*(T: type gen_qaccessible_types.QAccessibleTableModelChangeEvent,
    obj: gen_qobject_types.QObject, changeType: cint,
    vtbl: ref QAccessibleTableModelChangeEventVTable = nil): gen_qaccessible_types.QAccessibleTableModelChangeEvent =
  let vtbl = if vtbl == nil: new QAccessibleTableModelChangeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleTableModelChangeEventVTable, _: ptr cQAccessibleTableModelChangeEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleTableModelChangeEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleTableModelChangeEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleTableModelChangeEvent(h: fcQAccessibleTableModelChangeEvent_new(addr(vtbl[]), obj.h, cint(changeType)))

proc create*(T: type gen_qaccessible_types.QAccessibleTableModelChangeEvent,
    iface: gen_qaccessible_types.QAccessibleInterface, changeType: cint,
    vtbl: ref QAccessibleTableModelChangeEventVTable = nil): gen_qaccessible_types.QAccessibleTableModelChangeEvent =
  let vtbl = if vtbl == nil: new QAccessibleTableModelChangeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAccessibleTableModelChangeEventVTable, _: ptr cQAccessibleTableModelChangeEvent) {.cdecl.} =
    let vtbl = cast[ref QAccessibleTableModelChangeEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.accessibleInterface):
    vtbl[].vtbl.accessibleInterface = miqt_exec_callback_cQAccessibleTableModelChangeEvent_accessibleInterface
  gen_qaccessible_types.QAccessibleTableModelChangeEvent(h: fcQAccessibleTableModelChangeEvent_new2(addr(vtbl[]), iface.h, cint(changeType)))

proc delete*(self: gen_qaccessible_types.QAccessibleTableModelChangeEvent) =
  fcQAccessibleTableModelChangeEvent_delete(self.h)
proc create*(T: type gen_qaccessible_types.QAccessibleState): gen_qaccessible_types.QAccessibleState =
  gen_qaccessible_types.QAccessibleState(h: fcQAccessibleState_new())

proc create*(T: type gen_qaccessible_types.QAccessibleState,
    param1: gen_qaccessible_types.QAccessibleState): gen_qaccessible_types.QAccessibleState =
  gen_qaccessible_types.QAccessibleState(h: fcQAccessibleState_new2(param1.h))

proc delete*(self: gen_qaccessible_types.QAccessibleState) =
  fcQAccessibleState_delete(self.h)
proc accessibilityActiveChanged*(self: gen_qaccessible_types.QAccessibleActivationObserver, active: bool): void =
  fcQAccessibleActivationObserver_accessibilityActiveChanged(self.h, active)

proc operatorAssign*(self: gen_qaccessible_types.QAccessibleActivationObserver, param1: gen_qaccessible_types.QAccessibleActivationObserver): void =
  fcQAccessibleActivationObserver_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qaccessible_types.QAccessibleActivationObserver) =
  fcQAccessibleActivationObserver_delete(self.h)
