#pragma once
#ifndef SEAQT_QTCORE_GEN_QVARIANT_H
#define SEAQT_QTCORE_GEN_QVARIANT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QBitArray;
class QChar;
class QDataStream;
class QDate;
class QDateTime;
class QEasingCurve;
class QJsonArray;
class QJsonDocument;
class QJsonObject;
class QJsonValue;
class QLine;
class QLineF;
class QLocale;
class QMetaType;
class QModelIndex;
class QObject;
class QPartialOrdering;
class QPersistentModelIndex;
class QPoint;
class QPointF;
class QRect;
class QRectF;
class QRegularExpression;
class QSize;
class QSizeF;
class QTime;
class QUrl;
class QUuid;
class QVariant;
#else
typedef struct QBitArray QBitArray;
typedef struct QChar QChar;
typedef struct QDataStream QDataStream;
typedef struct QDate QDate;
typedef struct QDateTime QDateTime;
typedef struct QEasingCurve QEasingCurve;
typedef struct QJsonArray QJsonArray;
typedef struct QJsonDocument QJsonDocument;
typedef struct QJsonObject QJsonObject;
typedef struct QJsonValue QJsonValue;
typedef struct QLine QLine;
typedef struct QLineF QLineF;
typedef struct QLocale QLocale;
typedef struct QMetaType QMetaType;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QPartialOrdering QPartialOrdering;
typedef struct QPersistentModelIndex QPersistentModelIndex;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QRegularExpression QRegularExpression;
typedef struct QSize QSize;
typedef struct QSizeF QSizeF;
typedef struct QTime QTime;
typedef struct QUrl QUrl;
typedef struct QUuid QUuid;
typedef struct QVariant QVariant;
#endif

QVariant* QVariant_new();
QVariant* QVariant_new_QMetaType(QMetaType* type);
QVariant* QVariant_new_QVariant(QVariant* from);
QVariant* QVariant_new_int(int i);
QVariant* QVariant_new_uint(unsigned int ui);
QVariant* QVariant_new_qlonglong(long long ll);
QVariant* QVariant_new_qulonglong(unsigned long long ull);
QVariant* QVariant_new_bool(bool b);
QVariant* QVariant_new_double(double d);
QVariant* QVariant_new_float(float f);
QVariant* QVariant_new_QChar(QChar* qchar);
QVariant* QVariant_new_QDate(QDate* date);
QVariant* QVariant_new_QTime(QTime* time);
QVariant* QVariant_new_QBitArray(QBitArray* bitarray);
QVariant* QVariant_new_QByteArray(struct seaqt_string bytearray);
QVariant* QVariant_new_QDateTime(QDateTime* datetime);
QVariant* QVariant_new_QHashOfQString_QVariant(struct seaqt_map /* of struct seaqt_string to QVariant* */  hash);
QVariant* QVariant_new_QJsonArray(QJsonArray* jsonArray);
QVariant* QVariant_new_QJsonObject(QJsonObject* jsonObject);
QVariant* QVariant_new_QListOfQVariant(struct seaqt_array /* of QVariant* */  list);
QVariant* QVariant_new_QLocale(QLocale* locale);
QVariant* QVariant_new_QMapOfQString_QVariant(struct seaqt_map /* of struct seaqt_string to QVariant* */  map);
QVariant* QVariant_new_QRegularExpression(QRegularExpression* re);
QVariant* QVariant_new_QString(struct seaqt_string string);
QVariant* QVariant_new_QStringList(struct seaqt_array /* of struct seaqt_string */  stringlist);
QVariant* QVariant_new_QUrl(QUrl* url);
QVariant* QVariant_new_QJsonValue(QJsonValue* jsonValue);
QVariant* QVariant_new_QModelIndex(QModelIndex* modelIndex);
QVariant* QVariant_new_QUuid(QUuid* uuid);
QVariant* QVariant_new_QSize(QSize* size);
QVariant* QVariant_new_QSizeF(QSizeF* size);
QVariant* QVariant_new_QPoint(QPoint* pt);
QVariant* QVariant_new_QPointF(QPointF* pt);
QVariant* QVariant_new_QLine(QLine* line);
QVariant* QVariant_new_QLineF(QLineF* line);
QVariant* QVariant_new_QRect(QRect* rect);
QVariant* QVariant_new_QRectF(QRectF* rect);
QVariant* QVariant_new_QEasingCurve(QEasingCurve* easing);
QVariant* QVariant_new_QJsonDocument(QJsonDocument* jsonDocument);
QVariant* QVariant_new_QPersistentModelIndex(QPersistentModelIndex* modelIndex);
QVariant* QVariant_new_char(const char* str);
QVariant* QVariant_new_QVariant_Type(int type);
QVariant* QVariant_new_QMetaType_void(QMetaType* type, const void* copy);

