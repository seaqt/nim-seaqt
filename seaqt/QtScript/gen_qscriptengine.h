#pragma once
#ifndef SEAQT_QTSCRIPT_GEN_QSCRIPTENGINE_H
#define SEAQT_QTSCRIPT_GEN_QSCRIPTENGINE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QDateTime;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QRegExp;
class QScriptClass;
class QScriptContext;
class QScriptEngine;
class QScriptEngineAgent;
class QScriptProgram;
class QScriptString;
class QScriptSyntaxCheckResult;
class QScriptValue;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QDateTime QDateTime;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRegExp QRegExp;
typedef struct QScriptClass QScriptClass;
typedef struct QScriptContext QScriptContext;
typedef struct QScriptEngine QScriptEngine;
typedef struct QScriptEngineAgent QScriptEngineAgent;
typedef struct QScriptProgram QScriptProgram;
typedef struct QScriptString QScriptString;
typedef struct QScriptSyntaxCheckResult QScriptSyntaxCheckResult;
typedef struct QScriptValue QScriptValue;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QScriptSyntaxCheckResult* QScriptSyntaxCheckResult_new(QScriptSyntaxCheckResult* from);

int QScriptSyntaxCheckResult_state(const QScriptSyntaxCheckResult* self);
int QScriptSyntaxCheckResult_errorLineNumber(const QScriptSyntaxCheckResult* self);
int QScriptSyntaxCheckResult_errorColumnNumber(const QScriptSyntaxCheckResult* self);
struct seaqt_string QScriptSyntaxCheckResult_errorMessage(const QScriptSyntaxCheckResult* self);
void QScriptSyntaxCheckResult_operatorAssign(QScriptSyntaxCheckResult* self, QScriptSyntaxCheckResult* from);

void QScriptSyntaxCheckResult_delete(QScriptSyntaxCheckResult* self);

typedef struct VirtualQScriptEngine VirtualQScriptEngine;
typedef struct QScriptEngine_VTable{
	void (*destructor)(VirtualQScriptEngine* self);
	QMetaObject* (*metaObject)(const VirtualQScriptEngine* self);
	void* (*metacast)(VirtualQScriptEngine* self, const char* param1);
	int (*metacall)(VirtualQScriptEngine* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQScriptEngine* self, QEvent* event);
	bool (*eventFilter)(VirtualQScriptEngine* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQScriptEngine* self, QTimerEvent* event);
	void (*childEvent)(VirtualQScriptEngine* self, QChildEvent* event);
	void (*customEvent)(VirtualQScriptEngine* self, QEvent* event);
	void (*connectNotify)(VirtualQScriptEngine* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQScriptEngine* self, QMetaMethod* signal);
}QScriptEngine_VTable;

void* QScriptEngine_vdata(VirtualQScriptEngine* self);
VirtualQScriptEngine* vdata_QScriptEngine(void* vdata);

VirtualQScriptEngine* QScriptEngine_new(const QScriptEngine_VTable* vtbl, size_t vdata);
VirtualQScriptEngine* QScriptEngine_new_parent(const QScriptEngine_VTable* vtbl, size_t vdata, QObject* parent);

