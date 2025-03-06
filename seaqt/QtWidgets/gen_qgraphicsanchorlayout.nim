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
{.compile("gen_qgraphicsanchorlayout.cpp", cflags).}


import ./gen_qgraphicsanchorlayout_types
export gen_qgraphicsanchorlayout_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qgraphicslayout,
  ./gen_qgraphicslayoutitem_types
export
  gen_qcoreevent_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qgraphicslayout,
  gen_qgraphicslayoutitem_types

type cQGraphicsAnchor*{.exportc: "QGraphicsAnchor", incompleteStruct.} = object
type cQGraphicsAnchorLayout*{.exportc: "QGraphicsAnchorLayout", incompleteStruct.} = object

proc fcQGraphicsAnchor_metaObject(self: pointer, ): pointer {.importc: "QGraphicsAnchor_metaObject".}
proc fcQGraphicsAnchor_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsAnchor_metacast".}
proc fcQGraphicsAnchor_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsAnchor_metacall".}
proc fcQGraphicsAnchor_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsAnchor_tr".}
proc fcQGraphicsAnchor_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsAnchor_trUtf8".}
proc fcQGraphicsAnchor_setSpacing(self: pointer, spacing: float64): void {.importc: "QGraphicsAnchor_setSpacing".}
proc fcQGraphicsAnchor_unsetSpacing(self: pointer, ): void {.importc: "QGraphicsAnchor_unsetSpacing".}
proc fcQGraphicsAnchor_spacing(self: pointer, ): float64 {.importc: "QGraphicsAnchor_spacing".}
proc fcQGraphicsAnchor_setSizePolicy(self: pointer, policy: cint): void {.importc: "QGraphicsAnchor_setSizePolicy".}
proc fcQGraphicsAnchor_sizePolicy(self: pointer, ): cint {.importc: "QGraphicsAnchor_sizePolicy".}
proc fcQGraphicsAnchor_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsAnchor_tr2".}
proc fcQGraphicsAnchor_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsAnchor_tr3".}
proc fcQGraphicsAnchor_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsAnchor_trUtf82".}
proc fcQGraphicsAnchor_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsAnchor_trUtf83".}
proc fcQGraphicsAnchor_staticMetaObject(): pointer {.importc: "QGraphicsAnchor_staticMetaObject".}
proc fcQGraphicsAnchor_delete(self: pointer) {.importc: "QGraphicsAnchor_delete".}
proc fcQGraphicsAnchorLayout_new(): ptr cQGraphicsAnchorLayout {.importc: "QGraphicsAnchorLayout_new".}
proc fcQGraphicsAnchorLayout_new2(parent: pointer): ptr cQGraphicsAnchorLayout {.importc: "QGraphicsAnchorLayout_new2".}
proc fcQGraphicsAnchorLayout_addAnchor(self: pointer, firstItem: pointer, firstEdge: cint, secondItem: pointer, secondEdge: cint): pointer {.importc: "QGraphicsAnchorLayout_addAnchor".}
proc fcQGraphicsAnchorLayout_anchor(self: pointer, firstItem: pointer, firstEdge: cint, secondItem: pointer, secondEdge: cint): pointer {.importc: "QGraphicsAnchorLayout_anchor".}
proc fcQGraphicsAnchorLayout_addCornerAnchors(self: pointer, firstItem: pointer, firstCorner: cint, secondItem: pointer, secondCorner: cint): void {.importc: "QGraphicsAnchorLayout_addCornerAnchors".}
proc fcQGraphicsAnchorLayout_addAnchors(self: pointer, firstItem: pointer, secondItem: pointer): void {.importc: "QGraphicsAnchorLayout_addAnchors".}
proc fcQGraphicsAnchorLayout_setHorizontalSpacing(self: pointer, spacing: float64): void {.importc: "QGraphicsAnchorLayout_setHorizontalSpacing".}
proc fcQGraphicsAnchorLayout_setVerticalSpacing(self: pointer, spacing: float64): void {.importc: "QGraphicsAnchorLayout_setVerticalSpacing".}
proc fcQGraphicsAnchorLayout_setSpacing(self: pointer, spacing: float64): void {.importc: "QGraphicsAnchorLayout_setSpacing".}
proc fcQGraphicsAnchorLayout_horizontalSpacing(self: pointer, ): float64 {.importc: "QGraphicsAnchorLayout_horizontalSpacing".}
proc fcQGraphicsAnchorLayout_verticalSpacing(self: pointer, ): float64 {.importc: "QGraphicsAnchorLayout_verticalSpacing".}
proc fcQGraphicsAnchorLayout_removeAt(self: pointer, index: cint): void {.importc: "QGraphicsAnchorLayout_removeAt".}
proc fcQGraphicsAnchorLayout_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsAnchorLayout_setGeometry".}
proc fcQGraphicsAnchorLayout_count(self: pointer, ): cint {.importc: "QGraphicsAnchorLayout_count".}
proc fcQGraphicsAnchorLayout_itemAt(self: pointer, index: cint): pointer {.importc: "QGraphicsAnchorLayout_itemAt".}
proc fcQGraphicsAnchorLayout_invalidate(self: pointer, ): void {.importc: "QGraphicsAnchorLayout_invalidate".}
proc fcQGraphicsAnchorLayout_addAnchors3(self: pointer, firstItem: pointer, secondItem: pointer, orientations: cint): void {.importc: "QGraphicsAnchorLayout_addAnchors3".}
proc fQGraphicsAnchorLayout_virtualbase_removeAt(self: pointer, index: cint): void{.importc: "QGraphicsAnchorLayout_virtualbase_removeAt".}
proc fcQGraphicsAnchorLayout_override_virtual_removeAt(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_removeAt".}
proc fQGraphicsAnchorLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QGraphicsAnchorLayout_virtualbase_setGeometry".}
proc fcQGraphicsAnchorLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_setGeometry".}
proc fQGraphicsAnchorLayout_virtualbase_count(self: pointer, ): cint{.importc: "QGraphicsAnchorLayout_virtualbase_count".}
proc fcQGraphicsAnchorLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_count".}
proc fQGraphicsAnchorLayout_virtualbase_itemAt(self: pointer, index: cint): pointer{.importc: "QGraphicsAnchorLayout_virtualbase_itemAt".}
proc fcQGraphicsAnchorLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_itemAt".}
proc fQGraphicsAnchorLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QGraphicsAnchorLayout_virtualbase_invalidate".}
proc fcQGraphicsAnchorLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_invalidate".}
proc fQGraphicsAnchorLayout_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer{.importc: "QGraphicsAnchorLayout_virtualbase_sizeHint".}
proc fcQGraphicsAnchorLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_sizeHint".}
proc fQGraphicsAnchorLayout_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void{.importc: "QGraphicsAnchorLayout_virtualbase_getContentsMargins".}
proc fcQGraphicsAnchorLayout_override_virtual_getContentsMargins(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_getContentsMargins".}
proc fQGraphicsAnchorLayout_virtualbase_updateGeometry(self: pointer, ): void{.importc: "QGraphicsAnchorLayout_virtualbase_updateGeometry".}
proc fcQGraphicsAnchorLayout_override_virtual_updateGeometry(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_updateGeometry".}
proc fQGraphicsAnchorLayout_virtualbase_widgetEvent(self: pointer, e: pointer): void{.importc: "QGraphicsAnchorLayout_virtualbase_widgetEvent".}
proc fcQGraphicsAnchorLayout_override_virtual_widgetEvent(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_widgetEvent".}
proc fcQGraphicsAnchorLayout_delete(self: pointer) {.importc: "QGraphicsAnchorLayout_delete".}


func init*(T: type gen_qgraphicsanchorlayout_types.QGraphicsAnchor, h: ptr cQGraphicsAnchor): gen_qgraphicsanchorlayout_types.QGraphicsAnchor =
  T(h: h)
proc metaObject*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchor, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsAnchor_metaObject(self.h))

proc metacast*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchor, param1: cstring): pointer =
  fcQGraphicsAnchor_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchor, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsAnchor_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicsanchorlayout_types.QGraphicsAnchor, s: cstring): string =
  let v_ms = fcQGraphicsAnchor_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsanchorlayout_types.QGraphicsAnchor, s: cstring): string =
  let v_ms = fcQGraphicsAnchor_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSpacing*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchor, spacing: float64): void =
  fcQGraphicsAnchor_setSpacing(self.h, spacing)

