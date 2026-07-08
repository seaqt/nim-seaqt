#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QCUSTOMAUDIOROLECONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QCUSTOMAUDIOROLECONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCustomAudioRoleControl;
class QMediaControl;
class QMetaMethod;
class QMetaObject;
class QObject;
#else
typedef struct QCustomAudioRoleControl QCustomAudioRoleControl;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
#endif

void QCustomAudioRoleControl_virtbase(QCustomAudioRoleControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QCustomAudioRoleControl_metaObject(const QCustomAudioRoleControl* self);
void* QCustomAudioRoleControl_metacast(QCustomAudioRoleControl* self, const char* param1);
int QCustomAudioRoleControl_metacall(QCustomAudioRoleControl* self, int param1, int param2, void** param3);
struct seaqt_string QCustomAudioRoleControl_tr_s(const char* s);
struct seaqt_string QCustomAudioRoleControl_trUtf8_s(const char* s);
struct seaqt_string QCustomAudioRoleControl_customAudioRole(const QCustomAudioRoleControl* self);
void QCustomAudioRoleControl_setCustomAudioRole(QCustomAudioRoleControl* self, struct seaqt_string role);
struct seaqt_array /* of struct seaqt_string */  QCustomAudioRoleControl_supportedCustomAudioRoles(const QCustomAudioRoleControl* self);
void QCustomAudioRoleControl_customAudioRoleChanged(QCustomAudioRoleControl* self, struct seaqt_string role);
void QCustomAudioRoleControl_connect_customAudioRoleChanged(QCustomAudioRoleControl* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t));
struct seaqt_string QCustomAudioRoleControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QCustomAudioRoleControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QCustomAudioRoleControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QCustomAudioRoleControl_trUtf8_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QCustomAudioRoleControl_staticMetaObject();
void QCustomAudioRoleControl_delete(QCustomAudioRoleControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
