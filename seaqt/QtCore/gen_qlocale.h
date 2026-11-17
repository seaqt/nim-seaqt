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
class QDate;
class QDateTime;
class QLocale;
class QMetaObject;
class QTime;
#else
typedef struct QCalendar QCalendar;
typedef struct QDate QDate;
typedef struct QDateTime QDateTime;
typedef struct QLocale QLocale;
typedef struct QMetaObject QMetaObject;
typedef struct QTime QTime;
#endif

QLocale* QLocale_new();
QLocale* QLocale_new_QString(struct seaqt_string name);
QLocale* QLocale_new_QLocale_Language_QLocale_Territory(unsigned short language, unsigned short territory);
QLocale* QLocale_new_QLocale_Language(unsigned short language);
QLocale* QLocale_new_QLocale(QLocale* from);
QLocale* QLocale_new_QLocale_Language_QLocale_Script(unsigned short language, unsigned short script);
QLocale* QLocale_new_QLocale_Language_QLocale_Script_QLocale_Territory(unsigned short language, unsigned short script, unsigned short territory);

void QLocale_operatorAssign(QLocale* self, QLocale* from);
void QLocale_swap(QLocale* self, QLocale* other);
unsigned short QLocale_language(const QLocale* self);
unsigned short QLocale_script(const QLocale* self);
unsigned short QLocale_territory(const QLocale* self);
unsigned short QLocale_country(const QLocale* self);
struct seaqt_string QLocale_name(const QLocale* self);
struct seaqt_string QLocale_bcp47Name(const QLocale* self);
struct seaqt_string QLocale_nativeLanguageName(const QLocale* self);
struct seaqt_string QLocale_nativeTerritoryName(const QLocale* self);
struct seaqt_string QLocale_nativeCountryName(const QLocale* self);
short QLocale_toShort_QString(const QLocale* self, struct seaqt_string s);
unsigned short QLocale_toUShort_QString(const QLocale* self, struct seaqt_string s);
int QLocale_toInt_QString(const QLocale* self, struct seaqt_string s);
unsigned int QLocale_toUInt_QString(const QLocale* self, struct seaqt_string s);
long QLocale_toLong_QString(const QLocale* self, struct seaqt_string s);
unsigned long QLocale_toULong_QString(const QLocale* self, struct seaqt_string s);
long long QLocale_toLongLong_QString(const QLocale* self, struct seaqt_string s);
unsigned long long QLocale_toULongLong_QString(const QLocale* self, struct seaqt_string s);
float QLocale_toFloat_QString(const QLocale* self, struct seaqt_string s);
double QLocale_toDouble_QString(const QLocale* self, struct seaqt_string s);
struct seaqt_string QLocale_toString_qlonglong(const QLocale* self, long long i);
struct seaqt_string QLocale_toString_qulonglong(const QLocale* self, unsigned long long i);
struct seaqt_string QLocale_toString_long(const QLocale* self, long i);
struct seaqt_string QLocale_toString_ulong(const QLocale* self, unsigned long i);
struct seaqt_string QLocale_toString_short(const QLocale* self, short i);
struct seaqt_string QLocale_toString_ushort(const QLocale* self, unsigned short i);
struct seaqt_string QLocale_toString_int(const QLocale* self, int i);
struct seaqt_string QLocale_toString_uint(const QLocale* self, unsigned int i);
struct seaqt_string QLocale_toString_double(const QLocale* self, double f);
struct seaqt_string QLocale_toString_float(const QLocale* self, float f);
struct seaqt_string QLocale_toString_QDate_QString(const QLocale* self, QDate* date, struct seaqt_string format);
struct seaqt_string QLocale_toString_QTime_QString(const QLocale* self, QTime* time, struct seaqt_string format);
struct seaqt_string QLocale_toString_QDateTime_QString(const QLocale* self, QDateTime* dateTime, struct seaqt_string format);
struct seaqt_string QLocale_toString_QDate(const QLocale* self, QDate* date);
struct seaqt_string QLocale_toString_QTime(const QLocale* self, QTime* time);
struct seaqt_string QLocale_toString_QDateTime(const QLocale* self, QDateTime* dateTime);
struct seaqt_string QLocale_toString_QDate_QLocale_FormatType_QCalendar(const QLocale* self, QDate* date, int format, QCalendar* cal);
struct seaqt_string QLocale_toString_QDateTime_QLocale_FormatType_QCalendar(const QLocale* self, QDateTime* dateTime, int format, QCalendar* cal);
struct seaqt_string QLocale_dateFormat(const QLocale* self);
struct seaqt_string QLocale_timeFormat(const QLocale* self);
struct seaqt_string QLocale_dateTimeFormat(const QLocale* self);
QDate* QLocale_toDate_QString(const QLocale* self, struct seaqt_string string);
QTime* QLocale_toTime_QString(const QLocale* self, struct seaqt_string string);
QDateTime* QLocale_toDateTime_QString(const QLocale* self, struct seaqt_string string);
QDate* QLocale_toDate_QString_QString(const QLocale* self, struct seaqt_string string, struct seaqt_string format);
QTime* QLocale_toTime_QString_QString(const QLocale* self, struct seaqt_string string, struct seaqt_string format);
QDateTime* QLocale_toDateTime_QString_QString(const QLocale* self, struct seaqt_string string, struct seaqt_string format);
QDate* QLocale_toDate_QString_QLocale_FormatType_QCalendar(const QLocale* self, struct seaqt_string string, int format, QCalendar* cal);
QDateTime* QLocale_toDateTime_QString_QLocale_FormatType_QCalendar(const QLocale* self, struct seaqt_string string, int format, QCalendar* cal);
QDate* QLocale_toDate_QString_QString_QCalendar(const QLocale* self, struct seaqt_string string, struct seaqt_string format, QCalendar* cal);
QDateTime* QLocale_toDateTime_QString_QString_QCalendar(const QLocale* self, struct seaqt_string string, struct seaqt_string format, QCalendar* cal);
struct seaqt_string QLocale_decimalPoint(const QLocale* self);
struct seaqt_string QLocale_groupSeparator(const QLocale* self);
struct seaqt_string QLocale_percent(const QLocale* self);
struct seaqt_string QLocale_zeroDigit(const QLocale* self);
struct seaqt_string QLocale_negativeSign(const QLocale* self);
struct seaqt_string QLocale_positiveSign(const QLocale* self);
struct seaqt_string QLocale_exponential(const QLocale* self);
struct seaqt_string QLocale_monthName_int(const QLocale* self, int param1);
struct seaqt_string QLocale_standaloneMonthName_int(const QLocale* self, int param1);
struct seaqt_string QLocale_dayName_int(const QLocale* self, int param1);
struct seaqt_string QLocale_standaloneDayName_int(const QLocale* self, int param1);
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
struct seaqt_string QLocale_toCurrencyString_qlonglong(const QLocale* self, long long param1);
struct seaqt_string QLocale_toCurrencyString_qulonglong(const QLocale* self, unsigned long long param1);
struct seaqt_string QLocale_toCurrencyString_short(const QLocale* self, short i);
struct seaqt_string QLocale_toCurrencyString_ushort(const QLocale* self, unsigned short i);
struct seaqt_string QLocale_toCurrencyString_int(const QLocale* self, int i);
struct seaqt_string QLocale_toCurrencyString_uint(const QLocale* self, unsigned int i);
struct seaqt_string QLocale_toCurrencyString_double(const QLocale* self, double param1);
struct seaqt_string QLocale_toCurrencyString_float(const QLocale* self, float i);
struct seaqt_string QLocale_formattedDataSize_bytes(const QLocale* self, long long bytes);
struct seaqt_array /* of struct seaqt_string */  QLocale_uiLanguages(const QLocale* self);
struct seaqt_string QLocale_languageToCode_language(unsigned short language);
struct seaqt_string QLocale_territoryToCode(unsigned short territory);
struct seaqt_string QLocale_countryToCode(unsigned short country);
struct seaqt_string QLocale_scriptToCode(unsigned short script);
struct seaqt_string QLocale_languageToString(unsigned short language);
struct seaqt_string QLocale_territoryToString(unsigned short territory);
struct seaqt_string QLocale_countryToString(unsigned short country);
struct seaqt_string QLocale_scriptToString(unsigned short script);
void QLocale_setDefault(QLocale* locale);
QLocale* QLocale_c();
QLocale* QLocale_system();
struct seaqt_array /* of QLocale* */  QLocale_matchingLocales(unsigned short language, unsigned short script, unsigned short territory);
struct seaqt_array /* of unsigned short */  QLocale_countriesForLanguage(unsigned short lang);
void QLocale_setNumberOptions(QLocale* self, int options);
int QLocale_numberOptions(const QLocale* self);
struct seaqt_string QLocale_quoteString_QString(const QLocale* self, struct seaqt_string str);
struct seaqt_string QLocale_createSeparatedList(const QLocale* self, struct seaqt_array /* of struct seaqt_string */  strl);
short QLocale_toShort_QString_bool(const QLocale* self, struct seaqt_string s, bool* ok);
unsigned short QLocale_toUShort_QString_bool(const QLocale* self, struct seaqt_string s, bool* ok);
int QLocale_toInt_QString_bool(const QLocale* self, struct seaqt_string s, bool* ok);
unsigned int QLocale_toUInt_QString_bool(const QLocale* self, struct seaqt_string s, bool* ok);
long QLocale_toLong_QString_bool(const QLocale* self, struct seaqt_string s, bool* ok);
unsigned long QLocale_toULong_QString_bool(const QLocale* self, struct seaqt_string s, bool* ok);
long long QLocale_toLongLong_QString_bool(const QLocale* self, struct seaqt_string s, bool* ok);
unsigned long long QLocale_toULongLong_QString_bool(const QLocale* self, struct seaqt_string s, bool* ok);
float QLocale_toFloat_QString_bool(const QLocale* self, struct seaqt_string s, bool* ok);
double QLocale_toDouble_QString_bool(const QLocale* self, struct seaqt_string s, bool* ok);
struct seaqt_string QLocale_toString_double_char(const QLocale* self, double f, char format);
struct seaqt_string QLocale_toString_double_char_int(const QLocale* self, double f, char format, int precision);
struct seaqt_string QLocale_toString_float_char(const QLocale* self, float f, char format);
struct seaqt_string QLocale_toString_float_char_int(const QLocale* self, float f, char format, int precision);
struct seaqt_string QLocale_toString_QDate_QLocale_FormatType(const QLocale* self, QDate* date, int format);
struct seaqt_string QLocale_toString_QTime_QLocale_FormatType(const QLocale* self, QTime* time, int format);
struct seaqt_string QLocale_toString_QDateTime_QLocale_FormatType(const QLocale* self, QDateTime* dateTime, int format);
struct seaqt_string QLocale_dateFormat_format(const QLocale* self, int format);
struct seaqt_string QLocale_timeFormat_format(const QLocale* self, int format);
struct seaqt_string QLocale_dateTimeFormat_format(const QLocale* self, int format);
QDate* QLocale_toDate_QString_QLocale_FormatType(const QLocale* self, struct seaqt_string string, int param2);
QTime* QLocale_toTime_QString_QLocale_FormatType(const QLocale* self, struct seaqt_string string, int param2);
QDateTime* QLocale_toDateTime_QString_QLocale_FormatType(const QLocale* self, struct seaqt_string string, int format);
struct seaqt_string QLocale_monthName_int_QLocale_FormatType(const QLocale* self, int param1, int format);
struct seaqt_string QLocale_standaloneMonthName_int_QLocale_FormatType(const QLocale* self, int param1, int format);
struct seaqt_string QLocale_dayName_int_QLocale_FormatType(const QLocale* self, int param1, int format);
struct seaqt_string QLocale_standaloneDayName_int_QLocale_FormatType(const QLocale* self, int param1, int format);
struct seaqt_string QLocale_currencySymbol_QLocale_CurrencySymbolFormat(const QLocale* self, int param1);
struct seaqt_string QLocale_toCurrencyString_qlonglong_QString(const QLocale* self, long long param1, struct seaqt_string symbol);
struct seaqt_string QLocale_toCurrencyString_qulonglong_QString(const QLocale* self, unsigned long long param1, struct seaqt_string symbol);
struct seaqt_string QLocale_toCurrencyString_short_QString(const QLocale* self, short i, struct seaqt_string symbol);
struct seaqt_string QLocale_toCurrencyString_ushort_QString(const QLocale* self, unsigned short i, struct seaqt_string symbol);
struct seaqt_string QLocale_toCurrencyString_int_QString(const QLocale* self, int i, struct seaqt_string symbol);
struct seaqt_string QLocale_toCurrencyString_uint_QString(const QLocale* self, unsigned int i, struct seaqt_string symbol);
struct seaqt_string QLocale_toCurrencyString_double_QString(const QLocale* self, double param1, struct seaqt_string symbol);
struct seaqt_string QLocale_toCurrencyString_double_QString_int(const QLocale* self, double param1, struct seaqt_string symbol, int precision);
struct seaqt_string QLocale_toCurrencyString_float_QString(const QLocale* self, float i, struct seaqt_string symbol);
struct seaqt_string QLocale_toCurrencyString_float_QString_int(const QLocale* self, float i, struct seaqt_string symbol, int precision);
struct seaqt_string QLocale_formattedDataSize_bytes_precision(const QLocale* self, long long bytes, int precision);
struct seaqt_string QLocale_formattedDataSize_bytes_precision_format(const QLocale* self, long long bytes, int precision, int format);
struct seaqt_string QLocale_languageToCode_language_codeTypes(unsigned short language, int codeTypes);
struct seaqt_string QLocale_quoteString_QString_QLocale_QuotationStyle(const QLocale* self, struct seaqt_string str, int style);

void QLocale_delete(QLocale* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
