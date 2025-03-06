#include <QAbstractItemModel>
#include <QAbstractItemView>
#include <QChildEvent>
#include <QCompleter>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QModelIndex>
#include <QObject>
#include <QRect>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWidget>
#include <qcompleter.h>
#include "gen_qcompleter.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQCompleter final : public QCompleter {
	struct QCompleter_VTable* vtbl;
public:

	VirtualQCompleter(struct QCompleter_VTable* vtbl): QCompleter(), vtbl(vtbl) {};
	VirtualQCompleter(struct QCompleter_VTable* vtbl, QAbstractItemModel* model): QCompleter(model), vtbl(vtbl) {};
	VirtualQCompleter(struct QCompleter_VTable* vtbl, const QStringList& completions): QCompleter(completions), vtbl(vtbl) {};
	VirtualQCompleter(struct QCompleter_VTable* vtbl, QObject* parent): QCompleter(parent), vtbl(vtbl) {};
	VirtualQCompleter(struct QCompleter_VTable* vtbl, QAbstractItemModel* model, QObject* parent): QCompleter(model, parent), vtbl(vtbl) {};
	VirtualQCompleter(struct QCompleter_VTable* vtbl, const QStringList& completions, QObject* parent): QCompleter(completions, parent), vtbl(vtbl) {};

	virtual ~VirtualQCompleter() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QCompleter::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QCompleter_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QCompleter::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QCompleter_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QCompleter::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QCompleter_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QString pathFromIndex(const QModelIndex& index) const override {
		if (vtbl->pathFromIndex == 0) {
			return QCompleter::pathFromIndex(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		struct miqt_string callback_return_value = vtbl->pathFromIndex(vtbl, this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	friend struct miqt_string QCompleter_virtualbase_pathFromIndex(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual QStringList splitPath(const QString& path) const override {
		if (vtbl->splitPath == 0) {
			return QCompleter::splitPath(path);
		}

		const QString path_ret = path;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray path_b = path_ret.toUtf8();
		struct miqt_string path_ms;
		path_ms.len = path_b.length();
		path_ms.data = static_cast<char*>(malloc(path_ms.len));
		memcpy(path_ms.data, path_b.data(), path_ms.len);
		struct miqt_string sigval1 = path_ms;

		struct miqt_array /* of struct miqt_string */  callback_return_value = vtbl->splitPath(vtbl, this, sigval1);
		QStringList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		struct miqt_string* callback_return_value_arr = static_cast<struct miqt_string*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QString callback_return_value_arr_i_QString = QString::fromUtf8(callback_return_value_arr[i].data, callback_return_value_arr[i].len);
			callback_return_value_QList.push_back(callback_return_value_arr_i_QString);
		}

		return callback_return_value_QList;
	}

	friend struct miqt_array /* of struct miqt_string */  QCompleter_virtualbase_splitPath(const void* self, struct miqt_string path);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* o, QEvent* e) override {
		if (vtbl->eventFilter == 0) {
			return QCompleter::eventFilter(o, e);
		}

		QObject* sigval1 = o;
		QEvent* sigval2 = e;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QCompleter_virtualbase_eventFilter(void* self, QObject* o, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QCompleter::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QCompleter_virtualbase_event(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QCompleter::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QCompleter_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QCompleter::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QCompleter_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QCompleter::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QCompleter_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QCompleter::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QCompleter_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QCompleter::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QCompleter_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QCompleter_protectedbase_sender(const void* self);
	friend int QCompleter_protectedbase_senderSignalIndex(const void* self);
	friend int QCompleter_protectedbase_receivers(const void* self, const char* signal);
	friend bool QCompleter_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QCompleter* QCompleter_new(struct QCompleter_VTable* vtbl) {
	return new VirtualQCompleter(vtbl);
}

QCompleter* QCompleter_new2(struct QCompleter_VTable* vtbl, QAbstractItemModel* model) {
	return new VirtualQCompleter(vtbl, model);
}

QCompleter* QCompleter_new3(struct QCompleter_VTable* vtbl, struct miqt_array /* of struct miqt_string */  completions) {
	QStringList completions_QList;
	completions_QList.reserve(completions.len);
	struct miqt_string* completions_arr = static_cast<struct miqt_string*>(completions.data);
	for(size_t i = 0; i < completions.len; ++i) {
		QString completions_arr_i_QString = QString::fromUtf8(completions_arr[i].data, completions_arr[i].len);
		completions_QList.push_back(completions_arr_i_QString);
	}
	return new VirtualQCompleter(vtbl, completions_QList);
}

QCompleter* QCompleter_new4(struct QCompleter_VTable* vtbl, QObject* parent) {
	return new VirtualQCompleter(vtbl, parent);
}

QCompleter* QCompleter_new5(struct QCompleter_VTable* vtbl, QAbstractItemModel* model, QObject* parent) {
	return new VirtualQCompleter(vtbl, model, parent);
}

QCompleter* QCompleter_new6(struct QCompleter_VTable* vtbl, struct miqt_array /* of struct miqt_string */  completions, QObject* parent) {
	QStringList completions_QList;
	completions_QList.reserve(completions.len);
	struct miqt_string* completions_arr = static_cast<struct miqt_string*>(completions.data);
	for(size_t i = 0; i < completions.len; ++i) {
		QString completions_arr_i_QString = QString::fromUtf8(completions_arr[i].data, completions_arr[i].len);
		completions_QList.push_back(completions_arr_i_QString);
	}
	return new VirtualQCompleter(vtbl, completions_QList, parent);
}

void QCompleter_virtbase(QCompleter* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QCompleter_metaObject(const QCompleter* self) {
	return (QMetaObject*) self->metaObject();
}

void* QCompleter_metacast(QCompleter* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QCompleter_metacall(QCompleter* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QCompleter_tr(const char* s) {
	QString _ret = QCompleter::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCompleter_trUtf8(const char* s) {
	QString _ret = QCompleter::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QCompleter_setWidget(QCompleter* self, QWidget* widget) {
	self->setWidget(widget);
}

QWidget* QCompleter_widget(const QCompleter* self) {
	return self->widget();
}

void QCompleter_setModel(QCompleter* self, QAbstractItemModel* c) {
	self->setModel(c);
}

QAbstractItemModel* QCompleter_model(const QCompleter* self) {
	return self->model();
}

void QCompleter_setCompletionMode(QCompleter* self, int mode) {
	self->setCompletionMode(static_cast<QCompleter::CompletionMode>(mode));
}

int QCompleter_completionMode(const QCompleter* self) {
	QCompleter::CompletionMode _ret = self->completionMode();
	return static_cast<int>(_ret);
}

void QCompleter_setFilterMode(QCompleter* self, int filterMode) {
	self->setFilterMode(static_cast<Qt::MatchFlags>(filterMode));
}

int QCompleter_filterMode(const QCompleter* self) {
	Qt::MatchFlags _ret = self->filterMode();
	return static_cast<int>(_ret);
}

QAbstractItemView* QCompleter_popup(const QCompleter* self) {
	return self->popup();
}

void QCompleter_setPopup(QCompleter* self, QAbstractItemView* popup) {
	self->setPopup(popup);
}

void QCompleter_setCaseSensitivity(QCompleter* self, int caseSensitivity) {
	self->setCaseSensitivity(static_cast<Qt::CaseSensitivity>(caseSensitivity));
}

int QCompleter_caseSensitivity(const QCompleter* self) {
	Qt::CaseSensitivity _ret = self->caseSensitivity();
	return static_cast<int>(_ret);
}

void QCompleter_setModelSorting(QCompleter* self, int sorting) {
	self->setModelSorting(static_cast<QCompleter::ModelSorting>(sorting));
}

int QCompleter_modelSorting(const QCompleter* self) {
	QCompleter::ModelSorting _ret = self->modelSorting();
	return static_cast<int>(_ret);
}

void QCompleter_setCompletionColumn(QCompleter* self, int column) {
	self->setCompletionColumn(static_cast<int>(column));
}

int QCompleter_completionColumn(const QCompleter* self) {
	return self->completionColumn();
}

void QCompleter_setCompletionRole(QCompleter* self, int role) {
	self->setCompletionRole(static_cast<int>(role));
}

int QCompleter_completionRole(const QCompleter* self) {
	return self->completionRole();
}

bool QCompleter_wrapAround(const QCompleter* self) {
	return self->wrapAround();
}

int QCompleter_maxVisibleItems(const QCompleter* self) {
	return self->maxVisibleItems();
}

void QCompleter_setMaxVisibleItems(QCompleter* self, int maxItems) {
	self->setMaxVisibleItems(static_cast<int>(maxItems));
}

int QCompleter_completionCount(const QCompleter* self) {
	return self->completionCount();
}

bool QCompleter_setCurrentRow(QCompleter* self, int row) {
	return self->setCurrentRow(static_cast<int>(row));
}

int QCompleter_currentRow(const QCompleter* self) {
	return self->currentRow();
}

QModelIndex* QCompleter_currentIndex(const QCompleter* self) {
	return new QModelIndex(self->currentIndex());
}

struct miqt_string QCompleter_currentCompletion(const QCompleter* self) {
	QString _ret = self->currentCompletion();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAbstractItemModel* QCompleter_completionModel(const QCompleter* self) {
	return self->completionModel();
}

struct miqt_string QCompleter_completionPrefix(const QCompleter* self) {
	QString _ret = self->completionPrefix();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QCompleter_setCompletionPrefix(QCompleter* self, struct miqt_string prefix) {
	QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);
	self->setCompletionPrefix(prefix_QString);
}

void QCompleter_complete(QCompleter* self) {
	self->complete();
}

void QCompleter_setWrapAround(QCompleter* self, bool wrap) {
	self->setWrapAround(wrap);
}

struct miqt_string QCompleter_pathFromIndex(const QCompleter* self, QModelIndex* index) {
	QString _ret = self->pathFromIndex(*index);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of struct miqt_string */  QCompleter_splitPath(const QCompleter* self, struct miqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	QStringList _ret = self->splitPath(path_QString);
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

void QCompleter_activated(QCompleter* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->activated(text_QString);
}

void QCompleter_connect_activated(QCompleter* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& text) {
			const QString text_ret = text;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray text_b = text_ret.toUtf8();
			struct miqt_string text_ms;
			text_ms.len = text_b.length();
			text_ms.data = static_cast<char*>(malloc(text_ms.len));
			memcpy(text_ms.data, text_b.data(), text_ms.len);
			struct miqt_string sigval1 = text_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQCompleter::connect(self, static_cast<void (QCompleter::*)(const QString&)>(&QCompleter::activated), self, local_caller{slot, callback, release});
}

void QCompleter_activatedWithIndex(QCompleter* self, QModelIndex* index) {
	self->activated(*index);
}

void QCompleter_connect_activatedWithIndex(QCompleter* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QModelIndex*);
		void operator()(const QModelIndex& index) {
			const QModelIndex& index_ret = index;
			// Cast returned reference into pointer
			QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQCompleter::connect(self, static_cast<void (QCompleter::*)(const QModelIndex&)>(&QCompleter::activated), self, local_caller{slot, callback, release});
}

void QCompleter_highlighted(QCompleter* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->highlighted(text_QString);
}

void QCompleter_connect_highlighted(QCompleter* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& text) {
			const QString text_ret = text;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray text_b = text_ret.toUtf8();
			struct miqt_string text_ms;
			text_ms.len = text_b.length();
			text_ms.data = static_cast<char*>(malloc(text_ms.len));
			memcpy(text_ms.data, text_b.data(), text_ms.len);
			struct miqt_string sigval1 = text_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQCompleter::connect(self, static_cast<void (QCompleter::*)(const QString&)>(&QCompleter::highlighted), self, local_caller{slot, callback, release});
}

void QCompleter_highlightedWithIndex(QCompleter* self, QModelIndex* index) {
	self->highlighted(*index);
}

void QCompleter_connect_highlightedWithIndex(QCompleter* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QModelIndex*);
		void operator()(const QModelIndex& index) {
			const QModelIndex& index_ret = index;
			// Cast returned reference into pointer
			QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQCompleter::connect(self, static_cast<void (QCompleter::*)(const QModelIndex&)>(&QCompleter::highlighted), self, local_caller{slot, callback, release});
}

struct miqt_string QCompleter_tr2(const char* s, const char* c) {
	QString _ret = QCompleter::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCompleter_tr3(const char* s, const char* c, int n) {
	QString _ret = QCompleter::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCompleter_trUtf82(const char* s, const char* c) {
	QString _ret = QCompleter::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCompleter_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QCompleter::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QCompleter_complete1(QCompleter* self, QRect* rect) {
	self->complete(*rect);
}

QMetaObject* QCompleter_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQCompleter*)(self) )->QCompleter::metaObject();

}

void* QCompleter_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQCompleter*)(self) )->QCompleter::qt_metacast(param1);

}

int QCompleter_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQCompleter*)(self) )->QCompleter::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

struct miqt_string QCompleter_virtualbase_pathFromIndex(const void* self, QModelIndex* index) {

	QString _ret = ( (const VirtualQCompleter*)(self) )->QCompleter::pathFromIndex(*index);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;

}

struct miqt_array /* of struct miqt_string */  QCompleter_virtualbase_splitPath(const void* self, struct miqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);

	QStringList _ret = ( (const VirtualQCompleter*)(self) )->QCompleter::splitPath(path_QString);
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

bool QCompleter_virtualbase_eventFilter(void* self, QObject* o, QEvent* e) {

	return ( (VirtualQCompleter*)(self) )->QCompleter::eventFilter(o, e);

}

bool QCompleter_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQCompleter*)(self) )->QCompleter::event(param1);

}

void QCompleter_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQCompleter*)(self) )->QCompleter::timerEvent(event);

}

void QCompleter_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQCompleter*)(self) )->QCompleter::childEvent(event);

}

void QCompleter_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQCompleter*)(self) )->QCompleter::customEvent(event);

}

void QCompleter_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQCompleter*)(self) )->QCompleter::connectNotify(*signal);

}

void QCompleter_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQCompleter*)(self) )->QCompleter::disconnectNotify(*signal);

}

const QMetaObject* QCompleter_staticMetaObject() { return &QCompleter::staticMetaObject; }
QObject* QCompleter_protectedbase_sender(const void* self) {
	VirtualQCompleter* self_cast = static_cast<VirtualQCompleter*>( (QCompleter*)(self) );
	
	return self_cast->sender();

}

int QCompleter_protectedbase_senderSignalIndex(const void* self) {
	VirtualQCompleter* self_cast = static_cast<VirtualQCompleter*>( (QCompleter*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QCompleter_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQCompleter* self_cast = static_cast<VirtualQCompleter*>( (QCompleter*)(self) );
	
	return self_cast->receivers(signal);

}

bool QCompleter_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQCompleter* self_cast = static_cast<VirtualQCompleter*>( (QCompleter*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QCompleter_delete(QCompleter* self) {
	delete self;
}

