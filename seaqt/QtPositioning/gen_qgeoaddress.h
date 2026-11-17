#pragma once
#ifndef SEAQT_QTPOSITIONING_GEN_QGEOADDRESS_H
#define SEAQT_QTPOSITIONING_GEN_QGEOADDRESS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QGeoAddress;
#else
typedef struct QGeoAddress QGeoAddress;
#endif

QGeoAddress* QGeoAddress_new();
QGeoAddress* QGeoAddress_new_from(QGeoAddress* from);

void QGeoAddress_operatorAssign(QGeoAddress* self, QGeoAddress* from);
bool QGeoAddress_operatorEqual(const QGeoAddress* self, QGeoAddress* other);
bool QGeoAddress_operatorNotEqual(const QGeoAddress* self, QGeoAddress* other);
struct seaqt_string QGeoAddress_text(const QGeoAddress* self);
void QGeoAddress_setText(QGeoAddress* self, struct seaqt_string text);
struct seaqt_string QGeoAddress_country(const QGeoAddress* self);
void QGeoAddress_setCountry(QGeoAddress* self, struct seaqt_string country);
struct seaqt_string QGeoAddress_countryCode(const QGeoAddress* self);
void QGeoAddress_setCountryCode(QGeoAddress* self, struct seaqt_string countryCode);
struct seaqt_string QGeoAddress_state(const QGeoAddress* self);
void QGeoAddress_setState(QGeoAddress* self, struct seaqt_string state);
struct seaqt_string QGeoAddress_county(const QGeoAddress* self);
void QGeoAddress_setCounty(QGeoAddress* self, struct seaqt_string county);
struct seaqt_string QGeoAddress_city(const QGeoAddress* self);
void QGeoAddress_setCity(QGeoAddress* self, struct seaqt_string city);
struct seaqt_string QGeoAddress_district(const QGeoAddress* self);
void QGeoAddress_setDistrict(QGeoAddress* self, struct seaqt_string district);
struct seaqt_string QGeoAddress_postalCode(const QGeoAddress* self);
void QGeoAddress_setPostalCode(QGeoAddress* self, struct seaqt_string postalCode);
struct seaqt_string QGeoAddress_street(const QGeoAddress* self);
void QGeoAddress_setStreet(QGeoAddress* self, struct seaqt_string street);
bool QGeoAddress_isEmpty(const QGeoAddress* self);
void QGeoAddress_clear(QGeoAddress* self);
bool QGeoAddress_isTextGenerated(const QGeoAddress* self);

void QGeoAddress_delete(QGeoAddress* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
