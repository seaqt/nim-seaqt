#include <QNetworkAccessManager>
#include <QObject>
#include <QQmlNetworkAccessManagerFactory>
#include <qqmlnetworkaccessmanagerfactory.h>
#include "gen_qqmlnetworkaccessmanagerfactory.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

QNetworkAccessManager* QQmlNetworkAccessManagerFactory_create(QQmlNetworkAccessManagerFactory* self, QObject* parent) {
	return self->create(parent);
}

void QQmlNetworkAccessManagerFactory_operatorAssign(QQmlNetworkAccessManagerFactory* self, QQmlNetworkAccessManagerFactory* param1) {
	self->operator=(*param1);
}

void QQmlNetworkAccessManagerFactory_delete(QQmlNetworkAccessManagerFactory* self) {
	delete self;
}

