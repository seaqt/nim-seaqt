#include <QAbstractState>
#include <QAbstractTransition>
#include <QChildEvent>
#include <QEvent>
#include <QHistoryState>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QState>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qhistorystate.h>
#include "gen_qhistorystate.h"
class VirtualQHistoryState final : public QHistoryState {
	const QHistoryState_VTable* vtbl;
	void* vdata;
public:
	friend const QHistoryState_VTable* QHistoryState_vtbl(const VirtualQHistoryState* self);
	friend void* QHistoryState_vdata(const VirtualQHistoryState* self);
	friend void QHistoryState_setVdata(VirtualQHistoryState* self, void* vdata);

	VirtualQHistoryState(const QHistoryState_VTable* vtbl, void* vdata): QHistoryState(), vtbl(vtbl), vdata(vdata) {}
	VirtualQHistoryState(const QHistoryState_VTable* vtbl, void* vdata, QHistoryState::HistoryType type): QHistoryState(type), vtbl(vtbl), vdata(vdata) {}
	VirtualQHistoryState(const QHistoryState_VTable* vtbl, void* vdata, QState* parent): QHistoryState(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQHistoryState(const QHistoryState_VTable* vtbl, void* vdata, QHistoryState::HistoryType type, QState* parent): QHistoryState(type, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQHistoryState() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QHistoryState::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QHistoryState_virtualbase_metaObject(const VirtualQHistoryState* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QHistoryState::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QHistoryState_virtualbase_metacast(VirtualQHistoryState* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QHistoryState::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QHistoryState_virtualbase_metacall(VirtualQHistoryState* self, int param1, int param2, void** param3);

	virtual void onEntry(QEvent* event) override {
		if (vtbl->onEntry == 0) {
			QHistoryState::onEntry(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onEntry(this, sigval1);

	}

	friend void QHistoryState_virtualbase_onEntry(VirtualQHistoryState* self, QEvent* event);

	virtual void onExit(QEvent* event) override {
		if (vtbl->onExit == 0) {
			QHistoryState::onExit(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onExit(this, sigval1);

	}

	friend void QHistoryState_virtualbase_onExit(VirtualQHistoryState* self, QEvent* event);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QHistoryState::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QHistoryState_virtualbase_event(VirtualQHistoryState* self, QEvent* e);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QHistoryState::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QHistoryState_virtualbase_eventFilter(VirtualQHistoryState* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QHistoryState::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QHistoryState_virtualbase_timerEvent(VirtualQHistoryState* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QHistoryState::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QHistoryState_virtualbase_childEvent(VirtualQHistoryState* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QHistoryState::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QHistoryState_virtualbase_customEvent(VirtualQHistoryState* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QHistoryState::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QHistoryState_virtualbase_connectNotify(VirtualQHistoryState* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QHistoryState::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QHistoryState_virtualbase_disconnectNotify(VirtualQHistoryState* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QHistoryState_protectedbase_sender(const VirtualQHistoryState* self);
	friend int QHistoryState_protectedbase_senderSignalIndex(const VirtualQHistoryState* self);
	friend int QHistoryState_protectedbase_receivers(const VirtualQHistoryState* self, const char* signal);
	friend bool QHistoryState_protectedbase_isSignalConnected(const VirtualQHistoryState* self, QMetaMethod* signal);
};

VirtualQHistoryState* QHistoryState_new(const QHistoryState_VTable* vtbl, void* vdata) {
	return new VirtualQHistoryState(vtbl, vdata);
}

VirtualQHistoryState* QHistoryState_new2(const QHistoryState_VTable* vtbl, void* vdata, int type) {
	return new VirtualQHistoryState(vtbl, vdata, static_cast<QHistoryState::HistoryType>(type));
}

VirtualQHistoryState* QHistoryState_new3(const QHistoryState_VTable* vtbl, void* vdata, QState* parent) {
	return new VirtualQHistoryState(vtbl, vdata, parent);
}

VirtualQHistoryState* QHistoryState_new4(const QHistoryState_VTable* vtbl, void* vdata, int type, QState* parent) {
	return new VirtualQHistoryState(vtbl, vdata, static_cast<QHistoryState::HistoryType>(type), parent);
}

void QHistoryState_virtbase(QHistoryState* src, QAbstractState** outptr_QAbstractState) {
	*outptr_QAbstractState = static_cast<QAbstractState*>(src);
}

QMetaObject* QHistoryState_metaObject(const QHistoryState* self) {
	return (QMetaObject*) self->metaObject();
}

void* QHistoryState_metacast(QHistoryState* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QHistoryState_metacall(QHistoryState* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QHistoryState_tr(const char* s) {
	QString _ret = QHistoryState::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHistoryState_trUtf8(const char* s) {
	QString _ret = QHistoryState::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAbstractTransition* QHistoryState_defaultTransition(const QHistoryState* self) {
	return self->defaultTransition();
}

void QHistoryState_setDefaultTransition(QHistoryState* self, QAbstractTransition* transition) {
	self->setDefaultTransition(transition);
}

QAbstractState* QHistoryState_defaultState(const QHistoryState* self) {
	return self->defaultState();
}

void QHistoryState_setDefaultState(QHistoryState* self, QAbstractState* state) {
	self->setDefaultState(state);
}

int QHistoryState_historyType(const QHistoryState* self) {
	QHistoryState::HistoryType _ret = self->historyType();
	return static_cast<int>(_ret);
}

void QHistoryState_setHistoryType(QHistoryState* self, int type) {
	self->setHistoryType(static_cast<QHistoryState::HistoryType>(type));
}

struct miqt_string QHistoryState_tr2(const char* s, const char* c) {
	QString _ret = QHistoryState::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHistoryState_tr3(const char* s, const char* c, int n) {
	QString _ret = QHistoryState::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHistoryState_trUtf82(const char* s, const char* c) {
	QString _ret = QHistoryState::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHistoryState_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QHistoryState::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QHistoryState_virtualbase_metaObject(const VirtualQHistoryState* self) {

	return (QMetaObject*) self->QHistoryState::metaObject();
}

void* QHistoryState_virtualbase_metacast(VirtualQHistoryState* self, const char* param1) {

	return self->QHistoryState::qt_metacast(param1);
}

int QHistoryState_virtualbase_metacall(VirtualQHistoryState* self, int param1, int param2, void** param3) {

	return self->QHistoryState::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QHistoryState_virtualbase_onEntry(VirtualQHistoryState* self, QEvent* event) {

	self->QHistoryState::onEntry(event);
}

void QHistoryState_virtualbase_onExit(VirtualQHistoryState* self, QEvent* event) {

	self->QHistoryState::onExit(event);
}

bool QHistoryState_virtualbase_event(VirtualQHistoryState* self, QEvent* e) {

	return self->QHistoryState::event(e);
}

bool QHistoryState_virtualbase_eventFilter(VirtualQHistoryState* self, QObject* watched, QEvent* event) {

	return self->QHistoryState::eventFilter(watched, event);
}

void QHistoryState_virtualbase_timerEvent(VirtualQHistoryState* self, QTimerEvent* event) {

	self->QHistoryState::timerEvent(event);
}

void QHistoryState_virtualbase_childEvent(VirtualQHistoryState* self, QChildEvent* event) {

	self->QHistoryState::childEvent(event);
}

void QHistoryState_virtualbase_customEvent(VirtualQHistoryState* self, QEvent* event) {

	self->QHistoryState::customEvent(event);
}

void QHistoryState_virtualbase_connectNotify(VirtualQHistoryState* self, QMetaMethod* signal) {

	self->QHistoryState::connectNotify(*signal);
}

void QHistoryState_virtualbase_disconnectNotify(VirtualQHistoryState* self, QMetaMethod* signal) {

	self->QHistoryState::disconnectNotify(*signal);
}

const QMetaObject* QHistoryState_staticMetaObject() { return &QHistoryState::staticMetaObject; }

const QHistoryState_VTable* QHistoryState_vtbl(const VirtualQHistoryState* self) { return self->vtbl; }
void* QHistoryState_vdata(const VirtualQHistoryState* self) { return self->vdata; }
void QHistoryState_setVdata(VirtualQHistoryState* self, void* vdata) { self->vdata = vdata; }

QObject* QHistoryState_protectedbase_sender(const VirtualQHistoryState* self) {
	return self->sender();
}

int QHistoryState_protectedbase_senderSignalIndex(const VirtualQHistoryState* self) {
	return self->senderSignalIndex();
}

int QHistoryState_protectedbase_receivers(const VirtualQHistoryState* self, const char* signal) {
	return self->receivers(signal);
}

bool QHistoryState_protectedbase_isSignalConnected(const VirtualQHistoryState* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QHistoryState_delete(QHistoryState* self) {
	delete self;
}

