#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QAUTHENTICATOR_H
#define SEAQT_QTNETWORK_GEN_QAUTHENTICATOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAuthenticator;
class QMetaObject;
class QVariant;
#else
typedef struct QAuthenticator QAuthenticator;
typedef struct QMetaObject QMetaObject;
typedef struct QVariant QVariant;
#endif

QAuthenticator* QAuthenticator_new();
QAuthenticator* QAuthenticator_new_from(QAuthenticator* from);

void QAuthenticator_operatorAssign(QAuthenticator* self, QAuthenticator* from);
bool QAuthenticator_operatorEqual(const QAuthenticator* self, QAuthenticator* other);
bool QAuthenticator_operatorNotEqual(const QAuthenticator* self, QAuthenticator* other);
struct seaqt_string QAuthenticator_user(const QAuthenticator* self);
void QAuthenticator_setUser(QAuthenticator* self, struct seaqt_string user);
struct seaqt_string QAuthenticator_password(const QAuthenticator* self);
void QAuthenticator_setPassword(QAuthenticator* self, struct seaqt_string password);
struct seaqt_string QAuthenticator_realm(const QAuthenticator* self);
void QAuthenticator_setRealm(QAuthenticator* self, struct seaqt_string realm);
QVariant* QAuthenticator_option(const QAuthenticator* self, struct seaqt_string opt);
struct seaqt_map /* of struct seaqt_string to QVariant* */  QAuthenticator_options(const QAuthenticator* self);
void QAuthenticator_setOption(QAuthenticator* self, struct seaqt_string opt, QVariant* value);
bool QAuthenticator_isNull(const QAuthenticator* self);
void QAuthenticator_detach(QAuthenticator* self);
void QAuthenticator_clear(QAuthenticator* self);

const QMetaObject* QAuthenticator_staticMetaObject();
void QAuthenticator_delete(QAuthenticator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
