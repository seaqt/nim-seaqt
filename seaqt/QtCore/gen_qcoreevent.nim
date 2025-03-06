import ./Qt6Core_libs

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
  ./gen_qobject_types
export
  gen_qobject_types

type cQEvent*{.exportc: "QEvent", incompleteStruct.} = object
type cQTimerEvent*{.exportc: "QTimerEvent", incompleteStruct.} = object
type cQChildEvent*{.exportc: "QChildEvent", incompleteStruct.} = object
type cQDynamicPropertyChangeEvent*{.exportc: "QDynamicPropertyChangeEvent", incompleteStruct.} = object

proc fcQEvent_new(typeVal: cint): ptr cQEvent {.importc: "QEvent_new".}
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
proc fQEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QEvent_virtualbase_setAccepted".}
proc fcQEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QEvent_override_virtual_setAccepted".}
proc fQEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QEvent_virtualbase_clone".}
proc fcQEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QEvent_override_virtual_clone".}
proc fcQEvent_delete(self: pointer) {.importc: "QEvent_delete".}
proc fcQTimerEvent_new(timerId: cint): ptr cQTimerEvent {.importc: "QTimerEvent_new".}
proc fcQTimerEvent_clone(self: pointer, ): pointer {.importc: "QTimerEvent_clone".}
proc fcQTimerEvent_timerId(self: pointer, ): cint {.importc: "QTimerEvent_timerId".}
proc fQTimerEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QTimerEvent_virtualbase_clone".}
proc fcQTimerEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QTimerEvent_override_virtual_clone".}
proc fQTimerEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QTimerEvent_virtualbase_setAccepted".}
proc fcQTimerEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QTimerEvent_override_virtual_setAccepted".}
proc fcQTimerEvent_delete(self: pointer) {.importc: "QTimerEvent_delete".}
proc fcQChildEvent_new(typeVal: cint, child: pointer): ptr cQChildEvent {.importc: "QChildEvent_new".}
proc fcQChildEvent_clone(self: pointer, ): pointer {.importc: "QChildEvent_clone".}
proc fcQChildEvent_child(self: pointer, ): pointer {.importc: "QChildEvent_child".}
proc fcQChildEvent_added(self: pointer, ): bool {.importc: "QChildEvent_added".}
proc fcQChildEvent_polished(self: pointer, ): bool {.importc: "QChildEvent_polished".}
proc fcQChildEvent_removed(self: pointer, ): bool {.importc: "QChildEvent_removed".}
proc fQChildEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QChildEvent_virtualbase_clone".}
proc fcQChildEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QChildEvent_override_virtual_clone".}
proc fQChildEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QChildEvent_virtualbase_setAccepted".}
proc fcQChildEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QChildEvent_override_virtual_setAccepted".}
proc fcQChildEvent_delete(self: pointer) {.importc: "QChildEvent_delete".}
proc fcQDynamicPropertyChangeEvent_new(name: struct_miqt_string): ptr cQDynamicPropertyChangeEvent {.importc: "QDynamicPropertyChangeEvent_new".}
proc fcQDynamicPropertyChangeEvent_clone(self: pointer, ): pointer {.importc: "QDynamicPropertyChangeEvent_clone".}
proc fcQDynamicPropertyChangeEvent_propertyName(self: pointer, ): struct_miqt_string {.importc: "QDynamicPropertyChangeEvent_propertyName".}
proc fQDynamicPropertyChangeEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QDynamicPropertyChangeEvent_virtualbase_clone".}
proc fcQDynamicPropertyChangeEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QDynamicPropertyChangeEvent_override_virtual_clone".}
proc fQDynamicPropertyChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QDynamicPropertyChangeEvent_virtualbase_setAccepted".}
proc fcQDynamicPropertyChangeEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QDynamicPropertyChangeEvent_override_virtual_setAccepted".}
proc fcQDynamicPropertyChangeEvent_delete(self: pointer) {.importc: "QDynamicPropertyChangeEvent_delete".}


