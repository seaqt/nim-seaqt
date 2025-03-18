import ./qtspatialaudio_pkg

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


{.compile("gen_qaudioroom.cpp", QtSpatialAudioCFlags).}


type QAudioRoomMaterialEnum* = distinct cint
template Transparent*(_: type QAudioRoomMaterialEnum): untyped = 0
template AcousticCeilingTiles*(_: type QAudioRoomMaterialEnum): untyped = 1
template BrickBare*(_: type QAudioRoomMaterialEnum): untyped = 2
template BrickPainted*(_: type QAudioRoomMaterialEnum): untyped = 3
template ConcreteBlockCoarse*(_: type QAudioRoomMaterialEnum): untyped = 4
template ConcreteBlockPainted*(_: type QAudioRoomMaterialEnum): untyped = 5
template CurtainHeavy*(_: type QAudioRoomMaterialEnum): untyped = 6
template FiberGlassInsulation*(_: type QAudioRoomMaterialEnum): untyped = 7
template GlassThin*(_: type QAudioRoomMaterialEnum): untyped = 8
template GlassThick*(_: type QAudioRoomMaterialEnum): untyped = 9
template Grass*(_: type QAudioRoomMaterialEnum): untyped = 10
template LinoleumOnConcrete*(_: type QAudioRoomMaterialEnum): untyped = 11
template Marble*(_: type QAudioRoomMaterialEnum): untyped = 12
template Metal*(_: type QAudioRoomMaterialEnum): untyped = 13
template ParquetOnConcrete*(_: type QAudioRoomMaterialEnum): untyped = 14
template PlasterRough*(_: type QAudioRoomMaterialEnum): untyped = 15
template PlasterSmooth*(_: type QAudioRoomMaterialEnum): untyped = 16
template PlywoodPanel*(_: type QAudioRoomMaterialEnum): untyped = 17
template PolishedConcreteOrTile*(_: type QAudioRoomMaterialEnum): untyped = 18
template Sheetrock*(_: type QAudioRoomMaterialEnum): untyped = 19
template WaterOrIceSurface*(_: type QAudioRoomMaterialEnum): untyped = 20
template WoodCeiling*(_: type QAudioRoomMaterialEnum): untyped = 21
template WoodPanel*(_: type QAudioRoomMaterialEnum): untyped = 22
template UniformMaterial*(_: type QAudioRoomMaterialEnum): untyped = 23


type QAudioRoomWallEnum* = distinct cint
template LeftWall*(_: type QAudioRoomWallEnum): untyped = 0
template RightWall*(_: type QAudioRoomWallEnum): untyped = 1
template Floor*(_: type QAudioRoomWallEnum): untyped = 2
template Ceiling*(_: type QAudioRoomWallEnum): untyped = 3
template FrontWall*(_: type QAudioRoomWallEnum): untyped = 4
template BackWall*(_: type QAudioRoomWallEnum): untyped = 5


import ./gen_qaudioroom_types
export gen_qaudioroom_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtGui/gen_qquaternion_types,
  ../QtGui/gen_qvectornd_types,
  ./gen_qaudioengine_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qquaternion_types,
  gen_qvectornd_types,
  gen_qaudioengine_types

type cQAudioRoom*{.exportc: "QAudioRoom", incompleteStruct.} = object

