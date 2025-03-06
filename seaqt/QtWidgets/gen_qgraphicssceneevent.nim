import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
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

proc fcQGraphicsSceneEvent_new(typeVal: cint): ptr cQGraphicsSceneEvent {.importc: "QGraphicsSceneEvent_new".}
proc fcQGraphicsSceneEvent_widget(self: pointer, ): pointer {.importc: "QGraphicsSceneEvent_widget".}
proc fcQGraphicsSceneEvent_setWidget(self: pointer, widget: pointer): void {.importc: "QGraphicsSceneEvent_setWidget".}
proc fcQGraphicsSceneEvent_timestamp(self: pointer, ): culonglong {.importc: "QGraphicsSceneEvent_timestamp".}
proc fcQGraphicsSceneEvent_setTimestamp(self: pointer, ts: culonglong): void {.importc: "QGraphicsSceneEvent_setTimestamp".}
proc fQGraphicsSceneEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneEvent_virtualbase_clone".}
proc fcQGraphicsSceneEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneEvent_override_virtual_clone".}
proc fcQGraphicsSceneEvent_delete(self: pointer) {.importc: "QGraphicsSceneEvent_delete".}
proc fcQGraphicsSceneMouseEvent_new(): ptr cQGraphicsSceneMouseEvent {.importc: "QGraphicsSceneMouseEvent_new".}
proc fcQGraphicsSceneMouseEvent_new2(typeVal: cint): ptr cQGraphicsSceneMouseEvent {.importc: "QGraphicsSceneMouseEvent_new2".}
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
proc fQGraphicsSceneMouseEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneMouseEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneMouseEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneMouseEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneMouseEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneMouseEvent_virtualbase_clone".}
proc fcQGraphicsSceneMouseEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneMouseEvent_override_virtual_clone".}
proc fcQGraphicsSceneMouseEvent_delete(self: pointer) {.importc: "QGraphicsSceneMouseEvent_delete".}
proc fcQGraphicsSceneWheelEvent_new(): ptr cQGraphicsSceneWheelEvent {.importc: "QGraphicsSceneWheelEvent_new".}
proc fcQGraphicsSceneWheelEvent_new2(typeVal: cint): ptr cQGraphicsSceneWheelEvent {.importc: "QGraphicsSceneWheelEvent_new2".}
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
proc fQGraphicsSceneWheelEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneWheelEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneWheelEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneWheelEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneWheelEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneWheelEvent_virtualbase_clone".}
proc fcQGraphicsSceneWheelEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneWheelEvent_override_virtual_clone".}
proc fcQGraphicsSceneWheelEvent_delete(self: pointer) {.importc: "QGraphicsSceneWheelEvent_delete".}
proc fcQGraphicsSceneContextMenuEvent_new(): ptr cQGraphicsSceneContextMenuEvent {.importc: "QGraphicsSceneContextMenuEvent_new".}
proc fcQGraphicsSceneContextMenuEvent_new2(typeVal: cint): ptr cQGraphicsSceneContextMenuEvent {.importc: "QGraphicsSceneContextMenuEvent_new2".}
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
proc fQGraphicsSceneContextMenuEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneContextMenuEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneContextMenuEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneContextMenuEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneContextMenuEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneContextMenuEvent_virtualbase_clone".}
proc fcQGraphicsSceneContextMenuEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneContextMenuEvent_override_virtual_clone".}
proc fcQGraphicsSceneContextMenuEvent_delete(self: pointer) {.importc: "QGraphicsSceneContextMenuEvent_delete".}
proc fcQGraphicsSceneHoverEvent_new(): ptr cQGraphicsSceneHoverEvent {.importc: "QGraphicsSceneHoverEvent_new".}
proc fcQGraphicsSceneHoverEvent_new2(typeVal: cint): ptr cQGraphicsSceneHoverEvent {.importc: "QGraphicsSceneHoverEvent_new2".}
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
proc fQGraphicsSceneHoverEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneHoverEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneHoverEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneHoverEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneHoverEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneHoverEvent_virtualbase_clone".}
proc fcQGraphicsSceneHoverEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneHoverEvent_override_virtual_clone".}
proc fcQGraphicsSceneHoverEvent_delete(self: pointer) {.importc: "QGraphicsSceneHoverEvent_delete".}
proc fcQGraphicsSceneHelpEvent_new(): ptr cQGraphicsSceneHelpEvent {.importc: "QGraphicsSceneHelpEvent_new".}
proc fcQGraphicsSceneHelpEvent_new2(typeVal: cint): ptr cQGraphicsSceneHelpEvent {.importc: "QGraphicsSceneHelpEvent_new2".}
proc fcQGraphicsSceneHelpEvent_scenePos(self: pointer, ): pointer {.importc: "QGraphicsSceneHelpEvent_scenePos".}
proc fcQGraphicsSceneHelpEvent_setScenePos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHelpEvent_setScenePos".}
proc fcQGraphicsSceneHelpEvent_screenPos(self: pointer, ): pointer {.importc: "QGraphicsSceneHelpEvent_screenPos".}
proc fcQGraphicsSceneHelpEvent_setScreenPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHelpEvent_setScreenPos".}
proc fQGraphicsSceneHelpEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneHelpEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneHelpEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneHelpEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneHelpEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneHelpEvent_virtualbase_clone".}
proc fcQGraphicsSceneHelpEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneHelpEvent_override_virtual_clone".}
proc fcQGraphicsSceneHelpEvent_delete(self: pointer) {.importc: "QGraphicsSceneHelpEvent_delete".}
proc fcQGraphicsSceneDragDropEvent_new(): ptr cQGraphicsSceneDragDropEvent {.importc: "QGraphicsSceneDragDropEvent_new".}
proc fcQGraphicsSceneDragDropEvent_new2(typeVal: cint): ptr cQGraphicsSceneDragDropEvent {.importc: "QGraphicsSceneDragDropEvent_new2".}
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
proc fQGraphicsSceneDragDropEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneDragDropEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneDragDropEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneDragDropEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneDragDropEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneDragDropEvent_virtualbase_clone".}
proc fcQGraphicsSceneDragDropEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneDragDropEvent_override_virtual_clone".}
proc fcQGraphicsSceneDragDropEvent_delete(self: pointer) {.importc: "QGraphicsSceneDragDropEvent_delete".}
proc fcQGraphicsSceneResizeEvent_new(): ptr cQGraphicsSceneResizeEvent {.importc: "QGraphicsSceneResizeEvent_new".}
proc fcQGraphicsSceneResizeEvent_oldSize(self: pointer, ): pointer {.importc: "QGraphicsSceneResizeEvent_oldSize".}
proc fcQGraphicsSceneResizeEvent_setOldSize(self: pointer, size: pointer): void {.importc: "QGraphicsSceneResizeEvent_setOldSize".}
proc fcQGraphicsSceneResizeEvent_newSize(self: pointer, ): pointer {.importc: "QGraphicsSceneResizeEvent_newSize".}
proc fcQGraphicsSceneResizeEvent_setNewSize(self: pointer, size: pointer): void {.importc: "QGraphicsSceneResizeEvent_setNewSize".}
proc fQGraphicsSceneResizeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneResizeEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneResizeEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneResizeEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneResizeEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneResizeEvent_virtualbase_clone".}
proc fcQGraphicsSceneResizeEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneResizeEvent_override_virtual_clone".}
proc fcQGraphicsSceneResizeEvent_delete(self: pointer) {.importc: "QGraphicsSceneResizeEvent_delete".}
proc fcQGraphicsSceneMoveEvent_new(): ptr cQGraphicsSceneMoveEvent {.importc: "QGraphicsSceneMoveEvent_new".}
proc fcQGraphicsSceneMoveEvent_oldPos(self: pointer, ): pointer {.importc: "QGraphicsSceneMoveEvent_oldPos".}
proc fcQGraphicsSceneMoveEvent_setOldPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMoveEvent_setOldPos".}
proc fcQGraphicsSceneMoveEvent_newPos(self: pointer, ): pointer {.importc: "QGraphicsSceneMoveEvent_newPos".}
proc fcQGraphicsSceneMoveEvent_setNewPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMoveEvent_setNewPos".}
proc fQGraphicsSceneMoveEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneMoveEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneMoveEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneMoveEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneMoveEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneMoveEvent_virtualbase_clone".}
proc fcQGraphicsSceneMoveEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneMoveEvent_override_virtual_clone".}
proc fcQGraphicsSceneMoveEvent_delete(self: pointer) {.importc: "QGraphicsSceneMoveEvent_delete".}


