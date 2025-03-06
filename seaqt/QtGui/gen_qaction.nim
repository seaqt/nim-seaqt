import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qaction.cpp", cflags).}


type QActionMenuRoleEnum* = distinct cint
template NoRole*(_: type QActionMenuRoleEnum): untyped = 0
template TextHeuristicRole*(_: type QActionMenuRoleEnum): untyped = 1
template ApplicationSpecificRole*(_: type QActionMenuRoleEnum): untyped = 2
template AboutQtRole*(_: type QActionMenuRoleEnum): untyped = 3
template AboutRole*(_: type QActionMenuRoleEnum): untyped = 4
template PreferencesRole*(_: type QActionMenuRoleEnum): untyped = 5
template QuitRole*(_: type QActionMenuRoleEnum): untyped = 6


type QActionPriorityEnum* = distinct cint
template LowPriority*(_: type QActionPriorityEnum): untyped = 0
template NormalPriority*(_: type QActionPriorityEnum): untyped = 128
template HighPriority*(_: type QActionPriorityEnum): untyped = 256


type QActionActionEventEnum* = distinct cint
template Trigger*(_: type QActionActionEventEnum): untyped = 0
template Hover*(_: type QActionActionEventEnum): untyped = 1


import ./gen_qaction_types
export gen_qaction_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qactiongroup_types,
  ./gen_qfont_types,
  ./gen_qicon_types,
  ./gen_qkeysequence_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qactiongroup_types,
  gen_qfont_types,
  gen_qicon_types,
  gen_qkeysequence_types

type cQAction*{.exportc: "QAction", incompleteStruct.} = object

