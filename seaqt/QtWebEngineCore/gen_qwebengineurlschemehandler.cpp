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

QMetaObject* miqt_exec_callback_QWebEngineUrlSchemeHandler_metaObject(const QWebEngineUrlSchemeHandler*, intptr_t);
void* miqt_exec_callback_QWebEngineUrlSchemeHandler_metacast(QWebEngineUrlSchemeHandler*, intptr_t, const char*);
int miqt_exec_callback_QWebEngineUrlSchemeHandler_metacall(QWebEngineUrlSchemeHandler*, intptr_t, int, int, void**);
void miqt_exec_callback_QWebEngineUrlSchemeHandler_requestStarted(QWebEngineUrlSchemeHandler*, intptr_t, QWebEngineUrlRequestJob*);
bool miqt_exec_callback_QWebEngineUrlSchemeHandler_event(QWebEngineUrlSchemeHandler*, intptr_t, QEvent*);
bool miqt_exec_callback_QWebEngineUrlSchemeHandler_eventFilter(QWebEngineUrlSchemeHandler*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QWebEngineUrlSchemeHandler_timerEvent(QWebEngineUrlSchemeHandler*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QWebEngineUrlSchemeHandler_childEvent(QWebEngineUrlSchemeHandler*, intptr_t, QChildEvent*);
void miqt_exec_callback_QWebEngineUrlSchemeHandler_customEvent(QWebEngineUrlSchemeHandler*, intptr_t, QEvent*);
void miqt_exec_callback_QWebEngineUrlSchemeHandler_connectNotify(QWebEngineUrlSchemeHandler*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QWebEngineUrlSchemeHandler_disconnectNotify(QWebEngineUrlSchemeHandler*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQWebEngineUrlSchemeHandler final : public QWebEngineUrlSchemeHandler {
public:

	VirtualQWebEngineUrlSchemeHandler(): QWebEngineUrlSchemeHandler() {};
	VirtualQWebEngineUrlSchemeHandler(QObject* parent): QWebEngineUrlSchemeHandler(parent) {};

	virtual ~VirtualQWebEngineUrlSchemeHandler() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QWebEngineUrlSchemeHandler::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QWebEngineUrlSchemeHandler_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QWebEngineUrlSchemeHandler_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QWebEngineUrlSchemeHandler::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QWebEngineUrlSchemeHandler_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QWebEngineUrlSchemeHandler_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QWebEngineUrlSchemeHandler::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QWebEngineUrlSchemeHandler_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebEngineUrlSchemeHandler_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__requestStarted = 0;

	// Subclass to allow providing a Go implementation
	virtual void requestStarted(QWebEngineUrlRequestJob* param1) override {
		if (handle__requestStarted == 0) {
			return; // Pure virtual, there is no base we can call
		}
		
		QWebEngineUrlRequestJob* sigval1 = param1;

		miqt_exec_callback_QWebEngineUrlSchemeHandler_requestStarted(this, handle__requestStarted, sigval1);

		
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QWebEngineUrlSchemeHandler::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QWebEngineUrlSchemeHandler_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QWebEngineUrlSchemeHandler_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QWebEngineUrlSchemeHandler::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QWebEngineUrlSchemeHandler_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWebEngineUrlSchemeHandler_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QWebEngineUrlSchemeHandler::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QWebEngineUrlSchemeHandler_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QWebEngineUrlSchemeHandler_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QWebEngineUrlSchemeHandler::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QWebEngineUrlSchemeHandler_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QWebEngineUrlSchemeHandler_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QWebEngineUrlSchemeHandler::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QWebEngineUrlSchemeHandler_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QWebEngineUrlSchemeHandler_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QWebEngineUrlSchemeHandler::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QWebEngineUrlSchemeHandler_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QWebEngineUrlSchemeHandler_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QWebEngineUrlSchemeHandler::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QWebEngineUrlSchemeHandler_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QWebEngineUrlSchemeHandler_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QWebEngineUrlSchemeHandler_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QWebEngineUrlSchemeHandler_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QWebEngineUrlSchemeHandler_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QWebEngineUrlSchemeHandler_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QWebEngineUrlSchemeHandler* QWebEngineUrlSchemeHandler_new() {
	return new VirtualQWebEngineUrlSchemeHandler();
}

QWebEngineUrlSchemeHandler* QWebEngineUrlSchemeHandler_new2(QObject* parent) {
	return new VirtualQWebEngineUrlSchemeHandler(parent);
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

bool QWebEngineUrlSchemeHandler_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQWebEngineUrlSchemeHandler* self_cast = dynamic_cast<VirtualQWebEngineUrlSchemeHandler*>( (QWebEngineUrlSchemeHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QWebEngineUrlSchemeHandler_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::metaObject();

}

bool QWebEngineUrlSchemeHandler_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQWebEngineUrlSchemeHandler* self_cast = dynamic_cast<VirtualQWebEngineUrlSchemeHandler*>( (QWebEngineUrlSchemeHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QWebEngineUrlSchemeHandler_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::qt_metacast(param1);

}

bool QWebEngineUrlSchemeHandler_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQWebEngineUrlSchemeHandler* self_cast = dynamic_cast<VirtualQWebEngineUrlSchemeHandler*>( (QWebEngineUrlSchemeHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QWebEngineUrlSchemeHandler_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QWebEngineUrlSchemeHandler_override_virtual_requestStarted(void* self, intptr_t slot) {
	VirtualQWebEngineUrlSchemeHandler* self_cast = dynamic_cast<VirtualQWebEngineUrlSchemeHandler*>( (QWebEngineUrlSchemeHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__requestStarted = slot;
	return true;
}

bool QWebEngineUrlSchemeHandler_override_virtual_event(void* self, intptr_t slot) {
	VirtualQWebEngineUrlSchemeHandler* self_cast = dynamic_cast<VirtualQWebEngineUrlSchemeHandler*>( (QWebEngineUrlSchemeHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QWebEngineUrlSchemeHandler_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::event(event);

}

bool QWebEngineUrlSchemeHandler_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQWebEngineUrlSchemeHandler* self_cast = dynamic_cast<VirtualQWebEngineUrlSchemeHandler*>( (QWebEngineUrlSchemeHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QWebEngineUrlSchemeHandler_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::eventFilter(watched, event);

}

bool QWebEngineUrlSchemeHandler_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQWebEngineUrlSchemeHandler* self_cast = dynamic_cast<VirtualQWebEngineUrlSchemeHandler*>( (QWebEngineUrlSchemeHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QWebEngineUrlSchemeHandler_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::timerEvent(event);

}

bool QWebEngineUrlSchemeHandler_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQWebEngineUrlSchemeHandler* self_cast = dynamic_cast<VirtualQWebEngineUrlSchemeHandler*>( (QWebEngineUrlSchemeHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QWebEngineUrlSchemeHandler_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::childEvent(event);

}

bool QWebEngineUrlSchemeHandler_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQWebEngineUrlSchemeHandler* self_cast = dynamic_cast<VirtualQWebEngineUrlSchemeHandler*>( (QWebEngineUrlSchemeHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QWebEngineUrlSchemeHandler_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::customEvent(event);

}

bool QWebEngineUrlSchemeHandler_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQWebEngineUrlSchemeHandler* self_cast = dynamic_cast<VirtualQWebEngineUrlSchemeHandler*>( (QWebEngineUrlSchemeHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QWebEngineUrlSchemeHandler_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWebEngineUrlSchemeHandler*)(self) )->QWebEngineUrlSchemeHandler::connectNotify(*signal);

}

bool QWebEngineUrlSchemeHandler_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQWebEngineUrlSchemeHandler* self_cast = dynamic_cast<VirtualQWebEngineUrlSchemeHandler*>( (QWebEngineUrlSchemeHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
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

