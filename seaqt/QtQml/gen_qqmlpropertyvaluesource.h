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

typedef struct VirtualQQmlPropertyValueSource VirtualQQmlPropertyValueSource;
typedef struct QQmlPropertyValueSource_VTable{
	void (*destructor)(VirtualQQmlPropertyValueSource* self);
	void (*setTarget)(VirtualQQmlPropertyValueSource* self, QQmlProperty* target);
}QQmlPropertyValueSource_VTable;

const QQmlPropertyValueSource_VTable* QQmlPropertyValueSource_vtbl(const VirtualQQmlPropertyValueSource* self);
void* QQmlPropertyValueSource_vdata(const VirtualQQmlPropertyValueSource* self);
void QQmlPropertyValueSource_setVdata(VirtualQQmlPropertyValueSource* self, void* vdata);

VirtualQQmlPropertyValueSource* QQmlPropertyValueSource_new(const QQmlPropertyValueSource_VTable* vtbl, void* vdata);

void QQmlPropertyValueSource_setTarget(QQmlPropertyValueSource* self, QQmlProperty* target);
void QQmlPropertyValueSource_operatorAssign(QQmlPropertyValueSource* self, QQmlPropertyValueSource* param1);

void QQmlPropertyValueSource_virtualbase_setTarget(VirtualQQmlPropertyValueSource* self, QQmlProperty* target);

void QQmlPropertyValueSource_delete(QQmlPropertyValueSource* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
