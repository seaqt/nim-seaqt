#pragma once
#ifndef SEAQT_QTCORE_GEN_QRANDOM_H
#define SEAQT_QTCORE_GEN_QRANDOM_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QRandomGenerator;
class QRandomGenerator64;
#else
typedef struct QRandomGenerator QRandomGenerator;
typedef struct QRandomGenerator64 QRandomGenerator64;
#endif

QRandomGenerator* QRandomGenerator_new();
QRandomGenerator* QRandomGenerator_new_seedBuffer_len(const unsigned int* seedBuffer, ptrdiff_t len);
QRandomGenerator* QRandomGenerator_new_begin_end(const unsigned int* begin, const unsigned int* end);
QRandomGenerator* QRandomGenerator_new_from(QRandomGenerator* from);
QRandomGenerator* QRandomGenerator_new_seedValue(unsigned int seedValue);

void QRandomGenerator_operatorAssign(QRandomGenerator* self, QRandomGenerator* from);
unsigned int QRandomGenerator_generate(QRandomGenerator* self);
unsigned long long QRandomGenerator_generate64(QRandomGenerator* self);
double QRandomGenerator_generateDouble(QRandomGenerator* self);
double QRandomGenerator_bounded_double(QRandomGenerator* self, double highest);
unsigned int QRandomGenerator_bounded_quint32(QRandomGenerator* self, unsigned int highest);
unsigned int QRandomGenerator_bounded_quint32_quint32(QRandomGenerator* self, unsigned int lowest, unsigned int highest);
int QRandomGenerator_bounded_int(QRandomGenerator* self, int highest);
int QRandomGenerator_bounded_int_int(QRandomGenerator* self, int lowest, int highest);
unsigned long long QRandomGenerator_bounded_quint64(QRandomGenerator* self, unsigned long long highest);
unsigned long long QRandomGenerator_bounded_quint64_quint64(QRandomGenerator* self, unsigned long long lowest, unsigned long long highest);
long long QRandomGenerator_bounded_qint64(QRandomGenerator* self, long long highest);
long long QRandomGenerator_bounded_qint64_qint64(QRandomGenerator* self, long long lowest, long long highest);
long long QRandomGenerator_bounded_int_qint64(QRandomGenerator* self, int lowest, long long highest);
long long QRandomGenerator_bounded_qint64_int(QRandomGenerator* self, long long lowest, int highest);
unsigned long long QRandomGenerator_bounded_unsignedint_quint64(QRandomGenerator* self, unsigned int lowest, unsigned long long highest);
unsigned long long QRandomGenerator_bounded_quint64_unsignedint(QRandomGenerator* self, unsigned long long lowest, unsigned int highest);
void QRandomGenerator_generate_begin_end(QRandomGenerator* self, unsigned int* begin, unsigned int* end);
unsigned int QRandomGenerator_operatorCall(QRandomGenerator* self);
void QRandomGenerator_seed(QRandomGenerator* self);
void QRandomGenerator_discard(QRandomGenerator* self, unsigned long long z);
unsigned int QRandomGenerator_min();
unsigned int QRandomGenerator_max();
QRandomGenerator* QRandomGenerator_system();
QRandomGenerator* QRandomGenerator_global();
QRandomGenerator* QRandomGenerator_securelySeeded();
void QRandomGenerator_seed_s(QRandomGenerator* self, unsigned int s);

void QRandomGenerator_delete(QRandomGenerator* self);

QRandomGenerator64* QRandomGenerator64_new();
QRandomGenerator64* QRandomGenerator64_new_seedBuffer_len(const unsigned int* seedBuffer, ptrdiff_t len);
QRandomGenerator64* QRandomGenerator64_new_begin_end(const unsigned int* begin, const unsigned int* end);
QRandomGenerator64* QRandomGenerator64_new_other(QRandomGenerator* other);
QRandomGenerator64* QRandomGenerator64_new_from(QRandomGenerator64* from);
QRandomGenerator64* QRandomGenerator64_new_seedValue(unsigned int seedValue);

void QRandomGenerator64_virtbase(QRandomGenerator64* src, QRandomGenerator** outptr_QRandomGenerator);
unsigned long long QRandomGenerator64_generate(QRandomGenerator64* self);
unsigned long long QRandomGenerator64_operatorCall(QRandomGenerator64* self);
void QRandomGenerator64_discard(QRandomGenerator64* self, unsigned long long z);
unsigned long long QRandomGenerator64_min();
unsigned long long QRandomGenerator64_max();
QRandomGenerator64* QRandomGenerator64_system();
QRandomGenerator64* QRandomGenerator64_global();
QRandomGenerator64* QRandomGenerator64_securelySeeded();
void QRandomGenerator64_operatorAssign(QRandomGenerator64* self, QRandomGenerator64* from);

void QRandomGenerator64_delete(QRandomGenerator64* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