void QScriptEngine_virtbase(QScriptEngine* src, QObject** outptr_QObject);
QMetaObject* QScriptEngine_metaObject(const QScriptEngine* self);
void* QScriptEngine_metacast(QScriptEngine* self, const char* param1);
int QScriptEngine_metacall(QScriptEngine* self, int param1, int param2, void** param3);
struct seaqt_string QScriptEngine_tr_s(const char* s);
struct seaqt_string QScriptEngine_trUtf8_s(const char* s);
QScriptValue* QScriptEngine_globalObject(const QScriptEngine* self);
void QScriptEngine_setGlobalObject(QScriptEngine* self, QScriptValue* object);
QScriptContext* QScriptEngine_currentContext(const QScriptEngine* self);
QScriptContext* QScriptEngine_pushContext(QScriptEngine* self);
void QScriptEngine_popContext(QScriptEngine* self);
bool QScriptEngine_canEvaluate(const QScriptEngine* self, struct seaqt_string program);
QScriptSyntaxCheckResult* QScriptEngine_checkSyntax(struct seaqt_string program);
QScriptValue* QScriptEngine_evaluate_QString(QScriptEngine* self, struct seaqt_string program);
QScriptValue* QScriptEngine_evaluate_QScriptProgram(QScriptEngine* self, QScriptProgram* program);
bool QScriptEngine_isEvaluating(const QScriptEngine* self);
void QScriptEngine_abortEvaluation(QScriptEngine* self);
bool QScriptEngine_hasUncaughtException(const QScriptEngine* self);
QScriptValue* QScriptEngine_uncaughtException(const QScriptEngine* self);
int QScriptEngine_uncaughtExceptionLineNumber(const QScriptEngine* self);
struct seaqt_array /* of struct seaqt_string */  QScriptEngine_uncaughtExceptionBacktrace(const QScriptEngine* self);
void QScriptEngine_clearExceptions(QScriptEngine* self);
QScriptValue* QScriptEngine_nullValue(QScriptEngine* self);
QScriptValue* QScriptEngine_undefinedValue(QScriptEngine* self);
QScriptValue* QScriptEngine_newVariant_value(QScriptEngine* self, QVariant* value);
QScriptValue* QScriptEngine_newVariant_object_value(QScriptEngine* self, QScriptValue* object, QVariant* value);
QScriptValue* QScriptEngine_newRegExp_regexp(QScriptEngine* self, QRegExp* regexp);
QScriptValue* QScriptEngine_newObject(QScriptEngine* self);
QScriptValue* QScriptEngine_newObject_scriptClass(QScriptEngine* self, QScriptClass* scriptClass);
QScriptValue* QScriptEngine_newArray(QScriptEngine* self);
QScriptValue* QScriptEngine_newRegExp_pattern_flags(QScriptEngine* self, struct seaqt_string pattern, struct seaqt_string flags);
QScriptValue* QScriptEngine_newDate_qsreal(QScriptEngine* self, double value);
QScriptValue* QScriptEngine_newDate_QDateTime(QScriptEngine* self, QDateTime* value);
QScriptValue* QScriptEngine_newActivationObject(QScriptEngine* self);
QScriptValue* QScriptEngine_newQObject_object(QScriptEngine* self, QObject* object);
QScriptValue* QScriptEngine_newQObject_scriptObject_qtObject(QScriptEngine* self, QScriptValue* scriptObject, QObject* qtObject);
QScriptValue* QScriptEngine_newQMetaObject_metaObject(QScriptEngine* self, QMetaObject* metaObject);
QScriptValue* QScriptEngine_defaultPrototype(const QScriptEngine* self, int metaTypeId);
void QScriptEngine_setDefaultPrototype(QScriptEngine* self, int metaTypeId, QScriptValue* prototype);
void QScriptEngine_installTranslatorFunctions(QScriptEngine* self);
QScriptValue* QScriptEngine_importExtension(QScriptEngine* self, struct seaqt_string extension);
struct seaqt_array /* of struct seaqt_string */  QScriptEngine_availableExtensions(const QScriptEngine* self);
struct seaqt_array /* of struct seaqt_string */  QScriptEngine_importedExtensions(const QScriptEngine* self);
void QScriptEngine_collectGarbage(QScriptEngine* self);
void QScriptEngine_reportAdditionalMemoryCost(QScriptEngine* self, int size);
void QScriptEngine_setProcessEventsInterval(QScriptEngine* self, int interval);
int QScriptEngine_processEventsInterval(const QScriptEngine* self);
void QScriptEngine_setAgent(QScriptEngine* self, QScriptEngineAgent* agent);
QScriptEngineAgent* QScriptEngine_agent(const QScriptEngine* self);
QScriptString* QScriptEngine_toStringHandle(QScriptEngine* self, struct seaqt_string str);
QScriptValue* QScriptEngine_toObject(QScriptEngine* self, QScriptValue* value);
QScriptValue* QScriptEngine_objectById(const QScriptEngine* self, long long id);
void QScriptEngine_signalHandlerException(QScriptEngine* self, QScriptValue* exception);
void QScriptEngine_connect_signalHandlerException(QScriptEngine* self, intptr_t slot, void (*callback)(intptr_t, QScriptValue*), void (*release)(intptr_t));
struct seaqt_string QScriptEngine_tr_s_c(const char* s, const char* c);
struct seaqt_string QScriptEngine_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QScriptEngine_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QScriptEngine_trUtf8_s_c_n(const char* s, const char* c, int n);
QScriptValue* QScriptEngine_evaluate_QString_QString(QScriptEngine* self, struct seaqt_string program, struct seaqt_string fileName);
QScriptValue* QScriptEngine_evaluate_QString_QString_int(QScriptEngine* self, struct seaqt_string program, struct seaqt_string fileName, int lineNumber);
void QScriptEngine_abortEvaluation_result(QScriptEngine* self, QScriptValue* result);
QScriptValue* QScriptEngine_newObject_scriptClass_data(QScriptEngine* self, QScriptClass* scriptClass, QScriptValue* data);
QScriptValue* QScriptEngine_newArray_length(QScriptEngine* self, unsigned int length);
QScriptValue* QScriptEngine_newQObject_object_ownership(QScriptEngine* self, QObject* object, int ownership);
QScriptValue* QScriptEngine_newQObject_object_ownership_options(QScriptEngine* self, QObject* object, int ownership, int* options);
QScriptValue* QScriptEngine_newQObject_scriptObject_qtObject_ownership(QScriptEngine* self, QScriptValue* scriptObject, QObject* qtObject, int ownership);
QScriptValue* QScriptEngine_newQObject_scriptObject_qtObject_ownership_options(QScriptEngine* self, QScriptValue* scriptObject, QObject* qtObject, int ownership, int* options);
QScriptValue* QScriptEngine_newQMetaObject_metaObject_ctor(QScriptEngine* self, QMetaObject* metaObject, QScriptValue* ctor);
void QScriptEngine_installTranslatorFunctions_object(QScriptEngine* self, QScriptValue* object);

