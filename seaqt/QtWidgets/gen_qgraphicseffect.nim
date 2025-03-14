import ./qtwidgets_pkg

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


{.compile("gen_qgraphicseffect.cpp", QtWidgetsCFlags).}


type QGraphicsEffectChangeFlagEnum* = distinct cint
template SourceAttached*(_: type QGraphicsEffectChangeFlagEnum): untyped = 1
template SourceDetached*(_: type QGraphicsEffectChangeFlagEnum): untyped = 2
template SourceBoundingRectChanged*(_: type QGraphicsEffectChangeFlagEnum): untyped = 4
template SourceInvalidated*(_: type QGraphicsEffectChangeFlagEnum): untyped = 8


type QGraphicsEffectPixmapPadModeEnum* = distinct cint
template NoPad*(_: type QGraphicsEffectPixmapPadModeEnum): untyped = 0
template PadToTransparentBorder*(_: type QGraphicsEffectPixmapPadModeEnum): untyped = 1
template PadToEffectiveBoundingRect*(_: type QGraphicsEffectPixmapPadModeEnum): untyped = 2


type QGraphicsBlurEffectBlurHintEnum* = distinct cint
template PerformanceHint*(_: type QGraphicsBlurEffectBlurHintEnum): untyped = 0
template QualityHint*(_: type QGraphicsBlurEffectBlurHintEnum): untyped = 1
template AnimationHint*(_: type QGraphicsBlurEffectBlurHintEnum): untyped = 2


import ./gen_qgraphicseffect_types
export gen_qgraphicseffect_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtGui/gen_qbrush_types,
  ../QtGui/gen_qcolor_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qpixmap_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qbrush_types,
  gen_qcolor_types,
  gen_qpainter_types,
  gen_qpixmap_types

type cQGraphicsEffect*{.exportc: "QGraphicsEffect", incompleteStruct.} = object
type cQGraphicsColorizeEffect*{.exportc: "QGraphicsColorizeEffect", incompleteStruct.} = object
type cQGraphicsBlurEffect*{.exportc: "QGraphicsBlurEffect", incompleteStruct.} = object
type cQGraphicsDropShadowEffect*{.exportc: "QGraphicsDropShadowEffect", incompleteStruct.} = object
type cQGraphicsOpacityEffect*{.exportc: "QGraphicsOpacityEffect", incompleteStruct.} = object

