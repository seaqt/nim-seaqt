type QPdfDocumentRenderOptions* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtpdf_pkg

{.compile("gen_qpdfdocumentrenderoptions.cpp", QtPdfCFlags).}

proc fcQPdfDocumentRenderOptions_delete(self: pointer) {.importc: "QPdfDocumentRenderOptions_delete".}
proc `=destroy`(self: var QPdfDocumentRenderOptions) =
  if self.owned: fcQPdfDocumentRenderOptions_delete(self.h)

proc `=sink`(dest: var QPdfDocumentRenderOptions, source: QPdfDocumentRenderOptions) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPdfDocumentRenderOptions, source: QPdfDocumentRenderOptions) {.error.}
proc delete*(self: sink QPdfDocumentRenderOptions) =
  let h = self.h
  wasMoved(self)
  fcQPdfDocumentRenderOptions_delete(h)

