#include <QCameraExposureControl>
#include <QList>
#include <QMediaControl>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qcameraexposurecontrol.h>
#include "gen_qcameraexposurecontrol.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QCameraExposureControl_virtbase(QCameraExposureControl* src, QMediaControl** outptr_QMediaControl) {
	*outptr_QMediaControl = static_cast<QMediaControl*>(src);
}

QMetaObject* QCameraExposureControl_metaObject(const QCameraExposureControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QCameraExposureControl_metacast(QCameraExposureControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QCameraExposureControl_metacall(QCameraExposureControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QCameraExposureControl_tr_s(const char* s) {
	QString _ret = QCameraExposureControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QCameraExposureControl_trUtf8_s(const char* s) {
	QString _ret = QCameraExposureControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QCameraExposureControl_isParameterSupported(const QCameraExposureControl* self, int parameter) {
	return self->isParameterSupported(static_cast<QCameraExposureControl::ExposureParameter>(parameter));
}

struct seaqt_array /* of QVariant* */  QCameraExposureControl_supportedParameterRange(const QCameraExposureControl* self, int parameter, bool* continuous) {
	QVariantList _ret = self->supportedParameterRange(static_cast<QCameraExposureControl::ExposureParameter>(parameter), continuous);
	// Convert QList<> from C++ memory to manually-managed C memory
	QVariant** _arr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QVariant(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QVariant* QCameraExposureControl_requestedValue(const QCameraExposureControl* self, int parameter) {
	return new QVariant(self->requestedValue(static_cast<QCameraExposureControl::ExposureParameter>(parameter)));
}

QVariant* QCameraExposureControl_actualValue(const QCameraExposureControl* self, int parameter) {
	return new QVariant(self->actualValue(static_cast<QCameraExposureControl::ExposureParameter>(parameter)));
}

bool QCameraExposureControl_setValue(QCameraExposureControl* self, int parameter, QVariant* value) {
	return self->setValue(static_cast<QCameraExposureControl::ExposureParameter>(parameter), *value);
}

void QCameraExposureControl_requestedValueChanged(QCameraExposureControl* self, int parameter) {
	self->requestedValueChanged(static_cast<int>(parameter));
}

void QCameraExposureControl_connect_requestedValueChanged(QCameraExposureControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QCameraExposureControl::connect(self, static_cast<void (QCameraExposureControl::*)(int)>(&QCameraExposureControl::requestedValueChanged), self, [callback, release = seaqt::release_callback{slot,release}](int parameter) {
			int sigval1 = parameter;
			callback(release.slot, sigval1);
	});
}

void QCameraExposureControl_actualValueChanged(QCameraExposureControl* self, int parameter) {
	self->actualValueChanged(static_cast<int>(parameter));
}

void QCameraExposureControl_connect_actualValueChanged(QCameraExposureControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QCameraExposureControl::connect(self, static_cast<void (QCameraExposureControl::*)(int)>(&QCameraExposureControl::actualValueChanged), self, [callback, release = seaqt::release_callback{slot,release}](int parameter) {
			int sigval1 = parameter;
			callback(release.slot, sigval1);
	});
}

void QCameraExposureControl_parameterRangeChanged(QCameraExposureControl* self, int parameter) {
	self->parameterRangeChanged(static_cast<int>(parameter));
}

void QCameraExposureControl_connect_parameterRangeChanged(QCameraExposureControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QCameraExposureControl::connect(self, static_cast<void (QCameraExposureControl::*)(int)>(&QCameraExposureControl::parameterRangeChanged), self, [callback, release = seaqt::release_callback{slot,release}](int parameter) {
			int sigval1 = parameter;
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QCameraExposureControl_tr_s_c(const char* s, const char* c) {
	QString _ret = QCameraExposureControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QCameraExposureControl_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QCameraExposureControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QCameraExposureControl_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QCameraExposureControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QCameraExposureControl_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QCameraExposureControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QCameraExposureControl_staticMetaObject() { return &QCameraExposureControl::staticMetaObject; }
void QCameraExposureControl_delete(QCameraExposureControl* self) {
	delete self;
}

