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
{.compile("gen_qgraphicssceneevent.cpp", cflags).}


type QGraphicsSceneContextMenuEventReasonEnum* = distinct cint
template Mouse*(_: type QGraphicsSceneContextMenuEventReasonEnum): untyped = 0
template Keyboard*(_: type QGraphicsSceneContextMenuEventReasonEnum): untyped = 1
template Other*(_: type QGraphicsSceneContextMenuEventReasonEnum): untyped = 2


import ./gen_qgraphicssceneevent_types
export gen_qgraphicssceneevent_types

import
  ../QtCore/gen_qcoreevent,
  ../QtCore/gen_qmimedata_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ./gen_qwidget_types
export
  gen_qcoreevent,
  gen_qmimedata_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qwidget_types

type cQGraphicsSceneEvent*{.exportc: "QGraphicsSceneEvent", incompleteStruct.} = object
type cQGraphicsSceneMouseEvent*{.exportc: "QGraphicsSceneMouseEvent", incompleteStruct.} = object
type cQGraphicsSceneWheelEvent*{.exportc: "QGraphicsSceneWheelEvent", incompleteStruct.} = object
type cQGraphicsSceneContextMenuEvent*{.exportc: "QGraphicsSceneContextMenuEvent", incompleteStruct.} = object
type cQGraphicsSceneHoverEvent*{.exportc: "QGraphicsSceneHoverEvent", incompleteStruct.} = object
type cQGraphicsSceneHelpEvent*{.exportc: "QGraphicsSceneHelpEvent", incompleteStruct.} = object
type cQGraphicsSceneDragDropEvent*{.exportc: "QGraphicsSceneDragDropEvent", incompleteStruct.} = object
type cQGraphicsSceneResizeEvent*{.exportc: "QGraphicsSceneResizeEvent", incompleteStruct.} = object
type cQGraphicsSceneMoveEvent*{.exportc: "QGraphicsSceneMoveEvent", incompleteStruct.} = object

