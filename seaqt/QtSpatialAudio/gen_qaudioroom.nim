import ./Qt6SpatialAudio_libs

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

const cflags = gorge("pkg-config --cflags Qt6SpatialAudio")  & " -fPIC"
{.compile("gen_qaudioroom.cpp", cflags).}


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

proc fcQAudioRoom_metaObject(self: pointer, ): pointer {.importc: "QAudioRoom_metaObject".}
proc fcQAudioRoom_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioRoom_metacast".}
proc fcQAudioRoom_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioRoom_metacall".}
proc fcQAudioRoom_tr(s: cstring): struct_miqt_string {.importc: "QAudioRoom_tr".}
proc fcQAudioRoom_setPosition(self: pointer, pos: pointer): void {.importc: "QAudioRoom_setPosition".}
proc fcQAudioRoom_position(self: pointer, ): pointer {.importc: "QAudioRoom_position".}
proc fcQAudioRoom_setDimensions(self: pointer, dim: pointer): void {.importc: "QAudioRoom_setDimensions".}
proc fcQAudioRoom_dimensions(self: pointer, ): pointer {.importc: "QAudioRoom_dimensions".}
proc fcQAudioRoom_setRotation(self: pointer, q: pointer): void {.importc: "QAudioRoom_setRotation".}
proc fcQAudioRoom_rotation(self: pointer, ): pointer {.importc: "QAudioRoom_rotation".}
proc fcQAudioRoom_setWallMaterial(self: pointer, wall: cint, material: cint): void {.importc: "QAudioRoom_setWallMaterial".}
proc fcQAudioRoom_wallMaterial(self: pointer, wall: cint): cint {.importc: "QAudioRoom_wallMaterial".}
proc fcQAudioRoom_setReflectionGain(self: pointer, factor: float32): void {.importc: "QAudioRoom_setReflectionGain".}
proc fcQAudioRoom_reflectionGain(self: pointer, ): float32 {.importc: "QAudioRoom_reflectionGain".}
proc fcQAudioRoom_setReverbGain(self: pointer, factor: float32): void {.importc: "QAudioRoom_setReverbGain".}
proc fcQAudioRoom_reverbGain(self: pointer, ): float32 {.importc: "QAudioRoom_reverbGain".}
proc fcQAudioRoom_setReverbTime(self: pointer, factor: float32): void {.importc: "QAudioRoom_setReverbTime".}
proc fcQAudioRoom_reverbTime(self: pointer, ): float32 {.importc: "QAudioRoom_reverbTime".}
proc fcQAudioRoom_setReverbBrightness(self: pointer, factor: float32): void {.importc: "QAudioRoom_setReverbBrightness".}
proc fcQAudioRoom_reverbBrightness(self: pointer, ): float32 {.importc: "QAudioRoom_reverbBrightness".}
proc fcQAudioRoom_positionChanged(self: pointer, ): void {.importc: "QAudioRoom_positionChanged".}
proc fcQAudioRoom_connect_positionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRoom_connect_positionChanged".}
proc fcQAudioRoom_dimensionsChanged(self: pointer, ): void {.importc: "QAudioRoom_dimensionsChanged".}
proc fcQAudioRoom_connect_dimensionsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRoom_connect_dimensionsChanged".}
proc fcQAudioRoom_rotationChanged(self: pointer, ): void {.importc: "QAudioRoom_rotationChanged".}
proc fcQAudioRoom_connect_rotationChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRoom_connect_rotationChanged".}
proc fcQAudioRoom_wallsChanged(self: pointer, ): void {.importc: "QAudioRoom_wallsChanged".}
proc fcQAudioRoom_connect_wallsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRoom_connect_wallsChanged".}
proc fcQAudioRoom_reflectionGainChanged(self: pointer, ): void {.importc: "QAudioRoom_reflectionGainChanged".}
proc fcQAudioRoom_connect_reflectionGainChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRoom_connect_reflectionGainChanged".}
proc fcQAudioRoom_reverbGainChanged(self: pointer, ): void {.importc: "QAudioRoom_reverbGainChanged".}
proc fcQAudioRoom_connect_reverbGainChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRoom_connect_reverbGainChanged".}
proc fcQAudioRoom_reverbTimeChanged(self: pointer, ): void {.importc: "QAudioRoom_reverbTimeChanged".}
proc fcQAudioRoom_connect_reverbTimeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRoom_connect_reverbTimeChanged".}
proc fcQAudioRoom_reverbBrightnessChanged(self: pointer, ): void {.importc: "QAudioRoom_reverbBrightnessChanged".}
proc fcQAudioRoom_connect_reverbBrightnessChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRoom_connect_reverbBrightnessChanged".}
proc fcQAudioRoom_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioRoom_tr2".}
proc fcQAudioRoom_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioRoom_tr3".}
type cQAudioRoomVTable = object
  destructor*: proc(vtbl: ptr cQAudioRoomVTable, self: ptr cQAudioRoom) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAudioRoom_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAudioRoom_virtualbase_metaObject".}
