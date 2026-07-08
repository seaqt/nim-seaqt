import ../QtCore/gen_qobject_types
export gen_qobject_types

type QNetworkCookieJar* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QNetworkCookieJar, source: QNetworkCookieJar) {.error.}
proc `=sink`(dest: var QNetworkCookieJar, source: QNetworkCookieJar) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

