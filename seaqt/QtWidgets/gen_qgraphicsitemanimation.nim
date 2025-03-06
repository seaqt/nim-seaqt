import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
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
  ../QtGui/gen_qtransform_types,
  ./gen_qgraphicsitem_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qtimeline_types,
  gen_qtransform_types,
  gen_qgraphicsitem_types

type cQGraphicsItemAnimation*{.exportc: "QGraphicsItemAnimation", incompleteStruct.} = object

proc fcQGraphicsItemAnimation_new(): ptr cQGraphicsItemAnimation {.importc: "QGraphicsItemAnimation_new".}
proc fcQGraphicsItemAnimation_new2(parent: pointer): ptr cQGraphicsItemAnimation {.importc: "QGraphicsItemAnimation_new2".}
proc fcQGraphicsItemAnimation_metaObject(self: pointer, ): pointer {.importc: "QGraphicsItemAnimation_metaObject".}
proc fcQGraphicsItemAnimation_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsItemAnimation_metacast".}
proc fcQGraphicsItemAnimation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsItemAnimation_metacall".}
proc fcQGraphicsItemAnimation_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsItemAnimation_tr".}
proc fcQGraphicsItemAnimation_item(self: pointer, ): pointer {.importc: "QGraphicsItemAnimation_item".}
proc fcQGraphicsItemAnimation_setItem(self: pointer, item: pointer): void {.importc: "QGraphicsItemAnimation_setItem".}
proc fcQGraphicsItemAnimation_timeLine(self: pointer, ): pointer {.importc: "QGraphicsItemAnimation_timeLine".}
proc fcQGraphicsItemAnimation_setTimeLine(self: pointer, timeLine: pointer): void {.importc: "QGraphicsItemAnimation_setTimeLine".}
proc fcQGraphicsItemAnimation_posAt(self: pointer, step: float64): pointer {.importc: "QGraphicsItemAnimation_posAt".}
proc fcQGraphicsItemAnimation_posList(self: pointer, ): struct_miqt_array {.importc: "QGraphicsItemAnimation_posList".}
proc fcQGraphicsItemAnimation_setPosAt(self: pointer, step: float64, pos: pointer): void {.importc: "QGraphicsItemAnimation_setPosAt".}
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
proc fcQGraphicsItemAnimation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsItemAnimation_tr2".}
proc fcQGraphicsItemAnimation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsItemAnimation_tr3".}
proc fQGraphicsItemAnimation_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGraphicsItemAnimation_virtualbase_metaObject".}
proc fcQGraphicsItemAnimation_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_metaObject".}
proc fQGraphicsItemAnimation_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGraphicsItemAnimation_virtualbase_metacast".}
proc fcQGraphicsItemAnimation_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_metacast".}
proc fQGraphicsItemAnimation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsItemAnimation_virtualbase_metacall".}
proc fcQGraphicsItemAnimation_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_metacall".}
proc fQGraphicsItemAnimation_virtualbase_beforeAnimationStep(self: pointer, step: float64): void{.importc: "QGraphicsItemAnimation_virtualbase_beforeAnimationStep".}
proc fcQGraphicsItemAnimation_override_virtual_beforeAnimationStep(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_beforeAnimationStep".}
proc fQGraphicsItemAnimation_virtualbase_afterAnimationStep(self: pointer, step: float64): void{.importc: "QGraphicsItemAnimation_virtualbase_afterAnimationStep".}
proc fcQGraphicsItemAnimation_override_virtual_afterAnimationStep(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_afterAnimationStep".}
proc fQGraphicsItemAnimation_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsItemAnimation_virtualbase_event".}
proc fcQGraphicsItemAnimation_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_event".}
proc fQGraphicsItemAnimation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsItemAnimation_virtualbase_eventFilter".}
proc fcQGraphicsItemAnimation_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_eventFilter".}
proc fQGraphicsItemAnimation_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemAnimation_virtualbase_timerEvent".}
proc fcQGraphicsItemAnimation_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_timerEvent".}
proc fQGraphicsItemAnimation_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemAnimation_virtualbase_childEvent".}
proc fcQGraphicsItemAnimation_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_childEvent".}
proc fQGraphicsItemAnimation_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemAnimation_virtualbase_customEvent".}
proc fcQGraphicsItemAnimation_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_customEvent".}
proc fQGraphicsItemAnimation_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsItemAnimation_virtualbase_connectNotify".}
proc fcQGraphicsItemAnimation_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_connectNotify".}
proc fQGraphicsItemAnimation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsItemAnimation_virtualbase_disconnectNotify".}
proc fcQGraphicsItemAnimation_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_disconnectNotify".}
proc fcQGraphicsItemAnimation_staticMetaObject(): pointer {.importc: "QGraphicsItemAnimation_staticMetaObject".}
proc fcQGraphicsItemAnimation_delete(self: pointer) {.importc: "QGraphicsItemAnimation_delete".}


func init*(T: type gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, h: ptr cQGraphicsItemAnimation): gen_qgraphicsitemanimation_types.QGraphicsItemAnimation =
  T(h: h)
proc create*(T: type gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, ): gen_qgraphicsitemanimation_types.QGraphicsItemAnimation =
  gen_qgraphicsitemanimation_types.QGraphicsItemAnimation.init(fcQGraphicsItemAnimation_new())

proc create*(T: type gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, parent: gen_qobject_types.QObject): gen_qgraphicsitemanimation_types.QGraphicsItemAnimation =
  gen_qgraphicsitemanimation_types.QGraphicsItemAnimation.init(fcQGraphicsItemAnimation_new2(parent.h))

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

proc QGraphicsItemAnimationmetaObject*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQGraphicsItemAnimation_virtualbase_metaObject(self.h))

type QGraphicsItemAnimationmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, slot: QGraphicsItemAnimationmetaObjectProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemAnimationmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_metaObject(self: ptr cQGraphicsItemAnimation, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_metaObject ".} =
  var nimfunc = cast[ptr QGraphicsItemAnimationmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsItemAnimationmetacast*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, param1: cstring): pointer =
  fQGraphicsItemAnimation_virtualbase_metacast(self.h, param1)

type QGraphicsItemAnimationmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, slot: QGraphicsItemAnimationmetacastProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemAnimationmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_metacast(self: ptr cQGraphicsItemAnimation, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_metacast ".} =
  var nimfunc = cast[ptr QGraphicsItemAnimationmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsItemAnimationmetacall*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, param1: cint, param2: cint, param3: pointer): cint =
  fQGraphicsItemAnimation_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsItemAnimationmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, slot: QGraphicsItemAnimationmetacallProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemAnimationmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_metacall(self: ptr cQGraphicsItemAnimation, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_metacall ".} =
  var nimfunc = cast[ptr QGraphicsItemAnimationmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QGraphicsItemAnimationbeforeAnimationStep*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64): void =
  fQGraphicsItemAnimation_virtualbase_beforeAnimationStep(self.h, step)

type QGraphicsItemAnimationbeforeAnimationStepProc* = proc(step: float64): void
proc onbeforeAnimationStep*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, slot: QGraphicsItemAnimationbeforeAnimationStepProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemAnimationbeforeAnimationStepProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_beforeAnimationStep(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_beforeAnimationStep(self: ptr cQGraphicsItemAnimation, slot: int, step: float64): void {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_beforeAnimationStep ".} =
  var nimfunc = cast[ptr QGraphicsItemAnimationbeforeAnimationStepProc](cast[pointer](slot))
  let slotval1 = step


  nimfunc[](slotval1)
proc QGraphicsItemAnimationafterAnimationStep*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, step: float64): void =
  fQGraphicsItemAnimation_virtualbase_afterAnimationStep(self.h, step)

type QGraphicsItemAnimationafterAnimationStepProc* = proc(step: float64): void
proc onafterAnimationStep*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, slot: QGraphicsItemAnimationafterAnimationStepProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemAnimationafterAnimationStepProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_afterAnimationStep(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_afterAnimationStep(self: ptr cQGraphicsItemAnimation, slot: int, step: float64): void {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_afterAnimationStep ".} =
  var nimfunc = cast[ptr QGraphicsItemAnimationafterAnimationStepProc](cast[pointer](slot))
  let slotval1 = step


  nimfunc[](slotval1)
proc QGraphicsItemAnimationevent*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsItemAnimation_virtualbase_event(self.h, event.h)

type QGraphicsItemAnimationeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, slot: QGraphicsItemAnimationeventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemAnimationeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_event(self: ptr cQGraphicsItemAnimation, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_event ".} =
  var nimfunc = cast[ptr QGraphicsItemAnimationeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsItemAnimationeventFilter*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsItemAnimation_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsItemAnimationeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, slot: QGraphicsItemAnimationeventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemAnimationeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_eventFilter(self: ptr cQGraphicsItemAnimation, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsItemAnimationeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsItemAnimationtimerEvent*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGraphicsItemAnimation_virtualbase_timerEvent(self.h, event.h)

type QGraphicsItemAnimationtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, slot: QGraphicsItemAnimationtimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemAnimationtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_timerEvent(self: ptr cQGraphicsItemAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemAnimationtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemAnimationchildEvent*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, event: gen_qcoreevent_types.QChildEvent): void =
  fQGraphicsItemAnimation_virtualbase_childEvent(self.h, event.h)

type QGraphicsItemAnimationchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, slot: QGraphicsItemAnimationchildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemAnimationchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_childEvent(self: ptr cQGraphicsItemAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemAnimationchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemAnimationcustomEvent*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsItemAnimation_virtualbase_customEvent(self.h, event.h)

type QGraphicsItemAnimationcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, slot: QGraphicsItemAnimationcustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemAnimationcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_customEvent(self: ptr cQGraphicsItemAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsItemAnimationcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsItemAnimationconnectNotify*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsItemAnimation_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsItemAnimationconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, slot: QGraphicsItemAnimationconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemAnimationconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_connectNotify(self: ptr cQGraphicsItemAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsItemAnimationconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsItemAnimationdisconnectNotify*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsItemAnimation_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsItemAnimationdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation, slot: QGraphicsItemAnimationdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsItemAnimationdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_disconnectNotify(self: ptr cQGraphicsItemAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsItemAnimationdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qgraphicsitemanimation_types.QGraphicsItemAnimation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsItemAnimation_staticMetaObject())
proc delete*(self: gen_qgraphicsitemanimation_types.QGraphicsItemAnimation) =
  fcQGraphicsItemAnimation_delete(self.h)
