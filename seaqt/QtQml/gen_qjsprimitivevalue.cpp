#include <QJSPrimitiveValue>
#include <QMetaType>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qjsprimitivevalue.h>
#include "gen_qjsprimitivevalue.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QJSPrimitiveUndefined* QJSPrimitiveUndefined_new() {
	return new (std::nothrow) QJSPrimitiveUndefined();
}

QJSPrimitiveUndefined* QJSPrimitiveUndefined_new_from(QJSPrimitiveUndefined* from) {
	return new (std::nothrow) QJSPrimitiveUndefined(*from);
}

void QJSPrimitiveUndefined_delete(QJSPrimitiveUndefined* self) {
	delete self;
}

QJSPrimitiveNull* QJSPrimitiveNull_new() {
	return new (std::nothrow) QJSPrimitiveNull();
}

QJSPrimitiveNull* QJSPrimitiveNull_new_from(QJSPrimitiveNull* from) {
	return new (std::nothrow) QJSPrimitiveNull(*from);
}

void QJSPrimitiveNull_delete(QJSPrimitiveNull* self) {
	delete self;
}

QJSPrimitiveValue* QJSPrimitiveValue_new() {
	return new (std::nothrow) QJSPrimitiveValue();
}

QJSPrimitiveValue* QJSPrimitiveValue_new_QJSPrimitiveUndefined(QJSPrimitiveUndefined* undefined) {
	return new (std::nothrow) QJSPrimitiveValue(*undefined);
}

QJSPrimitiveValue* QJSPrimitiveValue_new_QJSPrimitiveNull(QJSPrimitiveNull* null) {
	return new (std::nothrow) QJSPrimitiveValue(*null);
}

QJSPrimitiveValue* QJSPrimitiveValue_new_bool(bool value) {
	return new (std::nothrow) QJSPrimitiveValue(value);
}

QJSPrimitiveValue* QJSPrimitiveValue_new_int(int value) {
	return new (std::nothrow) QJSPrimitiveValue(static_cast<int>(value));
}

QJSPrimitiveValue* QJSPrimitiveValue_new_double(double value) {
	return new (std::nothrow) QJSPrimitiveValue(static_cast<double>(value));
}

QJSPrimitiveValue* QJSPrimitiveValue_new_QString(struct seaqt_string string) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	return new (std::nothrow) QJSPrimitiveValue(string_QString);
}

QJSPrimitiveValue* QJSPrimitiveValue_new_QMetaType_void(QMetaType* type, const void* value) {
	return new (std::nothrow) QJSPrimitiveValue(*type, value);
}

QJSPrimitiveValue* QJSPrimitiveValue_new_QVariant(QVariant* variant) {
	return new (std::nothrow) QJSPrimitiveValue(*variant);
}

QJSPrimitiveValue* QJSPrimitiveValue_new_QJSPrimitiveValue(QJSPrimitiveValue* from) {
	return new (std::nothrow) QJSPrimitiveValue(*from);
}

uint8_t QJSPrimitiveValue_type(const QJSPrimitiveValue* self) {
	QJSPrimitiveValue::Type _ret = self->type();
	return static_cast<uint8_t>(_ret);
}

bool QJSPrimitiveValue_toBoolean(const QJSPrimitiveValue* self) {
	return self->toBoolean();
}

int QJSPrimitiveValue_toInteger(const QJSPrimitiveValue* self) {
	return self->toInteger();
}

double QJSPrimitiveValue_toDouble(const QJSPrimitiveValue* self) {
	return self->toDouble();
}

struct seaqt_string QJSPrimitiveValue_toString(const QJSPrimitiveValue* self) {
	QString _ret = self->toString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVariant* QJSPrimitiveValue_toVariant(const QJSPrimitiveValue* self) {
	return new QVariant(self->toVariant());
}

QJSPrimitiveValue* QJSPrimitiveValue_operatorPlusPlus(QJSPrimitiveValue* self) {
	QJSPrimitiveValue& _ret = self->operator++();
	// Cast returned reference into pointer
	return &_ret;
}

QJSPrimitiveValue* QJSPrimitiveValue_operatorPlusPlus_int(QJSPrimitiveValue* self, int param1) {
	return new QJSPrimitiveValue(self->operator++(static_cast<int>(param1)));
}

QJSPrimitiveValue* QJSPrimitiveValue_operatorMinusMinus(QJSPrimitiveValue* self) {
	QJSPrimitiveValue& _ret = self->operator--();
	// Cast returned reference into pointer
	return &_ret;
}

QJSPrimitiveValue* QJSPrimitiveValue_operatorMinusMinus_int(QJSPrimitiveValue* self, int param1) {
	return new QJSPrimitiveValue(self->operator--(static_cast<int>(param1)));
}

QJSPrimitiveValue* QJSPrimitiveValue_operatorPlus(QJSPrimitiveValue* self) {
	return new QJSPrimitiveValue(self->operator+());
}

QJSPrimitiveValue* QJSPrimitiveValue_operatorMinus(QJSPrimitiveValue* self) {
	return new QJSPrimitiveValue(self->operator-());
}

bool QJSPrimitiveValue_strictlyEquals(const QJSPrimitiveValue* self, QJSPrimitiveValue* other) {
	return self->strictlyEquals(*other);
}

bool QJSPrimitiveValue_equals(const QJSPrimitiveValue* self, QJSPrimitiveValue* other) {
	return self->equals(*other);
}

void QJSPrimitiveValue_operatorAssign(QJSPrimitiveValue* self, QJSPrimitiveValue* from) {
	self->operator=(*from);
}

void QJSPrimitiveValue_delete(QJSPrimitiveValue* self) {
	delete self;
}