proc fcQGraphicsSceneEvent_widget(self: pointer, ): pointer {.importc: "QGraphicsSceneEvent_widget".}
proc fcQGraphicsSceneEvent_setWidget(self: pointer, widget: pointer): void {.importc: "QGraphicsSceneEvent_setWidget".}
proc fcQGraphicsSceneEvent_timestamp(self: pointer, ): culonglong {.importc: "QGraphicsSceneEvent_timestamp".}
proc fcQGraphicsSceneEvent_setTimestamp(self: pointer, ts: culonglong): void {.importc: "QGraphicsSceneEvent_setTimestamp".}
type cQGraphicsSceneEventVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQGraphicsSceneEventVTable, self: ptr cQGraphicsSceneEvent) {.cdecl, raises:[], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsSceneEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QGraphicsSceneEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QGraphicsSceneEvent_virtualbase_clone".}
proc fcQGraphicsSceneEvent_new(vtbl: pointer, typeVal: cint): ptr cQGraphicsSceneEvent {.importc: "QGraphicsSceneEvent_new".}
proc fcQGraphicsSceneMouseEvent_pos(self: pointer, ): pointer {.importc: "QGraphicsSceneMouseEvent_pos".}
proc fcQGraphicsSceneMouseEvent_setPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setPos".}
proc fcQGraphicsSceneMouseEvent_scenePos(self: pointer, ): pointer {.importc: "QGraphicsSceneMouseEvent_scenePos".}
proc fcQGraphicsSceneMouseEvent_setScenePos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setScenePos".}
proc fcQGraphicsSceneMouseEvent_screenPos(self: pointer, ): pointer {.importc: "QGraphicsSceneMouseEvent_screenPos".}
proc fcQGraphicsSceneMouseEvent_setScreenPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setScreenPos".}
proc fcQGraphicsSceneMouseEvent_buttonDownPos(self: pointer, button: cint): pointer {.importc: "QGraphicsSceneMouseEvent_buttonDownPos".}
proc fcQGraphicsSceneMouseEvent_setButtonDownPos(self: pointer, button: cint, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setButtonDownPos".}
proc fcQGraphicsSceneMouseEvent_buttonDownScenePos(self: pointer, button: cint): pointer {.importc: "QGraphicsSceneMouseEvent_buttonDownScenePos".}
proc fcQGraphicsSceneMouseEvent_setButtonDownScenePos(self: pointer, button: cint, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setButtonDownScenePos".}
proc fcQGraphicsSceneMouseEvent_buttonDownScreenPos(self: pointer, button: cint): pointer {.importc: "QGraphicsSceneMouseEvent_buttonDownScreenPos".}
proc fcQGraphicsSceneMouseEvent_setButtonDownScreenPos(self: pointer, button: cint, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setButtonDownScreenPos".}
proc fcQGraphicsSceneMouseEvent_lastPos(self: pointer, ): pointer {.importc: "QGraphicsSceneMouseEvent_lastPos".}
proc fcQGraphicsSceneMouseEvent_setLastPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setLastPos".}
proc fcQGraphicsSceneMouseEvent_lastScenePos(self: pointer, ): pointer {.importc: "QGraphicsSceneMouseEvent_lastScenePos".}
proc fcQGraphicsSceneMouseEvent_setLastScenePos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setLastScenePos".}
proc fcQGraphicsSceneMouseEvent_lastScreenPos(self: pointer, ): pointer {.importc: "QGraphicsSceneMouseEvent_lastScreenPos".}
proc fcQGraphicsSceneMouseEvent_setLastScreenPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setLastScreenPos".}
proc fcQGraphicsSceneMouseEvent_buttons(self: pointer, ): cint {.importc: "QGraphicsSceneMouseEvent_buttons".}
proc fcQGraphicsSceneMouseEvent_setButtons(self: pointer, buttons: cint): void {.importc: "QGraphicsSceneMouseEvent_setButtons".}
proc fcQGraphicsSceneMouseEvent_button(self: pointer, ): cint {.importc: "QGraphicsSceneMouseEvent_button".}
proc fcQGraphicsSceneMouseEvent_setButton(self: pointer, button: cint): void {.importc: "QGraphicsSceneMouseEvent_setButton".}
proc fcQGraphicsSceneMouseEvent_modifiers(self: pointer, ): cint {.importc: "QGraphicsSceneMouseEvent_modifiers".}
proc fcQGraphicsSceneMouseEvent_setModifiers(self: pointer, modifiers: cint): void {.importc: "QGraphicsSceneMouseEvent_setModifiers".}
proc fcQGraphicsSceneMouseEvent_source(self: pointer, ): cint {.importc: "QGraphicsSceneMouseEvent_source".}
proc fcQGraphicsSceneMouseEvent_setSource(self: pointer, source: cint): void {.importc: "QGraphicsSceneMouseEvent_setSource".}
proc fcQGraphicsSceneMouseEvent_flags(self: pointer, ): cint {.importc: "QGraphicsSceneMouseEvent_flags".}
proc fcQGraphicsSceneMouseEvent_setFlags(self: pointer, flags: cint): void {.importc: "QGraphicsSceneMouseEvent_setFlags".}
type cQGraphicsSceneMouseEventVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQGraphicsSceneMouseEventVTable, self: ptr cQGraphicsSceneMouseEvent) {.cdecl, raises:[], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsSceneMouseEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QGraphicsSceneMouseEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneMouseEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QGraphicsSceneMouseEvent_virtualbase_clone".}
proc fcQGraphicsSceneMouseEvent_new(vtbl: pointer, ): ptr cQGraphicsSceneMouseEvent {.importc: "QGraphicsSceneMouseEvent_new".}
proc fcQGraphicsSceneMouseEvent_new2(vtbl: pointer, typeVal: cint): ptr cQGraphicsSceneMouseEvent {.importc: "QGraphicsSceneMouseEvent_new2".}
proc fcQGraphicsSceneWheelEvent_pos(self: pointer, ): pointer {.importc: "QGraphicsSceneWheelEvent_pos".}
proc fcQGraphicsSceneWheelEvent_setPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneWheelEvent_setPos".}
proc fcQGraphicsSceneWheelEvent_scenePos(self: pointer, ): pointer {.importc: "QGraphicsSceneWheelEvent_scenePos".}
proc fcQGraphicsSceneWheelEvent_setScenePos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneWheelEvent_setScenePos".}
proc fcQGraphicsSceneWheelEvent_screenPos(self: pointer, ): pointer {.importc: "QGraphicsSceneWheelEvent_screenPos".}
proc fcQGraphicsSceneWheelEvent_setScreenPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneWheelEvent_setScreenPos".}
proc fcQGraphicsSceneWheelEvent_buttons(self: pointer, ): cint {.importc: "QGraphicsSceneWheelEvent_buttons".}
proc fcQGraphicsSceneWheelEvent_setButtons(self: pointer, buttons: cint): void {.importc: "QGraphicsSceneWheelEvent_setButtons".}
proc fcQGraphicsSceneWheelEvent_modifiers(self: pointer, ): cint {.importc: "QGraphicsSceneWheelEvent_modifiers".}
proc fcQGraphicsSceneWheelEvent_setModifiers(self: pointer, modifiers: cint): void {.importc: "QGraphicsSceneWheelEvent_setModifiers".}
proc fcQGraphicsSceneWheelEvent_delta(self: pointer, ): cint {.importc: "QGraphicsSceneWheelEvent_delta".}
proc fcQGraphicsSceneWheelEvent_setDelta(self: pointer, delta: cint): void {.importc: "QGraphicsSceneWheelEvent_setDelta".}
proc fcQGraphicsSceneWheelEvent_orientation(self: pointer, ): cint {.importc: "QGraphicsSceneWheelEvent_orientation".}
proc fcQGraphicsSceneWheelEvent_setOrientation(self: pointer, orientation: cint): void {.importc: "QGraphicsSceneWheelEvent_setOrientation".}
proc fcQGraphicsSceneWheelEvent_phase(self: pointer, ): cint {.importc: "QGraphicsSceneWheelEvent_phase".}
proc fcQGraphicsSceneWheelEvent_setPhase(self: pointer, scrollPhase: cint): void {.importc: "QGraphicsSceneWheelEvent_setPhase".}
proc fcQGraphicsSceneWheelEvent_pixelDelta(self: pointer, ): pointer {.importc: "QGraphicsSceneWheelEvent_pixelDelta".}
proc fcQGraphicsSceneWheelEvent_setPixelDelta(self: pointer, delta: pointer): void {.importc: "QGraphicsSceneWheelEvent_setPixelDelta".}
proc fcQGraphicsSceneWheelEvent_isInverted(self: pointer, ): bool {.importc: "QGraphicsSceneWheelEvent_isInverted".}
proc fcQGraphicsSceneWheelEvent_setInverted(self: pointer, inverted: bool): void {.importc: "QGraphicsSceneWheelEvent_setInverted".}
type cQGraphicsSceneWheelEventVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQGraphicsSceneWheelEventVTable, self: ptr cQGraphicsSceneWheelEvent) {.cdecl, raises:[], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsSceneWheelEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QGraphicsSceneWheelEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneWheelEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QGraphicsSceneWheelEvent_virtualbase_clone".}
proc fcQGraphicsSceneWheelEvent_new(vtbl: pointer, ): ptr cQGraphicsSceneWheelEvent {.importc: "QGraphicsSceneWheelEvent_new".}
proc fcQGraphicsSceneWheelEvent_new2(vtbl: pointer, typeVal: cint): ptr cQGraphicsSceneWheelEvent {.importc: "QGraphicsSceneWheelEvent_new2".}
proc fcQGraphicsSceneContextMenuEvent_pos(self: pointer, ): pointer {.importc: "QGraphicsSceneContextMenuEvent_pos".}
proc fcQGraphicsSceneContextMenuEvent_setPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneContextMenuEvent_setPos".}
proc fcQGraphicsSceneContextMenuEvent_scenePos(self: pointer, ): pointer {.importc: "QGraphicsSceneContextMenuEvent_scenePos".}
proc fcQGraphicsSceneContextMenuEvent_setScenePos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneContextMenuEvent_setScenePos".}
proc fcQGraphicsSceneContextMenuEvent_screenPos(self: pointer, ): pointer {.importc: "QGraphicsSceneContextMenuEvent_screenPos".}
proc fcQGraphicsSceneContextMenuEvent_setScreenPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneContextMenuEvent_setScreenPos".}
proc fcQGraphicsSceneContextMenuEvent_modifiers(self: pointer, ): cint {.importc: "QGraphicsSceneContextMenuEvent_modifiers".}
proc fcQGraphicsSceneContextMenuEvent_setModifiers(self: pointer, modifiers: cint): void {.importc: "QGraphicsSceneContextMenuEvent_setModifiers".}
proc fcQGraphicsSceneContextMenuEvent_reason(self: pointer, ): cint {.importc: "QGraphicsSceneContextMenuEvent_reason".}
proc fcQGraphicsSceneContextMenuEvent_setReason(self: pointer, reason: cint): void {.importc: "QGraphicsSceneContextMenuEvent_setReason".}
type cQGraphicsSceneContextMenuEventVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQGraphicsSceneContextMenuEventVTable, self: ptr cQGraphicsSceneContextMenuEvent) {.cdecl, raises:[], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsSceneContextMenuEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QGraphicsSceneContextMenuEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneContextMenuEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QGraphicsSceneContextMenuEvent_virtualbase_clone".}
proc fcQGraphicsSceneContextMenuEvent_new(vtbl: pointer, ): ptr cQGraphicsSceneContextMenuEvent {.importc: "QGraphicsSceneContextMenuEvent_new".}
proc fcQGraphicsSceneContextMenuEvent_new2(vtbl: pointer, typeVal: cint): ptr cQGraphicsSceneContextMenuEvent {.importc: "QGraphicsSceneContextMenuEvent_new2".}
proc fcQGraphicsSceneHoverEvent_pos(self: pointer, ): pointer {.importc: "QGraphicsSceneHoverEvent_pos".}
proc fcQGraphicsSceneHoverEvent_setPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHoverEvent_setPos".}
proc fcQGraphicsSceneHoverEvent_scenePos(self: pointer, ): pointer {.importc: "QGraphicsSceneHoverEvent_scenePos".}
proc fcQGraphicsSceneHoverEvent_setScenePos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHoverEvent_setScenePos".}
proc fcQGraphicsSceneHoverEvent_screenPos(self: pointer, ): pointer {.importc: "QGraphicsSceneHoverEvent_screenPos".}
proc fcQGraphicsSceneHoverEvent_setScreenPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHoverEvent_setScreenPos".}
proc fcQGraphicsSceneHoverEvent_lastPos(self: pointer, ): pointer {.importc: "QGraphicsSceneHoverEvent_lastPos".}
proc fcQGraphicsSceneHoverEvent_setLastPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHoverEvent_setLastPos".}
proc fcQGraphicsSceneHoverEvent_lastScenePos(self: pointer, ): pointer {.importc: "QGraphicsSceneHoverEvent_lastScenePos".}
proc fcQGraphicsSceneHoverEvent_setLastScenePos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHoverEvent_setLastScenePos".}
proc fcQGraphicsSceneHoverEvent_lastScreenPos(self: pointer, ): pointer {.importc: "QGraphicsSceneHoverEvent_lastScreenPos".}
proc fcQGraphicsSceneHoverEvent_setLastScreenPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHoverEvent_setLastScreenPos".}
proc fcQGraphicsSceneHoverEvent_modifiers(self: pointer, ): cint {.importc: "QGraphicsSceneHoverEvent_modifiers".}
proc fcQGraphicsSceneHoverEvent_setModifiers(self: pointer, modifiers: cint): void {.importc: "QGraphicsSceneHoverEvent_setModifiers".}
type cQGraphicsSceneHoverEventVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQGraphicsSceneHoverEventVTable, self: ptr cQGraphicsSceneHoverEvent) {.cdecl, raises:[], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsSceneHoverEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QGraphicsSceneHoverEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneHoverEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QGraphicsSceneHoverEvent_virtualbase_clone".}
proc fcQGraphicsSceneHoverEvent_new(vtbl: pointer, ): ptr cQGraphicsSceneHoverEvent {.importc: "QGraphicsSceneHoverEvent_new".}
proc fcQGraphicsSceneHoverEvent_new2(vtbl: pointer, typeVal: cint): ptr cQGraphicsSceneHoverEvent {.importc: "QGraphicsSceneHoverEvent_new2".}
proc fcQGraphicsSceneHelpEvent_scenePos(self: pointer, ): pointer {.importc: "QGraphicsSceneHelpEvent_scenePos".}
proc fcQGraphicsSceneHelpEvent_setScenePos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHelpEvent_setScenePos".}
proc fcQGraphicsSceneHelpEvent_screenPos(self: pointer, ): pointer {.importc: "QGraphicsSceneHelpEvent_screenPos".}
proc fcQGraphicsSceneHelpEvent_setScreenPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHelpEvent_setScreenPos".}
type cQGraphicsSceneHelpEventVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQGraphicsSceneHelpEventVTable, self: ptr cQGraphicsSceneHelpEvent) {.cdecl, raises:[], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsSceneHelpEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QGraphicsSceneHelpEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneHelpEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QGraphicsSceneHelpEvent_virtualbase_clone".}
proc fcQGraphicsSceneHelpEvent_new(vtbl: pointer, ): ptr cQGraphicsSceneHelpEvent {.importc: "QGraphicsSceneHelpEvent_new".}
proc fcQGraphicsSceneHelpEvent_new2(vtbl: pointer, typeVal: cint): ptr cQGraphicsSceneHelpEvent {.importc: "QGraphicsSceneHelpEvent_new2".}
proc fcQGraphicsSceneDragDropEvent_pos(self: pointer, ): pointer {.importc: "QGraphicsSceneDragDropEvent_pos".}
proc fcQGraphicsSceneDragDropEvent_setPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneDragDropEvent_setPos".}
proc fcQGraphicsSceneDragDropEvent_scenePos(self: pointer, ): pointer {.importc: "QGraphicsSceneDragDropEvent_scenePos".}
proc fcQGraphicsSceneDragDropEvent_setScenePos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneDragDropEvent_setScenePos".}
proc fcQGraphicsSceneDragDropEvent_screenPos(self: pointer, ): pointer {.importc: "QGraphicsSceneDragDropEvent_screenPos".}
proc fcQGraphicsSceneDragDropEvent_setScreenPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneDragDropEvent_setScreenPos".}
proc fcQGraphicsSceneDragDropEvent_buttons(self: pointer, ): cint {.importc: "QGraphicsSceneDragDropEvent_buttons".}
proc fcQGraphicsSceneDragDropEvent_setButtons(self: pointer, buttons: cint): void {.importc: "QGraphicsSceneDragDropEvent_setButtons".}
proc fcQGraphicsSceneDragDropEvent_modifiers(self: pointer, ): cint {.importc: "QGraphicsSceneDragDropEvent_modifiers".}
proc fcQGraphicsSceneDragDropEvent_setModifiers(self: pointer, modifiers: cint): void {.importc: "QGraphicsSceneDragDropEvent_setModifiers".}
proc fcQGraphicsSceneDragDropEvent_possibleActions(self: pointer, ): cint {.importc: "QGraphicsSceneDragDropEvent_possibleActions".}
proc fcQGraphicsSceneDragDropEvent_setPossibleActions(self: pointer, actions: cint): void {.importc: "QGraphicsSceneDragDropEvent_setPossibleActions".}
proc fcQGraphicsSceneDragDropEvent_proposedAction(self: pointer, ): cint {.importc: "QGraphicsSceneDragDropEvent_proposedAction".}
proc fcQGraphicsSceneDragDropEvent_setProposedAction(self: pointer, action: cint): void {.importc: "QGraphicsSceneDragDropEvent_setProposedAction".}
proc fcQGraphicsSceneDragDropEvent_acceptProposedAction(self: pointer, ): void {.importc: "QGraphicsSceneDragDropEvent_acceptProposedAction".}
proc fcQGraphicsSceneDragDropEvent_dropAction(self: pointer, ): cint {.importc: "QGraphicsSceneDragDropEvent_dropAction".}
proc fcQGraphicsSceneDragDropEvent_setDropAction(self: pointer, action: cint): void {.importc: "QGraphicsSceneDragDropEvent_setDropAction".}
proc fcQGraphicsSceneDragDropEvent_source(self: pointer, ): pointer {.importc: "QGraphicsSceneDragDropEvent_source".}
proc fcQGraphicsSceneDragDropEvent_setSource(self: pointer, source: pointer): void {.importc: "QGraphicsSceneDragDropEvent_setSource".}
proc fcQGraphicsSceneDragDropEvent_mimeData(self: pointer, ): pointer {.importc: "QGraphicsSceneDragDropEvent_mimeData".}
proc fcQGraphicsSceneDragDropEvent_setMimeData(self: pointer, data: pointer): void {.importc: "QGraphicsSceneDragDropEvent_setMimeData".}
type cQGraphicsSceneDragDropEventVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQGraphicsSceneDragDropEventVTable, self: ptr cQGraphicsSceneDragDropEvent) {.cdecl, raises:[], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsSceneDragDropEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QGraphicsSceneDragDropEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneDragDropEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QGraphicsSceneDragDropEvent_virtualbase_clone".}
proc fcQGraphicsSceneDragDropEvent_new(vtbl: pointer, ): ptr cQGraphicsSceneDragDropEvent {.importc: "QGraphicsSceneDragDropEvent_new".}
proc fcQGraphicsSceneDragDropEvent_new2(vtbl: pointer, typeVal: cint): ptr cQGraphicsSceneDragDropEvent {.importc: "QGraphicsSceneDragDropEvent_new2".}
proc fcQGraphicsSceneResizeEvent_oldSize(self: pointer, ): pointer {.importc: "QGraphicsSceneResizeEvent_oldSize".}
proc fcQGraphicsSceneResizeEvent_setOldSize(self: pointer, size: pointer): void {.importc: "QGraphicsSceneResizeEvent_setOldSize".}
proc fcQGraphicsSceneResizeEvent_newSize(self: pointer, ): pointer {.importc: "QGraphicsSceneResizeEvent_newSize".}
proc fcQGraphicsSceneResizeEvent_setNewSize(self: pointer, size: pointer): void {.importc: "QGraphicsSceneResizeEvent_setNewSize".}
type cQGraphicsSceneResizeEventVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQGraphicsSceneResizeEventVTable, self: ptr cQGraphicsSceneResizeEvent) {.cdecl, raises:[], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsSceneResizeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QGraphicsSceneResizeEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneResizeEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QGraphicsSceneResizeEvent_virtualbase_clone".}
proc fcQGraphicsSceneResizeEvent_new(vtbl: pointer, ): ptr cQGraphicsSceneResizeEvent {.importc: "QGraphicsSceneResizeEvent_new".}
proc fcQGraphicsSceneMoveEvent_oldPos(self: pointer, ): pointer {.importc: "QGraphicsSceneMoveEvent_oldPos".}
proc fcQGraphicsSceneMoveEvent_setOldPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMoveEvent_setOldPos".}
proc fcQGraphicsSceneMoveEvent_newPos(self: pointer, ): pointer {.importc: "QGraphicsSceneMoveEvent_newPos".}
proc fcQGraphicsSceneMoveEvent_setNewPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMoveEvent_setNewPos".}
type cQGraphicsSceneMoveEventVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQGraphicsSceneMoveEventVTable, self: ptr cQGraphicsSceneMoveEvent) {.cdecl, raises:[], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsSceneMoveEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QGraphicsSceneMoveEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneMoveEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QGraphicsSceneMoveEvent_virtualbase_clone".}
proc fcQGraphicsSceneMoveEvent_new(vtbl: pointer, ): ptr cQGraphicsSceneMoveEvent {.importc: "QGraphicsSceneMoveEvent_new".}

proc widget*(self: gen_qgraphicssceneevent_types.QGraphicsSceneEvent, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQGraphicsSceneEvent_widget(self.h), owned: false)

proc setWidget*(self: gen_qgraphicssceneevent_types.QGraphicsSceneEvent, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsSceneEvent_setWidget(self.h, widget.h)

proc timestamp*(self: gen_qgraphicssceneevent_types.QGraphicsSceneEvent, ): culonglong =
  fcQGraphicsSceneEvent_timestamp(self.h)

proc setTimestamp*(self: gen_qgraphicssceneevent_types.QGraphicsSceneEvent, ts: culonglong): void =
  fcQGraphicsSceneEvent_setTimestamp(self.h, ts)

type QGraphicsSceneEventsetAcceptedProc* = proc(self: QGraphicsSceneEvent, accepted: bool): void {.raises: [], gcsafe.}
type QGraphicsSceneEventcloneProc* = proc(self: QGraphicsSceneEvent): gen_qcoreevent_types.QEvent {.raises: [], gcsafe.}
type QGraphicsSceneEventVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsSceneEventVTable
  setAccepted*: QGraphicsSceneEventsetAcceptedProc
  clone*: QGraphicsSceneEventcloneProc
proc QGraphicsSceneEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneEvent, accepted: bool): void =
  fcQGraphicsSceneEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQGraphicsSceneEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneEventVTable](vtbl)
  let self = QGraphicsSceneEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc QGraphicsSceneEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fcQGraphicsSceneEvent_virtualbase_clone(self.h), owned: false)

proc miqt_exec_callback_cQGraphicsSceneEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneEventVTable](vtbl)
  let self = QGraphicsSceneEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQGraphicsSceneEvent* {.inheritable.} = ref object of QGraphicsSceneEvent
  vtbl*: cQGraphicsSceneEventVTable
method setAccepted*(self: VirtualQGraphicsSceneEvent, accepted: bool): void {.base.} =
  QGraphicsSceneEventsetAccepted(self[], accepted)
proc miqt_exec_method_cQGraphicsSceneEvent_setAccepted(vtbl: pointer, inst: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneEvent, vtbl)))
  let slotval1 = accepted
  vtbl.setAccepted(slotval1)