proc fcQAudioRoom_metaObject(self: pointer): pointer {.importc: "QAudioRoom_metaObject".}
proc fcQAudioRoom_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioRoom_metacast".}
proc fcQAudioRoom_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioRoom_metacall".}
proc fcQAudioRoom_tr(s: cstring): struct_miqt_string {.importc: "QAudioRoom_tr".}
proc fcQAudioRoom_setPosition(self: pointer, pos: pointer): void {.importc: "QAudioRoom_setPosition".}
proc fcQAudioRoom_position(self: pointer): pointer {.importc: "QAudioRoom_position".}
proc fcQAudioRoom_setDimensions(self: pointer, dim: pointer): void {.importc: "QAudioRoom_setDimensions".}
proc fcQAudioRoom_dimensions(self: pointer): pointer {.importc: "QAudioRoom_dimensions".}
proc fcQAudioRoom_setRotation(self: pointer, q: pointer): void {.importc: "QAudioRoom_setRotation".}
proc fcQAudioRoom_rotation(self: pointer): pointer {.importc: "QAudioRoom_rotation".}
proc fcQAudioRoom_setWallMaterial(self: pointer, wall: cint, material: cint): void {.importc: "QAudioRoom_setWallMaterial".}
proc fcQAudioRoom_wallMaterial(self: pointer, wall: cint): cint {.importc: "QAudioRoom_wallMaterial".}
proc fcQAudioRoom_setReflectionGain(self: pointer, factor: float32): void {.importc: "QAudioRoom_setReflectionGain".}
proc fcQAudioRoom_reflectionGain(self: pointer): float32 {.importc: "QAudioRoom_reflectionGain".}
proc fcQAudioRoom_setReverbGain(self: pointer, factor: float32): void {.importc: "QAudioRoom_setReverbGain".}
proc fcQAudioRoom_reverbGain(self: pointer): float32 {.importc: "QAudioRoom_reverbGain".}
proc fcQAudioRoom_setReverbTime(self: pointer, factor: float32): void {.importc: "QAudioRoom_setReverbTime".}
proc fcQAudioRoom_reverbTime(self: pointer): float32 {.importc: "QAudioRoom_reverbTime".}
proc fcQAudioRoom_setReverbBrightness(self: pointer, factor: float32): void {.importc: "QAudioRoom_setReverbBrightness".}
proc fcQAudioRoom_reverbBrightness(self: pointer): float32 {.importc: "QAudioRoom_reverbBrightness".}
proc fcQAudioRoom_positionChanged(self: pointer): void {.importc: "QAudioRoom_positionChanged".}
proc fcQAudioRoom_connect_positionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRoom_connect_positionChanged".}
proc fcQAudioRoom_dimensionsChanged(self: pointer): void {.importc: "QAudioRoom_dimensionsChanged".}
proc fcQAudioRoom_connect_dimensionsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRoom_connect_dimensionsChanged".}
proc fcQAudioRoom_rotationChanged(self: pointer): void {.importc: "QAudioRoom_rotationChanged".}
proc fcQAudioRoom_connect_rotationChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRoom_connect_rotationChanged".}
proc fcQAudioRoom_wallsChanged(self: pointer): void {.importc: "QAudioRoom_wallsChanged".}
proc fcQAudioRoom_connect_wallsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRoom_connect_wallsChanged".}
proc fcQAudioRoom_reflectionGainChanged(self: pointer): void {.importc: "QAudioRoom_reflectionGainChanged".}
proc fcQAudioRoom_connect_reflectionGainChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRoom_connect_reflectionGainChanged".}
proc fcQAudioRoom_reverbGainChanged(self: pointer): void {.importc: "QAudioRoom_reverbGainChanged".}
proc fcQAudioRoom_connect_reverbGainChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRoom_connect_reverbGainChanged".}
proc fcQAudioRoom_reverbTimeChanged(self: pointer): void {.importc: "QAudioRoom_reverbTimeChanged".}
proc fcQAudioRoom_connect_reverbTimeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRoom_connect_reverbTimeChanged".}
proc fcQAudioRoom_reverbBrightnessChanged(self: pointer): void {.importc: "QAudioRoom_reverbBrightnessChanged".}
proc fcQAudioRoom_connect_reverbBrightnessChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRoom_connect_reverbBrightnessChanged".}
proc fcQAudioRoom_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioRoom_tr2".}
proc fcQAudioRoom_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioRoom_tr3".}
proc fcQAudioRoom_vtbl(self: pointer): pointer {.importc: "QAudioRoom_vtbl".}
proc fcQAudioRoom_vdata(self: pointer): pointer {.importc: "QAudioRoom_vdata".}

type cQAudioRoomVTable {.pure.} = object
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
proc fcQAudioRoom_virtualbase_metaObject(self: pointer): pointer {.importc: "QAudioRoom_virtualbase_metaObject".}
proc fcQAudioRoom_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioRoom_virtualbase_metacast".}
proc fcQAudioRoom_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioRoom_virtualbase_metacall".}
proc fcQAudioRoom_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioRoom_virtualbase_event".}
proc fcQAudioRoom_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioRoom_virtualbase_eventFilter".}
proc fcQAudioRoom_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioRoom_virtualbase_timerEvent".}
proc fcQAudioRoom_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioRoom_virtualbase_childEvent".}
proc fcQAudioRoom_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioRoom_virtualbase_customEvent".}
proc fcQAudioRoom_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioRoom_virtualbase_connectNotify".}
proc fcQAudioRoom_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioRoom_virtualbase_disconnectNotify".}
proc fcQAudioRoom_protectedbase_sender(self: pointer): pointer {.importc: "QAudioRoom_protectedbase_sender".}
proc fcQAudioRoom_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAudioRoom_protectedbase_senderSignalIndex".}
proc fcQAudioRoom_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioRoom_protectedbase_receivers".}
proc fcQAudioRoom_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioRoom_protectedbase_isSignalConnected".}
proc fcQAudioRoom_new(vtbl, vdata: pointer, engine: pointer): ptr cQAudioRoom {.importc: "QAudioRoom_new".}
proc fcQAudioRoom_staticMetaObject(): pointer {.importc: "QAudioRoom_staticMetaObject".}