proc fcQAudioRoom_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioRoom_virtualbase_metacast".}
proc fcQAudioRoom_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioRoom_virtualbase_metacall".}
proc fcQAudioRoom_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioRoom_virtualbase_event".}
proc fcQAudioRoom_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioRoom_virtualbase_eventFilter".}
proc fcQAudioRoom_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioRoom_virtualbase_timerEvent".}
proc fcQAudioRoom_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioRoom_virtualbase_childEvent".}
proc fcQAudioRoom_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioRoom_virtualbase_customEvent".}
proc fcQAudioRoom_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioRoom_virtualbase_connectNotify".}
proc fcQAudioRoom_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioRoom_virtualbase_disconnectNotify".}
proc fcQAudioRoom_new(vtbl: pointer, engine: pointer): ptr cQAudioRoom {.importc: "QAudioRoom_new".}
proc fcQAudioRoom_staticMetaObject(): pointer {.importc: "QAudioRoom_staticMetaObject".}
proc fcQAudioRoom_delete(self: pointer) {.importc: "QAudioRoom_delete".}

proc metaObject*(self: gen_qaudioroom_types.QAudioRoom, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioRoom_metaObject(self.h))

proc metacast*(self: gen_qaudioroom_types.QAudioRoom, param1: cstring): pointer =
  fcQAudioRoom_metacast(self.h, param1)

proc metacall*(self: gen_qaudioroom_types.QAudioRoom, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioRoom_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudioroom_types.QAudioRoom, s: cstring): string =
  let v_ms = fcQAudioRoom_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPosition*(self: gen_qaudioroom_types.QAudioRoom, pos: gen_qvectornd_types.QVector3D): void =
  fcQAudioRoom_setPosition(self.h, pos.h)

proc position*(self: gen_qaudioroom_types.QAudioRoom, ): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQAudioRoom_position(self.h))

proc setDimensions*(self: gen_qaudioroom_types.QAudioRoom, dim: gen_qvectornd_types.QVector3D): void =
  fcQAudioRoom_setDimensions(self.h, dim.h)

proc dimensions*(self: gen_qaudioroom_types.QAudioRoom, ): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQAudioRoom_dimensions(self.h))

proc setRotation*(self: gen_qaudioroom_types.QAudioRoom, q: gen_qquaternion_types.QQuaternion): void =
  fcQAudioRoom_setRotation(self.h, q.h)

proc rotation*(self: gen_qaudioroom_types.QAudioRoom, ): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQAudioRoom_rotation(self.h))

proc setWallMaterial*(self: gen_qaudioroom_types.QAudioRoom, wall: cint, material: cint): void =
  fcQAudioRoom_setWallMaterial(self.h, cint(wall), cint(material))

proc wallMaterial*(self: gen_qaudioroom_types.QAudioRoom, wall: cint): cint =
  cint(fcQAudioRoom_wallMaterial(self.h, cint(wall)))

proc setReflectionGain*(self: gen_qaudioroom_types.QAudioRoom, factor: float32): void =
  fcQAudioRoom_setReflectionGain(self.h, factor)

proc reflectionGain*(self: gen_qaudioroom_types.QAudioRoom, ): float32 =
  fcQAudioRoom_reflectionGain(self.h)

proc setReverbGain*(self: gen_qaudioroom_types.QAudioRoom, factor: float32): void =
  fcQAudioRoom_setReverbGain(self.h, factor)

proc reverbGain*(self: gen_qaudioroom_types.QAudioRoom, ): float32 =
  fcQAudioRoom_reverbGain(self.h)

proc setReverbTime*(self: gen_qaudioroom_types.QAudioRoom, factor: float32): void =
  fcQAudioRoom_setReverbTime(self.h, factor)

proc reverbTime*(self: gen_qaudioroom_types.QAudioRoom, ): float32 =
  fcQAudioRoom_reverbTime(self.h)

