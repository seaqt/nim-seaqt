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
{.compile("gen_qundostack.cpp", cflags).}


import ./gen_qundostack_types
export gen_qundostack_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaction_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaction_types

type cQUndoCommand*{.exportc: "QUndoCommand", incompleteStruct.} = object
type cQUndoStack*{.exportc: "QUndoStack", incompleteStruct.} = object

proc fcQUndoCommand_new(): ptr cQUndoCommand {.importc: "QUndoCommand_new".}
proc fcQUndoCommand_new2(text: struct_miqt_string): ptr cQUndoCommand {.importc: "QUndoCommand_new2".}
proc fcQUndoCommand_new3(parent: pointer): ptr cQUndoCommand {.importc: "QUndoCommand_new3".}
proc fcQUndoCommand_new4(text: struct_miqt_string, parent: pointer): ptr cQUndoCommand {.importc: "QUndoCommand_new4".}
proc fcQUndoCommand_undo(self: pointer, ): void {.importc: "QUndoCommand_undo".}
proc fcQUndoCommand_redo(self: pointer, ): void {.importc: "QUndoCommand_redo".}
proc fcQUndoCommand_text(self: pointer, ): struct_miqt_string {.importc: "QUndoCommand_text".}
proc fcQUndoCommand_actionText(self: pointer, ): struct_miqt_string {.importc: "QUndoCommand_actionText".}
proc fcQUndoCommand_setText(self: pointer, text: struct_miqt_string): void {.importc: "QUndoCommand_setText".}
proc fcQUndoCommand_isObsolete(self: pointer, ): bool {.importc: "QUndoCommand_isObsolete".}
proc fcQUndoCommand_setObsolete(self: pointer, obsolete: bool): void {.importc: "QUndoCommand_setObsolete".}
proc fcQUndoCommand_id(self: pointer, ): cint {.importc: "QUndoCommand_id".}
proc fcQUndoCommand_mergeWith(self: pointer, other: pointer): bool {.importc: "QUndoCommand_mergeWith".}
proc fcQUndoCommand_childCount(self: pointer, ): cint {.importc: "QUndoCommand_childCount".}
proc fcQUndoCommand_child(self: pointer, index: cint): pointer {.importc: "QUndoCommand_child".}
proc fQUndoCommand_virtualbase_undo(self: pointer, ): void{.importc: "QUndoCommand_virtualbase_undo".}
proc fcQUndoCommand_override_virtual_undo(self: pointer, slot: int) {.importc: "QUndoCommand_override_virtual_undo".}
proc fQUndoCommand_virtualbase_redo(self: pointer, ): void{.importc: "QUndoCommand_virtualbase_redo".}
proc fcQUndoCommand_override_virtual_redo(self: pointer, slot: int) {.importc: "QUndoCommand_override_virtual_redo".}
proc fQUndoCommand_virtualbase_id(self: pointer, ): cint{.importc: "QUndoCommand_virtualbase_id".}
proc fcQUndoCommand_override_virtual_id(self: pointer, slot: int) {.importc: "QUndoCommand_override_virtual_id".}
proc fQUndoCommand_virtualbase_mergeWith(self: pointer, other: pointer): bool{.importc: "QUndoCommand_virtualbase_mergeWith".}
proc fcQUndoCommand_override_virtual_mergeWith(self: pointer, slot: int) {.importc: "QUndoCommand_override_virtual_mergeWith".}
proc fcQUndoCommand_delete(self: pointer) {.importc: "QUndoCommand_delete".}
proc fcQUndoStack_new(): ptr cQUndoStack {.importc: "QUndoStack_new".}
proc fcQUndoStack_new2(parent: pointer): ptr cQUndoStack {.importc: "QUndoStack_new2".}
proc fcQUndoStack_metaObject(self: pointer, ): pointer {.importc: "QUndoStack_metaObject".}
proc fcQUndoStack_metacast(self: pointer, param1: cstring): pointer {.importc: "QUndoStack_metacast".}
proc fcQUndoStack_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUndoStack_metacall".}
proc fcQUndoStack_tr(s: cstring): struct_miqt_string {.importc: "QUndoStack_tr".}
proc fcQUndoStack_clear(self: pointer, ): void {.importc: "QUndoStack_clear".}
proc fcQUndoStack_push(self: pointer, cmd: pointer): void {.importc: "QUndoStack_push".}
proc fcQUndoStack_canUndo(self: pointer, ): bool {.importc: "QUndoStack_canUndo".}
proc fcQUndoStack_canRedo(self: pointer, ): bool {.importc: "QUndoStack_canRedo".}
proc fcQUndoStack_undoText(self: pointer, ): struct_miqt_string {.importc: "QUndoStack_undoText".}
proc fcQUndoStack_redoText(self: pointer, ): struct_miqt_string {.importc: "QUndoStack_redoText".}
proc fcQUndoStack_count(self: pointer, ): cint {.importc: "QUndoStack_count".}
proc fcQUndoStack_index(self: pointer, ): cint {.importc: "QUndoStack_index".}
proc fcQUndoStack_text(self: pointer, idx: cint): struct_miqt_string {.importc: "QUndoStack_text".}
proc fcQUndoStack_createUndoAction(self: pointer, parent: pointer): pointer {.importc: "QUndoStack_createUndoAction".}
proc fcQUndoStack_createRedoAction(self: pointer, parent: pointer): pointer {.importc: "QUndoStack_createRedoAction".}
proc fcQUndoStack_isActive(self: pointer, ): bool {.importc: "QUndoStack_isActive".}
proc fcQUndoStack_isClean(self: pointer, ): bool {.importc: "QUndoStack_isClean".}
proc fcQUndoStack_cleanIndex(self: pointer, ): cint {.importc: "QUndoStack_cleanIndex".}
proc fcQUndoStack_beginMacro(self: pointer, text: struct_miqt_string): void {.importc: "QUndoStack_beginMacro".}
proc fcQUndoStack_endMacro(self: pointer, ): void {.importc: "QUndoStack_endMacro".}
proc fcQUndoStack_setUndoLimit(self: pointer, limit: cint): void {.importc: "QUndoStack_setUndoLimit".}
proc fcQUndoStack_undoLimit(self: pointer, ): cint {.importc: "QUndoStack_undoLimit".}
proc fcQUndoStack_command(self: pointer, index: cint): pointer {.importc: "QUndoStack_command".}
proc fcQUndoStack_setClean(self: pointer, ): void {.importc: "QUndoStack_setClean".}
proc fcQUndoStack_resetClean(self: pointer, ): void {.importc: "QUndoStack_resetClean".}
proc fcQUndoStack_setIndex(self: pointer, idx: cint): void {.importc: "QUndoStack_setIndex".}
proc fcQUndoStack_undo(self: pointer, ): void {.importc: "QUndoStack_undo".}
proc fcQUndoStack_redo(self: pointer, ): void {.importc: "QUndoStack_redo".}
proc fcQUndoStack_setActive(self: pointer, ): void {.importc: "QUndoStack_setActive".}
proc fcQUndoStack_indexChanged(self: pointer, idx: cint): void {.importc: "QUndoStack_indexChanged".}
proc fcQUndoStack_connect_indexChanged(self: pointer, slot: int) {.importc: "QUndoStack_connect_indexChanged".}
proc fcQUndoStack_cleanChanged(self: pointer, clean: bool): void {.importc: "QUndoStack_cleanChanged".}
proc fcQUndoStack_connect_cleanChanged(self: pointer, slot: int) {.importc: "QUndoStack_connect_cleanChanged".}
proc fcQUndoStack_canUndoChanged(self: pointer, canUndo: bool): void {.importc: "QUndoStack_canUndoChanged".}
proc fcQUndoStack_connect_canUndoChanged(self: pointer, slot: int) {.importc: "QUndoStack_connect_canUndoChanged".}
proc fcQUndoStack_canRedoChanged(self: pointer, canRedo: bool): void {.importc: "QUndoStack_canRedoChanged".}
proc fcQUndoStack_connect_canRedoChanged(self: pointer, slot: int) {.importc: "QUndoStack_connect_canRedoChanged".}
proc fcQUndoStack_undoTextChanged(self: pointer, undoText: struct_miqt_string): void {.importc: "QUndoStack_undoTextChanged".}
proc fcQUndoStack_connect_undoTextChanged(self: pointer, slot: int) {.importc: "QUndoStack_connect_undoTextChanged".}
proc fcQUndoStack_redoTextChanged(self: pointer, redoText: struct_miqt_string): void {.importc: "QUndoStack_redoTextChanged".}
proc fcQUndoStack_connect_redoTextChanged(self: pointer, slot: int) {.importc: "QUndoStack_connect_redoTextChanged".}
proc fcQUndoStack_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QUndoStack_tr2".}
proc fcQUndoStack_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUndoStack_tr3".}
proc fcQUndoStack_createUndoAction2(self: pointer, parent: pointer, prefix: struct_miqt_string): pointer {.importc: "QUndoStack_createUndoAction2".}
proc fcQUndoStack_createRedoAction2(self: pointer, parent: pointer, prefix: struct_miqt_string): pointer {.importc: "QUndoStack_createRedoAction2".}
proc fcQUndoStack_setActive1(self: pointer, active: bool): void {.importc: "QUndoStack_setActive1".}
proc fQUndoStack_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QUndoStack_virtualbase_metaObject".}
proc fcQUndoStack_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_metaObject".}
proc fQUndoStack_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QUndoStack_virtualbase_metacast".}
proc fcQUndoStack_override_virtual_metacast(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_metacast".}
proc fQUndoStack_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QUndoStack_virtualbase_metacall".}
proc fcQUndoStack_override_virtual_metacall(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_metacall".}
proc fQUndoStack_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QUndoStack_virtualbase_event".}
proc fcQUndoStack_override_virtual_event(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_event".}
proc fQUndoStack_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QUndoStack_virtualbase_eventFilter".}
proc fcQUndoStack_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_eventFilter".}
proc fQUndoStack_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QUndoStack_virtualbase_timerEvent".}
proc fcQUndoStack_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_timerEvent".}
proc fQUndoStack_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QUndoStack_virtualbase_childEvent".}
proc fcQUndoStack_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_childEvent".}
proc fQUndoStack_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QUndoStack_virtualbase_customEvent".}
proc fcQUndoStack_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_customEvent".}
proc fQUndoStack_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QUndoStack_virtualbase_connectNotify".}
proc fcQUndoStack_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_connectNotify".}
proc fQUndoStack_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QUndoStack_virtualbase_disconnectNotify".}
proc fcQUndoStack_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_disconnectNotify".}
proc fcQUndoStack_staticMetaObject(): pointer {.importc: "QUndoStack_staticMetaObject".}
proc fcQUndoStack_delete(self: pointer) {.importc: "QUndoStack_delete".}


func init*(T: type gen_qundostack_types.QUndoCommand, h: ptr cQUndoCommand): gen_qundostack_types.QUndoCommand =
  T(h: h)
proc create*(T: type gen_qundostack_types.QUndoCommand, ): gen_qundostack_types.QUndoCommand =
  gen_qundostack_types.QUndoCommand.init(fcQUndoCommand_new())

proc create*(T: type gen_qundostack_types.QUndoCommand, text: string): gen_qundostack_types.QUndoCommand =
  gen_qundostack_types.QUndoCommand.init(fcQUndoCommand_new2(struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qundostack_types.QUndoCommand, parent: gen_qundostack_types.QUndoCommand): gen_qundostack_types.QUndoCommand =
  gen_qundostack_types.QUndoCommand.init(fcQUndoCommand_new3(parent.h))

proc create*(T: type gen_qundostack_types.QUndoCommand, text: string, parent: gen_qundostack_types.QUndoCommand): gen_qundostack_types.QUndoCommand =
  gen_qundostack_types.QUndoCommand.init(fcQUndoCommand_new4(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc undo*(self: gen_qundostack_types.QUndoCommand, ): void =
  fcQUndoCommand_undo(self.h)

proc redo*(self: gen_qundostack_types.QUndoCommand, ): void =
  fcQUndoCommand_redo(self.h)

proc text*(self: gen_qundostack_types.QUndoCommand, ): string =
  let v_ms = fcQUndoCommand_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc actionText*(self: gen_qundostack_types.QUndoCommand, ): string =
  let v_ms = fcQUndoCommand_actionText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qundostack_types.QUndoCommand, text: string): void =
  fcQUndoCommand_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc isObsolete*(self: gen_qundostack_types.QUndoCommand, ): bool =
  fcQUndoCommand_isObsolete(self.h)

proc setObsolete*(self: gen_qundostack_types.QUndoCommand, obsolete: bool): void =
  fcQUndoCommand_setObsolete(self.h, obsolete)

proc id*(self: gen_qundostack_types.QUndoCommand, ): cint =
  fcQUndoCommand_id(self.h)

proc mergeWith*(self: gen_qundostack_types.QUndoCommand, other: gen_qundostack_types.QUndoCommand): bool =
  fcQUndoCommand_mergeWith(self.h, other.h)

proc childCount*(self: gen_qundostack_types.QUndoCommand, ): cint =
  fcQUndoCommand_childCount(self.h)

proc child*(self: gen_qundostack_types.QUndoCommand, index: cint): gen_qundostack_types.QUndoCommand =
  gen_qundostack_types.QUndoCommand(h: fcQUndoCommand_child(self.h, index))

proc QUndoCommandundo*(self: gen_qundostack_types.QUndoCommand, ): void =
  fQUndoCommand_virtualbase_undo(self.h)

type QUndoCommandundoProc* = proc(): void
proc onundo*(self: gen_qundostack_types.QUndoCommand, slot: QUndoCommandundoProc) =
  # TODO check subclass
  var tmp = new QUndoCommandundoProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoCommand_override_virtual_undo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoCommand_undo(self: ptr cQUndoCommand, slot: int): void {.exportc: "miqt_exec_callback_QUndoCommand_undo ".} =
  var nimfunc = cast[ptr QUndoCommandundoProc](cast[pointer](slot))

  nimfunc[]()
proc QUndoCommandredo*(self: gen_qundostack_types.QUndoCommand, ): void =
  fQUndoCommand_virtualbase_redo(self.h)

type QUndoCommandredoProc* = proc(): void
proc onredo*(self: gen_qundostack_types.QUndoCommand, slot: QUndoCommandredoProc) =
  # TODO check subclass
  var tmp = new QUndoCommandredoProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoCommand_override_virtual_redo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoCommand_redo(self: ptr cQUndoCommand, slot: int): void {.exportc: "miqt_exec_callback_QUndoCommand_redo ".} =
  var nimfunc = cast[ptr QUndoCommandredoProc](cast[pointer](slot))

  nimfunc[]()
proc QUndoCommandid*(self: gen_qundostack_types.QUndoCommand, ): cint =
  fQUndoCommand_virtualbase_id(self.h)

type QUndoCommandidProc* = proc(): cint
proc onid*(self: gen_qundostack_types.QUndoCommand, slot: QUndoCommandidProc) =
  # TODO check subclass
  var tmp = new QUndoCommandidProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoCommand_override_virtual_id(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoCommand_id(self: ptr cQUndoCommand, slot: int): cint {.exportc: "miqt_exec_callback_QUndoCommand_id ".} =
  var nimfunc = cast[ptr QUndoCommandidProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QUndoCommandmergeWith*(self: gen_qundostack_types.QUndoCommand, other: gen_qundostack_types.QUndoCommand): bool =
  fQUndoCommand_virtualbase_mergeWith(self.h, other.h)

type QUndoCommandmergeWithProc* = proc(other: gen_qundostack_types.QUndoCommand): bool
proc onmergeWith*(self: gen_qundostack_types.QUndoCommand, slot: QUndoCommandmergeWithProc) =
  # TODO check subclass
  var tmp = new QUndoCommandmergeWithProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoCommand_override_virtual_mergeWith(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoCommand_mergeWith(self: ptr cQUndoCommand, slot: int, other: pointer): bool {.exportc: "miqt_exec_callback_QUndoCommand_mergeWith ".} =
  var nimfunc = cast[ptr QUndoCommandmergeWithProc](cast[pointer](slot))
  let slotval1 = gen_qundostack_types.QUndoCommand(h: other)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc delete*(self: gen_qundostack_types.QUndoCommand) =
  fcQUndoCommand_delete(self.h)

func init*(T: type gen_qundostack_types.QUndoStack, h: ptr cQUndoStack): gen_qundostack_types.QUndoStack =
  T(h: h)
proc create*(T: type gen_qundostack_types.QUndoStack, ): gen_qundostack_types.QUndoStack =
  gen_qundostack_types.QUndoStack.init(fcQUndoStack_new())

proc create*(T: type gen_qundostack_types.QUndoStack, parent: gen_qobject_types.QObject): gen_qundostack_types.QUndoStack =
  gen_qundostack_types.QUndoStack.init(fcQUndoStack_new2(parent.h))

proc metaObject*(self: gen_qundostack_types.QUndoStack, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUndoStack_metaObject(self.h))

proc metacast*(self: gen_qundostack_types.QUndoStack, param1: cstring): pointer =
  fcQUndoStack_metacast(self.h, param1)

proc metacall*(self: gen_qundostack_types.QUndoStack, param1: cint, param2: cint, param3: pointer): cint =
  fcQUndoStack_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qundostack_types.QUndoStack, s: cstring): string =
  let v_ms = fcQUndoStack_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clear*(self: gen_qundostack_types.QUndoStack, ): void =
  fcQUndoStack_clear(self.h)

proc push*(self: gen_qundostack_types.QUndoStack, cmd: gen_qundostack_types.QUndoCommand): void =
  fcQUndoStack_push(self.h, cmd.h)

proc canUndo*(self: gen_qundostack_types.QUndoStack, ): bool =
  fcQUndoStack_canUndo(self.h)

proc canRedo*(self: gen_qundostack_types.QUndoStack, ): bool =
  fcQUndoStack_canRedo(self.h)

proc undoText*(self: gen_qundostack_types.QUndoStack, ): string =
  let v_ms = fcQUndoStack_undoText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc redoText*(self: gen_qundostack_types.QUndoStack, ): string =
  let v_ms = fcQUndoStack_redoText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc count*(self: gen_qundostack_types.QUndoStack, ): cint =
  fcQUndoStack_count(self.h)

proc index*(self: gen_qundostack_types.QUndoStack, ): cint =
  fcQUndoStack_index(self.h)

proc text*(self: gen_qundostack_types.QUndoStack, idx: cint): string =
  let v_ms = fcQUndoStack_text(self.h, idx)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createUndoAction*(self: gen_qundostack_types.QUndoStack, parent: gen_qobject_types.QObject): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUndoStack_createUndoAction(self.h, parent.h))

proc createRedoAction*(self: gen_qundostack_types.QUndoStack, parent: gen_qobject_types.QObject): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUndoStack_createRedoAction(self.h, parent.h))

proc isActive*(self: gen_qundostack_types.QUndoStack, ): bool =
  fcQUndoStack_isActive(self.h)

proc isClean*(self: gen_qundostack_types.QUndoStack, ): bool =
  fcQUndoStack_isClean(self.h)

proc cleanIndex*(self: gen_qundostack_types.QUndoStack, ): cint =
  fcQUndoStack_cleanIndex(self.h)

proc beginMacro*(self: gen_qundostack_types.QUndoStack, text: string): void =
  fcQUndoStack_beginMacro(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc endMacro*(self: gen_qundostack_types.QUndoStack, ): void =
  fcQUndoStack_endMacro(self.h)

proc setUndoLimit*(self: gen_qundostack_types.QUndoStack, limit: cint): void =
  fcQUndoStack_setUndoLimit(self.h, limit)

proc undoLimit*(self: gen_qundostack_types.QUndoStack, ): cint =
  fcQUndoStack_undoLimit(self.h)

proc command*(self: gen_qundostack_types.QUndoStack, index: cint): gen_qundostack_types.QUndoCommand =
  gen_qundostack_types.QUndoCommand(h: fcQUndoStack_command(self.h, index))

proc setClean*(self: gen_qundostack_types.QUndoStack, ): void =
  fcQUndoStack_setClean(self.h)

proc resetClean*(self: gen_qundostack_types.QUndoStack, ): void =
  fcQUndoStack_resetClean(self.h)

proc setIndex*(self: gen_qundostack_types.QUndoStack, idx: cint): void =
  fcQUndoStack_setIndex(self.h, idx)

proc undo*(self: gen_qundostack_types.QUndoStack, ): void =
  fcQUndoStack_undo(self.h)

proc redo*(self: gen_qundostack_types.QUndoStack, ): void =
  fcQUndoStack_redo(self.h)

proc setActive*(self: gen_qundostack_types.QUndoStack, ): void =
  fcQUndoStack_setActive(self.h)

proc indexChanged*(self: gen_qundostack_types.QUndoStack, idx: cint): void =
  fcQUndoStack_indexChanged(self.h, idx)

type QUndoStackindexChangedSlot* = proc(idx: cint)
proc miqt_exec_callback_QUndoStack_indexChanged(slot: int, idx: cint) {.exportc.} =
  let nimfunc = cast[ptr QUndoStackindexChangedSlot](cast[pointer](slot))
  let slotval1 = idx

  nimfunc[](slotval1)

proc onindexChanged*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackindexChangedSlot) =
  var tmp = new QUndoStackindexChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_connect_indexChanged(self.h, cast[int](addr tmp[]))

proc cleanChanged*(self: gen_qundostack_types.QUndoStack, clean: bool): void =
  fcQUndoStack_cleanChanged(self.h, clean)

type QUndoStackcleanChangedSlot* = proc(clean: bool)
proc miqt_exec_callback_QUndoStack_cleanChanged(slot: int, clean: bool) {.exportc.} =
  let nimfunc = cast[ptr QUndoStackcleanChangedSlot](cast[pointer](slot))
  let slotval1 = clean

  nimfunc[](slotval1)

proc oncleanChanged*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackcleanChangedSlot) =
  var tmp = new QUndoStackcleanChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_connect_cleanChanged(self.h, cast[int](addr tmp[]))

proc canUndoChanged*(self: gen_qundostack_types.QUndoStack, canUndo: bool): void =
  fcQUndoStack_canUndoChanged(self.h, canUndo)

type QUndoStackcanUndoChangedSlot* = proc(canUndo: bool)
proc miqt_exec_callback_QUndoStack_canUndoChanged(slot: int, canUndo: bool) {.exportc.} =
  let nimfunc = cast[ptr QUndoStackcanUndoChangedSlot](cast[pointer](slot))
  let slotval1 = canUndo

  nimfunc[](slotval1)

proc oncanUndoChanged*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackcanUndoChangedSlot) =
  var tmp = new QUndoStackcanUndoChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_connect_canUndoChanged(self.h, cast[int](addr tmp[]))

proc canRedoChanged*(self: gen_qundostack_types.QUndoStack, canRedo: bool): void =
  fcQUndoStack_canRedoChanged(self.h, canRedo)

type QUndoStackcanRedoChangedSlot* = proc(canRedo: bool)
proc miqt_exec_callback_QUndoStack_canRedoChanged(slot: int, canRedo: bool) {.exportc.} =
  let nimfunc = cast[ptr QUndoStackcanRedoChangedSlot](cast[pointer](slot))
  let slotval1 = canRedo

  nimfunc[](slotval1)

proc oncanRedoChanged*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackcanRedoChangedSlot) =
  var tmp = new QUndoStackcanRedoChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_connect_canRedoChanged(self.h, cast[int](addr tmp[]))

proc undoTextChanged*(self: gen_qundostack_types.QUndoStack, undoText: string): void =
  fcQUndoStack_undoTextChanged(self.h, struct_miqt_string(data: undoText, len: csize_t(len(undoText))))

type QUndoStackundoTextChangedSlot* = proc(undoText: string)
proc miqt_exec_callback_QUndoStack_undoTextChanged(slot: int, undoText: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QUndoStackundoTextChangedSlot](cast[pointer](slot))
  let vundoText_ms = undoText
  let vundoTextx_ret = string.fromBytes(toOpenArrayByte(vundoText_ms.data, 0, int(vundoText_ms.len)-1))
  c_free(vundoText_ms.data)
  let slotval1 = vundoTextx_ret

  nimfunc[](slotval1)

proc onundoTextChanged*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackundoTextChangedSlot) =
  var tmp = new QUndoStackundoTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_connect_undoTextChanged(self.h, cast[int](addr tmp[]))

proc redoTextChanged*(self: gen_qundostack_types.QUndoStack, redoText: string): void =
  fcQUndoStack_redoTextChanged(self.h, struct_miqt_string(data: redoText, len: csize_t(len(redoText))))

type QUndoStackredoTextChangedSlot* = proc(redoText: string)
proc miqt_exec_callback_QUndoStack_redoTextChanged(slot: int, redoText: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QUndoStackredoTextChangedSlot](cast[pointer](slot))
  let vredoText_ms = redoText
  let vredoTextx_ret = string.fromBytes(toOpenArrayByte(vredoText_ms.data, 0, int(vredoText_ms.len)-1))
  c_free(vredoText_ms.data)
  let slotval1 = vredoTextx_ret

  nimfunc[](slotval1)

proc onredoTextChanged*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackredoTextChangedSlot) =
  var tmp = new QUndoStackredoTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_connect_redoTextChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qundostack_types.QUndoStack, s: cstring, c: cstring): string =
  let v_ms = fcQUndoStack_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qundostack_types.QUndoStack, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQUndoStack_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createUndoAction*(self: gen_qundostack_types.QUndoStack, parent: gen_qobject_types.QObject, prefix: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUndoStack_createUndoAction2(self.h, parent.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix)))))

