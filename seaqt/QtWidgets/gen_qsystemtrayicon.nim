import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
{.compile("gen_qsystemtrayicon.cpp", cflags).}


type QSystemTrayIconActivationReasonEnum* = distinct cint
template Unknown*(_: type QSystemTrayIconActivationReasonEnum): untyped = 0
template Context*(_: type QSystemTrayIconActivationReasonEnum): untyped = 1
template DoubleClick*(_: type QSystemTrayIconActivationReasonEnum): untyped = 2
template Trigger*(_: type QSystemTrayIconActivationReasonEnum): untyped = 3
template MiddleClick*(_: type QSystemTrayIconActivationReasonEnum): untyped = 4


type QSystemTrayIconMessageIconEnum* = distinct cint
template NoIcon*(_: type QSystemTrayIconMessageIconEnum): untyped = 0
template Information*(_: type QSystemTrayIconMessageIconEnum): untyped = 1
template Warning*(_: type QSystemTrayIconMessageIconEnum): untyped = 2
template Critical*(_: type QSystemTrayIconMessageIconEnum): untyped = 3


import ./gen_qsystemtrayicon_types
export gen_qsystemtrayicon_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtGui/gen_qicon_types,
  ./gen_qmenu_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qicon_types,
  gen_qmenu_types

type cQSystemTrayIcon*{.exportc: "QSystemTrayIcon", incompleteStruct.} = object

