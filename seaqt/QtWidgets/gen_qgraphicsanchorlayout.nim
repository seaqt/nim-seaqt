import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
{.compile("gen_qgraphicsanchorlayout.cpp", cflags).}


import ./gen_qgraphicsanchorlayout_types
export gen_qgraphicsanchorlayout_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qgraphicsitem_types,
  ./gen_qgraphicslayout,
  ./gen_qgraphicslayoutitem_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qgraphicsitem_types,
  gen_qgraphicslayout,
  gen_qgraphicslayoutitem_types

type cQGraphicsAnchor*{.exportc: "QGraphicsAnchor", incompleteStruct.} = object
type cQGraphicsAnchorLayout*{.exportc: "QGraphicsAnchorLayout", incompleteStruct.} = object

proc fcQGraphicsAnchor_metaObject(self: pointer, ): pointer {.importc: "QGraphicsAnchor_metaObject".}
proc fcQGraphicsAnchor_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsAnchor_metacast".}
proc fcQGraphicsAnchor_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsAnchor_metacall".}
proc fcQGraphicsAnchor_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsAnchor_tr".}
proc fcQGraphicsAnchor_setSpacing(self: pointer, spacing: float64): void {.importc: "QGraphicsAnchor_setSpacing".}
proc fcQGraphicsAnchor_unsetSpacing(self: pointer, ): void {.importc: "QGraphicsAnchor_unsetSpacing".}
proc fcQGraphicsAnchor_spacing(self: pointer, ): float64 {.importc: "QGraphicsAnchor_spacing".}
proc fcQGraphicsAnchor_setSizePolicy(self: pointer, policy: cint): void {.importc: "QGraphicsAnchor_setSizePolicy".}
proc fcQGraphicsAnchor_sizePolicy(self: pointer, ): cint {.importc: "QGraphicsAnchor_sizePolicy".}
proc fcQGraphicsAnchor_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsAnchor_tr2".}
proc fcQGraphicsAnchor_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsAnchor_tr3".}
proc fcQGraphicsAnchor_protectedbase_sender(self: pointer, ): pointer {.importc: "QGraphicsAnchor_protectedbase_sender".}
proc fcQGraphicsAnchor_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGraphicsAnchor_protectedbase_senderSignalIndex".}
proc fcQGraphicsAnchor_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsAnchor_protectedbase_receivers".}
proc fcQGraphicsAnchor_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsAnchor_protectedbase_isSignalConnected".}
proc fcQGraphicsAnchor_staticMetaObject(): pointer {.importc: "QGraphicsAnchor_staticMetaObject".}
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
type cQGraphicsAnchorLayoutVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQGraphicsAnchorLayoutVTable, self: ptr cQGraphicsAnchorLayout) {.cdecl, raises:[], gcsafe.}
  removeAt*: proc(vtbl, self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(vtbl, self: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  count*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  itemAt*: proc(vtbl, self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, which: cint, constraint: pointer): pointer {.cdecl, raises: [], gcsafe.}
  getContentsMargins*: proc(vtbl, self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl, raises: [], gcsafe.}
  updateGeometry*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  widgetEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsAnchorLayout_virtualbase_removeAt(self: pointer, index: cint): void {.importc: "QGraphicsAnchorLayout_virtualbase_removeAt".}
proc fcQGraphicsAnchorLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsAnchorLayout_virtualbase_setGeometry".}
proc fcQGraphicsAnchorLayout_virtualbase_count(self: pointer, ): cint {.importc: "QGraphicsAnchorLayout_virtualbase_count".}
proc fcQGraphicsAnchorLayout_virtualbase_itemAt(self: pointer, index: cint): pointer {.importc: "QGraphicsAnchorLayout_virtualbase_itemAt".}
proc fcQGraphicsAnchorLayout_virtualbase_invalidate(self: pointer, ): void {.importc: "QGraphicsAnchorLayout_virtualbase_invalidate".}
proc fcQGraphicsAnchorLayout_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.importc: "QGraphicsAnchorLayout_virtualbase_sizeHint".}
proc fcQGraphicsAnchorLayout_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsAnchorLayout_virtualbase_getContentsMargins".}
proc fcQGraphicsAnchorLayout_virtualbase_updateGeometry(self: pointer, ): void {.importc: "QGraphicsAnchorLayout_virtualbase_updateGeometry".}
proc fcQGraphicsAnchorLayout_virtualbase_widgetEvent(self: pointer, e: pointer): void {.importc: "QGraphicsAnchorLayout_virtualbase_widgetEvent".}
proc fcQGraphicsAnchorLayout_virtualbase_isEmpty(self: pointer, ): bool {.importc: "QGraphicsAnchorLayout_virtualbase_isEmpty".}
proc fcQGraphicsAnchorLayout_protectedbase_addChildLayoutItem(self: pointer, layoutItem: pointer): void {.importc: "QGraphicsAnchorLayout_protectedbase_addChildLayoutItem".}
proc fcQGraphicsAnchorLayout_protectedbase_setGraphicsItem(self: pointer, item: pointer): void {.importc: "QGraphicsAnchorLayout_protectedbase_setGraphicsItem".}
proc fcQGraphicsAnchorLayout_protectedbase_setOwnedByLayout(self: pointer, ownedByLayout: bool): void {.importc: "QGraphicsAnchorLayout_protectedbase_setOwnedByLayout".}
proc fcQGraphicsAnchorLayout_new(vtbl: pointer, ): ptr cQGraphicsAnchorLayout {.importc: "QGraphicsAnchorLayout_new".}
proc fcQGraphicsAnchorLayout_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsAnchorLayout {.importc: "QGraphicsAnchorLayout_new2".}

proc metaObject*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchor, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsAnchor_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchor, param1: cstring): pointer =
  fcQGraphicsAnchor_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchor, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsAnchor_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicsanchorlayout_types.QGraphicsAnchor, s: cstring): string =
  let v_ms = fcQGraphicsAnchor_tr(s)
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

