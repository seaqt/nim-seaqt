import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qcoreevent.cpp", cflags).}


type QEventTypeEnum* = distinct cint
template None*(_: type QEventTypeEnum): untyped = 0
template Timer*(_: type QEventTypeEnum): untyped = 1
template MouseButtonPress*(_: type QEventTypeEnum): untyped = 2
template MouseButtonRelease*(_: type QEventTypeEnum): untyped = 3
template MouseButtonDblClick*(_: type QEventTypeEnum): untyped = 4
template MouseMove*(_: type QEventTypeEnum): untyped = 5
template KeyPress*(_: type QEventTypeEnum): untyped = 6
template KeyRelease*(_: type QEventTypeEnum): untyped = 7
template FocusIn*(_: type QEventTypeEnum): untyped = 8
template FocusOut*(_: type QEventTypeEnum): untyped = 9
template FocusAboutToChange*(_: type QEventTypeEnum): untyped = 23
template Enter*(_: type QEventTypeEnum): untyped = 10
template Leave*(_: type QEventTypeEnum): untyped = 11
template Paint*(_: type QEventTypeEnum): untyped = 12
template Move*(_: type QEventTypeEnum): untyped = 13
template Resize*(_: type QEventTypeEnum): untyped = 14
template Create*(_: type QEventTypeEnum): untyped = 15
template Destroy*(_: type QEventTypeEnum): untyped = 16
template Show*(_: type QEventTypeEnum): untyped = 17
template Hide*(_: type QEventTypeEnum): untyped = 18
template Close*(_: type QEventTypeEnum): untyped = 19
template Quit*(_: type QEventTypeEnum): untyped = 20
template ParentChange*(_: type QEventTypeEnum): untyped = 21
template ParentAboutToChange*(_: type QEventTypeEnum): untyped = 131
template ThreadChange*(_: type QEventTypeEnum): untyped = 22
template WindowActivate*(_: type QEventTypeEnum): untyped = 24
template WindowDeactivate*(_: type QEventTypeEnum): untyped = 25
template ShowToParent*(_: type QEventTypeEnum): untyped = 26
template HideToParent*(_: type QEventTypeEnum): untyped = 27
template Wheel*(_: type QEventTypeEnum): untyped = 31
template WindowTitleChange*(_: type QEventTypeEnum): untyped = 33
template WindowIconChange*(_: type QEventTypeEnum): untyped = 34
template ApplicationWindowIconChange*(_: type QEventTypeEnum): untyped = 35
template ApplicationFontChange*(_: type QEventTypeEnum): untyped = 36
template ApplicationLayoutDirectionChange*(_: type QEventTypeEnum): untyped = 37
template ApplicationPaletteChange*(_: type QEventTypeEnum): untyped = 38
template PaletteChange*(_: type QEventTypeEnum): untyped = 39
template Clipboard*(_: type QEventTypeEnum): untyped = 40
template Speech*(_: type QEventTypeEnum): untyped = 42
template MetaCall*(_: type QEventTypeEnum): untyped = 43
template SockAct*(_: type QEventTypeEnum): untyped = 50
template WinEventAct*(_: type QEventTypeEnum): untyped = 132
template DeferredDelete*(_: type QEventTypeEnum): untyped = 52
template DragEnter*(_: type QEventTypeEnum): untyped = 60
template DragMove*(_: type QEventTypeEnum): untyped = 61
template DragLeave*(_: type QEventTypeEnum): untyped = 62
template Drop*(_: type QEventTypeEnum): untyped = 63
template DragResponse*(_: type QEventTypeEnum): untyped = 64
template ChildAdded*(_: type QEventTypeEnum): untyped = 68
template ChildPolished*(_: type QEventTypeEnum): untyped = 69
template ChildRemoved*(_: type QEventTypeEnum): untyped = 71
template ShowWindowRequest*(_: type QEventTypeEnum): untyped = 73
template PolishRequest*(_: type QEventTypeEnum): untyped = 74
template Polish*(_: type QEventTypeEnum): untyped = 75
template LayoutRequest*(_: type QEventTypeEnum): untyped = 76
template UpdateRequest*(_: type QEventTypeEnum): untyped = 77
template UpdateLater*(_: type QEventTypeEnum): untyped = 78
template EmbeddingControl*(_: type QEventTypeEnum): untyped = 79
template ActivateControl*(_: type QEventTypeEnum): untyped = 80
template DeactivateControl*(_: type QEventTypeEnum): untyped = 81
template ContextMenu*(_: type QEventTypeEnum): untyped = 82
template InputMethod*(_: type QEventTypeEnum): untyped = 83
template TabletMove*(_: type QEventTypeEnum): untyped = 87
template LocaleChange*(_: type QEventTypeEnum): untyped = 88
template LanguageChange*(_: type QEventTypeEnum): untyped = 89
template LayoutDirectionChange*(_: type QEventTypeEnum): untyped = 90
template Style*(_: type QEventTypeEnum): untyped = 91
template TabletPress*(_: type QEventTypeEnum): untyped = 92
template TabletRelease*(_: type QEventTypeEnum): untyped = 93
template OkRequest*(_: type QEventTypeEnum): untyped = 94
template HelpRequest*(_: type QEventTypeEnum): untyped = 95
template IconDrag*(_: type QEventTypeEnum): untyped = 96
template FontChange*(_: type QEventTypeEnum): untyped = 97
template EnabledChange*(_: type QEventTypeEnum): untyped = 98
template ActivationChange*(_: type QEventTypeEnum): untyped = 99
template StyleChange*(_: type QEventTypeEnum): untyped = 100
template IconTextChange*(_: type QEventTypeEnum): untyped = 101
template ModifiedChange*(_: type QEventTypeEnum): untyped = 102
template MouseTrackingChange*(_: type QEventTypeEnum): untyped = 109
template WindowBlocked*(_: type QEventTypeEnum): untyped = 103
template WindowUnblocked*(_: type QEventTypeEnum): untyped = 104
template WindowStateChange*(_: type QEventTypeEnum): untyped = 105
template ReadOnlyChange*(_: type QEventTypeEnum): untyped = 106
template ToolTip*(_: type QEventTypeEnum): untyped = 110
template WhatsThis*(_: type QEventTypeEnum): untyped = 111
template StatusTip*(_: type QEventTypeEnum): untyped = 112
template ActionChanged*(_: type QEventTypeEnum): untyped = 113
template ActionAdded*(_: type QEventTypeEnum): untyped = 114
template ActionRemoved*(_: type QEventTypeEnum): untyped = 115
template FileOpen*(_: type QEventTypeEnum): untyped = 116
template Shortcut*(_: type QEventTypeEnum): untyped = 117
template ShortcutOverride*(_: type QEventTypeEnum): untyped = 51
template WhatsThisClicked*(_: type QEventTypeEnum): untyped = 118
template ToolBarChange*(_: type QEventTypeEnum): untyped = 120
template ApplicationActivate*(_: type QEventTypeEnum): untyped = 121
template ApplicationActivated*(_: type QEventTypeEnum): untyped = 121
template ApplicationDeactivate*(_: type QEventTypeEnum): untyped = 122
template ApplicationDeactivated*(_: type QEventTypeEnum): untyped = 122
template QueryWhatsThis*(_: type QEventTypeEnum): untyped = 123
template EnterWhatsThisMode*(_: type QEventTypeEnum): untyped = 124
template LeaveWhatsThisMode*(_: type QEventTypeEnum): untyped = 125
template ZOrderChange*(_: type QEventTypeEnum): untyped = 126
template HoverEnter*(_: type QEventTypeEnum): untyped = 127
template HoverLeave*(_: type QEventTypeEnum): untyped = 128
template HoverMove*(_: type QEventTypeEnum): untyped = 129
template AcceptDropsChange*(_: type QEventTypeEnum): untyped = 152
template ZeroTimerEvent*(_: type QEventTypeEnum): untyped = 154
template GraphicsSceneMouseMove*(_: type QEventTypeEnum): untyped = 155
template GraphicsSceneMousePress*(_: type QEventTypeEnum): untyped = 156
template GraphicsSceneMouseRelease*(_: type QEventTypeEnum): untyped = 157
template GraphicsSceneMouseDoubleClick*(_: type QEventTypeEnum): untyped = 158
template GraphicsSceneContextMenu*(_: type QEventTypeEnum): untyped = 159
template GraphicsSceneHoverEnter*(_: type QEventTypeEnum): untyped = 160
template GraphicsSceneHoverMove*(_: type QEventTypeEnum): untyped = 161
template GraphicsSceneHoverLeave*(_: type QEventTypeEnum): untyped = 162
template GraphicsSceneHelp*(_: type QEventTypeEnum): untyped = 163
template GraphicsSceneDragEnter*(_: type QEventTypeEnum): untyped = 164
template GraphicsSceneDragMove*(_: type QEventTypeEnum): untyped = 165
template GraphicsSceneDragLeave*(_: type QEventTypeEnum): untyped = 166
template GraphicsSceneDrop*(_: type QEventTypeEnum): untyped = 167
template GraphicsSceneWheel*(_: type QEventTypeEnum): untyped = 168
template GraphicsSceneLeave*(_: type QEventTypeEnum): untyped = 220
template KeyboardLayoutChange*(_: type QEventTypeEnum): untyped = 169
template DynamicPropertyChange*(_: type QEventTypeEnum): untyped = 170
template TabletEnterProximity*(_: type QEventTypeEnum): untyped = 171
template TabletLeaveProximity*(_: type QEventTypeEnum): untyped = 172
template NonClientAreaMouseMove*(_: type QEventTypeEnum): untyped = 173
template NonClientAreaMouseButtonPress*(_: type QEventTypeEnum): untyped = 174
template NonClientAreaMouseButtonRelease*(_: type QEventTypeEnum): untyped = 175
template NonClientAreaMouseButtonDblClick*(_: type QEventTypeEnum): untyped = 176
template MacSizeChange*(_: type QEventTypeEnum): untyped = 177
template ContentsRectChange*(_: type QEventTypeEnum): untyped = 178
template MacGLWindowChange*(_: type QEventTypeEnum): untyped = 179
template FutureCallOut*(_: type QEventTypeEnum): untyped = 180
template GraphicsSceneResize*(_: type QEventTypeEnum): untyped = 181
template GraphicsSceneMove*(_: type QEventTypeEnum): untyped = 182
template CursorChange*(_: type QEventTypeEnum): untyped = 183
template ToolTipChange*(_: type QEventTypeEnum): untyped = 184
template NetworkReplyUpdated*(_: type QEventTypeEnum): untyped = 185
template GrabMouse*(_: type QEventTypeEnum): untyped = 186
template UngrabMouse*(_: type QEventTypeEnum): untyped = 187
template GrabKeyboard*(_: type QEventTypeEnum): untyped = 188
template UngrabKeyboard*(_: type QEventTypeEnum): untyped = 189
template StateMachineSignal*(_: type QEventTypeEnum): untyped = 192
template StateMachineWrapped*(_: type QEventTypeEnum): untyped = 193
template TouchBegin*(_: type QEventTypeEnum): untyped = 194
template TouchUpdate*(_: type QEventTypeEnum): untyped = 195
template TouchEnd*(_: type QEventTypeEnum): untyped = 196
template NativeGesture*(_: type QEventTypeEnum): untyped = 197
template RequestSoftwareInputPanel*(_: type QEventTypeEnum): untyped = 199
template CloseSoftwareInputPanel*(_: type QEventTypeEnum): untyped = 200
template WinIdChange*(_: type QEventTypeEnum): untyped = 203
template Gesture*(_: type QEventTypeEnum): untyped = 198
template GestureOverride*(_: type QEventTypeEnum): untyped = 202
template ScrollPrepare*(_: type QEventTypeEnum): untyped = 204
template Scroll*(_: type QEventTypeEnum): untyped = 205
template Expose*(_: type QEventTypeEnum): untyped = 206
template InputMethodQuery*(_: type QEventTypeEnum): untyped = 207
template OrientationChange*(_: type QEventTypeEnum): untyped = 208
template TouchCancel*(_: type QEventTypeEnum): untyped = 209
template ThemeChange*(_: type QEventTypeEnum): untyped = 210
template SockClose*(_: type QEventTypeEnum): untyped = 211
template PlatformPanel*(_: type QEventTypeEnum): untyped = 212
template StyleAnimationUpdate*(_: type QEventTypeEnum): untyped = 213
template ApplicationStateChange*(_: type QEventTypeEnum): untyped = 214
template WindowChangeInternal*(_: type QEventTypeEnum): untyped = 215
template ScreenChangeInternal*(_: type QEventTypeEnum): untyped = 216
template PlatformSurface*(_: type QEventTypeEnum): untyped = 217
template Pointer*(_: type QEventTypeEnum): untyped = 218
template TabletTrackingChange*(_: type QEventTypeEnum): untyped = 219
template WindowAboutToChangeInternal*(_: type QEventTypeEnum): untyped = 221
template User*(_: type QEventTypeEnum): untyped = 1000
template MaxUser*(_: type QEventTypeEnum): untyped = 65535