method clone*(self: VirtualQGraphicsSceneEvent, ): gen_qcoreevent_types.QEvent {.base.} =
  QGraphicsSceneEventclone(self[])
proc miqt_exec_method_cQGraphicsSceneEvent_clone(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneEvent, vtbl)))
  var virtualReturn = vtbl.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneEvent,
    typeVal: cint,
    vtbl: ref QGraphicsSceneEventVTable = nil): gen_qgraphicssceneevent_types.QGraphicsSceneEvent =
  let vtbl = if vtbl == nil: new QGraphicsSceneEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneEventVTable, _: ptr cQGraphicsSceneEvent) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQGraphicsSceneEvent_setAccepted
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQGraphicsSceneEvent_clone
  gen_qgraphicssceneevent_types.QGraphicsSceneEvent(h: fcQGraphicsSceneEvent_new(addr(vtbl[].vtbl), cint(typeVal)), owned: true)

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneEvent,
    typeVal: cint,
    vtbl: VirtualQGraphicsSceneEvent) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneEventVTable, _: ptr cQGraphicsSceneEvent) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSceneEvent()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneEvent, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.setAccepted = miqt_exec_method_cQGraphicsSceneEvent_setAccepted
  vtbl[].vtbl.clone = miqt_exec_method_cQGraphicsSceneEvent_clone
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSceneEvent_new(addr(vtbl[].vtbl), cint(typeVal))
  vtbl[].owned = true

