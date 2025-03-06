import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qmediaplaylist.cpp", cflags).}


type QMediaPlaylistPlaybackModeEnum* = distinct cint
template CurrentItemOnce*(_: type QMediaPlaylistPlaybackModeEnum): untyped = 0
template CurrentItemInLoop*(_: type QMediaPlaylistPlaybackModeEnum): untyped = 1
template Sequential*(_: type QMediaPlaylistPlaybackModeEnum): untyped = 2
template Loop*(_: type QMediaPlaylistPlaybackModeEnum): untyped = 3
template Random*(_: type QMediaPlaylistPlaybackModeEnum): untyped = 4


type QMediaPlaylistErrorEnum* = distinct cint
template NoError*(_: type QMediaPlaylistErrorEnum): untyped = 0
template FormatError*(_: type QMediaPlaylistErrorEnum): untyped = 1
template FormatNotSupportedError*(_: type QMediaPlaylistErrorEnum): untyped = 2
template NetworkError*(_: type QMediaPlaylistErrorEnum): untyped = 3
template AccessDeniedError*(_: type QMediaPlaylistErrorEnum): untyped = 4


import ./gen_qmediaplaylist_types
export gen_qmediaplaylist_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtNetwork/gen_qnetworkrequest_types,
  ./gen_qmediacontent_types,
  ./gen_qmediaobject_types
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qnetworkrequest_types,
  gen_qmediacontent_types,
  gen_qmediaobject_types

type cQMediaPlaylist*{.exportc: "QMediaPlaylist", incompleteStruct.} = object

