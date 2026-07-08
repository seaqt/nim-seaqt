#include <QAbstractExtensionFactory>
#include <QAbstractExtensionManager>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <extension.h>
#include "gen_extension.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QObject* QAbstractExtensionFactory_extension(const QAbstractExtensionFactory* self, QObject* object, struct seaqt_string iid) {
	QString iid_QString = QString::fromUtf8(iid.data, iid.len);
	return self->extension(object, iid_QString);
}

void QAbstractExtensionFactory_operatorAssign(QAbstractExtensionFactory* self, QAbstractExtensionFactory* from) {
	self->operator=(*from);
}

void QAbstractExtensionFactory_delete(QAbstractExtensionFactory* self) {
	delete self;
}

void QAbstractExtensionManager_registerExtensions(QAbstractExtensionManager* self, QAbstractExtensionFactory* factory, struct seaqt_string iid) {
	QString iid_QString = QString::fromUtf8(iid.data, iid.len);
	self->registerExtensions(factory, iid_QString);
}

void QAbstractExtensionManager_unregisterExtensions(QAbstractExtensionManager* self, QAbstractExtensionFactory* factory, struct seaqt_string iid) {
	QString iid_QString = QString::fromUtf8(iid.data, iid.len);
	self->unregisterExtensions(factory, iid_QString);
}

QObject* QAbstractExtensionManager_extension(const QAbstractExtensionManager* self, QObject* object, struct seaqt_string iid) {
	QString iid_QString = QString::fromUtf8(iid.data, iid.len);
	return self->extension(object, iid_QString);
}

void QAbstractExtensionManager_operatorAssign(QAbstractExtensionManager* self, QAbstractExtensionManager* from) {
	self->operator=(*from);
}

void QAbstractExtensionManager_delete(QAbstractExtensionManager* self) {
	delete self;
}

