#include <QList>
#include <QMediaControl>
#include <QMediaNetworkAccessControl>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkConfiguration>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qmedianetworkaccesscontrol.h>
#include "gen_qmedianetworkaccesscontrol.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QMediaNetworkAccessControl_virtbase(QMediaNetworkAccessControl* src, QMediaControl** outptr_QMediaControl) {
	*outptr_QMediaControl = static_cast<QMediaControl*>(src);
}

QMetaObject* QMediaNetworkAccessControl_metaObject(const QMediaNetworkAccessControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMediaNetworkAccessControl_metacast(QMediaNetworkAccessControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMediaNetworkAccessControl_metacall(QMediaNetworkAccessControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QMediaNetworkAccessControl_tr_s(const char* s) {
	QString _ret = QMediaNetworkAccessControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaNetworkAccessControl_trUtf8_s(const char* s) {
	QString _ret = QMediaNetworkAccessControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMediaNetworkAccessControl_setConfigurations(QMediaNetworkAccessControl* self, struct seaqt_array /* of QNetworkConfiguration* */  configuration) {
	QList<QNetworkConfiguration> configuration_QList;
	configuration_QList.reserve(configuration.len);
	QNetworkConfiguration** configuration_arr = static_cast<QNetworkConfiguration**>(configuration.data);
	for(size_t i = 0; i < configuration.len; ++i) {
		configuration_QList.push_back(*(configuration_arr[i]));
	}
	self->setConfigurations(configuration_QList);
}

QNetworkConfiguration* QMediaNetworkAccessControl_currentConfiguration(const QMediaNetworkAccessControl* self) {
	return new QNetworkConfiguration(self->currentConfiguration());
}

void QMediaNetworkAccessControl_configurationChanged(QMediaNetworkAccessControl* self, QNetworkConfiguration* configuration) {
	self->configurationChanged(*configuration);
}

void QMediaNetworkAccessControl_connect_configurationChanged(QMediaNetworkAccessControl* self, intptr_t slot, void (*callback)(intptr_t, QNetworkConfiguration*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QNetworkConfiguration*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QNetworkConfiguration*);
		void operator()(const QNetworkConfiguration& configuration) {
			const QNetworkConfiguration& configuration_ret = configuration;
			// Cast returned reference into pointer
			QNetworkConfiguration* sigval1 = const_cast<QNetworkConfiguration*>(&configuration_ret);
			callback(slot, sigval1);
		}
	};
	QMediaNetworkAccessControl::connect(self, static_cast<void (QMediaNetworkAccessControl::*)(const QNetworkConfiguration&)>(&QMediaNetworkAccessControl::configurationChanged), self, local_caller{slot, callback, release});
}

struct seaqt_string QMediaNetworkAccessControl_tr_s_c(const char* s, const char* c) {
	QString _ret = QMediaNetworkAccessControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaNetworkAccessControl_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QMediaNetworkAccessControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaNetworkAccessControl_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QMediaNetworkAccessControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaNetworkAccessControl_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QMediaNetworkAccessControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QMediaNetworkAccessControl_staticMetaObject() { return &QMediaNetworkAccessControl::staticMetaObject; }
void QMediaNetworkAccessControl_delete(QMediaNetworkAccessControl* self) {
	delete self;
}