proc metaObject*(self: gen_qaudioroom_types.QAudioRoom): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioRoom_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaudioroom_types.QAudioRoom, param1: cstring): pointer =
  fcQAudioRoom_metacast(self.h, param1)

proc metacall*(self: gen_qaudioroom_types.QAudioRoom, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioRoom_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudioroom_types.QAudioRoom, s: cstring): string =
  let v_ms = fcQAudioRoom_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPosition*(self: gen_qaudioroom_types.QAudioRoom, pos: gen_qvectornd_types.QVector3D): void =
  fcQAudioRoom_setPosition(self.h, pos.h)

proc position*(self: gen_qaudioroom_types.QAudioRoom): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQAudioRoom_position(self.h), owned: true)

proc setDimensions*(self: gen_qaudioroom_types.QAudioRoom, dim: gen_qvectornd_types.QVector3D): void =
  fcQAudioRoom_setDimensions(self.h, dim.h)

proc dimensions*(self: gen_qaudioroom_types.QAudioRoom): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQAudioRoom_dimensions(self.h), owned: true)

proc setRotation*(self: gen_qaudioroom_types.QAudioRoom, q: gen_qquaternion_types.QQuaternion): void =
  fcQAudioRoom_setRotation(self.h, q.h)

proc rotation*(self: gen_qaudioroom_types.QAudioRoom): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQAudioRoom_rotation(self.h), owned: true)

proc setWallMaterial*(self: gen_qaudioroom_types.QAudioRoom, wall: cint, material: cint): void =
  fcQAudioRoom_setWallMaterial(self.h, cint(wall), cint(material))

proc wallMaterial*(self: gen_qaudioroom_types.QAudioRoom, wall: cint): cint =
  cint(fcQAudioRoom_wallMaterial(self.h, cint(wall)))

proc setReflectionGain*(self: gen_qaudioroom_types.QAudioRoom, factor: float32): void =
  fcQAudioRoom_setReflectionGain(self.h, factor)

proc reflectionGain*(self: gen_qaudioroom_types.QAudioRoom): float32 =
  fcQAudioRoom_reflectionGain(self.h)

proc setReverbGain*(self: gen_qaudioroom_types.QAudioRoom, factor: float32): void =
  fcQAudioRoom_setReverbGain(self.h, factor)

proc reverbGain*(self: gen_qaudioroom_types.QAudioRoom): float32 =
  fcQAudioRoom_reverbGain(self.h)

proc setReverbTime*(self: gen_qaudioroom_types.QAudioRoom, factor: float32): void =
  fcQAudioRoom_setReverbTime(self.h, factor)

proc reverbTime*(self: gen_qaudioroom_types.QAudioRoom): float32 =
  fcQAudioRoom_reverbTime(self.h)

proc setReverbBrightness*(self: gen_qaudioroom_types.QAudioRoom, factor: float32): void =
  fcQAudioRoom_setReverbBrightness(self.h, factor)

proc reverbBrightness*(self: gen_qaudioroom_types.QAudioRoom): float32 =
  fcQAudioRoom_reverbBrightness(self.h)

proc positionChanged*(self: gen_qaudioroom_types.QAudioRoom): void =
  fcQAudioRoom_positionChanged(self.h)

type QAudioRoompositionChangedSlot* = proc()
proc fcQAudioRoom_slot_callback_positionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRoompositionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAudioRoom_slot_callback_positionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRoompositionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPositionChanged*(self: gen_qaudioroom_types.QAudioRoom, slot: QAudioRoompositionChangedSlot) =
  var tmp = new QAudioRoompositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_connect_positionChanged(self.h, cast[int](addr tmp[]), fcQAudioRoom_slot_callback_positionChanged, fcQAudioRoom_slot_callback_positionChanged_release)

proc dimensionsChanged*(self: gen_qaudioroom_types.QAudioRoom): void =
  fcQAudioRoom_dimensionsChanged(self.h)