proc fcQAction_metaObject(self: pointer, ): pointer {.importc: "QAction_metaObject".}
proc fcQAction_metacast(self: pointer, param1: cstring): pointer {.importc: "QAction_metacast".}
proc fcQAction_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAction_metacall".}
proc fcQAction_tr(s: cstring): struct_miqt_string {.importc: "QAction_tr".}
proc fcQAction_associatedObjects(self: pointer, ): struct_miqt_array {.importc: "QAction_associatedObjects".}
proc fcQAction_setActionGroup(self: pointer, group: pointer): void {.importc: "QAction_setActionGroup".}
proc fcQAction_actionGroup(self: pointer, ): pointer {.importc: "QAction_actionGroup".}
proc fcQAction_setIcon(self: pointer, icon: pointer): void {.importc: "QAction_setIcon".}
proc fcQAction_icon(self: pointer, ): pointer {.importc: "QAction_icon".}
proc fcQAction_setText(self: pointer, text: struct_miqt_string): void {.importc: "QAction_setText".}
proc fcQAction_text(self: pointer, ): struct_miqt_string {.importc: "QAction_text".}
proc fcQAction_setIconText(self: pointer, text: struct_miqt_string): void {.importc: "QAction_setIconText".}
proc fcQAction_iconText(self: pointer, ): struct_miqt_string {.importc: "QAction_iconText".}
proc fcQAction_setToolTip(self: pointer, tip: struct_miqt_string): void {.importc: "QAction_setToolTip".}
proc fcQAction_toolTip(self: pointer, ): struct_miqt_string {.importc: "QAction_toolTip".}
proc fcQAction_setStatusTip(self: pointer, statusTip: struct_miqt_string): void {.importc: "QAction_setStatusTip".}
proc fcQAction_statusTip(self: pointer, ): struct_miqt_string {.importc: "QAction_statusTip".}
proc fcQAction_setWhatsThis(self: pointer, what: struct_miqt_string): void {.importc: "QAction_setWhatsThis".}
proc fcQAction_whatsThis(self: pointer, ): struct_miqt_string {.importc: "QAction_whatsThis".}
proc fcQAction_setPriority(self: pointer, priority: cint): void {.importc: "QAction_setPriority".}
proc fcQAction_priority(self: pointer, ): cint {.importc: "QAction_priority".}
proc fcQAction_setSeparator(self: pointer, b: bool): void {.importc: "QAction_setSeparator".}
proc fcQAction_isSeparator(self: pointer, ): bool {.importc: "QAction_isSeparator".}
proc fcQAction_setShortcut(self: pointer, shortcut: pointer): void {.importc: "QAction_setShortcut".}
proc fcQAction_shortcut(self: pointer, ): pointer {.importc: "QAction_shortcut".}
proc fcQAction_setShortcuts(self: pointer, shortcuts: struct_miqt_array): void {.importc: "QAction_setShortcuts".}
proc fcQAction_setShortcutsWithShortcuts(self: pointer, shortcuts: cint): void {.importc: "QAction_setShortcutsWithShortcuts".}
proc fcQAction_shortcuts(self: pointer, ): struct_miqt_array {.importc: "QAction_shortcuts".}
proc fcQAction_setShortcutContext(self: pointer, context: cint): void {.importc: "QAction_setShortcutContext".}
proc fcQAction_shortcutContext(self: pointer, ): cint {.importc: "QAction_shortcutContext".}
proc fcQAction_setAutoRepeat(self: pointer, autoRepeat: bool): void {.importc: "QAction_setAutoRepeat".}
proc fcQAction_autoRepeat(self: pointer, ): bool {.importc: "QAction_autoRepeat".}
proc fcQAction_setFont(self: pointer, font: pointer): void {.importc: "QAction_setFont".}
proc fcQAction_font(self: pointer, ): pointer {.importc: "QAction_font".}
proc fcQAction_setCheckable(self: pointer, checkable: bool): void {.importc: "QAction_setCheckable".}
proc fcQAction_isCheckable(self: pointer, ): bool {.importc: "QAction_isCheckable".}
proc fcQAction_data(self: pointer, ): pointer {.importc: "QAction_data".}
proc fcQAction_setData(self: pointer, varVal: pointer): void {.importc: "QAction_setData".}
proc fcQAction_isChecked(self: pointer, ): bool {.importc: "QAction_isChecked".}
proc fcQAction_isEnabled(self: pointer, ): bool {.importc: "QAction_isEnabled".}
proc fcQAction_isVisible(self: pointer, ): bool {.importc: "QAction_isVisible".}
proc fcQAction_activate(self: pointer, event: cint): void {.importc: "QAction_activate".}
proc fcQAction_setMenuRole(self: pointer, menuRole: cint): void {.importc: "QAction_setMenuRole".}
proc fcQAction_menuRole(self: pointer, ): cint {.importc: "QAction_menuRole".}
proc fcQAction_setIconVisibleInMenu(self: pointer, visible: bool): void {.importc: "QAction_setIconVisibleInMenu".}
proc fcQAction_isIconVisibleInMenu(self: pointer, ): bool {.importc: "QAction_isIconVisibleInMenu".}
proc fcQAction_setShortcutVisibleInContextMenu(self: pointer, show: bool): void {.importc: "QAction_setShortcutVisibleInContextMenu".}
proc fcQAction_isShortcutVisibleInContextMenu(self: pointer, ): bool {.importc: "QAction_isShortcutVisibleInContextMenu".}
proc fcQAction_showStatusText(self: pointer, ): bool {.importc: "QAction_showStatusText".}
proc fcQAction_trigger(self: pointer, ): void {.importc: "QAction_trigger".}
proc fcQAction_hover(self: pointer, ): void {.importc: "QAction_hover".}
proc fcQAction_setChecked(self: pointer, checked: bool): void {.importc: "QAction_setChecked".}
proc fcQAction_toggle(self: pointer, ): void {.importc: "QAction_toggle".}
proc fcQAction_setEnabled(self: pointer, enabled: bool): void {.importc: "QAction_setEnabled".}
proc fcQAction_resetEnabled(self: pointer, ): void {.importc: "QAction_resetEnabled".}
proc fcQAction_setDisabled(self: pointer, b: bool): void {.importc: "QAction_setDisabled".}
proc fcQAction_setVisible(self: pointer, visible: bool): void {.importc: "QAction_setVisible".}
proc fcQAction_changed(self: pointer, ): void {.importc: "QAction_changed".}
proc fcQAction_connect_changed(self: pointer, slot: int) {.importc: "QAction_connect_changed".}
proc fcQAction_enabledChanged(self: pointer, enabled: bool): void {.importc: "QAction_enabledChanged".}
proc fcQAction_connect_enabledChanged(self: pointer, slot: int) {.importc: "QAction_connect_enabledChanged".}
proc fcQAction_checkableChanged(self: pointer, checkable: bool): void {.importc: "QAction_checkableChanged".}
proc fcQAction_connect_checkableChanged(self: pointer, slot: int) {.importc: "QAction_connect_checkableChanged".}
proc fcQAction_visibleChanged(self: pointer, ): void {.importc: "QAction_visibleChanged".}
proc fcQAction_connect_visibleChanged(self: pointer, slot: int) {.importc: "QAction_connect_visibleChanged".}
proc fcQAction_triggered(self: pointer, ): void {.importc: "QAction_triggered".}
proc fcQAction_connect_triggered(self: pointer, slot: int) {.importc: "QAction_connect_triggered".}
proc fcQAction_hovered(self: pointer, ): void {.importc: "QAction_hovered".}
proc fcQAction_connect_hovered(self: pointer, slot: int) {.importc: "QAction_connect_hovered".}
proc fcQAction_toggled(self: pointer, param1: bool): void {.importc: "QAction_toggled".}
proc fcQAction_connect_toggled(self: pointer, slot: int) {.importc: "QAction_connect_toggled".}
proc fcQAction_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAction_tr2".}
proc fcQAction_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAction_tr3".}
proc fcQAction_showStatusText1(self: pointer, objectVal: pointer): bool {.importc: "QAction_showStatusText1".}
proc fcQAction_triggered1(self: pointer, checked: bool): void {.importc: "QAction_triggered1".}
proc fcQAction_connect_triggered1(self: pointer, slot: int) {.importc: "QAction_connect_triggered1".}
type cQActionVTable = object
  destructor*: proc(vtbl: ptr cQActionVTable, self: ptr cQAction) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAction_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAction_virtualbase_metaObject".}
