#include <QByteArray>
#include <QHash>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPair>
#include <QRemoteObjectNode>
#include <QRemoteObjectPendingCall>
#include <QRemoteObjectRegistry>
#include <QRemoteObjectReplica>
#include <QRemoteObjectSourceLocationInfo>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qremoteobjectregistry.h>
#include "gen_qremoteobjectregistry.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QRemoteObjectRegistry_virtbase(QRemoteObjectRegistry* src, QRemoteObjectReplica** outptr_QRemoteObjectReplica) {
	*outptr_QRemoteObjectReplica = static_cast<QRemoteObjectReplica*>(src);
}

QMetaObject* QRemoteObjectRegistry_metaObject(const QRemoteObjectRegistry* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRemoteObjectRegistry_metacast(QRemoteObjectRegistry* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRemoteObjectRegistry_metacall(QRemoteObjectRegistry* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QRemoteObjectRegistry_tr_s(const char* s) {
	QString _ret = QRemoteObjectRegistry::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QRemoteObjectRegistry_registerMetatypes() {
	QRemoteObjectRegistry::registerMetatypes();
}

struct seaqt_map /* of struct seaqt_string to QRemoteObjectSourceLocationInfo* */  QRemoteObjectRegistry_sourceLocations(const QRemoteObjectRegistry* self) {
	QRemoteObjectSourceLocations _ret = self->sourceLocations();
	// Convert QMap<> from C++ memory to manually-managed C memory
	struct seaqt_string* _karr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.size()));
	QRemoteObjectSourceLocationInfo** _varr = static_cast<QRemoteObjectSourceLocationInfo**>(malloc(sizeof(QRemoteObjectSourceLocationInfo*) * _ret.size()));
	int _ctr = 0;
	for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
		QString _hashkey_ret = _itr->first;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _hashkey_b = _hashkey_ret.toUtf8();
		struct seaqt_string _hashkey_ms;
		_hashkey_ms.len = _hashkey_b.length();
		_hashkey_ms.data = static_cast<char*>(malloc(_hashkey_ms.len));
		memcpy(_hashkey_ms.data, _hashkey_b.data(), _hashkey_ms.len);
		_karr[_ctr] = _hashkey_ms;
		_varr[_ctr] = new QRemoteObjectSourceLocationInfo(_itr->second);
		_ctr++;
	}
	struct seaqt_map _out;
	_out.len = _ret.size();
	_out.keys = static_cast<void*>(_karr);
	_out.values = static_cast<void*>(_varr);
	return _out;
}

void QRemoteObjectRegistry_remoteObjectAdded(QRemoteObjectRegistry* self, struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */  entry) {
	QRemoteObjectSourceLocation entry_QPair;
	struct seaqt_string* entry_first_arr = static_cast<struct seaqt_string*>(entry.keys);
	QRemoteObjectSourceLocationInfo** entry_second_arr = static_cast<QRemoteObjectSourceLocationInfo**>(entry.values);
		QString entry_first_arr_0_QString = QString::fromUtf8(entry_first_arr[0].data, entry_first_arr[0].len);
	entry_QPair.first = entry_first_arr_0_QString;
	entry_QPair.second = *(entry_second_arr[0]);
	self->remoteObjectAdded(entry_QPair);
}

void QRemoteObjectRegistry_connect_remoteObjectAdded(QRemoteObjectRegistry* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */ ), void (*release)(intptr_t)) {
	QRemoteObjectRegistry::connect(self, static_cast<void (QRemoteObjectRegistry::*)(const QRemoteObjectSourceLocation&)>(&QRemoteObjectRegistry::remoteObjectAdded), self, [callback, release = seaqt::release_callback{slot,release}](const QRemoteObjectSourceLocation& entry) {
			const QRemoteObjectSourceLocation& entry_ret = entry;
			// Convert QPair<> from C++ memory to manually-managed C memory
			struct seaqt_string* entry_first_arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string)));
			QRemoteObjectSourceLocationInfo** entry_second_arr = static_cast<QRemoteObjectSourceLocationInfo**>(malloc(sizeof(QRemoteObjectSourceLocationInfo*)));
			QString entry_first_ret = entry_ret.first;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray entry_first_b = entry_first_ret.toUtf8();
			struct seaqt_string entry_first_ms;
			entry_first_ms.len = entry_first_b.length();
			entry_first_ms.data = static_cast<char*>(malloc(entry_first_ms.len));
			memcpy(entry_first_ms.data, entry_first_b.data(), entry_first_ms.len);
			entry_first_arr[0] = entry_first_ms;
			entry_second_arr[0] = new QRemoteObjectSourceLocationInfo(entry_ret.second);
			struct seaqt_map entry_out;
			entry_out.len = 1;
			entry_out.keys = static_cast<void*>(entry_first_arr);
			entry_out.values = static_cast<void*>(entry_second_arr);
			struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */  sigval1 = entry_out;
			callback(release.slot, sigval1);
	});
}

