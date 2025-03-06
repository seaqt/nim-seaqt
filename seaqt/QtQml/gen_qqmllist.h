#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLLIST_H
#define SEAQT_QTQML_GEN_QQMLLIST_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaObject;
class QObject;
class QQmlEngine;
class QQmlListReference;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQmlEngine QQmlEngine;
typedef struct QQmlListReference QQmlListReference;
#endif

QQmlListReference* QQmlListReference_new();
QQmlListReference* QQmlListReference_new2(QObject* param1, const char* property);
QQmlListReference* QQmlListReference_new3(QQmlListReference* param1);
QQmlListReference* QQmlListReference_new4(QObject* param1, const char* property, QQmlEngine* param3);
void QQmlListReference_operatorAssign(QQmlListReference* self, QQmlListReference* param1);
bool QQmlListReference_isValid(const QQmlListReference* self);
QObject* QQmlListReference_object(const QQmlListReference* self);
QMetaObject* QQmlListReference_listElementType(const QQmlListReference* self);
bool QQmlListReference_canAppend(const QQmlListReference* self);
bool QQmlListReference_canAt(const QQmlListReference* self);
bool QQmlListReference_canClear(const QQmlListReference* self);
bool QQmlListReference_canCount(const QQmlListReference* self);
bool QQmlListReference_canReplace(const QQmlListReference* self);
bool QQmlListReference_canRemoveLast(const QQmlListReference* self);
bool QQmlListReference_isManipulable(const QQmlListReference* self);
bool QQmlListReference_isReadable(const QQmlListReference* self);
bool QQmlListReference_append(const QQmlListReference* self, QObject* param1);
QObject* QQmlListReference_at(const QQmlListReference* self, int param1);
bool QQmlListReference_clear(const QQmlListReference* self);
int QQmlListReference_count(const QQmlListReference* self);
bool QQmlListReference_replace(const QQmlListReference* self, int param1, QObject* param2);
bool QQmlListReference_removeLast(const QQmlListReference* self);
void QQmlListReference_delete(QQmlListReference* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