proc fcQGraphicsEffect_metaObject(self: pointer): pointer {.importc: "QGraphicsEffect_metaObject".}
proc fcQGraphicsEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsEffect_metacast".}
proc fcQGraphicsEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsEffect_metacall".}
proc fcQGraphicsEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsEffect_tr".}
proc fcQGraphicsEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsEffect_trUtf8".}
proc fcQGraphicsEffect_boundingRectFor(self: pointer, sourceRect: pointer): pointer {.importc: "QGraphicsEffect_boundingRectFor".}
proc fcQGraphicsEffect_boundingRect(self: pointer): pointer {.importc: "QGraphicsEffect_boundingRect".}
proc fcQGraphicsEffect_isEnabled(self: pointer): bool {.importc: "QGraphicsEffect_isEnabled".}
proc fcQGraphicsEffect_setEnabled(self: pointer, enable: bool): void {.importc: "QGraphicsEffect_setEnabled".}
proc fcQGraphicsEffect_update(self: pointer): void {.importc: "QGraphicsEffect_update".}
proc fcQGraphicsEffect_enabledChanged(self: pointer, enabled: bool): void {.importc: "QGraphicsEffect_enabledChanged".}
proc fcQGraphicsEffect_connect_enabledChanged(self: pointer, slot: int, callback: proc (slot: int, enabled: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsEffect_connect_enabledChanged".}
proc fcQGraphicsEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsEffect_tr2".}
proc fcQGraphicsEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsEffect_tr3".}
proc fcQGraphicsEffect_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsEffect_trUtf82".}
proc fcQGraphicsEffect_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsEffect_trUtf83".}
proc fcQGraphicsEffect_vtbl(self: pointer): pointer {.importc: "QGraphicsEffect_vtbl".}
proc fcQGraphicsEffect_vdata(self: pointer): pointer {.importc: "QGraphicsEffect_vdata".}
type cQGraphicsEffectVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  boundingRectFor*: proc(self: pointer, sourceRect: pointer): pointer {.cdecl, raises: [], gcsafe.}
  draw*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  sourceChanged*: proc(self: pointer, flags: cint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsEffect_virtualbase_metaObject(self: pointer): pointer {.importc: "QGraphicsEffect_virtualbase_metaObject".}
proc fcQGraphicsEffect_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsEffect_virtualbase_metacast".}
proc fcQGraphicsEffect_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsEffect_virtualbase_metacall".}
proc fcQGraphicsEffect_virtualbase_boundingRectFor(self: pointer, sourceRect: pointer): pointer {.importc: "QGraphicsEffect_virtualbase_boundingRectFor".}
proc fcQGraphicsEffect_virtualbase_sourceChanged(self: pointer, flags: cint): void {.importc: "QGraphicsEffect_virtualbase_sourceChanged".}
proc fcQGraphicsEffect_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGraphicsEffect_virtualbase_event".}
proc fcQGraphicsEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsEffect_virtualbase_eventFilter".}
proc fcQGraphicsEffect_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEffect_virtualbase_timerEvent".}
proc fcQGraphicsEffect_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEffect_virtualbase_childEvent".}
proc fcQGraphicsEffect_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsEffect_virtualbase_customEvent".}
proc fcQGraphicsEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsEffect_virtualbase_connectNotify".}
proc fcQGraphicsEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsEffect_virtualbase_disconnectNotify".}
proc fcQGraphicsEffect_protectedbase_updateBoundingRect(self: pointer): void {.importc: "QGraphicsEffect_protectedbase_updateBoundingRect".}
proc fcQGraphicsEffect_protectedbase_sourceIsPixmap(self: pointer): bool {.importc: "QGraphicsEffect_protectedbase_sourceIsPixmap".}
proc fcQGraphicsEffect_protectedbase_sourceBoundingRect(self: pointer): pointer {.importc: "QGraphicsEffect_protectedbase_sourceBoundingRect".}
proc fcQGraphicsEffect_protectedbase_drawSource(self: pointer, painter: pointer): void {.importc: "QGraphicsEffect_protectedbase_drawSource".}
proc fcQGraphicsEffect_protectedbase_sourcePixmap(self: pointer): pointer {.importc: "QGraphicsEffect_protectedbase_sourcePixmap".}
proc fcQGraphicsEffect_protectedbase_sourceBoundingRect1(self: pointer, system: cint): pointer {.importc: "QGraphicsEffect_protectedbase_sourceBoundingRect1".}
proc fcQGraphicsEffect_protectedbase_sourcePixmap1(self: pointer, system: cint): pointer {.importc: "QGraphicsEffect_protectedbase_sourcePixmap1".}
proc fcQGraphicsEffect_protectedbase_sourcePixmap2(self: pointer, system: cint, offset: pointer): pointer {.importc: "QGraphicsEffect_protectedbase_sourcePixmap2".}
proc fcQGraphicsEffect_protectedbase_sourcePixmap3(self: pointer, system: cint, offset: pointer, mode: cint): pointer {.importc: "QGraphicsEffect_protectedbase_sourcePixmap3".}
proc fcQGraphicsEffect_protectedbase_sender(self: pointer): pointer {.importc: "QGraphicsEffect_protectedbase_sender".}
proc fcQGraphicsEffect_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGraphicsEffect_protectedbase_senderSignalIndex".}
proc fcQGraphicsEffect_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsEffect_protectedbase_receivers".}
proc fcQGraphicsEffect_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsEffect_protectedbase_isSignalConnected".}
proc fcQGraphicsEffect_new(vtbl, vdata: pointer): ptr cQGraphicsEffect {.importc: "QGraphicsEffect_new".}
proc fcQGraphicsEffect_new2(vtbl, vdata: pointer, parent: pointer): ptr cQGraphicsEffect {.importc: "QGraphicsEffect_new2".}
proc fcQGraphicsEffect_staticMetaObject(): pointer {.importc: "QGraphicsEffect_staticMetaObject".}
proc fcQGraphicsColorizeEffect_metaObject(self: pointer): pointer {.importc: "QGraphicsColorizeEffect_metaObject".}
proc fcQGraphicsColorizeEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsColorizeEffect_metacast".}
proc fcQGraphicsColorizeEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsColorizeEffect_metacall".}
proc fcQGraphicsColorizeEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsColorizeEffect_tr".}
proc fcQGraphicsColorizeEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsColorizeEffect_trUtf8".}
proc fcQGraphicsColorizeEffect_color(self: pointer): pointer {.importc: "QGraphicsColorizeEffect_color".}
proc fcQGraphicsColorizeEffect_strength(self: pointer): float64 {.importc: "QGraphicsColorizeEffect_strength".}
proc fcQGraphicsColorizeEffect_setColor(self: pointer, c: pointer): void {.importc: "QGraphicsColorizeEffect_setColor".}
proc fcQGraphicsColorizeEffect_setStrength(self: pointer, strength: float64): void {.importc: "QGraphicsColorizeEffect_setStrength".}
proc fcQGraphicsColorizeEffect_colorChanged(self: pointer, color: pointer): void {.importc: "QGraphicsColorizeEffect_colorChanged".}
proc fcQGraphicsColorizeEffect_connect_colorChanged(self: pointer, slot: int, callback: proc (slot: int, color: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsColorizeEffect_connect_colorChanged".}
proc fcQGraphicsColorizeEffect_strengthChanged(self: pointer, strength: float64): void {.importc: "QGraphicsColorizeEffect_strengthChanged".}
proc fcQGraphicsColorizeEffect_connect_strengthChanged(self: pointer, slot: int, callback: proc (slot: int, strength: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsColorizeEffect_connect_strengthChanged".}
proc fcQGraphicsColorizeEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsColorizeEffect_tr2".}
proc fcQGraphicsColorizeEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsColorizeEffect_tr3".}
proc fcQGraphicsColorizeEffect_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsColorizeEffect_trUtf82".}
proc fcQGraphicsColorizeEffect_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsColorizeEffect_trUtf83".}
proc fcQGraphicsColorizeEffect_vtbl(self: pointer): pointer {.importc: "QGraphicsColorizeEffect_vtbl".}
proc fcQGraphicsColorizeEffect_vdata(self: pointer): pointer {.importc: "QGraphicsColorizeEffect_vdata".}
type cQGraphicsColorizeEffectVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  draw*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  boundingRectFor*: proc(self: pointer, sourceRect: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sourceChanged*: proc(self: pointer, flags: cint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsColorizeEffect_virtualbase_metaObject(self: pointer): pointer {.importc: "QGraphicsColorizeEffect_virtualbase_metaObject".}
proc fcQGraphicsColorizeEffect_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsColorizeEffect_virtualbase_metacast".}
proc fcQGraphicsColorizeEffect_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsColorizeEffect_virtualbase_metacall".}
proc fcQGraphicsColorizeEffect_virtualbase_draw(self: pointer, painter: pointer): void {.importc: "QGraphicsColorizeEffect_virtualbase_draw".}
proc fcQGraphicsColorizeEffect_virtualbase_boundingRectFor(self: pointer, sourceRect: pointer): pointer {.importc: "QGraphicsColorizeEffect_virtualbase_boundingRectFor".}
proc fcQGraphicsColorizeEffect_virtualbase_sourceChanged(self: pointer, flags: cint): void {.importc: "QGraphicsColorizeEffect_virtualbase_sourceChanged".}
proc fcQGraphicsColorizeEffect_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGraphicsColorizeEffect_virtualbase_event".}
proc fcQGraphicsColorizeEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsColorizeEffect_virtualbase_eventFilter".}
proc fcQGraphicsColorizeEffect_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsColorizeEffect_virtualbase_timerEvent".}
proc fcQGraphicsColorizeEffect_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsColorizeEffect_virtualbase_childEvent".}
proc fcQGraphicsColorizeEffect_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsColorizeEffect_virtualbase_customEvent".}
proc fcQGraphicsColorizeEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsColorizeEffect_virtualbase_connectNotify".}
proc fcQGraphicsColorizeEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsColorizeEffect_virtualbase_disconnectNotify".}
proc fcQGraphicsColorizeEffect_protectedbase_updateBoundingRect(self: pointer): void {.importc: "QGraphicsColorizeEffect_protectedbase_updateBoundingRect".}
proc fcQGraphicsColorizeEffect_protectedbase_sourceIsPixmap(self: pointer): bool {.importc: "QGraphicsColorizeEffect_protectedbase_sourceIsPixmap".}
proc fcQGraphicsColorizeEffect_protectedbase_sourceBoundingRect(self: pointer): pointer {.importc: "QGraphicsColorizeEffect_protectedbase_sourceBoundingRect".}
proc fcQGraphicsColorizeEffect_protectedbase_drawSource(self: pointer, painter: pointer): void {.importc: "QGraphicsColorizeEffect_protectedbase_drawSource".}
proc fcQGraphicsColorizeEffect_protectedbase_sourcePixmap(self: pointer): pointer {.importc: "QGraphicsColorizeEffect_protectedbase_sourcePixmap".}
proc fcQGraphicsColorizeEffect_protectedbase_sender(self: pointer): pointer {.importc: "QGraphicsColorizeEffect_protectedbase_sender".}
proc fcQGraphicsColorizeEffect_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGraphicsColorizeEffect_protectedbase_senderSignalIndex".}
proc fcQGraphicsColorizeEffect_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsColorizeEffect_protectedbase_receivers".}
proc fcQGraphicsColorizeEffect_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsColorizeEffect_protectedbase_isSignalConnected".}
proc fcQGraphicsColorizeEffect_new(vtbl, vdata: pointer): ptr cQGraphicsColorizeEffect {.importc: "QGraphicsColorizeEffect_new".}
proc fcQGraphicsColorizeEffect_new2(vtbl, vdata: pointer, parent: pointer): ptr cQGraphicsColorizeEffect {.importc: "QGraphicsColorizeEffect_new2".}
proc fcQGraphicsColorizeEffect_staticMetaObject(): pointer {.importc: "QGraphicsColorizeEffect_staticMetaObject".}
proc fcQGraphicsBlurEffect_metaObject(self: pointer): pointer {.importc: "QGraphicsBlurEffect_metaObject".}
proc fcQGraphicsBlurEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsBlurEffect_metacast".}
proc fcQGraphicsBlurEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsBlurEffect_metacall".}
proc fcQGraphicsBlurEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsBlurEffect_tr".}
proc fcQGraphicsBlurEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsBlurEffect_trUtf8".}
proc fcQGraphicsBlurEffect_boundingRectFor(self: pointer, rect: pointer): pointer {.importc: "QGraphicsBlurEffect_boundingRectFor".}
proc fcQGraphicsBlurEffect_blurRadius(self: pointer): float64 {.importc: "QGraphicsBlurEffect_blurRadius".}
proc fcQGraphicsBlurEffect_blurHints(self: pointer): cint {.importc: "QGraphicsBlurEffect_blurHints".}
proc fcQGraphicsBlurEffect_setBlurRadius(self: pointer, blurRadius: float64): void {.importc: "QGraphicsBlurEffect_setBlurRadius".}
proc fcQGraphicsBlurEffect_setBlurHints(self: pointer, hints: cint): void {.importc: "QGraphicsBlurEffect_setBlurHints".}
proc fcQGraphicsBlurEffect_blurRadiusChanged(self: pointer, blurRadius: float64): void {.importc: "QGraphicsBlurEffect_blurRadiusChanged".}
proc fcQGraphicsBlurEffect_connect_blurRadiusChanged(self: pointer, slot: int, callback: proc (slot: int, blurRadius: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsBlurEffect_connect_blurRadiusChanged".}
proc fcQGraphicsBlurEffect_blurHintsChanged(self: pointer, hints: cint): void {.importc: "QGraphicsBlurEffect_blurHintsChanged".}
proc fcQGraphicsBlurEffect_connect_blurHintsChanged(self: pointer, slot: int, callback: proc (slot: int, hints: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsBlurEffect_connect_blurHintsChanged".}
proc fcQGraphicsBlurEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsBlurEffect_tr2".}
proc fcQGraphicsBlurEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsBlurEffect_tr3".}
proc fcQGraphicsBlurEffect_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsBlurEffect_trUtf82".}
proc fcQGraphicsBlurEffect_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsBlurEffect_trUtf83".}
proc fcQGraphicsBlurEffect_vtbl(self: pointer): pointer {.importc: "QGraphicsBlurEffect_vtbl".}
proc fcQGraphicsBlurEffect_vdata(self: pointer): pointer {.importc: "QGraphicsBlurEffect_vdata".}
type cQGraphicsBlurEffectVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  boundingRectFor*: proc(self: pointer, rect: pointer): pointer {.cdecl, raises: [], gcsafe.}
  draw*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  sourceChanged*: proc(self: pointer, flags: cint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsBlurEffect_virtualbase_metaObject(self: pointer): pointer {.importc: "QGraphicsBlurEffect_virtualbase_metaObject".}
proc fcQGraphicsBlurEffect_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsBlurEffect_virtualbase_metacast".}
proc fcQGraphicsBlurEffect_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsBlurEffect_virtualbase_metacall".}
proc fcQGraphicsBlurEffect_virtualbase_boundingRectFor(self: pointer, rect: pointer): pointer {.importc: "QGraphicsBlurEffect_virtualbase_boundingRectFor".}
proc fcQGraphicsBlurEffect_virtualbase_draw(self: pointer, painter: pointer): void {.importc: "QGraphicsBlurEffect_virtualbase_draw".}
proc fcQGraphicsBlurEffect_virtualbase_sourceChanged(self: pointer, flags: cint): void {.importc: "QGraphicsBlurEffect_virtualbase_sourceChanged".}
proc fcQGraphicsBlurEffect_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGraphicsBlurEffect_virtualbase_event".}
proc fcQGraphicsBlurEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsBlurEffect_virtualbase_eventFilter".}
proc fcQGraphicsBlurEffect_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsBlurEffect_virtualbase_timerEvent".}
proc fcQGraphicsBlurEffect_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsBlurEffect_virtualbase_childEvent".}
proc fcQGraphicsBlurEffect_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsBlurEffect_virtualbase_customEvent".}
proc fcQGraphicsBlurEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsBlurEffect_virtualbase_connectNotify".}
proc fcQGraphicsBlurEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsBlurEffect_virtualbase_disconnectNotify".}
proc fcQGraphicsBlurEffect_protectedbase_updateBoundingRect(self: pointer): void {.importc: "QGraphicsBlurEffect_protectedbase_updateBoundingRect".}
proc fcQGraphicsBlurEffect_protectedbase_sourceIsPixmap(self: pointer): bool {.importc: "QGraphicsBlurEffect_protectedbase_sourceIsPixmap".}
proc fcQGraphicsBlurEffect_protectedbase_sourceBoundingRect(self: pointer): pointer {.importc: "QGraphicsBlurEffect_protectedbase_sourceBoundingRect".}
proc fcQGraphicsBlurEffect_protectedbase_drawSource(self: pointer, painter: pointer): void {.importc: "QGraphicsBlurEffect_protectedbase_drawSource".}
proc fcQGraphicsBlurEffect_protectedbase_sourcePixmap(self: pointer): pointer {.importc: "QGraphicsBlurEffect_protectedbase_sourcePixmap".}
proc fcQGraphicsBlurEffect_protectedbase_sender(self: pointer): pointer {.importc: "QGraphicsBlurEffect_protectedbase_sender".}
proc fcQGraphicsBlurEffect_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGraphicsBlurEffect_protectedbase_senderSignalIndex".}
proc fcQGraphicsBlurEffect_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsBlurEffect_protectedbase_receivers".}
proc fcQGraphicsBlurEffect_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsBlurEffect_protectedbase_isSignalConnected".}
proc fcQGraphicsBlurEffect_new(vtbl, vdata: pointer): ptr cQGraphicsBlurEffect {.importc: "QGraphicsBlurEffect_new".}
proc fcQGraphicsBlurEffect_new2(vtbl, vdata: pointer, parent: pointer): ptr cQGraphicsBlurEffect {.importc: "QGraphicsBlurEffect_new2".}
proc fcQGraphicsBlurEffect_staticMetaObject(): pointer {.importc: "QGraphicsBlurEffect_staticMetaObject".}
proc fcQGraphicsDropShadowEffect_metaObject(self: pointer): pointer {.importc: "QGraphicsDropShadowEffect_metaObject".}
proc fcQGraphicsDropShadowEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsDropShadowEffect_metacast".}
proc fcQGraphicsDropShadowEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsDropShadowEffect_metacall".}
proc fcQGraphicsDropShadowEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_tr".}
proc fcQGraphicsDropShadowEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_trUtf8".}
proc fcQGraphicsDropShadowEffect_boundingRectFor(self: pointer, rect: pointer): pointer {.importc: "QGraphicsDropShadowEffect_boundingRectFor".}
proc fcQGraphicsDropShadowEffect_offset(self: pointer): pointer {.importc: "QGraphicsDropShadowEffect_offset".}
proc fcQGraphicsDropShadowEffect_xOffset(self: pointer): float64 {.importc: "QGraphicsDropShadowEffect_xOffset".}
proc fcQGraphicsDropShadowEffect_yOffset(self: pointer): float64 {.importc: "QGraphicsDropShadowEffect_yOffset".}
proc fcQGraphicsDropShadowEffect_blurRadius(self: pointer): float64 {.importc: "QGraphicsDropShadowEffect_blurRadius".}
proc fcQGraphicsDropShadowEffect_color(self: pointer): pointer {.importc: "QGraphicsDropShadowEffect_color".}
proc fcQGraphicsDropShadowEffect_setOffset(self: pointer, ofs: pointer): void {.importc: "QGraphicsDropShadowEffect_setOffset".}
proc fcQGraphicsDropShadowEffect_setOffset2(self: pointer, dx: float64, dy: float64): void {.importc: "QGraphicsDropShadowEffect_setOffset2".}
proc fcQGraphicsDropShadowEffect_setOffsetWithQreal(self: pointer, d: float64): void {.importc: "QGraphicsDropShadowEffect_setOffsetWithQreal".}
proc fcQGraphicsDropShadowEffect_setXOffset(self: pointer, dx: float64): void {.importc: "QGraphicsDropShadowEffect_setXOffset".}
proc fcQGraphicsDropShadowEffect_setYOffset(self: pointer, dy: float64): void {.importc: "QGraphicsDropShadowEffect_setYOffset".}
proc fcQGraphicsDropShadowEffect_setBlurRadius(self: pointer, blurRadius: float64): void {.importc: "QGraphicsDropShadowEffect_setBlurRadius".}
proc fcQGraphicsDropShadowEffect_setColor(self: pointer, color: pointer): void {.importc: "QGraphicsDropShadowEffect_setColor".}
proc fcQGraphicsDropShadowEffect_offsetChanged(self: pointer, offset: pointer): void {.importc: "QGraphicsDropShadowEffect_offsetChanged".}
proc fcQGraphicsDropShadowEffect_connect_offsetChanged(self: pointer, slot: int, callback: proc (slot: int, offset: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsDropShadowEffect_connect_offsetChanged".}
proc fcQGraphicsDropShadowEffect_blurRadiusChanged(self: pointer, blurRadius: float64): void {.importc: "QGraphicsDropShadowEffect_blurRadiusChanged".}
proc fcQGraphicsDropShadowEffect_connect_blurRadiusChanged(self: pointer, slot: int, callback: proc (slot: int, blurRadius: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsDropShadowEffect_connect_blurRadiusChanged".}
proc fcQGraphicsDropShadowEffect_colorChanged(self: pointer, color: pointer): void {.importc: "QGraphicsDropShadowEffect_colorChanged".}
proc fcQGraphicsDropShadowEffect_connect_colorChanged(self: pointer, slot: int, callback: proc (slot: int, color: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsDropShadowEffect_connect_colorChanged".}
proc fcQGraphicsDropShadowEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_tr2".}
proc fcQGraphicsDropShadowEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_tr3".}
proc fcQGraphicsDropShadowEffect_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_trUtf82".}
proc fcQGraphicsDropShadowEffect_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_trUtf83".}
proc fcQGraphicsDropShadowEffect_vtbl(self: pointer): pointer {.importc: "QGraphicsDropShadowEffect_vtbl".}
proc fcQGraphicsDropShadowEffect_vdata(self: pointer): pointer {.importc: "QGraphicsDropShadowEffect_vdata".}
type cQGraphicsDropShadowEffectVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  boundingRectFor*: proc(self: pointer, rect: pointer): pointer {.cdecl, raises: [], gcsafe.}
  draw*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  sourceChanged*: proc(self: pointer, flags: cint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsDropShadowEffect_virtualbase_metaObject(self: pointer): pointer {.importc: "QGraphicsDropShadowEffect_virtualbase_metaObject".}
proc fcQGraphicsDropShadowEffect_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsDropShadowEffect_virtualbase_metacast".}
proc fcQGraphicsDropShadowEffect_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsDropShadowEffect_virtualbase_metacall".}
proc fcQGraphicsDropShadowEffect_virtualbase_boundingRectFor(self: pointer, rect: pointer): pointer {.importc: "QGraphicsDropShadowEffect_virtualbase_boundingRectFor".}
proc fcQGraphicsDropShadowEffect_virtualbase_draw(self: pointer, painter: pointer): void {.importc: "QGraphicsDropShadowEffect_virtualbase_draw".}
proc fcQGraphicsDropShadowEffect_virtualbase_sourceChanged(self: pointer, flags: cint): void {.importc: "QGraphicsDropShadowEffect_virtualbase_sourceChanged".}
proc fcQGraphicsDropShadowEffect_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGraphicsDropShadowEffect_virtualbase_event".}
proc fcQGraphicsDropShadowEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsDropShadowEffect_virtualbase_eventFilter".}
proc fcQGraphicsDropShadowEffect_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsDropShadowEffect_virtualbase_timerEvent".}
proc fcQGraphicsDropShadowEffect_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsDropShadowEffect_virtualbase_childEvent".}
proc fcQGraphicsDropShadowEffect_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsDropShadowEffect_virtualbase_customEvent".}
proc fcQGraphicsDropShadowEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsDropShadowEffect_virtualbase_connectNotify".}
proc fcQGraphicsDropShadowEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsDropShadowEffect_virtualbase_disconnectNotify".}
proc fcQGraphicsDropShadowEffect_protectedbase_updateBoundingRect(self: pointer): void {.importc: "QGraphicsDropShadowEffect_protectedbase_updateBoundingRect".}
proc fcQGraphicsDropShadowEffect_protectedbase_sourceIsPixmap(self: pointer): bool {.importc: "QGraphicsDropShadowEffect_protectedbase_sourceIsPixmap".}
proc fcQGraphicsDropShadowEffect_protectedbase_sourceBoundingRect(self: pointer): pointer {.importc: "QGraphicsDropShadowEffect_protectedbase_sourceBoundingRect".}
proc fcQGraphicsDropShadowEffect_protectedbase_drawSource(self: pointer, painter: pointer): void {.importc: "QGraphicsDropShadowEffect_protectedbase_drawSource".}
proc fcQGraphicsDropShadowEffect_protectedbase_sourcePixmap(self: pointer): pointer {.importc: "QGraphicsDropShadowEffect_protectedbase_sourcePixmap".}
proc fcQGraphicsDropShadowEffect_protectedbase_sender(self: pointer): pointer {.importc: "QGraphicsDropShadowEffect_protectedbase_sender".}
proc fcQGraphicsDropShadowEffect_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGraphicsDropShadowEffect_protectedbase_senderSignalIndex".}
proc fcQGraphicsDropShadowEffect_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsDropShadowEffect_protectedbase_receivers".}
proc fcQGraphicsDropShadowEffect_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsDropShadowEffect_protectedbase_isSignalConnected".}
proc fcQGraphicsDropShadowEffect_new(vtbl, vdata: pointer): ptr cQGraphicsDropShadowEffect {.importc: "QGraphicsDropShadowEffect_new".}
proc fcQGraphicsDropShadowEffect_new2(vtbl, vdata: pointer, parent: pointer): ptr cQGraphicsDropShadowEffect {.importc: "QGraphicsDropShadowEffect_new2".}
proc fcQGraphicsDropShadowEffect_staticMetaObject(): pointer {.importc: "QGraphicsDropShadowEffect_staticMetaObject".}
proc fcQGraphicsOpacityEffect_metaObject(self: pointer): pointer {.importc: "QGraphicsOpacityEffect_metaObject".}
proc fcQGraphicsOpacityEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsOpacityEffect_metacast".}
proc fcQGraphicsOpacityEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsOpacityEffect_metacall".}
proc fcQGraphicsOpacityEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsOpacityEffect_tr".}
proc fcQGraphicsOpacityEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsOpacityEffect_trUtf8".}
proc fcQGraphicsOpacityEffect_opacity(self: pointer): float64 {.importc: "QGraphicsOpacityEffect_opacity".}
proc fcQGraphicsOpacityEffect_opacityMask(self: pointer): pointer {.importc: "QGraphicsOpacityEffect_opacityMask".}
proc fcQGraphicsOpacityEffect_setOpacity(self: pointer, opacity: float64): void {.importc: "QGraphicsOpacityEffect_setOpacity".}
proc fcQGraphicsOpacityEffect_setOpacityMask(self: pointer, mask: pointer): void {.importc: "QGraphicsOpacityEffect_setOpacityMask".}
proc fcQGraphicsOpacityEffect_opacityChanged(self: pointer, opacity: float64): void {.importc: "QGraphicsOpacityEffect_opacityChanged".}
proc fcQGraphicsOpacityEffect_connect_opacityChanged(self: pointer, slot: int, callback: proc (slot: int, opacity: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsOpacityEffect_connect_opacityChanged".}
proc fcQGraphicsOpacityEffect_opacityMaskChanged(self: pointer, mask: pointer): void {.importc: "QGraphicsOpacityEffect_opacityMaskChanged".}
proc fcQGraphicsOpacityEffect_connect_opacityMaskChanged(self: pointer, slot: int, callback: proc (slot: int, mask: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsOpacityEffect_connect_opacityMaskChanged".}
proc fcQGraphicsOpacityEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsOpacityEffect_tr2".}
proc fcQGraphicsOpacityEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsOpacityEffect_tr3".}
proc fcQGraphicsOpacityEffect_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsOpacityEffect_trUtf82".}
proc fcQGraphicsOpacityEffect_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsOpacityEffect_trUtf83".}
proc fcQGraphicsOpacityEffect_vtbl(self: pointer): pointer {.importc: "QGraphicsOpacityEffect_vtbl".}
proc fcQGraphicsOpacityEffect_vdata(self: pointer): pointer {.importc: "QGraphicsOpacityEffect_vdata".}
type cQGraphicsOpacityEffectVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  draw*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  boundingRectFor*: proc(self: pointer, sourceRect: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sourceChanged*: proc(self: pointer, flags: cint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsOpacityEffect_virtualbase_metaObject(self: pointer): pointer {.importc: "QGraphicsOpacityEffect_virtualbase_metaObject".}
proc fcQGraphicsOpacityEffect_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsOpacityEffect_virtualbase_metacast".}
proc fcQGraphicsOpacityEffect_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsOpacityEffect_virtualbase_metacall".}
proc fcQGraphicsOpacityEffect_virtualbase_draw(self: pointer, painter: pointer): void {.importc: "QGraphicsOpacityEffect_virtualbase_draw".}
proc fcQGraphicsOpacityEffect_virtualbase_boundingRectFor(self: pointer, sourceRect: pointer): pointer {.importc: "QGraphicsOpacityEffect_virtualbase_boundingRectFor".}
proc fcQGraphicsOpacityEffect_virtualbase_sourceChanged(self: pointer, flags: cint): void {.importc: "QGraphicsOpacityEffect_virtualbase_sourceChanged".}
proc fcQGraphicsOpacityEffect_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGraphicsOpacityEffect_virtualbase_event".}
proc fcQGraphicsOpacityEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsOpacityEffect_virtualbase_eventFilter".}
proc fcQGraphicsOpacityEffect_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsOpacityEffect_virtualbase_timerEvent".}
proc fcQGraphicsOpacityEffect_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsOpacityEffect_virtualbase_childEvent".}
proc fcQGraphicsOpacityEffect_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsOpacityEffect_virtualbase_customEvent".}
proc fcQGraphicsOpacityEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsOpacityEffect_virtualbase_connectNotify".}
proc fcQGraphicsOpacityEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsOpacityEffect_virtualbase_disconnectNotify".}
proc fcQGraphicsOpacityEffect_protectedbase_updateBoundingRect(self: pointer): void {.importc: "QGraphicsOpacityEffect_protectedbase_updateBoundingRect".}
proc fcQGraphicsOpacityEffect_protectedbase_sourceIsPixmap(self: pointer): bool {.importc: "QGraphicsOpacityEffect_protectedbase_sourceIsPixmap".}
proc fcQGraphicsOpacityEffect_protectedbase_sourceBoundingRect(self: pointer): pointer {.importc: "QGraphicsOpacityEffect_protectedbase_sourceBoundingRect".}
proc fcQGraphicsOpacityEffect_protectedbase_drawSource(self: pointer, painter: pointer): void {.importc: "QGraphicsOpacityEffect_protectedbase_drawSource".}
proc fcQGraphicsOpacityEffect_protectedbase_sourcePixmap(self: pointer): pointer {.importc: "QGraphicsOpacityEffect_protectedbase_sourcePixmap".}
proc fcQGraphicsOpacityEffect_protectedbase_sender(self: pointer): pointer {.importc: "QGraphicsOpacityEffect_protectedbase_sender".}
proc fcQGraphicsOpacityEffect_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGraphicsOpacityEffect_protectedbase_senderSignalIndex".}
proc fcQGraphicsOpacityEffect_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsOpacityEffect_protectedbase_receivers".}
proc fcQGraphicsOpacityEffect_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsOpacityEffect_protectedbase_isSignalConnected".}
proc fcQGraphicsOpacityEffect_new(vtbl, vdata: pointer): ptr cQGraphicsOpacityEffect {.importc: "QGraphicsOpacityEffect_new".}
proc fcQGraphicsOpacityEffect_new2(vtbl, vdata: pointer, parent: pointer): ptr cQGraphicsOpacityEffect {.importc: "QGraphicsOpacityEffect_new2".}
proc fcQGraphicsOpacityEffect_staticMetaObject(): pointer {.importc: "QGraphicsOpacityEffect_staticMetaObject".}

proc metaObject*(self: gen_qgraphicseffect_types.QGraphicsEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsEffect_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgraphicseffect_types.QGraphicsEffect, param1: cstring): pointer =
  fcQGraphicsEffect_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicseffect_types.QGraphicsEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsEffect, s: cstring): string =
  let v_ms = fcQGraphicsEffect_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsEffect, s: cstring): string =
  let v_ms = fcQGraphicsEffect_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc boundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsEffect, sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsEffect_boundingRectFor(self.h, sourceRect.h), owned: true)

proc boundingRect*(self: gen_qgraphicseffect_types.QGraphicsEffect): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsEffect_boundingRect(self.h), owned: true)

proc isEnabled*(self: gen_qgraphicseffect_types.QGraphicsEffect): bool =
  fcQGraphicsEffect_isEnabled(self.h)

proc setEnabled*(self: gen_qgraphicseffect_types.QGraphicsEffect, enable: bool): void =
  fcQGraphicsEffect_setEnabled(self.h, enable)

proc update*(self: gen_qgraphicseffect_types.QGraphicsEffect): void =
  fcQGraphicsEffect_update(self.h)

proc enabledChanged*(self: gen_qgraphicseffect_types.QGraphicsEffect, enabled: bool): void =
  fcQGraphicsEffect_enabledChanged(self.h, enabled)

type QGraphicsEffectenabledChangedSlot* = proc(enabled: bool)
proc cQGraphicsEffect_slot_callback_enabledChanged(slot: int, enabled: bool) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsEffectenabledChangedSlot](cast[pointer](slot))
  let slotval1 = enabled

  nimfunc[](slotval1)

proc cQGraphicsEffect_slot_callback_enabledChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsEffectenabledChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onenabledChanged*(self: gen_qgraphicseffect_types.QGraphicsEffect, slot: QGraphicsEffectenabledChangedSlot) =
  var tmp = new QGraphicsEffectenabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_connect_enabledChanged(self.h, cast[int](addr tmp[]), cQGraphicsEffect_slot_callback_enabledChanged, cQGraphicsEffect_slot_callback_enabledChanged_release)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsEffect_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsEffect_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsEffect_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QGraphicsEffectmetaObjectProc* = proc(self: QGraphicsEffect): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsEffectmetacastProc* = proc(self: QGraphicsEffect, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsEffectmetacallProc* = proc(self: QGraphicsEffect, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsEffectboundingRectForProc* = proc(self: QGraphicsEffect, sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsEffectdrawProc* = proc(self: QGraphicsEffect, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QGraphicsEffectsourceChangedProc* = proc(self: QGraphicsEffect, flags: cint): void {.raises: [], gcsafe.}
type QGraphicsEffecteventProc* = proc(self: QGraphicsEffect, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsEffecteventFilterProc* = proc(self: QGraphicsEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsEffecttimerEventProc* = proc(self: QGraphicsEffect, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsEffectchildEventProc* = proc(self: QGraphicsEffect, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsEffectcustomEventProc* = proc(self: QGraphicsEffect, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsEffectconnectNotifyProc* = proc(self: QGraphicsEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsEffectdisconnectNotifyProc* = proc(self: QGraphicsEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsEffectVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsEffectVTable
  metaObject*: QGraphicsEffectmetaObjectProc
  metacast*: QGraphicsEffectmetacastProc
  metacall*: QGraphicsEffectmetacallProc
  boundingRectFor*: QGraphicsEffectboundingRectForProc
  draw*: QGraphicsEffectdrawProc
  sourceChanged*: QGraphicsEffectsourceChangedProc
  event*: QGraphicsEffecteventProc
  eventFilter*: QGraphicsEffecteventFilterProc
  timerEvent*: QGraphicsEffecttimerEventProc
  childEvent*: QGraphicsEffectchildEventProc
  customEvent*: QGraphicsEffectcustomEventProc
  connectNotify*: QGraphicsEffectconnectNotifyProc
  disconnectNotify*: QGraphicsEffectdisconnectNotifyProc
proc QGraphicsEffectmetaObject*(self: gen_qgraphicseffect_types.QGraphicsEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsEffect_virtualbase_metaObject(self.h), owned: false)

proc cQGraphicsEffect_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](fcQGraphicsEffect_vdata(self))
  let self = QGraphicsEffect(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsEffectmetacast*(self: gen_qgraphicseffect_types.QGraphicsEffect, param1: cstring): pointer =
  fcQGraphicsEffect_virtualbase_metacast(self.h, param1)

proc cQGraphicsEffect_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](fcQGraphicsEffect_vdata(self))
  let self = QGraphicsEffect(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsEffectmetacall*(self: gen_qgraphicseffect_types.QGraphicsEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQGraphicsEffect_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](fcQGraphicsEffect_vdata(self))
  let self = QGraphicsEffect(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsEffectboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsEffect, sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsEffect_virtualbase_boundingRectFor(self.h, sourceRect.h), owned: true)

proc cQGraphicsEffect_vtable_callback_boundingRectFor(self: pointer, sourceRect: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](fcQGraphicsEffect_vdata(self))
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: sourceRect, owned: false)
  var virtualReturn = vtbl[].boundingRectFor(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc cQGraphicsEffect_vtable_callback_draw(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](fcQGraphicsEffect_vdata(self))
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].draw(self, slotval1)

proc QGraphicsEffectsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsEffect, flags: cint): void =
  fcQGraphicsEffect_virtualbase_sourceChanged(self.h, cint(flags))

proc cQGraphicsEffect_vtable_callback_sourceChanged(self: pointer, flags: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](fcQGraphicsEffect_vdata(self))
  let self = QGraphicsEffect(h: self)
  let slotval1 = cint(flags)
  vtbl[].sourceChanged(self, slotval1)

proc QGraphicsEffectevent*(self: gen_qgraphicseffect_types.QGraphicsEffect, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsEffect_virtualbase_event(self.h, event.h)

proc cQGraphicsEffect_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](fcQGraphicsEffect_vdata(self))
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsEffecteventFilter*(self: gen_qgraphicseffect_types.QGraphicsEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQGraphicsEffect_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](fcQGraphicsEffect_vdata(self))
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsEffecttimerEvent*(self: gen_qgraphicseffect_types.QGraphicsEffect, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsEffect_virtualbase_timerEvent(self.h, event.h)

proc cQGraphicsEffect_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](fcQGraphicsEffect_vdata(self))
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsEffectchildEvent*(self: gen_qgraphicseffect_types.QGraphicsEffect, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsEffect_virtualbase_childEvent(self.h, event.h)

proc cQGraphicsEffect_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](fcQGraphicsEffect_vdata(self))
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsEffectcustomEvent*(self: gen_qgraphicseffect_types.QGraphicsEffect, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsEffect_virtualbase_customEvent(self.h, event.h)

proc cQGraphicsEffect_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](fcQGraphicsEffect_vdata(self))
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsEffectconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsEffect_virtualbase_connectNotify(self.h, signal.h)

proc cQGraphicsEffect_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](fcQGraphicsEffect_vdata(self))
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsEffectdisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsEffect_virtualbase_disconnectNotify(self.h, signal.h)

proc cQGraphicsEffect_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](fcQGraphicsEffect_vdata(self))
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQGraphicsEffect* {.inheritable.} = ref object of QGraphicsEffect
  vtbl*: cQGraphicsEffectVTable
method metaObject*(self: VirtualQGraphicsEffect): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGraphicsEffectmetaObject(self[])
proc cQGraphicsEffect_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsEffect](fcQGraphicsEffect_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQGraphicsEffect, param1: cstring): pointer {.base.} =
  QGraphicsEffectmetacast(self[], param1)
proc cQGraphicsEffect_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsEffect](fcQGraphicsEffect_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQGraphicsEffect, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGraphicsEffectmetacall(self[], param1, param2, param3)
proc cQGraphicsEffect_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsEffect](fcQGraphicsEffect_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method boundingRectFor*(self: VirtualQGraphicsEffect, sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF {.base.} =
  QGraphicsEffectboundingRectFor(self[], sourceRect)
proc cQGraphicsEffect_method_callback_boundingRectFor(self: pointer, sourceRect: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsEffect](fcQGraphicsEffect_vdata(self))
  let slotval1 = gen_qrect_types.QRectF(h: sourceRect, owned: false)
  var virtualReturn = inst.boundingRectFor(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method draw*(self: VirtualQGraphicsEffect, painter: gen_qpainter_types.QPainter): void {.base.} =
  raiseAssert("missing implementation of QGraphicsEffect_virtualbase_draw")
proc cQGraphicsEffect_method_callback_draw(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsEffect](fcQGraphicsEffect_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.draw(slotval1)

method sourceChanged*(self: VirtualQGraphicsEffect, flags: cint): void {.base.} =
  QGraphicsEffectsourceChanged(self[], flags)
proc cQGraphicsEffect_method_callback_sourceChanged(self: pointer, flags: cint): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsEffect](fcQGraphicsEffect_vdata(self))
  let slotval1 = cint(flags)
  inst.sourceChanged(slotval1)

method event*(self: VirtualQGraphicsEffect, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsEffectevent(self[], event)
proc cQGraphicsEffect_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsEffect](fcQGraphicsEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQGraphicsEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsEffecteventFilter(self[], watched, event)
proc cQGraphicsEffect_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsEffect](fcQGraphicsEffect_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQGraphicsEffect, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGraphicsEffecttimerEvent(self[], event)
proc cQGraphicsEffect_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsEffect](fcQGraphicsEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQGraphicsEffect, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGraphicsEffectchildEvent(self[], event)
proc cQGraphicsEffect_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsEffect](fcQGraphicsEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQGraphicsEffect, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsEffectcustomEvent(self[], event)
proc cQGraphicsEffect_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsEffect](fcQGraphicsEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQGraphicsEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsEffectconnectNotify(self[], signal)
proc cQGraphicsEffect_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsEffect](fcQGraphicsEffect_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQGraphicsEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsEffectdisconnectNotify(self[], signal)
proc cQGraphicsEffect_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsEffect](fcQGraphicsEffect_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc updateBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsEffect): void =
  fcQGraphicsEffect_protectedbase_updateBoundingRect(self.h)

proc sourceIsPixmap*(self: gen_qgraphicseffect_types.QGraphicsEffect): bool =
  fcQGraphicsEffect_protectedbase_sourceIsPixmap(self.h)

proc sourceBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsEffect): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsEffect_protectedbase_sourceBoundingRect(self.h), owned: true)

proc drawSource*(self: gen_qgraphicseffect_types.QGraphicsEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsEffect_protectedbase_drawSource(self.h, painter.h)

proc sourcePixmap*(self: gen_qgraphicseffect_types.QGraphicsEffect): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQGraphicsEffect_protectedbase_sourcePixmap(self.h), owned: true)

proc sourceBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsEffect, system: cint): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsEffect_protectedbase_sourceBoundingRect1(self.h, cint(system)), owned: true)

proc sourcePixmap*(self: gen_qgraphicseffect_types.QGraphicsEffect, system: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQGraphicsEffect_protectedbase_sourcePixmap1(self.h, cint(system)), owned: true)

proc sourcePixmap*(self: gen_qgraphicseffect_types.QGraphicsEffect, system: cint, offset: gen_qpoint_types.QPoint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQGraphicsEffect_protectedbase_sourcePixmap2(self.h, cint(system), offset.h), owned: true)

proc sourcePixmap*(self: gen_qgraphicseffect_types.QGraphicsEffect, system: cint, offset: gen_qpoint_types.QPoint, mode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQGraphicsEffect_protectedbase_sourcePixmap3(self.h, cint(system), offset.h, cint(mode)), owned: true)

proc sender*(self: gen_qgraphicseffect_types.QGraphicsEffect): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsEffect_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgraphicseffect_types.QGraphicsEffect): cint =
  fcQGraphicsEffect_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicseffect_types.QGraphicsEffect, signal: cstring): cint =
  fcQGraphicsEffect_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicseffect_types.QGraphicsEffect, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsEffect_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicseffect_types.QGraphicsEffect,
    vtbl: ref QGraphicsEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsEffect =
  let vtbl = if vtbl == nil: new QGraphicsEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsEffectVTable](fcQGraphicsEffect_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsEffect_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsEffect_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsEffect_vtable_callback_metacall
  if not isNil(vtbl[].boundingRectFor):
    vtbl[].vtbl.boundingRectFor = cQGraphicsEffect_vtable_callback_boundingRectFor
  if not isNil(vtbl[].draw):
    vtbl[].vtbl.draw = cQGraphicsEffect_vtable_callback_draw
  if not isNil(vtbl[].sourceChanged):
    vtbl[].vtbl.sourceChanged = cQGraphicsEffect_vtable_callback_sourceChanged
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsEffect_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsEffect_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsEffect_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsEffect_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsEffect_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsEffect_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsEffect_vtable_callback_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsEffect(h: fcQGraphicsEffect_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgraphicseffect_types.QGraphicsEffect,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsEffect =
  let vtbl = if vtbl == nil: new QGraphicsEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsEffectVTable](fcQGraphicsEffect_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsEffect_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsEffect_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsEffect_vtable_callback_metacall
  if not isNil(vtbl[].boundingRectFor):
    vtbl[].vtbl.boundingRectFor = cQGraphicsEffect_vtable_callback_boundingRectFor
  if not isNil(vtbl[].draw):
    vtbl[].vtbl.draw = cQGraphicsEffect_vtable_callback_draw
  if not isNil(vtbl[].sourceChanged):
    vtbl[].vtbl.sourceChanged = cQGraphicsEffect_vtable_callback_sourceChanged
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsEffect_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsEffect_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsEffect_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsEffect_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsEffect_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsEffect_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsEffect_vtable_callback_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsEffect(h: fcQGraphicsEffect_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQGraphicsEffect_mvtbl = cQGraphicsEffectVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGraphicsEffect()[])](self.fcQGraphicsEffect_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQGraphicsEffect_method_callback_metaObject,
  metacast: cQGraphicsEffect_method_callback_metacast,
  metacall: cQGraphicsEffect_method_callback_metacall,
  boundingRectFor: cQGraphicsEffect_method_callback_boundingRectFor,
  draw: cQGraphicsEffect_method_callback_draw,
  sourceChanged: cQGraphicsEffect_method_callback_sourceChanged,
  event: cQGraphicsEffect_method_callback_event,
  eventFilter: cQGraphicsEffect_method_callback_eventFilter,
  timerEvent: cQGraphicsEffect_method_callback_timerEvent,
  childEvent: cQGraphicsEffect_method_callback_childEvent,
  customEvent: cQGraphicsEffect_method_callback_customEvent,
  connectNotify: cQGraphicsEffect_method_callback_connectNotify,
  disconnectNotify: cQGraphicsEffect_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgraphicseffect_types.QGraphicsEffect,
    inst: VirtualQGraphicsEffect) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsEffect_new(addr(cQGraphicsEffect_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgraphicseffect_types.QGraphicsEffect,
    parent: gen_qobject_types.QObject,
    inst: VirtualQGraphicsEffect) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsEffect_new2(addr(cQGraphicsEffect_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgraphicseffect_types.QGraphicsEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsEffect_staticMetaObject())
proc metaObject*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsColorizeEffect_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, param1: cstring): pointer =
  fcQGraphicsColorizeEffect_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsColorizeEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsColorizeEffect, s: cstring): string =
  let v_ms = fcQGraphicsColorizeEffect_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsColorizeEffect, s: cstring): string =
  let v_ms = fcQGraphicsColorizeEffect_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc color*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQGraphicsColorizeEffect_color(self.h), owned: true)

proc strength*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect): float64 =
  fcQGraphicsColorizeEffect_strength(self.h)

proc setColor*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, c: gen_qcolor_types.QColor): void =
  fcQGraphicsColorizeEffect_setColor(self.h, c.h)

proc setStrength*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, strength: float64): void =
  fcQGraphicsColorizeEffect_setStrength(self.h, strength)

proc colorChanged*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, color: gen_qcolor_types.QColor): void =
  fcQGraphicsColorizeEffect_colorChanged(self.h, color.h)

type QGraphicsColorizeEffectcolorChangedSlot* = proc(color: gen_qcolor_types.QColor)
proc cQGraphicsColorizeEffect_slot_callback_colorChanged(slot: int, color: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsColorizeEffectcolorChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qcolor_types.QColor(h: color, owned: false)

  nimfunc[](slotval1)

proc cQGraphicsColorizeEffect_slot_callback_colorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsColorizeEffectcolorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncolorChanged*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, slot: QGraphicsColorizeEffectcolorChangedSlot) =
  var tmp = new QGraphicsColorizeEffectcolorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_connect_colorChanged(self.h, cast[int](addr tmp[]), cQGraphicsColorizeEffect_slot_callback_colorChanged, cQGraphicsColorizeEffect_slot_callback_colorChanged_release)

proc strengthChanged*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, strength: float64): void =
  fcQGraphicsColorizeEffect_strengthChanged(self.h, strength)

type QGraphicsColorizeEffectstrengthChangedSlot* = proc(strength: float64)
proc cQGraphicsColorizeEffect_slot_callback_strengthChanged(slot: int, strength: float64) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsColorizeEffectstrengthChangedSlot](cast[pointer](slot))
  let slotval1 = strength

  nimfunc[](slotval1)

proc cQGraphicsColorizeEffect_slot_callback_strengthChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsColorizeEffectstrengthChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstrengthChanged*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, slot: QGraphicsColorizeEffectstrengthChangedSlot) =
  var tmp = new QGraphicsColorizeEffectstrengthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_connect_strengthChanged(self.h, cast[int](addr tmp[]), cQGraphicsColorizeEffect_slot_callback_strengthChanged, cQGraphicsColorizeEffect_slot_callback_strengthChanged_release)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsColorizeEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsColorizeEffect_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsColorizeEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsColorizeEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsColorizeEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsColorizeEffect_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsColorizeEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsColorizeEffect_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QGraphicsColorizeEffectmetaObjectProc* = proc(self: QGraphicsColorizeEffect): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsColorizeEffectmetacastProc* = proc(self: QGraphicsColorizeEffect, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsColorizeEffectmetacallProc* = proc(self: QGraphicsColorizeEffect, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsColorizeEffectdrawProc* = proc(self: QGraphicsColorizeEffect, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QGraphicsColorizeEffectboundingRectForProc* = proc(self: QGraphicsColorizeEffect, sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsColorizeEffectsourceChangedProc* = proc(self: QGraphicsColorizeEffect, flags: cint): void {.raises: [], gcsafe.}
type QGraphicsColorizeEffecteventProc* = proc(self: QGraphicsColorizeEffect, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsColorizeEffecteventFilterProc* = proc(self: QGraphicsColorizeEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsColorizeEffecttimerEventProc* = proc(self: QGraphicsColorizeEffect, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsColorizeEffectchildEventProc* = proc(self: QGraphicsColorizeEffect, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsColorizeEffectcustomEventProc* = proc(self: QGraphicsColorizeEffect, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsColorizeEffectconnectNotifyProc* = proc(self: QGraphicsColorizeEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsColorizeEffectdisconnectNotifyProc* = proc(self: QGraphicsColorizeEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsColorizeEffectVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsColorizeEffectVTable
  metaObject*: QGraphicsColorizeEffectmetaObjectProc
  metacast*: QGraphicsColorizeEffectmetacastProc
  metacall*: QGraphicsColorizeEffectmetacallProc
  draw*: QGraphicsColorizeEffectdrawProc
  boundingRectFor*: QGraphicsColorizeEffectboundingRectForProc
  sourceChanged*: QGraphicsColorizeEffectsourceChangedProc
  event*: QGraphicsColorizeEffecteventProc
  eventFilter*: QGraphicsColorizeEffecteventFilterProc
  timerEvent*: QGraphicsColorizeEffecttimerEventProc
  childEvent*: QGraphicsColorizeEffectchildEventProc
  customEvent*: QGraphicsColorizeEffectcustomEventProc
  connectNotify*: QGraphicsColorizeEffectconnectNotifyProc
  disconnectNotify*: QGraphicsColorizeEffectdisconnectNotifyProc
proc QGraphicsColorizeEffectmetaObject*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsColorizeEffect_virtualbase_metaObject(self.h), owned: false)

proc cQGraphicsColorizeEffect_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](fcQGraphicsColorizeEffect_vdata(self))
  let self = QGraphicsColorizeEffect(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsColorizeEffectmetacast*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, param1: cstring): pointer =
  fcQGraphicsColorizeEffect_virtualbase_metacast(self.h, param1)

proc cQGraphicsColorizeEffect_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](fcQGraphicsColorizeEffect_vdata(self))
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsColorizeEffectmetacall*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsColorizeEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQGraphicsColorizeEffect_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](fcQGraphicsColorizeEffect_vdata(self))
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsColorizeEffectdraw*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsColorizeEffect_virtualbase_draw(self.h, painter.h)

proc cQGraphicsColorizeEffect_vtable_callback_draw(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](fcQGraphicsColorizeEffect_vdata(self))
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].draw(self, slotval1)

proc QGraphicsColorizeEffectboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsColorizeEffect_virtualbase_boundingRectFor(self.h, sourceRect.h), owned: true)

proc cQGraphicsColorizeEffect_vtable_callback_boundingRectFor(self: pointer, sourceRect: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](fcQGraphicsColorizeEffect_vdata(self))
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: sourceRect, owned: false)
  var virtualReturn = vtbl[].boundingRectFor(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsColorizeEffectsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, flags: cint): void =
  fcQGraphicsColorizeEffect_virtualbase_sourceChanged(self.h, cint(flags))

proc cQGraphicsColorizeEffect_vtable_callback_sourceChanged(self: pointer, flags: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](fcQGraphicsColorizeEffect_vdata(self))
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = cint(flags)
  vtbl[].sourceChanged(self, slotval1)

proc QGraphicsColorizeEffectevent*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsColorizeEffect_virtualbase_event(self.h, event.h)

proc cQGraphicsColorizeEffect_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](fcQGraphicsColorizeEffect_vdata(self))
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsColorizeEffecteventFilter*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsColorizeEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQGraphicsColorizeEffect_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](fcQGraphicsColorizeEffect_vdata(self))
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsColorizeEffecttimerEvent*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsColorizeEffect_virtualbase_timerEvent(self.h, event.h)

proc cQGraphicsColorizeEffect_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](fcQGraphicsColorizeEffect_vdata(self))
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsColorizeEffectchildEvent*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsColorizeEffect_virtualbase_childEvent(self.h, event.h)

proc cQGraphicsColorizeEffect_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](fcQGraphicsColorizeEffect_vdata(self))
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsColorizeEffectcustomEvent*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsColorizeEffect_virtualbase_customEvent(self.h, event.h)

proc cQGraphicsColorizeEffect_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](fcQGraphicsColorizeEffect_vdata(self))
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsColorizeEffectconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsColorizeEffect_virtualbase_connectNotify(self.h, signal.h)

proc cQGraphicsColorizeEffect_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](fcQGraphicsColorizeEffect_vdata(self))
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsColorizeEffectdisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsColorizeEffect_virtualbase_disconnectNotify(self.h, signal.h)

proc cQGraphicsColorizeEffect_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](fcQGraphicsColorizeEffect_vdata(self))
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQGraphicsColorizeEffect* {.inheritable.} = ref object of QGraphicsColorizeEffect
  vtbl*: cQGraphicsColorizeEffectVTable
method metaObject*(self: VirtualQGraphicsColorizeEffect): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGraphicsColorizeEffectmetaObject(self[])
proc cQGraphicsColorizeEffect_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsColorizeEffect](fcQGraphicsColorizeEffect_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQGraphicsColorizeEffect, param1: cstring): pointer {.base.} =
  QGraphicsColorizeEffectmetacast(self[], param1)
proc cQGraphicsColorizeEffect_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsColorizeEffect](fcQGraphicsColorizeEffect_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQGraphicsColorizeEffect, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGraphicsColorizeEffectmetacall(self[], param1, param2, param3)
proc cQGraphicsColorizeEffect_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsColorizeEffect](fcQGraphicsColorizeEffect_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method draw*(self: VirtualQGraphicsColorizeEffect, painter: gen_qpainter_types.QPainter): void {.base.} =
  QGraphicsColorizeEffectdraw(self[], painter)
proc cQGraphicsColorizeEffect_method_callback_draw(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsColorizeEffect](fcQGraphicsColorizeEffect_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.draw(slotval1)

method boundingRectFor*(self: VirtualQGraphicsColorizeEffect, sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF {.base.} =
  QGraphicsColorizeEffectboundingRectFor(self[], sourceRect)
proc cQGraphicsColorizeEffect_method_callback_boundingRectFor(self: pointer, sourceRect: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsColorizeEffect](fcQGraphicsColorizeEffect_vdata(self))
  let slotval1 = gen_qrect_types.QRectF(h: sourceRect, owned: false)
  var virtualReturn = inst.boundingRectFor(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sourceChanged*(self: VirtualQGraphicsColorizeEffect, flags: cint): void {.base.} =
  QGraphicsColorizeEffectsourceChanged(self[], flags)
proc cQGraphicsColorizeEffect_method_callback_sourceChanged(self: pointer, flags: cint): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsColorizeEffect](fcQGraphicsColorizeEffect_vdata(self))
  let slotval1 = cint(flags)
  inst.sourceChanged(slotval1)

method event*(self: VirtualQGraphicsColorizeEffect, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsColorizeEffectevent(self[], event)
proc cQGraphicsColorizeEffect_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsColorizeEffect](fcQGraphicsColorizeEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQGraphicsColorizeEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsColorizeEffecteventFilter(self[], watched, event)
proc cQGraphicsColorizeEffect_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsColorizeEffect](fcQGraphicsColorizeEffect_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQGraphicsColorizeEffect, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGraphicsColorizeEffecttimerEvent(self[], event)
proc cQGraphicsColorizeEffect_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsColorizeEffect](fcQGraphicsColorizeEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQGraphicsColorizeEffect, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGraphicsColorizeEffectchildEvent(self[], event)
proc cQGraphicsColorizeEffect_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsColorizeEffect](fcQGraphicsColorizeEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQGraphicsColorizeEffect, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsColorizeEffectcustomEvent(self[], event)
proc cQGraphicsColorizeEffect_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsColorizeEffect](fcQGraphicsColorizeEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQGraphicsColorizeEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsColorizeEffectconnectNotify(self[], signal)
proc cQGraphicsColorizeEffect_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsColorizeEffect](fcQGraphicsColorizeEffect_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQGraphicsColorizeEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsColorizeEffectdisconnectNotify(self[], signal)
proc cQGraphicsColorizeEffect_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsColorizeEffect](fcQGraphicsColorizeEffect_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc updateBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect): void =
  fcQGraphicsColorizeEffect_protectedbase_updateBoundingRect(self.h)

proc sourceIsPixmap*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect): bool =
  fcQGraphicsColorizeEffect_protectedbase_sourceIsPixmap(self.h)

proc sourceBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsColorizeEffect_protectedbase_sourceBoundingRect(self.h), owned: true)

proc drawSource*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsColorizeEffect_protectedbase_drawSource(self.h, painter.h)

proc sourcePixmap*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQGraphicsColorizeEffect_protectedbase_sourcePixmap(self.h), owned: true)

proc sender*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsColorizeEffect_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect): cint =
  fcQGraphicsColorizeEffect_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, signal: cstring): cint =
  fcQGraphicsColorizeEffect_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsColorizeEffect_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicseffect_types.QGraphicsColorizeEffect,
    vtbl: ref QGraphicsColorizeEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsColorizeEffect =
  let vtbl = if vtbl == nil: new QGraphicsColorizeEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsColorizeEffectVTable](fcQGraphicsColorizeEffect_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsColorizeEffect_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsColorizeEffect_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsColorizeEffect_vtable_callback_metacall
  if not isNil(vtbl[].draw):
    vtbl[].vtbl.draw = cQGraphicsColorizeEffect_vtable_callback_draw
  if not isNil(vtbl[].boundingRectFor):
    vtbl[].vtbl.boundingRectFor = cQGraphicsColorizeEffect_vtable_callback_boundingRectFor
  if not isNil(vtbl[].sourceChanged):
    vtbl[].vtbl.sourceChanged = cQGraphicsColorizeEffect_vtable_callback_sourceChanged
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsColorizeEffect_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsColorizeEffect_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsColorizeEffect_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsColorizeEffect_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsColorizeEffect_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsColorizeEffect_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsColorizeEffect_vtable_callback_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsColorizeEffect(h: fcQGraphicsColorizeEffect_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgraphicseffect_types.QGraphicsColorizeEffect,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsColorizeEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsColorizeEffect =
  let vtbl = if vtbl == nil: new QGraphicsColorizeEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsColorizeEffectVTable](fcQGraphicsColorizeEffect_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsColorizeEffect_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsColorizeEffect_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsColorizeEffect_vtable_callback_metacall
  if not isNil(vtbl[].draw):
    vtbl[].vtbl.draw = cQGraphicsColorizeEffect_vtable_callback_draw
  if not isNil(vtbl[].boundingRectFor):
    vtbl[].vtbl.boundingRectFor = cQGraphicsColorizeEffect_vtable_callback_boundingRectFor
  if not isNil(vtbl[].sourceChanged):
    vtbl[].vtbl.sourceChanged = cQGraphicsColorizeEffect_vtable_callback_sourceChanged
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsColorizeEffect_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsColorizeEffect_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsColorizeEffect_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsColorizeEffect_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsColorizeEffect_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsColorizeEffect_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsColorizeEffect_vtable_callback_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsColorizeEffect(h: fcQGraphicsColorizeEffect_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQGraphicsColorizeEffect_mvtbl = cQGraphicsColorizeEffectVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGraphicsColorizeEffect()[])](self.fcQGraphicsColorizeEffect_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQGraphicsColorizeEffect_method_callback_metaObject,
  metacast: cQGraphicsColorizeEffect_method_callback_metacast,
  metacall: cQGraphicsColorizeEffect_method_callback_metacall,
  draw: cQGraphicsColorizeEffect_method_callback_draw,
  boundingRectFor: cQGraphicsColorizeEffect_method_callback_boundingRectFor,
  sourceChanged: cQGraphicsColorizeEffect_method_callback_sourceChanged,
  event: cQGraphicsColorizeEffect_method_callback_event,
  eventFilter: cQGraphicsColorizeEffect_method_callback_eventFilter,
  timerEvent: cQGraphicsColorizeEffect_method_callback_timerEvent,
  childEvent: cQGraphicsColorizeEffect_method_callback_childEvent,
  customEvent: cQGraphicsColorizeEffect_method_callback_customEvent,
  connectNotify: cQGraphicsColorizeEffect_method_callback_connectNotify,
  disconnectNotify: cQGraphicsColorizeEffect_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgraphicseffect_types.QGraphicsColorizeEffect,
    inst: VirtualQGraphicsColorizeEffect) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsColorizeEffect_new(addr(cQGraphicsColorizeEffect_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgraphicseffect_types.QGraphicsColorizeEffect,
    parent: gen_qobject_types.QObject,
    inst: VirtualQGraphicsColorizeEffect) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsColorizeEffect_new2(addr(cQGraphicsColorizeEffect_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgraphicseffect_types.QGraphicsColorizeEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsColorizeEffect_staticMetaObject())
proc metaObject*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsBlurEffect_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, param1: cstring): pointer =
  fcQGraphicsBlurEffect_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsBlurEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsBlurEffect, s: cstring): string =
  let v_ms = fcQGraphicsBlurEffect_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsBlurEffect, s: cstring): string =
  let v_ms = fcQGraphicsBlurEffect_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc boundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsBlurEffect_boundingRectFor(self.h, rect.h), owned: true)

proc blurRadius*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect): float64 =
  fcQGraphicsBlurEffect_blurRadius(self.h)

proc blurHints*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect): cint =
  cint(fcQGraphicsBlurEffect_blurHints(self.h))

proc setBlurRadius*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, blurRadius: float64): void =
  fcQGraphicsBlurEffect_setBlurRadius(self.h, blurRadius)

proc setBlurHints*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, hints: cint): void =
  fcQGraphicsBlurEffect_setBlurHints(self.h, cint(hints))

proc blurRadiusChanged*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, blurRadius: float64): void =
  fcQGraphicsBlurEffect_blurRadiusChanged(self.h, blurRadius)

type QGraphicsBlurEffectblurRadiusChangedSlot* = proc(blurRadius: float64)
proc cQGraphicsBlurEffect_slot_callback_blurRadiusChanged(slot: int, blurRadius: float64) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsBlurEffectblurRadiusChangedSlot](cast[pointer](slot))
  let slotval1 = blurRadius

  nimfunc[](slotval1)

