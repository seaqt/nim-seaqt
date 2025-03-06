#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWebEngineUrlRequestJob>
#include <QWebEngineUrlSchemeHandler>
#include <qwebengineurlschemehandler.h>
#include "gen_qwebengineurlschemehandler.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQWebEngineUrlSchemeHandler final : public QWebEngineUrlSchemeHandler {
	struct QWebEngineUrlSchemeHandler_VTable* vtbl;
public:

	VirtualQWebEngineUrlSchemeHandler(struct QWebEngineUrlSchemeHandler_VTable* vtbl): QWebEngineUrlSchemeHandler(), vtbl(vtbl) {};
	VirtualQWebEngineUrlSchemeHandler(struct QWebEngineUrlSchemeHandler_VTable* vtbl, QObject* parent): QWebEngineUrlSchemeHandler(parent), vtbl(vtbl) {};

	virtual ~VirtualQWebEngineUrlSchemeHandler() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebEngineUrlSchemeHandler::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QWebEngineUrlSchemeHandler_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebEngineUrlSchemeHandler::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QWebEngineUrlSchemeHandler_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebEngineUrlSchemeHandler::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebEngineUrlSchemeHandler_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void requestStarted(QWebEngineUrlRequestJob* param1) override {
		if (vtbl->requestStarted == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QWebEngineUrlRequestJob* sigval1 = param1;

		vtbl->requestStarted(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWebEngineUrlSchemeHandler::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QWebEngineUrlSchemeHandler_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebEngineUrlSchemeHandler::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWebEngineUrlSchemeHandler_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebEngineUrlSchemeHandler::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QWebEngineUrlSchemeHandler_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebEngineUrlSchemeHandler::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QWebEngineUrlSchemeHandler_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebEngineUrlSchemeHandler::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QWebEngineUrlSchemeHandler_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebEngineUrlSchemeHandler::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QWebEngineUrlSchemeHandler_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebEngineUrlSchemeHandler::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QWebEngineUrlSchemeHandler_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QWebEngineUrlSchemeHandler_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QWebEngineUrlSchemeHandler_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QWebEngineUrlSchemeHandler_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QWebEngineUrlSchemeHandler_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QWebEngineUrlSchemeHandler* QWebEngineUrlSchemeHandler_new(struct QWebEngineUrlSchemeHandler_VTable* vtbl) {
	return new VirtualQWebEngineUrlSchemeHandler(vtbl);
}

QWebEngineUrlSchemeHandler* QWebEngineUrlSchemeHandler_new2(struct QWebEngineUrlSchemeHandler_VTable* vtbl, QObject* parent) {
	return new VirtualQWebEngineUrlSchemeHandler(vtbl, parent);
}

void QWebEngineUrlSchemeHandler_virtbase(QWebEngineUrlSchemeHandler* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebEngineUrlSchemeHandler_metaObject(const QWebEngineUrlSchemeHandler* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebEngineUrlSchemeHandler_metacast(QWebEngineUrlSchemeHandler* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebEngineUrlSchemeHandler_metacall(QWebEngineUrlSchemeHandler* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebEngineUrlSchemeHandler_tr(const char* s) {
	QString _ret = QWebEngineUrlSchemeHandler::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineUrlSchemeHandler_trUtf8(const char* s) {
	QString _ret = QWebEngineUrlSchemeHandler::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineUrlSchemeHandler_requestStarted(QWebEngineUrlSchemeHandler* self, QWebEngineUrlRequestJob* param1) {
	self->requestStarted(param1);
}

struct miqt_string QWebEngineUrlSchemeHandler_tr2(const char* s, const char* c) {
	QString _ret = QWebEngineUrlSchemeHandler::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineUrlSchemeHandler_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebEngineUrlSchemeHandler::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineUrlSchemeHandler_trUtf82(const char* s, const char* c) {
	QString _ret = QWebEngineUrlSchemeHandler::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineUrlSchemeHandler_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWebEngineUrlSchemeHandler::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QWebEngineUrlSchemeHandler_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::metaObject();

}

void* QWebEngineUrlSchemeHandler_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::qt_metacast(param1);

}

int QWebEngineUrlSchemeHandler_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QWebEngineUrlSchemeHandler_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::event(event);

}

bool QWebEngineUrlSchemeHandler_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::eventFilter(watched, event);

}

void QWebEngineUrlSchemeHandler_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::timerEvent(event);

}

void QWebEngineUrlSchemeHandler_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::childEvent(event);

}

void QWebEngineUrlSchemeHandler_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::customEvent(event);

}

void QWebEngineUrlSchemeHandler_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::connectNotify(*signal);

}

void QWebEngineUrlSchemeHandler_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::disconnectNotify(*signal);

}

const QMetaObject* QWebEngineUrlSchemeHandler_staticMetaObject() { return &QWebEngineUrlSchemeHandler::staticMetaObject; }
QObject* QWebEngineUrlSchemeHandler_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQWebEngineUrlSchemeHandler* self_cast = dynamic_cast<VirtualQWebEngineUrlSchemeHandler*>( (QWebEngineUrlSchemeHandler*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QWebEngineUrlSchemeHandler_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQWebEngineUrlSchemeHandler* self_cast = dynamic_cast<VirtualQWebEngineUrlSchemeHandler*>( (QWebEngineUrlSchemeHandler*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QWebEngineUrlSchemeHandler_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQWebEngineUrlSchemeHandler* self_cast = dynamic_cast<VirtualQWebEngineUrlSchemeHandler*>( (QWebEngineUrlSchemeHandler*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QWebEngineUrlSchemeHandler_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQWebEngineUrlSchemeHandler* self_cast = dynamic_cast<VirtualQWebEngineUrlSchemeHandler*>( (QWebEngineUrlSchemeHandler*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QWebEngineUrlSchemeHandler_delete(QWebEngineUrlSchemeHandler* self) {
	delete self;
}