func init*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneEvent, h: ptr cQGraphicsSceneEvent): gen_qgraphicssceneevent_types.QGraphicsSceneEvent =
  T(h: h)
proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneEvent, typeVal: cint): gen_qgraphicssceneevent_types.QGraphicsSceneEvent =
  gen_qgraphicssceneevent_types.QGraphicsSceneEvent.init(fcQGraphicsSceneEvent_new(cint(typeVal)))

proc widget*(self: gen_qgraphicssceneevent_types.QGraphicsSceneEvent, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQGraphicsSceneEvent_widget(self.h))

proc setWidget*(self: gen_qgraphicssceneevent_types.QGraphicsSceneEvent, widget: gen_qwidget_types.QWidget): void =
  fcQGraphicsSceneEvent_setWidget(self.h, widget.h)

proc timestamp*(self: gen_qgraphicssceneevent_types.QGraphicsSceneEvent, ): culonglong =
  fcQGraphicsSceneEvent_timestamp(self.h)

proc setTimestamp*(self: gen_qgraphicssceneevent_types.QGraphicsSceneEvent, ts: culonglong): void =
  fcQGraphicsSceneEvent_setTimestamp(self.h, ts)

proc QGraphicsSceneEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneEvent, accepted: bool): void =
  fQGraphicsSceneEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneEvent, slot: QGraphicsSceneEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneEvent_setAccepted(self: ptr cQGraphicsSceneEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneEvent_setAccepted ".} =
  var nimfunc = cast[ptr QGraphicsSceneEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc QGraphicsSceneEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fQGraphicsSceneEvent_virtualbase_clone(self.h))

type QGraphicsSceneEventcloneProc* = proc(): gen_qcoreevent_types.QEvent
proc onclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneEvent, slot: QGraphicsSceneEventcloneProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneEvent_clone(self: ptr cQGraphicsSceneEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneEvent_clone ".} =
  var nimfunc = cast[ptr QGraphicsSceneEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qgraphicssceneevent_types.QGraphicsSceneEvent) =
  fcQGraphicsSceneEvent_delete(self.h)

func init*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, h: ptr cQGraphicsSceneMouseEvent): gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent =
  T(h: h)
proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent =
  gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent.init(fcQGraphicsSceneMouseEvent_new())

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, typeVal: cint): gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent =
  gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent.init(fcQGraphicsSceneMouseEvent_new2(cint(typeVal)))