proc cQGraphicsBlurEffect_slot_callback_blurRadiusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsBlurEffectblurRadiusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onblurRadiusChanged*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, slot: QGraphicsBlurEffectblurRadiusChangedSlot) =
  var tmp = new QGraphicsBlurEffectblurRadiusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_connect_blurRadiusChanged(self.h, cast[int](addr tmp[]), cQGraphicsBlurEffect_slot_callback_blurRadiusChanged, cQGraphicsBlurEffect_slot_callback_blurRadiusChanged_release)

proc blurHintsChanged*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, hints: cint): void =
  fcQGraphicsBlurEffect_blurHintsChanged(self.h, cint(hints))

type QGraphicsBlurEffectblurHintsChangedSlot* = proc(hints: cint)
proc cQGraphicsBlurEffect_slot_callback_blurHintsChanged(slot: int, hints: cint) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsBlurEffectblurHintsChangedSlot](cast[pointer](slot))
  let slotval1 = cint(hints)

  nimfunc[](slotval1)

proc cQGraphicsBlurEffect_slot_callback_blurHintsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsBlurEffectblurHintsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onblurHintsChanged*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, slot: QGraphicsBlurEffectblurHintsChangedSlot) =
  var tmp = new QGraphicsBlurEffectblurHintsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_connect_blurHintsChanged(self.h, cast[int](addr tmp[]), cQGraphicsBlurEffect_slot_callback_blurHintsChanged, cQGraphicsBlurEffect_slot_callback_blurHintsChanged_release)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsBlurEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsBlurEffect_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsBlurEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsBlurEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsBlurEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsBlurEffect_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsBlurEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsBlurEffect_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QGraphicsBlurEffectmetaObjectProc* = proc(self: QGraphicsBlurEffect): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsBlurEffectmetacastProc* = proc(self: QGraphicsBlurEffect, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsBlurEffectmetacallProc* = proc(self: QGraphicsBlurEffect, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsBlurEffectboundingRectForProc* = proc(self: QGraphicsBlurEffect, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsBlurEffectdrawProc* = proc(self: QGraphicsBlurEffect, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QGraphicsBlurEffectsourceChangedProc* = proc(self: QGraphicsBlurEffect, flags: cint): void {.raises: [], gcsafe.}
type QGraphicsBlurEffecteventProc* = proc(self: QGraphicsBlurEffect, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsBlurEffecteventFilterProc* = proc(self: QGraphicsBlurEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsBlurEffecttimerEventProc* = proc(self: QGraphicsBlurEffect, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsBlurEffectchildEventProc* = proc(self: QGraphicsBlurEffect, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsBlurEffectcustomEventProc* = proc(self: QGraphicsBlurEffect, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsBlurEffectconnectNotifyProc* = proc(self: QGraphicsBlurEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsBlurEffectdisconnectNotifyProc* = proc(self: QGraphicsBlurEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsBlurEffectVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsBlurEffectVTable
  metaObject*: QGraphicsBlurEffectmetaObjectProc
  metacast*: QGraphicsBlurEffectmetacastProc
  metacall*: QGraphicsBlurEffectmetacallProc
  boundingRectFor*: QGraphicsBlurEffectboundingRectForProc
  draw*: QGraphicsBlurEffectdrawProc
  sourceChanged*: QGraphicsBlurEffectsourceChangedProc
  event*: QGraphicsBlurEffecteventProc
  eventFilter*: QGraphicsBlurEffecteventFilterProc
  timerEvent*: QGraphicsBlurEffecttimerEventProc
  childEvent*: QGraphicsBlurEffectchildEventProc
  customEvent*: QGraphicsBlurEffectcustomEventProc
  connectNotify*: QGraphicsBlurEffectconnectNotifyProc
  disconnectNotify*: QGraphicsBlurEffectdisconnectNotifyProc
proc QGraphicsBlurEffectmetaObject*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsBlurEffect_virtualbase_metaObject(self.h), owned: false)

proc cQGraphicsBlurEffect_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](fcQGraphicsBlurEffect_vdata(self))
  let self = QGraphicsBlurEffect(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsBlurEffectmetacast*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, param1: cstring): pointer =
  fcQGraphicsBlurEffect_virtualbase_metacast(self.h, param1)

proc cQGraphicsBlurEffect_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](fcQGraphicsBlurEffect_vdata(self))
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsBlurEffectmetacall*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsBlurEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQGraphicsBlurEffect_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](fcQGraphicsBlurEffect_vdata(self))
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsBlurEffectboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsBlurEffect_virtualbase_boundingRectFor(self.h, rect.h), owned: true)

proc cQGraphicsBlurEffect_vtable_callback_boundingRectFor(self: pointer, rect: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](fcQGraphicsBlurEffect_vdata(self))
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  var virtualReturn = vtbl[].boundingRectFor(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsBlurEffectdraw*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsBlurEffect_virtualbase_draw(self.h, painter.h)

proc cQGraphicsBlurEffect_vtable_callback_draw(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](fcQGraphicsBlurEffect_vdata(self))
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].draw(self, slotval1)

proc QGraphicsBlurEffectsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, flags: cint): void =
  fcQGraphicsBlurEffect_virtualbase_sourceChanged(self.h, cint(flags))

proc cQGraphicsBlurEffect_vtable_callback_sourceChanged(self: pointer, flags: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](fcQGraphicsBlurEffect_vdata(self))
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = cint(flags)
  vtbl[].sourceChanged(self, slotval1)

proc QGraphicsBlurEffectevent*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsBlurEffect_virtualbase_event(self.h, event.h)

proc cQGraphicsBlurEffect_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](fcQGraphicsBlurEffect_vdata(self))
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsBlurEffecteventFilter*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsBlurEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQGraphicsBlurEffect_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](fcQGraphicsBlurEffect_vdata(self))
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsBlurEffecttimerEvent*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsBlurEffect_virtualbase_timerEvent(self.h, event.h)

proc cQGraphicsBlurEffect_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](fcQGraphicsBlurEffect_vdata(self))
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsBlurEffectchildEvent*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsBlurEffect_virtualbase_childEvent(self.h, event.h)

proc cQGraphicsBlurEffect_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](fcQGraphicsBlurEffect_vdata(self))
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsBlurEffectcustomEvent*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsBlurEffect_virtualbase_customEvent(self.h, event.h)

proc cQGraphicsBlurEffect_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](fcQGraphicsBlurEffect_vdata(self))
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsBlurEffectconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsBlurEffect_virtualbase_connectNotify(self.h, signal.h)

