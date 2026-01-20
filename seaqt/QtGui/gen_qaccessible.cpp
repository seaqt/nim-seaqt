#include <QAccessible>
#define WORKAROUND_INNER_CLASS_DEFINITION_QAccessible__ActivationObserver
#define WORKAROUND_INNER_CLASS_DEFINITION_QAccessible__State
#include <QAccessibleActionInterface>
#include <QAccessibleEditableTextInterface>
#include <QAccessibleEvent>
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
#include <QMetaObject>
#include <QObject>
#include <QPair>
#include <QPoint>
#include <QRect>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTextCursor>
#include <QVariant>
#include <QVector>
#include <QWindow>
#include <qaccessible.h>
#include "gen_qaccessible.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QAccessible_installActivationObserver(QAccessible__ActivationObserver* param1) {
	QAccessible::installActivationObserver(param1);
}

void QAccessible_removeActivationObserver(QAccessible__ActivationObserver* param1) {
	QAccessible::removeActivationObserver(param1);
}

QAccessibleInterface* QAccessible_queryAccessibleInterface(QObject* param1) {
	return QAccessible::queryAccessibleInterface(param1);
}

unsigned int QAccessible_uniqueId(QAccessibleInterface* iface) {
	QAccessible::Id _ret = QAccessible::uniqueId(iface);
	return static_cast<unsigned int>(_ret);
}

QAccessibleInterface* QAccessible_accessibleInterface(unsigned int uniqueId) {
	return QAccessible::accessibleInterface(static_cast<QAccessible::Id>(uniqueId));
}

unsigned int QAccessible_registerAccessibleInterface(QAccessibleInterface* iface) {
	QAccessible::Id _ret = QAccessible::registerAccessibleInterface(iface);
	return static_cast<unsigned int>(_ret);
}

void QAccessible_deleteAccessibleInterface(unsigned int uniqueId) {
	QAccessible::deleteAccessibleInterface(static_cast<QAccessible::Id>(uniqueId));
}

void QAccessible_updateAccessibility(QAccessibleEvent* event) {
	QAccessible::updateAccessibility(event);
}

bool QAccessible_isActive() {
	return QAccessible::isActive();
}

void QAccessible_setActive(bool active) {
	QAccessible::setActive(active);
}

void QAccessible_setRootObject(QObject* object) {
	QAccessible::setRootObject(object);
}

void QAccessible_cleanup() {
	QAccessible::cleanup();
}

struct seaqt_map /* tuple of int and int */  QAccessible_qAccessibleTextBoundaryHelper(QTextCursor* cursor, int boundaryType) {
	QPair<int, int> _ret = QAccessible::qAccessibleTextBoundaryHelper(*cursor, static_cast<QAccessible::TextBoundaryType>(boundaryType));
	// Convert QPair<> from C++ memory to manually-managed C memory
	int* _first_arr = static_cast<int*>(malloc(sizeof(int)));
	int* _second_arr = static_cast<int*>(malloc(sizeof(int)));
	_first_arr[0] = _ret.first;
	_second_arr[0] = _ret.second;
	struct seaqt_map _out;
	_out.len = 1;
	_out.keys = static_cast<void*>(_first_arr);
	_out.values = static_cast<void*>(_second_arr);
	return _out;
}

const QMetaObject* QAccessible_staticMetaObject() { return &QAccessible::staticMetaObject; }
void QAccessible_delete(QAccessible* self) {
	delete self;
}

bool QAccessibleInterface_isValid(const QAccessibleInterface* self) {
	return self->isValid();
}

QObject* QAccessibleInterface_object(const QAccessibleInterface* self) {
	return self->object();
}

QWindow* QAccessibleInterface_window(const QAccessibleInterface* self) {
	return self->window();
}