proc pos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneMouseEvent_pos(self.h))

proc setPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneMouseEvent_setPos(self.h, pos.h)

proc scenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneMouseEvent_scenePos(self.h))

proc setScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneMouseEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneMouseEvent_screenPos(self.h))

proc setScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, pos: gen_qpoint_types.QPoint): void =
  fcQGraphicsSceneMouseEvent_setScreenPos(self.h, pos.h)

proc buttonDownPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, button: cint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneMouseEvent_buttonDownPos(self.h, cint(button)))

proc setButtonDownPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, button: cint, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneMouseEvent_setButtonDownPos(self.h, cint(button), pos.h)

proc buttonDownScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, button: cint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneMouseEvent_buttonDownScenePos(self.h, cint(button)))

proc setButtonDownScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, button: cint, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneMouseEvent_setButtonDownScenePos(self.h, cint(button), pos.h)

proc buttonDownScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, button: cint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneMouseEvent_buttonDownScreenPos(self.h, cint(button)))

proc setButtonDownScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, button: cint, pos: gen_qpoint_types.QPoint): void =
  fcQGraphicsSceneMouseEvent_setButtonDownScreenPos(self.h, cint(button), pos.h)

proc lastPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneMouseEvent_lastPos(self.h))

proc setLastPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneMouseEvent_setLastPos(self.h, pos.h)

