#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEURLSCHEME_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEURLSCHEME_H

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
class QWebEngineUrlScheme;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QWebEngineUrlScheme QWebEngineUrlScheme;
#endif

QWebEngineUrlScheme* QWebEngineUrlScheme_new();
QWebEngineUrlScheme* QWebEngineUrlScheme_new_name(struct seaqt_string name);
QWebEngineUrlScheme* QWebEngineUrlScheme_new_from(QWebEngineUrlScheme* from);

void QWebEngineUrlScheme_operatorAssign(QWebEngineUrlScheme* self, QWebEngineUrlScheme* from);
bool QWebEngineUrlScheme_operatorEqual(const QWebEngineUrlScheme* self, QWebEngineUrlScheme* that);
bool QWebEngineUrlScheme_operatorNotEqual(const QWebEngineUrlScheme* self, QWebEngineUrlScheme* that);
struct seaqt_string QWebEngineUrlScheme_name(const QWebEngineUrlScheme* self);
void QWebEngineUrlScheme_setName(QWebEngineUrlScheme* self, struct seaqt_string newValue);
int QWebEngineUrlScheme_syntax(const QWebEngineUrlScheme* self);
void QWebEngineUrlScheme_setSyntax(QWebEngineUrlScheme* self, int newValue);
int QWebEngineUrlScheme_defaultPort(const QWebEngineUrlScheme* self);
void QWebEngineUrlScheme_setDefaultPort(QWebEngineUrlScheme* self, int newValue);
int QWebEngineUrlScheme_flags(const QWebEngineUrlScheme* self);
void QWebEngineUrlScheme_setFlags(QWebEngineUrlScheme* self, int newValue);
void QWebEngineUrlScheme_registerScheme(QWebEngineUrlScheme* scheme);
QWebEngineUrlScheme* QWebEngineUrlScheme_schemeByName(struct seaqt_string name);

const QMetaObject* QWebEngineUrlScheme_staticMetaObject();
void QWebEngineUrlScheme_delete(QWebEngineUrlScheme* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