proc fcQMediaPlaylist_new(): ptr cQMediaPlaylist {.importc: "QMediaPlaylist_new".}
proc fcQMediaPlaylist_new2(parent: pointer): ptr cQMediaPlaylist {.importc: "QMediaPlaylist_new2".}
proc fcQMediaPlaylist_metaObject(self: pointer, ): pointer {.importc: "QMediaPlaylist_metaObject".}
proc fcQMediaPlaylist_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaPlaylist_metacast".}
proc fcQMediaPlaylist_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaPlaylist_metacall".}
proc fcQMediaPlaylist_tr(s: cstring): struct_miqt_string {.importc: "QMediaPlaylist_tr".}
proc fcQMediaPlaylist_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaPlaylist_trUtf8".}
proc fcQMediaPlaylist_mediaObject(self: pointer, ): pointer {.importc: "QMediaPlaylist_mediaObject".}
proc fcQMediaPlaylist_playbackMode(self: pointer, ): cint {.importc: "QMediaPlaylist_playbackMode".}
proc fcQMediaPlaylist_setPlaybackMode(self: pointer, mode: cint): void {.importc: "QMediaPlaylist_setPlaybackMode".}
proc fcQMediaPlaylist_currentIndex(self: pointer, ): cint {.importc: "QMediaPlaylist_currentIndex".}
proc fcQMediaPlaylist_currentMedia(self: pointer, ): pointer {.importc: "QMediaPlaylist_currentMedia".}
proc fcQMediaPlaylist_nextIndex(self: pointer, ): cint {.importc: "QMediaPlaylist_nextIndex".}
proc fcQMediaPlaylist_previousIndex(self: pointer, ): cint {.importc: "QMediaPlaylist_previousIndex".}
proc fcQMediaPlaylist_media(self: pointer, index: cint): pointer {.importc: "QMediaPlaylist_media".}
proc fcQMediaPlaylist_mediaCount(self: pointer, ): cint {.importc: "QMediaPlaylist_mediaCount".}
proc fcQMediaPlaylist_isEmpty(self: pointer, ): bool {.importc: "QMediaPlaylist_isEmpty".}
proc fcQMediaPlaylist_isReadOnly(self: pointer, ): bool {.importc: "QMediaPlaylist_isReadOnly".}
proc fcQMediaPlaylist_addMedia(self: pointer, content: pointer): bool {.importc: "QMediaPlaylist_addMedia".}
proc fcQMediaPlaylist_addMediaWithItems(self: pointer, items: struct_miqt_array): bool {.importc: "QMediaPlaylist_addMediaWithItems".}
proc fcQMediaPlaylist_insertMedia(self: pointer, index: cint, content: pointer): bool {.importc: "QMediaPlaylist_insertMedia".}
proc fcQMediaPlaylist_insertMedia2(self: pointer, index: cint, items: struct_miqt_array): bool {.importc: "QMediaPlaylist_insertMedia2".}
proc fcQMediaPlaylist_moveMedia(self: pointer, fromVal: cint, to: cint): bool {.importc: "QMediaPlaylist_moveMedia".}
proc fcQMediaPlaylist_removeMedia(self: pointer, pos: cint): bool {.importc: "QMediaPlaylist_removeMedia".}
proc fcQMediaPlaylist_removeMedia2(self: pointer, start: cint, endVal: cint): bool {.importc: "QMediaPlaylist_removeMedia2".}
proc fcQMediaPlaylist_clear(self: pointer, ): bool {.importc: "QMediaPlaylist_clear".}
proc fcQMediaPlaylist_load(self: pointer, request: pointer): void {.importc: "QMediaPlaylist_load".}
proc fcQMediaPlaylist_loadWithLocation(self: pointer, location: pointer): void {.importc: "QMediaPlaylist_loadWithLocation".}
proc fcQMediaPlaylist_loadWithDevice(self: pointer, device: pointer): void {.importc: "QMediaPlaylist_loadWithDevice".}
proc fcQMediaPlaylist_save(self: pointer, location: pointer): bool {.importc: "QMediaPlaylist_save".}
proc fcQMediaPlaylist_save2(self: pointer, device: pointer, format: cstring): bool {.importc: "QMediaPlaylist_save2".}
proc fcQMediaPlaylist_error(self: pointer, ): cint {.importc: "QMediaPlaylist_error".}
proc fcQMediaPlaylist_errorString(self: pointer, ): struct_miqt_string {.importc: "QMediaPlaylist_errorString".}
proc fcQMediaPlaylist_shuffle(self: pointer, ): void {.importc: "QMediaPlaylist_shuffle".}
proc fcQMediaPlaylist_next(self: pointer, ): void {.importc: "QMediaPlaylist_next".}
proc fcQMediaPlaylist_previous(self: pointer, ): void {.importc: "QMediaPlaylist_previous".}
proc fcQMediaPlaylist_setCurrentIndex(self: pointer, index: cint): void {.importc: "QMediaPlaylist_setCurrentIndex".}
proc fcQMediaPlaylist_currentIndexChanged(self: pointer, index: cint): void {.importc: "QMediaPlaylist_currentIndexChanged".}
proc fcQMediaPlaylist_connect_currentIndexChanged(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_currentIndexChanged".}
proc fcQMediaPlaylist_playbackModeChanged(self: pointer, mode: cint): void {.importc: "QMediaPlaylist_playbackModeChanged".}
proc fcQMediaPlaylist_connect_playbackModeChanged(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_playbackModeChanged".}
proc fcQMediaPlaylist_currentMediaChanged(self: pointer, param1: pointer): void {.importc: "QMediaPlaylist_currentMediaChanged".}
proc fcQMediaPlaylist_connect_currentMediaChanged(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_currentMediaChanged".}
proc fcQMediaPlaylist_mediaAboutToBeInserted(self: pointer, start: cint, endVal: cint): void {.importc: "QMediaPlaylist_mediaAboutToBeInserted".}
proc fcQMediaPlaylist_connect_mediaAboutToBeInserted(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_mediaAboutToBeInserted".}
proc fcQMediaPlaylist_mediaInserted(self: pointer, start: cint, endVal: cint): void {.importc: "QMediaPlaylist_mediaInserted".}
proc fcQMediaPlaylist_connect_mediaInserted(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_mediaInserted".}
proc fcQMediaPlaylist_mediaAboutToBeRemoved(self: pointer, start: cint, endVal: cint): void {.importc: "QMediaPlaylist_mediaAboutToBeRemoved".}
proc fcQMediaPlaylist_connect_mediaAboutToBeRemoved(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_mediaAboutToBeRemoved".}
proc fcQMediaPlaylist_mediaRemoved(self: pointer, start: cint, endVal: cint): void {.importc: "QMediaPlaylist_mediaRemoved".}
proc fcQMediaPlaylist_connect_mediaRemoved(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_mediaRemoved".}
proc fcQMediaPlaylist_mediaChanged(self: pointer, start: cint, endVal: cint): void {.importc: "QMediaPlaylist_mediaChanged".}
proc fcQMediaPlaylist_connect_mediaChanged(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_mediaChanged".}
proc fcQMediaPlaylist_loaded(self: pointer, ): void {.importc: "QMediaPlaylist_loaded".}
proc fcQMediaPlaylist_connect_loaded(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_loaded".}
proc fcQMediaPlaylist_loadFailed(self: pointer, ): void {.importc: "QMediaPlaylist_loadFailed".}
proc fcQMediaPlaylist_connect_loadFailed(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_loadFailed".}
proc fcQMediaPlaylist_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaPlaylist_tr2".}
proc fcQMediaPlaylist_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaPlaylist_tr3".}
proc fcQMediaPlaylist_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaPlaylist_trUtf82".}
proc fcQMediaPlaylist_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaPlaylist_trUtf83".}
proc fcQMediaPlaylist_nextIndex1(self: pointer, steps: cint): cint {.importc: "QMediaPlaylist_nextIndex1".}
proc fcQMediaPlaylist_previousIndex1(self: pointer, steps: cint): cint {.importc: "QMediaPlaylist_previousIndex1".}
proc fcQMediaPlaylist_load2(self: pointer, request: pointer, format: cstring): void {.importc: "QMediaPlaylist_load2".}
proc fcQMediaPlaylist_load22(self: pointer, location: pointer, format: cstring): void {.importc: "QMediaPlaylist_load22".}
proc fcQMediaPlaylist_load23(self: pointer, device: pointer, format: cstring): void {.importc: "QMediaPlaylist_load23".}
proc fcQMediaPlaylist_save22(self: pointer, location: pointer, format: cstring): bool {.importc: "QMediaPlaylist_save22".}
proc fQMediaPlaylist_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QMediaPlaylist_virtualbase_metaObject".}
proc fcQMediaPlaylist_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_metaObject".}
proc fQMediaPlaylist_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QMediaPlaylist_virtualbase_metacast".}
proc fcQMediaPlaylist_override_virtual_metacast(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_metacast".}
proc fQMediaPlaylist_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMediaPlaylist_virtualbase_metacall".}
proc fcQMediaPlaylist_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_metacall".}
proc fQMediaPlaylist_virtualbase_mediaObject(self: pointer, ): pointer{.importc: "QMediaPlaylist_virtualbase_mediaObject".}
proc fcQMediaPlaylist_override_virtual_mediaObject(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_mediaObject".}
proc fQMediaPlaylist_virtualbase_setMediaObject(self: pointer, objectVal: pointer): bool{.importc: "QMediaPlaylist_virtualbase_setMediaObject".}
proc fcQMediaPlaylist_override_virtual_setMediaObject(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_setMediaObject".}
proc fQMediaPlaylist_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMediaPlaylist_virtualbase_event".}
proc fcQMediaPlaylist_override_virtual_event(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_event".}
proc fQMediaPlaylist_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMediaPlaylist_virtualbase_eventFilter".}
proc fcQMediaPlaylist_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_eventFilter".}
proc fQMediaPlaylist_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMediaPlaylist_virtualbase_timerEvent".}
proc fcQMediaPlaylist_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_timerEvent".}
proc fQMediaPlaylist_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMediaPlaylist_virtualbase_childEvent".}
proc fcQMediaPlaylist_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_childEvent".}
proc fQMediaPlaylist_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMediaPlaylist_virtualbase_customEvent".}
proc fcQMediaPlaylist_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_customEvent".}
proc fQMediaPlaylist_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMediaPlaylist_virtualbase_connectNotify".}
proc fcQMediaPlaylist_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_connectNotify".}
proc fQMediaPlaylist_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMediaPlaylist_virtualbase_disconnectNotify".}
proc fcQMediaPlaylist_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_disconnectNotify".}
proc fcQMediaPlaylist_staticMetaObject(): pointer {.importc: "QMediaPlaylist_staticMetaObject".}
proc fcQMediaPlaylist_delete(self: pointer) {.importc: "QMediaPlaylist_delete".}


func init*(T: type gen_qmediaplaylist_types.QMediaPlaylist, h: ptr cQMediaPlaylist): gen_qmediaplaylist_types.QMediaPlaylist =
  T(h: h)
proc create*(T: type gen_qmediaplaylist_types.QMediaPlaylist, ): gen_qmediaplaylist_types.QMediaPlaylist =
  gen_qmediaplaylist_types.QMediaPlaylist.init(fcQMediaPlaylist_new())

proc create*(T: type gen_qmediaplaylist_types.QMediaPlaylist, parent: gen_qobject_types.QObject): gen_qmediaplaylist_types.QMediaPlaylist =
  gen_qmediaplaylist_types.QMediaPlaylist.init(fcQMediaPlaylist_new2(parent.h))

proc metaObject*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaPlaylist_metaObject(self.h))

proc metacast*(self: gen_qmediaplaylist_types.QMediaPlaylist, param1: cstring): pointer =
  fcQMediaPlaylist_metacast(self.h, param1)

proc metacall*(self: gen_qmediaplaylist_types.QMediaPlaylist, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaPlaylist_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediaplaylist_types.QMediaPlaylist, s: cstring): string =
  let v_ms = fcQMediaPlaylist_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaplaylist_types.QMediaPlaylist, s: cstring): string =
  let v_ms = fcQMediaPlaylist_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc mediaObject*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQMediaPlaylist_mediaObject(self.h))

proc playbackMode*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): cint =
  cint(fcQMediaPlaylist_playbackMode(self.h))

proc setPlaybackMode*(self: gen_qmediaplaylist_types.QMediaPlaylist, mode: cint): void =
  fcQMediaPlaylist_setPlaybackMode(self.h, cint(mode))

proc currentIndex*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): cint =
  fcQMediaPlaylist_currentIndex(self.h)

proc currentMedia*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaPlaylist_currentMedia(self.h))

proc nextIndex*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): cint =
  fcQMediaPlaylist_nextIndex(self.h)

proc previousIndex*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): cint =
  fcQMediaPlaylist_previousIndex(self.h)

proc media*(self: gen_qmediaplaylist_types.QMediaPlaylist, index: cint): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaPlaylist_media(self.h, index))

proc mediaCount*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): cint =
  fcQMediaPlaylist_mediaCount(self.h)

proc isEmpty*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): bool =
  fcQMediaPlaylist_isEmpty(self.h)

proc isReadOnly*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): bool =
  fcQMediaPlaylist_isReadOnly(self.h)

proc addMedia*(self: gen_qmediaplaylist_types.QMediaPlaylist, content: gen_qmediacontent_types.QMediaContent): bool =
  fcQMediaPlaylist_addMedia(self.h, content.h)

proc addMedia*(self: gen_qmediaplaylist_types.QMediaPlaylist, items: seq[gen_qmediacontent_types.QMediaContent]): bool =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQMediaPlaylist_addMediaWithItems(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertMedia*(self: gen_qmediaplaylist_types.QMediaPlaylist, index: cint, content: gen_qmediacontent_types.QMediaContent): bool =
  fcQMediaPlaylist_insertMedia(self.h, index, content.h)

proc insertMedia*(self: gen_qmediaplaylist_types.QMediaPlaylist, index: cint, items: seq[gen_qmediacontent_types.QMediaContent]): bool =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQMediaPlaylist_insertMedia2(self.h, index, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc moveMedia*(self: gen_qmediaplaylist_types.QMediaPlaylist, fromVal: cint, to: cint): bool =
  fcQMediaPlaylist_moveMedia(self.h, fromVal, to)

proc removeMedia*(self: gen_qmediaplaylist_types.QMediaPlaylist, pos: cint): bool =
  fcQMediaPlaylist_removeMedia(self.h, pos)

proc removeMedia*(self: gen_qmediaplaylist_types.QMediaPlaylist, start: cint, endVal: cint): bool =
  fcQMediaPlaylist_removeMedia2(self.h, start, endVal)

proc clear*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): bool =
  fcQMediaPlaylist_clear(self.h)

proc load*(self: gen_qmediaplaylist_types.QMediaPlaylist, request: gen_qnetworkrequest_types.QNetworkRequest): void =
  fcQMediaPlaylist_load(self.h, request.h)

proc load*(self: gen_qmediaplaylist_types.QMediaPlaylist, location: gen_qurl_types.QUrl): void =
  fcQMediaPlaylist_loadWithLocation(self.h, location.h)

proc load*(self: gen_qmediaplaylist_types.QMediaPlaylist, device: gen_qiodevice_types.QIODevice): void =
  fcQMediaPlaylist_loadWithDevice(self.h, device.h)

proc save*(self: gen_qmediaplaylist_types.QMediaPlaylist, location: gen_qurl_types.QUrl): bool =
  fcQMediaPlaylist_save(self.h, location.h)

proc save*(self: gen_qmediaplaylist_types.QMediaPlaylist, device: gen_qiodevice_types.QIODevice, format: cstring): bool =
  fcQMediaPlaylist_save2(self.h, device.h, format)

proc error*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): cint =
  cint(fcQMediaPlaylist_error(self.h))

proc errorString*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): string =
  let v_ms = fcQMediaPlaylist_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc shuffle*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): void =
  fcQMediaPlaylist_shuffle(self.h)