proc pos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneMouseEvent_pos(self.h), owned: true)

proc setPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneMouseEvent_setPos(self.h, pos.h)

proc scenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneMouseEvent_scenePos(self.h), owned: true)

proc setScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneMouseEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneMouseEvent_screenPos(self.h), owned: true)

proc setScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, pos: gen_qpoint_types.QPoint): void =
  fcQGraphicsSceneMouseEvent_setScreenPos(self.h, pos.h)

proc buttonDownPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, button: cint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneMouseEvent_buttonDownPos(self.h, cint(button)), owned: true)

proc setButtonDownPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, button: cint, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneMouseEvent_setButtonDownPos(self.h, cint(button), pos.h)

proc buttonDownScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, button: cint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneMouseEvent_buttonDownScenePos(self.h, cint(button)), owned: true)

proc setButtonDownScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, button: cint, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneMouseEvent_setButtonDownScenePos(self.h, cint(button), pos.h)

proc buttonDownScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, button: cint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneMouseEvent_buttonDownScreenPos(self.h, cint(button)), owned: true)

proc setButtonDownScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, button: cint, pos: gen_qpoint_types.QPoint): void =
  fcQGraphicsSceneMouseEvent_setButtonDownScreenPos(self.h, cint(button), pos.h)

proc lastPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneMouseEvent_lastPos(self.h), owned: true)

proc setLastPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneMouseEvent_setLastPos(self.h, pos.h)

proc lastScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneMouseEvent_lastScenePos(self.h), owned: true)

proc setLastScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneMouseEvent_setLastScenePos(self.h, pos.h)

proc lastScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneMouseEvent_lastScreenPos(self.h), owned: true)

proc setLastScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, pos: gen_qpoint_types.QPoint): void =
  fcQGraphicsSceneMouseEvent_setLastScreenPos(self.h, pos.h)

proc buttons*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): cint =
  cint(fcQGraphicsSceneMouseEvent_buttons(self.h))

proc setButtons*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, buttons: cint): void =
  fcQGraphicsSceneMouseEvent_setButtons(self.h, cint(buttons))

proc button*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): cint =
  cint(fcQGraphicsSceneMouseEvent_button(self.h))

proc setButton*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, button: cint): void =
  fcQGraphicsSceneMouseEvent_setButton(self.h, cint(button))

proc modifiers*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): cint =
  cint(fcQGraphicsSceneMouseEvent_modifiers(self.h))

proc setModifiers*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, modifiers: cint): void =
  fcQGraphicsSceneMouseEvent_setModifiers(self.h, cint(modifiers))

proc source*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): cint =
  cint(fcQGraphicsSceneMouseEvent_source(self.h))

proc setSource*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, source: cint): void =
  fcQGraphicsSceneMouseEvent_setSource(self.h, cint(source))

proc flags*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): cint =
  cint(fcQGraphicsSceneMouseEvent_flags(self.h))

proc setFlags*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, flags: cint): void =
  fcQGraphicsSceneMouseEvent_setFlags(self.h, cint(flags))

type QGraphicsSceneMouseEventsetAcceptedProc* = proc(self: QGraphicsSceneMouseEvent, accepted: bool): void {.raises: [], gcsafe.}
type QGraphicsSceneMouseEventcloneProc* = proc(self: QGraphicsSceneMouseEvent): gen_qcoreevent_types.QEvent {.raises: [], gcsafe.}
type QGraphicsSceneMouseEventVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsSceneMouseEventVTable
  setAccepted*: QGraphicsSceneMouseEventsetAcceptedProc
  clone*: QGraphicsSceneMouseEventcloneProc
proc QGraphicsSceneMouseEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, accepted: bool): void =
  fcQGraphicsSceneMouseEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQGraphicsSceneMouseEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneMouseEventVTable](vtbl)
  let self = QGraphicsSceneMouseEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc QGraphicsSceneMouseEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fcQGraphicsSceneMouseEvent_virtualbase_clone(self.h), owned: false)

proc miqt_exec_callback_cQGraphicsSceneMouseEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneMouseEventVTable](vtbl)
  let self = QGraphicsSceneMouseEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQGraphicsSceneMouseEvent* {.inheritable.} = ref object of QGraphicsSceneMouseEvent
  vtbl*: cQGraphicsSceneMouseEventVTable
method setAccepted*(self: VirtualQGraphicsSceneMouseEvent, accepted: bool): void {.base.} =
  QGraphicsSceneMouseEventsetAccepted(self[], accepted)
proc miqt_exec_method_cQGraphicsSceneMouseEvent_setAccepted(vtbl: pointer, inst: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneMouseEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneMouseEvent, vtbl)))
  let slotval1 = accepted
  vtbl.setAccepted(slotval1)

method clone*(self: VirtualQGraphicsSceneMouseEvent, ): gen_qcoreevent_types.QEvent {.base.} =
  QGraphicsSceneMouseEventclone(self[])
proc miqt_exec_method_cQGraphicsSceneMouseEvent_clone(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneMouseEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneMouseEvent, vtbl)))
  var virtualReturn = vtbl.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent,
    vtbl: ref QGraphicsSceneMouseEventVTable = nil): gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent =
  let vtbl = if vtbl == nil: new QGraphicsSceneMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneMouseEventVTable, _: ptr cQGraphicsSceneMouseEvent) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneMouseEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQGraphicsSceneMouseEvent_setAccepted
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQGraphicsSceneMouseEvent_clone
  gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: fcQGraphicsSceneMouseEvent_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent,
    typeVal: cint,
    vtbl: ref QGraphicsSceneMouseEventVTable = nil): gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent =
  let vtbl = if vtbl == nil: new QGraphicsSceneMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneMouseEventVTable, _: ptr cQGraphicsSceneMouseEvent) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneMouseEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQGraphicsSceneMouseEvent_setAccepted
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQGraphicsSceneMouseEvent_clone
  gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent(h: fcQGraphicsSceneMouseEvent_new2(addr(vtbl[].vtbl), cint(typeVal)), owned: true)

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent,
    vtbl: VirtualQGraphicsSceneMouseEvent) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneMouseEventVTable, _: ptr cQGraphicsSceneMouseEvent) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSceneMouseEvent()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneMouseEvent, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.setAccepted = miqt_exec_method_cQGraphicsSceneMouseEvent_setAccepted
  vtbl[].vtbl.clone = miqt_exec_method_cQGraphicsSceneMouseEvent_clone
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSceneMouseEvent_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent,
    typeVal: cint,
    vtbl: VirtualQGraphicsSceneMouseEvent) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneMouseEventVTable, _: ptr cQGraphicsSceneMouseEvent) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSceneMouseEvent()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneMouseEvent, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.setAccepted = miqt_exec_method_cQGraphicsSceneMouseEvent_setAccepted
  vtbl[].vtbl.clone = miqt_exec_method_cQGraphicsSceneMouseEvent_clone
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSceneMouseEvent_new2(addr(vtbl[].vtbl), cint(typeVal))
  vtbl[].owned = true

