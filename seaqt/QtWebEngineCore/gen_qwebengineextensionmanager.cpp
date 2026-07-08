#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QWebEngineExtensionInfo>
#include <QWebEngineExtensionManager>
#include <qwebengineextensionmanager.h>
#include "gen_qwebengineextensionmanager.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QWebEngineExtensionManager_virtbase(QWebEngineExtensionManager* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebEngineExtensionManager_metaObject(const QWebEngineExtensionManager* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebEngineExtensionManager_metacast(QWebEngineExtensionManager* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebEngineExtensionManager_metacall(QWebEngineExtensionManager* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QWebEngineExtensionManager_tr_s(const char* s) {
	QString _ret = QWebEngineExtensionManager::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineExtensionManager_loadExtension(QWebEngineExtensionManager* self, struct seaqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->loadExtension(path_QString);
}

void QWebEngineExtensionManager_installExtension(QWebEngineExtensionManager* self, struct seaqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->installExtension(path_QString);
}

void QWebEngineExtensionManager_unloadExtension(QWebEngineExtensionManager* self, QWebEngineExtensionInfo* extension) {
	self->unloadExtension(*extension);
}

void QWebEngineExtensionManager_uninstallExtension(QWebEngineExtensionManager* self, QWebEngineExtensionInfo* extension) {
	self->uninstallExtension(*extension);
}

void QWebEngineExtensionManager_setExtensionEnabled(QWebEngineExtensionManager* self, QWebEngineExtensionInfo* extension, bool enabled) {
	self->setExtensionEnabled(*extension, enabled);
}

struct seaqt_string QWebEngineExtensionManager_installPath(const QWebEngineExtensionManager* self) {
	QString _ret = self->installPath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of QWebEngineExtensionInfo* */  QWebEngineExtensionManager_extensions(const QWebEngineExtensionManager* self) {
	QList<QWebEngineExtensionInfo> _ret = self->extensions();
	// Convert QList<> from C++ memory to manually-managed C memory
	QWebEngineExtensionInfo** _arr = static_cast<QWebEngineExtensionInfo**>(malloc(sizeof(QWebEngineExtensionInfo*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QWebEngineExtensionInfo(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QWebEngineExtensionManager_loadFinished(QWebEngineExtensionManager* self, QWebEngineExtensionInfo* extension) {
	self->loadFinished(*extension);
}

void QWebEngineExtensionManager_connect_loadFinished(QWebEngineExtensionManager* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineExtensionInfo*), void (*release)(intptr_t)) {
	QWebEngineExtensionManager::connect(self, static_cast<void (QWebEngineExtensionManager::*)(const QWebEngineExtensionInfo&)>(&QWebEngineExtensionManager::loadFinished), self, [callback, release = seaqt::release_callback{slot,release}](const QWebEngineExtensionInfo& extension) {
			const QWebEngineExtensionInfo& extension_ret = extension;
			// Cast returned reference into pointer
			QWebEngineExtensionInfo* sigval1 = const_cast<QWebEngineExtensionInfo*>(&extension_ret);
			callback(release.slot, sigval1);
	});
}

void QWebEngineExtensionManager_installFinished(QWebEngineExtensionManager* self, QWebEngineExtensionInfo* extension) {
	self->installFinished(*extension);
}

void QWebEngineExtensionManager_connect_installFinished(QWebEngineExtensionManager* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineExtensionInfo*), void (*release)(intptr_t)) {
	QWebEngineExtensionManager::connect(self, static_cast<void (QWebEngineExtensionManager::*)(const QWebEngineExtensionInfo&)>(&QWebEngineExtensionManager::installFinished), self, [callback, release = seaqt::release_callback{slot,release}](const QWebEngineExtensionInfo& extension) {
			const QWebEngineExtensionInfo& extension_ret = extension;
			// Cast returned reference into pointer
			QWebEngineExtensionInfo* sigval1 = const_cast<QWebEngineExtensionInfo*>(&extension_ret);
			callback(release.slot, sigval1);
	});
}

void QWebEngineExtensionManager_unloadFinished(QWebEngineExtensionManager* self, QWebEngineExtensionInfo* extension) {
	self->unloadFinished(*extension);
}

void QWebEngineExtensionManager_connect_unloadFinished(QWebEngineExtensionManager* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineExtensionInfo*), void (*release)(intptr_t)) {
	QWebEngineExtensionManager::connect(self, static_cast<void (QWebEngineExtensionManager::*)(const QWebEngineExtensionInfo&)>(&QWebEngineExtensionManager::unloadFinished), self, [callback, release = seaqt::release_callback{slot,release}](const QWebEngineExtensionInfo& extension) {
			const QWebEngineExtensionInfo& extension_ret = extension;
			// Cast returned reference into pointer
			QWebEngineExtensionInfo* sigval1 = const_cast<QWebEngineExtensionInfo*>(&extension_ret);
			callback(release.slot, sigval1);
	});
}

void QWebEngineExtensionManager_uninstallFinished(QWebEngineExtensionManager* self, QWebEngineExtensionInfo* extension) {
	self->uninstallFinished(*extension);
}

void QWebEngineExtensionManager_connect_uninstallFinished(QWebEngineExtensionManager* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineExtensionInfo*), void (*release)(intptr_t)) {
	QWebEngineExtensionManager::connect(self, static_cast<void (QWebEngineExtensionManager::*)(const QWebEngineExtensionInfo&)>(&QWebEngineExtensionManager::uninstallFinished), self, [callback, release = seaqt::release_callback{slot,release}](const QWebEngineExtensionInfo& extension) {
			const QWebEngineExtensionInfo& extension_ret = extension;
			// Cast returned reference into pointer
			QWebEngineExtensionInfo* sigval1 = const_cast<QWebEngineExtensionInfo*>(&extension_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QWebEngineExtensionManager_tr_s_c(const char* s, const char* c) {
	QString _ret = QWebEngineExtensionManager::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineExtensionManager_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebEngineExtensionManager::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QWebEngineExtensionManager_staticMetaObject() { return &QWebEngineExtensionManager::staticMetaObject; }
void QWebEngineExtensionManager_delete(QWebEngineExtensionManager* self) {
	delete self;
}

