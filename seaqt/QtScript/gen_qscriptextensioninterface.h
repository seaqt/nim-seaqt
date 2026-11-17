#pragma once
#ifndef SEAQT_QTSCRIPT_GEN_QSCRIPTEXTENSIONINTERFACE_H
#define SEAQT_QTSCRIPT_GEN_QSCRIPTEXTENSIONINTERFACE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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

typedef struct VirtualQScriptExtensionInterface VirtualQScriptExtensionInterface;
typedef struct QScriptExtensionInterface_VTable{
	void (*destructor)(VirtualQScriptExtensionInterface* self);
	void (*initialize)(VirtualQScriptExtensionInterface* self, struct seaqt_string key, QScriptEngine* engine);
	struct seaqt_array /* of struct seaqt_string */  (*keys)(const VirtualQScriptExtensionInterface* self);
}QScriptExtensionInterface_VTable;

void* QScriptExtensionInterface_vdata(VirtualQScriptExtensionInterface* self);
VirtualQScriptExtensionInterface* vdata_QScriptExtensionInterface(void* vdata);

VirtualQScriptExtensionInterface* QScriptExtensionInterface_new(const QScriptExtensionInterface_VTable* vtbl, size_t vdata, QScriptExtensionInterface* from);

void QScriptExtensionInterface_virtbase(QScriptExtensionInterface* src, QFactoryInterface** outptr_QFactoryInterface);
void QScriptExtensionInterface_initialize(QScriptExtensionInterface* self, struct seaqt_string key, QScriptEngine* engine);
void QScriptExtensionInterface_operatorAssign(QScriptExtensionInterface* self, QScriptExtensionInterface* from);

void QScriptExtensionInterface_virtualbase_initialize(VirtualQScriptExtensionInterface* self, struct seaqt_string key, QScriptEngine* engine);
struct seaqt_array /* of struct seaqt_string */  QScriptExtensionInterface_virtualbase_keys(const VirtualQScriptExtensionInterface* self);

void QScriptExtensionInterface_delete(QScriptExtensionInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