import ./gen_qcoreevent_types
export gen_qcoreevent_types

import
  ./gen_qobject_types,
  ./gen_qobjectdefs_types
export
  gen_qobject_types,
  gen_qobjectdefs_types

type cQEvent*{.exportc: "QEvent", incompleteStruct.} = object
type cQTimerEvent*{.exportc: "QTimerEvent", incompleteStruct.} = object
type cQChildEvent*{.exportc: "QChildEvent", incompleteStruct.} = object
type cQDynamicPropertyChangeEvent*{.exportc: "QDynamicPropertyChangeEvent", incompleteStruct.} = object

proc fcQEvent_typeX(self: pointer, ): cint {.importc: "QEvent_type".}
proc fcQEvent_spontaneous(self: pointer, ): bool {.importc: "QEvent_spontaneous".}
proc fcQEvent_setAccepted(self: pointer, accepted: bool): void {.importc: "QEvent_setAccepted".}
proc fcQEvent_isAccepted(self: pointer, ): bool {.importc: "QEvent_isAccepted".}
proc fcQEvent_accept(self: pointer, ): void {.importc: "QEvent_accept".}
proc fcQEvent_ignore(self: pointer, ): void {.importc: "QEvent_ignore".}
proc fcQEvent_isInputEvent(self: pointer, ): bool {.importc: "QEvent_isInputEvent".}
proc fcQEvent_isPointerEvent(self: pointer, ): bool {.importc: "QEvent_isPointerEvent".}
proc fcQEvent_isSinglePointEvent(self: pointer, ): bool {.importc: "QEvent_isSinglePointEvent".}
proc fcQEvent_registerEventType(): cint {.importc: "QEvent_registerEventType".}
proc fcQEvent_clone(self: pointer, ): pointer {.importc: "QEvent_clone".}
proc fcQEvent_registerEventType1(hint: cint): cint {.importc: "QEvent_registerEventType1".}
type cQEventVTable = object
  destructor*: proc(vtbl: ptr cQEventVTable, self: ptr cQEvent) {.cdecl, raises:[], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QEvent_virtualbase_setAccepted".}
proc fcQEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QEvent_virtualbase_clone".}
proc fcQEvent_new(vtbl: pointer, typeVal: cint): ptr cQEvent {.importc: "QEvent_new".}
proc fcQEvent_staticMetaObject(): pointer {.importc: "QEvent_staticMetaObject".}
proc fcQEvent_delete(self: pointer) {.importc: "QEvent_delete".}
proc fcQTimerEvent_clone(self: pointer, ): pointer {.importc: "QTimerEvent_clone".}
proc fcQTimerEvent_timerId(self: pointer, ): cint {.importc: "QTimerEvent_timerId".}
type cQTimerEventVTable = object
  destructor*: proc(vtbl: ptr cQTimerEventVTable, self: ptr cQTimerEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQTimerEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QTimerEvent_virtualbase_clone".}
proc fcQTimerEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QTimerEvent_virtualbase_setAccepted".}
proc fcQTimerEvent_new(vtbl: pointer, timerId: cint): ptr cQTimerEvent {.importc: "QTimerEvent_new".}
proc fcQTimerEvent_delete(self: pointer) {.importc: "QTimerEvent_delete".}
proc fcQChildEvent_clone(self: pointer, ): pointer {.importc: "QChildEvent_clone".}
proc fcQChildEvent_child(self: pointer, ): pointer {.importc: "QChildEvent_child".}
proc fcQChildEvent_added(self: pointer, ): bool {.importc: "QChildEvent_added".}
proc fcQChildEvent_polished(self: pointer, ): bool {.importc: "QChildEvent_polished".}
proc fcQChildEvent_removed(self: pointer, ): bool {.importc: "QChildEvent_removed".}
type cQChildEventVTable = object
  destructor*: proc(vtbl: ptr cQChildEventVTable, self: ptr cQChildEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQChildEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QChildEvent_virtualbase_clone".}
proc fcQChildEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QChildEvent_virtualbase_setAccepted".}
proc fcQChildEvent_new(vtbl: pointer, typeVal: cint, child: pointer): ptr cQChildEvent {.importc: "QChildEvent_new".}
proc fcQChildEvent_delete(self: pointer) {.importc: "QChildEvent_delete".}
proc fcQDynamicPropertyChangeEvent_clone(self: pointer, ): pointer {.importc: "QDynamicPropertyChangeEvent_clone".}
proc fcQDynamicPropertyChangeEvent_propertyName(self: pointer, ): struct_miqt_string {.importc: "QDynamicPropertyChangeEvent_propertyName".}
type cQDynamicPropertyChangeEventVTable = object
  destructor*: proc(vtbl: ptr cQDynamicPropertyChangeEventVTable, self: ptr cQDynamicPropertyChangeEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQDynamicPropertyChangeEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QDynamicPropertyChangeEvent_virtualbase_clone".}
proc fcQDynamicPropertyChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QDynamicPropertyChangeEvent_virtualbase_setAccepted".}
proc fcQDynamicPropertyChangeEvent_new(vtbl: pointer, name: struct_miqt_string): ptr cQDynamicPropertyChangeEvent {.importc: "QDynamicPropertyChangeEvent_new".}
proc fcQDynamicPropertyChangeEvent_delete(self: pointer) {.importc: "QDynamicPropertyChangeEvent_delete".}

proc typeX*(self: gen_qcoreevent_types.QEvent, ): cint =
  cint(fcQEvent_typeX(self.h))

proc spontaneous*(self: gen_qcoreevent_types.QEvent, ): bool =
  fcQEvent_spontaneous(self.h)

proc setAccepted*(self: gen_qcoreevent_types.QEvent, accepted: bool): void =
  fcQEvent_setAccepted(self.h, accepted)

proc isAccepted*(self: gen_qcoreevent_types.QEvent, ): bool =
  fcQEvent_isAccepted(self.h)

proc accept*(self: gen_qcoreevent_types.QEvent, ): void =
  fcQEvent_accept(self.h)

proc ignore*(self: gen_qcoreevent_types.QEvent, ): void =
  fcQEvent_ignore(self.h)

proc isInputEvent*(self: gen_qcoreevent_types.QEvent, ): bool =
  fcQEvent_isInputEvent(self.h)

proc isPointerEvent*(self: gen_qcoreevent_types.QEvent, ): bool =
  fcQEvent_isPointerEvent(self.h)

proc isSinglePointEvent*(self: gen_qcoreevent_types.QEvent, ): bool =
  fcQEvent_isSinglePointEvent(self.h)

proc registerEventType*(_: type gen_qcoreevent_types.QEvent, ): cint =
  fcQEvent_registerEventType()

proc clone*(self: gen_qcoreevent_types.QEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fcQEvent_clone(self.h))

proc registerEventType*(_: type gen_qcoreevent_types.QEvent, hint: cint): cint =
  fcQEvent_registerEventType1(hint)

type QEventsetAcceptedProc* = proc(self: QEvent, accepted: bool): void {.raises: [], gcsafe.}
type QEventcloneProc* = proc(self: QEvent): gen_qcoreevent_types.QEvent {.raises: [], gcsafe.}
type QEventVTable* = object
  vtbl: cQEventVTable
  setAccepted*: QEventsetAcceptedProc
  clone*: QEventcloneProc
proc QEventsetAccepted*(self: gen_qcoreevent_types.QEvent, accepted: bool): void =
  fcQEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QEventVTable](vtbl)
  let self = QEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc QEventclone*(self: gen_qcoreevent_types.QEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fcQEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QEventVTable](vtbl)
  let self = QEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc create*(T: type gen_qcoreevent_types.QEvent,
    typeVal: cint,
    vtbl: ref QEventVTable = nil): gen_qcoreevent_types.QEvent =
  let vtbl = if vtbl == nil: new QEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQEventVTable, _: ptr cQEvent) {.cdecl.} =
    let vtbl = cast[ref QEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQEvent_setAccepted
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQEvent_clone
  gen_qcoreevent_types.QEvent(h: fcQEvent_new(addr(vtbl[]), cint(typeVal)))

proc staticMetaObject*(_: type gen_qcoreevent_types.QEvent): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQEvent_staticMetaObject())
proc delete*(self: gen_qcoreevent_types.QEvent) =
  fcQEvent_delete(self.h)
proc clone*(self: gen_qcoreevent_types.QTimerEvent, ): gen_qcoreevent_types.QTimerEvent =
  gen_qcoreevent_types.QTimerEvent(h: fcQTimerEvent_clone(self.h))

proc timerId*(self: gen_qcoreevent_types.QTimerEvent, ): cint =
  fcQTimerEvent_timerId(self.h)

type QTimerEventcloneProc* = proc(self: QTimerEvent): gen_qcoreevent_types.QTimerEvent {.raises: [], gcsafe.}
type QTimerEventsetAcceptedProc* = proc(self: QTimerEvent, accepted: bool): void {.raises: [], gcsafe.}
type QTimerEventVTable* = object
  vtbl: cQTimerEventVTable
  clone*: QTimerEventcloneProc
  setAccepted*: QTimerEventsetAcceptedProc
proc QTimerEventclone*(self: gen_qcoreevent_types.QTimerEvent, ): gen_qcoreevent_types.QTimerEvent =
  gen_qcoreevent_types.QTimerEvent(h: fcQTimerEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQTimerEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTimerEventVTable](vtbl)
  let self = QTimerEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QTimerEventsetAccepted*(self: gen_qcoreevent_types.QTimerEvent, accepted: bool): void =
  fcQTimerEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQTimerEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTimerEventVTable](vtbl)
  let self = QTimerEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qcoreevent_types.QTimerEvent,
    timerId: cint,
    vtbl: ref QTimerEventVTable = nil): gen_qcoreevent_types.QTimerEvent =
  let vtbl = if vtbl == nil: new QTimerEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTimerEventVTable, _: ptr cQTimerEvent) {.cdecl.} =
    let vtbl = cast[ref QTimerEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTimerEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQTimerEvent_setAccepted
  gen_qcoreevent_types.QTimerEvent(h: fcQTimerEvent_new(addr(vtbl[]), timerId))

proc delete*(self: gen_qcoreevent_types.QTimerEvent) =
  fcQTimerEvent_delete(self.h)
proc clone*(self: gen_qcoreevent_types.QChildEvent, ): gen_qcoreevent_types.QChildEvent =
  gen_qcoreevent_types.QChildEvent(h: fcQChildEvent_clone(self.h))

proc child*(self: gen_qcoreevent_types.QChildEvent, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQChildEvent_child(self.h))

proc added*(self: gen_qcoreevent_types.QChildEvent, ): bool =
  fcQChildEvent_added(self.h)

proc polished*(self: gen_qcoreevent_types.QChildEvent, ): bool =
  fcQChildEvent_polished(self.h)

proc removed*(self: gen_qcoreevent_types.QChildEvent, ): bool =
  fcQChildEvent_removed(self.h)

type QChildEventcloneProc* = proc(self: QChildEvent): gen_qcoreevent_types.QChildEvent {.raises: [], gcsafe.}
type QChildEventsetAcceptedProc* = proc(self: QChildEvent, accepted: bool): void {.raises: [], gcsafe.}
type QChildEventVTable* = object
  vtbl: cQChildEventVTable
  clone*: QChildEventcloneProc
  setAccepted*: QChildEventsetAcceptedProc
proc QChildEventclone*(self: gen_qcoreevent_types.QChildEvent, ): gen_qcoreevent_types.QChildEvent =
  gen_qcoreevent_types.QChildEvent(h: fcQChildEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQChildEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QChildEventVTable](vtbl)
  let self = QChildEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QChildEventsetAccepted*(self: gen_qcoreevent_types.QChildEvent, accepted: bool): void =
  fcQChildEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQChildEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QChildEventVTable](vtbl)
  let self = QChildEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qcoreevent_types.QChildEvent,
    typeVal: cint, child: gen_qobject_types.QObject,
    vtbl: ref QChildEventVTable = nil): gen_qcoreevent_types.QChildEvent =
  let vtbl = if vtbl == nil: new QChildEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQChildEventVTable, _: ptr cQChildEvent) {.cdecl.} =
    let vtbl = cast[ref QChildEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQChildEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQChildEvent_setAccepted
  gen_qcoreevent_types.QChildEvent(h: fcQChildEvent_new(addr(vtbl[]), cint(typeVal), child.h))

proc delete*(self: gen_qcoreevent_types.QChildEvent) =
  fcQChildEvent_delete(self.h)
proc clone*(self: gen_qcoreevent_types.QDynamicPropertyChangeEvent, ): gen_qcoreevent_types.QDynamicPropertyChangeEvent =
  gen_qcoreevent_types.QDynamicPropertyChangeEvent(h: fcQDynamicPropertyChangeEvent_clone(self.h))

proc propertyName*(self: gen_qcoreevent_types.QDynamicPropertyChangeEvent, ): seq[byte] =
  var v_bytearray = fcQDynamicPropertyChangeEvent_propertyName(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

type QDynamicPropertyChangeEventcloneProc* = proc(self: QDynamicPropertyChangeEvent): gen_qcoreevent_types.QDynamicPropertyChangeEvent {.raises: [], gcsafe.}
type QDynamicPropertyChangeEventsetAcceptedProc* = proc(self: QDynamicPropertyChangeEvent, accepted: bool): void {.raises: [], gcsafe.}
type QDynamicPropertyChangeEventVTable* = object
  vtbl: cQDynamicPropertyChangeEventVTable
  clone*: QDynamicPropertyChangeEventcloneProc
  setAccepted*: QDynamicPropertyChangeEventsetAcceptedProc
proc QDynamicPropertyChangeEventclone*(self: gen_qcoreevent_types.QDynamicPropertyChangeEvent, ): gen_qcoreevent_types.QDynamicPropertyChangeEvent =
  gen_qcoreevent_types.QDynamicPropertyChangeEvent(h: fcQDynamicPropertyChangeEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQDynamicPropertyChangeEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDynamicPropertyChangeEventVTable](vtbl)
  let self = QDynamicPropertyChangeEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QDynamicPropertyChangeEventsetAccepted*(self: gen_qcoreevent_types.QDynamicPropertyChangeEvent, accepted: bool): void =
  fcQDynamicPropertyChangeEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQDynamicPropertyChangeEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDynamicPropertyChangeEventVTable](vtbl)
  let self = QDynamicPropertyChangeEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qcoreevent_types.QDynamicPropertyChangeEvent,
    name: seq[byte],
    vtbl: ref QDynamicPropertyChangeEventVTable = nil): gen_qcoreevent_types.QDynamicPropertyChangeEvent =
  let vtbl = if vtbl == nil: new QDynamicPropertyChangeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDynamicPropertyChangeEventVTable, _: ptr cQDynamicPropertyChangeEvent) {.cdecl.} =
    let vtbl = cast[ref QDynamicPropertyChangeEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQDynamicPropertyChangeEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQDynamicPropertyChangeEvent_setAccepted
  gen_qcoreevent_types.QDynamicPropertyChangeEvent(h: fcQDynamicPropertyChangeEvent_new(addr(vtbl[]), struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name)))))

proc delete*(self: gen_qcoreevent_types.QDynamicPropertyChangeEvent) =
  fcQDynamicPropertyChangeEvent_delete(self.h)