proc unsetSpacing*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchor, ): void =
  fcQGraphicsAnchor_unsetSpacing(self.h)

proc spacing*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchor, ): float64 =
  fcQGraphicsAnchor_spacing(self.h)

proc setSizePolicy*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchor, policy: cint): void =
  fcQGraphicsAnchor_setSizePolicy(self.h, cint(policy))

proc sizePolicy*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchor, ): cint =
  cint(fcQGraphicsAnchor_sizePolicy(self.h))

proc tr*(_: type gen_qgraphicsanchorlayout_types.QGraphicsAnchor, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsAnchor_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicsanchorlayout_types.QGraphicsAnchor, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsAnchor_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsanchorlayout_types.QGraphicsAnchor, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsAnchor_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsanchorlayout_types.QGraphicsAnchor, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsAnchor_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qgraphicsanchorlayout_types.QGraphicsAnchor): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsAnchor_staticMetaObject())
proc delete*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchor) =
  fcQGraphicsAnchor_delete(self.h)

func init*(T: type gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, h: ptr cQGraphicsAnchorLayout): gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout =
  T(h: h)
proc create*(T: type gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, ): gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout =
  gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout.init(fcQGraphicsAnchorLayout_new())

proc create*(T: type gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout =
  gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout.init(fcQGraphicsAnchorLayout_new2(parent.h))

proc addAnchor*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, firstItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, firstEdge: cint, secondItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, secondEdge: cint): gen_qgraphicsanchorlayout_types.QGraphicsAnchor =
  gen_qgraphicsanchorlayout_types.QGraphicsAnchor(h: fcQGraphicsAnchorLayout_addAnchor(self.h, firstItem.h, cint(firstEdge), secondItem.h, cint(secondEdge)))

