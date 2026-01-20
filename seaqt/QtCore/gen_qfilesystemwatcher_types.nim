import ./gen_qobject_types
export gen_qobject_types

type QFileSystemWatcher* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QFileSystemWatcher, source: QFileSystemWatcher) {.error.}
proc `=sink`(dest: var QFileSystemWatcher, source: QFileSystemWatcher) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

