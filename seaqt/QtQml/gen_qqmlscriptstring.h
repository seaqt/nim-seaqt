#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLSCRIPTSTRING_H
#define SEAQT_QTQML_GEN_QQMLSCRIPTSTRING_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QQmlScriptString;
#else
typedef struct QQmlScriptString QQmlScriptString;
#endif

QQmlScriptString* QQmlScriptString_new();
QQmlScriptString* QQmlScriptString_new2(QQmlScriptString* param1);
void QQmlScriptString_operatorAssign(QQmlScriptString* self, QQmlScriptString* param1);
bool QQmlScriptString_operatorEqual(const QQmlScriptString* self, QQmlScriptString* param1);
bool QQmlScriptString_operatorNotEqual(const QQmlScriptString* self, QQmlScriptString* param1);
bool QQmlScriptString_isEmpty(const QQmlScriptString* self);
bool QQmlScriptString_isUndefinedLiteral(const QQmlScriptString* self);
bool QQmlScriptString_isNullLiteral(const QQmlScriptString* self);
struct miqt_string QQmlScriptString_stringLiteral(const QQmlScriptString* self);
double QQmlScriptString_numberLiteral(const QQmlScriptString* self, bool* ok);
bool QQmlScriptString_booleanLiteral(const QQmlScriptString* self, bool* ok);
const QMetaObject* QQmlScriptString_staticMetaObject();
void QQmlScriptString_delete(QQmlScriptString* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
