#include <QByteArray>
#include <QIODevice>
#include <QSslKey>
#include <qsslkey.h>
#include "gen_qsslkey.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QSslKey* QSslKey_new() {
	return new (std::nothrow) QSslKey();
}

QSslKey* QSslKey_new_encoded_algorithm(struct seaqt_string encoded, int algorithm) {
	QByteArray encoded_QByteArray(encoded.data, encoded.len);
	return new (std::nothrow) QSslKey(encoded_QByteArray, static_cast<QSsl::KeyAlgorithm>(algorithm));
}

QSslKey* QSslKey_new_device_algorithm(QIODevice* device, int algorithm) {
	return new (std::nothrow) QSslKey(device, static_cast<QSsl::KeyAlgorithm>(algorithm));
}

QSslKey* QSslKey_new_handle(void* handle) {
	return new (std::nothrow) QSslKey(handle);
}

QSslKey* QSslKey_new_from(QSslKey* from) {
	return new (std::nothrow) QSslKey(*from);
}

QSslKey* QSslKey_new_encoded_algorithm_format(struct seaqt_string encoded, int algorithm, int format) {
	QByteArray encoded_QByteArray(encoded.data, encoded.len);
	return new (std::nothrow) QSslKey(encoded_QByteArray, static_cast<QSsl::KeyAlgorithm>(algorithm), static_cast<QSsl::EncodingFormat>(format));
}

QSslKey* QSslKey_new_encoded_algorithm_format_type(struct seaqt_string encoded, int algorithm, int format, int type) {
	QByteArray encoded_QByteArray(encoded.data, encoded.len);
	return new (std::nothrow) QSslKey(encoded_QByteArray, static_cast<QSsl::KeyAlgorithm>(algorithm), static_cast<QSsl::EncodingFormat>(format), static_cast<QSsl::KeyType>(type));
}

QSslKey* QSslKey_new_encoded_algorithm_format_type_passPhrase(struct seaqt_string encoded, int algorithm, int format, int type, struct seaqt_string passPhrase) {
	QByteArray encoded_QByteArray(encoded.data, encoded.len);
	QByteArray passPhrase_QByteArray(passPhrase.data, passPhrase.len);
	return new (std::nothrow) QSslKey(encoded_QByteArray, static_cast<QSsl::KeyAlgorithm>(algorithm), static_cast<QSsl::EncodingFormat>(format), static_cast<QSsl::KeyType>(type), passPhrase_QByteArray);
}

QSslKey* QSslKey_new_device_algorithm_format(QIODevice* device, int algorithm, int format) {
	return new (std::nothrow) QSslKey(device, static_cast<QSsl::KeyAlgorithm>(algorithm), static_cast<QSsl::EncodingFormat>(format));
}

QSslKey* QSslKey_new_device_algorithm_format_type(QIODevice* device, int algorithm, int format, int type) {
	return new (std::nothrow) QSslKey(device, static_cast<QSsl::KeyAlgorithm>(algorithm), static_cast<QSsl::EncodingFormat>(format), static_cast<QSsl::KeyType>(type));
}

QSslKey* QSslKey_new_device_algorithm_format_type_passPhrase(QIODevice* device, int algorithm, int format, int type, struct seaqt_string passPhrase) {
	QByteArray passPhrase_QByteArray(passPhrase.data, passPhrase.len);
	return new (std::nothrow) QSslKey(device, static_cast<QSsl::KeyAlgorithm>(algorithm), static_cast<QSsl::EncodingFormat>(format), static_cast<QSsl::KeyType>(type), passPhrase_QByteArray);
}

QSslKey* QSslKey_new_handle_type(void* handle, int type) {
	return new (std::nothrow) QSslKey(handle, static_cast<QSsl::KeyType>(type));
}

void QSslKey_operatorAssign(QSslKey* self, QSslKey* from) {
	self->operator=(*from);
}

void QSslKey_swap(QSslKey* self, QSslKey* other) {
	self->swap(*other);
}

bool QSslKey_isNull(const QSslKey* self) {
	return self->isNull();
}

void QSslKey_clear(QSslKey* self) {
	self->clear();
}

int QSslKey_length(const QSslKey* self) {
	return self->length();
}

int QSslKey_type(const QSslKey* self) {
	QSsl::KeyType _ret = self->type();
	return static_cast<int>(_ret);
}

int QSslKey_algorithm(const QSslKey* self) {
	QSsl::KeyAlgorithm _ret = self->algorithm();
	return static_cast<int>(_ret);
}

struct seaqt_string QSslKey_toPem(const QSslKey* self) {
	QByteArray _qb = self->toPem();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSslKey_toDer(const QSslKey* self) {
	QByteArray _qb = self->toDer();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void* QSslKey_handle(const QSslKey* self) {
	Qt::HANDLE _ret = self->handle();
	return static_cast<void*>(_ret);
}

bool QSslKey_operatorEqual(const QSslKey* self, QSslKey* key) {
	return (*self == *key);
}

bool QSslKey_operatorNotEqual(const QSslKey* self, QSslKey* key) {
	return (*self != *key);
}

struct seaqt_string QSslKey_toPem_passPhrase(const QSslKey* self, struct seaqt_string passPhrase) {
	QByteArray passPhrase_QByteArray(passPhrase.data, passPhrase.len);
	QByteArray _qb = self->toPem(passPhrase_QByteArray);
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSslKey_toDer_passPhrase(const QSslKey* self, struct seaqt_string passPhrase) {
	QByteArray passPhrase_QByteArray(passPhrase.data, passPhrase.len);
	QByteArray _qb = self->toDer(passPhrase_QByteArray);
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QSslKey_delete(QSslKey* self) {
	delete self;
}