proc lastScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneMouseEvent_lastScenePos(self.h))

proc setLastScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneMouseEvent_setLastScenePos(self.h, pos.h)

proc lastScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneMouseEvent_lastScreenPos(self.h))

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

proc QGraphicsSceneMouseEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, accepted: bool): void =
  fQGraphicsSceneMouseEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneMouseEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, slot: QGraphicsSceneMouseEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneMouseEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneMouseEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneMouseEvent_setAccepted(self: ptr cQGraphicsSceneMouseEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneMouseEvent_setAccepted ".} =
  var nimfunc = cast[ptr QGraphicsSceneMouseEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc QGraphicsSceneMouseEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fQGraphicsSceneMouseEvent_virtualbase_clone(self.h))

type QGraphicsSceneMouseEventcloneProc* = proc(): gen_qcoreevent_types.QEvent
proc onclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent, slot: QGraphicsSceneMouseEventcloneProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneMouseEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneMouseEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneMouseEvent_clone(self: ptr cQGraphicsSceneMouseEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneMouseEvent_clone ".} =
  var nimfunc = cast[ptr QGraphicsSceneMouseEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMouseEvent) =
  fcQGraphicsSceneMouseEvent_delete(self.h)

func init*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, h: ptr cQGraphicsSceneWheelEvent): gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent =
  T(h: h)
proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, ): gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent =
  gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent.init(fcQGraphicsSceneWheelEvent_new())

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, typeVal: cint): gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent =
  gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent.init(fcQGraphicsSceneWheelEvent_new2(cint(typeVal)))

proc pos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneWheelEvent_pos(self.h))

proc setPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneWheelEvent_setPos(self.h, pos.h)

proc scenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneWheelEvent_scenePos(self.h))

proc setScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneWheelEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneWheelEvent_screenPos(self.h))

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
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneWheelEvent_pixelDelta(self.h))

proc setPixelDelta*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, delta: gen_qpoint_types.QPoint): void =
  fcQGraphicsSceneWheelEvent_setPixelDelta(self.h, delta.h)

proc isInverted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, ): bool =
  fcQGraphicsSceneWheelEvent_isInverted(self.h)

proc setInverted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, inverted: bool): void =
  fcQGraphicsSceneWheelEvent_setInverted(self.h, inverted)

proc QGraphicsSceneWheelEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, accepted: bool): void =
  fQGraphicsSceneWheelEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneWheelEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, slot: QGraphicsSceneWheelEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneWheelEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneWheelEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneWheelEvent_setAccepted(self: ptr cQGraphicsSceneWheelEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneWheelEvent_setAccepted ".} =
  var nimfunc = cast[ptr QGraphicsSceneWheelEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc QGraphicsSceneWheelEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fQGraphicsSceneWheelEvent_virtualbase_clone(self.h))

type QGraphicsSceneWheelEventcloneProc* = proc(): gen_qcoreevent_types.QEvent
proc onclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent, slot: QGraphicsSceneWheelEventcloneProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneWheelEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneWheelEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneWheelEvent_clone(self: ptr cQGraphicsSceneWheelEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneWheelEvent_clone ".} =
  var nimfunc = cast[ptr QGraphicsSceneWheelEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qgraphicssceneevent_types.QGraphicsSceneWheelEvent) =
  fcQGraphicsSceneWheelEvent_delete(self.h)

func init*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, h: ptr cQGraphicsSceneContextMenuEvent): gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent =
  T(h: h)
proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, ): gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent =
  gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent.init(fcQGraphicsSceneContextMenuEvent_new())

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, typeVal: cint): gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent =
  gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent.init(fcQGraphicsSceneContextMenuEvent_new2(cint(typeVal)))

