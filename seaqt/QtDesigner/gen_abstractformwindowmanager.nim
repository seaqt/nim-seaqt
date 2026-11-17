import ./qtdesigner_pkg

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


{.compile("gen_abstractformwindowmanager.cpp", QtDesignerCFlags).}


type QDesignerFormWindowManagerInterfaceActionEnum* = distinct cint
template CutAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 100
template CopyAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 101
template PasteAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 102
template DeleteAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 103
template SelectAllAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 104
template LowerAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 200
template RaiseAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 201
template UndoAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 300
template RedoAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 301
template HorizontalLayoutAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 400
template VerticalLayoutAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 401
template SplitHorizontalAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 402
template SplitVerticalAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 403
template GridLayoutAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 404
template FormLayoutAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 405
template BreakLayoutAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 406
template AdjustSizeAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 407
template SimplifyLayoutAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 408
template DefaultPreviewAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 500
template FormWindowSettingsDialogAction*(_: type QDesignerFormWindowManagerInterfaceActionEnum): untyped = 600


type QDesignerFormWindowManagerInterfaceActionGroupEnum* = distinct cint
template StyledPreviewActionGroup*(_: type QDesignerFormWindowManagerInterfaceActionGroupEnum): untyped = 100


import ./gen_abstractformwindowmanager_types
export gen_abstractformwindowmanager_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtGui/gen_qaction_types,
  ../QtGui/gen_qactiongroup_types,
  ../QtGui/gen_qpixmap_types,
  ../QtWidgets/gen_qwidget_types,
  ./gen_abstractdnditem_types,
  ./gen_abstractformwindow_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaction_types,
  gen_qactiongroup_types,
  gen_qpixmap_types,
  gen_qwidget_types,
  gen_abstractdnditem_types,
  gen_abstractformwindow_types

type cQDesignerFormWindowManagerInterface*{.exportc: "QDesignerFormWindowManagerInterface", incompleteStruct.} = object

