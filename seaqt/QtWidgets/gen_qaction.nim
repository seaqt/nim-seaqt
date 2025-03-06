import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
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
  ../QtGui/gen_qfont_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qkeysequence_types,
  ./gen_qactiongroup_types,
  ./gen_qgraphicswidget_types,
  ./gen_qmenu_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qfont_types,
  gen_qicon_types,
  gen_qkeysequence_types,
  gen_qactiongroup_types,
  gen_qgraphicswidget_types,
  gen_qmenu_types,
  gen_qwidget_types

type cQAction*{.exportc: "QAction", incompleteStruct.} = object

proc fcQAction_new(): ptr cQAction {.importc: "QAction_new".}
proc fcQAction_new2(text: struct_miqt_string): ptr cQAction {.importc: "QAction_new2".}
proc fcQAction_new3(icon: pointer, text: struct_miqt_string): ptr cQAction {.importc: "QAction_new3".}
proc fcQAction_new4(parent: pointer): ptr cQAction {.importc: "QAction_new4".}
proc fcQAction_new5(text: struct_miqt_string, parent: pointer): ptr cQAction {.importc: "QAction_new5".}
proc fcQAction_new6(icon: pointer, text: struct_miqt_string, parent: pointer): ptr cQAction {.importc: "QAction_new6".}
proc fcQAction_metaObject(self: pointer, ): pointer {.importc: "QAction_metaObject".}
proc fcQAction_metacast(self: pointer, param1: cstring): pointer {.importc: "QAction_metacast".}
proc fcQAction_tr(s: cstring): struct_miqt_string {.importc: "QAction_tr".}
proc fcQAction_trUtf8(s: cstring): struct_miqt_string {.importc: "QAction_trUtf8".}
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
proc fcQAction_menu(self: pointer, ): pointer {.importc: "QAction_menu".}
proc fcQAction_setMenu(self: pointer, menu: pointer): void {.importc: "QAction_setMenu".}
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
proc fcQAction_showStatusText(self: pointer, ): bool {.importc: "QAction_showStatusText".}
proc fcQAction_setMenuRole(self: pointer, menuRole: cint): void {.importc: "QAction_setMenuRole".}
proc fcQAction_menuRole(self: pointer, ): cint {.importc: "QAction_menuRole".}
proc fcQAction_setIconVisibleInMenu(self: pointer, visible: bool): void {.importc: "QAction_setIconVisibleInMenu".}
proc fcQAction_isIconVisibleInMenu(self: pointer, ): bool {.importc: "QAction_isIconVisibleInMenu".}
proc fcQAction_setShortcutVisibleInContextMenu(self: pointer, show: bool): void {.importc: "QAction_setShortcutVisibleInContextMenu".}
proc fcQAction_isShortcutVisibleInContextMenu(self: pointer, ): bool {.importc: "QAction_isShortcutVisibleInContextMenu".}
proc fcQAction_parentWidget(self: pointer, ): pointer {.importc: "QAction_parentWidget".}
proc fcQAction_associatedWidgets(self: pointer, ): struct_miqt_array {.importc: "QAction_associatedWidgets".}
proc fcQAction_associatedGraphicsWidgets(self: pointer, ): struct_miqt_array {.importc: "QAction_associatedGraphicsWidgets".}
proc fcQAction_trigger(self: pointer, ): void {.importc: "QAction_trigger".}
proc fcQAction_hover(self: pointer, ): void {.importc: "QAction_hover".}
proc fcQAction_setChecked(self: pointer, checked: bool): void {.importc: "QAction_setChecked".}
proc fcQAction_toggle(self: pointer, ): void {.importc: "QAction_toggle".}
proc fcQAction_setEnabled(self: pointer, enabled: bool): void {.importc: "QAction_setEnabled".}
proc fcQAction_setDisabled(self: pointer, b: bool): void {.importc: "QAction_setDisabled".}
proc fcQAction_setVisible(self: pointer, visible: bool): void {.importc: "QAction_setVisible".}
proc fcQAction_changed(self: pointer, ): void {.importc: "QAction_changed".}
proc fcQAction_connect_changed(self: pointer, slot: int) {.importc: "QAction_connect_changed".}
proc fcQAction_triggered(self: pointer, ): void {.importc: "QAction_triggered".}
proc fcQAction_connect_triggered(self: pointer, slot: int) {.importc: "QAction_connect_triggered".}
proc fcQAction_hovered(self: pointer, ): void {.importc: "QAction_hovered".}
proc fcQAction_connect_hovered(self: pointer, slot: int) {.importc: "QAction_connect_hovered".}
proc fcQAction_toggled(self: pointer, param1: bool): void {.importc: "QAction_toggled".}
proc fcQAction_connect_toggled(self: pointer, slot: int) {.importc: "QAction_connect_toggled".}
proc fcQAction_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAction_tr2".}
proc fcQAction_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAction_tr3".}
proc fcQAction_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAction_trUtf82".}
proc fcQAction_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAction_trUtf83".}
proc fcQAction_showStatusText1(self: pointer, widget: pointer): bool {.importc: "QAction_showStatusText1".}
proc fcQAction_triggered1(self: pointer, checked: bool): void {.importc: "QAction_triggered1".}
proc fcQAction_connect_triggered1(self: pointer, slot: int) {.importc: "QAction_connect_triggered1".}
proc fQAction_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QAction_virtualbase_event".}
proc fcQAction_override_virtual_event(self: pointer, slot: int) {.importc: "QAction_override_virtual_event".}
proc fQAction_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAction_virtualbase_eventFilter".}
proc fcQAction_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAction_override_virtual_eventFilter".}
proc fQAction_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAction_virtualbase_timerEvent".}
proc fcQAction_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAction_override_virtual_timerEvent".}
proc fQAction_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAction_virtualbase_childEvent".}
proc fcQAction_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAction_override_virtual_childEvent".}
proc fQAction_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAction_virtualbase_customEvent".}
proc fcQAction_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAction_override_virtual_customEvent".}
proc fQAction_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAction_virtualbase_connectNotify".}
proc fcQAction_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAction_override_virtual_connectNotify".}
proc fQAction_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAction_virtualbase_disconnectNotify".}
proc fcQAction_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAction_override_virtual_disconnectNotify".}
proc fcQAction_delete(self: pointer) {.importc: "QAction_delete".}


