import ./qtquick_pkg

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


{.compile("gen_qsgsimplerectnode.cpp", QtQuickCFlags).}


import ./gen_qsgsimplerectnode_types
export gen_qsgsimplerectnode_types

import
  ../QtCore/gen_qrect_types,
  ../QtGui/gen_qcolor_types,
  ./gen_qsgnode
export
  gen_qrect_types,
  gen_qcolor_types,
  gen_qsgnode

type cQSGSimpleRectNode*{.exportc: "QSGSimpleRectNode", incompleteStruct.} = object

proc fcQSGSimpleRectNode_setRect(self: pointer, rect: pointer): void {.importc: "QSGSimpleRectNode_setRect".}
proc fcQSGSimpleRectNode_setRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QSGSimpleRectNode_setRect2".}
proc fcQSGSimpleRectNode_rect(self: pointer): pointer {.importc: "QSGSimpleRectNode_rect".}
proc fcQSGSimpleRectNode_setColor(self: pointer, color: pointer): void {.importc: "QSGSimpleRectNode_setColor".}
proc fcQSGSimpleRectNode_color(self: pointer): pointer {.importc: "QSGSimpleRectNode_color".}
proc fcQSGSimpleRectNode_vtbl(self: pointer): pointer {.importc: "QSGSimpleRectNode_vtbl".}
proc fcQSGSimpleRectNode_vdata(self: pointer): pointer {.importc: "QSGSimpleRectNode_vdata".}

type cQSGSimpleRectNodeVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  isSubtreeBlocked*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSGSimpleRectNode_virtualbase_isSubtreeBlocked(self: pointer): bool {.importc: "QSGSimpleRectNode_virtualbase_isSubtreeBlocked".}
proc fcQSGSimpleRectNode_virtualbase_preprocess(self: pointer): void {.importc: "QSGSimpleRectNode_virtualbase_preprocess".}
proc fcQSGSimpleRectNode_new(vtbl, vdata: pointer, rect: pointer, color: pointer): ptr cQSGSimpleRectNode {.importc: "QSGSimpleRectNode_new".}
proc fcQSGSimpleRectNode_new2(vtbl, vdata: pointer): ptr cQSGSimpleRectNode {.importc: "QSGSimpleRectNode_new2".}

proc setRect*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode, rect: gen_qrect_types.QRectF): void =
  fcQSGSimpleRectNode_setRect(self.h, rect.h)

proc setRect*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode, x: float64, y: float64, w: float64, h: float64): void =
  fcQSGSimpleRectNode_setRect2(self.h, x, y, w, h)

proc rect*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGSimpleRectNode_rect(self.h), owned: true)

proc setColor*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode, color: gen_qcolor_types.QColor): void =
  fcQSGSimpleRectNode_setColor(self.h, color.h)

proc color*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQSGSimpleRectNode_color(self.h), owned: true)

type QSGSimpleRectNodeisSubtreeBlockedProc* = proc(self: QSGSimpleRectNode): bool {.raises: [], gcsafe.}
type QSGSimpleRectNodepreprocessProc* = proc(self: QSGSimpleRectNode): void {.raises: [], gcsafe.}

type QSGSimpleRectNodeVTable* {.inheritable, pure.} = object
  vtbl: cQSGSimpleRectNodeVTable
  isSubtreeBlocked*: QSGSimpleRectNodeisSubtreeBlockedProc
  preprocess*: QSGSimpleRectNodepreprocessProc

proc QSGSimpleRectNodeisSubtreeBlocked*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode): bool =
  fcQSGSimpleRectNode_virtualbase_isSubtreeBlocked(self.h)

proc QSGSimpleRectNodepreprocess*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode): void =
  fcQSGSimpleRectNode_virtualbase_preprocess(self.h)


