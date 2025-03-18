import ./qtwidgets_pkg

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

proc fcQUndoCommand_undo(self: pointer): void {.importc: "QUndoCommand_undo".}
proc fcQUndoCommand_redo(self: pointer): void {.importc: "QUndoCommand_redo".}
proc fcQUndoCommand_text(self: pointer): struct_miqt_string {.importc: "QUndoCommand_text".}
proc fcQUndoCommand_actionText(self: pointer): struct_miqt_string {.importc: "QUndoCommand_actionText".}
proc fcQUndoCommand_setText(self: pointer, text: struct_miqt_string): void {.importc: "QUndoCommand_setText".}
proc fcQUndoCommand_isObsolete(self: pointer): bool {.importc: "QUndoCommand_isObsolete".}
proc fcQUndoCommand_setObsolete(self: pointer, obsolete: bool): void {.importc: "QUndoCommand_setObsolete".}
proc fcQUndoCommand_id(self: pointer): cint {.importc: "QUndoCommand_id".}
proc fcQUndoCommand_mergeWith(self: pointer, other: pointer): bool {.importc: "QUndoCommand_mergeWith".}
proc fcQUndoCommand_childCount(self: pointer): cint {.importc: "QUndoCommand_childCount".}
proc fcQUndoCommand_child(self: pointer, index: cint): pointer {.importc: "QUndoCommand_child".}
proc fcQUndoCommand_vtbl(self: pointer): pointer {.importc: "QUndoCommand_vtbl".}
proc fcQUndoCommand_vdata(self: pointer): pointer {.importc: "QUndoCommand_vdata".}

type cQUndoCommandVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  undo*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  redo*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  id*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  mergeWith*: proc(self: pointer, other: pointer): bool {.cdecl, raises: [], gcsafe.}
proc fcQUndoCommand_virtualbase_undo(self: pointer): void {.importc: "QUndoCommand_virtualbase_undo".}
proc fcQUndoCommand_virtualbase_redo(self: pointer): void {.importc: "QUndoCommand_virtualbase_redo".}
proc fcQUndoCommand_virtualbase_id(self: pointer): cint {.importc: "QUndoCommand_virtualbase_id".}
proc fcQUndoCommand_virtualbase_mergeWith(self: pointer, other: pointer): bool {.importc: "QUndoCommand_virtualbase_mergeWith".}
proc fcQUndoCommand_new(vtbl, vdata: pointer): ptr cQUndoCommand {.importc: "QUndoCommand_new".}
proc fcQUndoCommand_new2(vtbl, vdata: pointer, text: struct_miqt_string): ptr cQUndoCommand {.importc: "QUndoCommand_new2".}
proc fcQUndoCommand_new3(vtbl, vdata: pointer, parent: pointer): ptr cQUndoCommand {.importc: "QUndoCommand_new3".}
proc fcQUndoCommand_new4(vtbl, vdata: pointer, text: struct_miqt_string, parent: pointer): ptr cQUndoCommand {.importc: "QUndoCommand_new4".}
proc fcQUndoStack_metaObject(self: pointer): pointer {.importc: "QUndoStack_metaObject".}
proc fcQUndoStack_metacast(self: pointer, param1: cstring): pointer {.importc: "QUndoStack_metacast".}
proc fcQUndoStack_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUndoStack_metacall".}
proc fcQUndoStack_tr(s: cstring): struct_miqt_string {.importc: "QUndoStack_tr".}
proc fcQUndoStack_trUtf8(s: cstring): struct_miqt_string {.importc: "QUndoStack_trUtf8".}
proc fcQUndoStack_clear(self: pointer): void {.importc: "QUndoStack_clear".}
proc fcQUndoStack_push(self: pointer, cmd: pointer): void {.importc: "QUndoStack_push".}
proc fcQUndoStack_canUndo(self: pointer): bool {.importc: "QUndoStack_canUndo".}
proc fcQUndoStack_canRedo(self: pointer): bool {.importc: "QUndoStack_canRedo".}
proc fcQUndoStack_undoText(self: pointer): struct_miqt_string {.importc: "QUndoStack_undoText".}
proc fcQUndoStack_redoText(self: pointer): struct_miqt_string {.importc: "QUndoStack_redoText".}
proc fcQUndoStack_count(self: pointer): cint {.importc: "QUndoStack_count".}
proc fcQUndoStack_index(self: pointer): cint {.importc: "QUndoStack_index".}
proc fcQUndoStack_text(self: pointer, idx: cint): struct_miqt_string {.importc: "QUndoStack_text".}
proc fcQUndoStack_createUndoAction(self: pointer, parent: pointer): pointer {.importc: "QUndoStack_createUndoAction".}
proc fcQUndoStack_createRedoAction(self: pointer, parent: pointer): pointer {.importc: "QUndoStack_createRedoAction".}
proc fcQUndoStack_isActive(self: pointer): bool {.importc: "QUndoStack_isActive".}
proc fcQUndoStack_isClean(self: pointer): bool {.importc: "QUndoStack_isClean".}
proc fcQUndoStack_cleanIndex(self: pointer): cint {.importc: "QUndoStack_cleanIndex".}
proc fcQUndoStack_beginMacro(self: pointer, text: struct_miqt_string): void {.importc: "QUndoStack_beginMacro".}
proc fcQUndoStack_endMacro(self: pointer): void {.importc: "QUndoStack_endMacro".}
proc fcQUndoStack_setUndoLimit(self: pointer, limit: cint): void {.importc: "QUndoStack_setUndoLimit".}
proc fcQUndoStack_undoLimit(self: pointer): cint {.importc: "QUndoStack_undoLimit".}
proc fcQUndoStack_command(self: pointer, index: cint): pointer {.importc: "QUndoStack_command".}
proc fcQUndoStack_setClean(self: pointer): void {.importc: "QUndoStack_setClean".}
proc fcQUndoStack_resetClean(self: pointer): void {.importc: "QUndoStack_resetClean".}
proc fcQUndoStack_setIndex(self: pointer, idx: cint): void {.importc: "QUndoStack_setIndex".}
proc fcQUndoStack_undo(self: pointer): void {.importc: "QUndoStack_undo".}
proc fcQUndoStack_redo(self: pointer): void {.importc: "QUndoStack_redo".}
proc fcQUndoStack_setActive(self: pointer): void {.importc: "QUndoStack_setActive".}
proc fcQUndoStack_indexChanged(self: pointer, idx: cint): void {.importc: "QUndoStack_indexChanged".}
proc fcQUndoStack_connect_indexChanged(self: pointer, slot: int, callback: proc (slot: int, idx: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QUndoStack_connect_indexChanged".}
proc fcQUndoStack_cleanChanged(self: pointer, clean: bool): void {.importc: "QUndoStack_cleanChanged".}
proc fcQUndoStack_connect_cleanChanged(self: pointer, slot: int, callback: proc (slot: int, clean: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QUndoStack_connect_cleanChanged".}
proc fcQUndoStack_canUndoChanged(self: pointer, canUndo: bool): void {.importc: "QUndoStack_canUndoChanged".}
proc fcQUndoStack_connect_canUndoChanged(self: pointer, slot: int, callback: proc (slot: int, canUndo: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QUndoStack_connect_canUndoChanged".}
proc fcQUndoStack_canRedoChanged(self: pointer, canRedo: bool): void {.importc: "QUndoStack_canRedoChanged".}
proc fcQUndoStack_connect_canRedoChanged(self: pointer, slot: int, callback: proc (slot: int, canRedo: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QUndoStack_connect_canRedoChanged".}
proc fcQUndoStack_undoTextChanged(self: pointer, undoText: struct_miqt_string): void {.importc: "QUndoStack_undoTextChanged".}
proc fcQUndoStack_connect_undoTextChanged(self: pointer, slot: int, callback: proc (slot: int, undoText: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QUndoStack_connect_undoTextChanged".}
proc fcQUndoStack_redoTextChanged(self: pointer, redoText: struct_miqt_string): void {.importc: "QUndoStack_redoTextChanged".}
proc fcQUndoStack_connect_redoTextChanged(self: pointer, slot: int, callback: proc (slot: int, redoText: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QUndoStack_connect_redoTextChanged".}
proc fcQUndoStack_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QUndoStack_tr2".}
proc fcQUndoStack_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUndoStack_tr3".}
proc fcQUndoStack_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QUndoStack_trUtf82".}
proc fcQUndoStack_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUndoStack_trUtf83".}
proc fcQUndoStack_createUndoAction2(self: pointer, parent: pointer, prefix: struct_miqt_string): pointer {.importc: "QUndoStack_createUndoAction2".}
proc fcQUndoStack_createRedoAction2(self: pointer, parent: pointer, prefix: struct_miqt_string): pointer {.importc: "QUndoStack_createRedoAction2".}
proc fcQUndoStack_setActive1(self: pointer, active: bool): void {.importc: "QUndoStack_setActive1".}
proc fcQUndoStack_vtbl(self: pointer): pointer {.importc: "QUndoStack_vtbl".}
proc fcQUndoStack_vdata(self: pointer): pointer {.importc: "QUndoStack_vdata".}

type cQUndoStackVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQUndoStack_virtualbase_metaObject(self: pointer): pointer {.importc: "QUndoStack_virtualbase_metaObject".}
proc fcQUndoStack_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QUndoStack_virtualbase_metacast".}
proc fcQUndoStack_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUndoStack_virtualbase_metacall".}
proc fcQUndoStack_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QUndoStack_virtualbase_event".}
proc fcQUndoStack_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QUndoStack_virtualbase_eventFilter".}
proc fcQUndoStack_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QUndoStack_virtualbase_timerEvent".}
proc fcQUndoStack_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QUndoStack_virtualbase_childEvent".}
proc fcQUndoStack_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QUndoStack_virtualbase_customEvent".}
proc fcQUndoStack_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QUndoStack_virtualbase_connectNotify".}
proc fcQUndoStack_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QUndoStack_virtualbase_disconnectNotify".}
proc fcQUndoStack_protectedbase_sender(self: pointer): pointer {.importc: "QUndoStack_protectedbase_sender".}
proc fcQUndoStack_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QUndoStack_protectedbase_senderSignalIndex".}
proc fcQUndoStack_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QUndoStack_protectedbase_receivers".}
proc fcQUndoStack_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QUndoStack_protectedbase_isSignalConnected".}
proc fcQUndoStack_new(vtbl, vdata: pointer): ptr cQUndoStack {.importc: "QUndoStack_new".}
proc fcQUndoStack_new2(vtbl, vdata: pointer, parent: pointer): ptr cQUndoStack {.importc: "QUndoStack_new2".}
proc fcQUndoStack_staticMetaObject(): pointer {.importc: "QUndoStack_staticMetaObject".}

proc undo*(self: gen_qundostack_types.QUndoCommand): void =
  fcQUndoCommand_undo(self.h)

proc redo*(self: gen_qundostack_types.QUndoCommand): void =
  fcQUndoCommand_redo(self.h)

proc text*(self: gen_qundostack_types.QUndoCommand): string =
  let v_ms = fcQUndoCommand_text(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc actionText*(self: gen_qundostack_types.QUndoCommand): string =
  let v_ms = fcQUndoCommand_actionText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qundostack_types.QUndoCommand, text: openArray[char]): void =
  fcQUndoCommand_setText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc isObsolete*(self: gen_qundostack_types.QUndoCommand): bool =
  fcQUndoCommand_isObsolete(self.h)

proc setObsolete*(self: gen_qundostack_types.QUndoCommand, obsolete: bool): void =
  fcQUndoCommand_setObsolete(self.h, obsolete)

proc id*(self: gen_qundostack_types.QUndoCommand): cint =
  fcQUndoCommand_id(self.h)

proc mergeWith*(self: gen_qundostack_types.QUndoCommand, other: gen_qundostack_types.QUndoCommand): bool =
  fcQUndoCommand_mergeWith(self.h, other.h)

proc childCount*(self: gen_qundostack_types.QUndoCommand): cint =
  fcQUndoCommand_childCount(self.h)

proc child*(self: gen_qundostack_types.QUndoCommand, index: cint): gen_qundostack_types.QUndoCommand =
  gen_qundostack_types.QUndoCommand(h: fcQUndoCommand_child(self.h, index), owned: false)

type QUndoCommandundoProc* = proc(self: QUndoCommand): void {.raises: [], gcsafe.}
type QUndoCommandredoProc* = proc(self: QUndoCommand): void {.raises: [], gcsafe.}
type QUndoCommandidProc* = proc(self: QUndoCommand): cint {.raises: [], gcsafe.}
type QUndoCommandmergeWithProc* = proc(self: QUndoCommand, other: gen_qundostack_types.QUndoCommand): bool {.raises: [], gcsafe.}

type QUndoCommandVTable* {.inheritable, pure.} = object
  vtbl: cQUndoCommandVTable
  undo*: QUndoCommandundoProc
  redo*: QUndoCommandredoProc
  id*: QUndoCommandidProc
  mergeWith*: QUndoCommandmergeWithProc

proc QUndoCommandundo*(self: gen_qundostack_types.QUndoCommand): void =
  fcQUndoCommand_virtualbase_undo(self.h)

proc QUndoCommandredo*(self: gen_qundostack_types.QUndoCommand): void =
  fcQUndoCommand_virtualbase_redo(self.h)

proc QUndoCommandid*(self: gen_qundostack_types.QUndoCommand): cint =
  fcQUndoCommand_virtualbase_id(self.h)

proc QUndoCommandmergeWith*(self: gen_qundostack_types.QUndoCommand, other: gen_qundostack_types.QUndoCommand): bool =
  fcQUndoCommand_virtualbase_mergeWith(self.h, other.h)


proc fcQUndoCommand_vtable_callback_undo(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoCommandVTable](fcQUndoCommand_vdata(self))
  let self = QUndoCommand(h: self)
  vtbl[].undo(self)

proc fcQUndoCommand_vtable_callback_redo(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoCommandVTable](fcQUndoCommand_vdata(self))
  let self = QUndoCommand(h: self)
  vtbl[].redo(self)

proc fcQUndoCommand_vtable_callback_id(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QUndoCommandVTable](fcQUndoCommand_vdata(self))
  let self = QUndoCommand(h: self)
  var virtualReturn = vtbl[].id(self)
  virtualReturn

proc fcQUndoCommand_vtable_callback_mergeWith(self: pointer, other: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUndoCommandVTable](fcQUndoCommand_vdata(self))
  let self = QUndoCommand(h: self)
  let slotval1 = gen_qundostack_types.QUndoCommand(h: other, owned: false)
  var virtualReturn = vtbl[].mergeWith(self, slotval1)
  virtualReturn

type VirtualQUndoCommand* {.inheritable.} = ref object of QUndoCommand
  vtbl*: cQUndoCommandVTable

method undo*(self: VirtualQUndoCommand): void {.base.} =
  QUndoCommandundo(self[])
method redo*(self: VirtualQUndoCommand): void {.base.} =
  QUndoCommandredo(self[])
method id*(self: VirtualQUndoCommand): cint {.base.} =
  QUndoCommandid(self[])
method mergeWith*(self: VirtualQUndoCommand, other: gen_qundostack_types.QUndoCommand): bool {.base.} =
  QUndoCommandmergeWith(self[], other)

proc fcQUndoCommand_method_callback_undo(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoCommand](fcQUndoCommand_vdata(self))
  inst.undo()

proc fcQUndoCommand_method_callback_redo(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoCommand](fcQUndoCommand_vdata(self))
  inst.redo()

proc fcQUndoCommand_method_callback_id(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQUndoCommand](fcQUndoCommand_vdata(self))
  var virtualReturn = inst.id()
  virtualReturn

proc fcQUndoCommand_method_callback_mergeWith(self: pointer, other: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUndoCommand](fcQUndoCommand_vdata(self))
  let slotval1 = gen_qundostack_types.QUndoCommand(h: other, owned: false)
  var virtualReturn = inst.mergeWith(slotval1)
  virtualReturn


proc create*(T: type gen_qundostack_types.QUndoCommand,
    vtbl: ref QUndoCommandVTable = nil): gen_qundostack_types.QUndoCommand =
  let vtbl = if vtbl == nil: new QUndoCommandVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUndoCommandVTable](fcQUndoCommand_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].undo):
    vtbl[].vtbl.undo = fcQUndoCommand_vtable_callback_undo
  if not isNil(vtbl[].redo):
    vtbl[].vtbl.redo = fcQUndoCommand_vtable_callback_redo
  if not isNil(vtbl[].id):
    vtbl[].vtbl.id = fcQUndoCommand_vtable_callback_id
  if not isNil(vtbl[].mergeWith):
    vtbl[].vtbl.mergeWith = fcQUndoCommand_vtable_callback_mergeWith
  gen_qundostack_types.QUndoCommand(h: fcQUndoCommand_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qundostack_types.QUndoCommand,
    text: openArray[char],
    vtbl: ref QUndoCommandVTable = nil): gen_qundostack_types.QUndoCommand =
  let vtbl = if vtbl == nil: new QUndoCommandVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUndoCommandVTable](fcQUndoCommand_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].undo):
    vtbl[].vtbl.undo = fcQUndoCommand_vtable_callback_undo
  if not isNil(vtbl[].redo):
    vtbl[].vtbl.redo = fcQUndoCommand_vtable_callback_redo
  if not isNil(vtbl[].id):
    vtbl[].vtbl.id = fcQUndoCommand_vtable_callback_id
  if not isNil(vtbl[].mergeWith):
    vtbl[].vtbl.mergeWith = fcQUndoCommand_vtable_callback_mergeWith
  gen_qundostack_types.QUndoCommand(h: fcQUndoCommand_new2(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qundostack_types.QUndoCommand,
    parent: gen_qundostack_types.QUndoCommand,
    vtbl: ref QUndoCommandVTable = nil): gen_qundostack_types.QUndoCommand =
  let vtbl = if vtbl == nil: new QUndoCommandVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUndoCommandVTable](fcQUndoCommand_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].undo):
    vtbl[].vtbl.undo = fcQUndoCommand_vtable_callback_undo
  if not isNil(vtbl[].redo):
    vtbl[].vtbl.redo = fcQUndoCommand_vtable_callback_redo
  if not isNil(vtbl[].id):
    vtbl[].vtbl.id = fcQUndoCommand_vtable_callback_id
  if not isNil(vtbl[].mergeWith):
    vtbl[].vtbl.mergeWith = fcQUndoCommand_vtable_callback_mergeWith
  gen_qundostack_types.QUndoCommand(h: fcQUndoCommand_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qundostack_types.QUndoCommand,
    text: openArray[char], parent: gen_qundostack_types.QUndoCommand,
    vtbl: ref QUndoCommandVTable = nil): gen_qundostack_types.QUndoCommand =
  let vtbl = if vtbl == nil: new QUndoCommandVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUndoCommandVTable](fcQUndoCommand_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].undo):
    vtbl[].vtbl.undo = fcQUndoCommand_vtable_callback_undo
  if not isNil(vtbl[].redo):
    vtbl[].vtbl.redo = fcQUndoCommand_vtable_callback_redo
  if not isNil(vtbl[].id):
    vtbl[].vtbl.id = fcQUndoCommand_vtable_callback_id
  if not isNil(vtbl[].mergeWith):
    vtbl[].vtbl.mergeWith = fcQUndoCommand_vtable_callback_mergeWith
  gen_qundostack_types.QUndoCommand(h: fcQUndoCommand_new4(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h), owned: true)

const cQUndoCommand_mvtbl = cQUndoCommandVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQUndoCommand()[])](self.fcQUndoCommand_vdata())
    inst[].h = nil
    inst[].owned = false,

  undo: fcQUndoCommand_method_callback_undo,
  redo: fcQUndoCommand_method_callback_redo,
  id: fcQUndoCommand_method_callback_id,
  mergeWith: fcQUndoCommand_method_callback_mergeWith,
)
proc create*(T: type gen_qundostack_types.QUndoCommand,
    inst: VirtualQUndoCommand) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUndoCommand_new(addr(cQUndoCommand_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qundostack_types.QUndoCommand,
    text: openArray[char],
    inst: VirtualQUndoCommand) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUndoCommand_new2(addr(cQUndoCommand_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  inst[].owned = true

proc create*(T: type gen_qundostack_types.QUndoCommand,
    parent: gen_qundostack_types.QUndoCommand,
    inst: VirtualQUndoCommand) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUndoCommand_new3(addr(cQUndoCommand_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qundostack_types.QUndoCommand,
    text: openArray[char], parent: gen_qundostack_types.QUndoCommand,
    inst: VirtualQUndoCommand) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUndoCommand_new4(addr(cQUndoCommand_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h)
  inst[].owned = true

proc metaObject*(self: gen_qundostack_types.QUndoStack): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUndoStack_metaObject(self.h), owned: false)

proc metacast*(self: gen_qundostack_types.QUndoStack, param1: cstring): pointer =
  fcQUndoStack_metacast(self.h, param1)

proc metacall*(self: gen_qundostack_types.QUndoStack, param1: cint, param2: cint, param3: pointer): cint =
  fcQUndoStack_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qundostack_types.QUndoStack, s: cstring): string =
  let v_ms = fcQUndoStack_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qundostack_types.QUndoStack, s: cstring): string =
  let v_ms = fcQUndoStack_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc clear*(self: gen_qundostack_types.QUndoStack): void =
  fcQUndoStack_clear(self.h)

proc push*(self: gen_qundostack_types.QUndoStack, cmd: gen_qundostack_types.QUndoCommand): void =
  fcQUndoStack_push(self.h, cmd.h)

proc canUndo*(self: gen_qundostack_types.QUndoStack): bool =
  fcQUndoStack_canUndo(self.h)

proc canRedo*(self: gen_qundostack_types.QUndoStack): bool =
  fcQUndoStack_canRedo(self.h)

proc undoText*(self: gen_qundostack_types.QUndoStack): string =
  let v_ms = fcQUndoStack_undoText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc redoText*(self: gen_qundostack_types.QUndoStack): string =
  let v_ms = fcQUndoStack_redoText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc count*(self: gen_qundostack_types.QUndoStack): cint =
  fcQUndoStack_count(self.h)

proc index*(self: gen_qundostack_types.QUndoStack): cint =
  fcQUndoStack_index(self.h)

proc text*(self: gen_qundostack_types.QUndoStack, idx: cint): string =
  let v_ms = fcQUndoStack_text(self.h, idx)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createUndoAction*(self: gen_qundostack_types.QUndoStack, parent: gen_qobject_types.QObject): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUndoStack_createUndoAction(self.h, parent.h), owned: false)

proc createRedoAction*(self: gen_qundostack_types.QUndoStack, parent: gen_qobject_types.QObject): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUndoStack_createRedoAction(self.h, parent.h), owned: false)

proc isActive*(self: gen_qundostack_types.QUndoStack): bool =
  fcQUndoStack_isActive(self.h)

proc isClean*(self: gen_qundostack_types.QUndoStack): bool =
  fcQUndoStack_isClean(self.h)

proc cleanIndex*(self: gen_qundostack_types.QUndoStack): cint =
  fcQUndoStack_cleanIndex(self.h)

proc beginMacro*(self: gen_qundostack_types.QUndoStack, text: openArray[char]): void =
  fcQUndoStack_beginMacro(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc endMacro*(self: gen_qundostack_types.QUndoStack): void =
  fcQUndoStack_endMacro(self.h)

proc setUndoLimit*(self: gen_qundostack_types.QUndoStack, limit: cint): void =
  fcQUndoStack_setUndoLimit(self.h, limit)

proc undoLimit*(self: gen_qundostack_types.QUndoStack): cint =
  fcQUndoStack_undoLimit(self.h)

proc command*(self: gen_qundostack_types.QUndoStack, index: cint): gen_qundostack_types.QUndoCommand =
  gen_qundostack_types.QUndoCommand(h: fcQUndoStack_command(self.h, index), owned: false)

proc setClean*(self: gen_qundostack_types.QUndoStack): void =
  fcQUndoStack_setClean(self.h)

proc resetClean*(self: gen_qundostack_types.QUndoStack): void =
  fcQUndoStack_resetClean(self.h)

proc setIndex*(self: gen_qundostack_types.QUndoStack, idx: cint): void =
  fcQUndoStack_setIndex(self.h, idx)

proc undo*(self: gen_qundostack_types.QUndoStack): void =
  fcQUndoStack_undo(self.h)

proc redo*(self: gen_qundostack_types.QUndoStack): void =
  fcQUndoStack_redo(self.h)

proc setActive*(self: gen_qundostack_types.QUndoStack): void =
  fcQUndoStack_setActive(self.h)

proc indexChanged*(self: gen_qundostack_types.QUndoStack, idx: cint): void =
  fcQUndoStack_indexChanged(self.h, idx)

type QUndoStackindexChangedSlot* = proc(idx: cint)
proc fcQUndoStack_slot_callback_indexChanged(slot: int, idx: cint) {.cdecl.} =
  let nimfunc = cast[ptr QUndoStackindexChangedSlot](cast[pointer](slot))
  let slotval1 = idx

  nimfunc[](slotval1)

proc fcQUndoStack_slot_callback_indexChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QUndoStackindexChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onIndexChanged*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackindexChangedSlot) =
  var tmp = new QUndoStackindexChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_connect_indexChanged(self.h, cast[int](addr tmp[]), fcQUndoStack_slot_callback_indexChanged, fcQUndoStack_slot_callback_indexChanged_release)

proc cleanChanged*(self: gen_qundostack_types.QUndoStack, clean: bool): void =
  fcQUndoStack_cleanChanged(self.h, clean)

type QUndoStackcleanChangedSlot* = proc(clean: bool)
proc fcQUndoStack_slot_callback_cleanChanged(slot: int, clean: bool) {.cdecl.} =
  let nimfunc = cast[ptr QUndoStackcleanChangedSlot](cast[pointer](slot))
  let slotval1 = clean

  nimfunc[](slotval1)

proc fcQUndoStack_slot_callback_cleanChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QUndoStackcleanChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCleanChanged*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackcleanChangedSlot) =
  var tmp = new QUndoStackcleanChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_connect_cleanChanged(self.h, cast[int](addr tmp[]), fcQUndoStack_slot_callback_cleanChanged, fcQUndoStack_slot_callback_cleanChanged_release)

proc canUndoChanged*(self: gen_qundostack_types.QUndoStack, canUndo: bool): void =
  fcQUndoStack_canUndoChanged(self.h, canUndo)

type QUndoStackcanUndoChangedSlot* = proc(canUndo: bool)
proc fcQUndoStack_slot_callback_canUndoChanged(slot: int, canUndo: bool) {.cdecl.} =
  let nimfunc = cast[ptr QUndoStackcanUndoChangedSlot](cast[pointer](slot))
  let slotval1 = canUndo

  nimfunc[](slotval1)

proc fcQUndoStack_slot_callback_canUndoChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QUndoStackcanUndoChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCanUndoChanged*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackcanUndoChangedSlot) =
  var tmp = new QUndoStackcanUndoChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_connect_canUndoChanged(self.h, cast[int](addr tmp[]), fcQUndoStack_slot_callback_canUndoChanged, fcQUndoStack_slot_callback_canUndoChanged_release)

