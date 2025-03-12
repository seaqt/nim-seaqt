#include <QAction>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWidget>
#include <QWidgetAction>
#include <qwidgetaction.h>
#include "gen_qwidgetaction.h"
class VirtualQWidgetAction final : public QWidgetAction {
	const QWidgetAction_VTable* vtbl;
	void* vdata;
public:
	friend const QWidgetAction_VTable* QWidgetAction_vtbl(const VirtualQWidgetAction* self);
	friend void* QWidgetAction_vdata(const VirtualQWidgetAction* self);
	friend void QWidgetAction_setVdata(VirtualQWidgetAction* self, void* vdata);

	VirtualQWidgetAction(const QWidgetAction_VTable* vtbl, void* vdata, QObject* parent): QWidgetAction(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQWidgetAction() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWidgetAction::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QWidgetAction_virtualbase_metaObject(const VirtualQWidgetAction* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWidgetAction::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QWidgetAction_virtualbase_metacast(VirtualQWidgetAction* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWidgetAction::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWidgetAction_virtualbase_metacall(VirtualQWidgetAction* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QWidgetAction::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QWidgetAction_virtualbase_event(VirtualQWidgetAction* self, QEvent* param1);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QWidgetAction::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWidgetAction_virtualbase_eventFilter(VirtualQWidgetAction* self, QObject* param1, QEvent* param2);

	virtual QWidget* createWidget(QWidget* parent) override {
		if (vtbl->createWidget == 0) {
			return QWidgetAction::createWidget(parent);
		}

		QWidget* sigval1 = parent;

		QWidget* callback_return_value = vtbl->createWidget(this, sigval1);

		return callback_return_value;
	}

	friend QWidget* QWidgetAction_virtualbase_createWidget(VirtualQWidgetAction* self, QWidget* parent);

	virtual void deleteWidget(QWidget* widget) override {
		if (vtbl->deleteWidget == 0) {
			QWidgetAction::deleteWidget(widget);
			return;
		}

		QWidget* sigval1 = widget;

		vtbl->deleteWidget(this, sigval1);

	}

	friend void QWidgetAction_virtualbase_deleteWidget(VirtualQWidgetAction* self, QWidget* widget);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWidgetAction::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QWidgetAction_virtualbase_timerEvent(VirtualQWidgetAction* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWidgetAction::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QWidgetAction_virtualbase_childEvent(VirtualQWidgetAction* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWidgetAction::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QWidgetAction_virtualbase_customEvent(VirtualQWidgetAction* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWidgetAction::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QWidgetAction_virtualbase_connectNotify(VirtualQWidgetAction* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWidgetAction::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QWidgetAction_virtualbase_disconnectNotify(VirtualQWidgetAction* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend struct miqt_array /* of QWidget* */  QWidgetAction_protectedbase_createdWidgets(const VirtualQWidgetAction* self);
	friend QObject* QWidgetAction_protectedbase_sender(const VirtualQWidgetAction* self);
	friend int QWidgetAction_protectedbase_senderSignalIndex(const VirtualQWidgetAction* self);
	friend int QWidgetAction_protectedbase_receivers(const VirtualQWidgetAction* self, const char* signal);
	friend bool QWidgetAction_protectedbase_isSignalConnected(const VirtualQWidgetAction* self, QMetaMethod* signal);
};

VirtualQWidgetAction* QWidgetAction_new(const QWidgetAction_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQWidgetAction(vtbl, vdata, parent);
}

void QWidgetAction_virtbase(QWidgetAction* src, QAction** outptr_QAction) {
	*outptr_QAction = static_cast<QAction*>(src);
}

QMetaObject* QWidgetAction_metaObject(const QWidgetAction* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWidgetAction_metacast(QWidgetAction* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWidgetAction_metacall(QWidgetAction* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWidgetAction_tr(const char* s) {
	QString _ret = QWidgetAction::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWidgetAction_trUtf8(const char* s) {
	QString _ret = QWidgetAction::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWidgetAction_setDefaultWidget(QWidgetAction* self, QWidget* w) {
	self->setDefaultWidget(w);
}

QWidget* QWidgetAction_defaultWidget(const QWidgetAction* self) {
	return self->defaultWidget();
}

QWidget* QWidgetAction_requestWidget(QWidgetAction* self, QWidget* parent) {
	return self->requestWidget(parent);
}

void QWidgetAction_releaseWidget(QWidgetAction* self, QWidget* widget) {
	self->releaseWidget(widget);
}

struct miqt_string QWidgetAction_tr2(const char* s, const char* c) {
	QString _ret = QWidgetAction::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWidgetAction_tr3(const char* s, const char* c, int n) {
	QString _ret = QWidgetAction::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWidgetAction_trUtf82(const char* s, const char* c) {
	QString _ret = QWidgetAction::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWidgetAction_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWidgetAction::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QWidgetAction_virtualbase_metaObject(const VirtualQWidgetAction* self) {

	return (QMetaObject*) self->QWidgetAction::metaObject();
}

void* QWidgetAction_virtualbase_metacast(VirtualQWidgetAction* self, const char* param1) {

	return self->QWidgetAction::qt_metacast(param1);
}

int QWidgetAction_virtualbase_metacall(VirtualQWidgetAction* self, int param1, int param2, void** param3) {

	return self->QWidgetAction::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QWidgetAction_virtualbase_event(VirtualQWidgetAction* self, QEvent* param1) {

	return self->QWidgetAction::event(param1);
}

bool QWidgetAction_virtualbase_eventFilter(VirtualQWidgetAction* self, QObject* param1, QEvent* param2) {

	return self->QWidgetAction::eventFilter(param1, param2);
}

QWidget* QWidgetAction_virtualbase_createWidget(VirtualQWidgetAction* self, QWidget* parent) {

	return self->QWidgetAction::createWidget(parent);
}

void QWidgetAction_virtualbase_deleteWidget(VirtualQWidgetAction* self, QWidget* widget) {

	self->QWidgetAction::deleteWidget(widget);
}

void QWidgetAction_virtualbase_timerEvent(VirtualQWidgetAction* self, QTimerEvent* event) {

	self->QWidgetAction::timerEvent(event);
}

void QWidgetAction_virtualbase_childEvent(VirtualQWidgetAction* self, QChildEvent* event) {

	self->QWidgetAction::childEvent(event);
}

void QWidgetAction_virtualbase_customEvent(VirtualQWidgetAction* self, QEvent* event) {

	self->QWidgetAction::customEvent(event);
}

void QWidgetAction_virtualbase_connectNotify(VirtualQWidgetAction* self, QMetaMethod* signal) {

	self->QWidgetAction::connectNotify(*signal);
}

void QWidgetAction_virtualbase_disconnectNotify(VirtualQWidgetAction* self, QMetaMethod* signal) {

	self->QWidgetAction::disconnectNotify(*signal);
}

const QMetaObject* QWidgetAction_staticMetaObject() { return &QWidgetAction::staticMetaObject; }

const QWidgetAction_VTable* QWidgetAction_vtbl(const VirtualQWidgetAction* self) { return self->vtbl; }
void* QWidgetAction_vdata(const VirtualQWidgetAction* self) { return self->vdata; }
void QWidgetAction_setVdata(VirtualQWidgetAction* self, void* vdata) { self->vdata = vdata; }

struct miqt_array /* of QWidget* */  QWidgetAction_protectedbase_createdWidgets(const VirtualQWidgetAction* self) {
	QList<QWidget *> _ret = self->createdWidgets();
	// Convert QList<> from C++ memory to manually-managed C memory
	QWidget** _arr = static_cast<QWidget**>(malloc(sizeof(QWidget*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QObject* QWidgetAction_protectedbase_sender(const VirtualQWidgetAction* self) {
	return self->sender();
}

int QWidgetAction_protectedbase_senderSignalIndex(const VirtualQWidgetAction* self) {
	return self->senderSignalIndex();
}

int QWidgetAction_protectedbase_receivers(const VirtualQWidgetAction* self, const char* signal) {
	return self->receivers(signal);
}

bool QWidgetAction_protectedbase_isSignalConnected(const VirtualQWidgetAction* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QWidgetAction_delete(QWidgetAction* self) {
	delete self;
}

