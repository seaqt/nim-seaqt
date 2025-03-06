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
{.compile("gen_qundogroup.cpp", cflags).}


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

proc fcQUndoGroup_new(): ptr cQUndoGroup {.importc: "QUndoGroup_new".}
proc fcQUndoGroup_new2(parent: pointer): ptr cQUndoGroup {.importc: "QUndoGroup_new2".}
proc fcQUndoGroup_metaObject(self: pointer, ): pointer {.importc: "QUndoGroup_metaObject".}
proc fcQUndoGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QUndoGroup_metacast".}
proc fcQUndoGroup_tr(s: cstring): struct_miqt_string {.importc: "QUndoGroup_tr".}
proc fcQUndoGroup_addStack(self: pointer, stack: pointer): void {.importc: "QUndoGroup_addStack".}
proc fcQUndoGroup_removeStack(self: pointer, stack: pointer): void {.importc: "QUndoGroup_removeStack".}
proc fcQUndoGroup_stacks(self: pointer, ): struct_miqt_array {.importc: "QUndoGroup_stacks".}
proc fcQUndoGroup_activeStack(self: pointer, ): pointer {.importc: "QUndoGroup_activeStack".}
proc fcQUndoGroup_createUndoAction(self: pointer, parent: pointer): pointer {.importc: "QUndoGroup_createUndoAction".}
proc fcQUndoGroup_createRedoAction(self: pointer, parent: pointer): pointer {.importc: "QUndoGroup_createRedoAction".}
proc fcQUndoGroup_canUndo(self: pointer, ): bool {.importc: "QUndoGroup_canUndo".}
proc fcQUndoGroup_canRedo(self: pointer, ): bool {.importc: "QUndoGroup_canRedo".}
proc fcQUndoGroup_undoText(self: pointer, ): struct_miqt_string {.importc: "QUndoGroup_undoText".}
proc fcQUndoGroup_redoText(self: pointer, ): struct_miqt_string {.importc: "QUndoGroup_redoText".}
proc fcQUndoGroup_isClean(self: pointer, ): bool {.importc: "QUndoGroup_isClean".}
proc fcQUndoGroup_undo(self: pointer, ): void {.importc: "QUndoGroup_undo".}
proc fcQUndoGroup_redo(self: pointer, ): void {.importc: "QUndoGroup_redo".}
proc fcQUndoGroup_setActiveStack(self: pointer, stack: pointer): void {.importc: "QUndoGroup_setActiveStack".}
proc fcQUndoGroup_activeStackChanged(self: pointer, stack: pointer): void {.importc: "QUndoGroup_activeStackChanged".}
proc fcQUndoGroup_connect_activeStackChanged(self: pointer, slot: int) {.importc: "QUndoGroup_connect_activeStackChanged".}
proc fcQUndoGroup_indexChanged(self: pointer, idx: cint): void {.importc: "QUndoGroup_indexChanged".}
proc fcQUndoGroup_connect_indexChanged(self: pointer, slot: int) {.importc: "QUndoGroup_connect_indexChanged".}
proc fcQUndoGroup_cleanChanged(self: pointer, clean: bool): void {.importc: "QUndoGroup_cleanChanged".}
proc fcQUndoGroup_connect_cleanChanged(self: pointer, slot: int) {.importc: "QUndoGroup_connect_cleanChanged".}
proc fcQUndoGroup_canUndoChanged(self: pointer, canUndo: bool): void {.importc: "QUndoGroup_canUndoChanged".}
proc fcQUndoGroup_connect_canUndoChanged(self: pointer, slot: int) {.importc: "QUndoGroup_connect_canUndoChanged".}
proc fcQUndoGroup_canRedoChanged(self: pointer, canRedo: bool): void {.importc: "QUndoGroup_canRedoChanged".}
proc fcQUndoGroup_connect_canRedoChanged(self: pointer, slot: int) {.importc: "QUndoGroup_connect_canRedoChanged".}
proc fcQUndoGroup_undoTextChanged(self: pointer, undoText: struct_miqt_string): void {.importc: "QUndoGroup_undoTextChanged".}
proc fcQUndoGroup_connect_undoTextChanged(self: pointer, slot: int) {.importc: "QUndoGroup_connect_undoTextChanged".}
proc fcQUndoGroup_redoTextChanged(self: pointer, redoText: struct_miqt_string): void {.importc: "QUndoGroup_redoTextChanged".}
proc fcQUndoGroup_connect_redoTextChanged(self: pointer, slot: int) {.importc: "QUndoGroup_connect_redoTextChanged".}
proc fcQUndoGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QUndoGroup_tr2".}
proc fcQUndoGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUndoGroup_tr3".}
proc fcQUndoGroup_createUndoAction2(self: pointer, parent: pointer, prefix: struct_miqt_string): pointer {.importc: "QUndoGroup_createUndoAction2".}
proc fcQUndoGroup_createRedoAction2(self: pointer, parent: pointer, prefix: struct_miqt_string): pointer {.importc: "QUndoGroup_createRedoAction2".}
proc fQUndoGroup_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QUndoGroup_virtualbase_event".}
proc fcQUndoGroup_override_virtual_event(self: pointer, slot: int) {.importc: "QUndoGroup_override_virtual_event".}
proc fQUndoGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QUndoGroup_virtualbase_eventFilter".}
proc fcQUndoGroup_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QUndoGroup_override_virtual_eventFilter".}
proc fQUndoGroup_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QUndoGroup_virtualbase_timerEvent".}
proc fcQUndoGroup_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QUndoGroup_override_virtual_timerEvent".}
proc fQUndoGroup_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QUndoGroup_virtualbase_childEvent".}
proc fcQUndoGroup_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QUndoGroup_override_virtual_childEvent".}
proc fQUndoGroup_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QUndoGroup_virtualbase_customEvent".}
proc fcQUndoGroup_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QUndoGroup_override_virtual_customEvent".}
proc fQUndoGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QUndoGroup_virtualbase_connectNotify".}
proc fcQUndoGroup_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QUndoGroup_override_virtual_connectNotify".}
proc fQUndoGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QUndoGroup_virtualbase_disconnectNotify".}
proc fcQUndoGroup_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QUndoGroup_override_virtual_disconnectNotify".}
proc fcQUndoGroup_delete(self: pointer) {.importc: "QUndoGroup_delete".}


