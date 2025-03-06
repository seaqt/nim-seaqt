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
{.compile("gen_qgraphicseffect.cpp", cflags).}


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

proc fcQGraphicsEffect_metaObject(self: pointer, ): pointer {.importc: "QGraphicsEffect_metaObject".}
proc fcQGraphicsEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsEffect_metacast".}
proc fcQGraphicsEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsEffect_metacall".}
proc fcQGraphicsEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsEffect_tr".}
proc fcQGraphicsEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsEffect_trUtf8".}
proc fcQGraphicsEffect_boundingRectFor(self: pointer, sourceRect: pointer): pointer {.importc: "QGraphicsEffect_boundingRectFor".}
proc fcQGraphicsEffect_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsEffect_boundingRect".}
proc fcQGraphicsEffect_isEnabled(self: pointer, ): bool {.importc: "QGraphicsEffect_isEnabled".}
proc fcQGraphicsEffect_setEnabled(self: pointer, enable: bool): void {.importc: "QGraphicsEffect_setEnabled".}
proc fcQGraphicsEffect_update(self: pointer, ): void {.importc: "QGraphicsEffect_update".}
proc fcQGraphicsEffect_enabledChanged(self: pointer, enabled: bool): void {.importc: "QGraphicsEffect_enabledChanged".}
proc fcQGraphicsEffect_connect_enabledChanged(self: pointer, slot: int, callback: proc (slot: int, enabled: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsEffect_connect_enabledChanged".}
proc fcQGraphicsEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsEffect_tr2".}
proc fcQGraphicsEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsEffect_tr3".}
proc fcQGraphicsEffect_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsEffect_trUtf82".}
proc fcQGraphicsEffect_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsEffect_trUtf83".}
type cQGraphicsEffectVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsEffectVTable, self: ptr cQGraphicsEffect) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  boundingRectFor*: proc(vtbl, self: pointer, sourceRect: pointer): pointer {.cdecl, raises: [], gcsafe.}
  draw*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  sourceChanged*: proc(vtbl, self: pointer, flags: cint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsEffect_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsEffect_virtualbase_metaObject".}
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
proc fcQGraphicsEffect_protectedbase_updateBoundingRect(self: pointer, ): void {.importc: "QGraphicsEffect_protectedbase_updateBoundingRect".}
proc fcQGraphicsEffect_protectedbase_sourceIsPixmap(self: pointer, ): bool {.importc: "QGraphicsEffect_protectedbase_sourceIsPixmap".}
proc fcQGraphicsEffect_protectedbase_sourceBoundingRect(self: pointer, ): pointer {.importc: "QGraphicsEffect_protectedbase_sourceBoundingRect".}
proc fcQGraphicsEffect_protectedbase_drawSource(self: pointer, painter: pointer): void {.importc: "QGraphicsEffect_protectedbase_drawSource".}
proc fcQGraphicsEffect_protectedbase_sourcePixmap(self: pointer, ): pointer {.importc: "QGraphicsEffect_protectedbase_sourcePixmap".}
proc fcQGraphicsEffect_protectedbase_sourceBoundingRect1(self: pointer, system: cint): pointer {.importc: "QGraphicsEffect_protectedbase_sourceBoundingRect1".}
proc fcQGraphicsEffect_protectedbase_sourcePixmap1(self: pointer, system: cint): pointer {.importc: "QGraphicsEffect_protectedbase_sourcePixmap1".}
proc fcQGraphicsEffect_protectedbase_sourcePixmap2(self: pointer, system: cint, offset: pointer): pointer {.importc: "QGraphicsEffect_protectedbase_sourcePixmap2".}
proc fcQGraphicsEffect_protectedbase_sourcePixmap3(self: pointer, system: cint, offset: pointer, mode: cint): pointer {.importc: "QGraphicsEffect_protectedbase_sourcePixmap3".}
proc fcQGraphicsEffect_protectedbase_sender(self: pointer, ): pointer {.importc: "QGraphicsEffect_protectedbase_sender".}
proc fcQGraphicsEffect_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGraphicsEffect_protectedbase_senderSignalIndex".}
proc fcQGraphicsEffect_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsEffect_protectedbase_receivers".}
proc fcQGraphicsEffect_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsEffect_protectedbase_isSignalConnected".}
proc fcQGraphicsEffect_new(vtbl: pointer, ): ptr cQGraphicsEffect {.importc: "QGraphicsEffect_new".}
proc fcQGraphicsEffect_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsEffect {.importc: "QGraphicsEffect_new2".}
proc fcQGraphicsEffect_staticMetaObject(): pointer {.importc: "QGraphicsEffect_staticMetaObject".}
proc fcQGraphicsEffect_delete(self: pointer) {.importc: "QGraphicsEffect_delete".}
proc fcQGraphicsColorizeEffect_metaObject(self: pointer, ): pointer {.importc: "QGraphicsColorizeEffect_metaObject".}
proc fcQGraphicsColorizeEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsColorizeEffect_metacast".}
proc fcQGraphicsColorizeEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsColorizeEffect_metacall".}
proc fcQGraphicsColorizeEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsColorizeEffect_tr".}
proc fcQGraphicsColorizeEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsColorizeEffect_trUtf8".}
proc fcQGraphicsColorizeEffect_color(self: pointer, ): pointer {.importc: "QGraphicsColorizeEffect_color".}
proc fcQGraphicsColorizeEffect_strength(self: pointer, ): float64 {.importc: "QGraphicsColorizeEffect_strength".}
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
type cQGraphicsColorizeEffectVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsColorizeEffectVTable, self: ptr cQGraphicsColorizeEffect) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  draw*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  boundingRectFor*: proc(vtbl, self: pointer, sourceRect: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sourceChanged*: proc(vtbl, self: pointer, flags: cint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsColorizeEffect_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsColorizeEffect_virtualbase_metaObject".}
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
proc fcQGraphicsColorizeEffect_protectedbase_updateBoundingRect(self: pointer, ): void {.importc: "QGraphicsColorizeEffect_protectedbase_updateBoundingRect".}
proc fcQGraphicsColorizeEffect_protectedbase_sourceIsPixmap(self: pointer, ): bool {.importc: "QGraphicsColorizeEffect_protectedbase_sourceIsPixmap".}
proc fcQGraphicsColorizeEffect_protectedbase_sourceBoundingRect(self: pointer, ): pointer {.importc: "QGraphicsColorizeEffect_protectedbase_sourceBoundingRect".}
proc fcQGraphicsColorizeEffect_protectedbase_drawSource(self: pointer, painter: pointer): void {.importc: "QGraphicsColorizeEffect_protectedbase_drawSource".}
proc fcQGraphicsColorizeEffect_protectedbase_sourcePixmap(self: pointer, ): pointer {.importc: "QGraphicsColorizeEffect_protectedbase_sourcePixmap".}
proc fcQGraphicsColorizeEffect_protectedbase_sender(self: pointer, ): pointer {.importc: "QGraphicsColorizeEffect_protectedbase_sender".}
proc fcQGraphicsColorizeEffect_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGraphicsColorizeEffect_protectedbase_senderSignalIndex".}
proc fcQGraphicsColorizeEffect_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsColorizeEffect_protectedbase_receivers".}
proc fcQGraphicsColorizeEffect_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsColorizeEffect_protectedbase_isSignalConnected".}
proc fcQGraphicsColorizeEffect_new(vtbl: pointer, ): ptr cQGraphicsColorizeEffect {.importc: "QGraphicsColorizeEffect_new".}
proc fcQGraphicsColorizeEffect_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsColorizeEffect {.importc: "QGraphicsColorizeEffect_new2".}
proc fcQGraphicsColorizeEffect_staticMetaObject(): pointer {.importc: "QGraphicsColorizeEffect_staticMetaObject".}
proc fcQGraphicsColorizeEffect_delete(self: pointer) {.importc: "QGraphicsColorizeEffect_delete".}
proc fcQGraphicsBlurEffect_metaObject(self: pointer, ): pointer {.importc: "QGraphicsBlurEffect_metaObject".}
proc fcQGraphicsBlurEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsBlurEffect_metacast".}
proc fcQGraphicsBlurEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsBlurEffect_metacall".}
proc fcQGraphicsBlurEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsBlurEffect_tr".}
proc fcQGraphicsBlurEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsBlurEffect_trUtf8".}
proc fcQGraphicsBlurEffect_boundingRectFor(self: pointer, rect: pointer): pointer {.importc: "QGraphicsBlurEffect_boundingRectFor".}
proc fcQGraphicsBlurEffect_blurRadius(self: pointer, ): float64 {.importc: "QGraphicsBlurEffect_blurRadius".}
proc fcQGraphicsBlurEffect_blurHints(self: pointer, ): cint {.importc: "QGraphicsBlurEffect_blurHints".}
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
type cQGraphicsBlurEffectVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsBlurEffectVTable, self: ptr cQGraphicsBlurEffect) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  boundingRectFor*: proc(vtbl, self: pointer, rect: pointer): pointer {.cdecl, raises: [], gcsafe.}
  draw*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  sourceChanged*: proc(vtbl, self: pointer, flags: cint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsBlurEffect_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsBlurEffect_virtualbase_metaObject".}
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
proc fcQGraphicsBlurEffect_protectedbase_updateBoundingRect(self: pointer, ): void {.importc: "QGraphicsBlurEffect_protectedbase_updateBoundingRect".}
proc fcQGraphicsBlurEffect_protectedbase_sourceIsPixmap(self: pointer, ): bool {.importc: "QGraphicsBlurEffect_protectedbase_sourceIsPixmap".}
proc fcQGraphicsBlurEffect_protectedbase_sourceBoundingRect(self: pointer, ): pointer {.importc: "QGraphicsBlurEffect_protectedbase_sourceBoundingRect".}
proc fcQGraphicsBlurEffect_protectedbase_drawSource(self: pointer, painter: pointer): void {.importc: "QGraphicsBlurEffect_protectedbase_drawSource".}
proc fcQGraphicsBlurEffect_protectedbase_sourcePixmap(self: pointer, ): pointer {.importc: "QGraphicsBlurEffect_protectedbase_sourcePixmap".}
proc fcQGraphicsBlurEffect_protectedbase_sender(self: pointer, ): pointer {.importc: "QGraphicsBlurEffect_protectedbase_sender".}
proc fcQGraphicsBlurEffect_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGraphicsBlurEffect_protectedbase_senderSignalIndex".}
proc fcQGraphicsBlurEffect_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsBlurEffect_protectedbase_receivers".}
proc fcQGraphicsBlurEffect_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsBlurEffect_protectedbase_isSignalConnected".}
proc fcQGraphicsBlurEffect_new(vtbl: pointer, ): ptr cQGraphicsBlurEffect {.importc: "QGraphicsBlurEffect_new".}
proc fcQGraphicsBlurEffect_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsBlurEffect {.importc: "QGraphicsBlurEffect_new2".}
proc fcQGraphicsBlurEffect_staticMetaObject(): pointer {.importc: "QGraphicsBlurEffect_staticMetaObject".}
proc fcQGraphicsBlurEffect_delete(self: pointer) {.importc: "QGraphicsBlurEffect_delete".}
proc fcQGraphicsDropShadowEffect_metaObject(self: pointer, ): pointer {.importc: "QGraphicsDropShadowEffect_metaObject".}
proc fcQGraphicsDropShadowEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsDropShadowEffect_metacast".}
proc fcQGraphicsDropShadowEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsDropShadowEffect_metacall".}
proc fcQGraphicsDropShadowEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_tr".}
proc fcQGraphicsDropShadowEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_trUtf8".}
proc fcQGraphicsDropShadowEffect_boundingRectFor(self: pointer, rect: pointer): pointer {.importc: "QGraphicsDropShadowEffect_boundingRectFor".}
proc fcQGraphicsDropShadowEffect_offset(self: pointer, ): pointer {.importc: "QGraphicsDropShadowEffect_offset".}
proc fcQGraphicsDropShadowEffect_xOffset(self: pointer, ): float64 {.importc: "QGraphicsDropShadowEffect_xOffset".}
proc fcQGraphicsDropShadowEffect_yOffset(self: pointer, ): float64 {.importc: "QGraphicsDropShadowEffect_yOffset".}
proc fcQGraphicsDropShadowEffect_blurRadius(self: pointer, ): float64 {.importc: "QGraphicsDropShadowEffect_blurRadius".}
proc fcQGraphicsDropShadowEffect_color(self: pointer, ): pointer {.importc: "QGraphicsDropShadowEffect_color".}
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
type cQGraphicsDropShadowEffectVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsDropShadowEffectVTable, self: ptr cQGraphicsDropShadowEffect) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  boundingRectFor*: proc(vtbl, self: pointer, rect: pointer): pointer {.cdecl, raises: [], gcsafe.}
  draw*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  sourceChanged*: proc(vtbl, self: pointer, flags: cint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsDropShadowEffect_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsDropShadowEffect_virtualbase_metaObject".}
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
proc fcQGraphicsDropShadowEffect_protectedbase_updateBoundingRect(self: pointer, ): void {.importc: "QGraphicsDropShadowEffect_protectedbase_updateBoundingRect".}
proc fcQGraphicsDropShadowEffect_protectedbase_sourceIsPixmap(self: pointer, ): bool {.importc: "QGraphicsDropShadowEffect_protectedbase_sourceIsPixmap".}
proc fcQGraphicsDropShadowEffect_protectedbase_sourceBoundingRect(self: pointer, ): pointer {.importc: "QGraphicsDropShadowEffect_protectedbase_sourceBoundingRect".}
proc fcQGraphicsDropShadowEffect_protectedbase_drawSource(self: pointer, painter: pointer): void {.importc: "QGraphicsDropShadowEffect_protectedbase_drawSource".}
proc fcQGraphicsDropShadowEffect_protectedbase_sourcePixmap(self: pointer, ): pointer {.importc: "QGraphicsDropShadowEffect_protectedbase_sourcePixmap".}
proc fcQGraphicsDropShadowEffect_protectedbase_sender(self: pointer, ): pointer {.importc: "QGraphicsDropShadowEffect_protectedbase_sender".}
proc fcQGraphicsDropShadowEffect_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGraphicsDropShadowEffect_protectedbase_senderSignalIndex".}
proc fcQGraphicsDropShadowEffect_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsDropShadowEffect_protectedbase_receivers".}
proc fcQGraphicsDropShadowEffect_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsDropShadowEffect_protectedbase_isSignalConnected".}
proc fcQGraphicsDropShadowEffect_new(vtbl: pointer, ): ptr cQGraphicsDropShadowEffect {.importc: "QGraphicsDropShadowEffect_new".}
proc fcQGraphicsDropShadowEffect_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsDropShadowEffect {.importc: "QGraphicsDropShadowEffect_new2".}
proc fcQGraphicsDropShadowEffect_staticMetaObject(): pointer {.importc: "QGraphicsDropShadowEffect_staticMetaObject".}
proc fcQGraphicsDropShadowEffect_delete(self: pointer) {.importc: "QGraphicsDropShadowEffect_delete".}
proc fcQGraphicsOpacityEffect_metaObject(self: pointer, ): pointer {.importc: "QGraphicsOpacityEffect_metaObject".}
proc fcQGraphicsOpacityEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsOpacityEffect_metacast".}
proc fcQGraphicsOpacityEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsOpacityEffect_metacall".}
proc fcQGraphicsOpacityEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsOpacityEffect_tr".}
proc fcQGraphicsOpacityEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsOpacityEffect_trUtf8".}
proc fcQGraphicsOpacityEffect_opacity(self: pointer, ): float64 {.importc: "QGraphicsOpacityEffect_opacity".}
proc fcQGraphicsOpacityEffect_opacityMask(self: pointer, ): pointer {.importc: "QGraphicsOpacityEffect_opacityMask".}
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
type cQGraphicsOpacityEffectVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsOpacityEffectVTable, self: ptr cQGraphicsOpacityEffect) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  draw*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  boundingRectFor*: proc(vtbl, self: pointer, sourceRect: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sourceChanged*: proc(vtbl, self: pointer, flags: cint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsOpacityEffect_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsOpacityEffect_virtualbase_metaObject".}
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
proc fcQGraphicsOpacityEffect_protectedbase_updateBoundingRect(self: pointer, ): void {.importc: "QGraphicsOpacityEffect_protectedbase_updateBoundingRect".}
proc fcQGraphicsOpacityEffect_protectedbase_sourceIsPixmap(self: pointer, ): bool {.importc: "QGraphicsOpacityEffect_protectedbase_sourceIsPixmap".}
proc fcQGraphicsOpacityEffect_protectedbase_sourceBoundingRect(self: pointer, ): pointer {.importc: "QGraphicsOpacityEffect_protectedbase_sourceBoundingRect".}
proc fcQGraphicsOpacityEffect_protectedbase_drawSource(self: pointer, painter: pointer): void {.importc: "QGraphicsOpacityEffect_protectedbase_drawSource".}
proc fcQGraphicsOpacityEffect_protectedbase_sourcePixmap(self: pointer, ): pointer {.importc: "QGraphicsOpacityEffect_protectedbase_sourcePixmap".}
proc fcQGraphicsOpacityEffect_protectedbase_sender(self: pointer, ): pointer {.importc: "QGraphicsOpacityEffect_protectedbase_sender".}
proc fcQGraphicsOpacityEffect_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGraphicsOpacityEffect_protectedbase_senderSignalIndex".}
proc fcQGraphicsOpacityEffect_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsOpacityEffect_protectedbase_receivers".}
proc fcQGraphicsOpacityEffect_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsOpacityEffect_protectedbase_isSignalConnected".}
proc fcQGraphicsOpacityEffect_new(vtbl: pointer, ): ptr cQGraphicsOpacityEffect {.importc: "QGraphicsOpacityEffect_new".}
proc fcQGraphicsOpacityEffect_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsOpacityEffect {.importc: "QGraphicsOpacityEffect_new2".}
proc fcQGraphicsOpacityEffect_staticMetaObject(): pointer {.importc: "QGraphicsOpacityEffect_staticMetaObject".}
proc fcQGraphicsOpacityEffect_delete(self: pointer) {.importc: "QGraphicsOpacityEffect_delete".}

proc metaObject*(self: gen_qgraphicseffect_types.QGraphicsEffect, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsEffect_metaObject(self.h))

proc metacast*(self: gen_qgraphicseffect_types.QGraphicsEffect, param1: cstring): pointer =
  fcQGraphicsEffect_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicseffect_types.QGraphicsEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsEffect, s: cstring): string =
  let v_ms = fcQGraphicsEffect_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsEffect, s: cstring): string =
  let v_ms = fcQGraphicsEffect_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc boundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsEffect, sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsEffect_boundingRectFor(self.h, sourceRect.h))

proc boundingRect*(self: gen_qgraphicseffect_types.QGraphicsEffect, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsEffect_boundingRect(self.h))

proc isEnabled*(self: gen_qgraphicseffect_types.QGraphicsEffect, ): bool =
  fcQGraphicsEffect_isEnabled(self.h)

proc setEnabled*(self: gen_qgraphicseffect_types.QGraphicsEffect, enable: bool): void =
  fcQGraphicsEffect_setEnabled(self.h, enable)

proc update*(self: gen_qgraphicseffect_types.QGraphicsEffect, ): void =
  fcQGraphicsEffect_update(self.h)

proc enabledChanged*(self: gen_qgraphicseffect_types.QGraphicsEffect, enabled: bool): void =
  fcQGraphicsEffect_enabledChanged(self.h, enabled)

type QGraphicsEffectenabledChangedSlot* = proc(enabled: bool)
proc miqt_exec_callback_cQGraphicsEffect_enabledChanged(slot: int, enabled: bool) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsEffectenabledChangedSlot](cast[pointer](slot))
  let slotval1 = enabled

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGraphicsEffect_enabledChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsEffectenabledChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onenabledChanged*(self: gen_qgraphicseffect_types.QGraphicsEffect, slot: QGraphicsEffectenabledChangedSlot) =
  var tmp = new QGraphicsEffectenabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_connect_enabledChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsEffect_enabledChanged, miqt_exec_callback_cQGraphicsEffect_enabledChanged_release)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsEffect_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsEffect_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsEffect_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QGraphicsEffectVTable* = object
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
proc QGraphicsEffectmetaObject*(self: gen_qgraphicseffect_types.QGraphicsEffect, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsEffect_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGraphicsEffect_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](vtbl)
  let self = QGraphicsEffect(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGraphicsEffectmetacast*(self: gen_qgraphicseffect_types.QGraphicsEffect, param1: cstring): pointer =
  fcQGraphicsEffect_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsEffect_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](vtbl)
  let self = QGraphicsEffect(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsEffectmetacall*(self: gen_qgraphicseffect_types.QGraphicsEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsEffect_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](vtbl)
  let self = QGraphicsEffect(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsEffectboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsEffect, sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsEffect_virtualbase_boundingRectFor(self.h, sourceRect.h))

proc miqt_exec_callback_cQGraphicsEffect_boundingRectFor(vtbl: pointer, self: pointer, sourceRect: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](vtbl)
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: sourceRect)
  var virtualReturn = vtbl[].boundingRectFor(self, slotval1)
  virtualReturn.h