type QAudioRoomdimensionsChangedSlot* = proc()
proc fcQAudioRoom_slot_callback_dimensionsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRoomdimensionsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAudioRoom_slot_callback_dimensionsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRoomdimensionsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onDimensionsChanged*(self: gen_qaudioroom_types.QAudioRoom, slot: QAudioRoomdimensionsChangedSlot) =
  var tmp = new QAudioRoomdimensionsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_connect_dimensionsChanged(self.h, cast[int](addr tmp[]), fcQAudioRoom_slot_callback_dimensionsChanged, fcQAudioRoom_slot_callback_dimensionsChanged_release)

proc rotationChanged*(self: gen_qaudioroom_types.QAudioRoom): void =
  fcQAudioRoom_rotationChanged(self.h)

type QAudioRoomrotationChangedSlot* = proc()
proc fcQAudioRoom_slot_callback_rotationChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRoomrotationChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAudioRoom_slot_callback_rotationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRoomrotationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRotationChanged*(self: gen_qaudioroom_types.QAudioRoom, slot: QAudioRoomrotationChangedSlot) =
  var tmp = new QAudioRoomrotationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_connect_rotationChanged(self.h, cast[int](addr tmp[]), fcQAudioRoom_slot_callback_rotationChanged, fcQAudioRoom_slot_callback_rotationChanged_release)

proc wallsChanged*(self: gen_qaudioroom_types.QAudioRoom): void =
  fcQAudioRoom_wallsChanged(self.h)

type QAudioRoomwallsChangedSlot* = proc()
proc fcQAudioRoom_slot_callback_wallsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRoomwallsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAudioRoom_slot_callback_wallsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRoomwallsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onWallsChanged*(self: gen_qaudioroom_types.QAudioRoom, slot: QAudioRoomwallsChangedSlot) =
  var tmp = new QAudioRoomwallsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_connect_wallsChanged(self.h, cast[int](addr tmp[]), fcQAudioRoom_slot_callback_wallsChanged, fcQAudioRoom_slot_callback_wallsChanged_release)

proc reflectionGainChanged*(self: gen_qaudioroom_types.QAudioRoom): void =
  fcQAudioRoom_reflectionGainChanged(self.h)

type QAudioRoomreflectionGainChangedSlot* = proc()
proc fcQAudioRoom_slot_callback_reflectionGainChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRoomreflectionGainChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAudioRoom_slot_callback_reflectionGainChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRoomreflectionGainChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onReflectionGainChanged*(self: gen_qaudioroom_types.QAudioRoom, slot: QAudioRoomreflectionGainChangedSlot) =
  var tmp = new QAudioRoomreflectionGainChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_connect_reflectionGainChanged(self.h, cast[int](addr tmp[]), fcQAudioRoom_slot_callback_reflectionGainChanged, fcQAudioRoom_slot_callback_reflectionGainChanged_release)

proc reverbGainChanged*(self: gen_qaudioroom_types.QAudioRoom): void =
  fcQAudioRoom_reverbGainChanged(self.h)

type QAudioRoomreverbGainChangedSlot* = proc()
proc fcQAudioRoom_slot_callback_reverbGainChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRoomreverbGainChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAudioRoom_slot_callback_reverbGainChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRoomreverbGainChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onReverbGainChanged*(self: gen_qaudioroom_types.QAudioRoom, slot: QAudioRoomreverbGainChangedSlot) =
  var tmp = new QAudioRoomreverbGainChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_connect_reverbGainChanged(self.h, cast[int](addr tmp[]), fcQAudioRoom_slot_callback_reverbGainChanged, fcQAudioRoom_slot_callback_reverbGainChanged_release)

proc reverbTimeChanged*(self: gen_qaudioroom_types.QAudioRoom): void =
  fcQAudioRoom_reverbTimeChanged(self.h)

type QAudioRoomreverbTimeChangedSlot* = proc()
proc fcQAudioRoom_slot_callback_reverbTimeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRoomreverbTimeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAudioRoom_slot_callback_reverbTimeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRoomreverbTimeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onReverbTimeChanged*(self: gen_qaudioroom_types.QAudioRoom, slot: QAudioRoomreverbTimeChangedSlot) =
  var tmp = new QAudioRoomreverbTimeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_connect_reverbTimeChanged(self.h, cast[int](addr tmp[]), fcQAudioRoom_slot_callback_reverbTimeChanged, fcQAudioRoom_slot_callback_reverbTimeChanged_release)

