#include <QByteArray>
#include <QList>
#include <QMediaObject>
#include <QMediaService>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qmediaobject.h>
#include "gen_qmediaobject.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QMediaObject_virtbase(QMediaObject* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QMediaObject_metaObject(const QMediaObject* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMediaObject_metacast(QMediaObject* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMediaObject_metacall(QMediaObject* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QMediaObject_tr_s(const char* s) {
	QString _ret = QMediaObject::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaObject_trUtf8_s(const char* s) {
	QString _ret = QMediaObject::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QMediaObject_isAvailable(const QMediaObject* self) {
	return self->isAvailable();
}

int QMediaObject_availability(const QMediaObject* self) {
	QMultimedia::AvailabilityStatus _ret = self->availability();
	return static_cast<int>(_ret);
}

QMediaService* QMediaObject_service(const QMediaObject* self) {
	return self->service();
}

int QMediaObject_notifyInterval(const QMediaObject* self) {
	return self->notifyInterval();
}

void QMediaObject_setNotifyInterval(QMediaObject* self, int milliSeconds) {
	self->setNotifyInterval(static_cast<int>(milliSeconds));
}

bool QMediaObject_bind(QMediaObject* self, QObject* param1) {
	return self->bind(param1);
}

void QMediaObject_unbind(QMediaObject* self, QObject* param1) {
	self->unbind(param1);
}

bool QMediaObject_isMetaDataAvailable(const QMediaObject* self) {
	return self->isMetaDataAvailable();
}

QVariant* QMediaObject_metaData(const QMediaObject* self, struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QVariant(self->metaData(key_QString));
}

struct seaqt_array /* of struct seaqt_string */  QMediaObject_availableMetaData(const QMediaObject* self) {
	QStringList _ret = self->availableMetaData();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QMediaObject_notifyIntervalChanged(QMediaObject* self, int milliSeconds) {
	self->notifyIntervalChanged(static_cast<int>(milliSeconds));
}

void QMediaObject_connect_notifyIntervalChanged(QMediaObject* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int milliSeconds) {
			int sigval1 = milliSeconds;
			callback(slot, sigval1);
		}
	};
	QMediaObject::connect(self, static_cast<void (QMediaObject::*)(int)>(&QMediaObject::notifyIntervalChanged), self, local_caller{slot, callback, release});
}

void QMediaObject_metaDataAvailableChanged(QMediaObject* self, bool available) {
	self->metaDataAvailableChanged(available);
}

void QMediaObject_connect_metaDataAvailableChanged(QMediaObject* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool available) {
			bool sigval1 = available;
			callback(slot, sigval1);
		}
	};
	QMediaObject::connect(self, static_cast<void (QMediaObject::*)(bool)>(&QMediaObject::metaDataAvailableChanged), self, local_caller{slot, callback, release});
}

void QMediaObject_metaDataChanged(QMediaObject* self) {
	self->metaDataChanged();
}

void QMediaObject_connect_metaDataChanged(QMediaObject* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QMediaObject::connect(self, static_cast<void (QMediaObject::*)()>(&QMediaObject::metaDataChanged), self, local_caller{slot, callback, release});
}

void QMediaObject_metaDataChanged_key_value(QMediaObject* self, struct seaqt_string key, QVariant* value) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->metaDataChanged(key_QString, *value);
}

void QMediaObject_connect_metaDataChanged_key_value(QMediaObject* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, QVariant*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, QVariant*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct seaqt_string, QVariant*);
		void operator()(const QString& key, const QVariant& value) {
			const QString key_ret = key;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray key_b = key_ret.toUtf8();
			struct seaqt_string key_ms;
			key_ms.len = key_b.length();
			key_ms.data = static_cast<char*>(malloc(key_ms.len));
			memcpy(key_ms.data, key_b.data(), key_ms.len);
			struct seaqt_string sigval1 = key_ms;
			const QVariant& value_ret = value;
			// Cast returned reference into pointer
			QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
			callback(slot, sigval1, sigval2);
		}
	};
	QMediaObject::connect(self, static_cast<void (QMediaObject::*)(const QString&, const QVariant&)>(&QMediaObject::metaDataChanged), self, local_caller{slot, callback, release});
}

void QMediaObject_availabilityChanged_available(QMediaObject* self, bool available) {
	self->availabilityChanged(available);
}

void QMediaObject_connect_availabilityChanged_available(QMediaObject* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool available) {
			bool sigval1 = available;
			callback(slot, sigval1);
		}
	};
	QMediaObject::connect(self, static_cast<void (QMediaObject::*)(bool)>(&QMediaObject::availabilityChanged), self, local_caller{slot, callback, release});
}

void QMediaObject_availabilityChanged_availability(QMediaObject* self, int availability) {
	self->availabilityChanged(static_cast<QMultimedia::AvailabilityStatus>(availability));
}

void QMediaObject_connect_availabilityChanged_availability(QMediaObject* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QMultimedia::AvailabilityStatus availability) {
			QMultimedia::AvailabilityStatus availability_ret = availability;
			int sigval1 = static_cast<int>(availability_ret);
			callback(slot, sigval1);
		}
	};
	QMediaObject::connect(self, static_cast<void (QMediaObject::*)(QMultimedia::AvailabilityStatus)>(&QMediaObject::availabilityChanged), self, local_caller{slot, callback, release});
}

struct seaqt_string QMediaObject_tr_s_c(const char* s, const char* c) {
	QString _ret = QMediaObject::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaObject_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QMediaObject::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaObject_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QMediaObject::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaObject_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QMediaObject::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QMediaObject_staticMetaObject() { return &QMediaObject::staticMetaObject; }
void QMediaObject_delete(QMediaObject* self) {
	delete self;
}

