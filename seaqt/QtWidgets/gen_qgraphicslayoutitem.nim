import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
{.compile("gen_qgraphicslayoutitem.cpp", cflags).}


import ./gen_qgraphicslayoutitem_types
export gen_qgraphicslayoutitem_types

import
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qgraphicsitem_types,
  ./gen_qsizepolicy_types
export
  gen_qrect_types,
  gen_qsize_types,
  gen_qgraphicsitem_types,
  gen_qsizepolicy_types

type cQGraphicsLayoutItem*{.exportc: "QGraphicsLayoutItem", incompleteStruct.} = object

proc fcQGraphicsLayoutItem_new(): ptr cQGraphicsLayoutItem {.importc: "QGraphicsLayoutItem_new".}
proc fcQGraphicsLayoutItem_new2(parent: pointer): ptr cQGraphicsLayoutItem {.importc: "QGraphicsLayoutItem_new2".}
proc fcQGraphicsLayoutItem_new3(parent: pointer, isLayout: bool): ptr cQGraphicsLayoutItem {.importc: "QGraphicsLayoutItem_new3".}
proc fcQGraphicsLayoutItem_setSizePolicy(self: pointer, policy: pointer): void {.importc: "QGraphicsLayoutItem_setSizePolicy".}
proc fcQGraphicsLayoutItem_setSizePolicy2(self: pointer, hPolicy: cint, vPolicy: cint): void {.importc: "QGraphicsLayoutItem_setSizePolicy2".}
proc fcQGraphicsLayoutItem_sizePolicy(self: pointer, ): pointer {.importc: "QGraphicsLayoutItem_sizePolicy".}
proc fcQGraphicsLayoutItem_setMinimumSize(self: pointer, size: pointer): void {.importc: "QGraphicsLayoutItem_setMinimumSize".}
proc fcQGraphicsLayoutItem_setMinimumSize2(self: pointer, w: float64, h: float64): void {.importc: "QGraphicsLayoutItem_setMinimumSize2".}
proc fcQGraphicsLayoutItem_minimumSize(self: pointer, ): pointer {.importc: "QGraphicsLayoutItem_minimumSize".}
proc fcQGraphicsLayoutItem_setMinimumWidth(self: pointer, width: float64): void {.importc: "QGraphicsLayoutItem_setMinimumWidth".}
proc fcQGraphicsLayoutItem_minimumWidth(self: pointer, ): float64 {.importc: "QGraphicsLayoutItem_minimumWidth".}
proc fcQGraphicsLayoutItem_setMinimumHeight(self: pointer, height: float64): void {.importc: "QGraphicsLayoutItem_setMinimumHeight".}
proc fcQGraphicsLayoutItem_minimumHeight(self: pointer, ): float64 {.importc: "QGraphicsLayoutItem_minimumHeight".}
proc fcQGraphicsLayoutItem_setPreferredSize(self: pointer, size: pointer): void {.importc: "QGraphicsLayoutItem_setPreferredSize".}
proc fcQGraphicsLayoutItem_setPreferredSize2(self: pointer, w: float64, h: float64): void {.importc: "QGraphicsLayoutItem_setPreferredSize2".}
proc fcQGraphicsLayoutItem_preferredSize(self: pointer, ): pointer {.importc: "QGraphicsLayoutItem_preferredSize".}
proc fcQGraphicsLayoutItem_setPreferredWidth(self: pointer, width: float64): void {.importc: "QGraphicsLayoutItem_setPreferredWidth".}
proc fcQGraphicsLayoutItem_preferredWidth(self: pointer, ): float64 {.importc: "QGraphicsLayoutItem_preferredWidth".}
proc fcQGraphicsLayoutItem_setPreferredHeight(self: pointer, height: float64): void {.importc: "QGraphicsLayoutItem_setPreferredHeight".}
proc fcQGraphicsLayoutItem_preferredHeight(self: pointer, ): float64 {.importc: "QGraphicsLayoutItem_preferredHeight".}
proc fcQGraphicsLayoutItem_setMaximumSize(self: pointer, size: pointer): void {.importc: "QGraphicsLayoutItem_setMaximumSize".}
proc fcQGraphicsLayoutItem_setMaximumSize2(self: pointer, w: float64, h: float64): void {.importc: "QGraphicsLayoutItem_setMaximumSize2".}
proc fcQGraphicsLayoutItem_maximumSize(self: pointer, ): pointer {.importc: "QGraphicsLayoutItem_maximumSize".}
proc fcQGraphicsLayoutItem_setMaximumWidth(self: pointer, width: float64): void {.importc: "QGraphicsLayoutItem_setMaximumWidth".}
proc fcQGraphicsLayoutItem_maximumWidth(self: pointer, ): float64 {.importc: "QGraphicsLayoutItem_maximumWidth".}
proc fcQGraphicsLayoutItem_setMaximumHeight(self: pointer, height: float64): void {.importc: "QGraphicsLayoutItem_setMaximumHeight".}
proc fcQGraphicsLayoutItem_maximumHeight(self: pointer, ): float64 {.importc: "QGraphicsLayoutItem_maximumHeight".}
proc fcQGraphicsLayoutItem_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsLayoutItem_setGeometry".}
proc fcQGraphicsLayoutItem_geometry(self: pointer, ): pointer {.importc: "QGraphicsLayoutItem_geometry".}
proc fcQGraphicsLayoutItem_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsLayoutItem_getContentsMargins".}
proc fcQGraphicsLayoutItem_contentsRect(self: pointer, ): pointer {.importc: "QGraphicsLayoutItem_contentsRect".}
proc fcQGraphicsLayoutItem_effectiveSizeHint(self: pointer, which: cint): pointer {.importc: "QGraphicsLayoutItem_effectiveSizeHint".}
proc fcQGraphicsLayoutItem_updateGeometry(self: pointer, ): void {.importc: "QGraphicsLayoutItem_updateGeometry".}
proc fcQGraphicsLayoutItem_parentLayoutItem(self: pointer, ): pointer {.importc: "QGraphicsLayoutItem_parentLayoutItem".}
proc fcQGraphicsLayoutItem_setParentLayoutItem(self: pointer, parent: pointer): void {.importc: "QGraphicsLayoutItem_setParentLayoutItem".}
proc fcQGraphicsLayoutItem_isLayout(self: pointer, ): bool {.importc: "QGraphicsLayoutItem_isLayout".}
proc fcQGraphicsLayoutItem_graphicsItem(self: pointer, ): pointer {.importc: "QGraphicsLayoutItem_graphicsItem".}
proc fcQGraphicsLayoutItem_ownedByLayout(self: pointer, ): bool {.importc: "QGraphicsLayoutItem_ownedByLayout".}
proc fcQGraphicsLayoutItem_setSizePolicy3(self: pointer, hPolicy: cint, vPolicy: cint, controlType: cint): void {.importc: "QGraphicsLayoutItem_setSizePolicy3".}
proc fcQGraphicsLayoutItem_effectiveSizeHint2(self: pointer, which: cint, constraint: pointer): pointer {.importc: "QGraphicsLayoutItem_effectiveSizeHint2".}
proc fQGraphicsLayoutItem_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QGraphicsLayoutItem_virtualbase_setGeometry".}
proc fcQGraphicsLayoutItem_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGraphicsLayoutItem_override_virtual_setGeometry".}
proc fQGraphicsLayoutItem_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void{.importc: "QGraphicsLayoutItem_virtualbase_getContentsMargins".}
proc fcQGraphicsLayoutItem_override_virtual_getContentsMargins(self: pointer, slot: int) {.importc: "QGraphicsLayoutItem_override_virtual_getContentsMargins".}
proc fQGraphicsLayoutItem_virtualbase_updateGeometry(self: pointer, ): void{.importc: "QGraphicsLayoutItem_virtualbase_updateGeometry".}
proc fcQGraphicsLayoutItem_override_virtual_updateGeometry(self: pointer, slot: int) {.importc: "QGraphicsLayoutItem_override_virtual_updateGeometry".}
proc fcQGraphicsLayoutItem_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsLayoutItem_override_virtual_sizeHint".}
proc fcQGraphicsLayoutItem_delete(self: pointer) {.importc: "QGraphicsLayoutItem_delete".}