proc fcQDesignerFormWindowManagerInterface_metaObject(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_metaObject".}
proc fcQDesignerFormWindowManagerInterface_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerFormWindowManagerInterface_metacast".}
proc fcQDesignerFormWindowManagerInterface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerFormWindowManagerInterface_metacall".}
proc fcQDesignerFormWindowManagerInterface_trS(s: cstring): struct_seaqt_string {.importc: "QDesignerFormWindowManagerInterface_tr_s".}
proc fcQDesignerFormWindowManagerInterface_action(self: pointer, action: cint): pointer {.importc: "QDesignerFormWindowManagerInterface_action".}
proc fcQDesignerFormWindowManagerInterface_actionGroup(self: pointer, actionGroup: cint): pointer {.importc: "QDesignerFormWindowManagerInterface_actionGroup".}
proc fcQDesignerFormWindowManagerInterface_actionCut(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionCut".}
proc fcQDesignerFormWindowManagerInterface_actionCopy(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionCopy".}
proc fcQDesignerFormWindowManagerInterface_actionPaste(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionPaste".}
proc fcQDesignerFormWindowManagerInterface_actionDelete(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionDelete".}
proc fcQDesignerFormWindowManagerInterface_actionSelectAll(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionSelectAll".}
proc fcQDesignerFormWindowManagerInterface_actionLower(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionLower".}
proc fcQDesignerFormWindowManagerInterface_actionRaise(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionRaise".}
proc fcQDesignerFormWindowManagerInterface_actionUndo(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionUndo".}
proc fcQDesignerFormWindowManagerInterface_actionRedo(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionRedo".}
proc fcQDesignerFormWindowManagerInterface_actionHorizontalLayout(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionHorizontalLayout".}
proc fcQDesignerFormWindowManagerInterface_actionVerticalLayout(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionVerticalLayout".}
proc fcQDesignerFormWindowManagerInterface_actionSplitHorizontal(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionSplitHorizontal".}
proc fcQDesignerFormWindowManagerInterface_actionSplitVertical(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionSplitVertical".}
proc fcQDesignerFormWindowManagerInterface_actionGridLayout(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionGridLayout".}
proc fcQDesignerFormWindowManagerInterface_actionFormLayout(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionFormLayout".}
proc fcQDesignerFormWindowManagerInterface_actionBreakLayout(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionBreakLayout".}
proc fcQDesignerFormWindowManagerInterface_actionAdjustSize(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionAdjustSize".}
proc fcQDesignerFormWindowManagerInterface_actionSimplifyLayout(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_actionSimplifyLayout".}
proc fcQDesignerFormWindowManagerInterface_activeFormWindow(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_activeFormWindow".}
proc fcQDesignerFormWindowManagerInterface_formWindowCount(self: pointer): cint {.importc: "QDesignerFormWindowManagerInterface_formWindowCount".}
proc fcQDesignerFormWindowManagerInterface_formWindow(self: pointer, index: cint): pointer {.importc: "QDesignerFormWindowManagerInterface_formWindow".}
proc fcQDesignerFormWindowManagerInterface_createFormWindow(self: pointer, parentWidget: pointer, flags: cint): pointer {.importc: "QDesignerFormWindowManagerInterface_createFormWindow".}
proc fcQDesignerFormWindowManagerInterface_dragItems(self: pointer, item_list: struct_seaqt_array): void {.importc: "QDesignerFormWindowManagerInterface_dragItems".}
proc fcQDesignerFormWindowManagerInterface_createPreviewPixmap(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_createPreviewPixmap".}
proc fcQDesignerFormWindowManagerInterface_formWindowAdded(self: pointer, formWindow: pointer): void {.importc: "QDesignerFormWindowManagerInterface_formWindowAdded".}
proc fcQDesignerFormWindowManagerInterface_connect_formWindowAdded(self: pointer, slot: int, callback: proc (slot: int, formWindow: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowManagerInterface_connect_formWindowAdded".}
proc fcQDesignerFormWindowManagerInterface_formWindowRemoved(self: pointer, formWindow: pointer): void {.importc: "QDesignerFormWindowManagerInterface_formWindowRemoved".}
proc fcQDesignerFormWindowManagerInterface_connect_formWindowRemoved(self: pointer, slot: int, callback: proc (slot: int, formWindow: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowManagerInterface_connect_formWindowRemoved".}
proc fcQDesignerFormWindowManagerInterface_activeFormWindowChanged(self: pointer, formWindow: pointer): void {.importc: "QDesignerFormWindowManagerInterface_activeFormWindowChanged".}
proc fcQDesignerFormWindowManagerInterface_connect_activeFormWindowChanged(self: pointer, slot: int, callback: proc (slot: int, formWindow: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowManagerInterface_connect_activeFormWindowChanged".}
proc fcQDesignerFormWindowManagerInterface_formWindowSettingsChanged(self: pointer, fw: pointer): void {.importc: "QDesignerFormWindowManagerInterface_formWindowSettingsChanged".}
proc fcQDesignerFormWindowManagerInterface_connect_formWindowSettingsChanged(self: pointer, slot: int, callback: proc (slot: int, fw: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerFormWindowManagerInterface_connect_formWindowSettingsChanged".}
proc fcQDesignerFormWindowManagerInterface_addFormWindow(self: pointer, formWindow: pointer): void {.importc: "QDesignerFormWindowManagerInterface_addFormWindow".}
proc fcQDesignerFormWindowManagerInterface_removeFormWindow(self: pointer, formWindow: pointer): void {.importc: "QDesignerFormWindowManagerInterface_removeFormWindow".}
proc fcQDesignerFormWindowManagerInterface_setActiveFormWindow(self: pointer, formWindow: pointer): void {.importc: "QDesignerFormWindowManagerInterface_setActiveFormWindow".}
proc fcQDesignerFormWindowManagerInterface_showPreview(self: pointer): void {.importc: "QDesignerFormWindowManagerInterface_showPreview".}
proc fcQDesignerFormWindowManagerInterface_closeAllPreviews(self: pointer): void {.importc: "QDesignerFormWindowManagerInterface_closeAllPreviews".}
proc fcQDesignerFormWindowManagerInterface_showPluginDialog(self: pointer): void {.importc: "QDesignerFormWindowManagerInterface_showPluginDialog".}
proc fcQDesignerFormWindowManagerInterface_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QDesignerFormWindowManagerInterface_tr_s_c".}
proc fcQDesignerFormWindowManagerInterface_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QDesignerFormWindowManagerInterface_tr_s_c_n".}
proc fcQDesignerFormWindowManagerInterface_protectedbase_sender(self: pointer): pointer {.importc: "QDesignerFormWindowManagerInterface_protectedbase_sender".}
proc fcQDesignerFormWindowManagerInterface_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDesignerFormWindowManagerInterface_protectedbase_senderSignalIndex".}
proc fcQDesignerFormWindowManagerInterface_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDesignerFormWindowManagerInterface_protectedbase_receivers".}
proc fcQDesignerFormWindowManagerInterface_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDesignerFormWindowManagerInterface_protectedbase_isSignalConnected".}
proc fcQDesignerFormWindowManagerInterface_staticMetaObject(): pointer {.importc: "QDesignerFormWindowManagerInterface_staticMetaObject".}

proc metaObject*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerFormWindowManagerInterface_metaObject(self.h), owned: false)

proc metacast*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, param1: cstring): pointer =
  fcQDesignerFormWindowManagerInterface_metacast(self.h, param1)

proc metacall*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerFormWindowManagerInterface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, s: cstring): string =
  let v_ms = fcQDesignerFormWindowManagerInterface_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc action*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, action: cint): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_action(self.h, cint(action)), owned: false)

proc actionGroup*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, actionGroup: cint): gen_qactiongroup_types.QActionGroup =
  gen_qactiongroup_types.QActionGroup(h: fcQDesignerFormWindowManagerInterface_actionGroup(self.h, cint(actionGroup)), owned: false)

proc actionCut*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionCut(self.h), owned: false)

proc actionCopy*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionCopy(self.h), owned: false)

proc actionPaste*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionPaste(self.h), owned: false)

proc actionDelete*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionDelete(self.h), owned: false)

proc actionSelectAll*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionSelectAll(self.h), owned: false)

proc actionLower*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionLower(self.h), owned: false)

proc actionRaise*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionRaise(self.h), owned: false)

proc actionUndo*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionUndo(self.h), owned: false)

proc actionRedo*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionRedo(self.h), owned: false)

proc actionHorizontalLayout*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionHorizontalLayout(self.h), owned: false)

proc actionVerticalLayout*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionVerticalLayout(self.h), owned: false)

proc actionSplitHorizontal*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionSplitHorizontal(self.h), owned: false)

proc actionSplitVertical*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionSplitVertical(self.h), owned: false)

proc actionGridLayout*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionGridLayout(self.h), owned: false)

proc actionFormLayout*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionFormLayout(self.h), owned: false)

proc actionBreakLayout*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionBreakLayout(self.h), owned: false)

proc actionAdjustSize*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionAdjustSize(self.h), owned: false)

proc actionSimplifyLayout*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDesignerFormWindowManagerInterface_actionSimplifyLayout(self.h), owned: false)

proc activeFormWindow*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_abstractformwindow_types.QDesignerFormWindowInterface =
  gen_abstractformwindow_types.QDesignerFormWindowInterface(h: fcQDesignerFormWindowManagerInterface_activeFormWindow(self.h), owned: false)

proc formWindowCount*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): cint =
  fcQDesignerFormWindowManagerInterface_formWindowCount(self.h)

proc formWindow*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, index: cint): gen_abstractformwindow_types.QDesignerFormWindowInterface =
  gen_abstractformwindow_types.QDesignerFormWindowInterface(h: fcQDesignerFormWindowManagerInterface_formWindow(self.h, index), owned: false)

proc createFormWindow*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, parentWidget: gen_qwidget_types.QWidget, flags: cint): gen_abstractformwindow_types.QDesignerFormWindowInterface =
  gen_abstractformwindow_types.QDesignerFormWindowInterface(h: fcQDesignerFormWindowManagerInterface_createFormWindow(self.h, parentWidget.h, cint(flags)), owned: false)

proc dragItems*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, item_list: openArray[gen_abstractdnditem_types.QDesignerDnDItemInterface]): void =
  var item_list_CArray = newSeq[pointer](len(item_list))
  for i in 0..<len(item_list):
    item_list_CArray[i] = item_list[i].h

  fcQDesignerFormWindowManagerInterface_dragItems(self.h, struct_seaqt_array(len: csize_t(len(item_list)), data: if len(item_list) == 0: nil else: addr(item_list_CArray[0])))

proc createPreviewPixmap*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQDesignerFormWindowManagerInterface_createPreviewPixmap(self.h), owned: true)