proc reverbBrightnessChanged*(self: gen_qaudioroom_types.QAudioRoom): void =
  fcQAudioRoom_reverbBrightnessChanged(self.h)

type QAudioRoomreverbBrightnessChangedSlot* = proc()
proc fcQAudioRoom_slot_callback_reverbBrightnessChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRoomreverbBrightnessChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAudioRoom_slot_callback_reverbBrightnessChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRoomreverbBrightnessChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onReverbBrightnessChanged*(self: gen_qaudioroom_types.QAudioRoom, slot: QAudioRoomreverbBrightnessChangedSlot) =
  var tmp = new QAudioRoomreverbBrightnessChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_connect_reverbBrightnessChanged(self.h, cast[int](addr tmp[]), fcQAudioRoom_slot_callback_reverbBrightnessChanged, fcQAudioRoom_slot_callback_reverbBrightnessChanged_release)

proc tr*(_: type gen_qaudioroom_types.QAudioRoom, s: cstring, c: cstring): string =
  let v_ms = fcQAudioRoom_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudioroom_types.QAudioRoom, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioRoom_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAudioRoommetaObjectProc* = proc(self: QAudioRoom): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAudioRoommetacastProc* = proc(self: QAudioRoom, param1: cstring): pointer {.raises: [], gcsafe.}
