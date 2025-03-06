#include <QAbstractItemModel>
#include <QChildEvent>
#include <QEvent>
#include <QItemSelection>
#include <QItemSelectionModel>
#include <QItemSelectionRange>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QModelIndex>
#include <QObject>
#include <QPersistentModelIndex>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qitemselectionmodel.h>
#include "gen_qitemselectionmodel.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QItemSelectionModel_selectionChanged(intptr_t, QItemSelection*, QItemSelection*);
void miqt_exec_callback_QItemSelectionModel_currentChanged(intptr_t, QModelIndex*, QModelIndex*);
void miqt_exec_callback_QItemSelectionModel_currentRowChanged(intptr_t, QModelIndex*, QModelIndex*);
void miqt_exec_callback_QItemSelectionModel_currentColumnChanged(intptr_t, QModelIndex*, QModelIndex*);
void miqt_exec_callback_QItemSelectionModel_modelChanged(intptr_t, QAbstractItemModel*);
#ifdef __cplusplus
} /* extern C */
#endif

QItemSelectionRange* QItemSelectionRange_new() {
	return new QItemSelectionRange();
}

QItemSelectionRange* QItemSelectionRange_new2(QModelIndex* topL, QModelIndex* bottomR) {
	return new QItemSelectionRange(*topL, *bottomR);
}

QItemSelectionRange* QItemSelectionRange_new3(QModelIndex* index) {
	return new QItemSelectionRange(*index);
}

QItemSelectionRange* QItemSelectionRange_new4(QItemSelectionRange* param1) {
	return new QItemSelectionRange(*param1);
}

void QItemSelectionRange_swap(QItemSelectionRange* self, QItemSelectionRange* other) {
	self->swap(*other);
}

int QItemSelectionRange_top(const QItemSelectionRange* self) {
	return self->top();
}

int QItemSelectionRange_left(const QItemSelectionRange* self) {
	return self->left();
}

int QItemSelectionRange_bottom(const QItemSelectionRange* self) {
	return self->bottom();
}

int QItemSelectionRange_right(const QItemSelectionRange* self) {
	return self->right();
}

int QItemSelectionRange_width(const QItemSelectionRange* self) {
	return self->width();
}

int QItemSelectionRange_height(const QItemSelectionRange* self) {
	return self->height();
}

QPersistentModelIndex* QItemSelectionRange_topLeft(const QItemSelectionRange* self) {
	const QPersistentModelIndex& _ret = self->topLeft();
	// Cast returned reference into pointer
	return const_cast<QPersistentModelIndex*>(&_ret);
}

QPersistentModelIndex* QItemSelectionRange_bottomRight(const QItemSelectionRange* self) {
	const QPersistentModelIndex& _ret = self->bottomRight();
	// Cast returned reference into pointer
	return const_cast<QPersistentModelIndex*>(&_ret);
}

QModelIndex* QItemSelectionRange_parent(const QItemSelectionRange* self) {
	return new QModelIndex(self->parent());
}

QAbstractItemModel* QItemSelectionRange_model(const QItemSelectionRange* self) {
	return (QAbstractItemModel*) self->model();
}

bool QItemSelectionRange_contains(const QItemSelectionRange* self, QModelIndex* index) {
	return self->contains(*index);
}

bool QItemSelectionRange_contains2(const QItemSelectionRange* self, int row, int column, QModelIndex* parentIndex) {
	return self->contains(static_cast<int>(row), static_cast<int>(column), *parentIndex);
}

bool QItemSelectionRange_intersects(const QItemSelectionRange* self, QItemSelectionRange* other) {
	return self->intersects(*other);
}

QItemSelectionRange* QItemSelectionRange_intersected(const QItemSelectionRange* self, QItemSelectionRange* other) {
	return new QItemSelectionRange(self->intersected(*other));
}

bool QItemSelectionRange_operatorEqual(const QItemSelectionRange* self, QItemSelectionRange* other) {
	return (*self == *other);
}

