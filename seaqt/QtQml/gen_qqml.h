#pragma once
#ifndef SEAQT_QTQML_GEN_QQML_H
#define SEAQT_QTQML_GEN_QQML_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaMethod;
class QMetaObject;
class QObject;
class QQmlTypeNotAvailable;
#else
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQmlTypeNotAvailable QQmlTypeNotAvailable;
#endif

void QQmlTypeNotAvailable_virtbase(QQmlTypeNotAvailable* src, QObject** outptr_QObject);
QMetaObject* QQmlTypeNotAvailable_metaObject(const QQmlTypeNotAvailable* self);
void* QQmlTypeNotAvailable_metacast(QQmlTypeNotAvailable* self, const char* param1);
int QQmlTypeNotAvailable_metacall(QQmlTypeNotAvailable* self, int param1, int param2, void** param3);
struct seaqt_string QQmlTypeNotAvailable_tr_s(const char* s);
struct seaqt_string QQmlTypeNotAvailable_tr_s_c(const char* s, const char* c);
struct seaqt_string QQmlTypeNotAvailable_tr_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QQmlTypeNotAvailable_staticMetaObject();
void QQmlTypeNotAvailable_delete(QQmlTypeNotAvailable* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
