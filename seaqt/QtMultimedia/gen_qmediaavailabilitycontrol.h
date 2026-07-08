#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIAAVAILABILITYCONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIAAVAILABILITYCONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMediaAvailabilityControl;
class QMediaControl;
class QMetaMethod;
class QMetaObject;
class QObject;
#else
typedef struct QMediaAvailabilityControl QMediaAvailabilityControl;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
#endif

void QMediaAvailabilityControl_virtbase(QMediaAvailabilityControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QMediaAvailabilityControl_metaObject(const QMediaAvailabilityControl* self);
void* QMediaAvailabilityControl_metacast(QMediaAvailabilityControl* self, const char* param1);
int QMediaAvailabilityControl_metacall(QMediaAvailabilityControl* self, int param1, int param2, void** param3);
struct seaqt_string QMediaAvailabilityControl_tr_s(const char* s);
struct seaqt_string QMediaAvailabilityControl_trUtf8_s(const char* s);
int QMediaAvailabilityControl_availability(const QMediaAvailabilityControl* self);
void QMediaAvailabilityControl_availabilityChanged(QMediaAvailabilityControl* self, int availability);
void QMediaAvailabilityControl_connect_availabilityChanged(QMediaAvailabilityControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct seaqt_string QMediaAvailabilityControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QMediaAvailabilityControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QMediaAvailabilityControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QMediaAvailabilityControl_trUtf8_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QMediaAvailabilityControl_staticMetaObject();
void QMediaAvailabilityControl_delete(QMediaAvailabilityControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
