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


import ./gen_qmediaresource_types
export gen_qmediaresource_types

import
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qurl_types,
  ../QtNetwork/gen_qnetworkrequest_types
export
  gen_qsize_types,
  gen_qurl_types,
  gen_qnetworkrequest_types

type cQMediaResource*{.exportc: "QMediaResource", incompleteStruct.} = object

proc fcQMediaResource_operatorAssign(self: pointer, other: pointer): void {.importc: "QMediaResource_operatorAssign".}
proc fcQMediaResource_isNull(self: pointer): bool {.importc: "QMediaResource_isNull".}
proc fcQMediaResource_operatorEqual(self: pointer, other: pointer): bool {.importc: "QMediaResource_operatorEqual".}
proc fcQMediaResource_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QMediaResource_operatorNotEqual".}
proc fcQMediaResource_url(self: pointer): pointer {.importc: "QMediaResource_url".}
proc fcQMediaResource_request(self: pointer): pointer {.importc: "QMediaResource_request".}
proc fcQMediaResource_mimeType(self: pointer): struct_miqt_string {.importc: "QMediaResource_mimeType".}
proc fcQMediaResource_language(self: pointer): struct_miqt_string {.importc: "QMediaResource_language".}
proc fcQMediaResource_setLanguage(self: pointer, language: struct_miqt_string): void {.importc: "QMediaResource_setLanguage".}
proc fcQMediaResource_audioCodec(self: pointer): struct_miqt_string {.importc: "QMediaResource_audioCodec".}
proc fcQMediaResource_setAudioCodec(self: pointer, codec: struct_miqt_string): void {.importc: "QMediaResource_setAudioCodec".}
proc fcQMediaResource_videoCodec(self: pointer): struct_miqt_string {.importc: "QMediaResource_videoCodec".}
proc fcQMediaResource_setVideoCodec(self: pointer, codec: struct_miqt_string): void {.importc: "QMediaResource_setVideoCodec".}
proc fcQMediaResource_dataSize(self: pointer): clonglong {.importc: "QMediaResource_dataSize".}
proc fcQMediaResource_setDataSize(self: pointer, size: clonglong): void {.importc: "QMediaResource_setDataSize".}
proc fcQMediaResource_audioBitRate(self: pointer): cint {.importc: "QMediaResource_audioBitRate".}
proc fcQMediaResource_setAudioBitRate(self: pointer, rate: cint): void {.importc: "QMediaResource_setAudioBitRate".}
proc fcQMediaResource_sampleRate(self: pointer): cint {.importc: "QMediaResource_sampleRate".}
proc fcQMediaResource_setSampleRate(self: pointer, frequency: cint): void {.importc: "QMediaResource_setSampleRate".}
proc fcQMediaResource_channelCount(self: pointer): cint {.importc: "QMediaResource_channelCount".}
proc fcQMediaResource_setChannelCount(self: pointer, channels: cint): void {.importc: "QMediaResource_setChannelCount".}
proc fcQMediaResource_videoBitRate(self: pointer): cint {.importc: "QMediaResource_videoBitRate".}
proc fcQMediaResource_setVideoBitRate(self: pointer, rate: cint): void {.importc: "QMediaResource_setVideoBitRate".}
proc fcQMediaResource_resolution(self: pointer): pointer {.importc: "QMediaResource_resolution".}
proc fcQMediaResource_setResolution(self: pointer, resolution: pointer): void {.importc: "QMediaResource_setResolution".}
proc fcQMediaResource_setResolution2(self: pointer, width: cint, height: cint): void {.importc: "QMediaResource_setResolution2".}
proc fcQMediaResource_new(): ptr cQMediaResource {.importc: "QMediaResource_new".}
proc fcQMediaResource_new2(url: pointer): ptr cQMediaResource {.importc: "QMediaResource_new2".}
proc fcQMediaResource_new3(request: pointer): ptr cQMediaResource {.importc: "QMediaResource_new3".}
proc fcQMediaResource_new4(other: pointer): ptr cQMediaResource {.importc: "QMediaResource_new4".}
proc fcQMediaResource_new5(url: pointer, mimeType: struct_miqt_string): ptr cQMediaResource {.importc: "QMediaResource_new5".}
proc fcQMediaResource_new6(request: pointer, mimeType: struct_miqt_string): ptr cQMediaResource {.importc: "QMediaResource_new6".}

proc operatorAssign*(self: gen_qmediaresource_types.QMediaResource, other: gen_qmediaresource_types.QMediaResource): void =
  fcQMediaResource_operatorAssign(self.h, other.h)

proc isNull*(self: gen_qmediaresource_types.QMediaResource): bool =
  fcQMediaResource_isNull(self.h)

proc operatorEqual*(self: gen_qmediaresource_types.QMediaResource, other: gen_qmediaresource_types.QMediaResource): bool =
  fcQMediaResource_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qmediaresource_types.QMediaResource, other: gen_qmediaresource_types.QMediaResource): bool =
  fcQMediaResource_operatorNotEqual(self.h, other.h)

proc url*(self: gen_qmediaresource_types.QMediaResource): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQMediaResource_url(self.h), owned: true)

proc request*(self: gen_qmediaresource_types.QMediaResource): gen_qnetworkrequest_types.QNetworkRequest =
  gen_qnetworkrequest_types.QNetworkRequest(h: fcQMediaResource_request(self.h), owned: true)

