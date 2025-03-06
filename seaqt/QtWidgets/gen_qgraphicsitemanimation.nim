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
{.compile("gen_qgraphicsitemanimation.cpp", cflags).}


import ./gen_qgraphicsitemanimation_types
export gen_qgraphicsitemanimation_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qtimeline_types,
  ../QtGui/gen_qmatrix_types,
  ../QtGui/gen_qtransform_types,
  ./gen_qgraphicsitem_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qtimeline_types,
  gen_qmatrix_types,
  gen_qtransform_types,
  gen_qgraphicsitem_types

type cQGraphicsItemAnimation*{.exportc: "QGraphicsItemAnimation", incompleteStruct.} = object

proc fcQGraphicsItemAnimation_metaObject(self: pointer, ): pointer {.importc: "QGraphicsItemAnimation_metaObject".}
proc fcQGraphicsItemAnimation_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsItemAnimation_metacast".}
proc fcQGraphicsItemAnimation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsItemAnimation_metacall".}
proc fcQGraphicsItemAnimation_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsItemAnimation_tr".}
proc fcQGraphicsItemAnimation_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsItemAnimation_trUtf8".}
proc fcQGraphicsItemAnimation_item(self: pointer, ): pointer {.importc: "QGraphicsItemAnimation_item".}
proc fcQGraphicsItemAnimation_setItem(self: pointer, item: pointer): void {.importc: "QGraphicsItemAnimation_setItem".}
proc fcQGraphicsItemAnimation_timeLine(self: pointer, ): pointer {.importc: "QGraphicsItemAnimation_timeLine".}
proc fcQGraphicsItemAnimation_setTimeLine(self: pointer, timeLine: pointer): void {.importc: "QGraphicsItemAnimation_setTimeLine".}
proc fcQGraphicsItemAnimation_posAt(self: pointer, step: float64): pointer {.importc: "QGraphicsItemAnimation_posAt".}
proc fcQGraphicsItemAnimation_posList(self: pointer, ): struct_miqt_array {.importc: "QGraphicsItemAnimation_posList".}
proc fcQGraphicsItemAnimation_setPosAt(self: pointer, step: float64, pos: pointer): void {.importc: "QGraphicsItemAnimation_setPosAt".}
proc fcQGraphicsItemAnimation_matrixAt(self: pointer, step: float64): pointer {.importc: "QGraphicsItemAnimation_matrixAt".}
proc fcQGraphicsItemAnimation_transformAt(self: pointer, step: float64): pointer {.importc: "QGraphicsItemAnimation_transformAt".}
proc fcQGraphicsItemAnimation_rotationAt(self: pointer, step: float64): float64 {.importc: "QGraphicsItemAnimation_rotationAt".}
proc fcQGraphicsItemAnimation_rotationList(self: pointer, ): struct_miqt_array {.importc: "QGraphicsItemAnimation_rotationList".}
proc fcQGraphicsItemAnimation_setRotationAt(self: pointer, step: float64, angle: float64): void {.importc: "QGraphicsItemAnimation_setRotationAt".}
proc fcQGraphicsItemAnimation_xTranslationAt(self: pointer, step: float64): float64 {.importc: "QGraphicsItemAnimation_xTranslationAt".}
proc fcQGraphicsItemAnimation_yTranslationAt(self: pointer, step: float64): float64 {.importc: "QGraphicsItemAnimation_yTranslationAt".}
proc fcQGraphicsItemAnimation_translationList(self: pointer, ): struct_miqt_array {.importc: "QGraphicsItemAnimation_translationList".}
proc fcQGraphicsItemAnimation_setTranslationAt(self: pointer, step: float64, dx: float64, dy: float64): void {.importc: "QGraphicsItemAnimation_setTranslationAt".}
proc fcQGraphicsItemAnimation_verticalScaleAt(self: pointer, step: float64): float64 {.importc: "QGraphicsItemAnimation_verticalScaleAt".}
proc fcQGraphicsItemAnimation_horizontalScaleAt(self: pointer, step: float64): float64 {.importc: "QGraphicsItemAnimation_horizontalScaleAt".}
proc fcQGraphicsItemAnimation_scaleList(self: pointer, ): struct_miqt_array {.importc: "QGraphicsItemAnimation_scaleList".}
proc fcQGraphicsItemAnimation_setScaleAt(self: pointer, step: float64, sx: float64, sy: float64): void {.importc: "QGraphicsItemAnimation_setScaleAt".}
proc fcQGraphicsItemAnimation_verticalShearAt(self: pointer, step: float64): float64 {.importc: "QGraphicsItemAnimation_verticalShearAt".}
proc fcQGraphicsItemAnimation_horizontalShearAt(self: pointer, step: float64): float64 {.importc: "QGraphicsItemAnimation_horizontalShearAt".}
proc fcQGraphicsItemAnimation_shearList(self: pointer, ): struct_miqt_array {.importc: "QGraphicsItemAnimation_shearList".}
proc fcQGraphicsItemAnimation_setShearAt(self: pointer, step: float64, sh: float64, sv: float64): void {.importc: "QGraphicsItemAnimation_setShearAt".}
proc fcQGraphicsItemAnimation_clear(self: pointer, ): void {.importc: "QGraphicsItemAnimation_clear".}
proc fcQGraphicsItemAnimation_setStep(self: pointer, x: float64): void {.importc: "QGraphicsItemAnimation_setStep".}
proc fcQGraphicsItemAnimation_reset(self: pointer, ): void {.importc: "QGraphicsItemAnimation_reset".}
proc fcQGraphicsItemAnimation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsItemAnimation_tr2".}
proc fcQGraphicsItemAnimation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsItemAnimation_tr3".}
proc fcQGraphicsItemAnimation_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsItemAnimation_trUtf82".}
proc fcQGraphicsItemAnimation_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsItemAnimation_trUtf83".}
type cQGraphicsItemAnimationVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsItemAnimationVTable, self: ptr cQGraphicsItemAnimation) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  beforeAnimationStep*: proc(vtbl, self: pointer, step: float64): void {.cdecl, raises: [], gcsafe.}
  afterAnimationStep*: proc(vtbl, self: pointer, step: float64): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsItemAnimation_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsItemAnimation_virtualbase_metaObject".}
