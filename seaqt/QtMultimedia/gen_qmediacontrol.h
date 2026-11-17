#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIACONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIACONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMediaControl;
class QMetaMethod;
class QMetaObject;
class QObject;
#else
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
#endif

void QMediaControl_virtbase(QMediaControl* src, QObject** outptr_QObject);
QMetaObject* QMediaControl_metaObject(const QMediaControl* self);
void* QMediaControl_metacast(QMediaControl* self, const char* param1);
int QMediaControl_metacall(QMediaControl* self, int param1, int param2, void** param3);
struct seaqt_string QMediaControl_tr_s(const char* s);
struct seaqt_string QMediaControl_trUtf8_s(const char* s);
struct seaqt_string QMediaControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QMediaControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QMediaControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QMediaControl_trUtf8_s_c_n(const char* s, const char* c, int n);

void QMediaControl_delete(QMediaControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
