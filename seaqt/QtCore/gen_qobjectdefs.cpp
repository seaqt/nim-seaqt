#include <QByteArray>
#include <QGenericArgument>
#include <QGenericReturnArgument>
#include <QMetaClassInfo>
#include <QMetaEnum>
#include <QMetaMethod>
#include <QMetaMethodArgument>
#include <QMetaMethodReturnArgument>
#include <QMetaObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Data
#define WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__SuperData
#include <QMetaProperty>
#include <QMetaType>
#include <QMethodRawArguments>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qobjectdefs.h>
#include "gen_qobjectdefs.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QMethodRawArguments_delete(QMethodRawArguments* self) {
	delete self;
}

QGenericArgument* QGenericArgument_new() {
	return new (std::nothrow) QGenericArgument();
}

QGenericArgument* QGenericArgument_new_from(QGenericArgument* from) {
	return new (std::nothrow) QGenericArgument(*from);
}

QGenericArgument* QGenericArgument_new_aName(const char* aName) {
	return new (std::nothrow) QGenericArgument(aName);
}

QGenericArgument* QGenericArgument_new_aName_aData(const char* aName, const void* aData) {
	return new (std::nothrow) QGenericArgument(aName, aData);
}

void* QGenericArgument_data(const QGenericArgument* self) {
	return self->data();
}

const char* QGenericArgument_name(const QGenericArgument* self) {
	return (const char*) self->name();
}

void QGenericArgument_delete(QGenericArgument* self) {
	delete self;
}

QGenericReturnArgument* QGenericReturnArgument_new() {
	return new (std::nothrow) QGenericReturnArgument();
}

QGenericReturnArgument* QGenericReturnArgument_new_from(QGenericReturnArgument* from) {
	return new (std::nothrow) QGenericReturnArgument(*from);
}

QGenericReturnArgument* QGenericReturnArgument_new_aName(const char* aName) {
	return new (std::nothrow) QGenericReturnArgument(aName);
}

QGenericReturnArgument* QGenericReturnArgument_new_aName_aData(const char* aName, void* aData) {
	return new (std::nothrow) QGenericReturnArgument(aName, aData);
}

void QGenericReturnArgument_virtbase(QGenericReturnArgument* src, QGenericArgument** outptr_QGenericArgument) {
	*outptr_QGenericArgument = static_cast<QGenericArgument*>(src);
}

void QGenericReturnArgument_delete(QGenericReturnArgument* self) {
	delete self;
}

const void* QMetaMethodArgument_metaType(const QMetaMethodArgument* self) {
	return (const void*) self->metaType;
}

void QMetaMethodArgument_setMetaType(QMetaMethodArgument* self, const void* metaType) {
	self->metaType = static_cast<const QtPrivate::QMetaTypeInterface*>(metaType);
}

const char* QMetaMethodArgument_name(const QMetaMethodArgument* self) {
	return (const char*) self->name;
}

void QMetaMethodArgument_setName(QMetaMethodArgument* self, const char* name) {
	self->name = name;
}

void QMetaMethodArgument_delete(QMetaMethodArgument* self) {
	delete self;
}

QMetaMethodReturnArgument* QMetaMethodReturnArgument_new() {
	return new (std::nothrow) QMetaMethodReturnArgument();
}

QMetaMethodReturnArgument* QMetaMethodReturnArgument_new_from(QMetaMethodReturnArgument* from) {
	return new (std::nothrow) QMetaMethodReturnArgument(*from);
}

const void* QMetaMethodReturnArgument_metaType(const QMetaMethodReturnArgument* self) {
	return (const void*) self->metaType;
}

void QMetaMethodReturnArgument_setMetaType(QMetaMethodReturnArgument* self, const void* metaType) {
	self->metaType = static_cast<const QtPrivate::QMetaTypeInterface*>(metaType);
}

const char* QMetaMethodReturnArgument_name(const QMetaMethodReturnArgument* self) {
	return (const char*) self->name;
}

void QMetaMethodReturnArgument_setName(QMetaMethodReturnArgument* self, const char* name) {
	self->name = name;
}

