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
  ../QtGui/gen_qpainter_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qbrush_types,
  gen_qcolor_types,
  gen_qpainter_types

type cQGraphicsEffect*{.exportc: "QGraphicsEffect", incompleteStruct.} = object
type cQGraphicsColorizeEffect*{.exportc: "QGraphicsColorizeEffect", incompleteStruct.} = object
type cQGraphicsBlurEffect*{.exportc: "QGraphicsBlurEffect", incompleteStruct.} = object
type cQGraphicsDropShadowEffect*{.exportc: "QGraphicsDropShadowEffect", incompleteStruct.} = object
type cQGraphicsOpacityEffect*{.exportc: "QGraphicsOpacityEffect", incompleteStruct.} = object

proc fcQGraphicsEffect_new(): ptr cQGraphicsEffect {.importc: "QGraphicsEffect_new".}
proc fcQGraphicsEffect_new2(parent: pointer): ptr cQGraphicsEffect {.importc: "QGraphicsEffect_new2".}
proc fcQGraphicsEffect_metaObject(self: pointer, ): pointer {.importc: "QGraphicsEffect_metaObject".}
proc fcQGraphicsEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsEffect_metacast".}
proc fcQGraphicsEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsEffect_tr".}
proc fcQGraphicsEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsEffect_trUtf8".}
proc fcQGraphicsEffect_boundingRectFor(self: pointer, sourceRect: pointer): pointer {.importc: "QGraphicsEffect_boundingRectFor".}
proc fcQGraphicsEffect_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsEffect_boundingRect".}
proc fcQGraphicsEffect_isEnabled(self: pointer, ): bool {.importc: "QGraphicsEffect_isEnabled".}
proc fcQGraphicsEffect_setEnabled(self: pointer, enable: bool): void {.importc: "QGraphicsEffect_setEnabled".}
proc fcQGraphicsEffect_update(self: pointer, ): void {.importc: "QGraphicsEffect_update".}
proc fcQGraphicsEffect_enabledChanged(self: pointer, enabled: bool): void {.importc: "QGraphicsEffect_enabledChanged".}
proc fcQGraphicsEffect_connect_enabledChanged(self: pointer, slot: int) {.importc: "QGraphicsEffect_connect_enabledChanged".}
proc fcQGraphicsEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsEffect_tr2".}
proc fcQGraphicsEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsEffect_tr3".}
proc fcQGraphicsEffect_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsEffect_trUtf82".}
proc fcQGraphicsEffect_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsEffect_trUtf83".}
proc fQGraphicsEffect_virtualbase_boundingRectFor(self: pointer, sourceRect: pointer): pointer{.importc: "QGraphicsEffect_virtualbase_boundingRectFor".}
proc fcQGraphicsEffect_override_virtual_boundingRectFor(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_boundingRectFor".}
proc fcQGraphicsEffect_override_virtual_draw(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_draw".}
proc fQGraphicsEffect_virtualbase_sourceChanged(self: pointer, flags: cint): void{.importc: "QGraphicsEffect_virtualbase_sourceChanged".}
proc fcQGraphicsEffect_override_virtual_sourceChanged(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_sourceChanged".}
proc fQGraphicsEffect_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsEffect_virtualbase_event".}
proc fcQGraphicsEffect_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_event".}
proc fQGraphicsEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsEffect_virtualbase_eventFilter".}
proc fcQGraphicsEffect_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_eventFilter".}
proc fQGraphicsEffect_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEffect_virtualbase_timerEvent".}
proc fcQGraphicsEffect_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_timerEvent".}
proc fQGraphicsEffect_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEffect_virtualbase_childEvent".}
proc fcQGraphicsEffect_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_childEvent".}
proc fQGraphicsEffect_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEffect_virtualbase_customEvent".}
proc fcQGraphicsEffect_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_customEvent".}
proc fQGraphicsEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsEffect_virtualbase_connectNotify".}
proc fcQGraphicsEffect_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_connectNotify".}
proc fQGraphicsEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsEffect_virtualbase_disconnectNotify".}
proc fcQGraphicsEffect_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_disconnectNotify".}
proc fcQGraphicsEffect_delete(self: pointer) {.importc: "QGraphicsEffect_delete".}
proc fcQGraphicsColorizeEffect_new(): ptr cQGraphicsColorizeEffect {.importc: "QGraphicsColorizeEffect_new".}
proc fcQGraphicsColorizeEffect_new2(parent: pointer): ptr cQGraphicsColorizeEffect {.importc: "QGraphicsColorizeEffect_new2".}
proc fcQGraphicsColorizeEffect_metaObject(self: pointer, ): pointer {.importc: "QGraphicsColorizeEffect_metaObject".}
proc fcQGraphicsColorizeEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsColorizeEffect_metacast".}
proc fcQGraphicsColorizeEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsColorizeEffect_tr".}
proc fcQGraphicsColorizeEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsColorizeEffect_trUtf8".}
proc fcQGraphicsColorizeEffect_color(self: pointer, ): pointer {.importc: "QGraphicsColorizeEffect_color".}
proc fcQGraphicsColorizeEffect_strength(self: pointer, ): float64 {.importc: "QGraphicsColorizeEffect_strength".}
proc fcQGraphicsColorizeEffect_setColor(self: pointer, c: pointer): void {.importc: "QGraphicsColorizeEffect_setColor".}
proc fcQGraphicsColorizeEffect_setStrength(self: pointer, strength: float64): void {.importc: "QGraphicsColorizeEffect_setStrength".}
proc fcQGraphicsColorizeEffect_colorChanged(self: pointer, color: pointer): void {.importc: "QGraphicsColorizeEffect_colorChanged".}
proc fcQGraphicsColorizeEffect_connect_colorChanged(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_connect_colorChanged".}
proc fcQGraphicsColorizeEffect_strengthChanged(self: pointer, strength: float64): void {.importc: "QGraphicsColorizeEffect_strengthChanged".}
proc fcQGraphicsColorizeEffect_connect_strengthChanged(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_connect_strengthChanged".}
proc fcQGraphicsColorizeEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsColorizeEffect_tr2".}
proc fcQGraphicsColorizeEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsColorizeEffect_tr3".}
proc fcQGraphicsColorizeEffect_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsColorizeEffect_trUtf82".}
proc fcQGraphicsColorizeEffect_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsColorizeEffect_trUtf83".}
proc fQGraphicsColorizeEffect_virtualbase_draw(self: pointer, painter: pointer): void{.importc: "QGraphicsColorizeEffect_virtualbase_draw".}
proc fcQGraphicsColorizeEffect_override_virtual_draw(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_draw".}
proc fQGraphicsColorizeEffect_virtualbase_boundingRectFor(self: pointer, sourceRect: pointer): pointer{.importc: "QGraphicsColorizeEffect_virtualbase_boundingRectFor".}
proc fcQGraphicsColorizeEffect_override_virtual_boundingRectFor(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_boundingRectFor".}
proc fQGraphicsColorizeEffect_virtualbase_sourceChanged(self: pointer, flags: cint): void{.importc: "QGraphicsColorizeEffect_virtualbase_sourceChanged".}
proc fcQGraphicsColorizeEffect_override_virtual_sourceChanged(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_sourceChanged".}
proc fQGraphicsColorizeEffect_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsColorizeEffect_virtualbase_event".}
proc fcQGraphicsColorizeEffect_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_event".}
proc fQGraphicsColorizeEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsColorizeEffect_virtualbase_eventFilter".}
proc fcQGraphicsColorizeEffect_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_eventFilter".}
proc fQGraphicsColorizeEffect_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsColorizeEffect_virtualbase_timerEvent".}
proc fcQGraphicsColorizeEffect_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_timerEvent".}
proc fQGraphicsColorizeEffect_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsColorizeEffect_virtualbase_childEvent".}
proc fcQGraphicsColorizeEffect_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_childEvent".}
proc fQGraphicsColorizeEffect_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsColorizeEffect_virtualbase_customEvent".}
proc fcQGraphicsColorizeEffect_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_customEvent".}
proc fQGraphicsColorizeEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsColorizeEffect_virtualbase_connectNotify".}
proc fcQGraphicsColorizeEffect_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_connectNotify".}
proc fQGraphicsColorizeEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsColorizeEffect_virtualbase_disconnectNotify".}
proc fcQGraphicsColorizeEffect_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_disconnectNotify".}
proc fcQGraphicsColorizeEffect_delete(self: pointer) {.importc: "QGraphicsColorizeEffect_delete".}
proc fcQGraphicsBlurEffect_new(): ptr cQGraphicsBlurEffect {.importc: "QGraphicsBlurEffect_new".}
proc fcQGraphicsBlurEffect_new2(parent: pointer): ptr cQGraphicsBlurEffect {.importc: "QGraphicsBlurEffect_new2".}
proc fcQGraphicsBlurEffect_metaObject(self: pointer, ): pointer {.importc: "QGraphicsBlurEffect_metaObject".}
proc fcQGraphicsBlurEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsBlurEffect_metacast".}
proc fcQGraphicsBlurEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsBlurEffect_tr".}
proc fcQGraphicsBlurEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsBlurEffect_trUtf8".}
proc fcQGraphicsBlurEffect_boundingRectFor(self: pointer, rect: pointer): pointer {.importc: "QGraphicsBlurEffect_boundingRectFor".}
proc fcQGraphicsBlurEffect_blurRadius(self: pointer, ): float64 {.importc: "QGraphicsBlurEffect_blurRadius".}
proc fcQGraphicsBlurEffect_blurHints(self: pointer, ): cint {.importc: "QGraphicsBlurEffect_blurHints".}
proc fcQGraphicsBlurEffect_setBlurRadius(self: pointer, blurRadius: float64): void {.importc: "QGraphicsBlurEffect_setBlurRadius".}
proc fcQGraphicsBlurEffect_setBlurHints(self: pointer, hints: cint): void {.importc: "QGraphicsBlurEffect_setBlurHints".}
proc fcQGraphicsBlurEffect_blurRadiusChanged(self: pointer, blurRadius: float64): void {.importc: "QGraphicsBlurEffect_blurRadiusChanged".}
proc fcQGraphicsBlurEffect_connect_blurRadiusChanged(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_connect_blurRadiusChanged".}
proc fcQGraphicsBlurEffect_blurHintsChanged(self: pointer, hints: cint): void {.importc: "QGraphicsBlurEffect_blurHintsChanged".}
proc fcQGraphicsBlurEffect_connect_blurHintsChanged(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_connect_blurHintsChanged".}
proc fcQGraphicsBlurEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsBlurEffect_tr2".}
proc fcQGraphicsBlurEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsBlurEffect_tr3".}
proc fcQGraphicsBlurEffect_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsBlurEffect_trUtf82".}
proc fcQGraphicsBlurEffect_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsBlurEffect_trUtf83".}
proc fQGraphicsBlurEffect_virtualbase_boundingRectFor(self: pointer, rect: pointer): pointer{.importc: "QGraphicsBlurEffect_virtualbase_boundingRectFor".}
proc fcQGraphicsBlurEffect_override_virtual_boundingRectFor(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_boundingRectFor".}
proc fQGraphicsBlurEffect_virtualbase_draw(self: pointer, painter: pointer): void{.importc: "QGraphicsBlurEffect_virtualbase_draw".}
proc fcQGraphicsBlurEffect_override_virtual_draw(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_draw".}
proc fQGraphicsBlurEffect_virtualbase_sourceChanged(self: pointer, flags: cint): void{.importc: "QGraphicsBlurEffect_virtualbase_sourceChanged".}
proc fcQGraphicsBlurEffect_override_virtual_sourceChanged(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_sourceChanged".}
proc fQGraphicsBlurEffect_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsBlurEffect_virtualbase_event".}
proc fcQGraphicsBlurEffect_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_event".}
proc fQGraphicsBlurEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsBlurEffect_virtualbase_eventFilter".}
proc fcQGraphicsBlurEffect_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_eventFilter".}
proc fQGraphicsBlurEffect_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsBlurEffect_virtualbase_timerEvent".}
proc fcQGraphicsBlurEffect_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_timerEvent".}
proc fQGraphicsBlurEffect_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsBlurEffect_virtualbase_childEvent".}
proc fcQGraphicsBlurEffect_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_childEvent".}
proc fQGraphicsBlurEffect_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsBlurEffect_virtualbase_customEvent".}
proc fcQGraphicsBlurEffect_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_customEvent".}
proc fQGraphicsBlurEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsBlurEffect_virtualbase_connectNotify".}
proc fcQGraphicsBlurEffect_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_connectNotify".}
proc fQGraphicsBlurEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsBlurEffect_virtualbase_disconnectNotify".}
proc fcQGraphicsBlurEffect_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_disconnectNotify".}
proc fcQGraphicsBlurEffect_delete(self: pointer) {.importc: "QGraphicsBlurEffect_delete".}
proc fcQGraphicsDropShadowEffect_new(): ptr cQGraphicsDropShadowEffect {.importc: "QGraphicsDropShadowEffect_new".}
proc fcQGraphicsDropShadowEffect_new2(parent: pointer): ptr cQGraphicsDropShadowEffect {.importc: "QGraphicsDropShadowEffect_new2".}
proc fcQGraphicsDropShadowEffect_metaObject(self: pointer, ): pointer {.importc: "QGraphicsDropShadowEffect_metaObject".}
proc fcQGraphicsDropShadowEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsDropShadowEffect_metacast".}
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
proc fcQGraphicsDropShadowEffect_connect_offsetChanged(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_connect_offsetChanged".}
proc fcQGraphicsDropShadowEffect_blurRadiusChanged(self: pointer, blurRadius: float64): void {.importc: "QGraphicsDropShadowEffect_blurRadiusChanged".}
proc fcQGraphicsDropShadowEffect_connect_blurRadiusChanged(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_connect_blurRadiusChanged".}
proc fcQGraphicsDropShadowEffect_colorChanged(self: pointer, color: pointer): void {.importc: "QGraphicsDropShadowEffect_colorChanged".}
proc fcQGraphicsDropShadowEffect_connect_colorChanged(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_connect_colorChanged".}
proc fcQGraphicsDropShadowEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_tr2".}
proc fcQGraphicsDropShadowEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_tr3".}
proc fcQGraphicsDropShadowEffect_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_trUtf82".}
proc fcQGraphicsDropShadowEffect_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_trUtf83".}
proc fQGraphicsDropShadowEffect_virtualbase_boundingRectFor(self: pointer, rect: pointer): pointer{.importc: "QGraphicsDropShadowEffect_virtualbase_boundingRectFor".}
proc fcQGraphicsDropShadowEffect_override_virtual_boundingRectFor(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_boundingRectFor".}
proc fQGraphicsDropShadowEffect_virtualbase_draw(self: pointer, painter: pointer): void{.importc: "QGraphicsDropShadowEffect_virtualbase_draw".}
proc fcQGraphicsDropShadowEffect_override_virtual_draw(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_draw".}
proc fQGraphicsDropShadowEffect_virtualbase_sourceChanged(self: pointer, flags: cint): void{.importc: "QGraphicsDropShadowEffect_virtualbase_sourceChanged".}
proc fcQGraphicsDropShadowEffect_override_virtual_sourceChanged(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_sourceChanged".}
proc fQGraphicsDropShadowEffect_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsDropShadowEffect_virtualbase_event".}
proc fcQGraphicsDropShadowEffect_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_event".}
proc fQGraphicsDropShadowEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsDropShadowEffect_virtualbase_eventFilter".}
proc fcQGraphicsDropShadowEffect_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_eventFilter".}
proc fQGraphicsDropShadowEffect_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsDropShadowEffect_virtualbase_timerEvent".}
proc fcQGraphicsDropShadowEffect_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_timerEvent".}
proc fQGraphicsDropShadowEffect_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsDropShadowEffect_virtualbase_childEvent".}
proc fcQGraphicsDropShadowEffect_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_childEvent".}
proc fQGraphicsDropShadowEffect_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsDropShadowEffect_virtualbase_customEvent".}
proc fcQGraphicsDropShadowEffect_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_customEvent".}
proc fQGraphicsDropShadowEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsDropShadowEffect_virtualbase_connectNotify".}
proc fcQGraphicsDropShadowEffect_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_connectNotify".}
proc fQGraphicsDropShadowEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsDropShadowEffect_virtualbase_disconnectNotify".}
proc fcQGraphicsDropShadowEffect_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_disconnectNotify".}
proc fcQGraphicsDropShadowEffect_delete(self: pointer) {.importc: "QGraphicsDropShadowEffect_delete".}
proc fcQGraphicsOpacityEffect_new(): ptr cQGraphicsOpacityEffect {.importc: "QGraphicsOpacityEffect_new".}
proc fcQGraphicsOpacityEffect_new2(parent: pointer): ptr cQGraphicsOpacityEffect {.importc: "QGraphicsOpacityEffect_new2".}
proc fcQGraphicsOpacityEffect_metaObject(self: pointer, ): pointer {.importc: "QGraphicsOpacityEffect_metaObject".}
proc fcQGraphicsOpacityEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsOpacityEffect_metacast".}
proc fcQGraphicsOpacityEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsOpacityEffect_tr".}
proc fcQGraphicsOpacityEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsOpacityEffect_trUtf8".}
proc fcQGraphicsOpacityEffect_opacity(self: pointer, ): float64 {.importc: "QGraphicsOpacityEffect_opacity".}
proc fcQGraphicsOpacityEffect_opacityMask(self: pointer, ): pointer {.importc: "QGraphicsOpacityEffect_opacityMask".}
proc fcQGraphicsOpacityEffect_setOpacity(self: pointer, opacity: float64): void {.importc: "QGraphicsOpacityEffect_setOpacity".}
proc fcQGraphicsOpacityEffect_setOpacityMask(self: pointer, mask: pointer): void {.importc: "QGraphicsOpacityEffect_setOpacityMask".}
proc fcQGraphicsOpacityEffect_opacityChanged(self: pointer, opacity: float64): void {.importc: "QGraphicsOpacityEffect_opacityChanged".}
proc fcQGraphicsOpacityEffect_connect_opacityChanged(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_connect_opacityChanged".}
proc fcQGraphicsOpacityEffect_opacityMaskChanged(self: pointer, mask: pointer): void {.importc: "QGraphicsOpacityEffect_opacityMaskChanged".}
proc fcQGraphicsOpacityEffect_connect_opacityMaskChanged(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_connect_opacityMaskChanged".}
proc fcQGraphicsOpacityEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsOpacityEffect_tr2".}
proc fcQGraphicsOpacityEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsOpacityEffect_tr3".}
proc fcQGraphicsOpacityEffect_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsOpacityEffect_trUtf82".}
proc fcQGraphicsOpacityEffect_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsOpacityEffect_trUtf83".}
proc fQGraphicsOpacityEffect_virtualbase_draw(self: pointer, painter: pointer): void{.importc: "QGraphicsOpacityEffect_virtualbase_draw".}
proc fcQGraphicsOpacityEffect_override_virtual_draw(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_draw".}
proc fQGraphicsOpacityEffect_virtualbase_boundingRectFor(self: pointer, sourceRect: pointer): pointer{.importc: "QGraphicsOpacityEffect_virtualbase_boundingRectFor".}
proc fcQGraphicsOpacityEffect_override_virtual_boundingRectFor(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_boundingRectFor".}
proc fQGraphicsOpacityEffect_virtualbase_sourceChanged(self: pointer, flags: cint): void{.importc: "QGraphicsOpacityEffect_virtualbase_sourceChanged".}
proc fcQGraphicsOpacityEffect_override_virtual_sourceChanged(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_sourceChanged".}
proc fQGraphicsOpacityEffect_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsOpacityEffect_virtualbase_event".}
proc fcQGraphicsOpacityEffect_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_event".}
proc fQGraphicsOpacityEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsOpacityEffect_virtualbase_eventFilter".}
proc fcQGraphicsOpacityEffect_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_eventFilter".}
proc fQGraphicsOpacityEffect_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsOpacityEffect_virtualbase_timerEvent".}
proc fcQGraphicsOpacityEffect_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_timerEvent".}
proc fQGraphicsOpacityEffect_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsOpacityEffect_virtualbase_childEvent".}
proc fcQGraphicsOpacityEffect_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_childEvent".}
proc fQGraphicsOpacityEffect_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsOpacityEffect_virtualbase_customEvent".}
proc fcQGraphicsOpacityEffect_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_customEvent".}
proc fQGraphicsOpacityEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsOpacityEffect_virtualbase_connectNotify".}
proc fcQGraphicsOpacityEffect_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_connectNotify".}
proc fQGraphicsOpacityEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsOpacityEffect_virtualbase_disconnectNotify".}
proc fcQGraphicsOpacityEffect_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_disconnectNotify".}
proc fcQGraphicsOpacityEffect_delete(self: pointer) {.importc: "QGraphicsOpacityEffect_delete".}


func init*(T: type gen_qgraphicseffect_types.QGraphicsEffect, h: ptr cQGraphicsEffect): gen_qgraphicseffect_types.QGraphicsEffect =
  T(h: h)
proc create*(T: type gen_qgraphicseffect_types.QGraphicsEffect, ): gen_qgraphicseffect_types.QGraphicsEffect =
  gen_qgraphicseffect_types.QGraphicsEffect.init(fcQGraphicsEffect_new())

proc create*(T: type gen_qgraphicseffect_types.QGraphicsEffect, parent: gen_qobject_types.QObject): gen_qgraphicseffect_types.QGraphicsEffect =
  gen_qgraphicseffect_types.QGraphicsEffect.init(fcQGraphicsEffect_new2(parent.h))

proc metaObject*(self: gen_qgraphicseffect_types.QGraphicsEffect, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsEffect_metaObject(self.h))

proc metacast*(self: gen_qgraphicseffect_types.QGraphicsEffect, param1: cstring): pointer =
  fcQGraphicsEffect_metacast(self.h, param1)

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
proc miqt_exec_callback_QGraphicsEffect_enabledChanged(slot: int, enabled: bool) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsEffectenabledChangedSlot](cast[pointer](slot))
  let slotval1 = enabled

  nimfunc[](slotval1)

proc onenabledChanged*(self: gen_qgraphicseffect_types.QGraphicsEffect, slot: QGraphicsEffectenabledChangedSlot) =
  var tmp = new QGraphicsEffectenabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_connect_enabledChanged(self.h, cast[int](addr tmp[]))

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

proc QGraphicsEffectboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsEffect, sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsEffect_virtualbase_boundingRectFor(self.h, sourceRect.h))

type QGraphicsEffectboundingRectForProc* = proc(sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF
proc onboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsEffect, slot: QGraphicsEffectboundingRectForProc) =
  # TODO check subclass
  var tmp = new QGraphicsEffectboundingRectForProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_boundingRectFor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_boundingRectFor(self: ptr cQGraphicsEffect, slot: int, sourceRect: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsEffect_boundingRectFor ".} =
  var nimfunc = cast[ptr QGraphicsEffectboundingRectForProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: sourceRect)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QGraphicsEffectdrawProc* = proc(painter: gen_qpainter_types.QPainter): void
proc ondraw*(self: gen_qgraphicseffect_types.QGraphicsEffect, slot: QGraphicsEffectdrawProc) =
  # TODO check subclass
  var tmp = new QGraphicsEffectdrawProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_draw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_draw(self: ptr cQGraphicsEffect, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEffect_draw ".} =
  var nimfunc = cast[ptr QGraphicsEffectdrawProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QGraphicsEffectsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsEffect, flags: cint): void =
  fQGraphicsEffect_virtualbase_sourceChanged(self.h, cint(flags))

type QGraphicsEffectsourceChangedProc* = proc(flags: cint): void
proc onsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsEffect, slot: QGraphicsEffectsourceChangedProc) =
  # TODO check subclass
  var tmp = new QGraphicsEffectsourceChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_sourceChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_sourceChanged(self: ptr cQGraphicsEffect, slot: int, flags: cint): void {.exportc: "miqt_exec_callback_QGraphicsEffect_sourceChanged ".} =
  var nimfunc = cast[ptr QGraphicsEffectsourceChangedProc](cast[pointer](slot))
  let slotval1 = cint(flags)


  nimfunc[](slotval1)
proc QGraphicsEffectevent*(self: gen_qgraphicseffect_types.QGraphicsEffect, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsEffect_virtualbase_event(self.h, event.h)

type QGraphicsEffecteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgraphicseffect_types.QGraphicsEffect, slot: QGraphicsEffecteventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEffecteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_event(self: ptr cQGraphicsEffect, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsEffect_event ".} =
  var nimfunc = cast[ptr QGraphicsEffecteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsEffecteventFilter*(self: gen_qgraphicseffect_types.QGraphicsEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsEffecteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgraphicseffect_types.QGraphicsEffect, slot: QGraphicsEffecteventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsEffecteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_eventFilter(self: ptr cQGraphicsEffect, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsEffect_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsEffecteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsEffecttimerEvent*(self: gen_qgraphicseffect_types.QGraphicsEffect, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGraphicsEffect_virtualbase_timerEvent(self.h, event.h)

type QGraphicsEffecttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicseffect_types.QGraphicsEffect, slot: QGraphicsEffecttimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEffecttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_timerEvent(self: ptr cQGraphicsEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEffect_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsEffecttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEffectchildEvent*(self: gen_qgraphicseffect_types.QGraphicsEffect, event: gen_qcoreevent_types.QChildEvent): void =
  fQGraphicsEffect_virtualbase_childEvent(self.h, event.h)

type QGraphicsEffectchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicseffect_types.QGraphicsEffect, slot: QGraphicsEffectchildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEffectchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_childEvent(self: ptr cQGraphicsEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEffect_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsEffectchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEffectcustomEvent*(self: gen_qgraphicseffect_types.QGraphicsEffect, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsEffect_virtualbase_customEvent(self.h, event.h)

type QGraphicsEffectcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgraphicseffect_types.QGraphicsEffect, slot: QGraphicsEffectcustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsEffectcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_customEvent(self: ptr cQGraphicsEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEffect_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsEffectcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsEffectconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsEffect_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsEffectconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsEffect, slot: QGraphicsEffectconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsEffectconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_connectNotify(self: ptr cQGraphicsEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEffect_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsEffectconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsEffectdisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsEffect_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsEffectdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsEffect, slot: QGraphicsEffectdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsEffectdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_disconnectNotify(self: ptr cQGraphicsEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEffect_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsEffectdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qgraphicseffect_types.QGraphicsEffect) =
  fcQGraphicsEffect_delete(self.h)

func init*(T: type gen_qgraphicseffect_types.QGraphicsColorizeEffect, h: ptr cQGraphicsColorizeEffect): gen_qgraphicseffect_types.QGraphicsColorizeEffect =
  T(h: h)
proc create*(T: type gen_qgraphicseffect_types.QGraphicsColorizeEffect, ): gen_qgraphicseffect_types.QGraphicsColorizeEffect =
  gen_qgraphicseffect_types.QGraphicsColorizeEffect.init(fcQGraphicsColorizeEffect_new())

proc create*(T: type gen_qgraphicseffect_types.QGraphicsColorizeEffect, parent: gen_qobject_types.QObject): gen_qgraphicseffect_types.QGraphicsColorizeEffect =
  gen_qgraphicseffect_types.QGraphicsColorizeEffect.init(fcQGraphicsColorizeEffect_new2(parent.h))

proc metaObject*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsColorizeEffect_metaObject(self.h))

proc metacast*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, param1: cstring): pointer =
  fcQGraphicsColorizeEffect_metacast(self.h, param1)

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
proc miqt_exec_callback_QGraphicsColorizeEffect_colorChanged(slot: int, color: pointer) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsColorizeEffectcolorChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qcolor_types.QColor(h: color)

  nimfunc[](slotval1)

proc oncolorChanged*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, slot: QGraphicsColorizeEffectcolorChangedSlot) =
  var tmp = new QGraphicsColorizeEffectcolorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_connect_colorChanged(self.h, cast[int](addr tmp[]))

proc strengthChanged*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, strength: float64): void =
  fcQGraphicsColorizeEffect_strengthChanged(self.h, strength)

type QGraphicsColorizeEffectstrengthChangedSlot* = proc(strength: float64)
proc miqt_exec_callback_QGraphicsColorizeEffect_strengthChanged(slot: int, strength: float64) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsColorizeEffectstrengthChangedSlot](cast[pointer](slot))
  let slotval1 = strength

  nimfunc[](slotval1)

proc onstrengthChanged*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, slot: QGraphicsColorizeEffectstrengthChangedSlot) =
  var tmp = new QGraphicsColorizeEffectstrengthChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_connect_strengthChanged(self.h, cast[int](addr tmp[]))

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

proc QGraphicsColorizeEffectdraw*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, painter: gen_qpainter_types.QPainter): void =
  fQGraphicsColorizeEffect_virtualbase_draw(self.h, painter.h)

type QGraphicsColorizeEffectdrawProc* = proc(painter: gen_qpainter_types.QPainter): void
proc ondraw*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, slot: QGraphicsColorizeEffectdrawProc) =
  # TODO check subclass
  var tmp = new QGraphicsColorizeEffectdrawProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_draw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_draw(self: ptr cQGraphicsColorizeEffect, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_draw ".} =
  var nimfunc = cast[ptr QGraphicsColorizeEffectdrawProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QGraphicsColorizeEffectboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsColorizeEffect_virtualbase_boundingRectFor(self.h, sourceRect.h))

type QGraphicsColorizeEffectboundingRectForProc* = proc(sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF
proc onboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, slot: QGraphicsColorizeEffectboundingRectForProc) =
  # TODO check subclass
  var tmp = new QGraphicsColorizeEffectboundingRectForProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_boundingRectFor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_boundingRectFor(self: ptr cQGraphicsColorizeEffect, slot: int, sourceRect: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_boundingRectFor ".} =
  var nimfunc = cast[ptr QGraphicsColorizeEffectboundingRectForProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: sourceRect)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsColorizeEffectsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, flags: cint): void =
  fQGraphicsColorizeEffect_virtualbase_sourceChanged(self.h, cint(flags))

type QGraphicsColorizeEffectsourceChangedProc* = proc(flags: cint): void
proc onsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, slot: QGraphicsColorizeEffectsourceChangedProc) =
  # TODO check subclass
  var tmp = new QGraphicsColorizeEffectsourceChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_sourceChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_sourceChanged(self: ptr cQGraphicsColorizeEffect, slot: int, flags: cint): void {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_sourceChanged ".} =
  var nimfunc = cast[ptr QGraphicsColorizeEffectsourceChangedProc](cast[pointer](slot))
  let slotval1 = cint(flags)


  nimfunc[](slotval1)
proc QGraphicsColorizeEffectevent*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsColorizeEffect_virtualbase_event(self.h, event.h)

type QGraphicsColorizeEffecteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, slot: QGraphicsColorizeEffecteventProc) =
  # TODO check subclass
  var tmp = new QGraphicsColorizeEffecteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_event(self: ptr cQGraphicsColorizeEffect, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_event ".} =
  var nimfunc = cast[ptr QGraphicsColorizeEffecteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsColorizeEffecteventFilter*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsColorizeEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsColorizeEffecteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, slot: QGraphicsColorizeEffecteventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsColorizeEffecteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_eventFilter(self: ptr cQGraphicsColorizeEffect, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsColorizeEffecteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsColorizeEffecttimerEvent*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGraphicsColorizeEffect_virtualbase_timerEvent(self.h, event.h)

type QGraphicsColorizeEffecttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, slot: QGraphicsColorizeEffecttimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsColorizeEffecttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_timerEvent(self: ptr cQGraphicsColorizeEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsColorizeEffecttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsColorizeEffectchildEvent*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, event: gen_qcoreevent_types.QChildEvent): void =
  fQGraphicsColorizeEffect_virtualbase_childEvent(self.h, event.h)

type QGraphicsColorizeEffectchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, slot: QGraphicsColorizeEffectchildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsColorizeEffectchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_childEvent(self: ptr cQGraphicsColorizeEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsColorizeEffectchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsColorizeEffectcustomEvent*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsColorizeEffect_virtualbase_customEvent(self.h, event.h)

type QGraphicsColorizeEffectcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, slot: QGraphicsColorizeEffectcustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsColorizeEffectcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_customEvent(self: ptr cQGraphicsColorizeEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsColorizeEffectcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsColorizeEffectconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsColorizeEffect_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsColorizeEffectconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, slot: QGraphicsColorizeEffectconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsColorizeEffectconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_connectNotify(self: ptr cQGraphicsColorizeEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsColorizeEffectconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsColorizeEffectdisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsColorizeEffect_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsColorizeEffectdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect, slot: QGraphicsColorizeEffectdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsColorizeEffectdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_disconnectNotify(self: ptr cQGraphicsColorizeEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsColorizeEffectdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qgraphicseffect_types.QGraphicsColorizeEffect) =
  fcQGraphicsColorizeEffect_delete(self.h)

func init*(T: type gen_qgraphicseffect_types.QGraphicsBlurEffect, h: ptr cQGraphicsBlurEffect): gen_qgraphicseffect_types.QGraphicsBlurEffect =
  T(h: h)
proc create*(T: type gen_qgraphicseffect_types.QGraphicsBlurEffect, ): gen_qgraphicseffect_types.QGraphicsBlurEffect =
  gen_qgraphicseffect_types.QGraphicsBlurEffect.init(fcQGraphicsBlurEffect_new())

proc create*(T: type gen_qgraphicseffect_types.QGraphicsBlurEffect, parent: gen_qobject_types.QObject): gen_qgraphicseffect_types.QGraphicsBlurEffect =
  gen_qgraphicseffect_types.QGraphicsBlurEffect.init(fcQGraphicsBlurEffect_new2(parent.h))

proc metaObject*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsBlurEffect_metaObject(self.h))

proc metacast*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, param1: cstring): pointer =
  fcQGraphicsBlurEffect_metacast(self.h, param1)

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
proc miqt_exec_callback_QGraphicsBlurEffect_blurRadiusChanged(slot: int, blurRadius: float64) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsBlurEffectblurRadiusChangedSlot](cast[pointer](slot))
  let slotval1 = blurRadius

  nimfunc[](slotval1)

proc onblurRadiusChanged*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, slot: QGraphicsBlurEffectblurRadiusChangedSlot) =
  var tmp = new QGraphicsBlurEffectblurRadiusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_connect_blurRadiusChanged(self.h, cast[int](addr tmp[]))

proc blurHintsChanged*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, hints: cint): void =
  fcQGraphicsBlurEffect_blurHintsChanged(self.h, cint(hints))

type QGraphicsBlurEffectblurHintsChangedSlot* = proc(hints: cint)
proc miqt_exec_callback_QGraphicsBlurEffect_blurHintsChanged(slot: int, hints: cint) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsBlurEffectblurHintsChangedSlot](cast[pointer](slot))
  let slotval1 = cint(hints)

  nimfunc[](slotval1)

proc onblurHintsChanged*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, slot: QGraphicsBlurEffectblurHintsChangedSlot) =
  var tmp = new QGraphicsBlurEffectblurHintsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_connect_blurHintsChanged(self.h, cast[int](addr tmp[]))

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

proc QGraphicsBlurEffectboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsBlurEffect_virtualbase_boundingRectFor(self.h, rect.h))

type QGraphicsBlurEffectboundingRectForProc* = proc(rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF
proc onboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, slot: QGraphicsBlurEffectboundingRectForProc) =
  # TODO check subclass
  var tmp = new QGraphicsBlurEffectboundingRectForProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_boundingRectFor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_boundingRectFor(self: ptr cQGraphicsBlurEffect, slot: int, rect: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_boundingRectFor ".} =
  var nimfunc = cast[ptr QGraphicsBlurEffectboundingRectForProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: rect)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsBlurEffectdraw*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, painter: gen_qpainter_types.QPainter): void =
  fQGraphicsBlurEffect_virtualbase_draw(self.h, painter.h)

type QGraphicsBlurEffectdrawProc* = proc(painter: gen_qpainter_types.QPainter): void
proc ondraw*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, slot: QGraphicsBlurEffectdrawProc) =
  # TODO check subclass
  var tmp = new QGraphicsBlurEffectdrawProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_draw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_draw(self: ptr cQGraphicsBlurEffect, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_draw ".} =
  var nimfunc = cast[ptr QGraphicsBlurEffectdrawProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QGraphicsBlurEffectsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, flags: cint): void =
  fQGraphicsBlurEffect_virtualbase_sourceChanged(self.h, cint(flags))

type QGraphicsBlurEffectsourceChangedProc* = proc(flags: cint): void
proc onsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, slot: QGraphicsBlurEffectsourceChangedProc) =
  # TODO check subclass
  var tmp = new QGraphicsBlurEffectsourceChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_sourceChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_sourceChanged(self: ptr cQGraphicsBlurEffect, slot: int, flags: cint): void {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_sourceChanged ".} =
  var nimfunc = cast[ptr QGraphicsBlurEffectsourceChangedProc](cast[pointer](slot))
  let slotval1 = cint(flags)


  nimfunc[](slotval1)
proc QGraphicsBlurEffectevent*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsBlurEffect_virtualbase_event(self.h, event.h)

type QGraphicsBlurEffecteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, slot: QGraphicsBlurEffecteventProc) =
  # TODO check subclass
  var tmp = new QGraphicsBlurEffecteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_event(self: ptr cQGraphicsBlurEffect, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_event ".} =
  var nimfunc = cast[ptr QGraphicsBlurEffecteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsBlurEffecteventFilter*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsBlurEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsBlurEffecteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, slot: QGraphicsBlurEffecteventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsBlurEffecteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_eventFilter(self: ptr cQGraphicsBlurEffect, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsBlurEffecteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsBlurEffecttimerEvent*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGraphicsBlurEffect_virtualbase_timerEvent(self.h, event.h)

type QGraphicsBlurEffecttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, slot: QGraphicsBlurEffecttimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsBlurEffecttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_timerEvent(self: ptr cQGraphicsBlurEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsBlurEffecttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsBlurEffectchildEvent*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, event: gen_qcoreevent_types.QChildEvent): void =
  fQGraphicsBlurEffect_virtualbase_childEvent(self.h, event.h)

type QGraphicsBlurEffectchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, slot: QGraphicsBlurEffectchildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsBlurEffectchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_childEvent(self: ptr cQGraphicsBlurEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsBlurEffectchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsBlurEffectcustomEvent*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsBlurEffect_virtualbase_customEvent(self.h, event.h)

type QGraphicsBlurEffectcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, slot: QGraphicsBlurEffectcustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsBlurEffectcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_customEvent(self: ptr cQGraphicsBlurEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsBlurEffectcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsBlurEffectconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsBlurEffect_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsBlurEffectconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, slot: QGraphicsBlurEffectconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsBlurEffectconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_connectNotify(self: ptr cQGraphicsBlurEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsBlurEffectconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsBlurEffectdisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsBlurEffect_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsBlurEffectdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect, slot: QGraphicsBlurEffectdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsBlurEffectdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_disconnectNotify(self: ptr cQGraphicsBlurEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsBlurEffectdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qgraphicseffect_types.QGraphicsBlurEffect) =
  fcQGraphicsBlurEffect_delete(self.h)

func init*(T: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect, h: ptr cQGraphicsDropShadowEffect): gen_qgraphicseffect_types.QGraphicsDropShadowEffect =
  T(h: h)
proc create*(T: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect, ): gen_qgraphicseffect_types.QGraphicsDropShadowEffect =
  gen_qgraphicseffect_types.QGraphicsDropShadowEffect.init(fcQGraphicsDropShadowEffect_new())

proc create*(T: type gen_qgraphicseffect_types.QGraphicsDropShadowEffect, parent: gen_qobject_types.QObject): gen_qgraphicseffect_types.QGraphicsDropShadowEffect =
  gen_qgraphicseffect_types.QGraphicsDropShadowEffect.init(fcQGraphicsDropShadowEffect_new2(parent.h))

proc metaObject*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsDropShadowEffect_metaObject(self.h))

proc metacast*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, param1: cstring): pointer =
  fcQGraphicsDropShadowEffect_metacast(self.h, param1)

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
proc miqt_exec_callback_QGraphicsDropShadowEffect_offsetChanged(slot: int, offset: pointer) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsDropShadowEffectoffsetChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: offset)

  nimfunc[](slotval1)

proc onoffsetChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffectoffsetChangedSlot) =
  var tmp = new QGraphicsDropShadowEffectoffsetChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_connect_offsetChanged(self.h, cast[int](addr tmp[]))

proc blurRadiusChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, blurRadius: float64): void =
  fcQGraphicsDropShadowEffect_blurRadiusChanged(self.h, blurRadius)

type QGraphicsDropShadowEffectblurRadiusChangedSlot* = proc(blurRadius: float64)
proc miqt_exec_callback_QGraphicsDropShadowEffect_blurRadiusChanged(slot: int, blurRadius: float64) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsDropShadowEffectblurRadiusChangedSlot](cast[pointer](slot))
  let slotval1 = blurRadius

  nimfunc[](slotval1)

proc onblurRadiusChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffectblurRadiusChangedSlot) =
  var tmp = new QGraphicsDropShadowEffectblurRadiusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_connect_blurRadiusChanged(self.h, cast[int](addr tmp[]))

proc colorChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, color: gen_qcolor_types.QColor): void =
  fcQGraphicsDropShadowEffect_colorChanged(self.h, color.h)

type QGraphicsDropShadowEffectcolorChangedSlot* = proc(color: gen_qcolor_types.QColor)
proc miqt_exec_callback_QGraphicsDropShadowEffect_colorChanged(slot: int, color: pointer) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsDropShadowEffectcolorChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qcolor_types.QColor(h: color)

  nimfunc[](slotval1)

proc oncolorChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffectcolorChangedSlot) =
  var tmp = new QGraphicsDropShadowEffectcolorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_connect_colorChanged(self.h, cast[int](addr tmp[]))

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

proc QGraphicsDropShadowEffectboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsDropShadowEffect_virtualbase_boundingRectFor(self.h, rect.h))

type QGraphicsDropShadowEffectboundingRectForProc* = proc(rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF
proc onboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffectboundingRectForProc) =
  # TODO check subclass
  var tmp = new QGraphicsDropShadowEffectboundingRectForProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_boundingRectFor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_boundingRectFor(self: ptr cQGraphicsDropShadowEffect, slot: int, rect: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_boundingRectFor ".} =
  var nimfunc = cast[ptr QGraphicsDropShadowEffectboundingRectForProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: rect)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsDropShadowEffectdraw*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, painter: gen_qpainter_types.QPainter): void =
  fQGraphicsDropShadowEffect_virtualbase_draw(self.h, painter.h)

type QGraphicsDropShadowEffectdrawProc* = proc(painter: gen_qpainter_types.QPainter): void
proc ondraw*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffectdrawProc) =
  # TODO check subclass
  var tmp = new QGraphicsDropShadowEffectdrawProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_draw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_draw(self: ptr cQGraphicsDropShadowEffect, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_draw ".} =
  var nimfunc = cast[ptr QGraphicsDropShadowEffectdrawProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QGraphicsDropShadowEffectsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, flags: cint): void =
  fQGraphicsDropShadowEffect_virtualbase_sourceChanged(self.h, cint(flags))

type QGraphicsDropShadowEffectsourceChangedProc* = proc(flags: cint): void
proc onsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffectsourceChangedProc) =
  # TODO check subclass
  var tmp = new QGraphicsDropShadowEffectsourceChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_sourceChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_sourceChanged(self: ptr cQGraphicsDropShadowEffect, slot: int, flags: cint): void {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_sourceChanged ".} =
  var nimfunc = cast[ptr QGraphicsDropShadowEffectsourceChangedProc](cast[pointer](slot))
  let slotval1 = cint(flags)


  nimfunc[](slotval1)
proc QGraphicsDropShadowEffectevent*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsDropShadowEffect_virtualbase_event(self.h, event.h)

type QGraphicsDropShadowEffecteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffecteventProc) =
  # TODO check subclass
  var tmp = new QGraphicsDropShadowEffecteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_event(self: ptr cQGraphicsDropShadowEffect, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_event ".} =
  var nimfunc = cast[ptr QGraphicsDropShadowEffecteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsDropShadowEffecteventFilter*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsDropShadowEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsDropShadowEffecteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffecteventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsDropShadowEffecteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_eventFilter(self: ptr cQGraphicsDropShadowEffect, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsDropShadowEffecteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsDropShadowEffecttimerEvent*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGraphicsDropShadowEffect_virtualbase_timerEvent(self.h, event.h)

type QGraphicsDropShadowEffecttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffecttimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsDropShadowEffecttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_timerEvent(self: ptr cQGraphicsDropShadowEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsDropShadowEffecttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsDropShadowEffectchildEvent*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, event: gen_qcoreevent_types.QChildEvent): void =
  fQGraphicsDropShadowEffect_virtualbase_childEvent(self.h, event.h)

type QGraphicsDropShadowEffectchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffectchildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsDropShadowEffectchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_childEvent(self: ptr cQGraphicsDropShadowEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsDropShadowEffectchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsDropShadowEffectcustomEvent*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsDropShadowEffect_virtualbase_customEvent(self.h, event.h)

type QGraphicsDropShadowEffectcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffectcustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsDropShadowEffectcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_customEvent(self: ptr cQGraphicsDropShadowEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsDropShadowEffectcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsDropShadowEffectconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsDropShadowEffect_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsDropShadowEffectconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffectconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsDropShadowEffectconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_connectNotify(self: ptr cQGraphicsDropShadowEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsDropShadowEffectconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsDropShadowEffectdisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsDropShadowEffect_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsDropShadowEffectdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect, slot: QGraphicsDropShadowEffectdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsDropShadowEffectdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_disconnectNotify(self: ptr cQGraphicsDropShadowEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsDropShadowEffectdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qgraphicseffect_types.QGraphicsDropShadowEffect) =
  fcQGraphicsDropShadowEffect_delete(self.h)

func init*(T: type gen_qgraphicseffect_types.QGraphicsOpacityEffect, h: ptr cQGraphicsOpacityEffect): gen_qgraphicseffect_types.QGraphicsOpacityEffect =
  T(h: h)
proc create*(T: type gen_qgraphicseffect_types.QGraphicsOpacityEffect, ): gen_qgraphicseffect_types.QGraphicsOpacityEffect =
  gen_qgraphicseffect_types.QGraphicsOpacityEffect.init(fcQGraphicsOpacityEffect_new())

proc create*(T: type gen_qgraphicseffect_types.QGraphicsOpacityEffect, parent: gen_qobject_types.QObject): gen_qgraphicseffect_types.QGraphicsOpacityEffect =
  gen_qgraphicseffect_types.QGraphicsOpacityEffect.init(fcQGraphicsOpacityEffect_new2(parent.h))

proc metaObject*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsOpacityEffect_metaObject(self.h))

proc metacast*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, param1: cstring): pointer =
  fcQGraphicsOpacityEffect_metacast(self.h, param1)

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
proc miqt_exec_callback_QGraphicsOpacityEffect_opacityChanged(slot: int, opacity: float64) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsOpacityEffectopacityChangedSlot](cast[pointer](slot))
  let slotval1 = opacity

  nimfunc[](slotval1)

proc onopacityChanged*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, slot: QGraphicsOpacityEffectopacityChangedSlot) =
  var tmp = new QGraphicsOpacityEffectopacityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_connect_opacityChanged(self.h, cast[int](addr tmp[]))

proc opacityMaskChanged*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, mask: gen_qbrush_types.QBrush): void =
  fcQGraphicsOpacityEffect_opacityMaskChanged(self.h, mask.h)

type QGraphicsOpacityEffectopacityMaskChangedSlot* = proc(mask: gen_qbrush_types.QBrush)
proc miqt_exec_callback_QGraphicsOpacityEffect_opacityMaskChanged(slot: int, mask: pointer) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsOpacityEffectopacityMaskChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qbrush_types.QBrush(h: mask)

  nimfunc[](slotval1)

proc onopacityMaskChanged*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, slot: QGraphicsOpacityEffectopacityMaskChangedSlot) =
  var tmp = new QGraphicsOpacityEffectopacityMaskChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_connect_opacityMaskChanged(self.h, cast[int](addr tmp[]))

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

proc QGraphicsOpacityEffectdraw*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, painter: gen_qpainter_types.QPainter): void =
  fQGraphicsOpacityEffect_virtualbase_draw(self.h, painter.h)

type QGraphicsOpacityEffectdrawProc* = proc(painter: gen_qpainter_types.QPainter): void
proc ondraw*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, slot: QGraphicsOpacityEffectdrawProc) =
  # TODO check subclass
  var tmp = new QGraphicsOpacityEffectdrawProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_draw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_draw(self: ptr cQGraphicsOpacityEffect, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_draw ".} =
  var nimfunc = cast[ptr QGraphicsOpacityEffectdrawProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QGraphicsOpacityEffectboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQGraphicsOpacityEffect_virtualbase_boundingRectFor(self.h, sourceRect.h))

type QGraphicsOpacityEffectboundingRectForProc* = proc(sourceRect: gen_qrect_types.QRectF): gen_qrect_types.QRectF
proc onboundingRectFor*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, slot: QGraphicsOpacityEffectboundingRectForProc) =
  # TODO check subclass
  var tmp = new QGraphicsOpacityEffectboundingRectForProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_boundingRectFor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_boundingRectFor(self: ptr cQGraphicsOpacityEffect, slot: int, sourceRect: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_boundingRectFor ".} =
  var nimfunc = cast[ptr QGraphicsOpacityEffectboundingRectForProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: sourceRect)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsOpacityEffectsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, flags: cint): void =
  fQGraphicsOpacityEffect_virtualbase_sourceChanged(self.h, cint(flags))

type QGraphicsOpacityEffectsourceChangedProc* = proc(flags: cint): void
proc onsourceChanged*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, slot: QGraphicsOpacityEffectsourceChangedProc) =
  # TODO check subclass
  var tmp = new QGraphicsOpacityEffectsourceChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_sourceChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_sourceChanged(self: ptr cQGraphicsOpacityEffect, slot: int, flags: cint): void {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_sourceChanged ".} =
  var nimfunc = cast[ptr QGraphicsOpacityEffectsourceChangedProc](cast[pointer](slot))
  let slotval1 = cint(flags)


  nimfunc[](slotval1)
proc QGraphicsOpacityEffectevent*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsOpacityEffect_virtualbase_event(self.h, event.h)

type QGraphicsOpacityEffecteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, slot: QGraphicsOpacityEffecteventProc) =
  # TODO check subclass
  var tmp = new QGraphicsOpacityEffecteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_event(self: ptr cQGraphicsOpacityEffect, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_event ".} =
  var nimfunc = cast[ptr QGraphicsOpacityEffecteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsOpacityEffecteventFilter*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsOpacityEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsOpacityEffecteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, slot: QGraphicsOpacityEffecteventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsOpacityEffecteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_eventFilter(self: ptr cQGraphicsOpacityEffect, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsOpacityEffecteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsOpacityEffecttimerEvent*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGraphicsOpacityEffect_virtualbase_timerEvent(self.h, event.h)

type QGraphicsOpacityEffecttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, slot: QGraphicsOpacityEffecttimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsOpacityEffecttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_timerEvent(self: ptr cQGraphicsOpacityEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsOpacityEffecttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsOpacityEffectchildEvent*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, event: gen_qcoreevent_types.QChildEvent): void =
  fQGraphicsOpacityEffect_virtualbase_childEvent(self.h, event.h)

type QGraphicsOpacityEffectchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, slot: QGraphicsOpacityEffectchildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsOpacityEffectchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_childEvent(self: ptr cQGraphicsOpacityEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsOpacityEffectchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsOpacityEffectcustomEvent*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsOpacityEffect_virtualbase_customEvent(self.h, event.h)

type QGraphicsOpacityEffectcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, slot: QGraphicsOpacityEffectcustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsOpacityEffectcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_customEvent(self: ptr cQGraphicsOpacityEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsOpacityEffectcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsOpacityEffectconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsOpacityEffect_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsOpacityEffectconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, slot: QGraphicsOpacityEffectconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsOpacityEffectconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_connectNotify(self: ptr cQGraphicsOpacityEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsOpacityEffectconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsOpacityEffectdisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsOpacityEffect_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsOpacityEffectdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect, slot: QGraphicsOpacityEffectdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsOpacityEffectdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_disconnectNotify(self: ptr cQGraphicsOpacityEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsOpacityEffectdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qgraphicseffect_types.QGraphicsOpacityEffect) =
  fcQGraphicsOpacityEffect_delete(self.h)
