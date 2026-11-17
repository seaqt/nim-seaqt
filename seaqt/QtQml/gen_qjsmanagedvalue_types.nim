type QJSManagedValue* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtqml_pkg

{.compile("gen_qjsmanagedvalue.cpp", QtQmlCFlags).}

proc fcQJSManagedValue_delete(self: pointer) {.importc: "QJSManagedValue_delete".}
proc `=destroy`(self: var QJSManagedValue) =
  if self.owned: fcQJSManagedValue_delete(self.h)

proc `=sink`(dest: var QJSManagedValue, source: QJSManagedValue) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJSManagedValue, source: QJSManagedValue) {.error.}
proc delete*(self: sink QJSManagedValue) =
  let h = self.h
  wasMoved(self)
  fcQJSManagedValue_delete(h)

