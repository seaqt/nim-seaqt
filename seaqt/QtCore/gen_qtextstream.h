#pragma once
#ifndef SEAQT_QTCORE_GEN_QTEXTSTREAM_H
#define SEAQT_QTCORE_GEN_QTEXTSTREAM_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChar;
class QIODevice;
class QIODeviceBase;
class QLocale;
class QTextStream;
#else
typedef struct QChar QChar;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QLocale QLocale;
typedef struct QTextStream QTextStream;
#endif

QTextStream* QTextStream_new();
QTextStream* QTextStream_new_pQIODevice(QIODevice* device);
QTextStream* QTextStream_new_cQByteArray(struct seaqt_string array);
QTextStream* QTextStream_new_cQByteArray_QIODeviceBase_OpenMode(struct seaqt_string array, int openMode);

void QTextStream_virtbase(QTextStream* src, QIODeviceBase** outptr_QIODeviceBase);
void QTextStream_setEncoding(QTextStream* self, int encoding);
int QTextStream_encoding(const QTextStream* self);
void QTextStream_setAutoDetectUnicode(QTextStream* self, bool enabled);
bool QTextStream_autoDetectUnicode(const QTextStream* self);
void QTextStream_setGenerateByteOrderMark(QTextStream* self, bool generate);
bool QTextStream_generateByteOrderMark(const QTextStream* self);
void QTextStream_setLocale(QTextStream* self, QLocale* locale);
QLocale* QTextStream_locale(const QTextStream* self);
void QTextStream_setDevice(QTextStream* self, QIODevice* device);
QIODevice* QTextStream_device(const QTextStream* self);
struct seaqt_string QTextStream_string(const QTextStream* self);
int QTextStream_status(const QTextStream* self);
void QTextStream_setStatus(QTextStream* self, int status);
void QTextStream_resetStatus(QTextStream* self);
bool QTextStream_atEnd(const QTextStream* self);
void QTextStream_reset(QTextStream* self);
void QTextStream_flush(QTextStream* self);
bool QTextStream_seek(QTextStream* self, long long pos);
long long QTextStream_pos(const QTextStream* self);
void QTextStream_skipWhiteSpace(QTextStream* self);
struct seaqt_string QTextStream_readLine(QTextStream* self);
struct seaqt_string QTextStream_readAll(QTextStream* self);
struct seaqt_string QTextStream_read(QTextStream* self, long long maxlen);
void QTextStream_setFieldAlignment(QTextStream* self, int alignment);
int QTextStream_fieldAlignment(const QTextStream* self);
void QTextStream_setPadChar(QTextStream* self, QChar* ch);
QChar* QTextStream_padChar(const QTextStream* self);
void QTextStream_setFieldWidth(QTextStream* self, int width);
int QTextStream_fieldWidth(const QTextStream* self);
void QTextStream_setNumberFlags(QTextStream* self, int flags);
int QTextStream_numberFlags(const QTextStream* self);
void QTextStream_setIntegerBase(QTextStream* self, int base);
int QTextStream_integerBase(const QTextStream* self);
void QTextStream_setRealNumberNotation(QTextStream* self, int notation);
int QTextStream_realNumberNotation(const QTextStream* self);
void QTextStream_setRealNumberPrecision(QTextStream* self, int precision);
int QTextStream_realNumberPrecision(const QTextStream* self);
QTextStream* QTextStream_operatorShiftRight_QChar(QTextStream* self, QChar* ch);
QTextStream* QTextStream_operatorShiftRight_char(QTextStream* self, char* ch);
QTextStream* QTextStream_operatorShiftRight_short(QTextStream* self, short* i);
QTextStream* QTextStream_operatorShiftRight_unsignedshort(QTextStream* self, unsigned short* i);
QTextStream* QTextStream_operatorShiftRight_int(QTextStream* self, int* i);
QTextStream* QTextStream_operatorShiftRight_unsignedint(QTextStream* self, unsigned int* i);
QTextStream* QTextStream_operatorShiftRight_long(QTextStream* self, long* i);
QTextStream* QTextStream_operatorShiftRight_unsignedlong(QTextStream* self, unsigned long* i);
QTextStream* QTextStream_operatorShiftRight_qlonglong(QTextStream* self, long long* i);
QTextStream* QTextStream_operatorShiftRight_qulonglong(QTextStream* self, unsigned long long* i);
QTextStream* QTextStream_operatorShiftRight_float(QTextStream* self, float* f);
QTextStream* QTextStream_operatorShiftRight_double(QTextStream* self, double* f);
QTextStream* QTextStream_operatorShiftRight_QString(QTextStream* self, struct seaqt_string s);
QTextStream* QTextStream_operatorShiftRight_QByteArray(QTextStream* self, struct seaqt_string array);
QTextStream* QTextStream_operatorShiftRight_pchar(QTextStream* self, char* c);
QTextStream* QTextStream_operatorShiftLeft_QChar(QTextStream* self, QChar* ch);
QTextStream* QTextStream_operatorShiftLeft_char(QTextStream* self, char ch);
QTextStream* QTextStream_operatorShiftLeft_short(QTextStream* self, short i);
QTextStream* QTextStream_operatorShiftLeft_unsignedshort(QTextStream* self, unsigned short i);
QTextStream* QTextStream_operatorShiftLeft_int(QTextStream* self, int i);
QTextStream* QTextStream_operatorShiftLeft_unsignedint(QTextStream* self, unsigned int i);
QTextStream* QTextStream_operatorShiftLeft_long(QTextStream* self, long i);
QTextStream* QTextStream_operatorShiftLeft_unsignedlong(QTextStream* self, unsigned long i);
QTextStream* QTextStream_operatorShiftLeft_qlonglong(QTextStream* self, long long i);
QTextStream* QTextStream_operatorShiftLeft_qulonglong(QTextStream* self, unsigned long long i);
QTextStream* QTextStream_operatorShiftLeft_float(QTextStream* self, float f);
QTextStream* QTextStream_operatorShiftLeft_double(QTextStream* self, double f);
QTextStream* QTextStream_operatorShiftLeft_cQString(QTextStream* self, struct seaqt_string s);
QTextStream* QTextStream_operatorShiftLeft_cQByteArray(QTextStream* self, struct seaqt_string array);
QTextStream* QTextStream_operatorShiftLeft_pcchar(QTextStream* self, const char* c);
QTextStream* QTextStream_operatorShiftLeft_pcvoid(QTextStream* self, const void* ptr);
struct seaqt_string QTextStream_readLine_maxlen(QTextStream* self, long long maxlen);

void QTextStream_delete(QTextStream* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
