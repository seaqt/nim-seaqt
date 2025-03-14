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


{.compile("gen_qundogroup.cpp", QtGuiCFlags).}


import ./gen_qundogroup_types
export gen_qundogroup_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaction_types,
  ./gen_qundostack_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaction_types,
  gen_qundostack_types

type cQUndoGroup*{.exportc: "QUndoGroup", incompleteStruct.} = object

proc fcQUndoGroup_metaObject(self: pointer): pointer {.importc: "QUndoGroup_metaObject".}
proc fcQUndoGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QUndoGroup_metacast".}
proc fcQUndoGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUndoGroup_metacall".}
proc fcQUndoGroup_tr(s: cstring): struct_miqt_string {.importc: "QUndoGroup_tr".}
proc fcQUndoGroup_addStack(self: pointer, stack: pointer): void {.importc: "QUndoGroup_addStack".}
proc fcQUndoGroup_removeStack(self: pointer, stack: pointer): void {.importc: "QUndoGroup_removeStack".}
proc fcQUndoGroup_stacks(self: pointer): struct_miqt_array {.importc: "QUndoGroup_stacks".}
proc fcQUndoGroup_activeStack(self: pointer): pointer {.importc: "QUndoGroup_activeStack".}
proc fcQUndoGroup_createUndoAction(self: pointer, parent: pointer): pointer {.importc: "QUndoGroup_createUndoAction".}
proc fcQUndoGroup_createRedoAction(self: pointer, parent: pointer): pointer {.importc: "QUndoGroup_createRedoAction".}
proc fcQUndoGroup_canUndo(self: pointer): bool {.importc: "QUndoGroup_canUndo".}
proc fcQUndoGroup_canRedo(self: pointer): bool {.importc: "QUndoGroup_canRedo".}
proc fcQUndoGroup_undoText(self: pointer): struct_miqt_string {.importc: "QUndoGroup_undoText".}
proc fcQUndoGroup_redoText(self: pointer): struct_miqt_string {.importc: "QUndoGroup_redoText".}
proc fcQUndoGroup_isClean(self: pointer): bool {.importc: "QUndoGroup_isClean".}
proc fcQUndoGroup_undo(self: pointer): void {.importc: "QUndoGroup_undo".}
proc fcQUndoGroup_redo(self: pointer): void {.importc: "QUndoGroup_redo".}
proc fcQUndoGroup_setActiveStack(self: pointer, stack: pointer): void {.importc: "QUndoGroup_setActiveStack".}
proc fcQUndoGroup_activeStackChanged(self: pointer, stack: pointer): void {.importc: "QUndoGroup_activeStackChanged".}
proc fcQUndoGroup_connect_activeStackChanged(self: pointer, slot: int, callback: proc (slot: int, stack: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QUndoGroup_connect_activeStackChanged".}
proc fcQUndoGroup_indexChanged(self: pointer, idx: cint): void {.importc: "QUndoGroup_indexChanged".}
proc fcQUndoGroup_connect_indexChanged(self: pointer, slot: int, callback: proc (slot: int, idx: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QUndoGroup_connect_indexChanged".}
proc fcQUndoGroup_cleanChanged(self: pointer, clean: bool): void {.importc: "QUndoGroup_cleanChanged".}
proc fcQUndoGroup_connect_cleanChanged(self: pointer, slot: int, callback: proc (slot: int, clean: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QUndoGroup_connect_cleanChanged".}
proc fcQUndoGroup_canUndoChanged(self: pointer, canUndo: bool): void {.importc: "QUndoGroup_canUndoChanged".}
proc fcQUndoGroup_connect_canUndoChanged(self: pointer, slot: int, callback: proc (slot: int, canUndo: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QUndoGroup_connect_canUndoChanged".}
proc fcQUndoGroup_canRedoChanged(self: pointer, canRedo: bool): void {.importc: "QUndoGroup_canRedoChanged".}
proc fcQUndoGroup_connect_canRedoChanged(self: pointer, slot: int, callback: proc (slot: int, canRedo: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QUndoGroup_connect_canRedoChanged".}
proc fcQUndoGroup_undoTextChanged(self: pointer, undoText: struct_miqt_string): void {.importc: "QUndoGroup_undoTextChanged".}
proc fcQUndoGroup_connect_undoTextChanged(self: pointer, slot: int, callback: proc (slot: int, undoText: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QUndoGroup_connect_undoTextChanged".}
proc fcQUndoGroup_redoTextChanged(self: pointer, redoText: struct_miqt_string): void {.importc: "QUndoGroup_redoTextChanged".}
proc fcQUndoGroup_connect_redoTextChanged(self: pointer, slot: int, callback: proc (slot: int, redoText: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QUndoGroup_connect_redoTextChanged".}
proc fcQUndoGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QUndoGroup_tr2".}
proc fcQUndoGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUndoGroup_tr3".}
proc fcQUndoGroup_createUndoAction2(self: pointer, parent: pointer, prefix: struct_miqt_string): pointer {.importc: "QUndoGroup_createUndoAction2".}
proc fcQUndoGroup_createRedoAction2(self: pointer, parent: pointer, prefix: struct_miqt_string): pointer {.importc: "QUndoGroup_createRedoAction2".}
proc fcQUndoGroup_vtbl(self: pointer): pointer {.importc: "QUndoGroup_vtbl".}
proc fcQUndoGroup_vdata(self: pointer): pointer {.importc: "QUndoGroup_vdata".}
type cQUndoGroupVTable {.pure.} = object
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
proc fcQUndoGroup_virtualbase_metaObject(self: pointer): pointer {.importc: "QUndoGroup_virtualbase_metaObject".}
proc fcQUndoGroup_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QUndoGroup_virtualbase_metacast".}
proc fcQUndoGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUndoGroup_virtualbase_metacall".}
proc fcQUndoGroup_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QUndoGroup_virtualbase_event".}
proc fcQUndoGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QUndoGroup_virtualbase_eventFilter".}
proc fcQUndoGroup_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QUndoGroup_virtualbase_timerEvent".}
proc fcQUndoGroup_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QUndoGroup_virtualbase_childEvent".}
proc fcQUndoGroup_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QUndoGroup_virtualbase_customEvent".}
proc fcQUndoGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QUndoGroup_virtualbase_connectNotify".}
proc fcQUndoGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QUndoGroup_virtualbase_disconnectNotify".}
proc fcQUndoGroup_protectedbase_sender(self: pointer): pointer {.importc: "QUndoGroup_protectedbase_sender".}
proc fcQUndoGroup_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QUndoGroup_protectedbase_senderSignalIndex".}
proc fcQUndoGroup_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QUndoGroup_protectedbase_receivers".}
proc fcQUndoGroup_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QUndoGroup_protectedbase_isSignalConnected".}
proc fcQUndoGroup_new(vtbl, vdata: pointer): ptr cQUndoGroup {.importc: "QUndoGroup_new".}
proc fcQUndoGroup_new2(vtbl, vdata: pointer, parent: pointer): ptr cQUndoGroup {.importc: "QUndoGroup_new2".}
proc fcQUndoGroup_staticMetaObject(): pointer {.importc: "QUndoGroup_staticMetaObject".}

proc metaObject*(self: gen_qundogroup_types.QUndoGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUndoGroup_metaObject(self.h), owned: false)

proc metacast*(self: gen_qundogroup_types.QUndoGroup, param1: cstring): pointer =
  fcQUndoGroup_metacast(self.h, param1)

proc metacall*(self: gen_qundogroup_types.QUndoGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQUndoGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qundogroup_types.QUndoGroup, s: cstring): string =
  let v_ms = fcQUndoGroup_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addStack*(self: gen_qundogroup_types.QUndoGroup, stack: gen_qundostack_types.QUndoStack): void =
  fcQUndoGroup_addStack(self.h, stack.h)

proc removeStack*(self: gen_qundogroup_types.QUndoGroup, stack: gen_qundostack_types.QUndoStack): void =
  fcQUndoGroup_removeStack(self.h, stack.h)

proc stacks*(self: gen_qundogroup_types.QUndoGroup): seq[gen_qundostack_types.QUndoStack] =
  var v_ma = fcQUndoGroup_stacks(self.h)
  var vx_ret = newSeq[gen_qundostack_types.QUndoStack](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qundostack_types.QUndoStack(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc activeStack*(self: gen_qundogroup_types.QUndoGroup): gen_qundostack_types.QUndoStack =
  gen_qundostack_types.QUndoStack(h: fcQUndoGroup_activeStack(self.h), owned: false)

proc createUndoAction*(self: gen_qundogroup_types.QUndoGroup, parent: gen_qobject_types.QObject): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUndoGroup_createUndoAction(self.h, parent.h), owned: false)

proc createRedoAction*(self: gen_qundogroup_types.QUndoGroup, parent: gen_qobject_types.QObject): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUndoGroup_createRedoAction(self.h, parent.h), owned: false)

proc canUndo*(self: gen_qundogroup_types.QUndoGroup): bool =
  fcQUndoGroup_canUndo(self.h)

proc canRedo*(self: gen_qundogroup_types.QUndoGroup): bool =
  fcQUndoGroup_canRedo(self.h)

proc undoText*(self: gen_qundogroup_types.QUndoGroup): string =
  let v_ms = fcQUndoGroup_undoText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc redoText*(self: gen_qundogroup_types.QUndoGroup): string =
  let v_ms = fcQUndoGroup_redoText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isClean*(self: gen_qundogroup_types.QUndoGroup): bool =
  fcQUndoGroup_isClean(self.h)

proc undo*(self: gen_qundogroup_types.QUndoGroup): void =
  fcQUndoGroup_undo(self.h)

proc redo*(self: gen_qundogroup_types.QUndoGroup): void =
  fcQUndoGroup_redo(self.h)

proc setActiveStack*(self: gen_qundogroup_types.QUndoGroup, stack: gen_qundostack_types.QUndoStack): void =
  fcQUndoGroup_setActiveStack(self.h, stack.h)

proc activeStackChanged*(self: gen_qundogroup_types.QUndoGroup, stack: gen_qundostack_types.QUndoStack): void =
  fcQUndoGroup_activeStackChanged(self.h, stack.h)

type QUndoGroupactiveStackChangedSlot* = proc(stack: gen_qundostack_types.QUndoStack)
proc cQUndoGroup_slot_callback_activeStackChanged(slot: int, stack: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QUndoGroupactiveStackChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qundostack_types.QUndoStack(h: stack, owned: false)

  nimfunc[](slotval1)

proc cQUndoGroup_slot_callback_activeStackChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QUndoGroupactiveStackChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactiveStackChanged*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupactiveStackChangedSlot) =
  var tmp = new QUndoGroupactiveStackChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_connect_activeStackChanged(self.h, cast[int](addr tmp[]), cQUndoGroup_slot_callback_activeStackChanged, cQUndoGroup_slot_callback_activeStackChanged_release)

proc indexChanged*(self: gen_qundogroup_types.QUndoGroup, idx: cint): void =
  fcQUndoGroup_indexChanged(self.h, idx)

type QUndoGroupindexChangedSlot* = proc(idx: cint)
proc cQUndoGroup_slot_callback_indexChanged(slot: int, idx: cint) {.cdecl.} =
  let nimfunc = cast[ptr QUndoGroupindexChangedSlot](cast[pointer](slot))
  let slotval1 = idx

  nimfunc[](slotval1)

proc cQUndoGroup_slot_callback_indexChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QUndoGroupindexChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onindexChanged*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupindexChangedSlot) =
  var tmp = new QUndoGroupindexChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_connect_indexChanged(self.h, cast[int](addr tmp[]), cQUndoGroup_slot_callback_indexChanged, cQUndoGroup_slot_callback_indexChanged_release)

proc cleanChanged*(self: gen_qundogroup_types.QUndoGroup, clean: bool): void =
  fcQUndoGroup_cleanChanged(self.h, clean)

type QUndoGroupcleanChangedSlot* = proc(clean: bool)
proc cQUndoGroup_slot_callback_cleanChanged(slot: int, clean: bool) {.cdecl.} =
  let nimfunc = cast[ptr QUndoGroupcleanChangedSlot](cast[pointer](slot))
  let slotval1 = clean

  nimfunc[](slotval1)

proc cQUndoGroup_slot_callback_cleanChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QUndoGroupcleanChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncleanChanged*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupcleanChangedSlot) =
  var tmp = new QUndoGroupcleanChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_connect_cleanChanged(self.h, cast[int](addr tmp[]), cQUndoGroup_slot_callback_cleanChanged, cQUndoGroup_slot_callback_cleanChanged_release)

proc canUndoChanged*(self: gen_qundogroup_types.QUndoGroup, canUndo: bool): void =
  fcQUndoGroup_canUndoChanged(self.h, canUndo)

type QUndoGroupcanUndoChangedSlot* = proc(canUndo: bool)
proc cQUndoGroup_slot_callback_canUndoChanged(slot: int, canUndo: bool) {.cdecl.} =
  let nimfunc = cast[ptr QUndoGroupcanUndoChangedSlot](cast[pointer](slot))
  let slotval1 = canUndo

  nimfunc[](slotval1)

proc cQUndoGroup_slot_callback_canUndoChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QUndoGroupcanUndoChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncanUndoChanged*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupcanUndoChangedSlot) =
  var tmp = new QUndoGroupcanUndoChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_connect_canUndoChanged(self.h, cast[int](addr tmp[]), cQUndoGroup_slot_callback_canUndoChanged, cQUndoGroup_slot_callback_canUndoChanged_release)

proc canRedoChanged*(self: gen_qundogroup_types.QUndoGroup, canRedo: bool): void =
  fcQUndoGroup_canRedoChanged(self.h, canRedo)

type QUndoGroupcanRedoChangedSlot* = proc(canRedo: bool)
proc cQUndoGroup_slot_callback_canRedoChanged(slot: int, canRedo: bool) {.cdecl.} =
  let nimfunc = cast[ptr QUndoGroupcanRedoChangedSlot](cast[pointer](slot))
  let slotval1 = canRedo

  nimfunc[](slotval1)

proc cQUndoGroup_slot_callback_canRedoChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QUndoGroupcanRedoChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncanRedoChanged*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupcanRedoChangedSlot) =
  var tmp = new QUndoGroupcanRedoChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_connect_canRedoChanged(self.h, cast[int](addr tmp[]), cQUndoGroup_slot_callback_canRedoChanged, cQUndoGroup_slot_callback_canRedoChanged_release)

proc undoTextChanged*(self: gen_qundogroup_types.QUndoGroup, undoText: openArray[char]): void =
  fcQUndoGroup_undoTextChanged(self.h, struct_miqt_string(data: if len(undoText) > 0: addr undoText[0] else: nil, len: csize_t(len(undoText))))

type QUndoGroupundoTextChangedSlot* = proc(undoText: openArray[char])
proc cQUndoGroup_slot_callback_undoTextChanged(slot: int, undoText: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QUndoGroupundoTextChangedSlot](cast[pointer](slot))
  let vundoText_ms = undoText
  let vundoTextx_ret = string.fromBytes(vundoText_ms)
  c_free(vundoText_ms.data)
  let slotval1 = vundoTextx_ret

  nimfunc[](slotval1)

proc cQUndoGroup_slot_callback_undoTextChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QUndoGroupundoTextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onundoTextChanged*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupundoTextChangedSlot) =
  var tmp = new QUndoGroupundoTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_connect_undoTextChanged(self.h, cast[int](addr tmp[]), cQUndoGroup_slot_callback_undoTextChanged, cQUndoGroup_slot_callback_undoTextChanged_release)

proc redoTextChanged*(self: gen_qundogroup_types.QUndoGroup, redoText: openArray[char]): void =
  fcQUndoGroup_redoTextChanged(self.h, struct_miqt_string(data: if len(redoText) > 0: addr redoText[0] else: nil, len: csize_t(len(redoText))))

type QUndoGroupredoTextChangedSlot* = proc(redoText: openArray[char])
proc cQUndoGroup_slot_callback_redoTextChanged(slot: int, redoText: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QUndoGroupredoTextChangedSlot](cast[pointer](slot))
  let vredoText_ms = redoText
  let vredoTextx_ret = string.fromBytes(vredoText_ms)
  c_free(vredoText_ms.data)
  let slotval1 = vredoTextx_ret

  nimfunc[](slotval1)

proc cQUndoGroup_slot_callback_redoTextChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QUndoGroupredoTextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onredoTextChanged*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupredoTextChangedSlot) =
  var tmp = new QUndoGroupredoTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_connect_redoTextChanged(self.h, cast[int](addr tmp[]), cQUndoGroup_slot_callback_redoTextChanged, cQUndoGroup_slot_callback_redoTextChanged_release)

proc tr*(_: type gen_qundogroup_types.QUndoGroup, s: cstring, c: cstring): string =
  let v_ms = fcQUndoGroup_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qundogroup_types.QUndoGroup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQUndoGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createUndoAction*(self: gen_qundogroup_types.QUndoGroup, parent: gen_qobject_types.QObject, prefix: openArray[char]): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUndoGroup_createUndoAction2(self.h, parent.h, struct_miqt_string(data: if len(prefix) > 0: addr prefix[0] else: nil, len: csize_t(len(prefix)))), owned: false)

proc createRedoAction*(self: gen_qundogroup_types.QUndoGroup, parent: gen_qobject_types.QObject, prefix: openArray[char]): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUndoGroup_createRedoAction2(self.h, parent.h, struct_miqt_string(data: if len(prefix) > 0: addr prefix[0] else: nil, len: csize_t(len(prefix)))), owned: false)

type QUndoGroupmetaObjectProc* = proc(self: QUndoGroup): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QUndoGroupmetacastProc* = proc(self: QUndoGroup, param1: cstring): pointer {.raises: [], gcsafe.}
type QUndoGroupmetacallProc* = proc(self: QUndoGroup, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QUndoGroupeventProc* = proc(self: QUndoGroup, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QUndoGroupeventFilterProc* = proc(self: QUndoGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QUndoGrouptimerEventProc* = proc(self: QUndoGroup, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QUndoGroupchildEventProc* = proc(self: QUndoGroup, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QUndoGroupcustomEventProc* = proc(self: QUndoGroup, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QUndoGroupconnectNotifyProc* = proc(self: QUndoGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QUndoGroupdisconnectNotifyProc* = proc(self: QUndoGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QUndoGroupVTable* {.inheritable, pure.} = object
  vtbl: cQUndoGroupVTable
  metaObject*: QUndoGroupmetaObjectProc
  metacast*: QUndoGroupmetacastProc
  metacall*: QUndoGroupmetacallProc
  event*: QUndoGroupeventProc
  eventFilter*: QUndoGroupeventFilterProc
  timerEvent*: QUndoGrouptimerEventProc
  childEvent*: QUndoGroupchildEventProc
  customEvent*: QUndoGroupcustomEventProc
  connectNotify*: QUndoGroupconnectNotifyProc
  disconnectNotify*: QUndoGroupdisconnectNotifyProc
proc QUndoGroupmetaObject*(self: gen_qundogroup_types.QUndoGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUndoGroup_virtualbase_metaObject(self.h), owned: false)

proc cQUndoGroup_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoGroupVTable](fcQUndoGroup_vdata(self))
  let self = QUndoGroup(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QUndoGroupmetacast*(self: gen_qundogroup_types.QUndoGroup, param1: cstring): pointer =
  fcQUndoGroup_virtualbase_metacast(self.h, param1)

proc cQUndoGroup_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoGroupVTable](fcQUndoGroup_vdata(self))
  let self = QUndoGroup(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QUndoGroupmetacall*(self: gen_qundogroup_types.QUndoGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQUndoGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQUndoGroup_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QUndoGroupVTable](fcQUndoGroup_vdata(self))
  let self = QUndoGroup(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QUndoGroupevent*(self: gen_qundogroup_types.QUndoGroup, event: gen_qcoreevent_types.QEvent): bool =
  fcQUndoGroup_virtualbase_event(self.h, event.h)

proc cQUndoGroup_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUndoGroupVTable](fcQUndoGroup_vdata(self))
  let self = QUndoGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QUndoGroupeventFilter*(self: gen_qundogroup_types.QUndoGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQUndoGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQUndoGroup_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUndoGroupVTable](fcQUndoGroup_vdata(self))
  let self = QUndoGroup(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QUndoGrouptimerEvent*(self: gen_qundogroup_types.QUndoGroup, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQUndoGroup_virtualbase_timerEvent(self.h, event.h)

proc cQUndoGroup_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoGroupVTable](fcQUndoGroup_vdata(self))
  let self = QUndoGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QUndoGroupchildEvent*(self: gen_qundogroup_types.QUndoGroup, event: gen_qcoreevent_types.QChildEvent): void =
  fcQUndoGroup_virtualbase_childEvent(self.h, event.h)

proc cQUndoGroup_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoGroupVTable](fcQUndoGroup_vdata(self))
  let self = QUndoGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QUndoGroupcustomEvent*(self: gen_qundogroup_types.QUndoGroup, event: gen_qcoreevent_types.QEvent): void =
  fcQUndoGroup_virtualbase_customEvent(self.h, event.h)

proc cQUndoGroup_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoGroupVTable](fcQUndoGroup_vdata(self))
  let self = QUndoGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QUndoGroupconnectNotify*(self: gen_qundogroup_types.QUndoGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQUndoGroup_virtualbase_connectNotify(self.h, signal.h)

proc cQUndoGroup_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoGroupVTable](fcQUndoGroup_vdata(self))
  let self = QUndoGroup(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QUndoGroupdisconnectNotify*(self: gen_qundogroup_types.QUndoGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQUndoGroup_virtualbase_disconnectNotify(self.h, signal.h)

proc cQUndoGroup_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoGroupVTable](fcQUndoGroup_vdata(self))
  let self = QUndoGroup(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQUndoGroup* {.inheritable.} = ref object of QUndoGroup
  vtbl*: cQUndoGroupVTable
method metaObject*(self: VirtualQUndoGroup): gen_qobjectdefs_types.QMetaObject {.base.} =
  QUndoGroupmetaObject(self[])
proc cQUndoGroup_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoGroup](fcQUndoGroup_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQUndoGroup, param1: cstring): pointer {.base.} =
  QUndoGroupmetacast(self[], param1)
proc cQUndoGroup_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoGroup](fcQUndoGroup_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQUndoGroup, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QUndoGroupmetacall(self[], param1, param2, param3)
proc cQUndoGroup_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQUndoGroup](fcQUndoGroup_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQUndoGroup, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QUndoGroupevent(self[], event)
proc cQUndoGroup_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUndoGroup](fcQUndoGroup_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQUndoGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QUndoGroupeventFilter(self[], watched, event)
proc cQUndoGroup_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUndoGroup](fcQUndoGroup_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQUndoGroup, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QUndoGrouptimerEvent(self[], event)
proc cQUndoGroup_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoGroup](fcQUndoGroup_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQUndoGroup, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QUndoGroupchildEvent(self[], event)
proc cQUndoGroup_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoGroup](fcQUndoGroup_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQUndoGroup, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QUndoGroupcustomEvent(self[], event)
proc cQUndoGroup_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoGroup](fcQUndoGroup_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQUndoGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QUndoGroupconnectNotify(self[], signal)
proc cQUndoGroup_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoGroup](fcQUndoGroup_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQUndoGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QUndoGroupdisconnectNotify(self[], signal)
proc cQUndoGroup_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoGroup](fcQUndoGroup_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qundogroup_types.QUndoGroup): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQUndoGroup_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qundogroup_types.QUndoGroup): cint =
  fcQUndoGroup_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qundogroup_types.QUndoGroup, signal: cstring): cint =
  fcQUndoGroup_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qundogroup_types.QUndoGroup, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQUndoGroup_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qundogroup_types.QUndoGroup,
    vtbl: ref QUndoGroupVTable = nil): gen_qundogroup_types.QUndoGroup =
  let vtbl = if vtbl == nil: new QUndoGroupVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUndoGroupVTable](fcQUndoGroup_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQUndoGroup_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQUndoGroup_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQUndoGroup_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQUndoGroup_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQUndoGroup_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQUndoGroup_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQUndoGroup_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQUndoGroup_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQUndoGroup_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQUndoGroup_vtable_callback_disconnectNotify
  gen_qundogroup_types.QUndoGroup(h: fcQUndoGroup_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qundogroup_types.QUndoGroup,
    parent: gen_qobject_types.QObject,
    vtbl: ref QUndoGroupVTable = nil): gen_qundogroup_types.QUndoGroup =
  let vtbl = if vtbl == nil: new QUndoGroupVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUndoGroupVTable](fcQUndoGroup_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQUndoGroup_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQUndoGroup_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQUndoGroup_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQUndoGroup_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQUndoGroup_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQUndoGroup_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQUndoGroup_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQUndoGroup_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQUndoGroup_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQUndoGroup_vtable_callback_disconnectNotify
  gen_qundogroup_types.QUndoGroup(h: fcQUndoGroup_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQUndoGroup_mvtbl = cQUndoGroupVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQUndoGroup()[])](self.fcQUndoGroup_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQUndoGroup_method_callback_metaObject,
  metacast: cQUndoGroup_method_callback_metacast,
  metacall: cQUndoGroup_method_callback_metacall,
  event: cQUndoGroup_method_callback_event,
  eventFilter: cQUndoGroup_method_callback_eventFilter,
  timerEvent: cQUndoGroup_method_callback_timerEvent,
  childEvent: cQUndoGroup_method_callback_childEvent,
  customEvent: cQUndoGroup_method_callback_customEvent,
  connectNotify: cQUndoGroup_method_callback_connectNotify,
  disconnectNotify: cQUndoGroup_method_callback_disconnectNotify,
)
proc create*(T: type gen_qundogroup_types.QUndoGroup,
    inst: VirtualQUndoGroup) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUndoGroup_new(addr(cQUndoGroup_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qundogroup_types.QUndoGroup,
    parent: gen_qobject_types.QObject,
    inst: VirtualQUndoGroup) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUndoGroup_new2(addr(cQUndoGroup_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qundogroup_types.QUndoGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUndoGroup_staticMetaObject())
