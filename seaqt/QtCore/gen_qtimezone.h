#pragma once
#ifndef SEAQT_QTCORE_GEN_QTIMEZONE_H
#define SEAQT_QTCORE_GEN_QTIMEZONE_H

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
class QLocale;
class QTimeZone;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTimeZone__OffsetData)
typedef QTimeZone::OffsetData QTimeZone__OffsetData;
#else
class QTimeZone__OffsetData;
#endif
#else
typedef struct QDateTime QDateTime;
typedef struct QLocale QLocale;
typedef struct QTimeZone QTimeZone;
typedef struct QTimeZone__OffsetData QTimeZone__OffsetData;
#endif

QTimeZone* QTimeZone_new();
QTimeZone* QTimeZone_new_spec(int spec);
QTimeZone* QTimeZone_new_offsetSeconds(int offsetSeconds);
QTimeZone* QTimeZone_new_ianaId(struct seaqt_string ianaId);
QTimeZone* QTimeZone_new_zoneId_offsetSeconds_name_abbreviation(struct seaqt_string zoneId, int offsetSeconds, struct seaqt_string name, struct seaqt_string abbreviation);
QTimeZone* QTimeZone_new_from(QTimeZone* from);
QTimeZone* QTimeZone_new_zoneId_offsetSeconds_name_abbreviation_territory(struct seaqt_string zoneId, int offsetSeconds, struct seaqt_string name, struct seaqt_string abbreviation, unsigned short territory);
QTimeZone* QTimeZone_new_zoneId_offsetSeconds_name_abbreviation_territory_comment(struct seaqt_string zoneId, int offsetSeconds, struct seaqt_string name, struct seaqt_string abbreviation, unsigned short territory, struct seaqt_string comment);

void QTimeZone_operatorAssign(QTimeZone* self, QTimeZone* from);
void QTimeZone_swap(QTimeZone* self, QTimeZone* other);
bool QTimeZone_isValid(const QTimeZone* self);
QTimeZone* QTimeZone_fromSecondsAheadOfUtc(int offset);
int QTimeZone_timeSpec(const QTimeZone* self);
int QTimeZone_fixedSecondsAheadOfUtc(const QTimeZone* self);
bool QTimeZone_isUtcOrFixedOffset_spec(int spec);
bool QTimeZone_isUtcOrFixedOffset(const QTimeZone* self);
QTimeZone* QTimeZone_asBackendZone(const QTimeZone* self);
struct seaqt_string QTimeZone_id(const QTimeZone* self);
unsigned short QTimeZone_territory(const QTimeZone* self);
unsigned short QTimeZone_country(const QTimeZone* self);
struct seaqt_string QTimeZone_comment(const QTimeZone* self);
struct seaqt_string QTimeZone_displayName_atDateTime(const QTimeZone* self, QDateTime* atDateTime);
struct seaqt_string QTimeZone_displayName_timeType(const QTimeZone* self, int timeType);
struct seaqt_string QTimeZone_abbreviation(const QTimeZone* self, QDateTime* atDateTime);
int QTimeZone_offsetFromUtc(const QTimeZone* self, QDateTime* atDateTime);
int QTimeZone_standardTimeOffset(const QTimeZone* self, QDateTime* atDateTime);
int QTimeZone_daylightTimeOffset(const QTimeZone* self, QDateTime* atDateTime);
bool QTimeZone_hasDaylightTime(const QTimeZone* self);
bool QTimeZone_isDaylightTime(const QTimeZone* self, QDateTime* atDateTime);
QTimeZone__OffsetData* QTimeZone_offsetData(const QTimeZone* self, QDateTime* forDateTime);
bool QTimeZone_hasTransitions(const QTimeZone* self);
QTimeZone__OffsetData* QTimeZone_nextTransition(const QTimeZone* self, QDateTime* afterDateTime);
QTimeZone__OffsetData* QTimeZone_previousTransition(const QTimeZone* self, QDateTime* beforeDateTime);
struct seaqt_array /* of QTimeZone__OffsetData* */  QTimeZone_transitions(const QTimeZone* self, QDateTime* fromDateTime, QDateTime* toDateTime);
struct seaqt_string QTimeZone_systemTimeZoneId();
QTimeZone* QTimeZone_systemTimeZone();
QTimeZone* QTimeZone_utc();
bool QTimeZone_isTimeZoneIdAvailable(struct seaqt_string ianaId);
struct seaqt_array /* of struct seaqt_string */  QTimeZone_availableTimeZoneIds();
struct seaqt_array /* of struct seaqt_string */  QTimeZone_availableTimeZoneIds_territory(unsigned short territory);
struct seaqt_array /* of struct seaqt_string */  QTimeZone_availableTimeZoneIds_offsetSeconds(int offsetSeconds);
struct seaqt_string QTimeZone_ianaIdToWindowsId(struct seaqt_string ianaId);
struct seaqt_string QTimeZone_windowsIdToDefaultIanaId_windowsId(struct seaqt_string windowsId);
struct seaqt_string QTimeZone_windowsIdToDefaultIanaId_windowsId_territory(struct seaqt_string windowsId, unsigned short territory);
struct seaqt_array /* of struct seaqt_string */  QTimeZone_windowsIdToIanaIds_windowsId(struct seaqt_string windowsId);
struct seaqt_array /* of struct seaqt_string */  QTimeZone_windowsIdToIanaIds_windowsId_territory(struct seaqt_string windowsId, unsigned short territory);
struct seaqt_string QTimeZone_displayName_atDateTime_nameType(const QTimeZone* self, QDateTime* atDateTime, int nameType);
struct seaqt_string QTimeZone_displayName_atDateTime_nameType_locale(const QTimeZone* self, QDateTime* atDateTime, int nameType, QLocale* locale);
struct seaqt_string QTimeZone_displayName_timeType_nameType(const QTimeZone* self, int timeType, int nameType);
struct seaqt_string QTimeZone_displayName_timeType_nameType_locale(const QTimeZone* self, int timeType, int nameType, QLocale* locale);

void QTimeZone_delete(QTimeZone* self);

QTimeZone__OffsetData* QTimeZone__OffsetData_new(QTimeZone__OffsetData* from);

struct seaqt_string QTimeZone__OffsetData_abbreviation(const QTimeZone__OffsetData* self);
void QTimeZone__OffsetData_setAbbreviation(QTimeZone__OffsetData* self, struct seaqt_string abbreviation);
QDateTime* QTimeZone__OffsetData_atUtc(const QTimeZone__OffsetData* self);
void QTimeZone__OffsetData_setAtUtc(QTimeZone__OffsetData* self, QDateTime* atUtc);
int QTimeZone__OffsetData_offsetFromUtc(const QTimeZone__OffsetData* self);
void QTimeZone__OffsetData_setOffsetFromUtc(QTimeZone__OffsetData* self, int offsetFromUtc);
int QTimeZone__OffsetData_standardTimeOffset(const QTimeZone__OffsetData* self);
void QTimeZone__OffsetData_setStandardTimeOffset(QTimeZone__OffsetData* self, int standardTimeOffset);
int QTimeZone__OffsetData_daylightTimeOffset(const QTimeZone__OffsetData* self);
void QTimeZone__OffsetData_setDaylightTimeOffset(QTimeZone__OffsetData* self, int daylightTimeOffset);
void QTimeZone__OffsetData_operatorAssign(QTimeZone__OffsetData* self, QTimeZone__OffsetData* from);

void QTimeZone__OffsetData_delete(QTimeZone__OffsetData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
