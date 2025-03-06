#include <QAccessibleInterface>
#include <QAccessiblePlugin>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qaccessibleplugin.h>
#include "gen_qaccessibleplugin.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQAccessiblePlugin final : public QAccessiblePlugin {
	struct QAccessiblePlugin_VTable* vtbl;
public:

	VirtualQAccessiblePlugin(struct QAccessiblePlugin_VTable* vtbl): QAccessiblePlugin(), vtbl(vtbl) {};
	VirtualQAccessiblePlugin(struct QAccessiblePlugin_VTable* vtbl, QObject* parent): QAccessiblePlugin(parent), vtbl(vtbl) {};

	virtual ~VirtualQAccessiblePlugin() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAccessiblePlugin::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAccessiblePlugin_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAccessiblePlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAccessiblePlugin_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAccessiblePlugin::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAccessiblePlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QAccessibleInterface* create(const QString& key, QObject* object) override {
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
		QObject* sigval2 = object;

		QAccessibleInterface* callback_return_value = vtbl->create(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAccessiblePlugin::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAccessiblePlugin_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAccessiblePlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAccessiblePlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAccessiblePlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAccessiblePlugin_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAccessiblePlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAccessiblePlugin_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAccessiblePlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAccessiblePlugin_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAccessiblePlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAccessiblePlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAccessiblePlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAccessiblePlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAccessiblePlugin_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QAccessiblePlugin_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QAccessiblePlugin_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QAccessiblePlugin_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QAccessiblePlugin* QAccessiblePlugin_new(struct QAccessiblePlugin_VTable* vtbl) {
	return new VirtualQAccessiblePlugin(vtbl);
}

QAccessiblePlugin* QAccessiblePlugin_new2(struct QAccessiblePlugin_VTable* vtbl, QObject* parent) {
	return new VirtualQAccessiblePlugin(vtbl, parent);
}

void QAccessiblePlugin_virtbase(QAccessiblePlugin* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAccessiblePlugin_metaObject(const QAccessiblePlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAccessiblePlugin_metacast(QAccessiblePlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAccessiblePlugin_metacall(QAccessiblePlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAccessiblePlugin_tr(const char* s) {
	QString _ret = QAccessiblePlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessiblePlugin_trUtf8(const char* s) {
	QString _ret = QAccessiblePlugin::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAccessibleInterface* QAccessiblePlugin_create(QAccessiblePlugin* self, struct miqt_string key, QObject* object) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return self->create(key_QString, object);
}

struct miqt_string QAccessiblePlugin_tr2(const char* s, const char* c) {
	QString _ret = QAccessiblePlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessiblePlugin_tr3(const char* s, const char* c, int n) {
	QString _ret = QAccessiblePlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessiblePlugin_trUtf82(const char* s, const char* c) {
	QString _ret = QAccessiblePlugin::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAccessiblePlugin_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAccessiblePlugin::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAccessiblePlugin_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAccessiblePlugin*)(self) )->QAccessiblePlugin::metaObject();

}

void* QAccessiblePlugin_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAccessiblePlugin*)(self) )->QAccessiblePlugin::qt_metacast(param1);

}

int QAccessiblePlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAccessiblePlugin*)(self) )->QAccessiblePlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QAccessiblePlugin_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQAccessiblePlugin*)(self) )->QAccessiblePlugin::event(event);

}

bool QAccessiblePlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQAccessiblePlugin*)(self) )->QAccessiblePlugin::eventFilter(watched, event);

}

void QAccessiblePlugin_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQAccessiblePlugin*)(self) )->QAccessiblePlugin::timerEvent(event);

}

void QAccessiblePlugin_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAccessiblePlugin*)(self) )->QAccessiblePlugin::childEvent(event);

}

void QAccessiblePlugin_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAccessiblePlugin*)(self) )->QAccessiblePlugin::customEvent(event);

}

void QAccessiblePlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAccessiblePlugin*)(self) )->QAccessiblePlugin::connectNotify(*signal);

}

void QAccessiblePlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAccessiblePlugin*)(self) )->QAccessiblePlugin::disconnectNotify(*signal);

}

const QMetaObject* QAccessiblePlugin_staticMetaObject() { return &QAccessiblePlugin::staticMetaObject; }
QObject* QAccessiblePlugin_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAccessiblePlugin* self_cast = dynamic_cast<VirtualQAccessiblePlugin*>( (QAccessiblePlugin*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QAccessiblePlugin_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAccessiblePlugin* self_cast = dynamic_cast<VirtualQAccessiblePlugin*>( (QAccessiblePlugin*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QAccessiblePlugin_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQAccessiblePlugin* self_cast = dynamic_cast<VirtualQAccessiblePlugin*>( (QAccessiblePlugin*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QAccessiblePlugin_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQAccessiblePlugin* self_cast = dynamic_cast<VirtualQAccessiblePlugin*>( (QAccessiblePlugin*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QAccessiblePlugin_delete(QAccessiblePlugin* self) {
	delete self;
}