proc next*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): void =
  fcQMediaPlaylist_next(self.h)

proc previous*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): void =
  fcQMediaPlaylist_previous(self.h)

proc setCurrentIndex*(self: gen_qmediaplaylist_types.QMediaPlaylist, index: cint): void =
  fcQMediaPlaylist_setCurrentIndex(self.h, index)

proc currentIndexChanged*(self: gen_qmediaplaylist_types.QMediaPlaylist, index: cint): void =
  fcQMediaPlaylist_currentIndexChanged(self.h, index)

type QMediaPlaylistcurrentIndexChangedSlot* = proc(index: cint)
proc miqt_exec_callback_QMediaPlaylist_currentIndexChanged(slot: int, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlaylistcurrentIndexChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc oncurrentIndexChanged*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistcurrentIndexChangedSlot) =
  var tmp = new QMediaPlaylistcurrentIndexChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_currentIndexChanged(self.h, cast[int](addr tmp[]))

proc playbackModeChanged*(self: gen_qmediaplaylist_types.QMediaPlaylist, mode: cint): void =
  fcQMediaPlaylist_playbackModeChanged(self.h, cint(mode))

type QMediaPlaylistplaybackModeChangedSlot* = proc(mode: cint)
proc miqt_exec_callback_QMediaPlaylist_playbackModeChanged(slot: int, mode: cint) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlaylistplaybackModeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(mode)

  nimfunc[](slotval1)