void QRemoteObjectRegistry_remoteObjectRemoved(QRemoteObjectRegistry* self, struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */  entry) {
	QRemoteObjectSourceLocation entry_QPair;
	struct seaqt_string* entry_first_arr = static_cast<struct seaqt_string*>(entry.keys);
	QRemoteObjectSourceLocationInfo** entry_second_arr = static_cast<QRemoteObjectSourceLocationInfo**>(entry.values);
		QString entry_first_arr_0_QString = QString::fromUtf8(entry_first_arr[0].data, entry_first_arr[0].len);
	entry_QPair.first = entry_first_arr_0_QString;
	entry_QPair.second = *(entry_second_arr[0]);
	self->remoteObjectRemoved(entry_QPair);
}

void QRemoteObjectRegistry_connect_remoteObjectRemoved(QRemoteObjectRegistry* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */ ), void (*release)(intptr_t)) {
	QRemoteObjectRegistry::connect(self, static_cast<void (QRemoteObjectRegistry::*)(const QRemoteObjectSourceLocation&)>(&QRemoteObjectRegistry::remoteObjectRemoved), self, [callback, release = seaqt::release_callback{slot,release}](const QRemoteObjectSourceLocation& entry) {
			const QRemoteObjectSourceLocation& entry_ret = entry;
			// Convert QPair<> from C++ memory to manually-managed C memory
			struct seaqt_string* entry_first_arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string)));
			QRemoteObjectSourceLocationInfo** entry_second_arr = static_cast<QRemoteObjectSourceLocationInfo**>(malloc(sizeof(QRemoteObjectSourceLocationInfo*)));
			QString entry_first_ret = entry_ret.first;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray entry_first_b = entry_first_ret.toUtf8();
			struct seaqt_string entry_first_ms;
			entry_first_ms.len = entry_first_b.length();
			entry_first_ms.data = static_cast<char*>(malloc(entry_first_ms.len));
			memcpy(entry_first_ms.data, entry_first_b.data(), entry_first_ms.len);
			entry_first_arr[0] = entry_first_ms;
			entry_second_arr[0] = new QRemoteObjectSourceLocationInfo(entry_ret.second);
			struct seaqt_map entry_out;
			entry_out.len = 1;
			entry_out.keys = static_cast<void*>(entry_first_arr);
			entry_out.values = static_cast<void*>(entry_second_arr);
			struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */  sigval1 = entry_out;
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QRemoteObjectRegistry_tr_s_c(const char* s, const char* c) {
	QString _ret = QRemoteObjectRegistry::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRemoteObjectRegistry_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QRemoteObjectRegistry::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QRemoteObjectRegistry_staticMetaObject() { return &QRemoteObjectRegistry::staticMetaObject; }
void QRemoteObjectRegistry_delete(QRemoteObjectRegistry* self) {
	delete self;
}