proc pos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneWheelEvent_pos(self.h), owned: true)

proc setPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneWheelEvent_setPos(self.h, pos.h)

proc scenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneWheelEvent_scenePos(self.h), owned: true)

proc setScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneWheelEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneWheelEvent_screenPos(self.h), owned: true)

proc setScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, pos: gen_qpoint_types.QPoint): void =
  fcQGraphicsSceneWheelEvent_setScreenPos(self.h, pos.h)

proc buttons*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, ): cint =
  cint(fcQGraphicsSceneWheelEvent_buttons(self.h))

proc setButtons*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, buttons: cint): void =
  fcQGraphicsSceneWheelEvent_setButtons(self.h, cint(buttons))

proc modifiers*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, ): cint =
  cint(fcQGraphicsSceneWheelEvent_modifiers(self.h))

proc setModifiers*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, modifiers: cint): void =
  fcQGraphicsSceneWheelEvent_setModifiers(self.h, cint(modifiers))

proc delta*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, ): cint =
  fcQGraphicsSceneWheelEvent_delta(self.h)

proc setDelta*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, delta: cint): void =
  fcQGraphicsSceneWheelEvent_setDelta(self.h, delta)

proc orientation*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, ): cint =
  cint(fcQGraphicsSceneWheelEvent_orientation(self.h))

proc setOrientation*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, orientation: cint): void =
  fcQGraphicsSceneWheelEvent_setOrientation(self.h, cint(orientation))

proc phase*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, ): cint =
  cint(fcQGraphicsSceneWheelEvent_phase(self.h))

proc setPhase*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, scrollPhase: cint): void =
  fcQGraphicsSceneWheelEvent_setPhase(self.h, cint(scrollPhase))

proc pixelDelta*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneWheelEvent_pixelDelta(self.h), owned: true)

proc setPixelDelta*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, delta: gen_qpoint_types.QPoint): void =
  fcQGraphicsSceneWheelEvent_setPixelDelta(self.h, delta.h)

proc isInverted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, ): bool =
  fcQGraphicsSceneWheelEvent_isInverted(self.h)

proc setInverted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, inverted: bool): void =
  fcQGraphicsSceneWheelEvent_setInverted(self.h, inverted)

type QGraphicsSceneWheelEventsetAcceptedProc* = proc(self: QGraphicsSceneWheelEvent, accepted: bool): void {.raises: [], gcsafe.}
type QGraphicsSceneWheelEventcloneProc* = proc(self: QGraphicsSceneWheelEvent): gen_qcoreevent_types.QEvent {.raises: [], gcsafe.}
type QGraphicsSceneWheelEventVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsSceneWheelEventVTable
  setAccepted*: QGraphicsSceneWheelEventsetAcceptedProc
  clone*: QGraphicsSceneWheelEventcloneProc
proc QGraphicsSceneWheelEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, accepted: bool): void =
  fcQGraphicsSceneWheelEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQGraphicsSceneWheelEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneWheelEventVTable](vtbl)
  let self = QGraphicsSceneWheelEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc QGraphicsSceneWheelEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fcQGraphicsSceneWheelEvent_virtualbase_clone(self.h), owned: false)

proc miqt_exec_callback_cQGraphicsSceneWheelEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneWheelEventVTable](vtbl)
  let self = QGraphicsSceneWheelEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQGraphicsSceneWheelEvent* {.inheritable.} = ref object of QGraphicsSceneWheelEvent
  vtbl*: cQGraphicsSceneWheelEventVTable
method setAccepted*(self: VirtualQGraphicsSceneWheelEvent, accepted: bool): void {.base.} =
  QGraphicsSceneWheelEventsetAccepted(self[], accepted)
proc miqt_exec_method_cQGraphicsSceneWheelEvent_setAccepted(vtbl: pointer, inst: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneWheelEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneWheelEvent, vtbl)))
  let slotval1 = accepted
  vtbl.setAccepted(slotval1)

method clone*(self: VirtualQGraphicsSceneWheelEvent, ): gen_qcoreevent_types.QEvent {.base.} =
  QGraphicsSceneWheelEventclone(self[])
proc miqt_exec_method_cQGraphicsSceneWheelEvent_clone(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneWheelEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneWheelEvent, vtbl)))
  var virtualReturn = vtbl.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent,
    vtbl: ref QGraphicsSceneWheelEventVTable = nil): gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent =
  let vtbl = if vtbl == nil: new QGraphicsSceneWheelEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneWheelEventVTable, _: ptr cQGraphicsSceneWheelEvent) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneWheelEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQGraphicsSceneWheelEvent_setAccepted
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQGraphicsSceneWheelEvent_clone
  gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: fcQGraphicsSceneWheelEvent_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent,
    typeVal: cint,
    vtbl: ref QGraphicsSceneWheelEventVTable = nil): gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent =
  let vtbl = if vtbl == nil: new QGraphicsSceneWheelEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneWheelEventVTable, _: ptr cQGraphicsSceneWheelEvent) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneWheelEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQGraphicsSceneWheelEvent_setAccepted
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQGraphicsSceneWheelEvent_clone
  gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent(h: fcQGraphicsSceneWheelEvent_new2(addr(vtbl[].vtbl), cint(typeVal)), owned: true)

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent,
    vtbl: VirtualQGraphicsSceneWheelEvent) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneWheelEventVTable, _: ptr cQGraphicsSceneWheelEvent) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSceneWheelEvent()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneWheelEvent, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.setAccepted = miqt_exec_method_cQGraphicsSceneWheelEvent_setAccepted
  vtbl[].vtbl.clone = miqt_exec_method_cQGraphicsSceneWheelEvent_clone
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSceneWheelEvent_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent,
    typeVal: cint,
    vtbl: VirtualQGraphicsSceneWheelEvent) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneWheelEventVTable, _: ptr cQGraphicsSceneWheelEvent) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSceneWheelEvent()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneWheelEvent, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.setAccepted = miqt_exec_method_cQGraphicsSceneWheelEvent_setAccepted
  vtbl[].vtbl.clone = miqt_exec_method_cQGraphicsSceneWheelEvent_clone
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSceneWheelEvent_new2(addr(vtbl[].vtbl), cint(typeVal))
  vtbl[].owned = true

proc pos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneContextMenuEvent_pos(self.h), owned: true)

proc setPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneContextMenuEvent_setPos(self.h, pos.h)

proc scenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneContextMenuEvent_scenePos(self.h), owned: true)

proc setScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneContextMenuEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneContextMenuEvent_screenPos(self.h), owned: true)

proc setScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, pos: gen_qpoint_types.QPoint): void =
  fcQGraphicsSceneContextMenuEvent_setScreenPos(self.h, pos.h)

proc modifiers*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, ): cint =
  cint(fcQGraphicsSceneContextMenuEvent_modifiers(self.h))

proc setModifiers*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, modifiers: cint): void =
  fcQGraphicsSceneContextMenuEvent_setModifiers(self.h, cint(modifiers))

proc reason*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, ): cint =
  cint(fcQGraphicsSceneContextMenuEvent_reason(self.h))

proc setReason*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, reason: cint): void =
  fcQGraphicsSceneContextMenuEvent_setReason(self.h, cint(reason))

type QGraphicsSceneContextMenuEventsetAcceptedProc* = proc(self: QGraphicsSceneContextMenuEvent, accepted: bool): void {.raises: [], gcsafe.}
type QGraphicsSceneContextMenuEventcloneProc* = proc(self: QGraphicsSceneContextMenuEvent): gen_qcoreevent_types.QEvent {.raises: [], gcsafe.}
type QGraphicsSceneContextMenuEventVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsSceneContextMenuEventVTable
  setAccepted*: QGraphicsSceneContextMenuEventsetAcceptedProc
  clone*: QGraphicsSceneContextMenuEventcloneProc
proc QGraphicsSceneContextMenuEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, accepted: bool): void =
  fcQGraphicsSceneContextMenuEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQGraphicsSceneContextMenuEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneContextMenuEventVTable](vtbl)
  let self = QGraphicsSceneContextMenuEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc QGraphicsSceneContextMenuEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fcQGraphicsSceneContextMenuEvent_virtualbase_clone(self.h), owned: false)

proc miqt_exec_callback_cQGraphicsSceneContextMenuEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneContextMenuEventVTable](vtbl)
  let self = QGraphicsSceneContextMenuEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQGraphicsSceneContextMenuEvent* {.inheritable.} = ref object of QGraphicsSceneContextMenuEvent
  vtbl*: cQGraphicsSceneContextMenuEventVTable