proc miqt_exec_callback_cQGraphicsEffect_draw(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](vtbl)
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].draw(self, slotval1)

proc QGraphicsEffectsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsEffect, flags: cint): void =
  fcQGraphicsEffect_virtualbase_sourceChanged(self.h, cint(flags))

proc miqt_exec_callback_cQGraphicsEffect_sourceChanged(vtbl: pointer, self: pointer, flags: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](vtbl)
  let self = QGraphicsEffect(h: self)
  let slotval1 = cint(flags)
  vtbl[].sourceChanged(self, slotval1)

proc QGraphicsEffectevent*(self: gen_qgraphicseffect_types.QGraphicsEffect, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsEffect_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEffect_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](vtbl)
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsEffecteventFilter*(self: gen_qgraphicseffect_types.QGraphicsEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsEffect_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](vtbl)
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsEffecttimerEvent*(self: gen_qgraphicseffect_types.QGraphicsEffect, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsEffect_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEffect_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](vtbl)
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsEffectchildEvent*(self: gen_qgraphicseffect_types.QGraphicsEffect, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsEffect_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEffect_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](vtbl)
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsEffectcustomEvent*(self: gen_qgraphicseffect_types.QGraphicsEffect, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsEffect_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsEffect_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](vtbl)
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsEffectconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsEffect_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsEffect_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](vtbl)
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsEffectdisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsEffect_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsEffect_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsEffectVTable](vtbl)
  let self = QGraphicsEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc updateBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsEffect, ): void =
  fcQGraphicsEffect_protectedbase_updateBoundingRect(self.h)

