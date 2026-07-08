import ./qtgui_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


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
template HyperlinkInterface*(_: type QAccessibleInterfaceTypeEnum): untyped = 7


type QAccessibleTextBoundaryTypeEnum* = distinct cint
template CharBoundary*(_: type QAccessibleTextBoundaryTypeEnum): untyped = 0
template WordBoundary*(_: type QAccessibleTextBoundaryTypeEnum): untyped = 1
template SentenceBoundary*(_: type QAccessibleTextBoundaryTypeEnum): untyped = 2
template ParagraphBoundary*(_: type QAccessibleTextBoundaryTypeEnum): untyped = 3
template LineBoundary*(_: type QAccessibleTextBoundaryTypeEnum): untyped = 4
template NoBoundary*(_: type QAccessibleTextBoundaryTypeEnum): untyped = 5


import ./gen_qaccessible_base_types
export gen_qaccessible_base_types

import
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaccessible_types,
  ./gen_qtextcursor_types
export
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qaccessible_types,
  gen_qtextcursor_types

type cQAccessible*{.exportc: "QAccessible", incompleteStruct.} = object
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
proc fcQAccessible_qAccessibleTextBoundaryHelper(cursor: pointer, boundaryType: cint): struct_seaqt_map {.importc: "QAccessible_qAccessibleTextBoundaryHelper".}
proc fcQAccessible_staticMetaObject(): pointer {.importc: "QAccessible_staticMetaObject".}
proc fcQAccessible_delete(self: pointer) {.importc: "QAccessible_delete".}
proc fcQAccessibleState_disabled(self: pointer): culonglong {.importc: "QAccessible__State_disabled".}
proc fcQAccessibleState_setDisabled(self: pointer, disabled: culonglong): void {.importc: "QAccessible__State_setDisabled".}
proc fcQAccessibleState_selected(self: pointer): culonglong {.importc: "QAccessible__State_selected".}
proc fcQAccessibleState_setSelected(self: pointer, selected: culonglong): void {.importc: "QAccessible__State_setSelected".}
proc fcQAccessibleState_focusable(self: pointer): culonglong {.importc: "QAccessible__State_focusable".}
proc fcQAccessibleState_setFocusable(self: pointer, focusable: culonglong): void {.importc: "QAccessible__State_setFocusable".}
proc fcQAccessibleState_focused(self: pointer): culonglong {.importc: "QAccessible__State_focused".}
proc fcQAccessibleState_setFocused(self: pointer, focused: culonglong): void {.importc: "QAccessible__State_setFocused".}
proc fcQAccessibleState_pressed(self: pointer): culonglong {.importc: "QAccessible__State_pressed".}
proc fcQAccessibleState_setPressed(self: pointer, pressed: culonglong): void {.importc: "QAccessible__State_setPressed".}
proc fcQAccessibleState_checkable(self: pointer): culonglong {.importc: "QAccessible__State_checkable".}
proc fcQAccessibleState_setCheckable(self: pointer, checkable: culonglong): void {.importc: "QAccessible__State_setCheckable".}
proc fcQAccessibleState_checked(self: pointer): culonglong {.importc: "QAccessible__State_checked".}
proc fcQAccessibleState_setChecked(self: pointer, checked: culonglong): void {.importc: "QAccessible__State_setChecked".}
proc fcQAccessibleState_checkStateMixed(self: pointer): culonglong {.importc: "QAccessible__State_checkStateMixed".}
proc fcQAccessibleState_setCheckStateMixed(self: pointer, checkStateMixed: culonglong): void {.importc: "QAccessible__State_setCheckStateMixed".}
proc fcQAccessibleState_readOnly(self: pointer): culonglong {.importc: "QAccessible__State_readOnly".}
proc fcQAccessibleState_setReadOnly(self: pointer, readOnly: culonglong): void {.importc: "QAccessible__State_setReadOnly".}
proc fcQAccessibleState_hotTracked(self: pointer): culonglong {.importc: "QAccessible__State_hotTracked".}
proc fcQAccessibleState_setHotTracked(self: pointer, hotTracked: culonglong): void {.importc: "QAccessible__State_setHotTracked".}
proc fcQAccessibleState_defaultButton(self: pointer): culonglong {.importc: "QAccessible__State_defaultButton".}
proc fcQAccessibleState_setDefaultButton(self: pointer, defaultButton: culonglong): void {.importc: "QAccessible__State_setDefaultButton".}
proc fcQAccessibleState_expanded(self: pointer): culonglong {.importc: "QAccessible__State_expanded".}
proc fcQAccessibleState_setExpanded(self: pointer, expanded: culonglong): void {.importc: "QAccessible__State_setExpanded".}
proc fcQAccessibleState_collapsed(self: pointer): culonglong {.importc: "QAccessible__State_collapsed".}
proc fcQAccessibleState_setCollapsed(self: pointer, collapsed: culonglong): void {.importc: "QAccessible__State_setCollapsed".}
proc fcQAccessibleState_busy(self: pointer): culonglong {.importc: "QAccessible__State_busy".}
proc fcQAccessibleState_setBusy(self: pointer, busy: culonglong): void {.importc: "QAccessible__State_setBusy".}
proc fcQAccessibleState_expandable(self: pointer): culonglong {.importc: "QAccessible__State_expandable".}
proc fcQAccessibleState_setExpandable(self: pointer, expandable: culonglong): void {.importc: "QAccessible__State_setExpandable".}
proc fcQAccessibleState_marqueed(self: pointer): culonglong {.importc: "QAccessible__State_marqueed".}
proc fcQAccessibleState_setMarqueed(self: pointer, marqueed: culonglong): void {.importc: "QAccessible__State_setMarqueed".}
proc fcQAccessibleState_animated(self: pointer): culonglong {.importc: "QAccessible__State_animated".}
proc fcQAccessibleState_setAnimated(self: pointer, animated: culonglong): void {.importc: "QAccessible__State_setAnimated".}
proc fcQAccessibleState_invisible(self: pointer): culonglong {.importc: "QAccessible__State_invisible".}
proc fcQAccessibleState_setInvisible(self: pointer, invisible: culonglong): void {.importc: "QAccessible__State_setInvisible".}
proc fcQAccessibleState_offscreen(self: pointer): culonglong {.importc: "QAccessible__State_offscreen".}
proc fcQAccessibleState_setOffscreen(self: pointer, offscreen: culonglong): void {.importc: "QAccessible__State_setOffscreen".}
proc fcQAccessibleState_sizeable(self: pointer): culonglong {.importc: "QAccessible__State_sizeable".}
proc fcQAccessibleState_setSizeable(self: pointer, sizeable: culonglong): void {.importc: "QAccessible__State_setSizeable".}
proc fcQAccessibleState_movable(self: pointer): culonglong {.importc: "QAccessible__State_movable".}
proc fcQAccessibleState_setMovable(self: pointer, movable: culonglong): void {.importc: "QAccessible__State_setMovable".}
proc fcQAccessibleState_selfVoicing(self: pointer): culonglong {.importc: "QAccessible__State_selfVoicing".}
proc fcQAccessibleState_setSelfVoicing(self: pointer, selfVoicing: culonglong): void {.importc: "QAccessible__State_setSelfVoicing".}
proc fcQAccessibleState_selectable(self: pointer): culonglong {.importc: "QAccessible__State_selectable".}
proc fcQAccessibleState_setSelectable(self: pointer, selectable: culonglong): void {.importc: "QAccessible__State_setSelectable".}
proc fcQAccessibleState_linked(self: pointer): culonglong {.importc: "QAccessible__State_linked".}
proc fcQAccessibleState_setLinked(self: pointer, linked: culonglong): void {.importc: "QAccessible__State_setLinked".}
proc fcQAccessibleState_traversed(self: pointer): culonglong {.importc: "QAccessible__State_traversed".}
proc fcQAccessibleState_setTraversed(self: pointer, traversed: culonglong): void {.importc: "QAccessible__State_setTraversed".}
proc fcQAccessibleState_multiSelectable(self: pointer): culonglong {.importc: "QAccessible__State_multiSelectable".}
proc fcQAccessibleState_setMultiSelectable(self: pointer, multiSelectable: culonglong): void {.importc: "QAccessible__State_setMultiSelectable".}
proc fcQAccessibleState_extSelectable(self: pointer): culonglong {.importc: "QAccessible__State_extSelectable".}
proc fcQAccessibleState_setExtSelectable(self: pointer, extSelectable: culonglong): void {.importc: "QAccessible__State_setExtSelectable".}
proc fcQAccessibleState_passwordEdit(self: pointer): culonglong {.importc: "QAccessible__State_passwordEdit".}
proc fcQAccessibleState_setPasswordEdit(self: pointer, passwordEdit: culonglong): void {.importc: "QAccessible__State_setPasswordEdit".}
proc fcQAccessibleState_hasPopup(self: pointer): culonglong {.importc: "QAccessible__State_hasPopup".}
proc fcQAccessibleState_setHasPopup(self: pointer, hasPopup: culonglong): void {.importc: "QAccessible__State_setHasPopup".}
proc fcQAccessibleState_modal(self: pointer): culonglong {.importc: "QAccessible__State_modal".}
proc fcQAccessibleState_setModal(self: pointer, modal: culonglong): void {.importc: "QAccessible__State_setModal".}
proc fcQAccessibleState_active(self: pointer): culonglong {.importc: "QAccessible__State_active".}
proc fcQAccessibleState_setActive(self: pointer, active: culonglong): void {.importc: "QAccessible__State_setActive".}
proc fcQAccessibleState_invalid(self: pointer): culonglong {.importc: "QAccessible__State_invalid".}
proc fcQAccessibleState_setInvalid(self: pointer, invalid: culonglong): void {.importc: "QAccessible__State_setInvalid".}
proc fcQAccessibleState_editable(self: pointer): culonglong {.importc: "QAccessible__State_editable".}
proc fcQAccessibleState_setEditable(self: pointer, editable: culonglong): void {.importc: "QAccessible__State_setEditable".}
proc fcQAccessibleState_multiLine(self: pointer): culonglong {.importc: "QAccessible__State_multiLine".}
proc fcQAccessibleState_setMultiLine(self: pointer, multiLine: culonglong): void {.importc: "QAccessible__State_setMultiLine".}
proc fcQAccessibleState_selectableText(self: pointer): culonglong {.importc: "QAccessible__State_selectableText".}
proc fcQAccessibleState_setSelectableText(self: pointer, selectableText: culonglong): void {.importc: "QAccessible__State_setSelectableText".}
proc fcQAccessibleState_supportsAutoCompletion(self: pointer): culonglong {.importc: "QAccessible__State_supportsAutoCompletion".}
proc fcQAccessibleState_setSupportsAutoCompletion(self: pointer, supportsAutoCompletion: culonglong): void {.importc: "QAccessible__State_setSupportsAutoCompletion".}
proc fcQAccessibleState_searchEdit(self: pointer): culonglong {.importc: "QAccessible__State_searchEdit".}
proc fcQAccessibleState_setSearchEdit(self: pointer, searchEdit: culonglong): void {.importc: "QAccessible__State_setSearchEdit".}
proc fcQAccessibleState_new(): ptr cQAccessibleState {.importc: "QAccessible__State_new".}
proc fcQAccessibleState_delete(self: pointer) {.importc: "QAccessible__State_delete".}
proc fcQAccessibleActivationObserver_accessibilityActiveChanged(self: pointer, active: bool): void {.importc: "QAccessible__ActivationObserver_accessibilityActiveChanged".}
proc fcQAccessibleActivationObserver_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessible__ActivationObserver_operatorAssign".}
proc fcQAccessibleActivationObserver_delete(self: pointer) {.importc: "QAccessible__ActivationObserver_delete".}

