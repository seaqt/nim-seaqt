#pragma once
#ifndef SEAQT_QTCORE_GEN_QLOGGINGCATEGORY_H
#define SEAQT_QTCORE_GEN_QLOGGINGCATEGORY_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QLoggingCategory;
#else
typedef struct QLoggingCategory QLoggingCategory;
#endif

QLoggingCategory* QLoggingCategory_new_category(const char* category);

bool QLoggingCategory_isDebugEnabled(const QLoggingCategory* self);
bool QLoggingCategory_isInfoEnabled(const QLoggingCategory* self);
bool QLoggingCategory_isWarningEnabled(const QLoggingCategory* self);
bool QLoggingCategory_isCriticalEnabled(const QLoggingCategory* self);
const char* QLoggingCategory_categoryName(const QLoggingCategory* self);
QLoggingCategory* QLoggingCategory_operatorCall(QLoggingCategory* self);
QLoggingCategory* QLoggingCategory_operatorCall_const(const QLoggingCategory* self);
QLoggingCategory* QLoggingCategory_defaultCategory();
void QLoggingCategory_setFilterRules(struct seaqt_string rules);

void QLoggingCategory_delete(QLoggingCategory* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
