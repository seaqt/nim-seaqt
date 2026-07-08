#pragma once
#ifndef SEAQT_QTCORE_GEN_QMIMETYPE_H
#define SEAQT_QTCORE_GEN_QMIMETYPE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaObject;
class QMimeType;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QMimeType QMimeType;
#endif

QMimeType* QMimeType_new();
QMimeType* QMimeType_new_from(QMimeType* from);

void QMimeType_operatorAssign(QMimeType* self, QMimeType* from);
void QMimeType_swap(QMimeType* self, QMimeType* other);
bool QMimeType_isValid(const QMimeType* self);
bool QMimeType_isDefault(const QMimeType* self);
struct seaqt_string QMimeType_name(const QMimeType* self);
struct seaqt_string QMimeType_comment(const QMimeType* self);
struct seaqt_string QMimeType_genericIconName(const QMimeType* self);
struct seaqt_string QMimeType_iconName(const QMimeType* self);
struct seaqt_array /* of struct seaqt_string */  QMimeType_globPatterns(const QMimeType* self);
struct seaqt_array /* of struct seaqt_string */  QMimeType_parentMimeTypes(const QMimeType* self);
struct seaqt_array /* of struct seaqt_string */  QMimeType_allAncestors(const QMimeType* self);
struct seaqt_array /* of struct seaqt_string */  QMimeType_aliases(const QMimeType* self);
struct seaqt_array /* of struct seaqt_string */  QMimeType_suffixes(const QMimeType* self);
struct seaqt_string QMimeType_preferredSuffix(const QMimeType* self);
bool QMimeType_inherits(const QMimeType* self, struct seaqt_string mimeTypeName);
struct seaqt_string QMimeType_filterString(const QMimeType* self);

const QMetaObject* QMimeType_staticMetaObject();
void QMimeType_delete(QMimeType* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
