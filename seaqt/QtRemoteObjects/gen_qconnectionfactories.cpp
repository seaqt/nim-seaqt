#include <QByteArray>
#include <QChildEvent>
#include <QConnectionAbstractServer>
#include <QEvent>
#include <QIODevice>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSet>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <QtROClientFactory>
#include <QtROClientIoDevice>
#include <QtROIoDeviceBase>
#include <QtROServerFactory>
#include <QtROServerIoDevice>
#include <qconnectionfactories.h>
#include "gen_qconnectionfactories.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQtROIoDeviceBase final : public QtROIoDeviceBase {
	const QtROIoDeviceBase_VTable* vtbl;
public:
	friend void* QtROIoDeviceBase_vdata(VirtualQtROIoDeviceBase* self);
	friend VirtualQtROIoDeviceBase* vdata_QtROIoDeviceBase(void* vdata);

	VirtualQtROIoDeviceBase(const QtROIoDeviceBase_VTable* vtbl): QtROIoDeviceBase(), vtbl(vtbl) {}
	VirtualQtROIoDeviceBase(const QtROIoDeviceBase_VTable* vtbl, QObject* parent): QtROIoDeviceBase(parent), vtbl(vtbl) {}

	virtual ~VirtualQtROIoDeviceBase() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QtROIoDeviceBase::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QtROIoDeviceBase_virtualbase_metaObject(const VirtualQtROIoDeviceBase* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QtROIoDeviceBase::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QtROIoDeviceBase_virtualbase_metacast(VirtualQtROIoDeviceBase* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QtROIoDeviceBase::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QtROIoDeviceBase_virtualbase_metacall(VirtualQtROIoDeviceBase* self, int param1, int param2, void** param3);

	virtual void write(const QByteArray& data) override {
		if (vtbl->write_QByteArray == 0) {
			QtROIoDeviceBase::write(data);
			return;
		}

		const QByteArray data_qb = data;
		struct seaqt_string data_ms;
		data_ms.len = data_qb.length();
		data_ms.data = static_cast<char*>(malloc(data_ms.len));
		memcpy(data_ms.data, data_qb.data(), data_ms.len);
		struct seaqt_string sigval1 = data_ms;
		vtbl->write_QByteArray(this, sigval1);
	}

	friend void QtROIoDeviceBase_virtualbase_write_QByteArray(VirtualQtROIoDeviceBase* self, struct seaqt_string data);

	virtual void write(const QByteArray& data, qint64 param2) override {
		if (vtbl->write_QByteArray_qint64 == 0) {
			QtROIoDeviceBase::write(data, param2);
			return;
		}

		const QByteArray data_qb = data;
		struct seaqt_string data_ms;
		data_ms.len = data_qb.length();
		data_ms.data = static_cast<char*>(malloc(data_ms.len));
		memcpy(data_ms.data, data_qb.data(), data_ms.len);
		struct seaqt_string sigval1 = data_ms;
		qint64 param2_ret = param2;
		long long sigval2 = static_cast<long long>(param2_ret);
		vtbl->write_QByteArray_qint64(this, sigval1, sigval2);
	}

	friend void QtROIoDeviceBase_virtualbase_write_QByteArray_qint64(VirtualQtROIoDeviceBase* self, struct seaqt_string data, long long param2);

	virtual bool isOpen() const override {
		if (vtbl->isOpen == 0) {
			return QtROIoDeviceBase::isOpen();
		}

		bool callback_return_value = vtbl->isOpen(this);
		return callback_return_value;
	}

	friend bool QtROIoDeviceBase_virtualbase_isOpen(const VirtualQtROIoDeviceBase* self);

	virtual void close() override {
		if (vtbl->close == 0) {
			QtROIoDeviceBase::close();
			return;
		}

		vtbl->close(this);
	}

	friend void QtROIoDeviceBase_virtualbase_close(VirtualQtROIoDeviceBase* self);

	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QtROIoDeviceBase::bytesAvailable();
		}

		long long callback_return_value = vtbl->bytesAvailable(this);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QtROIoDeviceBase_virtualbase_bytesAvailable(const VirtualQtROIoDeviceBase* self);

	virtual QIODevice* connection() const override {
		if (vtbl->connection == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QIODevice* callback_return_value = vtbl->connection(this);
		return callback_return_value;
	}

	virtual QString deviceType() const override {
		if (vtbl->deviceType == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		struct seaqt_string callback_return_value = vtbl->deviceType(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual void doClose() override {
		if (vtbl->doClose == 0) {
			return; // Pure virtual, there is no base we can call
		}

		vtbl->doClose(this);
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QtROIoDeviceBase::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QtROIoDeviceBase_virtualbase_event(VirtualQtROIoDeviceBase* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QtROIoDeviceBase::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QtROIoDeviceBase_virtualbase_eventFilter(VirtualQtROIoDeviceBase* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QtROIoDeviceBase::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QtROIoDeviceBase_virtualbase_timerEvent(VirtualQtROIoDeviceBase* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QtROIoDeviceBase::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QtROIoDeviceBase_virtualbase_childEvent(VirtualQtROIoDeviceBase* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QtROIoDeviceBase::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QtROIoDeviceBase_virtualbase_customEvent(VirtualQtROIoDeviceBase* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QtROIoDeviceBase::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QtROIoDeviceBase_virtualbase_connectNotify(VirtualQtROIoDeviceBase* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QtROIoDeviceBase::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QtROIoDeviceBase_virtualbase_disconnectNotify(VirtualQtROIoDeviceBase* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QtROIoDeviceBase_protectedbase_sender(const VirtualQtROIoDeviceBase* self);
	friend int QtROIoDeviceBase_protectedbase_senderSignalIndex(const VirtualQtROIoDeviceBase* self);
	friend int QtROIoDeviceBase_protectedbase_receivers(const VirtualQtROIoDeviceBase* self, const char* signal);
	friend bool QtROIoDeviceBase_protectedbase_isSignalConnected(const VirtualQtROIoDeviceBase* self, QMetaMethod* signal);
};

VirtualQtROIoDeviceBase* QtROIoDeviceBase_new(const QtROIoDeviceBase_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQtROIoDeviceBase>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQtROIoDeviceBase(vtbl) : nullptr;
}

VirtualQtROIoDeviceBase* QtROIoDeviceBase_new_parent(const QtROIoDeviceBase_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQtROIoDeviceBase>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQtROIoDeviceBase(vtbl, parent) : nullptr;
}

void QtROIoDeviceBase_virtbase(QtROIoDeviceBase* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QtROIoDeviceBase_metaObject(const QtROIoDeviceBase* self) {
	return (QMetaObject*) self->metaObject();
}

void* QtROIoDeviceBase_metacast(QtROIoDeviceBase* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QtROIoDeviceBase_metacall(QtROIoDeviceBase* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QtROIoDeviceBase_tr_s(const char* s) {
	QString _ret = QtROIoDeviceBase::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QtROIoDeviceBase_read(QtROIoDeviceBase* self, int* param1, struct seaqt_string param2) {
	QString param2_QString = QString::fromUtf8(param2.data, param2.len);
	return self->read((QtRemoteObjects::QRemoteObjectPacketTypeEnum&)(*param1), param2_QString);
}

void QtROIoDeviceBase_write_QByteArray(QtROIoDeviceBase* self, struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	self->write(data_QByteArray);
}

void QtROIoDeviceBase_write_QByteArray_qint64(QtROIoDeviceBase* self, struct seaqt_string data, long long param2) {
	QByteArray data_QByteArray(data.data, data.len);
	self->write(data_QByteArray, static_cast<qint64>(param2));
}

bool QtROIoDeviceBase_isOpen(const QtROIoDeviceBase* self) {
	return self->isOpen();
}

void QtROIoDeviceBase_close(QtROIoDeviceBase* self) {
	self->close();
}

long long QtROIoDeviceBase_bytesAvailable(const QtROIoDeviceBase* self) {
	qint64 _ret = self->bytesAvailable();
	return static_cast<long long>(_ret);
}

QIODevice* QtROIoDeviceBase_connection(const QtROIoDeviceBase* self) {
	return self->connection();
}

void QtROIoDeviceBase_initializeDataStream(QtROIoDeviceBase* self) {
	self->initializeDataStream();
}

bool QtROIoDeviceBase_isClosing(const QtROIoDeviceBase* self) {
	return self->isClosing();
}

void QtROIoDeviceBase_addSource(QtROIoDeviceBase* self, struct seaqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->addSource(param1_QString);
}

void QtROIoDeviceBase_removeSource(QtROIoDeviceBase* self, struct seaqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->removeSource(param1_QString);
}

struct seaqt_array /* set of struct seaqt_string */  QtROIoDeviceBase_remoteObjects(const QtROIoDeviceBase* self) {
	QSet<QString> _ret = self->remoteObjects();
	// Convert QSet<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.size()));
	int _ctr = 0;
	QSetIterator<QString> _itr(_ret);
	while (_itr.hasNext()) {
		QString _sv_ret = _itr.next();
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _sv_b = _sv_ret.toUtf8();
		struct seaqt_string _sv_ms;
		_sv_ms.len = _sv_b.length();
		_sv_ms.data = static_cast<char*>(malloc(_sv_ms.len));
		memcpy(_sv_ms.data, _sv_b.data(), _sv_ms.len);
		_arr[_ctr++] = _sv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.size();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QtROIoDeviceBase_readyRead(QtROIoDeviceBase* self) {
	self->readyRead();
}

void QtROIoDeviceBase_connect_readyRead(QtROIoDeviceBase* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QtROIoDeviceBase::connect(self, static_cast<void (QtROIoDeviceBase::*)()>(&QtROIoDeviceBase::readyRead), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QtROIoDeviceBase_disconnected(QtROIoDeviceBase* self) {
	self->disconnected();
}

void QtROIoDeviceBase_connect_disconnected(QtROIoDeviceBase* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QtROIoDeviceBase::connect(self, static_cast<void (QtROIoDeviceBase::*)()>(&QtROIoDeviceBase::disconnected), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QtROIoDeviceBase_tr_s_c(const char* s, const char* c) {
	QString _ret = QtROIoDeviceBase::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QtROIoDeviceBase_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QtROIoDeviceBase::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QtROIoDeviceBase_staticMetaObject() { return &QtROIoDeviceBase::staticMetaObject; }
void* QtROIoDeviceBase_vdata(VirtualQtROIoDeviceBase* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQtROIoDeviceBase>()); }
VirtualQtROIoDeviceBase* vdata_QtROIoDeviceBase(void* vdata) { return reinterpret_cast<VirtualQtROIoDeviceBase*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQtROIoDeviceBase>()); }

QMetaObject* QtROIoDeviceBase_virtualbase_metaObject(const VirtualQtROIoDeviceBase* self) {

	return (QMetaObject*) self->QtROIoDeviceBase::metaObject();
}

void* QtROIoDeviceBase_virtualbase_metacast(VirtualQtROIoDeviceBase* self, const char* param1) {

	return self->QtROIoDeviceBase::qt_metacast(param1);
}

int QtROIoDeviceBase_virtualbase_metacall(VirtualQtROIoDeviceBase* self, int param1, int param2, void** param3) {

	return self->QtROIoDeviceBase::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QtROIoDeviceBase_virtualbase_write_QByteArray(VirtualQtROIoDeviceBase* self, struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);

	self->QtROIoDeviceBase::write(data_QByteArray);
}

void QtROIoDeviceBase_virtualbase_write_QByteArray_qint64(VirtualQtROIoDeviceBase* self, struct seaqt_string data, long long param2) {
	QByteArray data_QByteArray(data.data, data.len);

	self->QtROIoDeviceBase::write(data_QByteArray, static_cast<qint64>(param2));
}

bool QtROIoDeviceBase_virtualbase_isOpen(const VirtualQtROIoDeviceBase* self) {

	return self->QtROIoDeviceBase::isOpen();
}

void QtROIoDeviceBase_virtualbase_close(VirtualQtROIoDeviceBase* self) {

	self->QtROIoDeviceBase::close();
}

long long QtROIoDeviceBase_virtualbase_bytesAvailable(const VirtualQtROIoDeviceBase* self) {

	qint64 _ret = self->QtROIoDeviceBase::bytesAvailable();
	return static_cast<long long>(_ret);
}

bool QtROIoDeviceBase_virtualbase_event(VirtualQtROIoDeviceBase* self, QEvent* event) {

	return self->QtROIoDeviceBase::event(event);
}

bool QtROIoDeviceBase_virtualbase_eventFilter(VirtualQtROIoDeviceBase* self, QObject* watched, QEvent* event) {

	return self->QtROIoDeviceBase::eventFilter(watched, event);
}

void QtROIoDeviceBase_virtualbase_timerEvent(VirtualQtROIoDeviceBase* self, QTimerEvent* event) {

	self->QtROIoDeviceBase::timerEvent(event);
}

void QtROIoDeviceBase_virtualbase_childEvent(VirtualQtROIoDeviceBase* self, QChildEvent* event) {

	self->QtROIoDeviceBase::childEvent(event);
}

void QtROIoDeviceBase_virtualbase_customEvent(VirtualQtROIoDeviceBase* self, QEvent* event) {

	self->QtROIoDeviceBase::customEvent(event);
}

void QtROIoDeviceBase_virtualbase_connectNotify(VirtualQtROIoDeviceBase* self, QMetaMethod* signal) {

	self->QtROIoDeviceBase::connectNotify(*signal);
}

void QtROIoDeviceBase_virtualbase_disconnectNotify(VirtualQtROIoDeviceBase* self, QMetaMethod* signal) {

	self->QtROIoDeviceBase::disconnectNotify(*signal);
}

QObject* QtROIoDeviceBase_protectedbase_sender(const VirtualQtROIoDeviceBase* self) {
	return self->QtROIoDeviceBase::sender();
}

int QtROIoDeviceBase_protectedbase_senderSignalIndex(const VirtualQtROIoDeviceBase* self) {
	return self->QtROIoDeviceBase::senderSignalIndex();
}

int QtROIoDeviceBase_protectedbase_receivers(const VirtualQtROIoDeviceBase* self, const char* signal) {
	return self->QtROIoDeviceBase::receivers(signal);
}

bool QtROIoDeviceBase_protectedbase_isSignalConnected(const VirtualQtROIoDeviceBase* self, QMetaMethod* signal) {
	return self->QtROIoDeviceBase::isSignalConnected(*signal);
}

void QtROIoDeviceBase_delete(QtROIoDeviceBase* self) {
	delete self;
}

class VirtualQtROServerIoDevice final : public QtROServerIoDevice {
	const QtROServerIoDevice_VTable* vtbl;
public:
	friend void* QtROServerIoDevice_vdata(VirtualQtROServerIoDevice* self);
	friend VirtualQtROServerIoDevice* vdata_QtROServerIoDevice(void* vdata);

	VirtualQtROServerIoDevice(const QtROServerIoDevice_VTable* vtbl): QtROServerIoDevice(), vtbl(vtbl) {}
	VirtualQtROServerIoDevice(const QtROServerIoDevice_VTable* vtbl, QObject* parent): QtROServerIoDevice(parent), vtbl(vtbl) {}

	virtual ~VirtualQtROServerIoDevice() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QtROServerIoDevice::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QtROServerIoDevice_virtualbase_metaObject(const VirtualQtROServerIoDevice* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QtROServerIoDevice::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QtROServerIoDevice_virtualbase_metacast(VirtualQtROServerIoDevice* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QtROServerIoDevice::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QtROServerIoDevice_virtualbase_metacall(VirtualQtROServerIoDevice* self, int param1, int param2, void** param3);

	virtual QString deviceType() const override {
		if (vtbl->deviceType == 0) {
			return QtROServerIoDevice::deviceType();
		}

		struct seaqt_string callback_return_value = vtbl->deviceType(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	friend struct seaqt_string QtROServerIoDevice_virtualbase_deviceType(const VirtualQtROServerIoDevice* self);

	virtual void write(const QByteArray& data) override {
		if (vtbl->write_QByteArray == 0) {
			QtROServerIoDevice::write(data);
			return;
		}

		const QByteArray data_qb = data;
		struct seaqt_string data_ms;
		data_ms.len = data_qb.length();
		data_ms.data = static_cast<char*>(malloc(data_ms.len));
		memcpy(data_ms.data, data_qb.data(), data_ms.len);
		struct seaqt_string sigval1 = data_ms;
		vtbl->write_QByteArray(this, sigval1);
	}

	friend void QtROServerIoDevice_virtualbase_write_QByteArray(VirtualQtROServerIoDevice* self, struct seaqt_string data);

	virtual bool isOpen() const override {
		if (vtbl->isOpen == 0) {
			return QtROServerIoDevice::isOpen();
		}

		bool callback_return_value = vtbl->isOpen(this);
		return callback_return_value;
	}

	friend bool QtROServerIoDevice_virtualbase_isOpen(const VirtualQtROServerIoDevice* self);

	virtual void close() override {
		if (vtbl->close == 0) {
			QtROServerIoDevice::close();
			return;
		}

		vtbl->close(this);
	}

	friend void QtROServerIoDevice_virtualbase_close(VirtualQtROServerIoDevice* self);

	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QtROServerIoDevice::bytesAvailable();
		}

		long long callback_return_value = vtbl->bytesAvailable(this);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QtROServerIoDevice_virtualbase_bytesAvailable(const VirtualQtROServerIoDevice* self);

	virtual QIODevice* connection() const override {
		if (vtbl->connection == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QIODevice* callback_return_value = vtbl->connection(this);
		return callback_return_value;
	}

	virtual void doClose() override {
		if (vtbl->doClose == 0) {
			return; // Pure virtual, there is no base we can call
		}

		vtbl->doClose(this);
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QtROServerIoDevice::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QtROServerIoDevice_virtualbase_event(VirtualQtROServerIoDevice* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QtROServerIoDevice::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QtROServerIoDevice_virtualbase_eventFilter(VirtualQtROServerIoDevice* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QtROServerIoDevice::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QtROServerIoDevice_virtualbase_timerEvent(VirtualQtROServerIoDevice* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QtROServerIoDevice::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QtROServerIoDevice_virtualbase_childEvent(VirtualQtROServerIoDevice* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QtROServerIoDevice::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QtROServerIoDevice_virtualbase_customEvent(VirtualQtROServerIoDevice* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QtROServerIoDevice::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QtROServerIoDevice_virtualbase_connectNotify(VirtualQtROServerIoDevice* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QtROServerIoDevice::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QtROServerIoDevice_virtualbase_disconnectNotify(VirtualQtROServerIoDevice* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QtROServerIoDevice_protectedbase_sender(const VirtualQtROServerIoDevice* self);
	friend int QtROServerIoDevice_protectedbase_senderSignalIndex(const VirtualQtROServerIoDevice* self);
	friend int QtROServerIoDevice_protectedbase_receivers(const VirtualQtROServerIoDevice* self, const char* signal);
	friend bool QtROServerIoDevice_protectedbase_isSignalConnected(const VirtualQtROServerIoDevice* self, QMetaMethod* signal);
};

VirtualQtROServerIoDevice* QtROServerIoDevice_new(const QtROServerIoDevice_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQtROServerIoDevice>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQtROServerIoDevice(vtbl) : nullptr;
}

VirtualQtROServerIoDevice* QtROServerIoDevice_new_parent(const QtROServerIoDevice_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQtROServerIoDevice>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQtROServerIoDevice(vtbl, parent) : nullptr;
}

void QtROServerIoDevice_virtbase(QtROServerIoDevice* src, QtROIoDeviceBase** outptr_QtROIoDeviceBase) {
	*outptr_QtROIoDeviceBase = static_cast<QtROIoDeviceBase*>(src);
}

QMetaObject* QtROServerIoDevice_metaObject(const QtROServerIoDevice* self) {
	return (QMetaObject*) self->metaObject();
}

void* QtROServerIoDevice_metacast(QtROServerIoDevice* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QtROServerIoDevice_metacall(QtROServerIoDevice* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QtROServerIoDevice_tr_s(const char* s) {
	QString _ret = QtROServerIoDevice::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QtROServerIoDevice_tr_s_c(const char* s, const char* c) {
	QString _ret = QtROServerIoDevice::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QtROServerIoDevice_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QtROServerIoDevice::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QtROServerIoDevice_staticMetaObject() { return &QtROServerIoDevice::staticMetaObject; }
void* QtROServerIoDevice_vdata(VirtualQtROServerIoDevice* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQtROServerIoDevice>()); }
VirtualQtROServerIoDevice* vdata_QtROServerIoDevice(void* vdata) { return reinterpret_cast<VirtualQtROServerIoDevice*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQtROServerIoDevice>()); }

QMetaObject* QtROServerIoDevice_virtualbase_metaObject(const VirtualQtROServerIoDevice* self) {

	return (QMetaObject*) self->QtROServerIoDevice::metaObject();
}

void* QtROServerIoDevice_virtualbase_metacast(VirtualQtROServerIoDevice* self, const char* param1) {

	return self->QtROServerIoDevice::qt_metacast(param1);
}

int QtROServerIoDevice_virtualbase_metacall(VirtualQtROServerIoDevice* self, int param1, int param2, void** param3) {

	return self->QtROServerIoDevice::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QtROServerIoDevice_virtualbase_deviceType(const VirtualQtROServerIoDevice* self) {

	QString _ret = self->QtROServerIoDevice::deviceType();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QtROServerIoDevice_virtualbase_write_QByteArray(VirtualQtROServerIoDevice* self, struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);

	self->QtROServerIoDevice::write(data_QByteArray);
}

bool QtROServerIoDevice_virtualbase_isOpen(const VirtualQtROServerIoDevice* self) {

	return self->QtROServerIoDevice::isOpen();
}

void QtROServerIoDevice_virtualbase_close(VirtualQtROServerIoDevice* self) {

	self->QtROServerIoDevice::close();
}

long long QtROServerIoDevice_virtualbase_bytesAvailable(const VirtualQtROServerIoDevice* self) {

	qint64 _ret = self->QtROServerIoDevice::bytesAvailable();
	return static_cast<long long>(_ret);
}

bool QtROServerIoDevice_virtualbase_event(VirtualQtROServerIoDevice* self, QEvent* event) {

	return self->QtROServerIoDevice::event(event);
}

bool QtROServerIoDevice_virtualbase_eventFilter(VirtualQtROServerIoDevice* self, QObject* watched, QEvent* event) {

	return self->QtROServerIoDevice::eventFilter(watched, event);
}

void QtROServerIoDevice_virtualbase_timerEvent(VirtualQtROServerIoDevice* self, QTimerEvent* event) {

	self->QtROServerIoDevice::timerEvent(event);
}

void QtROServerIoDevice_virtualbase_childEvent(VirtualQtROServerIoDevice* self, QChildEvent* event) {

	self->QtROServerIoDevice::childEvent(event);
}

void QtROServerIoDevice_virtualbase_customEvent(VirtualQtROServerIoDevice* self, QEvent* event) {

	self->QtROServerIoDevice::customEvent(event);
}

void QtROServerIoDevice_virtualbase_connectNotify(VirtualQtROServerIoDevice* self, QMetaMethod* signal) {

	self->QtROServerIoDevice::connectNotify(*signal);
}

void QtROServerIoDevice_virtualbase_disconnectNotify(VirtualQtROServerIoDevice* self, QMetaMethod* signal) {

	self->QtROServerIoDevice::disconnectNotify(*signal);
}

QObject* QtROServerIoDevice_protectedbase_sender(const VirtualQtROServerIoDevice* self) {
	return self->QtROServerIoDevice::sender();
}

int QtROServerIoDevice_protectedbase_senderSignalIndex(const VirtualQtROServerIoDevice* self) {
	return self->QtROServerIoDevice::senderSignalIndex();
}

int QtROServerIoDevice_protectedbase_receivers(const VirtualQtROServerIoDevice* self, const char* signal) {
	return self->QtROServerIoDevice::receivers(signal);
}

bool QtROServerIoDevice_protectedbase_isSignalConnected(const VirtualQtROServerIoDevice* self, QMetaMethod* signal) {
	return self->QtROServerIoDevice::isSignalConnected(*signal);
}

void QtROServerIoDevice_delete(QtROServerIoDevice* self) {
	delete self;
}

class VirtualQConnectionAbstractServer final : public QConnectionAbstractServer {
	const QConnectionAbstractServer_VTable* vtbl;
public:
	friend void* QConnectionAbstractServer_vdata(VirtualQConnectionAbstractServer* self);
	friend VirtualQConnectionAbstractServer* vdata_QConnectionAbstractServer(void* vdata);

	VirtualQConnectionAbstractServer(const QConnectionAbstractServer_VTable* vtbl): QConnectionAbstractServer(), vtbl(vtbl) {}
	VirtualQConnectionAbstractServer(const QConnectionAbstractServer_VTable* vtbl, QObject* parent): QConnectionAbstractServer(parent), vtbl(vtbl) {}

	virtual ~VirtualQConnectionAbstractServer() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QConnectionAbstractServer::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QConnectionAbstractServer_virtualbase_metaObject(const VirtualQConnectionAbstractServer* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QConnectionAbstractServer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QConnectionAbstractServer_virtualbase_metacast(VirtualQConnectionAbstractServer* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QConnectionAbstractServer::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QConnectionAbstractServer_virtualbase_metacall(VirtualQConnectionAbstractServer* self, int param1, int param2, void** param3);

	virtual bool hasPendingConnections() const override {
		if (vtbl->hasPendingConnections == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		bool callback_return_value = vtbl->hasPendingConnections(this);
		return callback_return_value;
	}

	virtual QUrl address() const override {
		if (vtbl->address == 0) {
			return QUrl(); // Pure virtual, there is no base we can call
		}

		QUrl* callback_return_value = vtbl->address(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	virtual bool listen(const QUrl& address) override {
		if (vtbl->listen == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		const QUrl& address_ret = address;
		// Cast returned reference into pointer
		QUrl* sigval1 = const_cast<QUrl*>(&address_ret);
		bool callback_return_value = vtbl->listen(this, sigval1);
		return callback_return_value;
	}

	virtual QAbstractSocket::SocketError serverError() const override {
		if (vtbl->serverError == 0) {
			return (QAbstractSocket::SocketError)(0); // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->serverError(this);
		return static_cast<QAbstractSocket::SocketError>(callback_return_value);
	}

	virtual void close() override {
		if (vtbl->close == 0) {
			return; // Pure virtual, there is no base we can call
		}

		vtbl->close(this);
	}

	virtual QtROServerIoDevice* configureNewConnection() override {
		if (vtbl->configureNewConnection == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QtROServerIoDevice* callback_return_value = vtbl->configureNewConnection(this);
		return callback_return_value;
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QConnectionAbstractServer::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QConnectionAbstractServer_virtualbase_event(VirtualQConnectionAbstractServer* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QConnectionAbstractServer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QConnectionAbstractServer_virtualbase_eventFilter(VirtualQConnectionAbstractServer* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QConnectionAbstractServer::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QConnectionAbstractServer_virtualbase_timerEvent(VirtualQConnectionAbstractServer* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QConnectionAbstractServer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QConnectionAbstractServer_virtualbase_childEvent(VirtualQConnectionAbstractServer* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QConnectionAbstractServer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QConnectionAbstractServer_virtualbase_customEvent(VirtualQConnectionAbstractServer* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QConnectionAbstractServer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QConnectionAbstractServer_virtualbase_connectNotify(VirtualQConnectionAbstractServer* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QConnectionAbstractServer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QConnectionAbstractServer_virtualbase_disconnectNotify(VirtualQConnectionAbstractServer* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QConnectionAbstractServer_protectedbase_sender(const VirtualQConnectionAbstractServer* self);
	friend int QConnectionAbstractServer_protectedbase_senderSignalIndex(const VirtualQConnectionAbstractServer* self);
	friend int QConnectionAbstractServer_protectedbase_receivers(const VirtualQConnectionAbstractServer* self, const char* signal);
	friend bool QConnectionAbstractServer_protectedbase_isSignalConnected(const VirtualQConnectionAbstractServer* self, QMetaMethod* signal);
};

VirtualQConnectionAbstractServer* QConnectionAbstractServer_new(const QConnectionAbstractServer_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQConnectionAbstractServer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQConnectionAbstractServer(vtbl) : nullptr;
}

VirtualQConnectionAbstractServer* QConnectionAbstractServer_new_parent(const QConnectionAbstractServer_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQConnectionAbstractServer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQConnectionAbstractServer(vtbl, parent) : nullptr;
}

void QConnectionAbstractServer_virtbase(QConnectionAbstractServer* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QConnectionAbstractServer_metaObject(const QConnectionAbstractServer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QConnectionAbstractServer_metacast(QConnectionAbstractServer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QConnectionAbstractServer_metacall(QConnectionAbstractServer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QConnectionAbstractServer_tr_s(const char* s) {
	QString _ret = QConnectionAbstractServer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QConnectionAbstractServer_hasPendingConnections(const QConnectionAbstractServer* self) {
	return self->hasPendingConnections();
}

QtROServerIoDevice* QConnectionAbstractServer_nextPendingConnection(QConnectionAbstractServer* self) {
	return self->nextPendingConnection();
}

QUrl* QConnectionAbstractServer_address(const QConnectionAbstractServer* self) {
	return new QUrl(self->address());
}

bool QConnectionAbstractServer_listen(QConnectionAbstractServer* self, QUrl* address) {
	return self->listen(*address);
}

int QConnectionAbstractServer_serverError(const QConnectionAbstractServer* self) {
	QAbstractSocket::SocketError _ret = self->serverError();
	return static_cast<int>(_ret);
}

void QConnectionAbstractServer_close(QConnectionAbstractServer* self) {
	self->close();
}

void QConnectionAbstractServer_newConnection(QConnectionAbstractServer* self) {
	self->newConnection();
}

void QConnectionAbstractServer_connect_newConnection(QConnectionAbstractServer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QConnectionAbstractServer::connect(self, static_cast<void (QConnectionAbstractServer::*)()>(&QConnectionAbstractServer::newConnection), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QConnectionAbstractServer_tr_s_c(const char* s, const char* c) {
	QString _ret = QConnectionAbstractServer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QConnectionAbstractServer_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QConnectionAbstractServer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QConnectionAbstractServer_staticMetaObject() { return &QConnectionAbstractServer::staticMetaObject; }
void* QConnectionAbstractServer_vdata(VirtualQConnectionAbstractServer* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQConnectionAbstractServer>()); }
VirtualQConnectionAbstractServer* vdata_QConnectionAbstractServer(void* vdata) { return reinterpret_cast<VirtualQConnectionAbstractServer*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQConnectionAbstractServer>()); }

QMetaObject* QConnectionAbstractServer_virtualbase_metaObject(const VirtualQConnectionAbstractServer* self) {

	return (QMetaObject*) self->QConnectionAbstractServer::metaObject();
}

void* QConnectionAbstractServer_virtualbase_metacast(VirtualQConnectionAbstractServer* self, const char* param1) {

	return self->QConnectionAbstractServer::qt_metacast(param1);
}

int QConnectionAbstractServer_virtualbase_metacall(VirtualQConnectionAbstractServer* self, int param1, int param2, void** param3) {

	return self->QConnectionAbstractServer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QConnectionAbstractServer_virtualbase_event(VirtualQConnectionAbstractServer* self, QEvent* event) {

	return self->QConnectionAbstractServer::event(event);
}

bool QConnectionAbstractServer_virtualbase_eventFilter(VirtualQConnectionAbstractServer* self, QObject* watched, QEvent* event) {

	return self->QConnectionAbstractServer::eventFilter(watched, event);
}

void QConnectionAbstractServer_virtualbase_timerEvent(VirtualQConnectionAbstractServer* self, QTimerEvent* event) {

	self->QConnectionAbstractServer::timerEvent(event);
}

void QConnectionAbstractServer_virtualbase_childEvent(VirtualQConnectionAbstractServer* self, QChildEvent* event) {

	self->QConnectionAbstractServer::childEvent(event);
}

void QConnectionAbstractServer_virtualbase_customEvent(VirtualQConnectionAbstractServer* self, QEvent* event) {

	self->QConnectionAbstractServer::customEvent(event);
}

void QConnectionAbstractServer_virtualbase_connectNotify(VirtualQConnectionAbstractServer* self, QMetaMethod* signal) {

	self->QConnectionAbstractServer::connectNotify(*signal);
}

void QConnectionAbstractServer_virtualbase_disconnectNotify(VirtualQConnectionAbstractServer* self, QMetaMethod* signal) {

	self->QConnectionAbstractServer::disconnectNotify(*signal);
}

QObject* QConnectionAbstractServer_protectedbase_sender(const VirtualQConnectionAbstractServer* self) {
	return self->QConnectionAbstractServer::sender();
}

int QConnectionAbstractServer_protectedbase_senderSignalIndex(const VirtualQConnectionAbstractServer* self) {
	return self->QConnectionAbstractServer::senderSignalIndex();
}

int QConnectionAbstractServer_protectedbase_receivers(const VirtualQConnectionAbstractServer* self, const char* signal) {
	return self->QConnectionAbstractServer::receivers(signal);
}

bool QConnectionAbstractServer_protectedbase_isSignalConnected(const VirtualQConnectionAbstractServer* self, QMetaMethod* signal) {
	return self->QConnectionAbstractServer::isSignalConnected(*signal);
}

void QConnectionAbstractServer_delete(QConnectionAbstractServer* self) {
	delete self;
}

class VirtualQtROClientIoDevice final : public QtROClientIoDevice {
	const QtROClientIoDevice_VTable* vtbl;
public:
	friend void* QtROClientIoDevice_vdata(VirtualQtROClientIoDevice* self);
	friend VirtualQtROClientIoDevice* vdata_QtROClientIoDevice(void* vdata);

	VirtualQtROClientIoDevice(const QtROClientIoDevice_VTable* vtbl): QtROClientIoDevice(), vtbl(vtbl) {}
	VirtualQtROClientIoDevice(const QtROClientIoDevice_VTable* vtbl, QObject* parent): QtROClientIoDevice(parent), vtbl(vtbl) {}

	virtual ~VirtualQtROClientIoDevice() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QtROClientIoDevice::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QtROClientIoDevice_virtualbase_metaObject(const VirtualQtROClientIoDevice* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QtROClientIoDevice::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QtROClientIoDevice_virtualbase_metacast(VirtualQtROClientIoDevice* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QtROClientIoDevice::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QtROClientIoDevice_virtualbase_metacall(VirtualQtROClientIoDevice* self, int param1, int param2, void** param3);

	virtual void connectToServer() override {
		if (vtbl->connectToServer == 0) {
			return; // Pure virtual, there is no base we can call
		}

		vtbl->connectToServer(this);
	}

	virtual void doDisconnectFromServer() override {
		if (vtbl->doDisconnectFromServer == 0) {
			return; // Pure virtual, there is no base we can call
		}

		vtbl->doDisconnectFromServer(this);
	}

	virtual QString deviceType() const override {
		if (vtbl->deviceType == 0) {
			return QtROClientIoDevice::deviceType();
		}

		struct seaqt_string callback_return_value = vtbl->deviceType(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	friend struct seaqt_string QtROClientIoDevice_virtualbase_deviceType(const VirtualQtROClientIoDevice* self);

	virtual void write(const QByteArray& data) override {
		if (vtbl->write_QByteArray == 0) {
			QtROClientIoDevice::write(data);
			return;
		}

		const QByteArray data_qb = data;
		struct seaqt_string data_ms;
		data_ms.len = data_qb.length();
		data_ms.data = static_cast<char*>(malloc(data_ms.len));
		memcpy(data_ms.data, data_qb.data(), data_ms.len);
		struct seaqt_string sigval1 = data_ms;
		vtbl->write_QByteArray(this, sigval1);
	}

	friend void QtROClientIoDevice_virtualbase_write_QByteArray(VirtualQtROClientIoDevice* self, struct seaqt_string data);

	virtual bool isOpen() const override {
		if (vtbl->isOpen == 0) {
			return QtROClientIoDevice::isOpen();
		}

		bool callback_return_value = vtbl->isOpen(this);
		return callback_return_value;
	}

	friend bool QtROClientIoDevice_virtualbase_isOpen(const VirtualQtROClientIoDevice* self);

	virtual void close() override {
		if (vtbl->close == 0) {
			QtROClientIoDevice::close();
			return;
		}

		vtbl->close(this);
	}

	friend void QtROClientIoDevice_virtualbase_close(VirtualQtROClientIoDevice* self);

	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QtROClientIoDevice::bytesAvailable();
		}

		long long callback_return_value = vtbl->bytesAvailable(this);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QtROClientIoDevice_virtualbase_bytesAvailable(const VirtualQtROClientIoDevice* self);

	virtual QIODevice* connection() const override {
		if (vtbl->connection == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QIODevice* callback_return_value = vtbl->connection(this);
		return callback_return_value;
	}

	virtual void doClose() override {
		if (vtbl->doClose == 0) {
			return; // Pure virtual, there is no base we can call
		}

		vtbl->doClose(this);
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QtROClientIoDevice::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QtROClientIoDevice_virtualbase_event(VirtualQtROClientIoDevice* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QtROClientIoDevice::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QtROClientIoDevice_virtualbase_eventFilter(VirtualQtROClientIoDevice* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QtROClientIoDevice::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QtROClientIoDevice_virtualbase_timerEvent(VirtualQtROClientIoDevice* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QtROClientIoDevice::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QtROClientIoDevice_virtualbase_childEvent(VirtualQtROClientIoDevice* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QtROClientIoDevice::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QtROClientIoDevice_virtualbase_customEvent(VirtualQtROClientIoDevice* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QtROClientIoDevice::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QtROClientIoDevice_virtualbase_connectNotify(VirtualQtROClientIoDevice* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QtROClientIoDevice::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QtROClientIoDevice_virtualbase_disconnectNotify(VirtualQtROClientIoDevice* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QtROClientIoDevice_protectedbase_setUrl(VirtualQtROClientIoDevice* self, QUrl* url);
	friend QObject* QtROClientIoDevice_protectedbase_sender(const VirtualQtROClientIoDevice* self);
	friend int QtROClientIoDevice_protectedbase_senderSignalIndex(const VirtualQtROClientIoDevice* self);
	friend int QtROClientIoDevice_protectedbase_receivers(const VirtualQtROClientIoDevice* self, const char* signal);
	friend bool QtROClientIoDevice_protectedbase_isSignalConnected(const VirtualQtROClientIoDevice* self, QMetaMethod* signal);
};

VirtualQtROClientIoDevice* QtROClientIoDevice_new(const QtROClientIoDevice_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQtROClientIoDevice>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQtROClientIoDevice(vtbl) : nullptr;
}

VirtualQtROClientIoDevice* QtROClientIoDevice_new_parent(const QtROClientIoDevice_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQtROClientIoDevice>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQtROClientIoDevice(vtbl, parent) : nullptr;
}

void QtROClientIoDevice_virtbase(QtROClientIoDevice* src, QtROIoDeviceBase** outptr_QtROIoDeviceBase) {
	*outptr_QtROIoDeviceBase = static_cast<QtROIoDeviceBase*>(src);
}

QMetaObject* QtROClientIoDevice_metaObject(const QtROClientIoDevice* self) {
	return (QMetaObject*) self->metaObject();
}

void* QtROClientIoDevice_metacast(QtROClientIoDevice* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QtROClientIoDevice_metacall(QtROClientIoDevice* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QtROClientIoDevice_tr_s(const char* s) {
	QString _ret = QtROClientIoDevice::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QtROClientIoDevice_disconnectFromServer(QtROClientIoDevice* self) {
	self->disconnectFromServer();
}

void QtROClientIoDevice_connectToServer(QtROClientIoDevice* self) {
	self->connectToServer();
}

QUrl* QtROClientIoDevice_url(const QtROClientIoDevice* self) {
	return new QUrl(self->url());
}

void QtROClientIoDevice_shouldReconnect(QtROClientIoDevice* self, QtROClientIoDevice* param1) {
	self->shouldReconnect(param1);
}

void QtROClientIoDevice_connect_shouldReconnect(QtROClientIoDevice* self, intptr_t slot, void (*callback)(intptr_t, QtROClientIoDevice*), void (*release)(intptr_t)) {
	QtROClientIoDevice::connect(self, static_cast<void (QtROClientIoDevice::*)(QtROClientIoDevice*)>(&QtROClientIoDevice::shouldReconnect), self, [callback, release = seaqt::release_callback{slot,release}](QtROClientIoDevice* param1) {
			QtROClientIoDevice* sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QtROClientIoDevice_tr_s_c(const char* s, const char* c) {
	QString _ret = QtROClientIoDevice::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QtROClientIoDevice_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QtROClientIoDevice::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QtROClientIoDevice_staticMetaObject() { return &QtROClientIoDevice::staticMetaObject; }
void* QtROClientIoDevice_vdata(VirtualQtROClientIoDevice* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQtROClientIoDevice>()); }
VirtualQtROClientIoDevice* vdata_QtROClientIoDevice(void* vdata) { return reinterpret_cast<VirtualQtROClientIoDevice*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQtROClientIoDevice>()); }

QMetaObject* QtROClientIoDevice_virtualbase_metaObject(const VirtualQtROClientIoDevice* self) {

	return (QMetaObject*) self->QtROClientIoDevice::metaObject();
}

void* QtROClientIoDevice_virtualbase_metacast(VirtualQtROClientIoDevice* self, const char* param1) {

	return self->QtROClientIoDevice::qt_metacast(param1);
}

int QtROClientIoDevice_virtualbase_metacall(VirtualQtROClientIoDevice* self, int param1, int param2, void** param3) {

	return self->QtROClientIoDevice::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QtROClientIoDevice_virtualbase_deviceType(const VirtualQtROClientIoDevice* self) {

	QString _ret = self->QtROClientIoDevice::deviceType();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QtROClientIoDevice_virtualbase_write_QByteArray(VirtualQtROClientIoDevice* self, struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);

	self->QtROClientIoDevice::write(data_QByteArray);
}

bool QtROClientIoDevice_virtualbase_isOpen(const VirtualQtROClientIoDevice* self) {

	return self->QtROClientIoDevice::isOpen();
}

void QtROClientIoDevice_virtualbase_close(VirtualQtROClientIoDevice* self) {

	self->QtROClientIoDevice::close();
}

long long QtROClientIoDevice_virtualbase_bytesAvailable(const VirtualQtROClientIoDevice* self) {

	qint64 _ret = self->QtROClientIoDevice::bytesAvailable();
	return static_cast<long long>(_ret);
}

bool QtROClientIoDevice_virtualbase_event(VirtualQtROClientIoDevice* self, QEvent* event) {

	return self->QtROClientIoDevice::event(event);
}

bool QtROClientIoDevice_virtualbase_eventFilter(VirtualQtROClientIoDevice* self, QObject* watched, QEvent* event) {

	return self->QtROClientIoDevice::eventFilter(watched, event);
}

void QtROClientIoDevice_virtualbase_timerEvent(VirtualQtROClientIoDevice* self, QTimerEvent* event) {

	self->QtROClientIoDevice::timerEvent(event);
}

void QtROClientIoDevice_virtualbase_childEvent(VirtualQtROClientIoDevice* self, QChildEvent* event) {

	self->QtROClientIoDevice::childEvent(event);
}

void QtROClientIoDevice_virtualbase_customEvent(VirtualQtROClientIoDevice* self, QEvent* event) {

	self->QtROClientIoDevice::customEvent(event);
}

void QtROClientIoDevice_virtualbase_connectNotify(VirtualQtROClientIoDevice* self, QMetaMethod* signal) {

	self->QtROClientIoDevice::connectNotify(*signal);
}

void QtROClientIoDevice_virtualbase_disconnectNotify(VirtualQtROClientIoDevice* self, QMetaMethod* signal) {

	self->QtROClientIoDevice::disconnectNotify(*signal);
}

void QtROClientIoDevice_protectedbase_setUrl(VirtualQtROClientIoDevice* self, QUrl* url) {
	self->QtROClientIoDevice::setUrl(*url);
}

QObject* QtROClientIoDevice_protectedbase_sender(const VirtualQtROClientIoDevice* self) {
	return self->QtROClientIoDevice::sender();
}

int QtROClientIoDevice_protectedbase_senderSignalIndex(const VirtualQtROClientIoDevice* self) {
	return self->QtROClientIoDevice::senderSignalIndex();
}

int QtROClientIoDevice_protectedbase_receivers(const VirtualQtROClientIoDevice* self, const char* signal) {
	return self->QtROClientIoDevice::receivers(signal);
}

bool QtROClientIoDevice_protectedbase_isSignalConnected(const VirtualQtROClientIoDevice* self, QMetaMethod* signal) {
	return self->QtROClientIoDevice::isSignalConnected(*signal);
}

void QtROClientIoDevice_delete(QtROClientIoDevice* self) {
	delete self;
}

QtROServerFactory* QtROServerFactory_new(QtROServerFactory* from) {
	return new (std::nothrow) QtROServerFactory(*from);
}

QtROServerFactory* QtROServerFactory_instance() {
	return QtROServerFactory::instance();
}

QConnectionAbstractServer* QtROServerFactory_create_url(QtROServerFactory* self, QUrl* url) {
	return self->create(*url);
}

bool QtROServerFactory_isValid(QtROServerFactory* self, QUrl* url) {
	return self->isValid(*url);
}

void QtROServerFactory_operatorAssign(QtROServerFactory* self, QtROServerFactory* from) {
	self->operator=(*from);
}

QConnectionAbstractServer* QtROServerFactory_create_url_parent(QtROServerFactory* self, QUrl* url, QObject* parent) {
	return self->create(*url, parent);
}

void QtROServerFactory_delete(QtROServerFactory* self) {
	delete self;
}

QtROClientFactory* QtROClientFactory_new(QtROClientFactory* from) {
	return new (std::nothrow) QtROClientFactory(*from);
}

QtROClientFactory* QtROClientFactory_instance() {
	return QtROClientFactory::instance();
}

QtROClientIoDevice* QtROClientFactory_create_url(QtROClientFactory* self, QUrl* url) {
	return self->create(*url);
}

bool QtROClientFactory_isValid(QtROClientFactory* self, QUrl* url) {
	return self->isValid(*url);
}

void QtROClientFactory_operatorAssign(QtROClientFactory* self, QtROClientFactory* from) {
	self->operator=(*from);
}

QtROClientIoDevice* QtROClientFactory_create_url_parent(QtROClientFactory* self, QUrl* url, QObject* parent) {
	return self->create(*url, parent);
}

void QtROClientFactory_delete(QtROClientFactory* self) {
	delete self;
}