proc fcQSystemTrayIcon_metaObject(self: pointer, ): pointer {.importc: "QSystemTrayIcon_metaObject".}
proc fcQSystemTrayIcon_metacast(self: pointer, param1: cstring): pointer {.importc: "QSystemTrayIcon_metacast".}
proc fcQSystemTrayIcon_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSystemTrayIcon_metacall".}
proc fcQSystemTrayIcon_tr(s: cstring): struct_miqt_string {.importc: "QSystemTrayIcon_tr".}
proc fcQSystemTrayIcon_setContextMenu(self: pointer, menu: pointer): void {.importc: "QSystemTrayIcon_setContextMenu".}
proc fcQSystemTrayIcon_contextMenu(self: pointer, ): pointer {.importc: "QSystemTrayIcon_contextMenu".}
proc fcQSystemTrayIcon_icon(self: pointer, ): pointer {.importc: "QSystemTrayIcon_icon".}
proc fcQSystemTrayIcon_setIcon(self: pointer, icon: pointer): void {.importc: "QSystemTrayIcon_setIcon".}
proc fcQSystemTrayIcon_toolTip(self: pointer, ): struct_miqt_string {.importc: "QSystemTrayIcon_toolTip".}
proc fcQSystemTrayIcon_setToolTip(self: pointer, tip: struct_miqt_string): void {.importc: "QSystemTrayIcon_setToolTip".}
proc fcQSystemTrayIcon_isSystemTrayAvailable(): bool {.importc: "QSystemTrayIcon_isSystemTrayAvailable".}
proc fcQSystemTrayIcon_supportsMessages(): bool {.importc: "QSystemTrayIcon_supportsMessages".}
proc fcQSystemTrayIcon_geometry(self: pointer, ): pointer {.importc: "QSystemTrayIcon_geometry".}
proc fcQSystemTrayIcon_isVisible(self: pointer, ): bool {.importc: "QSystemTrayIcon_isVisible".}
proc fcQSystemTrayIcon_setVisible(self: pointer, visible: bool): void {.importc: "QSystemTrayIcon_setVisible".}
proc fcQSystemTrayIcon_show(self: pointer, ): void {.importc: "QSystemTrayIcon_show".}
proc fcQSystemTrayIcon_hide(self: pointer, ): void {.importc: "QSystemTrayIcon_hide".}
proc fcQSystemTrayIcon_showMessage(self: pointer, title: struct_miqt_string, msg: struct_miqt_string, icon: pointer): void {.importc: "QSystemTrayIcon_showMessage".}
proc fcQSystemTrayIcon_showMessage2(self: pointer, title: struct_miqt_string, msg: struct_miqt_string): void {.importc: "QSystemTrayIcon_showMessage2".}
proc fcQSystemTrayIcon_activated(self: pointer, reason: cint): void {.importc: "QSystemTrayIcon_activated".}
proc fcQSystemTrayIcon_connect_activated(self: pointer, slot: int, callback: proc (slot: int, reason: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSystemTrayIcon_connect_activated".}
proc fcQSystemTrayIcon_messageClicked(self: pointer, ): void {.importc: "QSystemTrayIcon_messageClicked".}
proc fcQSystemTrayIcon_connect_messageClicked(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSystemTrayIcon_connect_messageClicked".}
proc fcQSystemTrayIcon_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSystemTrayIcon_tr2".}
proc fcQSystemTrayIcon_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSystemTrayIcon_tr3".}
proc fcQSystemTrayIcon_showMessage4(self: pointer, title: struct_miqt_string, msg: struct_miqt_string, icon: pointer, msecs: cint): void {.importc: "QSystemTrayIcon_showMessage4".}
proc fcQSystemTrayIcon_showMessage3(self: pointer, title: struct_miqt_string, msg: struct_miqt_string, icon: cint): void {.importc: "QSystemTrayIcon_showMessage3".}
proc fcQSystemTrayIcon_showMessage42(self: pointer, title: struct_miqt_string, msg: struct_miqt_string, icon: cint, msecs: cint): void {.importc: "QSystemTrayIcon_showMessage42".}
type cQSystemTrayIconVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQSystemTrayIconVTable, self: ptr cQSystemTrayIcon) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSystemTrayIcon_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSystemTrayIcon_virtualbase_metaObject".}
proc fcQSystemTrayIcon_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSystemTrayIcon_virtualbase_metacast".}
proc fcQSystemTrayIcon_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSystemTrayIcon_virtualbase_metacall".}
proc fcQSystemTrayIcon_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSystemTrayIcon_virtualbase_event".}
proc fcQSystemTrayIcon_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSystemTrayIcon_virtualbase_eventFilter".}
proc fcQSystemTrayIcon_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSystemTrayIcon_virtualbase_timerEvent".}
proc fcQSystemTrayIcon_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSystemTrayIcon_virtualbase_childEvent".}
proc fcQSystemTrayIcon_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSystemTrayIcon_virtualbase_customEvent".}
proc fcQSystemTrayIcon_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSystemTrayIcon_virtualbase_connectNotify".}
proc fcQSystemTrayIcon_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSystemTrayIcon_virtualbase_disconnectNotify".}
proc fcQSystemTrayIcon_protectedbase_sender(self: pointer, ): pointer {.importc: "QSystemTrayIcon_protectedbase_sender".}
proc fcQSystemTrayIcon_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSystemTrayIcon_protectedbase_senderSignalIndex".}
proc fcQSystemTrayIcon_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSystemTrayIcon_protectedbase_receivers".}
proc fcQSystemTrayIcon_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSystemTrayIcon_protectedbase_isSignalConnected".}
proc fcQSystemTrayIcon_new(vtbl: pointer, ): ptr cQSystemTrayIcon {.importc: "QSystemTrayIcon_new".}
proc fcQSystemTrayIcon_new2(vtbl: pointer, icon: pointer): ptr cQSystemTrayIcon {.importc: "QSystemTrayIcon_new2".}
proc fcQSystemTrayIcon_new3(vtbl: pointer, parent: pointer): ptr cQSystemTrayIcon {.importc: "QSystemTrayIcon_new3".}
proc fcQSystemTrayIcon_new4(vtbl: pointer, icon: pointer, parent: pointer): ptr cQSystemTrayIcon {.importc: "QSystemTrayIcon_new4".}
proc fcQSystemTrayIcon_staticMetaObject(): pointer {.importc: "QSystemTrayIcon_staticMetaObject".}

proc metaObject*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSystemTrayIcon_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, param1: cstring): pointer =
  fcQSystemTrayIcon_metacast(self.h, param1)

proc metacall*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, param1: cint, param2: cint, param3: pointer): cint =
  fcQSystemTrayIcon_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsystemtrayicon_types.QSystemTrayIcon, s: cstring): string =
  let v_ms = fcQSystemTrayIcon_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setContextMenu*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, menu: gen_qmenu_types.QMenu): void =
  fcQSystemTrayIcon_setContextMenu(self.h, menu.h)

