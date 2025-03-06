import ./gen_qdialog_types
export gen_qdialog_types

type QWizard* = object of gen_qdialog_types.QDialog
import ./gen_qwidget_types
export gen_qwidget_types

type QWizardPage* = object of gen_qwidget_types.QWidget
