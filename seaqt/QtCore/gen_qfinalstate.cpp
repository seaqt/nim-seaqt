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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQFinalState final : public QFinalState {
	struct QFinalState_VTable* vtbl;
public:

	VirtualQFinalState(struct QFinalState_VTable* vtbl): QFinalState(), vtbl(vtbl) {};
	VirtualQFinalState(struct QFinalState_VTable* vtbl, QState* parent): QFinalState(parent), vtbl(vtbl) {};

	virtual ~VirtualQFinalState() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFinalState::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QFinalState_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFinalState::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QFinalState_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFinalState::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QFinalState_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void onEntry(QEvent* event) override {
		if (vtbl->onEntry == 0) {
			QFinalState::onEntry(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onEntry(vtbl, this, sigval1);

	}

	friend void QFinalState_virtualbase_onEntry(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void onExit(QEvent* event) override {
		if (vtbl->onExit == 0) {
			QFinalState::onExit(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onExit(vtbl, this, sigval1);

	}

	friend void QFinalState_virtualbase_onExit(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QFinalState::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QFinalState_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QFinalState::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QFinalState_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFinalState::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QFinalState_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFinalState::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QFinalState_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFinalState::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QFinalState_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFinalState::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QFinalState_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFinalState::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QFinalState_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QFinalState_protectedbase_sender(const void* self);
	friend int QFinalState_protectedbase_senderSignalIndex(const void* self);
	friend int QFinalState_protectedbase_receivers(const void* self, const char* signal);
	friend bool QFinalState_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QFinalState* QFinalState_new(struct QFinalState_VTable* vtbl) {
	return new VirtualQFinalState(vtbl);
}

QFinalState* QFinalState_new2(struct QFinalState_VTable* vtbl, QState* parent) {
	return new VirtualQFinalState(vtbl, parent);
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

QMetaObject* QFinalState_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQFinalState*)(self) )->QFinalState::metaObject();

}

void* QFinalState_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQFinalState*)(self) )->QFinalState::qt_metacast(param1);

}

int QFinalState_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQFinalState*)(self) )->QFinalState::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QFinalState_virtualbase_onEntry(void* self, QEvent* event) {

	( (VirtualQFinalState*)(self) )->QFinalState::onEntry(event);

}

void QFinalState_virtualbase_onExit(void* self, QEvent* event) {

	( (VirtualQFinalState*)(self) )->QFinalState::onExit(event);

}

bool QFinalState_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQFinalState*)(self) )->QFinalState::event(e);

}

bool QFinalState_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQFinalState*)(self) )->QFinalState::eventFilter(watched, event);

}

void QFinalState_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQFinalState*)(self) )->QFinalState::timerEvent(event);

}

void QFinalState_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQFinalState*)(self) )->QFinalState::childEvent(event);

}

void QFinalState_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQFinalState*)(self) )->QFinalState::customEvent(event);

}

void QFinalState_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQFinalState*)(self) )->QFinalState::connectNotify(*signal);

}

void QFinalState_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQFinalState*)(self) )->QFinalState::disconnectNotify(*signal);

}

const QMetaObject* QFinalState_staticMetaObject() { return &QFinalState::staticMetaObject; }
QObject* QFinalState_protectedbase_sender(const void* self) {
	VirtualQFinalState* self_cast = static_cast<VirtualQFinalState*>( (QFinalState*)(self) );
	
	return self_cast->sender();

}

int QFinalState_protectedbase_senderSignalIndex(const void* self) {
	VirtualQFinalState* self_cast = static_cast<VirtualQFinalState*>( (QFinalState*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QFinalState_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQFinalState* self_cast = static_cast<VirtualQFinalState*>( (QFinalState*)(self) );
	
	return self_cast->receivers(signal);

}

bool QFinalState_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQFinalState* self_cast = static_cast<VirtualQFinalState*>( (QFinalState*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QFinalState_delete(QFinalState* self) {
	delete self;
}

