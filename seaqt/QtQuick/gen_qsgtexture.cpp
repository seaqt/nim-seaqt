#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRectF>
#include <QSGDynamicTexture>
#include <QSGTexture>
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGTexture__NativeTexture
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qsgtexture.h>
#include "gen_qsgtexture.h"

#ifdef __cplusplus
extern "C" {
#endif

QMetaObject* miqt_exec_callback_QSGTexture_metaObject(const QSGTexture*, intptr_t);
void* miqt_exec_callback_QSGTexture_metacast(QSGTexture*, intptr_t, const char*);
int miqt_exec_callback_QSGTexture_metacall(QSGTexture*, intptr_t, int, int, void**);
int miqt_exec_callback_QSGTexture_textureId(const QSGTexture*, intptr_t);
QSize* miqt_exec_callback_QSGTexture_textureSize(const QSGTexture*, intptr_t);
bool miqt_exec_callback_QSGTexture_hasAlphaChannel(const QSGTexture*, intptr_t);
bool miqt_exec_callback_QSGTexture_hasMipmaps(const QSGTexture*, intptr_t);
QRectF* miqt_exec_callback_QSGTexture_normalizedTextureSubRect(const QSGTexture*, intptr_t);
bool miqt_exec_callback_QSGTexture_isAtlasTexture(const QSGTexture*, intptr_t);
QSGTexture* miqt_exec_callback_QSGTexture_removedFromAtlas(const QSGTexture*, intptr_t);
void miqt_exec_callback_QSGTexture_bind(QSGTexture*, intptr_t);
bool miqt_exec_callback_QSGTexture_event(QSGTexture*, intptr_t, QEvent*);
bool miqt_exec_callback_QSGTexture_eventFilter(QSGTexture*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QSGTexture_timerEvent(QSGTexture*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QSGTexture_childEvent(QSGTexture*, intptr_t, QChildEvent*);
void miqt_exec_callback_QSGTexture_customEvent(QSGTexture*, intptr_t, QEvent*);
void miqt_exec_callback_QSGTexture_connectNotify(QSGTexture*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QSGTexture_disconnectNotify(QSGTexture*, intptr_t, QMetaMethod*);
QMetaObject* miqt_exec_callback_QSGDynamicTexture_metaObject(const QSGDynamicTexture*, intptr_t);
void* miqt_exec_callback_QSGDynamicTexture_metacast(QSGDynamicTexture*, intptr_t, const char*);
int miqt_exec_callback_QSGDynamicTexture_metacall(QSGDynamicTexture*, intptr_t, int, int, void**);
bool miqt_exec_callback_QSGDynamicTexture_updateTexture(QSGDynamicTexture*, intptr_t);
int miqt_exec_callback_QSGDynamicTexture_textureId(const QSGDynamicTexture*, intptr_t);
QSize* miqt_exec_callback_QSGDynamicTexture_textureSize(const QSGDynamicTexture*, intptr_t);
bool miqt_exec_callback_QSGDynamicTexture_hasAlphaChannel(const QSGDynamicTexture*, intptr_t);
bool miqt_exec_callback_QSGDynamicTexture_hasMipmaps(const QSGDynamicTexture*, intptr_t);
QRectF* miqt_exec_callback_QSGDynamicTexture_normalizedTextureSubRect(const QSGDynamicTexture*, intptr_t);
bool miqt_exec_callback_QSGDynamicTexture_isAtlasTexture(const QSGDynamicTexture*, intptr_t);
QSGTexture* miqt_exec_callback_QSGDynamicTexture_removedFromAtlas(const QSGDynamicTexture*, intptr_t);
void miqt_exec_callback_QSGDynamicTexture_bind(QSGDynamicTexture*, intptr_t);
bool miqt_exec_callback_QSGDynamicTexture_event(QSGDynamicTexture*, intptr_t, QEvent*);
bool miqt_exec_callback_QSGDynamicTexture_eventFilter(QSGDynamicTexture*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QSGDynamicTexture_timerEvent(QSGDynamicTexture*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QSGDynamicTexture_childEvent(QSGDynamicTexture*, intptr_t, QChildEvent*);
void miqt_exec_callback_QSGDynamicTexture_customEvent(QSGDynamicTexture*, intptr_t, QEvent*);
void miqt_exec_callback_QSGDynamicTexture_connectNotify(QSGDynamicTexture*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QSGDynamicTexture_disconnectNotify(QSGDynamicTexture*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSGTexture final : public QSGTexture {
public:

	VirtualQSGTexture(): QSGTexture() {};

	virtual ~VirtualQSGTexture() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QSGTexture::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QSGTexture_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QSGTexture_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QSGTexture::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QSGTexture_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QSGTexture_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QSGTexture::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QSGTexture_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSGTexture_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__textureId = 0;

	// Subclass to allow providing a Go implementation
	virtual int textureId() const override {
		if (handle__textureId == 0) {
			return 0; // Pure virtual, there is no base we can call
		}
		

		int callback_return_value = miqt_exec_callback_QSGTexture_textureId(this, handle__textureId);

		return static_cast<int>(callback_return_value);
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__textureSize = 0;

	// Subclass to allow providing a Go implementation
	virtual QSize textureSize() const override {
		if (handle__textureSize == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}
		

		QSize* callback_return_value = miqt_exec_callback_QSGTexture_textureSize(this, handle__textureSize);

		return *callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__hasAlphaChannel = 0;

	// Subclass to allow providing a Go implementation
	virtual bool hasAlphaChannel() const override {
		if (handle__hasAlphaChannel == 0) {
			return false; // Pure virtual, there is no base we can call
		}
		

		bool callback_return_value = miqt_exec_callback_QSGTexture_hasAlphaChannel(this, handle__hasAlphaChannel);

		return callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__hasMipmaps = 0;

	// Subclass to allow providing a Go implementation
	virtual bool hasMipmaps() const override {
		if (handle__hasMipmaps == 0) {
			return false; // Pure virtual, there is no base we can call
		}
		

		bool callback_return_value = miqt_exec_callback_QSGTexture_hasMipmaps(this, handle__hasMipmaps);

		return callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__normalizedTextureSubRect = 0;

	// Subclass to allow providing a Go implementation
	virtual QRectF normalizedTextureSubRect() const override {
		if (handle__normalizedTextureSubRect == 0) {
			return QSGTexture::normalizedTextureSubRect();
		}
		

		QRectF* callback_return_value = miqt_exec_callback_QSGTexture_normalizedTextureSubRect(this, handle__normalizedTextureSubRect);

		return *callback_return_value;
	}

	friend QRectF* QSGTexture_virtualbase_normalizedTextureSubRect(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isAtlasTexture = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isAtlasTexture() const override {
		if (handle__isAtlasTexture == 0) {
			return QSGTexture::isAtlasTexture();
		}
		

		bool callback_return_value = miqt_exec_callback_QSGTexture_isAtlasTexture(this, handle__isAtlasTexture);

		return callback_return_value;
	}

	friend bool QSGTexture_virtualbase_isAtlasTexture(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__removedFromAtlas = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGTexture* removedFromAtlas() const override {
		if (handle__removedFromAtlas == 0) {
			return QSGTexture::removedFromAtlas();
		}
		

		QSGTexture* callback_return_value = miqt_exec_callback_QSGTexture_removedFromAtlas(this, handle__removedFromAtlas);

		return callback_return_value;
	}

	friend QSGTexture* QSGTexture_virtualbase_removedFromAtlas(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__bind = 0;

	// Subclass to allow providing a Go implementation
	virtual void bind() override {
		if (handle__bind == 0) {
			return; // Pure virtual, there is no base we can call
		}
		

		miqt_exec_callback_QSGTexture_bind(this, handle__bind);

		
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QSGTexture::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QSGTexture_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QSGTexture_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QSGTexture::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QSGTexture_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSGTexture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QSGTexture::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QSGTexture_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QSGTexture_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QSGTexture::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QSGTexture_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QSGTexture_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QSGTexture::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QSGTexture_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QSGTexture_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QSGTexture::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QSGTexture_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QSGTexture_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QSGTexture::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QSGTexture_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QSGTexture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSGTexture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QSGTexture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QSGTexture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QSGTexture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QSGTexture* QSGTexture_new() {
	return new VirtualQSGTexture();
}

void QSGTexture_virtbase(QSGTexture* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSGTexture_metaObject(const QSGTexture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSGTexture_metacast(QSGTexture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSGTexture_metacall(QSGTexture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSGTexture_tr(const char* s) {
	QString _ret = QSGTexture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGTexture_trUtf8(const char* s) {
	QString _ret = QSGTexture::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QSGTexture_textureId(const QSGTexture* self) {
	return self->textureId();
}

QSGTexture__NativeTexture* QSGTexture_nativeTexture(const QSGTexture* self) {
	return new QSGTexture::NativeTexture(self->nativeTexture());
}

QSize* QSGTexture_textureSize(const QSGTexture* self) {
	return new QSize(self->textureSize());
}

bool QSGTexture_hasAlphaChannel(const QSGTexture* self) {
	return self->hasAlphaChannel();
}

bool QSGTexture_hasMipmaps(const QSGTexture* self) {
	return self->hasMipmaps();
}

QRectF* QSGTexture_normalizedTextureSubRect(const QSGTexture* self) {
	return new QRectF(self->normalizedTextureSubRect());
}

bool QSGTexture_isAtlasTexture(const QSGTexture* self) {
	return self->isAtlasTexture();
}

QSGTexture* QSGTexture_removedFromAtlas(const QSGTexture* self) {
	return self->removedFromAtlas();
}

void QSGTexture_bind(QSGTexture* self) {
	self->bind();
}

void QSGTexture_updateBindOptions(QSGTexture* self) {
	self->updateBindOptions();
}

void QSGTexture_setMipmapFiltering(QSGTexture* self, int filter) {
	self->setMipmapFiltering(static_cast<QSGTexture::Filtering>(filter));
}

int QSGTexture_mipmapFiltering(const QSGTexture* self) {
	QSGTexture::Filtering _ret = self->mipmapFiltering();
	return static_cast<int>(_ret);
}

void QSGTexture_setFiltering(QSGTexture* self, int filter) {
	self->setFiltering(static_cast<QSGTexture::Filtering>(filter));
}

int QSGTexture_filtering(const QSGTexture* self) {
	QSGTexture::Filtering _ret = self->filtering();
	return static_cast<int>(_ret);
}

void QSGTexture_setAnisotropyLevel(QSGTexture* self, int level) {
	self->setAnisotropyLevel(static_cast<QSGTexture::AnisotropyLevel>(level));
}

int QSGTexture_anisotropyLevel(const QSGTexture* self) {
	QSGTexture::AnisotropyLevel _ret = self->anisotropyLevel();
	return static_cast<int>(_ret);
}

void QSGTexture_setHorizontalWrapMode(QSGTexture* self, int hwrap) {
	self->setHorizontalWrapMode(static_cast<QSGTexture::WrapMode>(hwrap));
}

int QSGTexture_horizontalWrapMode(const QSGTexture* self) {
	QSGTexture::WrapMode _ret = self->horizontalWrapMode();
	return static_cast<int>(_ret);
}

void QSGTexture_setVerticalWrapMode(QSGTexture* self, int vwrap) {
	self->setVerticalWrapMode(static_cast<QSGTexture::WrapMode>(vwrap));
}

int QSGTexture_verticalWrapMode(const QSGTexture* self) {
	QSGTexture::WrapMode _ret = self->verticalWrapMode();
	return static_cast<int>(_ret);
}

QRectF* QSGTexture_convertToNormalizedSourceRect(const QSGTexture* self, QRectF* rect) {
	return new QRectF(self->convertToNormalizedSourceRect(*rect));
}

int QSGTexture_comparisonKey(const QSGTexture* self) {
	return self->comparisonKey();
}

struct miqt_string QSGTexture_tr2(const char* s, const char* c) {
	QString _ret = QSGTexture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGTexture_tr3(const char* s, const char* c, int n) {
	QString _ret = QSGTexture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGTexture_trUtf82(const char* s, const char* c) {
	QString _ret = QSGTexture::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGTexture_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSGTexture::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSGTexture_updateBindOptions1(QSGTexture* self, bool force) {
	self->updateBindOptions(force);
}

bool QSGTexture_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QSGTexture_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSGTexture*)(self) )->QSGTexture::metaObject();

}

bool QSGTexture_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QSGTexture_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSGTexture*)(self) )->QSGTexture::qt_metacast(param1);

}

bool QSGTexture_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QSGTexture_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSGTexture*)(self) )->QSGTexture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QSGTexture_override_virtual_textureId(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__textureId = slot;
	return true;
}

bool QSGTexture_override_virtual_textureSize(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__textureSize = slot;
	return true;
}

bool QSGTexture_override_virtual_hasAlphaChannel(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__hasAlphaChannel = slot;
	return true;
}

bool QSGTexture_override_virtual_hasMipmaps(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__hasMipmaps = slot;
	return true;
}

bool QSGTexture_override_virtual_normalizedTextureSubRect(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__normalizedTextureSubRect = slot;
	return true;
}

QRectF* QSGTexture_virtualbase_normalizedTextureSubRect(const void* self) {

	return new QRectF(( (const VirtualQSGTexture*)(self) )->QSGTexture::normalizedTextureSubRect());

}

bool QSGTexture_override_virtual_isAtlasTexture(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isAtlasTexture = slot;
	return true;
}

bool QSGTexture_virtualbase_isAtlasTexture(const void* self) {

	return ( (const VirtualQSGTexture*)(self) )->QSGTexture::isAtlasTexture();

}

bool QSGTexture_override_virtual_removedFromAtlas(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__removedFromAtlas = slot;
	return true;
}

QSGTexture* QSGTexture_virtualbase_removedFromAtlas(const void* self) {

	return ( (const VirtualQSGTexture*)(self) )->QSGTexture::removedFromAtlas();

}

bool QSGTexture_override_virtual_bind(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__bind = slot;
	return true;
}

bool QSGTexture_override_virtual_event(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QSGTexture_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQSGTexture*)(self) )->QSGTexture::event(event);

}

bool QSGTexture_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QSGTexture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSGTexture*)(self) )->QSGTexture::eventFilter(watched, event);

}

bool QSGTexture_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QSGTexture_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQSGTexture*)(self) )->QSGTexture::timerEvent(event);

}

bool QSGTexture_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QSGTexture_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSGTexture*)(self) )->QSGTexture::childEvent(event);

}

bool QSGTexture_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QSGTexture_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSGTexture*)(self) )->QSGTexture::customEvent(event);

}

bool QSGTexture_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QSGTexture_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSGTexture*)(self) )->QSGTexture::connectNotify(*signal);

}

bool QSGTexture_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QSGTexture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSGTexture*)(self) )->QSGTexture::disconnectNotify(*signal);

}