proc onplaybackModeChanged*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistplaybackModeChangedSlot) =
  var tmp = new QMediaPlaylistplaybackModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_playbackModeChanged(self.h, cast[int](addr tmp[]))

proc currentMediaChanged*(self: gen_qmediaplaylist_types.QMediaPlaylist, param1: gen_qmediacontent_types.QMediaContent): void =
  fcQMediaPlaylist_currentMediaChanged(self.h, param1.h)

type QMediaPlaylistcurrentMediaChangedSlot* = proc(param1: gen_qmediacontent_types.QMediaContent)
proc miqt_exec_callback_QMediaPlaylist_currentMediaChanged(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlaylistcurrentMediaChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qmediacontent_types.QMediaContent(h: param1)

  nimfunc[](slotval1)

proc oncurrentMediaChanged*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistcurrentMediaChangedSlot) =
  var tmp = new QMediaPlaylistcurrentMediaChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_currentMediaChanged(self.h, cast[int](addr tmp[]))

proc mediaAboutToBeInserted*(self: gen_qmediaplaylist_types.QMediaPlaylist, start: cint, endVal: cint): void =
  fcQMediaPlaylist_mediaAboutToBeInserted(self.h, start, endVal)

type QMediaPlaylistmediaAboutToBeInsertedSlot* = proc(start: cint, endVal: cint)
proc miqt_exec_callback_QMediaPlaylist_mediaAboutToBeInserted(slot: int, start: cint, endVal: cint) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlaylistmediaAboutToBeInsertedSlot](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal

  nimfunc[](slotval1, slotval2)

proc onmediaAboutToBeInserted*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistmediaAboutToBeInsertedSlot) =
  var tmp = new QMediaPlaylistmediaAboutToBeInsertedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_mediaAboutToBeInserted(self.h, cast[int](addr tmp[]))

