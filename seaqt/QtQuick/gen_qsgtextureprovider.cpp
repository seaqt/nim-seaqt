#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSGTexture>
#include <QSGTextureProvider>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qsgtextureprovider.h>
#include "gen_qsgtextureprovider.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QSGTextureProvider_textureChanged(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

void QSGTextureProvider_virtbase(QSGTextureProvider* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSGTextureProvider_metaObject(const QSGTextureProvider* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSGTextureProvider_metacast(QSGTextureProvider* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSGTextureProvider_metacall(QSGTextureProvider* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSGTextureProvider_tr(const char* s) {
	QString _ret = QSGTextureProvider::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGTextureProvider_trUtf8(const char* s) {
	QString _ret = QSGTextureProvider::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSGTexture* QSGTextureProvider_texture(const QSGTextureProvider* self) {
	return self->texture();
}

void QSGTextureProvider_textureChanged(QSGTextureProvider* self) {
	self->textureChanged();
}

void QSGTextureProvider_connect_textureChanged(QSGTextureProvider* self, intptr_t slot) {
	QSGTextureProvider::connect(self, static_cast<void (QSGTextureProvider::*)()>(&QSGTextureProvider::textureChanged), self, [=]() {
		miqt_exec_callback_QSGTextureProvider_textureChanged(slot);
	});
}

struct miqt_string QSGTextureProvider_tr2(const char* s, const char* c) {
	QString _ret = QSGTextureProvider::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGTextureProvider_tr3(const char* s, const char* c, int n) {
	QString _ret = QSGTextureProvider::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGTextureProvider_trUtf82(const char* s, const char* c) {
	QString _ret = QSGTextureProvider::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGTextureProvider_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSGTextureProvider::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QSGTextureProvider_staticMetaObject() { return &QSGTextureProvider::staticMetaObject; }
void QSGTextureProvider_delete(QSGTextureProvider* self) {
	delete self;
}

