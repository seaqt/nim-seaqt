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

QJsonValue* QJsonDocument_operatorSubscript_qsizetype(const QJsonDocument* self, ptrdiff_t i) {
	return new QJsonValue(self->operator[]((qsizetype)(i)));
}

bool QJsonDocument_isNull(const QJsonDocument* self) {
	return self->isNull();
}

QJsonDocument* QJsonDocument_fromJson_json_error(struct seaqt_string json, QJsonParseError* error) {
	QByteArray json_QByteArray(json.data, json.len);
	return new QJsonDocument(QJsonDocument::fromJson(json_QByteArray, error));
}

struct seaqt_string QJsonDocument_toJson_format(const QJsonDocument* self, int format) {
	QByteArray _qb = self->toJson(static_cast<QJsonDocument::JsonFormat>(format));
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QJsonDocument_delete(QJsonDocument* self) {
	delete self;
}

