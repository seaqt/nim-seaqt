import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
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

proc fcQMediaPlaylist_metaObject(self: pointer): pointer {.importc: "QMediaPlaylist_metaObject".}
proc fcQMediaPlaylist_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaPlaylist_metacast".}
proc fcQMediaPlaylist_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaPlaylist_metacall".}
proc fcQMediaPlaylist_tr(s: cstring): struct_miqt_string {.importc: "QMediaPlaylist_tr".}
proc fcQMediaPlaylist_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaPlaylist_trUtf8".}
proc fcQMediaPlaylist_mediaObject(self: pointer): pointer {.importc: "QMediaPlaylist_mediaObject".}
proc fcQMediaPlaylist_playbackMode(self: pointer): cint {.importc: "QMediaPlaylist_playbackMode".}
proc fcQMediaPlaylist_setPlaybackMode(self: pointer, mode: cint): void {.importc: "QMediaPlaylist_setPlaybackMode".}
proc fcQMediaPlaylist_currentIndex(self: pointer): cint {.importc: "QMediaPlaylist_currentIndex".}
proc fcQMediaPlaylist_currentMedia(self: pointer): pointer {.importc: "QMediaPlaylist_currentMedia".}
proc fcQMediaPlaylist_nextIndex(self: pointer): cint {.importc: "QMediaPlaylist_nextIndex".}
proc fcQMediaPlaylist_previousIndex(self: pointer): cint {.importc: "QMediaPlaylist_previousIndex".}
proc fcQMediaPlaylist_media(self: pointer, index: cint): pointer {.importc: "QMediaPlaylist_media".}
proc fcQMediaPlaylist_mediaCount(self: pointer): cint {.importc: "QMediaPlaylist_mediaCount".}
proc fcQMediaPlaylist_isEmpty(self: pointer): bool {.importc: "QMediaPlaylist_isEmpty".}
proc fcQMediaPlaylist_isReadOnly(self: pointer): bool {.importc: "QMediaPlaylist_isReadOnly".}
proc fcQMediaPlaylist_addMedia(self: pointer, content: pointer): bool {.importc: "QMediaPlaylist_addMedia".}
proc fcQMediaPlaylist_addMediaWithItems(self: pointer, items: struct_miqt_array): bool {.importc: "QMediaPlaylist_addMediaWithItems".}
proc fcQMediaPlaylist_insertMedia(self: pointer, index: cint, content: pointer): bool {.importc: "QMediaPlaylist_insertMedia".}
proc fcQMediaPlaylist_insertMedia2(self: pointer, index: cint, items: struct_miqt_array): bool {.importc: "QMediaPlaylist_insertMedia2".}
proc fcQMediaPlaylist_moveMedia(self: pointer, fromVal: cint, to: cint): bool {.importc: "QMediaPlaylist_moveMedia".}
proc fcQMediaPlaylist_removeMedia(self: pointer, pos: cint): bool {.importc: "QMediaPlaylist_removeMedia".}
proc fcQMediaPlaylist_removeMedia2(self: pointer, start: cint, endVal: cint): bool {.importc: "QMediaPlaylist_removeMedia2".}
proc fcQMediaPlaylist_clear(self: pointer): bool {.importc: "QMediaPlaylist_clear".}
proc fcQMediaPlaylist_load(self: pointer, request: pointer): void {.importc: "QMediaPlaylist_load".}
proc fcQMediaPlaylist_loadWithLocation(self: pointer, location: pointer): void {.importc: "QMediaPlaylist_loadWithLocation".}
proc fcQMediaPlaylist_loadWithDevice(self: pointer, device: pointer): void {.importc: "QMediaPlaylist_loadWithDevice".}
proc fcQMediaPlaylist_save(self: pointer, location: pointer): bool {.importc: "QMediaPlaylist_save".}
proc fcQMediaPlaylist_save2(self: pointer, device: pointer, format: cstring): bool {.importc: "QMediaPlaylist_save2".}
proc fcQMediaPlaylist_error(self: pointer): cint {.importc: "QMediaPlaylist_error".}
proc fcQMediaPlaylist_errorString(self: pointer): struct_miqt_string {.importc: "QMediaPlaylist_errorString".}
proc fcQMediaPlaylist_shuffle(self: pointer): void {.importc: "QMediaPlaylist_shuffle".}
proc fcQMediaPlaylist_next(self: pointer): void {.importc: "QMediaPlaylist_next".}
proc fcQMediaPlaylist_previous(self: pointer): void {.importc: "QMediaPlaylist_previous".}
proc fcQMediaPlaylist_setCurrentIndex(self: pointer, index: cint): void {.importc: "QMediaPlaylist_setCurrentIndex".}
proc fcQMediaPlaylist_currentIndexChanged(self: pointer, index: cint): void {.importc: "QMediaPlaylist_currentIndexChanged".}
proc fcQMediaPlaylist_connect_currentIndexChanged(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlaylist_connect_currentIndexChanged".}
proc fcQMediaPlaylist_playbackModeChanged(self: pointer, mode: cint): void {.importc: "QMediaPlaylist_playbackModeChanged".}
proc fcQMediaPlaylist_connect_playbackModeChanged(self: pointer, slot: int, callback: proc (slot: int, mode: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlaylist_connect_playbackModeChanged".}
proc fcQMediaPlaylist_currentMediaChanged(self: pointer, param1: pointer): void {.importc: "QMediaPlaylist_currentMediaChanged".}
proc fcQMediaPlaylist_connect_currentMediaChanged(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlaylist_connect_currentMediaChanged".}
proc fcQMediaPlaylist_mediaAboutToBeInserted(self: pointer, start: cint, endVal: cint): void {.importc: "QMediaPlaylist_mediaAboutToBeInserted".}
proc fcQMediaPlaylist_connect_mediaAboutToBeInserted(self: pointer, slot: int, callback: proc (slot: int, start: cint, endVal: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlaylist_connect_mediaAboutToBeInserted".}
proc fcQMediaPlaylist_mediaInserted(self: pointer, start: cint, endVal: cint): void {.importc: "QMediaPlaylist_mediaInserted".}
proc fcQMediaPlaylist_connect_mediaInserted(self: pointer, slot: int, callback: proc (slot: int, start: cint, endVal: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlaylist_connect_mediaInserted".}
proc fcQMediaPlaylist_mediaAboutToBeRemoved(self: pointer, start: cint, endVal: cint): void {.importc: "QMediaPlaylist_mediaAboutToBeRemoved".}
proc fcQMediaPlaylist_connect_mediaAboutToBeRemoved(self: pointer, slot: int, callback: proc (slot: int, start: cint, endVal: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlaylist_connect_mediaAboutToBeRemoved".}
proc fcQMediaPlaylist_mediaRemoved(self: pointer, start: cint, endVal: cint): void {.importc: "QMediaPlaylist_mediaRemoved".}
proc fcQMediaPlaylist_connect_mediaRemoved(self: pointer, slot: int, callback: proc (slot: int, start: cint, endVal: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlaylist_connect_mediaRemoved".}
proc fcQMediaPlaylist_mediaChanged(self: pointer, start: cint, endVal: cint): void {.importc: "QMediaPlaylist_mediaChanged".}
proc fcQMediaPlaylist_connect_mediaChanged(self: pointer, slot: int, callback: proc (slot: int, start: cint, endVal: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlaylist_connect_mediaChanged".}
proc fcQMediaPlaylist_loaded(self: pointer): void {.importc: "QMediaPlaylist_loaded".}
proc fcQMediaPlaylist_connect_loaded(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlaylist_connect_loaded".}
proc fcQMediaPlaylist_loadFailed(self: pointer): void {.importc: "QMediaPlaylist_loadFailed".}
proc fcQMediaPlaylist_connect_loadFailed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaPlaylist_connect_loadFailed".}
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
proc fcQMediaPlaylist_vtbl(self: pointer): pointer {.importc: "QMediaPlaylist_vtbl".}
proc fcQMediaPlaylist_vdata(self: pointer): pointer {.importc: "QMediaPlaylist_vdata".}
type cQMediaPlaylistVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  mediaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setMediaObject*: proc(self: pointer, objectVal: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQMediaPlaylist_virtualbase_metaObject(self: pointer): pointer {.importc: "QMediaPlaylist_virtualbase_metaObject".}
proc fcQMediaPlaylist_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaPlaylist_virtualbase_metacast".}
proc fcQMediaPlaylist_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaPlaylist_virtualbase_metacall".}
proc fcQMediaPlaylist_virtualbase_mediaObject(self: pointer): pointer {.importc: "QMediaPlaylist_virtualbase_mediaObject".}
proc fcQMediaPlaylist_virtualbase_setMediaObject(self: pointer, objectVal: pointer): bool {.importc: "QMediaPlaylist_virtualbase_setMediaObject".}
proc fcQMediaPlaylist_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QMediaPlaylist_virtualbase_event".}
proc fcQMediaPlaylist_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QMediaPlaylist_virtualbase_eventFilter".}
proc fcQMediaPlaylist_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QMediaPlaylist_virtualbase_timerEvent".}
proc fcQMediaPlaylist_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMediaPlaylist_virtualbase_childEvent".}
proc fcQMediaPlaylist_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMediaPlaylist_virtualbase_customEvent".}
proc fcQMediaPlaylist_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMediaPlaylist_virtualbase_connectNotify".}
proc fcQMediaPlaylist_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMediaPlaylist_virtualbase_disconnectNotify".}
proc fcQMediaPlaylist_protectedbase_sender(self: pointer): pointer {.importc: "QMediaPlaylist_protectedbase_sender".}
proc fcQMediaPlaylist_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMediaPlaylist_protectedbase_senderSignalIndex".}
proc fcQMediaPlaylist_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaPlaylist_protectedbase_receivers".}
proc fcQMediaPlaylist_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaPlaylist_protectedbase_isSignalConnected".}
proc fcQMediaPlaylist_new(vtbl, vdata: pointer): ptr cQMediaPlaylist {.importc: "QMediaPlaylist_new".}
proc fcQMediaPlaylist_new2(vtbl, vdata: pointer, parent: pointer): ptr cQMediaPlaylist {.importc: "QMediaPlaylist_new2".}
proc fcQMediaPlaylist_staticMetaObject(): pointer {.importc: "QMediaPlaylist_staticMetaObject".}

proc metaObject*(self: gen_qmediaplaylist_types.QMediaPlaylist): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaPlaylist_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmediaplaylist_types.QMediaPlaylist, param1: cstring): pointer =
  fcQMediaPlaylist_metacast(self.h, param1)

proc metacall*(self: gen_qmediaplaylist_types.QMediaPlaylist, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaPlaylist_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediaplaylist_types.QMediaPlaylist, s: cstring): string =
  let v_ms = fcQMediaPlaylist_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaplaylist_types.QMediaPlaylist, s: cstring): string =
  let v_ms = fcQMediaPlaylist_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc mediaObject*(self: gen_qmediaplaylist_types.QMediaPlaylist): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQMediaPlaylist_mediaObject(self.h), owned: false)

proc playbackMode*(self: gen_qmediaplaylist_types.QMediaPlaylist): cint =
  cint(fcQMediaPlaylist_playbackMode(self.h))

proc setPlaybackMode*(self: gen_qmediaplaylist_types.QMediaPlaylist, mode: cint): void =
  fcQMediaPlaylist_setPlaybackMode(self.h, cint(mode))

proc currentIndex*(self: gen_qmediaplaylist_types.QMediaPlaylist): cint =
  fcQMediaPlaylist_currentIndex(self.h)

proc currentMedia*(self: gen_qmediaplaylist_types.QMediaPlaylist): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaPlaylist_currentMedia(self.h), owned: true)

proc nextIndex*(self: gen_qmediaplaylist_types.QMediaPlaylist): cint =
  fcQMediaPlaylist_nextIndex(self.h)

proc previousIndex*(self: gen_qmediaplaylist_types.QMediaPlaylist): cint =
  fcQMediaPlaylist_previousIndex(self.h)

proc media*(self: gen_qmediaplaylist_types.QMediaPlaylist, index: cint): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaPlaylist_media(self.h, index), owned: true)

proc mediaCount*(self: gen_qmediaplaylist_types.QMediaPlaylist): cint =
  fcQMediaPlaylist_mediaCount(self.h)

proc isEmpty*(self: gen_qmediaplaylist_types.QMediaPlaylist): bool =
  fcQMediaPlaylist_isEmpty(self.h)

proc isReadOnly*(self: gen_qmediaplaylist_types.QMediaPlaylist): bool =
  fcQMediaPlaylist_isReadOnly(self.h)

proc addMedia*(self: gen_qmediaplaylist_types.QMediaPlaylist, content: gen_qmediacontent_types.QMediaContent): bool =
  fcQMediaPlaylist_addMedia(self.h, content.h)

proc addMedia*(self: gen_qmediaplaylist_types.QMediaPlaylist, items: openArray[gen_qmediacontent_types.QMediaContent]): bool =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQMediaPlaylist_addMediaWithItems(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertMedia*(self: gen_qmediaplaylist_types.QMediaPlaylist, index: cint, content: gen_qmediacontent_types.QMediaContent): bool =
  fcQMediaPlaylist_insertMedia(self.h, index, content.h)

proc insertMedia*(self: gen_qmediaplaylist_types.QMediaPlaylist, index: cint, items: openArray[gen_qmediacontent_types.QMediaContent]): bool =
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

proc clear*(self: gen_qmediaplaylist_types.QMediaPlaylist): bool =
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

proc error*(self: gen_qmediaplaylist_types.QMediaPlaylist): cint =
  cint(fcQMediaPlaylist_error(self.h))

proc errorString*(self: gen_qmediaplaylist_types.QMediaPlaylist): string =
  let v_ms = fcQMediaPlaylist_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc shuffle*(self: gen_qmediaplaylist_types.QMediaPlaylist): void =
  fcQMediaPlaylist_shuffle(self.h)

proc next*(self: gen_qmediaplaylist_types.QMediaPlaylist): void =
  fcQMediaPlaylist_next(self.h)

proc previous*(self: gen_qmediaplaylist_types.QMediaPlaylist): void =
  fcQMediaPlaylist_previous(self.h)

proc setCurrentIndex*(self: gen_qmediaplaylist_types.QMediaPlaylist, index: cint): void =
  fcQMediaPlaylist_setCurrentIndex(self.h, index)

proc currentIndexChanged*(self: gen_qmediaplaylist_types.QMediaPlaylist, index: cint): void =
  fcQMediaPlaylist_currentIndexChanged(self.h, index)

type QMediaPlaylistcurrentIndexChangedSlot* = proc(index: cint)
proc cQMediaPlaylist_slot_callback_currentIndexChanged(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlaylistcurrentIndexChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc cQMediaPlaylist_slot_callback_currentIndexChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlaylistcurrentIndexChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentIndexChanged*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistcurrentIndexChangedSlot) =
  var tmp = new QMediaPlaylistcurrentIndexChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_currentIndexChanged(self.h, cast[int](addr tmp[]), cQMediaPlaylist_slot_callback_currentIndexChanged, cQMediaPlaylist_slot_callback_currentIndexChanged_release)

proc playbackModeChanged*(self: gen_qmediaplaylist_types.QMediaPlaylist, mode: cint): void =
  fcQMediaPlaylist_playbackModeChanged(self.h, cint(mode))

type QMediaPlaylistplaybackModeChangedSlot* = proc(mode: cint)
proc cQMediaPlaylist_slot_callback_playbackModeChanged(slot: int, mode: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlaylistplaybackModeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(mode)

  nimfunc[](slotval1)

proc cQMediaPlaylist_slot_callback_playbackModeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlaylistplaybackModeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onplaybackModeChanged*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistplaybackModeChangedSlot) =
  var tmp = new QMediaPlaylistplaybackModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_playbackModeChanged(self.h, cast[int](addr tmp[]), cQMediaPlaylist_slot_callback_playbackModeChanged, cQMediaPlaylist_slot_callback_playbackModeChanged_release)

proc currentMediaChanged*(self: gen_qmediaplaylist_types.QMediaPlaylist, param1: gen_qmediacontent_types.QMediaContent): void =
  fcQMediaPlaylist_currentMediaChanged(self.h, param1.h)

type QMediaPlaylistcurrentMediaChangedSlot* = proc(param1: gen_qmediacontent_types.QMediaContent)
proc cQMediaPlaylist_slot_callback_currentMediaChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlaylistcurrentMediaChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qmediacontent_types.QMediaContent(h: param1, owned: false)

  nimfunc[](slotval1)

proc cQMediaPlaylist_slot_callback_currentMediaChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlaylistcurrentMediaChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentMediaChanged*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistcurrentMediaChangedSlot) =
  var tmp = new QMediaPlaylistcurrentMediaChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_currentMediaChanged(self.h, cast[int](addr tmp[]), cQMediaPlaylist_slot_callback_currentMediaChanged, cQMediaPlaylist_slot_callback_currentMediaChanged_release)

proc mediaAboutToBeInserted*(self: gen_qmediaplaylist_types.QMediaPlaylist, start: cint, endVal: cint): void =
  fcQMediaPlaylist_mediaAboutToBeInserted(self.h, start, endVal)

type QMediaPlaylistmediaAboutToBeInsertedSlot* = proc(start: cint, endVal: cint)
proc cQMediaPlaylist_slot_callback_mediaAboutToBeInserted(slot: int, start: cint, endVal: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlaylistmediaAboutToBeInsertedSlot](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal

  nimfunc[](slotval1, slotval2)

proc cQMediaPlaylist_slot_callback_mediaAboutToBeInserted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlaylistmediaAboutToBeInsertedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmediaAboutToBeInserted*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistmediaAboutToBeInsertedSlot) =
  var tmp = new QMediaPlaylistmediaAboutToBeInsertedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_mediaAboutToBeInserted(self.h, cast[int](addr tmp[]), cQMediaPlaylist_slot_callback_mediaAboutToBeInserted, cQMediaPlaylist_slot_callback_mediaAboutToBeInserted_release)

proc mediaInserted*(self: gen_qmediaplaylist_types.QMediaPlaylist, start: cint, endVal: cint): void =
  fcQMediaPlaylist_mediaInserted(self.h, start, endVal)

type QMediaPlaylistmediaInsertedSlot* = proc(start: cint, endVal: cint)
proc cQMediaPlaylist_slot_callback_mediaInserted(slot: int, start: cint, endVal: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlaylistmediaInsertedSlot](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal

  nimfunc[](slotval1, slotval2)

proc cQMediaPlaylist_slot_callback_mediaInserted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlaylistmediaInsertedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmediaInserted*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistmediaInsertedSlot) =
  var tmp = new QMediaPlaylistmediaInsertedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_mediaInserted(self.h, cast[int](addr tmp[]), cQMediaPlaylist_slot_callback_mediaInserted, cQMediaPlaylist_slot_callback_mediaInserted_release)

proc mediaAboutToBeRemoved*(self: gen_qmediaplaylist_types.QMediaPlaylist, start: cint, endVal: cint): void =
  fcQMediaPlaylist_mediaAboutToBeRemoved(self.h, start, endVal)

type QMediaPlaylistmediaAboutToBeRemovedSlot* = proc(start: cint, endVal: cint)
proc cQMediaPlaylist_slot_callback_mediaAboutToBeRemoved(slot: int, start: cint, endVal: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlaylistmediaAboutToBeRemovedSlot](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal

  nimfunc[](slotval1, slotval2)

proc cQMediaPlaylist_slot_callback_mediaAboutToBeRemoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlaylistmediaAboutToBeRemovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmediaAboutToBeRemoved*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistmediaAboutToBeRemovedSlot) =
  var tmp = new QMediaPlaylistmediaAboutToBeRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_mediaAboutToBeRemoved(self.h, cast[int](addr tmp[]), cQMediaPlaylist_slot_callback_mediaAboutToBeRemoved, cQMediaPlaylist_slot_callback_mediaAboutToBeRemoved_release)

proc mediaRemoved*(self: gen_qmediaplaylist_types.QMediaPlaylist, start: cint, endVal: cint): void =
  fcQMediaPlaylist_mediaRemoved(self.h, start, endVal)

type QMediaPlaylistmediaRemovedSlot* = proc(start: cint, endVal: cint)
proc cQMediaPlaylist_slot_callback_mediaRemoved(slot: int, start: cint, endVal: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlaylistmediaRemovedSlot](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal

  nimfunc[](slotval1, slotval2)

proc cQMediaPlaylist_slot_callback_mediaRemoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlaylistmediaRemovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmediaRemoved*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistmediaRemovedSlot) =
  var tmp = new QMediaPlaylistmediaRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_mediaRemoved(self.h, cast[int](addr tmp[]), cQMediaPlaylist_slot_callback_mediaRemoved, cQMediaPlaylist_slot_callback_mediaRemoved_release)

proc mediaChanged*(self: gen_qmediaplaylist_types.QMediaPlaylist, start: cint, endVal: cint): void =
  fcQMediaPlaylist_mediaChanged(self.h, start, endVal)

type QMediaPlaylistmediaChangedSlot* = proc(start: cint, endVal: cint)
proc cQMediaPlaylist_slot_callback_mediaChanged(slot: int, start: cint, endVal: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlaylistmediaChangedSlot](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal

  nimfunc[](slotval1, slotval2)

proc cQMediaPlaylist_slot_callback_mediaChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlaylistmediaChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmediaChanged*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistmediaChangedSlot) =
  var tmp = new QMediaPlaylistmediaChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_mediaChanged(self.h, cast[int](addr tmp[]), cQMediaPlaylist_slot_callback_mediaChanged, cQMediaPlaylist_slot_callback_mediaChanged_release)

proc loaded*(self: gen_qmediaplaylist_types.QMediaPlaylist): void =
  fcQMediaPlaylist_loaded(self.h)

type QMediaPlaylistloadedSlot* = proc()
proc cQMediaPlaylist_slot_callback_loaded(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlaylistloadedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaPlaylist_slot_callback_loaded_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlaylistloadedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloaded*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistloadedSlot) =
  var tmp = new QMediaPlaylistloadedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_loaded(self.h, cast[int](addr tmp[]), cQMediaPlaylist_slot_callback_loaded, cQMediaPlaylist_slot_callback_loaded_release)

proc loadFailed*(self: gen_qmediaplaylist_types.QMediaPlaylist): void =
  fcQMediaPlaylist_loadFailed(self.h)

type QMediaPlaylistloadFailedSlot* = proc()
proc cQMediaPlaylist_slot_callback_loadFailed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaPlaylistloadFailedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaPlaylist_slot_callback_loadFailed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaPlaylistloadFailedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloadFailed*(self: gen_qmediaplaylist_types.QMediaPlaylist, slot: QMediaPlaylistloadFailedSlot) =
  var tmp = new QMediaPlaylistloadFailedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_connect_loadFailed(self.h, cast[int](addr tmp[]), cQMediaPlaylist_slot_callback_loadFailed, cQMediaPlaylist_slot_callback_loadFailed_release)

proc tr*(_: type gen_qmediaplaylist_types.QMediaPlaylist, s: cstring, c: cstring): string =
  let v_ms = fcQMediaPlaylist_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediaplaylist_types.QMediaPlaylist, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaPlaylist_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaplaylist_types.QMediaPlaylist, s: cstring, c: cstring): string =
  let v_ms = fcQMediaPlaylist_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaplaylist_types.QMediaPlaylist, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaPlaylist_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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

type QMediaPlaylistmetaObjectProc* = proc(self: QMediaPlaylist): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QMediaPlaylistmetacastProc* = proc(self: QMediaPlaylist, param1: cstring): pointer {.raises: [], gcsafe.}
type QMediaPlaylistmetacallProc* = proc(self: QMediaPlaylist, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QMediaPlaylistmediaObjectProc* = proc(self: QMediaPlaylist): gen_qmediaobject_types.QMediaObject {.raises: [], gcsafe.}
type QMediaPlaylistsetMediaObjectProc* = proc(self: QMediaPlaylist, objectVal: gen_qmediaobject_types.QMediaObject): bool {.raises: [], gcsafe.}
type QMediaPlaylisteventProc* = proc(self: QMediaPlaylist, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMediaPlaylisteventFilterProc* = proc(self: QMediaPlaylist, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMediaPlaylisttimerEventProc* = proc(self: QMediaPlaylist, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QMediaPlaylistchildEventProc* = proc(self: QMediaPlaylist, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QMediaPlaylistcustomEventProc* = proc(self: QMediaPlaylist, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMediaPlaylistconnectNotifyProc* = proc(self: QMediaPlaylist, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMediaPlaylistdisconnectNotifyProc* = proc(self: QMediaPlaylist, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMediaPlaylistVTable* {.inheritable, pure.} = object
  vtbl: cQMediaPlaylistVTable
  metaObject*: QMediaPlaylistmetaObjectProc
  metacast*: QMediaPlaylistmetacastProc
  metacall*: QMediaPlaylistmetacallProc
  mediaObject*: QMediaPlaylistmediaObjectProc
  setMediaObject*: QMediaPlaylistsetMediaObjectProc
  event*: QMediaPlaylisteventProc
  eventFilter*: QMediaPlaylisteventFilterProc
  timerEvent*: QMediaPlaylisttimerEventProc
  childEvent*: QMediaPlaylistchildEventProc
  customEvent*: QMediaPlaylistcustomEventProc
  connectNotify*: QMediaPlaylistconnectNotifyProc
  disconnectNotify*: QMediaPlaylistdisconnectNotifyProc
proc QMediaPlaylistmetaObject*(self: gen_qmediaplaylist_types.QMediaPlaylist): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaPlaylist_virtualbase_metaObject(self.h), owned: false)

proc cQMediaPlaylist_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaPlaylistVTable](fcQMediaPlaylist_vdata(self))
  let self = QMediaPlaylist(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMediaPlaylistmetacast*(self: gen_qmediaplaylist_types.QMediaPlaylist, param1: cstring): pointer =
  fcQMediaPlaylist_virtualbase_metacast(self.h, param1)

proc cQMediaPlaylist_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaPlaylistVTable](fcQMediaPlaylist_vdata(self))
  let self = QMediaPlaylist(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QMediaPlaylistmetacall*(self: gen_qmediaplaylist_types.QMediaPlaylist, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaPlaylist_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQMediaPlaylist_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMediaPlaylistVTable](fcQMediaPlaylist_vdata(self))
  let self = QMediaPlaylist(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMediaPlaylistmediaObject*(self: gen_qmediaplaylist_types.QMediaPlaylist): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQMediaPlaylist_virtualbase_mediaObject(self.h), owned: false)

proc cQMediaPlaylist_vtable_callback_mediaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaPlaylistVTable](fcQMediaPlaylist_vdata(self))
  let self = QMediaPlaylist(h: self)
  var virtualReturn = vtbl[].mediaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMediaPlaylistsetMediaObject*(self: gen_qmediaplaylist_types.QMediaPlaylist, objectVal: gen_qmediaobject_types.QMediaObject): bool =
  fcQMediaPlaylist_virtualbase_setMediaObject(self.h, objectVal.h)

proc cQMediaPlaylist_vtable_callback_setMediaObject(self: pointer, objectVal: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaPlaylistVTable](fcQMediaPlaylist_vdata(self))
  let self = QMediaPlaylist(h: self)
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: objectVal, owned: false)
  var virtualReturn = vtbl[].setMediaObject(self, slotval1)
  virtualReturn

proc QMediaPlaylistevent*(self: gen_qmediaplaylist_types.QMediaPlaylist, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaPlaylist_virtualbase_event(self.h, event.h)

proc cQMediaPlaylist_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaPlaylistVTable](fcQMediaPlaylist_vdata(self))
  let self = QMediaPlaylist(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QMediaPlaylisteventFilter*(self: gen_qmediaplaylist_types.QMediaPlaylist, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaPlaylist_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQMediaPlaylist_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaPlaylistVTable](fcQMediaPlaylist_vdata(self))
  let self = QMediaPlaylist(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QMediaPlaylisttimerEvent*(self: gen_qmediaplaylist_types.QMediaPlaylist, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQMediaPlaylist_virtualbase_timerEvent(self.h, event.h)

proc cQMediaPlaylist_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaPlaylistVTable](fcQMediaPlaylist_vdata(self))
  let self = QMediaPlaylist(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QMediaPlaylistchildEvent*(self: gen_qmediaplaylist_types.QMediaPlaylist, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMediaPlaylist_virtualbase_childEvent(self.h, event.h)

proc cQMediaPlaylist_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaPlaylistVTable](fcQMediaPlaylist_vdata(self))
  let self = QMediaPlaylist(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QMediaPlaylistcustomEvent*(self: gen_qmediaplaylist_types.QMediaPlaylist, event: gen_qcoreevent_types.QEvent): void =
  fcQMediaPlaylist_virtualbase_customEvent(self.h, event.h)

proc cQMediaPlaylist_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaPlaylistVTable](fcQMediaPlaylist_vdata(self))
  let self = QMediaPlaylist(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QMediaPlaylistconnectNotify*(self: gen_qmediaplaylist_types.QMediaPlaylist, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaPlaylist_virtualbase_connectNotify(self.h, signal.h)

proc cQMediaPlaylist_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaPlaylistVTable](fcQMediaPlaylist_vdata(self))
  let self = QMediaPlaylist(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QMediaPlaylistdisconnectNotify*(self: gen_qmediaplaylist_types.QMediaPlaylist, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaPlaylist_virtualbase_disconnectNotify(self.h, signal.h)

proc cQMediaPlaylist_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaPlaylistVTable](fcQMediaPlaylist_vdata(self))
  let self = QMediaPlaylist(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQMediaPlaylist* {.inheritable.} = ref object of QMediaPlaylist
  vtbl*: cQMediaPlaylistVTable
method metaObject*(self: VirtualQMediaPlaylist): gen_qobjectdefs_types.QMetaObject {.base.} =
  QMediaPlaylistmetaObject(self[])
proc cQMediaPlaylist_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMediaPlaylist](fcQMediaPlaylist_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQMediaPlaylist, param1: cstring): pointer {.base.} =
  QMediaPlaylistmetacast(self[], param1)
proc cQMediaPlaylist_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQMediaPlaylist](fcQMediaPlaylist_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQMediaPlaylist, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QMediaPlaylistmetacall(self[], param1, param2, param3)
proc cQMediaPlaylist_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMediaPlaylist](fcQMediaPlaylist_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method mediaObject*(self: VirtualQMediaPlaylist): gen_qmediaobject_types.QMediaObject {.base.} =
  QMediaPlaylistmediaObject(self[])
proc cQMediaPlaylist_method_callback_mediaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMediaPlaylist](fcQMediaPlaylist_vdata(self))
  var virtualReturn = inst.mediaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setMediaObject*(self: VirtualQMediaPlaylist, objectVal: gen_qmediaobject_types.QMediaObject): bool {.base.} =
  QMediaPlaylistsetMediaObject(self[], objectVal)
proc cQMediaPlaylist_method_callback_setMediaObject(self: pointer, objectVal: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMediaPlaylist](fcQMediaPlaylist_vdata(self))
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: objectVal, owned: false)
  var virtualReturn = inst.setMediaObject(slotval1)
  virtualReturn

method event*(self: VirtualQMediaPlaylist, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMediaPlaylistevent(self[], event)
proc cQMediaPlaylist_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMediaPlaylist](fcQMediaPlaylist_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQMediaPlaylist, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMediaPlaylisteventFilter(self[], watched, event)
proc cQMediaPlaylist_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMediaPlaylist](fcQMediaPlaylist_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQMediaPlaylist, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QMediaPlaylisttimerEvent(self[], event)
proc cQMediaPlaylist_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaPlaylist](fcQMediaPlaylist_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQMediaPlaylist, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QMediaPlaylistchildEvent(self[], event)
proc cQMediaPlaylist_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaPlaylist](fcQMediaPlaylist_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQMediaPlaylist, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMediaPlaylistcustomEvent(self[], event)
proc cQMediaPlaylist_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaPlaylist](fcQMediaPlaylist_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQMediaPlaylist, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMediaPlaylistconnectNotify(self[], signal)
proc cQMediaPlaylist_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaPlaylist](fcQMediaPlaylist_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQMediaPlaylist, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMediaPlaylistdisconnectNotify(self[], signal)
proc cQMediaPlaylist_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaPlaylist](fcQMediaPlaylist_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qmediaplaylist_types.QMediaPlaylist): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaPlaylist_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmediaplaylist_types.QMediaPlaylist): cint =
  fcQMediaPlaylist_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediaplaylist_types.QMediaPlaylist, signal: cstring): cint =
  fcQMediaPlaylist_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediaplaylist_types.QMediaPlaylist, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaPlaylist_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qmediaplaylist_types.QMediaPlaylist,
    vtbl: ref QMediaPlaylistVTable = nil): gen_qmediaplaylist_types.QMediaPlaylist =
  let vtbl = if vtbl == nil: new QMediaPlaylistVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMediaPlaylistVTable](fcQMediaPlaylist_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMediaPlaylist_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMediaPlaylist_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMediaPlaylist_vtable_callback_metacall
  if not isNil(vtbl[].mediaObject):
    vtbl[].vtbl.mediaObject = cQMediaPlaylist_vtable_callback_mediaObject
  if not isNil(vtbl[].setMediaObject):
    vtbl[].vtbl.setMediaObject = cQMediaPlaylist_vtable_callback_setMediaObject
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMediaPlaylist_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMediaPlaylist_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMediaPlaylist_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMediaPlaylist_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMediaPlaylist_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMediaPlaylist_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMediaPlaylist_vtable_callback_disconnectNotify
  gen_qmediaplaylist_types.QMediaPlaylist(h: fcQMediaPlaylist_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qmediaplaylist_types.QMediaPlaylist,
    parent: gen_qobject_types.QObject,
    vtbl: ref QMediaPlaylistVTable = nil): gen_qmediaplaylist_types.QMediaPlaylist =
  let vtbl = if vtbl == nil: new QMediaPlaylistVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMediaPlaylistVTable](fcQMediaPlaylist_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMediaPlaylist_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMediaPlaylist_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMediaPlaylist_vtable_callback_metacall
  if not isNil(vtbl[].mediaObject):
    vtbl[].vtbl.mediaObject = cQMediaPlaylist_vtable_callback_mediaObject
  if not isNil(vtbl[].setMediaObject):
    vtbl[].vtbl.setMediaObject = cQMediaPlaylist_vtable_callback_setMediaObject
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMediaPlaylist_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMediaPlaylist_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMediaPlaylist_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMediaPlaylist_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMediaPlaylist_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMediaPlaylist_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMediaPlaylist_vtable_callback_disconnectNotify
  gen_qmediaplaylist_types.QMediaPlaylist(h: fcQMediaPlaylist_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQMediaPlaylist_mvtbl = cQMediaPlaylistVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQMediaPlaylist()[])](self.fcQMediaPlaylist_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQMediaPlaylist_method_callback_metaObject,
  metacast: cQMediaPlaylist_method_callback_metacast,
  metacall: cQMediaPlaylist_method_callback_metacall,
  mediaObject: cQMediaPlaylist_method_callback_mediaObject,
  setMediaObject: cQMediaPlaylist_method_callback_setMediaObject,
  event: cQMediaPlaylist_method_callback_event,
  eventFilter: cQMediaPlaylist_method_callback_eventFilter,
  timerEvent: cQMediaPlaylist_method_callback_timerEvent,
  childEvent: cQMediaPlaylist_method_callback_childEvent,
  customEvent: cQMediaPlaylist_method_callback_customEvent,
  connectNotify: cQMediaPlaylist_method_callback_connectNotify,
  disconnectNotify: cQMediaPlaylist_method_callback_disconnectNotify,
)
proc create*(T: type gen_qmediaplaylist_types.QMediaPlaylist,
    inst: VirtualQMediaPlaylist) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMediaPlaylist_new(addr(cQMediaPlaylist_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qmediaplaylist_types.QMediaPlaylist,
    parent: gen_qobject_types.QObject,
    inst: VirtualQMediaPlaylist) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMediaPlaylist_new2(addr(cQMediaPlaylist_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qmediaplaylist_types.QMediaPlaylist): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaPlaylist_staticMetaObject())
