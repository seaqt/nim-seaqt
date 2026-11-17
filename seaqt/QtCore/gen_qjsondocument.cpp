#include <QByteArray>
#include <QJsonArray>
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonParseError>
#include <QJsonValue>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qjsondocument.h>
#include "gen_qjsondocument.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

struct seaqt_string QJsonParseError_errorString(const QJsonParseError* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QJsonParseError_offset(const QJsonParseError* self) {
	return self->offset;
}

void QJsonParseError_setOffset(QJsonParseError* self, int offset) {
	self->offset = static_cast<int>(offset);
}

int QJsonParseError_error(const QJsonParseError* self) {
	QJsonParseError::ParseError error_ret = self->error;
	return static_cast<int>(error_ret);
}

void QJsonParseError_setError(QJsonParseError* self, int error) {
	self->error = static_cast<QJsonParseError::ParseError>(error);
}

void QJsonParseError_delete(QJsonParseError* self) {
	delete self;
}

QJsonDocument* QJsonDocument_new() {
	return new (std::nothrow) QJsonDocument();
}

QJsonDocument* QJsonDocument_new_object(QJsonObject* object) {
	return new (std::nothrow) QJsonDocument(*object);
}

QJsonDocument* QJsonDocument_new_array(QJsonArray* array) {
	return new (std::nothrow) QJsonDocument(*array);
}

QJsonDocument* QJsonDocument_new_from(QJsonDocument* from) {
	return new (std::nothrow) QJsonDocument(*from);
}

void QJsonDocument_operatorAssign(QJsonDocument* self, QJsonDocument* from) {
	self->operator=(*from);
}

void QJsonDocument_swap(QJsonDocument* self, QJsonDocument* other) {
	self->swap(*other);
}

QJsonDocument* QJsonDocument_fromRawData_data_size(const char* data, int size) {
	return new QJsonDocument(QJsonDocument::fromRawData(data, static_cast<int>(size)));
}

const char* QJsonDocument_rawData(const QJsonDocument* self, int* size) {
	return (const char*) self->rawData(static_cast<int*>(size));
}

QJsonDocument* QJsonDocument_fromBinaryData_data(struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	return new QJsonDocument(QJsonDocument::fromBinaryData(data_QByteArray));
}

struct seaqt_string QJsonDocument_toBinaryData(const QJsonDocument* self) {
	QByteArray _qb = self->toBinaryData();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

QJsonDocument* QJsonDocument_fromVariant(QVariant* variant) {
	return new QJsonDocument(QJsonDocument::fromVariant(*variant));
}

QVariant* QJsonDocument_toVariant(const QJsonDocument* self) {
	return new QVariant(self->toVariant());
}

QJsonDocument* QJsonDocument_fromJson_json(struct seaqt_string json) {
	QByteArray json_QByteArray(json.data, json.len);
	return new QJsonDocument(QJsonDocument::fromJson(json_QByteArray));
}

struct seaqt_string QJsonDocument_toJson(const QJsonDocument* self) {
	QByteArray _qb = self->toJson();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QJsonDocument_toJson_format(const QJsonDocument* self, int format) {
	QByteArray _qb = self->toJson(static_cast<QJsonDocument::JsonFormat>(format));
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

bool QJsonDocument_isEmpty(const QJsonDocument* self) {
	return self->isEmpty();
}

bool QJsonDocument_isArray(const QJsonDocument* self) {
	return self->isArray();
}

bool QJsonDocument_isObject(const QJsonDocument* self) {
	return self->isObject();
}

QJsonObject* QJsonDocument_object(const QJsonDocument* self) {
	return new QJsonObject(self->object());
}

QJsonArray* QJsonDocument_array(const QJsonDocument* self) {
	return new QJsonArray(self->array());
}

void QJsonDocument_setObject(QJsonDocument* self, QJsonObject* object) {
	self->setObject(*object);
}

void QJsonDocument_setArray(QJsonDocument* self, QJsonArray* array) {
	self->setArray(*array);
}

QJsonValue* QJsonDocument_operatorSubscript_QString(const QJsonDocument* self, struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QJsonValue(self->operator[](key_QString));
}

QJsonValue* QJsonDocument_operatorSubscript_int(const QJsonDocument* self, int i) {
	return new QJsonValue(self->operator[](static_cast<int>(i)));
}

bool QJsonDocument_operatorEqual(const QJsonDocument* self, QJsonDocument* other) {
	return (*self == *other);
}

bool QJsonDocument_operatorNotEqual(const QJsonDocument* self, QJsonDocument* other) {
	return (*self != *other);
}

bool QJsonDocument_isNull(const QJsonDocument* self) {
	return self->isNull();
}

QJsonDocument* QJsonDocument_fromRawData_data_size_validation(const char* data, int size, int validation) {
	return new QJsonDocument(QJsonDocument::fromRawData(data, static_cast<int>(size), static_cast<QJsonDocument::DataValidation>(validation)));
}

QJsonDocument* QJsonDocument_fromBinaryData_data_validation(struct seaqt_string data, int validation) {
	QByteArray data_QByteArray(data.data, data.len);
	return new QJsonDocument(QJsonDocument::fromBinaryData(data_QByteArray, static_cast<QJsonDocument::DataValidation>(validation)));
}

QJsonDocument* QJsonDocument_fromJson_json_error(struct seaqt_string json, QJsonParseError* error) {
	QByteArray json_QByteArray(json.data, json.len);
	return new QJsonDocument(QJsonDocument::fromJson(json_QByteArray, error));
}

void QJsonDocument_delete(QJsonDocument* self) {
	delete self;
}

