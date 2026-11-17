#include <QChildEvent>
#include <QEvent>
#include <QImage>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSGAbstractRenderer>
#include <QSGEngine>
#include <QSGImageNode>
#include <QSGNinePatchNode>
#include <QSGRectangleNode>
#include <QSGRendererInterface>
#include <QSGTexture>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qsgengine.h>
#include "gen_qsgengine.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQSGEngine final : public QSGEngine {
	const QSGEngine_VTable* vtbl;
public:
	friend void* QSGEngine_vdata(VirtualQSGEngine* self);
	friend VirtualQSGEngine* vdata_QSGEngine(void* vdata);

	VirtualQSGEngine(const QSGEngine_VTable* vtbl): QSGEngine(), vtbl(vtbl) {}
	VirtualQSGEngine(const QSGEngine_VTable* vtbl, QObject* parent): QSGEngine(parent), vtbl(vtbl) {}

	virtual ~VirtualQSGEngine() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSGEngine::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QSGEngine_virtualbase_metaObject(const VirtualQSGEngine* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSGEngine::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QSGEngine_virtualbase_metacast(VirtualQSGEngine* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSGEngine::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QSGEngine_virtualbase_metacall(VirtualQSGEngine* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSGEngine::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QSGEngine_virtualbase_event(VirtualQSGEngine* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSGEngine::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QSGEngine_virtualbase_eventFilter(VirtualQSGEngine* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSGEngine::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QSGEngine_virtualbase_timerEvent(VirtualQSGEngine* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSGEngine::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QSGEngine_virtualbase_childEvent(VirtualQSGEngine* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSGEngine::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QSGEngine_virtualbase_customEvent(VirtualQSGEngine* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSGEngine::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QSGEngine_virtualbase_connectNotify(VirtualQSGEngine* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSGEngine::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QSGEngine_virtualbase_disconnectNotify(VirtualQSGEngine* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSGEngine_protectedbase_sender(const VirtualQSGEngine* self);
	friend int QSGEngine_protectedbase_senderSignalIndex(const VirtualQSGEngine* self);
	friend int QSGEngine_protectedbase_receivers(const VirtualQSGEngine* self, const char* signal);
	friend bool QSGEngine_protectedbase_isSignalConnected(const VirtualQSGEngine* self, QMetaMethod* signal);
};

VirtualQSGEngine* QSGEngine_new(const QSGEngine_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSGEngine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSGEngine(vtbl) : nullptr;
}

VirtualQSGEngine* QSGEngine_new_parent(const QSGEngine_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSGEngine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSGEngine(vtbl, parent) : nullptr;
}

void QSGEngine_virtbase(QSGEngine* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSGEngine_metaObject(const QSGEngine* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSGEngine_metacast(QSGEngine* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSGEngine_metacall(QSGEngine* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QSGEngine_tr_s(const char* s) {
	QString _ret = QSGEngine::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSGEngine_trUtf8_s(const char* s) {
	QString _ret = QSGEngine::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSGEngine_invalidate(QSGEngine* self) {
	self->invalidate();
}

QSGAbstractRenderer* QSGEngine_createRenderer(const QSGEngine* self) {
	return self->createRenderer();
}

QSGTexture* QSGEngine_createTextureFromImage_image(const QSGEngine* self, QImage* image) {
	return self->createTextureFromImage(*image);
}

QSGTexture* QSGEngine_createTextureFromId_id_size(const QSGEngine* self, unsigned int id, QSize* size) {
	return self->createTextureFromId(static_cast<uint>(id), *size);
}

QSGRendererInterface* QSGEngine_rendererInterface(const QSGEngine* self) {
	return self->rendererInterface();
}

QSGRectangleNode* QSGEngine_createRectangleNode(const QSGEngine* self) {
	return self->createRectangleNode();
}

QSGImageNode* QSGEngine_createImageNode(const QSGEngine* self) {
	return self->createImageNode();
}

QSGNinePatchNode* QSGEngine_createNinePatchNode(const QSGEngine* self) {
	return self->createNinePatchNode();
}

struct seaqt_string QSGEngine_tr_s_c(const char* s, const char* c) {
	QString _ret = QSGEngine::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSGEngine_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QSGEngine::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSGEngine_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QSGEngine::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSGEngine_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QSGEngine::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSGTexture* QSGEngine_createTextureFromImage_image_options(const QSGEngine* self, QImage* image, int options) {
	return self->createTextureFromImage(*image, static_cast<QSGEngine::CreateTextureOptions>(options));
}

QSGTexture* QSGEngine_createTextureFromId_id_size_options(const QSGEngine* self, unsigned int id, QSize* size, int options) {
	return self->createTextureFromId(static_cast<uint>(id), *size, static_cast<QSGEngine::CreateTextureOptions>(options));
}

const QMetaObject* QSGEngine_staticMetaObject() { return &QSGEngine::staticMetaObject; }
void* QSGEngine_vdata(VirtualQSGEngine* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQSGEngine>()); }
VirtualQSGEngine* vdata_QSGEngine(void* vdata) { return reinterpret_cast<VirtualQSGEngine*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQSGEngine>()); }

QMetaObject* QSGEngine_virtualbase_metaObject(const VirtualQSGEngine* self) {

	return (QMetaObject*) self->QSGEngine::metaObject();
}

void* QSGEngine_virtualbase_metacast(VirtualQSGEngine* self, const char* param1) {

	return self->QSGEngine::qt_metacast(param1);
}

int QSGEngine_virtualbase_metacall(VirtualQSGEngine* self, int param1, int param2, void** param3) {

	return self->QSGEngine::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QSGEngine_virtualbase_event(VirtualQSGEngine* self, QEvent* event) {

	return self->QSGEngine::event(event);
}

bool QSGEngine_virtualbase_eventFilter(VirtualQSGEngine* self, QObject* watched, QEvent* event) {

	return self->QSGEngine::eventFilter(watched, event);
}

void QSGEngine_virtualbase_timerEvent(VirtualQSGEngine* self, QTimerEvent* event) {

	self->QSGEngine::timerEvent(event);
}

void QSGEngine_virtualbase_childEvent(VirtualQSGEngine* self, QChildEvent* event) {

	self->QSGEngine::childEvent(event);
}

void QSGEngine_virtualbase_customEvent(VirtualQSGEngine* self, QEvent* event) {

	self->QSGEngine::customEvent(event);
}

void QSGEngine_virtualbase_connectNotify(VirtualQSGEngine* self, QMetaMethod* signal) {

	self->QSGEngine::connectNotify(*signal);
}

void QSGEngine_virtualbase_disconnectNotify(VirtualQSGEngine* self, QMetaMethod* signal) {

	self->QSGEngine::disconnectNotify(*signal);
}

QObject* QSGEngine_protectedbase_sender(const VirtualQSGEngine* self) {
	return self->sender();
}

int QSGEngine_protectedbase_senderSignalIndex(const VirtualQSGEngine* self) {
	return self->senderSignalIndex();
}

int QSGEngine_protectedbase_receivers(const VirtualQSGEngine* self, const char* signal) {
	return self->receivers(signal);
}

bool QSGEngine_protectedbase_isSignalConnected(const VirtualQSGEngine* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSGEngine_delete(QSGEngine* self) {
	delete self;
}

