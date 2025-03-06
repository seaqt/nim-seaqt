import ./Qt6Gui_libs

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
proc fcQAccessible_qAccessibleTextBoundaryHelper(cursor: pointer, boundaryType: cint): struct_miqt_map {.importc: "QAccessible_qAccessibleTextBoundaryHelper".}
proc fcQAccessible_staticMetaObject(): pointer {.importc: "QAccessible_staticMetaObject".}
proc fcQAccessibleState_new(): ptr cQAccessibleState {.importc: "QAccessible__State_new".}
proc fcQAccessibleActivationObserver_accessibilityActiveChanged(self: pointer, active: bool): void {.importc: "QAccessible__ActivationObserver_accessibilityActiveChanged".}
proc fcQAccessibleActivationObserver_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessible__ActivationObserver_operatorAssign".}

proc installActivationObserver*(_: type gen_qaccessible_base_types.QAccessible, param1: gen_qaccessible_base_types.QAccessibleActivationObserver): void =
  fcQAccessible_installActivationObserver(param1.h)

proc removeActivationObserver*(_: type gen_qaccessible_base_types.QAccessible, param1: gen_qaccessible_base_types.QAccessibleActivationObserver): void =
  fcQAccessible_removeActivationObserver(param1.h)

proc queryAccessibleInterface*(_: type gen_qaccessible_base_types.QAccessible, param1: gen_qobject_types.QObject): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessible_queryAccessibleInterface(param1.h), owned: false)

proc uniqueId*(_: type gen_qaccessible_base_types.QAccessible, iface: gen_qaccessible_types.QAccessibleInterface): cuint =
  fcQAccessible_uniqueId(iface.h)

proc accessibleInterface*(_: type gen_qaccessible_base_types.QAccessible, uniqueId: cuint): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQAccessible_accessibleInterface(uniqueId), owned: false)

proc registerAccessibleInterface*(_: type gen_qaccessible_base_types.QAccessible, iface: gen_qaccessible_types.QAccessibleInterface): cuint =
  fcQAccessible_registerAccessibleInterface(iface.h)

proc deleteAccessibleInterface*(_: type gen_qaccessible_base_types.QAccessible, uniqueId: cuint): void =
  fcQAccessible_deleteAccessibleInterface(uniqueId)

proc updateAccessibility*(_: type gen_qaccessible_base_types.QAccessible, event: gen_qaccessible_types.QAccessibleEvent): void =
  fcQAccessible_updateAccessibility(event.h)

proc isActive*(_: type gen_qaccessible_base_types.QAccessible, ): bool =
  fcQAccessible_isActive()

proc setActive*(_: type gen_qaccessible_base_types.QAccessible, active: bool): void =
  fcQAccessible_setActive(active)

proc setRootObject*(_: type gen_qaccessible_base_types.QAccessible, objectVal: gen_qobject_types.QObject): void =
  fcQAccessible_setRootObject(objectVal.h)

proc cleanup*(_: type gen_qaccessible_base_types.QAccessible, ): void =
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
proc create*(T: type gen_qaccessible_base_types.QAccessibleState): gen_qaccessible_base_types.QAccessibleState =
  gen_qaccessible_base_types.QAccessibleState(h: fcQAccessibleState_new(), owned: true)

proc accessibilityActiveChanged*(self: gen_qaccessible_base_types.QAccessibleActivationObserver, active: bool): void =
  fcQAccessibleActivationObserver_accessibilityActiveChanged(self.h, active)

proc operatorAssign*(self: gen_qaccessible_base_types.QAccessibleActivationObserver, param1: gen_qaccessible_base_types.QAccessibleActivationObserver): void =
  fcQAccessibleActivationObserver_operatorAssign(self.h, param1.h)

