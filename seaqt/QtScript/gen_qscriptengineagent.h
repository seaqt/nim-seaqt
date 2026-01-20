#pragma once
#ifndef SEAQT_QTSCRIPT_GEN_QSCRIPTENGINEAGENT_H
#define SEAQT_QTSCRIPT_GEN_QSCRIPTENGINEAGENT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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

typedef struct VirtualQScriptEngineAgent VirtualQScriptEngineAgent;
typedef struct QScriptEngineAgent_VTable{
	void (*destructor)(VirtualQScriptEngineAgent* self);
	void (*scriptLoad)(VirtualQScriptEngineAgent* self, long long id, struct seaqt_string program, struct seaqt_string fileName, int baseLineNumber);
	void (*scriptUnload)(VirtualQScriptEngineAgent* self, long long id);
	void (*contextPush)(VirtualQScriptEngineAgent* self);
	void (*contextPop)(VirtualQScriptEngineAgent* self);
	void (*functionEntry)(VirtualQScriptEngineAgent* self, long long scriptId);
	void (*functionExit)(VirtualQScriptEngineAgent* self, long long scriptId, QScriptValue* returnValue);
	void (*positionChange)(VirtualQScriptEngineAgent* self, long long scriptId, int lineNumber, int columnNumber);
	void (*exceptionThrow)(VirtualQScriptEngineAgent* self, long long scriptId, QScriptValue* exception, bool hasHandler);
	void (*exceptionCatch)(VirtualQScriptEngineAgent* self, long long scriptId, QScriptValue* exception);
	bool (*supportsExtension)(const VirtualQScriptEngineAgent* self, int extension);
	QVariant* (*extension)(VirtualQScriptEngineAgent* self, int extension, QVariant* argument);
}QScriptEngineAgent_VTable;

void* QScriptEngineAgent_vdata(VirtualQScriptEngineAgent* self);
VirtualQScriptEngineAgent* vdata_QScriptEngineAgent(void* vdata);

VirtualQScriptEngineAgent* QScriptEngineAgent_new(const QScriptEngineAgent_VTable* vtbl, size_t vdata, QScriptEngine* engine);

void QScriptEngineAgent_scriptLoad(QScriptEngineAgent* self, long long id, struct seaqt_string program, struct seaqt_string fileName, int baseLineNumber);
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

void QScriptEngineAgent_virtualbase_scriptLoad(VirtualQScriptEngineAgent* self, long long id, struct seaqt_string program, struct seaqt_string fileName, int baseLineNumber);
void QScriptEngineAgent_virtualbase_scriptUnload(VirtualQScriptEngineAgent* self, long long id);
void QScriptEngineAgent_virtualbase_contextPush(VirtualQScriptEngineAgent* self);
void QScriptEngineAgent_virtualbase_contextPop(VirtualQScriptEngineAgent* self);
void QScriptEngineAgent_virtualbase_functionEntry(VirtualQScriptEngineAgent* self, long long scriptId);
void QScriptEngineAgent_virtualbase_functionExit(VirtualQScriptEngineAgent* self, long long scriptId, QScriptValue* returnValue);
void QScriptEngineAgent_virtualbase_positionChange(VirtualQScriptEngineAgent* self, long long scriptId, int lineNumber, int columnNumber);
void QScriptEngineAgent_virtualbase_exceptionThrow(VirtualQScriptEngineAgent* self, long long scriptId, QScriptValue* exception, bool hasHandler);
void QScriptEngineAgent_virtualbase_exceptionCatch(VirtualQScriptEngineAgent* self, long long scriptId, QScriptValue* exception);
bool QScriptEngineAgent_virtualbase_supportsExtension(const VirtualQScriptEngineAgent* self, int extension);
QVariant* QScriptEngineAgent_virtualbase_extension(VirtualQScriptEngineAgent* self, int extension, QVariant* argument);

void QScriptEngineAgent_delete(QScriptEngineAgent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