proc installActivationObserver*(_: type gen_qaccessible_base_types.QAccessible, param1: gen_qaccessible_base_types.QAccessibleActivationObserver): void =
  fcQAccessible_installActivationObserver(param1.h)

proc removeActivationObserver*(_: type gen_qaccessible_base_types.QAccessible, param1: gen_qaccessible_base_types.QAccessibleActivationObserver): void =
  fcQAccessible_removeActivationObserver(param1.h)

proc queryAccessibleInterface*(_: type gen_qaccessible_base_types.QAccessible, param1: gen_qobject_types.QObject): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessible_queryAccessibleInterface(param1.h))

proc uniqueId*(_: type gen_qaccessible_base_types.QAccessible, iface: gen_qaccessible_types.QAccessibleInterface): cuint =
  fcQAccessible_uniqueId(iface.h)

proc accessibleInterface*(_: type gen_qaccessible_base_types.QAccessible, uniqueId: cuint): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessible_accessibleInterface(uniqueId))

proc registerAccessibleInterface*(_: type gen_qaccessible_base_types.QAccessible, iface: gen_qaccessible_types.QAccessibleInterface): cuint =
  fcQAccessible_registerAccessibleInterface(iface.h)

proc deleteAccessibleInterface*(_: type gen_qaccessible_base_types.QAccessible, uniqueId: cuint): void =
  fcQAccessible_deleteAccessibleInterface(uniqueId)

