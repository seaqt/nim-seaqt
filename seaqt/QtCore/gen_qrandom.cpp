#include <QRandomGenerator>
#include <QRandomGenerator64>
#include <qrandom.h>
#include "gen_qrandom.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QRandomGenerator* QRandomGenerator_new() {
	return new (std::nothrow) QRandomGenerator();
}

QRandomGenerator* QRandomGenerator_new_seedBuffer_len(const unsigned int* seedBuffer, ptrdiff_t len) {
	return new (std::nothrow) QRandomGenerator(static_cast<const quint32*>(seedBuffer), (qsizetype)(len));
}

QRandomGenerator* QRandomGenerator_new_begin_end(const unsigned int* begin, const unsigned int* end) {
	return new (std::nothrow) QRandomGenerator(static_cast<const quint32*>(begin), static_cast<const quint32*>(end));
}

QRandomGenerator* QRandomGenerator_new_from(QRandomGenerator* from) {
	return new (std::nothrow) QRandomGenerator(*from);
}

QRandomGenerator* QRandomGenerator_new_seedValue(unsigned int seedValue) {
	return new (std::nothrow) QRandomGenerator(static_cast<quint32>(seedValue));
}

void QRandomGenerator_operatorAssign(QRandomGenerator* self, QRandomGenerator* from) {
	self->operator=(*from);
}

unsigned int QRandomGenerator_generate(QRandomGenerator* self) {
	quint32 _ret = self->generate();
	return static_cast<unsigned int>(_ret);
}

unsigned long long QRandomGenerator_generate64(QRandomGenerator* self) {
	quint64 _ret = self->generate64();
	return static_cast<unsigned long long>(_ret);
}

double QRandomGenerator_generateDouble(QRandomGenerator* self) {
	return self->generateDouble();
}

double QRandomGenerator_bounded_double(QRandomGenerator* self, double highest) {
	return self->bounded(static_cast<double>(highest));
}

unsigned int QRandomGenerator_bounded_quint32(QRandomGenerator* self, unsigned int highest) {
	quint32 _ret = self->bounded(static_cast<quint32>(highest));
	return static_cast<unsigned int>(_ret);
}

unsigned int QRandomGenerator_bounded_quint32_quint32(QRandomGenerator* self, unsigned int lowest, unsigned int highest) {
	quint32 _ret = self->bounded(static_cast<quint32>(lowest), static_cast<quint32>(highest));
	return static_cast<unsigned int>(_ret);
}

int QRandomGenerator_bounded_int(QRandomGenerator* self, int highest) {
	return self->bounded(static_cast<int>(highest));
}

int QRandomGenerator_bounded_int_int(QRandomGenerator* self, int lowest, int highest) {
	return self->bounded(static_cast<int>(lowest), static_cast<int>(highest));
}

void QRandomGenerator_generate_begin_end(QRandomGenerator* self, unsigned int* begin, unsigned int* end) {
	self->generate(static_cast<quint32*>(begin), static_cast<quint32*>(end));
}

unsigned int QRandomGenerator_operatorCall(QRandomGenerator* self) {
	QRandomGenerator::result_type _ret = self->operator()();
	return static_cast<unsigned int>(_ret);
}

void QRandomGenerator_seed(QRandomGenerator* self) {
	self->seed();
}

void QRandomGenerator_discard(QRandomGenerator* self, unsigned long long z) {
	self->discard(static_cast<unsigned long long>(z));
}

unsigned int QRandomGenerator_min() {
	QRandomGenerator::result_type _ret = QRandomGenerator::min();
	return static_cast<unsigned int>(_ret);
}

unsigned int QRandomGenerator_max() {
	QRandomGenerator::result_type _ret = QRandomGenerator::max();
	return static_cast<unsigned int>(_ret);
}

QRandomGenerator* QRandomGenerator_system() {
	return QRandomGenerator::system();
}

QRandomGenerator* QRandomGenerator_global() {
	return QRandomGenerator::global();
}

QRandomGenerator* QRandomGenerator_securelySeeded() {
	return new QRandomGenerator(QRandomGenerator::securelySeeded());
}

void QRandomGenerator_seed_s(QRandomGenerator* self, unsigned int s) {
	self->seed(static_cast<quint32>(s));
}

void QRandomGenerator_delete(QRandomGenerator* self) {
	delete self;
}

QRandomGenerator64* QRandomGenerator64_new() {
	return new (std::nothrow) QRandomGenerator64();
}

QRandomGenerator64* QRandomGenerator64_new_seedBuffer_len(const unsigned int* seedBuffer, ptrdiff_t len) {
	return new (std::nothrow) QRandomGenerator64(static_cast<const quint32*>(seedBuffer), (qsizetype)(len));
}

QRandomGenerator64* QRandomGenerator64_new_begin_end(const unsigned int* begin, const unsigned int* end) {
	return new (std::nothrow) QRandomGenerator64(static_cast<const quint32*>(begin), static_cast<const quint32*>(end));
}

QRandomGenerator64* QRandomGenerator64_new_other(QRandomGenerator* other) {
	return new (std::nothrow) QRandomGenerator64(*other);
}

QRandomGenerator64* QRandomGenerator64_new_from(QRandomGenerator64* from) {
	return new (std::nothrow) QRandomGenerator64(*from);
}

QRandomGenerator64* QRandomGenerator64_new_seedValue(unsigned int seedValue) {
	return new (std::nothrow) QRandomGenerator64(static_cast<quint32>(seedValue));
}

void QRandomGenerator64_virtbase(QRandomGenerator64* src, QRandomGenerator** outptr_QRandomGenerator) {
	*outptr_QRandomGenerator = static_cast<QRandomGenerator*>(src);
}

unsigned long long QRandomGenerator64_generate(QRandomGenerator64* self) {
	quint64 _ret = self->generate();
	return static_cast<unsigned long long>(_ret);
}

unsigned long long QRandomGenerator64_operatorCall(QRandomGenerator64* self) {
	QRandomGenerator64::result_type _ret = self->operator()();
	return static_cast<unsigned long long>(_ret);
}

void QRandomGenerator64_discard(QRandomGenerator64* self, unsigned long long z) {
	self->discard(static_cast<unsigned long long>(z));
}

unsigned long long QRandomGenerator64_min() {
	QRandomGenerator64::result_type _ret = QRandomGenerator64::min();
	return static_cast<unsigned long long>(_ret);
}

unsigned long long QRandomGenerator64_max() {
	QRandomGenerator64::result_type _ret = QRandomGenerator64::max();
	return static_cast<unsigned long long>(_ret);
}

QRandomGenerator64* QRandomGenerator64_system() {
	return QRandomGenerator64::system();
}

QRandomGenerator64* QRandomGenerator64_global() {
	return QRandomGenerator64::global();
}

QRandomGenerator64* QRandomGenerator64_securelySeeded() {
	return new QRandomGenerator64(QRandomGenerator64::securelySeeded());
}

void QRandomGenerator64_operatorAssign(QRandomGenerator64* self, QRandomGenerator64* from) {
	self->operator=(*from);
}

void QRandomGenerator64_delete(QRandomGenerator64* self) {
	delete self;
}

