import ./gen_qdialog_types
export gen_qdialog_types

type QMessageBox* = object of gen_qdialog_types.QDialog