bool QItemSelectionRange_operatorNotEqual(const QItemSelectionRange* self, QItemSelectionRange* other) {
	return (*self != *other);
}

bool QItemSelectionRange_isValid(const QItemSelectionRange* self) {
	return self->isValid();
}

bool QItemSelectionRange_isEmpty(const QItemSelectionRange* self) {
	return self->isEmpty();
}

struct miqt_array /* of QModelIndex* */  QItemSelectionRange_indexes(const QItemSelectionRange* self) {
	QModelIndexList _ret = self->indexes();
	// Convert QList<> from C++ memory to manually-managed C memory
	QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QModelIndex(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QItemSelectionRange_delete(QItemSelectionRange* self) {
	delete self;
}

class VirtualQItemSelectionModel final : public QItemSelectionModel {
	struct QItemSelectionModel_VTable* vtbl;
public:

	VirtualQItemSelectionModel(struct QItemSelectionModel_VTable* vtbl): QItemSelectionModel(), vtbl(vtbl) {};
	VirtualQItemSelectionModel(struct QItemSelectionModel_VTable* vtbl, QAbstractItemModel* model, QObject* parent): QItemSelectionModel(model, parent), vtbl(vtbl) {};
	VirtualQItemSelectionModel(struct QItemSelectionModel_VTable* vtbl, QAbstractItemModel* model): QItemSelectionModel(model), vtbl(vtbl) {};

	virtual ~VirtualQItemSelectionModel() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QItemSelectionModel::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QItemSelectionModel_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QItemSelectionModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QItemSelectionModel_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QItemSelectionModel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QItemSelectionModel_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void setCurrentIndex(const QModelIndex& index, QItemSelectionModel::SelectionFlags command) override {
		if (vtbl->setCurrentIndex == 0) {
			QItemSelectionModel::setCurrentIndex(index, command);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QItemSelectionModel::SelectionFlags command_ret = command;
		int sigval2 = static_cast<int>(command_ret);

		vtbl->setCurrentIndex(vtbl, this, sigval1, sigval2);

	}

	friend void QItemSelectionModel_virtualbase_setCurrentIndex(void* self, QModelIndex* index, int command);

	// Subclass to allow providing a Go implementation
	virtual void select(const QModelIndex& index, QItemSelectionModel::SelectionFlags command) override {
		if (vtbl->select == 0) {
			QItemSelectionModel::select(index, command);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QItemSelectionModel::SelectionFlags command_ret = command;
		int sigval2 = static_cast<int>(command_ret);

		vtbl->select(vtbl, this, sigval1, sigval2);

	}

	friend void QItemSelectionModel_virtualbase_select(void* self, QModelIndex* index, int command);

	// Subclass to allow providing a Go implementation
	virtual void select(const QItemSelection& selection, QItemSelectionModel::SelectionFlags command) override {
		if (vtbl->select2 == 0) {
			QItemSelectionModel::select(selection, command);
			return;
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);
		QItemSelectionModel::SelectionFlags command_ret = command;
		int sigval2 = static_cast<int>(command_ret);

		vtbl->select2(vtbl, this, sigval1, sigval2);

	}

	friend void QItemSelectionModel_virtualbase_select2(void* self, QItemSelection* selection, int command);

	// Subclass to allow providing a Go implementation
	virtual void clear() override {
		if (vtbl->clear == 0) {
			QItemSelectionModel::clear();
			return;
		}


		vtbl->clear(vtbl, this);

	}

	friend void QItemSelectionModel_virtualbase_clear(void* self);

	// Subclass to allow providing a Go implementation
	virtual void reset() override {
		if (vtbl->reset == 0) {
			QItemSelectionModel::reset();
			return;
		}


		vtbl->reset(vtbl, this);

	}

	friend void QItemSelectionModel_virtualbase_reset(void* self);

	// Subclass to allow providing a Go implementation
	virtual void clearCurrentIndex() override {
		if (vtbl->clearCurrentIndex == 0) {
			QItemSelectionModel::clearCurrentIndex();
			return;
		}


		vtbl->clearCurrentIndex(vtbl, this);

	}

	friend void QItemSelectionModel_virtualbase_clearCurrentIndex(void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QItemSelectionModel::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QItemSelectionModel_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QItemSelectionModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QItemSelectionModel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QItemSelectionModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QItemSelectionModel_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QItemSelectionModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QItemSelectionModel_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QItemSelectionModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QItemSelectionModel_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QItemSelectionModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QItemSelectionModel_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QItemSelectionModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QItemSelectionModel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QItemSelectionModel_protectedbase_emitSelectionChanged(bool* _dynamic_cast_ok, void* self, QItemSelection* newSelection, QItemSelection* oldSelection);
	friend QObject* QItemSelectionModel_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QItemSelectionModel_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QItemSelectionModel_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QItemSelectionModel_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QItemSelectionModel* QItemSelectionModel_new(struct QItemSelectionModel_VTable* vtbl) {
	return new VirtualQItemSelectionModel(vtbl);
}

QItemSelectionModel* QItemSelectionModel_new2(struct QItemSelectionModel_VTable* vtbl, QAbstractItemModel* model, QObject* parent) {
	return new VirtualQItemSelectionModel(vtbl, model, parent);
}

QItemSelectionModel* QItemSelectionModel_new3(struct QItemSelectionModel_VTable* vtbl, QAbstractItemModel* model) {
	return new VirtualQItemSelectionModel(vtbl, model);
}

void QItemSelectionModel_virtbase(QItemSelectionModel* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QItemSelectionModel_metaObject(const QItemSelectionModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QItemSelectionModel_metacast(QItemSelectionModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QItemSelectionModel_metacall(QItemSelectionModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QItemSelectionModel_tr(const char* s) {
	QString _ret = QItemSelectionModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QModelIndex* QItemSelectionModel_currentIndex(const QItemSelectionModel* self) {
	return new QModelIndex(self->currentIndex());
}

bool QItemSelectionModel_isSelected(const QItemSelectionModel* self, QModelIndex* index) {
	return self->isSelected(*index);
}

bool QItemSelectionModel_isRowSelected(const QItemSelectionModel* self, int row) {
	return self->isRowSelected(static_cast<int>(row));
}

bool QItemSelectionModel_isColumnSelected(const QItemSelectionModel* self, int column) {
	return self->isColumnSelected(static_cast<int>(column));
}

bool QItemSelectionModel_rowIntersectsSelection(const QItemSelectionModel* self, int row) {
	return self->rowIntersectsSelection(static_cast<int>(row));
}

bool QItemSelectionModel_columnIntersectsSelection(const QItemSelectionModel* self, int column) {
	return self->columnIntersectsSelection(static_cast<int>(column));
}

bool QItemSelectionModel_hasSelection(const QItemSelectionModel* self) {
	return self->hasSelection();
}

struct miqt_array /* of QModelIndex* */  QItemSelectionModel_selectedIndexes(const QItemSelectionModel* self) {
	QModelIndexList _ret = self->selectedIndexes();
	// Convert QList<> from C++ memory to manually-managed C memory
	QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QModelIndex(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QModelIndex* */  QItemSelectionModel_selectedRows(const QItemSelectionModel* self) {
	QModelIndexList _ret = self->selectedRows();
	// Convert QList<> from C++ memory to manually-managed C memory
	QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QModelIndex(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QModelIndex* */  QItemSelectionModel_selectedColumns(const QItemSelectionModel* self) {
	QModelIndexList _ret = self->selectedColumns();
	// Convert QList<> from C++ memory to manually-managed C memory
	QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QModelIndex(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QItemSelection* QItemSelectionModel_selection(const QItemSelectionModel* self) {
	return new QItemSelection(self->selection());
}

QAbstractItemModel* QItemSelectionModel_model(const QItemSelectionModel* self) {
	return (QAbstractItemModel*) self->model();
}

QAbstractItemModel* QItemSelectionModel_model2(QItemSelectionModel* self) {
	return self->model();
}

void QItemSelectionModel_setModel(QItemSelectionModel* self, QAbstractItemModel* model) {
	self->setModel(model);
}

void QItemSelectionModel_setCurrentIndex(QItemSelectionModel* self, QModelIndex* index, int command) {
	self->setCurrentIndex(*index, static_cast<QItemSelectionModel::SelectionFlags>(command));
}

void QItemSelectionModel_select(QItemSelectionModel* self, QModelIndex* index, int command) {
	self->select(*index, static_cast<QItemSelectionModel::SelectionFlags>(command));
}

void QItemSelectionModel_select2(QItemSelectionModel* self, QItemSelection* selection, int command) {
	self->select(*selection, static_cast<QItemSelectionModel::SelectionFlags>(command));
}

void QItemSelectionModel_clear(QItemSelectionModel* self) {
	self->clear();
}

void QItemSelectionModel_reset(QItemSelectionModel* self) {
	self->reset();
}

void QItemSelectionModel_clearSelection(QItemSelectionModel* self) {
	self->clearSelection();
}

void QItemSelectionModel_clearCurrentIndex(QItemSelectionModel* self) {
	self->clearCurrentIndex();
}

void QItemSelectionModel_selectionChanged(QItemSelectionModel* self, QItemSelection* selected, QItemSelection* deselected) {
	self->selectionChanged(*selected, *deselected);
}

void QItemSelectionModel_connect_selectionChanged(QItemSelectionModel* self, intptr_t slot) {
	VirtualQItemSelectionModel::connect(self, static_cast<void (QItemSelectionModel::*)(const QItemSelection&, const QItemSelection&)>(&QItemSelectionModel::selectionChanged), self, [=](const QItemSelection& selected, const QItemSelection& deselected) {
		const QItemSelection& selected_ret = selected;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selected_ret);
		const QItemSelection& deselected_ret = deselected;
		// Cast returned reference into pointer
		QItemSelection* sigval2 = const_cast<QItemSelection*>(&deselected_ret);
		miqt_exec_callback_QItemSelectionModel_selectionChanged(slot, sigval1, sigval2);
	});
}

void QItemSelectionModel_currentChanged(QItemSelectionModel* self, QModelIndex* current, QModelIndex* previous) {
	self->currentChanged(*current, *previous);
}

void QItemSelectionModel_connect_currentChanged(QItemSelectionModel* self, intptr_t slot) {
	VirtualQItemSelectionModel::connect(self, static_cast<void (QItemSelectionModel::*)(const QModelIndex&, const QModelIndex&)>(&QItemSelectionModel::currentChanged), self, [=](const QModelIndex& current, const QModelIndex& previous) {
		const QModelIndex& current_ret = current;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&current_ret);
		const QModelIndex& previous_ret = previous;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&previous_ret);
		miqt_exec_callback_QItemSelectionModel_currentChanged(slot, sigval1, sigval2);
	});
}

void QItemSelectionModel_currentRowChanged(QItemSelectionModel* self, QModelIndex* current, QModelIndex* previous) {
	self->currentRowChanged(*current, *previous);
}

void QItemSelectionModel_connect_currentRowChanged(QItemSelectionModel* self, intptr_t slot) {
	VirtualQItemSelectionModel::connect(self, static_cast<void (QItemSelectionModel::*)(const QModelIndex&, const QModelIndex&)>(&QItemSelectionModel::currentRowChanged), self, [=](const QModelIndex& current, const QModelIndex& previous) {
		const QModelIndex& current_ret = current;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&current_ret);
		const QModelIndex& previous_ret = previous;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&previous_ret);
		miqt_exec_callback_QItemSelectionModel_currentRowChanged(slot, sigval1, sigval2);
	});
}

void QItemSelectionModel_currentColumnChanged(QItemSelectionModel* self, QModelIndex* current, QModelIndex* previous) {
	self->currentColumnChanged(*current, *previous);
}

void QItemSelectionModel_connect_currentColumnChanged(QItemSelectionModel* self, intptr_t slot) {
	VirtualQItemSelectionModel::connect(self, static_cast<void (QItemSelectionModel::*)(const QModelIndex&, const QModelIndex&)>(&QItemSelectionModel::currentColumnChanged), self, [=](const QModelIndex& current, const QModelIndex& previous) {
		const QModelIndex& current_ret = current;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&current_ret);
		const QModelIndex& previous_ret = previous;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&previous_ret);
		miqt_exec_callback_QItemSelectionModel_currentColumnChanged(slot, sigval1, sigval2);
	});
}

void QItemSelectionModel_modelChanged(QItemSelectionModel* self, QAbstractItemModel* model) {
	self->modelChanged(model);
}

void QItemSelectionModel_connect_modelChanged(QItemSelectionModel* self, intptr_t slot) {
	VirtualQItemSelectionModel::connect(self, static_cast<void (QItemSelectionModel::*)(QAbstractItemModel*)>(&QItemSelectionModel::modelChanged), self, [=](QAbstractItemModel* model) {
		QAbstractItemModel* sigval1 = model;
		miqt_exec_callback_QItemSelectionModel_modelChanged(slot, sigval1);
	});
}

struct miqt_string QItemSelectionModel_tr2(const char* s, const char* c) {
	QString _ret = QItemSelectionModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QItemSelectionModel_tr3(const char* s, const char* c, int n) {
	QString _ret = QItemSelectionModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QItemSelectionModel_isRowSelected2(const QItemSelectionModel* self, int row, QModelIndex* parent) {
	return self->isRowSelected(static_cast<int>(row), *parent);
}

bool QItemSelectionModel_isColumnSelected2(const QItemSelectionModel* self, int column, QModelIndex* parent) {
	return self->isColumnSelected(static_cast<int>(column), *parent);
}

bool QItemSelectionModel_rowIntersectsSelection2(const QItemSelectionModel* self, int row, QModelIndex* parent) {
	return self->rowIntersectsSelection(static_cast<int>(row), *parent);
}

bool QItemSelectionModel_columnIntersectsSelection2(const QItemSelectionModel* self, int column, QModelIndex* parent) {
	return self->columnIntersectsSelection(static_cast<int>(column), *parent);
}

struct miqt_array /* of QModelIndex* */  QItemSelectionModel_selectedRows1(const QItemSelectionModel* self, int column) {
	QModelIndexList _ret = self->selectedRows(static_cast<int>(column));
	// Convert QList<> from C++ memory to manually-managed C memory
	QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QModelIndex(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QModelIndex* */  QItemSelectionModel_selectedColumns1(const QItemSelectionModel* self, int row) {
	QModelIndexList _ret = self->selectedColumns(static_cast<int>(row));
	// Convert QList<> from C++ memory to manually-managed C memory
	QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QModelIndex(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QMetaObject* QItemSelectionModel_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQItemSelectionModel*)(self) )->QItemSelectionModel::metaObject();

}

void* QItemSelectionModel_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQItemSelectionModel*)(self) )->QItemSelectionModel::qt_metacast(param1);

}

int QItemSelectionModel_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQItemSelectionModel*)(self) )->QItemSelectionModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QItemSelectionModel_virtualbase_setCurrentIndex(void* self, QModelIndex* index, int command) {

	( (VirtualQItemSelectionModel*)(self) )->QItemSelectionModel::setCurrentIndex(*index, static_cast<VirtualQItemSelectionModel::SelectionFlags>(command));

}

void QItemSelectionModel_virtualbase_select(void* self, QModelIndex* index, int command) {

	( (VirtualQItemSelectionModel*)(self) )->QItemSelectionModel::select(*index, static_cast<VirtualQItemSelectionModel::SelectionFlags>(command));

}

void QItemSelectionModel_virtualbase_select2(void* self, QItemSelection* selection, int command) {

	( (VirtualQItemSelectionModel*)(self) )->QItemSelectionModel::select(*selection, static_cast<VirtualQItemSelectionModel::SelectionFlags>(command));

}

void QItemSelectionModel_virtualbase_clear(void* self) {

	( (VirtualQItemSelectionModel*)(self) )->QItemSelectionModel::clear();

}

void QItemSelectionModel_virtualbase_reset(void* self) {

	( (VirtualQItemSelectionModel*)(self) )->QItemSelectionModel::reset();

}

void QItemSelectionModel_virtualbase_clearCurrentIndex(void* self) {

	( (VirtualQItemSelectionModel*)(self) )->QItemSelectionModel::clearCurrentIndex();

}

bool QItemSelectionModel_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQItemSelectionModel*)(self) )->QItemSelectionModel::event(event);

}

bool QItemSelectionModel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQItemSelectionModel*)(self) )->QItemSelectionModel::eventFilter(watched, event);

}

void QItemSelectionModel_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQItemSelectionModel*)(self) )->QItemSelectionModel::timerEvent(event);

}

