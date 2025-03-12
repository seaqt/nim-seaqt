#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLINCUBATOR_H
#define SEAQT_QTQML_GEN_QQMLINCUBATOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QObject;
class QQmlEngine;
class QQmlError;
class QQmlIncubationController;
class QQmlIncubator;
class QVariant;
#else
typedef struct QObject QObject;
typedef struct QQmlEngine QQmlEngine;
typedef struct QQmlError QQmlError;
typedef struct QQmlIncubationController QQmlIncubationController;
typedef struct QQmlIncubator QQmlIncubator;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQQmlIncubator VirtualQQmlIncubator;
typedef struct QQmlIncubator_VTable{
	void (*destructor)(VirtualQQmlIncubator* self);
	void (*statusChanged)(VirtualQQmlIncubator* self, int param1);
	void (*setInitialState)(VirtualQQmlIncubator* self, QObject* initialState);
}QQmlIncubator_VTable;

const QQmlIncubator_VTable* QQmlIncubator_vtbl(const VirtualQQmlIncubator* self);
void* QQmlIncubator_vdata(const VirtualQQmlIncubator* self);
void QQmlIncubator_setVdata(VirtualQQmlIncubator* self, void* vdata);

VirtualQQmlIncubator* QQmlIncubator_new(const QQmlIncubator_VTable* vtbl, void* vdata);
VirtualQQmlIncubator* QQmlIncubator_new2(const QQmlIncubator_VTable* vtbl, void* vdata, int param1);

void QQmlIncubator_clear(QQmlIncubator* self);
void QQmlIncubator_forceCompletion(QQmlIncubator* self);
bool QQmlIncubator_isNull(const QQmlIncubator* self);
bool QQmlIncubator_isReady(const QQmlIncubator* self);
bool QQmlIncubator_isError(const QQmlIncubator* self);
bool QQmlIncubator_isLoading(const QQmlIncubator* self);
struct miqt_array /* of QQmlError* */  QQmlIncubator_errors(const QQmlIncubator* self);
int QQmlIncubator_incubationMode(const QQmlIncubator* self);
int QQmlIncubator_status(const QQmlIncubator* self);
QObject* QQmlIncubator_object(const QQmlIncubator* self);
void QQmlIncubator_setInitialProperties(QQmlIncubator* self, struct miqt_map /* of struct miqt_string to QVariant* */  initialProperties);
void QQmlIncubator_statusChanged(QQmlIncubator* self, int param1);
void QQmlIncubator_setInitialState(QQmlIncubator* self, QObject* initialState);

void QQmlIncubator_virtualbase_statusChanged(VirtualQQmlIncubator* self, int param1);
void QQmlIncubator_virtualbase_setInitialState(VirtualQQmlIncubator* self, QObject* initialState);

void QQmlIncubator_delete(QQmlIncubator* self);

typedef struct VirtualQQmlIncubationController VirtualQQmlIncubationController;
typedef struct QQmlIncubationController_VTable{
	void (*destructor)(VirtualQQmlIncubationController* self);
	void (*incubatingObjectCountChanged)(VirtualQQmlIncubationController* self, int param1);
}QQmlIncubationController_VTable;

const QQmlIncubationController_VTable* QQmlIncubationController_vtbl(const VirtualQQmlIncubationController* self);
void* QQmlIncubationController_vdata(const VirtualQQmlIncubationController* self);
void QQmlIncubationController_setVdata(VirtualQQmlIncubationController* self, void* vdata);

VirtualQQmlIncubationController* QQmlIncubationController_new(const QQmlIncubationController_VTable* vtbl, void* vdata);

QQmlEngine* QQmlIncubationController_engine(const QQmlIncubationController* self);
int QQmlIncubationController_incubatingObjectCount(const QQmlIncubationController* self);
void QQmlIncubationController_incubateFor(QQmlIncubationController* self, int msecs);
void QQmlIncubationController_incubateWhile(QQmlIncubationController* self, volatile bool* flag);
void QQmlIncubationController_incubatingObjectCountChanged(QQmlIncubationController* self, int param1);
void QQmlIncubationController_incubateWhile2(QQmlIncubationController* self, volatile bool* flag, int msecs);

void QQmlIncubationController_virtualbase_incubatingObjectCountChanged(VirtualQQmlIncubationController* self, int param1);

void QQmlIncubationController_delete(QQmlIncubationController* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
