#include <QByteArray>
#include <QByteArrayView>
#include <QDataStream>
#include <QDebug>
#include <QMetaObject>
#include <QMetaType>
#include <QPartialOrdering>
#include <qmetatype.h>
#include "gen_qmetatype.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QMetaType* QMetaType_new_type(int type) {
	return new (std::nothrow) QMetaType(static_cast<int>(type));
}

QMetaType* QMetaType_new_d(const void* d) {
	return new (std::nothrow) QMetaType(static_cast<const QtPrivate::QMetaTypeInterface*>(d));
}

QMetaType* QMetaType_new() {
	return new (std::nothrow) QMetaType();
}

QMetaType* QMetaType_new_from(QMetaType* from) {
	return new (std::nothrow) QMetaType(*from);
}

void QMetaType_registerNormalizedTypedef(struct seaqt_string normalizedTypeName, QMetaType* type) {
	QByteArray normalizedTypeName_QByteArray(normalizedTypeName.data, normalizedTypeName.len);
	QMetaType::registerNormalizedTypedef(normalizedTypeName_QByteArray, *type);
}

int QMetaType_type_char(const char* typeName) {
	return QMetaType::type(typeName);
}

int QMetaType_type_QByteArray(struct seaqt_string typeName) {
	QByteArray typeName_QByteArray(typeName.data, typeName.len);
	return QMetaType::type(typeName_QByteArray);
}

const char* QMetaType_typeName(int type) {
	return (const char*) QMetaType::typeName(static_cast<int>(type));
}

int QMetaType_sizeOf_type(int type) {
	return QMetaType::sizeOf(static_cast<int>(type));
}

int QMetaType_typeFlags(int type) {
	QMetaType::TypeFlags _ret = QMetaType::typeFlags(static_cast<int>(type));
	return static_cast<int>(_ret);
}

QMetaObject* QMetaType_metaObjectForType(int type) {
	return (QMetaObject*) QMetaType::metaObjectForType(static_cast<int>(type));
}

void* QMetaType_create_type(int type) {
	return QMetaType::create(static_cast<int>(type));
}

void QMetaType_destroy_type_data(int type, void* data) {
	QMetaType::destroy(static_cast<int>(type), data);
}

void* QMetaType_construct_type_where_copy(int type, void* where, const void* copy) {
	return QMetaType::construct(static_cast<int>(type), where, copy);
}

void QMetaType_destruct_type_where(int type, void* where) {
	QMetaType::destruct(static_cast<int>(type), where);
}

bool QMetaType_isRegistered_type(int type) {
	return QMetaType::isRegistered(static_cast<int>(type));
}

bool QMetaType_isValid(const QMetaType* self) {
	return self->isValid();
}

bool QMetaType_isRegistered(const QMetaType* self) {
	return self->isRegistered();
}

int QMetaType_id(const QMetaType* self) {
	return self->id();
}