proc cQGraphicsBlurEffect_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](fcQGraphicsBlurEffect_vdata(self))
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsBlurEffectdisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsBlurEffect_virtualbase_disconnectNotify(self.h, signal.h)

proc cQGraphicsBlurEffect_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](fcQGraphicsBlurEffect_vdata(self))
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQGraphicsBlurEffect* {.inheritable.} = ref object of QGraphicsBlurEffect
  vtbl*: cQGraphicsBlurEffectVTable
method metaObject*(self: VirtualQGraphicsBlurEffect): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGraphicsBlurEffectmetaObject(self[])
proc cQGraphicsBlurEffect_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsBlurEffect](fcQGraphicsBlurEffect_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQGraphicsBlurEffect, param1: cstring): pointer {.base.} =
  QGraphicsBlurEffectmetacast(self[], param1)
proc cQGraphicsBlurEffect_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsBlurEffect](fcQGraphicsBlurEffect_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQGraphicsBlurEffect, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGraphicsBlurEffectmetacall(self[], param1, param2, param3)
proc cQGraphicsBlurEffect_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsBlurEffect](fcQGraphicsBlurEffect_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method boundingRectFor*(self: VirtualQGraphicsBlurEffect, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF {.base.} =
  QGraphicsBlurEffectboundingRectFor(self[], rect)
proc cQGraphicsBlurEffect_method_callback_boundingRectFor(self: pointer, rect: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsBlurEffect](fcQGraphicsBlurEffect_vdata(self))
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  var virtualReturn = inst.boundingRectFor(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method draw*(self: VirtualQGraphicsBlurEffect, painter: gen_qpainter_types.QPainter): void {.base.} =
  QGraphicsBlurEffectdraw(self[], painter)
proc cQGraphicsBlurEffect_method_callback_draw(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsBlurEffect](fcQGraphicsBlurEffect_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.draw(slotval1)

method sourceChanged*(self: VirtualQGraphicsBlurEffect, flags: cint): void {.base.} =
  QGraphicsBlurEffectsourceChanged(self[], flags)
proc cQGraphicsBlurEffect_method_callback_sourceChanged(self: pointer, flags: cint): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsBlurEffect](fcQGraphicsBlurEffect_vdata(self))
  let slotval1 = cint(flags)
  inst.sourceChanged(slotval1)

method event*(self: VirtualQGraphicsBlurEffect, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsBlurEffectevent(self[], event)
proc cQGraphicsBlurEffect_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsBlurEffect](fcQGraphicsBlurEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQGraphicsBlurEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsBlurEffecteventFilter(self[], watched, event)
proc cQGraphicsBlurEffect_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsBlurEffect](fcQGraphicsBlurEffect_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQGraphicsBlurEffect, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGraphicsBlurEffecttimerEvent(self[], event)
proc cQGraphicsBlurEffect_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsBlurEffect](fcQGraphicsBlurEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQGraphicsBlurEffect, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGraphicsBlurEffectchildEvent(self[], event)
proc cQGraphicsBlurEffect_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsBlurEffect](fcQGraphicsBlurEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQGraphicsBlurEffect, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsBlurEffectcustomEvent(self[], event)
proc cQGraphicsBlurEffect_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsBlurEffect](fcQGraphicsBlurEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQGraphicsBlurEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsBlurEffectconnectNotify(self[], signal)
proc cQGraphicsBlurEffect_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsBlurEffect](fcQGraphicsBlurEffect_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQGraphicsBlurEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsBlurEffectdisconnectNotify(self[], signal)
proc cQGraphicsBlurEffect_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsBlurEffect](fcQGraphicsBlurEffect_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc updateBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect): void =
  fcQGraphicsBlurEffect_protectedbase_updateBoundingRect(self.h)

proc sourceIsPixmap*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect): bool =
  fcQGraphicsBlurEffect_protectedbase_sourceIsPixmap(self.h)

proc sourceBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsBlurEffect_protectedbase_sourceBoundingRect(self.h), owned: true)

proc drawSource*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsBlurEffect_protectedbase_drawSource(self.h, painter.h)

proc sourcePixmap*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQGraphicsBlurEffect_protectedbase_sourcePixmap(self.h), owned: true)