proc fcQAction_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAction_virtualbase_metacast".}
proc fcQAction_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAction_virtualbase_metacall".}
proc fcQAction_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QAction_virtualbase_event".}
proc fcQAction_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAction_virtualbase_eventFilter".}
proc fcQAction_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAction_virtualbase_timerEvent".}
proc fcQAction_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAction_virtualbase_childEvent".}
proc fcQAction_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAction_virtualbase_customEvent".}
proc fcQAction_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAction_virtualbase_connectNotify".}
proc fcQAction_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAction_virtualbase_disconnectNotify".}
proc fcQAction_new(vtbl: pointer, ): ptr cQAction {.importc: "QAction_new".}
proc fcQAction_new2(vtbl: pointer, text: struct_miqt_string): ptr cQAction {.importc: "QAction_new2".}
proc fcQAction_new3(vtbl: pointer, icon: pointer, text: struct_miqt_string): ptr cQAction {.importc: "QAction_new3".}
proc fcQAction_new4(vtbl: pointer, parent: pointer): ptr cQAction {.importc: "QAction_new4".}
proc fcQAction_new5(vtbl: pointer, text: struct_miqt_string, parent: pointer): ptr cQAction {.importc: "QAction_new5".}
proc fcQAction_new6(vtbl: pointer, icon: pointer, text: struct_miqt_string, parent: pointer): ptr cQAction {.importc: "QAction_new6".}
proc fcQAction_staticMetaObject(): pointer {.importc: "QAction_staticMetaObject".}
proc fcQAction_delete(self: pointer) {.importc: "QAction_delete".}

proc metaObject*(self: gen_qaction_types.QAction, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAction_metaObject(self.h))

