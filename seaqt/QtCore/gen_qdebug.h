#pragma once
#ifndef SEAQT_QTCORE_GEN_QDEBUG_H
#define SEAQT_QTCORE_GEN_QDEBUG_H

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
class QDebug;
class QDebugStateSaver;
class QIODevice;
class QIODeviceBase;
class QNoDebug;
#else
typedef struct QChar QChar;
typedef struct QDebug QDebug;
typedef struct QDebugStateSaver QDebugStateSaver;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QNoDebug QNoDebug;
#endif

QDebug* QDebug_new_device(QIODevice* device);
QDebug* QDebug_new_from(QDebug* from);

void QDebug_virtbase(QDebug* src, QIODeviceBase** outptr_QIODeviceBase);
void QDebug_operatorAssign(QDebug* self, QDebug* from);
void QDebug_swap(QDebug* self, QDebug* other);
QDebug* QDebug_resetFormat(QDebug* self);
QDebug* QDebug_space(QDebug* self);
QDebug* QDebug_nospace(QDebug* self);
QDebug* QDebug_maybeSpace(QDebug* self);
QDebug* QDebug_verbosity_verbosityLevel(QDebug* self, int verbosityLevel);
int QDebug_verbosity(const QDebug* self);
void QDebug_setVerbosity(QDebug* self, int verbosityLevel);
bool QDebug_autoInsertSpaces(const QDebug* self);
void QDebug_setAutoInsertSpaces(QDebug* self, bool b);
bool QDebug_quoteStrings(const QDebug* self);
void QDebug_setQuoteStrings(QDebug* self, bool b);
QDebug* QDebug_quote(QDebug* self);
QDebug* QDebug_noquote(QDebug* self);
QDebug* QDebug_maybeQuote(QDebug* self);
QDebug* QDebug_operatorShiftLeft_QChar(QDebug* self, QChar* t);
QDebug* QDebug_operatorShiftLeft_bool(QDebug* self, bool t);
QDebug* QDebug_operatorShiftLeft_char(QDebug* self, char t);
QDebug* QDebug_operatorShiftLeft_short(QDebug* self, short t);
QDebug* QDebug_operatorShiftLeft_unsignedshort(QDebug* self, unsigned short t);
QDebug* QDebug_operatorShiftLeft_int(QDebug* self, int t);
QDebug* QDebug_operatorShiftLeft_unsignedint(QDebug* self, unsigned int t);
QDebug* QDebug_operatorShiftLeft_long(QDebug* self, long t);
QDebug* QDebug_operatorShiftLeft_unsignedlong(QDebug* self, unsigned long t);
QDebug* QDebug_operatorShiftLeft_qint64(QDebug* self, long long t);
QDebug* QDebug_operatorShiftLeft_quint64(QDebug* self, unsigned long long t);
QDebug* QDebug_operatorShiftLeft_float(QDebug* self, float t);
QDebug* QDebug_operatorShiftLeft_double(QDebug* self, double t);
QDebug* QDebug_operatorShiftLeft_pcchar(QDebug* self, const char* t);
QDebug* QDebug_operatorShiftLeft_cQString(QDebug* self, struct seaqt_string t);
QDebug* QDebug_operatorShiftLeft_cQByteArray(QDebug* self, struct seaqt_string t);
QDebug* QDebug_operatorShiftLeft_QByteArrayView(QDebug* self, struct seaqt_string t);
QDebug* QDebug_operatorShiftLeft_pcvoid(QDebug* self, const void* t);
QDebug* QDebug_maybeQuote_c(QDebug* self, char c);

void QDebug_delete(QDebug* self);

QDebugStateSaver* QDebugStateSaver_new(QDebug* dbg);

void QDebugStateSaver_delete(QDebugStateSaver* self);

QNoDebug* QNoDebug_space(QNoDebug* self);
QNoDebug* QNoDebug_nospace(QNoDebug* self);
QNoDebug* QNoDebug_maybeSpace(QNoDebug* self);
QNoDebug* QNoDebug_quote(QNoDebug* self);
QNoDebug* QNoDebug_noquote(QNoDebug* self);
QNoDebug* QNoDebug_maybeQuote(QNoDebug* self);
QNoDebug* QNoDebug_verbosity(QNoDebug* self, int param1);
QNoDebug* QNoDebug_maybeQuote_char(QNoDebug* self, const char param1);

void QNoDebug_delete(QNoDebug* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