proc fcQSGSimpleRectNode_vtable_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGSimpleRectNodeVTable](fcQSGSimpleRectNode_vdata(self))
  let self = QSGSimpleRectNode(h: self)
  var virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc fcQSGSimpleRectNode_vtable_callback_preprocess(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGSimpleRectNodeVTable](fcQSGSimpleRectNode_vdata(self))
  let self = QSGSimpleRectNode(h: self)
  vtbl[].preprocess(self)

type VirtualQSGSimpleRectNode* {.inheritable.} = ref object of QSGSimpleRectNode
  vtbl*: cQSGSimpleRectNodeVTable

method isSubtreeBlocked*(self: VirtualQSGSimpleRectNode): bool {.base.} =
  QSGSimpleRectNodeisSubtreeBlocked(self[])
method preprocess*(self: VirtualQSGSimpleRectNode): void {.base.} =
  QSGSimpleRectNodepreprocess(self[])

proc fcQSGSimpleRectNode_method_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGSimpleRectNode](fcQSGSimpleRectNode_vdata(self))
  var virtualReturn = inst.isSubtreeBlocked()
  virtualReturn

proc fcQSGSimpleRectNode_method_callback_preprocess(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGSimpleRectNode](fcQSGSimpleRectNode_vdata(self))
  inst.preprocess()


proc create*(T: type gen_qsgsimplerectnode_types.QSGSimpleRectNode,
    rect: gen_qrect_types.QRectF, color: gen_qcolor_types.QColor,
    vtbl: ref QSGSimpleRectNodeVTable = nil): gen_qsgsimplerectnode_types.QSGSimpleRectNode =
  let vtbl = if vtbl == nil: new QSGSimpleRectNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGSimpleRectNodeVTable](fcQSGSimpleRectNode_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = fcQSGSimpleRectNode_vtable_callback_isSubtreeBlocked
  if not isNil(vtbl[].preprocess):
    vtbl[].vtbl.preprocess = fcQSGSimpleRectNode_vtable_callback_preprocess
  gen_qsgsimplerectnode_types.QSGSimpleRectNode(h: fcQSGSimpleRectNode_new(addr(vtbl[].vtbl), addr(vtbl[]), rect.h, color.h), owned: true)

proc create*(T: type gen_qsgsimplerectnode_types.QSGSimpleRectNode,
    vtbl: ref QSGSimpleRectNodeVTable = nil): gen_qsgsimplerectnode_types.QSGSimpleRectNode =
  let vtbl = if vtbl == nil: new QSGSimpleRectNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGSimpleRectNodeVTable](fcQSGSimpleRectNode_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = fcQSGSimpleRectNode_vtable_callback_isSubtreeBlocked
  if not isNil(vtbl[].preprocess):
    vtbl[].vtbl.preprocess = fcQSGSimpleRectNode_vtable_callback_preprocess
  gen_qsgsimplerectnode_types.QSGSimpleRectNode(h: fcQSGSimpleRectNode_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQSGSimpleRectNode_mvtbl = cQSGSimpleRectNodeVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGSimpleRectNode()[])](self.fcQSGSimpleRectNode_vdata())
    inst[].h = nil
    inst[].owned = false,

  isSubtreeBlocked: fcQSGSimpleRectNode_method_callback_isSubtreeBlocked,
  preprocess: fcQSGSimpleRectNode_method_callback_preprocess,
)
proc create*(T: type gen_qsgsimplerectnode_types.QSGSimpleRectNode,
    rect: gen_qrect_types.QRectF, color: gen_qcolor_types.QColor,
    inst: VirtualQSGSimpleRectNode) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGSimpleRectNode_new(addr(cQSGSimpleRectNode_mvtbl), addr(inst[]), rect.h, color.h)
  inst[].owned = true

proc create*(T: type gen_qsgsimplerectnode_types.QSGSimpleRectNode,
    inst: VirtualQSGSimpleRectNode) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGSimpleRectNode_new2(addr(cQSGSimpleRectNode_mvtbl), addr(inst[]))
  inst[].owned = true

