#include <QMetaMethod>
#include <QMetaProperty>
#include <QObject>
#include <QQmlContext>
#include <QQmlEngine>
#include <QQmlProperty>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qqmlproperty.h>
#include "gen_qqmlproperty.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QQmlProperty* QQmlProperty_new() {
	return new (std::nothrow) QQmlProperty();
}

QQmlProperty* QQmlProperty_new_QObject(QObject* param1) {
	return new (std::nothrow) QQmlProperty(param1);
}

QQmlProperty* QQmlProperty_new_QObject_QQmlContext(QObject* param1, QQmlContext* param2) {
	return new (std::nothrow) QQmlProperty(param1, param2);
}

QQmlProperty* QQmlProperty_new_QObject_QQmlEngine(QObject* param1, QQmlEngine* param2) {
	return new (std::nothrow) QQmlProperty(param1, param2);
}

QQmlProperty* QQmlProperty_new_QObject_QString(QObject* param1, struct seaqt_string param2) {
	QString param2_QString = QString::fromUtf8(param2.data, param2.len);
	return new (std::nothrow) QQmlProperty(param1, param2_QString);
}

QQmlProperty* QQmlProperty_new_QObject_QString_QQmlContext(QObject* param1, struct seaqt_string param2, QQmlContext* param3) {
	QString param2_QString = QString::fromUtf8(param2.data, param2.len);
	return new (std::nothrow) QQmlProperty(param1, param2_QString, param3);
}

QQmlProperty* QQmlProperty_new_QObject_QString_QQmlEngine(QObject* param1, struct seaqt_string param2, QQmlEngine* param3) {
	QString param2_QString = QString::fromUtf8(param2.data, param2.len);
	return new (std::nothrow) QQmlProperty(param1, param2_QString, param3);
}

QQmlProperty* QQmlProperty_new_QQmlProperty(QQmlProperty* from) {
	return new (std::nothrow) QQmlProperty(*from);
}

void QQmlProperty_operatorAssign(QQmlProperty* self, QQmlProperty* from) {
	self->operator=(*from);
}

bool QQmlProperty_operatorEqual(const QQmlProperty* self, QQmlProperty* param1) {
	return (*self == *param1);
}

int QQmlProperty_type(const QQmlProperty* self) {
	QQmlProperty::Type _ret = self->type();
	return static_cast<int>(_ret);
}

bool QQmlProperty_isValid(const QQmlProperty* self) {
	return self->isValid();
}

bool QQmlProperty_isProperty(const QQmlProperty* self) {
	return self->isProperty();
}

bool QQmlProperty_isSignalProperty(const QQmlProperty* self) {
	return self->isSignalProperty();
}

int QQmlProperty_propertyType(const QQmlProperty* self) {
	return self->propertyType();
}

int QQmlProperty_propertyTypeCategory(const QQmlProperty* self) {
	QQmlProperty::PropertyTypeCategory _ret = self->propertyTypeCategory();
	return static_cast<int>(_ret);
}

const char* QQmlProperty_propertyTypeName(const QQmlProperty* self) {
	return (const char*) self->propertyTypeName();
}

struct seaqt_string QQmlProperty_name(const QQmlProperty* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVariant* QQmlProperty_read(const QQmlProperty* self) {
	return new QVariant(self->read());
}

QVariant* QQmlProperty_read_QObject_QString(QObject* param1, struct seaqt_string param2) {
	QString param2_QString = QString::fromUtf8(param2.data, param2.len);
	return new QVariant(QQmlProperty::read(param1, param2_QString));
}

QVariant* QQmlProperty_read_QObject_QString_QQmlContext(QObject* param1, struct seaqt_string param2, QQmlContext* param3) {
	QString param2_QString = QString::fromUtf8(param2.data, param2.len);
	return new QVariant(QQmlProperty::read(param1, param2_QString, param3));
}

QVariant* QQmlProperty_read_QObject_QString_QQmlEngine(QObject* param1, struct seaqt_string param2, QQmlEngine* param3) {
	QString param2_QString = QString::fromUtf8(param2.data, param2.len);
	return new QVariant(QQmlProperty::read(param1, param2_QString, param3));
}

bool QQmlProperty_write_QVariant(const QQmlProperty* self, QVariant* param1) {
	return self->write(*param1);
}

bool QQmlProperty_write_QObject_QString_QVariant(QObject* param1, struct seaqt_string param2, QVariant* param3) {
	QString param2_QString = QString::fromUtf8(param2.data, param2.len);
	return QQmlProperty::write(param1, param2_QString, *param3);
}

bool QQmlProperty_write_QObject_QString_QVariant_QQmlContext(QObject* param1, struct seaqt_string param2, QVariant* param3, QQmlContext* param4) {
	QString param2_QString = QString::fromUtf8(param2.data, param2.len);
	return QQmlProperty::write(param1, param2_QString, *param3, param4);
}

bool QQmlProperty_write_QObject_QString_QVariant_QQmlEngine(QObject* param1, struct seaqt_string param2, QVariant* param3, QQmlEngine* param4) {
	QString param2_QString = QString::fromUtf8(param2.data, param2.len);
	return QQmlProperty::write(param1, param2_QString, *param3, param4);
}

bool QQmlProperty_reset(const QQmlProperty* self) {
	return self->reset();
}

bool QQmlProperty_hasNotifySignal(const QQmlProperty* self) {
	return self->hasNotifySignal();
}

bool QQmlProperty_needsNotifySignal(const QQmlProperty* self) {
	return self->needsNotifySignal();
}

bool QQmlProperty_connectNotifySignal_dest_slot(const QQmlProperty* self, QObject* dest, const char* slot) {
	return self->connectNotifySignal(dest, slot);
}

bool QQmlProperty_connectNotifySignal_dest_method(const QQmlProperty* self, QObject* dest, int method) {
	return self->connectNotifySignal(dest, static_cast<int>(method));
}

bool QQmlProperty_isWritable(const QQmlProperty* self) {
	return self->isWritable();
}

bool QQmlProperty_isDesignable(const QQmlProperty* self) {
	return self->isDesignable();
}

bool QQmlProperty_isResettable(const QQmlProperty* self) {
	return self->isResettable();
}

QObject* QQmlProperty_object(const QQmlProperty* self) {
	return self->object();
}

int QQmlProperty_index(const QQmlProperty* self) {
	return self->index();
}

QMetaProperty* QQmlProperty_property(const QQmlProperty* self) {
	return new QMetaProperty(self->property());
}

QMetaMethod* QQmlProperty_method(const QQmlProperty* self) {
	return new QMetaMethod(self->method());
}

void QQmlProperty_delete(QQmlProperty* self) {
	delete self;
}

