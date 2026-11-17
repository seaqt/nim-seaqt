#include <QCalendar>
#include <QDate>
#include <QDateTime>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTime>
#include <QTimeZone>
#include <qdatetime.h>
#include "gen_qdatetime.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QDate* QDate_new() {
	return new (std::nothrow) QDate();
}

QDate* QDate_new_y_m_d(int y, int m, int d) {
	return new (std::nothrow) QDate(static_cast<int>(y), static_cast<int>(m), static_cast<int>(d));
}

QDate* QDate_new_y_m_d_cal(int y, int m, int d, QCalendar* cal) {
	return new (std::nothrow) QDate(static_cast<int>(y), static_cast<int>(m), static_cast<int>(d), *cal);
}

QDate* QDate_new_from(QDate* from) {
	return new (std::nothrow) QDate(*from);
}

bool QDate_isNull(const QDate* self) {
	return self->isNull();
}

bool QDate_isValid(const QDate* self) {
	return self->isValid();
}

int QDate_year(const QDate* self) {
	return self->year();
}

int QDate_month(const QDate* self) {
	return self->month();
}

int QDate_day(const QDate* self) {
	return self->day();
}

int QDate_dayOfWeek(const QDate* self) {
	return self->dayOfWeek();
}

int QDate_dayOfYear(const QDate* self) {
	return self->dayOfYear();
}

int QDate_daysInMonth(const QDate* self) {
	return self->daysInMonth();
}

int QDate_daysInYear(const QDate* self) {
	return self->daysInYear();
}

int QDate_weekNumber(const QDate* self) {
	return self->weekNumber();
}

int QDate_year_cal(const QDate* self, QCalendar* cal) {
	return self->year(*cal);
}

int QDate_month_cal(const QDate* self, QCalendar* cal) {
	return self->month(*cal);
}

int QDate_day_cal(const QDate* self, QCalendar* cal) {
	return self->day(*cal);
}

int QDate_dayOfWeek_cal(const QDate* self, QCalendar* cal) {
	return self->dayOfWeek(*cal);
}

int QDate_dayOfYear_cal(const QDate* self, QCalendar* cal) {
	return self->dayOfYear(*cal);
}

int QDate_daysInMonth_cal(const QDate* self, QCalendar* cal) {
	return self->daysInMonth(*cal);
}

int QDate_daysInYear_cal(const QDate* self, QCalendar* cal) {
	return self->daysInYear(*cal);
}

QDateTime* QDate_startOfDay_spec(const QDate* self, int spec) {
	return new QDateTime(self->startOfDay(static_cast<Qt::TimeSpec>(spec)));
}

QDateTime* QDate_endOfDay_spec(const QDate* self, int spec) {
	return new QDateTime(self->endOfDay(static_cast<Qt::TimeSpec>(spec)));
}

QDateTime* QDate_startOfDay_zone(const QDate* self, QTimeZone* zone) {
	return new QDateTime(self->startOfDay(*zone));
}

QDateTime* QDate_endOfDay_zone(const QDate* self, QTimeZone* zone) {
	return new QDateTime(self->endOfDay(*zone));
}

QDateTime* QDate_startOfDay(const QDate* self) {
	return new QDateTime(self->startOfDay());
}

QDateTime* QDate_endOfDay(const QDate* self) {
	return new QDateTime(self->endOfDay());
}

