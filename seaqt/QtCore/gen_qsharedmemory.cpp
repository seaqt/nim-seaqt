#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSharedMemory>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qsharedmemory.h>
#include "gen_qsharedmemory.h"
#if ! defined(Q_OS_ANDROID)


#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSharedMemory final : public QSharedMemory {
	struct QSharedMemory_VTable* vtbl;
public:

	VirtualQSharedMemory(struct QSharedMemory_VTable* vtbl): QSharedMemory(), vtbl(vtbl) {};
	VirtualQSharedMemory(struct QSharedMemory_VTable* vtbl, const QString& key): QSharedMemory(key), vtbl(vtbl) {};
	VirtualQSharedMemory(struct QSharedMemory_VTable* vtbl, QObject* parent): QSharedMemory(parent), vtbl(vtbl) {};
	VirtualQSharedMemory(struct QSharedMemory_VTable* vtbl, const QString& key, QObject* parent): QSharedMemory(key, parent), vtbl(vtbl) {};

	virtual ~VirtualQSharedMemory() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSharedMemory::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QSharedMemory_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSharedMemory::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QSharedMemory_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSharedMemory::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSharedMemory_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSharedMemory::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSharedMemory_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSharedMemory::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSharedMemory_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSharedMemory::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QSharedMemory_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSharedMemory::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QSharedMemory_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSharedMemory::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QSharedMemory_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSharedMemory::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QSharedMemory_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSharedMemory::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QSharedMemory_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSharedMemory_protectedbase_sender(const void* self);
	friend int QSharedMemory_protectedbase_senderSignalIndex(const void* self);
	friend int QSharedMemory_protectedbase_receivers(const void* self, const char* signal);
	friend bool QSharedMemory_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QSharedMemory* QSharedMemory_new(struct QSharedMemory_VTable* vtbl) {
	return new VirtualQSharedMemory(vtbl);
}

QSharedMemory* QSharedMemory_new2(struct QSharedMemory_VTable* vtbl, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new VirtualQSharedMemory(vtbl, key_QString);
}

QSharedMemory* QSharedMemory_new3(struct QSharedMemory_VTable* vtbl, QObject* parent) {
	return new VirtualQSharedMemory(vtbl, parent);
}

QSharedMemory* QSharedMemory_new4(struct QSharedMemory_VTable* vtbl, struct miqt_string key, QObject* parent) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new VirtualQSharedMemory(vtbl, key_QString, parent);
}

void QSharedMemory_virtbase(QSharedMemory* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSharedMemory_metaObject(const QSharedMemory* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSharedMemory_metacast(QSharedMemory* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSharedMemory_metacall(QSharedMemory* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSharedMemory_tr(const char* s) {
	QString _ret = QSharedMemory::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSharedMemory_trUtf8(const char* s) {
	QString _ret = QSharedMemory::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSharedMemory_setKey(QSharedMemory* self, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->setKey(key_QString);
}

struct miqt_string QSharedMemory_key(const QSharedMemory* self) {
	QString _ret = self->key();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSharedMemory_setNativeKey(QSharedMemory* self, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->setNativeKey(key_QString);
}

struct miqt_string QSharedMemory_nativeKey(const QSharedMemory* self) {
	QString _ret = self->nativeKey();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QSharedMemory_create(QSharedMemory* self, int size) {
	return self->create(static_cast<int>(size));
}

int QSharedMemory_size(const QSharedMemory* self) {
	return self->size();
}

bool QSharedMemory_attach(QSharedMemory* self) {
	return self->attach();
}

bool QSharedMemory_isAttached(const QSharedMemory* self) {
	return self->isAttached();
}

bool QSharedMemory_detach(QSharedMemory* self) {
	return self->detach();
}

void* QSharedMemory_data(QSharedMemory* self) {
	return self->data();
}

const void* QSharedMemory_constData(const QSharedMemory* self) {
	return (const void*) self->constData();
}

const void* QSharedMemory_data2(const QSharedMemory* self) {
	return (const void*) self->data();
}

bool QSharedMemory_lock(QSharedMemory* self) {
	return self->lock();
}

bool QSharedMemory_unlock(QSharedMemory* self) {
	return self->unlock();
}

int QSharedMemory_error(const QSharedMemory* self) {
	QSharedMemory::SharedMemoryError _ret = self->error();
	return static_cast<int>(_ret);
}

struct miqt_string QSharedMemory_errorString(const QSharedMemory* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSharedMemory_tr2(const char* s, const char* c) {
	QString _ret = QSharedMemory::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSharedMemory_tr3(const char* s, const char* c, int n) {
	QString _ret = QSharedMemory::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSharedMemory_trUtf82(const char* s, const char* c) {
	QString _ret = QSharedMemory::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSharedMemory_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSharedMemory::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QSharedMemory_create2(QSharedMemory* self, int size, int mode) {
	return self->create(static_cast<int>(size), static_cast<QSharedMemory::AccessMode>(mode));
}

bool QSharedMemory_attach1(QSharedMemory* self, int mode) {
	return self->attach(static_cast<QSharedMemory::AccessMode>(mode));
}

QMetaObject* QSharedMemory_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSharedMemory*)(self) )->QSharedMemory::metaObject();

}

void* QSharedMemory_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSharedMemory*)(self) )->QSharedMemory::qt_metacast(param1);

}

int QSharedMemory_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSharedMemory*)(self) )->QSharedMemory::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QSharedMemory_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQSharedMemory*)(self) )->QSharedMemory::event(event);

}

bool QSharedMemory_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSharedMemory*)(self) )->QSharedMemory::eventFilter(watched, event);

}

void QSharedMemory_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQSharedMemory*)(self) )->QSharedMemory::timerEvent(event);

}

void QSharedMemory_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSharedMemory*)(self) )->QSharedMemory::childEvent(event);

}

void QSharedMemory_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSharedMemory*)(self) )->QSharedMemory::customEvent(event);

}

void QSharedMemory_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSharedMemory*)(self) )->QSharedMemory::connectNotify(*signal);

}

void QSharedMemory_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSharedMemory*)(self) )->QSharedMemory::disconnectNotify(*signal);

}

const QMetaObject* QSharedMemory_staticMetaObject() { return &QSharedMemory::staticMetaObject; }
QObject* QSharedMemory_protectedbase_sender(const void* self) {
	VirtualQSharedMemory* self_cast = static_cast<VirtualQSharedMemory*>( (QSharedMemory*)(self) );
	
	return self_cast->sender();

}

int QSharedMemory_protectedbase_senderSignalIndex(const void* self) {
	VirtualQSharedMemory* self_cast = static_cast<VirtualQSharedMemory*>( (QSharedMemory*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QSharedMemory_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQSharedMemory* self_cast = static_cast<VirtualQSharedMemory*>( (QSharedMemory*)(self) );
	
	return self_cast->receivers(signal);

}

bool QSharedMemory_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQSharedMemory* self_cast = static_cast<VirtualQSharedMemory*>( (QSharedMemory*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QSharedMemory_delete(QSharedMemory* self) {
	delete self;
}

#endif //! defined(Q_OS_ANDROID)