ptrdiff_t QMetaType_sizeOf(const QMetaType* self) {
	qsizetype _ret = self->sizeOf();
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QMetaType_alignOf(const QMetaType* self) {
	qsizetype _ret = self->alignOf();
	return static_cast<ptrdiff_t>(_ret);
}

int QMetaType_flags(const QMetaType* self) {
	QMetaType::TypeFlags _ret = self->flags();
	return static_cast<int>(_ret);
}

QMetaObject* QMetaType_metaObject(const QMetaType* self) {
	return (QMetaObject*) self->metaObject();
}

const char* QMetaType_name(const QMetaType* self) {
	return (const char*) self->name();
}

void* QMetaType_create(const QMetaType* self) {
	return self->create();
}

void QMetaType_destroy_data(const QMetaType* self, void* data) {
	self->destroy(data);
}

void* QMetaType_construct_where(const QMetaType* self, void* where) {
	return self->construct(where);
}

void QMetaType_destruct_data(const QMetaType* self, void* data) {
	self->destruct(data);
}

QPartialOrdering* QMetaType_compare_lhs_rhs(const QMetaType* self, const void* lhs, const void* rhs) {
	return new QPartialOrdering(self->compare(lhs, rhs));
}

bool QMetaType_equals_lhs_rhs(const QMetaType* self, const void* lhs, const void* rhs) {
	return self->equals(lhs, rhs);
}

bool QMetaType_isEqualityComparable(const QMetaType* self) {
	return self->isEqualityComparable();
}

bool QMetaType_isOrdered(const QMetaType* self) {
	return self->isOrdered();
}

bool QMetaType_save_stream_data(const QMetaType* self, QDataStream* stream, const void* data) {
	return self->save(*stream, data);
}

bool QMetaType_load_stream_data(const QMetaType* self, QDataStream* stream, void* data) {
	return self->load(*stream, data);
}

bool QMetaType_hasRegisteredDataStreamOperators(const QMetaType* self) {
	return self->hasRegisteredDataStreamOperators();
}

bool QMetaType_save_stream_type_data(QDataStream* stream, int type, const void* data) {
	return QMetaType::save(*stream, static_cast<int>(type), data);
}

bool QMetaType_load_stream_type_data(QDataStream* stream, int type, void* data) {
	return QMetaType::load(*stream, static_cast<int>(type), data);
}

QMetaType* QMetaType_fromName(struct seaqt_string name) {
	QByteArrayView name_QByteArray(name.data, name.len);
	return new QMetaType(QMetaType::fromName(name_QByteArray));
}

bool QMetaType_debugStream_dbg_rhs(QMetaType* self, QDebug* dbg, const void* rhs) {
	return self->debugStream(*dbg, rhs);
}

bool QMetaType_hasRegisteredDebugStreamOperator(const QMetaType* self) {
	return self->hasRegisteredDebugStreamOperator();
}

bool QMetaType_debugStream_dbg_rhs_typeId(QDebug* dbg, const void* rhs, int typeId) {
	return QMetaType::debugStream(*dbg, rhs, static_cast<int>(typeId));
}

bool QMetaType_hasRegisteredDebugStreamOperator_typeId(int typeId) {
	return QMetaType::hasRegisteredDebugStreamOperator(static_cast<int>(typeId));
}

bool QMetaType_convert_fromType_from_toType_to(QMetaType* fromType, const void* from, QMetaType* toType, void* to) {
	return QMetaType::convert(*fromType, from, *toType, to);
}

bool QMetaType_canConvert(QMetaType* fromType, QMetaType* toType) {
	return QMetaType::canConvert(*fromType, *toType);
}

bool QMetaType_view(QMetaType* fromType, void* from, QMetaType* toType, void* to) {
	return QMetaType::view(*fromType, from, *toType, to);
}

bool QMetaType_canView(QMetaType* fromType, QMetaType* toType) {
	return QMetaType::canView(*fromType, *toType);
}

bool QMetaType_convert_from_fromTypeId_to_toTypeId(const void* from, int fromTypeId, void* to, int toTypeId) {
	return QMetaType::convert(from, static_cast<int>(fromTypeId), to, static_cast<int>(toTypeId));
}

bool QMetaType_compare_lhs_rhs_typeId_result(const void* lhs, const void* rhs, int typeId, int* result) {
	return QMetaType::compare(lhs, rhs, static_cast<int>(typeId), static_cast<int*>(result));
}

bool QMetaType_equals_lhs_rhs_typeId_result(const void* lhs, const void* rhs, int typeId, int* result) {
	return QMetaType::equals(lhs, rhs, static_cast<int>(typeId), static_cast<int*>(result));
}

bool QMetaType_hasRegisteredConverterFunction(QMetaType* fromType, QMetaType* toType) {
	return QMetaType::hasRegisteredConverterFunction(*fromType, *toType);
}

bool QMetaType_hasRegisteredMutableViewFunction(QMetaType* fromType, QMetaType* toType) {
	return QMetaType::hasRegisteredMutableViewFunction(*fromType, *toType);
}

void QMetaType_unregisterConverterFunction(QMetaType* from, QMetaType* to) {
	QMetaType::unregisterConverterFunction(*from, *to);
}

void QMetaType_unregisterMutableViewFunction(QMetaType* from, QMetaType* to) {
	QMetaType::unregisterMutableViewFunction(*from, *to);
}

void QMetaType_unregisterMetaType(QMetaType* type) {
	QMetaType::unregisterMetaType(*type);
}

const void* QMetaType_iface(QMetaType* self) {
	return (const void*) self->iface();
}

const void* QMetaType_iface_const(const QMetaType* self) {
	return (const void*) self->iface();
}

void* QMetaType_create_type_copy(int type, const void* copy) {
	return QMetaType::create(static_cast<int>(type), copy);
}

int QMetaType_id_int(const QMetaType* self, int param1) {
	return self->id(static_cast<int>(param1));
}

void* QMetaType_create_copy(const QMetaType* self, const void* copy) {
	return self->create(copy);
}

void* QMetaType_construct_where_copy(const QMetaType* self, void* where, const void* copy) {
	return self->construct(where, copy);
}

void QMetaType_delete(QMetaType* self) {
	delete self;
}

