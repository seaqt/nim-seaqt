#pragma once
#ifndef SEAQT_QTCORE_GEN_QLOCALE_H
#define SEAQT_QTCORE_GEN_QLOCALE_H

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
class QChar;
class QDate;
class QDateTime;
class QLocale;
class QMetaObject;
class QTime;
#else
typedef struct QCalendar QCalendar;
typedef struct QChar QChar;
typedef struct QDate QDate;
typedef struct QDateTime QDateTime;
typedef struct QLocale QLocale;
typedef struct QMetaObject QMetaObject;
typedef struct QTime QTime;
#endif

QLocale* QLocale_new();
QLocale* QLocale_new2(struct seaqt_string name);
QLocale* QLocale_new3(int language);
QLocale* QLocale_new4(int language, int script, int country);
QLocale* QLocale_new5(QLocale* other);
QLocale* QLocale_new6(int language, int country);

void QLocale_operatorAssign(QLocale* self, QLocale* other);
void QLocale_swap(QLocale* self, QLocale* other);
int QLocale_language(const QLocale* self);
int QLocale_script(const QLocale* self);
int QLocale_country(const QLocale* self);
struct seaqt_string QLocale_name(const QLocale* self);
struct seaqt_string QLocale_bcp47Name(const QLocale* self);
struct seaqt_string QLocale_nativeLanguageName(const QLocale* self);
struct seaqt_string QLocale_nativeCountryName(const QLocale* self);
short QLocale_toShort(const QLocale* self, struct seaqt_string s);
unsigned short QLocale_toUShort(const QLocale* self, struct seaqt_string s);
int QLocale_toInt(const QLocale* self, struct seaqt_string s);
unsigned int QLocale_toUInt(const QLocale* self, struct seaqt_string s);
long QLocale_toLong(const QLocale* self, struct seaqt_string s);
unsigned long QLocale_toULong(const QLocale* self, struct seaqt_string s);
long long QLocale_toLongLong(const QLocale* self, struct seaqt_string s);
unsigned long long QLocale_toULongLong(const QLocale* self, struct seaqt_string s);
float QLocale_toFloat(const QLocale* self, struct seaqt_string s);
double QLocale_toDouble(const QLocale* self, struct seaqt_string s);
struct seaqt_string QLocale_toString(const QLocale* self, long long i);
struct seaqt_string QLocale_toStringWithQulonglong(const QLocale* self, unsigned long long i);
struct seaqt_string QLocale_toStringWithLong(const QLocale* self, long i);
struct seaqt_string QLocale_toStringWithUlong(const QLocale* self, unsigned long i);
struct seaqt_string QLocale_toStringWithShort(const QLocale* self, short i);
struct seaqt_string QLocale_toStringWithUshort(const QLocale* self, unsigned short i);
struct seaqt_string QLocale_toStringWithInt(const QLocale* self, int i);
struct seaqt_string QLocale_toStringWithUint(const QLocale* self, unsigned int i);
struct seaqt_string QLocale_toStringWithDouble(const QLocale* self, double i);
struct seaqt_string QLocale_toStringWithFloat(const QLocale* self, float i);
struct seaqt_string QLocale_toString2(const QLocale* self, QDate* date, struct seaqt_string formatStr);
struct seaqt_string QLocale_toString3(const QLocale* self, QTime* time, struct seaqt_string formatStr);
struct seaqt_string QLocale_toString4(const QLocale* self, QDateTime* dateTime, struct seaqt_string format);
struct seaqt_string QLocale_toStringWithDate(const QLocale* self, QDate* date);
struct seaqt_string QLocale_toStringWithTime(const QLocale* self, QTime* time);
struct seaqt_string QLocale_toStringWithDateTime(const QLocale* self, QDateTime* dateTime);
struct seaqt_string QLocale_toString9(const QLocale* self, QDate* date, int format, QCalendar* cal);
struct seaqt_string QLocale_toString10(const QLocale* self, QDateTime* dateTime, int format, QCalendar* cal);
struct seaqt_string QLocale_dateFormat(const QLocale* self);
struct seaqt_string QLocale_timeFormat(const QLocale* self);
struct seaqt_string QLocale_dateTimeFormat(const QLocale* self);
QDate* QLocale_toDate(const QLocale* self, struct seaqt_string string);
QTime* QLocale_toTime(const QLocale* self, struct seaqt_string string);
QDateTime* QLocale_toDateTime(const QLocale* self, struct seaqt_string string);
QDate* QLocale_toDate2(const QLocale* self, struct seaqt_string string, struct seaqt_string format);
QTime* QLocale_toTime2(const QLocale* self, struct seaqt_string string, struct seaqt_string format);
QDateTime* QLocale_toDateTime2(const QLocale* self, struct seaqt_string string, struct seaqt_string format);
QDate* QLocale_toDate3(const QLocale* self, struct seaqt_string string, int format, QCalendar* cal);
QDateTime* QLocale_toDateTime3(const QLocale* self, struct seaqt_string string, int format, QCalendar* cal);
QDate* QLocale_toDate4(const QLocale* self, struct seaqt_string string, struct seaqt_string format, QCalendar* cal);
QDateTime* QLocale_toDateTime4(const QLocale* self, struct seaqt_string string, struct seaqt_string format, QCalendar* cal);
QTime* QLocale_toTime3(const QLocale* self, struct seaqt_string string, int format, QCalendar* cal);
QTime* QLocale_toTime4(const QLocale* self, struct seaqt_string string, struct seaqt_string format, QCalendar* cal);
QChar* QLocale_decimalPoint(const QLocale* self);
QChar* QLocale_groupSeparator(const QLocale* self);
QChar* QLocale_percent(const QLocale* self);
QChar* QLocale_zeroDigit(const QLocale* self);
QChar* QLocale_negativeSign(const QLocale* self);
QChar* QLocale_positiveSign(const QLocale* self);
QChar* QLocale_exponential(const QLocale* self);
struct seaqt_string QLocale_monthName(const QLocale* self, int param1);
struct seaqt_string QLocale_standaloneMonthName(const QLocale* self, int param1);
struct seaqt_string QLocale_dayName(const QLocale* self, int param1);
struct seaqt_string QLocale_standaloneDayName(const QLocale* self, int param1);
int QLocale_firstDayOfWeek(const QLocale* self);
struct seaqt_array /* of int */  QLocale_weekdays(const QLocale* self);
struct seaqt_string QLocale_amText(const QLocale* self);
struct seaqt_string QLocale_pmText(const QLocale* self);
int QLocale_measurementSystem(const QLocale* self);
QLocale* QLocale_collation(const QLocale* self);
int QLocale_textDirection(const QLocale* self);
struct seaqt_string QLocale_toUpper(const QLocale* self, struct seaqt_string str);
struct seaqt_string QLocale_toLower(const QLocale* self, struct seaqt_string str);
struct seaqt_string QLocale_currencySymbol(const QLocale* self);
struct seaqt_string QLocale_toCurrencyString(const QLocale* self, long long param1);
struct seaqt_string QLocale_toCurrencyStringWithQulonglong(const QLocale* self, unsigned long long param1);
struct seaqt_string QLocale_toCurrencyStringWithShort(const QLocale* self, short param1);
struct seaqt_string QLocale_toCurrencyStringWithUshort(const QLocale* self, unsigned short param1);
struct seaqt_string QLocale_toCurrencyStringWithInt(const QLocale* self, int param1);
struct seaqt_string QLocale_toCurrencyStringWithUint(const QLocale* self, unsigned int param1);
struct seaqt_string QLocale_toCurrencyStringWithDouble(const QLocale* self, double param1);
struct seaqt_string QLocale_toCurrencyString2(const QLocale* self, double param1, struct seaqt_string symbol, int precision);
struct seaqt_string QLocale_toCurrencyStringWithFloat(const QLocale* self, float i);
struct seaqt_string QLocale_toCurrencyString3(const QLocale* self, float i, struct seaqt_string symbol, int precision);
struct seaqt_string QLocale_formattedDataSize(QLocale* self, long long bytes);
struct seaqt_string QLocale_formattedDataSizeWithBytes(const QLocale* self, long long bytes);
struct seaqt_array /* of struct seaqt_string */  QLocale_uiLanguages(const QLocale* self);
bool QLocale_operatorEqual(const QLocale* self, QLocale* other);
bool QLocale_operatorNotEqual(const QLocale* self, QLocale* other);
struct seaqt_string QLocale_languageToString(int language);
struct seaqt_string QLocale_countryToString(int country);
struct seaqt_string QLocale_scriptToString(int script);
void QLocale_setDefault(QLocale* locale);
QLocale* QLocale_c();
QLocale* QLocale_system();
struct seaqt_array /* of QLocale* */  QLocale_matchingLocales(int language, int script, int country);
struct seaqt_array /* of int */  QLocale_countriesForLanguage(int lang);
void QLocale_setNumberOptions(QLocale* self, int options);
int QLocale_numberOptions(const QLocale* self);
struct seaqt_string QLocale_quoteString(const QLocale* self, struct seaqt_string str);
struct seaqt_string QLocale_createSeparatedList(const QLocale* self, struct seaqt_array /* of struct seaqt_string */  strl);
short QLocale_toShort2(const QLocale* self, struct seaqt_string s, bool* ok);
unsigned short QLocale_toUShort2(const QLocale* self, struct seaqt_string s, bool* ok);
int QLocale_toInt2(const QLocale* self, struct seaqt_string s, bool* ok);
unsigned int QLocale_toUInt2(const QLocale* self, struct seaqt_string s, bool* ok);
long QLocale_toLong2(const QLocale* self, struct seaqt_string s, bool* ok);
unsigned long QLocale_toULong2(const QLocale* self, struct seaqt_string s, bool* ok);
long long QLocale_toLongLong2(const QLocale* self, struct seaqt_string s, bool* ok);
unsigned long long QLocale_toULongLong2(const QLocale* self, struct seaqt_string s, bool* ok);
float QLocale_toFloat2(const QLocale* self, struct seaqt_string s, bool* ok);
double QLocale_toDouble2(const QLocale* self, struct seaqt_string s, bool* ok);
struct seaqt_string QLocale_toString12(const QLocale* self, double i, char f);
struct seaqt_string QLocale_toString13(const QLocale* self, double i, char f, int prec);
struct seaqt_string QLocale_toString14(const QLocale* self, float i, char f);
struct seaqt_string QLocale_toString15(const QLocale* self, float i, char f, int prec);
struct seaqt_string QLocale_toString16(const QLocale* self, QDate* date, int format);
struct seaqt_string QLocale_toString17(const QLocale* self, QTime* time, int format);
struct seaqt_string QLocale_toString18(const QLocale* self, QDateTime* dateTime, int format);
struct seaqt_string QLocale_dateFormatWithFormat(const QLocale* self, int format);
struct seaqt_string QLocale_timeFormatWithFormat(const QLocale* self, int format);
struct seaqt_string QLocale_dateTimeFormatWithFormat(const QLocale* self, int format);
QDate* QLocale_toDate5(const QLocale* self, struct seaqt_string string, int param2);
QTime* QLocale_toTime5(const QLocale* self, struct seaqt_string string, int param2);
QDateTime* QLocale_toDateTime5(const QLocale* self, struct seaqt_string string, int format);
struct seaqt_string QLocale_monthName2(const QLocale* self, int param1, int format);
struct seaqt_string QLocale_standaloneMonthName2(const QLocale* self, int param1, int format);
struct seaqt_string QLocale_dayName2(const QLocale* self, int param1, int format);
struct seaqt_string QLocale_standaloneDayName2(const QLocale* self, int param1, int format);
struct seaqt_string QLocale_currencySymbolWithQLocaleCurrencySymbolFormat(const QLocale* self, int param1);
struct seaqt_string QLocale_toCurrencyString4(const QLocale* self, long long param1, struct seaqt_string symbol);
struct seaqt_string QLocale_toCurrencyString5(const QLocale* self, unsigned long long param1, struct seaqt_string symbol);
struct seaqt_string QLocale_toCurrencyString6(const QLocale* self, short param1, struct seaqt_string symbol);
struct seaqt_string QLocale_toCurrencyString7(const QLocale* self, unsigned short param1, struct seaqt_string symbol);
struct seaqt_string QLocale_toCurrencyString8(const QLocale* self, int param1, struct seaqt_string symbol);
struct seaqt_string QLocale_toCurrencyString9(const QLocale* self, unsigned int param1, struct seaqt_string symbol);
struct seaqt_string QLocale_toCurrencyString10(const QLocale* self, double param1, struct seaqt_string symbol);
struct seaqt_string QLocale_toCurrencyString11(const QLocale* self, float i, struct seaqt_string symbol);
struct seaqt_string QLocale_formattedDataSize2(QLocale* self, long long bytes, int precision);
struct seaqt_string QLocale_formattedDataSize3(QLocale* self, long long bytes, int precision, int format);
struct seaqt_string QLocale_formattedDataSize4(const QLocale* self, long long bytes, int precision);
struct seaqt_string QLocale_formattedDataSize5(const QLocale* self, long long bytes, int precision, int format);
struct seaqt_string QLocale_quoteString2(const QLocale* self, struct seaqt_string str, int style);

const QMetaObject* QLocale_staticMetaObject();
void QLocale_delete(QLocale* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