proc mediaInserted*(self: gen_qmediaplaylist_types.QMediaPlaylist, start: cint, endVal: cint): void =
  fcQMediaPlaylist_mediaInserted(self.h, start, endVal)

type QMediaPlaylistmediaInsertedSlot* = proc(start: cint, endVal: cint)
proc miqt_exec_callback_QMediaPlaylist_mediaInserted(slot: int, start: cint, endVal: cint) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlaylistmediaInsertedSlot](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal

  nimfunc[](slotval1, slotval2)

proc onmediaInserted*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistmediaInsertedSlot) =
  var tmp = new QMediaPlaylistmediaInsertedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_mediaInserted(self.h, cast[int](addr tmp[]))

proc mediaAboutToBeRemoved*(self: gen_qmediaplaylist_types.QMediaPlaylist, start: cint, endVal: cint): void =
  fcQMediaPlaylist_mediaAboutToBeRemoved(self.h, start, endVal)

type QMediaPlaylistmediaAboutToBeRemovedSlot* = proc(start: cint, endVal: cint)
proc miqt_exec_callback_QMediaPlaylist_mediaAboutToBeRemoved(slot: int, start: cint, endVal: cint) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlaylistmediaAboutToBeRemovedSlot](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal

  nimfunc[](slotval1, slotval2)

proc onmediaAboutToBeRemoved*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistmediaAboutToBeRemovedSlot) =
  var tmp = new QMediaPlaylistmediaAboutToBeRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_mediaAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc mediaRemoved*(self: gen_qmediaplaylist_types.QMediaPlaylist, start: cint, endVal: cint): void =
  fcQMediaPlaylist_mediaRemoved(self.h, start, endVal)