type QAudioRoommetacallProc* = proc(self: QAudioRoom, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAudioRoomeventProc* = proc(self: QAudioRoom, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioRoomeventFilterProc* = proc(self: QAudioRoom, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioRoomtimerEventProc* = proc(self: QAudioRoom, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAudioRoomchildEventProc* = proc(self: QAudioRoom, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAudioRoomcustomEventProc* = proc(self: QAudioRoom, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAudioRoomconnectNotifyProc* = proc(self: QAudioRoom, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioRoomdisconnectNotifyProc* = proc(self: QAudioRoom, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QAudioRoomVTable* {.inheritable, pure.} = object
  vtbl: cQAudioRoomVTable
  metaObject*: QAudioRoommetaObjectProc
  metacast*: QAudioRoommetacastProc
  metacall*: QAudioRoommetacallProc
  event*: QAudioRoomeventProc
  eventFilter*: QAudioRoomeventFilterProc
  timerEvent*: QAudioRoomtimerEventProc
  childEvent*: QAudioRoomchildEventProc
  customEvent*: QAudioRoomcustomEventProc
  connectNotify*: QAudioRoomconnectNotifyProc
  disconnectNotify*: QAudioRoomdisconnectNotifyProc

proc QAudioRoommetaObject*(self: gen_qaudioroom_types.QAudioRoom): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioRoom_virtualbase_metaObject(self.h), owned: false)

proc QAudioRoommetacast*(self: gen_qaudioroom_types.QAudioRoom, param1: cstring): pointer =
  fcQAudioRoom_virtualbase_metacast(self.h, param1)

proc QAudioRoommetacall*(self: gen_qaudioroom_types.QAudioRoom, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioRoom_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QAudioRoomevent*(self: gen_qaudioroom_types.QAudioRoom, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioRoom_virtualbase_event(self.h, event.h)

proc QAudioRoomeventFilter*(self: gen_qaudioroom_types.QAudioRoom, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioRoom_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QAudioRoomtimerEvent*(self: gen_qaudioroom_types.QAudioRoom, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioRoom_virtualbase_timerEvent(self.h, event.h)

proc QAudioRoomchildEvent*(self: gen_qaudioroom_types.QAudioRoom, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioRoom_virtualbase_childEvent(self.h, event.h)

proc QAudioRoomcustomEvent*(self: gen_qaudioroom_types.QAudioRoom, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioRoom_virtualbase_customEvent(self.h, event.h)

proc QAudioRoomconnectNotify*(self: gen_qaudioroom_types.QAudioRoom, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioRoom_virtualbase_connectNotify(self.h, signal.h)

proc QAudioRoomdisconnectNotify*(self: gen_qaudioroom_types.QAudioRoom, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioRoom_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQAudioRoom_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](fcQAudioRoom_vdata(self))
  let self = QAudioRoom(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioRoom_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](fcQAudioRoom_vdata(self))
  let self = QAudioRoom(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQAudioRoom_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](fcQAudioRoom_vdata(self))
  let self = QAudioRoom(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioRoom_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](fcQAudioRoom_vdata(self))
  let self = QAudioRoom(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQAudioRoom_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](fcQAudioRoom_vdata(self))
  let self = QAudioRoom(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQAudioRoom_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](fcQAudioRoom_vdata(self))
  let self = QAudioRoom(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQAudioRoom_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](fcQAudioRoom_vdata(self))
  let self = QAudioRoom(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQAudioRoom_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](fcQAudioRoom_vdata(self))
  let self = QAudioRoom(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQAudioRoom_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](fcQAudioRoom_vdata(self))
  let self = QAudioRoom(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQAudioRoom_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](fcQAudioRoom_vdata(self))
  let self = QAudioRoom(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAudioRoom* {.inheritable.} = ref object of QAudioRoom
  vtbl*: cQAudioRoomVTable

method metaObject*(self: VirtualQAudioRoom): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAudioRoommetaObject(self[])
method metacast*(self: VirtualQAudioRoom, param1: cstring): pointer {.base.} =
  QAudioRoommetacast(self[], param1)
method metacall*(self: VirtualQAudioRoom, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAudioRoommetacall(self[], param1, param2, param3)
method event*(self: VirtualQAudioRoom, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioRoomevent(self[], event)
method eventFilter*(self: VirtualQAudioRoom, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioRoomeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQAudioRoom, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAudioRoomtimerEvent(self[], event)
method childEvent*(self: VirtualQAudioRoom, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAudioRoomchildEvent(self[], event)
method customEvent*(self: VirtualQAudioRoom, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAudioRoomcustomEvent(self[], event)
method connectNotify*(self: VirtualQAudioRoom, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioRoomconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQAudioRoom, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioRoomdisconnectNotify(self[], signal)

proc fcQAudioRoom_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioRoom](fcQAudioRoom_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioRoom_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioRoom](fcQAudioRoom_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQAudioRoom_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAudioRoom](fcQAudioRoom_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioRoom_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioRoom](fcQAudioRoom_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQAudioRoom_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioRoom](fcQAudioRoom_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQAudioRoom_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioRoom](fcQAudioRoom_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQAudioRoom_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioRoom](fcQAudioRoom_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQAudioRoom_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioRoom](fcQAudioRoom_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQAudioRoom_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioRoom](fcQAudioRoom_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQAudioRoom_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioRoom](fcQAudioRoom_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qaudioroom_types.QAudioRoom): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioRoom_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaudioroom_types.QAudioRoom): cint =
  fcQAudioRoom_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudioroom_types.QAudioRoom, signal: cstring): cint =
  fcQAudioRoom_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudioroom_types.QAudioRoom, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioRoom_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaudioroom_types.QAudioRoom,
    engine: gen_qaudioengine_types.QAudioEngine,
    vtbl: ref QAudioRoomVTable = nil): gen_qaudioroom_types.QAudioRoom =
  let vtbl = if vtbl == nil: new QAudioRoomVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioRoomVTable](fcQAudioRoom_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioRoom_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioRoom_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioRoom_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioRoom_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioRoom_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioRoom_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioRoom_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioRoom_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioRoom_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioRoom_vtable_callback_disconnectNotify
  gen_qaudioroom_types.QAudioRoom(h: fcQAudioRoom_new(addr(vtbl[].vtbl), addr(vtbl[]), engine.h), owned: true)

const cQAudioRoom_mvtbl = cQAudioRoomVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAudioRoom()[])](self.fcQAudioRoom_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQAudioRoom_method_callback_metaObject,
  metacast: fcQAudioRoom_method_callback_metacast,
  metacall: fcQAudioRoom_method_callback_metacall,
  event: fcQAudioRoom_method_callback_event,
  eventFilter: fcQAudioRoom_method_callback_eventFilter,
  timerEvent: fcQAudioRoom_method_callback_timerEvent,
  childEvent: fcQAudioRoom_method_callback_childEvent,
  customEvent: fcQAudioRoom_method_callback_customEvent,
  connectNotify: fcQAudioRoom_method_callback_connectNotify,
  disconnectNotify: fcQAudioRoom_method_callback_disconnectNotify,
)
proc create*(T: type gen_qaudioroom_types.QAudioRoom,
    engine: gen_qaudioengine_types.QAudioEngine,
    inst: VirtualQAudioRoom) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioRoom_new(addr(cQAudioRoom_mvtbl), addr(inst[]), engine.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qaudioroom_types.QAudioRoom): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioRoom_staticMetaObject())
