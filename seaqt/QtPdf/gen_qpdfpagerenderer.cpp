#include <QChildEvent>
#include <QEvent>
#include <QImage>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPdfDocument>
#include <QPdfDocumentRenderOptions>
#include <QPdfPageRenderer>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qpdfpagerenderer.h>
#include "gen_qpdfpagerenderer.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQPdfPageRenderer final : public QPdfPageRenderer {
	const QPdfPageRenderer_VTable* vtbl;
public:
	friend void* QPdfPageRenderer_vdata(VirtualQPdfPageRenderer* self);
	friend VirtualQPdfPageRenderer* vdata_QPdfPageRenderer(void* vdata);

	VirtualQPdfPageRenderer(const QPdfPageRenderer_VTable* vtbl): QPdfPageRenderer(), vtbl(vtbl) {}
	VirtualQPdfPageRenderer(const QPdfPageRenderer_VTable* vtbl, QObject* parent): QPdfPageRenderer(parent), vtbl(vtbl) {}

	virtual ~VirtualQPdfPageRenderer() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPdfPageRenderer::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QPdfPageRenderer_virtualbase_metaObject(const VirtualQPdfPageRenderer* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPdfPageRenderer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QPdfPageRenderer_virtualbase_metacast(VirtualQPdfPageRenderer* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPdfPageRenderer::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfPageRenderer_virtualbase_metacall(VirtualQPdfPageRenderer* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPdfPageRenderer::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QPdfPageRenderer_virtualbase_event(VirtualQPdfPageRenderer* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPdfPageRenderer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QPdfPageRenderer_virtualbase_eventFilter(VirtualQPdfPageRenderer* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPdfPageRenderer::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QPdfPageRenderer_virtualbase_timerEvent(VirtualQPdfPageRenderer* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPdfPageRenderer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QPdfPageRenderer_virtualbase_childEvent(VirtualQPdfPageRenderer* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPdfPageRenderer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QPdfPageRenderer_virtualbase_customEvent(VirtualQPdfPageRenderer* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPdfPageRenderer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QPdfPageRenderer_virtualbase_connectNotify(VirtualQPdfPageRenderer* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPdfPageRenderer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QPdfPageRenderer_virtualbase_disconnectNotify(VirtualQPdfPageRenderer* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QPdfPageRenderer_protectedbase_sender(const VirtualQPdfPageRenderer* self);
	friend int QPdfPageRenderer_protectedbase_senderSignalIndex(const VirtualQPdfPageRenderer* self);
	friend int QPdfPageRenderer_protectedbase_receivers(const VirtualQPdfPageRenderer* self, const char* signal);
	friend bool QPdfPageRenderer_protectedbase_isSignalConnected(const VirtualQPdfPageRenderer* self, QMetaMethod* signal);
};

VirtualQPdfPageRenderer* QPdfPageRenderer_new(const QPdfPageRenderer_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfPageRenderer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfPageRenderer(vtbl) : nullptr;
}

VirtualQPdfPageRenderer* QPdfPageRenderer_new_parent(const QPdfPageRenderer_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfPageRenderer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfPageRenderer(vtbl, parent) : nullptr;
}

void QPdfPageRenderer_virtbase(QPdfPageRenderer* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QPdfPageRenderer_metaObject(const QPdfPageRenderer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPdfPageRenderer_metacast(QPdfPageRenderer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPdfPageRenderer_metacall(QPdfPageRenderer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QPdfPageRenderer_tr_s(const char* s) {
	QString _ret = QPdfPageRenderer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfPageRenderer_trUtf8_s(const char* s) {
	QString _ret = QPdfPageRenderer::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QPdfPageRenderer_renderMode(const QPdfPageRenderer* self) {
	QPdfPageRenderer::RenderMode _ret = self->renderMode();
	return static_cast<int>(_ret);
}

void QPdfPageRenderer_setRenderMode(QPdfPageRenderer* self, int mode) {
	self->setRenderMode(static_cast<QPdfPageRenderer::RenderMode>(mode));
}

QPdfDocument* QPdfPageRenderer_document(const QPdfPageRenderer* self) {
	return self->document();
}

void QPdfPageRenderer_setDocument(QPdfPageRenderer* self, QPdfDocument* document) {
	self->setDocument(document);
}

unsigned long long QPdfPageRenderer_requestPage_pageNumber_imageSize(QPdfPageRenderer* self, int pageNumber, QSize* imageSize) {
	quint64 _ret = self->requestPage(static_cast<int>(pageNumber), *imageSize);
	return static_cast<unsigned long long>(_ret);
}

void QPdfPageRenderer_documentChanged(QPdfPageRenderer* self, QPdfDocument* document) {
	self->documentChanged(document);
}

void QPdfPageRenderer_connect_documentChanged(QPdfPageRenderer* self, intptr_t slot, void (*callback)(intptr_t, QPdfDocument*), void (*release)(intptr_t)) {
	QPdfPageRenderer::connect(self, static_cast<void (QPdfPageRenderer::*)(QPdfDocument*)>(&QPdfPageRenderer::documentChanged), self, [callback, release = seaqt::release_callback{slot,release}](QPdfDocument* document) {
			QPdfDocument* sigval1 = document;
			callback(release.slot, sigval1);
	});
}

void QPdfPageRenderer_renderModeChanged(QPdfPageRenderer* self, int renderMode) {
	self->renderModeChanged(static_cast<QPdfPageRenderer::RenderMode>(renderMode));
}

void QPdfPageRenderer_connect_renderModeChanged(QPdfPageRenderer* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QPdfPageRenderer::connect(self, static_cast<void (QPdfPageRenderer::*)(QPdfPageRenderer::RenderMode)>(&QPdfPageRenderer::renderModeChanged), self, [callback, release = seaqt::release_callback{slot,release}](QPdfPageRenderer::RenderMode renderMode) {
			QPdfPageRenderer::RenderMode renderMode_ret = renderMode;
			int sigval1 = static_cast<int>(renderMode_ret);
			callback(release.slot, sigval1);
	});
}

void QPdfPageRenderer_pageRendered(QPdfPageRenderer* self, int pageNumber, QSize* imageSize, QImage* image, QPdfDocumentRenderOptions* options, unsigned long long requestId) {
	self->pageRendered(static_cast<int>(pageNumber), *imageSize, *image, *options, static_cast<quint64>(requestId));
}

void QPdfPageRenderer_connect_pageRendered(QPdfPageRenderer* self, intptr_t slot, void (*callback)(intptr_t, int, QSize*, QImage*, QPdfDocumentRenderOptions*, unsigned long long), void (*release)(intptr_t)) {
	QPdfPageRenderer::connect(self, static_cast<void (QPdfPageRenderer::*)(int, QSize, const QImage&, QPdfDocumentRenderOptions, quint64)>(&QPdfPageRenderer::pageRendered), self, [callback, release = seaqt::release_callback{slot,release}](int pageNumber, QSize imageSize, const QImage& image, QPdfDocumentRenderOptions options, quint64 requestId) {
			int sigval1 = pageNumber;
			QSize* sigval2 = new QSize(imageSize);
			const QImage& image_ret = image;
			// Cast returned reference into pointer
			QImage* sigval3 = const_cast<QImage*>(&image_ret);
			QPdfDocumentRenderOptions* sigval4 = new QPdfDocumentRenderOptions(options);
			quint64 requestId_ret = requestId;
			unsigned long long sigval5 = static_cast<unsigned long long>(requestId_ret);
			callback(release.slot, sigval1, sigval2, sigval3, sigval4, sigval5);
	});
}

struct seaqt_string QPdfPageRenderer_tr_s_c(const char* s, const char* c) {
	QString _ret = QPdfPageRenderer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfPageRenderer_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QPdfPageRenderer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfPageRenderer_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QPdfPageRenderer::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfPageRenderer_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QPdfPageRenderer::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

unsigned long long QPdfPageRenderer_requestPage_pageNumber_imageSize_options(QPdfPageRenderer* self, int pageNumber, QSize* imageSize, QPdfDocumentRenderOptions* options) {
	quint64 _ret = self->requestPage(static_cast<int>(pageNumber), *imageSize, *options);
	return static_cast<unsigned long long>(_ret);
}

const QMetaObject* QPdfPageRenderer_staticMetaObject() { return &QPdfPageRenderer::staticMetaObject; }
void* QPdfPageRenderer_vdata(VirtualQPdfPageRenderer* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQPdfPageRenderer>()); }
VirtualQPdfPageRenderer* vdata_QPdfPageRenderer(void* vdata) { return reinterpret_cast<VirtualQPdfPageRenderer*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQPdfPageRenderer>()); }

QMetaObject* QPdfPageRenderer_virtualbase_metaObject(const VirtualQPdfPageRenderer* self) {

	return (QMetaObject*) self->QPdfPageRenderer::metaObject();
}

void* QPdfPageRenderer_virtualbase_metacast(VirtualQPdfPageRenderer* self, const char* param1) {

	return self->QPdfPageRenderer::qt_metacast(param1);
}

int QPdfPageRenderer_virtualbase_metacall(VirtualQPdfPageRenderer* self, int param1, int param2, void** param3) {

	return self->QPdfPageRenderer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QPdfPageRenderer_virtualbase_event(VirtualQPdfPageRenderer* self, QEvent* event) {

	return self->QPdfPageRenderer::event(event);
}

bool QPdfPageRenderer_virtualbase_eventFilter(VirtualQPdfPageRenderer* self, QObject* watched, QEvent* event) {

	return self->QPdfPageRenderer::eventFilter(watched, event);
}

void QPdfPageRenderer_virtualbase_timerEvent(VirtualQPdfPageRenderer* self, QTimerEvent* event) {

	self->QPdfPageRenderer::timerEvent(event);
}

void QPdfPageRenderer_virtualbase_childEvent(VirtualQPdfPageRenderer* self, QChildEvent* event) {

	self->QPdfPageRenderer::childEvent(event);
}

void QPdfPageRenderer_virtualbase_customEvent(VirtualQPdfPageRenderer* self, QEvent* event) {

	self->QPdfPageRenderer::customEvent(event);
}

void QPdfPageRenderer_virtualbase_connectNotify(VirtualQPdfPageRenderer* self, QMetaMethod* signal) {

	self->QPdfPageRenderer::connectNotify(*signal);
}

void QPdfPageRenderer_virtualbase_disconnectNotify(VirtualQPdfPageRenderer* self, QMetaMethod* signal) {

	self->QPdfPageRenderer::disconnectNotify(*signal);
}

QObject* QPdfPageRenderer_protectedbase_sender(const VirtualQPdfPageRenderer* self) {
	return self->sender();
}

int QPdfPageRenderer_protectedbase_senderSignalIndex(const VirtualQPdfPageRenderer* self) {
	return self->senderSignalIndex();
}

int QPdfPageRenderer_protectedbase_receivers(const VirtualQPdfPageRenderer* self, const char* signal) {
	return self->receivers(signal);
}

bool QPdfPageRenderer_protectedbase_isSignalConnected(const VirtualQPdfPageRenderer* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPdfPageRenderer_delete(QPdfPageRenderer* self) {
	delete self;
}

