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

class VirtualQSharedMemory final : public QSharedMemory {
	const QSharedMemory_VTable* vtbl;
	void* vdata;
public:
	friend const QSharedMemory_VTable* QSharedMemory_vtbl(const VirtualQSharedMemory* self);
	friend void* QSharedMemory_vdata(const VirtualQSharedMemory* self);
	friend void QSharedMemory_setVdata(VirtualQSharedMemory* self, void* vdata);

	VirtualQSharedMemory(const QSharedMemory_VTable* vtbl, void* vdata): QSharedMemory(), vtbl(vtbl), vdata(vdata) {}
	VirtualQSharedMemory(const QSharedMemory_VTable* vtbl, void* vdata, const QString& key): QSharedMemory(key), vtbl(vtbl), vdata(vdata) {}
	VirtualQSharedMemory(const QSharedMemory_VTable* vtbl, void* vdata, QObject* parent): QSharedMemory(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQSharedMemory(const QSharedMemory_VTable* vtbl, void* vdata, const QString& key, QObject* parent): QSharedMemory(key, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSharedMemory() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSharedMemory::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSharedMemory_virtualbase_metaObject(const VirtualQSharedMemory* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSharedMemory::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSharedMemory_virtualbase_metacast(VirtualQSharedMemory* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSharedMemory::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSharedMemory_virtualbase_metacall(VirtualQSharedMemory* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSharedMemory::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSharedMemory_virtualbase_event(VirtualQSharedMemory* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSharedMemory::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSharedMemory_virtualbase_eventFilter(VirtualQSharedMemory* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSharedMemory::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSharedMemory_virtualbase_timerEvent(VirtualQSharedMemory* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSharedMemory::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSharedMemory_virtualbase_childEvent(VirtualQSharedMemory* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSharedMemory::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSharedMemory_virtualbase_customEvent(VirtualQSharedMemory* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSharedMemory::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSharedMemory_virtualbase_connectNotify(VirtualQSharedMemory* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSharedMemory::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSharedMemory_virtualbase_disconnectNotify(VirtualQSharedMemory* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSharedMemory_protectedbase_sender(const VirtualQSharedMemory* self);
	friend int QSharedMemory_protectedbase_senderSignalIndex(const VirtualQSharedMemory* self);
	friend int QSharedMemory_protectedbase_receivers(const VirtualQSharedMemory* self, const char* signal);
	friend bool QSharedMemory_protectedbase_isSignalConnected(const VirtualQSharedMemory* self, QMetaMethod* signal);
};

VirtualQSharedMemory* QSharedMemory_new(const QSharedMemory_VTable* vtbl, void* vdata) {
	return new VirtualQSharedMemory(vtbl, vdata);
}

VirtualQSharedMemory* QSharedMemory_new2(const QSharedMemory_VTable* vtbl, void* vdata, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new VirtualQSharedMemory(vtbl, vdata, key_QString);
}

VirtualQSharedMemory* QSharedMemory_new3(const QSharedMemory_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQSharedMemory(vtbl, vdata, parent);
}

VirtualQSharedMemory* QSharedMemory_new4(const QSharedMemory_VTable* vtbl, void* vdata, struct miqt_string key, QObject* parent) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new VirtualQSharedMemory(vtbl, vdata, key_QString, parent);
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

bool QSharedMemory_create(QSharedMemory* self, ptrdiff_t size) {
	return self->create((qsizetype)(size));
}

ptrdiff_t QSharedMemory_size(const QSharedMemory* self) {
	qsizetype _ret = self->size();
	return static_cast<ptrdiff_t>(_ret);
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

bool QSharedMemory_create2(QSharedMemory* self, ptrdiff_t size, int mode) {
	return self->create((qsizetype)(size), static_cast<QSharedMemory::AccessMode>(mode));
}

bool QSharedMemory_attach1(QSharedMemory* self, int mode) {
	return self->attach(static_cast<QSharedMemory::AccessMode>(mode));
}

QMetaObject* QSharedMemory_virtualbase_metaObject(const VirtualQSharedMemory* self) {

	return (QMetaObject*) self->QSharedMemory::metaObject();
}

void* QSharedMemory_virtualbase_metacast(VirtualQSharedMemory* self, const char* param1) {

	return self->QSharedMemory::qt_metacast(param1);
}

int QSharedMemory_virtualbase_metacall(VirtualQSharedMemory* self, int param1, int param2, void** param3) {

	return self->QSharedMemory::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QSharedMemory_virtualbase_event(VirtualQSharedMemory* self, QEvent* event) {

	return self->QSharedMemory::event(event);
}

bool QSharedMemory_virtualbase_eventFilter(VirtualQSharedMemory* self, QObject* watched, QEvent* event) {

	return self->QSharedMemory::eventFilter(watched, event);
}

void QSharedMemory_virtualbase_timerEvent(VirtualQSharedMemory* self, QTimerEvent* event) {

	self->QSharedMemory::timerEvent(event);
}

void QSharedMemory_virtualbase_childEvent(VirtualQSharedMemory* self, QChildEvent* event) {

	self->QSharedMemory::childEvent(event);
}

void QSharedMemory_virtualbase_customEvent(VirtualQSharedMemory* self, QEvent* event) {

	self->QSharedMemory::customEvent(event);
}

void QSharedMemory_virtualbase_connectNotify(VirtualQSharedMemory* self, QMetaMethod* signal) {

	self->QSharedMemory::connectNotify(*signal);
}

void QSharedMemory_virtualbase_disconnectNotify(VirtualQSharedMemory* self, QMetaMethod* signal) {

	self->QSharedMemory::disconnectNotify(*signal);
}

const QMetaObject* QSharedMemory_staticMetaObject() { return &QSharedMemory::staticMetaObject; }

const QSharedMemory_VTable* QSharedMemory_vtbl(const VirtualQSharedMemory* self) { return self->vtbl; }
void* QSharedMemory_vdata(const VirtualQSharedMemory* self) { return self->vdata; }
void QSharedMemory_setVdata(VirtualQSharedMemory* self, void* vdata) { self->vdata = vdata; }

QObject* QSharedMemory_protectedbase_sender(const VirtualQSharedMemory* self) {
	return self->sender();
}

int QSharedMemory_protectedbase_senderSignalIndex(const VirtualQSharedMemory* self) {
	return self->senderSignalIndex();
}

int QSharedMemory_protectedbase_receivers(const VirtualQSharedMemory* self, const char* signal) {
	return self->receivers(signal);
}

bool QSharedMemory_protectedbase_isSignalConnected(const VirtualQSharedMemory* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSharedMemory_delete(QSharedMemory* self) {
	delete self;
}

#endif //! defined(Q_OS_ANDROID)