proc setReverbBrightness*(self: gen_qaudioroom_types.QAudioRoom, factor: float32): void =
  fcQAudioRoom_setReverbBrightness(self.h, factor)

proc reverbBrightness*(self: gen_qaudioroom_types.QAudioRoom, ): float32 =
  fcQAudioRoom_reverbBrightness(self.h)

proc positionChanged*(self: gen_qaudioroom_types.QAudioRoom, ): void =
  fcQAudioRoom_positionChanged(self.h)

type QAudioRoompositionChangedSlot* = proc()
proc miqt_exec_callback_cQAudioRoom_positionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRoompositionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioRoom_positionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRoompositionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpositionChanged*(self: gen_qaudioroom_types.QAudioRoom, slot: QAudioRoompositionChangedSlot) =
  var tmp = new QAudioRoompositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_connect_positionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioRoom_positionChanged, miqt_exec_callback_cQAudioRoom_positionChanged_release)

proc dimensionsChanged*(self: gen_qaudioroom_types.QAudioRoom, ): void =
  fcQAudioRoom_dimensionsChanged(self.h)

type QAudioRoomdimensionsChangedSlot* = proc()
proc miqt_exec_callback_cQAudioRoom_dimensionsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRoomdimensionsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioRoom_dimensionsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRoomdimensionsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondimensionsChanged*(self: gen_qaudioroom_types.QAudioRoom, slot: QAudioRoomdimensionsChangedSlot) =
  var tmp = new QAudioRoomdimensionsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_connect_dimensionsChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioRoom_dimensionsChanged, miqt_exec_callback_cQAudioRoom_dimensionsChanged_release)

proc rotationChanged*(self: gen_qaudioroom_types.QAudioRoom, ): void =
  fcQAudioRoom_rotationChanged(self.h)

type QAudioRoomrotationChangedSlot* = proc()
proc miqt_exec_callback_cQAudioRoom_rotationChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRoomrotationChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioRoom_rotationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRoomrotationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrotationChanged*(self: gen_qaudioroom_types.QAudioRoom, slot: QAudioRoomrotationChangedSlot) =
  var tmp = new QAudioRoomrotationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_connect_rotationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioRoom_rotationChanged, miqt_exec_callback_cQAudioRoom_rotationChanged_release)

proc wallsChanged*(self: gen_qaudioroom_types.QAudioRoom, ): void =
  fcQAudioRoom_wallsChanged(self.h)

type QAudioRoomwallsChangedSlot* = proc()
proc miqt_exec_callback_cQAudioRoom_wallsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRoomwallsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioRoom_wallsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRoomwallsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwallsChanged*(self: gen_qaudioroom_types.QAudioRoom, slot: QAudioRoomwallsChangedSlot) =
  var tmp = new QAudioRoomwallsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_connect_wallsChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioRoom_wallsChanged, miqt_exec_callback_cQAudioRoom_wallsChanged_release)

proc reflectionGainChanged*(self: gen_qaudioroom_types.QAudioRoom, ): void =
  fcQAudioRoom_reflectionGainChanged(self.h)

type QAudioRoomreflectionGainChangedSlot* = proc()
proc miqt_exec_callback_cQAudioRoom_reflectionGainChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRoomreflectionGainChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioRoom_reflectionGainChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRoomreflectionGainChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onreflectionGainChanged*(self: gen_qaudioroom_types.QAudioRoom, slot: QAudioRoomreflectionGainChangedSlot) =
  var tmp = new QAudioRoomreflectionGainChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_connect_reflectionGainChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioRoom_reflectionGainChanged, miqt_exec_callback_cQAudioRoom_reflectionGainChanged_release)

proc reverbGainChanged*(self: gen_qaudioroom_types.QAudioRoom, ): void =
  fcQAudioRoom_reverbGainChanged(self.h)

type QAudioRoomreverbGainChangedSlot* = proc()
proc miqt_exec_callback_cQAudioRoom_reverbGainChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRoomreverbGainChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioRoom_reverbGainChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRoomreverbGainChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onreverbGainChanged*(self: gen_qaudioroom_types.QAudioRoom, slot: QAudioRoomreverbGainChangedSlot) =
  var tmp = new QAudioRoomreverbGainChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_connect_reverbGainChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioRoom_reverbGainChanged, miqt_exec_callback_cQAudioRoom_reverbGainChanged_release)

proc reverbTimeChanged*(self: gen_qaudioroom_types.QAudioRoom, ): void =
  fcQAudioRoom_reverbTimeChanged(self.h)