func init*(T: type gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, h: ptr cQGraphicsLayoutItem): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem =
  T(h: h)
proc create*(T: type gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem =
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem.init(fcQGraphicsLayoutItem_new())

proc create*(T: type gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem =
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem.init(fcQGraphicsLayoutItem_new2(parent.h))

proc create*(T: type gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, isLayout: bool): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem =
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem.init(fcQGraphicsLayoutItem_new3(parent.h, isLayout))

proc setSizePolicy*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, policy: gen_qsizepolicy_types.QSizePolicy): void =
  fcQGraphicsLayoutItem_setSizePolicy(self.h, policy.h)

proc setSizePolicy*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, hPolicy: cint, vPolicy: cint): void =
  fcQGraphicsLayoutItem_setSizePolicy2(self.h, cint(hPolicy), cint(vPolicy))

proc sizePolicy*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): gen_qsizepolicy_types.QSizePolicy =
  gen_qsizepolicy_types.QSizePolicy(h: fcQGraphicsLayoutItem_sizePolicy(self.h))

proc setMinimumSize*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, size: gen_qsize_types.QSizeF): void =
  fcQGraphicsLayoutItem_setMinimumSize(self.h, size.h)

proc setMinimumSize*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, w: float64, h: float64): void =
  fcQGraphicsLayoutItem_setMinimumSize2(self.h, w, h)