type QMediaPlaylistmediaRemovedSlot* = proc(start: cint, endVal: cint)
proc miqt_exec_callback_QMediaPlaylist_mediaRemoved(slot: int, start: cint, endVal: cint) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlaylistmediaRemovedSlot](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal

  nimfunc[](slotval1, slotval2)

proc onmediaRemoved*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistmediaRemovedSlot) =
  var tmp = new QMediaPlaylistmediaRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_mediaRemoved(self.h, cast[int](addr tmp[]))

proc mediaChanged*(self: gen_qmediaplaylist_types.QMediaPlaylist, start: cint, endVal: cint): void =
  fcQMediaPlaylist_mediaChanged(self.h, start, endVal)

type QMediaPlaylistmediaChangedSlot* = proc(start: cint, endVal: cint)
proc miqt_exec_callback_QMediaPlaylist_mediaChanged(slot: int, start: cint, endVal: cint) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlaylistmediaChangedSlot](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal

  nimfunc[](slotval1, slotval2)

proc onmediaChanged*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistmediaChangedSlot) =
  var tmp = new QMediaPlaylistmediaChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_mediaChanged(self.h, cast[int](addr tmp[]))

proc loaded*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): void =
  fcQMediaPlaylist_loaded(self.h)

type QMediaPlaylistloadedSlot* = proc()
proc miqt_exec_callback_QMediaPlaylist_loaded(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlaylistloadedSlot](cast[pointer](slot))
  nimfunc[]()

proc onloaded*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistloadedSlot) =
  var tmp = new QMediaPlaylistloadedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_loaded(self.h, cast[int](addr tmp[]))

proc loadFailed*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): void =
  fcQMediaPlaylist_loadFailed(self.h)

type QMediaPlaylistloadFailedSlot* = proc()
proc miqt_exec_callback_QMediaPlaylist_loadFailed(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaPlaylistloadFailedSlot](cast[pointer](slot))
  nimfunc[]()