proc canRedoChanged*(self: gen_qundostack_types.QUndoStack, canRedo: bool): void =
  fcQUndoStack_canRedoChanged(self.h, canRedo)

type QUndoStackcanRedoChangedSlot* = proc(canRedo: bool)
proc fcQUndoStack_slot_callback_canRedoChanged(slot: int, canRedo: bool) {.cdecl.} =
  let nimfunc = cast[ptr QUndoStackcanRedoChangedSlot](cast[pointer](slot))
  let slotval1 = canRedo

  nimfunc[](slotval1)

proc fcQUndoStack_slot_callback_canRedoChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QUndoStackcanRedoChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCanRedoChanged*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackcanRedoChangedSlot) =
  var tmp = new QUndoStackcanRedoChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_connect_canRedoChanged(self.h, cast[int](addr tmp[]), fcQUndoStack_slot_callback_canRedoChanged, fcQUndoStack_slot_callback_canRedoChanged_release)

proc undoTextChanged*(self: gen_qundostack_types.QUndoStack, undoText: openArray[char]): void =
  fcQUndoStack_undoTextChanged(self.h, struct_miqt_string(data: if len(undoText) > 0: addr undoText[0] else: nil, len: csize_t(len(undoText))))

type QUndoStackundoTextChangedSlot* = proc(undoText: openArray[char])
proc fcQUndoStack_slot_callback_undoTextChanged(slot: int, undoText: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QUndoStackundoTextChangedSlot](cast[pointer](slot))
  let vundoText_ms = undoText
  let vundoTextx_ret = string.fromBytes(vundoText_ms)
  c_free(vundoText_ms.data)
  let slotval1 = vundoTextx_ret

  nimfunc[](slotval1)

