import ../QtCore/gen_qobject_types
export gen_qobject_types

type QQuickTextureFactory* = object of gen_qobject_types.QObject
type QQuickImageResponse* = object of gen_qobject_types.QObject
import ../QtQml/gen_qqmlengine_types
export gen_qqmlengine_types

type QQuickImageProvider* = object of gen_qqmlengine_types.QQmlImageProviderBase
type QQuickAsyncImageProvider* = object of QQuickImageProvider
