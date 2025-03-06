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

QMetaObject* miqt_exec_callback_QObjectCleanupHandler_metaObject(const QObjectCleanupHandler*, intptr_t);
void* miqt_exec_callback_QObjectCleanupHandler_metacast(QObjectCleanupHandler*, intptr_t, const char*);
int miqt_exec_callback_QObjectCleanupHandler_metacall(QObjectCleanupHandler*, intptr_t, int, int, void**);
bool miqt_exec_callback_QObjectCleanupHandler_event(QObjectCleanupHandler*, intptr_t, QEvent*);
bool miqt_exec_callback_QObjectCleanupHandler_eventFilter(QObjectCleanupHandler*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QObjectCleanupHandler_timerEvent(QObjectCleanupHandler*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QObjectCleanupHandler_childEvent(QObjectCleanupHandler*, intptr_t, QChildEvent*);
void miqt_exec_callback_QObjectCleanupHandler_customEvent(QObjectCleanupHandler*, intptr_t, QEvent*);
void miqt_exec_callback_QObjectCleanupHandler_connectNotify(QObjectCleanupHandler*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QObjectCleanupHandler_disconnectNotify(QObjectCleanupHandler*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQObjectCleanupHandler final : public QObjectCleanupHandler {
public:

	VirtualQObjectCleanupHandler(): QObjectCleanupHandler() {};

	virtual ~VirtualQObjectCleanupHandler() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QObjectCleanupHandler::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QObjectCleanupHandler_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QObjectCleanupHandler_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QObjectCleanupHandler::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QObjectCleanupHandler_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QObjectCleanupHandler_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QObjectCleanupHandler::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QObjectCleanupHandler_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QObjectCleanupHandler_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QObjectCleanupHandler::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QObjectCleanupHandler_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QObjectCleanupHandler_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QObjectCleanupHandler::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QObjectCleanupHandler_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QObjectCleanupHandler_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QObjectCleanupHandler::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QObjectCleanupHandler_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QObjectCleanupHandler_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QObjectCleanupHandler::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QObjectCleanupHandler_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QObjectCleanupHandler_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QObjectCleanupHandler::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QObjectCleanupHandler_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QObjectCleanupHandler_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QObjectCleanupHandler::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QObjectCleanupHandler_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QObjectCleanupHandler_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QObjectCleanupHandler::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QObjectCleanupHandler_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QObjectCleanupHandler_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QObjectCleanupHandler_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QObjectCleanupHandler_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QObjectCleanupHandler_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QObjectCleanupHandler_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QObjectCleanupHandler* QObjectCleanupHandler_new() {
	return new VirtualQObjectCleanupHandler();
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

bool QObjectCleanupHandler_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQObjectCleanupHandler* self_cast = dynamic_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QObjectCleanupHandler_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::metaObject();

}

bool QObjectCleanupHandler_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQObjectCleanupHandler* self_cast = dynamic_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QObjectCleanupHandler_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::qt_metacast(param1);

}

bool QObjectCleanupHandler_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQObjectCleanupHandler* self_cast = dynamic_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QObjectCleanupHandler_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QObjectCleanupHandler_override_virtual_event(void* self, intptr_t slot) {
	VirtualQObjectCleanupHandler* self_cast = dynamic_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QObjectCleanupHandler_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::event(event);

}

bool QObjectCleanupHandler_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQObjectCleanupHandler* self_cast = dynamic_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QObjectCleanupHandler_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::eventFilter(watched, event);

}

bool QObjectCleanupHandler_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQObjectCleanupHandler* self_cast = dynamic_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QObjectCleanupHandler_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::timerEvent(event);

}

bool QObjectCleanupHandler_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQObjectCleanupHandler* self_cast = dynamic_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QObjectCleanupHandler_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::childEvent(event);

}

bool QObjectCleanupHandler_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQObjectCleanupHandler* self_cast = dynamic_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QObjectCleanupHandler_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::customEvent(event);

}

bool QObjectCleanupHandler_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQObjectCleanupHandler* self_cast = dynamic_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QObjectCleanupHandler_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::connectNotify(*signal);

}

bool QObjectCleanupHandler_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQObjectCleanupHandler* self_cast = dynamic_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QObjectCleanupHandler_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQObjectCleanupHandler*)(self) )->QObjectCleanupHandler::disconnectNotify(*signal);

}

const QMetaObject* QObjectCleanupHandler_staticMetaObject() { return &QObjectCleanupHandler::staticMetaObject; }
QObject* QObjectCleanupHandler_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQObjectCleanupHandler* self_cast = dynamic_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QObjectCleanupHandler_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQObjectCleanupHandler* self_cast = dynamic_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QObjectCleanupHandler_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQObjectCleanupHandler* self_cast = dynamic_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QObjectCleanupHandler_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQObjectCleanupHandler* self_cast = dynamic_cast<VirtualQObjectCleanupHandler*>( (QObjectCleanupHandler*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QObjectCleanupHandler_delete(QObjectCleanupHandler* self) {
	delete self;
}

