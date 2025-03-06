#include <QAccessibleBridge>
#include <QAccessibleBridgePlugin>
#include <QAccessibleEvent>
#include <QAccessibleInterface>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qaccessiblebridge.h>
#include "gen_qaccessiblebridge.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

void QAccessibleBridge_setRootObject(QAccessibleBridge* self, QAccessibleInterface* rootObject) {
	self->setRootObject(rootObject);
}

void QAccessibleBridge_notifyAccessibilityUpdate(QAccessibleBridge* self, QAccessibleEvent* event) {
	self->notifyAccessibilityUpdate(event);
}

void QAccessibleBridge_operatorAssign(QAccessibleBridge* self, QAccessibleBridge* param1) {
	self->operator=(*param1);
}

void QAccessibleBridge_delete(QAccessibleBridge* self) {
	delete self;
}

class VirtualQAccessibleBridgePlugin final : public QAccessibleBridgePlugin {
	struct QAccessibleBridgePlugin_VTable* vtbl;
public:

	VirtualQAccessibleBridgePlugin(struct QAccessibleBridgePlugin_VTable* vtbl): QAccessibleBridgePlugin(), vtbl(vtbl) {};
	VirtualQAccessibleBridgePlugin(struct QAccessibleBridgePlugin_VTable* vtbl, QObject* parent): QAccessibleBridgePlugin(parent), vtbl(vtbl) {};

	virtual ~VirtualQAccessibleBridgePlugin() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAccessibleBridgePlugin::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAccessibleBridgePlugin_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAccessibleBridgePlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAccessibleBridgePlugin_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAccessibleBridgePlugin::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAccessibleBridgePlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QAccessibleBridge* create(const QString& key) override {
		if (vtbl->create == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		const QString key_ret = key;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray key_b = key_ret.toUtf8();
		struct miqt_string key_ms;
		key_ms.len = key_b.length();
		key_ms.data = static_cast<char*>(malloc(key_ms.len));
		memcpy(key_ms.data, key_b.data(), key_ms.len);
		struct miqt_string sigval1 = key_ms;

		QAccessibleBridge* callback_return_value = vtbl->create(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAccessibleBridgePlugin::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAccessibleBridgePlugin_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAccessibleBridgePlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAccessibleBridgePlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAccessibleBridgePlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAccessibleBridgePlugin_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAccessibleBridgePlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAccessibleBridgePlugin_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAccessibleBridgePlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAccessibleBridgePlugin_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAccessibleBridgePlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAccessibleBridgePlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAccessibleBridgePlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAccessibleBridgePlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAccessibleBridgePlugin_protectedbase_sender(const void* self);
	friend int QAccessibleBridgePlugin_protectedbase_senderSignalIndex(const void* self);
	friend int QAccessibleBridgePlugin_protectedbase_receivers(const void* self, const char* signal);
	friend bool QAccessibleBridgePlugin_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QAccessibleBridgePlugin* QAccessibleBridgePlugin_new(struct QAccessibleBridgePlugin_VTable* vtbl) {
	return new VirtualQAccessibleBridgePlugin(vtbl);
}

QAccessibleBridgePlugin* QAccessibleBridgePlugin_new2(struct QAccessibleBridgePlugin_VTable* vtbl, QObject* parent) {
	return new VirtualQAccessibleBridgePlugin(vtbl, parent);
}

void QAccessibleBridgePlugin_virtbase(QAccessibleBridgePlugin* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAccessibleBridgePlugin_metaObject(const QAccessibleBridgePlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAccessibleBridgePlugin_metacast(QAccessibleBridgePlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAccessibleBridgePlugin_metacall(QAccessibleBridgePlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAccessibleBridgePlugin_tr(const char* s) {
	QString _ret = QAccessibleBridgePlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAccessibleBridge* QAccessibleBridgePlugin_create(QAccessibleBridgePlugin* self, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return self->create(key_QString);
}

struct miqt_string QAccessibleBridgePlugin_tr2(const char* s, const char* c) {
	QString _ret = QAccessibleBridgePlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessibleBridgePlugin_tr3(const char* s, const char* c, int n) {
	QString _ret = QAccessibleBridgePlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAccessibleBridgePlugin_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAccessibleBridgePlugin*)(self) )->QAccessibleBridgePlugin::metaObject();

}

void* QAccessibleBridgePlugin_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAccessibleBridgePlugin*)(self) )->QAccessibleBridgePlugin::qt_metacast(param1);

}

int QAccessibleBridgePlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAccessibleBridgePlugin*)(self) )->QAccessibleBridgePlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QAccessibleBridgePlugin_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQAccessibleBridgePlugin*)(self) )->QAccessibleBridgePlugin::event(event);

}

bool QAccessibleBridgePlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQAccessibleBridgePlugin*)(self) )->QAccessibleBridgePlugin::eventFilter(watched, event);

}

void QAccessibleBridgePlugin_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQAccessibleBridgePlugin*)(self) )->QAccessibleBridgePlugin::timerEvent(event);

}

void QAccessibleBridgePlugin_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAccessibleBridgePlugin*)(self) )->QAccessibleBridgePlugin::childEvent(event);

}

void QAccessibleBridgePlugin_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAccessibleBridgePlugin*)(self) )->QAccessibleBridgePlugin::customEvent(event);

}

void QAccessibleBridgePlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAccessibleBridgePlugin*)(self) )->QAccessibleBridgePlugin::connectNotify(*signal);

}

void QAccessibleBridgePlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAccessibleBridgePlugin*)(self) )->QAccessibleBridgePlugin::disconnectNotify(*signal);

}

const QMetaObject* QAccessibleBridgePlugin_staticMetaObject() { return &QAccessibleBridgePlugin::staticMetaObject; }
QObject* QAccessibleBridgePlugin_protectedbase_sender(const void* self) {
	VirtualQAccessibleBridgePlugin* self_cast = static_cast<VirtualQAccessibleBridgePlugin*>( (QAccessibleBridgePlugin*)(self) );
	
	return self_cast->sender();

}

int QAccessibleBridgePlugin_protectedbase_senderSignalIndex(const void* self) {
	VirtualQAccessibleBridgePlugin* self_cast = static_cast<VirtualQAccessibleBridgePlugin*>( (QAccessibleBridgePlugin*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QAccessibleBridgePlugin_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQAccessibleBridgePlugin* self_cast = static_cast<VirtualQAccessibleBridgePlugin*>( (QAccessibleBridgePlugin*)(self) );
	
	return self_cast->receivers(signal);

}

bool QAccessibleBridgePlugin_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQAccessibleBridgePlugin* self_cast = static_cast<VirtualQAccessibleBridgePlugin*>( (QAccessibleBridgePlugin*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QAccessibleBridgePlugin_delete(QAccessibleBridgePlugin* self) {
	delete self;
}