struct seaqt_string QDate_toString(const QDate* self) {
	QString _ret = self->toString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDate_toString_QString(const QDate* self, struct seaqt_string format) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	QString _ret = self->toString(format_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDate_toString_QString_QCalendar(const QDate* self, struct seaqt_string format, QCalendar* cal) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	QString _ret = self->toString(format_QString, *cal);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QDate_setDate_year_month_day(QDate* self, int year, int month, int day) {
	return self->setDate(static_cast<int>(year), static_cast<int>(month), static_cast<int>(day));
}

bool QDate_setDate_year_month_day_cal(QDate* self, int year, int month, int day, QCalendar* cal) {
	return self->setDate(static_cast<int>(year), static_cast<int>(month), static_cast<int>(day), *cal);
}

void QDate_getDate(const QDate* self, int* year, int* month, int* day) {
	self->getDate(static_cast<int*>(year), static_cast<int*>(month), static_cast<int*>(day));
}

QDate* QDate_addDays(const QDate* self, long long days) {
	return new QDate(self->addDays(static_cast<qint64>(days)));
}

QDate* QDate_addMonths_months(const QDate* self, int months) {
	return new QDate(self->addMonths(static_cast<int>(months)));
}

QDate* QDate_addYears_years(const QDate* self, int years) {
	return new QDate(self->addYears(static_cast<int>(years)));
}

QDate* QDate_addMonths_months_cal(const QDate* self, int months, QCalendar* cal) {
	return new QDate(self->addMonths(static_cast<int>(months), *cal));
}

QDate* QDate_addYears_years_cal(const QDate* self, int years, QCalendar* cal) {
	return new QDate(self->addYears(static_cast<int>(years), *cal));
}

long long QDate_daysTo(const QDate* self, QDate* d) {
	qint64 _ret = self->daysTo(*d);
	return static_cast<long long>(_ret);
}

QDate* QDate_currentDate() {
	return new QDate(QDate::currentDate());
}

QDate* QDate_fromString_QString(struct seaqt_string string) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	return new QDate(QDate::fromString(string_QString));
}

QDate* QDate_fromString_QString_QString_QCalendar(struct seaqt_string string, struct seaqt_string format, QCalendar* cal) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	QString format_QString = QString::fromUtf8(format.data, format.len);
	return new QDate(QDate::fromString(string_QString, format_QString, *cal));
}

QDate* QDate_fromString_QString_QString(struct seaqt_string string, struct seaqt_string format) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	QString format_QString = QString::fromUtf8(format.data, format.len);
	return new QDate(QDate::fromString(string_QString, format_QString));
}

QDate* QDate_fromString_QString_QString_int_QCalendar(struct seaqt_string string, struct seaqt_string format, int baseYear, QCalendar* cal) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	QString format_QString = QString::fromUtf8(format.data, format.len);
	return new QDate(QDate::fromString(string_QString, format_QString, static_cast<int>(baseYear), *cal));
}

bool QDate_isValid_y_m_d(int y, int m, int d) {
	return QDate::isValid(static_cast<int>(y), static_cast<int>(m), static_cast<int>(d));
}

bool QDate_isLeapYear(int year) {
	return QDate::isLeapYear(static_cast<int>(year));
}

QDate* QDate_fromJulianDay(long long jd_) {
	return new QDate(QDate::fromJulianDay(static_cast<qint64>(jd_)));
}

long long QDate_toJulianDay(const QDate* self) {
	qint64 _ret = self->toJulianDay();
	return static_cast<long long>(_ret);
}

int QDate_weekNumber_yearNum(const QDate* self, int* yearNum) {
	return self->weekNumber(static_cast<int*>(yearNum));
}

QDateTime* QDate_startOfDay_spec_offsetSeconds(const QDate* self, int spec, int offsetSeconds) {
	return new QDateTime(self->startOfDay(static_cast<Qt::TimeSpec>(spec), static_cast<int>(offsetSeconds)));
}

QDateTime* QDate_endOfDay_spec_offsetSeconds(const QDate* self, int spec, int offsetSeconds) {
	return new QDateTime(self->endOfDay(static_cast<Qt::TimeSpec>(spec), static_cast<int>(offsetSeconds)));
}

struct seaqt_string QDate_toString_Qt_DateFormat(const QDate* self, int format) {
	QString _ret = self->toString(static_cast<Qt::DateFormat>(format));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QDate* QDate_fromString_QString_Qt_DateFormat(struct seaqt_string string, int format) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	return new QDate(QDate::fromString(string_QString, static_cast<Qt::DateFormat>(format)));
}

QDate* QDate_fromString_QString_QString_int(struct seaqt_string string, struct seaqt_string format, int baseYear) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	QString format_QString = QString::fromUtf8(format.data, format.len);
	return new QDate(QDate::fromString(string_QString, format_QString, static_cast<int>(baseYear)));
}

