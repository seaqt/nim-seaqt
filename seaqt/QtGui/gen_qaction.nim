import ./qtgui_pkg

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


{.compile("gen_qaction.cpp", QtGuiCFlags).}


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

proc fcQAction_metaObject(self: pointer): pointer {.importc: "QAction_metaObject".}
proc fcQAction_metacast(self: pointer, param1: cstring): pointer {.importc: "QAction_metacast".}
proc fcQAction_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAction_metacall".}
proc fcQAction_tr(s: cstring): struct_miqt_string {.importc: "QAction_tr".}
proc fcQAction_associatedObjects(self: pointer): struct_miqt_array {.importc: "QAction_associatedObjects".}
proc fcQAction_setActionGroup(self: pointer, group: pointer): void {.importc: "QAction_setActionGroup".}
proc fcQAction_actionGroup(self: pointer): pointer {.importc: "QAction_actionGroup".}
proc fcQAction_setIcon(self: pointer, icon: pointer): void {.importc: "QAction_setIcon".}
proc fcQAction_icon(self: pointer): pointer {.importc: "QAction_icon".}
proc fcQAction_setText(self: pointer, text: struct_miqt_string): void {.importc: "QAction_setText".}
proc fcQAction_text(self: pointer): struct_miqt_string {.importc: "QAction_text".}
proc fcQAction_setIconText(self: pointer, text: struct_miqt_string): void {.importc: "QAction_setIconText".}
proc fcQAction_iconText(self: pointer): struct_miqt_string {.importc: "QAction_iconText".}
proc fcQAction_setToolTip(self: pointer, tip: struct_miqt_string): void {.importc: "QAction_setToolTip".}
proc fcQAction_toolTip(self: pointer): struct_miqt_string {.importc: "QAction_toolTip".}
proc fcQAction_setStatusTip(self: pointer, statusTip: struct_miqt_string): void {.importc: "QAction_setStatusTip".}
proc fcQAction_statusTip(self: pointer): struct_miqt_string {.importc: "QAction_statusTip".}
proc fcQAction_setWhatsThis(self: pointer, what: struct_miqt_string): void {.importc: "QAction_setWhatsThis".}
proc fcQAction_whatsThis(self: pointer): struct_miqt_string {.importc: "QAction_whatsThis".}
proc fcQAction_setPriority(self: pointer, priority: cint): void {.importc: "QAction_setPriority".}
proc fcQAction_priority(self: pointer): cint {.importc: "QAction_priority".}
proc fcQAction_setSeparator(self: pointer, b: bool): void {.importc: "QAction_setSeparator".}
proc fcQAction_isSeparator(self: pointer): bool {.importc: "QAction_isSeparator".}
proc fcQAction_setShortcut(self: pointer, shortcut: pointer): void {.importc: "QAction_setShortcut".}
proc fcQAction_shortcut(self: pointer): pointer {.importc: "QAction_shortcut".}
proc fcQAction_setShortcuts(self: pointer, shortcuts: struct_miqt_array): void {.importc: "QAction_setShortcuts".}
proc fcQAction_setShortcutsWithShortcuts(self: pointer, shortcuts: cint): void {.importc: "QAction_setShortcutsWithShortcuts".}
proc fcQAction_shortcuts(self: pointer): struct_miqt_array {.importc: "QAction_shortcuts".}
proc fcQAction_setShortcutContext(self: pointer, context: cint): void {.importc: "QAction_setShortcutContext".}
proc fcQAction_shortcutContext(self: pointer): cint {.importc: "QAction_shortcutContext".}
proc fcQAction_setAutoRepeat(self: pointer, autoRepeat: bool): void {.importc: "QAction_setAutoRepeat".}
proc fcQAction_autoRepeat(self: pointer): bool {.importc: "QAction_autoRepeat".}
proc fcQAction_setFont(self: pointer, font: pointer): void {.importc: "QAction_setFont".}
proc fcQAction_font(self: pointer): pointer {.importc: "QAction_font".}
proc fcQAction_setCheckable(self: pointer, checkable: bool): void {.importc: "QAction_setCheckable".}
proc fcQAction_isCheckable(self: pointer): bool {.importc: "QAction_isCheckable".}
proc fcQAction_data(self: pointer): pointer {.importc: "QAction_data".}
proc fcQAction_setData(self: pointer, varVal: pointer): void {.importc: "QAction_setData".}
proc fcQAction_isChecked(self: pointer): bool {.importc: "QAction_isChecked".}
proc fcQAction_isEnabled(self: pointer): bool {.importc: "QAction_isEnabled".}
proc fcQAction_isVisible(self: pointer): bool {.importc: "QAction_isVisible".}
proc fcQAction_activate(self: pointer, event: cint): void {.importc: "QAction_activate".}
proc fcQAction_setMenuRole(self: pointer, menuRole: cint): void {.importc: "QAction_setMenuRole".}
proc fcQAction_menuRole(self: pointer): cint {.importc: "QAction_menuRole".}
proc fcQAction_setIconVisibleInMenu(self: pointer, visible: bool): void {.importc: "QAction_setIconVisibleInMenu".}
proc fcQAction_isIconVisibleInMenu(self: pointer): bool {.importc: "QAction_isIconVisibleInMenu".}
proc fcQAction_setShortcutVisibleInContextMenu(self: pointer, show: bool): void {.importc: "QAction_setShortcutVisibleInContextMenu".}
proc fcQAction_isShortcutVisibleInContextMenu(self: pointer): bool {.importc: "QAction_isShortcutVisibleInContextMenu".}
proc fcQAction_showStatusText(self: pointer): bool {.importc: "QAction_showStatusText".}
proc fcQAction_trigger(self: pointer): void {.importc: "QAction_trigger".}
proc fcQAction_hover(self: pointer): void {.importc: "QAction_hover".}
proc fcQAction_setChecked(self: pointer, checked: bool): void {.importc: "QAction_setChecked".}
proc fcQAction_toggle(self: pointer): void {.importc: "QAction_toggle".}
proc fcQAction_setEnabled(self: pointer, enabled: bool): void {.importc: "QAction_setEnabled".}
proc fcQAction_resetEnabled(self: pointer): void {.importc: "QAction_resetEnabled".}
proc fcQAction_setDisabled(self: pointer, b: bool): void {.importc: "QAction_setDisabled".}
proc fcQAction_setVisible(self: pointer, visible: bool): void {.importc: "QAction_setVisible".}
proc fcQAction_changed(self: pointer): void {.importc: "QAction_changed".}
proc fcQAction_connect_changed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAction_connect_changed".}
proc fcQAction_enabledChanged(self: pointer, enabled: bool): void {.importc: "QAction_enabledChanged".}
proc fcQAction_connect_enabledChanged(self: pointer, slot: int, callback: proc (slot: int, enabled: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAction_connect_enabledChanged".}
proc fcQAction_checkableChanged(self: pointer, checkable: bool): void {.importc: "QAction_checkableChanged".}
proc fcQAction_connect_checkableChanged(self: pointer, slot: int, callback: proc (slot: int, checkable: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAction_connect_checkableChanged".}
proc fcQAction_visibleChanged(self: pointer): void {.importc: "QAction_visibleChanged".}
proc fcQAction_connect_visibleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAction_connect_visibleChanged".}
proc fcQAction_triggered(self: pointer): void {.importc: "QAction_triggered".}
proc fcQAction_connect_triggered(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAction_connect_triggered".}
proc fcQAction_hovered(self: pointer): void {.importc: "QAction_hovered".}
proc fcQAction_connect_hovered(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAction_connect_hovered".}
proc fcQAction_toggled(self: pointer, param1: bool): void {.importc: "QAction_toggled".}
proc fcQAction_connect_toggled(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAction_connect_toggled".}
proc fcQAction_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAction_tr2".}
proc fcQAction_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAction_tr3".}
proc fcQAction_showStatusText1(self: pointer, objectVal: pointer): bool {.importc: "QAction_showStatusText1".}
proc fcQAction_triggered1(self: pointer, checked: bool): void {.importc: "QAction_triggered1".}
proc fcQAction_connect_triggered1(self: pointer, slot: int, callback: proc (slot: int, checked: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAction_connect_triggered1".}
proc fcQAction_vtbl(self: pointer): pointer {.importc: "QAction_vtbl".}
proc fcQAction_vdata(self: pointer): pointer {.importc: "QAction_vdata".}

type cQActionVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAction_virtualbase_metaObject(self: pointer): pointer {.importc: "QAction_virtualbase_metaObject".}
proc fcQAction_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAction_virtualbase_metacast".}
proc fcQAction_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAction_virtualbase_metacall".}
proc fcQAction_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QAction_virtualbase_event".}
proc fcQAction_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAction_virtualbase_eventFilter".}
proc fcQAction_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAction_virtualbase_timerEvent".}
proc fcQAction_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAction_virtualbase_childEvent".}
proc fcQAction_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAction_virtualbase_customEvent".}
proc fcQAction_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAction_virtualbase_connectNotify".}
proc fcQAction_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAction_virtualbase_disconnectNotify".}
proc fcQAction_protectedbase_sender(self: pointer): pointer {.importc: "QAction_protectedbase_sender".}
proc fcQAction_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAction_protectedbase_senderSignalIndex".}
proc fcQAction_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAction_protectedbase_receivers".}
proc fcQAction_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAction_protectedbase_isSignalConnected".}
proc fcQAction_new(vtbl, vdata: pointer): ptr cQAction {.importc: "QAction_new".}
proc fcQAction_new2(vtbl, vdata: pointer, text: struct_miqt_string): ptr cQAction {.importc: "QAction_new2".}
proc fcQAction_new3(vtbl, vdata: pointer, icon: pointer, text: struct_miqt_string): ptr cQAction {.importc: "QAction_new3".}
proc fcQAction_new4(vtbl, vdata: pointer, parent: pointer): ptr cQAction {.importc: "QAction_new4".}
proc fcQAction_new5(vtbl, vdata: pointer, text: struct_miqt_string, parent: pointer): ptr cQAction {.importc: "QAction_new5".}
proc fcQAction_new6(vtbl, vdata: pointer, icon: pointer, text: struct_miqt_string, parent: pointer): ptr cQAction {.importc: "QAction_new6".}
proc fcQAction_staticMetaObject(): pointer {.importc: "QAction_staticMetaObject".}

proc metaObject*(self: gen_qaction_types.QAction): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAction_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaction_types.QAction, param1: cstring): pointer =
  fcQAction_metacast(self.h, param1)

proc metacall*(self: gen_qaction_types.QAction, param1: cint, param2: cint, param3: pointer): cint =
  fcQAction_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaction_types.QAction, s: cstring): string =
  let v_ms = fcQAction_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc associatedObjects*(self: gen_qaction_types.QAction): seq[gen_qobject_types.QObject] =
  var v_ma = fcQAction_associatedObjects(self.h)
  var vx_ret = newSeq[gen_qobject_types.QObject](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qobject_types.QObject(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc setActionGroup*(self: gen_qaction_types.QAction, group: gen_qactiongroup_types.QActionGroup): void =
  fcQAction_setActionGroup(self.h, group.h)

proc actionGroup*(self: gen_qaction_types.QAction): gen_qactiongroup_types.QActionGroup =
  gen_qactiongroup_types.QActionGroup(h: fcQAction_actionGroup(self.h), owned: false)

proc setIcon*(self: gen_qaction_types.QAction, icon: gen_qicon_types.QIcon): void =
  fcQAction_setIcon(self.h, icon.h)

proc icon*(self: gen_qaction_types.QAction): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQAction_icon(self.h), owned: true)

proc setText*(self: gen_qaction_types.QAction, text: openArray[char]): void =
  fcQAction_setText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc text*(self: gen_qaction_types.QAction): string =
  let v_ms = fcQAction_text(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setIconText*(self: gen_qaction_types.QAction, text: openArray[char]): void =
  fcQAction_setIconText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc iconText*(self: gen_qaction_types.QAction): string =
  let v_ms = fcQAction_iconText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: gen_qaction_types.QAction, tip: openArray[char]): void =
  fcQAction_setToolTip(self.h, struct_miqt_string(data: if len(tip) > 0: addr tip[0] else: nil, len: csize_t(len(tip))))

proc toolTip*(self: gen_qaction_types.QAction): string =
  let v_ms = fcQAction_toolTip(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setStatusTip*(self: gen_qaction_types.QAction, statusTip: openArray[char]): void =
  fcQAction_setStatusTip(self.h, struct_miqt_string(data: if len(statusTip) > 0: addr statusTip[0] else: nil, len: csize_t(len(statusTip))))

proc statusTip*(self: gen_qaction_types.QAction): string =
  let v_ms = fcQAction_statusTip(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: gen_qaction_types.QAction, what: openArray[char]): void =
  fcQAction_setWhatsThis(self.h, struct_miqt_string(data: if len(what) > 0: addr what[0] else: nil, len: csize_t(len(what))))

proc whatsThis*(self: gen_qaction_types.QAction): string =
  let v_ms = fcQAction_whatsThis(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPriority*(self: gen_qaction_types.QAction, priority: cint): void =
  fcQAction_setPriority(self.h, cint(priority))

proc priority*(self: gen_qaction_types.QAction): cint =
  cint(fcQAction_priority(self.h))

proc setSeparator*(self: gen_qaction_types.QAction, b: bool): void =
  fcQAction_setSeparator(self.h, b)

proc isSeparator*(self: gen_qaction_types.QAction): bool =
  fcQAction_isSeparator(self.h)

proc setShortcut*(self: gen_qaction_types.QAction, shortcut: gen_qkeysequence_types.QKeySequence): void =
  fcQAction_setShortcut(self.h, shortcut.h)

proc shortcut*(self: gen_qaction_types.QAction): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQAction_shortcut(self.h), owned: true)

proc setShortcuts*(self: gen_qaction_types.QAction, shortcuts: openArray[gen_qkeysequence_types.QKeySequence]): void =
  var shortcuts_CArray = newSeq[pointer](len(shortcuts))
  for i in 0..<len(shortcuts):
    shortcuts_CArray[i] = shortcuts[i].h

  fcQAction_setShortcuts(self.h, struct_miqt_array(len: csize_t(len(shortcuts)), data: if len(shortcuts) == 0: nil else: addr(shortcuts_CArray[0])))

proc setShortcuts*(self: gen_qaction_types.QAction, shortcuts: cint): void =
  fcQAction_setShortcutsWithShortcuts(self.h, cint(shortcuts))

proc shortcuts*(self: gen_qaction_types.QAction): seq[gen_qkeysequence_types.QKeySequence] =
  var v_ma = fcQAction_shortcuts(self.h)
  var vx_ret = newSeq[gen_qkeysequence_types.QKeySequence](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qkeysequence_types.QKeySequence(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc setShortcutContext*(self: gen_qaction_types.QAction, context: cint): void =
  fcQAction_setShortcutContext(self.h, cint(context))

proc shortcutContext*(self: gen_qaction_types.QAction): cint =
  cint(fcQAction_shortcutContext(self.h))

proc setAutoRepeat*(self: gen_qaction_types.QAction, autoRepeat: bool): void =
  fcQAction_setAutoRepeat(self.h, autoRepeat)

proc autoRepeat*(self: gen_qaction_types.QAction): bool =
  fcQAction_autoRepeat(self.h)

proc setFont*(self: gen_qaction_types.QAction, font: gen_qfont_types.QFont): void =
  fcQAction_setFont(self.h, font.h)

proc font*(self: gen_qaction_types.QAction): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQAction_font(self.h), owned: true)

proc setCheckable*(self: gen_qaction_types.QAction, checkable: bool): void =
  fcQAction_setCheckable(self.h, checkable)

proc isCheckable*(self: gen_qaction_types.QAction): bool =
  fcQAction_isCheckable(self.h)

proc data*(self: gen_qaction_types.QAction): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAction_data(self.h), owned: true)

proc setData*(self: gen_qaction_types.QAction, varVal: gen_qvariant_types.QVariant): void =
  fcQAction_setData(self.h, varVal.h)

proc isChecked*(self: gen_qaction_types.QAction): bool =
  fcQAction_isChecked(self.h)

proc isEnabled*(self: gen_qaction_types.QAction): bool =
  fcQAction_isEnabled(self.h)

proc isVisible*(self: gen_qaction_types.QAction): bool =
  fcQAction_isVisible(self.h)

proc activate*(self: gen_qaction_types.QAction, event: cint): void =
  fcQAction_activate(self.h, cint(event))

proc setMenuRole*(self: gen_qaction_types.QAction, menuRole: cint): void =
  fcQAction_setMenuRole(self.h, cint(menuRole))

proc menuRole*(self: gen_qaction_types.QAction): cint =
  cint(fcQAction_menuRole(self.h))

proc setIconVisibleInMenu*(self: gen_qaction_types.QAction, visible: bool): void =
  fcQAction_setIconVisibleInMenu(self.h, visible)

proc isIconVisibleInMenu*(self: gen_qaction_types.QAction): bool =
  fcQAction_isIconVisibleInMenu(self.h)

proc setShortcutVisibleInContextMenu*(self: gen_qaction_types.QAction, show: bool): void =
  fcQAction_setShortcutVisibleInContextMenu(self.h, show)

proc isShortcutVisibleInContextMenu*(self: gen_qaction_types.QAction): bool =
  fcQAction_isShortcutVisibleInContextMenu(self.h)

proc showStatusText*(self: gen_qaction_types.QAction): bool =
  fcQAction_showStatusText(self.h)

proc trigger*(self: gen_qaction_types.QAction): void =
  fcQAction_trigger(self.h)

proc hover*(self: gen_qaction_types.QAction): void =
  fcQAction_hover(self.h)

proc setChecked*(self: gen_qaction_types.QAction, checked: bool): void =
  fcQAction_setChecked(self.h, checked)

proc toggle*(self: gen_qaction_types.QAction): void =
  fcQAction_toggle(self.h)

proc setEnabled*(self: gen_qaction_types.QAction, enabled: bool): void =
  fcQAction_setEnabled(self.h, enabled)

proc resetEnabled*(self: gen_qaction_types.QAction): void =
  fcQAction_resetEnabled(self.h)

proc setDisabled*(self: gen_qaction_types.QAction, b: bool): void =
  fcQAction_setDisabled(self.h, b)

proc setVisible*(self: gen_qaction_types.QAction, visible: bool): void =
  fcQAction_setVisible(self.h, visible)

proc changed*(self: gen_qaction_types.QAction): void =
  fcQAction_changed(self.h)

type QActionchangedSlot* = proc()
proc fcQAction_slot_callback_changed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QActionchangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAction_slot_callback_changed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QActionchangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onChanged*(self: gen_qaction_types.QAction, slot: QActionchangedSlot) =
  var tmp = new QActionchangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_changed(self.h, cast[int](addr tmp[]), fcQAction_slot_callback_changed, fcQAction_slot_callback_changed_release)

proc enabledChanged*(self: gen_qaction_types.QAction, enabled: bool): void =
  fcQAction_enabledChanged(self.h, enabled)

type QActionenabledChangedSlot* = proc(enabled: bool)
proc fcQAction_slot_callback_enabledChanged(slot: int, enabled: bool) {.cdecl.} =
  let nimfunc = cast[ptr QActionenabledChangedSlot](cast[pointer](slot))
  let slotval1 = enabled

  nimfunc[](slotval1)

proc fcQAction_slot_callback_enabledChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QActionenabledChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onEnabledChanged*(self: gen_qaction_types.QAction, slot: QActionenabledChangedSlot) =
  var tmp = new QActionenabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_enabledChanged(self.h, cast[int](addr tmp[]), fcQAction_slot_callback_enabledChanged, fcQAction_slot_callback_enabledChanged_release)

proc checkableChanged*(self: gen_qaction_types.QAction, checkable: bool): void =
  fcQAction_checkableChanged(self.h, checkable)

type QActioncheckableChangedSlot* = proc(checkable: bool)
proc fcQAction_slot_callback_checkableChanged(slot: int, checkable: bool) {.cdecl.} =
  let nimfunc = cast[ptr QActioncheckableChangedSlot](cast[pointer](slot))
  let slotval1 = checkable

  nimfunc[](slotval1)

proc fcQAction_slot_callback_checkableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QActioncheckableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCheckableChanged*(self: gen_qaction_types.QAction, slot: QActioncheckableChangedSlot) =
  var tmp = new QActioncheckableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_checkableChanged(self.h, cast[int](addr tmp[]), fcQAction_slot_callback_checkableChanged, fcQAction_slot_callback_checkableChanged_release)

proc visibleChanged*(self: gen_qaction_types.QAction): void =
  fcQAction_visibleChanged(self.h)

type QActionvisibleChangedSlot* = proc()
proc fcQAction_slot_callback_visibleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QActionvisibleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAction_slot_callback_visibleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QActionvisibleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onVisibleChanged*(self: gen_qaction_types.QAction, slot: QActionvisibleChangedSlot) =
  var tmp = new QActionvisibleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_visibleChanged(self.h, cast[int](addr tmp[]), fcQAction_slot_callback_visibleChanged, fcQAction_slot_callback_visibleChanged_release)

proc triggered*(self: gen_qaction_types.QAction): void =
  fcQAction_triggered(self.h)

type QActiontriggeredSlot* = proc()
proc fcQAction_slot_callback_triggered(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QActiontriggeredSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAction_slot_callback_triggered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QActiontriggeredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTriggered*(self: gen_qaction_types.QAction, slot: QActiontriggeredSlot) =
  var tmp = new QActiontriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_triggered(self.h, cast[int](addr tmp[]), fcQAction_slot_callback_triggered, fcQAction_slot_callback_triggered_release)

proc hovered*(self: gen_qaction_types.QAction): void =
  fcQAction_hovered(self.h)

type QActionhoveredSlot* = proc()
proc fcQAction_slot_callback_hovered(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QActionhoveredSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAction_slot_callback_hovered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QActionhoveredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onHovered*(self: gen_qaction_types.QAction, slot: QActionhoveredSlot) =
  var tmp = new QActionhoveredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_hovered(self.h, cast[int](addr tmp[]), fcQAction_slot_callback_hovered, fcQAction_slot_callback_hovered_release)

proc toggled*(self: gen_qaction_types.QAction, param1: bool): void =
  fcQAction_toggled(self.h, param1)

type QActiontoggledSlot* = proc(param1: bool)
proc fcQAction_slot_callback_toggled(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QActiontoggledSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc fcQAction_slot_callback_toggled_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QActiontoggledSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onToggled*(self: gen_qaction_types.QAction, slot: QActiontoggledSlot) =
  var tmp = new QActiontoggledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_toggled(self.h, cast[int](addr tmp[]), fcQAction_slot_callback_toggled, fcQAction_slot_callback_toggled_release)

proc tr*(_: type gen_qaction_types.QAction, s: cstring, c: cstring): string =
  let v_ms = fcQAction_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaction_types.QAction, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAction_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc showStatusText*(self: gen_qaction_types.QAction, objectVal: gen_qobject_types.QObject): bool =
  fcQAction_showStatusText1(self.h, objectVal.h)

proc triggered*(self: gen_qaction_types.QAction, checked: bool): void =
  fcQAction_triggered1(self.h, checked)

type QActiontriggered1Slot* = proc(checked: bool)
proc fcQAction_slot_callback_triggered1(slot: int, checked: bool) {.cdecl.} =
  let nimfunc = cast[ptr QActiontriggered1Slot](cast[pointer](slot))
  let slotval1 = checked

  nimfunc[](slotval1)

proc fcQAction_slot_callback_triggered1_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QActiontriggered1Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTriggered*(self: gen_qaction_types.QAction, slot: QActiontriggered1Slot) =
  var tmp = new QActiontriggered1Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_triggered1(self.h, cast[int](addr tmp[]), fcQAction_slot_callback_triggered1, fcQAction_slot_callback_triggered1_release)

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

type QActionVTable* {.inheritable, pure.} = object
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

proc QActionmetaObject*(self: gen_qaction_types.QAction): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAction_virtualbase_metaObject(self.h), owned: false)

proc QActionmetacast*(self: gen_qaction_types.QAction, param1: cstring): pointer =
  fcQAction_virtualbase_metacast(self.h, param1)

proc QActionmetacall*(self: gen_qaction_types.QAction, param1: cint, param2: cint, param3: pointer): cint =
  fcQAction_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QActionevent*(self: gen_qaction_types.QAction, param1: gen_qcoreevent_types.QEvent): bool =
  fcQAction_virtualbase_event(self.h, param1.h)

proc QActioneventFilter*(self: gen_qaction_types.QAction, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAction_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QActiontimerEvent*(self: gen_qaction_types.QAction, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAction_virtualbase_timerEvent(self.h, event.h)

proc QActionchildEvent*(self: gen_qaction_types.QAction, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAction_virtualbase_childEvent(self.h, event.h)

proc QActioncustomEvent*(self: gen_qaction_types.QAction, event: gen_qcoreevent_types.QEvent): void =
  fcQAction_virtualbase_customEvent(self.h, event.h)

proc QActionconnectNotify*(self: gen_qaction_types.QAction, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAction_virtualbase_connectNotify(self.h, signal.h)

proc QActiondisconnectNotify*(self: gen_qaction_types.QAction, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAction_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQAction_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](fcQAction_vdata(self))
  let self = QAction(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAction_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](fcQAction_vdata(self))
  let self = QAction(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQAction_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](fcQAction_vdata(self))
  let self = QAction(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAction_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](fcQAction_vdata(self))
  let self = QAction(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQAction_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](fcQAction_vdata(self))
  let self = QAction(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQAction_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](fcQAction_vdata(self))
  let self = QAction(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQAction_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](fcQAction_vdata(self))
  let self = QAction(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQAction_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](fcQAction_vdata(self))
  let self = QAction(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQAction_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](fcQAction_vdata(self))
  let self = QAction(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQAction_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionVTable](fcQAction_vdata(self))
  let self = QAction(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAction* {.inheritable.} = ref object of QAction
  vtbl*: cQActionVTable

method metaObject*(self: VirtualQAction): gen_qobjectdefs_types.QMetaObject {.base.} =
  QActionmetaObject(self[])
method metacast*(self: VirtualQAction, param1: cstring): pointer {.base.} =
  QActionmetacast(self[], param1)
method metacall*(self: VirtualQAction, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QActionmetacall(self[], param1, param2, param3)
method event*(self: VirtualQAction, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QActionevent(self[], param1)
method eventFilter*(self: VirtualQAction, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QActioneventFilter(self[], watched, event)
method timerEvent*(self: VirtualQAction, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QActiontimerEvent(self[], event)
method childEvent*(self: VirtualQAction, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QActionchildEvent(self[], event)
method customEvent*(self: VirtualQAction, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QActioncustomEvent(self[], event)
method connectNotify*(self: VirtualQAction, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QActionconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQAction, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QActiondisconnectNotify(self[], signal)

proc fcQAction_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAction](fcQAction_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAction_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAction](fcQAction_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQAction_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAction](fcQAction_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAction_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAction](fcQAction_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQAction_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAction](fcQAction_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQAction_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAction](fcQAction_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQAction_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAction](fcQAction_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQAction_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAction](fcQAction_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQAction_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAction](fcQAction_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQAction_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAction](fcQAction_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qaction_types.QAction): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAction_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaction_types.QAction): cint =
  fcQAction_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaction_types.QAction, signal: cstring): cint =
  fcQAction_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaction_types.QAction, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAction_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaction_types.QAction,
    vtbl: ref QActionVTable = nil): gen_qaction_types.QAction =
  let vtbl = if vtbl == nil: new QActionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QActionVTable](fcQAction_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAction_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAction_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAction_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAction_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAction_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAction_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAction_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAction_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAction_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAction_vtable_callback_disconnectNotify
  gen_qaction_types.QAction(h: fcQAction_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qaction_types.QAction,
    text: openArray[char],
    vtbl: ref QActionVTable = nil): gen_qaction_types.QAction =
  let vtbl = if vtbl == nil: new QActionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QActionVTable](fcQAction_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAction_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAction_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAction_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAction_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAction_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAction_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAction_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAction_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAction_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAction_vtable_callback_disconnectNotify
  gen_qaction_types.QAction(h: fcQAction_new2(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qaction_types.QAction,
    icon: gen_qicon_types.QIcon, text: openArray[char],
    vtbl: ref QActionVTable = nil): gen_qaction_types.QAction =
  let vtbl = if vtbl == nil: new QActionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QActionVTable](fcQAction_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAction_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAction_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAction_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAction_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAction_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAction_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAction_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAction_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAction_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAction_vtable_callback_disconnectNotify
  gen_qaction_types.QAction(h: fcQAction_new3(addr(vtbl[].vtbl), addr(vtbl[]), icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qaction_types.QAction,
    parent: gen_qobject_types.QObject,
    vtbl: ref QActionVTable = nil): gen_qaction_types.QAction =
  let vtbl = if vtbl == nil: new QActionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QActionVTable](fcQAction_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAction_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAction_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAction_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAction_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAction_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAction_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAction_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAction_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAction_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAction_vtable_callback_disconnectNotify
  gen_qaction_types.QAction(h: fcQAction_new4(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qaction_types.QAction,
    text: openArray[char], parent: gen_qobject_types.QObject,
    vtbl: ref QActionVTable = nil): gen_qaction_types.QAction =
  let vtbl = if vtbl == nil: new QActionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QActionVTable](fcQAction_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAction_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAction_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAction_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAction_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAction_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAction_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAction_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAction_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAction_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAction_vtable_callback_disconnectNotify
  gen_qaction_types.QAction(h: fcQAction_new5(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h), owned: true)

proc create*(T: type gen_qaction_types.QAction,
    icon: gen_qicon_types.QIcon, text: openArray[char], parent: gen_qobject_types.QObject,
    vtbl: ref QActionVTable = nil): gen_qaction_types.QAction =
  let vtbl = if vtbl == nil: new QActionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QActionVTable](fcQAction_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAction_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAction_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAction_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAction_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAction_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAction_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAction_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAction_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAction_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAction_vtable_callback_disconnectNotify
  gen_qaction_types.QAction(h: fcQAction_new6(addr(vtbl[].vtbl), addr(vtbl[]), icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h), owned: true)

const cQAction_mvtbl = cQActionVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAction()[])](self.fcQAction_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQAction_method_callback_metaObject,
  metacast: fcQAction_method_callback_metacast,
  metacall: fcQAction_method_callback_metacall,
  event: fcQAction_method_callback_event,
  eventFilter: fcQAction_method_callback_eventFilter,
  timerEvent: fcQAction_method_callback_timerEvent,
  childEvent: fcQAction_method_callback_childEvent,
  customEvent: fcQAction_method_callback_customEvent,
  connectNotify: fcQAction_method_callback_connectNotify,
  disconnectNotify: fcQAction_method_callback_disconnectNotify,
)
proc create*(T: type gen_qaction_types.QAction,
    inst: VirtualQAction) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAction_new(addr(cQAction_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qaction_types.QAction,
    text: openArray[char],
    inst: VirtualQAction) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAction_new2(addr(cQAction_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  inst[].owned = true

proc create*(T: type gen_qaction_types.QAction,
    icon: gen_qicon_types.QIcon, text: openArray[char],
    inst: VirtualQAction) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAction_new3(addr(cQAction_mvtbl), addr(inst[]), icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  inst[].owned = true

proc create*(T: type gen_qaction_types.QAction,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAction) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAction_new4(addr(cQAction_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qaction_types.QAction,
    text: openArray[char], parent: gen_qobject_types.QObject,
    inst: VirtualQAction) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAction_new5(addr(cQAction_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h)
  inst[].owned = true

proc create*(T: type gen_qaction_types.QAction,
    icon: gen_qicon_types.QIcon, text: openArray[char], parent: gen_qobject_types.QObject,
    inst: VirtualQAction) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAction_new6(addr(cQAction_mvtbl), addr(inst[]), icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qaction_types.QAction): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAction_staticMetaObject())