QMetaObject* QScriptEngine_virtualbase_metaObject(const VirtualQScriptEngine* self);
void* QScriptEngine_virtualbase_metacast(VirtualQScriptEngine* self, const char* param1);
int QScriptEngine_virtualbase_metacall(VirtualQScriptEngine* self, int param1, int param2, void** param3);
bool QScriptEngine_virtualbase_event(VirtualQScriptEngine* self, QEvent* event);
bool QScriptEngine_virtualbase_eventFilter(VirtualQScriptEngine* self, QObject* watched, QEvent* event);
void QScriptEngine_virtualbase_timerEvent(VirtualQScriptEngine* self, QTimerEvent* event);
void QScriptEngine_virtualbase_childEvent(VirtualQScriptEngine* self, QChildEvent* event);
void QScriptEngine_virtualbase_customEvent(VirtualQScriptEngine* self, QEvent* event);
void QScriptEngine_virtualbase_connectNotify(VirtualQScriptEngine* self, QMetaMethod* signal);
void QScriptEngine_virtualbase_disconnectNotify(VirtualQScriptEngine* self, QMetaMethod* signal);

QObject* QScriptEngine_protectedbase_sender(const VirtualQScriptEngine* self);
int QScriptEngine_protectedbase_senderSignalIndex(const VirtualQScriptEngine* self);
int QScriptEngine_protectedbase_receivers(const VirtualQScriptEngine* self, const char* signal);
bool QScriptEngine_protectedbase_isSignalConnected(const VirtualQScriptEngine* self, QMetaMethod* signal);

const QMetaObject* QScriptEngine_staticMetaObject();
void QScriptEngine_delete(QScriptEngine* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
