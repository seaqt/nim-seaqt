#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyle>
#include <QStylePlugin>
#include <QTimerEvent>
#include <qstyleplugin.h>
#include "gen_qstyleplugin.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQStylePlugin final : public QStylePlugin {
	struct QStylePlugin_VTable* vtbl;
public:

	VirtualQStylePlugin(struct QStylePlugin_VTable* vtbl): QStylePlugin(), vtbl(vtbl) {};
	VirtualQStylePlugin(struct QStylePlugin_VTable* vtbl, QObject* parent): QStylePlugin(parent), vtbl(vtbl) {};

	virtual ~VirtualQStylePlugin() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QStylePlugin::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QStylePlugin_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QStylePlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QStylePlugin_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QStylePlugin::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QStylePlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QStyle* create(const QString& key) override {
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

		QStyle* callback_return_value = vtbl->create(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QStylePlugin::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QStylePlugin_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QStylePlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QStylePlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QStylePlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QStylePlugin_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QStylePlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QStylePlugin_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QStylePlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QStylePlugin_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QStylePlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QStylePlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QStylePlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QStylePlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QStylePlugin_protectedbase_sender(const void* self);
	friend int QStylePlugin_protectedbase_senderSignalIndex(const void* self);
	friend int QStylePlugin_protectedbase_receivers(const void* self, const char* signal);
	friend bool QStylePlugin_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QStylePlugin* QStylePlugin_new(struct QStylePlugin_VTable* vtbl) {
	return new VirtualQStylePlugin(vtbl);
}

QStylePlugin* QStylePlugin_new2(struct QStylePlugin_VTable* vtbl, QObject* parent) {
	return new VirtualQStylePlugin(vtbl, parent);
}

void QStylePlugin_virtbase(QStylePlugin* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QStylePlugin_metaObject(const QStylePlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QStylePlugin_metacast(QStylePlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QStylePlugin_metacall(QStylePlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QStylePlugin_tr(const char* s) {
	QString _ret = QStylePlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QStyle* QStylePlugin_create(QStylePlugin* self, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return self->create(key_QString);
}

struct miqt_string QStylePlugin_tr2(const char* s, const char* c) {
	QString _ret = QStylePlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStylePlugin_tr3(const char* s, const char* c, int n) {
	QString _ret = QStylePlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QStylePlugin_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQStylePlugin*)(self) )->QStylePlugin::metaObject();

}

void* QStylePlugin_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQStylePlugin*)(self) )->QStylePlugin::qt_metacast(param1);

}

int QStylePlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQStylePlugin*)(self) )->QStylePlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QStylePlugin_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQStylePlugin*)(self) )->QStylePlugin::event(event);

}

bool QStylePlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQStylePlugin*)(self) )->QStylePlugin::eventFilter(watched, event);

}

void QStylePlugin_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQStylePlugin*)(self) )->QStylePlugin::timerEvent(event);

}

void QStylePlugin_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQStylePlugin*)(self) )->QStylePlugin::childEvent(event);

}

void QStylePlugin_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQStylePlugin*)(self) )->QStylePlugin::customEvent(event);

}

void QStylePlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQStylePlugin*)(self) )->QStylePlugin::connectNotify(*signal);

}

void QStylePlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQStylePlugin*)(self) )->QStylePlugin::disconnectNotify(*signal);

}

const QMetaObject* QStylePlugin_staticMetaObject() { return &QStylePlugin::staticMetaObject; }
QObject* QStylePlugin_protectedbase_sender(const void* self) {
	VirtualQStylePlugin* self_cast = static_cast<VirtualQStylePlugin*>( (QStylePlugin*)(self) );
	
	return self_cast->sender();

}

int QStylePlugin_protectedbase_senderSignalIndex(const void* self) {
	VirtualQStylePlugin* self_cast = static_cast<VirtualQStylePlugin*>( (QStylePlugin*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QStylePlugin_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQStylePlugin* self_cast = static_cast<VirtualQStylePlugin*>( (QStylePlugin*)(self) );
	
	return self_cast->receivers(signal);

}

bool QStylePlugin_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQStylePlugin* self_cast = static_cast<VirtualQStylePlugin*>( (QStylePlugin*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QStylePlugin_delete(QStylePlugin* self) {
	delete self;
}

