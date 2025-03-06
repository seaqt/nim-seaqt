import ./Qt6WebEngineCore_libs

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

const cflags = gorge("pkg-config --cflags Qt6WebEngineCore")  & " -fPIC"
{.compile("gen_qwebenginescript.cpp", cflags).}


type QWebEngineScriptInjectionPointEnum* = distinct cint
template Deferred*(_: type QWebEngineScriptInjectionPointEnum): untyped = 0
template DocumentReady*(_: type QWebEngineScriptInjectionPointEnum): untyped = 1
template DocumentCreation*(_: type QWebEngineScriptInjectionPointEnum): untyped = 2


type QWebEngineScriptScriptWorldIdEnum* = distinct cint
template MainWorld*(_: type QWebEngineScriptScriptWorldIdEnum): untyped = 0
template ApplicationWorld*(_: type QWebEngineScriptScriptWorldIdEnum): untyped = 1
template UserWorld*(_: type QWebEngineScriptScriptWorldIdEnum): untyped = 2


import ./gen_qwebenginescript_types
export gen_qwebenginescript_types

import
  ../QtCore/gen_qurl_types
export
  gen_qurl_types

type cQWebEngineScript*{.exportc: "QWebEngineScript", incompleteStruct.} = object

proc fcQWebEngineScript_new(): ptr cQWebEngineScript {.importc: "QWebEngineScript_new".}
proc fcQWebEngineScript_new2(other: pointer): ptr cQWebEngineScript {.importc: "QWebEngineScript_new2".}
proc fcQWebEngineScript_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebEngineScript_operatorAssign".}
proc fcQWebEngineScript_name(self: pointer, ): struct_miqt_string {.importc: "QWebEngineScript_name".}
proc fcQWebEngineScript_setName(self: pointer, name: struct_miqt_string): void {.importc: "QWebEngineScript_setName".}
proc fcQWebEngineScript_sourceUrl(self: pointer, ): pointer {.importc: "QWebEngineScript_sourceUrl".}
proc fcQWebEngineScript_setSourceUrl(self: pointer, url: pointer): void {.importc: "QWebEngineScript_setSourceUrl".}
proc fcQWebEngineScript_sourceCode(self: pointer, ): struct_miqt_string {.importc: "QWebEngineScript_sourceCode".}
proc fcQWebEngineScript_setSourceCode(self: pointer, sourceCode: struct_miqt_string): void {.importc: "QWebEngineScript_setSourceCode".}
proc fcQWebEngineScript_injectionPoint(self: pointer, ): cint {.importc: "QWebEngineScript_injectionPoint".}
proc fcQWebEngineScript_setInjectionPoint(self: pointer, injectionPoint: cint): void {.importc: "QWebEngineScript_setInjectionPoint".}
proc fcQWebEngineScript_worldId(self: pointer, ): cuint {.importc: "QWebEngineScript_worldId".}
proc fcQWebEngineScript_setWorldId(self: pointer, worldId: cuint): void {.importc: "QWebEngineScript_setWorldId".}
proc fcQWebEngineScript_runsOnSubFrames(self: pointer, ): bool {.importc: "QWebEngineScript_runsOnSubFrames".}
proc fcQWebEngineScript_setRunsOnSubFrames(self: pointer, on: bool): void {.importc: "QWebEngineScript_setRunsOnSubFrames".}
proc fcQWebEngineScript_operatorEqual(self: pointer, other: pointer): bool {.importc: "QWebEngineScript_operatorEqual".}
proc fcQWebEngineScript_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QWebEngineScript_operatorNotEqual".}
proc fcQWebEngineScript_swap(self: pointer, other: pointer): void {.importc: "QWebEngineScript_swap".}
proc fcQWebEngineScript_delete(self: pointer) {.importc: "QWebEngineScript_delete".}


func init*(T: type gen_qwebenginescript_types.QWebEngineScript, h: ptr cQWebEngineScript): gen_qwebenginescript_types.QWebEngineScript =
  T(h: h)
proc create*(T: type gen_qwebenginescript_types.QWebEngineScript, ): gen_qwebenginescript_types.QWebEngineScript =
  gen_qwebenginescript_types.QWebEngineScript.init(fcQWebEngineScript_new())

proc create*(T: type gen_qwebenginescript_types.QWebEngineScript, other: gen_qwebenginescript_types.QWebEngineScript): gen_qwebenginescript_types.QWebEngineScript =
  gen_qwebenginescript_types.QWebEngineScript.init(fcQWebEngineScript_new2(other.h))

proc operatorAssign*(self: gen_qwebenginescript_types.QWebEngineScript, other: gen_qwebenginescript_types.QWebEngineScript): void =
  fcQWebEngineScript_operatorAssign(self.h, other.h)

proc name*(self: gen_qwebenginescript_types.QWebEngineScript, ): string =
  let v_ms = fcQWebEngineScript_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setName*(self: gen_qwebenginescript_types.QWebEngineScript, name: string): void =
  fcQWebEngineScript_setName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc sourceUrl*(self: gen_qwebenginescript_types.QWebEngineScript, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineScript_sourceUrl(self.h))

proc setSourceUrl*(self: gen_qwebenginescript_types.QWebEngineScript, url: gen_qurl_types.QUrl): void =
  fcQWebEngineScript_setSourceUrl(self.h, url.h)

proc sourceCode*(self: gen_qwebenginescript_types.QWebEngineScript, ): string =
  let v_ms = fcQWebEngineScript_sourceCode(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSourceCode*(self: gen_qwebenginescript_types.QWebEngineScript, sourceCode: string): void =
  fcQWebEngineScript_setSourceCode(self.h, struct_miqt_string(data: sourceCode, len: csize_t(len(sourceCode))))

proc injectionPoint*(self: gen_qwebenginescript_types.QWebEngineScript, ): cint =
  cint(fcQWebEngineScript_injectionPoint(self.h))

proc setInjectionPoint*(self: gen_qwebenginescript_types.QWebEngineScript, injectionPoint: cint): void =
  fcQWebEngineScript_setInjectionPoint(self.h, cint(injectionPoint))

proc worldId*(self: gen_qwebenginescript_types.QWebEngineScript, ): cuint =
  fcQWebEngineScript_worldId(self.h)

proc setWorldId*(self: gen_qwebenginescript_types.QWebEngineScript, worldId: cuint): void =
  fcQWebEngineScript_setWorldId(self.h, worldId)

proc runsOnSubFrames*(self: gen_qwebenginescript_types.QWebEngineScript, ): bool =
  fcQWebEngineScript_runsOnSubFrames(self.h)

proc setRunsOnSubFrames*(self: gen_qwebenginescript_types.QWebEngineScript, on: bool): void =
  fcQWebEngineScript_setRunsOnSubFrames(self.h, on)

proc operatorEqual*(self: gen_qwebenginescript_types.QWebEngineScript, other: gen_qwebenginescript_types.QWebEngineScript): bool =
  fcQWebEngineScript_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qwebenginescript_types.QWebEngineScript, other: gen_qwebenginescript_types.QWebEngineScript): bool =
  fcQWebEngineScript_operatorNotEqual(self.h, other.h)

proc swap*(self: gen_qwebenginescript_types.QWebEngineScript, other: gen_qwebenginescript_types.QWebEngineScript): void =
  fcQWebEngineScript_swap(self.h, other.h)

proc delete*(self: gen_qwebenginescript_types.QWebEngineScript) =
  fcQWebEngineScript_delete(self.h)
