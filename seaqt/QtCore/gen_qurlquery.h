#pragma once
#ifndef SEAQT_QTCORE_GEN_QURLQUERY_H
#define SEAQT_QTCORE_GEN_QURLQUERY_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChar;
class QUrl;
class QUrlQuery;
#else
typedef struct QChar QChar;
typedef struct QUrl QUrl;
typedef struct QUrlQuery QUrlQuery;
#endif

QUrlQuery* QUrlQuery_new();
QUrlQuery* QUrlQuery_new_url(QUrl* url);
QUrlQuery* QUrlQuery_new_queryString(struct seaqt_string queryString);
QUrlQuery* QUrlQuery_new_from(QUrlQuery* from);

void QUrlQuery_operatorAssign(QUrlQuery* self, QUrlQuery* from);
bool QUrlQuery_operatorEqual(const QUrlQuery* self, QUrlQuery* other);
bool QUrlQuery_operatorNotEqual(const QUrlQuery* self, QUrlQuery* other);
void QUrlQuery_swap(QUrlQuery* self, QUrlQuery* other);
bool QUrlQuery_isEmpty(const QUrlQuery* self);
bool QUrlQuery_isDetached(const QUrlQuery* self);
void QUrlQuery_clear(QUrlQuery* self);
struct seaqt_string QUrlQuery_query(const QUrlQuery* self);
void QUrlQuery_setQuery(QUrlQuery* self, struct seaqt_string queryString);
struct seaqt_string QUrlQuery_toString(const QUrlQuery* self);
void QUrlQuery_setQueryDelimiters(QUrlQuery* self, QChar* valueDelimiter, QChar* pairDelimiter);
QChar* QUrlQuery_queryValueDelimiter(const QUrlQuery* self);
QChar* QUrlQuery_queryPairDelimiter(const QUrlQuery* self);
void QUrlQuery_setQueryItems(QUrlQuery* self, struct seaqt_array /* of struct seaqt_map  tuple of struct seaqt_string and struct seaqt_string   */  query);
struct seaqt_array /* of struct seaqt_map  tuple of struct seaqt_string and struct seaqt_string   */  QUrlQuery_queryItems(const QUrlQuery* self);
bool QUrlQuery_hasQueryItem(const QUrlQuery* self, struct seaqt_string key);
void QUrlQuery_addQueryItem(QUrlQuery* self, struct seaqt_string key, struct seaqt_string value);
void QUrlQuery_removeQueryItem(QUrlQuery* self, struct seaqt_string key);
struct seaqt_string QUrlQuery_queryItemValue_key(const QUrlQuery* self, struct seaqt_string key);
struct seaqt_array /* of struct seaqt_string */  QUrlQuery_allQueryItemValues_key(const QUrlQuery* self, struct seaqt_string key);
void QUrlQuery_removeAllQueryItems(QUrlQuery* self, struct seaqt_string key);
struct seaqt_string QUrlQuery_query_encoding(const QUrlQuery* self, unsigned int encoding);
struct seaqt_string QUrlQuery_toString_encoding(const QUrlQuery* self, unsigned int encoding);
struct seaqt_array /* of struct seaqt_map  tuple of struct seaqt_string and struct seaqt_string   */  QUrlQuery_queryItems_encoding(const QUrlQuery* self, unsigned int encoding);
struct seaqt_string QUrlQuery_queryItemValue_key_encoding(const QUrlQuery* self, struct seaqt_string key, unsigned int encoding);
struct seaqt_array /* of struct seaqt_string */  QUrlQuery_allQueryItemValues_key_encoding(const QUrlQuery* self, struct seaqt_string key, unsigned int encoding);

void QUrlQuery_delete(QUrlQuery* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