proc fcQGraphicsItemAnimation_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsItemAnimation_virtualbase_metacast".}
proc fcQGraphicsItemAnimation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsItemAnimation_virtualbase_metacall".}
proc fcQGraphicsItemAnimation_virtualbase_beforeAnimationStep(self: pointer, step: float64): void {.importc: "QGraphicsItemAnimation_virtualbase_beforeAnimationStep".}
proc fcQGraphicsItemAnimation_virtualbase_afterAnimationStep(self: pointer, step: float64): void {.importc: "QGraphicsItemAnimation_virtualbase_afterAnimationStep".}
proc fcQGraphicsItemAnimation_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGraphicsItemAnimation_virtualbase_event".}
proc fcQGraphicsItemAnimation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsItemAnimation_virtualbase_eventFilter".}
proc fcQGraphicsItemAnimation_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemAnimation_virtualbase_timerEvent".}
proc fcQGraphicsItemAnimation_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemAnimation_virtualbase_childEvent".}
proc fcQGraphicsItemAnimation_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsItemAnimation_virtualbase_customEvent".}
proc fcQGraphicsItemAnimation_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsItemAnimation_virtualbase_connectNotify".}
proc fcQGraphicsItemAnimation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsItemAnimation_virtualbase_disconnectNotify".}
proc fcQGraphicsItemAnimation_new(vtbl: pointer, ): ptr cQGraphicsItemAnimation {.importc: "QGraphicsItemAnimation_new".}
proc fcQGraphicsItemAnimation_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsItemAnimation {.importc: "QGraphicsItemAnimation_new2".}
proc fcQGraphicsItemAnimation_staticMetaObject(): pointer {.importc: "QGraphicsItemAnimation_staticMetaObject".}
proc fcQGraphicsItemAnimation_delete(self: pointer) {.importc: "QGraphicsItemAnimation_delete".}

proc metaObject*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsItemAnimation_metaObject(self.h))

proc metacast*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, param1: cstring): pointer =
  fcQGraphicsItemAnimation_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsItemAnimation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, s: cstring): string =
  let v_ms = fcQGraphicsItemAnimation_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, s: cstring): string =
  let v_ms = fcQGraphicsItemAnimation_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc item*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, ): gen_qgraphicsitem_types.QGraphicsItem =
  gen_qgraphicsitem_types.QGraphicsItem(h: fcQGraphicsItemAnimation_item(self.h))