proc contextMenu*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQSystemTrayIcon_contextMenu(self.h), owned: false)

proc icon*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQSystemTrayIcon_icon(self.h), owned: true)

proc setIcon*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, icon: gen_qicon_types.QIcon): void =
  fcQSystemTrayIcon_setIcon(self.h, icon.h)

proc toolTip*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): string =
  let v_ms = fcQSystemTrayIcon_toolTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, tip: string): void =
  fcQSystemTrayIcon_setToolTip(self.h, struct_miqt_string(data: tip, len: csize_t(len(tip))))

proc isSystemTrayAvailable*(_: type gen_qsystemtrayicon_types.QSystemTrayIcon, ): bool =
  fcQSystemTrayIcon_isSystemTrayAvailable()

proc supportsMessages*(_: type gen_qsystemtrayicon_types.QSystemTrayIcon, ): bool =
  fcQSystemTrayIcon_supportsMessages()

proc geometry*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSystemTrayIcon_geometry(self.h), owned: true)

proc isVisible*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): bool =
  fcQSystemTrayIcon_isVisible(self.h)

proc setVisible*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, visible: bool): void =
  fcQSystemTrayIcon_setVisible(self.h, visible)

proc show*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): void =
  fcQSystemTrayIcon_show(self.h)

proc hide*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): void =
  fcQSystemTrayIcon_hide(self.h)

proc showMessage*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, title: string, msg: string, icon: gen_qicon_types.QIcon): void =
  fcQSystemTrayIcon_showMessage(self.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: msg, len: csize_t(len(msg))), icon.h)

proc showMessage*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, title: string, msg: string): void =
  fcQSystemTrayIcon_showMessage2(self.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: msg, len: csize_t(len(msg))))

proc activated*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, reason: cint): void =
  fcQSystemTrayIcon_activated(self.h, cint(reason))

type QSystemTrayIconactivatedSlot* = proc(reason: cint)
proc miqt_exec_callback_cQSystemTrayIcon_activated(slot: int, reason: cint) {.cdecl.} =
  let nimfunc = cast[ptr QSystemTrayIconactivatedSlot](cast[pointer](slot))
  let slotval1 = cint(reason)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQSystemTrayIcon_activated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSystemTrayIconactivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactivated*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, slot: QSystemTrayIconactivatedSlot) =
  var tmp = new QSystemTrayIconactivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSystemTrayIcon_connect_activated(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSystemTrayIcon_activated, miqt_exec_callback_cQSystemTrayIcon_activated_release)

proc messageClicked*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): void =
  fcQSystemTrayIcon_messageClicked(self.h)

type QSystemTrayIconmessageClickedSlot* = proc()
proc miqt_exec_callback_cQSystemTrayIcon_messageClicked(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QSystemTrayIconmessageClickedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQSystemTrayIcon_messageClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSystemTrayIconmessageClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmessageClicked*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, slot: QSystemTrayIconmessageClickedSlot) =
  var tmp = new QSystemTrayIconmessageClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSystemTrayIcon_connect_messageClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSystemTrayIcon_messageClicked, miqt_exec_callback_cQSystemTrayIcon_messageClicked_release)

proc tr*(_: type gen_qsystemtrayicon_types.QSystemTrayIcon, s: cstring, c: cstring): string =
  let v_ms = fcQSystemTrayIcon_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsystemtrayicon_types.QSystemTrayIcon, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSystemTrayIcon_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc showMessage*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, title: string, msg: string, icon: gen_qicon_types.QIcon, msecs: cint): void =
  fcQSystemTrayIcon_showMessage4(self.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: msg, len: csize_t(len(msg))), icon.h, msecs)

proc showMessage*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, title: string, msg: string, icon: cint): void =
  fcQSystemTrayIcon_showMessage3(self.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: msg, len: csize_t(len(msg))), cint(icon))

proc showMessage*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, title: string, msg: string, icon: cint, msecs: cint): void =
  fcQSystemTrayIcon_showMessage42(self.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: msg, len: csize_t(len(msg))), cint(icon), msecs)