type QAudioRoomreverbTimeChangedSlot* = proc()
proc miqt_exec_callback_cQAudioRoom_reverbTimeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRoomreverbTimeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioRoom_reverbTimeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRoomreverbTimeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onreverbTimeChanged*(self: gen_qaudioroom_types.QAudioRoom, slot: QAudioRoomreverbTimeChangedSlot) =
  var tmp = new QAudioRoomreverbTimeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_connect_reverbTimeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioRoom_reverbTimeChanged, miqt_exec_callback_cQAudioRoom_reverbTimeChanged_release)

proc reverbBrightnessChanged*(self: gen_qaudioroom_types.QAudioRoom, ): void =
  fcQAudioRoom_reverbBrightnessChanged(self.h)

type QAudioRoomreverbBrightnessChangedSlot* = proc()
proc miqt_exec_callback_cQAudioRoom_reverbBrightnessChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRoomreverbBrightnessChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioRoom_reverbBrightnessChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRoomreverbBrightnessChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onreverbBrightnessChanged*(self: gen_qaudioroom_types.QAudioRoom, slot: QAudioRoomreverbBrightnessChangedSlot) =
  var tmp = new QAudioRoomreverbBrightnessChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRoom_connect_reverbBrightnessChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioRoom_reverbBrightnessChanged, miqt_exec_callback_cQAudioRoom_reverbBrightnessChanged_release)

proc tr*(_: type gen_qaudioroom_types.QAudioRoom, s: cstring, c: cstring): string =
  let v_ms = fcQAudioRoom_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudioroom_types.QAudioRoom, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioRoom_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QAudioRoomVTable* = object
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
proc QAudioRoommetaObject*(self: gen_qaudioroom_types.QAudioRoom, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioRoom_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAudioRoom_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](vtbl)
  let self = QAudioRoom(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAudioRoommetacast*(self: gen_qaudioroom_types.QAudioRoom, param1: cstring): pointer =
  fcQAudioRoom_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAudioRoom_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](vtbl)
  let self = QAudioRoom(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAudioRoommetacall*(self: gen_qaudioroom_types.QAudioRoom, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioRoom_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAudioRoom_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](vtbl)
  let self = QAudioRoom(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAudioRoomevent*(self: gen_qaudioroom_types.QAudioRoom, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioRoom_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAudioRoom_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](vtbl)
  let self = QAudioRoom(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAudioRoomeventFilter*(self: gen_qaudioroom_types.QAudioRoom, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioRoom_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAudioRoom_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](vtbl)
  let self = QAudioRoom(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAudioRoomtimerEvent*(self: gen_qaudioroom_types.QAudioRoom, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioRoom_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioRoom_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](vtbl)
  let self = QAudioRoom(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAudioRoomchildEvent*(self: gen_qaudioroom_types.QAudioRoom, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioRoom_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioRoom_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](vtbl)
  let self = QAudioRoom(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAudioRoomcustomEvent*(self: gen_qaudioroom_types.QAudioRoom, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioRoom_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioRoom_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](vtbl)
  let self = QAudioRoom(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAudioRoomconnectNotify*(self: gen_qaudioroom_types.QAudioRoom, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioRoom_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioRoom_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](vtbl)
  let self = QAudioRoom(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAudioRoomdisconnectNotify*(self: gen_qaudioroom_types.QAudioRoom, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioRoom_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioRoom_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRoomVTable](vtbl)
  let self = QAudioRoom(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qaudioroom_types.QAudioRoom,
    engine: gen_qaudioengine_types.QAudioEngine,
    vtbl: ref QAudioRoomVTable = nil): gen_qaudioroom_types.QAudioRoom =
  let vtbl = if vtbl == nil: new QAudioRoomVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioRoomVTable, _: ptr cQAudioRoom) {.cdecl.} =
    let vtbl = cast[ref QAudioRoomVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioRoom_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioRoom_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioRoom_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioRoom_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioRoom_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioRoom_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioRoom_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioRoom_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioRoom_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioRoom_disconnectNotify
  gen_qaudioroom_types.QAudioRoom(h: fcQAudioRoom_new(addr(vtbl[]), engine.h))

proc staticMetaObject*(_: type gen_qaudioroom_types.QAudioRoom): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioRoom_staticMetaObject())
proc delete*(self: gen_qaudioroom_types.QAudioRoom) =
  fcQAudioRoom_delete(self.h)