void QDate_delete(QDate* self) {
	delete self;
}

QTime* QTime_new() {
	return new (std::nothrow) QTime();
}

QTime* QTime_new_h_m(int h, int m) {
	return new (std::nothrow) QTime(static_cast<int>(h), static_cast<int>(m));
}

QTime* QTime_new_from(QTime* from) {
	return new (std::nothrow) QTime(*from);
}

QTime* QTime_new_h_m_s(int h, int m, int s) {
	return new (std::nothrow) QTime(static_cast<int>(h), static_cast<int>(m), static_cast<int>(s));
}

QTime* QTime_new_h_m_s_ms(int h, int m, int s, int ms) {
	return new (std::nothrow) QTime(static_cast<int>(h), static_cast<int>(m), static_cast<int>(s), static_cast<int>(ms));
}

bool QTime_isNull(const QTime* self) {
	return self->isNull();
}

bool QTime_isValid(const QTime* self) {
	return self->isValid();
}

int QTime_hour(const QTime* self) {
	return self->hour();
}

int QTime_minute(const QTime* self) {
	return self->minute();
}

int QTime_second(const QTime* self) {
	return self->second();
}

int QTime_msec(const QTime* self) {
	return self->msec();
}

struct seaqt_string QTime_toString(const QTime* self) {
	QString _ret = self->toString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QTime_toString_QString(const QTime* self, struct seaqt_string format) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	QString _ret = self->toString(format_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTime_setHMS_h_m_s(QTime* self, int h, int m, int s) {
	return self->setHMS(static_cast<int>(h), static_cast<int>(m), static_cast<int>(s));
}

QTime* QTime_addSecs(const QTime* self, int secs) {
	return new QTime(self->addSecs(static_cast<int>(secs)));
}

int QTime_secsTo(const QTime* self, QTime* t) {
	return self->secsTo(*t);
}

QTime* QTime_addMSecs(const QTime* self, int ms) {
	return new QTime(self->addMSecs(static_cast<int>(ms)));
}

int QTime_msecsTo(const QTime* self, QTime* t) {
	return self->msecsTo(*t);
}

QTime* QTime_fromMSecsSinceStartOfDay(int msecs) {
	return new QTime(QTime::fromMSecsSinceStartOfDay(static_cast<int>(msecs)));
}

int QTime_msecsSinceStartOfDay(const QTime* self) {
	return self->msecsSinceStartOfDay();
}

QTime* QTime_currentTime() {
	return new QTime(QTime::currentTime());
}

QTime* QTime_fromString_QString(struct seaqt_string string) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	return new QTime(QTime::fromString(string_QString));
}

QTime* QTime_fromString_QString_QString(struct seaqt_string string, struct seaqt_string format) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	QString format_QString = QString::fromUtf8(format.data, format.len);
	return new QTime(QTime::fromString(string_QString, format_QString));
}

bool QTime_isValid_h_m_s(int h, int m, int s) {
	return QTime::isValid(static_cast<int>(h), static_cast<int>(m), static_cast<int>(s));
}

struct seaqt_string QTime_toString_Qt_DateFormat(const QTime* self, int f) {
	QString _ret = self->toString(static_cast<Qt::DateFormat>(f));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTime_setHMS_h_m_s_ms(QTime* self, int h, int m, int s, int ms) {
	return self->setHMS(static_cast<int>(h), static_cast<int>(m), static_cast<int>(s), static_cast<int>(ms));
}

QTime* QTime_fromString_QString_Qt_DateFormat(struct seaqt_string string, int format) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	return new QTime(QTime::fromString(string_QString, static_cast<Qt::DateFormat>(format)));
}

bool QTime_isValid_h_m_s_ms(int h, int m, int s, int ms) {
	return QTime::isValid(static_cast<int>(h), static_cast<int>(m), static_cast<int>(s), static_cast<int>(ms));
}

void QTime_delete(QTime* self) {
	delete self;
}

QDateTime* QDateTime_new() {
	return new (std::nothrow) QDateTime();
}

