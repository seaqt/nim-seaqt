#include <QMediaAvailabilityControl>
#include <QMediaControl>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qmediaavailabilitycontrol.h>
#include "gen_qmediaavailabilitycontrol.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

void QMediaAvailabilityControl_virtbase(QMediaAvailabilityControl* src, QMediaControl** outptr_QMediaControl) {
	*outptr_QMediaControl = static_cast<QMediaControl*>(src);
}

QMetaObject* QMediaAvailabilityControl_metaObject(const QMediaAvailabilityControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMediaAvailabilityControl_metacast(QMediaAvailabilityControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMediaAvailabilityControl_metacall(QMediaAvailabilityControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMediaAvailabilityControl_tr(const char* s) {
	QString _ret = QMediaAvailabilityControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaAvailabilityControl_trUtf8(const char* s) {
	QString _ret = QMediaAvailabilityControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QMediaAvailabilityControl_availability(const QMediaAvailabilityControl* self) {
	QMultimedia::AvailabilityStatus _ret = self->availability();
	return static_cast<int>(_ret);
}

void QMediaAvailabilityControl_availabilityChanged(QMediaAvailabilityControl* self, int availability) {
	self->availabilityChanged(static_cast<QMultimedia::AvailabilityStatus>(availability));
}

void QMediaAvailabilityControl_connect_availabilityChanged(QMediaAvailabilityControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QMultimedia::AvailabilityStatus availability) {
			QMultimedia::AvailabilityStatus availability_ret = availability;
			int sigval1 = static_cast<int>(availability_ret);
			callback(slot, sigval1);
		}
	};
	QMediaAvailabilityControl::connect(self, static_cast<void (QMediaAvailabilityControl::*)(QMultimedia::AvailabilityStatus)>(&QMediaAvailabilityControl::availabilityChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QMediaAvailabilityControl_tr2(const char* s, const char* c) {
	QString _ret = QMediaAvailabilityControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaAvailabilityControl_tr3(const char* s, const char* c, int n) {
	QString _ret = QMediaAvailabilityControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaAvailabilityControl_trUtf82(const char* s, const char* c) {
	QString _ret = QMediaAvailabilityControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaAvailabilityControl_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMediaAvailabilityControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QMediaAvailabilityControl_staticMetaObject() { return &QMediaAvailabilityControl::staticMetaObject; }
void QMediaAvailabilityControl_delete(QMediaAvailabilityControl* self) {
	delete self;
}

