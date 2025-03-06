import ./Qt6Quick_libs

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

proc fcQSGSimpleRectNode_new(rect: pointer, color: pointer): ptr cQSGSimpleRectNode {.importc: "QSGSimpleRectNode_new".}
proc fcQSGSimpleRectNode_new2(): ptr cQSGSimpleRectNode {.importc: "QSGSimpleRectNode_new2".}
proc fcQSGSimpleRectNode_setRect(self: pointer, rect: pointer): void {.importc: "QSGSimpleRectNode_setRect".}
proc fcQSGSimpleRectNode_setRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QSGSimpleRectNode_setRect2".}
proc fcQSGSimpleRectNode_rect(self: pointer, ): pointer {.importc: "QSGSimpleRectNode_rect".}
proc fcQSGSimpleRectNode_setColor(self: pointer, color: pointer): void {.importc: "QSGSimpleRectNode_setColor".}
proc fcQSGSimpleRectNode_color(self: pointer, ): pointer {.importc: "QSGSimpleRectNode_color".}
proc fQSGSimpleRectNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool{.importc: "QSGSimpleRectNode_virtualbase_isSubtreeBlocked".}
proc fcQSGSimpleRectNode_override_virtual_isSubtreeBlocked(self: pointer, slot: int) {.importc: "QSGSimpleRectNode_override_virtual_isSubtreeBlocked".}
proc fQSGSimpleRectNode_virtualbase_preprocess(self: pointer, ): void{.importc: "QSGSimpleRectNode_virtualbase_preprocess".}
proc fcQSGSimpleRectNode_override_virtual_preprocess(self: pointer, slot: int) {.importc: "QSGSimpleRectNode_override_virtual_preprocess".}
proc fcQSGSimpleRectNode_delete(self: pointer) {.importc: "QSGSimpleRectNode_delete".}


func init*(T: type gen_qsgsimplerectnode_types.QSGSimpleRectNode, h: ptr cQSGSimpleRectNode): gen_qsgsimplerectnode_types.QSGSimpleRectNode =
  T(h: h)
proc create*(T: type gen_qsgsimplerectnode_types.QSGSimpleRectNode, rect: gen_qrect_types.QRectF, color: gen_qcolor_types.QColor): gen_qsgsimplerectnode_types.QSGSimpleRectNode =
  gen_qsgsimplerectnode_types.QSGSimpleRectNode.init(fcQSGSimpleRectNode_new(rect.h, color.h))

proc create*(T: type gen_qsgsimplerectnode_types.QSGSimpleRectNode, ): gen_qsgsimplerectnode_types.QSGSimpleRectNode =
  gen_qsgsimplerectnode_types.QSGSimpleRectNode.init(fcQSGSimpleRectNode_new2())

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

proc QSGSimpleRectNodeisSubtreeBlocked*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode, ): bool =
  fQSGSimpleRectNode_virtualbase_isSubtreeBlocked(self.h)

type QSGSimpleRectNodeisSubtreeBlockedProc* = proc(): bool
proc onisSubtreeBlocked*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode, slot: QSGSimpleRectNodeisSubtreeBlockedProc) =
  # TODO check subclass
  var tmp = new QSGSimpleRectNodeisSubtreeBlockedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGSimpleRectNode_override_virtual_isSubtreeBlocked(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGSimpleRectNode_isSubtreeBlocked(self: ptr cQSGSimpleRectNode, slot: int): bool {.exportc: "miqt_exec_callback_QSGSimpleRectNode_isSubtreeBlocked ".} =
  var nimfunc = cast[ptr QSGSimpleRectNodeisSubtreeBlockedProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSGSimpleRectNodepreprocess*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode, ): void =
  fQSGSimpleRectNode_virtualbase_preprocess(self.h)

type QSGSimpleRectNodepreprocessProc* = proc(): void
proc onpreprocess*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode, slot: QSGSimpleRectNodepreprocessProc) =
  # TODO check subclass
  var tmp = new QSGSimpleRectNodepreprocessProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGSimpleRectNode_override_virtual_preprocess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGSimpleRectNode_preprocess(self: ptr cQSGSimpleRectNode, slot: int): void {.exportc: "miqt_exec_callback_QSGSimpleRectNode_preprocess ".} =
  var nimfunc = cast[ptr QSGSimpleRectNodepreprocessProc](cast[pointer](slot))

  nimfunc[]()
proc delete*(self: gen_qsgsimplerectnode_types.QSGSimpleRectNode) =
  fcQSGSimpleRectNode_delete(self.h)