proc sender*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchor, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsAnchor_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchor, ): cint =
  fcQGraphicsAnchor_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchor, signal: cstring): cint =
  fcQGraphicsAnchor_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchor, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsAnchor_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qgraphicsanchorlayout_types.QGraphicsAnchor): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsAnchor_staticMetaObject())
proc addAnchor*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, firstItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, firstEdge: cint, secondItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, secondEdge: cint): gen_qgraphicsanchorlayout_types.QGraphicsAnchor =
  gen_qgraphicsanchorlayout_types.QGraphicsAnchor(h: fcQGraphicsAnchorLayout_addAnchor(self.h, firstItem.h, cint(firstEdge), secondItem.h, cint(secondEdge)), owned: false)

proc anchor*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, firstItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, firstEdge: cint, secondItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, secondEdge: cint): gen_qgraphicsanchorlayout_types.QGraphicsAnchor =
  gen_qgraphicsanchorlayout_types.QGraphicsAnchor(h: fcQGraphicsAnchorLayout_anchor(self.h, firstItem.h, cint(firstEdge), secondItem.h, cint(secondEdge)), owned: false)

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
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem(h: fcQGraphicsAnchorLayout_itemAt(self.h, index), owned: false)

proc invalidate*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, ): void =
  fcQGraphicsAnchorLayout_invalidate(self.h)

proc addAnchors*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, firstItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, secondItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, orientations: cint): void =
  fcQGraphicsAnchorLayout_addAnchors3(self.h, firstItem.h, secondItem.h, cint(orientations))

