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

struct QQmlTypesExtensionInterface_VTable {
	void (*destructor)(struct QQmlTypesExtensionInterface_VTable* vtbl, QQmlTypesExtensionInterface* self);
	void (*registerTypes)(struct QQmlTypesExtensionInterface_VTable* vtbl, QQmlTypesExtensionInterface* self, const char* uri);
};
QQmlTypesExtensionInterface* QQmlTypesExtensionInterface_new(struct QQmlTypesExtensionInterface_VTable* vtbl, QQmlTypesExtensionInterface* param1);
void QQmlTypesExtensionInterface_registerTypes(QQmlTypesExtensionInterface* self, const char* uri);
void QQmlTypesExtensionInterface_operatorAssign(QQmlTypesExtensionInterface* self, QQmlTypesExtensionInterface* param1);
void QQmlTypesExtensionInterface_virtualbase_registerTypes(void* self, const char* uri);
void QQmlTypesExtensionInterface_delete(QQmlTypesExtensionInterface* self);

struct QQmlExtensionInterface_VTable {
	void (*destructor)(struct QQmlExtensionInterface_VTable* vtbl, QQmlExtensionInterface* self);
	void (*initializeEngine)(struct QQmlExtensionInterface_VTable* vtbl, QQmlExtensionInterface* self, QQmlEngine* engine, const char* uri);
	void (*registerTypes)(struct QQmlExtensionInterface_VTable* vtbl, QQmlExtensionInterface* self, const char* uri);
};
QQmlExtensionInterface* QQmlExtensionInterface_new(struct QQmlExtensionInterface_VTable* vtbl, QQmlExtensionInterface* param1);
void QQmlExtensionInterface_virtbase(QQmlExtensionInterface* src, QQmlTypesExtensionInterface** outptr_QQmlTypesExtensionInterface);
void QQmlExtensionInterface_initializeEngine(QQmlExtensionInterface* self, QQmlEngine* engine, const char* uri);
void QQmlExtensionInterface_operatorAssign(QQmlExtensionInterface* self, QQmlExtensionInterface* param1);
void QQmlExtensionInterface_virtualbase_initializeEngine(void* self, QQmlEngine* engine, const char* uri);
void QQmlExtensionInterface_virtualbase_registerTypes(void* self, const char* uri);
void QQmlExtensionInterface_delete(QQmlExtensionInterface* self);

void QQmlEngineExtensionInterface_initializeEngine(QQmlEngineExtensionInterface* self, QQmlEngine* engine, const char* uri);
void QQmlEngineExtensionInterface_operatorAssign(QQmlEngineExtensionInterface* self, QQmlEngineExtensionInterface* param1);
void QQmlEngineExtensionInterface_delete(QQmlEngineExtensionInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