void QMetaMethodReturnArgument_delete(QMetaMethodReturnArgument* self) {
	delete self;
}

QMetaObject* QMetaObject_new() {
	return new (std::nothrow) QMetaObject();
}

QMetaObject* QMetaObject_new_from(QMetaObject* from) {
	return new (std::nothrow) QMetaObject(*from);
}

const char* QMetaObject_className(const QMetaObject* self) {
	return (const char*) self->className();
}

QMetaObject* QMetaObject_superClass(const QMetaObject* self) {
	return (QMetaObject*) self->superClass();
}

bool QMetaObject_inherits(const QMetaObject* self, QMetaObject* metaObject) {
	return self->inherits(metaObject);
}

QObject* QMetaObject_cast_const_pQObject(const QMetaObject* self, QObject* obj) {
	return self->cast(obj);
}

QObject* QMetaObject_cast_const_pcQObject(const QMetaObject* self, QObject* obj) {
	return (QObject*) self->cast(obj);
}

struct seaqt_string QMetaObject_tr_s_c(const QMetaObject* self, const char* s, const char* c) {
	QString _ret = self->tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaType* QMetaObject_metaType(const QMetaObject* self) {
	return new QMetaType(self->metaType());
}

int QMetaObject_methodOffset(const QMetaObject* self) {
	return self->methodOffset();
}

int QMetaObject_enumeratorOffset(const QMetaObject* self) {
	return self->enumeratorOffset();
}

int QMetaObject_propertyOffset(const QMetaObject* self) {
	return self->propertyOffset();
}

int QMetaObject_classInfoOffset(const QMetaObject* self) {
	return self->classInfoOffset();
}

int QMetaObject_constructorCount(const QMetaObject* self) {
	return self->constructorCount();
}

int QMetaObject_methodCount(const QMetaObject* self) {
	return self->methodCount();
}

int QMetaObject_enumeratorCount(const QMetaObject* self) {
	return self->enumeratorCount();
}

int QMetaObject_propertyCount(const QMetaObject* self) {
	return self->propertyCount();
}

int QMetaObject_classInfoCount(const QMetaObject* self) {
	return self->classInfoCount();
}

int QMetaObject_indexOfConstructor(const QMetaObject* self, const char* constructor) {
	return self->indexOfConstructor(constructor);
}

int QMetaObject_indexOfMethod(const QMetaObject* self, const char* method) {
	return self->indexOfMethod(method);
}

int QMetaObject_indexOfSignal(const QMetaObject* self, const char* signal) {
	return self->indexOfSignal(signal);
}

int QMetaObject_indexOfSlot(const QMetaObject* self, const char* slot) {
	return self->indexOfSlot(slot);
}

int QMetaObject_indexOfEnumerator(const QMetaObject* self, const char* name) {
	return self->indexOfEnumerator(name);
}

int QMetaObject_indexOfProperty(const QMetaObject* self, const char* name) {
	return self->indexOfProperty(name);
}

int QMetaObject_indexOfClassInfo(const QMetaObject* self, const char* name) {
	return self->indexOfClassInfo(name);
}

QMetaMethod* QMetaObject_constructor(const QMetaObject* self, int index) {
	return new QMetaMethod(self->constructor(static_cast<int>(index)));
}

QMetaMethod* QMetaObject_method(const QMetaObject* self, int index) {
	return new QMetaMethod(self->method(static_cast<int>(index)));
}

QMetaEnum* QMetaObject_enumerator(const QMetaObject* self, int index) {
	return new QMetaEnum(self->enumerator(static_cast<int>(index)));
}

QMetaProperty* QMetaObject_property(const QMetaObject* self, int index) {
	return new QMetaProperty(self->property(static_cast<int>(index)));
}

QMetaClassInfo* QMetaObject_classInfo(const QMetaObject* self, int index) {
	return new QMetaClassInfo(self->classInfo(static_cast<int>(index)));
}

QMetaProperty* QMetaObject_userProperty(const QMetaObject* self) {
	return new QMetaProperty(self->userProperty());
}

bool QMetaObject_checkConnectArgs_char_char(const char* signal, const char* method) {
	return QMetaObject::checkConnectArgs(signal, method);
}

bool QMetaObject_checkConnectArgs_QMetaMethod_QMetaMethod(QMetaMethod* signal, QMetaMethod* method) {
	return QMetaObject::checkConnectArgs(*signal, *method);
}

struct seaqt_string QMetaObject_normalizedSignature(const char* method) {
	QByteArray _qb = QMetaObject::normalizedSignature(method);
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMetaObject_normalizedType(const char* type) {
	QByteArray _qb = QMetaObject::normalizedType(type);
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

QMetaObject__Connection* QMetaObject_connect_sender_signal_index_receiver_method_index(QObject* sender, int signal_index, QObject* receiver, int method_index) {
	return new QMetaObject::Connection(QMetaObject::connect(sender, static_cast<int>(signal_index), receiver, static_cast<int>(method_index)));
}

bool QMetaObject_disconnect(QObject* sender, int signal_index, QObject* receiver, int method_index) {
	return QMetaObject::disconnect(sender, static_cast<int>(signal_index), receiver, static_cast<int>(method_index));
}

bool QMetaObject_disconnectOne(QObject* sender, int signal_index, QObject* receiver, int method_index) {
	return QMetaObject::disconnectOne(sender, static_cast<int>(signal_index), receiver, static_cast<int>(method_index));
}

void QMetaObject_connectSlotsByName(QObject* o) {
	QMetaObject::connectSlotsByName(o);
}

void QMetaObject_activate_QObject_int_void(QObject* sender, int signal_index, void** argv) {
	QMetaObject::activate(sender, static_cast<int>(signal_index), argv);
}

void QMetaObject_activate_QObject_QMetaObject_int_void(QObject* sender, QMetaObject* param2, int local_signal_index, void** argv) {
	QMetaObject::activate(sender, param2, static_cast<int>(local_signal_index), argv);
}

void QMetaObject_activate_QObject_int_int_void(QObject* sender, int signal_offset, int local_signal_index, void** argv) {
	QMetaObject::activate(sender, static_cast<int>(signal_offset), static_cast<int>(local_signal_index), argv);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *ret);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument(QObject* obj, const char* member, QGenericReturnArgument* ret) {
	return QMetaObject::invokeMethod(obj, member, *ret);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(type), *val0);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0) {
	return QMetaObject::invokeMethod(obj, member, *val0);
}

QObject* QMetaObject_newInstance_val0(const QMetaObject* self, QGenericArgument* val0) {
	return self->newInstance(*val0);
}

int QMetaObject_static_metacall(const QMetaObject* self, int param1, int param2, void** param3) {
	return self->static_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QMetaObject_metacall(QObject* param1, int param2, int param3, void** param4) {
	return QMetaObject::metacall(param1, static_cast<QMetaObject::Call>(param2), static_cast<int>(param3), param4);
}

void QMetaObject_operatorAssign(QMetaObject* self, QMetaObject* from) {
	self->operator=(*from);
}

struct seaqt_string QMetaObject_tr_s_c_n(const QMetaObject* self, const char* s, const char* c, int n) {
	QString _ret = self->tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject__Connection* QMetaObject_connect_sender_signal_index_receiver_method_index_type(QObject* sender, int signal_index, QObject* receiver, int method_index, int type) {
	return new QMetaObject::Connection(QMetaObject::connect(sender, static_cast<int>(signal_index), receiver, static_cast<int>(method_index), static_cast<int>(type)));
}

QMetaObject__Connection* QMetaObject_connect_sender_signal_index_receiver_method_index_type_types(QObject* sender, int signal_index, QObject* receiver, int method_index, int type, int* types) {
	return new QMetaObject::Connection(QMetaObject::connect(sender, static_cast<int>(signal_index), receiver, static_cast<int>(method_index), static_cast<int>(type), static_cast<int*>(types)));
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *ret, *val0);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *ret, *val0, *val1);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *ret, *val0, *val1, *val2);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *ret, *val0, *val1, *val2, *val3);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *ret, *val0, *val1, *val2, *val3, *val4);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *ret, *val0, *val1, *val2, *val3, *val4, *val5);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *ret, *val0, *val1, *val2, *val3, *val4, *val5, *val6);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *ret, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *ret, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(param3), *ret, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8, *val9);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0) {
	return QMetaObject::invokeMethod(obj, member, *ret, *val0);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1) {
	return QMetaObject::invokeMethod(obj, member, *ret, *val0, *val1);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2) {
	return QMetaObject::invokeMethod(obj, member, *ret, *val0, *val1, *val2);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3) {
	return QMetaObject::invokeMethod(obj, member, *ret, *val0, *val1, *val2, *val3);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4) {
	return QMetaObject::invokeMethod(obj, member, *ret, *val0, *val1, *val2, *val3, *val4);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5) {
	return QMetaObject::invokeMethod(obj, member, *ret, *val0, *val1, *val2, *val3, *val4, *val5);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6) {
	return QMetaObject::invokeMethod(obj, member, *ret, *val0, *val1, *val2, *val3, *val4, *val5, *val6);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7) {
	return QMetaObject::invokeMethod(obj, member, *ret, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8) {
	return QMetaObject::invokeMethod(obj, member, *ret, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9) {
	return QMetaObject::invokeMethod(obj, member, *ret, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8, *val9);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(type), *val0, *val1);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(type), *val0, *val1, *val2);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(type), *val0, *val1, *val2, *val3);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(type), *val0, *val1, *val2, *val3, *val4);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(type), *val0, *val1, *val2, *val3, *val4, *val5);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(type), *val0, *val1, *val2, *val3, *val4, *val5, *val6);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(type), *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(type), *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8);
}

bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9) {
	return QMetaObject::invokeMethod(obj, member, static_cast<Qt::ConnectionType>(type), *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8, *val9);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1) {
	return QMetaObject::invokeMethod(obj, member, *val0, *val1);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2) {
	return QMetaObject::invokeMethod(obj, member, *val0, *val1, *val2);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3) {
	return QMetaObject::invokeMethod(obj, member, *val0, *val1, *val2, *val3);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4) {
	return QMetaObject::invokeMethod(obj, member, *val0, *val1, *val2, *val3, *val4);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5) {
	return QMetaObject::invokeMethod(obj, member, *val0, *val1, *val2, *val3, *val4, *val5);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6) {
	return QMetaObject::invokeMethod(obj, member, *val0, *val1, *val2, *val3, *val4, *val5, *val6);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7) {
	return QMetaObject::invokeMethod(obj, member, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8) {
	return QMetaObject::invokeMethod(obj, member, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8);
}

bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9) {
	return QMetaObject::invokeMethod(obj, member, *val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8, *val9);
}

QObject* QMetaObject_newInstance_val0_val1(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1) {
	return self->newInstance(*val0, *val1);
}

QObject* QMetaObject_newInstance_val0_val1_val2(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2) {
	return self->newInstance(*val0, *val1, *val2);
}