proc sourceIsPixmap*(self: gen_qgraphicseffect_types.QGraphicsEffect, ): bool =
  fcQGraphicsEffect_protectedbase_sourceIsPixmap(self.h)

proc sourceBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsEffect, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsEffect_protectedbase_sourceBoundingRect(self.h))

proc drawSource*(self: gen_qgraphicseffect_types.QGraphicsEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsEffect_protectedbase_drawSource(self.h, painter.h)

proc sourcePixmap*(self: gen_qgraphicseffect_types.QGraphicsEffect, ): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQGraphicsEffect_protectedbase_sourcePixmap(self.h))

proc sourceBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsEffect, system: cint): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsEffect_protectedbase_sourceBoundingRect1(self.h, cint(system)))

proc sourcePixmap*(self: gen_qgraphicseffect_types.QGraphicsEffect, system: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQGraphicsEffect_protectedbase_sourcePixmap1(self.h, cint(system)))

proc sourcePixmap*(self: gen_qgraphicseffect_types.QGraphicsEffect, system: cint, offset: gen_qpoint_types.QPoint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQGraphicsEffect_protectedbase_sourcePixmap2(self.h, cint(system), offset.h))

proc sourcePixmap*(self: gen_qgraphicseffect_types.QGraphicsEffect, system: cint, offset: gen_qpoint_types.QPoint, mode: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQGraphicsEffect_protectedbase_sourcePixmap3(self.h, cint(system), offset.h, cint(mode)))