proc onloadFailed*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistloadFailedSlot) =
  var tmp = new QMediaPlaylistloadFailedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_loadFailed(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qmediaplaylist_types.QMediaPlaylist, s: cstring, c: cstring): string =
  let v_ms = fcQMediaPlaylist_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediaplaylist_types.QMediaPlaylist, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaPlaylist_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaplaylist_types.QMediaPlaylist, s: cstring, c: cstring): string =
  let v_ms = fcQMediaPlaylist_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaplaylist_types.QMediaPlaylist, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaPlaylist_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc nextIndex*(self: gen_qmediaplaylist_types.QMediaPlaylist, steps: cint): cint =
  fcQMediaPlaylist_nextIndex1(self.h, steps)

proc previousIndex*(self: gen_qmediaplaylist_types.QMediaPlaylist, steps: cint): cint =
  fcQMediaPlaylist_previousIndex1(self.h, steps)

proc load*(self: gen_qmediaplaylist_types.QMediaPlaylist, request: gen_qnetworkrequest_types.QNetworkRequest, format: cstring): void =
  fcQMediaPlaylist_load2(self.h, request.h, format)

proc load*(self: gen_qmediaplaylist_types.QMediaPlaylist, location: gen_qurl_types.QUrl, format: cstring): void =
  fcQMediaPlaylist_load22(self.h, location.h, format)

proc load*(self: gen_qmediaplaylist_types.QMediaPlaylist, device: gen_qiodevice_types.QIODevice, format: cstring): void =
  fcQMediaPlaylist_load23(self.h, device.h, format)

proc save*(self: gen_qmediaplaylist_types.QMediaPlaylist, location: gen_qurl_types.QUrl, format: cstring): bool =
  fcQMediaPlaylist_save22(self.h, location.h, format)

proc QMediaPlaylistmetaObject*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQMediaPlaylist_virtualbase_metaObject(self.h))

type QMediaPlaylistmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistmetaObjectProc) =
  # TODO check subclass
  var tmp = new QMediaPlaylistmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_metaObject(self: ptr cQMediaPlaylist, slot: int): pointer {.exportc: "miqt_exec_callback_QMediaPlaylist_metaObject ".} =
  var nimfunc = cast[ptr QMediaPlaylistmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMediaPlaylistmetacast*(self: gen_qmediaplaylist_types.QMediaPlaylist, param1: cstring): pointer =
  fQMediaPlaylist_virtualbase_metacast(self.h, param1)

type QMediaPlaylistmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistmetacastProc) =
  # TODO check subclass
  var tmp = new QMediaPlaylistmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_metacast(self: ptr cQMediaPlaylist, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QMediaPlaylist_metacast ".} =
  var nimfunc = cast[ptr QMediaPlaylistmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMediaPlaylistmetacall*(self: gen_qmediaplaylist_types.QMediaPlaylist, param1: cint, param2: cint, param3: pointer): cint =
  fQMediaPlaylist_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMediaPlaylistmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistmetacallProc) =
  # TODO check subclass
  var tmp = new QMediaPlaylistmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_metacall(self: ptr cQMediaPlaylist, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMediaPlaylist_metacall ".} =
  var nimfunc = cast[ptr QMediaPlaylistmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMediaPlaylistmediaObject*(self: gen_qmediaplaylist_types.QMediaPlaylist, ): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fQMediaPlaylist_virtualbase_mediaObject(self.h))

type QMediaPlaylistmediaObjectProc* = proc(): gen_qmediaobject_types.QMediaObject
proc onmediaObject*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistmediaObjectProc) =
  # TODO check subclass
  var tmp = new QMediaPlaylistmediaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_mediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_mediaObject(self: ptr cQMediaPlaylist, slot: int): pointer {.exportc: "miqt_exec_callback_QMediaPlaylist_mediaObject ".} =
  var nimfunc = cast[ptr QMediaPlaylistmediaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMediaPlaylistsetMediaObject*(self: gen_qmediaplaylist_types.QMediaPlaylist, objectVal: gen_qmediaobject_types.QMediaObject): bool =
  fQMediaPlaylist_virtualbase_setMediaObject(self.h, objectVal.h)

type QMediaPlaylistsetMediaObjectProc* = proc(objectVal: gen_qmediaobject_types.QMediaObject): bool
proc onsetMediaObject*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistsetMediaObjectProc) =
  # TODO check subclass
  var tmp = new QMediaPlaylistsetMediaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_setMediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_setMediaObject(self: ptr cQMediaPlaylist, slot: int, objectVal: pointer): bool {.exportc: "miqt_exec_callback_QMediaPlaylist_setMediaObject ".} =
  var nimfunc = cast[ptr QMediaPlaylistsetMediaObjectProc](cast[pointer](slot))
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: objectVal)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMediaPlaylistevent*(self: gen_qmediaplaylist_types.QMediaPlaylist, event: gen_qcoreevent_types.QEvent): bool =
  fQMediaPlaylist_virtualbase_event(self.h, event.h)

type QMediaPlaylisteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylisteventProc) =
  # TODO check subclass
  var tmp = new QMediaPlaylisteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_event(self: ptr cQMediaPlaylist, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaPlaylist_event ".} =
  var nimfunc = cast[ptr QMediaPlaylisteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMediaPlaylisteventFilter*(self: gen_qmediaplaylist_types.QMediaPlaylist, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQMediaPlaylist_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMediaPlaylisteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylisteventFilterProc) =
  # TODO check subclass
  var tmp = new QMediaPlaylisteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_eventFilter(self: ptr cQMediaPlaylist, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaPlaylist_eventFilter ".} =
  var nimfunc = cast[ptr QMediaPlaylisteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QMediaPlaylisttimerEvent*(self: gen_qmediaplaylist_types.QMediaPlaylist, event: gen_qcoreevent_types.QTimerEvent): void =
  fQMediaPlaylist_virtualbase_timerEvent(self.h, event.h)

type QMediaPlaylisttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylisttimerEventProc) =
  # TODO check subclass
  var tmp = new QMediaPlaylisttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_timerEvent(self: ptr cQMediaPlaylist, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaPlaylist_timerEvent ".} =
  var nimfunc = cast[ptr QMediaPlaylisttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QMediaPlaylistchildEvent*(self: gen_qmediaplaylist_types.QMediaPlaylist, event: gen_qcoreevent_types.QChildEvent): void =
  fQMediaPlaylist_virtualbase_childEvent(self.h, event.h)

type QMediaPlaylistchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistchildEventProc) =
  # TODO check subclass
  var tmp = new QMediaPlaylistchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_childEvent(self: ptr cQMediaPlaylist, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaPlaylist_childEvent ".} =
  var nimfunc = cast[ptr QMediaPlaylistchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QMediaPlaylistcustomEvent*(self: gen_qmediaplaylist_types.QMediaPlaylist, event: gen_qcoreevent_types.QEvent): void =
  fQMediaPlaylist_virtualbase_customEvent(self.h, event.h)

type QMediaPlaylistcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistcustomEventProc) =
  # TODO check subclass
  var tmp = new QMediaPlaylistcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_customEvent(self: ptr cQMediaPlaylist, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaPlaylist_customEvent ".} =
  var nimfunc = cast[ptr QMediaPlaylistcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMediaPlaylistconnectNotify*(self: gen_qmediaplaylist_types.QMediaPlaylist, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMediaPlaylist_virtualbase_connectNotify(self.h, signal.h)

type QMediaPlaylistconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMediaPlaylistconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_connectNotify(self: ptr cQMediaPlaylist, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaPlaylist_connectNotify ".} =
  var nimfunc = cast[ptr QMediaPlaylistconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QMediaPlaylistdisconnectNotify*(self: gen_qmediaplaylist_types.QMediaPlaylist, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMediaPlaylist_virtualbase_disconnectNotify(self.h, signal.h)

type QMediaPlaylistdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMediaPlaylistdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_disconnectNotify(self: ptr cQMediaPlaylist, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaPlaylist_disconnectNotify ".} =
  var nimfunc = cast[ptr QMediaPlaylistdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qmediaplaylist_types.QMediaPlaylist): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaPlaylist_staticMetaObject())
proc delete*(self: gen_qmediaplaylist_types.QMediaPlaylist) =
  fcQMediaPlaylist_delete(self.h)