proc sender*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsBlurEffect_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect): cint =
  fcQGraphicsBlurEffect_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, signal: cstring): cint =
  fcQGraphicsBlurEffect_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsBlurEffect_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicseffect_types.QGraphicsBlurEffect,
    vtbl: ref QGraphicsBlurEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsBlurEffect =
  let vtbl = if vtbl == nil: new QGraphicsBlurEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsBlurEffectVTable](fcQGraphicsBlurEffect_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsBlurEffect_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsBlurEffect_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsBlurEffect_vtable_callback_metacall
  if not isNil(vtbl[].boundingRectFor):
    vtbl[].vtbl.boundingRectFor = cQGraphicsBlurEffect_vtable_callback_boundingRectFor
  if not isNil(vtbl[].draw):
    vtbl[].vtbl.draw = cQGraphicsBlurEffect_vtable_callback_draw
  if not isNil(vtbl[].sourceChanged):
    vtbl[].vtbl.sourceChanged = cQGraphicsBlurEffect_vtable_callback_sourceChanged
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsBlurEffect_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsBlurEffect_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsBlurEffect_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsBlurEffect_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsBlurEffect_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsBlurEffect_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsBlurEffect_vtable_callback_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsBlurEffect(h: fcQGraphicsBlurEffect_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgraphicseffect_types.QGraphicsBlurEffect,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsBlurEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsBlurEffect =
  let vtbl = if vtbl == nil: new QGraphicsBlurEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsBlurEffectVTable](fcQGraphicsBlurEffect_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsBlurEffect_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsBlurEffect_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsBlurEffect_vtable_callback_metacall
  if not isNil(vtbl[].boundingRectFor):
    vtbl[].vtbl.boundingRectFor = cQGraphicsBlurEffect_vtable_callback_boundingRectFor
  if not isNil(vtbl[].draw):
    vtbl[].vtbl.draw = cQGraphicsBlurEffect_vtable_callback_draw
  if not isNil(vtbl[].sourceChanged):
    vtbl[].vtbl.sourceChanged = cQGraphicsBlurEffect_vtable_callback_sourceChanged
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsBlurEffect_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsBlurEffect_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsBlurEffect_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsBlurEffect_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsBlurEffect_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsBlurEffect_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsBlurEffect_vtable_callback_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsBlurEffect(h: fcQGraphicsBlurEffect_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQGraphicsBlurEffect_mvtbl = cQGraphicsBlurEffectVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGraphicsBlurEffect()[])](self.fcQGraphicsBlurEffect_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQGraphicsBlurEffect_method_callback_metaObject,
  metacast: cQGraphicsBlurEffect_method_callback_metacast,
  metacall: cQGraphicsBlurEffect_method_callback_metacall,
  boundingRectFor: cQGraphicsBlurEffect_method_callback_boundingRectFor,
  draw: cQGraphicsBlurEffect_method_callback_draw,
  sourceChanged: cQGraphicsBlurEffect_method_callback_sourceChanged,
  event: cQGraphicsBlurEffect_method_callback_event,
  eventFilter: cQGraphicsBlurEffect_method_callback_eventFilter,
  timerEvent: cQGraphicsBlurEffect_method_callback_timerEvent,
  childEvent: cQGraphicsBlurEffect_method_callback_childEvent,
  customEvent: cQGraphicsBlurEffect_method_callback_customEvent,
  connectNotify: cQGraphicsBlurEffect_method_callback_connectNotify,
  disconnectNotify: cQGraphicsBlurEffect_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgraphicseffect_types.QGraphicsBlurEffect,
    inst: VirtualQGraphicsBlurEffect) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsBlurEffect_new(addr(cQGraphicsBlurEffect_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgraphicseffect_types.QGraphicsBlurEffect,
    parent: gen_qobject_types.QObject,
    inst: VirtualQGraphicsBlurEffect) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsBlurEffect_new2(addr(cQGraphicsBlurEffect_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgraphicseffect_types.QGraphicsBlurEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsBlurEffect_staticMetaObject())
proc metaObject*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsDropShadowEffect_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, param1: cstring): pointer =
  fcQGraphicsDropShadowEffect_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsDropShadowEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect, s: cstring): string =
  let v_ms = fcQGraphicsDropShadowEffect_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect, s: cstring): string =
  let v_ms = fcQGraphicsDropShadowEffect_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc boundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsDropShadowEffect_boundingRectFor(self.h, rect.h), owned: true)