void QItemSelectionModel_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQItemSelectionModel*)(self) )->QItemSelectionModel::childEvent(event);

}

void QItemSelectionModel_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQItemSelectionModel*)(self) )->QItemSelectionModel::customEvent(event);

}

void QItemSelectionModel_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQItemSelectionModel*)(self) )->QItemSelectionModel::connectNotify(*signal);

}

void QItemSelectionModel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQItemSelectionModel*)(self) )->QItemSelectionModel::disconnectNotify(*signal);

}

const QMetaObject* QItemSelectionModel_staticMetaObject() { return &QItemSelectionModel::staticMetaObject; }
void QItemSelectionModel_protectedbase_emitSelectionChanged(bool* _dynamic_cast_ok, void* self, QItemSelection* newSelection, QItemSelection* oldSelection) {
	VirtualQItemSelectionModel* self_cast = dynamic_cast<VirtualQItemSelectionModel*>( (QItemSelectionModel*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->emitSelectionChanged(*newSelection, *oldSelection);

}

QObject* QItemSelectionModel_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQItemSelectionModel* self_cast = dynamic_cast<VirtualQItemSelectionModel*>( (QItemSelectionModel*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QItemSelectionModel_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQItemSelectionModel* self_cast = dynamic_cast<VirtualQItemSelectionModel*>( (QItemSelectionModel*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QItemSelectionModel_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQItemSelectionModel* self_cast = dynamic_cast<VirtualQItemSelectionModel*>( (QItemSelectionModel*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QItemSelectionModel_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQItemSelectionModel* self_cast = dynamic_cast<VirtualQItemSelectionModel*>( (QItemSelectionModel*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QItemSelectionModel_delete(QItemSelectionModel* self) {
	delete self;
}

QItemSelection* QItemSelection_new(QModelIndex* topLeft, QModelIndex* bottomRight) {
	return new QItemSelection(*topLeft, *bottomRight);
}

QItemSelection* QItemSelection_new2() {
	return new QItemSelection();
}

QItemSelection* QItemSelection_new3(QItemSelection* param1) {
	return new QItemSelection(*param1);
}

void QItemSelection_select(QItemSelection* self, QModelIndex* topLeft, QModelIndex* bottomRight) {
	self->select(*topLeft, *bottomRight);
}

bool QItemSelection_contains(const QItemSelection* self, QModelIndex* index) {
	return self->contains(*index);
}

struct miqt_array /* of QModelIndex* */  QItemSelection_indexes(const QItemSelection* self) {
	QModelIndexList _ret = self->indexes();
	// Convert QList<> from C++ memory to manually-managed C memory
	QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QModelIndex(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QItemSelection_merge(QItemSelection* self, QItemSelection* other, int command) {
	self->merge(*other, static_cast<QItemSelectionModel::SelectionFlags>(command));
}

void QItemSelection_split(QItemSelectionRange* range, QItemSelectionRange* other, QItemSelection* result) {
	QItemSelection::split(*range, *other, result);
}

void QItemSelection_delete(QItemSelection* self) {
	delete self;
}

