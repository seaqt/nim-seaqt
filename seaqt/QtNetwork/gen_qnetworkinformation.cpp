#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkInformation>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qnetworkinformation.h>
#include "gen_qnetworkinformation.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QNetworkInformation_virtbase(QNetworkInformation* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QNetworkInformation_metaObject(const QNetworkInformation* self) {
	return (QMetaObject*) self->metaObject();
}

void* QNetworkInformation_metacast(QNetworkInformation* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QNetworkInformation_metacall(QNetworkInformation* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QNetworkInformation_tr_s(const char* s) {
	QString _ret = QNetworkInformation::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QNetworkInformation_reachability(const QNetworkInformation* self) {
	QNetworkInformation::Reachability _ret = self->reachability();
	return static_cast<int>(_ret);
}

bool QNetworkInformation_isBehindCaptivePortal(const QNetworkInformation* self) {
	return self->isBehindCaptivePortal();
}

int QNetworkInformation_transportMedium(const QNetworkInformation* self) {
	QNetworkInformation::TransportMedium _ret = self->transportMedium();
	return static_cast<int>(_ret);
}

bool QNetworkInformation_isMetered(const QNetworkInformation* self) {
	return self->isMetered();
}

struct seaqt_string QNetworkInformation_backendName(const QNetworkInformation* self) {
	QString _ret = self->backendName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QNetworkInformation_supports(const QNetworkInformation* self, int features) {
	return self->supports(static_cast<QNetworkInformation::Features>(features));
}

int QNetworkInformation_supportedFeatures(const QNetworkInformation* self) {
	QNetworkInformation::Features _ret = self->supportedFeatures();
	return static_cast<int>(_ret);
}

bool QNetworkInformation_loadDefaultBackend() {
	return QNetworkInformation::loadDefaultBackend();
}

bool QNetworkInformation_loadBackendByFeatures(int features) {
	return QNetworkInformation::loadBackendByFeatures(static_cast<QNetworkInformation::Features>(features));
}

bool QNetworkInformation_load_features(int features) {
	return QNetworkInformation::load(static_cast<QNetworkInformation::Features>(features));
}

struct seaqt_array /* of struct seaqt_string */  QNetworkInformation_availableBackends() {
	QStringList _ret = QNetworkInformation::availableBackends();
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

QNetworkInformation* QNetworkInformation_instance() {
	return QNetworkInformation::instance();
}

void QNetworkInformation_reachabilityChanged(QNetworkInformation* self, int newReachability) {
	self->reachabilityChanged(static_cast<QNetworkInformation::Reachability>(newReachability));
}

void QNetworkInformation_connect_reachabilityChanged(QNetworkInformation* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QNetworkInformation::Reachability newReachability) {
			QNetworkInformation::Reachability newReachability_ret = newReachability;
			int sigval1 = static_cast<int>(newReachability_ret);
			callback(slot, sigval1);
		}
	};
	QNetworkInformation::connect(self, static_cast<void (QNetworkInformation::*)(QNetworkInformation::Reachability)>(&QNetworkInformation::reachabilityChanged), self, local_caller{slot, callback, release});
}

void QNetworkInformation_isBehindCaptivePortalChanged(QNetworkInformation* self, bool state) {
	self->isBehindCaptivePortalChanged(state);
}

void QNetworkInformation_connect_isBehindCaptivePortalChanged(QNetworkInformation* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool state) {
			bool sigval1 = state;
			callback(slot, sigval1);
		}
	};
	QNetworkInformation::connect(self, static_cast<void (QNetworkInformation::*)(bool)>(&QNetworkInformation::isBehindCaptivePortalChanged), self, local_caller{slot, callback, release});
}

void QNetworkInformation_transportMediumChanged(QNetworkInformation* self, int current) {
	self->transportMediumChanged(static_cast<QNetworkInformation::TransportMedium>(current));
}

void QNetworkInformation_connect_transportMediumChanged(QNetworkInformation* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QNetworkInformation::TransportMedium current) {
			QNetworkInformation::TransportMedium current_ret = current;
			int sigval1 = static_cast<int>(current_ret);
			callback(slot, sigval1);
		}
	};
	QNetworkInformation::connect(self, static_cast<void (QNetworkInformation::*)(QNetworkInformation::TransportMedium)>(&QNetworkInformation::transportMediumChanged), self, local_caller{slot, callback, release});
}

void QNetworkInformation_isMeteredChanged(QNetworkInformation* self, bool isMetered) {
	self->isMeteredChanged(isMetered);
}

void QNetworkInformation_connect_isMeteredChanged(QNetworkInformation* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool isMetered) {
			bool sigval1 = isMetered;
			callback(slot, sigval1);
		}
	};
	QNetworkInformation::connect(self, static_cast<void (QNetworkInformation::*)(bool)>(&QNetworkInformation::isMeteredChanged), self, local_caller{slot, callback, release});
}

struct seaqt_string QNetworkInformation_tr_s_c(const char* s, const char* c) {
	QString _ret = QNetworkInformation::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QNetworkInformation_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QNetworkInformation::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QNetworkInformation_staticMetaObject() { return &QNetworkInformation::staticMetaObject; }