proc sender*(self: gen_qgraphicseffect_types.QGraphicsEffect, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsEffect_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qgraphicseffect_types.QGraphicsEffect, ): cint =
  fcQGraphicsEffect_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicseffect_types.QGraphicsEffect, signal: cstring): cint =
  fcQGraphicsEffect_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicseffect_types.QGraphicsEffect, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsEffect_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicseffect_types.QGraphicsEffect,
    vtbl: ref QGraphicsEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsEffect =
  let vtbl = if vtbl == nil: new QGraphicsEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsEffectVTable, _: ptr cQGraphicsEffect) {.cdecl.} =
    let vtbl = cast[ref QGraphicsEffectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsEffect_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsEffect_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsEffect_metacall
  if not isNil(vtbl.boundingRectFor):
    vtbl[].vtbl.boundingRectFor = miqt_exec_callback_cQGraphicsEffect_boundingRectFor
  if not isNil(vtbl.draw):
    vtbl[].vtbl.draw = miqt_exec_callback_cQGraphicsEffect_draw
  if not isNil(vtbl.sourceChanged):
    vtbl[].vtbl.sourceChanged = miqt_exec_callback_cQGraphicsEffect_sourceChanged
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsEffect_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsEffect_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsEffect_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsEffect_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsEffect_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsEffect_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsEffect_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsEffect(h: fcQGraphicsEffect_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicseffect_types.QGraphicsEffect,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsEffect =
  let vtbl = if vtbl == nil: new QGraphicsEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsEffectVTable, _: ptr cQGraphicsEffect) {.cdecl.} =
    let vtbl = cast[ref QGraphicsEffectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsEffect_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsEffect_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsEffect_metacall
  if not isNil(vtbl.boundingRectFor):
    vtbl[].vtbl.boundingRectFor = miqt_exec_callback_cQGraphicsEffect_boundingRectFor
  if not isNil(vtbl.draw):
    vtbl[].vtbl.draw = miqt_exec_callback_cQGraphicsEffect_draw
  if not isNil(vtbl.sourceChanged):
    vtbl[].vtbl.sourceChanged = miqt_exec_callback_cQGraphicsEffect_sourceChanged
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsEffect_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsEffect_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsEffect_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsEffect_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsEffect_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsEffect_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsEffect_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsEffect(h: fcQGraphicsEffect_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgraphicseffect_types.QGraphicsEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsEffect_staticMetaObject())
proc delete*(self: gen_qgraphicseffect_types.QGraphicsEffect) =
  fcQGraphicsEffect_delete(self.h)
proc metaObject*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsColorizeEffect_metaObject(self.h))

proc metacast*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, param1: cstring): pointer =
  fcQGraphicsColorizeEffect_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsColorizeEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsColorizeEffect, s: cstring): string =
  let v_ms = fcQGraphicsColorizeEffect_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsColorizeEffect, s: cstring): string =
  let v_ms = fcQGraphicsColorizeEffect_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc color*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQGraphicsColorizeEffect_color(self.h))

proc strength*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, ): float64 =
  fcQGraphicsColorizeEffect_strength(self.h)

proc setColor*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, c: gen_qcolor_types.QColor): void =
  fcQGraphicsColorizeEffect_setColor(self.h, c.h)

proc setStrength*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, strength: float64): void =
  fcQGraphicsColorizeEffect_setStrength(self.h, strength)

proc colorChanged*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, color: gen_qcolor_types.QColor): void =
  fcQGraphicsColorizeEffect_colorChanged(self.h, color.h)

type QGraphicsColorizeEffectcolorChangedSlot* = proc(color: gen_qcolor_types.QColor)
proc miqt_exec_callback_cQGraphicsColorizeEffect_colorChanged(slot: int, color: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsColorizeEffectcolorChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qcolor_types.QColor(h: color)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGraphicsColorizeEffect_colorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsColorizeEffectcolorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncolorChanged*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, slot: QGraphicsColorizeEffectcolorChangedSlot) =
  var tmp = new QGraphicsColorizeEffectcolorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_connect_colorChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsColorizeEffect_colorChanged, miqt_exec_callback_cQGraphicsColorizeEffect_colorChanged_release)

proc strengthChanged*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, strength: float64): void =
  fcQGraphicsColorizeEffect_strengthChanged(self.h, strength)

type QGraphicsColorizeEffectstrengthChangedSlot* = proc(strength: float64)
proc miqt_exec_callback_cQGraphicsColorizeEffect_strengthChanged(slot: int, strength: float64) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsColorizeEffectstrengthChangedSlot](cast[pointer](slot))
  let slotval1 = strength

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGraphicsColorizeEffect_strengthChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsColorizeEffectstrengthChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstrengthChanged*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, slot: QGraphicsColorizeEffectstrengthChangedSlot) =
  var tmp = new QGraphicsColorizeEffectstrengthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_connect_strengthChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsColorizeEffect_strengthChanged, miqt_exec_callback_cQGraphicsColorizeEffect_strengthChanged_release)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsColorizeEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsColorizeEffect_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsColorizeEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsColorizeEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsColorizeEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsColorizeEffect_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsColorizeEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsColorizeEffect_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QGraphicsColorizeEffectVTable* = object
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
proc QGraphicsColorizeEffectmetaObject*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsColorizeEffect_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGraphicsColorizeEffect_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](vtbl)
  let self = QGraphicsColorizeEffect(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGraphicsColorizeEffectmetacast*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, param1: cstring): pointer =
  fcQGraphicsColorizeEffect_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsColorizeEffect_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](vtbl)
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsColorizeEffectmetacall*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsColorizeEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsColorizeEffect_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](vtbl)
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsColorizeEffectdraw*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsColorizeEffect_virtualbase_draw(self.h, painter.h)

proc miqt_exec_callback_cQGraphicsColorizeEffect_draw(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](vtbl)
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].draw(self, slotval1)

proc QGraphicsColorizeEffectboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsColorizeEffect_virtualbase_boundingRectFor(self.h, sourceRect.h))

proc miqt_exec_callback_cQGraphicsColorizeEffect_boundingRectFor(vtbl: pointer, self: pointer, sourceRect: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](vtbl)
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: sourceRect)
  var virtualReturn = vtbl[].boundingRectFor(self, slotval1)
  virtualReturn.h

proc QGraphicsColorizeEffectsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, flags: cint): void =
  fcQGraphicsColorizeEffect_virtualbase_sourceChanged(self.h, cint(flags))

proc miqt_exec_callback_cQGraphicsColorizeEffect_sourceChanged(vtbl: pointer, self: pointer, flags: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](vtbl)
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = cint(flags)
  vtbl[].sourceChanged(self, slotval1)

proc QGraphicsColorizeEffectevent*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsColorizeEffect_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQGraphicsColorizeEffect_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](vtbl)
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsColorizeEffecteventFilter*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsColorizeEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsColorizeEffect_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](vtbl)
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsColorizeEffecttimerEvent*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsColorizeEffect_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsColorizeEffect_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](vtbl)
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsColorizeEffectchildEvent*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsColorizeEffect_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsColorizeEffect_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](vtbl)
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsColorizeEffectcustomEvent*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsColorizeEffect_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsColorizeEffect_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](vtbl)
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsColorizeEffectconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsColorizeEffect_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsColorizeEffect_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](vtbl)
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsColorizeEffectdisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsColorizeEffect_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsColorizeEffect_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsColorizeEffectVTable](vtbl)
  let self = QGraphicsColorizeEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc updateBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, ): void =
  fcQGraphicsColorizeEffect_protectedbase_updateBoundingRect(self.h)

proc sourceIsPixmap*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, ): bool =
  fcQGraphicsColorizeEffect_protectedbase_sourceIsPixmap(self.h)

proc sourceBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsColorizeEffect_protectedbase_sourceBoundingRect(self.h))

proc drawSource*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsColorizeEffect_protectedbase_drawSource(self.h, painter.h)

proc sourcePixmap*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, ): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQGraphicsColorizeEffect_protectedbase_sourcePixmap(self.h))

proc sender*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsColorizeEffect_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, ): cint =
  fcQGraphicsColorizeEffect_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, signal: cstring): cint =
  fcQGraphicsColorizeEffect_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsColorizeEffect_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicseffect_types.QGraphicsColorizeEffect,
    vtbl: ref QGraphicsColorizeEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsColorizeEffect =
  let vtbl = if vtbl == nil: new QGraphicsColorizeEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsColorizeEffectVTable, _: ptr cQGraphicsColorizeEffect) {.cdecl.} =
    let vtbl = cast[ref QGraphicsColorizeEffectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsColorizeEffect_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsColorizeEffect_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsColorizeEffect_metacall
  if not isNil(vtbl.draw):
    vtbl[].vtbl.draw = miqt_exec_callback_cQGraphicsColorizeEffect_draw
  if not isNil(vtbl.boundingRectFor):
    vtbl[].vtbl.boundingRectFor = miqt_exec_callback_cQGraphicsColorizeEffect_boundingRectFor
  if not isNil(vtbl.sourceChanged):
    vtbl[].vtbl.sourceChanged = miqt_exec_callback_cQGraphicsColorizeEffect_sourceChanged
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsColorizeEffect_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsColorizeEffect_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsColorizeEffect_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsColorizeEffect_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsColorizeEffect_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsColorizeEffect_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsColorizeEffect_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsColorizeEffect(h: fcQGraphicsColorizeEffect_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicseffect_types.QGraphicsColorizeEffect,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsColorizeEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsColorizeEffect =
  let vtbl = if vtbl == nil: new QGraphicsColorizeEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsColorizeEffectVTable, _: ptr cQGraphicsColorizeEffect) {.cdecl.} =
    let vtbl = cast[ref QGraphicsColorizeEffectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsColorizeEffect_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsColorizeEffect_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsColorizeEffect_metacall
  if not isNil(vtbl.draw):
    vtbl[].vtbl.draw = miqt_exec_callback_cQGraphicsColorizeEffect_draw
  if not isNil(vtbl.boundingRectFor):
    vtbl[].vtbl.boundingRectFor = miqt_exec_callback_cQGraphicsColorizeEffect_boundingRectFor
  if not isNil(vtbl.sourceChanged):
    vtbl[].vtbl.sourceChanged = miqt_exec_callback_cQGraphicsColorizeEffect_sourceChanged
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsColorizeEffect_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsColorizeEffect_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsColorizeEffect_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsColorizeEffect_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsColorizeEffect_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsColorizeEffect_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsColorizeEffect_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsColorizeEffect(h: fcQGraphicsColorizeEffect_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgraphicseffect_types.QGraphicsColorizeEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsColorizeEffect_staticMetaObject())
proc delete*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect) =
  fcQGraphicsColorizeEffect_delete(self.h)
proc metaObject*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsBlurEffect_metaObject(self.h))

proc metacast*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, param1: cstring): pointer =
  fcQGraphicsBlurEffect_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsBlurEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsBlurEffect, s: cstring): string =
  let v_ms = fcQGraphicsBlurEffect_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsBlurEffect, s: cstring): string =
  let v_ms = fcQGraphicsBlurEffect_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc boundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsBlurEffect_boundingRectFor(self.h, rect.h))

proc blurRadius*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, ): float64 =
  fcQGraphicsBlurEffect_blurRadius(self.h)

proc blurHints*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, ): cint =
  cint(fcQGraphicsBlurEffect_blurHints(self.h))

proc setBlurRadius*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, blurRadius: float64): void =
  fcQGraphicsBlurEffect_setBlurRadius(self.h, blurRadius)

proc setBlurHints*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, hints: cint): void =
  fcQGraphicsBlurEffect_setBlurHints(self.h, cint(hints))

proc blurRadiusChanged*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, blurRadius: float64): void =
  fcQGraphicsBlurEffect_blurRadiusChanged(self.h, blurRadius)

type QGraphicsBlurEffectblurRadiusChangedSlot* = proc(blurRadius: float64)
proc miqt_exec_callback_cQGraphicsBlurEffect_blurRadiusChanged(slot: int, blurRadius: float64) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsBlurEffectblurRadiusChangedSlot](cast[pointer](slot))
  let slotval1 = blurRadius

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGraphicsBlurEffect_blurRadiusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsBlurEffectblurRadiusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onblurRadiusChanged*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, slot: QGraphicsBlurEffectblurRadiusChangedSlot) =
  var tmp = new QGraphicsBlurEffectblurRadiusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_connect_blurRadiusChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsBlurEffect_blurRadiusChanged, miqt_exec_callback_cQGraphicsBlurEffect_blurRadiusChanged_release)

proc blurHintsChanged*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, hints: cint): void =
  fcQGraphicsBlurEffect_blurHintsChanged(self.h, cint(hints))

type QGraphicsBlurEffectblurHintsChangedSlot* = proc(hints: cint)
proc miqt_exec_callback_cQGraphicsBlurEffect_blurHintsChanged(slot: int, hints: cint) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsBlurEffectblurHintsChangedSlot](cast[pointer](slot))
  let slotval1 = cint(hints)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGraphicsBlurEffect_blurHintsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsBlurEffectblurHintsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onblurHintsChanged*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, slot: QGraphicsBlurEffectblurHintsChangedSlot) =
  var tmp = new QGraphicsBlurEffectblurHintsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_connect_blurHintsChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsBlurEffect_blurHintsChanged, miqt_exec_callback_cQGraphicsBlurEffect_blurHintsChanged_release)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsBlurEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsBlurEffect_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsBlurEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsBlurEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsBlurEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsBlurEffect_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsBlurEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsBlurEffect_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QGraphicsBlurEffectVTable* = object
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
proc QGraphicsBlurEffectmetaObject*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsBlurEffect_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGraphicsBlurEffect_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](vtbl)
  let self = QGraphicsBlurEffect(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGraphicsBlurEffectmetacast*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, param1: cstring): pointer =
  fcQGraphicsBlurEffect_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsBlurEffect_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](vtbl)
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsBlurEffectmetacall*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsBlurEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsBlurEffect_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](vtbl)
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsBlurEffectboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsBlurEffect_virtualbase_boundingRectFor(self.h, rect.h))

