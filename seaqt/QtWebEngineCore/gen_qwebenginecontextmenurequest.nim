import ./Qt6WebEngineCore_libs

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

const cflags = gorge("pkg-config --cflags Qt6WebEngineCore")  & " -fPIC"
{.compile("gen_qwebenginecontextmenurequest.cpp", cflags).}


type QtWebEngineCoreReferrerPolicyEnum* = distinct cint
template Always*(_: type QtWebEngineCoreReferrerPolicyEnum): untyped = 0
template Default*(_: type QtWebEngineCoreReferrerPolicyEnum): untyped = 1
template NoReferrerWhenDowngrade*(_: type QtWebEngineCoreReferrerPolicyEnum): untyped = 2
template Never*(_: type QtWebEngineCoreReferrerPolicyEnum): untyped = 3
template Origin*(_: type QtWebEngineCoreReferrerPolicyEnum): untyped = 4
template OriginWhenCrossOrigin*(_: type QtWebEngineCoreReferrerPolicyEnum): untyped = 5
template NoReferrerWhenDowngradeOriginWhenCrossOrigin*(_: type QtWebEngineCoreReferrerPolicyEnum): untyped = 6
template SameOrigin*(_: type QtWebEngineCoreReferrerPolicyEnum): untyped = 7
template StrictOrigin*(_: type QtWebEngineCoreReferrerPolicyEnum): untyped = 8
template Last*(_: type QtWebEngineCoreReferrerPolicyEnum): untyped = 8


type QWebEngineContextMenuRequestMediaTypeEnum* = distinct cint
template MediaTypeNone*(_: type QWebEngineContextMenuRequestMediaTypeEnum): untyped = 0
template MediaTypeImage*(_: type QWebEngineContextMenuRequestMediaTypeEnum): untyped = 1
template MediaTypeVideo*(_: type QWebEngineContextMenuRequestMediaTypeEnum): untyped = 2
template MediaTypeAudio*(_: type QWebEngineContextMenuRequestMediaTypeEnum): untyped = 3
template MediaTypeCanvas*(_: type QWebEngineContextMenuRequestMediaTypeEnum): untyped = 4
template MediaTypeFile*(_: type QWebEngineContextMenuRequestMediaTypeEnum): untyped = 5
template MediaTypePlugin*(_: type QWebEngineContextMenuRequestMediaTypeEnum): untyped = 6


type QWebEngineContextMenuRequestMediaFlagEnum* = distinct cint
template MediaInError*(_: type QWebEngineContextMenuRequestMediaFlagEnum): untyped = 1
template MediaPaused*(_: type QWebEngineContextMenuRequestMediaFlagEnum): untyped = 2
template MediaMuted*(_: type QWebEngineContextMenuRequestMediaFlagEnum): untyped = 4
template MediaLoop*(_: type QWebEngineContextMenuRequestMediaFlagEnum): untyped = 8
template MediaCanSave*(_: type QWebEngineContextMenuRequestMediaFlagEnum): untyped = 16
template MediaHasAudio*(_: type QWebEngineContextMenuRequestMediaFlagEnum): untyped = 32
template MediaCanToggleControls*(_: type QWebEngineContextMenuRequestMediaFlagEnum): untyped = 64
template MediaControls*(_: type QWebEngineContextMenuRequestMediaFlagEnum): untyped = 128
template MediaCanPrint*(_: type QWebEngineContextMenuRequestMediaFlagEnum): untyped = 256
template MediaCanRotate*(_: type QWebEngineContextMenuRequestMediaFlagEnum): untyped = 512


type QWebEngineContextMenuRequestEditFlagEnum* = distinct cint
template CanUndo*(_: type QWebEngineContextMenuRequestEditFlagEnum): untyped = 1
template CanRedo*(_: type QWebEngineContextMenuRequestEditFlagEnum): untyped = 2
template CanCut*(_: type QWebEngineContextMenuRequestEditFlagEnum): untyped = 4
template CanCopy*(_: type QWebEngineContextMenuRequestEditFlagEnum): untyped = 8
template CanPaste*(_: type QWebEngineContextMenuRequestEditFlagEnum): untyped = 16
template CanDelete*(_: type QWebEngineContextMenuRequestEditFlagEnum): untyped = 32
template CanSelectAll*(_: type QWebEngineContextMenuRequestEditFlagEnum): untyped = 64
template CanTranslate*(_: type QWebEngineContextMenuRequestEditFlagEnum): untyped = 128
template CanEditRichly*(_: type QWebEngineContextMenuRequestEditFlagEnum): untyped = 256


import ./gen_qwebenginecontextmenurequest_types
export gen_qwebenginecontextmenurequest_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qurl_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qurl_types

type cQWebEngineContextMenuRequest*{.exportc: "QWebEngineContextMenuRequest", incompleteStruct.} = object

