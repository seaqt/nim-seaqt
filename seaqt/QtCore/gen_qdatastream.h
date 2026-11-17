#pragma once
#ifndef SEAQT_QTCORE_GEN_QDATASTREAM_H
#define SEAQT_QTCORE_GEN_QDATASTREAM_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDataStream;
class QIODevice;
class QIODeviceBase;
#else
typedef struct QDataStream QDataStream;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
#endif

QDataStream* QDataStream_new();
QDataStream* QDataStream_new_QIODevice(QIODevice* param1);
QDataStream* QDataStream_new_QByteArray(struct seaqt_string param1);

void QDataStream_virtbase(QDataStream* src, QIODeviceBase** outptr_QIODeviceBase);
QIODevice* QDataStream_device(const QDataStream* self);
void QDataStream_setDevice(QDataStream* self, QIODevice* device);
bool QDataStream_atEnd(const QDataStream* self);
int QDataStream_status(const QDataStream* self);
void QDataStream_setStatus(QDataStream* self, int status);
void QDataStream_resetStatus(QDataStream* self);
int QDataStream_floatingPointPrecision(const QDataStream* self);
void QDataStream_setFloatingPointPrecision(QDataStream* self, int precision);
int QDataStream_byteOrder(const QDataStream* self);
void QDataStream_setByteOrder(QDataStream* self, int byteOrder);
int QDataStream_version(const QDataStream* self);
void QDataStream_setVersion(QDataStream* self, int version);
void QDataStream_operatorShiftRight_char(QDataStream* self, char* i);
void QDataStream_operatorShiftRight_qint8(QDataStream* self, signed char* i);
void QDataStream_operatorShiftRight_quint8(QDataStream* self, unsigned char* i);
void QDataStream_operatorShiftRight_qint16(QDataStream* self, short* i);
void QDataStream_operatorShiftRight_quint16(QDataStream* self, unsigned short* i);
void QDataStream_operatorShiftRight_qint32(QDataStream* self, int* i);
void QDataStream_operatorShiftRight_quint32(QDataStream* self, unsigned int* i);
void QDataStream_operatorShiftRight_qint64(QDataStream* self, long long* i);
void QDataStream_operatorShiftRight_quint64(QDataStream* self, unsigned long long* i);
void QDataStream_operatorShiftRight_bool(QDataStream* self, bool* i);
void QDataStream_operatorShiftRight_float(QDataStream* self, float* f);
void QDataStream_operatorShiftRight_double(QDataStream* self, double* f);
void QDataStream_operatorShiftRight_pchar(QDataStream* self, char* str);
void QDataStream_operatorShiftLeft_char(QDataStream* self, char i);
void QDataStream_operatorShiftLeft_qint8(QDataStream* self, signed char i);
void QDataStream_operatorShiftLeft_quint8(QDataStream* self, unsigned char i);
void QDataStream_operatorShiftLeft_qint16(QDataStream* self, short i);
void QDataStream_operatorShiftLeft_quint16(QDataStream* self, unsigned short i);
void QDataStream_operatorShiftLeft_qint32(QDataStream* self, int i);
void QDataStream_operatorShiftLeft_quint32(QDataStream* self, unsigned int i);
void QDataStream_operatorShiftLeft_qint64(QDataStream* self, long long i);
void QDataStream_operatorShiftLeft_quint64(QDataStream* self, unsigned long long i);
void QDataStream_operatorShiftLeft_float(QDataStream* self, float f);
void QDataStream_operatorShiftLeft_double(QDataStream* self, double f);
void QDataStream_operatorShiftLeft_pcchar(QDataStream* self, const char* str);
QDataStream* QDataStream_readBytes_char_uint(QDataStream* self, char* param1, unsigned int* len);
QDataStream* QDataStream_readBytes_char_qint64(QDataStream* self, char* param1, long long* len);
long long QDataStream_readRawData(QDataStream* self, char* param1, long long len);
void QDataStream_writeBytes(QDataStream* self, const char* param1, long long len);
long long QDataStream_writeRawData(QDataStream* self, const char* param1, long long len);
long long QDataStream_skipRawData(QDataStream* self, long long len);
void QDataStream_startTransaction(QDataStream* self);
bool QDataStream_commitTransaction(QDataStream* self);
void QDataStream_rollbackTransaction(QDataStream* self);
void QDataStream_abortTransaction(QDataStream* self);
bool QDataStream_isDeviceTransactionStarted(const QDataStream* self);

void QDataStream_delete(QDataStream* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
