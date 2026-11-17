#include <QByteArray>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRemoteObjectNode>
#include <QRemoteObjectPendingCall>
#include <QRemoteObjectReplica>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qremoteobjectreplica.h>
#include "gen_qremoteobjectreplica.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QRemoteObjectReplica_virtbase(QRemoteObjectReplica* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QRemoteObjectReplica_metaObject(const QRemoteObjectReplica* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRemoteObjectReplica_metacast(QRemoteObjectReplica* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRemoteObjectReplica_metacall(QRemoteObjectReplica* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QRemoteObjectReplica_tr_s(const char* s) {
	QString _ret = QRemoteObjectReplica::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QRemoteObjectReplica_isReplicaValid(const QRemoteObjectReplica* self) {
	return self->isReplicaValid();
}

bool QRemoteObjectReplica_waitForSource(QRemoteObjectReplica* self) {
	return self->waitForSource();
}

bool QRemoteObjectReplica_isInitialized(const QRemoteObjectReplica* self) {
	return self->isInitialized();
}

int QRemoteObjectReplica_state(const QRemoteObjectReplica* self) {
	QRemoteObjectReplica::State _ret = self->state();
	return static_cast<int>(_ret);
}

QRemoteObjectNode* QRemoteObjectReplica_node(const QRemoteObjectReplica* self) {
	return self->node();
}

void QRemoteObjectReplica_setNode(QRemoteObjectReplica* self, QRemoteObjectNode* node) {
	self->setNode(node);
}

void QRemoteObjectReplica_initialized(QRemoteObjectReplica* self) {
	self->initialized();
}

void QRemoteObjectReplica_connect_initialized(QRemoteObjectReplica* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QRemoteObjectReplica::connect(self, static_cast<void (QRemoteObjectReplica::*)()>(&QRemoteObjectReplica::initialized), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QRemoteObjectReplica_notified(QRemoteObjectReplica* self) {
	self->notified();
}

void QRemoteObjectReplica_connect_notified(QRemoteObjectReplica* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QRemoteObjectReplica::connect(self, static_cast<void (QRemoteObjectReplica::*)()>(&QRemoteObjectReplica::notified), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QRemoteObjectReplica_stateChanged(QRemoteObjectReplica* self, int state, int oldState) {
	self->stateChanged(static_cast<QRemoteObjectReplica::State>(state), static_cast<QRemoteObjectReplica::State>(oldState));
}

void QRemoteObjectReplica_connect_stateChanged(QRemoteObjectReplica* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	QRemoteObjectReplica::connect(self, static_cast<void (QRemoteObjectReplica::*)(QRemoteObjectReplica::State, QRemoteObjectReplica::State)>(&QRemoteObjectReplica::stateChanged), self, [callback, release = seaqt::release_callback{slot,release}](QRemoteObjectReplica::State state, QRemoteObjectReplica::State oldState) {
			QRemoteObjectReplica::State state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			QRemoteObjectReplica::State oldState_ret = oldState;
			int sigval2 = static_cast<int>(oldState_ret);
			callback(release.slot, sigval1, sigval2);
	});
}

struct seaqt_string QRemoteObjectReplica_tr_s_c(const char* s, const char* c) {
	QString _ret = QRemoteObjectReplica::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRemoteObjectReplica_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QRemoteObjectReplica::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QRemoteObjectReplica_waitForSource_timeout(QRemoteObjectReplica* self, int timeout) {
	return self->waitForSource(static_cast<int>(timeout));
}

const QMetaObject* QRemoteObjectReplica_staticMetaObject() { return &QRemoteObjectReplica::staticMetaObject; }
void QRemoteObjectReplica_delete(QRemoteObjectReplica* self) {
	delete self;
}

