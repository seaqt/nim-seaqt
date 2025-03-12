#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLEXTENSIONINTERFACE_H
#define SEAQT_QTQML_GEN_QQMLEXTENSIONINTERFACE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QQmlEngine;
class QQmlEngineExtensionInterface;
class QQmlExtensionInterface;
class QQmlTypesExtensionInterface;
#else
typedef struct QQmlEngine QQmlEngine;
typedef struct QQmlEngineExtensionInterface QQmlEngineExtensionInterface;
typedef struct QQmlExtensionInterface QQmlExtensionInterface;
typedef struct QQmlTypesExtensionInterface QQmlTypesExtensionInterface;
#endif

typedef struct VirtualQQmlTypesExtensionInterface VirtualQQmlTypesExtensionInterface;
typedef struct QQmlTypesExtensionInterface_VTable{
	void (*destructor)(VirtualQQmlTypesExtensionInterface* self);
	void (*registerTypes)(VirtualQQmlTypesExtensionInterface* self, const char* uri);
}QQmlTypesExtensionInterface_VTable;

const QQmlTypesExtensionInterface_VTable* QQmlTypesExtensionInterface_vtbl(const VirtualQQmlTypesExtensionInterface* self);
void* QQmlTypesExtensionInterface_vdata(const VirtualQQmlTypesExtensionInterface* self);
void QQmlTypesExtensionInterface_setVdata(VirtualQQmlTypesExtensionInterface* self, void* vdata);

VirtualQQmlTypesExtensionInterface* QQmlTypesExtensionInterface_new(const QQmlTypesExtensionInterface_VTable* vtbl, void* vdata, QQmlTypesExtensionInterface* param1);

void QQmlTypesExtensionInterface_registerTypes(QQmlTypesExtensionInterface* self, const char* uri);
void QQmlTypesExtensionInterface_operatorAssign(QQmlTypesExtensionInterface* self, QQmlTypesExtensionInterface* param1);

void QQmlTypesExtensionInterface_virtualbase_registerTypes(VirtualQQmlTypesExtensionInterface* self, const char* uri);

void QQmlTypesExtensionInterface_delete(QQmlTypesExtensionInterface* self);

typedef struct VirtualQQmlExtensionInterface VirtualQQmlExtensionInterface;
typedef struct QQmlExtensionInterface_VTable{
	void (*destructor)(VirtualQQmlExtensionInterface* self);
	void (*initializeEngine)(VirtualQQmlExtensionInterface* self, QQmlEngine* engine, const char* uri);
	void (*registerTypes)(VirtualQQmlExtensionInterface* self, const char* uri);
}QQmlExtensionInterface_VTable;

const QQmlExtensionInterface_VTable* QQmlExtensionInterface_vtbl(const VirtualQQmlExtensionInterface* self);
void* QQmlExtensionInterface_vdata(const VirtualQQmlExtensionInterface* self);
void QQmlExtensionInterface_setVdata(VirtualQQmlExtensionInterface* self, void* vdata);

VirtualQQmlExtensionInterface* QQmlExtensionInterface_new(const QQmlExtensionInterface_VTable* vtbl, void* vdata, QQmlExtensionInterface* param1);

void QQmlExtensionInterface_virtbase(QQmlExtensionInterface* src, QQmlTypesExtensionInterface** outptr_QQmlTypesExtensionInterface);
void QQmlExtensionInterface_initializeEngine(QQmlExtensionInterface* self, QQmlEngine* engine, const char* uri);
void QQmlExtensionInterface_operatorAssign(QQmlExtensionInterface* self, QQmlExtensionInterface* param1);

void QQmlExtensionInterface_virtualbase_initializeEngine(VirtualQQmlExtensionInterface* self, QQmlEngine* engine, const char* uri);
void QQmlExtensionInterface_virtualbase_registerTypes(VirtualQQmlExtensionInterface* self, const char* uri);

void QQmlExtensionInterface_delete(QQmlExtensionInterface* self);

void QQmlEngineExtensionInterface_initializeEngine(QQmlEngineExtensionInterface* self, QQmlEngine* engine, const char* uri);
void QQmlEngineExtensionInterface_operatorAssign(QQmlEngineExtensionInterface* self, QQmlEngineExtensionInterface* param1);

void QQmlEngineExtensionInterface_delete(QQmlEngineExtensionInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
