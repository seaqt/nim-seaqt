#pragma once
#ifndef SEAQT_QTSCRIPT_GEN_QSCRIPTEXTENSIONINTERFACE_H
#define SEAQT_QTSCRIPT_GEN_QSCRIPTEXTENSIONINTERFACE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QFactoryInterface;
class QScriptEngine;
class QScriptExtensionInterface;
#else
typedef struct QFactoryInterface QFactoryInterface;
typedef struct QScriptEngine QScriptEngine;
typedef struct QScriptExtensionInterface QScriptExtensionInterface;
#endif

struct QScriptExtensionInterface_VTable {
	void (*destructor)(struct QScriptExtensionInterface_VTable* vtbl, QScriptExtensionInterface* self);
	void (*initialize)(struct QScriptExtensionInterface_VTable* vtbl, QScriptExtensionInterface* self, struct miqt_string key, QScriptEngine* engine);
	struct miqt_array /* of struct miqt_string */  (*keys)(struct QScriptExtensionInterface_VTable* vtbl, const QScriptExtensionInterface* self);
};
QScriptExtensionInterface* QScriptExtensionInterface_new(struct QScriptExtensionInterface_VTable* vtbl, QScriptExtensionInterface* param1);
void QScriptExtensionInterface_virtbase(QScriptExtensionInterface* src, QFactoryInterface** outptr_QFactoryInterface);
void QScriptExtensionInterface_initialize(QScriptExtensionInterface* self, struct miqt_string key, QScriptEngine* engine);
void QScriptExtensionInterface_operatorAssign(QScriptExtensionInterface* self, QScriptExtensionInterface* param1);
void QScriptExtensionInterface_virtualbase_initialize(void* self, struct miqt_string key, QScriptEngine* engine);
struct miqt_array /* of struct miqt_string */  QScriptExtensionInterface_virtualbase_keys(const void* self);
void QScriptExtensionInterface_delete(QScriptExtensionInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