proc pos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneContextMenuEvent_pos(self.h))

proc setPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneContextMenuEvent_setPos(self.h, pos.h)

proc scenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneContextMenuEvent_scenePos(self.h))

proc setScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneContextMenuEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneContextMenuEvent_screenPos(self.h))

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

proc QGraphicsSceneContextMenuEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, accepted: bool): void =
  fQGraphicsSceneContextMenuEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneContextMenuEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, slot: QGraphicsSceneContextMenuEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneContextMenuEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneContextMenuEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneContextMenuEvent_setAccepted(self: ptr cQGraphicsSceneContextMenuEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneContextMenuEvent_setAccepted ".} =
  var nimfunc = cast[ptr QGraphicsSceneContextMenuEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc QGraphicsSceneContextMenuEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fQGraphicsSceneContextMenuEvent_virtualbase_clone(self.h))

type QGraphicsSceneContextMenuEventcloneProc* = proc(): gen_qcoreevent_types.QEvent
proc onclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent, slot: QGraphicsSceneContextMenuEventcloneProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneContextMenuEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneContextMenuEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneContextMenuEvent_clone(self: ptr cQGraphicsSceneContextMenuEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneContextMenuEvent_clone ".} =
  var nimfunc = cast[ptr QGraphicsSceneContextMenuEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qgraphicssceneevent_types.QGraphicsSceneContextMenuEvent) =
  fcQGraphicsSceneContextMenuEvent_delete(self.h)

func init*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, h: ptr cQGraphicsSceneHoverEvent): gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent =
  T(h: h)
proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, ): gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent =
  gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent.init(fcQGraphicsSceneHoverEvent_new())

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, typeVal: cint): gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent =
  gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent.init(fcQGraphicsSceneHoverEvent_new2(cint(typeVal)))

proc pos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneHoverEvent_pos(self.h))

proc setPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneHoverEvent_setPos(self.h, pos.h)

proc scenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneHoverEvent_scenePos(self.h))

proc setScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneHoverEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneHoverEvent_screenPos(self.h))

proc setScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, pos: gen_qpoint_types.QPoint): void =
  fcQGraphicsSceneHoverEvent_setScreenPos(self.h, pos.h)

proc lastPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneHoverEvent_lastPos(self.h))

proc setLastPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneHoverEvent_setLastPos(self.h, pos.h)

proc lastScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneHoverEvent_lastScenePos(self.h))

proc setLastScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneHoverEvent_setLastScenePos(self.h, pos.h)

proc lastScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneHoverEvent_lastScreenPos(self.h))

proc setLastScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, pos: gen_qpoint_types.QPoint): void =
  fcQGraphicsSceneHoverEvent_setLastScreenPos(self.h, pos.h)

proc modifiers*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, ): cint =
  cint(fcQGraphicsSceneHoverEvent_modifiers(self.h))

proc setModifiers*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, modifiers: cint): void =
  fcQGraphicsSceneHoverEvent_setModifiers(self.h, cint(modifiers))

proc QGraphicsSceneHoverEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, accepted: bool): void =
  fQGraphicsSceneHoverEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneHoverEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, slot: QGraphicsSceneHoverEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneHoverEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneHoverEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneHoverEvent_setAccepted(self: ptr cQGraphicsSceneHoverEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneHoverEvent_setAccepted ".} =
  var nimfunc = cast[ptr QGraphicsSceneHoverEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc QGraphicsSceneHoverEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fQGraphicsSceneHoverEvent_virtualbase_clone(self.h))

type QGraphicsSceneHoverEventcloneProc* = proc(): gen_qcoreevent_types.QEvent
proc onclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent, slot: QGraphicsSceneHoverEventcloneProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneHoverEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneHoverEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneHoverEvent_clone(self: ptr cQGraphicsSceneHoverEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneHoverEvent_clone ".} =
  var nimfunc = cast[ptr QGraphicsSceneHoverEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHoverEvent) =
  fcQGraphicsSceneHoverEvent_delete(self.h)

func init*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent, h: ptr cQGraphicsSceneHelpEvent): gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent =
  T(h: h)
proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent, ): gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent =
  gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent.init(fcQGraphicsSceneHelpEvent_new())

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent, typeVal: cint): gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent =
  gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent.init(fcQGraphicsSceneHelpEvent_new2(cint(typeVal)))

proc scenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneHelpEvent_scenePos(self.h))

proc setScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneHelpEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneHelpEvent_screenPos(self.h))

proc setScreenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent, pos: gen_qpoint_types.QPoint): void =
  fcQGraphicsSceneHelpEvent_setScreenPos(self.h, pos.h)

proc QGraphicsSceneHelpEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent, accepted: bool): void =
  fQGraphicsSceneHelpEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneHelpEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent, slot: QGraphicsSceneHelpEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneHelpEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneHelpEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneHelpEvent_setAccepted(self: ptr cQGraphicsSceneHelpEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneHelpEvent_setAccepted ".} =
  var nimfunc = cast[ptr QGraphicsSceneHelpEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc QGraphicsSceneHelpEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fQGraphicsSceneHelpEvent_virtualbase_clone(self.h))

type QGraphicsSceneHelpEventcloneProc* = proc(): gen_qcoreevent_types.QEvent
proc onclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent, slot: QGraphicsSceneHelpEventcloneProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneHelpEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneHelpEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneHelpEvent_clone(self: ptr cQGraphicsSceneHelpEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneHelpEvent_clone ".} =
  var nimfunc = cast[ptr QGraphicsSceneHelpEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qgraphicssceneevent_types.QGraphicsSceneHelpEvent) =
  fcQGraphicsSceneHelpEvent_delete(self.h)

func init*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, h: ptr cQGraphicsSceneDragDropEvent): gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent =
  T(h: h)
proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent =
  gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent.init(fcQGraphicsSceneDragDropEvent_new())

proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, typeVal: cint): gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent =
  gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent.init(fcQGraphicsSceneDragDropEvent_new2(cint(typeVal)))

proc pos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneDragDropEvent_pos(self.h))

proc setPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneDragDropEvent_setPos(self.h, pos.h)

proc scenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneDragDropEvent_scenePos(self.h))

proc setScenePos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneDragDropEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQGraphicsSceneDragDropEvent_screenPos(self.h))

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
  gen_qwidget_types.QWidget(h: fcQGraphicsSceneDragDropEvent_source(self.h))

proc setSource*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, source: gen_qwidget_types.QWidget): void =
  fcQGraphicsSceneDragDropEvent_setSource(self.h, source.h)

proc mimeData*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData(h: fcQGraphicsSceneDragDropEvent_mimeData(self.h))

proc setMimeData*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, data: gen_qmimedata_types.QMimeData): void =
  fcQGraphicsSceneDragDropEvent_setMimeData(self.h, data.h)

proc QGraphicsSceneDragDropEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, accepted: bool): void =
  fQGraphicsSceneDragDropEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneDragDropEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, slot: QGraphicsSceneDragDropEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneDragDropEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneDragDropEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneDragDropEvent_setAccepted(self: ptr cQGraphicsSceneDragDropEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneDragDropEvent_setAccepted ".} =
  var nimfunc = cast[ptr QGraphicsSceneDragDropEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc QGraphicsSceneDragDropEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fQGraphicsSceneDragDropEvent_virtualbase_clone(self.h))

type QGraphicsSceneDragDropEventcloneProc* = proc(): gen_qcoreevent_types.QEvent
proc onclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent, slot: QGraphicsSceneDragDropEventcloneProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneDragDropEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneDragDropEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneDragDropEvent_clone(self: ptr cQGraphicsSceneDragDropEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneDragDropEvent_clone ".} =
  var nimfunc = cast[ptr QGraphicsSceneDragDropEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qgraphicssceneevent_types.QGraphicsSceneDragDropEvent) =
  fcQGraphicsSceneDragDropEvent_delete(self.h)

func init*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent, h: ptr cQGraphicsSceneResizeEvent): gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent =
  T(h: h)
proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent, ): gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent =
  gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent.init(fcQGraphicsSceneResizeEvent_new())