type QSystemTrayIconmetaObjectProc* = proc(self: QSystemTrayIcon): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSystemTrayIconmetacastProc* = proc(self: QSystemTrayIcon, param1: cstring): pointer {.raises: [], gcsafe.}
type QSystemTrayIconmetacallProc* = proc(self: QSystemTrayIcon, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSystemTrayIconeventProc* = proc(self: QSystemTrayIcon, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSystemTrayIconeventFilterProc* = proc(self: QSystemTrayIcon, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSystemTrayIcontimerEventProc* = proc(self: QSystemTrayIcon, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSystemTrayIconchildEventProc* = proc(self: QSystemTrayIcon, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSystemTrayIconcustomEventProc* = proc(self: QSystemTrayIcon, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSystemTrayIconconnectNotifyProc* = proc(self: QSystemTrayIcon, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSystemTrayIcondisconnectNotifyProc* = proc(self: QSystemTrayIcon, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSystemTrayIconVTable* {.inheritable, pure.} = object
  vtbl: cQSystemTrayIconVTable
  metaObject*: QSystemTrayIconmetaObjectProc
  metacast*: QSystemTrayIconmetacastProc
  metacall*: QSystemTrayIconmetacallProc
  event*: QSystemTrayIconeventProc
  eventFilter*: QSystemTrayIconeventFilterProc
  timerEvent*: QSystemTrayIcontimerEventProc
  childEvent*: QSystemTrayIconchildEventProc
  customEvent*: QSystemTrayIconcustomEventProc
  connectNotify*: QSystemTrayIconconnectNotifyProc
  disconnectNotify*: QSystemTrayIcondisconnectNotifyProc
proc QSystemTrayIconmetaObject*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSystemTrayIcon_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQSystemTrayIcon_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSystemTrayIconVTable](vtbl)
  let self = QSystemTrayIcon(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSystemTrayIconmetacast*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, param1: cstring): pointer =
  fcQSystemTrayIcon_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSystemTrayIcon_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSystemTrayIconVTable](vtbl)
  let self = QSystemTrayIcon(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSystemTrayIconmetacall*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, param1: cint, param2: cint, param3: pointer): cint =
  fcQSystemTrayIcon_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSystemTrayIcon_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSystemTrayIconVTable](vtbl)
  let self = QSystemTrayIcon(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSystemTrayIconevent*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, event: gen_qcoreevent_types.QEvent): bool =
  fcQSystemTrayIcon_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSystemTrayIcon_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSystemTrayIconVTable](vtbl)
  let self = QSystemTrayIcon(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSystemTrayIconeventFilter*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSystemTrayIcon_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSystemTrayIcon_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSystemTrayIconVTable](vtbl)
  let self = QSystemTrayIcon(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSystemTrayIcontimerEvent*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSystemTrayIcon_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSystemTrayIcon_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSystemTrayIconVTable](vtbl)
  let self = QSystemTrayIcon(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QSystemTrayIconchildEvent*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSystemTrayIcon_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSystemTrayIcon_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSystemTrayIconVTable](vtbl)
  let self = QSystemTrayIcon(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QSystemTrayIconcustomEvent*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, event: gen_qcoreevent_types.QEvent): void =
  fcQSystemTrayIcon_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSystemTrayIcon_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSystemTrayIconVTable](vtbl)
  let self = QSystemTrayIcon(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QSystemTrayIconconnectNotify*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSystemTrayIcon_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSystemTrayIcon_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSystemTrayIconVTable](vtbl)
  let self = QSystemTrayIcon(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QSystemTrayIcondisconnectNotify*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSystemTrayIcon_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSystemTrayIcon_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSystemTrayIconVTable](vtbl)
  let self = QSystemTrayIcon(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSystemTrayIcon* {.inheritable.} = ref object of QSystemTrayIcon
  vtbl*: cQSystemTrayIconVTable
method metaObject*(self: VirtualQSystemTrayIcon, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSystemTrayIconmetaObject(self[])
proc miqt_exec_method_cQSystemTrayIcon_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQSystemTrayIcon](cast[uint](vtbl) - uint(offsetOf(VirtualQSystemTrayIcon, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQSystemTrayIcon, param1: cstring): pointer {.base.} =
  QSystemTrayIconmetacast(self[], param1)
proc miqt_exec_method_cQSystemTrayIcon_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQSystemTrayIcon](cast[uint](vtbl) - uint(offsetOf(VirtualQSystemTrayIcon, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQSystemTrayIcon, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSystemTrayIconmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQSystemTrayIcon_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQSystemTrayIcon](cast[uint](vtbl) - uint(offsetOf(VirtualQSystemTrayIcon, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQSystemTrayIcon, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSystemTrayIconevent(self[], event)
proc miqt_exec_method_cQSystemTrayIcon_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQSystemTrayIcon](cast[uint](vtbl) - uint(offsetOf(VirtualQSystemTrayIcon, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQSystemTrayIcon, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSystemTrayIconeventFilter(self[], watched, event)
proc miqt_exec_method_cQSystemTrayIcon_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQSystemTrayIcon](cast[uint](vtbl) - uint(offsetOf(VirtualQSystemTrayIcon, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQSystemTrayIcon, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSystemTrayIcontimerEvent(self[], event)
proc miqt_exec_method_cQSystemTrayIcon_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSystemTrayIcon](cast[uint](vtbl) - uint(offsetOf(VirtualQSystemTrayIcon, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQSystemTrayIcon, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSystemTrayIconchildEvent(self[], event)
proc miqt_exec_method_cQSystemTrayIcon_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSystemTrayIcon](cast[uint](vtbl) - uint(offsetOf(VirtualQSystemTrayIcon, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQSystemTrayIcon, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSystemTrayIconcustomEvent(self[], event)
proc miqt_exec_method_cQSystemTrayIcon_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSystemTrayIcon](cast[uint](vtbl) - uint(offsetOf(VirtualQSystemTrayIcon, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQSystemTrayIcon, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSystemTrayIconconnectNotify(self[], signal)
proc miqt_exec_method_cQSystemTrayIcon_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSystemTrayIcon](cast[uint](vtbl) - uint(offsetOf(VirtualQSystemTrayIcon, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQSystemTrayIcon, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSystemTrayIcondisconnectNotify(self[], signal)
proc miqt_exec_method_cQSystemTrayIcon_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSystemTrayIcon](cast[uint](vtbl) - uint(offsetOf(VirtualQSystemTrayIcon, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSystemTrayIcon_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): cint =
  fcQSystemTrayIcon_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, signal: cstring): cint =
  fcQSystemTrayIcon_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSystemTrayIcon_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsystemtrayicon_types.QSystemTrayIcon,
    vtbl: ref QSystemTrayIconVTable = nil): gen_qsystemtrayicon_types.QSystemTrayIcon =
  let vtbl = if vtbl == nil: new QSystemTrayIconVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSystemTrayIconVTable, _: ptr cQSystemTrayIcon) {.cdecl.} =
    let vtbl = cast[ref QSystemTrayIconVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSystemTrayIcon_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSystemTrayIcon_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSystemTrayIcon_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSystemTrayIcon_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSystemTrayIcon_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSystemTrayIcon_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSystemTrayIcon_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSystemTrayIcon_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSystemTrayIcon_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSystemTrayIcon_disconnectNotify
  gen_qsystemtrayicon_types.QSystemTrayIcon(h: fcQSystemTrayIcon_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qsystemtrayicon_types.QSystemTrayIcon,
    icon: gen_qicon_types.QIcon,
    vtbl: ref QSystemTrayIconVTable = nil): gen_qsystemtrayicon_types.QSystemTrayIcon =
  let vtbl = if vtbl == nil: new QSystemTrayIconVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSystemTrayIconVTable, _: ptr cQSystemTrayIcon) {.cdecl.} =
    let vtbl = cast[ref QSystemTrayIconVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSystemTrayIcon_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSystemTrayIcon_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSystemTrayIcon_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSystemTrayIcon_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSystemTrayIcon_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSystemTrayIcon_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSystemTrayIcon_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSystemTrayIcon_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSystemTrayIcon_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSystemTrayIcon_disconnectNotify
  gen_qsystemtrayicon_types.QSystemTrayIcon(h: fcQSystemTrayIcon_new2(addr(vtbl[].vtbl), icon.h), owned: true)

proc create*(T: type gen_qsystemtrayicon_types.QSystemTrayIcon,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSystemTrayIconVTable = nil): gen_qsystemtrayicon_types.QSystemTrayIcon =
  let vtbl = if vtbl == nil: new QSystemTrayIconVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSystemTrayIconVTable, _: ptr cQSystemTrayIcon) {.cdecl.} =
    let vtbl = cast[ref QSystemTrayIconVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSystemTrayIcon_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSystemTrayIcon_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSystemTrayIcon_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSystemTrayIcon_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSystemTrayIcon_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSystemTrayIcon_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSystemTrayIcon_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSystemTrayIcon_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSystemTrayIcon_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSystemTrayIcon_disconnectNotify
  gen_qsystemtrayicon_types.QSystemTrayIcon(h: fcQSystemTrayIcon_new3(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qsystemtrayicon_types.QSystemTrayIcon,
    icon: gen_qicon_types.QIcon, parent: gen_qobject_types.QObject,
    vtbl: ref QSystemTrayIconVTable = nil): gen_qsystemtrayicon_types.QSystemTrayIcon =
  let vtbl = if vtbl == nil: new QSystemTrayIconVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSystemTrayIconVTable, _: ptr cQSystemTrayIcon) {.cdecl.} =
    let vtbl = cast[ref QSystemTrayIconVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSystemTrayIcon_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSystemTrayIcon_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSystemTrayIcon_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSystemTrayIcon_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSystemTrayIcon_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSystemTrayIcon_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSystemTrayIcon_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSystemTrayIcon_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSystemTrayIcon_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSystemTrayIcon_disconnectNotify
  gen_qsystemtrayicon_types.QSystemTrayIcon(h: fcQSystemTrayIcon_new4(addr(vtbl[].vtbl), icon.h, parent.h), owned: true)

proc create*(T: type gen_qsystemtrayicon_types.QSystemTrayIcon,
    vtbl: VirtualQSystemTrayIcon) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSystemTrayIconVTable, _: ptr cQSystemTrayIcon) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSystemTrayIcon()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSystemTrayIcon, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSystemTrayIcon_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSystemTrayIcon_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSystemTrayIcon_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSystemTrayIcon_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSystemTrayIcon_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSystemTrayIcon_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSystemTrayIcon_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSystemTrayIcon_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSystemTrayIcon_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSystemTrayIcon_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSystemTrayIcon_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qsystemtrayicon_types.QSystemTrayIcon,
    icon: gen_qicon_types.QIcon,
    vtbl: VirtualQSystemTrayIcon) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSystemTrayIconVTable, _: ptr cQSystemTrayIcon) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSystemTrayIcon()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSystemTrayIcon, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSystemTrayIcon_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSystemTrayIcon_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSystemTrayIcon_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSystemTrayIcon_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSystemTrayIcon_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSystemTrayIcon_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSystemTrayIcon_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSystemTrayIcon_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSystemTrayIcon_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSystemTrayIcon_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSystemTrayIcon_new2(addr(vtbl[].vtbl), icon.h)
  vtbl[].owned = true

proc create*(T: type gen_qsystemtrayicon_types.QSystemTrayIcon,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQSystemTrayIcon) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSystemTrayIconVTable, _: ptr cQSystemTrayIcon) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSystemTrayIcon()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSystemTrayIcon, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSystemTrayIcon_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSystemTrayIcon_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSystemTrayIcon_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSystemTrayIcon_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSystemTrayIcon_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSystemTrayIcon_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSystemTrayIcon_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSystemTrayIcon_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSystemTrayIcon_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSystemTrayIcon_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSystemTrayIcon_new3(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qsystemtrayicon_types.QSystemTrayIcon,
    icon: gen_qicon_types.QIcon, parent: gen_qobject_types.QObject,
    vtbl: VirtualQSystemTrayIcon) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSystemTrayIconVTable, _: ptr cQSystemTrayIcon) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSystemTrayIcon()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSystemTrayIcon, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQSystemTrayIcon_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQSystemTrayIcon_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQSystemTrayIcon_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQSystemTrayIcon_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQSystemTrayIcon_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQSystemTrayIcon_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQSystemTrayIcon_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQSystemTrayIcon_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQSystemTrayIcon_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQSystemTrayIcon_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSystemTrayIcon_new4(addr(vtbl[].vtbl), icon.h, parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qsystemtrayicon_types.QSystemTrayIcon): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSystemTrayIcon_staticMetaObject())
