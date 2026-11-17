#include <QByteArray>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRemoteObjectDynamicReplica>
#include <QRemoteObjectNode>
#include <QRemoteObjectPendingCall>
#include <QRemoteObjectReplica>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qremoteobjectdynamicreplica.h>
#include "gen_qremoteobjectdynamicreplica.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QRemoteObjectDynamicReplica_virtbase(QRemoteObjectDynamicReplica* src, QRemoteObjectReplica** outptr_QRemoteObjectReplica) {
	*outptr_QRemoteObjectReplica = static_cast<QRemoteObjectReplica*>(src);
}

QMetaObject* QRemoteObjectDynamicReplica_metaObject(const QRemoteObjectDynamicReplica* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRemoteObjectDynamicReplica_metacast(QRemoteObjectDynamicReplica* self, const char* name) {
	return self->qt_metacast(name);
}

int QRemoteObjectDynamicReplica_metacall(QRemoteObjectDynamicReplica* self, int call, int id, void** argv) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(call), static_cast<int>(id), argv);
}

void QRemoteObjectDynamicReplica_delete(QRemoteObjectDynamicReplica* self) {
	delete self;
}

