#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLNETWORKACCESSMANAGERFACTORY_H
#define SEAQT_QTQML_GEN_QQMLNETWORKACCESSMANAGERFACTORY_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QNetworkAccessManager;
class QObject;
class QQmlNetworkAccessManagerFactory;
#else
typedef struct QNetworkAccessManager QNetworkAccessManager;
typedef struct QObject QObject;
typedef struct QQmlNetworkAccessManagerFactory QQmlNetworkAccessManagerFactory;
#endif

QNetworkAccessManager* QQmlNetworkAccessManagerFactory_create(QQmlNetworkAccessManagerFactory* self, QObject* parent);
void QQmlNetworkAccessManagerFactory_operatorAssign(QQmlNetworkAccessManagerFactory* self, QQmlNetworkAccessManagerFactory* param1);
void QQmlNetworkAccessManagerFactory_delete(QQmlNetworkAccessManagerFactory* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
