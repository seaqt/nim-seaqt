import ./Qt6Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt6Quick")  & " -fPIC"
{.compile("gen_qsgsimplerectnode.cpp", cflags).}


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
proc fcQSGSimpleRectNode_rect(self: pointer, ): pointer {.importc: "QSGSimpleRectNode_rect".}
proc fcQSGSimpleRectNode_setColor(self: pointer, color: pointer): void {.importc: "QSGSimpleRectNode_setColor".}
proc fcQSGSimpleRectNode_color(self: pointer, ): pointer {.importc: "QSGSimpleRectNode_color".}
type cQSGSimpleRectNodeVTable = object
  destructor*: proc(vtbl: ptr cQSGSimpleRectNodeVTable, self: ptr cQSGSimpleRectNode) {.cdecl, raises:[], gcsafe.}
  isSubtreeBlocked*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
proc fcQSGSimpleRectNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool {.importc: "QSGSimpleRectNode_virtualbase_isSubtreeBlocked".}
proc fcQSGSimpleRectNode_virtualbase_preprocess(self: pointer, ): void {.importc: "QSGSimpleRectNode_virtualbase_preprocess".}
proc fcQSGSimpleRectNode_new(vtbl: pointer, rect: pointer, color: pointer): ptr cQSGSimpleRectNode {.importc: "QSGSimpleRectNode_new".}
proc fcQSGSimpleRectNode_new2(vtbl: pointer, ): ptr cQSGSimpleRectNode {.importc: "QSGSimpleRectNode_new2".}
proc fcQSGSimpleRectNode_delete(self: pointer) {.importc: "QSGSimpleRectNode_delete".}

proc setRect*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode, rect: gen_qrect_types.QRectF): void =
  fcQSGSimpleRectNode_setRect(self.h, rect.h)

proc setRect*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode, x: float64, y: float64, w: float64, h: float64): void =
  fcQSGSimpleRectNode_setRect2(self.h, x, y, w, h)

proc rect*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGSimpleRectNode_rect(self.h))

proc setColor*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode, color: gen_qcolor_types.QColor): void =
  fcQSGSimpleRectNode_setColor(self.h, color.h)

proc color*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQSGSimpleRectNode_color(self.h))

type QSGSimpleRectNodeisSubtreeBlockedProc* = proc(self: QSGSimpleRectNode): bool {.raises: [], gcsafe.}
type QSGSimpleRectNodepreprocessProc* = proc(self: QSGSimpleRectNode): void {.raises: [], gcsafe.}
type QSGSimpleRectNodeVTable* = object
  vtbl: cQSGSimpleRectNodeVTable
  isSubtreeBlocked*: QSGSimpleRectNodeisSubtreeBlockedProc
  preprocess*: QSGSimpleRectNodepreprocessProc
proc QSGSimpleRectNodeisSubtreeBlocked*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode, ): bool =
  fcQSGSimpleRectNode_virtualbase_isSubtreeBlocked(self.h)

proc miqt_exec_callback_cQSGSimpleRectNode_isSubtreeBlocked(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGSimpleRectNodeVTable](vtbl)
  let self = QSGSimpleRectNode(h: self)
  var virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc QSGSimpleRectNodepreprocess*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode, ): void =
  fcQSGSimpleRectNode_virtualbase_preprocess(self.h)

proc miqt_exec_callback_cQSGSimpleRectNode_preprocess(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGSimpleRectNodeVTable](vtbl)
  let self = QSGSimpleRectNode(h: self)
  vtbl[].preprocess(self)

proc create*(T: type gen_qsgsimplerectnode_types.QSGSimpleRectNode,
    rect: gen_qrect_types.QRectF, color: gen_qcolor_types.QColor,
    vtbl: ref QSGSimpleRectNodeVTable = nil): gen_qsgsimplerectnode_types.QSGSimpleRectNode =
  let vtbl = if vtbl == nil: new QSGSimpleRectNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSGSimpleRectNodeVTable, _: ptr cQSGSimpleRectNode) {.cdecl.} =
    let vtbl = cast[ref QSGSimpleRectNodeVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = miqt_exec_callback_cQSGSimpleRectNode_isSubtreeBlocked
  if not isNil(vtbl.preprocess):
    vtbl[].vtbl.preprocess = miqt_exec_callback_cQSGSimpleRectNode_preprocess
  gen_qsgsimplerectnode_types.QSGSimpleRectNode(h: fcQSGSimpleRectNode_new(addr(vtbl[]), rect.h, color.h))

proc create*(T: type gen_qsgsimplerectnode_types.QSGSimpleRectNode,
    vtbl: ref QSGSimpleRectNodeVTable = nil): gen_qsgsimplerectnode_types.QSGSimpleRectNode =
  let vtbl = if vtbl == nil: new QSGSimpleRectNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSGSimpleRectNodeVTable, _: ptr cQSGSimpleRectNode) {.cdecl.} =
    let vtbl = cast[ref QSGSimpleRectNodeVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = miqt_exec_callback_cQSGSimpleRectNode_isSubtreeBlocked
  if not isNil(vtbl.preprocess):
    vtbl[].vtbl.preprocess = miqt_exec_callback_cQSGSimpleRectNode_preprocess
  gen_qsgsimplerectnode_types.QSGSimpleRectNode(h: fcQSGSimpleRectNode_new2(addr(vtbl[]), ))

proc delete*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode) =
  fcQSGSimpleRectNode_delete(self.h)
