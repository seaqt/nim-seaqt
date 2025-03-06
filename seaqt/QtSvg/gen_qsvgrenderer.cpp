#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPainter>
#include <QRect>
#include <QRectF>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QSvgRenderer>
#include <QTimerEvent>
#include <QTransform>
#include <QXmlStreamReader>
#include <qsvgrenderer.h>
#include "gen_qsvgrenderer.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QSvgRenderer_repaintNeeded(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSvgRenderer final : public QSvgRenderer {
	struct QSvgRenderer_VTable* vtbl;
public:

	VirtualQSvgRenderer(struct QSvgRenderer_VTable* vtbl): QSvgRenderer(), vtbl(vtbl) {};
	VirtualQSvgRenderer(struct QSvgRenderer_VTable* vtbl, const QString& filename): QSvgRenderer(filename), vtbl(vtbl) {};
	VirtualQSvgRenderer(struct QSvgRenderer_VTable* vtbl, const QByteArray& contents): QSvgRenderer(contents), vtbl(vtbl) {};
	VirtualQSvgRenderer(struct QSvgRenderer_VTable* vtbl, QXmlStreamReader* contents): QSvgRenderer(contents), vtbl(vtbl) {};
	VirtualQSvgRenderer(struct QSvgRenderer_VTable* vtbl, QObject* parent): QSvgRenderer(parent), vtbl(vtbl) {};
	VirtualQSvgRenderer(struct QSvgRenderer_VTable* vtbl, const QString& filename, QObject* parent): QSvgRenderer(filename, parent), vtbl(vtbl) {};
	VirtualQSvgRenderer(struct QSvgRenderer_VTable* vtbl, const QByteArray& contents, QObject* parent): QSvgRenderer(contents, parent), vtbl(vtbl) {};
	VirtualQSvgRenderer(struct QSvgRenderer_VTable* vtbl, QXmlStreamReader* contents, QObject* parent): QSvgRenderer(contents, parent), vtbl(vtbl) {};

	virtual ~VirtualQSvgRenderer() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSvgRenderer::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QSvgRenderer_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSvgRenderer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QSvgRenderer_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSvgRenderer::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSvgRenderer_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSvgRenderer::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSvgRenderer_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSvgRenderer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSvgRenderer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSvgRenderer::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QSvgRenderer_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSvgRenderer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QSvgRenderer_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSvgRenderer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QSvgRenderer_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSvgRenderer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QSvgRenderer_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSvgRenderer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QSvgRenderer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSvgRenderer_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QSvgRenderer_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QSvgRenderer_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QSvgRenderer_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QSvgRenderer* QSvgRenderer_new(struct QSvgRenderer_VTable* vtbl) {
	return new VirtualQSvgRenderer(vtbl);
}

QSvgRenderer* QSvgRenderer_new2(struct QSvgRenderer_VTable* vtbl, struct miqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return new VirtualQSvgRenderer(vtbl, filename_QString);
}

QSvgRenderer* QSvgRenderer_new3(struct QSvgRenderer_VTable* vtbl, struct miqt_string contents) {
	QByteArray contents_QByteArray(contents.data, contents.len);
	return new VirtualQSvgRenderer(vtbl, contents_QByteArray);
}

QSvgRenderer* QSvgRenderer_new4(struct QSvgRenderer_VTable* vtbl, QXmlStreamReader* contents) {
	return new VirtualQSvgRenderer(vtbl, contents);
}

QSvgRenderer* QSvgRenderer_new5(struct QSvgRenderer_VTable* vtbl, QObject* parent) {
	return new VirtualQSvgRenderer(vtbl, parent);
}

QSvgRenderer* QSvgRenderer_new6(struct QSvgRenderer_VTable* vtbl, struct miqt_string filename, QObject* parent) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return new VirtualQSvgRenderer(vtbl, filename_QString, parent);
}

QSvgRenderer* QSvgRenderer_new7(struct QSvgRenderer_VTable* vtbl, struct miqt_string contents, QObject* parent) {
	QByteArray contents_QByteArray(contents.data, contents.len);
	return new VirtualQSvgRenderer(vtbl, contents_QByteArray, parent);
}

QSvgRenderer* QSvgRenderer_new8(struct QSvgRenderer_VTable* vtbl, QXmlStreamReader* contents, QObject* parent) {
	return new VirtualQSvgRenderer(vtbl, contents, parent);
}