proc offset*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsDropShadowEffect_offset(self.h), owned: true)

proc xOffset*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect): float64 =
  fcQGraphicsDropShadowEffect_xOffset(self.h)

proc yOffset*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect): float64 =
  fcQGraphicsDropShadowEffect_yOffset(self.h)

proc blurRadius*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect): float64 =
  fcQGraphicsDropShadowEffect_blurRadius(self.h)

proc color*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQGraphicsDropShadowEffect_color(self.h), owned: true)

proc setOffset*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, ofs: gen_qpoint_types.QPointF): void =
  fcQGraphicsDropShadowEffect_setOffset(self.h, ofs.h)

proc setOffset*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, dx: float64, dy: float64): void =
  fcQGraphicsDropShadowEffect_setOffset2(self.h, dx, dy)

proc setOffset*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, d: float64): void =
  fcQGraphicsDropShadowEffect_setOffsetWithQreal(self.h, d)

proc setXOffset*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, dx: float64): void =
  fcQGraphicsDropShadowEffect_setXOffset(self.h, dx)

proc setYOffset*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, dy: float64): void =
  fcQGraphicsDropShadowEffect_setYOffset(self.h, dy)

proc setBlurRadius*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, blurRadius: float64): void =
  fcQGraphicsDropShadowEffect_setBlurRadius(self.h, blurRadius)

proc setColor*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, color: gen_qcolor_types.QColor): void =
  fcQGraphicsDropShadowEffect_setColor(self.h, color.h)

proc offsetChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, offset: gen_qpoint_types.QPointF): void =
  fcQGraphicsDropShadowEffect_offsetChanged(self.h, offset.h)

type QGraphicsDropShadowEffectoffsetChangedSlot* = proc(offset: gen_qpoint_types.QPointF)
proc cQGraphicsDropShadowEffect_slot_callback_offsetChanged(slot: int, offset: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsDropShadowEffectoffsetChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: offset, owned: false)

  nimfunc[](slotval1)

proc cQGraphicsDropShadowEffect_slot_callback_offsetChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsDropShadowEffectoffsetChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onoffsetChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffectoffsetChangedSlot) =
  var tmp = new QGraphicsDropShadowEffectoffsetChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_connect_offsetChanged(self.h, cast[int](addr tmp[]), cQGraphicsDropShadowEffect_slot_callback_offsetChanged, cQGraphicsDropShadowEffect_slot_callback_offsetChanged_release)

proc blurRadiusChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, blurRadius: float64): void =
  fcQGraphicsDropShadowEffect_blurRadiusChanged(self.h, blurRadius)

type QGraphicsDropShadowEffectblurRadiusChangedSlot* = proc(blurRadius: float64)
proc cQGraphicsDropShadowEffect_slot_callback_blurRadiusChanged(slot: int, blurRadius: float64) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsDropShadowEffectblurRadiusChangedSlot](cast[pointer](slot))
  let slotval1 = blurRadius

  nimfunc[](slotval1)

proc cQGraphicsDropShadowEffect_slot_callback_blurRadiusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsDropShadowEffectblurRadiusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onblurRadiusChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffectblurRadiusChangedSlot) =
  var tmp = new QGraphicsDropShadowEffectblurRadiusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_connect_blurRadiusChanged(self.h, cast[int](addr tmp[]), cQGraphicsDropShadowEffect_slot_callback_blurRadiusChanged, cQGraphicsDropShadowEffect_slot_callback_blurRadiusChanged_release)

proc colorChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, color: gen_qcolor_types.QColor): void =
  fcQGraphicsDropShadowEffect_colorChanged(self.h, color.h)

