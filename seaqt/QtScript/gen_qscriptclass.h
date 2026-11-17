#pragma once
#ifndef SEAQT_QTSCRIPT_GEN_QSCRIPTCLASS_H
#define SEAQT_QTSCRIPT_GEN_QSCRIPTCLASS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QScriptClass;
class QScriptClassPropertyIterator;
class QScriptEngine;
class QScriptString;
class QScriptValue;
class QVariant;
#else
typedef struct QScriptClass QScriptClass;
typedef struct QScriptClassPropertyIterator QScriptClassPropertyIterator;
typedef struct QScriptEngine QScriptEngine;
typedef struct QScriptString QScriptString;
typedef struct QScriptValue QScriptValue;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQScriptClass VirtualQScriptClass;
typedef struct QScriptClass_VTable{
	void (*destructor)(VirtualQScriptClass* self);
	int (*queryProperty)(VirtualQScriptClass* self, QScriptValue* object, QScriptString* name, int flags, unsigned int* id);
	QScriptValue* (*property)(VirtualQScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id);
	void (*setProperty)(VirtualQScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id, QScriptValue* value);
	int (*propertyFlags)(VirtualQScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id);
	QScriptClassPropertyIterator* (*newIterator)(VirtualQScriptClass* self, QScriptValue* object);
	QScriptValue* (*prototype)(const VirtualQScriptClass* self);
	struct seaqt_string (*name)(const VirtualQScriptClass* self);
	bool (*supportsExtension)(const VirtualQScriptClass* self, int extension);
	QVariant* (*extension)(VirtualQScriptClass* self, int extension, QVariant* argument);
}QScriptClass_VTable;

void* QScriptClass_vdata(VirtualQScriptClass* self);
VirtualQScriptClass* vdata_QScriptClass(void* vdata);

VirtualQScriptClass* QScriptClass_new(const QScriptClass_VTable* vtbl, size_t vdata, QScriptEngine* engine);

QScriptEngine* QScriptClass_engine(const QScriptClass* self);
int QScriptClass_queryProperty(QScriptClass* self, QScriptValue* object, QScriptString* name, int flags, unsigned int* id);
QScriptValue* QScriptClass_property(QScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id);
void QScriptClass_setProperty(QScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id, QScriptValue* value);
int QScriptClass_propertyFlags(QScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id);
QScriptClassPropertyIterator* QScriptClass_newIterator(QScriptClass* self, QScriptValue* object);
QScriptValue* QScriptClass_prototype(const QScriptClass* self);
struct seaqt_string QScriptClass_name(const QScriptClass* self);
bool QScriptClass_supportsExtension(const QScriptClass* self, int extension);
QVariant* QScriptClass_extension(QScriptClass* self, int extension, QVariant* argument);

int QScriptClass_virtualbase_queryProperty(VirtualQScriptClass* self, QScriptValue* object, QScriptString* name, int flags, unsigned int* id);
QScriptValue* QScriptClass_virtualbase_property(VirtualQScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id);
void QScriptClass_virtualbase_setProperty(VirtualQScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id, QScriptValue* value);
int QScriptClass_virtualbase_propertyFlags(VirtualQScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id);
QScriptClassPropertyIterator* QScriptClass_virtualbase_newIterator(VirtualQScriptClass* self, QScriptValue* object);
QScriptValue* QScriptClass_virtualbase_prototype(const VirtualQScriptClass* self);
struct seaqt_string QScriptClass_virtualbase_name(const VirtualQScriptClass* self);
bool QScriptClass_virtualbase_supportsExtension(const VirtualQScriptClass* self, int extension);
QVariant* QScriptClass_virtualbase_extension(VirtualQScriptClass* self, int extension, QVariant* argument);

void QScriptClass_delete(QScriptClass* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