QObject* QMetaObject_newInstance_val0_val1_val2_val3(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3) {
	return self->newInstance(*val0, *val1, *val2, *val3);
}

QObject* QMetaObject_newInstance_val0_val1_val2_val3_val4(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4) {
	return self->newInstance(*val0, *val1, *val2, *val3, *val4);
}

QObject* QMetaObject_newInstance_val0_val1_val2_val3_val4_val5(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5) {
	return self->newInstance(*val0, *val1, *val2, *val3, *val4, *val5);
}

QObject* QMetaObject_newInstance_val0_val1_val2_val3_val4_val5_val6(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6) {
	return self->newInstance(*val0, *val1, *val2, *val3, *val4, *val5, *val6);
}

QObject* QMetaObject_newInstance_val0_val1_val2_val3_val4_val5_val6_val7(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7) {
	return self->newInstance(*val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7);
}

QObject* QMetaObject_newInstance_val0_val1_val2_val3_val4_val5_val6_val7_val8(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8) {
	return self->newInstance(*val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8);
}

QObject* QMetaObject_newInstance_val0_val1_val2_val3_val4_val5_val6_val7_val8_val9(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9) {
	return self->newInstance(*val0, *val1, *val2, *val3, *val4, *val5, *val6, *val7, *val8, *val9);
}