proc miqt_exec_callback_cQGraphicsBlurEffect_boundingRectFor(vtbl: pointer, self: pointer, rect: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](vtbl)
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: rect)
  var virtualReturn = vtbl[].boundingRectFor(self, slotval1)
  virtualReturn.h

proc QGraphicsBlurEffectdraw*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsBlurEffect_virtualbase_draw(self.h, painter.h)

proc miqt_exec_callback_cQGraphicsBlurEffect_draw(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](vtbl)
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].draw(self, slotval1)

proc QGraphicsBlurEffectsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, flags: cint): void =
  fcQGraphicsBlurEffect_virtualbase_sourceChanged(self.h, cint(flags))

proc miqt_exec_callback_cQGraphicsBlurEffect_sourceChanged(vtbl: pointer, self: pointer, flags: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](vtbl)
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = cint(flags)
  vtbl[].sourceChanged(self, slotval1)

proc QGraphicsBlurEffectevent*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsBlurEffect_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQGraphicsBlurEffect_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](vtbl)
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsBlurEffecteventFilter*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsBlurEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsBlurEffect_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](vtbl)
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsBlurEffecttimerEvent*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsBlurEffect_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsBlurEffect_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](vtbl)
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsBlurEffectchildEvent*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsBlurEffect_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsBlurEffect_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](vtbl)
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsBlurEffectcustomEvent*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsBlurEffect_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsBlurEffect_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](vtbl)
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsBlurEffectconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsBlurEffect_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsBlurEffect_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](vtbl)
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsBlurEffectdisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsBlurEffect_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsBlurEffect_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsBlurEffectVTable](vtbl)
  let self = QGraphicsBlurEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc updateBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, ): void =
  fcQGraphicsBlurEffect_protectedbase_updateBoundingRect(self.h)

proc sourceIsPixmap*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, ): bool =
  fcQGraphicsBlurEffect_protectedbase_sourceIsPixmap(self.h)

proc sourceBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsBlurEffect_protectedbase_sourceBoundingRect(self.h))

proc drawSource*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsBlurEffect_protectedbase_drawSource(self.h, painter.h)

proc sourcePixmap*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, ): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQGraphicsBlurEffect_protectedbase_sourcePixmap(self.h))

proc sender*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsBlurEffect_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, ): cint =
  fcQGraphicsBlurEffect_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, signal: cstring): cint =
  fcQGraphicsBlurEffect_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsBlurEffect_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicseffect_types.QGraphicsBlurEffect,
    vtbl: ref QGraphicsBlurEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsBlurEffect =
  let vtbl = if vtbl == nil: new QGraphicsBlurEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsBlurEffectVTable, _: ptr cQGraphicsBlurEffect) {.cdecl.} =
    let vtbl = cast[ref QGraphicsBlurEffectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsBlurEffect_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsBlurEffect_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsBlurEffect_metacall
  if not isNil(vtbl.boundingRectFor):
    vtbl[].vtbl.boundingRectFor = miqt_exec_callback_cQGraphicsBlurEffect_boundingRectFor
  if not isNil(vtbl.draw):
    vtbl[].vtbl.draw = miqt_exec_callback_cQGraphicsBlurEffect_draw
  if not isNil(vtbl.sourceChanged):
    vtbl[].vtbl.sourceChanged = miqt_exec_callback_cQGraphicsBlurEffect_sourceChanged
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsBlurEffect_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsBlurEffect_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsBlurEffect_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsBlurEffect_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsBlurEffect_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsBlurEffect_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsBlurEffect_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsBlurEffect(h: fcQGraphicsBlurEffect_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicseffect_types.QGraphicsBlurEffect,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsBlurEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsBlurEffect =
  let vtbl = if vtbl == nil: new QGraphicsBlurEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsBlurEffectVTable, _: ptr cQGraphicsBlurEffect) {.cdecl.} =
    let vtbl = cast[ref QGraphicsBlurEffectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsBlurEffect_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsBlurEffect_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsBlurEffect_metacall
  if not isNil(vtbl.boundingRectFor):
    vtbl[].vtbl.boundingRectFor = miqt_exec_callback_cQGraphicsBlurEffect_boundingRectFor
  if not isNil(vtbl.draw):
    vtbl[].vtbl.draw = miqt_exec_callback_cQGraphicsBlurEffect_draw
  if not isNil(vtbl.sourceChanged):
    vtbl[].vtbl.sourceChanged = miqt_exec_callback_cQGraphicsBlurEffect_sourceChanged
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsBlurEffect_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsBlurEffect_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsBlurEffect_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsBlurEffect_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsBlurEffect_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsBlurEffect_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsBlurEffect_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsBlurEffect(h: fcQGraphicsBlurEffect_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgraphicseffect_types.QGraphicsBlurEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsBlurEffect_staticMetaObject())
proc delete*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect) =
  fcQGraphicsBlurEffect_delete(self.h)
proc metaObject*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsDropShadowEffect_metaObject(self.h))

proc metacast*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, param1: cstring): pointer =
  fcQGraphicsDropShadowEffect_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsDropShadowEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect, s: cstring): string =
  let v_ms = fcQGraphicsDropShadowEffect_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect, s: cstring): string =
  let v_ms = fcQGraphicsDropShadowEffect_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc boundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsDropShadowEffect_boundingRectFor(self.h, rect.h))

proc offset*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGraphicsDropShadowEffect_offset(self.h))

proc xOffset*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, ): float64 =
  fcQGraphicsDropShadowEffect_xOffset(self.h)

proc yOffset*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, ): float64 =
  fcQGraphicsDropShadowEffect_yOffset(self.h)

proc blurRadius*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, ): float64 =
  fcQGraphicsDropShadowEffect_blurRadius(self.h)

proc color*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQGraphicsDropShadowEffect_color(self.h))

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
proc miqt_exec_callback_cQGraphicsDropShadowEffect_offsetChanged(slot: int, offset: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsDropShadowEffectoffsetChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: offset)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGraphicsDropShadowEffect_offsetChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsDropShadowEffectoffsetChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onoffsetChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffectoffsetChangedSlot) =
  var tmp = new QGraphicsDropShadowEffectoffsetChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_connect_offsetChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsDropShadowEffect_offsetChanged, miqt_exec_callback_cQGraphicsDropShadowEffect_offsetChanged_release)

proc blurRadiusChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, blurRadius: float64): void =
  fcQGraphicsDropShadowEffect_blurRadiusChanged(self.h, blurRadius)

type QGraphicsDropShadowEffectblurRadiusChangedSlot* = proc(blurRadius: float64)
proc miqt_exec_callback_cQGraphicsDropShadowEffect_blurRadiusChanged(slot: int, blurRadius: float64) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsDropShadowEffectblurRadiusChangedSlot](cast[pointer](slot))
  let slotval1 = blurRadius

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGraphicsDropShadowEffect_blurRadiusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsDropShadowEffectblurRadiusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onblurRadiusChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffectblurRadiusChangedSlot) =
  var tmp = new QGraphicsDropShadowEffectblurRadiusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_connect_blurRadiusChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsDropShadowEffect_blurRadiusChanged, miqt_exec_callback_cQGraphicsDropShadowEffect_blurRadiusChanged_release)

proc colorChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, color: gen_qcolor_types.QColor): void =
  fcQGraphicsDropShadowEffect_colorChanged(self.h, color.h)