proc formWindowAdded*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerFormWindowManagerInterface_formWindowAdded(self.h, formWindow.h)

type QDesignerFormWindowManagerInterfaceformWindowAddedSlot* = proc(formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface)
proc fcQDesignerFormWindowManagerInterface_slot_callback_formWindowAdded(slot: int, formWindow: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowManagerInterfaceformWindowAddedSlot](cast[pointer](slot))
  let slotval1 = gen_abstractformwindow_types.QDesignerFormWindowInterface(h: formWindow, owned: false)

  nimfunc[](slotval1)

proc fcQDesignerFormWindowManagerInterface_slot_callback_formWindowAdded_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowManagerInterfaceformWindowAddedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFormWindowAdded*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, slot: QDesignerFormWindowManagerInterfaceformWindowAddedSlot) =
  var tmp = new QDesignerFormWindowManagerInterfaceformWindowAddedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowManagerInterface_connect_formWindowAdded(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowManagerInterface_slot_callback_formWindowAdded, fcQDesignerFormWindowManagerInterface_slot_callback_formWindowAdded_release)

proc formWindowRemoved*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerFormWindowManagerInterface_formWindowRemoved(self.h, formWindow.h)

type QDesignerFormWindowManagerInterfaceformWindowRemovedSlot* = proc(formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface)
proc fcQDesignerFormWindowManagerInterface_slot_callback_formWindowRemoved(slot: int, formWindow: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowManagerInterfaceformWindowRemovedSlot](cast[pointer](slot))
  let slotval1 = gen_abstractformwindow_types.QDesignerFormWindowInterface(h: formWindow, owned: false)

  nimfunc[](slotval1)

