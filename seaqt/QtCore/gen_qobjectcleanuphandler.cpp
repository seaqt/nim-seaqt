#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QObjectCleanupHandler>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qobjectcleanuphandler.h>
#include "gen_qobjectcleanuphandler.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQObjectCleanupHandler final : public QObjectCleanupHandler {
	struct QObjectCleanupHandler_VTable* vtbl;
public:

	VirtualQObjectCleanupHandler(struct QObjectCleanupHandler_VTable* vtbl): QObjectCleanupHandler(), vtbl(vtbl) {};

	virtual ~VirtualQObjectCleanupHandler() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QObjectCleanupHandler::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QObjectCleanupHandler_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QObjectCleanupHandler::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QObjectCleanupHandler_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QObjectCleanupHandler::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QObjectCleanupHandler_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QObjectCleanupHandler::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QObjectCleanupHandler_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QObjectCleanupHandler::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QObjectCleanupHandler_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QObjectCleanupHandler::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QObjectCleanupHandler_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QObjectCleanupHandler::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QObjectCleanupHandler_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QObjectCleanupHandler::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QObjectCleanupHandler_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QObjectCleanupHandler::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QObjectCleanupHandler_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QObjectCleanupHandler::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QObjectCleanupHandler_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QObjectCleanupHandler_protectedbase_sender(const void* self);
	friend int QObjectCleanupHandler_protectedbase_senderSignalIndex(const void* self);
	friend int QObjectCleanupHandler_protectedbase_receivers(const void* self, const char* signal);
	friend bool QObjectCleanupHandler_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QObjectCleanupHandler* QObjectCleanupHandler_new(struct QObjectCleanupHandler_VTable* vtbl) {
	return new VirtualQObjectCleanupHandler(vtbl);
}

void QObjectCleanupHandler_virtbase(QObjectCleanupHandler* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QObjectCleanupHandler_metaObject(const QObjectCleanupHandler* self) {
	return (QMetaObject*) self->metaObject();
}

void* QObjectCleanupHandler_metacast(QObjectCleanupHandler* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QObjectCleanupHandler_metacall(QObjectCleanupHandler* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QObjectCleanupHandler_tr(const char* s) {
	QString _ret = QObjectCleanupHandler::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QObjectCleanupHandler_trUtf8(const char* s) {
	QString _ret = QObjectCleanupHandler::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QObject* QObjectCleanupHandler_add(QObjectCleanupHandler* self, QObject* object) {
	return self->add(object);
}

void QObjectCleanupHandler_remove(QObjectCleanupHandler* self, QObject* object) {
	self->remove(object);
}

bool QObjectCleanupHandler_isEmpty(const QObjectCleanupHandler* self) {
	return self->isEmpty();
}

void QObjectCleanupHandler_clear(QObjectCleanupHandler* self) {
	self->clear();
}

struct miqt_string QObjectCleanupHandler_tr2(const char* s, const char* c) {
	QString _ret = QObjectCleanupHandler::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QObjectCleanupHandler_tr3(const char* s, const char* c, int n) {
	QString _ret = QObjectCleanupHandler::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QObjectCleanupHandler_trUtf82(const char* s, const char* c) {
	QString _ret = QObjectCleanupHandler::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QObjectCleanupHandler_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QObjectCleanupHandler::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QObjectCleanupHandler_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::metaObject();

}

void* QObjectCleanupHandler_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::qt_metacast(param1);

}

int QObjectCleanupHandler_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QObjectCleanupHandler_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::event(event);

}

bool QObjectCleanupHandler_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::eventFilter(watched, event);

}

void QObjectCleanupHandler_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::timerEvent(event);

}

void QObjectCleanupHandler_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::childEvent(event);

}

void QObjectCleanupHandler_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::customEvent(event);

}

void QObjectCleanupHandler_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::connectNotify(*signal);

}

void QObjectCleanupHandler_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::disconnectNotify(*signal);

}

const QMetaObject* QObjectCleanupHandler_staticMetaObject() { return &QObjectCleanupHandler::staticMetaObject; }
QObject* QObjectCleanupHandler_protectedbase_sender(const void* self) {
	VirtualQObjectCleanupHandler* self_cast = static_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	
	return self_cast->sender();

}

int QObjectCleanupHandler_protectedbase_senderSignalIndex(const void* self) {
	VirtualQObjectCleanupHandler* self_cast = static_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QObjectCleanupHandler_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQObjectCleanupHandler* self_cast = static_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	
	return self_cast->receivers(signal);

}

bool QObjectCleanupHandler_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQObjectCleanupHandler* self_cast = static_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QObjectCleanupHandler_delete(QObjectCleanupHandler* self) {
	delete self;
}