proc fcQUndoStack_slot_callback_undoTextChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QUndoStackundoTextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onUndoTextChanged*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackundoTextChangedSlot) =
  var tmp = new QUndoStackundoTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_connect_undoTextChanged(self.h, cast[int](addr tmp[]), fcQUndoStack_slot_callback_undoTextChanged, fcQUndoStack_slot_callback_undoTextChanged_release)

proc redoTextChanged*(self: gen_qundostack_types.QUndoStack, redoText: openArray[char]): void =
  fcQUndoStack_redoTextChanged(self.h, struct_miqt_string(data: if len(redoText) > 0: addr redoText[0] else: nil, len: csize_t(len(redoText))))

type QUndoStackredoTextChangedSlot* = proc(redoText: openArray[char])
proc fcQUndoStack_slot_callback_redoTextChanged(slot: int, redoText: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QUndoStackredoTextChangedSlot](cast[pointer](slot))
  let vredoText_ms = redoText
  let vredoTextx_ret = string.fromBytes(vredoText_ms)
  c_free(vredoText_ms.data)
  let slotval1 = vredoTextx_ret

  nimfunc[](slotval1)

proc fcQUndoStack_slot_callback_redoTextChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QUndoStackredoTextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRedoTextChanged*(self: gen_qundostack_types.QUndoStack, slot: QUndoStackredoTextChangedSlot) =
  var tmp = new QUndoStackredoTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_connect_redoTextChanged(self.h, cast[int](addr tmp[]), fcQUndoStack_slot_callback_redoTextChanged, fcQUndoStack_slot_callback_redoTextChanged_release)

