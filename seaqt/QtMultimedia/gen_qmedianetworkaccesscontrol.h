#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIANETWORKACCESSCONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIANETWORKACCESSCONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMediaControl;
class QMediaNetworkAccessControl;
class QMetaMethod;
class QMetaObject;
class QNetworkConfiguration;
class QObject;
#else
typedef struct QMediaControl QMediaControl;
typedef struct QMediaNetworkAccessControl QMediaNetworkAccessControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkConfiguration QNetworkConfiguration;
typedef struct QObject QObject;
#endif

void QMediaNetworkAccessControl_virtbase(QMediaNetworkAccessControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QMediaNetworkAccessControl_metaObject(const QMediaNetworkAccessControl* self);
void* QMediaNetworkAccessControl_metacast(QMediaNetworkAccessControl* self, const char* param1);
int QMediaNetworkAccessControl_metacall(QMediaNetworkAccessControl* self, int param1, int param2, void** param3);
struct seaqt_string QMediaNetworkAccessControl_tr_s(const char* s);
struct seaqt_string QMediaNetworkAccessControl_trUtf8_s(const char* s);
void QMediaNetworkAccessControl_setConfigurations(QMediaNetworkAccessControl* self, struct seaqt_array /* of QNetworkConfiguration* */  configuration);
QNetworkConfiguration* QMediaNetworkAccessControl_currentConfiguration(const QMediaNetworkAccessControl* self);
void QMediaNetworkAccessControl_configurationChanged(QMediaNetworkAccessControl* self, QNetworkConfiguration* configuration);
void QMediaNetworkAccessControl_connect_configurationChanged(QMediaNetworkAccessControl* self, intptr_t slot, void (*callback)(intptr_t, QNetworkConfiguration*), void (*release)(intptr_t));
struct seaqt_string QMediaNetworkAccessControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QMediaNetworkAccessControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QMediaNetworkAccessControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QMediaNetworkAccessControl_trUtf8_s_c_n(const char* s, const char* c, int n);

void QMediaNetworkAccessControl_delete(QMediaNetworkAccessControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