method setAccepted*(self: VirtualQGraphicsSceneContextMenuEvent, accepted: bool): void {.base.} =
  QGraphicsSceneContextMenuEventsetAccepted(self[], accepted)
proc miqt_exec_method_cQGraphicsSceneContextMenuEvent_setAccepted(vtbl: pointer, inst: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneContextMenuEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneContextMenuEvent, vtbl)))
  let slotval1 = accepted
  vtbl.setAccepted(slotval1)

method clone*(self: VirtualQGraphicsSceneContextMenuEvent, ): gen_qcoreevent_types.QEvent {.base.} =
  QGraphicsSceneContextMenuEventclone(self[])
proc miqt_exec_method_cQGraphicsSceneContextMenuEvent_clone(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneContextMenuEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneContextMenuEvent, vtbl)))
  var virtualReturn = vtbl.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent,
    vtbl: ref QGraphicsSceneContextMenuEventVTable = nil): gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent =
  let vtbl = if vtbl == nil: new QGraphicsSceneContextMenuEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneContextMenuEventVTable, _: ptr cQGraphicsSceneContextMenuEvent) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneContextMenuEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQGraphicsSceneContextMenuEvent_setAccepted
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQGraphicsSceneContextMenuEvent_clone
  gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: fcQGraphicsSceneContextMenuEvent_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent,
    typeVal: cint,
    vtbl: ref QGraphicsSceneContextMenuEventVTable = nil): gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent =
  let vtbl = if vtbl == nil: new QGraphicsSceneContextMenuEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneContextMenuEventVTable, _: ptr cQGraphicsSceneContextMenuEvent) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneContextMenuEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQGraphicsSceneContextMenuEvent_setAccepted
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQGraphicsSceneContextMenuEvent_clone
  gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent(h: fcQGraphicsSceneContextMenuEvent_new2(addr(vtbl[].vtbl), cint(typeVal)), owned: true)

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent,
    vtbl: VirtualQGraphicsSceneContextMenuEvent) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneContextMenuEventVTable, _: ptr cQGraphicsSceneContextMenuEvent) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSceneContextMenuEvent()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneContextMenuEvent, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.setAccepted = miqt_exec_method_cQGraphicsSceneContextMenuEvent_setAccepted
  vtbl[].vtbl.clone = miqt_exec_method_cQGraphicsSceneContextMenuEvent_clone
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSceneContextMenuEvent_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent,
    typeVal: cint,
    vtbl: VirtualQGraphicsSceneContextMenuEvent) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneContextMenuEventVTable, _: ptr cQGraphicsSceneContextMenuEvent) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSceneContextMenuEvent()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneContextMenuEvent, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.setAccepted = miqt_exec_method_cQGraphicsSceneContextMenuEvent_setAccepted
  vtbl[].vtbl.clone = miqt_exec_method_cQGraphicsSceneContextMenuEvent_clone
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSceneContextMenuEvent_new2(addr(vtbl[].vtbl), cint(typeVal))
  vtbl[].owned = true

proc pos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneHoverEvent_pos(self.h), owned: true)

proc setPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneHoverEvent_setPos(self.h, pos.h)

proc scenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneHoverEvent_scenePos(self.h), owned: true)

proc setScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneHoverEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneHoverEvent_screenPos(self.h), owned: true)

proc setScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, pos: gen_qpoint_types.QPoint): void =
  fcQGraphicsSceneHoverEvent_setScreenPos(self.h, pos.h)

proc lastPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneHoverEvent_lastPos(self.h), owned: true)

proc setLastPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneHoverEvent_setLastPos(self.h, pos.h)

proc lastScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneHoverEvent_lastScenePos(self.h), owned: true)

proc setLastScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneHoverEvent_setLastScenePos(self.h, pos.h)

proc lastScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneHoverEvent_lastScreenPos(self.h), owned: true)

proc setLastScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, pos: gen_qpoint_types.QPoint): void =
  fcQGraphicsSceneHoverEvent_setLastScreenPos(self.h, pos.h)

proc modifiers*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, ): cint =
  cint(fcQGraphicsSceneHoverEvent_modifiers(self.h))

proc setModifiers*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, modifiers: cint): void =
  fcQGraphicsSceneHoverEvent_setModifiers(self.h, cint(modifiers))

type QGraphicsSceneHoverEventsetAcceptedProc* = proc(self: QGraphicsSceneHoverEvent, accepted: bool): void {.raises: [], gcsafe.}
type QGraphicsSceneHoverEventcloneProc* = proc(self: QGraphicsSceneHoverEvent): gen_qcoreevent_types.QEvent {.raises: [], gcsafe.}
type QGraphicsSceneHoverEventVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsSceneHoverEventVTable
  setAccepted*: QGraphicsSceneHoverEventsetAcceptedProc
  clone*: QGraphicsSceneHoverEventcloneProc
proc QGraphicsSceneHoverEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, accepted: bool): void =
  fcQGraphicsSceneHoverEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQGraphicsSceneHoverEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneHoverEventVTable](vtbl)
  let self = QGraphicsSceneHoverEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc QGraphicsSceneHoverEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fcQGraphicsSceneHoverEvent_virtualbase_clone(self.h), owned: false)

proc miqt_exec_callback_cQGraphicsSceneHoverEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneHoverEventVTable](vtbl)
  let self = QGraphicsSceneHoverEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQGraphicsSceneHoverEvent* {.inheritable.} = ref object of QGraphicsSceneHoverEvent
  vtbl*: cQGraphicsSceneHoverEventVTable
method setAccepted*(self: VirtualQGraphicsSceneHoverEvent, accepted: bool): void {.base.} =
  QGraphicsSceneHoverEventsetAccepted(self[], accepted)
proc miqt_exec_method_cQGraphicsSceneHoverEvent_setAccepted(vtbl: pointer, inst: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneHoverEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneHoverEvent, vtbl)))
  let slotval1 = accepted
  vtbl.setAccepted(slotval1)

method clone*(self: VirtualQGraphicsSceneHoverEvent, ): gen_qcoreevent_types.QEvent {.base.} =
  QGraphicsSceneHoverEventclone(self[])
proc miqt_exec_method_cQGraphicsSceneHoverEvent_clone(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneHoverEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneHoverEvent, vtbl)))
  var virtualReturn = vtbl.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent,
    vtbl: ref QGraphicsSceneHoverEventVTable = nil): gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent =
  let vtbl = if vtbl == nil: new QGraphicsSceneHoverEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneHoverEventVTable, _: ptr cQGraphicsSceneHoverEvent) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneHoverEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQGraphicsSceneHoverEvent_setAccepted
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQGraphicsSceneHoverEvent_clone
  gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: fcQGraphicsSceneHoverEvent_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent,
    typeVal: cint,
    vtbl: ref QGraphicsSceneHoverEventVTable = nil): gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent =
  let vtbl = if vtbl == nil: new QGraphicsSceneHoverEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneHoverEventVTable, _: ptr cQGraphicsSceneHoverEvent) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneHoverEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQGraphicsSceneHoverEvent_setAccepted
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQGraphicsSceneHoverEvent_clone
  gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent(h: fcQGraphicsSceneHoverEvent_new2(addr(vtbl[].vtbl), cint(typeVal)), owned: true)

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent,
    vtbl: VirtualQGraphicsSceneHoverEvent) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneHoverEventVTable, _: ptr cQGraphicsSceneHoverEvent) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSceneHoverEvent()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneHoverEvent, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.setAccepted = miqt_exec_method_cQGraphicsSceneHoverEvent_setAccepted
  vtbl[].vtbl.clone = miqt_exec_method_cQGraphicsSceneHoverEvent_clone
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSceneHoverEvent_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent,
    typeVal: cint,
    vtbl: VirtualQGraphicsSceneHoverEvent) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneHoverEventVTable, _: ptr cQGraphicsSceneHoverEvent) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSceneHoverEvent()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneHoverEvent, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.setAccepted = miqt_exec_method_cQGraphicsSceneHoverEvent_setAccepted
  vtbl[].vtbl.clone = miqt_exec_method_cQGraphicsSceneHoverEvent_clone
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSceneHoverEvent_new2(addr(vtbl[].vtbl), cint(typeVal))
  vtbl[].owned = true

proc scenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneHelpEvent_scenePos(self.h), owned: true)

proc setScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneHelpEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneHelpEvent_screenPos(self.h), owned: true)

proc setScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent, pos: gen_qpoint_types.QPoint): void =
  fcQGraphicsSceneHelpEvent_setScreenPos(self.h, pos.h)

