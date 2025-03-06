#include <QList>
#include <QMediaControl>
#include <QMetaDataWriterControl>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qmetadatawritercontrol.h>
#include "gen_qmetadatawritercontrol.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

void QMetaDataWriterControl_virtbase(QMetaDataWriterControl* src, QMediaControl** outptr_QMediaControl) {
	*outptr_QMediaControl = static_cast<QMediaControl*>(src);
}

QMetaObject* QMetaDataWriterControl_metaObject(const QMetaDataWriterControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMetaDataWriterControl_metacast(QMetaDataWriterControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMetaDataWriterControl_metacall(QMetaDataWriterControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMetaDataWriterControl_tr(const char* s) {
	QString _ret = QMetaDataWriterControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMetaDataWriterControl_trUtf8(const char* s) {
	QString _ret = QMetaDataWriterControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QMetaDataWriterControl_isWritable(const QMetaDataWriterControl* self) {
	return self->isWritable();
}

bool QMetaDataWriterControl_isMetaDataAvailable(const QMetaDataWriterControl* self) {
	return self->isMetaDataAvailable();
}

QVariant* QMetaDataWriterControl_metaData(const QMetaDataWriterControl* self, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QVariant(self->metaData(key_QString));
}

void QMetaDataWriterControl_setMetaData(QMetaDataWriterControl* self, struct miqt_string key, QVariant* value) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->setMetaData(key_QString, *value);
}

struct miqt_array /* of struct miqt_string */  QMetaDataWriterControl_availableMetaData(const QMetaDataWriterControl* self) {
	QStringList _ret = self->availableMetaData();
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

void QMetaDataWriterControl_metaDataChanged(QMetaDataWriterControl* self) {
	self->metaDataChanged();
}

void QMetaDataWriterControl_connect_metaDataChanged(QMetaDataWriterControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QMetaDataWriterControl::connect(self, static_cast<void (QMetaDataWriterControl::*)()>(&QMetaDataWriterControl::metaDataChanged), self, local_caller{slot, callback, release});
}

void QMetaDataWriterControl_metaDataChanged2(QMetaDataWriterControl* self, struct miqt_string key, QVariant* value) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->metaDataChanged(key_QString, *value);
}

void QMetaDataWriterControl_connect_metaDataChanged2(QMetaDataWriterControl* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string, QVariant*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string, QVariant*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string, QVariant*);
		void operator()(const QString& key, const QVariant& value) {
			const QString key_ret = key;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray key_b = key_ret.toUtf8();
			struct miqt_string key_ms;
			key_ms.len = key_b.length();
			key_ms.data = static_cast<char*>(malloc(key_ms.len));
			memcpy(key_ms.data, key_b.data(), key_ms.len);
			struct miqt_string sigval1 = key_ms;
			const QVariant& value_ret = value;
			// Cast returned reference into pointer
			QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
			callback(slot, sigval1, sigval2);
		}
	};
	QMetaDataWriterControl::connect(self, static_cast<void (QMetaDataWriterControl::*)(const QString&, const QVariant&)>(&QMetaDataWriterControl::metaDataChanged), self, local_caller{slot, callback, release});
}

void QMetaDataWriterControl_writableChanged(QMetaDataWriterControl* self, bool writable) {
	self->writableChanged(writable);
}

void QMetaDataWriterControl_connect_writableChanged(QMetaDataWriterControl* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool writable) {
			bool sigval1 = writable;
			callback(slot, sigval1);
		}
	};
	QMetaDataWriterControl::connect(self, static_cast<void (QMetaDataWriterControl::*)(bool)>(&QMetaDataWriterControl::writableChanged), self, local_caller{slot, callback, release});
}

void QMetaDataWriterControl_metaDataAvailableChanged(QMetaDataWriterControl* self, bool available) {
	self->metaDataAvailableChanged(available);
}

void QMetaDataWriterControl_connect_metaDataAvailableChanged(QMetaDataWriterControl* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool available) {
			bool sigval1 = available;
			callback(slot, sigval1);
		}
	};
	QMetaDataWriterControl::connect(self, static_cast<void (QMetaDataWriterControl::*)(bool)>(&QMetaDataWriterControl::metaDataAvailableChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QMetaDataWriterControl_tr2(const char* s, const char* c) {
	QString _ret = QMetaDataWriterControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMetaDataWriterControl_tr3(const char* s, const char* c, int n) {
	QString _ret = QMetaDataWriterControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMetaDataWriterControl_trUtf82(const char* s, const char* c) {
	QString _ret = QMetaDataWriterControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMetaDataWriterControl_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMetaDataWriterControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QMetaDataWriterControl_staticMetaObject() { return &QMetaDataWriterControl::staticMetaObject; }
void QMetaDataWriterControl_delete(QMetaDataWriterControl* self) {
	delete self;
}

