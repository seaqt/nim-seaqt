#pragma once
#ifndef SEAQT_QTCORE_GEN_QDATETIME_H
#define SEAQT_QTCORE_GEN_QDATETIME_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCalendar;
class QDate;
class QDateTime;
class QTime;
class QTimeZone;
#else
typedef struct QCalendar QCalendar;
typedef struct QDate QDate;
typedef struct QDateTime QDateTime;
typedef struct QTime QTime;
typedef struct QTimeZone QTimeZone;
#endif

QDate* QDate_new();
QDate* QDate_new_y_m_d(int y, int m, int d);
QDate* QDate_new_y_m_d_cal(int y, int m, int d, QCalendar* cal);
QDate* QDate_new_from(QDate* from);

bool QDate_isNull(const QDate* self);
bool QDate_isValid(const QDate* self);
int QDate_year(const QDate* self);
int QDate_month(const QDate* self);
int QDate_day(const QDate* self);
int QDate_dayOfWeek(const QDate* self);
int QDate_dayOfYear(const QDate* self);
int QDate_daysInMonth(const QDate* self);
int QDate_daysInYear(const QDate* self);
int QDate_weekNumber(const QDate* self);
int QDate_year_cal(const QDate* self, QCalendar* cal);
int QDate_month_cal(const QDate* self, QCalendar* cal);
int QDate_day_cal(const QDate* self, QCalendar* cal);
int QDate_dayOfWeek_cal(const QDate* self, QCalendar* cal);
int QDate_dayOfYear_cal(const QDate* self, QCalendar* cal);
int QDate_daysInMonth_cal(const QDate* self, QCalendar* cal);
int QDate_daysInYear_cal(const QDate* self, QCalendar* cal);
QDateTime* QDate_startOfDay(const QDate* self);
QDateTime* QDate_endOfDay(const QDate* self);
QDateTime* QDate_startOfDay_zone(const QDate* self, QTimeZone* zone);
QDateTime* QDate_endOfDay_zone(const QDate* self, QTimeZone* zone);
struct seaqt_string QDate_shortMonthName_month(int month);
struct seaqt_string QDate_shortDayName_weekday(int weekday);
struct seaqt_string QDate_longMonthName_month(int month);
struct seaqt_string QDate_longDayName_weekday(int weekday);
struct seaqt_string QDate_toString(const QDate* self);
struct seaqt_string QDate_toString_Qt_DateFormat_QCalendar(const QDate* self, int format, QCalendar* cal);
struct seaqt_string QDate_toString_QString(const QDate* self, struct seaqt_string format);
struct seaqt_string QDate_toString_QString_QCalendar(const QDate* self, struct seaqt_string format, QCalendar* cal);
bool QDate_setDate_year_month_day(QDate* self, int year, int month, int day);
bool QDate_setDate_year_month_day_cal(QDate* self, int year, int month, int day, QCalendar* cal);
void QDate_getDate_pint_pint_pint(QDate* self, int* year, int* month, int* day);
void QDate_getDate_const_pint_pint_pint(const QDate* self, int* year, int* month, int* day);
QDate* QDate_addDays(const QDate* self, long long days);
QDate* QDate_addMonths_months(const QDate* self, int months);
QDate* QDate_addYears_years(const QDate* self, int years);
QDate* QDate_addMonths_months_cal(const QDate* self, int months, QCalendar* cal);
QDate* QDate_addYears_years_cal(const QDate* self, int years, QCalendar* cal);
long long QDate_daysTo(const QDate* self, QDate* param1);
bool QDate_operatorEqual(const QDate* self, QDate* other);
bool QDate_operatorNotEqual(const QDate* self, QDate* other);
bool QDate_operatorLesser(const QDate* self, QDate* other);
bool QDate_operatorLesserOrEqual(const QDate* self, QDate* other);
bool QDate_operatorGreater(const QDate* self, QDate* other);
bool QDate_operatorGreaterOrEqual(const QDate* self, QDate* other);
QDate* QDate_currentDate();
QDate* QDate_fromString_s(struct seaqt_string s);
QDate* QDate_fromString_s_format(struct seaqt_string s, struct seaqt_string format);
QDate* QDate_fromString_s_format_cal(struct seaqt_string s, struct seaqt_string format, QCalendar* cal);
bool QDate_isValid_y_m_d(int y, int m, int d);
bool QDate_isLeapYear(int year);
QDate* QDate_fromJulianDay(long long jd_);
long long QDate_toJulianDay(const QDate* self);
int QDate_weekNumber_yearNum(const QDate* self, int* yearNum);
QDateTime* QDate_startOfDay_spec(const QDate* self, int spec);
QDateTime* QDate_startOfDay_spec_offsetSeconds(const QDate* self, int spec, int offsetSeconds);
QDateTime* QDate_endOfDay_spec(const QDate* self, int spec);
QDateTime* QDate_endOfDay_spec_offsetSeconds(const QDate* self, int spec, int offsetSeconds);
struct seaqt_string QDate_shortMonthName_month_type(int month, int type);
struct seaqt_string QDate_shortDayName_weekday_type(int weekday, int type);
struct seaqt_string QDate_longMonthName_month_type(int month, int type);
struct seaqt_string QDate_longDayName_weekday_type(int weekday, int type);
struct seaqt_string QDate_toString_Qt_DateFormat(const QDate* self, int format);
QDate* QDate_fromString_s_f(struct seaqt_string s, int f);

