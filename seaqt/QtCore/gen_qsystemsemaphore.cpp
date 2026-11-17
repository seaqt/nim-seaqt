#include <QMetaObject>
#include <QNativeIpcKey>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QSystemSemaphore>
#include <qsystemsemaphore.h>
#include "gen_qsystemsemaphore.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QSystemSemaphore* QSystemSemaphore_new_QNativeIpcKey(QNativeIpcKey* key) {
	return new (std::nothrow) QSystemSemaphore(*key);
}

QSystemSemaphore* QSystemSemaphore_new_QString(struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new (std::nothrow) QSystemSemaphore(key_QString);
}

QSystemSemaphore* QSystemSemaphore_new_QNativeIpcKey_int(QNativeIpcKey* key, int initialValue) {
	return new (std::nothrow) QSystemSemaphore(*key, static_cast<int>(initialValue));
}

QSystemSemaphore* QSystemSemaphore_new_QNativeIpcKey_int_QSystemSemaphore_AccessMode(QNativeIpcKey* key, int initialValue, int param3) {
	return new (std::nothrow) QSystemSemaphore(*key, static_cast<int>(initialValue), static_cast<QSystemSemaphore::AccessMode>(param3));
}

QSystemSemaphore* QSystemSemaphore_new_QString_int(struct seaqt_string key, int initialValue) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new (std::nothrow) QSystemSemaphore(key_QString, static_cast<int>(initialValue));
}

QSystemSemaphore* QSystemSemaphore_new_QString_int_QSystemSemaphore_AccessMode(struct seaqt_string key, int initialValue, int mode) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new (std::nothrow) QSystemSemaphore(key_QString, static_cast<int>(initialValue), static_cast<QSystemSemaphore::AccessMode>(mode));
}

struct seaqt_string QSystemSemaphore_tr_sourceText(const char* sourceText) {
	QString _ret = QSystemSemaphore::tr(sourceText);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSystemSemaphore_setNativeKey_QNativeIpcKey(QSystemSemaphore* self, QNativeIpcKey* key) {
	self->setNativeKey(*key);
}

void QSystemSemaphore_setNativeKey_QString(QSystemSemaphore* self, struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->setNativeKey(key_QString);
}

QNativeIpcKey* QSystemSemaphore_nativeIpcKey(const QSystemSemaphore* self) {
	return new QNativeIpcKey(self->nativeIpcKey());
}

void QSystemSemaphore_setKey_key(QSystemSemaphore* self, struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->setKey(key_QString);
}

struct seaqt_string QSystemSemaphore_key(const QSystemSemaphore* self) {
	QString _ret = self->key();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QSystemSemaphore_acquire(QSystemSemaphore* self) {
	return self->acquire();
}

bool QSystemSemaphore_release(QSystemSemaphore* self) {
	return self->release();
}

int QSystemSemaphore_error(const QSystemSemaphore* self) {
	QSystemSemaphore::SystemSemaphoreError _ret = self->error();
	return static_cast<int>(_ret);
}

struct seaqt_string QSystemSemaphore_errorString(const QSystemSemaphore* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QSystemSemaphore_isKeyTypeSupported(uint16_t type) {
	return QSystemSemaphore::isKeyTypeSupported(static_cast<QNativeIpcKey::Type>(type));
}

QNativeIpcKey* QSystemSemaphore_platformSafeKey_key(struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QNativeIpcKey(QSystemSemaphore::platformSafeKey(key_QString));
}

QNativeIpcKey* QSystemSemaphore_legacyNativeKey_key(struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QNativeIpcKey(QSystemSemaphore::legacyNativeKey(key_QString));
}

struct seaqt_string QSystemSemaphore_tr_sourceText_disambiguation(const char* sourceText, const char* disambiguation) {
	QString _ret = QSystemSemaphore::tr(sourceText, disambiguation);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSystemSemaphore_tr_sourceText_disambiguation_n(const char* sourceText, const char* disambiguation, int n) {
	QString _ret = QSystemSemaphore::tr(sourceText, disambiguation, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSystemSemaphore_setNativeKey_QNativeIpcKey_int(QSystemSemaphore* self, QNativeIpcKey* key, int initialValue) {
	self->setNativeKey(*key, static_cast<int>(initialValue));
}

void QSystemSemaphore_setNativeKey_QNativeIpcKey_int_QSystemSemaphore_AccessMode(QSystemSemaphore* self, QNativeIpcKey* key, int initialValue, int param3) {
	self->setNativeKey(*key, static_cast<int>(initialValue), static_cast<QSystemSemaphore::AccessMode>(param3));
}

void QSystemSemaphore_setNativeKey_QString_int(QSystemSemaphore* self, struct seaqt_string key, int initialValue) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->setNativeKey(key_QString, static_cast<int>(initialValue));
}

void QSystemSemaphore_setNativeKey_QString_int_QSystemSemaphore_AccessMode(QSystemSemaphore* self, struct seaqt_string key, int initialValue, int mode) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->setNativeKey(key_QString, static_cast<int>(initialValue), static_cast<QSystemSemaphore::AccessMode>(mode));
}

void QSystemSemaphore_setNativeKey_QString_int_QSystemSemaphore_AccessMode_QNativeIpcKey_Type(QSystemSemaphore* self, struct seaqt_string key, int initialValue, int mode, uint16_t type) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->setNativeKey(key_QString, static_cast<int>(initialValue), static_cast<QSystemSemaphore::AccessMode>(mode), static_cast<QNativeIpcKey::Type>(type));
}

void QSystemSemaphore_setKey_key_initialValue(QSystemSemaphore* self, struct seaqt_string key, int initialValue) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->setKey(key_QString, static_cast<int>(initialValue));
}

void QSystemSemaphore_setKey_key_initialValue_mode(QSystemSemaphore* self, struct seaqt_string key, int initialValue, int mode) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->setKey(key_QString, static_cast<int>(initialValue), static_cast<QSystemSemaphore::AccessMode>(mode));
}

bool QSystemSemaphore_release_n(QSystemSemaphore* self, int n) {
	return self->release(static_cast<int>(n));
}

QNativeIpcKey* QSystemSemaphore_platformSafeKey_key_type(struct seaqt_string key, uint16_t type) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QNativeIpcKey(QSystemSemaphore::platformSafeKey(key_QString, static_cast<QNativeIpcKey::Type>(type)));
}

QNativeIpcKey* QSystemSemaphore_legacyNativeKey_key_type(struct seaqt_string key, uint16_t type) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QNativeIpcKey(QSystemSemaphore::legacyNativeKey(key_QString, static_cast<QNativeIpcKey::Type>(type)));
}

const QMetaObject* QSystemSemaphore_staticMetaObject() { return &QSystemSemaphore::staticMetaObject; }
void QSystemSemaphore_delete(QSystemSemaphore* self) {
	delete self;
}