type QGraphicsAnchorLayoutremoveAtProc* = proc(self: QGraphicsAnchorLayout, index: cint): void {.raises: [], gcsafe.}
type QGraphicsAnchorLayoutsetGeometryProc* = proc(self: QGraphicsAnchorLayout, rect: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QGraphicsAnchorLayoutcountProc* = proc(self: QGraphicsAnchorLayout): cint {.raises: [], gcsafe.}
type QGraphicsAnchorLayoutitemAtProc* = proc(self: QGraphicsAnchorLayout, index: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem {.raises: [], gcsafe.}
type QGraphicsAnchorLayoutinvalidateProc* = proc(self: QGraphicsAnchorLayout): void {.raises: [], gcsafe.}
type QGraphicsAnchorLayoutsizeHintProc* = proc(self: QGraphicsAnchorLayout, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF {.raises: [], gcsafe.}
type QGraphicsAnchorLayoutgetContentsMarginsProc* = proc(self: QGraphicsAnchorLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.raises: [], gcsafe.}
type QGraphicsAnchorLayoutupdateGeometryProc* = proc(self: QGraphicsAnchorLayout): void {.raises: [], gcsafe.}
type QGraphicsAnchorLayoutwidgetEventProc* = proc(self: QGraphicsAnchorLayout, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsAnchorLayoutisEmptyProc* = proc(self: QGraphicsAnchorLayout): bool {.raises: [], gcsafe.}
type QGraphicsAnchorLayoutVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsAnchorLayoutVTable
  removeAt*: QGraphicsAnchorLayoutremoveAtProc
  setGeometry*: QGraphicsAnchorLayoutsetGeometryProc
  count*: QGraphicsAnchorLayoutcountProc
  itemAt*: QGraphicsAnchorLayoutitemAtProc
  invalidate*: QGraphicsAnchorLayoutinvalidateProc
  sizeHint*: QGraphicsAnchorLayoutsizeHintProc
  getContentsMargins*: QGraphicsAnchorLayoutgetContentsMarginsProc
  updateGeometry*: QGraphicsAnchorLayoutupdateGeometryProc
  widgetEvent*: QGraphicsAnchorLayoutwidgetEventProc
  isEmpty*: QGraphicsAnchorLayoutisEmptyProc
proc QGraphicsAnchorLayoutremoveAt*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, index: cint): void =
  fcQGraphicsAnchorLayout_virtualbase_removeAt(self.h, index)

proc miqt_exec_callback_cQGraphicsAnchorLayout_removeAt(vtbl: pointer, self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsAnchorLayoutVTable](vtbl)
  let self = QGraphicsAnchorLayout(h: self)
  let slotval1 = index
  vtbl[].removeAt(self, slotval1)

proc QGraphicsAnchorLayoutsetGeometry*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsAnchorLayout_virtualbase_setGeometry(self.h, rect.h)

proc miqt_exec_callback_cQGraphicsAnchorLayout_setGeometry(vtbl: pointer, self: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsAnchorLayoutVTable](vtbl)
  let self = QGraphicsAnchorLayout(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc QGraphicsAnchorLayoutcount*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, ): cint =
  fcQGraphicsAnchorLayout_virtualbase_count(self.h)

proc miqt_exec_callback_cQGraphicsAnchorLayout_count(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsAnchorLayoutVTable](vtbl)
  let self = QGraphicsAnchorLayout(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc QGraphicsAnchorLayoutitemAt*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, index: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem =
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem(h: fcQGraphicsAnchorLayout_virtualbase_itemAt(self.h, index), owned: false)

proc miqt_exec_callback_cQGraphicsAnchorLayout_itemAt(vtbl: pointer, self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsAnchorLayoutVTable](vtbl)
  let self = QGraphicsAnchorLayout(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsAnchorLayoutinvalidate*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, ): void =
  fcQGraphicsAnchorLayout_virtualbase_invalidate(self.h)

proc miqt_exec_callback_cQGraphicsAnchorLayout_invalidate(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsAnchorLayoutVTable](vtbl)
  let self = QGraphicsAnchorLayout(h: self)
  vtbl[].invalidate(self)

proc QGraphicsAnchorLayoutsizeHint*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsAnchorLayout_virtualbase_sizeHint(self.h, cint(which), constraint.h), owned: true)

proc miqt_exec_callback_cQGraphicsAnchorLayout_sizeHint(vtbl: pointer, self: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsAnchorLayoutVTable](vtbl)
  let self = QGraphicsAnchorLayout(h: self)
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint, owned: false)
  var virtualReturn = vtbl[].sizeHint(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsAnchorLayoutgetContentsMargins*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fcQGraphicsAnchorLayout_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

proc miqt_exec_callback_cQGraphicsAnchorLayout_getContentsMargins(vtbl: pointer, self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsAnchorLayoutVTable](vtbl)
  let self = QGraphicsAnchorLayout(h: self)
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  vtbl[].getContentsMargins(self, slotval1, slotval2, slotval3, slotval4)

proc QGraphicsAnchorLayoutupdateGeometry*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, ): void =
  fcQGraphicsAnchorLayout_virtualbase_updateGeometry(self.h)

proc miqt_exec_callback_cQGraphicsAnchorLayout_updateGeometry(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsAnchorLayoutVTable](vtbl)
  let self = QGraphicsAnchorLayout(h: self)
  vtbl[].updateGeometry(self)

proc QGraphicsAnchorLayoutwidgetEvent*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, e: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsAnchorLayout_virtualbase_widgetEvent(self.h, e.h)

proc miqt_exec_callback_cQGraphicsAnchorLayout_widgetEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsAnchorLayoutVTable](vtbl)
  let self = QGraphicsAnchorLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].widgetEvent(self, slotval1)

proc QGraphicsAnchorLayoutisEmpty*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, ): bool =
  fcQGraphicsAnchorLayout_virtualbase_isEmpty(self.h)