proc minimumSize*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsLayoutItem_minimumSize(self.h))

proc setMinimumWidth*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, width: float64): void =
  fcQGraphicsLayoutItem_setMinimumWidth(self.h, width)

proc minimumWidth*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): float64 =
  fcQGraphicsLayoutItem_minimumWidth(self.h)

proc setMinimumHeight*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, height: float64): void =
  fcQGraphicsLayoutItem_setMinimumHeight(self.h, height)

proc minimumHeight*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): float64 =
  fcQGraphicsLayoutItem_minimumHeight(self.h)

proc setPreferredSize*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, size: gen_qsize_types.QSizeF): void =
  fcQGraphicsLayoutItem_setPreferredSize(self.h, size.h)

proc setPreferredSize*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, w: float64, h: float64): void =
  fcQGraphicsLayoutItem_setPreferredSize2(self.h, w, h)

proc preferredSize*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsLayoutItem_preferredSize(self.h))

proc setPreferredWidth*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, width: float64): void =
  fcQGraphicsLayoutItem_setPreferredWidth(self.h, width)

proc preferredWidth*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): float64 =
  fcQGraphicsLayoutItem_preferredWidth(self.h)

proc setPreferredHeight*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, height: float64): void =
  fcQGraphicsLayoutItem_setPreferredHeight(self.h, height)

proc preferredHeight*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): float64 =
  fcQGraphicsLayoutItem_preferredHeight(self.h)

proc setMaximumSize*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, size: gen_qsize_types.QSizeF): void =
  fcQGraphicsLayoutItem_setMaximumSize(self.h, size.h)

proc setMaximumSize*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, w: float64, h: float64): void =
  fcQGraphicsLayoutItem_setMaximumSize2(self.h, w, h)

proc maximumSize*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsLayoutItem_maximumSize(self.h))

proc setMaximumWidth*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, width: float64): void =
  fcQGraphicsLayoutItem_setMaximumWidth(self.h, width)

proc maximumWidth*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): float64 =
  fcQGraphicsLayoutItem_maximumWidth(self.h)

proc setMaximumHeight*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, height: float64): void =
  fcQGraphicsLayoutItem_setMaximumHeight(self.h, height)

proc maximumHeight*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): float64 =
  fcQGraphicsLayoutItem_maximumHeight(self.h)

proc setGeometry*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsLayoutItem_setGeometry(self.h, rect.h)

proc geometry*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsLayoutItem_geometry(self.h))

proc getContentsMargins*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fcQGraphicsLayoutItem_getContentsMargins(self.h, left, top, right, bottom)

proc contentsRect*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsLayoutItem_contentsRect(self.h))

proc effectiveSizeHint*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, which: cint): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsLayoutItem_effectiveSizeHint(self.h, cint(which)))

