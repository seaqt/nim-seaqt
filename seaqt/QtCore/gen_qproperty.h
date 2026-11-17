#pragma once
#ifndef SEAQT_QTCORE_GEN_QPROPERTY_H
#define SEAQT_QTCORE_GEN_QPROPERTY_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaType;
class QPropertyBindingError;
class QPropertyBindingSourceLocation;
class QPropertyNotifier;
class QPropertyObserver;
class QPropertyObserverBase;
class QUntypedBindable;
class QUntypedPropertyBinding;
class QUntypedPropertyData;
#else
typedef struct QMetaType QMetaType;
typedef struct QPropertyBindingError QPropertyBindingError;
typedef struct QPropertyBindingSourceLocation QPropertyBindingSourceLocation;
typedef struct QPropertyNotifier QPropertyNotifier;
typedef struct QPropertyObserver QPropertyObserver;
typedef struct QPropertyObserverBase QPropertyObserverBase;
typedef struct QUntypedBindable QUntypedBindable;
typedef struct QUntypedPropertyBinding QUntypedPropertyBinding;
typedef struct QUntypedPropertyData QUntypedPropertyData;
#endif

QPropertyBindingSourceLocation* QPropertyBindingSourceLocation_new();
QPropertyBindingSourceLocation* QPropertyBindingSourceLocation_new_from(QPropertyBindingSourceLocation* from);

const char* QPropertyBindingSourceLocation_fileName(const QPropertyBindingSourceLocation* self);
void QPropertyBindingSourceLocation_setFileName(QPropertyBindingSourceLocation* self, const char* fileName);
const char* QPropertyBindingSourceLocation_functionName(const QPropertyBindingSourceLocation* self);
void QPropertyBindingSourceLocation_setFunctionName(QPropertyBindingSourceLocation* self, const char* functionName);
unsigned int QPropertyBindingSourceLocation_line(const QPropertyBindingSourceLocation* self);
void QPropertyBindingSourceLocation_setLine(QPropertyBindingSourceLocation* self, unsigned int line);
unsigned int QPropertyBindingSourceLocation_column(const QPropertyBindingSourceLocation* self);
void QPropertyBindingSourceLocation_setColumn(QPropertyBindingSourceLocation* self, unsigned int column);

void QPropertyBindingSourceLocation_delete(QPropertyBindingSourceLocation* self);

QPropertyBindingError* QPropertyBindingError_new();
QPropertyBindingError* QPropertyBindingError_new_type(int type);
QPropertyBindingError* QPropertyBindingError_new_from(QPropertyBindingError* from);
QPropertyBindingError* QPropertyBindingError_new_type_description(int type, struct seaqt_string description);

void QPropertyBindingError_operatorAssign(QPropertyBindingError* self, QPropertyBindingError* from);
bool QPropertyBindingError_hasError(const QPropertyBindingError* self);
int QPropertyBindingError_type(const QPropertyBindingError* self);
struct seaqt_string QPropertyBindingError_description(const QPropertyBindingError* self);

void QPropertyBindingError_delete(QPropertyBindingError* self);

QUntypedPropertyBinding* QUntypedPropertyBinding_new();
QUntypedPropertyBinding* QUntypedPropertyBinding_new_metaType_vtable_function_location(QMetaType* metaType, const void* vtable, void* function, QPropertyBindingSourceLocation* location);
QUntypedPropertyBinding* QUntypedPropertyBinding_new_from(QUntypedPropertyBinding* from);

void QUntypedPropertyBinding_operatorAssign(QUntypedPropertyBinding* self, QUntypedPropertyBinding* from);
bool QUntypedPropertyBinding_isNull(const QUntypedPropertyBinding* self);
QPropertyBindingError* QUntypedPropertyBinding_error(const QUntypedPropertyBinding* self);
QMetaType* QUntypedPropertyBinding_valueMetaType(const QUntypedPropertyBinding* self);

void QUntypedPropertyBinding_delete(QUntypedPropertyBinding* self);

QPropertyObserverBase* QPropertyObserverBase_new();
QPropertyObserverBase* QPropertyObserverBase_new_from(QPropertyObserverBase* from);

void QPropertyObserverBase_operatorAssign(QPropertyObserverBase* self, QPropertyObserverBase* from);

void QPropertyObserverBase_delete(QPropertyObserverBase* self);

QPropertyObserver* QPropertyObserver_new();

void QPropertyObserver_virtbase(QPropertyObserver* src, QPropertyObserverBase** outptr_QPropertyObserverBase);

void QPropertyObserver_delete(QPropertyObserver* self);

QPropertyNotifier* QPropertyNotifier_new();

void QPropertyNotifier_virtbase(QPropertyNotifier* src, QPropertyObserver** outptr_QPropertyObserver);
void QPropertyNotifier_delete(QPropertyNotifier* self);

QUntypedBindable* QUntypedBindable_new();
QUntypedBindable* QUntypedBindable_new_from(QUntypedBindable* from);

bool QUntypedBindable_isValid(const QUntypedBindable* self);
bool QUntypedBindable_isBindable(const QUntypedBindable* self);
bool QUntypedBindable_isReadOnly(const QUntypedBindable* self);
QUntypedPropertyBinding* QUntypedBindable_makeBinding(const QUntypedBindable* self);
QUntypedPropertyBinding* QUntypedBindable_takeBinding(QUntypedBindable* self);
void QUntypedBindable_observe(const QUntypedBindable* self, QPropertyObserver* observer);
QUntypedPropertyBinding* QUntypedBindable_binding(const QUntypedBindable* self);
bool QUntypedBindable_setBinding(QUntypedBindable* self, QUntypedPropertyBinding* binding);
bool QUntypedBindable_hasBinding(const QUntypedBindable* self);
QMetaType* QUntypedBindable_metaType(const QUntypedBindable* self);
QUntypedPropertyBinding* QUntypedBindable_makeBinding_location(const QUntypedBindable* self, QPropertyBindingSourceLocation* location);

void QUntypedBindable_delete(QUntypedBindable* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