proc metacast*(self: gen_qaction_types.QAction, param1: cstring): pointer =
  fcQAction_metacast(self.h, param1)

proc metacall*(self: gen_qaction_types.QAction, param1: cint, param2: cint, param3: pointer): cint =
  fcQAction_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaction_types.QAction, s: cstring): string =
  let v_ms = fcQAction_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc associatedObjects*(self: gen_qaction_types.QAction, ): seq[gen_qobject_types.QObject] =
  var v_ma = fcQAction_associatedObjects(self.h)
  var vx_ret = newSeq[gen_qobject_types.QObject](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qobject_types.QObject(h: v_outCast[i])
  vx_ret

proc setActionGroup*(self: gen_qaction_types.QAction, group: gen_qactiongroup_types.QActionGroup): void =
  fcQAction_setActionGroup(self.h, group.h)

proc actionGroup*(self: gen_qaction_types.QAction, ): gen_qactiongroup_types.QActionGroup =
  gen_qactiongroup_types.QActionGroup(h: fcQAction_actionGroup(self.h))

proc setIcon*(self: gen_qaction_types.QAction, icon: gen_qicon_types.QIcon): void =
  fcQAction_setIcon(self.h, icon.h)

proc icon*(self: gen_qaction_types.QAction, ): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQAction_icon(self.h))

proc setText*(self: gen_qaction_types.QAction, text: string): void =
  fcQAction_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc text*(self: gen_qaction_types.QAction, ): string =
  let v_ms = fcQAction_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setIconText*(self: gen_qaction_types.QAction, text: string): void =
  fcQAction_setIconText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc iconText*(self: gen_qaction_types.QAction, ): string =
  let v_ms = fcQAction_iconText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: gen_qaction_types.QAction, tip: string): void =
  fcQAction_setToolTip(self.h, struct_miqt_string(data: tip, len: csize_t(len(tip))))

proc toolTip*(self: gen_qaction_types.QAction, ): string =
  let v_ms = fcQAction_toolTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStatusTip*(self: gen_qaction_types.QAction, statusTip: string): void =
  fcQAction_setStatusTip(self.h, struct_miqt_string(data: statusTip, len: csize_t(len(statusTip))))

proc statusTip*(self: gen_qaction_types.QAction, ): string =
  let v_ms = fcQAction_statusTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: gen_qaction_types.QAction, what: string): void =
  fcQAction_setWhatsThis(self.h, struct_miqt_string(data: what, len: csize_t(len(what))))

proc whatsThis*(self: gen_qaction_types.QAction, ): string =
  let v_ms = fcQAction_whatsThis(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPriority*(self: gen_qaction_types.QAction, priority: cint): void =
  fcQAction_setPriority(self.h, cint(priority))

proc priority*(self: gen_qaction_types.QAction, ): cint =
  cint(fcQAction_priority(self.h))

proc setSeparator*(self: gen_qaction_types.QAction, b: bool): void =
  fcQAction_setSeparator(self.h, b)

proc isSeparator*(self: gen_qaction_types.QAction, ): bool =
  fcQAction_isSeparator(self.h)

proc setShortcut*(self: gen_qaction_types.QAction, shortcut: gen_qkeysequence_types.QKeySequence): void =
  fcQAction_setShortcut(self.h, shortcut.h)

proc shortcut*(self: gen_qaction_types.QAction, ): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQAction_shortcut(self.h))

proc setShortcuts*(self: gen_qaction_types.QAction, shortcuts: seq[gen_qkeysequence_types.QKeySequence]): void =
  var shortcuts_CArray = newSeq[pointer](len(shortcuts))
  for i in 0..<len(shortcuts):
    shortcuts_CArray[i] = shortcuts[i].h

  fcQAction_setShortcuts(self.h, struct_miqt_array(len: csize_t(len(shortcuts)), data: if len(shortcuts) == 0: nil else: addr(shortcuts_CArray[0])))