proc anchor*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, firstItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, firstEdge: cint, secondItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, secondEdge: cint): gen_qgraphicsanchorlayout_types.QGraphicsAnchor =
  gen_qgraphicsanchorlayout_types.QGraphicsAnchor(h: fcQGraphicsAnchorLayout_anchor(self.h, firstItem.h, cint(firstEdge), secondItem.h, cint(secondEdge)))

proc addCornerAnchors*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, firstItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, firstCorner: cint, secondItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, secondCorner: cint): void =
  fcQGraphicsAnchorLayout_addCornerAnchors(self.h, firstItem.h, cint(firstCorner), secondItem.h, cint(secondCorner))

proc addAnchors*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, firstItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, secondItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): void =
  fcQGraphicsAnchorLayout_addAnchors(self.h, firstItem.h, secondItem.h)

proc setHorizontalSpacing*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, spacing: float64): void =
  fcQGraphicsAnchorLayout_setHorizontalSpacing(self.h, spacing)

proc setVerticalSpacing*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, spacing: float64): void =
  fcQGraphicsAnchorLayout_setVerticalSpacing(self.h, spacing)

proc setSpacing*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, spacing: float64): void =
  fcQGraphicsAnchorLayout_setSpacing(self.h, spacing)

proc horizontalSpacing*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, ): float64 =
  fcQGraphicsAnchorLayout_horizontalSpacing(self.h)

proc verticalSpacing*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, ): float64 =
  fcQGraphicsAnchorLayout_verticalSpacing(self.h)

proc removeAt*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, index: cint): void =
  fcQGraphicsAnchorLayout_removeAt(self.h, index)

proc setGeometry*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsAnchorLayout_setGeometry(self.h, rect.h)

proc count*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, ): cint =
  fcQGraphicsAnchorLayout_count(self.h)

proc itemAt*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, index: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem =
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem(h: fcQGraphicsAnchorLayout_itemAt(self.h, index))

proc invalidate*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, ): void =
  fcQGraphicsAnchorLayout_invalidate(self.h)

proc addAnchors*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, firstItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, secondItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, orientations: cint): void =
  fcQGraphicsAnchorLayout_addAnchors3(self.h, firstItem.h, secondItem.h, cint(orientations))

proc QGraphicsAnchorLayoutremoveAt*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, index: cint): void =
  fQGraphicsAnchorLayout_virtualbase_removeAt(self.h, index)

type QGraphicsAnchorLayoutremoveAtProc* = proc(index: cint): void
proc onremoveAt*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, slot: QGraphicsAnchorLayoutremoveAtProc) =
  # TODO check subclass
  var tmp = new QGraphicsAnchorLayoutremoveAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_removeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_removeAt(self: ptr cQGraphicsAnchorLayout, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_removeAt ".} =
  var nimfunc = cast[ptr QGraphicsAnchorLayoutremoveAtProc](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)
proc QGraphicsAnchorLayoutsetGeometry*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, rect: gen_qrect_types.QRectF): void =
  fQGraphicsAnchorLayout_virtualbase_setGeometry(self.h, rect.h)

type QGraphicsAnchorLayoutsetGeometryProc* = proc(rect: gen_qrect_types.QRectF): void
proc onsetGeometry*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, slot: QGraphicsAnchorLayoutsetGeometryProc) =
  # TODO check subclass
  var tmp = new QGraphicsAnchorLayoutsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_setGeometry(self: ptr cQGraphicsAnchorLayout, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_setGeometry ".} =
  var nimfunc = cast[ptr QGraphicsAnchorLayoutsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: rect)


  nimfunc[](slotval1)
proc QGraphicsAnchorLayoutcount*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, ): cint =
  fQGraphicsAnchorLayout_virtualbase_count(self.h)

