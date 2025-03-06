#pragma once
#ifndef SEAQT_QTSCRIPT_GEN_QSCRIPTENGINEAGENT_H
#define SEAQT_QTSCRIPT_GEN_QSCRIPTENGINEAGENT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QScriptEngine;
class QScriptEngineAgent;
class QScriptValue;
class QVariant;
#else
typedef struct QScriptEngine QScriptEngine;
typedef struct QScriptEngineAgent QScriptEngineAgent;
typedef struct QScriptValue QScriptValue;
typedef struct QVariant QVariant;
#endif

struct QScriptEngineAgent_VTable {
	void (*destructor)(struct QScriptEngineAgent_VTable* vtbl, QScriptEngineAgent* self);
	void (*scriptLoad)(struct QScriptEngineAgent_VTable* vtbl, QScriptEngineAgent* self, long long id, struct miqt_string program, struct miqt_string fileName, int baseLineNumber);
	void (*scriptUnload)(struct QScriptEngineAgent_VTable* vtbl, QScriptEngineAgent* self, long long id);
	void (*contextPush)(struct QScriptEngineAgent_VTable* vtbl, QScriptEngineAgent* self);
	void (*contextPop)(struct QScriptEngineAgent_VTable* vtbl, QScriptEngineAgent* self);
	void (*functionEntry)(struct QScriptEngineAgent_VTable* vtbl, QScriptEngineAgent* self, long long scriptId);
	void (*functionExit)(struct QScriptEngineAgent_VTable* vtbl, QScriptEngineAgent* self, long long scriptId, QScriptValue* returnValue);
	void (*positionChange)(struct QScriptEngineAgent_VTable* vtbl, QScriptEngineAgent* self, long long scriptId, int lineNumber, int columnNumber);
	void (*exceptionThrow)(struct QScriptEngineAgent_VTable* vtbl, QScriptEngineAgent* self, long long scriptId, QScriptValue* exception, bool hasHandler);
	void (*exceptionCatch)(struct QScriptEngineAgent_VTable* vtbl, QScriptEngineAgent* self, long long scriptId, QScriptValue* exception);
	bool (*supportsExtension)(struct QScriptEngineAgent_VTable* vtbl, const QScriptEngineAgent* self, int extension);
	QVariant* (*extension)(struct QScriptEngineAgent_VTable* vtbl, QScriptEngineAgent* self, int extension, QVariant* argument);
};
QScriptEngineAgent* QScriptEngineAgent_new(struct QScriptEngineAgent_VTable* vtbl, QScriptEngine* engine);
void QScriptEngineAgent_scriptLoad(QScriptEngineAgent* self, long long id, struct miqt_string program, struct miqt_string fileName, int baseLineNumber);
void QScriptEngineAgent_scriptUnload(QScriptEngineAgent* self, long long id);
void QScriptEngineAgent_contextPush(QScriptEngineAgent* self);
void QScriptEngineAgent_contextPop(QScriptEngineAgent* self);
void QScriptEngineAgent_functionEntry(QScriptEngineAgent* self, long long scriptId);
void QScriptEngineAgent_functionExit(QScriptEngineAgent* self, long long scriptId, QScriptValue* returnValue);
void QScriptEngineAgent_positionChange(QScriptEngineAgent* self, long long scriptId, int lineNumber, int columnNumber);
void QScriptEngineAgent_exceptionThrow(QScriptEngineAgent* self, long long scriptId, QScriptValue* exception, bool hasHandler);
void QScriptEngineAgent_exceptionCatch(QScriptEngineAgent* self, long long scriptId, QScriptValue* exception);
bool QScriptEngineAgent_supportsExtension(const QScriptEngineAgent* self, int extension);
QVariant* QScriptEngineAgent_extension(QScriptEngineAgent* self, int extension, QVariant* argument);
QScriptEngine* QScriptEngineAgent_engine(const QScriptEngineAgent* self);
void QScriptEngineAgent_virtualbase_scriptLoad(void* self, long long id, struct miqt_string program, struct miqt_string fileName, int baseLineNumber);
void QScriptEngineAgent_virtualbase_scriptUnload(void* self, long long id);
void QScriptEngineAgent_virtualbase_contextPush(void* self);
void QScriptEngineAgent_virtualbase_contextPop(void* self);
void QScriptEngineAgent_virtualbase_functionEntry(void* self, long long scriptId);
void QScriptEngineAgent_virtualbase_functionExit(void* self, long long scriptId, QScriptValue* returnValue);
void QScriptEngineAgent_virtualbase_positionChange(void* self, long long scriptId, int lineNumber, int columnNumber);
void QScriptEngineAgent_virtualbase_exceptionThrow(void* self, long long scriptId, QScriptValue* exception, bool hasHandler);
void QScriptEngineAgent_virtualbase_exceptionCatch(void* self, long long scriptId, QScriptValue* exception);
bool QScriptEngineAgent_virtualbase_supportsExtension(const void* self, int extension);
QVariant* QScriptEngineAgent_virtualbase_extension(void* self, int extension, QVariant* argument);
void QScriptEngineAgent_delete(QScriptEngineAgent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