func init*(T: type gen_qundogroup_types.QUndoGroup, h: ptr cQUndoGroup): gen_qundogroup_types.QUndoGroup =
  T(h: h)
proc create*(T: type gen_qundogroup_types.QUndoGroup, ): gen_qundogroup_types.QUndoGroup =
  gen_qundogroup_types.QUndoGroup.init(fcQUndoGroup_new())

proc create*(T: type gen_qundogroup_types.QUndoGroup, parent: gen_qobject_types.QObject): gen_qundogroup_types.QUndoGroup =
  gen_qundogroup_types.QUndoGroup.init(fcQUndoGroup_new2(parent.h))

proc metaObject*(self: gen_qundogroup_types.QUndoGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUndoGroup_metaObject(self.h))

proc metacast*(self: gen_qundogroup_types.QUndoGroup, param1: cstring): pointer =
  fcQUndoGroup_metacast(self.h, param1)

proc tr*(_: type gen_qundogroup_types.QUndoGroup, s: cstring): string =
  let v_ms = fcQUndoGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addStack*(self: gen_qundogroup_types.QUndoGroup, stack: gen_qundostack_types.QUndoStack): void =
  fcQUndoGroup_addStack(self.h, stack.h)

proc removeStack*(self: gen_qundogroup_types.QUndoGroup, stack: gen_qundostack_types.QUndoStack): void =
  fcQUndoGroup_removeStack(self.h, stack.h)

