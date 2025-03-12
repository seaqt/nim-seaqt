#define WORKAROUND_INNER_CLASS_DEFINITION_QAccessible__State
#include <QAccessibleActionInterface>
#include <QAccessibleEditableTextInterface>
#include <QAccessibleEvent>
#include <QAccessibleHyperlinkInterface>
#include <QAccessibleImageInterface>
#include <QAccessibleInterface>
#include <QAccessibleStateChangeEvent>
#include <QAccessibleTableCellInterface>
#include <QAccessibleTableInterface>
#include <QAccessibleTableModelChangeEvent>
#include <QAccessibleTextCursorEvent>
#include <QAccessibleTextInsertEvent>
#include <QAccessibleTextInterface>
#include <QAccessibleTextRemoveEvent>
#include <QAccessibleTextSelectionEvent>
#include <QAccessibleTextUpdateEvent>
#include <QAccessibleValueChangeEvent>
#include <QAccessibleValueInterface>
#include <QColor>
#include <QList>
#include <QObject>
#include <QPair>
#include <QPoint>
#include <QRect>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <QWindow>
#include <qaccessible.h>
#include "gen_qaccessible.h"
bool QAccessibleInterface_isValid(const QAccessibleInterface* self) {
	return self->isValid();
}

QObject* QAccessibleInterface_object(const QAccessibleInterface* self) {
	return self->object();
}

QWindow* QAccessibleInterface_window(const QAccessibleInterface* self) {
	return self->window();
}

