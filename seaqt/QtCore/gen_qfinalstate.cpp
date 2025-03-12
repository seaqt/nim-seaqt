#include <QAbstractState>
#include <QChildEvent>
#include <QEvent>
#include <QFinalState>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QState>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qfinalstate.h>
#include "gen_qfinalstate.h"
class VirtualQFinalState final : public QFinalState {
	const QFinalState_VTable* vtbl;
	void* vdata;
public:
	friend const QFinalState_VTable* QFinalState_vtbl(const VirtualQFinalState* self);
	friend void* QFinalState_vdata(const VirtualQFinalState* self);
	friend void QFinalState_setVdata(VirtualQFinalState* self, void* vdata);

	VirtualQFinalState(const QFinalState_VTable* vtbl, void* vdata): QFinalState(), vtbl(vtbl), vdata(vdata) {}
	VirtualQFinalState(const QFinalState_VTable* vtbl, void* vdata, QState* parent): QFinalState(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQFinalState() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFinalState::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QFinalState_virtualbase_metaObject(const VirtualQFinalState* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFinalState::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QFinalState_virtualbase_metacast(VirtualQFinalState* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFinalState::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QFinalState_virtualbase_metacall(VirtualQFinalState* self, int param1, int param2, void** param3);

	virtual void onEntry(QEvent* event) override {
		if (vtbl->onEntry == 0) {
			QFinalState::onEntry(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onEntry(this, sigval1);

	}

	friend void QFinalState_virtualbase_onEntry(VirtualQFinalState* self, QEvent* event);

	virtual void onExit(QEvent* event) override {
		if (vtbl->onExit == 0) {
			QFinalState::onExit(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onExit(this, sigval1);

	}

	friend void QFinalState_virtualbase_onExit(VirtualQFinalState* self, QEvent* event);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QFinalState::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QFinalState_virtualbase_event(VirtualQFinalState* self, QEvent* e);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QFinalState::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QFinalState_virtualbase_eventFilter(VirtualQFinalState* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFinalState::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QFinalState_virtualbase_timerEvent(VirtualQFinalState* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFinalState::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QFinalState_virtualbase_childEvent(VirtualQFinalState* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFinalState::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QFinalState_virtualbase_customEvent(VirtualQFinalState* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFinalState::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QFinalState_virtualbase_connectNotify(VirtualQFinalState* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFinalState::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QFinalState_virtualbase_disconnectNotify(VirtualQFinalState* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QFinalState_protectedbase_sender(const VirtualQFinalState* self);
	friend int QFinalState_protectedbase_senderSignalIndex(const VirtualQFinalState* self);
	friend int QFinalState_protectedbase_receivers(const VirtualQFinalState* self, const char* signal);
	friend bool QFinalState_protectedbase_isSignalConnected(const VirtualQFinalState* self, QMetaMethod* signal);
};

VirtualQFinalState* QFinalState_new(const QFinalState_VTable* vtbl, void* vdata) {
	return new VirtualQFinalState(vtbl, vdata);
}

VirtualQFinalState* QFinalState_new2(const QFinalState_VTable* vtbl, void* vdata, QState* parent) {
	return new VirtualQFinalState(vtbl, vdata, parent);
}

void QFinalState_virtbase(QFinalState* src, QAbstractState** outptr_QAbstractState) {
	*outptr_QAbstractState = static_cast<QAbstractState*>(src);
}

QMetaObject* QFinalState_metaObject(const QFinalState* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFinalState_metacast(QFinalState* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFinalState_metacall(QFinalState* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFinalState_tr(const char* s) {
	QString _ret = QFinalState::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFinalState_trUtf8(const char* s) {
	QString _ret = QFinalState::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFinalState_tr2(const char* s, const char* c) {
	QString _ret = QFinalState::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFinalState_tr3(const char* s, const char* c, int n) {
	QString _ret = QFinalState::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFinalState_trUtf82(const char* s, const char* c) {
	QString _ret = QFinalState::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFinalState_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QFinalState::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QFinalState_virtualbase_metaObject(const VirtualQFinalState* self) {

	return (QMetaObject*) self->QFinalState::metaObject();
}

void* QFinalState_virtualbase_metacast(VirtualQFinalState* self, const char* param1) {

	return self->QFinalState::qt_metacast(param1);
}

int QFinalState_virtualbase_metacall(VirtualQFinalState* self, int param1, int param2, void** param3) {

	return self->QFinalState::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QFinalState_virtualbase_onEntry(VirtualQFinalState* self, QEvent* event) {

	self->QFinalState::onEntry(event);
}

void QFinalState_virtualbase_onExit(VirtualQFinalState* self, QEvent* event) {

	self->QFinalState::onExit(event);
}

bool QFinalState_virtualbase_event(VirtualQFinalState* self, QEvent* e) {

	return self->QFinalState::event(e);
}

bool QFinalState_virtualbase_eventFilter(VirtualQFinalState* self, QObject* watched, QEvent* event) {

	return self->QFinalState::eventFilter(watched, event);
}

void QFinalState_virtualbase_timerEvent(VirtualQFinalState* self, QTimerEvent* event) {

	self->QFinalState::timerEvent(event);
}

void QFinalState_virtualbase_childEvent(VirtualQFinalState* self, QChildEvent* event) {

	self->QFinalState::childEvent(event);
}

void QFinalState_virtualbase_customEvent(VirtualQFinalState* self, QEvent* event) {

	self->QFinalState::customEvent(event);
}

void QFinalState_virtualbase_connectNotify(VirtualQFinalState* self, QMetaMethod* signal) {

	self->QFinalState::connectNotify(*signal);
}

void QFinalState_virtualbase_disconnectNotify(VirtualQFinalState* self, QMetaMethod* signal) {

	self->QFinalState::disconnectNotify(*signal);
}

const QMetaObject* QFinalState_staticMetaObject() { return &QFinalState::staticMetaObject; }

const QFinalState_VTable* QFinalState_vtbl(const VirtualQFinalState* self) { return self->vtbl; }
void* QFinalState_vdata(const VirtualQFinalState* self) { return self->vdata; }
void QFinalState_setVdata(VirtualQFinalState* self, void* vdata) { self->vdata = vdata; }

QObject* QFinalState_protectedbase_sender(const VirtualQFinalState* self) {
	return self->sender();
}

int QFinalState_protectedbase_senderSignalIndex(const VirtualQFinalState* self) {
	return self->senderSignalIndex();
}

int QFinalState_protectedbase_receivers(const VirtualQFinalState* self, const char* signal) {
	return self->receivers(signal);
}

bool QFinalState_protectedbase_isSignalConnected(const VirtualQFinalState* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QFinalState_delete(QFinalState* self) {
	delete self;
}