proc stacks*(self: gen_qundogroup_types.QUndoGroup, ): seq[gen_qundostack_types.QUndoStack] =
  var v_ma = fcQUndoGroup_stacks(self.h)
  var vx_ret = newSeq[gen_qundostack_types.QUndoStack](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qundostack_types.QUndoStack(h: v_outCast[i])
  vx_ret

proc activeStack*(self: gen_qundogroup_types.QUndoGroup, ): gen_qundostack_types.QUndoStack =
  gen_qundostack_types.QUndoStack(h: fcQUndoGroup_activeStack(self.h))

proc createUndoAction*(self: gen_qundogroup_types.QUndoGroup, parent: gen_qobject_types.QObject): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUndoGroup_createUndoAction(self.h, parent.h))

proc createRedoAction*(self: gen_qundogroup_types.QUndoGroup, parent: gen_qobject_types.QObject): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUndoGroup_createRedoAction(self.h, parent.h))

proc canUndo*(self: gen_qundogroup_types.QUndoGroup, ): bool =
  fcQUndoGroup_canUndo(self.h)

proc canRedo*(self: gen_qundogroup_types.QUndoGroup, ): bool =
  fcQUndoGroup_canRedo(self.h)

proc undoText*(self: gen_qundogroup_types.QUndoGroup, ): string =
  let v_ms = fcQUndoGroup_undoText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc redoText*(self: gen_qundogroup_types.QUndoGroup, ): string =
  let v_ms = fcQUndoGroup_redoText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isClean*(self: gen_qundogroup_types.QUndoGroup, ): bool =
  fcQUndoGroup_isClean(self.h)

proc undo*(self: gen_qundogroup_types.QUndoGroup, ): void =
  fcQUndoGroup_undo(self.h)

proc redo*(self: gen_qundogroup_types.QUndoGroup, ): void =
  fcQUndoGroup_redo(self.h)

proc setActiveStack*(self: gen_qundogroup_types.QUndoGroup, stack: gen_qundostack_types.QUndoStack): void =
  fcQUndoGroup_setActiveStack(self.h, stack.h)

proc activeStackChanged*(self: gen_qundogroup_types.QUndoGroup, stack: gen_qundostack_types.QUndoStack): void =
  fcQUndoGroup_activeStackChanged(self.h, stack.h)

type QUndoGroupactiveStackChangedSlot* = proc(stack: gen_qundostack_types.QUndoStack)
proc miqt_exec_callback_QUndoGroup_activeStackChanged(slot: int, stack: pointer) {.exportc.} =
  let nimfunc = cast[ptr QUndoGroupactiveStackChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qundostack_types.QUndoStack(h: stack)

  nimfunc[](slotval1)

proc onactiveStackChanged*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupactiveStackChangedSlot) =
  var tmp = new QUndoGroupactiveStackChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_connect_activeStackChanged(self.h, cast[int](addr tmp[]))

proc indexChanged*(self: gen_qundogroup_types.QUndoGroup, idx: cint): void =
  fcQUndoGroup_indexChanged(self.h, idx)

type QUndoGroupindexChangedSlot* = proc(idx: cint)
proc miqt_exec_callback_QUndoGroup_indexChanged(slot: int, idx: cint) {.exportc.} =
  let nimfunc = cast[ptr QUndoGroupindexChangedSlot](cast[pointer](slot))
  let slotval1 = idx

  nimfunc[](slotval1)

proc onindexChanged*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupindexChangedSlot) =
  var tmp = new QUndoGroupindexChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_connect_indexChanged(self.h, cast[int](addr tmp[]))

proc cleanChanged*(self: gen_qundogroup_types.QUndoGroup, clean: bool): void =
  fcQUndoGroup_cleanChanged(self.h, clean)

