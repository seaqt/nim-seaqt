#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLINFO_H
#define SEAQT_QTQML_GEN_QQMLINFO_H

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
class QQmlInfo;
class QUrl;
#else
typedef struct QChar QChar;
typedef struct QDebug QDebug;
typedef struct QQmlInfo QQmlInfo;
typedef struct QUrl QUrl;
#endif

QQmlInfo* QQmlInfo_new(QQmlInfo* from);

void QQmlInfo_virtbase(QQmlInfo* src, QDebug** outptr_QDebug);
QQmlInfo* QQmlInfo_operatorShiftLeft_QChar(QQmlInfo* self, QChar* t);
QQmlInfo* QQmlInfo_operatorShiftLeft_bool(QQmlInfo* self, bool t);
QQmlInfo* QQmlInfo_operatorShiftLeft_char(QQmlInfo* self, char t);
QQmlInfo* QQmlInfo_operatorShiftLeft_short(QQmlInfo* self, short t);
QQmlInfo* QQmlInfo_operatorShiftLeft_unsignedshort(QQmlInfo* self, unsigned short t);
QQmlInfo* QQmlInfo_operatorShiftLeft_int(QQmlInfo* self, int t);
QQmlInfo* QQmlInfo_operatorShiftLeft_unsignedint(QQmlInfo* self, unsigned int t);
QQmlInfo* QQmlInfo_operatorShiftLeft_long(QQmlInfo* self, long t);
QQmlInfo* QQmlInfo_operatorShiftLeft_unsignedlong(QQmlInfo* self, unsigned long t);
QQmlInfo* QQmlInfo_operatorShiftLeft_qint64(QQmlInfo* self, long long t);
QQmlInfo* QQmlInfo_operatorShiftLeft_quint64(QQmlInfo* self, unsigned long long t);
QQmlInfo* QQmlInfo_operatorShiftLeft_float(QQmlInfo* self, float t);
QQmlInfo* QQmlInfo_operatorShiftLeft_double(QQmlInfo* self, double t);
QQmlInfo* QQmlInfo_operatorShiftLeft_pcchar(QQmlInfo* self, const char* t);
QQmlInfo* QQmlInfo_operatorShiftLeft_cQString(QQmlInfo* self, struct seaqt_string t);
QQmlInfo* QQmlInfo_operatorShiftLeft_cQByteArray(QQmlInfo* self, struct seaqt_string t);
QQmlInfo* QQmlInfo_operatorShiftLeft_pcvoid(QQmlInfo* self, const void* t);
QQmlInfo* QQmlInfo_operatorShiftLeft_cQUrl(QQmlInfo* self, QUrl* t);
void QQmlInfo_operatorAssign(QQmlInfo* self, QQmlInfo* from);

void QQmlInfo_delete(QQmlInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