void QMetaObject_delete(QMetaObject* self) {
	delete self;
}

QMetaObject__Connection* QMetaObject__Connection_new() {
	return new (std::nothrow) QMetaObject__Connection();
}

QMetaObject__Connection* QMetaObject__Connection_new_from(QMetaObject__Connection* from) {
	return new (std::nothrow) QMetaObject__Connection(*from);
}

void QMetaObject__Connection_operatorAssign(QMetaObject__Connection* self, QMetaObject__Connection* from) {
	self->operator=(*from);
}

void QMetaObject__Connection_swap(QMetaObject__Connection* self, QMetaObject__Connection* other) {
	self->swap(*other);
}

void QMetaObject__Connection_delete(QMetaObject__Connection* self) {
	delete self;
}

QMetaObject__SuperData* QMetaObject__SuperData_new() {
	return new (std::nothrow) QMetaObject__SuperData();
}

QMetaObject__SuperData* QMetaObject__SuperData_new_QMetaObject(QMetaObject* mo) {
	return new (std::nothrow) QMetaObject__SuperData(mo);
}

QMetaObject__SuperData* QMetaObject__SuperData_new_QMetaObject_SuperData(QMetaObject__SuperData* from) {
	return new (std::nothrow) QMetaObject__SuperData(*from);
}

QMetaObject* QMetaObject__SuperData_direct(const QMetaObject__SuperData* self) {
	return (QMetaObject*) self->direct;
}

void QMetaObject__SuperData_setDirect(QMetaObject__SuperData* self, QMetaObject* direct) {
	self->direct = direct;
}

QMetaObject* QMetaObject__SuperData_operatorMinusGreater(const QMetaObject__SuperData* self) {
	return (QMetaObject*) self->operator->();
}

QMetaObject* QMetaObject__SuperData_ToConstQMetaObjectMultiply(const QMetaObject__SuperData* self) {
	return (QMetaObject*) self->operator const QMetaObject *();
}

void QMetaObject__SuperData_operatorAssign(QMetaObject__SuperData* self, QMetaObject__SuperData* from) {
	self->operator=(*from);
}

void QMetaObject__SuperData_delete(QMetaObject__SuperData* self) {
	delete self;
}

QMetaObject__Data* QMetaObject__Data_new() {
	return new (std::nothrow) QMetaObject__Data();
}

QMetaObject__Data* QMetaObject__Data_new_from(QMetaObject__Data* from) {
	return new (std::nothrow) QMetaObject__Data(*from);
}

QMetaObject__SuperData* QMetaObject__Data_superdata(const QMetaObject__Data* self) {
	return new QMetaObject::SuperData(self->superdata);
}

void QMetaObject__Data_setSuperdata(QMetaObject__Data* self, QMetaObject__SuperData* superdata) {
	self->superdata = *superdata;
}

const unsigned int* QMetaObject__Data_stringdata(const QMetaObject__Data* self) {
	const uint* stringdata_ret = self->stringdata;
	return static_cast<const unsigned int*>(stringdata_ret);
}

void QMetaObject__Data_setStringdata(QMetaObject__Data* self, const unsigned int* stringdata) {
	self->stringdata = static_cast<const uint*>(stringdata);
}

const unsigned int* QMetaObject__Data_data(const QMetaObject__Data* self) {
	const uint* data_ret = self->data;
	return static_cast<const unsigned int*>(data_ret);
}

void QMetaObject__Data_setData(QMetaObject__Data* self, const unsigned int* data) {
	self->data = static_cast<const uint*>(data);
}

QMetaObject__SuperData* QMetaObject__Data_relatedMetaObjects(const QMetaObject__Data* self) {
	return (QMetaObject__SuperData*) self->relatedMetaObjects;
}

void QMetaObject__Data_setRelatedMetaObjects(QMetaObject__Data* self, QMetaObject__SuperData* relatedMetaObjects) {
	self->relatedMetaObjects = relatedMetaObjects;
}

void QMetaObject__Data_operatorAssign(QMetaObject__Data* self, QMetaObject__Data* from) {
	self->operator=(*from);
}

void QMetaObject__Data_delete(QMetaObject__Data* self) {
	delete self;
}