const QMetaObject* QSGTexture_staticMetaObject() { return &QSGTexture::staticMetaObject; }
QObject* QSGTexture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QSGTexture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QSGTexture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QSGTexture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQSGTexture* self_cast = dynamic_cast<VirtualQSGTexture*>( (QSGTexture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QSGTexture_delete(QSGTexture* self) {
	delete self;
}

class VirtualQSGDynamicTexture final : public QSGDynamicTexture {
public:

	VirtualQSGDynamicTexture(): QSGDynamicTexture() {};

	virtual ~VirtualQSGDynamicTexture() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QSGDynamicTexture::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QSGDynamicTexture_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QSGDynamicTexture_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QSGDynamicTexture::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QSGDynamicTexture_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QSGDynamicTexture_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QSGDynamicTexture::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QSGDynamicTexture_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSGDynamicTexture_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__updateTexture = 0;

	// Subclass to allow providing a Go implementation
	virtual bool updateTexture() override {
		if (handle__updateTexture == 0) {
			return false; // Pure virtual, there is no base we can call
		}
		

		bool callback_return_value = miqt_exec_callback_QSGDynamicTexture_updateTexture(this, handle__updateTexture);

		return callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__textureId = 0;

	// Subclass to allow providing a Go implementation
	virtual int textureId() const override {
		if (handle__textureId == 0) {
			return 0; // Pure virtual, there is no base we can call
		}
		

		int callback_return_value = miqt_exec_callback_QSGDynamicTexture_textureId(this, handle__textureId);

		return static_cast<int>(callback_return_value);
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__textureSize = 0;

	// Subclass to allow providing a Go implementation
	virtual QSize textureSize() const override {
		if (handle__textureSize == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}
		

		QSize* callback_return_value = miqt_exec_callback_QSGDynamicTexture_textureSize(this, handle__textureSize);

		return *callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__hasAlphaChannel = 0;

	// Subclass to allow providing a Go implementation
	virtual bool hasAlphaChannel() const override {
		if (handle__hasAlphaChannel == 0) {
			return false; // Pure virtual, there is no base we can call
		}
		

		bool callback_return_value = miqt_exec_callback_QSGDynamicTexture_hasAlphaChannel(this, handle__hasAlphaChannel);

		return callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__hasMipmaps = 0;

	// Subclass to allow providing a Go implementation
	virtual bool hasMipmaps() const override {
		if (handle__hasMipmaps == 0) {
			return false; // Pure virtual, there is no base we can call
		}
		

		bool callback_return_value = miqt_exec_callback_QSGDynamicTexture_hasMipmaps(this, handle__hasMipmaps);

		return callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__normalizedTextureSubRect = 0;

	// Subclass to allow providing a Go implementation
	virtual QRectF normalizedTextureSubRect() const override {
		if (handle__normalizedTextureSubRect == 0) {
			return QSGDynamicTexture::normalizedTextureSubRect();
		}
		

		QRectF* callback_return_value = miqt_exec_callback_QSGDynamicTexture_normalizedTextureSubRect(this, handle__normalizedTextureSubRect);

		return *callback_return_value;
	}

	friend QRectF* QSGDynamicTexture_virtualbase_normalizedTextureSubRect(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isAtlasTexture = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isAtlasTexture() const override {
		if (handle__isAtlasTexture == 0) {
			return QSGDynamicTexture::isAtlasTexture();
		}
		

		bool callback_return_value = miqt_exec_callback_QSGDynamicTexture_isAtlasTexture(this, handle__isAtlasTexture);

		return callback_return_value;
	}

	friend bool QSGDynamicTexture_virtualbase_isAtlasTexture(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__removedFromAtlas = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGTexture* removedFromAtlas() const override {
		if (handle__removedFromAtlas == 0) {
			return QSGDynamicTexture::removedFromAtlas();
		}
		

		QSGTexture* callback_return_value = miqt_exec_callback_QSGDynamicTexture_removedFromAtlas(this, handle__removedFromAtlas);

		return callback_return_value;
	}

	friend QSGTexture* QSGDynamicTexture_virtualbase_removedFromAtlas(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__bind = 0;

	// Subclass to allow providing a Go implementation
	virtual void bind() override {
		if (handle__bind == 0) {
			return; // Pure virtual, there is no base we can call
		}
		

		miqt_exec_callback_QSGDynamicTexture_bind(this, handle__bind);

		
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QSGDynamicTexture::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QSGDynamicTexture_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QSGDynamicTexture_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QSGDynamicTexture::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QSGDynamicTexture_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSGDynamicTexture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QSGDynamicTexture::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QSGDynamicTexture_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QSGDynamicTexture_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QSGDynamicTexture::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QSGDynamicTexture_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QSGDynamicTexture_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QSGDynamicTexture::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QSGDynamicTexture_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QSGDynamicTexture_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QSGDynamicTexture::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QSGDynamicTexture_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QSGDynamicTexture_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QSGDynamicTexture::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QSGDynamicTexture_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QSGDynamicTexture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSGDynamicTexture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QSGDynamicTexture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QSGDynamicTexture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QSGDynamicTexture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QSGDynamicTexture* QSGDynamicTexture_new() {
	return new VirtualQSGDynamicTexture();
}

void QSGDynamicTexture_virtbase(QSGDynamicTexture* src, QSGTexture** outptr_QSGTexture) {
	*outptr_QSGTexture = static_cast<QSGTexture*>(src);
}

QMetaObject* QSGDynamicTexture_metaObject(const QSGDynamicTexture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSGDynamicTexture_metacast(QSGDynamicTexture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSGDynamicTexture_metacall(QSGDynamicTexture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSGDynamicTexture_tr(const char* s) {
	QString _ret = QSGDynamicTexture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGDynamicTexture_trUtf8(const char* s) {
	QString _ret = QSGDynamicTexture::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QSGDynamicTexture_updateTexture(QSGDynamicTexture* self) {
	return self->updateTexture();
}

struct miqt_string QSGDynamicTexture_tr2(const char* s, const char* c) {
	QString _ret = QSGDynamicTexture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGDynamicTexture_tr3(const char* s, const char* c, int n) {
	QString _ret = QSGDynamicTexture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGDynamicTexture_trUtf82(const char* s, const char* c) {
	QString _ret = QSGDynamicTexture::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGDynamicTexture_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSGDynamicTexture::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QSGDynamicTexture_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QSGDynamicTexture_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSGDynamicTexture*)(self) )->QSGDynamicTexture::metaObject();

}

bool QSGDynamicTexture_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QSGDynamicTexture_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSGDynamicTexture*)(self) )->QSGDynamicTexture::qt_metacast(param1);

}

bool QSGDynamicTexture_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QSGDynamicTexture_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSGDynamicTexture*)(self) )->QSGDynamicTexture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QSGDynamicTexture_override_virtual_updateTexture(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__updateTexture = slot;
	return true;
}

bool QSGDynamicTexture_override_virtual_textureId(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__textureId = slot;
	return true;
}

bool QSGDynamicTexture_override_virtual_textureSize(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__textureSize = slot;
	return true;
}

bool QSGDynamicTexture_override_virtual_hasAlphaChannel(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__hasAlphaChannel = slot;
	return true;
}

bool QSGDynamicTexture_override_virtual_hasMipmaps(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__hasMipmaps = slot;
	return true;
}

bool QSGDynamicTexture_override_virtual_normalizedTextureSubRect(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__normalizedTextureSubRect = slot;
	return true;
}

QRectF* QSGDynamicTexture_virtualbase_normalizedTextureSubRect(const void* self) {

	return new QRectF(( (const VirtualQSGDynamicTexture*)(self) )->QSGDynamicTexture::normalizedTextureSubRect());

}

bool QSGDynamicTexture_override_virtual_isAtlasTexture(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isAtlasTexture = slot;
	return true;
}

bool QSGDynamicTexture_virtualbase_isAtlasTexture(const void* self) {

	return ( (const VirtualQSGDynamicTexture*)(self) )->QSGDynamicTexture::isAtlasTexture();

}

bool QSGDynamicTexture_override_virtual_removedFromAtlas(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__removedFromAtlas = slot;
	return true;
}

QSGTexture* QSGDynamicTexture_virtualbase_removedFromAtlas(const void* self) {

	return ( (const VirtualQSGDynamicTexture*)(self) )->QSGDynamicTexture::removedFromAtlas();

}

bool QSGDynamicTexture_override_virtual_bind(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__bind = slot;
	return true;
}

bool QSGDynamicTexture_override_virtual_event(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QSGDynamicTexture_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQSGDynamicTexture*)(self) )->QSGDynamicTexture::event(event);

}

bool QSGDynamicTexture_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QSGDynamicTexture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSGDynamicTexture*)(self) )->QSGDynamicTexture::eventFilter(watched, event);

}

bool QSGDynamicTexture_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QSGDynamicTexture_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQSGDynamicTexture*)(self) )->QSGDynamicTexture::timerEvent(event);

}

bool QSGDynamicTexture_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QSGDynamicTexture_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSGDynamicTexture*)(self) )->QSGDynamicTexture::childEvent(event);

}

bool QSGDynamicTexture_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QSGDynamicTexture_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSGDynamicTexture*)(self) )->QSGDynamicTexture::customEvent(event);

}

bool QSGDynamicTexture_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QSGDynamicTexture_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSGDynamicTexture*)(self) )->QSGDynamicTexture::connectNotify(*signal);

}

bool QSGDynamicTexture_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QSGDynamicTexture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSGDynamicTexture*)(self) )->QSGDynamicTexture::disconnectNotify(*signal);

}

const QMetaObject* QSGDynamicTexture_staticMetaObject() { return &QSGDynamicTexture::staticMetaObject; }
QObject* QSGDynamicTexture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QSGDynamicTexture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QSGDynamicTexture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QSGDynamicTexture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQSGDynamicTexture* self_cast = dynamic_cast<VirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QSGDynamicTexture_delete(QSGDynamicTexture* self) {
	delete self;
}

void QSGTexture__NativeTexture_delete(QSGTexture__NativeTexture* self) {
	delete self;
}