void QVariant_operatorAssign(QVariant* self, QVariant* from);
void QVariant_swap(QVariant* self, QVariant* other);
int QVariant_userType(const QVariant* self);
int QVariant_typeId(const QVariant* self);
const char* QVariant_typeName(const QVariant* self);
QMetaType* QVariant_metaType(const QVariant* self);
bool QVariant_canConvert_targetType(const QVariant* self, QMetaType* targetType);
bool QVariant_convert_type(QVariant* self, QMetaType* type);
bool QVariant_canView(const QVariant* self, QMetaType* targetType);
bool QVariant_canConvert_targetTypeId(const QVariant* self, int targetTypeId);
bool QVariant_convert_targetTypeId(QVariant* self, int targetTypeId);
bool QVariant_isValid(const QVariant* self);
bool QVariant_isNull(const QVariant* self);
void QVariant_clear(QVariant* self);
void QVariant_detach(QVariant* self);
bool QVariant_isDetached(const QVariant* self);
int QVariant_toInt(const QVariant* self);
unsigned int QVariant_toUInt(const QVariant* self);
long long QVariant_toLongLong(const QVariant* self);
unsigned long long QVariant_toULongLong(const QVariant* self);
bool QVariant_toBool(const QVariant* self);
double QVariant_toDouble(const QVariant* self);
float QVariant_toFloat(const QVariant* self);
double QVariant_toReal(const QVariant* self);
struct seaqt_string QVariant_toByteArray(const QVariant* self);
QBitArray* QVariant_toBitArray(const QVariant* self);
struct seaqt_string QVariant_toString(const QVariant* self);
struct seaqt_array /* of struct seaqt_string */  QVariant_toStringList(const QVariant* self);
QChar* QVariant_toChar(const QVariant* self);
QDate* QVariant_toDate(const QVariant* self);
QTime* QVariant_toTime(const QVariant* self);
QDateTime* QVariant_toDateTime(const QVariant* self);
struct seaqt_array /* of QVariant* */  QVariant_toList(const QVariant* self);
struct seaqt_map /* of struct seaqt_string to QVariant* */  QVariant_toMap(const QVariant* self);
struct seaqt_map /* of struct seaqt_string to QVariant* */  QVariant_toHash(const QVariant* self);
QPoint* QVariant_toPoint(const QVariant* self);
QPointF* QVariant_toPointF(const QVariant* self);
QRect* QVariant_toRect(const QVariant* self);
QSize* QVariant_toSize(const QVariant* self);
QSizeF* QVariant_toSizeF(const QVariant* self);
QLine* QVariant_toLine(const QVariant* self);
QLineF* QVariant_toLineF(const QVariant* self);
QRectF* QVariant_toRectF(const QVariant* self);
QLocale* QVariant_toLocale(const QVariant* self);
QRegularExpression* QVariant_toRegularExpression(const QVariant* self);
QEasingCurve* QVariant_toEasingCurve(const QVariant* self);
QUuid* QVariant_toUuid(const QVariant* self);
QUrl* QVariant_toUrl(const QVariant* self);
QJsonValue* QVariant_toJsonValue(const QVariant* self);
QJsonObject* QVariant_toJsonObject(const QVariant* self);
QJsonArray* QVariant_toJsonArray(const QVariant* self);
QJsonDocument* QVariant_toJsonDocument(const QVariant* self);
QModelIndex* QVariant_toModelIndex(const QVariant* self);
QPersistentModelIndex* QVariant_toPersistentModelIndex(const QVariant* self);
void QVariant_load(QVariant* self, QDataStream* ds);
void QVariant_save(const QVariant* self, QDataStream* ds);
int QVariant_type(const QVariant* self);
const char* QVariant_typeToName(int typeId);
int QVariant_nameToType(const char* name);
void* QVariant_data(QVariant* self);
const void* QVariant_constData(const QVariant* self);
const void* QVariant_data_const(const QVariant* self);
void QVariant_setValue(QVariant* self, QVariant* avalue);
QVariant* QVariant_fromMetaType_type(QMetaType* type);
QPartialOrdering* QVariant_compare(QVariant* lhs, QVariant* rhs);
int QVariant_toInt_ok(const QVariant* self, bool* ok);
unsigned int QVariant_toUInt_ok(const QVariant* self, bool* ok);
long long QVariant_toLongLong_ok(const QVariant* self, bool* ok);
unsigned long long QVariant_toULongLong_ok(const QVariant* self, bool* ok);
double QVariant_toDouble_ok(const QVariant* self, bool* ok);
float QVariant_toFloat_ok(const QVariant* self, bool* ok);
double QVariant_toReal_ok(const QVariant* self, bool* ok);
QVariant* QVariant_fromMetaType_type_copy(QMetaType* type, const void* copy);
QVariant* QVariant_fromValue(QObject* value);

void QVariant_delete(QVariant* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