type QGraphicsSceneHelpEventsetAcceptedProc* = proc(self: QGraphicsSceneHelpEvent, accepted: bool): void {.raises: [], gcsafe.}
type QGraphicsSceneHelpEventcloneProc* = proc(self: QGraphicsSceneHelpEvent): gen_qcoreevent_types.QEvent {.raises: [], gcsafe.}
type QGraphicsSceneHelpEventVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsSceneHelpEventVTable
  setAccepted*: QGraphicsSceneHelpEventsetAcceptedProc
  clone*: QGraphicsSceneHelpEventcloneProc
proc QGraphicsSceneHelpEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent, accepted: bool): void =
  fcQGraphicsSceneHelpEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQGraphicsSceneHelpEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneHelpEventVTable](vtbl)
  let self = QGraphicsSceneHelpEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc QGraphicsSceneHelpEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fcQGraphicsSceneHelpEvent_virtualbase_clone(self.h), owned: false)

proc miqt_exec_callback_cQGraphicsSceneHelpEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneHelpEventVTable](vtbl)
  let self = QGraphicsSceneHelpEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQGraphicsSceneHelpEvent* {.inheritable.} = ref object of QGraphicsSceneHelpEvent
  vtbl*: cQGraphicsSceneHelpEventVTable
method setAccepted*(self: VirtualQGraphicsSceneHelpEvent, accepted: bool): void {.base.} =
  QGraphicsSceneHelpEventsetAccepted(self[], accepted)
proc miqt_exec_method_cQGraphicsSceneHelpEvent_setAccepted(vtbl: pointer, inst: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneHelpEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneHelpEvent, vtbl)))
  let slotval1 = accepted
  vtbl.setAccepted(slotval1)

method clone*(self: VirtualQGraphicsSceneHelpEvent, ): gen_qcoreevent_types.QEvent {.base.} =
  QGraphicsSceneHelpEventclone(self[])
proc miqt_exec_method_cQGraphicsSceneHelpEvent_clone(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneHelpEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneHelpEvent, vtbl)))
  var virtualReturn = vtbl.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent,
    vtbl: ref QGraphicsSceneHelpEventVTable = nil): gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent =
  let vtbl = if vtbl == nil: new QGraphicsSceneHelpEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneHelpEventVTable, _: ptr cQGraphicsSceneHelpEvent) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneHelpEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQGraphicsSceneHelpEvent_setAccepted
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQGraphicsSceneHelpEvent_clone
  gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent(h: fcQGraphicsSceneHelpEvent_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent,
    typeVal: cint,
    vtbl: ref QGraphicsSceneHelpEventVTable = nil): gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent =
  let vtbl = if vtbl == nil: new QGraphicsSceneHelpEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneHelpEventVTable, _: ptr cQGraphicsSceneHelpEvent) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneHelpEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQGraphicsSceneHelpEvent_setAccepted
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQGraphicsSceneHelpEvent_clone
  gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent(h: fcQGraphicsSceneHelpEvent_new2(addr(vtbl[].vtbl), cint(typeVal)), owned: true)

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent,
    vtbl: VirtualQGraphicsSceneHelpEvent) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneHelpEventVTable, _: ptr cQGraphicsSceneHelpEvent) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSceneHelpEvent()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneHelpEvent, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.setAccepted = miqt_exec_method_cQGraphicsSceneHelpEvent_setAccepted
  vtbl[].vtbl.clone = miqt_exec_method_cQGraphicsSceneHelpEvent_clone
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSceneHelpEvent_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent,
    typeVal: cint,
    vtbl: VirtualQGraphicsSceneHelpEvent) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneHelpEventVTable, _: ptr cQGraphicsSceneHelpEvent) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSceneHelpEvent()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneHelpEvent, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.setAccepted = miqt_exec_method_cQGraphicsSceneHelpEvent_setAccepted
  vtbl[].vtbl.clone = miqt_exec_method_cQGraphicsSceneHelpEvent_clone
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSceneHelpEvent_new2(addr(vtbl[].vtbl), cint(typeVal))
  vtbl[].owned = true

proc pos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneDragDropEvent_pos(self.h), owned: true)

proc setPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneDragDropEvent_setPos(self.h, pos.h)

proc scenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneDragDropEvent_scenePos(self.h), owned: true)

proc setScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneDragDropEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneDragDropEvent_screenPos(self.h), owned: true)

proc setScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, pos: gen_qpoint_types.QPoint): void =
  fcQGraphicsSceneDragDropEvent_setScreenPos(self.h, pos.h)

proc buttons*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): cint =
  cint(fcQGraphicsSceneDragDropEvent_buttons(self.h))

proc setButtons*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, buttons: cint): void =
  fcQGraphicsSceneDragDropEvent_setButtons(self.h, cint(buttons))

proc modifiers*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): cint =
  cint(fcQGraphicsSceneDragDropEvent_modifiers(self.h))

proc setModifiers*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, modifiers: cint): void =
  fcQGraphicsSceneDragDropEvent_setModifiers(self.h, cint(modifiers))

proc possibleActions*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): cint =
  cint(fcQGraphicsSceneDragDropEvent_possibleActions(self.h))

proc setPossibleActions*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, actions: cint): void =
  fcQGraphicsSceneDragDropEvent_setPossibleActions(self.h, cint(actions))

proc proposedAction*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): cint =
  cint(fcQGraphicsSceneDragDropEvent_proposedAction(self.h))

proc setProposedAction*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, action: cint): void =
  fcQGraphicsSceneDragDropEvent_setProposedAction(self.h, cint(action))

proc acceptProposedAction*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): void =
  fcQGraphicsSceneDragDropEvent_acceptProposedAction(self.h)

proc dropAction*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): cint =
  cint(fcQGraphicsSceneDragDropEvent_dropAction(self.h))

proc setDropAction*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, action: cint): void =
  fcQGraphicsSceneDragDropEvent_setDropAction(self.h, cint(action))

proc source*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQGraphicsSceneDragDropEvent_source(self.h), owned: false)

proc setSource*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, source: gen_qwidget_types.QWidget): void =
  fcQGraphicsSceneDragDropEvent_setSource(self.h, source.h)

proc mimeData*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData(h: fcQGraphicsSceneDragDropEvent_mimeData(self.h), owned: false)

proc setMimeData*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, data: gen_qmimedata_types.QMimeData): void =
  fcQGraphicsSceneDragDropEvent_setMimeData(self.h, data.h)

type QGraphicsSceneDragDropEventsetAcceptedProc* = proc(self: QGraphicsSceneDragDropEvent, accepted: bool): void {.raises: [], gcsafe.}
type QGraphicsSceneDragDropEventcloneProc* = proc(self: QGraphicsSceneDragDropEvent): gen_qcoreevent_types.QEvent {.raises: [], gcsafe.}
type QGraphicsSceneDragDropEventVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsSceneDragDropEventVTable
  setAccepted*: QGraphicsSceneDragDropEventsetAcceptedProc
  clone*: QGraphicsSceneDragDropEventcloneProc
proc QGraphicsSceneDragDropEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, accepted: bool): void =
  fcQGraphicsSceneDragDropEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQGraphicsSceneDragDropEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneDragDropEventVTable](vtbl)
  let self = QGraphicsSceneDragDropEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc QGraphicsSceneDragDropEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fcQGraphicsSceneDragDropEvent_virtualbase_clone(self.h), owned: false)

proc miqt_exec_callback_cQGraphicsSceneDragDropEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneDragDropEventVTable](vtbl)
  let self = QGraphicsSceneDragDropEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQGraphicsSceneDragDropEvent* {.inheritable.} = ref object of QGraphicsSceneDragDropEvent
  vtbl*: cQGraphicsSceneDragDropEventVTable
method setAccepted*(self: VirtualQGraphicsSceneDragDropEvent, accepted: bool): void {.base.} =
  QGraphicsSceneDragDropEventsetAccepted(self[], accepted)
proc miqt_exec_method_cQGraphicsSceneDragDropEvent_setAccepted(vtbl: pointer, inst: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneDragDropEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneDragDropEvent, vtbl)))
  let slotval1 = accepted
  vtbl.setAccepted(slotval1)

method clone*(self: VirtualQGraphicsSceneDragDropEvent, ): gen_qcoreevent_types.QEvent {.base.} =
  QGraphicsSceneDragDropEventclone(self[])
