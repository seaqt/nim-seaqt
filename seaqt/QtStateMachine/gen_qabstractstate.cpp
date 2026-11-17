#include <QAbstractState>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QState>
#include <QStateMachine>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qabstractstate.h>
#include "gen_qabstractstate.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QAbstractState_virtbase(QAbstractState* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAbstractState_metaObject(const QAbstractState* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractState_metacast(QAbstractState* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractState_metacall(QAbstractState* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QAbstractState_tr_s(const char* s) {
	QString _ret = QAbstractState::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QState* QAbstractState_parentState(const QAbstractState* self) {
	return self->parentState();
}

QStateMachine* QAbstractState_machine(const QAbstractState* self) {
	return self->machine();
}

bool QAbstractState_active(const QAbstractState* self) {
	return self->active();
}

void QAbstractState_activeChanged(QAbstractState* self, bool active) {
	self->activeChanged(active);
}

void QAbstractState_connect_activeChanged(QAbstractState* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QAbstractState::connect(self, static_cast<void (QAbstractState::*)(bool)>(&QAbstractState::activeChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool active) {
			bool sigval1 = active;
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QAbstractState_tr_s_c(const char* s, const char* c) {
	QString _ret = QAbstractState::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAbstractState_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAbstractState::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractState_connect_entered(QAbstractState* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAbstractState::connect(self, &QAbstractState::entered, self, [callback, release = seaqt::release_callback{slot,release}](auto) {
			callback(release.slot);
	});
}

void QAbstractState_connect_exited(QAbstractState* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAbstractState::connect(self, &QAbstractState::exited, self, [callback, release = seaqt::release_callback{slot,release}](auto) {
			callback(release.slot);
	});
}

const QMetaObject* QAbstractState_staticMetaObject() { return &QAbstractState::staticMetaObject; }
void QAbstractState_delete(QAbstractState* self) {
	delete self;
}