QDateTime* QDateTime_new_date_time_spec(QDate* date, QTime* time, int spec) {
	return new (std::nothrow) QDateTime(*date, *time, static_cast<Qt::TimeSpec>(spec));
}

QDateTime* QDateTime_new_date_time_timeZone(QDate* date, QTime* time, QTimeZone* timeZone) {
	return new (std::nothrow) QDateTime(*date, *time, *timeZone);
}

QDateTime* QDateTime_new_date_time(QDate* date, QTime* time) {
	return new (std::nothrow) QDateTime(*date, *time);
}

QDateTime* QDateTime_new_from(QDateTime* from) {
	return new (std::nothrow) QDateTime(*from);
}

QDateTime* QDateTime_new_date_time_spec_offsetSeconds(QDate* date, QTime* time, int spec, int offsetSeconds) {
	return new (std::nothrow) QDateTime(*date, *time, static_cast<Qt::TimeSpec>(spec), static_cast<int>(offsetSeconds));
}

QDateTime* QDateTime_new_date_time_timeZone_resolve(QDate* date, QTime* time, QTimeZone* timeZone, int resolve) {
	return new (std::nothrow) QDateTime(*date, *time, *timeZone, static_cast<QDateTime::TransitionResolution>(resolve));
}

QDateTime* QDateTime_new_date_time_resolve(QDate* date, QTime* time, int resolve) {
	return new (std::nothrow) QDateTime(*date, *time, static_cast<QDateTime::TransitionResolution>(resolve));
}

void QDateTime_operatorAssign(QDateTime* self, QDateTime* from) {
	self->operator=(*from);
}

void QDateTime_swap(QDateTime* self, QDateTime* other) {
	self->swap(*other);
}

bool QDateTime_isNull(const QDateTime* self) {
	return self->isNull();
}

bool QDateTime_isValid(const QDateTime* self) {
	return self->isValid();
}

QDate* QDateTime_date(const QDateTime* self) {
	return new QDate(self->date());
}

QTime* QDateTime_time(const QDateTime* self) {
	return new QTime(self->time());
}

int QDateTime_timeSpec(const QDateTime* self) {
	Qt::TimeSpec _ret = self->timeSpec();
	return static_cast<int>(_ret);
}

int QDateTime_offsetFromUtc(const QDateTime* self) {
	return self->offsetFromUtc();
}

QTimeZone* QDateTime_timeRepresentation(const QDateTime* self) {
	return new QTimeZone(self->timeRepresentation());
}

QTimeZone* QDateTime_timeZone(const QDateTime* self) {
	return new QTimeZone(self->timeZone());
}