proc createRedoAction*(self: gen_qundostack_types.QUndoStack, parent: gen_qobject_types.QObject, prefix: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUndoStack_createRedoAction2(self.h, parent.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix)))))

proc setActive*(self: gen_qundostack_types.QUndoStack, active: bool): void =
  fcQUndoStack_setActive1(self.h, active)

proc QUndoStackmetaObject*(self: gen_qundostack_types.QUndoStack, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQUndoStack_virtualbase_metaObject(self.h))

type QUndoStackmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackmetaObjectProc) =
  # TODO check subclass
  var tmp = new QUndoStackmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_metaObject(self: ptr cQUndoStack, slot: int): pointer {.exportc: "miqt_exec_callback_QUndoStack_metaObject ".} =
  var nimfunc = cast[ptr QUndoStackmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QUndoStackmetacast*(self: gen_qundostack_types.QUndoStack, param1: cstring): pointer =
  fQUndoStack_virtualbase_metacast(self.h, param1)

type QUndoStackmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackmetacastProc) =
  # TODO check subclass
  var tmp = new QUndoStackmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_metacast(self: ptr cQUndoStack, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QUndoStack_metacast ".} =
  var nimfunc = cast[ptr QUndoStackmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUndoStackmetacall*(self: gen_qundostack_types.QUndoStack, param1: cint, param2: cint, param3: pointer): cint =
  fQUndoStack_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QUndoStackmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackmetacallProc) =
  # TODO check subclass
  var tmp = new QUndoStackmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_metacall(self: ptr cQUndoStack, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QUndoStack_metacall ".} =
  var nimfunc = cast[ptr QUndoStackmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QUndoStackevent*(self: gen_qundostack_types.QUndoStack, event: gen_qcoreevent_types.QEvent): bool =
  fQUndoStack_virtualbase_event(self.h, event.h)

type QUndoStackeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackeventProc) =
  # TODO check subclass
  var tmp = new QUndoStackeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_event(self: ptr cQUndoStack, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QUndoStack_event ".} =
  var nimfunc = cast[ptr QUndoStackeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUndoStackeventFilter*(self: gen_qundostack_types.QUndoStack, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQUndoStack_virtualbase_eventFilter(self.h, watched.h, event.h)

type QUndoStackeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackeventFilterProc) =
  # TODO check subclass
  var tmp = new QUndoStackeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_eventFilter(self: ptr cQUndoStack, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QUndoStack_eventFilter ".} =
  var nimfunc = cast[ptr QUndoStackeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QUndoStacktimerEvent*(self: gen_qundostack_types.QUndoStack, event: gen_qcoreevent_types.QTimerEvent): void =
  fQUndoStack_virtualbase_timerEvent(self.h, event.h)

type QUndoStacktimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qundostack_types.QUndoStack, slot: QUndoStacktimerEventProc) =
  # TODO check subclass
  var tmp = new QUndoStacktimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_timerEvent(self: ptr cQUndoStack, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoStack_timerEvent ".} =
  var nimfunc = cast[ptr QUndoStacktimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QUndoStackchildEvent*(self: gen_qundostack_types.QUndoStack, event: gen_qcoreevent_types.QChildEvent): void =
  fQUndoStack_virtualbase_childEvent(self.h, event.h)

type QUndoStackchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackchildEventProc) =
  # TODO check subclass
  var tmp = new QUndoStackchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_childEvent(self: ptr cQUndoStack, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoStack_childEvent ".} =
  var nimfunc = cast[ptr QUndoStackchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QUndoStackcustomEvent*(self: gen_qundostack_types.QUndoStack, event: gen_qcoreevent_types.QEvent): void =
  fQUndoStack_virtualbase_customEvent(self.h, event.h)

type QUndoStackcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackcustomEventProc) =
  # TODO check subclass
  var tmp = new QUndoStackcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_customEvent(self: ptr cQUndoStack, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoStack_customEvent ".} =
  var nimfunc = cast[ptr QUndoStackcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QUndoStackconnectNotify*(self: gen_qundostack_types.QUndoStack, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQUndoStack_virtualbase_connectNotify(self.h, signal.h)

type QUndoStackconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QUndoStackconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_connectNotify(self: ptr cQUndoStack, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QUndoStack_connectNotify ".} =
  var nimfunc = cast[ptr QUndoStackconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QUndoStackdisconnectNotify*(self: gen_qundostack_types.QUndoStack, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQUndoStack_virtualbase_disconnectNotify(self.h, signal.h)

type QUndoStackdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QUndoStackdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_disconnectNotify(self: ptr cQUndoStack, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QUndoStack_disconnectNotify ".} =
  var nimfunc = cast[ptr QUndoStackdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qundostack_types.QUndoStack): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUndoStack_staticMetaObject())
proc delete*(self: gen_qundostack_types.QUndoStack) =
  fcQUndoStack_delete(self.h)