type QUndoGroupcleanChangedSlot* = proc(clean: bool)
proc miqt_exec_callback_QUndoGroup_cleanChanged(slot: int, clean: bool) {.exportc.} =
  let nimfunc = cast[ptr QUndoGroupcleanChangedSlot](cast[pointer](slot))
  let slotval1 = clean

  nimfunc[](slotval1)

proc oncleanChanged*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupcleanChangedSlot) =
  var tmp = new QUndoGroupcleanChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_connect_cleanChanged(self.h, cast[int](addr tmp[]))

proc canUndoChanged*(self: gen_qundogroup_types.QUndoGroup, canUndo: bool): void =
  fcQUndoGroup_canUndoChanged(self.h, canUndo)

type QUndoGroupcanUndoChangedSlot* = proc(canUndo: bool)
proc miqt_exec_callback_QUndoGroup_canUndoChanged(slot: int, canUndo: bool) {.exportc.} =
  let nimfunc = cast[ptr QUndoGroupcanUndoChangedSlot](cast[pointer](slot))
  let slotval1 = canUndo

  nimfunc[](slotval1)

proc oncanUndoChanged*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupcanUndoChangedSlot) =
  var tmp = new QUndoGroupcanUndoChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_connect_canUndoChanged(self.h, cast[int](addr tmp[]))

proc canRedoChanged*(self: gen_qundogroup_types.QUndoGroup, canRedo: bool): void =
  fcQUndoGroup_canRedoChanged(self.h, canRedo)

type QUndoGroupcanRedoChangedSlot* = proc(canRedo: bool)
proc miqt_exec_callback_QUndoGroup_canRedoChanged(slot: int, canRedo: bool) {.exportc.} =
  let nimfunc = cast[ptr QUndoGroupcanRedoChangedSlot](cast[pointer](slot))
  let slotval1 = canRedo

  nimfunc[](slotval1)

proc oncanRedoChanged*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupcanRedoChangedSlot) =
  var tmp = new QUndoGroupcanRedoChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_connect_canRedoChanged(self.h, cast[int](addr tmp[]))

proc undoTextChanged*(self: gen_qundogroup_types.QUndoGroup, undoText: string): void =
  fcQUndoGroup_undoTextChanged(self.h, struct_miqt_string(data: undoText, len: csize_t(len(undoText))))

type QUndoGroupundoTextChangedSlot* = proc(undoText: string)
proc miqt_exec_callback_QUndoGroup_undoTextChanged(slot: int, undoText: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QUndoGroupundoTextChangedSlot](cast[pointer](slot))
  let vundoText_ms = undoText
  let vundoTextx_ret = string.fromBytes(toOpenArrayByte(vundoText_ms.data, 0, int(vundoText_ms.len)-1))
  c_free(vundoText_ms.data)
  let slotval1 = vundoTextx_ret

  nimfunc[](slotval1)

proc onundoTextChanged*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupundoTextChangedSlot) =
  var tmp = new QUndoGroupundoTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_connect_undoTextChanged(self.h, cast[int](addr tmp[]))

proc redoTextChanged*(self: gen_qundogroup_types.QUndoGroup, redoText: string): void =
  fcQUndoGroup_redoTextChanged(self.h, struct_miqt_string(data: redoText, len: csize_t(len(redoText))))

type QUndoGroupredoTextChangedSlot* = proc(redoText: string)
proc miqt_exec_callback_QUndoGroup_redoTextChanged(slot: int, redoText: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QUndoGroupredoTextChangedSlot](cast[pointer](slot))
  let vredoText_ms = redoText
  let vredoTextx_ret = string.fromBytes(toOpenArrayByte(vredoText_ms.data, 0, int(vredoText_ms.len)-1))
  c_free(vredoText_ms.data)
  let slotval1 = vredoTextx_ret

  nimfunc[](slotval1)

