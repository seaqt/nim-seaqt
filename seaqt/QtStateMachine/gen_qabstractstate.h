#pragma once
#ifndef SEAQT_QTSTATEMACHINE_GEN_QABSTRACTSTATE_H
#define SEAQT_QTSTATEMACHINE_GEN_QABSTRACTSTATE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractState;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QState;
class QStateMachine;
#else
typedef struct QAbstractState QAbstractState;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QState QState;
typedef struct QStateMachine QStateMachine;
#endif

void QAbstractState_virtbase(QAbstractState* src, QObject** outptr_QObject);
QMetaObject* QAbstractState_metaObject(const QAbstractState* self);
void* QAbstractState_metacast(QAbstractState* self, const char* param1);
int QAbstractState_metacall(QAbstractState* self, int param1, int param2, void** param3);
struct seaqt_string QAbstractState_tr_s(const char* s);
QState* QAbstractState_parentState(const QAbstractState* self);
QStateMachine* QAbstractState_machine(const QAbstractState* self);
bool QAbstractState_active(const QAbstractState* self);
void QAbstractState_activeChanged(QAbstractState* self, bool active);
void QAbstractState_connect_activeChanged(QAbstractState* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QAbstractState_onEntry(QAbstractState* self, QEvent* event);
void QAbstractState_onExit(QAbstractState* self, QEvent* event);
bool QAbstractState_event(QAbstractState* self, QEvent* e);
struct seaqt_string QAbstractState_tr_s_c(const char* s, const char* c);
struct seaqt_string QAbstractState_tr_s_c_n(const char* s, const char* c, int n);

void QAbstractState_connect_entered(QAbstractState* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractState_connect_exited(QAbstractState* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));

void QAbstractState_delete(QAbstractState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
