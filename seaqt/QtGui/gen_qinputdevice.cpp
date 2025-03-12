#include <QChildEvent>
#include <QEvent>
#include <QInputDevice>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRect>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qinputdevice.h>
#include "gen_qinputdevice.h"
class VirtualQInputDevice final : public QInputDevice {
	const QInputDevice_VTable* vtbl;
	void* vdata;
public:
	friend const QInputDevice_VTable* QInputDevice_vtbl(const VirtualQInputDevice* self);
	friend void* QInputDevice_vdata(const VirtualQInputDevice* self);
	friend void QInputDevice_setVdata(VirtualQInputDevice* self, void* vdata);

	VirtualQInputDevice(const QInputDevice_VTable* vtbl, void* vdata): QInputDevice(), vtbl(vtbl), vdata(vdata) {}
	VirtualQInputDevice(const QInputDevice_VTable* vtbl, void* vdata, const QString& name, qint64 systemId, QInputDevice::DeviceType type): QInputDevice(name, systemId, type), vtbl(vtbl), vdata(vdata) {}
	VirtualQInputDevice(const QInputDevice_VTable* vtbl, void* vdata, QObject* parent): QInputDevice(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQInputDevice(const QInputDevice_VTable* vtbl, void* vdata, const QString& name, qint64 systemId, QInputDevice::DeviceType type, const QString& seatName): QInputDevice(name, systemId, type, seatName), vtbl(vtbl), vdata(vdata) {}
	VirtualQInputDevice(const QInputDevice_VTable* vtbl, void* vdata, const QString& name, qint64 systemId, QInputDevice::DeviceType type, const QString& seatName, QObject* parent): QInputDevice(name, systemId, type, seatName, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQInputDevice() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QInputDevice::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QInputDevice_virtualbase_metaObject(const VirtualQInputDevice* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QInputDevice::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QInputDevice_virtualbase_metacast(VirtualQInputDevice* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QInputDevice::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QInputDevice_virtualbase_metacall(VirtualQInputDevice* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QInputDevice::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QInputDevice_virtualbase_event(VirtualQInputDevice* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QInputDevice::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QInputDevice_virtualbase_eventFilter(VirtualQInputDevice* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QInputDevice::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QInputDevice_virtualbase_timerEvent(VirtualQInputDevice* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QInputDevice::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QInputDevice_virtualbase_childEvent(VirtualQInputDevice* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QInputDevice::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QInputDevice_virtualbase_customEvent(VirtualQInputDevice* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QInputDevice::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QInputDevice_virtualbase_connectNotify(VirtualQInputDevice* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QInputDevice::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QInputDevice_virtualbase_disconnectNotify(VirtualQInputDevice* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QInputDevice_protectedbase_sender(const VirtualQInputDevice* self);
	friend int QInputDevice_protectedbase_senderSignalIndex(const VirtualQInputDevice* self);
	friend int QInputDevice_protectedbase_receivers(const VirtualQInputDevice* self, const char* signal);
	friend bool QInputDevice_protectedbase_isSignalConnected(const VirtualQInputDevice* self, QMetaMethod* signal);
};

VirtualQInputDevice* QInputDevice_new(const QInputDevice_VTable* vtbl, void* vdata) {
	return new VirtualQInputDevice(vtbl, vdata);
}

VirtualQInputDevice* QInputDevice_new2(const QInputDevice_VTable* vtbl, void* vdata, struct miqt_string name, long long systemId, int type) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new VirtualQInputDevice(vtbl, vdata, name_QString, static_cast<qint64>(systemId), static_cast<QInputDevice::DeviceType>(type));
}

VirtualQInputDevice* QInputDevice_new3(const QInputDevice_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQInputDevice(vtbl, vdata, parent);
}

VirtualQInputDevice* QInputDevice_new4(const QInputDevice_VTable* vtbl, void* vdata, struct miqt_string name, long long systemId, int type, struct miqt_string seatName) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString seatName_QString = QString::fromUtf8(seatName.data, seatName.len);
	return new VirtualQInputDevice(vtbl, vdata, name_QString, static_cast<qint64>(systemId), static_cast<QInputDevice::DeviceType>(type), seatName_QString);
}

VirtualQInputDevice* QInputDevice_new5(const QInputDevice_VTable* vtbl, void* vdata, struct miqt_string name, long long systemId, int type, struct miqt_string seatName, QObject* parent) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString seatName_QString = QString::fromUtf8(seatName.data, seatName.len);
	return new VirtualQInputDevice(vtbl, vdata, name_QString, static_cast<qint64>(systemId), static_cast<QInputDevice::DeviceType>(type), seatName_QString, parent);
}

void QInputDevice_virtbase(QInputDevice* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QInputDevice_metaObject(const QInputDevice* self) {
	return (QMetaObject*) self->metaObject();
}

void* QInputDevice_metacast(QInputDevice* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QInputDevice_metacall(QInputDevice* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QInputDevice_tr(const char* s) {
	QString _ret = QInputDevice::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDevice_name(const QInputDevice* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QInputDevice_type(const QInputDevice* self) {
	QInputDevice::DeviceType _ret = self->type();
	return static_cast<int>(_ret);
}

int QInputDevice_capabilities(const QInputDevice* self) {
	QInputDevice::Capabilities _ret = self->capabilities();
	return static_cast<int>(_ret);
}

bool QInputDevice_hasCapability(const QInputDevice* self, int cap) {
	return self->hasCapability(static_cast<QInputDevice::Capability>(cap));
}

long long QInputDevice_systemId(const QInputDevice* self) {
	qint64 _ret = self->systemId();
	return static_cast<long long>(_ret);
}

struct miqt_string QInputDevice_seatName(const QInputDevice* self) {
	QString _ret = self->seatName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QRect* QInputDevice_availableVirtualGeometry(const QInputDevice* self) {
	return new QRect(self->availableVirtualGeometry());
}

struct miqt_array /* of struct miqt_string */  QInputDevice_seatNames() {
	QStringList _ret = QInputDevice::seatNames();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QInputDevice* */  QInputDevice_devices() {
	QList<const QInputDevice *> _ret = QInputDevice::devices();
	// Convert QList<> from C++ memory to manually-managed C memory
	QInputDevice** _arr = static_cast<QInputDevice**>(malloc(sizeof(QInputDevice*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = (QInputDevice*) _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QInputDevice* QInputDevice_primaryKeyboard() {
	return (QInputDevice*) QInputDevice::primaryKeyboard();
}

bool QInputDevice_operatorEqual(const QInputDevice* self, QInputDevice* other) {
	return (*self == *other);
}

void QInputDevice_availableVirtualGeometryChanged(QInputDevice* self, QRect* area) {
	self->availableVirtualGeometryChanged(*area);
}

void QInputDevice_connect_availableVirtualGeometryChanged(VirtualQInputDevice* self, intptr_t slot, void (*callback)(intptr_t, QRect*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QRect*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QRect*);
		void operator()(QRect area) {
			QRect* sigval1 = new QRect(area);
			callback(slot, sigval1);
		}
	};
	VirtualQInputDevice::connect(self, static_cast<void (QInputDevice::*)(QRect)>(&QInputDevice::availableVirtualGeometryChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QInputDevice_tr2(const char* s, const char* c) {
	QString _ret = QInputDevice::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDevice_tr3(const char* s, const char* c, int n) {
	QString _ret = QInputDevice::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QInputDevice* QInputDevice_primaryKeyboard1(struct miqt_string seatName) {
	QString seatName_QString = QString::fromUtf8(seatName.data, seatName.len);
	return (QInputDevice*) QInputDevice::primaryKeyboard(seatName_QString);
}

QMetaObject* QInputDevice_virtualbase_metaObject(const VirtualQInputDevice* self) {

	return (QMetaObject*) self->QInputDevice::metaObject();
}

void* QInputDevice_virtualbase_metacast(VirtualQInputDevice* self, const char* param1) {

	return self->QInputDevice::qt_metacast(param1);
}

int QInputDevice_virtualbase_metacall(VirtualQInputDevice* self, int param1, int param2, void** param3) {

	return self->QInputDevice::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QInputDevice_virtualbase_event(VirtualQInputDevice* self, QEvent* event) {

	return self->QInputDevice::event(event);
}

bool QInputDevice_virtualbase_eventFilter(VirtualQInputDevice* self, QObject* watched, QEvent* event) {

	return self->QInputDevice::eventFilter(watched, event);
}

void QInputDevice_virtualbase_timerEvent(VirtualQInputDevice* self, QTimerEvent* event) {

	self->QInputDevice::timerEvent(event);
}

void QInputDevice_virtualbase_childEvent(VirtualQInputDevice* self, QChildEvent* event) {

	self->QInputDevice::childEvent(event);
}

void QInputDevice_virtualbase_customEvent(VirtualQInputDevice* self, QEvent* event) {

	self->QInputDevice::customEvent(event);
}

void QInputDevice_virtualbase_connectNotify(VirtualQInputDevice* self, QMetaMethod* signal) {

	self->QInputDevice::connectNotify(*signal);
}

void QInputDevice_virtualbase_disconnectNotify(VirtualQInputDevice* self, QMetaMethod* signal) {

	self->QInputDevice::disconnectNotify(*signal);
}

const QMetaObject* QInputDevice_staticMetaObject() { return &QInputDevice::staticMetaObject; }

const QInputDevice_VTable* QInputDevice_vtbl(const VirtualQInputDevice* self) { return self->vtbl; }
void* QInputDevice_vdata(const VirtualQInputDevice* self) { return self->vdata; }
void QInputDevice_setVdata(VirtualQInputDevice* self, void* vdata) { self->vdata = vdata; }

QObject* QInputDevice_protectedbase_sender(const VirtualQInputDevice* self) {
	return self->sender();
}

int QInputDevice_protectedbase_senderSignalIndex(const VirtualQInputDevice* self) {
	return self->senderSignalIndex();
}

int QInputDevice_protectedbase_receivers(const VirtualQInputDevice* self, const char* signal) {
	return self->receivers(signal);
}

bool QInputDevice_protectedbase_isSignalConnected(const VirtualQInputDevice* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QInputDevice_delete(QInputDevice* self) {
	delete self;
}