proc onredoTextChanged*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupredoTextChangedSlot) =
  var tmp = new QUndoGroupredoTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_connect_redoTextChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qundogroup_types.QUndoGroup, s: cstring, c: cstring): string =
  let v_ms = fcQUndoGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qundogroup_types.QUndoGroup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQUndoGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createUndoAction*(self: gen_qundogroup_types.QUndoGroup, parent: gen_qobject_types.QObject, prefix: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUndoGroup_createUndoAction2(self.h, parent.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix)))))

proc createRedoAction*(self: gen_qundogroup_types.QUndoGroup, parent: gen_qobject_types.QObject, prefix: string): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQUndoGroup_createRedoAction2(self.h, parent.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix)))))

proc QUndoGroupevent*(self: gen_qundogroup_types.QUndoGroup, event: gen_qcoreevent_types.QEvent): bool =
  fQUndoGroup_virtualbase_event(self.h, event.h)

type QUndoGroupeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupeventProc) =
  # TODO check subclass
  var tmp = new QUndoGroupeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoGroup_event(self: ptr cQUndoGroup, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QUndoGroup_event ".} =
  var nimfunc = cast[ptr QUndoGroupeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUndoGroupeventFilter*(self: gen_qundogroup_types.QUndoGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQUndoGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

type QUndoGroupeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupeventFilterProc) =
  # TODO check subclass
  var tmp = new QUndoGroupeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoGroup_eventFilter(self: ptr cQUndoGroup, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QUndoGroup_eventFilter ".} =
  var nimfunc = cast[ptr QUndoGroupeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QUndoGrouptimerEvent*(self: gen_qundogroup_types.QUndoGroup, event: gen_qcoreevent_types.QTimerEvent): void =
  fQUndoGroup_virtualbase_timerEvent(self.h, event.h)

type QUndoGrouptimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGrouptimerEventProc) =
  # TODO check subclass
  var tmp = new QUndoGrouptimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoGroup_timerEvent(self: ptr cQUndoGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoGroup_timerEvent ".} =
  var nimfunc = cast[ptr QUndoGrouptimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QUndoGroupchildEvent*(self: gen_qundogroup_types.QUndoGroup, event: gen_qcoreevent_types.QChildEvent): void =
  fQUndoGroup_virtualbase_childEvent(self.h, event.h)

type QUndoGroupchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupchildEventProc) =
  # TODO check subclass
  var tmp = new QUndoGroupchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoGroup_childEvent(self: ptr cQUndoGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoGroup_childEvent ".} =
  var nimfunc = cast[ptr QUndoGroupchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QUndoGroupcustomEvent*(self: gen_qundogroup_types.QUndoGroup, event: gen_qcoreevent_types.QEvent): void =
  fQUndoGroup_virtualbase_customEvent(self.h, event.h)

type QUndoGroupcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupcustomEventProc) =
  # TODO check subclass
  var tmp = new QUndoGroupcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoGroup_customEvent(self: ptr cQUndoGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoGroup_customEvent ".} =
  var nimfunc = cast[ptr QUndoGroupcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QUndoGroupconnectNotify*(self: gen_qundogroup_types.QUndoGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQUndoGroup_virtualbase_connectNotify(self.h, signal.h)

type QUndoGroupconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QUndoGroupconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoGroup_connectNotify(self: ptr cQUndoGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QUndoGroup_connectNotify ".} =
  var nimfunc = cast[ptr QUndoGroupconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QUndoGroupdisconnectNotify*(self: gen_qundogroup_types.QUndoGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQUndoGroup_virtualbase_disconnectNotify(self.h, signal.h)

type QUndoGroupdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qundogroup_types.QUndoGroup, slot: QUndoGroupdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QUndoGroupdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoGroup_disconnectNotify(self: ptr cQUndoGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QUndoGroup_disconnectNotify ".} =
  var nimfunc = cast[ptr QUndoGroupdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qundogroup_types.QUndoGroup) =
  fcQUndoGroup_delete(self.h)
