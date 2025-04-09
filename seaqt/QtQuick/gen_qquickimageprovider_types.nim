import ../QtCore/gen_qobject_types
export gen_qobject_types

type QQuickTextureFactory* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QQuickTextureFactory, source: QQuickTextureFactory) {.error.}
proc `=sink`(dest: var QQuickTextureFactory, source: QQuickTextureFactory) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QQuickImageResponse* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QQuickImageResponse, source: QQuickImageResponse) {.error.}
proc `=sink`(dest: var QQuickImageResponse, source: QQuickImageResponse) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

import ../QtQml/gen_qqmlengine_types
export gen_qqmlengine_types

type QQuickImageProvider* = object of gen_qqmlengine_types.QQmlImageProviderBase
proc `=copy`(dest: var QQuickImageProvider, source: QQuickImageProvider) {.error.}
proc `=sink`(dest: var QQuickImageProvider, source: QQuickImageProvider) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QQuickAsyncImageProvider* = object of QQuickImageProvider
proc `=copy`(dest: var QQuickAsyncImageProvider, source: QQuickAsyncImageProvider) {.error.}
proc `=sink`(dest: var QQuickAsyncImageProvider, source: QQuickAsyncImageProvider) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