proc fcQDesignerFormWindowManagerInterface_slot_callback_formWindowRemoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowManagerInterfaceformWindowRemovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFormWindowRemoved*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, slot: QDesignerFormWindowManagerInterfaceformWindowRemovedSlot) =
  var tmp = new QDesignerFormWindowManagerInterfaceformWindowRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowManagerInterface_connect_formWindowRemoved(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowManagerInterface_slot_callback_formWindowRemoved, fcQDesignerFormWindowManagerInterface_slot_callback_formWindowRemoved_release)

proc activeFormWindowChanged*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerFormWindowManagerInterface_activeFormWindowChanged(self.h, formWindow.h)

type QDesignerFormWindowManagerInterfaceactiveFormWindowChangedSlot* = proc(formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface)
proc fcQDesignerFormWindowManagerInterface_slot_callback_activeFormWindowChanged(slot: int, formWindow: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowManagerInterfaceactiveFormWindowChangedSlot](cast[pointer](slot))
  let slotval1 = gen_abstractformwindow_types.QDesignerFormWindowInterface(h: formWindow, owned: false)

  nimfunc[](slotval1)

proc fcQDesignerFormWindowManagerInterface_slot_callback_activeFormWindowChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowManagerInterfaceactiveFormWindowChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onActiveFormWindowChanged*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, slot: QDesignerFormWindowManagerInterfaceactiveFormWindowChangedSlot) =
  var tmp = new QDesignerFormWindowManagerInterfaceactiveFormWindowChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowManagerInterface_connect_activeFormWindowChanged(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowManagerInterface_slot_callback_activeFormWindowChanged, fcQDesignerFormWindowManagerInterface_slot_callback_activeFormWindowChanged_release)

proc formWindowSettingsChanged*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, fw: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerFormWindowManagerInterface_formWindowSettingsChanged(self.h, fw.h)

type QDesignerFormWindowManagerInterfaceformWindowSettingsChangedSlot* = proc(fw: gen_abstractformwindow_types.QDesignerFormWindowInterface)
proc fcQDesignerFormWindowManagerInterface_slot_callback_formWindowSettingsChanged(slot: int, fw: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerFormWindowManagerInterfaceformWindowSettingsChangedSlot](cast[pointer](slot))
  let slotval1 = gen_abstractformwindow_types.QDesignerFormWindowInterface(h: fw, owned: false)

  nimfunc[](slotval1)

proc fcQDesignerFormWindowManagerInterface_slot_callback_formWindowSettingsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerFormWindowManagerInterfaceformWindowSettingsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFormWindowSettingsChanged*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, slot: QDesignerFormWindowManagerInterfaceformWindowSettingsChangedSlot) =
  var tmp = new QDesignerFormWindowManagerInterfaceformWindowSettingsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerFormWindowManagerInterface_connect_formWindowSettingsChanged(self.h, cast[int](addr tmp[]), fcQDesignerFormWindowManagerInterface_slot_callback_formWindowSettingsChanged, fcQDesignerFormWindowManagerInterface_slot_callback_formWindowSettingsChanged_release)

proc addFormWindow*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerFormWindowManagerInterface_addFormWindow(self.h, formWindow.h)

proc removeFormWindow*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerFormWindowManagerInterface_removeFormWindow(self.h, formWindow.h)

proc setActiveFormWindow*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerFormWindowManagerInterface_setActiveFormWindow(self.h, formWindow.h)

proc showPreview*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): void =
  fcQDesignerFormWindowManagerInterface_showPreview(self.h)

proc closeAllPreviews*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): void =
  fcQDesignerFormWindowManagerInterface_closeAllPreviews(self.h)

proc showPluginDialog*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): void =
  fcQDesignerFormWindowManagerInterface_showPluginDialog(self.h)

proc tr*(_: type gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, s: cstring, c: cstring): string =
  let v_ms = fcQDesignerFormWindowManagerInterface_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesignerFormWindowManagerInterface_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDesignerFormWindowManagerInterface_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): cint =
  fcQDesignerFormWindowManagerInterface_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, signal: cstring): cint =
  fcQDesignerFormWindowManagerInterface_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDesignerFormWindowManagerInterface_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_abstractformwindowmanager_types.QDesignerFormWindowManagerInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerFormWindowManagerInterface_staticMetaObject())
