#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLPROPERTYVALUESOURCE_H
#define SEAQT_QTQML_GEN_QQMLPROPERTYVALUESOURCE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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

typedef struct VirtualQQmlPropertyValueSource VirtualQQmlPropertyValueSource;
typedef struct QQmlPropertyValueSource_VTable{
	void (*destructor)(VirtualQQmlPropertyValueSource* self);
	void (*setTarget)(VirtualQQmlPropertyValueSource* self, QQmlProperty* target);
}QQmlPropertyValueSource_VTable;

void* QQmlPropertyValueSource_vdata(VirtualQQmlPropertyValueSource* self);
VirtualQQmlPropertyValueSource* vdata_QQmlPropertyValueSource(void* vdata);

VirtualQQmlPropertyValueSource* QQmlPropertyValueSource_new(const QQmlPropertyValueSource_VTable* vtbl, size_t vdata);

void QQmlPropertyValueSource_setTarget(QQmlPropertyValueSource* self, QQmlProperty* target);
void QQmlPropertyValueSource_operatorAssign(QQmlPropertyValueSource* self, QQmlPropertyValueSource* from);

void QQmlPropertyValueSource_virtualbase_setTarget(VirtualQQmlPropertyValueSource* self, QQmlProperty* target);

void QQmlPropertyValueSource_delete(QQmlPropertyValueSource* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
