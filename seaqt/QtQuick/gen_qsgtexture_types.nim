import ../QtCore/gen_qobject_types
export gen_qobject_types

type QSGTexture* = object of gen_qobject_types.QObject
type QSGDynamicTexture* = object of QSGTexture
type QSGTextureNativeTexture* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Quick") & " -fPIC"
{.compile("gen_qsgtexture.cpp", cflags).}

proc fcQSGTextureNativeTexture_delete(self: pointer) {.importc: "QSGTexture__NativeTexture_delete".}
proc `=destroy`(self: var QSGTextureNativeTexture) =
  if self.owned: fcQSGTextureNativeTexture_delete(self.h)

proc `=sink`(dest: var QSGTextureNativeTexture, source: QSGTextureNativeTexture) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSGTextureNativeTexture, source: QSGTextureNativeTexture) {.error.}
proc delete*(self: sink QSGTextureNativeTexture) =
  let h = self.h
  wasMoved(self)
  fcQSGTextureNativeTexture_delete(h)