proc setItem*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsItemAnimation_setItem(self.h, item.h)

proc timeLine*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, ): gen_qtimeline_types.QTimeLine =
  gen_qtimeline_types.QTimeLine(h: fcQGraphicsItemAnimation_timeLine(self.h))

proc setTimeLine*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, timeLine: gen_qtimeline_types.QTimeLine): void =
  fcQGraphicsItemAnimation_setTimeLine(self.h, timeLine.h)

proc posAt*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsItemAnimation_posAt(self.h, step))

proc posList*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, ): seq[tuple[first: float64, second: gen_qpoint_types.QPointF]] =
  var v_ma = fcQGraphicsItemAnimation_posList(self.h)
  var vx_ret = newSeq[tuple[first: float64, second: gen_qpoint_types.QPointF]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[float64]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[pointer]](vx_lv_mm.values)
    var vx_lv_entry_First = vx_lv_First_CArray[0]

    var vx_lv_entry_Second = gen_qpoint_types.QPointF(h: vx_lv_Second_CArray[0])

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc setPosAt*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64, pos: gen_qpoint_types.QPointF): void =
  fcQGraphicsItemAnimation_setPosAt(self.h, step, pos.h)

proc matrixAt*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64): gen_qmatrix_types.QMatrix =
  gen_qmatrix_types.QMatrix(h: fcQGraphicsItemAnimation_matrixAt(self.h, step))

proc transformAt*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQGraphicsItemAnimation_transformAt(self.h, step))

proc rotationAt*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64): float64 =
  fcQGraphicsItemAnimation_rotationAt(self.h, step)

proc rotationList*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, ): seq[tuple[first: float64, second: float64]] =
  var v_ma = fcQGraphicsItemAnimation_rotationList(self.h)
  var vx_ret = newSeq[tuple[first: float64, second: float64]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[float64]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[float64]](vx_lv_mm.values)
    var vx_lv_entry_First = vx_lv_First_CArray[0]

    var vx_lv_entry_Second = vx_lv_Second_CArray[0]

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc setRotationAt*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64, angle: float64): void =
  fcQGraphicsItemAnimation_setRotationAt(self.h, step, angle)

proc xTranslationAt*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64): float64 =
  fcQGraphicsItemAnimation_xTranslationAt(self.h, step)

proc yTranslationAt*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64): float64 =
  fcQGraphicsItemAnimation_yTranslationAt(self.h, step)

proc translationList*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, ): seq[tuple[first: float64, second: gen_qpoint_types.QPointF]] =
  var v_ma = fcQGraphicsItemAnimation_translationList(self.h)
  var vx_ret = newSeq[tuple[first: float64, second: gen_qpoint_types.QPointF]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[float64]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[pointer]](vx_lv_mm.values)
    var vx_lv_entry_First = vx_lv_First_CArray[0]

    var vx_lv_entry_Second = gen_qpoint_types.QPointF(h: vx_lv_Second_CArray[0])

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc setTranslationAt*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64, dx: float64, dy: float64): void =
  fcQGraphicsItemAnimation_setTranslationAt(self.h, step, dx, dy)

proc verticalScaleAt*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64): float64 =
  fcQGraphicsItemAnimation_verticalScaleAt(self.h, step)

proc horizontalScaleAt*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64): float64 =
  fcQGraphicsItemAnimation_horizontalScaleAt(self.h, step)

proc scaleList*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, ): seq[tuple[first: float64, second: gen_qpoint_types.QPointF]] =
  var v_ma = fcQGraphicsItemAnimation_scaleList(self.h)
  var vx_ret = newSeq[tuple[first: float64, second: gen_qpoint_types.QPointF]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[float64]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[pointer]](vx_lv_mm.values)
    var vx_lv_entry_First = vx_lv_First_CArray[0]

    var vx_lv_entry_Second = gen_qpoint_types.QPointF(h: vx_lv_Second_CArray[0])

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc setScaleAt*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64, sx: float64, sy: float64): void =
  fcQGraphicsItemAnimation_setScaleAt(self.h, step, sx, sy)

proc verticalShearAt*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64): float64 =
  fcQGraphicsItemAnimation_verticalShearAt(self.h, step)