proc updateAccessibility*(_: type gen_qaccessible_base_types.QAccessible, event: gen_qaccessible_types.QAccessibleEvent): void =
  fcQAccessible_updateAccessibility(event.h)

proc isActive*(_: type gen_qaccessible_base_types.QAccessible): bool =
  fcQAccessible_isActive()

proc setActive*(_: type gen_qaccessible_base_types.QAccessible, active: bool): void =
  fcQAccessible_setActive(active)

proc setRootObject*(_: type gen_qaccessible_base_types.QAccessible, objectVal: gen_qobject_types.QObject): void =
  fcQAccessible_setRootObject(objectVal.h)

proc cleanup*(_: type gen_qaccessible_base_types.QAccessible): void =
  fcQAccessible_cleanup()

proc qAccessibleTextBoundaryHelper*(_: type gen_qaccessible_base_types.QAccessible, cursor: gen_qtextcursor_types.QTextCursor, boundaryType: cint): tuple[first: cint, second: cint] =
  var v_mm = fcQAccessible_qAccessibleTextBoundaryHelper(cursor.h, cint(boundaryType))
  var v_First_CArray = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = v_First_CArray[0]

  var v_entry_Second = v_Second_CArray[0]

  c_free(v_mm.keys)
  c_free(v_mm.values)
  (first: v_entry_First , second: v_entry_Second )