type QGraphicsDropShadowEffectcolorChangedSlot* = proc(color: gen_qcolor_types.QColor)
proc miqt_exec_callback_cQGraphicsDropShadowEffect_colorChanged(slot: int, color: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsDropShadowEffectcolorChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qcolor_types.QColor(h: color)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGraphicsDropShadowEffect_colorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsDropShadowEffectcolorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncolorChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffectcolorChangedSlot) =
  var tmp = new QGraphicsDropShadowEffectcolorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_connect_colorChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsDropShadowEffect_colorChanged, miqt_exec_callback_cQGraphicsDropShadowEffect_colorChanged_release)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsDropShadowEffect_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsDropShadowEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsDropShadowEffect_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsDropShadowEffect_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QGraphicsDropShadowEffectVTable* = object
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
proc QGraphicsDropShadowEffectmetaObject*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsDropShadowEffect_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGraphicsDropShadowEffect_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](vtbl)
  let self = QGraphicsDropShadowEffect(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGraphicsDropShadowEffectmetacast*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, param1: cstring): pointer =
  fcQGraphicsDropShadowEffect_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsDropShadowEffect_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](vtbl)
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsDropShadowEffectmetacall*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsDropShadowEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsDropShadowEffect_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](vtbl)
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsDropShadowEffectboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsDropShadowEffect_virtualbase_boundingRectFor(self.h, rect.h))

proc miqt_exec_callback_cQGraphicsDropShadowEffect_boundingRectFor(vtbl: pointer, self: pointer, rect: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](vtbl)
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: rect)
  var virtualReturn = vtbl[].boundingRectFor(self, slotval1)
  virtualReturn.h

proc QGraphicsDropShadowEffectdraw*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsDropShadowEffect_virtualbase_draw(self.h, painter.h)

proc miqt_exec_callback_cQGraphicsDropShadowEffect_draw(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](vtbl)
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].draw(self, slotval1)

proc QGraphicsDropShadowEffectsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, flags: cint): void =
  fcQGraphicsDropShadowEffect_virtualbase_sourceChanged(self.h, cint(flags))

proc miqt_exec_callback_cQGraphicsDropShadowEffect_sourceChanged(vtbl: pointer, self: pointer, flags: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](vtbl)
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = cint(flags)
  vtbl[].sourceChanged(self, slotval1)

proc QGraphicsDropShadowEffectevent*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsDropShadowEffect_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQGraphicsDropShadowEffect_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](vtbl)
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsDropShadowEffecteventFilter*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsDropShadowEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsDropShadowEffect_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](vtbl)
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsDropShadowEffecttimerEvent*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsDropShadowEffect_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsDropShadowEffect_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](vtbl)
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsDropShadowEffectchildEvent*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsDropShadowEffect_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsDropShadowEffect_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](vtbl)
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsDropShadowEffectcustomEvent*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsDropShadowEffect_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsDropShadowEffect_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](vtbl)
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsDropShadowEffectconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsDropShadowEffect_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsDropShadowEffect_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](vtbl)
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsDropShadowEffectdisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsDropShadowEffect_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsDropShadowEffect_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsDropShadowEffectVTable](vtbl)
  let self = QGraphicsDropShadowEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc updateBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, ): void =
  fcQGraphicsDropShadowEffect_protectedbase_updateBoundingRect(self.h)

proc sourceIsPixmap*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, ): bool =
  fcQGraphicsDropShadowEffect_protectedbase_sourceIsPixmap(self.h)

proc sourceBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsDropShadowEffect_protectedbase_sourceBoundingRect(self.h))

proc drawSource*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsDropShadowEffect_protectedbase_drawSource(self.h, painter.h)

proc sourcePixmap*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, ): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQGraphicsDropShadowEffect_protectedbase_sourcePixmap(self.h))

proc sender*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsDropShadowEffect_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, ): cint =
  fcQGraphicsDropShadowEffect_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, signal: cstring): cint =
  fcQGraphicsDropShadowEffect_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsDropShadowEffect_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect,
    vtbl: ref QGraphicsDropShadowEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsDropShadowEffect =
  let vtbl = if vtbl == nil: new QGraphicsDropShadowEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsDropShadowEffectVTable, _: ptr cQGraphicsDropShadowEffect) {.cdecl.} =
    let vtbl = cast[ref QGraphicsDropShadowEffectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsDropShadowEffect_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsDropShadowEffect_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsDropShadowEffect_metacall
  if not isNil(vtbl.boundingRectFor):
    vtbl[].vtbl.boundingRectFor = miqt_exec_callback_cQGraphicsDropShadowEffect_boundingRectFor
  if not isNil(vtbl.draw):
    vtbl[].vtbl.draw = miqt_exec_callback_cQGraphicsDropShadowEffect_draw
  if not isNil(vtbl.sourceChanged):
    vtbl[].vtbl.sourceChanged = miqt_exec_callback_cQGraphicsDropShadowEffect_sourceChanged
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsDropShadowEffect_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsDropShadowEffect_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsDropShadowEffect_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsDropShadowEffect_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsDropShadowEffect_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsDropShadowEffect_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsDropShadowEffect_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsDropShadowEffect(h: fcQGraphicsDropShadowEffect_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsDropShadowEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsDropShadowEffect =
  let vtbl = if vtbl == nil: new QGraphicsDropShadowEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsDropShadowEffectVTable, _: ptr cQGraphicsDropShadowEffect) {.cdecl.} =
    let vtbl = cast[ref QGraphicsDropShadowEffectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsDropShadowEffect_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsDropShadowEffect_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsDropShadowEffect_metacall
  if not isNil(vtbl.boundingRectFor):
    vtbl[].vtbl.boundingRectFor = miqt_exec_callback_cQGraphicsDropShadowEffect_boundingRectFor
  if not isNil(vtbl.draw):
    vtbl[].vtbl.draw = miqt_exec_callback_cQGraphicsDropShadowEffect_draw
  if not isNil(vtbl.sourceChanged):
    vtbl[].vtbl.sourceChanged = miqt_exec_callback_cQGraphicsDropShadowEffect_sourceChanged
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsDropShadowEffect_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsDropShadowEffect_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsDropShadowEffect_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsDropShadowEffect_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsDropShadowEffect_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsDropShadowEffect_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsDropShadowEffect_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsDropShadowEffect(h: fcQGraphicsDropShadowEffect_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsDropShadowEffect_staticMetaObject())
proc delete*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect) =
  fcQGraphicsDropShadowEffect_delete(self.h)
proc metaObject*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsOpacityEffect_metaObject(self.h))

proc metacast*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, param1: cstring): pointer =
  fcQGraphicsOpacityEffect_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsOpacityEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsOpacityEffect, s: cstring): string =
  let v_ms = fcQGraphicsOpacityEffect_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsOpacityEffect, s: cstring): string =
  let v_ms = fcQGraphicsOpacityEffect_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc opacity*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, ): float64 =
  fcQGraphicsOpacityEffect_opacity(self.h)

proc opacityMask*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQGraphicsOpacityEffect_opacityMask(self.h))

proc setOpacity*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, opacity: float64): void =
  fcQGraphicsOpacityEffect_setOpacity(self.h, opacity)

proc setOpacityMask*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, mask: gen_qbrush_types.QBrush): void =
  fcQGraphicsOpacityEffect_setOpacityMask(self.h, mask.h)

proc opacityChanged*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, opacity: float64): void =
  fcQGraphicsOpacityEffect_opacityChanged(self.h, opacity)