proc tr*(_: type gen_qundostack_types.QUndoStack, s: cstring, c: cstring): string =
  let v_ms = fcQUndoStack_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qundostack_types.QUndoStack, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQUndoStack_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qundostack_types.QUndoStack, s: cstring, c: cstring): string =
  let v_ms = fcQUndoStack_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qundostack_types.QUndoStack, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQUndoStack_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createUndoAction*(self: gen_qundostack_types.QUndoStack, parent: gen_qobject_types.QObject, prefix: openArray[char]): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUndoStack_createUndoAction2(self.h, parent.h, struct_miqt_string(data: if len(prefix) > 0: addr prefix[0] else: nil, len: csize_t(len(prefix)))), owned: false)

proc createRedoAction*(self: gen_qundostack_types.QUndoStack, parent: gen_qobject_types.QObject, prefix: openArray[char]): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUndoStack_createRedoAction2(self.h, parent.h, struct_miqt_string(data: if len(prefix) > 0: addr prefix[0] else: nil, len: csize_t(len(prefix)))), owned: false)

proc setActive*(self: gen_qundostack_types.QUndoStack, active: bool): void =
  fcQUndoStack_setActive1(self.h, active)

type QUndoStackmetaObjectProc* = proc(self: QUndoStack): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QUndoStackmetacastProc* = proc(self: QUndoStack, param1: cstring): pointer {.raises: [], gcsafe.}
type QUndoStackmetacallProc* = proc(self: QUndoStack, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QUndoStackeventProc* = proc(self: QUndoStack, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QUndoStackeventFilterProc* = proc(self: QUndoStack, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QUndoStacktimerEventProc* = proc(self: QUndoStack, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QUndoStackchildEventProc* = proc(self: QUndoStack, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QUndoStackcustomEventProc* = proc(self: QUndoStack, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QUndoStackconnectNotifyProc* = proc(self: QUndoStack, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QUndoStackdisconnectNotifyProc* = proc(self: QUndoStack, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QUndoStackVTable* {.inheritable, pure.} = object
  vtbl: cQUndoStackVTable
  metaObject*: QUndoStackmetaObjectProc
  metacast*: QUndoStackmetacastProc
  metacall*: QUndoStackmetacallProc
  event*: QUndoStackeventProc
  eventFilter*: QUndoStackeventFilterProc
  timerEvent*: QUndoStacktimerEventProc
  childEvent*: QUndoStackchildEventProc
  customEvent*: QUndoStackcustomEventProc
  connectNotify*: QUndoStackconnectNotifyProc
  disconnectNotify*: QUndoStackdisconnectNotifyProc

proc QUndoStackmetaObject*(self: gen_qundostack_types.QUndoStack): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUndoStack_virtualbase_metaObject(self.h), owned: false)

proc QUndoStackmetacast*(self: gen_qundostack_types.QUndoStack, param1: cstring): pointer =
  fcQUndoStack_virtualbase_metacast(self.h, param1)

proc QUndoStackmetacall*(self: gen_qundostack_types.QUndoStack, param1: cint, param2: cint, param3: pointer): cint =
  fcQUndoStack_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QUndoStackevent*(self: gen_qundostack_types.QUndoStack, event: gen_qcoreevent_types.QEvent): bool =
  fcQUndoStack_virtualbase_event(self.h, event.h)

proc QUndoStackeventFilter*(self: gen_qundostack_types.QUndoStack, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQUndoStack_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QUndoStacktimerEvent*(self: gen_qundostack_types.QUndoStack, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQUndoStack_virtualbase_timerEvent(self.h, event.h)

proc QUndoStackchildEvent*(self: gen_qundostack_types.QUndoStack, event: gen_qcoreevent_types.QChildEvent): void =
  fcQUndoStack_virtualbase_childEvent(self.h, event.h)

proc QUndoStackcustomEvent*(self: gen_qundostack_types.QUndoStack, event: gen_qcoreevent_types.QEvent): void =
  fcQUndoStack_virtualbase_customEvent(self.h, event.h)

proc QUndoStackconnectNotify*(self: gen_qundostack_types.QUndoStack, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQUndoStack_virtualbase_connectNotify(self.h, signal.h)

proc QUndoStackdisconnectNotify*(self: gen_qundostack_types.QUndoStack, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQUndoStack_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQUndoStack_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoStackVTable](fcQUndoStack_vdata(self))
  let self = QUndoStack(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQUndoStack_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoStackVTable](fcQUndoStack_vdata(self))
  let self = QUndoStack(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQUndoStack_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QUndoStackVTable](fcQUndoStack_vdata(self))
  let self = QUndoStack(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQUndoStack_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUndoStackVTable](fcQUndoStack_vdata(self))
  let self = QUndoStack(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQUndoStack_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUndoStackVTable](fcQUndoStack_vdata(self))
  let self = QUndoStack(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQUndoStack_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoStackVTable](fcQUndoStack_vdata(self))
  let self = QUndoStack(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQUndoStack_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoStackVTable](fcQUndoStack_vdata(self))
  let self = QUndoStack(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQUndoStack_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoStackVTable](fcQUndoStack_vdata(self))
  let self = QUndoStack(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQUndoStack_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoStackVTable](fcQUndoStack_vdata(self))
  let self = QUndoStack(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQUndoStack_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoStackVTable](fcQUndoStack_vdata(self))
  let self = QUndoStack(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQUndoStack* {.inheritable.} = ref object of QUndoStack
  vtbl*: cQUndoStackVTable

method metaObject*(self: VirtualQUndoStack): gen_qobjectdefs_types.QMetaObject {.base.} =
  QUndoStackmetaObject(self[])
method metacast*(self: VirtualQUndoStack, param1: cstring): pointer {.base.} =
  QUndoStackmetacast(self[], param1)
method metacall*(self: VirtualQUndoStack, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QUndoStackmetacall(self[], param1, param2, param3)
method event*(self: VirtualQUndoStack, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QUndoStackevent(self[], event)
method eventFilter*(self: VirtualQUndoStack, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QUndoStackeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQUndoStack, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QUndoStacktimerEvent(self[], event)
method childEvent*(self: VirtualQUndoStack, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QUndoStackchildEvent(self[], event)
method customEvent*(self: VirtualQUndoStack, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QUndoStackcustomEvent(self[], event)
method connectNotify*(self: VirtualQUndoStack, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QUndoStackconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQUndoStack, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QUndoStackdisconnectNotify(self[], signal)

proc fcQUndoStack_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoStack](fcQUndoStack_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQUndoStack_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoStack](fcQUndoStack_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQUndoStack_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQUndoStack](fcQUndoStack_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQUndoStack_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUndoStack](fcQUndoStack_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQUndoStack_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUndoStack](fcQUndoStack_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQUndoStack_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoStack](fcQUndoStack_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQUndoStack_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoStack](fcQUndoStack_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQUndoStack_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoStack](fcQUndoStack_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQUndoStack_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoStack](fcQUndoStack_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQUndoStack_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoStack](fcQUndoStack_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qundostack_types.QUndoStack): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQUndoStack_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qundostack_types.QUndoStack): cint =
  fcQUndoStack_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qundostack_types.QUndoStack, signal: cstring): cint =
  fcQUndoStack_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qundostack_types.QUndoStack, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQUndoStack_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qundostack_types.QUndoStack,
    vtbl: ref QUndoStackVTable = nil): gen_qundostack_types.QUndoStack =
  let vtbl = if vtbl == nil: new QUndoStackVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUndoStackVTable](fcQUndoStack_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQUndoStack_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQUndoStack_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQUndoStack_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQUndoStack_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQUndoStack_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQUndoStack_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQUndoStack_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQUndoStack_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQUndoStack_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQUndoStack_vtable_callback_disconnectNotify
  gen_qundostack_types.QUndoStack(h: fcQUndoStack_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qundostack_types.QUndoStack,
    parent: gen_qobject_types.QObject,
    vtbl: ref QUndoStackVTable = nil): gen_qundostack_types.QUndoStack =
  let vtbl = if vtbl == nil: new QUndoStackVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUndoStackVTable](fcQUndoStack_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQUndoStack_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQUndoStack_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQUndoStack_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQUndoStack_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQUndoStack_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQUndoStack_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQUndoStack_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQUndoStack_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQUndoStack_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQUndoStack_vtable_callback_disconnectNotify
  gen_qundostack_types.QUndoStack(h: fcQUndoStack_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQUndoStack_mvtbl = cQUndoStackVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQUndoStack()[])](self.fcQUndoStack_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQUndoStack_method_callback_metaObject,
  metacast: fcQUndoStack_method_callback_metacast,
  metacall: fcQUndoStack_method_callback_metacall,
  event: fcQUndoStack_method_callback_event,
  eventFilter: fcQUndoStack_method_callback_eventFilter,
  timerEvent: fcQUndoStack_method_callback_timerEvent,
  childEvent: fcQUndoStack_method_callback_childEvent,
  customEvent: fcQUndoStack_method_callback_customEvent,
  connectNotify: fcQUndoStack_method_callback_connectNotify,
  disconnectNotify: fcQUndoStack_method_callback_disconnectNotify,
)
proc create*(T: type gen_qundostack_types.QUndoStack,
    inst: VirtualQUndoStack) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUndoStack_new(addr(cQUndoStack_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qundostack_types.QUndoStack,
    parent: gen_qobject_types.QObject,
    inst: VirtualQUndoStack) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUndoStack_new2(addr(cQUndoStack_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qundostack_types.QUndoStack): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUndoStack_staticMetaObject())