proc staticMetaObject*(_: type gen_qaccessible_base_types.QAccessible): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessible_staticMetaObject())
proc delete*(self: gen_qaccessible_base_types.QAccessible) =
  fcQAccessible_delete(self.h)
proc disabled*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_disabled(self.h)

proc setDisabled*(self: gen_qaccessible_base_types.QAccessibleState, disabled: culonglong): void =
  fcQAccessibleState_setDisabled(self.h, disabled)

proc selected*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_selected(self.h)

proc setSelected*(self: gen_qaccessible_base_types.QAccessibleState, selected: culonglong): void =
  fcQAccessibleState_setSelected(self.h, selected)

proc focusable*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_focusable(self.h)

proc setFocusable*(self: gen_qaccessible_base_types.QAccessibleState, focusable: culonglong): void =
  fcQAccessibleState_setFocusable(self.h, focusable)

proc focused*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_focused(self.h)

proc setFocused*(self: gen_qaccessible_base_types.QAccessibleState, focused: culonglong): void =
  fcQAccessibleState_setFocused(self.h, focused)

proc pressed*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_pressed(self.h)

proc setPressed*(self: gen_qaccessible_base_types.QAccessibleState, pressed: culonglong): void =
  fcQAccessibleState_setPressed(self.h, pressed)

proc checkable*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_checkable(self.h)

proc setCheckable*(self: gen_qaccessible_base_types.QAccessibleState, checkable: culonglong): void =
  fcQAccessibleState_setCheckable(self.h, checkable)

proc checked*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_checked(self.h)

