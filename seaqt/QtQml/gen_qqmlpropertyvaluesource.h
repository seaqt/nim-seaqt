#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLPROPERTYVALUESOURCE_H
#define SEAQT_QTQML_GEN_QQMLPROPERTYVALUESOURCE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QQmlProperty;
class QQmlPropertyValueSource;
#else
typedef struct QQmlProperty QQmlProperty;
typedef struct QQmlPropertyValueSource QQmlPropertyValueSource;
#endif

struct QQmlPropertyValueSource_VTable {
	void (*destructor)(struct QQmlPropertyValueSource_VTable* vtbl, QQmlPropertyValueSource* self);
	void (*setTarget)(struct QQmlPropertyValueSource_VTable* vtbl, QQmlPropertyValueSource* self, QQmlProperty* target);
};
QQmlPropertyValueSource* QQmlPropertyValueSource_new(struct QQmlPropertyValueSource_VTable* vtbl);
void QQmlPropertyValueSource_setTarget(QQmlPropertyValueSource* self, QQmlProperty* target);
void QQmlPropertyValueSource_operatorAssign(QQmlPropertyValueSource* self, QQmlPropertyValueSource* param1);
void QQmlPropertyValueSource_virtualbase_setTarget(void* self, QQmlProperty* target);
void QQmlPropertyValueSource_delete(QQmlPropertyValueSource* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