struct seaqt_string QDateTime_timeZoneAbbreviation(const QDateTime* self) {
	QString _ret = self->timeZoneAbbreviation();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QDateTime_isDaylightTime(const QDateTime* self) {
	return self->isDaylightTime();
}

long long QDateTime_toMSecsSinceEpoch(const QDateTime* self) {
	qint64 _ret = self->toMSecsSinceEpoch();
	return static_cast<long long>(_ret);
}

long long QDateTime_toSecsSinceEpoch(const QDateTime* self) {
	qint64 _ret = self->toSecsSinceEpoch();
	return static_cast<long long>(_ret);
}

void QDateTime_setDate_date(QDateTime* self, QDate* date) {
	self->setDate(*date);
}

void QDateTime_setTime_time(QDateTime* self, QTime* time) {
	self->setTime(*time);
}

void QDateTime_setTimeSpec(QDateTime* self, int spec) {
	self->setTimeSpec(static_cast<Qt::TimeSpec>(spec));
}

void QDateTime_setOffsetFromUtc(QDateTime* self, int offsetSeconds) {
	self->setOffsetFromUtc(static_cast<int>(offsetSeconds));
}

void QDateTime_setTimeZone_toZone(QDateTime* self, QTimeZone* toZone) {
	self->setTimeZone(*toZone);
}

void QDateTime_setMSecsSinceEpoch(QDateTime* self, long long msecs) {
	self->setMSecsSinceEpoch(static_cast<qint64>(msecs));
}

void QDateTime_setSecsSinceEpoch(QDateTime* self, long long secs) {
	self->setSecsSinceEpoch(static_cast<qint64>(secs));
}

struct seaqt_string QDateTime_toString(const QDateTime* self) {
	QString _ret = self->toString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDateTime_toString_QString(const QDateTime* self, struct seaqt_string format) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	QString _ret = self->toString(format_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDateTime_toString_QString_QCalendar(const QDateTime* self, struct seaqt_string format, QCalendar* cal) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	QString _ret = self->toString(format_QString, *cal);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QDateTime* QDateTime_addDays(const QDateTime* self, long long days) {
	return new QDateTime(self->addDays(static_cast<qint64>(days)));
}

QDateTime* QDateTime_addMonths(const QDateTime* self, int months) {
	return new QDateTime(self->addMonths(static_cast<int>(months)));
}

QDateTime* QDateTime_addYears(const QDateTime* self, int years) {
	return new QDateTime(self->addYears(static_cast<int>(years)));
}

QDateTime* QDateTime_addSecs(const QDateTime* self, long long secs) {
	return new QDateTime(self->addSecs(static_cast<qint64>(secs)));
}

QDateTime* QDateTime_addMSecs(const QDateTime* self, long long msecs) {
	return new QDateTime(self->addMSecs(static_cast<qint64>(msecs)));
}

QDateTime* QDateTime_toTimeSpec(const QDateTime* self, int spec) {
	return new QDateTime(self->toTimeSpec(static_cast<Qt::TimeSpec>(spec)));
}

QDateTime* QDateTime_toLocalTime(const QDateTime* self) {
	return new QDateTime(self->toLocalTime());
}

QDateTime* QDateTime_toUTC(const QDateTime* self) {
	return new QDateTime(self->toUTC());
}

QDateTime* QDateTime_toOffsetFromUtc(const QDateTime* self, int offsetSeconds) {
	return new QDateTime(self->toOffsetFromUtc(static_cast<int>(offsetSeconds)));
}

QDateTime* QDateTime_toTimeZone(const QDateTime* self, QTimeZone* toZone) {
	return new QDateTime(self->toTimeZone(*toZone));
}

long long QDateTime_daysTo(const QDateTime* self, QDateTime* param1) {
	qint64 _ret = self->daysTo(*param1);
	return static_cast<long long>(_ret);
}

long long QDateTime_secsTo(const QDateTime* self, QDateTime* param1) {
	qint64 _ret = self->secsTo(*param1);
	return static_cast<long long>(_ret);
}

long long QDateTime_msecsTo(const QDateTime* self, QDateTime* param1) {
	qint64 _ret = self->msecsTo(*param1);
	return static_cast<long long>(_ret);
}

QDateTime* QDateTime_currentDateTime_zone(QTimeZone* zone) {
	return new QDateTime(QDateTime::currentDateTime(*zone));
}

QDateTime* QDateTime_currentDateTime() {
	return new QDateTime(QDateTime::currentDateTime());
}

QDateTime* QDateTime_currentDateTimeUtc() {
	return new QDateTime(QDateTime::currentDateTimeUtc());
}

QDateTime* QDateTime_fromString_QString(struct seaqt_string string) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	return new QDateTime(QDateTime::fromString(string_QString));
}

QDateTime* QDateTime_fromString_QString_QString_QCalendar(struct seaqt_string string, struct seaqt_string format, QCalendar* cal) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	QString format_QString = QString::fromUtf8(format.data, format.len);
	return new QDateTime(QDateTime::fromString(string_QString, format_QString, *cal));
}

QDateTime* QDateTime_fromString_QString_QString(struct seaqt_string string, struct seaqt_string format) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	QString format_QString = QString::fromUtf8(format.data, format.len);
	return new QDateTime(QDateTime::fromString(string_QString, format_QString));
}

QDateTime* QDateTime_fromString_QString_QString_int_QCalendar(struct seaqt_string string, struct seaqt_string format, int baseYear, QCalendar* cal) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	QString format_QString = QString::fromUtf8(format.data, format.len);
	return new QDateTime(QDateTime::fromString(string_QString, format_QString, static_cast<int>(baseYear), *cal));
}