proc miqt_exec_callback_cQGraphicsAnchorLayout_isEmpty(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsAnchorLayoutVTable](vtbl)
  let self = QGraphicsAnchorLayout(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

type VirtualQGraphicsAnchorLayout* {.inheritable.} = ref object of QGraphicsAnchorLayout
  vtbl*: cQGraphicsAnchorLayoutVTable
method removeAt*(self: VirtualQGraphicsAnchorLayout, index: cint): void {.base.} =
  QGraphicsAnchorLayoutremoveAt(self[], index)
proc miqt_exec_method_cQGraphicsAnchorLayout_removeAt(vtbl: pointer, inst: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsAnchorLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsAnchorLayout, vtbl)))
  let slotval1 = index
  vtbl.removeAt(slotval1)

method setGeometry*(self: VirtualQGraphicsAnchorLayout, rect: gen_qrect_types.QRectF): void {.base.} =
  QGraphicsAnchorLayoutsetGeometry(self[], rect)
proc miqt_exec_method_cQGraphicsAnchorLayout_setGeometry(vtbl: pointer, inst: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsAnchorLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsAnchorLayout, vtbl)))
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  vtbl.setGeometry(slotval1)

method count*(self: VirtualQGraphicsAnchorLayout, ): cint {.base.} =
  QGraphicsAnchorLayoutcount(self[])
proc miqt_exec_method_cQGraphicsAnchorLayout_count(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsAnchorLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsAnchorLayout, vtbl)))
  var virtualReturn = vtbl.count()
  virtualReturn

method itemAt*(self: VirtualQGraphicsAnchorLayout, index: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem {.base.} =
  QGraphicsAnchorLayoutitemAt(self[], index)
proc miqt_exec_method_cQGraphicsAnchorLayout_itemAt(vtbl: pointer, inst: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsAnchorLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsAnchorLayout, vtbl)))
  let slotval1 = index
  var virtualReturn = vtbl.itemAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method invalidate*(self: VirtualQGraphicsAnchorLayout, ): void {.base.} =
  QGraphicsAnchorLayoutinvalidate(self[])
proc miqt_exec_method_cQGraphicsAnchorLayout_invalidate(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsAnchorLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsAnchorLayout, vtbl)))
  vtbl.invalidate()

method sizeHint*(self: VirtualQGraphicsAnchorLayout, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF {.base.} =
  QGraphicsAnchorLayoutsizeHint(self[], which, constraint)
proc miqt_exec_method_cQGraphicsAnchorLayout_sizeHint(vtbl: pointer, inst: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsAnchorLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsAnchorLayout, vtbl)))
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint, owned: false)
  var virtualReturn = vtbl.sizeHint(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method getContentsMargins*(self: VirtualQGraphicsAnchorLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.base.} =
  QGraphicsAnchorLayoutgetContentsMargins(self[], left, top, right, bottom)
proc miqt_exec_method_cQGraphicsAnchorLayout_getContentsMargins(vtbl: pointer, inst: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsAnchorLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsAnchorLayout, vtbl)))
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  vtbl.getContentsMargins(slotval1, slotval2, slotval3, slotval4)

method updateGeometry*(self: VirtualQGraphicsAnchorLayout, ): void {.base.} =
  QGraphicsAnchorLayoutupdateGeometry(self[])
proc miqt_exec_method_cQGraphicsAnchorLayout_updateGeometry(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsAnchorLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsAnchorLayout, vtbl)))
  vtbl.updateGeometry()

method widgetEvent*(self: VirtualQGraphicsAnchorLayout, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsAnchorLayoutwidgetEvent(self[], e)
proc miqt_exec_method_cQGraphicsAnchorLayout_widgetEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsAnchorLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsAnchorLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl.widgetEvent(slotval1)

method isEmpty*(self: VirtualQGraphicsAnchorLayout, ): bool {.base.} =
  QGraphicsAnchorLayoutisEmpty(self[])
proc miqt_exec_method_cQGraphicsAnchorLayout_isEmpty(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsAnchorLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsAnchorLayout, vtbl)))
  var virtualReturn = vtbl.isEmpty()
  virtualReturn

proc addChildLayoutItem*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, layoutItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): void =
  fcQGraphicsAnchorLayout_protectedbase_addChildLayoutItem(self.h, layoutItem.h)

proc setGraphicsItem*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsAnchorLayout_protectedbase_setGraphicsItem(self.h, item.h)

proc setOwnedByLayout*(self: gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout, ownedByLayout: bool): void =
  fcQGraphicsAnchorLayout_protectedbase_setOwnedByLayout(self.h, ownedByLayout)