proc setChecked*(self: gen_qaccessible_base_types.QAccessibleState, checked: culonglong): void =
  fcQAccessibleState_setChecked(self.h, checked)

proc checkStateMixed*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_checkStateMixed(self.h)

proc setCheckStateMixed*(self: gen_qaccessible_base_types.QAccessibleState, checkStateMixed: culonglong): void =
  fcQAccessibleState_setCheckStateMixed(self.h, checkStateMixed)

proc readOnly*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_readOnly(self.h)

proc setReadOnly*(self: gen_qaccessible_base_types.QAccessibleState, readOnly: culonglong): void =
  fcQAccessibleState_setReadOnly(self.h, readOnly)

proc hotTracked*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_hotTracked(self.h)

proc setHotTracked*(self: gen_qaccessible_base_types.QAccessibleState, hotTracked: culonglong): void =
  fcQAccessibleState_setHotTracked(self.h, hotTracked)

proc defaultButton*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_defaultButton(self.h)

proc setDefaultButton*(self: gen_qaccessible_base_types.QAccessibleState, defaultButton: culonglong): void =
  fcQAccessibleState_setDefaultButton(self.h, defaultButton)

proc expanded*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_expanded(self.h)

proc setExpanded*(self: gen_qaccessible_base_types.QAccessibleState, expanded: culonglong): void =
  fcQAccessibleState_setExpanded(self.h, expanded)

proc collapsed*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_collapsed(self.h)

proc setCollapsed*(self: gen_qaccessible_base_types.QAccessibleState, collapsed: culonglong): void =
  fcQAccessibleState_setCollapsed(self.h, collapsed)

proc busy*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_busy(self.h)

proc setBusy*(self: gen_qaccessible_base_types.QAccessibleState, busy: culonglong): void =
  fcQAccessibleState_setBusy(self.h, busy)

proc expandable*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_expandable(self.h)

proc setExpandable*(self: gen_qaccessible_base_types.QAccessibleState, expandable: culonglong): void =
  fcQAccessibleState_setExpandable(self.h, expandable)

proc marqueed*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_marqueed(self.h)

proc setMarqueed*(self: gen_qaccessible_base_types.QAccessibleState, marqueed: culonglong): void =
  fcQAccessibleState_setMarqueed(self.h, marqueed)

proc animated*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_animated(self.h)

proc setAnimated*(self: gen_qaccessible_base_types.QAccessibleState, animated: culonglong): void =
  fcQAccessibleState_setAnimated(self.h, animated)

proc invisible*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_invisible(self.h)

proc setInvisible*(self: gen_qaccessible_base_types.QAccessibleState, invisible: culonglong): void =
  fcQAccessibleState_setInvisible(self.h, invisible)

proc offscreen*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_offscreen(self.h)

proc setOffscreen*(self: gen_qaccessible_base_types.QAccessibleState, offscreen: culonglong): void =
  fcQAccessibleState_setOffscreen(self.h, offscreen)

proc sizeable*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_sizeable(self.h)

proc setSizeable*(self: gen_qaccessible_base_types.QAccessibleState, sizeable: culonglong): void =
  fcQAccessibleState_setSizeable(self.h, sizeable)

proc movable*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_movable(self.h)

proc setMovable*(self: gen_qaccessible_base_types.QAccessibleState, movable: culonglong): void =
  fcQAccessibleState_setMovable(self.h, movable)

proc selfVoicing*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_selfVoicing(self.h)

proc setSelfVoicing*(self: gen_qaccessible_base_types.QAccessibleState, selfVoicing: culonglong): void =
  fcQAccessibleState_setSelfVoicing(self.h, selfVoicing)

proc selectable*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_selectable(self.h)

proc setSelectable*(self: gen_qaccessible_base_types.QAccessibleState, selectable: culonglong): void =
  fcQAccessibleState_setSelectable(self.h, selectable)

proc linked*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_linked(self.h)

proc setLinked*(self: gen_qaccessible_base_types.QAccessibleState, linked: culonglong): void =
  fcQAccessibleState_setLinked(self.h, linked)

proc traversed*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_traversed(self.h)