QDateTime* QDateTime_fromMSecsSinceEpoch_msecs_spec(long long msecs, int spec) {
	return new QDateTime(QDateTime::fromMSecsSinceEpoch(static_cast<qint64>(msecs), static_cast<Qt::TimeSpec>(spec)));
}

QDateTime* QDateTime_fromSecsSinceEpoch_secs_spec(long long secs, int spec) {
	return new QDateTime(QDateTime::fromSecsSinceEpoch(static_cast<qint64>(secs), static_cast<Qt::TimeSpec>(spec)));
}

QDateTime* QDateTime_fromMSecsSinceEpoch_msecs_timeZone(long long msecs, QTimeZone* timeZone) {
	return new QDateTime(QDateTime::fromMSecsSinceEpoch(static_cast<qint64>(msecs), *timeZone));
}

QDateTime* QDateTime_fromSecsSinceEpoch_secs_timeZone(long long secs, QTimeZone* timeZone) {
	return new QDateTime(QDateTime::fromSecsSinceEpoch(static_cast<qint64>(secs), *timeZone));
}

QDateTime* QDateTime_fromMSecsSinceEpoch_msecs(long long msecs) {
	return new QDateTime(QDateTime::fromMSecsSinceEpoch(static_cast<qint64>(msecs)));
}

QDateTime* QDateTime_fromSecsSinceEpoch_secs(long long secs) {
	return new QDateTime(QDateTime::fromSecsSinceEpoch(static_cast<qint64>(secs)));
}

long long QDateTime_currentMSecsSinceEpoch() {
	qint64 _ret = QDateTime::currentMSecsSinceEpoch();
	return static_cast<long long>(_ret);
}

long long QDateTime_currentSecsSinceEpoch() {
	qint64 _ret = QDateTime::currentSecsSinceEpoch();
	return static_cast<long long>(_ret);
}

void QDateTime_setDate_date_resolve(QDateTime* self, QDate* date, int resolve) {
	self->setDate(*date, static_cast<QDateTime::TransitionResolution>(resolve));
}

void QDateTime_setTime_time_resolve(QDateTime* self, QTime* time, int resolve) {
	self->setTime(*time, static_cast<QDateTime::TransitionResolution>(resolve));
}

void QDateTime_setTimeZone_toZone_resolve(QDateTime* self, QTimeZone* toZone, int resolve) {
	self->setTimeZone(*toZone, static_cast<QDateTime::TransitionResolution>(resolve));
}

struct seaqt_string QDateTime_toString_Qt_DateFormat(const QDateTime* self, int format) {
	QString _ret = self->toString(static_cast<Qt::DateFormat>(format));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QDateTime* QDateTime_fromString_QString_Qt_DateFormat(struct seaqt_string string, int format) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	return new QDateTime(QDateTime::fromString(string_QString, static_cast<Qt::DateFormat>(format)));
}

QDateTime* QDateTime_fromString_QString_QString_int(struct seaqt_string string, struct seaqt_string format, int baseYear) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	QString format_QString = QString::fromUtf8(format.data, format.len);
	return new QDateTime(QDateTime::fromString(string_QString, format_QString, static_cast<int>(baseYear)));
}

QDateTime* QDateTime_fromMSecsSinceEpoch_msecs_spec_offsetFromUtc(long long msecs, int spec, int offsetFromUtc) {
	return new QDateTime(QDateTime::fromMSecsSinceEpoch(static_cast<qint64>(msecs), static_cast<Qt::TimeSpec>(spec), static_cast<int>(offsetFromUtc)));
}

QDateTime* QDateTime_fromSecsSinceEpoch_secs_spec_offsetFromUtc(long long secs, int spec, int offsetFromUtc) {
	return new QDateTime(QDateTime::fromSecsSinceEpoch(static_cast<qint64>(secs), static_cast<Qt::TimeSpec>(spec), static_cast<int>(offsetFromUtc)));
}

void QDateTime_delete(QDateTime* self) {
	delete self;
}

