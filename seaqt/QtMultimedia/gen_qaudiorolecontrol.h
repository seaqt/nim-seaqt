#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIOROLECONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIOROLECONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioRoleControl;
class QMediaControl;
class QMetaMethod;
class QMetaObject;
class QObject;
#else
typedef struct QAudioRoleControl QAudioRoleControl;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
#endif

void QAudioRoleControl_virtbase(QAudioRoleControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QAudioRoleControl_metaObject(const QAudioRoleControl* self);
void* QAudioRoleControl_metacast(QAudioRoleControl* self, const char* param1);
int QAudioRoleControl_metacall(QAudioRoleControl* self, int param1, int param2, void** param3);
struct seaqt_string QAudioRoleControl_tr_s(const char* s);
struct seaqt_string QAudioRoleControl_trUtf8_s(const char* s);
int QAudioRoleControl_audioRole(const QAudioRoleControl* self);
void QAudioRoleControl_setAudioRole(QAudioRoleControl* self, int role);
struct seaqt_array /* of int */  QAudioRoleControl_supportedAudioRoles(const QAudioRoleControl* self);
void QAudioRoleControl_audioRoleChanged(QAudioRoleControl* self, int role);
void QAudioRoleControl_connect_audioRoleChanged(QAudioRoleControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct seaqt_string QAudioRoleControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QAudioRoleControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QAudioRoleControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QAudioRoleControl_trUtf8_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QAudioRoleControl_staticMetaObject();
void QAudioRoleControl_delete(QAudioRoleControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