proc oldSize*(self: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsSceneResizeEvent_oldSize(self.h))

proc setOldSize*(self: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent, size: gen_qsize_types.QSizeF): void =
  fcQGraphicsSceneResizeEvent_setOldSize(self.h, size.h)

proc newSize*(self: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsSceneResizeEvent_newSize(self.h))

proc setNewSize*(self: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent, size: gen_qsize_types.QSizeF): void =
  fcQGraphicsSceneResizeEvent_setNewSize(self.h, size.h)

proc QGraphicsSceneResizeEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent, accepted: bool): void =
  fQGraphicsSceneResizeEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneResizeEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent, slot: QGraphicsSceneResizeEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneResizeEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneResizeEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneResizeEvent_setAccepted(self: ptr cQGraphicsSceneResizeEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneResizeEvent_setAccepted ".} =
  var nimfunc = cast[ptr QGraphicsSceneResizeEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc QGraphicsSceneResizeEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fQGraphicsSceneResizeEvent_virtualbase_clone(self.h))

type QGraphicsSceneResizeEventcloneProc* = proc(): gen_qcoreevent_types.QEvent
proc onclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent, slot: QGraphicsSceneResizeEventcloneProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneResizeEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneResizeEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneResizeEvent_clone(self: ptr cQGraphicsSceneResizeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneResizeEvent_clone ".} =
  var nimfunc = cast[ptr QGraphicsSceneResizeEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qgraphicssceneevent_types.QGraphicsSceneResizeEvent) =
  fcQGraphicsSceneResizeEvent_delete(self.h)

func init*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent, h: ptr cQGraphicsSceneMoveEvent): gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent =
  T(h: h)
proc create*(T: type gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent, ): gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent =
  gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent.init(fcQGraphicsSceneMoveEvent_new())

proc oldPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneMoveEvent_oldPos(self.h))

proc setOldPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneMoveEvent_setOldPos(self.h, pos.h)

proc newPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsSceneMoveEvent_newPos(self.h))

proc setNewPos*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsSceneMoveEvent_setNewPos(self.h, pos.h)

proc QGraphicsSceneMoveEventsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent, accepted: bool): void =
  fQGraphicsSceneMoveEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneMoveEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent, slot: QGraphicsSceneMoveEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneMoveEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneMoveEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneMoveEvent_setAccepted(self: ptr cQGraphicsSceneMoveEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneMoveEvent_setAccepted ".} =
  var nimfunc = cast[ptr QGraphicsSceneMoveEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc QGraphicsSceneMoveEventclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent, ): gen_qcoreevent_types.QEvent =
  gen_qcoreevent_types.QEvent(h: fQGraphicsSceneMoveEvent_virtualbase_clone(self.h))

type QGraphicsSceneMoveEventcloneProc* = proc(): gen_qcoreevent_types.QEvent
proc onclone*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent, slot: QGraphicsSceneMoveEventcloneProc) =
  # TODO check subclass
  var tmp = new QGraphicsSceneMoveEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneMoveEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneMoveEvent_clone(self: ptr cQGraphicsSceneMoveEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneMoveEvent_clone ".} =
  var nimfunc = cast[ptr QGraphicsSceneMoveEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qgraphicssceneevent_types.QGraphicsSceneMoveEvent) =
  fcQGraphicsSceneMoveEvent_delete(self.h)