proc horizontalShearAt*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64): float64 =
  fcQGraphicsItemAnimation_horizontalShearAt(self.h, step)

proc shearList*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, ): seq[tuple[first: float64, second: gen_qpoint_types.QPointF]] =
  var v_ma = fcQGraphicsItemAnimation_shearList(self.h)
  var vx_ret = newSeq[tuple[first: float64, second: gen_qpoint_types.QPointF]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[float64]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[pointer]](vx_lv_mm.values)
    var vx_lv_entry_First = vx_lv_First_CArray[0]

    var vx_lv_entry_Second = gen_qpoint_types.QPointF(h: vx_lv_Second_CArray[0])

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc setShearAt*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64, sh: float64, sv: float64): void =
  fcQGraphicsItemAnimation_setShearAt(self.h, step, sh, sv)

proc clear*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, ): void =
  fcQGraphicsItemAnimation_clear(self.h)

proc setStep*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, x: float64): void =
  fcQGraphicsItemAnimation_setStep(self.h, x)

proc reset*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, ): void =
  fcQGraphicsItemAnimation_reset(self.h)

proc tr*(_: type gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsItemAnimation_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsItemAnimation_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsItemAnimation_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsItemAnimation_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QGraphicsItemAnimationmetaObjectProc* = proc(self: QGraphicsItemAnimation): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsItemAnimationmetacastProc* = proc(self: QGraphicsItemAnimation, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsItemAnimationmetacallProc* = proc(self: QGraphicsItemAnimation, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsItemAnimationbeforeAnimationStepProc* = proc(self: QGraphicsItemAnimation, step: float64): void {.raises: [], gcsafe.}
type QGraphicsItemAnimationafterAnimationStepProc* = proc(self: QGraphicsItemAnimation, step: float64): void {.raises: [], gcsafe.}
type QGraphicsItemAnimationeventProc* = proc(self: QGraphicsItemAnimation, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsItemAnimationeventFilterProc* = proc(self: QGraphicsItemAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsItemAnimationtimerEventProc* = proc(self: QGraphicsItemAnimation, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsItemAnimationchildEventProc* = proc(self: QGraphicsItemAnimation, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsItemAnimationcustomEventProc* = proc(self: QGraphicsItemAnimation, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsItemAnimationconnectNotifyProc* = proc(self: QGraphicsItemAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsItemAnimationdisconnectNotifyProc* = proc(self: QGraphicsItemAnimation, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsItemAnimationVTable* = object
  vtbl: cQGraphicsItemAnimationVTable
  metaObject*: QGraphicsItemAnimationmetaObjectProc
  metacast*: QGraphicsItemAnimationmetacastProc
  metacall*: QGraphicsItemAnimationmetacallProc
  beforeAnimationStep*: QGraphicsItemAnimationbeforeAnimationStepProc
  afterAnimationStep*: QGraphicsItemAnimationafterAnimationStepProc
  event*: QGraphicsItemAnimationeventProc
  eventFilter*: QGraphicsItemAnimationeventFilterProc
  timerEvent*: QGraphicsItemAnimationtimerEventProc
  childEvent*: QGraphicsItemAnimationchildEventProc
  customEvent*: QGraphicsItemAnimationcustomEventProc
  connectNotify*: QGraphicsItemAnimationconnectNotifyProc
  disconnectNotify*: QGraphicsItemAnimationdisconnectNotifyProc
proc QGraphicsItemAnimationmetaObject*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsItemAnimation_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGraphicsItemAnimation_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemAnimationVTable](vtbl)
  let self = QGraphicsItemAnimation(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGraphicsItemAnimationmetacast*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, param1: cstring): pointer =
  fcQGraphicsItemAnimation_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsItemAnimation_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemAnimationVTable](vtbl)
  let self = QGraphicsItemAnimation(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsItemAnimationmetacall*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsItemAnimation_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsItemAnimation_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemAnimationVTable](vtbl)
  let self = QGraphicsItemAnimation(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsItemAnimationbeforeAnimationStep*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64): void =
  fcQGraphicsItemAnimation_virtualbase_beforeAnimationStep(self.h, step)

proc miqt_exec_callback_cQGraphicsItemAnimation_beforeAnimationStep(vtbl: pointer, self: pointer, step: float64): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemAnimationVTable](vtbl)
  let self = QGraphicsItemAnimation(h: self)
  let slotval1 = step
  vtbl[].beforeAnimationStep(self, slotval1)

proc QGraphicsItemAnimationafterAnimationStep*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64): void =
  fcQGraphicsItemAnimation_virtualbase_afterAnimationStep(self.h, step)

proc miqt_exec_callback_cQGraphicsItemAnimation_afterAnimationStep(vtbl: pointer, self: pointer, step: float64): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemAnimationVTable](vtbl)
  let self = QGraphicsItemAnimation(h: self)
  let slotval1 = step
  vtbl[].afterAnimationStep(self, slotval1)

proc QGraphicsItemAnimationevent*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsItemAnimation_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemAnimation_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemAnimationVTable](vtbl)
  let self = QGraphicsItemAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsItemAnimationeventFilter*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsItemAnimation_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsItemAnimation_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemAnimationVTable](vtbl)
  let self = QGraphicsItemAnimation(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsItemAnimationtimerEvent*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsItemAnimation_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemAnimation_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemAnimationVTable](vtbl)
  let self = QGraphicsItemAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsItemAnimationchildEvent*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsItemAnimation_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemAnimation_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemAnimationVTable](vtbl)
  let self = QGraphicsItemAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsItemAnimationcustomEvent*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsItemAnimation_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsItemAnimation_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemAnimationVTable](vtbl)
  let self = QGraphicsItemAnimation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsItemAnimationconnectNotify*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsItemAnimation_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsItemAnimation_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemAnimationVTable](vtbl)
  let self = QGraphicsItemAnimation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsItemAnimationdisconnectNotify*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsItemAnimation_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsItemAnimation_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsItemAnimationVTable](vtbl)
  let self = QGraphicsItemAnimation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qgraphicsitemanimation_types.QGraphicsItemAnimation,
    vtbl: ref QGraphicsItemAnimationVTable = nil): gen_qgraphicsitemanimation_types.QGraphicsItemAnimation =
  let vtbl = if vtbl == nil: new QGraphicsItemAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsItemAnimationVTable, _: ptr cQGraphicsItemAnimation) {.cdecl.} =
    let vtbl = cast[ref QGraphicsItemAnimationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsItemAnimation_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsItemAnimation_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsItemAnimation_metacall
  if not isNil(vtbl.beforeAnimationStep):
    vtbl[].vtbl.beforeAnimationStep = miqt_exec_callback_cQGraphicsItemAnimation_beforeAnimationStep
  if not isNil(vtbl.afterAnimationStep):
    vtbl[].vtbl.afterAnimationStep = miqt_exec_callback_cQGraphicsItemAnimation_afterAnimationStep
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsItemAnimation_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsItemAnimation_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsItemAnimation_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsItemAnimation_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsItemAnimation_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsItemAnimation_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsItemAnimation_disconnectNotify
  gen_qgraphicsitemanimation_types.QGraphicsItemAnimation(h: fcQGraphicsItemAnimation_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicsitemanimation_types.QGraphicsItemAnimation,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsItemAnimationVTable = nil): gen_qgraphicsitemanimation_types.QGraphicsItemAnimation =
  let vtbl = if vtbl == nil: new QGraphicsItemAnimationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsItemAnimationVTable, _: ptr cQGraphicsItemAnimation) {.cdecl.} =
    let vtbl = cast[ref QGraphicsItemAnimationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsItemAnimation_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsItemAnimation_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsItemAnimation_metacall
  if not isNil(vtbl.beforeAnimationStep):
    vtbl[].vtbl.beforeAnimationStep = miqt_exec_callback_cQGraphicsItemAnimation_beforeAnimationStep
  if not isNil(vtbl.afterAnimationStep):
    vtbl[].vtbl.afterAnimationStep = miqt_exec_callback_cQGraphicsItemAnimation_afterAnimationStep
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsItemAnimation_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsItemAnimation_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsItemAnimation_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsItemAnimation_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsItemAnimation_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsItemAnimation_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsItemAnimation_disconnectNotify
  gen_qgraphicsitemanimation_types.QGraphicsItemAnimation(h: fcQGraphicsItemAnimation_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgraphicsitemanimation_types.QGraphicsItemAnimation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsItemAnimation_staticMetaObject())
proc delete*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation) =
  fcQGraphicsItemAnimation_delete(self.h)