func init*(T: type gen_qcoreevent_types.QEvent, h: ptr cQEvent): gen_qcoreevent_types.QEvent =
  T(h: h)
proc create*(T: type gen_qcoreevent_types.QEvent, typeVal: cint): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent.init(fcQEvent_new(cint(typeVal)))

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

proc QEventsetAccepted*(self: gen_qcoreevent_types.QEvent, accepted: bool): void =
  fQEvent_virtualbase_setAccepted(self.h, accepted)

type QEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qcoreevent_types.QEvent, slot: QEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEvent_setAccepted(self: ptr cQEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QEvent_setAccepted ".} =
  var nimfunc = cast[ptr QEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc QEventclone*(self: gen_qcoreevent_types.QEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fQEvent_virtualbase_clone(self.h))

type QEventcloneProc* = proc(): gen_qcoreevent_types.QEvent
proc onclone*(self: gen_qcoreevent_types.QEvent, slot: QEventcloneProc) =
  # TODO check subclass
  var tmp = new QEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEvent_clone(self: ptr cQEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QEvent_clone ".} =
  var nimfunc = cast[ptr QEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qcoreevent_types.QEvent) =
  fcQEvent_delete(self.h)

func init*(T: type gen_qcoreevent_types.QTimerEvent, h: ptr cQTimerEvent): gen_qcoreevent_types.QTimerEvent =
  T(h: h)
proc create*(T: type gen_qcoreevent_types.QTimerEvent, timerId: cint): gen_qcoreevent_types.QTimerEvent =
  gen_qcoreevent_types.QTimerEvent.init(fcQTimerEvent_new(timerId))

proc clone*(self: gen_qcoreevent_types.QTimerEvent, ): gen_qcoreevent_types.QTimerEvent =
  gen_qcoreevent_types.QTimerEvent(h: fcQTimerEvent_clone(self.h))

proc timerId*(self: gen_qcoreevent_types.QTimerEvent, ): cint =
  fcQTimerEvent_timerId(self.h)

proc QTimerEventclone*(self: gen_qcoreevent_types.QTimerEvent, ): gen_qcoreevent_types.QTimerEvent =
  gen_qcoreevent_types.QTimerEvent(h: fQTimerEvent_virtualbase_clone(self.h))

type QTimerEventcloneProc* = proc(): gen_qcoreevent_types.QTimerEvent
proc onclone*(self: gen_qcoreevent_types.QTimerEvent, slot: QTimerEventcloneProc) =
  # TODO check subclass
  var tmp = new QTimerEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimerEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimerEvent_clone(self: ptr cQTimerEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QTimerEvent_clone ".} =
  var nimfunc = cast[ptr QTimerEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTimerEventsetAccepted*(self: gen_qcoreevent_types.QTimerEvent, accepted: bool): void =
  fQTimerEvent_virtualbase_setAccepted(self.h, accepted)

type QTimerEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qcoreevent_types.QTimerEvent, slot: QTimerEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QTimerEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTimerEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimerEvent_setAccepted(self: ptr cQTimerEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QTimerEvent_setAccepted ".} =
  var nimfunc = cast[ptr QTimerEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qcoreevent_types.QTimerEvent) =
  fcQTimerEvent_delete(self.h)

func init*(T: type gen_qcoreevent_types.QChildEvent, h: ptr cQChildEvent): gen_qcoreevent_types.QChildEvent =
  T(h: h)
proc create*(T: type gen_qcoreevent_types.QChildEvent, typeVal: cint, child: gen_qobject_types.QObject): gen_qcoreevent_types.QChildEvent =
  gen_qcoreevent_types.QChildEvent.init(fcQChildEvent_new(cint(typeVal), child.h))

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

proc QChildEventclone*(self: gen_qcoreevent_types.QChildEvent, ): gen_qcoreevent_types.QChildEvent =
  gen_qcoreevent_types.QChildEvent(h: fQChildEvent_virtualbase_clone(self.h))

type QChildEventcloneProc* = proc(): gen_qcoreevent_types.QChildEvent
proc onclone*(self: gen_qcoreevent_types.QChildEvent, slot: QChildEventcloneProc) =
  # TODO check subclass
  var tmp = new QChildEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQChildEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QChildEvent_clone(self: ptr cQChildEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QChildEvent_clone ".} =
  var nimfunc = cast[ptr QChildEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QChildEventsetAccepted*(self: gen_qcoreevent_types.QChildEvent, accepted: bool): void =
  fQChildEvent_virtualbase_setAccepted(self.h, accepted)

type QChildEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qcoreevent_types.QChildEvent, slot: QChildEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QChildEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQChildEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QChildEvent_setAccepted(self: ptr cQChildEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QChildEvent_setAccepted ".} =
  var nimfunc = cast[ptr QChildEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qcoreevent_types.QChildEvent) =
  fcQChildEvent_delete(self.h)

func init*(T: type gen_qcoreevent_types.QDynamicPropertyChangeEvent, h: ptr cQDynamicPropertyChangeEvent): gen_qcoreevent_types.QDynamicPropertyChangeEvent =
  T(h: h)
proc create*(T: type gen_qcoreevent_types.QDynamicPropertyChangeEvent, name: seq[byte]): gen_qcoreevent_types.QDynamicPropertyChangeEvent =
  gen_qcoreevent_types.QDynamicPropertyChangeEvent.init(fcQDynamicPropertyChangeEvent_new(struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name)))))

proc clone*(self: gen_qcoreevent_types.QDynamicPropertyChangeEvent, ): gen_qcoreevent_types.QDynamicPropertyChangeEvent =
  gen_qcoreevent_types.QDynamicPropertyChangeEvent(h: fcQDynamicPropertyChangeEvent_clone(self.h))

proc propertyName*(self: gen_qcoreevent_types.QDynamicPropertyChangeEvent, ): seq[byte] =
  var v_bytearray = fcQDynamicPropertyChangeEvent_propertyName(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc QDynamicPropertyChangeEventclone*(self: gen_qcoreevent_types.QDynamicPropertyChangeEvent, ): gen_qcoreevent_types.QDynamicPropertyChangeEvent =
  gen_qcoreevent_types.QDynamicPropertyChangeEvent(h: fQDynamicPropertyChangeEvent_virtualbase_clone(self.h))

type QDynamicPropertyChangeEventcloneProc* = proc(): gen_qcoreevent_types.QDynamicPropertyChangeEvent
proc onclone*(self: gen_qcoreevent_types.QDynamicPropertyChangeEvent, slot: QDynamicPropertyChangeEventcloneProc) =
  # TODO check subclass
  var tmp = new QDynamicPropertyChangeEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDynamicPropertyChangeEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDynamicPropertyChangeEvent_clone(self: ptr cQDynamicPropertyChangeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QDynamicPropertyChangeEvent_clone ".} =
  var nimfunc = cast[ptr QDynamicPropertyChangeEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDynamicPropertyChangeEventsetAccepted*(self: gen_qcoreevent_types.QDynamicPropertyChangeEvent, accepted: bool): void =
  fQDynamicPropertyChangeEvent_virtualbase_setAccepted(self.h, accepted)

type QDynamicPropertyChangeEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qcoreevent_types.QDynamicPropertyChangeEvent, slot: QDynamicPropertyChangeEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QDynamicPropertyChangeEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDynamicPropertyChangeEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDynamicPropertyChangeEvent_setAccepted(self: ptr cQDynamicPropertyChangeEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QDynamicPropertyChangeEvent_setAccepted ".} =
  var nimfunc = cast[ptr QDynamicPropertyChangeEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qcoreevent_types.QDynamicPropertyChangeEvent) =
  fcQDynamicPropertyChangeEvent_delete(self.h)