proc miqt_exec_method_cQGraphicsSceneDragDropEvent_clone(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneDragDropEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneDragDropEvent, vtbl)))
  var virtualReturn = vtbl.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent,
    vtbl: ref QGraphicsSceneDragDropEventVTable = nil): gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent =
  let vtbl = if vtbl == nil: new QGraphicsSceneDragDropEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneDragDropEventVTable, _: ptr cQGraphicsSceneDragDropEvent) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneDragDropEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQGraphicsSceneDragDropEvent_setAccepted
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQGraphicsSceneDragDropEvent_clone
  gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: fcQGraphicsSceneDragDropEvent_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent,
    typeVal: cint,
    vtbl: ref QGraphicsSceneDragDropEventVTable = nil): gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent =
  let vtbl = if vtbl == nil: new QGraphicsSceneDragDropEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneDragDropEventVTable, _: ptr cQGraphicsSceneDragDropEvent) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneDragDropEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQGraphicsSceneDragDropEvent_setAccepted
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQGraphicsSceneDragDropEvent_clone
  gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent(h: fcQGraphicsSceneDragDropEvent_new2(addr(vtbl[].vtbl), cint(typeVal)), owned: true)

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent,
    vtbl: VirtualQGraphicsSceneDragDropEvent) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneDragDropEventVTable, _: ptr cQGraphicsSceneDragDropEvent) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSceneDragDropEvent()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneDragDropEvent, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.setAccepted = miqt_exec_method_cQGraphicsSceneDragDropEvent_setAccepted
  vtbl[].vtbl.clone = miqt_exec_method_cQGraphicsSceneDragDropEvent_clone
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSceneDragDropEvent_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent,
    typeVal: cint,
    vtbl: VirtualQGraphicsSceneDragDropEvent) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneDragDropEventVTable, _: ptr cQGraphicsSceneDragDropEvent) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSceneDragDropEvent()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneDragDropEvent, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.setAccepted = miqt_exec_method_cQGraphicsSceneDragDropEvent_setAccepted
  vtbl[].vtbl.clone = miqt_exec_method_cQGraphicsSceneDragDropEvent_clone
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSceneDragDropEvent_new2(addr(vtbl[].vtbl), cint(typeVal))
  vtbl[].owned = true

proc oldSize*(self: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsSceneResizeEvent_oldSize(self.h), owned: true)

proc setOldSize*(self: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent, size: gen_qsize_types.QSizeF): void =
  fcQGraphicsSceneResizeEvent_setOldSize(self.h, size.h)

proc newSize*(self: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsSceneResizeEvent_newSize(self.h), owned: true)

proc setNewSize*(self: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent, size: gen_qsize_types.QSizeF): void =
  fcQGraphicsSceneResizeEvent_setNewSize(self.h, size.h)

type QGraphicsSceneResizeEventsetAcceptedProc* = proc(self: QGraphicsSceneResizeEvent, accepted: bool): void {.raises: [], gcsafe.}
type QGraphicsSceneResizeEventcloneProc* = proc(self: QGraphicsSceneResizeEvent): gen_qcoreevent_types.QEvent {.raises: [], gcsafe.}
type QGraphicsSceneResizeEventVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsSceneResizeEventVTable
  setAccepted*: QGraphicsSceneResizeEventsetAcceptedProc
  clone*: QGraphicsSceneResizeEventcloneProc
proc QGraphicsSceneResizeEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent, accepted: bool): void =
  fcQGraphicsSceneResizeEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQGraphicsSceneResizeEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneResizeEventVTable](vtbl)
  let self = QGraphicsSceneResizeEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc QGraphicsSceneResizeEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fcQGraphicsSceneResizeEvent_virtualbase_clone(self.h), owned: false)

proc miqt_exec_callback_cQGraphicsSceneResizeEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneResizeEventVTable](vtbl)
  let self = QGraphicsSceneResizeEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQGraphicsSceneResizeEvent* {.inheritable.} = ref object of QGraphicsSceneResizeEvent
  vtbl*: cQGraphicsSceneResizeEventVTable
method setAccepted*(self: VirtualQGraphicsSceneResizeEvent, accepted: bool): void {.base.} =
  QGraphicsSceneResizeEventsetAccepted(self[], accepted)
proc miqt_exec_method_cQGraphicsSceneResizeEvent_setAccepted(vtbl: pointer, inst: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneResizeEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneResizeEvent, vtbl)))
  let slotval1 = accepted
  vtbl.setAccepted(slotval1)

method clone*(self: VirtualQGraphicsSceneResizeEvent, ): gen_qcoreevent_types.QEvent {.base.} =
  QGraphicsSceneResizeEventclone(self[])
proc miqt_exec_method_cQGraphicsSceneResizeEvent_clone(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneResizeEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneResizeEvent, vtbl)))
  var virtualReturn = vtbl.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent,
    vtbl: ref QGraphicsSceneResizeEventVTable = nil): gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent =
  let vtbl = if vtbl == nil: new QGraphicsSceneResizeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneResizeEventVTable, _: ptr cQGraphicsSceneResizeEvent) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneResizeEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQGraphicsSceneResizeEvent_setAccepted
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQGraphicsSceneResizeEvent_clone
  gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent(h: fcQGraphicsSceneResizeEvent_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent,
    vtbl: VirtualQGraphicsSceneResizeEvent) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneResizeEventVTable, _: ptr cQGraphicsSceneResizeEvent) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSceneResizeEvent()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneResizeEvent, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.setAccepted = miqt_exec_method_cQGraphicsSceneResizeEvent_setAccepted
  vtbl[].vtbl.clone = miqt_exec_method_cQGraphicsSceneResizeEvent_clone
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSceneResizeEvent_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc oldPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneMoveEvent_oldPos(self.h), owned: true)

proc setOldPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneMoveEvent_setOldPos(self.h, pos.h)

proc newPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneMoveEvent_newPos(self.h), owned: true)

proc setNewPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneMoveEvent_setNewPos(self.h, pos.h)

type QGraphicsSceneMoveEventsetAcceptedProc* = proc(self: QGraphicsSceneMoveEvent, accepted: bool): void {.raises: [], gcsafe.}
type QGraphicsSceneMoveEventcloneProc* = proc(self: QGraphicsSceneMoveEvent): gen_qcoreevent_types.QEvent {.raises: [], gcsafe.}
type QGraphicsSceneMoveEventVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsSceneMoveEventVTable
  setAccepted*: QGraphicsSceneMoveEventsetAcceptedProc
  clone*: QGraphicsSceneMoveEventcloneProc
proc QGraphicsSceneMoveEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent, accepted: bool): void =
  fcQGraphicsSceneMoveEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQGraphicsSceneMoveEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneMoveEventVTable](vtbl)
  let self = QGraphicsSceneMoveEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc QGraphicsSceneMoveEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fcQGraphicsSceneMoveEvent_virtualbase_clone(self.h), owned: false)

proc miqt_exec_callback_cQGraphicsSceneMoveEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsSceneMoveEventVTable](vtbl)
  let self = QGraphicsSceneMoveEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQGraphicsSceneMoveEvent* {.inheritable.} = ref object of QGraphicsSceneMoveEvent
  vtbl*: cQGraphicsSceneMoveEventVTable
method setAccepted*(self: VirtualQGraphicsSceneMoveEvent, accepted: bool): void {.base.} =
  QGraphicsSceneMoveEventsetAccepted(self[], accepted)
proc miqt_exec_method_cQGraphicsSceneMoveEvent_setAccepted(vtbl: pointer, inst: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneMoveEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneMoveEvent, vtbl)))
  let slotval1 = accepted
  vtbl.setAccepted(slotval1)

method clone*(self: VirtualQGraphicsSceneMoveEvent, ): gen_qcoreevent_types.QEvent {.base.} =
  QGraphicsSceneMoveEventclone(self[])
proc miqt_exec_method_cQGraphicsSceneMoveEvent_clone(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsSceneMoveEvent](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneMoveEvent, vtbl)))
  var virtualReturn = vtbl.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent,
    vtbl: ref QGraphicsSceneMoveEventVTable = nil): gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent =
  let vtbl = if vtbl == nil: new QGraphicsSceneMoveEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneMoveEventVTable, _: ptr cQGraphicsSceneMoveEvent) {.cdecl.} =
    let vtbl = cast[ref QGraphicsSceneMoveEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQGraphicsSceneMoveEvent_setAccepted
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQGraphicsSceneMoveEvent_clone
  gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent(h: fcQGraphicsSceneMoveEvent_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent,
    vtbl: VirtualQGraphicsSceneMoveEvent) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsSceneMoveEventVTable, _: ptr cQGraphicsSceneMoveEvent) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsSceneMoveEvent()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsSceneMoveEvent, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.setAccepted = miqt_exec_method_cQGraphicsSceneMoveEvent_setAccepted
  vtbl[].vtbl.clone = miqt_exec_method_cQGraphicsSceneMoveEvent_clone
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsSceneMoveEvent_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