void QSvgRenderer_virtbase(QSvgRenderer* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSvgRenderer_metaObject(const QSvgRenderer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSvgRenderer_metacast(QSvgRenderer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSvgRenderer_metacall(QSvgRenderer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSvgRenderer_tr(const char* s) {
	QString _ret = QSvgRenderer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QSvgRenderer_isValid(const QSvgRenderer* self) {
	return self->isValid();
}

QSize* QSvgRenderer_defaultSize(const QSvgRenderer* self) {
	return new QSize(self->defaultSize());
}

QRect* QSvgRenderer_viewBox(const QSvgRenderer* self) {
	return new QRect(self->viewBox());
}

QRectF* QSvgRenderer_viewBoxF(const QSvgRenderer* self) {
	return new QRectF(self->viewBoxF());
}

void QSvgRenderer_setViewBox(QSvgRenderer* self, QRect* viewbox) {
	self->setViewBox(*viewbox);
}

void QSvgRenderer_setViewBoxWithViewbox(QSvgRenderer* self, QRectF* viewbox) {
	self->setViewBox(*viewbox);
}

int QSvgRenderer_aspectRatioMode(const QSvgRenderer* self) {
	Qt::AspectRatioMode _ret = self->aspectRatioMode();
	return static_cast<int>(_ret);
}

void QSvgRenderer_setAspectRatioMode(QSvgRenderer* self, int mode) {
	self->setAspectRatioMode(static_cast<Qt::AspectRatioMode>(mode));
}

bool QSvgRenderer_animated(const QSvgRenderer* self) {
	return self->animated();
}

int QSvgRenderer_framesPerSecond(const QSvgRenderer* self) {
	return self->framesPerSecond();
}

void QSvgRenderer_setFramesPerSecond(QSvgRenderer* self, int num) {
	self->setFramesPerSecond(static_cast<int>(num));
}

int QSvgRenderer_currentFrame(const QSvgRenderer* self) {
	return self->currentFrame();
}

void QSvgRenderer_setCurrentFrame(QSvgRenderer* self, int currentFrame) {
	self->setCurrentFrame(static_cast<int>(currentFrame));
}

int QSvgRenderer_animationDuration(const QSvgRenderer* self) {
	return self->animationDuration();
}

QRectF* QSvgRenderer_boundsOnElement(const QSvgRenderer* self, struct miqt_string id) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	return new QRectF(self->boundsOnElement(id_QString));
}

bool QSvgRenderer_elementExists(const QSvgRenderer* self, struct miqt_string id) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	return self->elementExists(id_QString);
}

QTransform* QSvgRenderer_transformForElement(const QSvgRenderer* self, struct miqt_string id) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	return new QTransform(self->transformForElement(id_QString));
}

bool QSvgRenderer_load(QSvgRenderer* self, struct miqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return self->load(filename_QString);
}

bool QSvgRenderer_loadWithContents(QSvgRenderer* self, struct miqt_string contents) {
	QByteArray contents_QByteArray(contents.data, contents.len);
	return self->load(contents_QByteArray);
}

bool QSvgRenderer_load2(QSvgRenderer* self, QXmlStreamReader* contents) {
	return self->load(contents);
}

void QSvgRenderer_render(QSvgRenderer* self, QPainter* p) {
	self->render(p);
}

void QSvgRenderer_render2(QSvgRenderer* self, QPainter* p, QRectF* bounds) {
	self->render(p, *bounds);
}

void QSvgRenderer_render3(QSvgRenderer* self, QPainter* p, struct miqt_string elementId) {
	QString elementId_QString = QString::fromUtf8(elementId.data, elementId.len);
	self->render(p, elementId_QString);
}

void QSvgRenderer_repaintNeeded(QSvgRenderer* self) {
	self->repaintNeeded();
}

void QSvgRenderer_connect_repaintNeeded(QSvgRenderer* self, intptr_t slot) {
	VirtualQSvgRenderer::connect(self, static_cast<void (QSvgRenderer::*)()>(&QSvgRenderer::repaintNeeded), self, [=]() {
		miqt_exec_callback_QSvgRenderer_repaintNeeded(slot);
	});
}

struct miqt_string QSvgRenderer_tr2(const char* s, const char* c) {
	QString _ret = QSvgRenderer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSvgRenderer_tr3(const char* s, const char* c, int n) {
	QString _ret = QSvgRenderer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSvgRenderer_render32(QSvgRenderer* self, QPainter* p, struct miqt_string elementId, QRectF* bounds) {
	QString elementId_QString = QString::fromUtf8(elementId.data, elementId.len);
	self->render(p, elementId_QString, *bounds);
}

QMetaObject* QSvgRenderer_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSvgRenderer*)(self) )->QSvgRenderer::metaObject();

}

void* QSvgRenderer_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSvgRenderer*)(self) )->QSvgRenderer::qt_metacast(param1);

}

int QSvgRenderer_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSvgRenderer*)(self) )->QSvgRenderer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QSvgRenderer_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQSvgRenderer*)(self) )->QSvgRenderer::event(event);

}

bool QSvgRenderer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSvgRenderer*)(self) )->QSvgRenderer::eventFilter(watched, event);

}

void QSvgRenderer_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQSvgRenderer*)(self) )->QSvgRenderer::timerEvent(event);

}

void QSvgRenderer_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSvgRenderer*)(self) )->QSvgRenderer::childEvent(event);

}

void QSvgRenderer_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSvgRenderer*)(self) )->QSvgRenderer::customEvent(event);

}

void QSvgRenderer_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSvgRenderer*)(self) )->QSvgRenderer::connectNotify(*signal);

}

void QSvgRenderer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSvgRenderer*)(self) )->QSvgRenderer::disconnectNotify(*signal);

}

const QMetaObject* QSvgRenderer_staticMetaObject() { return &QSvgRenderer::staticMetaObject; }
QObject* QSvgRenderer_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSvgRenderer* self_cast = dynamic_cast<VirtualQSvgRenderer*>( (QSvgRenderer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QSvgRenderer_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSvgRenderer* self_cast = dynamic_cast<VirtualQSvgRenderer*>( (QSvgRenderer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QSvgRenderer_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQSvgRenderer* self_cast = dynamic_cast<VirtualQSvgRenderer*>( (QSvgRenderer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QSvgRenderer_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQSvgRenderer* self_cast = dynamic_cast<VirtualQSvgRenderer*>( (QSvgRenderer*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QSvgRenderer_delete(QSvgRenderer* self) {
	delete self;
}

