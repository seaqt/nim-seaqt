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

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQSvgRenderer final : public QSvgRenderer {
	const QSvgRenderer_VTable* vtbl;
public:
	friend void* QSvgRenderer_vdata(VirtualQSvgRenderer* self);
	friend VirtualQSvgRenderer* vdata_QSvgRenderer(void* vdata);

	VirtualQSvgRenderer(const QSvgRenderer_VTable* vtbl): QSvgRenderer(), vtbl(vtbl) {}
	VirtualQSvgRenderer(const QSvgRenderer_VTable* vtbl, const QString& filename): QSvgRenderer(filename), vtbl(vtbl) {}
	VirtualQSvgRenderer(const QSvgRenderer_VTable* vtbl, const QByteArray& contents): QSvgRenderer(contents), vtbl(vtbl) {}
	VirtualQSvgRenderer(const QSvgRenderer_VTable* vtbl, QXmlStreamReader* contents): QSvgRenderer(contents), vtbl(vtbl) {}
	VirtualQSvgRenderer(const QSvgRenderer_VTable* vtbl, QObject* parent): QSvgRenderer(parent), vtbl(vtbl) {}
	VirtualQSvgRenderer(const QSvgRenderer_VTable* vtbl, const QString& filename, QObject* parent): QSvgRenderer(filename, parent), vtbl(vtbl) {}
	VirtualQSvgRenderer(const QSvgRenderer_VTable* vtbl, const QByteArray& contents, QObject* parent): QSvgRenderer(contents, parent), vtbl(vtbl) {}
	VirtualQSvgRenderer(const QSvgRenderer_VTable* vtbl, QXmlStreamReader* contents, QObject* parent): QSvgRenderer(contents, parent), vtbl(vtbl) {}

	virtual ~VirtualQSvgRenderer() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSvgRenderer::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QSvgRenderer_virtualbase_metaObject(const VirtualQSvgRenderer* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSvgRenderer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QSvgRenderer_virtualbase_metacast(VirtualQSvgRenderer* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSvgRenderer::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QSvgRenderer_virtualbase_metacall(VirtualQSvgRenderer* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSvgRenderer::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QSvgRenderer_virtualbase_event(VirtualQSvgRenderer* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSvgRenderer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QSvgRenderer_virtualbase_eventFilter(VirtualQSvgRenderer* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSvgRenderer::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QSvgRenderer_virtualbase_timerEvent(VirtualQSvgRenderer* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSvgRenderer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QSvgRenderer_virtualbase_childEvent(VirtualQSvgRenderer* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSvgRenderer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QSvgRenderer_virtualbase_customEvent(VirtualQSvgRenderer* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSvgRenderer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QSvgRenderer_virtualbase_connectNotify(VirtualQSvgRenderer* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSvgRenderer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QSvgRenderer_virtualbase_disconnectNotify(VirtualQSvgRenderer* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSvgRenderer_protectedbase_sender(const VirtualQSvgRenderer* self);
	friend int QSvgRenderer_protectedbase_senderSignalIndex(const VirtualQSvgRenderer* self);
	friend int QSvgRenderer_protectedbase_receivers(const VirtualQSvgRenderer* self, const char* signal);
	friend bool QSvgRenderer_protectedbase_isSignalConnected(const VirtualQSvgRenderer* self, QMetaMethod* signal);
};

VirtualQSvgRenderer* QSvgRenderer_new(const QSvgRenderer_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSvgRenderer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSvgRenderer(vtbl) : nullptr;
}

VirtualQSvgRenderer* QSvgRenderer_new2(const QSvgRenderer_VTable* vtbl, size_t vdata, struct seaqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSvgRenderer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSvgRenderer(vtbl, filename_QString) : nullptr;
}

VirtualQSvgRenderer* QSvgRenderer_new3(const QSvgRenderer_VTable* vtbl, size_t vdata, struct seaqt_string contents) {
	QByteArray contents_QByteArray(contents.data, contents.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSvgRenderer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSvgRenderer(vtbl, contents_QByteArray) : nullptr;
}

VirtualQSvgRenderer* QSvgRenderer_new4(const QSvgRenderer_VTable* vtbl, size_t vdata, QXmlStreamReader* contents) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSvgRenderer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSvgRenderer(vtbl, contents) : nullptr;
}

VirtualQSvgRenderer* QSvgRenderer_new5(const QSvgRenderer_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSvgRenderer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSvgRenderer(vtbl, parent) : nullptr;
}

VirtualQSvgRenderer* QSvgRenderer_new6(const QSvgRenderer_VTable* vtbl, size_t vdata, struct seaqt_string filename, QObject* parent) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSvgRenderer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSvgRenderer(vtbl, filename_QString, parent) : nullptr;
}

VirtualQSvgRenderer* QSvgRenderer_new7(const QSvgRenderer_VTable* vtbl, size_t vdata, struct seaqt_string contents, QObject* parent) {
	QByteArray contents_QByteArray(contents.data, contents.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSvgRenderer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSvgRenderer(vtbl, contents_QByteArray, parent) : nullptr;
}

VirtualQSvgRenderer* QSvgRenderer_new8(const QSvgRenderer_VTable* vtbl, size_t vdata, QXmlStreamReader* contents, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSvgRenderer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSvgRenderer(vtbl, contents, parent) : nullptr;
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

struct seaqt_string QSvgRenderer_tr(const char* s) {
	QString _ret = QSvgRenderer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
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

QRectF* QSvgRenderer_boundsOnElement(const QSvgRenderer* self, struct seaqt_string id) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	return new QRectF(self->boundsOnElement(id_QString));
}

bool QSvgRenderer_elementExists(const QSvgRenderer* self, struct seaqt_string id) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	return self->elementExists(id_QString);
}

QTransform* QSvgRenderer_transformForElement(const QSvgRenderer* self, struct seaqt_string id) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	return new QTransform(self->transformForElement(id_QString));
}

bool QSvgRenderer_load(QSvgRenderer* self, struct seaqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return self->load(filename_QString);
}

bool QSvgRenderer_loadWithContents(QSvgRenderer* self, struct seaqt_string contents) {
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

void QSvgRenderer_render3(QSvgRenderer* self, QPainter* p, struct seaqt_string elementId) {
	QString elementId_QString = QString::fromUtf8(elementId.data, elementId.len);
	self->render(p, elementId_QString);
}

void QSvgRenderer_repaintNeeded(QSvgRenderer* self) {
	self->repaintNeeded();
}

void QSvgRenderer_connect_repaintNeeded(QSvgRenderer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QSvgRenderer::connect(self, static_cast<void (QSvgRenderer::*)()>(&QSvgRenderer::repaintNeeded), self, local_caller{slot, callback, release});
}

struct seaqt_string QSvgRenderer_tr2(const char* s, const char* c) {
	QString _ret = QSvgRenderer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSvgRenderer_tr3(const char* s, const char* c, int n) {
	QString _ret = QSvgRenderer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSvgRenderer_render4(QSvgRenderer* self, QPainter* p, struct seaqt_string elementId, QRectF* bounds) {
	QString elementId_QString = QString::fromUtf8(elementId.data, elementId.len);
	self->render(p, elementId_QString, *bounds);
}

const QMetaObject* QSvgRenderer_staticMetaObject() { return &QSvgRenderer::staticMetaObject; }
void* QSvgRenderer_vdata(VirtualQSvgRenderer* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQSvgRenderer>()); }
VirtualQSvgRenderer* vdata_QSvgRenderer(void* vdata) { return reinterpret_cast<VirtualQSvgRenderer*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQSvgRenderer>()); }

QMetaObject* QSvgRenderer_virtualbase_metaObject(const VirtualQSvgRenderer* self) {

	return (QMetaObject*) self->QSvgRenderer::metaObject();
}

void* QSvgRenderer_virtualbase_metacast(VirtualQSvgRenderer* self, const char* param1) {

	return self->QSvgRenderer::qt_metacast(param1);
}

int QSvgRenderer_virtualbase_metacall(VirtualQSvgRenderer* self, int param1, int param2, void** param3) {

	return self->QSvgRenderer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QSvgRenderer_virtualbase_event(VirtualQSvgRenderer* self, QEvent* event) {

	return self->QSvgRenderer::event(event);
}

bool QSvgRenderer_virtualbase_eventFilter(VirtualQSvgRenderer* self, QObject* watched, QEvent* event) {

	return self->QSvgRenderer::eventFilter(watched, event);
}

void QSvgRenderer_virtualbase_timerEvent(VirtualQSvgRenderer* self, QTimerEvent* event) {

	self->QSvgRenderer::timerEvent(event);
}

void QSvgRenderer_virtualbase_childEvent(VirtualQSvgRenderer* self, QChildEvent* event) {

	self->QSvgRenderer::childEvent(event);
}

void QSvgRenderer_virtualbase_customEvent(VirtualQSvgRenderer* self, QEvent* event) {

	self->QSvgRenderer::customEvent(event);
}

void QSvgRenderer_virtualbase_connectNotify(VirtualQSvgRenderer* self, QMetaMethod* signal) {

	self->QSvgRenderer::connectNotify(*signal);
}

void QSvgRenderer_virtualbase_disconnectNotify(VirtualQSvgRenderer* self, QMetaMethod* signal) {

	self->QSvgRenderer::disconnectNotify(*signal);
}

QObject* QSvgRenderer_protectedbase_sender(const VirtualQSvgRenderer* self) {
	return self->sender();
}

int QSvgRenderer_protectedbase_senderSignalIndex(const VirtualQSvgRenderer* self) {
	return self->senderSignalIndex();
}

int QSvgRenderer_protectedbase_receivers(const VirtualQSvgRenderer* self, const char* signal) {
	return self->receivers(signal);
}

bool QSvgRenderer_protectedbase_isSignalConnected(const VirtualQSvgRenderer* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSvgRenderer_delete(QSvgRenderer* self) {
	delete self;
}

