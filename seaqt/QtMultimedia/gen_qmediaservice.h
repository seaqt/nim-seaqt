#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIASERVICE_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIASERVICE_H

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
class QMediaService;
class QMetaMethod;
class QMetaObject;
class QObject;
#else
typedef struct QMediaControl QMediaControl;
typedef struct QMediaService QMediaService;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
#endif

void QMediaService_virtbase(QMediaService* src, QObject** outptr_QObject);
QMetaObject* QMediaService_metaObject(const QMediaService* self);
void* QMediaService_metacast(QMediaService* self, const char* param1);
int QMediaService_metacall(QMediaService* self, int param1, int param2, void** param3);
struct seaqt_string QMediaService_tr_s(const char* s);
struct seaqt_string QMediaService_trUtf8_s(const char* s);
QMediaControl* QMediaService_requestControl(QMediaService* self, const char* name);
void QMediaService_releaseControl(QMediaService* self, QMediaControl* control);
struct seaqt_string QMediaService_tr_s_c(const char* s, const char* c);
struct seaqt_string QMediaService_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QMediaService_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QMediaService_trUtf8_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QMediaService_staticMetaObject();
void QMediaService_delete(QMediaService* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
