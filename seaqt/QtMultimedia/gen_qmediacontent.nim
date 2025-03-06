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
{.compile("gen_qmediacontent.cpp", cflags).}


import ./gen_qmediacontent_types
export gen_qmediacontent_types

import
  ../QtCore/gen_qurl_types,
  ../QtNetwork/gen_qnetworkrequest_types,
  ./gen_qmediaplaylist_types,
  ./gen_qmediaresource_types
export
  gen_qurl_types,
  gen_qnetworkrequest_types,
  gen_qmediaplaylist_types,
  gen_qmediaresource_types

type cQMediaContent*{.exportc: "QMediaContent", incompleteStruct.} = object

proc fcQMediaContent_operatorAssign(self: pointer, other: pointer): void {.importc: "QMediaContent_operatorAssign".}
proc fcQMediaContent_operatorEqual(self: pointer, other: pointer): bool {.importc: "QMediaContent_operatorEqual".}
proc fcQMediaContent_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QMediaContent_operatorNotEqual".}
proc fcQMediaContent_isNull(self: pointer, ): bool {.importc: "QMediaContent_isNull".}
proc fcQMediaContent_request(self: pointer, ): pointer {.importc: "QMediaContent_request".}
proc fcQMediaContent_canonicalUrl(self: pointer, ): pointer {.importc: "QMediaContent_canonicalUrl".}
proc fcQMediaContent_canonicalRequest(self: pointer, ): pointer {.importc: "QMediaContent_canonicalRequest".}
proc fcQMediaContent_canonicalResource(self: pointer, ): pointer {.importc: "QMediaContent_canonicalResource".}
proc fcQMediaContent_resources(self: pointer, ): struct_miqt_array {.importc: "QMediaContent_resources".}
proc fcQMediaContent_playlist(self: pointer, ): pointer {.importc: "QMediaContent_playlist".}
proc fcQMediaContent_new(): ptr cQMediaContent {.importc: "QMediaContent_new".}
proc fcQMediaContent_new2(contentUrl: pointer): ptr cQMediaContent {.importc: "QMediaContent_new2".}
proc fcQMediaContent_new3(contentRequest: pointer): ptr cQMediaContent {.importc: "QMediaContent_new3".}
proc fcQMediaContent_new4(contentResource: pointer): ptr cQMediaContent {.importc: "QMediaContent_new4".}
proc fcQMediaContent_new5(resources: struct_miqt_array): ptr cQMediaContent {.importc: "QMediaContent_new5".}
proc fcQMediaContent_new6(other: pointer): ptr cQMediaContent {.importc: "QMediaContent_new6".}
proc fcQMediaContent_new7(playlist: pointer): ptr cQMediaContent {.importc: "QMediaContent_new7".}
proc fcQMediaContent_new8(playlist: pointer, contentUrl: pointer): ptr cQMediaContent {.importc: "QMediaContent_new8".}
proc fcQMediaContent_new9(playlist: pointer, contentUrl: pointer, takeOwnership: bool): ptr cQMediaContent {.importc: "QMediaContent_new9".}
proc fcQMediaContent_delete(self: pointer) {.importc: "QMediaContent_delete".}

proc operatorAssign*(self: gen_qmediacontent_types.QMediaContent, other: gen_qmediacontent_types.QMediaContent): void =
  fcQMediaContent_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qmediacontent_types.QMediaContent, other: gen_qmediacontent_types.QMediaContent): bool =
  fcQMediaContent_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qmediacontent_types.QMediaContent, other: gen_qmediacontent_types.QMediaContent): bool =
  fcQMediaContent_operatorNotEqual(self.h, other.h)

proc isNull*(self: gen_qmediacontent_types.QMediaContent, ): bool =
  fcQMediaContent_isNull(self.h)

proc request*(self: gen_qmediacontent_types.QMediaContent, ): gen_qnetworkrequest_types.QNetworkRequest =
  gen_qnetworkrequest_types.QNetworkRequest(h: fcQMediaContent_request(self.h))

proc canonicalUrl*(self: gen_qmediacontent_types.QMediaContent, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQMediaContent_canonicalUrl(self.h))

proc canonicalRequest*(self: gen_qmediacontent_types.QMediaContent, ): gen_qnetworkrequest_types.QNetworkRequest =
  gen_qnetworkrequest_types.QNetworkRequest(h: fcQMediaContent_canonicalRequest(self.h))

proc canonicalResource*(self: gen_qmediacontent_types.QMediaContent, ): gen_qmediaresource_types.QMediaResource =
  gen_qmediaresource_types.QMediaResource(h: fcQMediaContent_canonicalResource(self.h))

proc resources*(self: gen_qmediacontent_types.QMediaContent, ): seq[gen_qmediaresource_types.QMediaResource] =
  var v_ma = fcQMediaContent_resources(self.h)
  var vx_ret = newSeq[gen_qmediaresource_types.QMediaResource](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmediaresource_types.QMediaResource(h: v_outCast[i])
  vx_ret

proc playlist*(self: gen_qmediacontent_types.QMediaContent, ): gen_qmediaplaylist_types.QMediaPlaylist =
  gen_qmediaplaylist_types.QMediaPlaylist(h: fcQMediaContent_playlist(self.h))

proc create*(T: type gen_qmediacontent_types.QMediaContent): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaContent_new())

proc create*(T: type gen_qmediacontent_types.QMediaContent,
    contentUrl: gen_qurl_types.QUrl): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaContent_new2(contentUrl.h))

proc create*(T: type gen_qmediacontent_types.QMediaContent,
    contentRequest: gen_qnetworkrequest_types.QNetworkRequest): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaContent_new3(contentRequest.h))

proc create*(T: type gen_qmediacontent_types.QMediaContent,
    contentResource: gen_qmediaresource_types.QMediaResource): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaContent_new4(contentResource.h))

proc create*(T: type gen_qmediacontent_types.QMediaContent,
    resources: seq[gen_qmediaresource_types.QMediaResource]): gen_qmediacontent_types.QMediaContent =
  var resources_CArray = newSeq[pointer](len(resources))
  for i in 0..<len(resources):
    resources_CArray[i] = resources[i].h

  gen_qmediacontent_types.QMediaContent(h: fcQMediaContent_new5(struct_miqt_array(len: csize_t(len(resources)), data: if len(resources) == 0: nil else: addr(resources_CArray[0]))))

proc create*(T: type gen_qmediacontent_types.QMediaContent,
    other: gen_qmediacontent_types.QMediaContent): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaContent_new6(other.h))

proc create*(T: type gen_qmediacontent_types.QMediaContent,
    playlist: gen_qmediaplaylist_types.QMediaPlaylist): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaContent_new7(playlist.h))

proc create*(T: type gen_qmediacontent_types.QMediaContent,
    playlist: gen_qmediaplaylist_types.QMediaPlaylist, contentUrl: gen_qurl_types.QUrl): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaContent_new8(playlist.h, contentUrl.h))

proc create*(T: type gen_qmediacontent_types.QMediaContent,
    playlist: gen_qmediaplaylist_types.QMediaPlaylist, contentUrl: gen_qurl_types.QUrl, takeOwnership: bool): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaContent_new9(playlist.h, contentUrl.h, takeOwnership))

proc delete*(self: gen_qmediacontent_types.QMediaContent) =
  fcQMediaContent_delete(self.h)
