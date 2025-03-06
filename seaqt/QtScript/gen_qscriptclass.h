#pragma once
#ifndef SEAQT_QTSCRIPT_GEN_QSCRIPTCLASS_H
#define SEAQT_QTSCRIPT_GEN_QSCRIPTCLASS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

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

struct QScriptClass_VTable {
	void (*destructor)(struct QScriptClass_VTable* vtbl, QScriptClass* self);
	int (*queryProperty)(struct QScriptClass_VTable* vtbl, QScriptClass* self, QScriptValue* object, QScriptString* name, int flags, unsigned int* id);
	QScriptValue* (*property)(struct QScriptClass_VTable* vtbl, QScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id);
	void (*setProperty)(struct QScriptClass_VTable* vtbl, QScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id, QScriptValue* value);
	int (*propertyFlags)(struct QScriptClass_VTable* vtbl, QScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id);
	QScriptClassPropertyIterator* (*newIterator)(struct QScriptClass_VTable* vtbl, QScriptClass* self, QScriptValue* object);
	QScriptValue* (*prototype)(struct QScriptClass_VTable* vtbl, const QScriptClass* self);
	struct miqt_string (*name)(struct QScriptClass_VTable* vtbl, const QScriptClass* self);
	bool (*supportsExtension)(struct QScriptClass_VTable* vtbl, const QScriptClass* self, int extension);
	QVariant* (*extension)(struct QScriptClass_VTable* vtbl, QScriptClass* self, int extension, QVariant* argument);
};
QScriptClass* QScriptClass_new(struct QScriptClass_VTable* vtbl, QScriptEngine* engine);
QScriptEngine* QScriptClass_engine(const QScriptClass* self);
int QScriptClass_queryProperty(QScriptClass* self, QScriptValue* object, QScriptString* name, int flags, unsigned int* id);
QScriptValue* QScriptClass_property(QScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id);
void QScriptClass_setProperty(QScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id, QScriptValue* value);
int QScriptClass_propertyFlags(QScriptClass* self, QScriptValue* object, QScriptString* name, unsigned int id);
QScriptClassPropertyIterator* QScriptClass_newIterator(QScriptClass* self, QScriptValue* object);
QScriptValue* QScriptClass_prototype(const QScriptClass* self);
struct miqt_string QScriptClass_name(const QScriptClass* self);
bool QScriptClass_supportsExtension(const QScriptClass* self, int extension);
QVariant* QScriptClass_extension(QScriptClass* self, int extension, QVariant* argument);
int QScriptClass_virtualbase_queryProperty(void* self, QScriptValue* object, QScriptString* name, int flags, unsigned int* id);
QScriptValue* QScriptClass_virtualbase_property(void* self, QScriptValue* object, QScriptString* name, unsigned int id);
void QScriptClass_virtualbase_setProperty(void* self, QScriptValue* object, QScriptString* name, unsigned int id, QScriptValue* value);
int QScriptClass_virtualbase_propertyFlags(void* self, QScriptValue* object, QScriptString* name, unsigned int id);
QScriptClassPropertyIterator* QScriptClass_virtualbase_newIterator(void* self, QScriptValue* object);
QScriptValue* QScriptClass_virtualbase_prototype(const void* self);
struct miqt_string QScriptClass_virtualbase_name(const void* self);
bool QScriptClass_virtualbase_supportsExtension(const void* self, int extension);
QVariant* QScriptClass_virtualbase_extension(void* self, int extension, QVariant* argument);
void QScriptClass_delete(QScriptClass* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
