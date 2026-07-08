#include <QMetaObject>
#include <QNativeIpcKey>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qtipccommon.h>
#include "gen_qtipccommon.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QNativeIpcKey* QNativeIpcKey_new() {
	return new (std::nothrow) QNativeIpcKey();
}

QNativeIpcKey* QNativeIpcKey_new_type(uint16_t type) {
	return new (std::nothrow) QNativeIpcKey(static_cast<QNativeIpcKey::Type>(type));
}

QNativeIpcKey* QNativeIpcKey_new_k(struct seaqt_string k) {
	QString k_QString = QString::fromUtf8(k.data, k.len);
	return new (std::nothrow) QNativeIpcKey(k_QString);
}

QNativeIpcKey* QNativeIpcKey_new_from(QNativeIpcKey* from) {
	return new (std::nothrow) QNativeIpcKey(*from);
}

QNativeIpcKey* QNativeIpcKey_new_k_type(struct seaqt_string k, uint16_t type) {
	QString k_QString = QString::fromUtf8(k.data, k.len);
	return new (std::nothrow) QNativeIpcKey(k_QString, static_cast<QNativeIpcKey::Type>(type));
}

uint16_t QNativeIpcKey_legacyDefaultTypeForOs() {
	QNativeIpcKey::Type _ret = QNativeIpcKey::legacyDefaultTypeForOs();
	return static_cast<uint16_t>(_ret);
}

void QNativeIpcKey_operatorAssign(QNativeIpcKey* self, QNativeIpcKey* from) {
	self->operator=(*from);
}

void QNativeIpcKey_swap(QNativeIpcKey* self, QNativeIpcKey* other) {
	self->swap(*other);
}

bool QNativeIpcKey_isEmpty(const QNativeIpcKey* self) {
	return self->isEmpty();
}

bool QNativeIpcKey_isValid(const QNativeIpcKey* self) {
	return self->isValid();
}

uint16_t QNativeIpcKey_type(const QNativeIpcKey* self) {
	QNativeIpcKey::Type _ret = self->type();
	return static_cast<uint16_t>(_ret);
}

void QNativeIpcKey_setType(QNativeIpcKey* self, uint16_t type) {
	self->setType(static_cast<QNativeIpcKey::Type>(type));
}

struct seaqt_string QNativeIpcKey_nativeKey(const QNativeIpcKey* self) {
	QString _ret = self->nativeKey();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QNativeIpcKey_setNativeKey(QNativeIpcKey* self, struct seaqt_string newKey) {
	QString newKey_QString = QString::fromUtf8(newKey.data, newKey.len);
	self->setNativeKey(newKey_QString);
}

struct seaqt_string QNativeIpcKey_toString(const QNativeIpcKey* self) {
	QString _ret = self->toString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QNativeIpcKey* QNativeIpcKey_fromString(struct seaqt_string string) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	return new QNativeIpcKey(QNativeIpcKey::fromString(string_QString));
}

const QMetaObject* QNativeIpcKey_staticMetaObject() { return &QNativeIpcKey::staticMetaObject; }
void QNativeIpcKey_delete(QNativeIpcKey* self) {
	delete self;
}