type QGraphicsDropShadowEffectcolorChangedSlot* = proc(color: gen_qcolor_types.QColor)
proc cQGraphicsDropShadowEffect_slot_callback_colorChanged(slot: int, color: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsDropShadowEffectcolorChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qcolor_types.QColor(h: color, owned: false)

  nimfunc[](slotval1)

proc cQGraphicsDropShadowEffect_slot_callback_colorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsDropShadowEffectcolorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncolorChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffectcolorChangedSlot) =
  var tmp = new QGraphicsDropShadowEffectcolorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_connect_colorChanged(self.h, cast[int](addr tmp[]), cQGraphicsDropShadowEffect_slot_callback_colorChanged, cQGraphicsDropShadowEffect_slot_callback_colorChanged_release)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsDropShadowEffect_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsDropShadowEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsDropShadowEffect_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsDropShadowEffect_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QGraphicsDropShadowEffectmetaObjectProc* = proc(self: QGraphicsDropShadowEffect): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsDropShadowEffectmetacastProc* = proc(self: QGraphicsDropShadowEffect, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsDropShadowEffectmetacallProc* = proc(self: QGraphicsDropShadowEffect, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsDropShadowEffectboundingRectForProc* = proc(self: QGraphicsDropShadowEffect, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsDropShadowEffectdrawProc* = proc(self: QGraphicsDropShadowEffect, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QGraphicsDropShadowEffectsourceChangedProc* = proc(self: QGraphicsDropShadowEffect, flags: cint): void {.raises: [], gcsafe.}
type QGraphicsDropShadowEffecteventProc* = proc(self: QGraphicsDropShadowEffect, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsDropShadowEffecteventFilterProc* = proc(self: QGraphicsDropShadowEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsDropShadowEffecttimerEventProc* = proc(self: QGraphicsDropShadowEffect, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsDropShadowEffectchildEventProc* = proc(self: QGraphicsDropShadowEffect, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsDropShadowEffectcustomEventProc* = proc(self: QGraphicsDropShadowEffect, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsDropShadowEffectconnectNotifyProc* = proc(self: QGraphicsDropShadowEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsDropShadowEffectdisconnectNotifyProc* = proc(self: QGraphicsDropShadowEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsDropShadowEffectVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsDropShadowEffectVTable
  metaObject*: QGraphicsDropShadowEffectmetaObjectProc
  metacast*: QGraphicsDropShadowEffectmetacastProc
  metacall*: QGraphicsDropShadowEffectmetacallProc
  boundingRectFor*: QGraphicsDropShadowEffectboundingRectForProc
  draw*: QGraphicsDropShadowEffectdrawProc
  sourceChanged*: QGraphicsDropShadowEffectsourceChangedProc
  event*: QGraphicsDropShadowEffecteventProc
  eventFilter*: QGraphicsDropShadowEffecteventFilterProc
  timerEvent*: QGraphicsDropShadowEffecttimerEventProc
  childEvent*: QGraphicsDropShadowEffectchildEventProc
  customEvent*: QGraphicsDropShadowEffectcustomEventProc
  connectNotify*: QGraphicsDropShadowEffectconnectNotifyProc
  disconnectNotify*: QGraphicsDropShadowEffectdisconnectNotifyProc
proc QGraphicsDropShadowEffectmetaObject*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsDropShadowEffect_virtualbase_metaObject(self.h), owned: false)

proc cQGraphicsDropShadowEffect_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](fcQGraphicsDropShadowEffect_vdata(self))
  let self = QGraphicsDropShadowEffect(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsDropShadowEffectmetacast*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, param1: cstring): pointer =
  fcQGraphicsDropShadowEffect_virtualbase_metacast(self.h, param1)

proc cQGraphicsDropShadowEffect_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](fcQGraphicsDropShadowEffect_vdata(self))
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsDropShadowEffectmetacall*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsDropShadowEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQGraphicsDropShadowEffect_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](fcQGraphicsDropShadowEffect_vdata(self))
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsDropShadowEffectboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsDropShadowEffect_virtualbase_boundingRectFor(self.h, rect.h), owned: true)

proc cQGraphicsDropShadowEffect_vtable_callback_boundingRectFor(self: pointer, rect: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](fcQGraphicsDropShadowEffect_vdata(self))
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  var virtualReturn = vtbl[].boundingRectFor(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsDropShadowEffectdraw*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsDropShadowEffect_virtualbase_draw(self.h, painter.h)

proc cQGraphicsDropShadowEffect_vtable_callback_draw(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](fcQGraphicsDropShadowEffect_vdata(self))
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].draw(self, slotval1)

proc QGraphicsDropShadowEffectsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, flags: cint): void =
  fcQGraphicsDropShadowEffect_virtualbase_sourceChanged(self.h, cint(flags))

proc cQGraphicsDropShadowEffect_vtable_callback_sourceChanged(self: pointer, flags: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](fcQGraphicsDropShadowEffect_vdata(self))
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = cint(flags)
  vtbl[].sourceChanged(self, slotval1)

proc QGraphicsDropShadowEffectevent*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsDropShadowEffect_virtualbase_event(self.h, event.h)

proc cQGraphicsDropShadowEffect_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](fcQGraphicsDropShadowEffect_vdata(self))
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsDropShadowEffecteventFilter*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsDropShadowEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQGraphicsDropShadowEffect_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](fcQGraphicsDropShadowEffect_vdata(self))
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsDropShadowEffecttimerEvent*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsDropShadowEffect_virtualbase_timerEvent(self.h, event.h)

proc cQGraphicsDropShadowEffect_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](fcQGraphicsDropShadowEffect_vdata(self))
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsDropShadowEffectchildEvent*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsDropShadowEffect_virtualbase_childEvent(self.h, event.h)

proc cQGraphicsDropShadowEffect_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](fcQGraphicsDropShadowEffect_vdata(self))
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsDropShadowEffectcustomEvent*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsDropShadowEffect_virtualbase_customEvent(self.h, event.h)

proc cQGraphicsDropShadowEffect_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](fcQGraphicsDropShadowEffect_vdata(self))
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsDropShadowEffectconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsDropShadowEffect_virtualbase_connectNotify(self.h, signal.h)

proc cQGraphicsDropShadowEffect_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](fcQGraphicsDropShadowEffect_vdata(self))
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsDropShadowEffectdisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsDropShadowEffect_virtualbase_disconnectNotify(self.h, signal.h)

proc cQGraphicsDropShadowEffect_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](fcQGraphicsDropShadowEffect_vdata(self))
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQGraphicsDropShadowEffect* {.inheritable.} = ref object of QGraphicsDropShadowEffect
  vtbl*: cQGraphicsDropShadowEffectVTable
method metaObject*(self: VirtualQGraphicsDropShadowEffect): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGraphicsDropShadowEffectmetaObject(self[])
proc cQGraphicsDropShadowEffect_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsDropShadowEffect](fcQGraphicsDropShadowEffect_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQGraphicsDropShadowEffect, param1: cstring): pointer {.base.} =
  QGraphicsDropShadowEffectmetacast(self[], param1)
proc cQGraphicsDropShadowEffect_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsDropShadowEffect](fcQGraphicsDropShadowEffect_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQGraphicsDropShadowEffect, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGraphicsDropShadowEffectmetacall(self[], param1, param2, param3)
proc cQGraphicsDropShadowEffect_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsDropShadowEffect](fcQGraphicsDropShadowEffect_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method boundingRectFor*(self: VirtualQGraphicsDropShadowEffect, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF {.base.} =
  QGraphicsDropShadowEffectboundingRectFor(self[], rect)
proc cQGraphicsDropShadowEffect_method_callback_boundingRectFor(self: pointer, rect: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsDropShadowEffect](fcQGraphicsDropShadowEffect_vdata(self))
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  var virtualReturn = inst.boundingRectFor(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method draw*(self: VirtualQGraphicsDropShadowEffect, painter: gen_qpainter_types.QPainter): void {.base.} =
  QGraphicsDropShadowEffectdraw(self[], painter)
proc cQGraphicsDropShadowEffect_method_callback_draw(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsDropShadowEffect](fcQGraphicsDropShadowEffect_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.draw(slotval1)

method sourceChanged*(self: VirtualQGraphicsDropShadowEffect, flags: cint): void {.base.} =
  QGraphicsDropShadowEffectsourceChanged(self[], flags)
proc cQGraphicsDropShadowEffect_method_callback_sourceChanged(self: pointer, flags: cint): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsDropShadowEffect](fcQGraphicsDropShadowEffect_vdata(self))
  let slotval1 = cint(flags)
  inst.sourceChanged(slotval1)

method event*(self: VirtualQGraphicsDropShadowEffect, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsDropShadowEffectevent(self[], event)
proc cQGraphicsDropShadowEffect_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsDropShadowEffect](fcQGraphicsDropShadowEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQGraphicsDropShadowEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsDropShadowEffecteventFilter(self[], watched, event)
proc cQGraphicsDropShadowEffect_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsDropShadowEffect](fcQGraphicsDropShadowEffect_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQGraphicsDropShadowEffect, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGraphicsDropShadowEffecttimerEvent(self[], event)
proc cQGraphicsDropShadowEffect_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsDropShadowEffect](fcQGraphicsDropShadowEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQGraphicsDropShadowEffect, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGraphicsDropShadowEffectchildEvent(self[], event)
proc cQGraphicsDropShadowEffect_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsDropShadowEffect](fcQGraphicsDropShadowEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQGraphicsDropShadowEffect, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsDropShadowEffectcustomEvent(self[], event)
proc cQGraphicsDropShadowEffect_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsDropShadowEffect](fcQGraphicsDropShadowEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQGraphicsDropShadowEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsDropShadowEffectconnectNotify(self[], signal)
proc cQGraphicsDropShadowEffect_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsDropShadowEffect](fcQGraphicsDropShadowEffect_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQGraphicsDropShadowEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsDropShadowEffectdisconnectNotify(self[], signal)
proc cQGraphicsDropShadowEffect_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsDropShadowEffect](fcQGraphicsDropShadowEffect_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc updateBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect): void =
  fcQGraphicsDropShadowEffect_protectedbase_updateBoundingRect(self.h)

proc sourceIsPixmap*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect): bool =
  fcQGraphicsDropShadowEffect_protectedbase_sourceIsPixmap(self.h)

proc sourceBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsDropShadowEffect_protectedbase_sourceBoundingRect(self.h), owned: true)

proc drawSource*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsDropShadowEffect_protectedbase_drawSource(self.h, painter.h)

proc sourcePixmap*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQGraphicsDropShadowEffect_protectedbase_sourcePixmap(self.h), owned: true)

proc sender*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsDropShadowEffect_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect): cint =
  fcQGraphicsDropShadowEffect_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, signal: cstring): cint =
  fcQGraphicsDropShadowEffect_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsDropShadowEffect_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect,
    vtbl: ref QGraphicsDropShadowEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsDropShadowEffect =
  let vtbl = if vtbl == nil: new QGraphicsDropShadowEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsDropShadowEffectVTable](fcQGraphicsDropShadowEffect_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsDropShadowEffect_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsDropShadowEffect_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsDropShadowEffect_vtable_callback_metacall
  if not isNil(vtbl[].boundingRectFor):
    vtbl[].vtbl.boundingRectFor = cQGraphicsDropShadowEffect_vtable_callback_boundingRectFor
  if not isNil(vtbl[].draw):
    vtbl[].vtbl.draw = cQGraphicsDropShadowEffect_vtable_callback_draw
  if not isNil(vtbl[].sourceChanged):
    vtbl[].vtbl.sourceChanged = cQGraphicsDropShadowEffect_vtable_callback_sourceChanged
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsDropShadowEffect_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsDropShadowEffect_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsDropShadowEffect_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsDropShadowEffect_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsDropShadowEffect_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsDropShadowEffect_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsDropShadowEffect_vtable_callback_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsDropShadowEffect(h: fcQGraphicsDropShadowEffect_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsDropShadowEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsDropShadowEffect =
  let vtbl = if vtbl == nil: new QGraphicsDropShadowEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsDropShadowEffectVTable](fcQGraphicsDropShadowEffect_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsDropShadowEffect_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsDropShadowEffect_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsDropShadowEffect_vtable_callback_metacall
  if not isNil(vtbl[].boundingRectFor):
    vtbl[].vtbl.boundingRectFor = cQGraphicsDropShadowEffect_vtable_callback_boundingRectFor
  if not isNil(vtbl[].draw):
    vtbl[].vtbl.draw = cQGraphicsDropShadowEffect_vtable_callback_draw
  if not isNil(vtbl[].sourceChanged):
    vtbl[].vtbl.sourceChanged = cQGraphicsDropShadowEffect_vtable_callback_sourceChanged
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsDropShadowEffect_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsDropShadowEffect_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsDropShadowEffect_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsDropShadowEffect_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsDropShadowEffect_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsDropShadowEffect_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsDropShadowEffect_vtable_callback_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsDropShadowEffect(h: fcQGraphicsDropShadowEffect_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQGraphicsDropShadowEffect_mvtbl = cQGraphicsDropShadowEffectVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGraphicsDropShadowEffect()[])](self.fcQGraphicsDropShadowEffect_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQGraphicsDropShadowEffect_method_callback_metaObject,
  metacast: cQGraphicsDropShadowEffect_method_callback_metacast,
  metacall: cQGraphicsDropShadowEffect_method_callback_metacall,
  boundingRectFor: cQGraphicsDropShadowEffect_method_callback_boundingRectFor,
  draw: cQGraphicsDropShadowEffect_method_callback_draw,
  sourceChanged: cQGraphicsDropShadowEffect_method_callback_sourceChanged,
  event: cQGraphicsDropShadowEffect_method_callback_event,
  eventFilter: cQGraphicsDropShadowEffect_method_callback_eventFilter,
  timerEvent: cQGraphicsDropShadowEffect_method_callback_timerEvent,
  childEvent: cQGraphicsDropShadowEffect_method_callback_childEvent,
  customEvent: cQGraphicsDropShadowEffect_method_callback_customEvent,
  connectNotify: cQGraphicsDropShadowEffect_method_callback_connectNotify,
  disconnectNotify: cQGraphicsDropShadowEffect_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect,
    inst: VirtualQGraphicsDropShadowEffect) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsDropShadowEffect_new(addr(cQGraphicsDropShadowEffect_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect,
    parent: gen_qobject_types.QObject,
    inst: VirtualQGraphicsDropShadowEffect) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsDropShadowEffect_new2(addr(cQGraphicsDropShadowEffect_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsDropShadowEffect_staticMetaObject())
proc metaObject*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsOpacityEffect_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, param1: cstring): pointer =
  fcQGraphicsOpacityEffect_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsOpacityEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsOpacityEffect, s: cstring): string =
  let v_ms = fcQGraphicsOpacityEffect_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsOpacityEffect, s: cstring): string =
  let v_ms = fcQGraphicsOpacityEffect_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc opacity*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect): float64 =
  fcQGraphicsOpacityEffect_opacity(self.h)

proc opacityMask*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQGraphicsOpacityEffect_opacityMask(self.h), owned: true)

proc setOpacity*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, opacity: float64): void =
  fcQGraphicsOpacityEffect_setOpacity(self.h, opacity)

proc setOpacityMask*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, mask: gen_qbrush_types.QBrush): void =
  fcQGraphicsOpacityEffect_setOpacityMask(self.h, mask.h)

proc opacityChanged*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, opacity: float64): void =
  fcQGraphicsOpacityEffect_opacityChanged(self.h, opacity)

type QGraphicsOpacityEffectopacityChangedSlot* = proc(opacity: float64)
proc cQGraphicsOpacityEffect_slot_callback_opacityChanged(slot: int, opacity: float64) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsOpacityEffectopacityChangedSlot](cast[pointer](slot))
  let slotval1 = opacity

  nimfunc[](slotval1)

proc cQGraphicsOpacityEffect_slot_callback_opacityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsOpacityEffectopacityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onopacityChanged*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, slot: QGraphicsOpacityEffectopacityChangedSlot) =
  var tmp = new QGraphicsOpacityEffectopacityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_connect_opacityChanged(self.h, cast[int](addr tmp[]), cQGraphicsOpacityEffect_slot_callback_opacityChanged, cQGraphicsOpacityEffect_slot_callback_opacityChanged_release)

proc opacityMaskChanged*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, mask: gen_qbrush_types.QBrush): void =
  fcQGraphicsOpacityEffect_opacityMaskChanged(self.h, mask.h)

