#include <QBitArray>
#include <QBitRef>
#include <qbitarray.h>
#include "gen_qbitarray.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QBitArray* QBitArray_new() {
	return new (std::nothrow) QBitArray();
}

QBitArray* QBitArray_new_size(ptrdiff_t size) {
	return new (std::nothrow) QBitArray((qsizetype)(size));
}

QBitArray* QBitArray_new_from(QBitArray* from) {
	return new (std::nothrow) QBitArray(*from);
}

QBitArray* QBitArray_new_size_val(ptrdiff_t size, bool val) {
	return new (std::nothrow) QBitArray((qsizetype)(size), val);
}

void QBitArray_operatorAssign(QBitArray* self, QBitArray* from) {
	self->operator=(*from);
}

void QBitArray_swap(QBitArray* self, QBitArray* other) {
	self->swap(*other);
}

ptrdiff_t QBitArray_size(const QBitArray* self) {
	qsizetype _ret = self->size();
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QBitArray_count(const QBitArray* self) {
	qsizetype _ret = self->count();
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QBitArray_count_on(const QBitArray* self, bool on) {
	qsizetype _ret = self->count(on);
	return static_cast<ptrdiff_t>(_ret);
}

bool QBitArray_isEmpty(const QBitArray* self) {
	return self->isEmpty();
}

bool QBitArray_isNull(const QBitArray* self) {
	return self->isNull();
}

void QBitArray_resize(QBitArray* self, ptrdiff_t size) {
	self->resize((qsizetype)(size));
}

void QBitArray_detach(QBitArray* self) {
	self->detach();
}

bool QBitArray_isDetached(const QBitArray* self) {
	return self->isDetached();
}

void QBitArray_clear(QBitArray* self) {
	self->clear();
}

bool QBitArray_testBit(const QBitArray* self, ptrdiff_t i) {
	return self->testBit((qsizetype)(i));
}

void QBitArray_setBit_i(QBitArray* self, ptrdiff_t i) {
	self->setBit((qsizetype)(i));
}

void QBitArray_setBit_i_val(QBitArray* self, ptrdiff_t i, bool val) {
	self->setBit((qsizetype)(i), val);
}

void QBitArray_clearBit(QBitArray* self, ptrdiff_t i) {
	self->clearBit((qsizetype)(i));
}

bool QBitArray_toggleBit(QBitArray* self, ptrdiff_t i) {
	return self->toggleBit((qsizetype)(i));
}

bool QBitArray_at(const QBitArray* self, ptrdiff_t i) {
	return self->at((qsizetype)(i));
}

QBitRef* QBitArray_operatorSubscript_qsizetype(QBitArray* self, ptrdiff_t i) {
	return new QBitRef(self->operator[]((qsizetype)(i)));
}

bool QBitArray_operatorSubscript_const_qsizetype(const QBitArray* self, ptrdiff_t i) {
	return self->operator[]((qsizetype)(i));
}

void QBitArray_operatorBitwiseAndAssign(QBitArray* self, QBitArray* param1) {
	self->operator&=(*param1);
}

void QBitArray_operatorBitwiseOrAssign(QBitArray* self, QBitArray* param1) {
	self->operator|=(*param1);
}

void QBitArray_operatorBitwiseNotAssign(QBitArray* self, QBitArray* param1) {
	self->operator^=(*param1);
}

bool QBitArray_fill_aval(QBitArray* self, bool aval) {
	return self->fill(aval);
}

void QBitArray_fill_val_first_last(QBitArray* self, bool val, ptrdiff_t first, ptrdiff_t last) {
	self->fill(val, (qsizetype)(first), (qsizetype)(last));
}

void QBitArray_truncate(QBitArray* self, ptrdiff_t pos) {
	self->truncate((qsizetype)(pos));
}

const char* QBitArray_bits(const QBitArray* self) {
	return (const char*) self->bits();
}

QBitArray* QBitArray_fromBits(const char* data, ptrdiff_t len) {
	return new QBitArray(QBitArray::fromBits(data, (qsizetype)(len)));
}

unsigned int QBitArray_toUInt32_endianness(const QBitArray* self, int endianness) {
	quint32 _ret = self->toUInt32(static_cast<QSysInfo::Endian>(endianness));
	return static_cast<unsigned int>(_ret);
}

bool QBitArray_fill_aval_asize(QBitArray* self, bool aval, ptrdiff_t asize) {
	return self->fill(aval, (qsizetype)(asize));
}

unsigned int QBitArray_toUInt32_endianness_ok(const QBitArray* self, int endianness, bool* ok) {
	quint32 _ret = self->toUInt32(static_cast<QSysInfo::Endian>(endianness), ok);
	return static_cast<unsigned int>(_ret);
}

void QBitArray_delete(QBitArray* self) {
	delete self;
}

QBitRef* QBitRef_new(QBitRef* from) {
	return new (std::nothrow) QBitRef(*from);
}

bool QBitRef_ToBool(const QBitRef* self) {
	return self->operator bool();
}

bool QBitRef_operatorNot(const QBitRef* self) {
	return self->operator!();
}

void QBitRef_operatorAssign_from(QBitRef* self, QBitRef* from) {
	self->operator=(*from);
}

void QBitRef_operatorAssign_val(QBitRef* self, bool val) {
	self->operator=(val);
}

void QBitRef_delete(QBitRef* self) {
	delete self;
}

