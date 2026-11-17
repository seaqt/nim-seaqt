#include <QList>
#include <QMediaControl>
#include <QMetaDataReaderControl>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qmetadatareadercontrol.h>
#include "gen_qmetadatareadercontrol.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QMetaDataReaderControl_virtbase(QMetaDataReaderControl* src, QMediaControl** outptr_QMediaControl) {
	*outptr_QMediaControl = static_cast<QMediaControl*>(src);
}

QMetaObject* QMetaDataReaderControl_metaObject(const QMetaDataReaderControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMetaDataReaderControl_metacast(QMetaDataReaderControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMetaDataReaderControl_metacall(QMetaDataReaderControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QMetaDataReaderControl_tr_s(const char* s) {
	QString _ret = QMetaDataReaderControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMetaDataReaderControl_trUtf8_s(const char* s) {
	QString _ret = QMetaDataReaderControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QMetaDataReaderControl_isMetaDataAvailable(const QMetaDataReaderControl* self) {
	return self->isMetaDataAvailable();
}

QVariant* QMetaDataReaderControl_metaData(const QMetaDataReaderControl* self, struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QVariant(self->metaData(key_QString));
}

struct seaqt_array /* of struct seaqt_string */  QMetaDataReaderControl_availableMetaData(const QMetaDataReaderControl* self) {
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

void QMetaDataReaderControl_metaDataChanged(QMetaDataReaderControl* self) {
	self->metaDataChanged();
}

void QMetaDataReaderControl_connect_metaDataChanged(QMetaDataReaderControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QMetaDataReaderControl::connect(self, static_cast<void (QMetaDataReaderControl::*)()>(&QMetaDataReaderControl::metaDataChanged), self, local_caller{slot, callback, release});
}

void QMetaDataReaderControl_metaDataChanged_key_value(QMetaDataReaderControl* self, struct seaqt_string key, QVariant* value) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->metaDataChanged(key_QString, *value);
}

void QMetaDataReaderControl_connect_metaDataChanged_key_value(QMetaDataReaderControl* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, QVariant*), void (*release)(intptr_t)) {
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
	QMetaDataReaderControl::connect(self, static_cast<void (QMetaDataReaderControl::*)(const QString&, const QVariant&)>(&QMetaDataReaderControl::metaDataChanged), self, local_caller{slot, callback, release});
}

void QMetaDataReaderControl_metaDataAvailableChanged(QMetaDataReaderControl* self, bool available) {
	self->metaDataAvailableChanged(available);
}

void QMetaDataReaderControl_connect_metaDataAvailableChanged(QMetaDataReaderControl* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool available) {
			bool sigval1 = available;
			callback(slot, sigval1);
		}
	};
	QMetaDataReaderControl::connect(self, static_cast<void (QMetaDataReaderControl::*)(bool)>(&QMetaDataReaderControl::metaDataAvailableChanged), self, local_caller{slot, callback, release});
}

struct seaqt_string QMetaDataReaderControl_tr_s_c(const char* s, const char* c) {
	QString _ret = QMetaDataReaderControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMetaDataReaderControl_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QMetaDataReaderControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMetaDataReaderControl_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QMetaDataReaderControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMetaDataReaderControl_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QMetaDataReaderControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QMetaDataReaderControl_staticMetaObject() { return &QMetaDataReaderControl::staticMetaObject; }
void QMetaDataReaderControl_delete(QMetaDataReaderControl* self) {
	delete self;
}