proc create*(T: type gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout,
    vtbl: ref QGraphicsAnchorLayoutVTable = nil): gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout =
  let vtbl = if vtbl == nil: new QGraphicsAnchorLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsAnchorLayoutVTable, _: ptr cQGraphicsAnchorLayout) {.cdecl.} =
    let vtbl = cast[ref QGraphicsAnchorLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].removeAt):
    vtbl[].vtbl.removeAt = miqt_exec_callback_cQGraphicsAnchorLayout_removeAt
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsAnchorLayout_setGeometry
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = miqt_exec_callback_cQGraphicsAnchorLayout_count
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQGraphicsAnchorLayout_itemAt
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQGraphicsAnchorLayout_invalidate
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsAnchorLayout_sizeHint
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsAnchorLayout_getContentsMargins
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsAnchorLayout_updateGeometry
  if not isNil(vtbl[].widgetEvent):
    vtbl[].vtbl.widgetEvent = miqt_exec_callback_cQGraphicsAnchorLayout_widgetEvent
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQGraphicsAnchorLayout_isEmpty
  gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout(h: fcQGraphicsAnchorLayout_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout,
    parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem,
    vtbl: ref QGraphicsAnchorLayoutVTable = nil): gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout =
  let vtbl = if vtbl == nil: new QGraphicsAnchorLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsAnchorLayoutVTable, _: ptr cQGraphicsAnchorLayout) {.cdecl.} =
    let vtbl = cast[ref QGraphicsAnchorLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].removeAt):
    vtbl[].vtbl.removeAt = miqt_exec_callback_cQGraphicsAnchorLayout_removeAt
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsAnchorLayout_setGeometry
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = miqt_exec_callback_cQGraphicsAnchorLayout_count
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQGraphicsAnchorLayout_itemAt
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQGraphicsAnchorLayout_invalidate
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsAnchorLayout_sizeHint
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsAnchorLayout_getContentsMargins
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsAnchorLayout_updateGeometry
  if not isNil(vtbl[].widgetEvent):
    vtbl[].vtbl.widgetEvent = miqt_exec_callback_cQGraphicsAnchorLayout_widgetEvent
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQGraphicsAnchorLayout_isEmpty
  gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout(h: fcQGraphicsAnchorLayout_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout,
    vtbl: VirtualQGraphicsAnchorLayout) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsAnchorLayoutVTable, _: ptr cQGraphicsAnchorLayout) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsAnchorLayout()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsAnchorLayout, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.removeAt = miqt_exec_method_cQGraphicsAnchorLayout_removeAt
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQGraphicsAnchorLayout_setGeometry
  vtbl[].vtbl.count = miqt_exec_method_cQGraphicsAnchorLayout_count
  vtbl[].vtbl.itemAt = miqt_exec_method_cQGraphicsAnchorLayout_itemAt
  vtbl[].vtbl.invalidate = miqt_exec_method_cQGraphicsAnchorLayout_invalidate
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQGraphicsAnchorLayout_sizeHint
  vtbl[].vtbl.getContentsMargins = miqt_exec_method_cQGraphicsAnchorLayout_getContentsMargins
  vtbl[].vtbl.updateGeometry = miqt_exec_method_cQGraphicsAnchorLayout_updateGeometry
  vtbl[].vtbl.widgetEvent = miqt_exec_method_cQGraphicsAnchorLayout_widgetEvent
  vtbl[].vtbl.isEmpty = miqt_exec_method_cQGraphicsAnchorLayout_isEmpty
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsAnchorLayout_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qgraphicsanchorlayout_types.QGraphicsAnchorLayout,
    parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem,
    vtbl: VirtualQGraphicsAnchorLayout) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsAnchorLayoutVTable, _: ptr cQGraphicsAnchorLayout) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsAnchorLayout()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsAnchorLayout, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.removeAt = miqt_exec_method_cQGraphicsAnchorLayout_removeAt
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQGraphicsAnchorLayout_setGeometry
  vtbl[].vtbl.count = miqt_exec_method_cQGraphicsAnchorLayout_count
  vtbl[].vtbl.itemAt = miqt_exec_method_cQGraphicsAnchorLayout_itemAt
  vtbl[].vtbl.invalidate = miqt_exec_method_cQGraphicsAnchorLayout_invalidate
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQGraphicsAnchorLayout_sizeHint
  vtbl[].vtbl.getContentsMargins = miqt_exec_method_cQGraphicsAnchorLayout_getContentsMargins
  vtbl[].vtbl.updateGeometry = miqt_exec_method_cQGraphicsAnchorLayout_updateGeometry
  vtbl[].vtbl.widgetEvent = miqt_exec_method_cQGraphicsAnchorLayout_widgetEvent
  vtbl[].vtbl.isEmpty = miqt_exec_method_cQGraphicsAnchorLayout_isEmpty
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsAnchorLayout_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

