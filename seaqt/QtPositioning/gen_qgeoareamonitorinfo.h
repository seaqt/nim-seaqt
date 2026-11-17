#pragma once
#ifndef SEAQT_QTPOSITIONING_GEN_QGEOAREAMONITORINFO_H
#define SEAQT_QTPOSITIONING_GEN_QGEOAREAMONITORINFO_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDateTime;
class QGeoAreaMonitorInfo;
class QGeoShape;
class QVariant;
#else
typedef struct QDateTime QDateTime;
typedef struct QGeoAreaMonitorInfo QGeoAreaMonitorInfo;
typedef struct QGeoShape QGeoShape;
typedef struct QVariant QVariant;
#endif

QGeoAreaMonitorInfo* QGeoAreaMonitorInfo_new();
QGeoAreaMonitorInfo* QGeoAreaMonitorInfo_new_from(QGeoAreaMonitorInfo* from);
QGeoAreaMonitorInfo* QGeoAreaMonitorInfo_new_name(struct seaqt_string name);

void QGeoAreaMonitorInfo_operatorAssign(QGeoAreaMonitorInfo* self, QGeoAreaMonitorInfo* from);
void QGeoAreaMonitorInfo_swap(QGeoAreaMonitorInfo* self, QGeoAreaMonitorInfo* other);
struct seaqt_string QGeoAreaMonitorInfo_name(const QGeoAreaMonitorInfo* self);
void QGeoAreaMonitorInfo_setName(QGeoAreaMonitorInfo* self, struct seaqt_string name);
struct seaqt_string QGeoAreaMonitorInfo_identifier(const QGeoAreaMonitorInfo* self);
bool QGeoAreaMonitorInfo_isValid(const QGeoAreaMonitorInfo* self);
QGeoShape* QGeoAreaMonitorInfo_area(const QGeoAreaMonitorInfo* self);
void QGeoAreaMonitorInfo_setArea(QGeoAreaMonitorInfo* self, QGeoShape* newShape);
QDateTime* QGeoAreaMonitorInfo_expiration(const QGeoAreaMonitorInfo* self);
void QGeoAreaMonitorInfo_setExpiration(QGeoAreaMonitorInfo* self, QDateTime* expiry);
bool QGeoAreaMonitorInfo_isPersistent(const QGeoAreaMonitorInfo* self);
void QGeoAreaMonitorInfo_setPersistent(QGeoAreaMonitorInfo* self, bool isPersistent);
struct seaqt_map /* of struct seaqt_string to QVariant* */  QGeoAreaMonitorInfo_notificationParameters(const QGeoAreaMonitorInfo* self);
void QGeoAreaMonitorInfo_setNotificationParameters(QGeoAreaMonitorInfo* self, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters);
void QGeoAreaMonitorInfo_detach(QGeoAreaMonitorInfo* self);

void QGeoAreaMonitorInfo_delete(QGeoAreaMonitorInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