proc mimeType*(self: gen_qmediaresource_types.QMediaResource): string =
  let v_ms = fcQMediaResource_mimeType(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qmediaresource_types.QMediaResource): string =
  let v_ms = fcQMediaResource_language(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setLanguage*(self: gen_qmediaresource_types.QMediaResource, language: openArray[char]): void =
  fcQMediaResource_setLanguage(self.h, struct_miqt_string(data: if len(language) > 0: addr language[0] else: nil, len: csize_t(len(language))))

proc audioCodec*(self: gen_qmediaresource_types.QMediaResource): string =
  let v_ms = fcQMediaResource_audioCodec(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setAudioCodec*(self: gen_qmediaresource_types.QMediaResource, codec: openArray[char]): void =
  fcQMediaResource_setAudioCodec(self.h, struct_miqt_string(data: if len(codec) > 0: addr codec[0] else: nil, len: csize_t(len(codec))))

proc videoCodec*(self: gen_qmediaresource_types.QMediaResource): string =
  let v_ms = fcQMediaResource_videoCodec(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setVideoCodec*(self: gen_qmediaresource_types.QMediaResource, codec: openArray[char]): void =
  fcQMediaResource_setVideoCodec(self.h, struct_miqt_string(data: if len(codec) > 0: addr codec[0] else: nil, len: csize_t(len(codec))))

proc dataSize*(self: gen_qmediaresource_types.QMediaResource): clonglong =
  fcQMediaResource_dataSize(self.h)

proc setDataSize*(self: gen_qmediaresource_types.QMediaResource, size: clonglong): void =
  fcQMediaResource_setDataSize(self.h, size)

proc audioBitRate*(self: gen_qmediaresource_types.QMediaResource): cint =
  fcQMediaResource_audioBitRate(self.h)

proc setAudioBitRate*(self: gen_qmediaresource_types.QMediaResource, rate: cint): void =
  fcQMediaResource_setAudioBitRate(self.h, rate)

proc sampleRate*(self: gen_qmediaresource_types.QMediaResource): cint =
  fcQMediaResource_sampleRate(self.h)

proc setSampleRate*(self: gen_qmediaresource_types.QMediaResource, frequency: cint): void =
  fcQMediaResource_setSampleRate(self.h, frequency)

proc channelCount*(self: gen_qmediaresource_types.QMediaResource): cint =
  fcQMediaResource_channelCount(self.h)

proc setChannelCount*(self: gen_qmediaresource_types.QMediaResource, channels: cint): void =
  fcQMediaResource_setChannelCount(self.h, channels)

proc videoBitRate*(self: gen_qmediaresource_types.QMediaResource): cint =
  fcQMediaResource_videoBitRate(self.h)

proc setVideoBitRate*(self: gen_qmediaresource_types.QMediaResource, rate: cint): void =
  fcQMediaResource_setVideoBitRate(self.h, rate)

proc resolution*(self: gen_qmediaresource_types.QMediaResource): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMediaResource_resolution(self.h), owned: true)

proc setResolution*(self: gen_qmediaresource_types.QMediaResource, resolution: gen_qsize_types.QSize): void =
  fcQMediaResource_setResolution(self.h, resolution.h)

proc setResolution*(self: gen_qmediaresource_types.QMediaResource, width: cint, height: cint): void =
  fcQMediaResource_setResolution2(self.h, width, height)

proc create*(T: type gen_qmediaresource_types.QMediaResource): gen_qmediaresource_types.QMediaResource =
  gen_qmediaresource_types.QMediaResource(h: fcQMediaResource_new(), owned: true)

proc create*(T: type gen_qmediaresource_types.QMediaResource,
    url: gen_qurl_types.QUrl): gen_qmediaresource_types.QMediaResource =
  gen_qmediaresource_types.QMediaResource(h: fcQMediaResource_new2(url.h), owned: true)

proc create*(T: type gen_qmediaresource_types.QMediaResource,
    request: gen_qnetworkrequest_types.QNetworkRequest): gen_qmediaresource_types.QMediaResource =
  gen_qmediaresource_types.QMediaResource(h: fcQMediaResource_new3(request.h), owned: true)

proc create*(T: type gen_qmediaresource_types.QMediaResource,
    other: gen_qmediaresource_types.QMediaResource): gen_qmediaresource_types.QMediaResource =
  gen_qmediaresource_types.QMediaResource(h: fcQMediaResource_new4(other.h), owned: true)

proc create*(T: type gen_qmediaresource_types.QMediaResource,
    url: gen_qurl_types.QUrl, mimeType: openArray[char]): gen_qmediaresource_types.QMediaResource =
  gen_qmediaresource_types.QMediaResource(h: fcQMediaResource_new5(url.h, struct_miqt_string(data: if len(mimeType) > 0: addr mimeType[0] else: nil, len: csize_t(len(mimeType)))), owned: true)

proc create*(T: type gen_qmediaresource_types.QMediaResource,
    request: gen_qnetworkrequest_types.QNetworkRequest, mimeType: openArray[char]): gen_qmediaresource_types.QMediaResource =
  gen_qmediaresource_types.QMediaResource(h: fcQMediaResource_new6(request.h, struct_miqt_string(data: if len(mimeType) > 0: addr mimeType[0] else: nil, len: csize_t(len(mimeType)))), owned: true)