void QDate_delete(QDate* self);

QTime* QTime_new();
QTime* QTime_new_h_m(int h, int m);
QTime* QTime_new_from(QTime* from);
QTime* QTime_new_h_m_s(int h, int m, int s);
QTime* QTime_new_h_m_s_ms(int h, int m, int s, int ms);

bool QTime_isNull(const QTime* self);
bool QTime_isValid(const QTime* self);
int QTime_hour(const QTime* self);
int QTime_minute(const QTime* self);
int QTime_second(const QTime* self);
int QTime_msec(const QTime* self);
struct seaqt_string QTime_toString(const QTime* self);
struct seaqt_string QTime_toString_QString(const QTime* self, struct seaqt_string format);
bool QTime_setHMS_h_m_s(QTime* self, int h, int m, int s);
QTime* QTime_addSecs(const QTime* self, int secs);
int QTime_secsTo(const QTime* self, QTime* param1);
QTime* QTime_addMSecs(const QTime* self, int ms);
int QTime_msecsTo(const QTime* self, QTime* param1);
bool QTime_operatorEqual(const QTime* self, QTime* other);
bool QTime_operatorNotEqual(const QTime* self, QTime* other);
bool QTime_operatorLesser(const QTime* self, QTime* other);
bool QTime_operatorLesserOrEqual(const QTime* self, QTime* other);
bool QTime_operatorGreater(const QTime* self, QTime* other);
bool QTime_operatorGreaterOrEqual(const QTime* self, QTime* other);
QTime* QTime_fromMSecsSinceStartOfDay(int msecs);
int QTime_msecsSinceStartOfDay(const QTime* self);
QTime* QTime_currentTime();
QTime* QTime_fromString_s(struct seaqt_string s);
QTime* QTime_fromString_s_format(struct seaqt_string s, struct seaqt_string format);
bool QTime_isValid_h_m_s(int h, int m, int s);
void QTime_start(QTime* self);
int QTime_restart(QTime* self);
int QTime_elapsed(const QTime* self);
struct seaqt_string QTime_toString_Qt_DateFormat(const QTime* self, int f);
bool QTime_setHMS_h_m_s_ms(QTime* self, int h, int m, int s, int ms);
QTime* QTime_fromString_s_f(struct seaqt_string s, int f);
bool QTime_isValid_h_m_s_ms(int h, int m, int s, int ms);

void QTime_delete(QTime* self);

QDateTime* QDateTime_new();
QDateTime* QDateTime_new_QDate(QDate* param1);
QDateTime* QDateTime_new_QDate_QTime(QDate* param1, QTime* param2);
QDateTime* QDateTime_new_QDate_QTime_Qt_TimeSpec_int(QDate* date, QTime* time, int spec, int offsetSeconds);
QDateTime* QDateTime_new_QDate_QTime_QTimeZone(QDate* date, QTime* time, QTimeZone* timeZone);
QDateTime* QDateTime_new_QDateTime(QDateTime* from);
QDateTime* QDateTime_new_QDate_QTime_Qt_TimeSpec(QDate* param1, QTime* param2, int spec);