struct miqt_array /* of struct miqt_map  tuple of QAccessibleInterface* and int   */  QAccessibleInterface_relations(const QAccessibleInterface* self, int match) {
	QList<QPair<QAccessibleInterface *, QAccessible::Relation>> _ret = self->relations(static_cast<QAccessible::Relation>(match));
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_map /* tuple of QAccessibleInterface* and int */ * _arr = static_cast<struct miqt_map /* tuple of QAccessibleInterface* and int */ *>(malloc(sizeof(struct miqt_map /* tuple of QAccessibleInterface* and int */ ) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QPair<QAccessibleInterface*, QFlags<QAccessible::RelationFlag>> _lv_ret = _ret[i];
		// Convert QPair<> from C++ memory to manually-managed C memory
		QAccessibleInterface** _lv_first_arr = static_cast<QAccessibleInterface**>(malloc(sizeof(QAccessibleInterface*)));
		int* _lv_second_arr = static_cast<int*>(malloc(sizeof(int)));
		_lv_first_arr[0] = _lv_ret.first;
		QFlags<QAccessible::RelationFlag> _lv_second_ret = _lv_ret.second;
		_lv_second_arr[0] = static_cast<int>(_lv_second_ret);
		struct miqt_map _lv_out;
		_lv_out.len = 1;
		_lv_out.keys = static_cast<void*>(_lv_first_arr);
		_lv_out.values = static_cast<void*>(_lv_second_arr);
		_arr[i] = _lv_out;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QAccessibleInterface* QAccessibleInterface_focusChild(const QAccessibleInterface* self) {
	return self->focusChild();
}

QAccessibleInterface* QAccessibleInterface_childAt(const QAccessibleInterface* self, int x, int y) {
	return self->childAt(static_cast<int>(x), static_cast<int>(y));
}

QAccessibleInterface* QAccessibleInterface_parent(const QAccessibleInterface* self) {
	return self->parent();
}

QAccessibleInterface* QAccessibleInterface_child(const QAccessibleInterface* self, int index) {
	return self->child(static_cast<int>(index));
}

int QAccessibleInterface_childCount(const QAccessibleInterface* self) {
	return self->childCount();
}

int QAccessibleInterface_indexOfChild(const QAccessibleInterface* self, QAccessibleInterface* param1) {
	return self->indexOfChild(param1);
}

struct miqt_string QAccessibleInterface_text(const QAccessibleInterface* self, int t) {
	QString _ret = self->text(static_cast<QAccessible::Text>(t));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAccessibleInterface_setText(QAccessibleInterface* self, int t, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(static_cast<QAccessible::Text>(t), text_QString);
}

QRect* QAccessibleInterface_rect(const QAccessibleInterface* self) {
	return new QRect(self->rect());
}

int QAccessibleInterface_role(const QAccessibleInterface* self) {
	QAccessible::Role _ret = self->role();
	return static_cast<int>(_ret);
}

QAccessible__State* QAccessibleInterface_state(const QAccessibleInterface* self) {
	return new QAccessible::State(self->state());
}

QColor* QAccessibleInterface_foregroundColor(const QAccessibleInterface* self) {
	return new QColor(self->foregroundColor());
}

QColor* QAccessibleInterface_backgroundColor(const QAccessibleInterface* self) {
	return new QColor(self->backgroundColor());
}

QAccessibleTextInterface* QAccessibleInterface_textInterface(QAccessibleInterface* self) {
	return self->textInterface();
}

QAccessibleEditableTextInterface* QAccessibleInterface_editableTextInterface(QAccessibleInterface* self) {
	return self->editableTextInterface();
}

QAccessibleValueInterface* QAccessibleInterface_valueInterface(QAccessibleInterface* self) {
	return self->valueInterface();
}

QAccessibleActionInterface* QAccessibleInterface_actionInterface(QAccessibleInterface* self) {
	return self->actionInterface();
}

QAccessibleImageInterface* QAccessibleInterface_imageInterface(QAccessibleInterface* self) {
	return self->imageInterface();
}

QAccessibleTableInterface* QAccessibleInterface_tableInterface(QAccessibleInterface* self) {
	return self->tableInterface();
}

QAccessibleTableCellInterface* QAccessibleInterface_tableCellInterface(QAccessibleInterface* self) {
	return self->tableCellInterface();
}

QAccessibleHyperlinkInterface* QAccessibleInterface_hyperlinkInterface(QAccessibleInterface* self) {
	return self->hyperlinkInterface();
}

void QAccessibleInterface_virtualHook(QAccessibleInterface* self, int id, void* data) {
	self->virtual_hook(static_cast<int>(id), data);
}

void* QAccessibleInterface_interfaceCast(QAccessibleInterface* self, int param1) {
	return self->interface_cast(static_cast<QAccessible::InterfaceType>(param1));
}

void QAccessibleTextInterface_selection(const QAccessibleTextInterface* self, int selectionIndex, int* startOffset, int* endOffset) {
	self->selection(static_cast<int>(selectionIndex), static_cast<int*>(startOffset), static_cast<int*>(endOffset));
}

int QAccessibleTextInterface_selectionCount(const QAccessibleTextInterface* self) {
	return self->selectionCount();
}

void QAccessibleTextInterface_addSelection(QAccessibleTextInterface* self, int startOffset, int endOffset) {
	self->addSelection(static_cast<int>(startOffset), static_cast<int>(endOffset));
}

void QAccessibleTextInterface_removeSelection(QAccessibleTextInterface* self, int selectionIndex) {
	self->removeSelection(static_cast<int>(selectionIndex));
}

void QAccessibleTextInterface_setSelection(QAccessibleTextInterface* self, int selectionIndex, int startOffset, int endOffset) {
	self->setSelection(static_cast<int>(selectionIndex), static_cast<int>(startOffset), static_cast<int>(endOffset));
}

int QAccessibleTextInterface_cursorPosition(const QAccessibleTextInterface* self) {
	return self->cursorPosition();
}

void QAccessibleTextInterface_setCursorPosition(QAccessibleTextInterface* self, int position) {
	self->setCursorPosition(static_cast<int>(position));
}

struct miqt_string QAccessibleTextInterface_text(const QAccessibleTextInterface* self, int startOffset, int endOffset) {
	QString _ret = self->text(static_cast<int>(startOffset), static_cast<int>(endOffset));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleTextInterface_textBeforeOffset(const QAccessibleTextInterface* self, int offset, int boundaryType, int* startOffset, int* endOffset) {
	QString _ret = self->textBeforeOffset(static_cast<int>(offset), static_cast<QAccessible::TextBoundaryType>(boundaryType), static_cast<int*>(startOffset), static_cast<int*>(endOffset));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleTextInterface_textAfterOffset(const QAccessibleTextInterface* self, int offset, int boundaryType, int* startOffset, int* endOffset) {
	QString _ret = self->textAfterOffset(static_cast<int>(offset), static_cast<QAccessible::TextBoundaryType>(boundaryType), static_cast<int*>(startOffset), static_cast<int*>(endOffset));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleTextInterface_textAtOffset(const QAccessibleTextInterface* self, int offset, int boundaryType, int* startOffset, int* endOffset) {
	QString _ret = self->textAtOffset(static_cast<int>(offset), static_cast<QAccessible::TextBoundaryType>(boundaryType), static_cast<int*>(startOffset), static_cast<int*>(endOffset));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAccessibleTextInterface_characterCount(const QAccessibleTextInterface* self) {
	return self->characterCount();
}

QRect* QAccessibleTextInterface_characterRect(const QAccessibleTextInterface* self, int offset) {
	return new QRect(self->characterRect(static_cast<int>(offset)));
}

int QAccessibleTextInterface_offsetAtPoint(const QAccessibleTextInterface* self, QPoint* point) {
	return self->offsetAtPoint(*point);
}

void QAccessibleTextInterface_scrollToSubstring(QAccessibleTextInterface* self, int startIndex, int endIndex) {
	self->scrollToSubstring(static_cast<int>(startIndex), static_cast<int>(endIndex));
}

struct miqt_string QAccessibleTextInterface_attributes(const QAccessibleTextInterface* self, int offset, int* startOffset, int* endOffset) {
	QString _ret = self->attributes(static_cast<int>(offset), static_cast<int*>(startOffset), static_cast<int*>(endOffset));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAccessibleTextInterface_operatorAssign(QAccessibleTextInterface* self, QAccessibleTextInterface* param1) {
	self->operator=(*param1);
}

void QAccessibleTextInterface_delete(QAccessibleTextInterface* self) {
	delete self;
}

void QAccessibleEditableTextInterface_deleteText(QAccessibleEditableTextInterface* self, int startOffset, int endOffset) {
	self->deleteText(static_cast<int>(startOffset), static_cast<int>(endOffset));
}

void QAccessibleEditableTextInterface_insertText(QAccessibleEditableTextInterface* self, int offset, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->insertText(static_cast<int>(offset), text_QString);
}

void QAccessibleEditableTextInterface_replaceText(QAccessibleEditableTextInterface* self, int startOffset, int endOffset, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->replaceText(static_cast<int>(startOffset), static_cast<int>(endOffset), text_QString);
}

void QAccessibleEditableTextInterface_operatorAssign(QAccessibleEditableTextInterface* self, QAccessibleEditableTextInterface* param1) {
	self->operator=(*param1);
}

void QAccessibleEditableTextInterface_delete(QAccessibleEditableTextInterface* self) {
	delete self;
}

QVariant* QAccessibleValueInterface_currentValue(const QAccessibleValueInterface* self) {
	return new QVariant(self->currentValue());
}

void QAccessibleValueInterface_setCurrentValue(QAccessibleValueInterface* self, QVariant* value) {
	self->setCurrentValue(*value);
}

QVariant* QAccessibleValueInterface_maximumValue(const QAccessibleValueInterface* self) {
	return new QVariant(self->maximumValue());
}

QVariant* QAccessibleValueInterface_minimumValue(const QAccessibleValueInterface* self) {
	return new QVariant(self->minimumValue());
}

QVariant* QAccessibleValueInterface_minimumStepSize(const QAccessibleValueInterface* self) {
	return new QVariant(self->minimumStepSize());
}

void QAccessibleValueInterface_operatorAssign(QAccessibleValueInterface* self, QAccessibleValueInterface* param1) {
	self->operator=(*param1);
}

void QAccessibleValueInterface_delete(QAccessibleValueInterface* self) {
	delete self;
}

bool QAccessibleTableCellInterface_isSelected(const QAccessibleTableCellInterface* self) {
	return self->isSelected();
}

struct miqt_array /* of QAccessibleInterface* */  QAccessibleTableCellInterface_columnHeaderCells(const QAccessibleTableCellInterface* self) {
	QList<QAccessibleInterface *> _ret = self->columnHeaderCells();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAccessibleInterface** _arr = static_cast<QAccessibleInterface**>(malloc(sizeof(QAccessibleInterface*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QAccessibleInterface* */  QAccessibleTableCellInterface_rowHeaderCells(const QAccessibleTableCellInterface* self) {
	QList<QAccessibleInterface *> _ret = self->rowHeaderCells();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAccessibleInterface** _arr = static_cast<QAccessibleInterface**>(malloc(sizeof(QAccessibleInterface*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QAccessibleTableCellInterface_columnIndex(const QAccessibleTableCellInterface* self) {
	return self->columnIndex();
}

int QAccessibleTableCellInterface_rowIndex(const QAccessibleTableCellInterface* self) {
	return self->rowIndex();
}

int QAccessibleTableCellInterface_columnExtent(const QAccessibleTableCellInterface* self) {
	return self->columnExtent();
}

int QAccessibleTableCellInterface_rowExtent(const QAccessibleTableCellInterface* self) {
	return self->rowExtent();
}

QAccessibleInterface* QAccessibleTableCellInterface_table(const QAccessibleTableCellInterface* self) {
	return self->table();
}

void QAccessibleTableCellInterface_operatorAssign(QAccessibleTableCellInterface* self, QAccessibleTableCellInterface* param1) {
	self->operator=(*param1);
}

void QAccessibleTableCellInterface_delete(QAccessibleTableCellInterface* self) {
	delete self;
}

QAccessibleInterface* QAccessibleTableInterface_caption(const QAccessibleTableInterface* self) {
	return self->caption();
}

QAccessibleInterface* QAccessibleTableInterface_summary(const QAccessibleTableInterface* self) {
	return self->summary();
}

QAccessibleInterface* QAccessibleTableInterface_cellAt(const QAccessibleTableInterface* self, int row, int column) {
	return self->cellAt(static_cast<int>(row), static_cast<int>(column));
}

int QAccessibleTableInterface_selectedCellCount(const QAccessibleTableInterface* self) {
	return self->selectedCellCount();
}

struct miqt_array /* of QAccessibleInterface* */  QAccessibleTableInterface_selectedCells(const QAccessibleTableInterface* self) {
	QList<QAccessibleInterface *> _ret = self->selectedCells();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAccessibleInterface** _arr = static_cast<QAccessibleInterface**>(malloc(sizeof(QAccessibleInterface*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_string QAccessibleTableInterface_columnDescription(const QAccessibleTableInterface* self, int column) {
	QString _ret = self->columnDescription(static_cast<int>(column));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleTableInterface_rowDescription(const QAccessibleTableInterface* self, int row) {
	QString _ret = self->rowDescription(static_cast<int>(row));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAccessibleTableInterface_selectedColumnCount(const QAccessibleTableInterface* self) {
	return self->selectedColumnCount();
}

int QAccessibleTableInterface_selectedRowCount(const QAccessibleTableInterface* self) {
	return self->selectedRowCount();
}

int QAccessibleTableInterface_columnCount(const QAccessibleTableInterface* self) {
	return self->columnCount();
}

int QAccessibleTableInterface_rowCount(const QAccessibleTableInterface* self) {
	return self->rowCount();
}

struct miqt_array /* of int */  QAccessibleTableInterface_selectedColumns(const QAccessibleTableInterface* self) {
	QList<int> _ret = self->selectedColumns();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of int */  QAccessibleTableInterface_selectedRows(const QAccessibleTableInterface* self) {
	QList<int> _ret = self->selectedRows();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QAccessibleTableInterface_isColumnSelected(const QAccessibleTableInterface* self, int column) {
	return self->isColumnSelected(static_cast<int>(column));
}

bool QAccessibleTableInterface_isRowSelected(const QAccessibleTableInterface* self, int row) {
	return self->isRowSelected(static_cast<int>(row));
}

bool QAccessibleTableInterface_selectRow(QAccessibleTableInterface* self, int row) {
	return self->selectRow(static_cast<int>(row));
}

bool QAccessibleTableInterface_selectColumn(QAccessibleTableInterface* self, int column) {
	return self->selectColumn(static_cast<int>(column));
}

bool QAccessibleTableInterface_unselectRow(QAccessibleTableInterface* self, int row) {
	return self->unselectRow(static_cast<int>(row));
}

bool QAccessibleTableInterface_unselectColumn(QAccessibleTableInterface* self, int column) {
	return self->unselectColumn(static_cast<int>(column));
}

void QAccessibleTableInterface_modelChange(QAccessibleTableInterface* self, QAccessibleTableModelChangeEvent* event) {
	self->modelChange(event);
}

void QAccessibleTableInterface_delete(QAccessibleTableInterface* self) {
	delete self;
}

struct miqt_string QAccessibleActionInterface_tr(const char* sourceText) {
	QString _ret = QAccessibleActionInterface::tr(sourceText);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of struct miqt_string */  QAccessibleActionInterface_actionNames(const QAccessibleActionInterface* self) {
	QStringList _ret = self->actionNames();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_string QAccessibleActionInterface_localizedActionName(const QAccessibleActionInterface* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString _ret = self->localizedActionName(name_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleActionInterface_localizedActionDescription(const QAccessibleActionInterface* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString _ret = self->localizedActionDescription(name_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAccessibleActionInterface_doAction(QAccessibleActionInterface* self, struct miqt_string actionName) {
	QString actionName_QString = QString::fromUtf8(actionName.data, actionName.len);
	self->doAction(actionName_QString);
}

struct miqt_array /* of struct miqt_string */  QAccessibleActionInterface_keyBindingsForAction(const QAccessibleActionInterface* self, struct miqt_string actionName) {
	QString actionName_QString = QString::fromUtf8(actionName.data, actionName.len);
	QStringList _ret = self->keyBindingsForAction(actionName_QString);
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_string QAccessibleActionInterface_pressAction() {
	const QString _ret = QAccessibleActionInterface::pressAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleActionInterface_increaseAction() {
	const QString _ret = QAccessibleActionInterface::increaseAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleActionInterface_decreaseAction() {
	const QString _ret = QAccessibleActionInterface::decreaseAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleActionInterface_showMenuAction() {
	const QString _ret = QAccessibleActionInterface::showMenuAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleActionInterface_setFocusAction() {
	const QString _ret = QAccessibleActionInterface::setFocusAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleActionInterface_toggleAction() {
	const QString _ret = QAccessibleActionInterface::toggleAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleActionInterface_scrollLeftAction() {
	QString _ret = QAccessibleActionInterface::scrollLeftAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleActionInterface_scrollRightAction() {
	QString _ret = QAccessibleActionInterface::scrollRightAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleActionInterface_scrollUpAction() {
	QString _ret = QAccessibleActionInterface::scrollUpAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleActionInterface_scrollDownAction() {
	QString _ret = QAccessibleActionInterface::scrollDownAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleActionInterface_nextPageAction() {
	QString _ret = QAccessibleActionInterface::nextPageAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleActionInterface_previousPageAction() {
	QString _ret = QAccessibleActionInterface::previousPageAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAccessibleActionInterface_operatorAssign(QAccessibleActionInterface* self, QAccessibleActionInterface* param1) {
	self->operator=(*param1);
}

struct miqt_string QAccessibleActionInterface_tr2(const char* sourceText, const char* disambiguation) {
	QString _ret = QAccessibleActionInterface::tr(sourceText, disambiguation);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleActionInterface_tr3(const char* sourceText, const char* disambiguation, int n) {
	QString _ret = QAccessibleActionInterface::tr(sourceText, disambiguation, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAccessibleActionInterface_delete(QAccessibleActionInterface* self) {
	delete self;
}

struct miqt_string QAccessibleImageInterface_imageDescription(const QAccessibleImageInterface* self) {
	QString _ret = self->imageDescription();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QAccessibleImageInterface_imageSize(const QAccessibleImageInterface* self) {
	return new QSize(self->imageSize());
}

QPoint* QAccessibleImageInterface_imagePosition(const QAccessibleImageInterface* self) {
	return new QPoint(self->imagePosition());
}

void QAccessibleImageInterface_operatorAssign(QAccessibleImageInterface* self, QAccessibleImageInterface* param1) {
	self->operator=(*param1);
}

void QAccessibleImageInterface_delete(QAccessibleImageInterface* self) {
	delete self;
}

struct miqt_string QAccessibleHyperlinkInterface_anchor(const QAccessibleHyperlinkInterface* self) {
	QString _ret = self->anchor();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleHyperlinkInterface_anchorTarget(const QAccessibleHyperlinkInterface* self) {
	QString _ret = self->anchorTarget();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAccessibleHyperlinkInterface_startIndex(const QAccessibleHyperlinkInterface* self) {
	return self->startIndex();
}

int QAccessibleHyperlinkInterface_endIndex(const QAccessibleHyperlinkInterface* self) {
	return self->endIndex();
}

bool QAccessibleHyperlinkInterface_isValid(const QAccessibleHyperlinkInterface* self) {
	return self->isValid();
}

void QAccessibleHyperlinkInterface_operatorAssign(QAccessibleHyperlinkInterface* self, QAccessibleHyperlinkInterface* param1) {
	self->operator=(*param1);
}

void QAccessibleHyperlinkInterface_delete(QAccessibleHyperlinkInterface* self) {
	delete self;
}

class VirtualQAccessibleEvent final : public QAccessibleEvent {
	const QAccessibleEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QAccessibleEvent_VTable* QAccessibleEvent_vtbl(const VirtualQAccessibleEvent* self);
	friend void* QAccessibleEvent_vdata(const VirtualQAccessibleEvent* self);
	friend void QAccessibleEvent_setVdata(VirtualQAccessibleEvent* self, void* vdata);

	VirtualQAccessibleEvent(const QAccessibleEvent_VTable* vtbl, void* vdata, QObject* obj, QAccessible::Event typ): QAccessibleEvent(obj, typ), vtbl(vtbl), vdata(vdata) {}
	VirtualQAccessibleEvent(const QAccessibleEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, QAccessible::Event typ): QAccessibleEvent(iface, typ), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAccessibleEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleEvent::accessibleInterface();
		}


		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);

		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleEvent_virtualbase_accessibleInterface(const VirtualQAccessibleEvent* self);

};

VirtualQAccessibleEvent* QAccessibleEvent_new(const QAccessibleEvent_VTable* vtbl, void* vdata, QObject* obj, int typ) {
	return new VirtualQAccessibleEvent(vtbl, vdata, obj, static_cast<QAccessible::Event>(typ));
}

VirtualQAccessibleEvent* QAccessibleEvent_new2(const QAccessibleEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, int typ) {
	return new VirtualQAccessibleEvent(vtbl, vdata, iface, static_cast<QAccessible::Event>(typ));
}

int QAccessibleEvent_type(const QAccessibleEvent* self) {
	QAccessible::Event _ret = self->type();
	return static_cast<int>(_ret);
}

QObject* QAccessibleEvent_object(const QAccessibleEvent* self) {
	return self->object();
}

unsigned int QAccessibleEvent_uniqueId(const QAccessibleEvent* self) {
	QAccessible::Id _ret = self->uniqueId();
	return static_cast<unsigned int>(_ret);
}

void QAccessibleEvent_setChild(QAccessibleEvent* self, int chld) {
	self->setChild(static_cast<int>(chld));
}

int QAccessibleEvent_child(const QAccessibleEvent* self) {
	return self->child();
}

QAccessibleInterface* QAccessibleEvent_accessibleInterface(const QAccessibleEvent* self) {
	return self->accessibleInterface();
}

QAccessibleInterface* QAccessibleEvent_virtualbase_accessibleInterface(const VirtualQAccessibleEvent* self) {

	return self->QAccessibleEvent::accessibleInterface();
}

const QAccessibleEvent_VTable* QAccessibleEvent_vtbl(const VirtualQAccessibleEvent* self) { return self->vtbl; }
void* QAccessibleEvent_vdata(const VirtualQAccessibleEvent* self) { return self->vdata; }
void QAccessibleEvent_setVdata(VirtualQAccessibleEvent* self, void* vdata) { self->vdata = vdata; }

void QAccessibleEvent_delete(QAccessibleEvent* self) {
	delete self;
}

class VirtualQAccessibleStateChangeEvent final : public QAccessibleStateChangeEvent {
	const QAccessibleStateChangeEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QAccessibleStateChangeEvent_VTable* QAccessibleStateChangeEvent_vtbl(const VirtualQAccessibleStateChangeEvent* self);
	friend void* QAccessibleStateChangeEvent_vdata(const VirtualQAccessibleStateChangeEvent* self);
	friend void QAccessibleStateChangeEvent_setVdata(VirtualQAccessibleStateChangeEvent* self, void* vdata);

	VirtualQAccessibleStateChangeEvent(const QAccessibleStateChangeEvent_VTable* vtbl, void* vdata, QObject* obj, QAccessible::State state): QAccessibleStateChangeEvent(obj, state), vtbl(vtbl), vdata(vdata) {}
	VirtualQAccessibleStateChangeEvent(const QAccessibleStateChangeEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, QAccessible::State state): QAccessibleStateChangeEvent(iface, state), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAccessibleStateChangeEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleStateChangeEvent::accessibleInterface();
		}


		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);

		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleStateChangeEvent_virtualbase_accessibleInterface(const VirtualQAccessibleStateChangeEvent* self);

};

VirtualQAccessibleStateChangeEvent* QAccessibleStateChangeEvent_new(const QAccessibleStateChangeEvent_VTable* vtbl, void* vdata, QObject* obj, QAccessible__State* state) {
	return new VirtualQAccessibleStateChangeEvent(vtbl, vdata, obj, *state);
}

VirtualQAccessibleStateChangeEvent* QAccessibleStateChangeEvent_new2(const QAccessibleStateChangeEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, QAccessible__State* state) {
	return new VirtualQAccessibleStateChangeEvent(vtbl, vdata, iface, *state);
}

void QAccessibleStateChangeEvent_virtbase(QAccessibleStateChangeEvent* src, QAccessibleEvent** outptr_QAccessibleEvent) {
	*outptr_QAccessibleEvent = static_cast<QAccessibleEvent*>(src);
}

QAccessible__State* QAccessibleStateChangeEvent_changedStates(const QAccessibleStateChangeEvent* self) {
	return new QAccessible::State(self->changedStates());
}

QAccessibleInterface* QAccessibleStateChangeEvent_virtualbase_accessibleInterface(const VirtualQAccessibleStateChangeEvent* self) {

	return self->QAccessibleStateChangeEvent::accessibleInterface();
}

const QAccessibleStateChangeEvent_VTable* QAccessibleStateChangeEvent_vtbl(const VirtualQAccessibleStateChangeEvent* self) { return self->vtbl; }
void* QAccessibleStateChangeEvent_vdata(const VirtualQAccessibleStateChangeEvent* self) { return self->vdata; }
void QAccessibleStateChangeEvent_setVdata(VirtualQAccessibleStateChangeEvent* self, void* vdata) { self->vdata = vdata; }

void QAccessibleStateChangeEvent_delete(QAccessibleStateChangeEvent* self) {
	delete self;
}

class VirtualQAccessibleTextCursorEvent final : public QAccessibleTextCursorEvent {
	const QAccessibleTextCursorEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QAccessibleTextCursorEvent_VTable* QAccessibleTextCursorEvent_vtbl(const VirtualQAccessibleTextCursorEvent* self);
	friend void* QAccessibleTextCursorEvent_vdata(const VirtualQAccessibleTextCursorEvent* self);
	friend void QAccessibleTextCursorEvent_setVdata(VirtualQAccessibleTextCursorEvent* self, void* vdata);

	VirtualQAccessibleTextCursorEvent(const QAccessibleTextCursorEvent_VTable* vtbl, void* vdata, QObject* obj, int cursorPos): QAccessibleTextCursorEvent(obj, cursorPos), vtbl(vtbl), vdata(vdata) {}
	VirtualQAccessibleTextCursorEvent(const QAccessibleTextCursorEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, int cursorPos): QAccessibleTextCursorEvent(iface, cursorPos), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAccessibleTextCursorEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleTextCursorEvent::accessibleInterface();
		}


		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);

		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleTextCursorEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextCursorEvent* self);

};

VirtualQAccessibleTextCursorEvent* QAccessibleTextCursorEvent_new(const QAccessibleTextCursorEvent_VTable* vtbl, void* vdata, QObject* obj, int cursorPos) {
	return new VirtualQAccessibleTextCursorEvent(vtbl, vdata, obj, static_cast<int>(cursorPos));
}

VirtualQAccessibleTextCursorEvent* QAccessibleTextCursorEvent_new2(const QAccessibleTextCursorEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, int cursorPos) {
	return new VirtualQAccessibleTextCursorEvent(vtbl, vdata, iface, static_cast<int>(cursorPos));
}

void QAccessibleTextCursorEvent_virtbase(QAccessibleTextCursorEvent* src, QAccessibleEvent** outptr_QAccessibleEvent) {
	*outptr_QAccessibleEvent = static_cast<QAccessibleEvent*>(src);
}

void QAccessibleTextCursorEvent_setCursorPosition(QAccessibleTextCursorEvent* self, int position) {
	self->setCursorPosition(static_cast<int>(position));
}

int QAccessibleTextCursorEvent_cursorPosition(const QAccessibleTextCursorEvent* self) {
	return self->cursorPosition();
}

QAccessibleInterface* QAccessibleTextCursorEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextCursorEvent* self) {

	return self->QAccessibleTextCursorEvent::accessibleInterface();
}

const QAccessibleTextCursorEvent_VTable* QAccessibleTextCursorEvent_vtbl(const VirtualQAccessibleTextCursorEvent* self) { return self->vtbl; }
void* QAccessibleTextCursorEvent_vdata(const VirtualQAccessibleTextCursorEvent* self) { return self->vdata; }
void QAccessibleTextCursorEvent_setVdata(VirtualQAccessibleTextCursorEvent* self, void* vdata) { self->vdata = vdata; }

void QAccessibleTextCursorEvent_delete(QAccessibleTextCursorEvent* self) {
	delete self;
}

class VirtualQAccessibleTextSelectionEvent final : public QAccessibleTextSelectionEvent {
	const QAccessibleTextSelectionEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QAccessibleTextSelectionEvent_VTable* QAccessibleTextSelectionEvent_vtbl(const VirtualQAccessibleTextSelectionEvent* self);
	friend void* QAccessibleTextSelectionEvent_vdata(const VirtualQAccessibleTextSelectionEvent* self);
	friend void QAccessibleTextSelectionEvent_setVdata(VirtualQAccessibleTextSelectionEvent* self, void* vdata);

	VirtualQAccessibleTextSelectionEvent(const QAccessibleTextSelectionEvent_VTable* vtbl, void* vdata, QObject* obj, int start, int end): QAccessibleTextSelectionEvent(obj, start, end), vtbl(vtbl), vdata(vdata) {}
	VirtualQAccessibleTextSelectionEvent(const QAccessibleTextSelectionEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, int start, int end): QAccessibleTextSelectionEvent(iface, start, end), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAccessibleTextSelectionEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleTextSelectionEvent::accessibleInterface();
		}


		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);

		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleTextSelectionEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextSelectionEvent* self);

};

VirtualQAccessibleTextSelectionEvent* QAccessibleTextSelectionEvent_new(const QAccessibleTextSelectionEvent_VTable* vtbl, void* vdata, QObject* obj, int start, int end) {
	return new VirtualQAccessibleTextSelectionEvent(vtbl, vdata, obj, static_cast<int>(start), static_cast<int>(end));
}

VirtualQAccessibleTextSelectionEvent* QAccessibleTextSelectionEvent_new2(const QAccessibleTextSelectionEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, int start, int end) {
	return new VirtualQAccessibleTextSelectionEvent(vtbl, vdata, iface, static_cast<int>(start), static_cast<int>(end));
}

void QAccessibleTextSelectionEvent_virtbase(QAccessibleTextSelectionEvent* src, QAccessibleTextCursorEvent** outptr_QAccessibleTextCursorEvent) {
	*outptr_QAccessibleTextCursorEvent = static_cast<QAccessibleTextCursorEvent*>(src);
}

void QAccessibleTextSelectionEvent_setSelection(QAccessibleTextSelectionEvent* self, int start, int end) {
	self->setSelection(static_cast<int>(start), static_cast<int>(end));
}

int QAccessibleTextSelectionEvent_selectionStart(const QAccessibleTextSelectionEvent* self) {
	return self->selectionStart();
}

int QAccessibleTextSelectionEvent_selectionEnd(const QAccessibleTextSelectionEvent* self) {
	return self->selectionEnd();
}

QAccessibleInterface* QAccessibleTextSelectionEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextSelectionEvent* self) {

	return self->QAccessibleTextSelectionEvent::accessibleInterface();
}

const QAccessibleTextSelectionEvent_VTable* QAccessibleTextSelectionEvent_vtbl(const VirtualQAccessibleTextSelectionEvent* self) { return self->vtbl; }
void* QAccessibleTextSelectionEvent_vdata(const VirtualQAccessibleTextSelectionEvent* self) { return self->vdata; }
void QAccessibleTextSelectionEvent_setVdata(VirtualQAccessibleTextSelectionEvent* self, void* vdata) { self->vdata = vdata; }

void QAccessibleTextSelectionEvent_delete(QAccessibleTextSelectionEvent* self) {
	delete self;
}

class VirtualQAccessibleTextInsertEvent final : public QAccessibleTextInsertEvent {
	const QAccessibleTextInsertEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QAccessibleTextInsertEvent_VTable* QAccessibleTextInsertEvent_vtbl(const VirtualQAccessibleTextInsertEvent* self);
	friend void* QAccessibleTextInsertEvent_vdata(const VirtualQAccessibleTextInsertEvent* self);
	friend void QAccessibleTextInsertEvent_setVdata(VirtualQAccessibleTextInsertEvent* self, void* vdata);

	VirtualQAccessibleTextInsertEvent(const QAccessibleTextInsertEvent_VTable* vtbl, void* vdata, QObject* obj, int position, const QString& text): QAccessibleTextInsertEvent(obj, position, text), vtbl(vtbl), vdata(vdata) {}
	VirtualQAccessibleTextInsertEvent(const QAccessibleTextInsertEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, int position, const QString& text): QAccessibleTextInsertEvent(iface, position, text), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAccessibleTextInsertEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleTextInsertEvent::accessibleInterface();
		}


		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);

		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleTextInsertEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextInsertEvent* self);

};

VirtualQAccessibleTextInsertEvent* QAccessibleTextInsertEvent_new(const QAccessibleTextInsertEvent_VTable* vtbl, void* vdata, QObject* obj, int position, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQAccessibleTextInsertEvent(vtbl, vdata, obj, static_cast<int>(position), text_QString);
}

VirtualQAccessibleTextInsertEvent* QAccessibleTextInsertEvent_new2(const QAccessibleTextInsertEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, int position, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQAccessibleTextInsertEvent(vtbl, vdata, iface, static_cast<int>(position), text_QString);
}

void QAccessibleTextInsertEvent_virtbase(QAccessibleTextInsertEvent* src, QAccessibleTextCursorEvent** outptr_QAccessibleTextCursorEvent) {
	*outptr_QAccessibleTextCursorEvent = static_cast<QAccessibleTextCursorEvent*>(src);
}

struct miqt_string QAccessibleTextInsertEvent_textInserted(const QAccessibleTextInsertEvent* self) {
	QString _ret = self->textInserted();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAccessibleTextInsertEvent_changePosition(const QAccessibleTextInsertEvent* self) {
	return self->changePosition();
}

QAccessibleInterface* QAccessibleTextInsertEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextInsertEvent* self) {

	return self->QAccessibleTextInsertEvent::accessibleInterface();
}

const QAccessibleTextInsertEvent_VTable* QAccessibleTextInsertEvent_vtbl(const VirtualQAccessibleTextInsertEvent* self) { return self->vtbl; }
void* QAccessibleTextInsertEvent_vdata(const VirtualQAccessibleTextInsertEvent* self) { return self->vdata; }
void QAccessibleTextInsertEvent_setVdata(VirtualQAccessibleTextInsertEvent* self, void* vdata) { self->vdata = vdata; }

void QAccessibleTextInsertEvent_delete(QAccessibleTextInsertEvent* self) {
	delete self;
}

class VirtualQAccessibleTextRemoveEvent final : public QAccessibleTextRemoveEvent {
	const QAccessibleTextRemoveEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QAccessibleTextRemoveEvent_VTable* QAccessibleTextRemoveEvent_vtbl(const VirtualQAccessibleTextRemoveEvent* self);
	friend void* QAccessibleTextRemoveEvent_vdata(const VirtualQAccessibleTextRemoveEvent* self);
	friend void QAccessibleTextRemoveEvent_setVdata(VirtualQAccessibleTextRemoveEvent* self, void* vdata);

	VirtualQAccessibleTextRemoveEvent(const QAccessibleTextRemoveEvent_VTable* vtbl, void* vdata, QObject* obj, int position, const QString& text): QAccessibleTextRemoveEvent(obj, position, text), vtbl(vtbl), vdata(vdata) {}
	VirtualQAccessibleTextRemoveEvent(const QAccessibleTextRemoveEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, int position, const QString& text): QAccessibleTextRemoveEvent(iface, position, text), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAccessibleTextRemoveEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleTextRemoveEvent::accessibleInterface();
		}


		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);

		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleTextRemoveEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextRemoveEvent* self);

};

VirtualQAccessibleTextRemoveEvent* QAccessibleTextRemoveEvent_new(const QAccessibleTextRemoveEvent_VTable* vtbl, void* vdata, QObject* obj, int position, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQAccessibleTextRemoveEvent(vtbl, vdata, obj, static_cast<int>(position), text_QString);
}

VirtualQAccessibleTextRemoveEvent* QAccessibleTextRemoveEvent_new2(const QAccessibleTextRemoveEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, int position, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQAccessibleTextRemoveEvent(vtbl, vdata, iface, static_cast<int>(position), text_QString);
}

void QAccessibleTextRemoveEvent_virtbase(QAccessibleTextRemoveEvent* src, QAccessibleTextCursorEvent** outptr_QAccessibleTextCursorEvent) {
	*outptr_QAccessibleTextCursorEvent = static_cast<QAccessibleTextCursorEvent*>(src);
}

struct miqt_string QAccessibleTextRemoveEvent_textRemoved(const QAccessibleTextRemoveEvent* self) {
	QString _ret = self->textRemoved();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAccessibleTextRemoveEvent_changePosition(const QAccessibleTextRemoveEvent* self) {
	return self->changePosition();
}

QAccessibleInterface* QAccessibleTextRemoveEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextRemoveEvent* self) {

	return self->QAccessibleTextRemoveEvent::accessibleInterface();
}

const QAccessibleTextRemoveEvent_VTable* QAccessibleTextRemoveEvent_vtbl(const VirtualQAccessibleTextRemoveEvent* self) { return self->vtbl; }
void* QAccessibleTextRemoveEvent_vdata(const VirtualQAccessibleTextRemoveEvent* self) { return self->vdata; }
void QAccessibleTextRemoveEvent_setVdata(VirtualQAccessibleTextRemoveEvent* self, void* vdata) { self->vdata = vdata; }

void QAccessibleTextRemoveEvent_delete(QAccessibleTextRemoveEvent* self) {
	delete self;
}

class VirtualQAccessibleTextUpdateEvent final : public QAccessibleTextUpdateEvent {
	const QAccessibleTextUpdateEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QAccessibleTextUpdateEvent_VTable* QAccessibleTextUpdateEvent_vtbl(const VirtualQAccessibleTextUpdateEvent* self);
	friend void* QAccessibleTextUpdateEvent_vdata(const VirtualQAccessibleTextUpdateEvent* self);
	friend void QAccessibleTextUpdateEvent_setVdata(VirtualQAccessibleTextUpdateEvent* self, void* vdata);

	VirtualQAccessibleTextUpdateEvent(const QAccessibleTextUpdateEvent_VTable* vtbl, void* vdata, QObject* obj, int position, const QString& oldText, const QString& text): QAccessibleTextUpdateEvent(obj, position, oldText, text), vtbl(vtbl), vdata(vdata) {}
	VirtualQAccessibleTextUpdateEvent(const QAccessibleTextUpdateEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, int position, const QString& oldText, const QString& text): QAccessibleTextUpdateEvent(iface, position, oldText, text), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAccessibleTextUpdateEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleTextUpdateEvent::accessibleInterface();
		}


		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);

		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleTextUpdateEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextUpdateEvent* self);

};

VirtualQAccessibleTextUpdateEvent* QAccessibleTextUpdateEvent_new(const QAccessibleTextUpdateEvent_VTable* vtbl, void* vdata, QObject* obj, int position, struct miqt_string oldText, struct miqt_string text) {
	QString oldText_QString = QString::fromUtf8(oldText.data, oldText.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQAccessibleTextUpdateEvent(vtbl, vdata, obj, static_cast<int>(position), oldText_QString, text_QString);
}

VirtualQAccessibleTextUpdateEvent* QAccessibleTextUpdateEvent_new2(const QAccessibleTextUpdateEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, int position, struct miqt_string oldText, struct miqt_string text) {
	QString oldText_QString = QString::fromUtf8(oldText.data, oldText.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQAccessibleTextUpdateEvent(vtbl, vdata, iface, static_cast<int>(position), oldText_QString, text_QString);
}

void QAccessibleTextUpdateEvent_virtbase(QAccessibleTextUpdateEvent* src, QAccessibleTextCursorEvent** outptr_QAccessibleTextCursorEvent) {
	*outptr_QAccessibleTextCursorEvent = static_cast<QAccessibleTextCursorEvent*>(src);
}

struct miqt_string QAccessibleTextUpdateEvent_textRemoved(const QAccessibleTextUpdateEvent* self) {
	QString _ret = self->textRemoved();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleTextUpdateEvent_textInserted(const QAccessibleTextUpdateEvent* self) {
	QString _ret = self->textInserted();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAccessibleTextUpdateEvent_changePosition(const QAccessibleTextUpdateEvent* self) {
	return self->changePosition();
}

QAccessibleInterface* QAccessibleTextUpdateEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextUpdateEvent* self) {

	return self->QAccessibleTextUpdateEvent::accessibleInterface();
}

const QAccessibleTextUpdateEvent_VTable* QAccessibleTextUpdateEvent_vtbl(const VirtualQAccessibleTextUpdateEvent* self) { return self->vtbl; }
void* QAccessibleTextUpdateEvent_vdata(const VirtualQAccessibleTextUpdateEvent* self) { return self->vdata; }
void QAccessibleTextUpdateEvent_setVdata(VirtualQAccessibleTextUpdateEvent* self, void* vdata) { self->vdata = vdata; }

void QAccessibleTextUpdateEvent_delete(QAccessibleTextUpdateEvent* self) {
	delete self;
}

class VirtualQAccessibleValueChangeEvent final : public QAccessibleValueChangeEvent {
	const QAccessibleValueChangeEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QAccessibleValueChangeEvent_VTable* QAccessibleValueChangeEvent_vtbl(const VirtualQAccessibleValueChangeEvent* self);
	friend void* QAccessibleValueChangeEvent_vdata(const VirtualQAccessibleValueChangeEvent* self);
	friend void QAccessibleValueChangeEvent_setVdata(VirtualQAccessibleValueChangeEvent* self, void* vdata);

	VirtualQAccessibleValueChangeEvent(const QAccessibleValueChangeEvent_VTable* vtbl, void* vdata, QObject* obj, const QVariant& val): QAccessibleValueChangeEvent(obj, val), vtbl(vtbl), vdata(vdata) {}
	VirtualQAccessibleValueChangeEvent(const QAccessibleValueChangeEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, const QVariant& val): QAccessibleValueChangeEvent(iface, val), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAccessibleValueChangeEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleValueChangeEvent::accessibleInterface();
		}


		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);

		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleValueChangeEvent_virtualbase_accessibleInterface(const VirtualQAccessibleValueChangeEvent* self);

};

VirtualQAccessibleValueChangeEvent* QAccessibleValueChangeEvent_new(const QAccessibleValueChangeEvent_VTable* vtbl, void* vdata, QObject* obj, QVariant* val) {
	return new VirtualQAccessibleValueChangeEvent(vtbl, vdata, obj, *val);
}

VirtualQAccessibleValueChangeEvent* QAccessibleValueChangeEvent_new2(const QAccessibleValueChangeEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, QVariant* val) {
	return new VirtualQAccessibleValueChangeEvent(vtbl, vdata, iface, *val);
}

void QAccessibleValueChangeEvent_virtbase(QAccessibleValueChangeEvent* src, QAccessibleEvent** outptr_QAccessibleEvent) {
	*outptr_QAccessibleEvent = static_cast<QAccessibleEvent*>(src);
}

void QAccessibleValueChangeEvent_setValue(QAccessibleValueChangeEvent* self, QVariant* val) {
	self->setValue(*val);
}

QVariant* QAccessibleValueChangeEvent_value(const QAccessibleValueChangeEvent* self) {
	return new QVariant(self->value());
}

QAccessibleInterface* QAccessibleValueChangeEvent_virtualbase_accessibleInterface(const VirtualQAccessibleValueChangeEvent* self) {

	return self->QAccessibleValueChangeEvent::accessibleInterface();
}

const QAccessibleValueChangeEvent_VTable* QAccessibleValueChangeEvent_vtbl(const VirtualQAccessibleValueChangeEvent* self) { return self->vtbl; }
void* QAccessibleValueChangeEvent_vdata(const VirtualQAccessibleValueChangeEvent* self) { return self->vdata; }
void QAccessibleValueChangeEvent_setVdata(VirtualQAccessibleValueChangeEvent* self, void* vdata) { self->vdata = vdata; }

void QAccessibleValueChangeEvent_delete(QAccessibleValueChangeEvent* self) {
	delete self;
}

class VirtualQAccessibleTableModelChangeEvent final : public QAccessibleTableModelChangeEvent {
	const QAccessibleTableModelChangeEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QAccessibleTableModelChangeEvent_VTable* QAccessibleTableModelChangeEvent_vtbl(const VirtualQAccessibleTableModelChangeEvent* self);
	friend void* QAccessibleTableModelChangeEvent_vdata(const VirtualQAccessibleTableModelChangeEvent* self);
	friend void QAccessibleTableModelChangeEvent_setVdata(VirtualQAccessibleTableModelChangeEvent* self, void* vdata);

	VirtualQAccessibleTableModelChangeEvent(const QAccessibleTableModelChangeEvent_VTable* vtbl, void* vdata, QObject* obj, QAccessibleTableModelChangeEvent::ModelChangeType changeType): QAccessibleTableModelChangeEvent(obj, changeType), vtbl(vtbl), vdata(vdata) {}
	VirtualQAccessibleTableModelChangeEvent(const QAccessibleTableModelChangeEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, QAccessibleTableModelChangeEvent::ModelChangeType changeType): QAccessibleTableModelChangeEvent(iface, changeType), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAccessibleTableModelChangeEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleTableModelChangeEvent::accessibleInterface();
		}


		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);

		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleTableModelChangeEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTableModelChangeEvent* self);

};

VirtualQAccessibleTableModelChangeEvent* QAccessibleTableModelChangeEvent_new(const QAccessibleTableModelChangeEvent_VTable* vtbl, void* vdata, QObject* obj, int changeType) {
	return new VirtualQAccessibleTableModelChangeEvent(vtbl, vdata, obj, static_cast<QAccessibleTableModelChangeEvent::ModelChangeType>(changeType));
}

VirtualQAccessibleTableModelChangeEvent* QAccessibleTableModelChangeEvent_new2(const QAccessibleTableModelChangeEvent_VTable* vtbl, void* vdata, QAccessibleInterface* iface, int changeType) {
	return new VirtualQAccessibleTableModelChangeEvent(vtbl, vdata, iface, static_cast<QAccessibleTableModelChangeEvent::ModelChangeType>(changeType));
}

void QAccessibleTableModelChangeEvent_virtbase(QAccessibleTableModelChangeEvent* src, QAccessibleEvent** outptr_QAccessibleEvent) {
	*outptr_QAccessibleEvent = static_cast<QAccessibleEvent*>(src);
}

void QAccessibleTableModelChangeEvent_setModelChangeType(QAccessibleTableModelChangeEvent* self, int changeType) {
	self->setModelChangeType(static_cast<QAccessibleTableModelChangeEvent::ModelChangeType>(changeType));
}

int QAccessibleTableModelChangeEvent_modelChangeType(const QAccessibleTableModelChangeEvent* self) {
	QAccessibleTableModelChangeEvent::ModelChangeType _ret = self->modelChangeType();
	return static_cast<int>(_ret);
}

void QAccessibleTableModelChangeEvent_setFirstRow(QAccessibleTableModelChangeEvent* self, int row) {
	self->setFirstRow(static_cast<int>(row));
}

void QAccessibleTableModelChangeEvent_setFirstColumn(QAccessibleTableModelChangeEvent* self, int col) {
	self->setFirstColumn(static_cast<int>(col));
}

void QAccessibleTableModelChangeEvent_setLastRow(QAccessibleTableModelChangeEvent* self, int row) {
	self->setLastRow(static_cast<int>(row));
}

void QAccessibleTableModelChangeEvent_setLastColumn(QAccessibleTableModelChangeEvent* self, int col) {
	self->setLastColumn(static_cast<int>(col));
}

int QAccessibleTableModelChangeEvent_firstRow(const QAccessibleTableModelChangeEvent* self) {
	return self->firstRow();
}

int QAccessibleTableModelChangeEvent_firstColumn(const QAccessibleTableModelChangeEvent* self) {
	return self->firstColumn();
}

int QAccessibleTableModelChangeEvent_lastRow(const QAccessibleTableModelChangeEvent* self) {
	return self->lastRow();
}

int QAccessibleTableModelChangeEvent_lastColumn(const QAccessibleTableModelChangeEvent* self) {
	return self->lastColumn();
}

QAccessibleInterface* QAccessibleTableModelChangeEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTableModelChangeEvent* self) {

	return self->QAccessibleTableModelChangeEvent::accessibleInterface();
}

const QAccessibleTableModelChangeEvent_VTable* QAccessibleTableModelChangeEvent_vtbl(const VirtualQAccessibleTableModelChangeEvent* self) { return self->vtbl; }
void* QAccessibleTableModelChangeEvent_vdata(const VirtualQAccessibleTableModelChangeEvent* self) { return self->vdata; }
void QAccessibleTableModelChangeEvent_setVdata(VirtualQAccessibleTableModelChangeEvent* self, void* vdata) { self->vdata = vdata; }

void QAccessibleTableModelChangeEvent_delete(QAccessibleTableModelChangeEvent* self) {
	delete self;
}