type QGraphicsOpacityEffectopacityChangedSlot* = proc(opacity: float64)
proc miqt_exec_callback_cQGraphicsOpacityEffect_opacityChanged(slot: int, opacity: float64) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsOpacityEffectopacityChangedSlot](cast[pointer](slot))
  let slotval1 = opacity

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGraphicsOpacityEffect_opacityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsOpacityEffectopacityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onopacityChanged*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, slot: QGraphicsOpacityEffectopacityChangedSlot) =
  var tmp = new QGraphicsOpacityEffectopacityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_connect_opacityChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsOpacityEffect_opacityChanged, miqt_exec_callback_cQGraphicsOpacityEffect_opacityChanged_release)

proc opacityMaskChanged*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, mask: gen_qbrush_types.QBrush): void =
  fcQGraphicsOpacityEffect_opacityMaskChanged(self.h, mask.h)

type QGraphicsOpacityEffectopacityMaskChangedSlot* = proc(mask: gen_qbrush_types.QBrush)
proc miqt_exec_callback_cQGraphicsOpacityEffect_opacityMaskChanged(slot: int, mask: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsOpacityEffectopacityMaskChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qbrush_types.QBrush(h: mask)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGraphicsOpacityEffect_opacityMaskChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsOpacityEffectopacityMaskChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onopacityMaskChanged*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, slot: QGraphicsOpacityEffectopacityMaskChangedSlot) =
  var tmp = new QGraphicsOpacityEffectopacityMaskChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_connect_opacityMaskChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsOpacityEffect_opacityMaskChanged, miqt_exec_callback_cQGraphicsOpacityEffect_opacityMaskChanged_release)

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsOpacityEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsOpacityEffect_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicseffect_types.QGraphicsOpacityEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsOpacityEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsOpacityEffect, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsOpacityEffect_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicseffect_types.QGraphicsOpacityEffect, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsOpacityEffect_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QGraphicsOpacityEffectVTable* = object
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
proc QGraphicsOpacityEffectmetaObject*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsOpacityEffect_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGraphicsOpacityEffect_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](vtbl)
  let self = QGraphicsOpacityEffect(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGraphicsOpacityEffectmetacast*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, param1: cstring): pointer =
  fcQGraphicsOpacityEffect_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsOpacityEffect_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](vtbl)
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsOpacityEffectmetacall*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsOpacityEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsOpacityEffect_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](vtbl)
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsOpacityEffectdraw*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsOpacityEffect_virtualbase_draw(self.h, painter.h)

proc miqt_exec_callback_cQGraphicsOpacityEffect_draw(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](vtbl)
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].draw(self, slotval1)

proc QGraphicsOpacityEffectboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsOpacityEffect_virtualbase_boundingRectFor(self.h, sourceRect.h))

proc miqt_exec_callback_cQGraphicsOpacityEffect_boundingRectFor(vtbl: pointer, self: pointer, sourceRect: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](vtbl)
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: sourceRect)
  var virtualReturn = vtbl[].boundingRectFor(self, slotval1)
  virtualReturn.h

proc QGraphicsOpacityEffectsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, flags: cint): void =
  fcQGraphicsOpacityEffect_virtualbase_sourceChanged(self.h, cint(flags))

proc miqt_exec_callback_cQGraphicsOpacityEffect_sourceChanged(vtbl: pointer, self: pointer, flags: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](vtbl)
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = cint(flags)
  vtbl[].sourceChanged(self, slotval1)

proc QGraphicsOpacityEffectevent*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsOpacityEffect_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQGraphicsOpacityEffect_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](vtbl)
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsOpacityEffecteventFilter*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsOpacityEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsOpacityEffect_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](vtbl)
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsOpacityEffecttimerEvent*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsOpacityEffect_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsOpacityEffect_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](vtbl)
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsOpacityEffectchildEvent*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsOpacityEffect_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsOpacityEffect_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](vtbl)
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsOpacityEffectcustomEvent*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsOpacityEffect_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsOpacityEffect_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](vtbl)
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsOpacityEffectconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsOpacityEffect_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsOpacityEffect_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](vtbl)
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsOpacityEffectdisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsOpacityEffect_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsOpacityEffect_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsOpacityEffectVTable](vtbl)
  let self = QGraphicsOpacityEffect(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc updateBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, ): void =
  fcQGraphicsOpacityEffect_protectedbase_updateBoundingRect(self.h)

proc sourceIsPixmap*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, ): bool =
  fcQGraphicsOpacityEffect_protectedbase_sourceIsPixmap(self.h)

proc sourceBoundingRect*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQGraphicsOpacityEffect_protectedbase_sourceBoundingRect(self.h))

proc drawSource*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, painter: gen_qpainter_types.QPainter): void =
  fcQGraphicsOpacityEffect_protectedbase_drawSource(self.h, painter.h)

proc sourcePixmap*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, ): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQGraphicsOpacityEffect_protectedbase_sourcePixmap(self.h))

proc sender*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsOpacityEffect_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, ): cint =
  fcQGraphicsOpacityEffect_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, signal: cstring): cint =
  fcQGraphicsOpacityEffect_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsOpacityEffect_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicseffect_types.QGraphicsOpacityEffect,
    vtbl: ref QGraphicsOpacityEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsOpacityEffect =
  let vtbl = if vtbl == nil: new QGraphicsOpacityEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsOpacityEffectVTable, _: ptr cQGraphicsOpacityEffect) {.cdecl.} =
    let vtbl = cast[ref QGraphicsOpacityEffectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsOpacityEffect_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsOpacityEffect_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsOpacityEffect_metacall
  if not isNil(vtbl.draw):
    vtbl[].vtbl.draw = miqt_exec_callback_cQGraphicsOpacityEffect_draw
  if not isNil(vtbl.boundingRectFor):
    vtbl[].vtbl.boundingRectFor = miqt_exec_callback_cQGraphicsOpacityEffect_boundingRectFor
  if not isNil(vtbl.sourceChanged):
    vtbl[].vtbl.sourceChanged = miqt_exec_callback_cQGraphicsOpacityEffect_sourceChanged
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsOpacityEffect_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsOpacityEffect_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsOpacityEffect_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsOpacityEffect_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsOpacityEffect_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsOpacityEffect_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsOpacityEffect_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsOpacityEffect(h: fcQGraphicsOpacityEffect_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicseffect_types.QGraphicsOpacityEffect,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsOpacityEffectVTable = nil): gen_qgraphicseffect_types.QGraphicsOpacityEffect =
  let vtbl = if vtbl == nil: new QGraphicsOpacityEffectVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsOpacityEffectVTable, _: ptr cQGraphicsOpacityEffect) {.cdecl.} =
    let vtbl = cast[ref QGraphicsOpacityEffectVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsOpacityEffect_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsOpacityEffect_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsOpacityEffect_metacall
  if not isNil(vtbl.draw):
    vtbl[].vtbl.draw = miqt_exec_callback_cQGraphicsOpacityEffect_draw
  if not isNil(vtbl.boundingRectFor):
    vtbl[].vtbl.boundingRectFor = miqt_exec_callback_cQGraphicsOpacityEffect_boundingRectFor
  if not isNil(vtbl.sourceChanged):
    vtbl[].vtbl.sourceChanged = miqt_exec_callback_cQGraphicsOpacityEffect_sourceChanged
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsOpacityEffect_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsOpacityEffect_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsOpacityEffect_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsOpacityEffect_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsOpacityEffect_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsOpacityEffect_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsOpacityEffect_disconnectNotify
  gen_qgraphicseffect_types.QGraphicsOpacityEffect(h: fcQGraphicsOpacityEffect_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgraphicseffect_types.QGraphicsOpacityEffect): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsOpacityEffect_staticMetaObject())
proc delete*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect) =
  fcQGraphicsOpacityEffect_delete(self.h)