type QGraphicsOpacityEffectopacityMaskChangedSlot* = proc(mask: gen_qbrush_types.QBrush)
proc cQGraphicsOpacityEffect_slot_callback_opacityMaskChanged(slot: int, mask: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsOpacityEffectopacityMaskChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qbrush_types.QBrush(h: mask, owned: false)

  nimfunc[](slotval1)

proc cQGraphicsOpacityEffect_slot_callback_opacityMaskChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsOpacityEffectopacityMaskChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onopacityMaskChanged*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, slot: QGraphicsOpacityEffectopacityMaskChangedSlot) =
  var tmp = new QGraphicsOpacityEffectopacityMaskChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_connect_opacityMaskChanged(self.h, cast[int](addr tmp[]), cQGraphicsOpacityEffect_slot_callback_opacityMaskChanged, cQGraphicsOpacityEffect_slot_callback_opacityMaskChanged_release)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsOpacityEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsOpacityEffect_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsOpacityEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsOpacityEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsOpacityEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsOpacityEffect_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsOpacityEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsOpacityEffect_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QGraphicsOpacityEffectmetaObjectProc* = proc(self: QGraphicsOpacityEffect): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsOpacityEffectmetacastProc* = proc(self: QGraphicsOpacityEffect, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsOpacityEffectmetacallProc* = proc(self: QGraphicsOpacityEffect, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsOpacityEffectdrawProc* = proc(self: QGraphicsOpacityEffect, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QGraphicsOpacityEffectboundingRectForProc* = proc(self: QGraphicsOpacityEffect, sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QGraphicsOpacityEffectsourceChangedProc* = proc(self: QGraphicsOpacityEffect, flags: cint): void {.raises: [], gcsafe.}
type QGraphicsOpacityEffecteventProc* = proc(self: QGraphicsOpacityEffect, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsOpacityEffecteventFilterProc* = proc(self: QGraphicsOpacityEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsOpacityEffecttimerEventProc* = proc(self: QGraphicsOpacityEffect, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsOpacityEffectchildEventProc* = proc(self: QGraphicsOpacityEffect, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsOpacityEffectcustomEventProc* = proc(self: QGraphicsOpacityEffect, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsOpacityEffectconnectNotifyProc* = proc(self: QGraphicsOpacityEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsOpacityEffectdisconnectNotifyProc* = proc(self: QGraphicsOpacityEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsOpacityEffectVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsOpacityEffectVTable
  metaObject*: QGraphicsOpacityEffectmetaObjectProc
  metacast*: QGraphicsOpacityEffectmetacastProc
  metacall*: QGraphicsOpacityEffectmetacallProc
  draw*: QGraphicsOpacityEffectdrawProc
  boundingRectFor*: QGraphicsOpacityEffectboundingRectForProc
  sourceChanged*: QGraphicsOpacityEffectsourceChangedProc
  event*: QGraphicsOpacityEffecteventProc
  eventFilter*: QGraphicsOpacityEffecteventFilterProc
  timerEvent*: QGraphicsOpacityEffecttimerEventProc
  childEvent*: QGraphicsOpacityEffectchildEventProc
  customEvent*: QGraphicsOpacityEffectcustomEventProc
  connectNotify*: QGraphicsOpacityEffectconnectNotifyProc
  disconnectNotify*: QGraphicsOpacityEffectdisconnectNotifyProc
proc QGraphicsOpacityEffectmetaObject*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsOpacityEffect_virtualbase_metaObject(self.h), owned: false)

proc cQGraphicsOpacityEffect_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](fcQGraphicsOpacityEffect_vdata(self))
  let self = QGraphicsOpacityEffect(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsOpacityEffectmetacast*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, param1: cstring): pointer =
  fcQGraphicsOpacityEffect_virtualbase_metacast(self.h, param1)

proc cQGraphicsOpacityEffect_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](fcQGraphicsOpacityEffect_vdata(self))
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsOpacityEffectmetacall*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsOpacityEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQGraphicsOpacityEffect_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](fcQGraphicsOpacityEffect_vdata(self))
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsOpacityEffectdraw*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsOpacityEffect_virtualbase_draw(self.h, painter.h)

proc cQGraphicsOpacityEffect_vtable_callback_draw(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](fcQGraphicsOpacityEffect_vdata(self))
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].draw(self, slotval1)

proc QGraphicsOpacityEffectboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsOpacityEffect_virtualbase_boundingRectFor(self.h, sourceRect.h), owned: true)

proc cQGraphicsOpacityEffect_vtable_callback_boundingRectFor(self: pointer, sourceRect: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](fcQGraphicsOpacityEffect_vdata(self))
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: sourceRect, owned: false)
  var virtualReturn = vtbl[].boundingRectFor(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsOpacityEffectsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, flags: cint): void =
  fcQGraphicsOpacityEffect_virtualbase_sourceChanged(self.h, cint(flags))

proc cQGraphicsOpacityEffect_vtable_callback_sourceChanged(self: pointer, flags: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](fcQGraphicsOpacityEffect_vdata(self))
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = cint(flags)
  vtbl[].sourceChanged(self, slotval1)

proc QGraphicsOpacityEffectevent*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsOpacityEffect_virtualbase_event(self.h, event.h)

proc cQGraphicsOpacityEffect_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](fcQGraphicsOpacityEffect_vdata(self))
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsOpacityEffecteventFilter*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsOpacityEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQGraphicsOpacityEffect_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](fcQGraphicsOpacityEffect_vdata(self))
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsOpacityEffecttimerEvent*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsOpacityEffect_virtualbase_timerEvent(self.h, event.h)

proc cQGraphicsOpacityEffect_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](fcQGraphicsOpacityEffect_vdata(self))
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsOpacityEffectchildEvent*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsOpacityEffect_virtualbase_childEvent(self.h, event.h)

proc cQGraphicsOpacityEffect_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](fcQGraphicsOpacityEffect_vdata(self))
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsOpacityEffectcustomEvent*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsOpacityEffect_virtualbase_customEvent(self.h, event.h)

proc cQGraphicsOpacityEffect_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](fcQGraphicsOpacityEffect_vdata(self))
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsOpacityEffectconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsOpacityEffect_virtualbase_connectNotify(self.h, signal.h)

proc cQGraphicsOpacityEffect_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](fcQGraphicsOpacityEffect_vdata(self))
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsOpacityEffectdisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsOpacityEffect_virtualbase_disconnectNotify(self.h, signal.h)

proc cQGraphicsOpacityEffect_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](fcQGraphicsOpacityEffect_vdata(self))
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQGraphicsOpacityEffect* {.inheritable.} = ref object of QGraphicsOpacityEffect
  vtbl*: cQGraphicsOpacityEffectVTable
method metaObject*(self: VirtualQGraphicsOpacityEffect): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGraphicsOpacityEffectmetaObject(self[])
proc cQGraphicsOpacityEffect_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsOpacityEffect](fcQGraphicsOpacityEffect_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQGraphicsOpacityEffect, param1: cstring): pointer {.base.} =
  QGraphicsOpacityEffectmetacast(self[], param1)
proc cQGraphicsOpacityEffect_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsOpacityEffect](fcQGraphicsOpacityEffect_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQGraphicsOpacityEffect, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGraphicsOpacityEffectmetacall(self[], param1, param2, param3)
proc cQGraphicsOpacityEffect_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsOpacityEffect](fcQGraphicsOpacityEffect_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method draw*(self: VirtualQGraphicsOpacityEffect, painter: gen_qpainter_types.QPainter): void {.base.} =
  QGraphicsOpacityEffectdraw(self[], painter)
proc cQGraphicsOpacityEffect_method_callback_draw(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsOpacityEffect](fcQGraphicsOpacityEffect_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.draw(slotval1)

method boundingRectFor*(self: VirtualQGraphicsOpacityEffect, sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF {.base.} =
  QGraphicsOpacityEffectboundingRectFor(self[], sourceRect)
proc cQGraphicsOpacityEffect_method_callback_boundingRectFor(self: pointer, sourceRect: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsOpacityEffect](fcQGraphicsOpacityEffect_vdata(self))
  let slotval1 = gen_qrect_types.QRectF(h: sourceRect, owned: false)
  var virtualReturn = inst.boundingRectFor(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sourceChanged*(self: VirtualQGraphicsOpacityEffect, flags: cint): void {.base.} =
  QGraphicsOpacityEffectsourceChanged(self[], flags)
proc cQGraphicsOpacityEffect_method_callback_sourceChanged(self: pointer, flags: cint): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsOpacityEffect](fcQGraphicsOpacityEffect_vdata(self))
  let slotval1 = cint(flags)
  inst.sourceChanged(slotval1)

method event*(self: VirtualQGraphicsOpacityEffect, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsOpacityEffectevent(self[], event)
proc cQGraphicsOpacityEffect_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsOpacityEffect](fcQGraphicsOpacityEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQGraphicsOpacityEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsOpacityEffecteventFilter(self[], watched, event)
proc cQGraphicsOpacityEffect_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsOpacityEffect](fcQGraphicsOpacityEffect_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQGraphicsOpacityEffect, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGraphicsOpacityEffecttimerEvent(self[], event)
proc cQGraphicsOpacityEffect_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsOpacityEffect](fcQGraphicsOpacityEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQGraphicsOpacityEffect, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGraphicsOpacityEffectchildEvent(self[], event)
proc cQGraphicsOpacityEffect_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsOpacityEffect](fcQGraphicsOpacityEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQGraphicsOpacityEffect, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsOpacityEffectcustomEvent(self[], event)
proc cQGraphicsOpacityEffect_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsOpacityEffect](fcQGraphicsOpacityEffect_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQGraphicsOpacityEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsOpacityEffectconnectNotify(self[], signal)
proc cQGraphicsOpacityEffect_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsOpacityEffect](fcQGraphicsOpacityEffect_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQGraphicsOpacityEffect, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsOpacityEffectdisconnectNotify(self[], signal)
proc cQGraphicsOpacityEffect_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsOpacityEffect](fcQGraphicsOpacityEffect_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc updateBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect): void =
  fcQGraphicsOpacityEffect_protectedbase_updateBoundingRect(self.h)

proc sourceIsPixmap*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect): bool =
  fcQGraphicsOpacityEffect_protectedbase_sourceIsPixmap(self.h)

proc sourceBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsOpacityEffect_protectedbase_sourceBoundingRect(self.h), owned: true)

proc drawSource*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsOpacityEffect_protectedbase_drawSource(self.h, painter.h)

proc sourcePixmap*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQGraphicsOpacityEffect_protectedbase_sourcePixmap(self.h), owned: true)

proc sender*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsOpacityEffect_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect): cint =
  fcQGraphicsOpacityEffect_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, signal: cstring): cint =
  fcQGraphicsOpacityEffect_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsOpacityEffect_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicseffect_types.QGraphicsOpacityEffect,
    vtbl: ref QGraphicsOpacityEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsOpacityEffect =
  let vtbl = if vtbl == nil: new QGraphicsOpacityEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsOpacityEffectVTable](fcQGraphicsOpacityEffect_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsOpacityEffect_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsOpacityEffect_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsOpacityEffect_vtable_callback_metacall
  if not isNil(vtbl[].draw):
    vtbl[].vtbl.draw = cQGraphicsOpacityEffect_vtable_callback_draw
  if not isNil(vtbl[].boundingRectFor):
    vtbl[].vtbl.boundingRectFor = cQGraphicsOpacityEffect_vtable_callback_boundingRectFor
  if not isNil(vtbl[].sourceChanged):
    vtbl[].vtbl.sourceChanged = cQGraphicsOpacityEffect_vtable_callback_sourceChanged
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsOpacityEffect_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsOpacityEffect_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsOpacityEffect_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsOpacityEffect_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsOpacityEffect_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsOpacityEffect_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsOpacityEffect_vtable_callback_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsOpacityEffect(h: fcQGraphicsOpacityEffect_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgraphicseffect_types.QGraphicsOpacityEffect,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsOpacityEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsOpacityEffect =
  let vtbl = if vtbl == nil: new QGraphicsOpacityEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsOpacityEffectVTable](fcQGraphicsOpacityEffect_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsOpacityEffect_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsOpacityEffect_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsOpacityEffect_vtable_callback_metacall
  if not isNil(vtbl[].draw):
    vtbl[].vtbl.draw = cQGraphicsOpacityEffect_vtable_callback_draw
  if not isNil(vtbl[].boundingRectFor):
    vtbl[].vtbl.boundingRectFor = cQGraphicsOpacityEffect_vtable_callback_boundingRectFor
  if not isNil(vtbl[].sourceChanged):
    vtbl[].vtbl.sourceChanged = cQGraphicsOpacityEffect_vtable_callback_sourceChanged
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsOpacityEffect_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsOpacityEffect_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsOpacityEffect_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsOpacityEffect_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsOpacityEffect_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsOpacityEffect_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsOpacityEffect_vtable_callback_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsOpacityEffect(h: fcQGraphicsOpacityEffect_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQGraphicsOpacityEffect_mvtbl = cQGraphicsOpacityEffectVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGraphicsOpacityEffect()[])](self.fcQGraphicsOpacityEffect_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQGraphicsOpacityEffect_method_callback_metaObject,
  metacast: cQGraphicsOpacityEffect_method_callback_metacast,
  metacall: cQGraphicsOpacityEffect_method_callback_metacall,
  draw: cQGraphicsOpacityEffect_method_callback_draw,
  boundingRectFor: cQGraphicsOpacityEffect_method_callback_boundingRectFor,
  sourceChanged: cQGraphicsOpacityEffect_method_callback_sourceChanged,
  event: cQGraphicsOpacityEffect_method_callback_event,
  eventFilter: cQGraphicsOpacityEffect_method_callback_eventFilter,
  timerEvent: cQGraphicsOpacityEffect_method_callback_timerEvent,
  childEvent: cQGraphicsOpacityEffect_method_callback_childEvent,
  customEvent: cQGraphicsOpacityEffect_method_callback_customEvent,
  connectNotify: cQGraphicsOpacityEffect_method_callback_connectNotify,
  disconnectNotify: cQGraphicsOpacityEffect_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgraphicseffect_types.QGraphicsOpacityEffect,
    inst: VirtualQGraphicsOpacityEffect) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsOpacityEffect_new(addr(cQGraphicsOpacityEffect_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgraphicseffect_types.QGraphicsOpacityEffect,
    parent: gen_qobject_types.QObject,
    inst: VirtualQGraphicsOpacityEffect) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsOpacityEffect_new2(addr(cQGraphicsOpacityEffect_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgraphicseffect_types.QGraphicsOpacityEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsOpacityEffect_staticMetaObject())