proc updateGeometry*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): void =
  fcQGraphicsLayoutItem_updateGeometry(self.h)

proc parentLayoutItem*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem =
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem(h: fcQGraphicsLayoutItem_parentLayoutItem(self.h))

proc setParentLayoutItem*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): void =
  fcQGraphicsLayoutItem_setParentLayoutItem(self.h, parent.h)

proc isLayout*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): bool =
  fcQGraphicsLayoutItem_isLayout(self.h)

proc graphicsItem*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsLayoutItem_graphicsItem(self.h))

proc ownedByLayout*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): bool =
  fcQGraphicsLayoutItem_ownedByLayout(self.h)

proc setSizePolicy*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, hPolicy: cint, vPolicy: cint, controlType: cint): void =
  fcQGraphicsLayoutItem_setSizePolicy3(self.h, cint(hPolicy), cint(vPolicy), cint(controlType))

proc effectiveSizeHint*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsLayoutItem_effectiveSizeHint2(self.h, cint(which), constraint.h))

proc QGraphicsLayoutItemsetGeometry*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, rect: gen_qrect_types.QRectF): void =
  fQGraphicsLayoutItem_virtualbase_setGeometry(self.h, rect.h)

type QGraphicsLayoutItemsetGeometryProc* = proc(rect: gen_qrect_types.QRectF): void
proc onsetGeometry*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, slot: QGraphicsLayoutItemsetGeometryProc) =
  # TODO check subclass
  var tmp = new QGraphicsLayoutItemsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayoutItem_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayoutItem_setGeometry(self: ptr cQGraphicsLayoutItem, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLayoutItem_setGeometry ".} =
  var nimfunc = cast[ptr QGraphicsLayoutItemsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: rect)


  nimfunc[](slotval1)
proc QGraphicsLayoutItemgetContentsMargins*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fQGraphicsLayoutItem_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

type QGraphicsLayoutItemgetContentsMarginsProc* = proc(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
proc ongetContentsMargins*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, slot: QGraphicsLayoutItemgetContentsMarginsProc) =
  # TODO check subclass
  var tmp = new QGraphicsLayoutItemgetContentsMarginsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayoutItem_override_virtual_getContentsMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayoutItem_getContentsMargins(self: ptr cQGraphicsLayoutItem, slot: int, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.exportc: "miqt_exec_callback_QGraphicsLayoutItem_getContentsMargins ".} =
  var nimfunc = cast[ptr QGraphicsLayoutItemgetContentsMarginsProc](cast[pointer](slot))
  let slotval1 = left

  let slotval2 = top

  let slotval3 = right

  let slotval4 = bottom


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QGraphicsLayoutItemupdateGeometry*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, ): void =
  fQGraphicsLayoutItem_virtualbase_updateGeometry(self.h)

type QGraphicsLayoutItemupdateGeometryProc* = proc(): void
proc onupdateGeometry*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, slot: QGraphicsLayoutItemupdateGeometryProc) =
  # TODO check subclass
  var tmp = new QGraphicsLayoutItemupdateGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayoutItem_override_virtual_updateGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayoutItem_updateGeometry(self: ptr cQGraphicsLayoutItem, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsLayoutItem_updateGeometry ".} =
  var nimfunc = cast[ptr QGraphicsLayoutItemupdateGeometryProc](cast[pointer](slot))

  nimfunc[]()
type QGraphicsLayoutItemsizeHintProc* = proc(which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF
proc onsizeHint*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, slot: QGraphicsLayoutItemsizeHintProc) =
  # TODO check subclass
  var tmp = new QGraphicsLayoutItemsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayoutItem_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayoutItem_sizeHint(self: ptr cQGraphicsLayoutItem, slot: int, which: cint, constraint: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsLayoutItem_sizeHint ".} =
  var nimfunc = cast[ptr QGraphicsLayoutItemsizeHintProc](cast[pointer](slot))
  let slotval1 = cint(which)

  let slotval2 = gen_qsize_types.QSizeF(h: constraint)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem) =
  fcQGraphicsLayoutItem_delete(self.h)
