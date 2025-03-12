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
class VirtualQSGTexture final : public QSGTexture {
	const QSGTexture_VTable* vtbl;
	void* vdata;
public:
	friend const QSGTexture_VTable* QSGTexture_vtbl(const VirtualQSGTexture* self);
	friend void* QSGTexture_vdata(const VirtualQSGTexture* self);
	friend void QSGTexture_setVdata(VirtualQSGTexture* self, void* vdata);

	VirtualQSGTexture(const QSGTexture_VTable* vtbl, void* vdata): QSGTexture(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSGTexture() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSGTexture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSGTexture_virtualbase_metaObject(const VirtualQSGTexture* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSGTexture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSGTexture_virtualbase_metacast(VirtualQSGTexture* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSGTexture::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSGTexture_virtualbase_metacall(VirtualQSGTexture* self, int param1, int param2, void** param3);

	virtual int textureId() const override {
		if (vtbl->textureId == 0) {
			return 0; // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->textureId(this);

		return static_cast<int>(callback_return_value);
	}

	virtual QSize textureSize() const override {
		if (vtbl->textureSize == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}


		QSize* callback_return_value = vtbl->textureSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	virtual bool hasAlphaChannel() const override {
		if (vtbl->hasAlphaChannel == 0) {
			return false; // Pure virtual, there is no base we can call
		}


		bool callback_return_value = vtbl->hasAlphaChannel(this);

		return callback_return_value;
	}

	virtual bool hasMipmaps() const override {
		if (vtbl->hasMipmaps == 0) {
			return false; // Pure virtual, there is no base we can call
		}


		bool callback_return_value = vtbl->hasMipmaps(this);

		return callback_return_value;
	}

	virtual QRectF normalizedTextureSubRect() const override {
		if (vtbl->normalizedTextureSubRect == 0) {
			return QSGTexture::normalizedTextureSubRect();
		}


		QRectF* callback_return_value = vtbl->normalizedTextureSubRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QSGTexture_virtualbase_normalizedTextureSubRect(const VirtualQSGTexture* self);

	virtual bool isAtlasTexture() const override {
		if (vtbl->isAtlasTexture == 0) {
			return QSGTexture::isAtlasTexture();
		}


		bool callback_return_value = vtbl->isAtlasTexture(this);

		return callback_return_value;
	}

	friend bool QSGTexture_virtualbase_isAtlasTexture(const VirtualQSGTexture* self);

	virtual QSGTexture* removedFromAtlas() const override {
		if (vtbl->removedFromAtlas == 0) {
			return QSGTexture::removedFromAtlas();
		}


		QSGTexture* callback_return_value = vtbl->removedFromAtlas(this);

		return callback_return_value;
	}

	friend QSGTexture* QSGTexture_virtualbase_removedFromAtlas(const VirtualQSGTexture* self);

	virtual void bind() override {
		if (vtbl->bind == 0) {
			return; // Pure virtual, there is no base we can call
		}


		vtbl->bind(this);

	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSGTexture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSGTexture_virtualbase_event(VirtualQSGTexture* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSGTexture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSGTexture_virtualbase_eventFilter(VirtualQSGTexture* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSGTexture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSGTexture_virtualbase_timerEvent(VirtualQSGTexture* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSGTexture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSGTexture_virtualbase_childEvent(VirtualQSGTexture* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSGTexture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSGTexture_virtualbase_customEvent(VirtualQSGTexture* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSGTexture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSGTexture_virtualbase_connectNotify(VirtualQSGTexture* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSGTexture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSGTexture_virtualbase_disconnectNotify(VirtualQSGTexture* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSGTexture_protectedbase_sender(const VirtualQSGTexture* self);
	friend int QSGTexture_protectedbase_senderSignalIndex(const VirtualQSGTexture* self);
	friend int QSGTexture_protectedbase_receivers(const VirtualQSGTexture* self, const char* signal);
	friend bool QSGTexture_protectedbase_isSignalConnected(const VirtualQSGTexture* self, QMetaMethod* signal);
};

VirtualQSGTexture* QSGTexture_new(const QSGTexture_VTable* vtbl, void* vdata) {
	return new VirtualQSGTexture(vtbl, vdata);
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

QMetaObject* QSGTexture_virtualbase_metaObject(const VirtualQSGTexture* self) {

	return (QMetaObject*) self->QSGTexture::metaObject();
}

void* QSGTexture_virtualbase_metacast(VirtualQSGTexture* self, const char* param1) {

	return self->QSGTexture::qt_metacast(param1);
}

int QSGTexture_virtualbase_metacall(VirtualQSGTexture* self, int param1, int param2, void** param3) {

	return self->QSGTexture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QRectF* QSGTexture_virtualbase_normalizedTextureSubRect(const VirtualQSGTexture* self) {

	return new QRectF(self->QSGTexture::normalizedTextureSubRect());
}

bool QSGTexture_virtualbase_isAtlasTexture(const VirtualQSGTexture* self) {

	return self->QSGTexture::isAtlasTexture();
}

QSGTexture* QSGTexture_virtualbase_removedFromAtlas(const VirtualQSGTexture* self) {

	return self->QSGTexture::removedFromAtlas();
}

bool QSGTexture_virtualbase_event(VirtualQSGTexture* self, QEvent* event) {

	return self->QSGTexture::event(event);
}

bool QSGTexture_virtualbase_eventFilter(VirtualQSGTexture* self, QObject* watched, QEvent* event) {

	return self->QSGTexture::eventFilter(watched, event);
}

void QSGTexture_virtualbase_timerEvent(VirtualQSGTexture* self, QTimerEvent* event) {

	self->QSGTexture::timerEvent(event);
}

void QSGTexture_virtualbase_childEvent(VirtualQSGTexture* self, QChildEvent* event) {

	self->QSGTexture::childEvent(event);
}

void QSGTexture_virtualbase_customEvent(VirtualQSGTexture* self, QEvent* event) {

	self->QSGTexture::customEvent(event);
}

void QSGTexture_virtualbase_connectNotify(VirtualQSGTexture* self, QMetaMethod* signal) {

	self->QSGTexture::connectNotify(*signal);
}

void QSGTexture_virtualbase_disconnectNotify(VirtualQSGTexture* self, QMetaMethod* signal) {

	self->QSGTexture::disconnectNotify(*signal);
}

const QMetaObject* QSGTexture_staticMetaObject() { return &QSGTexture::staticMetaObject; }

const QSGTexture_VTable* QSGTexture_vtbl(const VirtualQSGTexture* self) { return self->vtbl; }
void* QSGTexture_vdata(const VirtualQSGTexture* self) { return self->vdata; }
void QSGTexture_setVdata(VirtualQSGTexture* self, void* vdata) { self->vdata = vdata; }

QObject* QSGTexture_protectedbase_sender(const VirtualQSGTexture* self) {
	return self->sender();
}

int QSGTexture_protectedbase_senderSignalIndex(const VirtualQSGTexture* self) {
	return self->senderSignalIndex();
}

int QSGTexture_protectedbase_receivers(const VirtualQSGTexture* self, const char* signal) {
	return self->receivers(signal);
}

bool QSGTexture_protectedbase_isSignalConnected(const VirtualQSGTexture* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSGTexture_delete(QSGTexture* self) {
	delete self;
}

class VirtualQSGDynamicTexture final : public QSGDynamicTexture {
	const QSGDynamicTexture_VTable* vtbl;
	void* vdata;
public:
	friend const QSGDynamicTexture_VTable* QSGDynamicTexture_vtbl(const VirtualQSGDynamicTexture* self);
	friend void* QSGDynamicTexture_vdata(const VirtualQSGDynamicTexture* self);
	friend void QSGDynamicTexture_setVdata(VirtualQSGDynamicTexture* self, void* vdata);

	VirtualQSGDynamicTexture(const QSGDynamicTexture_VTable* vtbl, void* vdata): QSGDynamicTexture(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSGDynamicTexture() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSGDynamicTexture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSGDynamicTexture_virtualbase_metaObject(const VirtualQSGDynamicTexture* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSGDynamicTexture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSGDynamicTexture_virtualbase_metacast(VirtualQSGDynamicTexture* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSGDynamicTexture::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSGDynamicTexture_virtualbase_metacall(VirtualQSGDynamicTexture* self, int param1, int param2, void** param3);

	virtual bool updateTexture() override {
		if (vtbl->updateTexture == 0) {
			return false; // Pure virtual, there is no base we can call
		}


		bool callback_return_value = vtbl->updateTexture(this);

		return callback_return_value;
	}

	virtual int textureId() const override {
		if (vtbl->textureId == 0) {
			return 0; // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->textureId(this);

		return static_cast<int>(callback_return_value);
	}

	virtual QSize textureSize() const override {
		if (vtbl->textureSize == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}


		QSize* callback_return_value = vtbl->textureSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	virtual bool hasAlphaChannel() const override {
		if (vtbl->hasAlphaChannel == 0) {
			return false; // Pure virtual, there is no base we can call
		}


		bool callback_return_value = vtbl->hasAlphaChannel(this);

		return callback_return_value;
	}

	virtual bool hasMipmaps() const override {
		if (vtbl->hasMipmaps == 0) {
			return false; // Pure virtual, there is no base we can call
		}


		bool callback_return_value = vtbl->hasMipmaps(this);

		return callback_return_value;
	}

	virtual QRectF normalizedTextureSubRect() const override {
		if (vtbl->normalizedTextureSubRect == 0) {
			return QSGDynamicTexture::normalizedTextureSubRect();
		}


		QRectF* callback_return_value = vtbl->normalizedTextureSubRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QSGDynamicTexture_virtualbase_normalizedTextureSubRect(const VirtualQSGDynamicTexture* self);

	virtual bool isAtlasTexture() const override {
		if (vtbl->isAtlasTexture == 0) {
			return QSGDynamicTexture::isAtlasTexture();
		}


		bool callback_return_value = vtbl->isAtlasTexture(this);

		return callback_return_value;
	}

	friend bool QSGDynamicTexture_virtualbase_isAtlasTexture(const VirtualQSGDynamicTexture* self);

	virtual QSGTexture* removedFromAtlas() const override {
		if (vtbl->removedFromAtlas == 0) {
			return QSGDynamicTexture::removedFromAtlas();
		}


		QSGTexture* callback_return_value = vtbl->removedFromAtlas(this);

		return callback_return_value;
	}

	friend QSGTexture* QSGDynamicTexture_virtualbase_removedFromAtlas(const VirtualQSGDynamicTexture* self);

	virtual void bind() override {
		if (vtbl->bind == 0) {
			return; // Pure virtual, there is no base we can call
		}


		vtbl->bind(this);

	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSGDynamicTexture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSGDynamicTexture_virtualbase_event(VirtualQSGDynamicTexture* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSGDynamicTexture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSGDynamicTexture_virtualbase_eventFilter(VirtualQSGDynamicTexture* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSGDynamicTexture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSGDynamicTexture_virtualbase_timerEvent(VirtualQSGDynamicTexture* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSGDynamicTexture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSGDynamicTexture_virtualbase_childEvent(VirtualQSGDynamicTexture* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSGDynamicTexture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSGDynamicTexture_virtualbase_customEvent(VirtualQSGDynamicTexture* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSGDynamicTexture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSGDynamicTexture_virtualbase_connectNotify(VirtualQSGDynamicTexture* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSGDynamicTexture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSGDynamicTexture_virtualbase_disconnectNotify(VirtualQSGDynamicTexture* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSGDynamicTexture_protectedbase_sender(const VirtualQSGDynamicTexture* self);
	friend int QSGDynamicTexture_protectedbase_senderSignalIndex(const VirtualQSGDynamicTexture* self);
	friend int QSGDynamicTexture_protectedbase_receivers(const VirtualQSGDynamicTexture* self, const char* signal);
	friend bool QSGDynamicTexture_protectedbase_isSignalConnected(const VirtualQSGDynamicTexture* self, QMetaMethod* signal);
};

VirtualQSGDynamicTexture* QSGDynamicTexture_new(const QSGDynamicTexture_VTable* vtbl, void* vdata) {
	return new VirtualQSGDynamicTexture(vtbl, vdata);
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

QMetaObject* QSGDynamicTexture_virtualbase_metaObject(const VirtualQSGDynamicTexture* self) {

	return (QMetaObject*) self->QSGDynamicTexture::metaObject();
}

void* QSGDynamicTexture_virtualbase_metacast(VirtualQSGDynamicTexture* self, const char* param1) {

	return self->QSGDynamicTexture::qt_metacast(param1);
}

int QSGDynamicTexture_virtualbase_metacall(VirtualQSGDynamicTexture* self, int param1, int param2, void** param3) {

	return self->QSGDynamicTexture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QRectF* QSGDynamicTexture_virtualbase_normalizedTextureSubRect(const VirtualQSGDynamicTexture* self) {

	return new QRectF(self->QSGDynamicTexture::normalizedTextureSubRect());
}

bool QSGDynamicTexture_virtualbase_isAtlasTexture(const VirtualQSGDynamicTexture* self) {

	return self->QSGDynamicTexture::isAtlasTexture();
}

QSGTexture* QSGDynamicTexture_virtualbase_removedFromAtlas(const VirtualQSGDynamicTexture* self) {

	return self->QSGDynamicTexture::removedFromAtlas();
}

bool QSGDynamicTexture_virtualbase_event(VirtualQSGDynamicTexture* self, QEvent* event) {

	return self->QSGDynamicTexture::event(event);
}

bool QSGDynamicTexture_virtualbase_eventFilter(VirtualQSGDynamicTexture* self, QObject* watched, QEvent* event) {

	return self->QSGDynamicTexture::eventFilter(watched, event);
}

void QSGDynamicTexture_virtualbase_timerEvent(VirtualQSGDynamicTexture* self, QTimerEvent* event) {

	self->QSGDynamicTexture::timerEvent(event);
}

void QSGDynamicTexture_virtualbase_childEvent(VirtualQSGDynamicTexture* self, QChildEvent* event) {

	self->QSGDynamicTexture::childEvent(event);
}

void QSGDynamicTexture_virtualbase_customEvent(VirtualQSGDynamicTexture* self, QEvent* event) {

	self->QSGDynamicTexture::customEvent(event);
}

void QSGDynamicTexture_virtualbase_connectNotify(VirtualQSGDynamicTexture* self, QMetaMethod* signal) {

	self->QSGDynamicTexture::connectNotify(*signal);
}

void QSGDynamicTexture_virtualbase_disconnectNotify(VirtualQSGDynamicTexture* self, QMetaMethod* signal) {

	self->QSGDynamicTexture::disconnectNotify(*signal);
}

const QMetaObject* QSGDynamicTexture_staticMetaObject() { return &QSGDynamicTexture::staticMetaObject; }

const QSGDynamicTexture_VTable* QSGDynamicTexture_vtbl(const VirtualQSGDynamicTexture* self) { return self->vtbl; }
void* QSGDynamicTexture_vdata(const VirtualQSGDynamicTexture* self) { return self->vdata; }
void QSGDynamicTexture_setVdata(VirtualQSGDynamicTexture* self, void* vdata) { self->vdata = vdata; }

QObject* QSGDynamicTexture_protectedbase_sender(const VirtualQSGDynamicTexture* self) {
	return self->sender();
}

int QSGDynamicTexture_protectedbase_senderSignalIndex(const VirtualQSGDynamicTexture* self) {
	return self->senderSignalIndex();
}

int QSGDynamicTexture_protectedbase_receivers(const VirtualQSGDynamicTexture* self, const char* signal) {
	return self->receivers(signal);
}

bool QSGDynamicTexture_protectedbase_isSignalConnected(const VirtualQSGDynamicTexture* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSGDynamicTexture_delete(QSGDynamicTexture* self) {
	delete self;
}

void QSGTexture__NativeTexture_delete(QSGTexture__NativeTexture* self) {
	delete self;
}