func init*(T: type gen_qaction_types.QAction, h: ptr cQAction): gen_qaction_types.QAction =
  T(h: h)
proc create*(T: type gen_qaction_types.QAction, ): gen_qaction_types.QAction =
  gen_qaction_types.QAction.init(fcQAction_new())

proc create*(T: type gen_qaction_types.QAction, text: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction.init(fcQAction_new2(struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qaction_types.QAction, icon: gen_qicon_types.QIcon, text: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction.init(fcQAction_new3(icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qaction_types.QAction, parent: gen_qobject_types.QObject): gen_qaction_types.QAction =
  gen_qaction_types.QAction.init(fcQAction_new4(parent.h))

proc create*(T: type gen_qaction_types.QAction, text: string, parent: gen_qobject_types.QObject): gen_qaction_types.QAction =
  gen_qaction_types.QAction.init(fcQAction_new5(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc create*(T: type gen_qaction_types.QAction, icon: gen_qicon_types.QIcon, text: string, parent: gen_qobject_types.QObject): gen_qaction_types.QAction =
  gen_qaction_types.QAction.init(fcQAction_new6(icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc metaObject*(self: gen_qaction_types.QAction, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAction_metaObject(self.h))

proc metacast*(self: gen_qaction_types.QAction, param1: cstring): pointer =
  fcQAction_metacast(self.h, param1)

proc tr*(_: type gen_qaction_types.QAction, s: cstring): string =
  let v_ms = fcQAction_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaction_types.QAction, s: cstring): string =
  let v_ms = fcQAction_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
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

proc menu*(self: gen_qaction_types.QAction, ): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQAction_menu(self.h))

proc setMenu*(self: gen_qaction_types.QAction, menu: gen_qmenu_types.QMenu): void =
  fcQAction_setMenu(self.h, menu.h)

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

proc showStatusText*(self: gen_qaction_types.QAction, ): bool =
  fcQAction_showStatusText(self.h)

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

proc parentWidget*(self: gen_qaction_types.QAction, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQAction_parentWidget(self.h))

proc associatedWidgets*(self: gen_qaction_types.QAction, ): seq[gen_qwidget_types.QWidget] =
  var v_ma = fcQAction_associatedWidgets(self.h)
  var vx_ret = newSeq[gen_qwidget_types.QWidget](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwidget_types.QWidget(h: v_outCast[i])
  vx_ret

proc associatedGraphicsWidgets*(self: gen_qaction_types.QAction, ): seq[gen_qgraphicswidget_types.QGraphicsWidget] =
  var v_ma = fcQAction_associatedGraphicsWidgets(self.h)
  var vx_ret = newSeq[gen_qgraphicswidget_types.QGraphicsWidget](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgraphicswidget_types.QGraphicsWidget(h: v_outCast[i])
  vx_ret

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

proc setDisabled*(self: gen_qaction_types.QAction, b: bool): void =
  fcQAction_setDisabled(self.h, b)

proc setVisible*(self: gen_qaction_types.QAction, visible: bool): void =
  fcQAction_setVisible(self.h, visible)

proc changed*(self: gen_qaction_types.QAction, ): void =
  fcQAction_changed(self.h)

type QActionchangedSlot* = proc()
proc miqt_exec_callback_QAction_changed(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QActionchangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onchanged*(self: gen_qaction_types.QAction, slot: QActionchangedSlot) =
  var tmp = new QActionchangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_changed(self.h, cast[int](addr tmp[]))

proc triggered*(self: gen_qaction_types.QAction, ): void =
  fcQAction_triggered(self.h)

type QActiontriggeredSlot* = proc()
proc miqt_exec_callback_QAction_triggered(slot: int) {.exportc.} =
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
proc miqt_exec_callback_QAction_hovered(slot: int) {.exportc.} =
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
proc miqt_exec_callback_QAction_toggled(slot: int, param1: bool) {.exportc.} =
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

proc trUtf8*(_: type gen_qaction_types.QAction, s: cstring, c: cstring): string =
  let v_ms = fcQAction_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaction_types.QAction, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAction_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc showStatusText*(self: gen_qaction_types.QAction, widget: gen_qwidget_types.QWidget): bool =
  fcQAction_showStatusText1(self.h, widget.h)

proc triggered*(self: gen_qaction_types.QAction, checked: bool): void =
  fcQAction_triggered1(self.h, checked)

type QActiontriggered1Slot* = proc(checked: bool)
proc miqt_exec_callback_QAction_triggered1(slot: int, checked: bool) {.exportc.} =
  let nimfunc = cast[ptr QActiontriggered1Slot](cast[pointer](slot))
  let slotval1 = checked

  nimfunc[](slotval1)

proc ontriggered*(self: gen_qaction_types.QAction, slot: QActiontriggered1Slot) =
  var tmp = new QActiontriggered1Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_connect_triggered1(self.h, cast[int](addr tmp[]))

proc QActionevent*(self: gen_qaction_types.QAction, param1: gen_qcoreevent_types.QEvent): bool =
  fQAction_virtualbase_event(self.h, param1.h)

type QActioneventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qaction_types.QAction, slot: QActioneventProc) =
  # TODO check subclass
  var tmp = new QActioneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAction_event(self: ptr cQAction, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QAction_event ".} =
  var nimfunc = cast[ptr QActioneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QActioneventFilter*(self: gen_qaction_types.QAction, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAction_virtualbase_eventFilter(self.h, watched.h, event.h)

type QActioneventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qaction_types.QAction, slot: QActioneventFilterProc) =
  # TODO check subclass
  var tmp = new QActioneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAction_eventFilter(self: ptr cQAction, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAction_eventFilter ".} =
  var nimfunc = cast[ptr QActioneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QActiontimerEvent*(self: gen_qaction_types.QAction, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAction_virtualbase_timerEvent(self.h, event.h)

type QActiontimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qaction_types.QAction, slot: QActiontimerEventProc) =
  # TODO check subclass
  var tmp = new QActiontimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAction_timerEvent(self: ptr cQAction, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAction_timerEvent ".} =
  var nimfunc = cast[ptr QActiontimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QActionchildEvent*(self: gen_qaction_types.QAction, event: gen_qcoreevent_types.QChildEvent): void =
  fQAction_virtualbase_childEvent(self.h, event.h)

type QActionchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qaction_types.QAction, slot: QActionchildEventProc) =
  # TODO check subclass
  var tmp = new QActionchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAction_childEvent(self: ptr cQAction, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAction_childEvent ".} =
  var nimfunc = cast[ptr QActionchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QActioncustomEvent*(self: gen_qaction_types.QAction, event: gen_qcoreevent_types.QEvent): void =
  fQAction_virtualbase_customEvent(self.h, event.h)

type QActioncustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qaction_types.QAction, slot: QActioncustomEventProc) =
  # TODO check subclass
  var tmp = new QActioncustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAction_customEvent(self: ptr cQAction, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAction_customEvent ".} =
  var nimfunc = cast[ptr QActioncustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QActionconnectNotify*(self: gen_qaction_types.QAction, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAction_virtualbase_connectNotify(self.h, signal.h)

type QActionconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qaction_types.QAction, slot: QActionconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QActionconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAction_connectNotify(self: ptr cQAction, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAction_connectNotify ".} =
  var nimfunc = cast[ptr QActionconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QActiondisconnectNotify*(self: gen_qaction_types.QAction, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAction_virtualbase_disconnectNotify(self.h, signal.h)

type QActiondisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qaction_types.QAction, slot: QActiondisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QActiondisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAction_disconnectNotify(self: ptr cQAction, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAction_disconnectNotify ".} =
  var nimfunc = cast[ptr QActiondisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qaction_types.QAction) =
  fcQAction_delete(self.h)