proc setShortcuts*(self: gen_qaction_types.QAction, shortcuts: cint): void =
  fcQAction_setShortcutsWithShortcuts(self.h, cint(shortcuts))

proc shortcuts*(self: gen_qaction_types.QAction, ): seq[gen_qkeysequence_types.QKeySequence] =
  var v_ma = fcQAction_shortcuts(self.h)
  var vx_ret = newSeq[gen_qkeysequence_types.QKeySequence](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qkeysequence_types.QKeySequence(h: v_outCast[i])
  vx_ret

proc setShortcutContext*(self: gen_qaction_types.QAction, context: cint): void =
  fcQAction_setShortcutContext(self.h, cint(context))

proc shortcutContext*(self: gen_qaction_types.QAction, ): cint =
  cint(fcQAction_shortcutContext(self.h))

proc setAutoRepeat*(self: gen_qaction_types.QAction, autoRepeat: bool): void =
  fcQAction_setAutoRepeat(self.h, autoRepeat)

proc autoRepeat*(self: gen_qaction_types.QAction, ): bool =
  fcQAction_autoRepeat(self.h)

proc setFont*(self: gen_qaction_types.QAction, font: gen_qfont_types.QFont): void =
  fcQAction_setFont(self.h, font.h)

proc font*(self: gen_qaction_types.QAction, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQAction_font(self.h))

proc setCheckable*(self: gen_qaction_types.QAction, checkable: bool): void =
  fcQAction_setCheckable(self.h, checkable)

proc isCheckable*(self: gen_qaction_types.QAction, ): bool =
  fcQAction_isCheckable(self.h)

proc data*(self: gen_qaction_types.QAction, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAction_data(self.h))

proc setData*(self: gen_qaction_types.QAction, varVal: gen_qvariant_types.QVariant): void =
  fcQAction_setData(self.h, varVal.h)

proc isChecked*(self: gen_qaction_types.QAction, ): bool =
  fcQAction_isChecked(self.h)

proc isEnabled*(self: gen_qaction_types.QAction, ): bool =
  fcQAction_isEnabled(self.h)

proc isVisible*(self: gen_qaction_types.QAction, ): bool =
  fcQAction_isVisible(self.h)

proc activate*(self: gen_qaction_types.QAction, event: cint): void =
  fcQAction_activate(self.h, cint(event))

proc setMenuRole*(self: gen_qaction_types.QAction, menuRole: cint): void =
  fcQAction_setMenuRole(self.h, cint(menuRole))

proc menuRole*(self: gen_qaction_types.QAction, ): cint =
  cint(fcQAction_menuRole(self.h))

proc setIconVisibleInMenu*(self: gen_qaction_types.QAction, visible: bool): void =
  fcQAction_setIconVisibleInMenu(self.h, visible)

proc isIconVisibleInMenu*(self: gen_qaction_types.QAction, ): bool =
  fcQAction_isIconVisibleInMenu(self.h)

proc setShortcutVisibleInContextMenu*(self: gen_qaction_types.QAction, show: bool): void =
  fcQAction_setShortcutVisibleInContextMenu(self.h, show)

proc isShortcutVisibleInContextMenu*(self: gen_qaction_types.QAction, ): bool =
  fcQAction_isShortcutVisibleInContextMenu(self.h)

proc showStatusText*(self: gen_qaction_types.QAction, ): bool =
  fcQAction_showStatusText(self.h)

proc trigger*(self: gen_qaction_types.QAction, ): void =
  fcQAction_trigger(self.h)

proc hover*(self: gen_qaction_types.QAction, ): void =
  fcQAction_hover(self.h)

proc setChecked*(self: gen_qaction_types.QAction, checked: bool): void =
  fcQAction_setChecked(self.h, checked)

proc toggle*(self: gen_qaction_types.QAction, ): void =
  fcQAction_toggle(self.h)

proc setEnabled*(self: gen_qaction_types.QAction, enabled: bool): void =
  fcQAction_setEnabled(self.h, enabled)

proc resetEnabled*(self: gen_qaction_types.QAction, ): void =
  fcQAction_resetEnabled(self.h)

proc setDisabled*(self: gen_qaction_types.QAction, b: bool): void =
  fcQAction_setDisabled(self.h, b)

proc setVisible*(self: gen_qaction_types.QAction, visible: bool): void =
  fcQAction_setVisible(self.h, visible)

proc changed*(self: gen_qaction_types.QAction, ): void =
  fcQAction_changed(self.h)

type QActionchangedSlot* = proc()
proc miqt_exec_callback_cQAction_changed(slot: int) {.exportc: "miqt_exec_callback_QAction_changed".} =
  let nimfunc = cast[ptr QActionchangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onchanged*(self: gen_qaction_types.QAction, slot: QActionchangedSlot) =
  var tmp = new QActionchangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_changed(self.h, cast[int](addr tmp[]))

proc enabledChanged*(self: gen_qaction_types.QAction, enabled: bool): void =
  fcQAction_enabledChanged(self.h, enabled)

type QActionenabledChangedSlot* = proc(enabled: bool)
proc miqt_exec_callback_cQAction_enabledChanged(slot: int, enabled: bool) {.exportc: "miqt_exec_callback_QAction_enabledChanged".} =
  let nimfunc = cast[ptr QActionenabledChangedSlot](cast[pointer](slot))
  let slotval1 = enabled

  nimfunc[](slotval1)

proc onenabledChanged*(self: gen_qaction_types.QAction, slot: QActionenabledChangedSlot) =
  var tmp = new QActionenabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_enabledChanged(self.h, cast[int](addr tmp[]))

proc checkableChanged*(self: gen_qaction_types.QAction, checkable: bool): void =
  fcQAction_checkableChanged(self.h, checkable)

type QActioncheckableChangedSlot* = proc(checkable: bool)
proc miqt_exec_callback_cQAction_checkableChanged(slot: int, checkable: bool) {.exportc: "miqt_exec_callback_QAction_checkableChanged".} =
  let nimfunc = cast[ptr QActioncheckableChangedSlot](cast[pointer](slot))
  let slotval1 = checkable

  nimfunc[](slotval1)

proc oncheckableChanged*(self: gen_qaction_types.QAction, slot: QActioncheckableChangedSlot) =
  var tmp = new QActioncheckableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_checkableChanged(self.h, cast[int](addr tmp[]))

proc visibleChanged*(self: gen_qaction_types.QAction, ): void =
  fcQAction_visibleChanged(self.h)

type QActionvisibleChangedSlot* = proc()
proc miqt_exec_callback_cQAction_visibleChanged(slot: int) {.exportc: "miqt_exec_callback_QAction_visibleChanged".} =
  let nimfunc = cast[ptr QActionvisibleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onvisibleChanged*(self: gen_qaction_types.QAction, slot: QActionvisibleChangedSlot) =
  var tmp = new QActionvisibleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_visibleChanged(self.h, cast[int](addr tmp[]))

proc triggered*(self: gen_qaction_types.QAction, ): void =
  fcQAction_triggered(self.h)

type QActiontriggeredSlot* = proc()
proc miqt_exec_callback_cQAction_triggered(slot: int) {.exportc: "miqt_exec_callback_QAction_triggered".} =
  let nimfunc = cast[ptr QActiontriggeredSlot](cast[pointer](slot))
  nimfunc[]()

proc ontriggered*(self: gen_qaction_types.QAction, slot: QActiontriggeredSlot) =
  var tmp = new QActiontriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_triggered(self.h, cast[int](addr tmp[]))

proc hovered*(self: gen_qaction_types.QAction, ): void =
  fcQAction_hovered(self.h)

type QActionhoveredSlot* = proc()
proc miqt_exec_callback_cQAction_hovered(slot: int) {.exportc: "miqt_exec_callback_QAction_hovered".} =
  let nimfunc = cast[ptr QActionhoveredSlot](cast[pointer](slot))
  nimfunc[]()

proc onhovered*(self: gen_qaction_types.QAction, slot: QActionhoveredSlot) =
  var tmp = new QActionhoveredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_hovered(self.h, cast[int](addr tmp[]))

proc toggled*(self: gen_qaction_types.QAction, param1: bool): void =
  fcQAction_toggled(self.h, param1)

type QActiontoggledSlot* = proc(param1: bool)
proc miqt_exec_callback_cQAction_toggled(slot: int, param1: bool) {.exportc: "miqt_exec_callback_QAction_toggled".} =
  let nimfunc = cast[ptr QActiontoggledSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc ontoggled*(self: gen_qaction_types.QAction, slot: QActiontoggledSlot) =
  var tmp = new QActiontoggledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_toggled(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qaction_types.QAction, s: cstring, c: cstring): string =
  let v_ms = fcQAction_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaction_types.QAction, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAction_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc showStatusText*(self: gen_qaction_types.QAction, objectVal: gen_qobject_types.QObject): bool =
  fcQAction_showStatusText1(self.h, objectVal.h)

proc triggered*(self: gen_qaction_types.QAction, checked: bool): void =
  fcQAction_triggered1(self.h, checked)

type QActiontriggered1Slot* = proc(checked: bool)
proc miqt_exec_callback_cQAction_triggered1(slot: int, checked: bool) {.exportc: "miqt_exec_callback_QAction_triggered1".} =
  let nimfunc = cast[ptr QActiontriggered1Slot](cast[pointer](slot))
  let slotval1 = checked

  nimfunc[](slotval1)

proc ontriggered*(self: gen_qaction_types.QAction, slot: QActiontriggered1Slot) =
  var tmp = new QActiontriggered1Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_triggered1(self.h, cast[int](addr tmp[]))

type QActionmetaObjectProc* = proc(self: QAction): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QActionmetacastProc* = proc(self: QAction, param1: cstring): pointer {.raises: [], gcsafe.}
type QActionmetacallProc* = proc(self: QAction, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QActioneventProc* = proc(self: QAction, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QActioneventFilterProc* = proc(self: QAction, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QActiontimerEventProc* = proc(self: QAction, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QActionchildEventProc* = proc(self: QAction, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QActioncustomEventProc* = proc(self: QAction, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QActionconnectNotifyProc* = proc(self: QAction, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QActiondisconnectNotifyProc* = proc(self: QAction, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QActionVTable* = object
  vtbl: cQActionVTable
  metaObject*: QActionmetaObjectProc
  metacast*: QActionmetacastProc
  metacall*: QActionmetacallProc
  event*: QActioneventProc
  eventFilter*: QActioneventFilterProc
  timerEvent*: QActiontimerEventProc
  childEvent*: QActionchildEventProc
  customEvent*: QActioncustomEventProc
  connectNotify*: QActionconnectNotifyProc
  disconnectNotify*: QActiondisconnectNotifyProc
proc QActionmetaObject*(self: gen_qaction_types.QAction, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAction_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAction_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](vtbl)
  let self = QAction(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QActionmetacast*(self: gen_qaction_types.QAction, param1: cstring): pointer =
  fcQAction_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAction_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](vtbl)
  let self = QAction(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QActionmetacall*(self: gen_qaction_types.QAction, param1: cint, param2: cint, param3: pointer): cint =
  fcQAction_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAction_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](vtbl)
  let self = QAction(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QActionevent*(self: gen_qaction_types.QAction, param1: gen_qcoreevent_types.QEvent): bool =
  fcQAction_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQAction_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](vtbl)
  let self = QAction(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QActioneventFilter*(self: gen_qaction_types.QAction, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAction_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAction_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](vtbl)
  let self = QAction(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QActiontimerEvent*(self: gen_qaction_types.QAction, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAction_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAction_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](vtbl)
  let self = QAction(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QActionchildEvent*(self: gen_qaction_types.QAction, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAction_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAction_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](vtbl)
  let self = QAction(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QActioncustomEvent*(self: gen_qaction_types.QAction, event: gen_qcoreevent_types.QEvent): void =
  fcQAction_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAction_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](vtbl)
  let self = QAction(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QActionconnectNotify*(self: gen_qaction_types.QAction, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAction_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAction_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](vtbl)
  let self = QAction(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QActiondisconnectNotify*(self: gen_qaction_types.QAction, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAction_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAction_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](vtbl)
  let self = QAction(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qaction_types.QAction,
    vtbl: ref QActionVTable = nil): gen_qaction_types.QAction =
  let vtbl = if vtbl == nil: new QActionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQActionVTable, _: ptr cQAction) {.cdecl.} =
    let vtbl = cast[ref QActionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAction_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAction_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAction_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAction_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAction_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAction_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAction_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAction_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAction_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAction_disconnectNotify
  gen_qaction_types.QAction(h: fcQAction_new(addr(vtbl[]), ))

proc create*(T: type gen_qaction_types.QAction,
    text: string,
    vtbl: ref QActionVTable = nil): gen_qaction_types.QAction =
  let vtbl = if vtbl == nil: new QActionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQActionVTable, _: ptr cQAction) {.cdecl.} =
    let vtbl = cast[ref QActionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAction_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAction_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAction_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAction_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAction_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAction_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAction_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAction_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAction_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAction_disconnectNotify
  gen_qaction_types.QAction(h: fcQAction_new2(addr(vtbl[]), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qaction_types.QAction,
    icon: gen_qicon_types.QIcon, text: string,
    vtbl: ref QActionVTable = nil): gen_qaction_types.QAction =
  let vtbl = if vtbl == nil: new QActionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQActionVTable, _: ptr cQAction) {.cdecl.} =
    let vtbl = cast[ref QActionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAction_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAction_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAction_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAction_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAction_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAction_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAction_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAction_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAction_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAction_disconnectNotify
  gen_qaction_types.QAction(h: fcQAction_new3(addr(vtbl[]), icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qaction_types.QAction,
    parent: gen_qobject_types.QObject,
    vtbl: ref QActionVTable = nil): gen_qaction_types.QAction =
  let vtbl = if vtbl == nil: new QActionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQActionVTable, _: ptr cQAction) {.cdecl.} =
    let vtbl = cast[ref QActionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAction_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAction_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAction_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAction_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAction_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAction_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAction_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAction_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAction_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAction_disconnectNotify
  gen_qaction_types.QAction(h: fcQAction_new4(addr(vtbl[]), parent.h))

proc create*(T: type gen_qaction_types.QAction,
    text: string, parent: gen_qobject_types.QObject,
    vtbl: ref QActionVTable = nil): gen_qaction_types.QAction =
  let vtbl = if vtbl == nil: new QActionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQActionVTable, _: ptr cQAction) {.cdecl.} =
    let vtbl = cast[ref QActionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAction_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAction_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAction_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAction_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAction_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAction_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAction_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAction_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAction_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAction_disconnectNotify
  gen_qaction_types.QAction(h: fcQAction_new5(addr(vtbl[]), struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc create*(T: type gen_qaction_types.QAction,
    icon: gen_qicon_types.QIcon, text: string, parent: gen_qobject_types.QObject,
    vtbl: ref QActionVTable = nil): gen_qaction_types.QAction =
  let vtbl = if vtbl == nil: new QActionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQActionVTable, _: ptr cQAction) {.cdecl.} =
    let vtbl = cast[ref QActionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAction_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAction_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAction_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAction_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAction_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAction_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAction_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAction_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAction_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAction_disconnectNotify
  gen_qaction_types.QAction(h: fcQAction_new6(addr(vtbl[]), icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc staticMetaObject*(_: type gen_qaction_types.QAction): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAction_staticMetaObject())
proc delete*(self: gen_qaction_types.QAction) =
  fcQAction_delete(self.h)
