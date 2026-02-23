#pragma once
#ifndef SEAQT_QTGUI_GEN_QSESSIONMANAGER_H
#define SEAQT_QTGUI_GEN_QSESSIONMANAGER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaMethod;
class QMetaObject;
class QObject;
class QSessionManager;
#else
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSessionManager QSessionManager;
#endif

void QSessionManager_virtbase(QSessionManager* src, QObject** outptr_QObject);
QMetaObject* QSessionManager_metaObject(const QSessionManager* self);
void* QSessionManager_metacast(QSessionManager* self, const char* param1);
int QSessionManager_metacall(QSessionManager* self, int param1, int param2, void** param3);
struct seaqt_string QSessionManager_tr_s(const char* s);
struct seaqt_string QSessionManager_sessionId(const QSessionManager* self);
struct seaqt_string QSessionManager_sessionKey(const QSessionManager* self);
bool QSessionManager_allowsInteraction(QSessionManager* self);
bool QSessionManager_allowsErrorInteraction(QSessionManager* self);
void QSessionManager_release(QSessionManager* self);
void QSessionManager_cancel(QSessionManager* self);
void QSessionManager_setRestartHint(QSessionManager* self, int restartHint);
int QSessionManager_restartHint(const QSessionManager* self);
void QSessionManager_setRestartCommand(QSessionManager* self, struct seaqt_array /* of struct seaqt_string */  restartCommand);
struct seaqt_array /* of struct seaqt_string */  QSessionManager_restartCommand(const QSessionManager* self);
void QSessionManager_setDiscardCommand(QSessionManager* self, struct seaqt_array /* of struct seaqt_string */  discardCommand);
struct seaqt_array /* of struct seaqt_string */  QSessionManager_discardCommand(const QSessionManager* self);
void QSessionManager_setManagerProperty_QString_QString(QSessionManager* self, struct seaqt_string name, struct seaqt_string value);
void QSessionManager_setManagerProperty_QString_QStringList(QSessionManager* self, struct seaqt_string name, struct seaqt_array /* of struct seaqt_string */  value);
bool QSessionManager_isPhase2(const QSessionManager* self);
void QSessionManager_requestPhase2(QSessionManager* self);
struct seaqt_string QSessionManager_tr_s_c(const char* s, const char* c);
struct seaqt_string QSessionManager_tr_s_c_n(const char* s, const char* c, int n);


#ifdef __cplusplus
} /* extern C */
#endif

#endif
