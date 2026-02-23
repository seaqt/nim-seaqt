#pragma once
#ifndef SEAQT_QTQUICK_GEN_QQUICKITEMGRABRESULT_H
#define SEAQT_QTQUICK_GEN_QQUICKITEMGRABRESULT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QEvent;
class QImage;
class QMetaMethod;
class QMetaObject;
class QObject;
class QQuickItemGrabResult;
class QUrl;
#else
typedef struct QEvent QEvent;
typedef struct QImage QImage;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQuickItemGrabResult QQuickItemGrabResult;
typedef struct QUrl QUrl;
#endif

void QQuickItemGrabResult_virtbase(QQuickItemGrabResult* src, QObject** outptr_QObject);
QMetaObject* QQuickItemGrabResult_metaObject(const QQuickItemGrabResult* self);
void* QQuickItemGrabResult_metacast(QQuickItemGrabResult* self, const char* param1);
int QQuickItemGrabResult_metacall(QQuickItemGrabResult* self, int param1, int param2, void** param3);
struct seaqt_string QQuickItemGrabResult_tr_s(const char* s);
QImage* QQuickItemGrabResult_image(const QQuickItemGrabResult* self);
QUrl* QQuickItemGrabResult_url(const QQuickItemGrabResult* self);
bool QQuickItemGrabResult_saveToFile_QString(const QQuickItemGrabResult* self, struct seaqt_string fileName);
bool QQuickItemGrabResult_saveToFile_QUrl(const QQuickItemGrabResult* self, QUrl* fileName);
bool QQuickItemGrabResult_event(QQuickItemGrabResult* self, QEvent* param1);
void QQuickItemGrabResult_ready(QQuickItemGrabResult* self);
void QQuickItemGrabResult_connect_ready(QQuickItemGrabResult* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QQuickItemGrabResult_tr_s_c(const char* s, const char* c);
struct seaqt_string QQuickItemGrabResult_tr_s_c_n(const char* s, const char* c, int n);

void QQuickItemGrabResult_delete(QQuickItemGrabResult* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