type QGraphicsAnchorLayoutcountProc* = proc(): cint
proc oncount*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, slot: QGraphicsAnchorLayoutcountProc) =
  # TODO check subclass
  var tmp = new QGraphicsAnchorLayoutcountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_count(self: ptr cQGraphicsAnchorLayout, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_count ".} =
  var nimfunc = cast[ptr QGraphicsAnchorLayoutcountProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsAnchorLayoutitemAt*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, index: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem =
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem(h: fQGraphicsAnchorLayout_virtualbase_itemAt(self.h, index))

type QGraphicsAnchorLayoutitemAtProc* = proc(index: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem
proc onitemAt*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, slot: QGraphicsAnchorLayoutitemAtProc) =
  # TODO check subclass
  var tmp = new QGraphicsAnchorLayoutitemAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_itemAt(self: ptr cQGraphicsAnchorLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_itemAt ".} =
  var nimfunc = cast[ptr QGraphicsAnchorLayoutitemAtProc](cast[pointer](slot))
  let slotval1 = index


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsAnchorLayoutinvalidate*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, ): void =
  fQGraphicsAnchorLayout_virtualbase_invalidate(self.h)

type QGraphicsAnchorLayoutinvalidateProc* = proc(): void
proc oninvalidate*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, slot: QGraphicsAnchorLayoutinvalidateProc) =
  # TODO check subclass
  var tmp = new QGraphicsAnchorLayoutinvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_invalidate(self: ptr cQGraphicsAnchorLayout, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_invalidate ".} =
  var nimfunc = cast[ptr QGraphicsAnchorLayoutinvalidateProc](cast[pointer](slot))

  nimfunc[]()
proc QGraphicsAnchorLayoutsizeHint*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fQGraphicsAnchorLayout_virtualbase_sizeHint(self.h, cint(which), constraint.h))

type QGraphicsAnchorLayoutsizeHintProc* = proc(which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF
proc onsizeHint*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, slot: QGraphicsAnchorLayoutsizeHintProc) =
  # TODO check subclass
  var tmp = new QGraphicsAnchorLayoutsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_sizeHint(self: ptr cQGraphicsAnchorLayout, slot: int, which: cint, constraint: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_sizeHint ".} =
  var nimfunc = cast[ptr QGraphicsAnchorLayoutsizeHintProc](cast[pointer](slot))
  let slotval1 = cint(which)

  let slotval2 = gen_qsize_types.QSizeF(h: constraint)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGraphicsAnchorLayoutgetContentsMargins*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fQGraphicsAnchorLayout_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

type QGraphicsAnchorLayoutgetContentsMarginsProc* = proc(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
proc ongetContentsMargins*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, slot: QGraphicsAnchorLayoutgetContentsMarginsProc) =
  # TODO check subclass
  var tmp = new QGraphicsAnchorLayoutgetContentsMarginsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_getContentsMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_getContentsMargins(self: ptr cQGraphicsAnchorLayout, slot: int, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_getContentsMargins ".} =
  var nimfunc = cast[ptr QGraphicsAnchorLayoutgetContentsMarginsProc](cast[pointer](slot))
  let slotval1 = left

  let slotval2 = top

  let slotval3 = right

  let slotval4 = bottom


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QGraphicsAnchorLayoutupdateGeometry*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, ): void =
  fQGraphicsAnchorLayout_virtualbase_updateGeometry(self.h)

type QGraphicsAnchorLayoutupdateGeometryProc* = proc(): void
proc onupdateGeometry*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, slot: QGraphicsAnchorLayoutupdateGeometryProc) =
  # TODO check subclass
  var tmp = new QGraphicsAnchorLayoutupdateGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_updateGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_updateGeometry(self: ptr cQGraphicsAnchorLayout, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_updateGeometry ".} =
  var nimfunc = cast[ptr QGraphicsAnchorLayoutupdateGeometryProc](cast[pointer](slot))

  nimfunc[]()
proc QGraphicsAnchorLayoutwidgetEvent*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, e: gen_qcoreevent_types.QEvent): void =
  fQGraphicsAnchorLayout_virtualbase_widgetEvent(self.h, e.h)

type QGraphicsAnchorLayoutwidgetEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onwidgetEvent*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, slot: QGraphicsAnchorLayoutwidgetEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsAnchorLayoutwidgetEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_widgetEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_widgetEvent(self: ptr cQGraphicsAnchorLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_widgetEvent ".} =
  var nimfunc = cast[ptr QGraphicsAnchorLayoutwidgetEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc delete*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout) =
  fcQGraphicsAnchorLayout_delete(self.h)
