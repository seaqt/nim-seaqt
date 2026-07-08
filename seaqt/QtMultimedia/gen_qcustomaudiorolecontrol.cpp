#include <QCustomAudioRoleControl>
#include <QList>
#include <QMediaControl>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qcustomaudiorolecontrol.h>
#include "gen_qcustomaudiorolecontrol.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QCustomAudioRoleControl_virtbase(QCustomAudioRoleControl* src, QMediaControl** outptr_QMediaControl) {
	*outptr_QMediaControl = static_cast<QMediaControl*>(src);
}

QMetaObject* QCustomAudioRoleControl_metaObject(const QCustomAudioRoleControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QCustomAudioRoleControl_metacast(QCustomAudioRoleControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QCustomAudioRoleControl_metacall(QCustomAudioRoleControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QCustomAudioRoleControl_tr_s(const char* s) {
	QString _ret = QCustomAudioRoleControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QCustomAudioRoleControl_trUtf8_s(const char* s) {
	QString _ret = QCustomAudioRoleControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QCustomAudioRoleControl_customAudioRole(const QCustomAudioRoleControl* self) {
	QString _ret = self->customAudioRole();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QCustomAudioRoleControl_setCustomAudioRole(QCustomAudioRoleControl* self, struct seaqt_string role) {
	QString role_QString = QString::fromUtf8(role.data, role.len);
	self->setCustomAudioRole(role_QString);
}

struct seaqt_array /* of struct seaqt_string */  QCustomAudioRoleControl_supportedCustomAudioRoles(const QCustomAudioRoleControl* self) {
	QStringList _ret = self->supportedCustomAudioRoles();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QCustomAudioRoleControl_customAudioRoleChanged(QCustomAudioRoleControl* self, struct seaqt_string role) {
	QString role_QString = QString::fromUtf8(role.data, role.len);
	self->customAudioRoleChanged(role_QString);
}

void QCustomAudioRoleControl_connect_customAudioRoleChanged(QCustomAudioRoleControl* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) {
	QCustomAudioRoleControl::connect(self, static_cast<void (QCustomAudioRoleControl::*)(const QString&)>(&QCustomAudioRoleControl::customAudioRoleChanged), self, [callback, release = seaqt::release_callback{slot,release}](const QString& role) {
			const QString role_ret = role;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray role_b = role_ret.toUtf8();
			struct seaqt_string role_ms;
			role_ms.len = role_b.length();
			role_ms.data = static_cast<char*>(malloc(role_ms.len));
			memcpy(role_ms.data, role_b.data(), role_ms.len);
			struct seaqt_string sigval1 = role_ms;
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QCustomAudioRoleControl_tr_s_c(const char* s, const char* c) {
	QString _ret = QCustomAudioRoleControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QCustomAudioRoleControl_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QCustomAudioRoleControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QCustomAudioRoleControl_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QCustomAudioRoleControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QCustomAudioRoleControl_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QCustomAudioRoleControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QCustomAudioRoleControl_staticMetaObject() { return &QCustomAudioRoleControl::staticMetaObject; }
void QCustomAudioRoleControl_delete(QCustomAudioRoleControl* self) {
	delete self;
}

