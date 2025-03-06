#include <QMediaControl>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVideoDeviceSelectorControl>
#include <qvideodeviceselectorcontrol.h>
#include "gen_qvideodeviceselectorcontrol.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

void QVideoDeviceSelectorControl_virtbase(QVideoDeviceSelectorControl* src, QMediaControl** outptr_QMediaControl) {
	*outptr_QMediaControl = static_cast<QMediaControl*>(src);
}

QMetaObject* QVideoDeviceSelectorControl_metaObject(const QVideoDeviceSelectorControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QVideoDeviceSelectorControl_metacast(QVideoDeviceSelectorControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QVideoDeviceSelectorControl_metacall(QVideoDeviceSelectorControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QVideoDeviceSelectorControl_tr(const char* s) {
	QString _ret = QVideoDeviceSelectorControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoDeviceSelectorControl_trUtf8(const char* s) {
	QString _ret = QVideoDeviceSelectorControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QVideoDeviceSelectorControl_deviceCount(const QVideoDeviceSelectorControl* self) {
	return self->deviceCount();
}

struct miqt_string QVideoDeviceSelectorControl_deviceName(const QVideoDeviceSelectorControl* self, int index) {
	QString _ret = self->deviceName(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoDeviceSelectorControl_deviceDescription(const QVideoDeviceSelectorControl* self, int index) {
	QString _ret = self->deviceDescription(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QVideoDeviceSelectorControl_defaultDevice(const QVideoDeviceSelectorControl* self) {
	return self->defaultDevice();
}

int QVideoDeviceSelectorControl_selectedDevice(const QVideoDeviceSelectorControl* self) {
	return self->selectedDevice();
}

void QVideoDeviceSelectorControl_setSelectedDevice(QVideoDeviceSelectorControl* self, int index) {
	self->setSelectedDevice(static_cast<int>(index));
}

void QVideoDeviceSelectorControl_selectedDeviceChanged(QVideoDeviceSelectorControl* self, int index) {
	self->selectedDeviceChanged(static_cast<int>(index));
}

void QVideoDeviceSelectorControl_connect_selectedDeviceChanged(QVideoDeviceSelectorControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	QVideoDeviceSelectorControl::connect(self, static_cast<void (QVideoDeviceSelectorControl::*)(int)>(&QVideoDeviceSelectorControl::selectedDeviceChanged), self, local_caller{slot, callback, release});
}

void QVideoDeviceSelectorControl_selectedDeviceChangedWithName(QVideoDeviceSelectorControl* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->selectedDeviceChanged(name_QString);
}

void QVideoDeviceSelectorControl_connect_selectedDeviceChangedWithName(QVideoDeviceSelectorControl* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& name) {
			const QString name_ret = name;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray name_b = name_ret.toUtf8();
			struct miqt_string name_ms;
			name_ms.len = name_b.length();
			name_ms.data = static_cast<char*>(malloc(name_ms.len));
			memcpy(name_ms.data, name_b.data(), name_ms.len);
			struct miqt_string sigval1 = name_ms;
			callback(slot, sigval1);
		}
	};
	QVideoDeviceSelectorControl::connect(self, static_cast<void (QVideoDeviceSelectorControl::*)(const QString&)>(&QVideoDeviceSelectorControl::selectedDeviceChanged), self, local_caller{slot, callback, release});
}

void QVideoDeviceSelectorControl_devicesChanged(QVideoDeviceSelectorControl* self) {
	self->devicesChanged();
}

void QVideoDeviceSelectorControl_connect_devicesChanged(QVideoDeviceSelectorControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QVideoDeviceSelectorControl::connect(self, static_cast<void (QVideoDeviceSelectorControl::*)()>(&QVideoDeviceSelectorControl::devicesChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QVideoDeviceSelectorControl_tr2(const char* s, const char* c) {
	QString _ret = QVideoDeviceSelectorControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoDeviceSelectorControl_tr3(const char* s, const char* c, int n) {
	QString _ret = QVideoDeviceSelectorControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoDeviceSelectorControl_trUtf82(const char* s, const char* c) {
	QString _ret = QVideoDeviceSelectorControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoDeviceSelectorControl_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QVideoDeviceSelectorControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QVideoDeviceSelectorControl_staticMetaObject() { return &QVideoDeviceSelectorControl::staticMetaObject; }
void QVideoDeviceSelectorControl_delete(QVideoDeviceSelectorControl* self) {
	delete self;
}