proc fcQWebEngineContextMenuRequest_metaObject(self: pointer, ): pointer {.importc: "QWebEngineContextMenuRequest_metaObject".}
proc fcQWebEngineContextMenuRequest_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineContextMenuRequest_metacast".}
proc fcQWebEngineContextMenuRequest_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineContextMenuRequest_metacall".}
proc fcQWebEngineContextMenuRequest_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineContextMenuRequest_tr".}
proc fcQWebEngineContextMenuRequest_position(self: pointer, ): pointer {.importc: "QWebEngineContextMenuRequest_position".}
proc fcQWebEngineContextMenuRequest_selectedText(self: pointer, ): struct_miqt_string {.importc: "QWebEngineContextMenuRequest_selectedText".}
proc fcQWebEngineContextMenuRequest_linkText(self: pointer, ): struct_miqt_string {.importc: "QWebEngineContextMenuRequest_linkText".}
proc fcQWebEngineContextMenuRequest_linkUrl(self: pointer, ): pointer {.importc: "QWebEngineContextMenuRequest_linkUrl".}
proc fcQWebEngineContextMenuRequest_mediaUrl(self: pointer, ): pointer {.importc: "QWebEngineContextMenuRequest_mediaUrl".}
proc fcQWebEngineContextMenuRequest_mediaType(self: pointer, ): cint {.importc: "QWebEngineContextMenuRequest_mediaType".}
proc fcQWebEngineContextMenuRequest_isContentEditable(self: pointer, ): bool {.importc: "QWebEngineContextMenuRequest_isContentEditable".}
proc fcQWebEngineContextMenuRequest_misspelledWord(self: pointer, ): struct_miqt_string {.importc: "QWebEngineContextMenuRequest_misspelledWord".}
proc fcQWebEngineContextMenuRequest_spellCheckerSuggestions(self: pointer, ): struct_miqt_array {.importc: "QWebEngineContextMenuRequest_spellCheckerSuggestions".}
proc fcQWebEngineContextMenuRequest_isAccepted(self: pointer, ): bool {.importc: "QWebEngineContextMenuRequest_isAccepted".}
proc fcQWebEngineContextMenuRequest_setAccepted(self: pointer, accepted: bool): void {.importc: "QWebEngineContextMenuRequest_setAccepted".}
proc fcQWebEngineContextMenuRequest_mediaFlags(self: pointer, ): cint {.importc: "QWebEngineContextMenuRequest_mediaFlags".}
proc fcQWebEngineContextMenuRequest_editFlags(self: pointer, ): cint {.importc: "QWebEngineContextMenuRequest_editFlags".}
proc fcQWebEngineContextMenuRequest_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineContextMenuRequest_tr2".}
proc fcQWebEngineContextMenuRequest_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineContextMenuRequest_tr3".}
proc fcQWebEngineContextMenuRequest_protectedbase_sender(self: pointer, ): pointer {.importc: "QWebEngineContextMenuRequest_protectedbase_sender".}
proc fcQWebEngineContextMenuRequest_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QWebEngineContextMenuRequest_protectedbase_senderSignalIndex".}
proc fcQWebEngineContextMenuRequest_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebEngineContextMenuRequest_protectedbase_receivers".}
proc fcQWebEngineContextMenuRequest_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebEngineContextMenuRequest_protectedbase_isSignalConnected".}
proc fcQWebEngineContextMenuRequest_staticMetaObject(): pointer {.importc: "QWebEngineContextMenuRequest_staticMetaObject".}
proc fcQWebEngineContextMenuRequest_delete(self: pointer) {.importc: "QWebEngineContextMenuRequest_delete".}

proc metaObject*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineContextMenuRequest_metaObject(self.h))

proc metacast*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, param1: cstring): pointer =
  fcQWebEngineContextMenuRequest_metacast(self.h, param1)

proc metacall*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineContextMenuRequest_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, s: cstring): string =
  let v_ms = fcQWebEngineContextMenuRequest_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc position*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWebEngineContextMenuRequest_position(self.h))

proc selectedText*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, ): string =
  let v_ms = fcQWebEngineContextMenuRequest_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc linkText*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, ): string =
  let v_ms = fcQWebEngineContextMenuRequest_linkText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc linkUrl*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineContextMenuRequest_linkUrl(self.h))

proc mediaUrl*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineContextMenuRequest_mediaUrl(self.h))

proc mediaType*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, ): cint =
  cint(fcQWebEngineContextMenuRequest_mediaType(self.h))

proc isContentEditable*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, ): bool =
  fcQWebEngineContextMenuRequest_isContentEditable(self.h)

proc misspelledWord*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, ): string =
  let v_ms = fcQWebEngineContextMenuRequest_misspelledWord(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc spellCheckerSuggestions*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, ): seq[string] =
  var v_ma = fcQWebEngineContextMenuRequest_spellCheckerSuggestions(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc isAccepted*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, ): bool =
  fcQWebEngineContextMenuRequest_isAccepted(self.h)

proc setAccepted*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, accepted: bool): void =
  fcQWebEngineContextMenuRequest_setAccepted(self.h, accepted)

proc mediaFlags*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, ): cint =
  cint(fcQWebEngineContextMenuRequest_mediaFlags(self.h))

proc editFlags*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, ): cint =
  cint(fcQWebEngineContextMenuRequest_editFlags(self.h))

proc tr*(_: type gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineContextMenuRequest_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineContextMenuRequest_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebEngineContextMenuRequest_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, ): cint =
  fcQWebEngineContextMenuRequest_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, signal: cstring): cint =
  fcQWebEngineContextMenuRequest_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebEngineContextMenuRequest_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineContextMenuRequest_staticMetaObject())
proc delete*(self: gen_qwebenginecontextmenurequest_types.QWebEngineContextMenuRequest) =
  fcQWebEngineContextMenuRequest_delete(self.h)