struct seaqt_array /* of struct seaqt_map  tuple of QAccessibleInterface* and int   */  QAccessibleInterface_relations(const QAccessibleInterface* self, int match) {
	QVector<QPair<QAccessibleInterface *, QAccessible::Relation>> _ret = self->relations(static_cast<QAccessible::Relation>(match));
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_map /* tuple of QAccessibleInterface* and int */ * _arr = static_cast<struct seaqt_map /* tuple of QAccessibleInterface* and int */ *>(malloc(sizeof(struct seaqt_map /* tuple of QAccessibleInterface* and int */ ) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QPair<QAccessibleInterface*, QFlags<QAccessible::RelationFlag>> _vv_ret = _ret[i];
		// Convert QPair<> from C++ memory to manually-managed C memory
		QAccessibleInterface** _vv_first_arr = static_cast<QAccessibleInterface**>(malloc(sizeof(QAccessibleInterface*)));
		int* _vv_second_arr = static_cast<int*>(malloc(sizeof(int)));
		_vv_first_arr[0] = _vv_ret.first;
		QFlags<QAccessible::RelationFlag> _vv_second_ret = _vv_ret.second;
		_vv_second_arr[0] = static_cast<int>(_vv_second_ret);
		struct seaqt_map _vv_out;
		_vv_out.len = 1;
		_vv_out.keys = static_cast<void*>(_vv_first_arr);
		_vv_out.values = static_cast<void*>(_vv_second_arr);
		_arr[i] = _vv_out;
	}
	struct seaqt_array _out;
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

struct seaqt_string QAccessibleInterface_text(const QAccessibleInterface* self, int t) {
	QString _ret = self->text(static_cast<QAccessible::Text>(t));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAccessibleInterface_setText(QAccessibleInterface* self, int t, struct seaqt_string text) {
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

void QAccessibleInterface_virtualHook(QAccessibleInterface* self, int id, void* data) {
	self->virtual_hook(static_cast<int>(id), data);
}

void* QAccessibleInterface_interfaceCast(QAccessibleInterface* self, int param1) {
	return self->interface_cast(static_cast<QAccessible::InterfaceType>(param1));
}

void QAccessibleInterface_operatorAssign(QAccessibleInterface* self, QAccessibleInterface* param1) {
	self->operator=(*param1);
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

struct seaqt_string QAccessibleTextInterface_text(const QAccessibleTextInterface* self, int startOffset, int endOffset) {
	QString _ret = self->text(static_cast<int>(startOffset), static_cast<int>(endOffset));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleTextInterface_textBeforeOffset(const QAccessibleTextInterface* self, int offset, int boundaryType, int* startOffset, int* endOffset) {
	QString _ret = self->textBeforeOffset(static_cast<int>(offset), static_cast<QAccessible::TextBoundaryType>(boundaryType), static_cast<int*>(startOffset), static_cast<int*>(endOffset));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleTextInterface_textAfterOffset(const QAccessibleTextInterface* self, int offset, int boundaryType, int* startOffset, int* endOffset) {
	QString _ret = self->textAfterOffset(static_cast<int>(offset), static_cast<QAccessible::TextBoundaryType>(boundaryType), static_cast<int*>(startOffset), static_cast<int*>(endOffset));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleTextInterface_textAtOffset(const QAccessibleTextInterface* self, int offset, int boundaryType, int* startOffset, int* endOffset) {
	QString _ret = self->textAtOffset(static_cast<int>(offset), static_cast<QAccessible::TextBoundaryType>(boundaryType), static_cast<int*>(startOffset), static_cast<int*>(endOffset));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
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

struct seaqt_string QAccessibleTextInterface_attributes(const QAccessibleTextInterface* self, int offset, int* startOffset, int* endOffset) {
	QString _ret = self->attributes(static_cast<int>(offset), static_cast<int*>(startOffset), static_cast<int*>(endOffset));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
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

void QAccessibleEditableTextInterface_insertText(QAccessibleEditableTextInterface* self, int offset, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->insertText(static_cast<int>(offset), text_QString);
}

void QAccessibleEditableTextInterface_replaceText(QAccessibleEditableTextInterface* self, int startOffset, int endOffset, struct seaqt_string text) {
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

struct seaqt_array /* of QAccessibleInterface* */  QAccessibleTableCellInterface_columnHeaderCells(const QAccessibleTableCellInterface* self) {
	QList<QAccessibleInterface *> _ret = self->columnHeaderCells();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAccessibleInterface** _arr = static_cast<QAccessibleInterface**>(malloc(sizeof(QAccessibleInterface*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of QAccessibleInterface* */  QAccessibleTableCellInterface_rowHeaderCells(const QAccessibleTableCellInterface* self) {
	QList<QAccessibleInterface *> _ret = self->rowHeaderCells();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAccessibleInterface** _arr = static_cast<QAccessibleInterface**>(malloc(sizeof(QAccessibleInterface*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
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

struct seaqt_array /* of QAccessibleInterface* */  QAccessibleTableInterface_selectedCells(const QAccessibleTableInterface* self) {
	QList<QAccessibleInterface *> _ret = self->selectedCells();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAccessibleInterface** _arr = static_cast<QAccessibleInterface**>(malloc(sizeof(QAccessibleInterface*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_string QAccessibleTableInterface_columnDescription(const QAccessibleTableInterface* self, int column) {
	QString _ret = self->columnDescription(static_cast<int>(column));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleTableInterface_rowDescription(const QAccessibleTableInterface* self, int row) {
	QString _ret = self->rowDescription(static_cast<int>(row));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
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

struct seaqt_array /* of int */  QAccessibleTableInterface_selectedColumns(const QAccessibleTableInterface* self) {
	QList<int> _ret = self->selectedColumns();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of int */  QAccessibleTableInterface_selectedRows(const QAccessibleTableInterface* self) {
	QList<int> _ret = self->selectedRows();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
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

void QAccessibleTableInterface_operatorAssign(QAccessibleTableInterface* self, QAccessibleTableInterface* param1) {
	self->operator=(*param1);
}

void QAccessibleTableInterface_delete(QAccessibleTableInterface* self) {
	delete self;
}

struct seaqt_string QAccessibleActionInterface_tr(const char* sourceText) {
	QString _ret = QAccessibleActionInterface::tr(sourceText);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleActionInterface_trUtf8(const char* sourceText) {
	QString _ret = QAccessibleActionInterface::trUtf8(sourceText);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  QAccessibleActionInterface_actionNames(const QAccessibleActionInterface* self) {
	QStringList _ret = self->actionNames();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_string QAccessibleActionInterface_localizedActionName(const QAccessibleActionInterface* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString _ret = self->localizedActionName(name_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleActionInterface_localizedActionDescription(const QAccessibleActionInterface* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString _ret = self->localizedActionDescription(name_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAccessibleActionInterface_doAction(QAccessibleActionInterface* self, struct seaqt_string actionName) {
	QString actionName_QString = QString::fromUtf8(actionName.data, actionName.len);
	self->doAction(actionName_QString);
}

struct seaqt_array /* of struct seaqt_string */  QAccessibleActionInterface_keyBindingsForAction(const QAccessibleActionInterface* self, struct seaqt_string actionName) {
	QString actionName_QString = QString::fromUtf8(actionName.data, actionName.len);
	QStringList _ret = self->keyBindingsForAction(actionName_QString);
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_string QAccessibleActionInterface_pressAction() {
	const QString _ret = QAccessibleActionInterface::pressAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleActionInterface_increaseAction() {
	const QString _ret = QAccessibleActionInterface::increaseAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleActionInterface_decreaseAction() {
	const QString _ret = QAccessibleActionInterface::decreaseAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleActionInterface_showMenuAction() {
	const QString _ret = QAccessibleActionInterface::showMenuAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleActionInterface_setFocusAction() {
	const QString _ret = QAccessibleActionInterface::setFocusAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleActionInterface_toggleAction() {
	const QString _ret = QAccessibleActionInterface::toggleAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleActionInterface_scrollLeftAction() {
	QString _ret = QAccessibleActionInterface::scrollLeftAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleActionInterface_scrollRightAction() {
	QString _ret = QAccessibleActionInterface::scrollRightAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleActionInterface_scrollUpAction() {
	QString _ret = QAccessibleActionInterface::scrollUpAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleActionInterface_scrollDownAction() {
	QString _ret = QAccessibleActionInterface::scrollDownAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleActionInterface_nextPageAction() {
	QString _ret = QAccessibleActionInterface::nextPageAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleActionInterface_previousPageAction() {
	QString _ret = QAccessibleActionInterface::previousPageAction();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAccessibleActionInterface_operatorAssign(QAccessibleActionInterface* self, QAccessibleActionInterface* param1) {
	self->operator=(*param1);
}

struct seaqt_string QAccessibleActionInterface_tr2(const char* sourceText, const char* disambiguation) {
	QString _ret = QAccessibleActionInterface::tr(sourceText, disambiguation);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleActionInterface_tr3(const char* sourceText, const char* disambiguation, int n) {
	QString _ret = QAccessibleActionInterface::tr(sourceText, disambiguation, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleActionInterface_trUtf82(const char* sourceText, const char* disambiguation) {
	QString _ret = QAccessibleActionInterface::trUtf8(sourceText, disambiguation);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleActionInterface_trUtf83(const char* sourceText, const char* disambiguation, int n) {
	QString _ret = QAccessibleActionInterface::trUtf8(sourceText, disambiguation, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAccessibleActionInterface_delete(QAccessibleActionInterface* self) {
	delete self;
}

struct seaqt_string QAccessibleImageInterface_imageDescription(const QAccessibleImageInterface* self) {
	QString _ret = self->imageDescription();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
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

class VirtualQAccessibleEvent final : public QAccessibleEvent {
	const QAccessibleEvent_VTable* vtbl;
public:
	friend void* QAccessibleEvent_vdata(VirtualQAccessibleEvent* self);
	friend VirtualQAccessibleEvent* vdata_QAccessibleEvent(void* vdata);

	VirtualQAccessibleEvent(const QAccessibleEvent_VTable* vtbl, QObject* obj, QAccessible::Event typ): QAccessibleEvent(obj, typ), vtbl(vtbl) {}
	VirtualQAccessibleEvent(const QAccessibleEvent_VTable* vtbl, QAccessibleInterface* iface, QAccessible::Event typ): QAccessibleEvent(iface, typ), vtbl(vtbl) {}

	virtual ~VirtualQAccessibleEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleEvent::accessibleInterface();
		}

		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);
		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleEvent_virtualbase_accessibleInterface(const VirtualQAccessibleEvent* self);

};

VirtualQAccessibleEvent* QAccessibleEvent_new(const QAccessibleEvent_VTable* vtbl, size_t vdata, QObject* obj, int typ) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleEvent(vtbl, obj, static_cast<QAccessible::Event>(typ)) : nullptr;
}

VirtualQAccessibleEvent* QAccessibleEvent_new2(const QAccessibleEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, int typ) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleEvent(vtbl, iface, static_cast<QAccessible::Event>(typ)) : nullptr;
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

void* QAccessibleEvent_vdata(VirtualQAccessibleEvent* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAccessibleEvent>()); }
VirtualQAccessibleEvent* vdata_QAccessibleEvent(void* vdata) { return reinterpret_cast<VirtualQAccessibleEvent*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAccessibleEvent>()); }

QAccessibleInterface* QAccessibleEvent_virtualbase_accessibleInterface(const VirtualQAccessibleEvent* self) {

	return self->QAccessibleEvent::accessibleInterface();
}

void QAccessibleEvent_delete(QAccessibleEvent* self) {
	delete self;
}

class VirtualQAccessibleStateChangeEvent final : public QAccessibleStateChangeEvent {
	const QAccessibleStateChangeEvent_VTable* vtbl;
public:
	friend void* QAccessibleStateChangeEvent_vdata(VirtualQAccessibleStateChangeEvent* self);
	friend VirtualQAccessibleStateChangeEvent* vdata_QAccessibleStateChangeEvent(void* vdata);

	VirtualQAccessibleStateChangeEvent(const QAccessibleStateChangeEvent_VTable* vtbl, QObject* obj, QAccessible::State state): QAccessibleStateChangeEvent(obj, state), vtbl(vtbl) {}
	VirtualQAccessibleStateChangeEvent(const QAccessibleStateChangeEvent_VTable* vtbl, QAccessibleInterface* iface, QAccessible::State state): QAccessibleStateChangeEvent(iface, state), vtbl(vtbl) {}

	virtual ~VirtualQAccessibleStateChangeEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleStateChangeEvent::accessibleInterface();
		}

		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);
		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleStateChangeEvent_virtualbase_accessibleInterface(const VirtualQAccessibleStateChangeEvent* self);

};

VirtualQAccessibleStateChangeEvent* QAccessibleStateChangeEvent_new(const QAccessibleStateChangeEvent_VTable* vtbl, size_t vdata, QObject* obj, QAccessible__State* state) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleStateChangeEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleStateChangeEvent(vtbl, obj, *state) : nullptr;
}

VirtualQAccessibleStateChangeEvent* QAccessibleStateChangeEvent_new2(const QAccessibleStateChangeEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, QAccessible__State* state) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleStateChangeEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleStateChangeEvent(vtbl, iface, *state) : nullptr;
}

void QAccessibleStateChangeEvent_virtbase(QAccessibleStateChangeEvent* src, QAccessibleEvent** outptr_QAccessibleEvent) {
	*outptr_QAccessibleEvent = static_cast<QAccessibleEvent*>(src);
}

QAccessible__State* QAccessibleStateChangeEvent_changedStates(const QAccessibleStateChangeEvent* self) {
	return new QAccessible::State(self->changedStates());
}

void* QAccessibleStateChangeEvent_vdata(VirtualQAccessibleStateChangeEvent* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAccessibleStateChangeEvent>()); }
VirtualQAccessibleStateChangeEvent* vdata_QAccessibleStateChangeEvent(void* vdata) { return reinterpret_cast<VirtualQAccessibleStateChangeEvent*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAccessibleStateChangeEvent>()); }

QAccessibleInterface* QAccessibleStateChangeEvent_virtualbase_accessibleInterface(const VirtualQAccessibleStateChangeEvent* self) {

	return self->QAccessibleStateChangeEvent::accessibleInterface();
}

void QAccessibleStateChangeEvent_delete(QAccessibleStateChangeEvent* self) {
	delete self;
}

class VirtualQAccessibleTextCursorEvent final : public QAccessibleTextCursorEvent {
	const QAccessibleTextCursorEvent_VTable* vtbl;
public:
	friend void* QAccessibleTextCursorEvent_vdata(VirtualQAccessibleTextCursorEvent* self);
	friend VirtualQAccessibleTextCursorEvent* vdata_QAccessibleTextCursorEvent(void* vdata);

	VirtualQAccessibleTextCursorEvent(const QAccessibleTextCursorEvent_VTable* vtbl, QObject* obj, int cursorPos): QAccessibleTextCursorEvent(obj, cursorPos), vtbl(vtbl) {}
	VirtualQAccessibleTextCursorEvent(const QAccessibleTextCursorEvent_VTable* vtbl, QAccessibleInterface* iface, int cursorPos): QAccessibleTextCursorEvent(iface, cursorPos), vtbl(vtbl) {}

	virtual ~VirtualQAccessibleTextCursorEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleTextCursorEvent::accessibleInterface();
		}

		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);
		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleTextCursorEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextCursorEvent* self);

};

VirtualQAccessibleTextCursorEvent* QAccessibleTextCursorEvent_new(const QAccessibleTextCursorEvent_VTable* vtbl, size_t vdata, QObject* obj, int cursorPos) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleTextCursorEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleTextCursorEvent(vtbl, obj, static_cast<int>(cursorPos)) : nullptr;
}

VirtualQAccessibleTextCursorEvent* QAccessibleTextCursorEvent_new2(const QAccessibleTextCursorEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, int cursorPos) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleTextCursorEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleTextCursorEvent(vtbl, iface, static_cast<int>(cursorPos)) : nullptr;
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

void* QAccessibleTextCursorEvent_vdata(VirtualQAccessibleTextCursorEvent* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAccessibleTextCursorEvent>()); }
VirtualQAccessibleTextCursorEvent* vdata_QAccessibleTextCursorEvent(void* vdata) { return reinterpret_cast<VirtualQAccessibleTextCursorEvent*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAccessibleTextCursorEvent>()); }

QAccessibleInterface* QAccessibleTextCursorEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextCursorEvent* self) {

	return self->QAccessibleTextCursorEvent::accessibleInterface();
}

void QAccessibleTextCursorEvent_delete(QAccessibleTextCursorEvent* self) {
	delete self;
}

class VirtualQAccessibleTextSelectionEvent final : public QAccessibleTextSelectionEvent {
	const QAccessibleTextSelectionEvent_VTable* vtbl;
public:
	friend void* QAccessibleTextSelectionEvent_vdata(VirtualQAccessibleTextSelectionEvent* self);
	friend VirtualQAccessibleTextSelectionEvent* vdata_QAccessibleTextSelectionEvent(void* vdata);

	VirtualQAccessibleTextSelectionEvent(const QAccessibleTextSelectionEvent_VTable* vtbl, QObject* obj, int start, int end): QAccessibleTextSelectionEvent(obj, start, end), vtbl(vtbl) {}
	VirtualQAccessibleTextSelectionEvent(const QAccessibleTextSelectionEvent_VTable* vtbl, QAccessibleInterface* iface, int start, int end): QAccessibleTextSelectionEvent(iface, start, end), vtbl(vtbl) {}

	virtual ~VirtualQAccessibleTextSelectionEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleTextSelectionEvent::accessibleInterface();
		}

		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);
		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleTextSelectionEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextSelectionEvent* self);

};

VirtualQAccessibleTextSelectionEvent* QAccessibleTextSelectionEvent_new(const QAccessibleTextSelectionEvent_VTable* vtbl, size_t vdata, QObject* obj, int start, int end) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleTextSelectionEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleTextSelectionEvent(vtbl, obj, static_cast<int>(start), static_cast<int>(end)) : nullptr;
}

VirtualQAccessibleTextSelectionEvent* QAccessibleTextSelectionEvent_new2(const QAccessibleTextSelectionEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, int start, int end) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleTextSelectionEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleTextSelectionEvent(vtbl, iface, static_cast<int>(start), static_cast<int>(end)) : nullptr;
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

void* QAccessibleTextSelectionEvent_vdata(VirtualQAccessibleTextSelectionEvent* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAccessibleTextSelectionEvent>()); }
VirtualQAccessibleTextSelectionEvent* vdata_QAccessibleTextSelectionEvent(void* vdata) { return reinterpret_cast<VirtualQAccessibleTextSelectionEvent*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAccessibleTextSelectionEvent>()); }

QAccessibleInterface* QAccessibleTextSelectionEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextSelectionEvent* self) {

	return self->QAccessibleTextSelectionEvent::accessibleInterface();
}

void QAccessibleTextSelectionEvent_delete(QAccessibleTextSelectionEvent* self) {
	delete self;
}

class VirtualQAccessibleTextInsertEvent final : public QAccessibleTextInsertEvent {
	const QAccessibleTextInsertEvent_VTable* vtbl;
public:
	friend void* QAccessibleTextInsertEvent_vdata(VirtualQAccessibleTextInsertEvent* self);
	friend VirtualQAccessibleTextInsertEvent* vdata_QAccessibleTextInsertEvent(void* vdata);

	VirtualQAccessibleTextInsertEvent(const QAccessibleTextInsertEvent_VTable* vtbl, QObject* obj, int position, const QString& text): QAccessibleTextInsertEvent(obj, position, text), vtbl(vtbl) {}
	VirtualQAccessibleTextInsertEvent(const QAccessibleTextInsertEvent_VTable* vtbl, QAccessibleInterface* iface, int position, const QString& text): QAccessibleTextInsertEvent(iface, position, text), vtbl(vtbl) {}

	virtual ~VirtualQAccessibleTextInsertEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleTextInsertEvent::accessibleInterface();
		}

		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);
		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleTextInsertEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextInsertEvent* self);

};

VirtualQAccessibleTextInsertEvent* QAccessibleTextInsertEvent_new(const QAccessibleTextInsertEvent_VTable* vtbl, size_t vdata, QObject* obj, int position, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleTextInsertEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleTextInsertEvent(vtbl, obj, static_cast<int>(position), text_QString) : nullptr;
}

VirtualQAccessibleTextInsertEvent* QAccessibleTextInsertEvent_new2(const QAccessibleTextInsertEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, int position, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleTextInsertEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleTextInsertEvent(vtbl, iface, static_cast<int>(position), text_QString) : nullptr;
}

void QAccessibleTextInsertEvent_virtbase(QAccessibleTextInsertEvent* src, QAccessibleTextCursorEvent** outptr_QAccessibleTextCursorEvent) {
	*outptr_QAccessibleTextCursorEvent = static_cast<QAccessibleTextCursorEvent*>(src);
}

struct seaqt_string QAccessibleTextInsertEvent_textInserted(const QAccessibleTextInsertEvent* self) {
	QString _ret = self->textInserted();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAccessibleTextInsertEvent_changePosition(const QAccessibleTextInsertEvent* self) {
	return self->changePosition();
}

void* QAccessibleTextInsertEvent_vdata(VirtualQAccessibleTextInsertEvent* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAccessibleTextInsertEvent>()); }
VirtualQAccessibleTextInsertEvent* vdata_QAccessibleTextInsertEvent(void* vdata) { return reinterpret_cast<VirtualQAccessibleTextInsertEvent*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAccessibleTextInsertEvent>()); }

QAccessibleInterface* QAccessibleTextInsertEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextInsertEvent* self) {

	return self->QAccessibleTextInsertEvent::accessibleInterface();
}

void QAccessibleTextInsertEvent_delete(QAccessibleTextInsertEvent* self) {
	delete self;
}

class VirtualQAccessibleTextRemoveEvent final : public QAccessibleTextRemoveEvent {
	const QAccessibleTextRemoveEvent_VTable* vtbl;
public:
	friend void* QAccessibleTextRemoveEvent_vdata(VirtualQAccessibleTextRemoveEvent* self);
	friend VirtualQAccessibleTextRemoveEvent* vdata_QAccessibleTextRemoveEvent(void* vdata);

	VirtualQAccessibleTextRemoveEvent(const QAccessibleTextRemoveEvent_VTable* vtbl, QObject* obj, int position, const QString& text): QAccessibleTextRemoveEvent(obj, position, text), vtbl(vtbl) {}
	VirtualQAccessibleTextRemoveEvent(const QAccessibleTextRemoveEvent_VTable* vtbl, QAccessibleInterface* iface, int position, const QString& text): QAccessibleTextRemoveEvent(iface, position, text), vtbl(vtbl) {}

	virtual ~VirtualQAccessibleTextRemoveEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleTextRemoveEvent::accessibleInterface();
		}

		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);
		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleTextRemoveEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextRemoveEvent* self);

};

VirtualQAccessibleTextRemoveEvent* QAccessibleTextRemoveEvent_new(const QAccessibleTextRemoveEvent_VTable* vtbl, size_t vdata, QObject* obj, int position, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleTextRemoveEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleTextRemoveEvent(vtbl, obj, static_cast<int>(position), text_QString) : nullptr;
}

VirtualQAccessibleTextRemoveEvent* QAccessibleTextRemoveEvent_new2(const QAccessibleTextRemoveEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, int position, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleTextRemoveEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleTextRemoveEvent(vtbl, iface, static_cast<int>(position), text_QString) : nullptr;
}

void QAccessibleTextRemoveEvent_virtbase(QAccessibleTextRemoveEvent* src, QAccessibleTextCursorEvent** outptr_QAccessibleTextCursorEvent) {
	*outptr_QAccessibleTextCursorEvent = static_cast<QAccessibleTextCursorEvent*>(src);
}

struct seaqt_string QAccessibleTextRemoveEvent_textRemoved(const QAccessibleTextRemoveEvent* self) {
	QString _ret = self->textRemoved();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAccessibleTextRemoveEvent_changePosition(const QAccessibleTextRemoveEvent* self) {
	return self->changePosition();
}

void* QAccessibleTextRemoveEvent_vdata(VirtualQAccessibleTextRemoveEvent* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAccessibleTextRemoveEvent>()); }
VirtualQAccessibleTextRemoveEvent* vdata_QAccessibleTextRemoveEvent(void* vdata) { return reinterpret_cast<VirtualQAccessibleTextRemoveEvent*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAccessibleTextRemoveEvent>()); }

QAccessibleInterface* QAccessibleTextRemoveEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextRemoveEvent* self) {

	return self->QAccessibleTextRemoveEvent::accessibleInterface();
}

void QAccessibleTextRemoveEvent_delete(QAccessibleTextRemoveEvent* self) {
	delete self;
}

class VirtualQAccessibleTextUpdateEvent final : public QAccessibleTextUpdateEvent {
	const QAccessibleTextUpdateEvent_VTable* vtbl;
public:
	friend void* QAccessibleTextUpdateEvent_vdata(VirtualQAccessibleTextUpdateEvent* self);
	friend VirtualQAccessibleTextUpdateEvent* vdata_QAccessibleTextUpdateEvent(void* vdata);

	VirtualQAccessibleTextUpdateEvent(const QAccessibleTextUpdateEvent_VTable* vtbl, QObject* obj, int position, const QString& oldText, const QString& text): QAccessibleTextUpdateEvent(obj, position, oldText, text), vtbl(vtbl) {}
	VirtualQAccessibleTextUpdateEvent(const QAccessibleTextUpdateEvent_VTable* vtbl, QAccessibleInterface* iface, int position, const QString& oldText, const QString& text): QAccessibleTextUpdateEvent(iface, position, oldText, text), vtbl(vtbl) {}

	virtual ~VirtualQAccessibleTextUpdateEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleTextUpdateEvent::accessibleInterface();
		}

		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);
		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleTextUpdateEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextUpdateEvent* self);

};

VirtualQAccessibleTextUpdateEvent* QAccessibleTextUpdateEvent_new(const QAccessibleTextUpdateEvent_VTable* vtbl, size_t vdata, QObject* obj, int position, struct seaqt_string oldText, struct seaqt_string text) {
	QString oldText_QString = QString::fromUtf8(oldText.data, oldText.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleTextUpdateEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleTextUpdateEvent(vtbl, obj, static_cast<int>(position), oldText_QString, text_QString) : nullptr;
}

VirtualQAccessibleTextUpdateEvent* QAccessibleTextUpdateEvent_new2(const QAccessibleTextUpdateEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, int position, struct seaqt_string oldText, struct seaqt_string text) {
	QString oldText_QString = QString::fromUtf8(oldText.data, oldText.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleTextUpdateEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleTextUpdateEvent(vtbl, iface, static_cast<int>(position), oldText_QString, text_QString) : nullptr;
}

void QAccessibleTextUpdateEvent_virtbase(QAccessibleTextUpdateEvent* src, QAccessibleTextCursorEvent** outptr_QAccessibleTextCursorEvent) {
	*outptr_QAccessibleTextCursorEvent = static_cast<QAccessibleTextCursorEvent*>(src);
}

struct seaqt_string QAccessibleTextUpdateEvent_textRemoved(const QAccessibleTextUpdateEvent* self) {
	QString _ret = self->textRemoved();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibleTextUpdateEvent_textInserted(const QAccessibleTextUpdateEvent* self) {
	QString _ret = self->textInserted();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAccessibleTextUpdateEvent_changePosition(const QAccessibleTextUpdateEvent* self) {
	return self->changePosition();
}

void* QAccessibleTextUpdateEvent_vdata(VirtualQAccessibleTextUpdateEvent* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAccessibleTextUpdateEvent>()); }
VirtualQAccessibleTextUpdateEvent* vdata_QAccessibleTextUpdateEvent(void* vdata) { return reinterpret_cast<VirtualQAccessibleTextUpdateEvent*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAccessibleTextUpdateEvent>()); }

QAccessibleInterface* QAccessibleTextUpdateEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTextUpdateEvent* self) {

	return self->QAccessibleTextUpdateEvent::accessibleInterface();
}

void QAccessibleTextUpdateEvent_delete(QAccessibleTextUpdateEvent* self) {
	delete self;
}

class VirtualQAccessibleValueChangeEvent final : public QAccessibleValueChangeEvent {
	const QAccessibleValueChangeEvent_VTable* vtbl;
public:
	friend void* QAccessibleValueChangeEvent_vdata(VirtualQAccessibleValueChangeEvent* self);
	friend VirtualQAccessibleValueChangeEvent* vdata_QAccessibleValueChangeEvent(void* vdata);

	VirtualQAccessibleValueChangeEvent(const QAccessibleValueChangeEvent_VTable* vtbl, QObject* obj, const QVariant& val): QAccessibleValueChangeEvent(obj, val), vtbl(vtbl) {}
	VirtualQAccessibleValueChangeEvent(const QAccessibleValueChangeEvent_VTable* vtbl, QAccessibleInterface* iface, const QVariant& val): QAccessibleValueChangeEvent(iface, val), vtbl(vtbl) {}

	virtual ~VirtualQAccessibleValueChangeEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleValueChangeEvent::accessibleInterface();
		}

		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);
		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleValueChangeEvent_virtualbase_accessibleInterface(const VirtualQAccessibleValueChangeEvent* self);

};

VirtualQAccessibleValueChangeEvent* QAccessibleValueChangeEvent_new(const QAccessibleValueChangeEvent_VTable* vtbl, size_t vdata, QObject* obj, QVariant* val) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleValueChangeEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleValueChangeEvent(vtbl, obj, *val) : nullptr;
}

VirtualQAccessibleValueChangeEvent* QAccessibleValueChangeEvent_new2(const QAccessibleValueChangeEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, QVariant* val) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleValueChangeEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleValueChangeEvent(vtbl, iface, *val) : nullptr;
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

void* QAccessibleValueChangeEvent_vdata(VirtualQAccessibleValueChangeEvent* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAccessibleValueChangeEvent>()); }
VirtualQAccessibleValueChangeEvent* vdata_QAccessibleValueChangeEvent(void* vdata) { return reinterpret_cast<VirtualQAccessibleValueChangeEvent*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAccessibleValueChangeEvent>()); }

QAccessibleInterface* QAccessibleValueChangeEvent_virtualbase_accessibleInterface(const VirtualQAccessibleValueChangeEvent* self) {

	return self->QAccessibleValueChangeEvent::accessibleInterface();
}

void QAccessibleValueChangeEvent_delete(QAccessibleValueChangeEvent* self) {
	delete self;
}

class VirtualQAccessibleTableModelChangeEvent final : public QAccessibleTableModelChangeEvent {
	const QAccessibleTableModelChangeEvent_VTable* vtbl;
public:
	friend void* QAccessibleTableModelChangeEvent_vdata(VirtualQAccessibleTableModelChangeEvent* self);
	friend VirtualQAccessibleTableModelChangeEvent* vdata_QAccessibleTableModelChangeEvent(void* vdata);

	VirtualQAccessibleTableModelChangeEvent(const QAccessibleTableModelChangeEvent_VTable* vtbl, QObject* obj, QAccessibleTableModelChangeEvent::ModelChangeType changeType): QAccessibleTableModelChangeEvent(obj, changeType), vtbl(vtbl) {}
	VirtualQAccessibleTableModelChangeEvent(const QAccessibleTableModelChangeEvent_VTable* vtbl, QAccessibleInterface* iface, QAccessibleTableModelChangeEvent::ModelChangeType changeType): QAccessibleTableModelChangeEvent(iface, changeType), vtbl(vtbl) {}

	virtual ~VirtualQAccessibleTableModelChangeEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QAccessibleInterface* accessibleInterface() const override {
		if (vtbl->accessibleInterface == 0) {
			return QAccessibleTableModelChangeEvent::accessibleInterface();
		}

		QAccessibleInterface* callback_return_value = vtbl->accessibleInterface(this);
		return callback_return_value;
	}

	friend QAccessibleInterface* QAccessibleTableModelChangeEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTableModelChangeEvent* self);

};

VirtualQAccessibleTableModelChangeEvent* QAccessibleTableModelChangeEvent_new(const QAccessibleTableModelChangeEvent_VTable* vtbl, size_t vdata, QObject* obj, int changeType) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleTableModelChangeEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleTableModelChangeEvent(vtbl, obj, static_cast<QAccessibleTableModelChangeEvent::ModelChangeType>(changeType)) : nullptr;
}

VirtualQAccessibleTableModelChangeEvent* QAccessibleTableModelChangeEvent_new2(const QAccessibleTableModelChangeEvent_VTable* vtbl, size_t vdata, QAccessibleInterface* iface, int changeType) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibleTableModelChangeEvent>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibleTableModelChangeEvent(vtbl, iface, static_cast<QAccessibleTableModelChangeEvent::ModelChangeType>(changeType)) : nullptr;
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

void* QAccessibleTableModelChangeEvent_vdata(VirtualQAccessibleTableModelChangeEvent* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAccessibleTableModelChangeEvent>()); }
VirtualQAccessibleTableModelChangeEvent* vdata_QAccessibleTableModelChangeEvent(void* vdata) { return reinterpret_cast<VirtualQAccessibleTableModelChangeEvent*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAccessibleTableModelChangeEvent>()); }

QAccessibleInterface* QAccessibleTableModelChangeEvent_virtualbase_accessibleInterface(const VirtualQAccessibleTableModelChangeEvent* self) {

	return self->QAccessibleTableModelChangeEvent::accessibleInterface();
}

void QAccessibleTableModelChangeEvent_delete(QAccessibleTableModelChangeEvent* self) {
	delete self;
}

QAccessible__State* QAccessible__State_new() {
	return new (std::nothrow) QAccessible__State();
}

QAccessible__State* QAccessible__State_new2(QAccessible__State* param1) {
	return new (std::nothrow) QAccessible__State(*param1);
}

unsigned long long QAccessible__State_disabled(const QAccessible__State* self) {
	quint64 disabled_ret = self->disabled;
	return static_cast<unsigned long long>(disabled_ret);
}

void QAccessible__State_setDisabled(QAccessible__State* self, unsigned long long disabled) {
	self->disabled = static_cast<quint64>(disabled);
}

unsigned long long QAccessible__State_selected(const QAccessible__State* self) {
	quint64 selected_ret = self->selected;
	return static_cast<unsigned long long>(selected_ret);
}

void QAccessible__State_setSelected(QAccessible__State* self, unsigned long long selected) {
	self->selected = static_cast<quint64>(selected);
}

unsigned long long QAccessible__State_focusable(const QAccessible__State* self) {
	quint64 focusable_ret = self->focusable;
	return static_cast<unsigned long long>(focusable_ret);
}

void QAccessible__State_setFocusable(QAccessible__State* self, unsigned long long focusable) {
	self->focusable = static_cast<quint64>(focusable);
}

unsigned long long QAccessible__State_focused(const QAccessible__State* self) {
	quint64 focused_ret = self->focused;
	return static_cast<unsigned long long>(focused_ret);
}

void QAccessible__State_setFocused(QAccessible__State* self, unsigned long long focused) {
	self->focused = static_cast<quint64>(focused);
}

unsigned long long QAccessible__State_pressed(const QAccessible__State* self) {
	quint64 pressed_ret = self->pressed;
	return static_cast<unsigned long long>(pressed_ret);
}

void QAccessible__State_setPressed(QAccessible__State* self, unsigned long long pressed) {
	self->pressed = static_cast<quint64>(pressed);
}

unsigned long long QAccessible__State_checkable(const QAccessible__State* self) {
	quint64 checkable_ret = self->checkable;
	return static_cast<unsigned long long>(checkable_ret);
}

void QAccessible__State_setCheckable(QAccessible__State* self, unsigned long long checkable) {
	self->checkable = static_cast<quint64>(checkable);
}

unsigned long long QAccessible__State_checked(const QAccessible__State* self) {
	quint64 checked_ret = self->checked;
	return static_cast<unsigned long long>(checked_ret);
}

void QAccessible__State_setChecked(QAccessible__State* self, unsigned long long checked) {
	self->checked = static_cast<quint64>(checked);
}

unsigned long long QAccessible__State_checkStateMixed(const QAccessible__State* self) {
	quint64 checkStateMixed_ret = self->checkStateMixed;
	return static_cast<unsigned long long>(checkStateMixed_ret);
}

void QAccessible__State_setCheckStateMixed(QAccessible__State* self, unsigned long long checkStateMixed) {
	self->checkStateMixed = static_cast<quint64>(checkStateMixed);
}

unsigned long long QAccessible__State_readOnly(const QAccessible__State* self) {
	quint64 readOnly_ret = self->readOnly;
	return static_cast<unsigned long long>(readOnly_ret);
}

void QAccessible__State_setReadOnly(QAccessible__State* self, unsigned long long readOnly) {
	self->readOnly = static_cast<quint64>(readOnly);
}

unsigned long long QAccessible__State_hotTracked(const QAccessible__State* self) {
	quint64 hotTracked_ret = self->hotTracked;
	return static_cast<unsigned long long>(hotTracked_ret);
}

void QAccessible__State_setHotTracked(QAccessible__State* self, unsigned long long hotTracked) {
	self->hotTracked = static_cast<quint64>(hotTracked);
}

unsigned long long QAccessible__State_defaultButton(const QAccessible__State* self) {
	quint64 defaultButton_ret = self->defaultButton;
	return static_cast<unsigned long long>(defaultButton_ret);
}

void QAccessible__State_setDefaultButton(QAccessible__State* self, unsigned long long defaultButton) {
	self->defaultButton = static_cast<quint64>(defaultButton);
}

unsigned long long QAccessible__State_expanded(const QAccessible__State* self) {
	quint64 expanded_ret = self->expanded;
	return static_cast<unsigned long long>(expanded_ret);
}

void QAccessible__State_setExpanded(QAccessible__State* self, unsigned long long expanded) {
	self->expanded = static_cast<quint64>(expanded);
}

unsigned long long QAccessible__State_collapsed(const QAccessible__State* self) {
	quint64 collapsed_ret = self->collapsed;
	return static_cast<unsigned long long>(collapsed_ret);
}

void QAccessible__State_setCollapsed(QAccessible__State* self, unsigned long long collapsed) {
	self->collapsed = static_cast<quint64>(collapsed);
}

unsigned long long QAccessible__State_busy(const QAccessible__State* self) {
	quint64 busy_ret = self->busy;
	return static_cast<unsigned long long>(busy_ret);
}

void QAccessible__State_setBusy(QAccessible__State* self, unsigned long long busy) {
	self->busy = static_cast<quint64>(busy);
}

unsigned long long QAccessible__State_expandable(const QAccessible__State* self) {
	quint64 expandable_ret = self->expandable;
	return static_cast<unsigned long long>(expandable_ret);
}

void QAccessible__State_setExpandable(QAccessible__State* self, unsigned long long expandable) {
	self->expandable = static_cast<quint64>(expandable);
}

unsigned long long QAccessible__State_marqueed(const QAccessible__State* self) {
	quint64 marqueed_ret = self->marqueed;
	return static_cast<unsigned long long>(marqueed_ret);
}

void QAccessible__State_setMarqueed(QAccessible__State* self, unsigned long long marqueed) {
	self->marqueed = static_cast<quint64>(marqueed);
}

unsigned long long QAccessible__State_animated(const QAccessible__State* self) {
	quint64 animated_ret = self->animated;
	return static_cast<unsigned long long>(animated_ret);
}

void QAccessible__State_setAnimated(QAccessible__State* self, unsigned long long animated) {
	self->animated = static_cast<quint64>(animated);
}

unsigned long long QAccessible__State_invisible(const QAccessible__State* self) {
	quint64 invisible_ret = self->invisible;
	return static_cast<unsigned long long>(invisible_ret);
}

void QAccessible__State_setInvisible(QAccessible__State* self, unsigned long long invisible) {
	self->invisible = static_cast<quint64>(invisible);
}

unsigned long long QAccessible__State_offscreen(const QAccessible__State* self) {
	quint64 offscreen_ret = self->offscreen;
	return static_cast<unsigned long long>(offscreen_ret);
}

void QAccessible__State_setOffscreen(QAccessible__State* self, unsigned long long offscreen) {
	self->offscreen = static_cast<quint64>(offscreen);
}

unsigned long long QAccessible__State_sizeable(const QAccessible__State* self) {
	quint64 sizeable_ret = self->sizeable;
	return static_cast<unsigned long long>(sizeable_ret);
}

void QAccessible__State_setSizeable(QAccessible__State* self, unsigned long long sizeable) {
	self->sizeable = static_cast<quint64>(sizeable);
}

unsigned long long QAccessible__State_movable(const QAccessible__State* self) {
	quint64 movable_ret = self->movable;
	return static_cast<unsigned long long>(movable_ret);
}

void QAccessible__State_setMovable(QAccessible__State* self, unsigned long long movable) {
	self->movable = static_cast<quint64>(movable);
}

unsigned long long QAccessible__State_selfVoicing(const QAccessible__State* self) {
	quint64 selfVoicing_ret = self->selfVoicing;
	return static_cast<unsigned long long>(selfVoicing_ret);
}

void QAccessible__State_setSelfVoicing(QAccessible__State* self, unsigned long long selfVoicing) {
	self->selfVoicing = static_cast<quint64>(selfVoicing);
}

unsigned long long QAccessible__State_selectable(const QAccessible__State* self) {
	quint64 selectable_ret = self->selectable;
	return static_cast<unsigned long long>(selectable_ret);
}

void QAccessible__State_setSelectable(QAccessible__State* self, unsigned long long selectable) {
	self->selectable = static_cast<quint64>(selectable);
}

unsigned long long QAccessible__State_linked(const QAccessible__State* self) {
	quint64 linked_ret = self->linked;
	return static_cast<unsigned long long>(linked_ret);
}

void QAccessible__State_setLinked(QAccessible__State* self, unsigned long long linked) {
	self->linked = static_cast<quint64>(linked);
}

unsigned long long QAccessible__State_traversed(const QAccessible__State* self) {
	quint64 traversed_ret = self->traversed;
	return static_cast<unsigned long long>(traversed_ret);
}

void QAccessible__State_setTraversed(QAccessible__State* self, unsigned long long traversed) {
	self->traversed = static_cast<quint64>(traversed);
}

unsigned long long QAccessible__State_multiSelectable(const QAccessible__State* self) {
	quint64 multiSelectable_ret = self->multiSelectable;
	return static_cast<unsigned long long>(multiSelectable_ret);
}

void QAccessible__State_setMultiSelectable(QAccessible__State* self, unsigned long long multiSelectable) {
	self->multiSelectable = static_cast<quint64>(multiSelectable);
}

unsigned long long QAccessible__State_extSelectable(const QAccessible__State* self) {
	quint64 extSelectable_ret = self->extSelectable;
	return static_cast<unsigned long long>(extSelectable_ret);
}

void QAccessible__State_setExtSelectable(QAccessible__State* self, unsigned long long extSelectable) {
	self->extSelectable = static_cast<quint64>(extSelectable);
}

unsigned long long QAccessible__State_passwordEdit(const QAccessible__State* self) {
	quint64 passwordEdit_ret = self->passwordEdit;
	return static_cast<unsigned long long>(passwordEdit_ret);
}

void QAccessible__State_setPasswordEdit(QAccessible__State* self, unsigned long long passwordEdit) {
	self->passwordEdit = static_cast<quint64>(passwordEdit);
}

unsigned long long QAccessible__State_hasPopup(const QAccessible__State* self) {
	quint64 hasPopup_ret = self->hasPopup;
	return static_cast<unsigned long long>(hasPopup_ret);
}

void QAccessible__State_setHasPopup(QAccessible__State* self, unsigned long long hasPopup) {
	self->hasPopup = static_cast<quint64>(hasPopup);
}

unsigned long long QAccessible__State_modal(const QAccessible__State* self) {
	quint64 modal_ret = self->modal;
	return static_cast<unsigned long long>(modal_ret);
}

void QAccessible__State_setModal(QAccessible__State* self, unsigned long long modal) {
	self->modal = static_cast<quint64>(modal);
}

unsigned long long QAccessible__State_active(const QAccessible__State* self) {
	quint64 active_ret = self->active;
	return static_cast<unsigned long long>(active_ret);
}

void QAccessible__State_setActive(QAccessible__State* self, unsigned long long active) {
	self->active = static_cast<quint64>(active);
}

unsigned long long QAccessible__State_invalid(const QAccessible__State* self) {
	quint64 invalid_ret = self->invalid;
	return static_cast<unsigned long long>(invalid_ret);
}

void QAccessible__State_setInvalid(QAccessible__State* self, unsigned long long invalid) {
	self->invalid = static_cast<quint64>(invalid);
}

unsigned long long QAccessible__State_editable(const QAccessible__State* self) {
	quint64 editable_ret = self->editable;
	return static_cast<unsigned long long>(editable_ret);
}

void QAccessible__State_setEditable(QAccessible__State* self, unsigned long long editable) {
	self->editable = static_cast<quint64>(editable);
}

unsigned long long QAccessible__State_multiLine(const QAccessible__State* self) {
	quint64 multiLine_ret = self->multiLine;
	return static_cast<unsigned long long>(multiLine_ret);
}

void QAccessible__State_setMultiLine(QAccessible__State* self, unsigned long long multiLine) {
	self->multiLine = static_cast<quint64>(multiLine);
}

unsigned long long QAccessible__State_selectableText(const QAccessible__State* self) {
	quint64 selectableText_ret = self->selectableText;
	return static_cast<unsigned long long>(selectableText_ret);
}

void QAccessible__State_setSelectableText(QAccessible__State* self, unsigned long long selectableText) {
	self->selectableText = static_cast<quint64>(selectableText);
}

unsigned long long QAccessible__State_supportsAutoCompletion(const QAccessible__State* self) {
	quint64 supportsAutoCompletion_ret = self->supportsAutoCompletion;
	return static_cast<unsigned long long>(supportsAutoCompletion_ret);
}

void QAccessible__State_setSupportsAutoCompletion(QAccessible__State* self, unsigned long long supportsAutoCompletion) {
	self->supportsAutoCompletion = static_cast<quint64>(supportsAutoCompletion);
}

unsigned long long QAccessible__State_searchEdit(const QAccessible__State* self) {
	quint64 searchEdit_ret = self->searchEdit;
	return static_cast<unsigned long long>(searchEdit_ret);
}

void QAccessible__State_setSearchEdit(QAccessible__State* self, unsigned long long searchEdit) {
	self->searchEdit = static_cast<quint64>(searchEdit);
}

void QAccessible__State_delete(QAccessible__State* self) {
	delete self;
}

void QAccessible__ActivationObserver_accessibilityActiveChanged(QAccessible__ActivationObserver* self, bool active) {
	self->accessibilityActiveChanged(active);
}

void QAccessible__ActivationObserver_operatorAssign(QAccessible__ActivationObserver* self, QAccessible__ActivationObserver* param1) {
	self->operator=(*param1);
}

void QAccessible__ActivationObserver_delete(QAccessible__ActivationObserver* self) {
	delete self;
}

