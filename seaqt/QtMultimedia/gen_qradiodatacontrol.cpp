#include <QMediaControl>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRadioDataControl>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qradiodatacontrol.h>
#include "gen_qradiodatacontrol.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QRadioDataControl_virtbase(QRadioDataControl* src, QMediaControl** outptr_QMediaControl) {
	*outptr_QMediaControl = static_cast<QMediaControl*>(src);
}

QMetaObject* QRadioDataControl_metaObject(const QRadioDataControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRadioDataControl_metacast(QRadioDataControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRadioDataControl_metacall(QRadioDataControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QRadioDataControl_tr_s(const char* s) {
	QString _ret = QRadioDataControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRadioDataControl_trUtf8_s(const char* s) {
	QString _ret = QRadioDataControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRadioDataControl_stationId(const QRadioDataControl* self) {
	QString _ret = self->stationId();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QRadioDataControl_programType(const QRadioDataControl* self) {
	QRadioData::ProgramType _ret = self->programType();
	return static_cast<int>(_ret);
}

struct seaqt_string QRadioDataControl_programTypeName(const QRadioDataControl* self) {
	QString _ret = self->programTypeName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRadioDataControl_stationName(const QRadioDataControl* self) {
	QString _ret = self->stationName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRadioDataControl_radioText(const QRadioDataControl* self) {
	QString _ret = self->radioText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QRadioDataControl_setAlternativeFrequenciesEnabled(QRadioDataControl* self, bool enabled) {
	self->setAlternativeFrequenciesEnabled(enabled);
}

bool QRadioDataControl_isAlternativeFrequenciesEnabled(const QRadioDataControl* self) {
	return self->isAlternativeFrequenciesEnabled();
}

int QRadioDataControl_error(const QRadioDataControl* self) {
	QRadioData::Error _ret = self->error();
	return static_cast<int>(_ret);
}

struct seaqt_string QRadioDataControl_errorString(const QRadioDataControl* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QRadioDataControl_stationIdChanged(QRadioDataControl* self, struct seaqt_string stationId) {
	QString stationId_QString = QString::fromUtf8(stationId.data, stationId.len);
	self->stationIdChanged(stationId_QString);
}

void QRadioDataControl_connect_stationIdChanged(QRadioDataControl* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) {
	QRadioDataControl::connect(self, static_cast<void (QRadioDataControl::*)(QString)>(&QRadioDataControl::stationIdChanged), self, [callback, release = seaqt::release_callback{slot,release}](QString stationId) {
			QString stationId_ret = stationId;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray stationId_b = stationId_ret.toUtf8();
			struct seaqt_string stationId_ms;
			stationId_ms.len = stationId_b.length();
			stationId_ms.data = static_cast<char*>(malloc(stationId_ms.len));
			memcpy(stationId_ms.data, stationId_b.data(), stationId_ms.len);
			struct seaqt_string sigval1 = stationId_ms;
			callback(release.slot, sigval1);
	});
}

void QRadioDataControl_programTypeChanged(QRadioDataControl* self, int programType) {
	self->programTypeChanged(static_cast<QRadioData::ProgramType>(programType));
}

void QRadioDataControl_connect_programTypeChanged(QRadioDataControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QRadioDataControl::connect(self, static_cast<void (QRadioDataControl::*)(QRadioData::ProgramType)>(&QRadioDataControl::programTypeChanged), self, [callback, release = seaqt::release_callback{slot,release}](QRadioData::ProgramType programType) {
			QRadioData::ProgramType programType_ret = programType;
			int sigval1 = static_cast<int>(programType_ret);
			callback(release.slot, sigval1);
	});
}

void QRadioDataControl_programTypeNameChanged(QRadioDataControl* self, struct seaqt_string programTypeName) {
	QString programTypeName_QString = QString::fromUtf8(programTypeName.data, programTypeName.len);
	self->programTypeNameChanged(programTypeName_QString);
}

void QRadioDataControl_connect_programTypeNameChanged(QRadioDataControl* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) {
	QRadioDataControl::connect(self, static_cast<void (QRadioDataControl::*)(QString)>(&QRadioDataControl::programTypeNameChanged), self, [callback, release = seaqt::release_callback{slot,release}](QString programTypeName) {
			QString programTypeName_ret = programTypeName;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray programTypeName_b = programTypeName_ret.toUtf8();
			struct seaqt_string programTypeName_ms;
			programTypeName_ms.len = programTypeName_b.length();
			programTypeName_ms.data = static_cast<char*>(malloc(programTypeName_ms.len));
			memcpy(programTypeName_ms.data, programTypeName_b.data(), programTypeName_ms.len);
			struct seaqt_string sigval1 = programTypeName_ms;
			callback(release.slot, sigval1);
	});
}

void QRadioDataControl_stationNameChanged(QRadioDataControl* self, struct seaqt_string stationName) {
	QString stationName_QString = QString::fromUtf8(stationName.data, stationName.len);
	self->stationNameChanged(stationName_QString);
}

void QRadioDataControl_connect_stationNameChanged(QRadioDataControl* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) {
	QRadioDataControl::connect(self, static_cast<void (QRadioDataControl::*)(QString)>(&QRadioDataControl::stationNameChanged), self, [callback, release = seaqt::release_callback{slot,release}](QString stationName) {
			QString stationName_ret = stationName;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray stationName_b = stationName_ret.toUtf8();
			struct seaqt_string stationName_ms;
			stationName_ms.len = stationName_b.length();
			stationName_ms.data = static_cast<char*>(malloc(stationName_ms.len));
			memcpy(stationName_ms.data, stationName_b.data(), stationName_ms.len);
			struct seaqt_string sigval1 = stationName_ms;
			callback(release.slot, sigval1);
	});
}

void QRadioDataControl_radioTextChanged(QRadioDataControl* self, struct seaqt_string radioText) {
	QString radioText_QString = QString::fromUtf8(radioText.data, radioText.len);
	self->radioTextChanged(radioText_QString);
}

void QRadioDataControl_connect_radioTextChanged(QRadioDataControl* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) {
	QRadioDataControl::connect(self, static_cast<void (QRadioDataControl::*)(QString)>(&QRadioDataControl::radioTextChanged), self, [callback, release = seaqt::release_callback{slot,release}](QString radioText) {
			QString radioText_ret = radioText;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray radioText_b = radioText_ret.toUtf8();
			struct seaqt_string radioText_ms;
			radioText_ms.len = radioText_b.length();
			radioText_ms.data = static_cast<char*>(malloc(radioText_ms.len));
			memcpy(radioText_ms.data, radioText_b.data(), radioText_ms.len);
			struct seaqt_string sigval1 = radioText_ms;
			callback(release.slot, sigval1);
	});
}

void QRadioDataControl_alternativeFrequenciesEnabledChanged(QRadioDataControl* self, bool enabled) {
	self->alternativeFrequenciesEnabledChanged(enabled);
}

void QRadioDataControl_connect_alternativeFrequenciesEnabledChanged(QRadioDataControl* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QRadioDataControl::connect(self, static_cast<void (QRadioDataControl::*)(bool)>(&QRadioDataControl::alternativeFrequenciesEnabledChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool enabled) {
			bool sigval1 = enabled;
			callback(release.slot, sigval1);
	});
}

void QRadioDataControl_error_err(QRadioDataControl* self, int err) {
	self->error(static_cast<QRadioData::Error>(err));
}

void QRadioDataControl_connect_error_err(QRadioDataControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QRadioDataControl::connect(self, static_cast<void (QRadioDataControl::*)(QRadioData::Error)>(&QRadioDataControl::error), self, [callback, release = seaqt::release_callback{slot,release}](QRadioData::Error err) {
			QRadioData::Error err_ret = err;
			int sigval1 = static_cast<int>(err_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QRadioDataControl_tr_s_c(const char* s, const char* c) {
	QString _ret = QRadioDataControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRadioDataControl_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QRadioDataControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRadioDataControl_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QRadioDataControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRadioDataControl_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QRadioDataControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QRadioDataControl_staticMetaObject() { return &QRadioDataControl::staticMetaObject; }
void QRadioDataControl_delete(QRadioDataControl* self) {
	delete self;
}

