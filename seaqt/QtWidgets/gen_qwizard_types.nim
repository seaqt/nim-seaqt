import ./gen_qdialog_types
export gen_qdialog_types

type QWizard* = object of gen_qdialog_types.QDialog
proc `=copy`(dest: var QWizard, source: QWizard) {.error.}
proc `=sink`(dest: var QWizard, source: QWizard) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

import ./gen_qwidget_types
export gen_qwidget_types

type QWizardPage* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QWizardPage, source: QWizardPage) {.error.}
proc `=sink`(dest: var QWizardPage, source: QWizardPage) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

