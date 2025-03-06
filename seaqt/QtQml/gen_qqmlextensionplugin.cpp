#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQmlEngine>
#include <QQmlEngineExtensionInterface>
#include <QQmlEngineExtensionPlugin>
#include <QQmlExtensionInterface>
#include <QQmlExtensionPlugin>
#include <QQmlTypesExtensionInterface>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <qqmlextensionplugin.h>
#include "gen_qqmlextensionplugin.h"

#ifdef __cplusplus
extern "C" {
#endif

QMetaObject* miqt_exec_callback_QQmlExtensionPlugin_metaObject(const QQmlExtensionPlugin*, intptr_t);
void* miqt_exec_callback_QQmlExtensionPlugin_metacast(QQmlExtensionPlugin*, intptr_t, const char*);
int miqt_exec_callback_QQmlExtensionPlugin_metacall(QQmlExtensionPlugin*, intptr_t, int, int, void**);
void miqt_exec_callback_QQmlExtensionPlugin_registerTypes(QQmlExtensionPlugin*, intptr_t, const char*);
void miqt_exec_callback_QQmlExtensionPlugin_initializeEngine(QQmlExtensionPlugin*, intptr_t, QQmlEngine*, const char*);
bool miqt_exec_callback_QQmlExtensionPlugin_event(QQmlExtensionPlugin*, intptr_t, QEvent*);
bool miqt_exec_callback_QQmlExtensionPlugin_eventFilter(QQmlExtensionPlugin*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QQmlExtensionPlugin_timerEvent(QQmlExtensionPlugin*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QQmlExtensionPlugin_childEvent(QQmlExtensionPlugin*, intptr_t, QChildEvent*);
void miqt_exec_callback_QQmlExtensionPlugin_customEvent(QQmlExtensionPlugin*, intptr_t, QEvent*);
void miqt_exec_callback_QQmlExtensionPlugin_connectNotify(QQmlExtensionPlugin*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QQmlExtensionPlugin_disconnectNotify(QQmlExtensionPlugin*, intptr_t, QMetaMethod*);
QMetaObject* miqt_exec_callback_QQmlEngineExtensionPlugin_metaObject(const QQmlEngineExtensionPlugin*, intptr_t);
void* miqt_exec_callback_QQmlEngineExtensionPlugin_metacast(QQmlEngineExtensionPlugin*, intptr_t, const char*);
int miqt_exec_callback_QQmlEngineExtensionPlugin_metacall(QQmlEngineExtensionPlugin*, intptr_t, int, int, void**);
void miqt_exec_callback_QQmlEngineExtensionPlugin_initializeEngine(QQmlEngineExtensionPlugin*, intptr_t, QQmlEngine*, const char*);
bool miqt_exec_callback_QQmlEngineExtensionPlugin_event(QQmlEngineExtensionPlugin*, intptr_t, QEvent*);
bool miqt_exec_callback_QQmlEngineExtensionPlugin_eventFilter(QQmlEngineExtensionPlugin*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QQmlEngineExtensionPlugin_timerEvent(QQmlEngineExtensionPlugin*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QQmlEngineExtensionPlugin_childEvent(QQmlEngineExtensionPlugin*, intptr_t, QChildEvent*);
void miqt_exec_callback_QQmlEngineExtensionPlugin_customEvent(QQmlEngineExtensionPlugin*, intptr_t, QEvent*);
void miqt_exec_callback_QQmlEngineExtensionPlugin_connectNotify(QQmlEngineExtensionPlugin*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QQmlEngineExtensionPlugin_disconnectNotify(QQmlEngineExtensionPlugin*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQQmlExtensionPlugin final : public QQmlExtensionPlugin {
public:

	VirtualQQmlExtensionPlugin(): QQmlExtensionPlugin() {};
	VirtualQQmlExtensionPlugin(QObject* parent): QQmlExtensionPlugin(parent) {};

	virtual ~VirtualQQmlExtensionPlugin() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QQmlExtensionPlugin::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QQmlExtensionPlugin_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QQmlExtensionPlugin_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QQmlExtensionPlugin::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QQmlExtensionPlugin_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QQmlExtensionPlugin_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QQmlExtensionPlugin::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QQmlExtensionPlugin_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQmlExtensionPlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__registerTypes = 0;

	// Subclass to allow providing a Go implementation
	virtual void registerTypes(const char* uri) override {
		if (handle__registerTypes == 0) {
			return; // Pure virtual, there is no base we can call
		}
		
		const char* sigval1 = (const char*) uri;

		miqt_exec_callback_QQmlExtensionPlugin_registerTypes(this, handle__registerTypes, sigval1);

		
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__initializeEngine = 0;

	// Subclass to allow providing a Go implementation
	virtual void initializeEngine(QQmlEngine* engine, const char* uri) override {
		if (handle__initializeEngine == 0) {
			QQmlExtensionPlugin::initializeEngine(engine, uri);
			return;
		}
		
		QQmlEngine* sigval1 = engine;
		const char* sigval2 = (const char*) uri;

		miqt_exec_callback_QQmlExtensionPlugin_initializeEngine(this, handle__initializeEngine, sigval1, sigval2);

		
	}

	friend void QQmlExtensionPlugin_virtualbase_initializeEngine(void* self, QQmlEngine* engine, const char* uri);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QQmlExtensionPlugin::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QQmlExtensionPlugin_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QQmlExtensionPlugin_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QQmlExtensionPlugin::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QQmlExtensionPlugin_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQmlExtensionPlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QQmlExtensionPlugin::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QQmlExtensionPlugin_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QQmlExtensionPlugin_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QQmlExtensionPlugin::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QQmlExtensionPlugin_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QQmlExtensionPlugin_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QQmlExtensionPlugin::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QQmlExtensionPlugin_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QQmlExtensionPlugin_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QQmlExtensionPlugin::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQmlExtensionPlugin_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QQmlExtensionPlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QQmlExtensionPlugin::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQmlExtensionPlugin_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QQmlExtensionPlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQmlExtensionPlugin_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QQmlExtensionPlugin_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QQmlExtensionPlugin_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QQmlExtensionPlugin_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QQmlExtensionPlugin* QQmlExtensionPlugin_new() {
	return new VirtualQQmlExtensionPlugin();
}

QQmlExtensionPlugin* QQmlExtensionPlugin_new2(QObject* parent) {
	return new VirtualQQmlExtensionPlugin(parent);
}

void QQmlExtensionPlugin_virtbase(QQmlExtensionPlugin* src, QObject** outptr_QObject, QQmlExtensionInterface** outptr_QQmlExtensionInterface) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QQmlExtensionInterface = static_cast<QQmlExtensionInterface*>(src);
}

QMetaObject* QQmlExtensionPlugin_metaObject(const QQmlExtensionPlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQmlExtensionPlugin_metacast(QQmlExtensionPlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQmlExtensionPlugin_metacall(QQmlExtensionPlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQmlExtensionPlugin_tr(const char* s) {
	QString _ret = QQmlExtensionPlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlExtensionPlugin_trUtf8(const char* s) {
	QString _ret = QQmlExtensionPlugin::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QQmlExtensionPlugin_baseUrl(const QQmlExtensionPlugin* self) {
	return new QUrl(self->baseUrl());
}

void QQmlExtensionPlugin_registerTypes(QQmlExtensionPlugin* self, const char* uri) {
	self->registerTypes(uri);
}

void QQmlExtensionPlugin_initializeEngine(QQmlExtensionPlugin* self, QQmlEngine* engine, const char* uri) {
	self->initializeEngine(engine, uri);
}

struct miqt_string QQmlExtensionPlugin_tr2(const char* s, const char* c) {
	QString _ret = QQmlExtensionPlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlExtensionPlugin_tr3(const char* s, const char* c, int n) {
	QString _ret = QQmlExtensionPlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlExtensionPlugin_trUtf82(const char* s, const char* c) {
	QString _ret = QQmlExtensionPlugin::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlExtensionPlugin_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQmlExtensionPlugin::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QQmlExtensionPlugin_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQQmlExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlExtensionPlugin*>( (QQmlExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QQmlExtensionPlugin_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQQmlExtensionPlugin*)(self) )->QQmlExtensionPlugin::metaObject();

}

bool QQmlExtensionPlugin_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQQmlExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlExtensionPlugin*>( (QQmlExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QQmlExtensionPlugin_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQQmlExtensionPlugin*)(self) )->QQmlExtensionPlugin::qt_metacast(param1);

}

bool QQmlExtensionPlugin_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQQmlExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlExtensionPlugin*>( (QQmlExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QQmlExtensionPlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQQmlExtensionPlugin*)(self) )->QQmlExtensionPlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QQmlExtensionPlugin_override_virtual_registerTypes(void* self, intptr_t slot) {
	VirtualQQmlExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlExtensionPlugin*>( (QQmlExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__registerTypes = slot;
	return true;
}

bool QQmlExtensionPlugin_override_virtual_initializeEngine(void* self, intptr_t slot) {
	VirtualQQmlExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlExtensionPlugin*>( (QQmlExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__initializeEngine = slot;
	return true;
}

void QQmlExtensionPlugin_virtualbase_initializeEngine(void* self, QQmlEngine* engine, const char* uri) {

	( (VirtualQQmlExtensionPlugin*)(self) )->QQmlExtensionPlugin::initializeEngine(engine, uri);

}

bool QQmlExtensionPlugin_override_virtual_event(void* self, intptr_t slot) {
	VirtualQQmlExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlExtensionPlugin*>( (QQmlExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QQmlExtensionPlugin_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQQmlExtensionPlugin*)(self) )->QQmlExtensionPlugin::event(event);

}

bool QQmlExtensionPlugin_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQQmlExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlExtensionPlugin*>( (QQmlExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QQmlExtensionPlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQQmlExtensionPlugin*)(self) )->QQmlExtensionPlugin::eventFilter(watched, event);

}

bool QQmlExtensionPlugin_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQQmlExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlExtensionPlugin*>( (QQmlExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QQmlExtensionPlugin_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQQmlExtensionPlugin*)(self) )->QQmlExtensionPlugin::timerEvent(event);

}

bool QQmlExtensionPlugin_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQQmlExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlExtensionPlugin*>( (QQmlExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QQmlExtensionPlugin_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQQmlExtensionPlugin*)(self) )->QQmlExtensionPlugin::childEvent(event);

}

bool QQmlExtensionPlugin_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQQmlExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlExtensionPlugin*>( (QQmlExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QQmlExtensionPlugin_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQQmlExtensionPlugin*)(self) )->QQmlExtensionPlugin::customEvent(event);

}

bool QQmlExtensionPlugin_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQQmlExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlExtensionPlugin*>( (QQmlExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QQmlExtensionPlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQmlExtensionPlugin*)(self) )->QQmlExtensionPlugin::connectNotify(*signal);

}

bool QQmlExtensionPlugin_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQQmlExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlExtensionPlugin*>( (QQmlExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QQmlExtensionPlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQmlExtensionPlugin*)(self) )->QQmlExtensionPlugin::disconnectNotify(*signal);

}

const QMetaObject* QQmlExtensionPlugin_staticMetaObject() { return &QQmlExtensionPlugin::staticMetaObject; }
QObject* QQmlExtensionPlugin_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQmlExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlExtensionPlugin*>( (QQmlExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QQmlExtensionPlugin_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQmlExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlExtensionPlugin*>( (QQmlExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QQmlExtensionPlugin_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQQmlExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlExtensionPlugin*>( (QQmlExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QQmlExtensionPlugin_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQQmlExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlExtensionPlugin*>( (QQmlExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QQmlExtensionPlugin_delete(QQmlExtensionPlugin* self) {
	delete self;
}

class VirtualQQmlEngineExtensionPlugin final : public QQmlEngineExtensionPlugin {
public:

	VirtualQQmlEngineExtensionPlugin(): QQmlEngineExtensionPlugin() {};
	VirtualQQmlEngineExtensionPlugin(QObject* parent): QQmlEngineExtensionPlugin(parent) {};

	virtual ~VirtualQQmlEngineExtensionPlugin() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QQmlEngineExtensionPlugin::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QQmlEngineExtensionPlugin_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QQmlEngineExtensionPlugin_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QQmlEngineExtensionPlugin::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QQmlEngineExtensionPlugin_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QQmlEngineExtensionPlugin_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QQmlEngineExtensionPlugin::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QQmlEngineExtensionPlugin_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQmlEngineExtensionPlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__initializeEngine = 0;

	// Subclass to allow providing a Go implementation
	virtual void initializeEngine(QQmlEngine* engine, const char* uri) override {
		if (handle__initializeEngine == 0) {
			QQmlEngineExtensionPlugin::initializeEngine(engine, uri);
			return;
		}
		
		QQmlEngine* sigval1 = engine;
		const char* sigval2 = (const char*) uri;

		miqt_exec_callback_QQmlEngineExtensionPlugin_initializeEngine(this, handle__initializeEngine, sigval1, sigval2);

		
	}

	friend void QQmlEngineExtensionPlugin_virtualbase_initializeEngine(void* self, QQmlEngine* engine, const char* uri);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QQmlEngineExtensionPlugin::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QQmlEngineExtensionPlugin_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QQmlEngineExtensionPlugin_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QQmlEngineExtensionPlugin::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QQmlEngineExtensionPlugin_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQmlEngineExtensionPlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QQmlEngineExtensionPlugin::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QQmlEngineExtensionPlugin_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QQmlEngineExtensionPlugin_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QQmlEngineExtensionPlugin::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QQmlEngineExtensionPlugin_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QQmlEngineExtensionPlugin_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QQmlEngineExtensionPlugin::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QQmlEngineExtensionPlugin_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QQmlEngineExtensionPlugin_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QQmlEngineExtensionPlugin::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQmlEngineExtensionPlugin_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QQmlEngineExtensionPlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QQmlEngineExtensionPlugin::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQmlEngineExtensionPlugin_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QQmlEngineExtensionPlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQmlEngineExtensionPlugin_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QQmlEngineExtensionPlugin_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QQmlEngineExtensionPlugin_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QQmlEngineExtensionPlugin_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QQmlEngineExtensionPlugin* QQmlEngineExtensionPlugin_new() {
	return new VirtualQQmlEngineExtensionPlugin();
}

QQmlEngineExtensionPlugin* QQmlEngineExtensionPlugin_new2(QObject* parent) {
	return new VirtualQQmlEngineExtensionPlugin(parent);
}

void QQmlEngineExtensionPlugin_virtbase(QQmlEngineExtensionPlugin* src, QObject** outptr_QObject, QQmlEngineExtensionInterface** outptr_QQmlEngineExtensionInterface) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QQmlEngineExtensionInterface = static_cast<QQmlEngineExtensionInterface*>(src);
}

QMetaObject* QQmlEngineExtensionPlugin_metaObject(const QQmlEngineExtensionPlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQmlEngineExtensionPlugin_metacast(QQmlEngineExtensionPlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQmlEngineExtensionPlugin_metacall(QQmlEngineExtensionPlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQmlEngineExtensionPlugin_tr(const char* s) {
	QString _ret = QQmlEngineExtensionPlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlEngineExtensionPlugin_trUtf8(const char* s) {
	QString _ret = QQmlEngineExtensionPlugin::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQmlEngineExtensionPlugin_initializeEngine(QQmlEngineExtensionPlugin* self, QQmlEngine* engine, const char* uri) {
	self->initializeEngine(engine, uri);
}

struct miqt_string QQmlEngineExtensionPlugin_tr2(const char* s, const char* c) {
	QString _ret = QQmlEngineExtensionPlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlEngineExtensionPlugin_tr3(const char* s, const char* c, int n) {
	QString _ret = QQmlEngineExtensionPlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlEngineExtensionPlugin_trUtf82(const char* s, const char* c) {
	QString _ret = QQmlEngineExtensionPlugin::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlEngineExtensionPlugin_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQmlEngineExtensionPlugin::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QQmlEngineExtensionPlugin_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQQmlEngineExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlEngineExtensionPlugin*>( (QQmlEngineExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QQmlEngineExtensionPlugin_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQQmlEngineExtensionPlugin*)(self) )->QQmlEngineExtensionPlugin::metaObject();

}

bool QQmlEngineExtensionPlugin_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQQmlEngineExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlEngineExtensionPlugin*>( (QQmlEngineExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QQmlEngineExtensionPlugin_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQQmlEngineExtensionPlugin*)(self) )->QQmlEngineExtensionPlugin::qt_metacast(param1);

}

bool QQmlEngineExtensionPlugin_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQQmlEngineExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlEngineExtensionPlugin*>( (QQmlEngineExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QQmlEngineExtensionPlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQQmlEngineExtensionPlugin*)(self) )->QQmlEngineExtensionPlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QQmlEngineExtensionPlugin_override_virtual_initializeEngine(void* self, intptr_t slot) {
	VirtualQQmlEngineExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlEngineExtensionPlugin*>( (QQmlEngineExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__initializeEngine = slot;
	return true;
}

void QQmlEngineExtensionPlugin_virtualbase_initializeEngine(void* self, QQmlEngine* engine, const char* uri) {

	( (VirtualQQmlEngineExtensionPlugin*)(self) )->QQmlEngineExtensionPlugin::initializeEngine(engine, uri);

}

bool QQmlEngineExtensionPlugin_override_virtual_event(void* self, intptr_t slot) {
	VirtualQQmlEngineExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlEngineExtensionPlugin*>( (QQmlEngineExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QQmlEngineExtensionPlugin_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQQmlEngineExtensionPlugin*)(self) )->QQmlEngineExtensionPlugin::event(event);

}

bool QQmlEngineExtensionPlugin_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQQmlEngineExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlEngineExtensionPlugin*>( (QQmlEngineExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QQmlEngineExtensionPlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQQmlEngineExtensionPlugin*)(self) )->QQmlEngineExtensionPlugin::eventFilter(watched, event);

}

bool QQmlEngineExtensionPlugin_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQQmlEngineExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlEngineExtensionPlugin*>( (QQmlEngineExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QQmlEngineExtensionPlugin_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQQmlEngineExtensionPlugin*)(self) )->QQmlEngineExtensionPlugin::timerEvent(event);

}

bool QQmlEngineExtensionPlugin_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQQmlEngineExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlEngineExtensionPlugin*>( (QQmlEngineExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QQmlEngineExtensionPlugin_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQQmlEngineExtensionPlugin*)(self) )->QQmlEngineExtensionPlugin::childEvent(event);

}

bool QQmlEngineExtensionPlugin_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQQmlEngineExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlEngineExtensionPlugin*>( (QQmlEngineExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QQmlEngineExtensionPlugin_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQQmlEngineExtensionPlugin*)(self) )->QQmlEngineExtensionPlugin::customEvent(event);

}

bool QQmlEngineExtensionPlugin_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQQmlEngineExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlEngineExtensionPlugin*>( (QQmlEngineExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QQmlEngineExtensionPlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQmlEngineExtensionPlugin*)(self) )->QQmlEngineExtensionPlugin::connectNotify(*signal);

}

bool QQmlEngineExtensionPlugin_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQQmlEngineExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlEngineExtensionPlugin*>( (QQmlEngineExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QQmlEngineExtensionPlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQmlEngineExtensionPlugin*)(self) )->QQmlEngineExtensionPlugin::disconnectNotify(*signal);

}

const QMetaObject* QQmlEngineExtensionPlugin_staticMetaObject() { return &QQmlEngineExtensionPlugin::staticMetaObject; }
QObject* QQmlEngineExtensionPlugin_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQmlEngineExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlEngineExtensionPlugin*>( (QQmlEngineExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QQmlEngineExtensionPlugin_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQmlEngineExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlEngineExtensionPlugin*>( (QQmlEngineExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QQmlEngineExtensionPlugin_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQQmlEngineExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlEngineExtensionPlugin*>( (QQmlEngineExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QQmlEngineExtensionPlugin_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQQmlEngineExtensionPlugin* self_cast = dynamic_cast<VirtualQQmlEngineExtensionPlugin*>( (QQmlEngineExtensionPlugin*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QQmlEngineExtensionPlugin_delete(QQmlEngineExtensionPlugin* self) {
	delete self;
}