proc setTraversed*(self: gen_qaccessible_base_types.QAccessibleState, traversed: culonglong): void =
  fcQAccessibleState_setTraversed(self.h, traversed)

proc multiSelectable*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_multiSelectable(self.h)

proc setMultiSelectable*(self: gen_qaccessible_base_types.QAccessibleState, multiSelectable: culonglong): void =
  fcQAccessibleState_setMultiSelectable(self.h, multiSelectable)

proc extSelectable*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_extSelectable(self.h)

proc setExtSelectable*(self: gen_qaccessible_base_types.QAccessibleState, extSelectable: culonglong): void =
  fcQAccessibleState_setExtSelectable(self.h, extSelectable)

proc passwordEdit*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_passwordEdit(self.h)

proc setPasswordEdit*(self: gen_qaccessible_base_types.QAccessibleState, passwordEdit: culonglong): void =
  fcQAccessibleState_setPasswordEdit(self.h, passwordEdit)

proc hasPopup*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_hasPopup(self.h)

proc setHasPopup*(self: gen_qaccessible_base_types.QAccessibleState, hasPopup: culonglong): void =
  fcQAccessibleState_setHasPopup(self.h, hasPopup)

proc modal*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_modal(self.h)

proc setModal*(self: gen_qaccessible_base_types.QAccessibleState, modal: culonglong): void =
  fcQAccessibleState_setModal(self.h, modal)

proc active*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_active(self.h)

proc setActive*(self: gen_qaccessible_base_types.QAccessibleState, active: culonglong): void =
  fcQAccessibleState_setActive(self.h, active)

proc invalid*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_invalid(self.h)

proc setInvalid*(self: gen_qaccessible_base_types.QAccessibleState, invalid: culonglong): void =
  fcQAccessibleState_setInvalid(self.h, invalid)

proc editable*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_editable(self.h)

proc setEditable*(self: gen_qaccessible_base_types.QAccessibleState, editable: culonglong): void =
  fcQAccessibleState_setEditable(self.h, editable)

proc multiLine*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_multiLine(self.h)

proc setMultiLine*(self: gen_qaccessible_base_types.QAccessibleState, multiLine: culonglong): void =
  fcQAccessibleState_setMultiLine(self.h, multiLine)

proc selectableText*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_selectableText(self.h)

proc setSelectableText*(self: gen_qaccessible_base_types.QAccessibleState, selectableText: culonglong): void =
  fcQAccessibleState_setSelectableText(self.h, selectableText)

proc supportsAutoCompletion*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_supportsAutoCompletion(self.h)

proc setSupportsAutoCompletion*(self: gen_qaccessible_base_types.QAccessibleState, supportsAutoCompletion: culonglong): void =
  fcQAccessibleState_setSupportsAutoCompletion(self.h, supportsAutoCompletion)

proc searchEdit*(self: gen_qaccessible_base_types.QAccessibleState): culonglong =
  fcQAccessibleState_searchEdit(self.h)

proc setSearchEdit*(self: gen_qaccessible_base_types.QAccessibleState, searchEdit: culonglong): void =
  fcQAccessibleState_setSearchEdit(self.h, searchEdit)

proc create*(T: type gen_qaccessible_base_types.QAccessibleState): gen_qaccessible_base_types.QAccessibleState =
  let tmp = gen_qaccessible_base_types.QAccessibleState(h: fcQAccessibleState_new())
  tmp
proc delete*(self: gen_qaccessible_base_types.QAccessibleState) =
  fcQAccessibleState_delete(self.h)
proc accessibilityActiveChanged*(self: gen_qaccessible_base_types.QAccessibleActivationObserver, active: bool): void =
  fcQAccessibleActivationObserver_accessibilityActiveChanged(self.h, active)

proc operatorAssign*(self: gen_qaccessible_base_types.QAccessibleActivationObserver, param1: gen_qaccessible_base_types.QAccessibleActivationObserver): void =
  fcQAccessibleActivationObserver_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qaccessible_base_types.QAccessibleActivationObserver) =
  fcQAccessibleActivationObserver_delete(self.h)