void QDateTime_operatorAssign(QDateTime* self, QDateTime* from);
void QDateTime_swap(QDateTime* self, QDateTime* other);
bool QDateTime_isNull(const QDateTime* self);
bool QDateTime_isValid(const QDateTime* self);
QDate* QDateTime_date(const QDateTime* self);
QTime* QDateTime_time(const QDateTime* self);
int QDateTime_timeSpec(const QDateTime* self);
int QDateTime_offsetFromUtc(const QDateTime* self);
QTimeZone* QDateTime_timeZone(const QDateTime* self);
struct seaqt_string QDateTime_timeZoneAbbreviation(const QDateTime* self);
bool QDateTime_isDaylightTime(const QDateTime* self);
long long QDateTime_toMSecsSinceEpoch(const QDateTime* self);
long long QDateTime_toSecsSinceEpoch(const QDateTime* self);
void QDateTime_setDate(QDateTime* self, QDate* date);
void QDateTime_setTime(QDateTime* self, QTime* time);
void QDateTime_setTimeSpec(QDateTime* self, int spec);
void QDateTime_setOffsetFromUtc(QDateTime* self, int offsetSeconds);
void QDateTime_setTimeZone(QDateTime* self, QTimeZone* toZone);
void QDateTime_setMSecsSinceEpoch(QDateTime* self, long long msecs);
void QDateTime_setSecsSinceEpoch(QDateTime* self, long long secs);
struct seaqt_string QDateTime_toString(const QDateTime* self);
struct seaqt_string QDateTime_toString_QString(const QDateTime* self, struct seaqt_string format);
struct seaqt_string QDateTime_toString_QString_QCalendar(const QDateTime* self, struct seaqt_string format, QCalendar* cal);
QDateTime* QDateTime_addDays(const QDateTime* self, long long days);
QDateTime* QDateTime_addMonths(const QDateTime* self, int months);
QDateTime* QDateTime_addYears(const QDateTime* self, int years);
QDateTime* QDateTime_addSecs(const QDateTime* self, long long secs);
QDateTime* QDateTime_addMSecs(const QDateTime* self, long long msecs);
QDateTime* QDateTime_toTimeSpec(const QDateTime* self, int spec);
QDateTime* QDateTime_toLocalTime(const QDateTime* self);
QDateTime* QDateTime_toUTC(const QDateTime* self);
QDateTime* QDateTime_toOffsetFromUtc(const QDateTime* self, int offsetSeconds);
QDateTime* QDateTime_toTimeZone(const QDateTime* self, QTimeZone* toZone);
long long QDateTime_daysTo(const QDateTime* self, QDateTime* param1);
long long QDateTime_secsTo(const QDateTime* self, QDateTime* param1);
long long QDateTime_msecsTo(const QDateTime* self, QDateTime* param1);
bool QDateTime_operatorEqual(const QDateTime* self, QDateTime* other);
bool QDateTime_operatorNotEqual(const QDateTime* self, QDateTime* other);
bool QDateTime_operatorLesser(const QDateTime* self, QDateTime* other);
bool QDateTime_operatorLesserOrEqual(const QDateTime* self, QDateTime* other);
bool QDateTime_operatorGreater(const QDateTime* self, QDateTime* other);
bool QDateTime_operatorGreaterOrEqual(const QDateTime* self, QDateTime* other);
void QDateTime_setUtcOffset(QDateTime* self, int seconds);
int QDateTime_utcOffset(const QDateTime* self);
QDateTime* QDateTime_currentDateTime();
QDateTime* QDateTime_currentDateTimeUtc();
QDateTime* QDateTime_fromString_s(struct seaqt_string s);
QDateTime* QDateTime_fromString_s_format(struct seaqt_string s, struct seaqt_string format);
QDateTime* QDateTime_fromString_s_format_cal(struct seaqt_string s, struct seaqt_string format, QCalendar* cal);
unsigned int QDateTime_toTime_t(const QDateTime* self);
void QDateTime_setTime_t(QDateTime* self, unsigned int secsSince1Jan1970UTC);
QDateTime* QDateTime_fromTime_t_secsSince1Jan1970UTC(unsigned int secsSince1Jan1970UTC);
QDateTime* QDateTime_fromTime_t_secsSince1Jan1970UTC_spec(unsigned int secsSince1Jan1970UTC, int spec);
QDateTime* QDateTime_fromTime_t_secsSince1Jan1970UTC_timeZone(unsigned int secsSince1Jan1970UTC, QTimeZone* timeZone);
QDateTime* QDateTime_fromMSecsSinceEpoch_msecs(long long msecs);
QDateTime* QDateTime_fromMSecsSinceEpoch_msecs_spec(long long msecs, int spec);
QDateTime* QDateTime_fromSecsSinceEpoch_secs(long long secs);
QDateTime* QDateTime_fromMSecsSinceEpoch_msecs_timeZone(long long msecs, QTimeZone* timeZone);
QDateTime* QDateTime_fromSecsSinceEpoch_secs_timeZone(long long secs, QTimeZone* timeZone);
long long QDateTime_currentMSecsSinceEpoch();
long long QDateTime_currentSecsSinceEpoch();
struct seaqt_string QDateTime_toString_Qt_DateFormat(const QDateTime* self, int format);
QDateTime* QDateTime_fromString_s_f(struct seaqt_string s, int f);
QDateTime* QDateTime_fromTime_t_secsSince1Jan1970UTC_spec_offsetFromUtc(unsigned int secsSince1Jan1970UTC, int spec, int offsetFromUtc);
QDateTime* QDateTime_fromMSecsSinceEpoch_msecs_spec_offsetFromUtc(long long msecs, int spec, int offsetFromUtc);
QDateTime* QDateTime_fromSecsSinceEpoch_secs_spe(long long secs, int spe);
QDateTime* QDateTime_fromSecsSinceEpoch_secs_spe_offsetFromUtc(long long secs, int spe, int offsetFromUtc);

void QDateTime_delete(QDateTime* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
