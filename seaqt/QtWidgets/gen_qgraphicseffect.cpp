#include <QBrush>
#include <QChildEvent>
#include <QColor>
#include <QEvent>
#include <QGraphicsBlurEffect>
#include <QGraphicsColorizeEffect>
#include <QGraphicsDropShadowEffect>
#include <QGraphicsEffect>
#include <QGraphicsOpacityEffect>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPainter>
#include <QPixmap>
#include <QPoint>
#include <QPointF>
#include <QRectF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qgraphicseffect.h>
#include "gen_qgraphicseffect.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QGraphicsEffect_enabledChanged(intptr_t, bool);
QMetaObject* miqt_exec_callback_QGraphicsEffect_metaObject(const QGraphicsEffect*, intptr_t);
void* miqt_exec_callback_QGraphicsEffect_metacast(QGraphicsEffect*, intptr_t, const char*);
int miqt_exec_callback_QGraphicsEffect_metacall(QGraphicsEffect*, intptr_t, int, int, void**);
QRectF* miqt_exec_callback_QGraphicsEffect_boundingRectFor(const QGraphicsEffect*, intptr_t, QRectF*);
void miqt_exec_callback_QGraphicsEffect_draw(QGraphicsEffect*, intptr_t, QPainter*);
void miqt_exec_callback_QGraphicsEffect_sourceChanged(QGraphicsEffect*, intptr_t, int);
bool miqt_exec_callback_QGraphicsEffect_event(QGraphicsEffect*, intptr_t, QEvent*);
bool miqt_exec_callback_QGraphicsEffect_eventFilter(QGraphicsEffect*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QGraphicsEffect_timerEvent(QGraphicsEffect*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QGraphicsEffect_childEvent(QGraphicsEffect*, intptr_t, QChildEvent*);
void miqt_exec_callback_QGraphicsEffect_customEvent(QGraphicsEffect*, intptr_t, QEvent*);
void miqt_exec_callback_QGraphicsEffect_connectNotify(QGraphicsEffect*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QGraphicsEffect_disconnectNotify(QGraphicsEffect*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QGraphicsColorizeEffect_colorChanged(intptr_t, QColor*);
void miqt_exec_callback_QGraphicsColorizeEffect_strengthChanged(intptr_t, double);
QMetaObject* miqt_exec_callback_QGraphicsColorizeEffect_metaObject(const QGraphicsColorizeEffect*, intptr_t);
void* miqt_exec_callback_QGraphicsColorizeEffect_metacast(QGraphicsColorizeEffect*, intptr_t, const char*);
int miqt_exec_callback_QGraphicsColorizeEffect_metacall(QGraphicsColorizeEffect*, intptr_t, int, int, void**);
void miqt_exec_callback_QGraphicsColorizeEffect_draw(QGraphicsColorizeEffect*, intptr_t, QPainter*);
QRectF* miqt_exec_callback_QGraphicsColorizeEffect_boundingRectFor(const QGraphicsColorizeEffect*, intptr_t, QRectF*);
void miqt_exec_callback_QGraphicsColorizeEffect_sourceChanged(QGraphicsColorizeEffect*, intptr_t, int);
bool miqt_exec_callback_QGraphicsColorizeEffect_event(QGraphicsColorizeEffect*, intptr_t, QEvent*);
bool miqt_exec_callback_QGraphicsColorizeEffect_eventFilter(QGraphicsColorizeEffect*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QGraphicsColorizeEffect_timerEvent(QGraphicsColorizeEffect*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QGraphicsColorizeEffect_childEvent(QGraphicsColorizeEffect*, intptr_t, QChildEvent*);
void miqt_exec_callback_QGraphicsColorizeEffect_customEvent(QGraphicsColorizeEffect*, intptr_t, QEvent*);
void miqt_exec_callback_QGraphicsColorizeEffect_connectNotify(QGraphicsColorizeEffect*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QGraphicsColorizeEffect_disconnectNotify(QGraphicsColorizeEffect*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QGraphicsBlurEffect_blurRadiusChanged(intptr_t, double);
void miqt_exec_callback_QGraphicsBlurEffect_blurHintsChanged(intptr_t, int);
QMetaObject* miqt_exec_callback_QGraphicsBlurEffect_metaObject(const QGraphicsBlurEffect*, intptr_t);
void* miqt_exec_callback_QGraphicsBlurEffect_metacast(QGraphicsBlurEffect*, intptr_t, const char*);
int miqt_exec_callback_QGraphicsBlurEffect_metacall(QGraphicsBlurEffect*, intptr_t, int, int, void**);
QRectF* miqt_exec_callback_QGraphicsBlurEffect_boundingRectFor(const QGraphicsBlurEffect*, intptr_t, QRectF*);
void miqt_exec_callback_QGraphicsBlurEffect_draw(QGraphicsBlurEffect*, intptr_t, QPainter*);
void miqt_exec_callback_QGraphicsBlurEffect_sourceChanged(QGraphicsBlurEffect*, intptr_t, int);
bool miqt_exec_callback_QGraphicsBlurEffect_event(QGraphicsBlurEffect*, intptr_t, QEvent*);
bool miqt_exec_callback_QGraphicsBlurEffect_eventFilter(QGraphicsBlurEffect*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QGraphicsBlurEffect_timerEvent(QGraphicsBlurEffect*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QGraphicsBlurEffect_childEvent(QGraphicsBlurEffect*, intptr_t, QChildEvent*);
void miqt_exec_callback_QGraphicsBlurEffect_customEvent(QGraphicsBlurEffect*, intptr_t, QEvent*);
void miqt_exec_callback_QGraphicsBlurEffect_connectNotify(QGraphicsBlurEffect*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QGraphicsBlurEffect_disconnectNotify(QGraphicsBlurEffect*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QGraphicsDropShadowEffect_offsetChanged(intptr_t, QPointF*);
void miqt_exec_callback_QGraphicsDropShadowEffect_blurRadiusChanged(intptr_t, double);
void miqt_exec_callback_QGraphicsDropShadowEffect_colorChanged(intptr_t, QColor*);
QMetaObject* miqt_exec_callback_QGraphicsDropShadowEffect_metaObject(const QGraphicsDropShadowEffect*, intptr_t);
void* miqt_exec_callback_QGraphicsDropShadowEffect_metacast(QGraphicsDropShadowEffect*, intptr_t, const char*);
int miqt_exec_callback_QGraphicsDropShadowEffect_metacall(QGraphicsDropShadowEffect*, intptr_t, int, int, void**);
QRectF* miqt_exec_callback_QGraphicsDropShadowEffect_boundingRectFor(const QGraphicsDropShadowEffect*, intptr_t, QRectF*);
void miqt_exec_callback_QGraphicsDropShadowEffect_draw(QGraphicsDropShadowEffect*, intptr_t, QPainter*);
void miqt_exec_callback_QGraphicsDropShadowEffect_sourceChanged(QGraphicsDropShadowEffect*, intptr_t, int);
bool miqt_exec_callback_QGraphicsDropShadowEffect_event(QGraphicsDropShadowEffect*, intptr_t, QEvent*);
bool miqt_exec_callback_QGraphicsDropShadowEffect_eventFilter(QGraphicsDropShadowEffect*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QGraphicsDropShadowEffect_timerEvent(QGraphicsDropShadowEffect*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QGraphicsDropShadowEffect_childEvent(QGraphicsDropShadowEffect*, intptr_t, QChildEvent*);
void miqt_exec_callback_QGraphicsDropShadowEffect_customEvent(QGraphicsDropShadowEffect*, intptr_t, QEvent*);
void miqt_exec_callback_QGraphicsDropShadowEffect_connectNotify(QGraphicsDropShadowEffect*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QGraphicsDropShadowEffect_disconnectNotify(QGraphicsDropShadowEffect*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QGraphicsOpacityEffect_opacityChanged(intptr_t, double);
void miqt_exec_callback_QGraphicsOpacityEffect_opacityMaskChanged(intptr_t, QBrush*);
QMetaObject* miqt_exec_callback_QGraphicsOpacityEffect_metaObject(const QGraphicsOpacityEffect*, intptr_t);
void* miqt_exec_callback_QGraphicsOpacityEffect_metacast(QGraphicsOpacityEffect*, intptr_t, const char*);
int miqt_exec_callback_QGraphicsOpacityEffect_metacall(QGraphicsOpacityEffect*, intptr_t, int, int, void**);
void miqt_exec_callback_QGraphicsOpacityEffect_draw(QGraphicsOpacityEffect*, intptr_t, QPainter*);
QRectF* miqt_exec_callback_QGraphicsOpacityEffect_boundingRectFor(const QGraphicsOpacityEffect*, intptr_t, QRectF*);
void miqt_exec_callback_QGraphicsOpacityEffect_sourceChanged(QGraphicsOpacityEffect*, intptr_t, int);
bool miqt_exec_callback_QGraphicsOpacityEffect_event(QGraphicsOpacityEffect*, intptr_t, QEvent*);
bool miqt_exec_callback_QGraphicsOpacityEffect_eventFilter(QGraphicsOpacityEffect*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QGraphicsOpacityEffect_timerEvent(QGraphicsOpacityEffect*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QGraphicsOpacityEffect_childEvent(QGraphicsOpacityEffect*, intptr_t, QChildEvent*);
void miqt_exec_callback_QGraphicsOpacityEffect_customEvent(QGraphicsOpacityEffect*, intptr_t, QEvent*);
void miqt_exec_callback_QGraphicsOpacityEffect_connectNotify(QGraphicsOpacityEffect*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QGraphicsOpacityEffect_disconnectNotify(QGraphicsOpacityEffect*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQGraphicsEffect final : public QGraphicsEffect {
public:

	VirtualQGraphicsEffect(): QGraphicsEffect() {};
	VirtualQGraphicsEffect(QObject* parent): QGraphicsEffect(parent) {};

	virtual ~VirtualQGraphicsEffect() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QGraphicsEffect::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QGraphicsEffect_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsEffect_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QGraphicsEffect::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QGraphicsEffect_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsEffect_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QGraphicsEffect::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QGraphicsEffect_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__boundingRectFor = 0;

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRectFor(const QRectF& sourceRect) const override {
		if (handle__boundingRectFor == 0) {
			return QGraphicsEffect::boundingRectFor(sourceRect);
		}
		
		const QRectF& sourceRect_ret = sourceRect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&sourceRect_ret);

		QRectF* callback_return_value = miqt_exec_callback_QGraphicsEffect_boundingRectFor(this, handle__boundingRectFor, sigval1);

		return *callback_return_value;
	}

	friend QRectF* QGraphicsEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__draw = 0;

	// Subclass to allow providing a Go implementation
	virtual void draw(QPainter* painter) override {
		if (handle__draw == 0) {
			return; // Pure virtual, there is no base we can call
		}
		
		QPainter* sigval1 = painter;

		miqt_exec_callback_QGraphicsEffect_draw(this, handle__draw, sigval1);

		
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__sourceChanged = 0;

	// Subclass to allow providing a Go implementation
	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (handle__sourceChanged == 0) {
			QGraphicsEffect::sourceChanged(flags);
			return;
		}
		
		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		miqt_exec_callback_QGraphicsEffect_sourceChanged(this, handle__sourceChanged, sigval1);

		
	}

	friend void QGraphicsEffect_virtualbase_sourceChanged(void* self, int flags);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QGraphicsEffect::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QGraphicsEffect_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsEffect_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QGraphicsEffect::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QGraphicsEffect_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QGraphicsEffect::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QGraphicsEffect_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QGraphicsEffect_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QGraphicsEffect::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QGraphicsEffect_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QGraphicsEffect_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QGraphicsEffect::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QGraphicsEffect_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QGraphicsEffect_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QGraphicsEffect::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QGraphicsEffect_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QGraphicsEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QGraphicsEffect::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QGraphicsEffect_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QGraphicsEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsEffect_protectedbase_updateBoundingRect(bool* _dynamic_cast_ok, void* self);
	friend bool QGraphicsEffect_protectedbase_sourceIsPixmap(bool* _dynamic_cast_ok, const void* self);
	friend QRectF* QGraphicsEffect_protectedbase_sourceBoundingRect(bool* _dynamic_cast_ok, const void* self);
	friend void QGraphicsEffect_protectedbase_drawSource(bool* _dynamic_cast_ok, void* self, QPainter* painter);
	friend QPixmap* QGraphicsEffect_protectedbase_sourcePixmap(bool* _dynamic_cast_ok, const void* self);
	friend QRectF* QGraphicsEffect_protectedbase_sourceBoundingRect1(bool* _dynamic_cast_ok, const void* self, int system);
	friend QPixmap* QGraphicsEffect_protectedbase_sourcePixmap1(bool* _dynamic_cast_ok, const void* self, int system);
	friend QPixmap* QGraphicsEffect_protectedbase_sourcePixmap2(bool* _dynamic_cast_ok, const void* self, int system, QPoint* offset);
	friend QPixmap* QGraphicsEffect_protectedbase_sourcePixmap3(bool* _dynamic_cast_ok, const void* self, int system, QPoint* offset, int mode);
	friend QObject* QGraphicsEffect_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsEffect_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsEffect_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QGraphicsEffect_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QGraphicsEffect* QGraphicsEffect_new() {
	return new VirtualQGraphicsEffect();
}

QGraphicsEffect* QGraphicsEffect_new2(QObject* parent) {
	return new VirtualQGraphicsEffect(parent);
}

void QGraphicsEffect_virtbase(QGraphicsEffect* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QGraphicsEffect_metaObject(const QGraphicsEffect* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsEffect_metacast(QGraphicsEffect* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsEffect_metacall(QGraphicsEffect* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsEffect_tr(const char* s) {
	QString _ret = QGraphicsEffect::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsEffect_trUtf8(const char* s) {
	QString _ret = QGraphicsEffect::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QRectF* QGraphicsEffect_boundingRectFor(const QGraphicsEffect* self, QRectF* sourceRect) {
	return new QRectF(self->boundingRectFor(*sourceRect));
}

QRectF* QGraphicsEffect_boundingRect(const QGraphicsEffect* self) {
	return new QRectF(self->boundingRect());
}

bool QGraphicsEffect_isEnabled(const QGraphicsEffect* self) {
	return self->isEnabled();
}

void QGraphicsEffect_setEnabled(QGraphicsEffect* self, bool enable) {
	self->setEnabled(enable);
}

void QGraphicsEffect_update(QGraphicsEffect* self) {
	self->update();
}

void QGraphicsEffect_enabledChanged(QGraphicsEffect* self, bool enabled) {
	self->enabledChanged(enabled);
}

void QGraphicsEffect_connect_enabledChanged(QGraphicsEffect* self, intptr_t slot) {
	VirtualQGraphicsEffect::connect(self, static_cast<void (QGraphicsEffect::*)(bool)>(&QGraphicsEffect::enabledChanged), self, [=](bool enabled) {
		bool sigval1 = enabled;
		miqt_exec_callback_QGraphicsEffect_enabledChanged(slot, sigval1);
	});
}

struct miqt_string QGraphicsEffect_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsEffect::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsEffect_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsEffect::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsEffect_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsEffect::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsEffect_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsEffect::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QGraphicsEffect_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QGraphicsEffect_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::metaObject();

}

bool QGraphicsEffect_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QGraphicsEffect_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::qt_metacast(param1);

}

bool QGraphicsEffect_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QGraphicsEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QGraphicsEffect_override_virtual_boundingRectFor(void* self, intptr_t slot) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__boundingRectFor = slot;
	return true;
}

QRectF* QGraphicsEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect) {

	return new QRectF(( (const VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::boundingRectFor(*sourceRect));

}

bool QGraphicsEffect_override_virtual_draw(void* self, intptr_t slot) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__draw = slot;
	return true;
}

bool QGraphicsEffect_override_virtual_sourceChanged(void* self, intptr_t slot) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__sourceChanged = slot;
	return true;
}

void QGraphicsEffect_virtualbase_sourceChanged(void* self, int flags) {

	( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::sourceChanged(static_cast<VirtualQGraphicsEffect::ChangeFlags>(flags));

}

bool QGraphicsEffect_override_virtual_event(void* self, intptr_t slot) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QGraphicsEffect_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::event(event);

}

bool QGraphicsEffect_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QGraphicsEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::eventFilter(watched, event);

}

bool QGraphicsEffect_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QGraphicsEffect_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::timerEvent(event);

}

bool QGraphicsEffect_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QGraphicsEffect_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::childEvent(event);

}

bool QGraphicsEffect_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QGraphicsEffect_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::customEvent(event);

}

bool QGraphicsEffect_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QGraphicsEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::connectNotify(*signal);

}

bool QGraphicsEffect_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QGraphicsEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::disconnectNotify(*signal);

}

const QMetaObject* QGraphicsEffect_staticMetaObject() { return &QGraphicsEffect::staticMetaObject; }
void QGraphicsEffect_protectedbase_updateBoundingRect(bool* _dynamic_cast_ok, void* self) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateBoundingRect();

}

bool QGraphicsEffect_protectedbase_sourceIsPixmap(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sourceIsPixmap();

}

QRectF* QGraphicsEffect_protectedbase_sourceBoundingRect(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QRectF(self_cast->sourceBoundingRect());

}

void QGraphicsEffect_protectedbase_drawSource(bool* _dynamic_cast_ok, void* self, QPainter* painter) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->drawSource(painter);

}

QPixmap* QGraphicsEffect_protectedbase_sourcePixmap(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QPixmap(self_cast->sourcePixmap());

}

QRectF* QGraphicsEffect_protectedbase_sourceBoundingRect1(bool* _dynamic_cast_ok, const void* self, int system) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QRectF(self_cast->sourceBoundingRect(static_cast<Qt::CoordinateSystem>(system)));

}

QPixmap* QGraphicsEffect_protectedbase_sourcePixmap1(bool* _dynamic_cast_ok, const void* self, int system) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QPixmap(self_cast->sourcePixmap(static_cast<Qt::CoordinateSystem>(system)));

}

QPixmap* QGraphicsEffect_protectedbase_sourcePixmap2(bool* _dynamic_cast_ok, const void* self, int system, QPoint* offset) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QPixmap(self_cast->sourcePixmap(static_cast<Qt::CoordinateSystem>(system), offset));

}

QPixmap* QGraphicsEffect_protectedbase_sourcePixmap3(bool* _dynamic_cast_ok, const void* self, int system, QPoint* offset, int mode) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QPixmap(self_cast->sourcePixmap(static_cast<Qt::CoordinateSystem>(system), offset, static_cast<VirtualQGraphicsEffect::PixmapPadMode>(mode)));

}

QObject* QGraphicsEffect_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QGraphicsEffect_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QGraphicsEffect_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QGraphicsEffect_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQGraphicsEffect* self_cast = dynamic_cast<VirtualQGraphicsEffect*>( (QGraphicsEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QGraphicsEffect_delete(QGraphicsEffect* self) {
	delete self;
}

class VirtualQGraphicsColorizeEffect final : public QGraphicsColorizeEffect {
public:

	VirtualQGraphicsColorizeEffect(): QGraphicsColorizeEffect() {};
	VirtualQGraphicsColorizeEffect(QObject* parent): QGraphicsColorizeEffect(parent) {};

	virtual ~VirtualQGraphicsColorizeEffect() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QGraphicsColorizeEffect::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QGraphicsColorizeEffect_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsColorizeEffect_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QGraphicsColorizeEffect::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QGraphicsColorizeEffect_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsColorizeEffect_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QGraphicsColorizeEffect::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QGraphicsColorizeEffect_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsColorizeEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__draw = 0;

	// Subclass to allow providing a Go implementation
	virtual void draw(QPainter* painter) override {
		if (handle__draw == 0) {
			QGraphicsColorizeEffect::draw(painter);
			return;
		}
		
		QPainter* sigval1 = painter;

		miqt_exec_callback_QGraphicsColorizeEffect_draw(this, handle__draw, sigval1);

		
	}

	friend void QGraphicsColorizeEffect_virtualbase_draw(void* self, QPainter* painter);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__boundingRectFor = 0;

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRectFor(const QRectF& sourceRect) const override {
		if (handle__boundingRectFor == 0) {
			return QGraphicsColorizeEffect::boundingRectFor(sourceRect);
		}
		
		const QRectF& sourceRect_ret = sourceRect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&sourceRect_ret);

		QRectF* callback_return_value = miqt_exec_callback_QGraphicsColorizeEffect_boundingRectFor(this, handle__boundingRectFor, sigval1);

		return *callback_return_value;
	}

	friend QRectF* QGraphicsColorizeEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__sourceChanged = 0;

	// Subclass to allow providing a Go implementation
	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (handle__sourceChanged == 0) {
			QGraphicsColorizeEffect::sourceChanged(flags);
			return;
		}
		
		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		miqt_exec_callback_QGraphicsColorizeEffect_sourceChanged(this, handle__sourceChanged, sigval1);

		
	}

	friend void QGraphicsColorizeEffect_virtualbase_sourceChanged(void* self, int flags);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QGraphicsColorizeEffect::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QGraphicsColorizeEffect_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsColorizeEffect_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QGraphicsColorizeEffect::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QGraphicsColorizeEffect_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsColorizeEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QGraphicsColorizeEffect::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QGraphicsColorizeEffect_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QGraphicsColorizeEffect_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QGraphicsColorizeEffect::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QGraphicsColorizeEffect_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QGraphicsColorizeEffect_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QGraphicsColorizeEffect::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QGraphicsColorizeEffect_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QGraphicsColorizeEffect_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QGraphicsColorizeEffect::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QGraphicsColorizeEffect_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QGraphicsColorizeEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QGraphicsColorizeEffect::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QGraphicsColorizeEffect_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QGraphicsColorizeEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsColorizeEffect_protectedbase_updateBoundingRect(bool* _dynamic_cast_ok, void* self);
	friend bool QGraphicsColorizeEffect_protectedbase_sourceIsPixmap(bool* _dynamic_cast_ok, const void* self);
	friend QRectF* QGraphicsColorizeEffect_protectedbase_sourceBoundingRect(bool* _dynamic_cast_ok, const void* self);
	friend void QGraphicsColorizeEffect_protectedbase_drawSource(bool* _dynamic_cast_ok, void* self, QPainter* painter);
	friend QPixmap* QGraphicsColorizeEffect_protectedbase_sourcePixmap(bool* _dynamic_cast_ok, const void* self);
	friend QObject* QGraphicsColorizeEffect_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsColorizeEffect_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsColorizeEffect_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QGraphicsColorizeEffect_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QGraphicsColorizeEffect* QGraphicsColorizeEffect_new() {
	return new VirtualQGraphicsColorizeEffect();
}

QGraphicsColorizeEffect* QGraphicsColorizeEffect_new2(QObject* parent) {
	return new VirtualQGraphicsColorizeEffect(parent);
}

void QGraphicsColorizeEffect_virtbase(QGraphicsColorizeEffect* src, QGraphicsEffect** outptr_QGraphicsEffect) {
	*outptr_QGraphicsEffect = static_cast<QGraphicsEffect*>(src);
}

QMetaObject* QGraphicsColorizeEffect_metaObject(const QGraphicsColorizeEffect* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsColorizeEffect_metacast(QGraphicsColorizeEffect* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsColorizeEffect_metacall(QGraphicsColorizeEffect* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsColorizeEffect_tr(const char* s) {
	QString _ret = QGraphicsColorizeEffect::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsColorizeEffect_trUtf8(const char* s) {
	QString _ret = QGraphicsColorizeEffect::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QColor* QGraphicsColorizeEffect_color(const QGraphicsColorizeEffect* self) {
	return new QColor(self->color());
}

double QGraphicsColorizeEffect_strength(const QGraphicsColorizeEffect* self) {
	qreal _ret = self->strength();
	return static_cast<double>(_ret);
}

void QGraphicsColorizeEffect_setColor(QGraphicsColorizeEffect* self, QColor* c) {
	self->setColor(*c);
}

void QGraphicsColorizeEffect_setStrength(QGraphicsColorizeEffect* self, double strength) {
	self->setStrength(static_cast<qreal>(strength));
}

void QGraphicsColorizeEffect_colorChanged(QGraphicsColorizeEffect* self, QColor* color) {
	self->colorChanged(*color);
}

void QGraphicsColorizeEffect_connect_colorChanged(QGraphicsColorizeEffect* self, intptr_t slot) {
	VirtualQGraphicsColorizeEffect::connect(self, static_cast<void (QGraphicsColorizeEffect::*)(const QColor&)>(&QGraphicsColorizeEffect::colorChanged), self, [=](const QColor& color) {
		const QColor& color_ret = color;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&color_ret);
		miqt_exec_callback_QGraphicsColorizeEffect_colorChanged(slot, sigval1);
	});
}

void QGraphicsColorizeEffect_strengthChanged(QGraphicsColorizeEffect* self, double strength) {
	self->strengthChanged(static_cast<qreal>(strength));
}

void QGraphicsColorizeEffect_connect_strengthChanged(QGraphicsColorizeEffect* self, intptr_t slot) {
	VirtualQGraphicsColorizeEffect::connect(self, static_cast<void (QGraphicsColorizeEffect::*)(qreal)>(&QGraphicsColorizeEffect::strengthChanged), self, [=](qreal strength) {
		qreal strength_ret = strength;
		double sigval1 = static_cast<double>(strength_ret);
		miqt_exec_callback_QGraphicsColorizeEffect_strengthChanged(slot, sigval1);
	});
}

struct miqt_string QGraphicsColorizeEffect_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsColorizeEffect::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsColorizeEffect_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsColorizeEffect::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsColorizeEffect_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsColorizeEffect::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsColorizeEffect_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsColorizeEffect::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QGraphicsColorizeEffect_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QGraphicsColorizeEffect_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::metaObject();

}

bool QGraphicsColorizeEffect_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QGraphicsColorizeEffect_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::qt_metacast(param1);

}

bool QGraphicsColorizeEffect_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QGraphicsColorizeEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QGraphicsColorizeEffect_override_virtual_draw(void* self, intptr_t slot) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__draw = slot;
	return true;
}

void QGraphicsColorizeEffect_virtualbase_draw(void* self, QPainter* painter) {

	( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::draw(painter);

}

bool QGraphicsColorizeEffect_override_virtual_boundingRectFor(void* self, intptr_t slot) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__boundingRectFor = slot;
	return true;
}

QRectF* QGraphicsColorizeEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect) {

	return new QRectF(( (const VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::boundingRectFor(*sourceRect));

}

bool QGraphicsColorizeEffect_override_virtual_sourceChanged(void* self, intptr_t slot) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__sourceChanged = slot;
	return true;
}

void QGraphicsColorizeEffect_virtualbase_sourceChanged(void* self, int flags) {

	( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::sourceChanged(static_cast<VirtualQGraphicsColorizeEffect::ChangeFlags>(flags));

}

bool QGraphicsColorizeEffect_override_virtual_event(void* self, intptr_t slot) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QGraphicsColorizeEffect_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::event(event);

}

bool QGraphicsColorizeEffect_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QGraphicsColorizeEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::eventFilter(watched, event);

}

bool QGraphicsColorizeEffect_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QGraphicsColorizeEffect_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::timerEvent(event);

}

bool QGraphicsColorizeEffect_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QGraphicsColorizeEffect_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::childEvent(event);

}

bool QGraphicsColorizeEffect_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QGraphicsColorizeEffect_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::customEvent(event);

}

bool QGraphicsColorizeEffect_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QGraphicsColorizeEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::connectNotify(*signal);

}

bool QGraphicsColorizeEffect_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QGraphicsColorizeEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::disconnectNotify(*signal);

}

const QMetaObject* QGraphicsColorizeEffect_staticMetaObject() { return &QGraphicsColorizeEffect::staticMetaObject; }
void QGraphicsColorizeEffect_protectedbase_updateBoundingRect(bool* _dynamic_cast_ok, void* self) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateBoundingRect();

}

bool QGraphicsColorizeEffect_protectedbase_sourceIsPixmap(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sourceIsPixmap();

}

QRectF* QGraphicsColorizeEffect_protectedbase_sourceBoundingRect(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QRectF(self_cast->sourceBoundingRect());

}

void QGraphicsColorizeEffect_protectedbase_drawSource(bool* _dynamic_cast_ok, void* self, QPainter* painter) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->drawSource(painter);

}

QPixmap* QGraphicsColorizeEffect_protectedbase_sourcePixmap(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QPixmap(self_cast->sourcePixmap());

}

QObject* QGraphicsColorizeEffect_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QGraphicsColorizeEffect_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QGraphicsColorizeEffect_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QGraphicsColorizeEffect_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQGraphicsColorizeEffect* self_cast = dynamic_cast<VirtualQGraphicsColorizeEffect*>( (QGraphicsColorizeEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QGraphicsColorizeEffect_delete(QGraphicsColorizeEffect* self) {
	delete self;
}

class VirtualQGraphicsBlurEffect final : public QGraphicsBlurEffect {
public:

	VirtualQGraphicsBlurEffect(): QGraphicsBlurEffect() {};
	VirtualQGraphicsBlurEffect(QObject* parent): QGraphicsBlurEffect(parent) {};

	virtual ~VirtualQGraphicsBlurEffect() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QGraphicsBlurEffect::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QGraphicsBlurEffect_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsBlurEffect_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QGraphicsBlurEffect::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QGraphicsBlurEffect_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsBlurEffect_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QGraphicsBlurEffect::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QGraphicsBlurEffect_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsBlurEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__boundingRectFor = 0;

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRectFor(const QRectF& rect) const override {
		if (handle__boundingRectFor == 0) {
			return QGraphicsBlurEffect::boundingRectFor(rect);
		}
		
		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		QRectF* callback_return_value = miqt_exec_callback_QGraphicsBlurEffect_boundingRectFor(this, handle__boundingRectFor, sigval1);

		return *callback_return_value;
	}

	friend QRectF* QGraphicsBlurEffect_virtualbase_boundingRectFor(const void* self, QRectF* rect);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__draw = 0;

	// Subclass to allow providing a Go implementation
	virtual void draw(QPainter* painter) override {
		if (handle__draw == 0) {
			QGraphicsBlurEffect::draw(painter);
			return;
		}
		
		QPainter* sigval1 = painter;

		miqt_exec_callback_QGraphicsBlurEffect_draw(this, handle__draw, sigval1);

		
	}

	friend void QGraphicsBlurEffect_virtualbase_draw(void* self, QPainter* painter);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__sourceChanged = 0;

	// Subclass to allow providing a Go implementation
	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (handle__sourceChanged == 0) {
			QGraphicsBlurEffect::sourceChanged(flags);
			return;
		}
		
		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		miqt_exec_callback_QGraphicsBlurEffect_sourceChanged(this, handle__sourceChanged, sigval1);

		
	}

	friend void QGraphicsBlurEffect_virtualbase_sourceChanged(void* self, int flags);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QGraphicsBlurEffect::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QGraphicsBlurEffect_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsBlurEffect_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QGraphicsBlurEffect::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QGraphicsBlurEffect_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsBlurEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QGraphicsBlurEffect::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QGraphicsBlurEffect_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QGraphicsBlurEffect_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QGraphicsBlurEffect::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QGraphicsBlurEffect_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QGraphicsBlurEffect_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QGraphicsBlurEffect::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QGraphicsBlurEffect_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QGraphicsBlurEffect_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QGraphicsBlurEffect::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QGraphicsBlurEffect_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QGraphicsBlurEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QGraphicsBlurEffect::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QGraphicsBlurEffect_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QGraphicsBlurEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsBlurEffect_protectedbase_updateBoundingRect(bool* _dynamic_cast_ok, void* self);
	friend bool QGraphicsBlurEffect_protectedbase_sourceIsPixmap(bool* _dynamic_cast_ok, const void* self);
	friend QRectF* QGraphicsBlurEffect_protectedbase_sourceBoundingRect(bool* _dynamic_cast_ok, const void* self);
	friend void QGraphicsBlurEffect_protectedbase_drawSource(bool* _dynamic_cast_ok, void* self, QPainter* painter);
	friend QPixmap* QGraphicsBlurEffect_protectedbase_sourcePixmap(bool* _dynamic_cast_ok, const void* self);
	friend QObject* QGraphicsBlurEffect_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsBlurEffect_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsBlurEffect_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QGraphicsBlurEffect_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QGraphicsBlurEffect* QGraphicsBlurEffect_new() {
	return new VirtualQGraphicsBlurEffect();
}

QGraphicsBlurEffect* QGraphicsBlurEffect_new2(QObject* parent) {
	return new VirtualQGraphicsBlurEffect(parent);
}

void QGraphicsBlurEffect_virtbase(QGraphicsBlurEffect* src, QGraphicsEffect** outptr_QGraphicsEffect) {
	*outptr_QGraphicsEffect = static_cast<QGraphicsEffect*>(src);
}

QMetaObject* QGraphicsBlurEffect_metaObject(const QGraphicsBlurEffect* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsBlurEffect_metacast(QGraphicsBlurEffect* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsBlurEffect_metacall(QGraphicsBlurEffect* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsBlurEffect_tr(const char* s) {
	QString _ret = QGraphicsBlurEffect::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsBlurEffect_trUtf8(const char* s) {
	QString _ret = QGraphicsBlurEffect::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QRectF* QGraphicsBlurEffect_boundingRectFor(const QGraphicsBlurEffect* self, QRectF* rect) {
	return new QRectF(self->boundingRectFor(*rect));
}

double QGraphicsBlurEffect_blurRadius(const QGraphicsBlurEffect* self) {
	qreal _ret = self->blurRadius();
	return static_cast<double>(_ret);
}

int QGraphicsBlurEffect_blurHints(const QGraphicsBlurEffect* self) {
	QGraphicsBlurEffect::BlurHints _ret = self->blurHints();
	return static_cast<int>(_ret);
}

void QGraphicsBlurEffect_setBlurRadius(QGraphicsBlurEffect* self, double blurRadius) {
	self->setBlurRadius(static_cast<qreal>(blurRadius));
}

void QGraphicsBlurEffect_setBlurHints(QGraphicsBlurEffect* self, int hints) {
	self->setBlurHints(static_cast<QGraphicsBlurEffect::BlurHints>(hints));
}

void QGraphicsBlurEffect_blurRadiusChanged(QGraphicsBlurEffect* self, double blurRadius) {
	self->blurRadiusChanged(static_cast<qreal>(blurRadius));
}

void QGraphicsBlurEffect_connect_blurRadiusChanged(QGraphicsBlurEffect* self, intptr_t slot) {
	VirtualQGraphicsBlurEffect::connect(self, static_cast<void (QGraphicsBlurEffect::*)(qreal)>(&QGraphicsBlurEffect::blurRadiusChanged), self, [=](qreal blurRadius) {
		qreal blurRadius_ret = blurRadius;
		double sigval1 = static_cast<double>(blurRadius_ret);
		miqt_exec_callback_QGraphicsBlurEffect_blurRadiusChanged(slot, sigval1);
	});
}

void QGraphicsBlurEffect_blurHintsChanged(QGraphicsBlurEffect* self, int hints) {
	self->blurHintsChanged(static_cast<QGraphicsBlurEffect::BlurHints>(hints));
}

void QGraphicsBlurEffect_connect_blurHintsChanged(QGraphicsBlurEffect* self, intptr_t slot) {
	VirtualQGraphicsBlurEffect::connect(self, static_cast<void (QGraphicsBlurEffect::*)(QGraphicsBlurEffect::BlurHints)>(&QGraphicsBlurEffect::blurHintsChanged), self, [=](QGraphicsBlurEffect::BlurHints hints) {
		QGraphicsBlurEffect::BlurHints hints_ret = hints;
		int sigval1 = static_cast<int>(hints_ret);
		miqt_exec_callback_QGraphicsBlurEffect_blurHintsChanged(slot, sigval1);
	});
}

struct miqt_string QGraphicsBlurEffect_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsBlurEffect::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsBlurEffect_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsBlurEffect::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsBlurEffect_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsBlurEffect::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsBlurEffect_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsBlurEffect::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QGraphicsBlurEffect_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QGraphicsBlurEffect_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::metaObject();

}

bool QGraphicsBlurEffect_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QGraphicsBlurEffect_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::qt_metacast(param1);

}

bool QGraphicsBlurEffect_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QGraphicsBlurEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QGraphicsBlurEffect_override_virtual_boundingRectFor(void* self, intptr_t slot) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__boundingRectFor = slot;
	return true;
}

QRectF* QGraphicsBlurEffect_virtualbase_boundingRectFor(const void* self, QRectF* rect) {

	return new QRectF(( (const VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::boundingRectFor(*rect));

}

bool QGraphicsBlurEffect_override_virtual_draw(void* self, intptr_t slot) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__draw = slot;
	return true;
}

void QGraphicsBlurEffect_virtualbase_draw(void* self, QPainter* painter) {

	( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::draw(painter);

}

bool QGraphicsBlurEffect_override_virtual_sourceChanged(void* self, intptr_t slot) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__sourceChanged = slot;
	return true;
}

void QGraphicsBlurEffect_virtualbase_sourceChanged(void* self, int flags) {

	( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::sourceChanged(static_cast<VirtualQGraphicsBlurEffect::ChangeFlags>(flags));

}

bool QGraphicsBlurEffect_override_virtual_event(void* self, intptr_t slot) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QGraphicsBlurEffect_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::event(event);

}

bool QGraphicsBlurEffect_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QGraphicsBlurEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::eventFilter(watched, event);

}

bool QGraphicsBlurEffect_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QGraphicsBlurEffect_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::timerEvent(event);

}

bool QGraphicsBlurEffect_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QGraphicsBlurEffect_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::childEvent(event);

}

bool QGraphicsBlurEffect_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QGraphicsBlurEffect_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::customEvent(event);

}

bool QGraphicsBlurEffect_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QGraphicsBlurEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::connectNotify(*signal);

}

bool QGraphicsBlurEffect_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QGraphicsBlurEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::disconnectNotify(*signal);

}

const QMetaObject* QGraphicsBlurEffect_staticMetaObject() { return &QGraphicsBlurEffect::staticMetaObject; }
void QGraphicsBlurEffect_protectedbase_updateBoundingRect(bool* _dynamic_cast_ok, void* self) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateBoundingRect();

}

bool QGraphicsBlurEffect_protectedbase_sourceIsPixmap(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sourceIsPixmap();

}

QRectF* QGraphicsBlurEffect_protectedbase_sourceBoundingRect(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QRectF(self_cast->sourceBoundingRect());

}

void QGraphicsBlurEffect_protectedbase_drawSource(bool* _dynamic_cast_ok, void* self, QPainter* painter) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->drawSource(painter);

}

QPixmap* QGraphicsBlurEffect_protectedbase_sourcePixmap(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QPixmap(self_cast->sourcePixmap());

}

QObject* QGraphicsBlurEffect_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QGraphicsBlurEffect_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QGraphicsBlurEffect_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QGraphicsBlurEffect_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQGraphicsBlurEffect* self_cast = dynamic_cast<VirtualQGraphicsBlurEffect*>( (QGraphicsBlurEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QGraphicsBlurEffect_delete(QGraphicsBlurEffect* self) {
	delete self;
}

class VirtualQGraphicsDropShadowEffect final : public QGraphicsDropShadowEffect {
public:

	VirtualQGraphicsDropShadowEffect(): QGraphicsDropShadowEffect() {};
	VirtualQGraphicsDropShadowEffect(QObject* parent): QGraphicsDropShadowEffect(parent) {};

	virtual ~VirtualQGraphicsDropShadowEffect() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QGraphicsDropShadowEffect::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QGraphicsDropShadowEffect_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsDropShadowEffect_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QGraphicsDropShadowEffect::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QGraphicsDropShadowEffect_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsDropShadowEffect_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QGraphicsDropShadowEffect::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QGraphicsDropShadowEffect_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsDropShadowEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__boundingRectFor = 0;

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRectFor(const QRectF& rect) const override {
		if (handle__boundingRectFor == 0) {
			return QGraphicsDropShadowEffect::boundingRectFor(rect);
		}
		
		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		QRectF* callback_return_value = miqt_exec_callback_QGraphicsDropShadowEffect_boundingRectFor(this, handle__boundingRectFor, sigval1);

		return *callback_return_value;
	}

	friend QRectF* QGraphicsDropShadowEffect_virtualbase_boundingRectFor(const void* self, QRectF* rect);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__draw = 0;

	// Subclass to allow providing a Go implementation
	virtual void draw(QPainter* painter) override {
		if (handle__draw == 0) {
			QGraphicsDropShadowEffect::draw(painter);
			return;
		}
		
		QPainter* sigval1 = painter;

		miqt_exec_callback_QGraphicsDropShadowEffect_draw(this, handle__draw, sigval1);

		
	}

	friend void QGraphicsDropShadowEffect_virtualbase_draw(void* self, QPainter* painter);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__sourceChanged = 0;

	// Subclass to allow providing a Go implementation
	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (handle__sourceChanged == 0) {
			QGraphicsDropShadowEffect::sourceChanged(flags);
			return;
		}
		
		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		miqt_exec_callback_QGraphicsDropShadowEffect_sourceChanged(this, handle__sourceChanged, sigval1);

		
	}

	friend void QGraphicsDropShadowEffect_virtualbase_sourceChanged(void* self, int flags);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QGraphicsDropShadowEffect::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QGraphicsDropShadowEffect_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsDropShadowEffect_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QGraphicsDropShadowEffect::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QGraphicsDropShadowEffect_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsDropShadowEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QGraphicsDropShadowEffect::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QGraphicsDropShadowEffect_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QGraphicsDropShadowEffect_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QGraphicsDropShadowEffect::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QGraphicsDropShadowEffect_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QGraphicsDropShadowEffect_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QGraphicsDropShadowEffect::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QGraphicsDropShadowEffect_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QGraphicsDropShadowEffect_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QGraphicsDropShadowEffect::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QGraphicsDropShadowEffect_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QGraphicsDropShadowEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QGraphicsDropShadowEffect::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QGraphicsDropShadowEffect_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QGraphicsDropShadowEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsDropShadowEffect_protectedbase_updateBoundingRect(bool* _dynamic_cast_ok, void* self);
	friend bool QGraphicsDropShadowEffect_protectedbase_sourceIsPixmap(bool* _dynamic_cast_ok, const void* self);
	friend QRectF* QGraphicsDropShadowEffect_protectedbase_sourceBoundingRect(bool* _dynamic_cast_ok, const void* self);
	friend void QGraphicsDropShadowEffect_protectedbase_drawSource(bool* _dynamic_cast_ok, void* self, QPainter* painter);
	friend QPixmap* QGraphicsDropShadowEffect_protectedbase_sourcePixmap(bool* _dynamic_cast_ok, const void* self);
	friend QObject* QGraphicsDropShadowEffect_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsDropShadowEffect_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsDropShadowEffect_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QGraphicsDropShadowEffect_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QGraphicsDropShadowEffect* QGraphicsDropShadowEffect_new() {
	return new VirtualQGraphicsDropShadowEffect();
}

QGraphicsDropShadowEffect* QGraphicsDropShadowEffect_new2(QObject* parent) {
	return new VirtualQGraphicsDropShadowEffect(parent);
}

void QGraphicsDropShadowEffect_virtbase(QGraphicsDropShadowEffect* src, QGraphicsEffect** outptr_QGraphicsEffect) {
	*outptr_QGraphicsEffect = static_cast<QGraphicsEffect*>(src);
}

QMetaObject* QGraphicsDropShadowEffect_metaObject(const QGraphicsDropShadowEffect* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsDropShadowEffect_metacast(QGraphicsDropShadowEffect* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsDropShadowEffect_metacall(QGraphicsDropShadowEffect* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsDropShadowEffect_tr(const char* s) {
	QString _ret = QGraphicsDropShadowEffect::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsDropShadowEffect_trUtf8(const char* s) {
	QString _ret = QGraphicsDropShadowEffect::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QRectF* QGraphicsDropShadowEffect_boundingRectFor(const QGraphicsDropShadowEffect* self, QRectF* rect) {
	return new QRectF(self->boundingRectFor(*rect));
}

QPointF* QGraphicsDropShadowEffect_offset(const QGraphicsDropShadowEffect* self) {
	return new QPointF(self->offset());
}

double QGraphicsDropShadowEffect_xOffset(const QGraphicsDropShadowEffect* self) {
	qreal _ret = self->xOffset();
	return static_cast<double>(_ret);
}

double QGraphicsDropShadowEffect_yOffset(const QGraphicsDropShadowEffect* self) {
	qreal _ret = self->yOffset();
	return static_cast<double>(_ret);
}

double QGraphicsDropShadowEffect_blurRadius(const QGraphicsDropShadowEffect* self) {
	qreal _ret = self->blurRadius();
	return static_cast<double>(_ret);
}

QColor* QGraphicsDropShadowEffect_color(const QGraphicsDropShadowEffect* self) {
	return new QColor(self->color());
}

void QGraphicsDropShadowEffect_setOffset(QGraphicsDropShadowEffect* self, QPointF* ofs) {
	self->setOffset(*ofs);
}

void QGraphicsDropShadowEffect_setOffset2(QGraphicsDropShadowEffect* self, double dx, double dy) {
	self->setOffset(static_cast<qreal>(dx), static_cast<qreal>(dy));
}

void QGraphicsDropShadowEffect_setOffsetWithQreal(QGraphicsDropShadowEffect* self, double d) {
	self->setOffset(static_cast<qreal>(d));
}

void QGraphicsDropShadowEffect_setXOffset(QGraphicsDropShadowEffect* self, double dx) {
	self->setXOffset(static_cast<qreal>(dx));
}

void QGraphicsDropShadowEffect_setYOffset(QGraphicsDropShadowEffect* self, double dy) {
	self->setYOffset(static_cast<qreal>(dy));
}

void QGraphicsDropShadowEffect_setBlurRadius(QGraphicsDropShadowEffect* self, double blurRadius) {
	self->setBlurRadius(static_cast<qreal>(blurRadius));
}

void QGraphicsDropShadowEffect_setColor(QGraphicsDropShadowEffect* self, QColor* color) {
	self->setColor(*color);
}

void QGraphicsDropShadowEffect_offsetChanged(QGraphicsDropShadowEffect* self, QPointF* offset) {
	self->offsetChanged(*offset);
}

void QGraphicsDropShadowEffect_connect_offsetChanged(QGraphicsDropShadowEffect* self, intptr_t slot) {
	VirtualQGraphicsDropShadowEffect::connect(self, static_cast<void (QGraphicsDropShadowEffect::*)(const QPointF&)>(&QGraphicsDropShadowEffect::offsetChanged), self, [=](const QPointF& offset) {
		const QPointF& offset_ret = offset;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&offset_ret);
		miqt_exec_callback_QGraphicsDropShadowEffect_offsetChanged(slot, sigval1);
	});
}

void QGraphicsDropShadowEffect_blurRadiusChanged(QGraphicsDropShadowEffect* self, double blurRadius) {
	self->blurRadiusChanged(static_cast<qreal>(blurRadius));
}

void QGraphicsDropShadowEffect_connect_blurRadiusChanged(QGraphicsDropShadowEffect* self, intptr_t slot) {
	VirtualQGraphicsDropShadowEffect::connect(self, static_cast<void (QGraphicsDropShadowEffect::*)(qreal)>(&QGraphicsDropShadowEffect::blurRadiusChanged), self, [=](qreal blurRadius) {
		qreal blurRadius_ret = blurRadius;
		double sigval1 = static_cast<double>(blurRadius_ret);
		miqt_exec_callback_QGraphicsDropShadowEffect_blurRadiusChanged(slot, sigval1);
	});
}

void QGraphicsDropShadowEffect_colorChanged(QGraphicsDropShadowEffect* self, QColor* color) {
	self->colorChanged(*color);
}

void QGraphicsDropShadowEffect_connect_colorChanged(QGraphicsDropShadowEffect* self, intptr_t slot) {
	VirtualQGraphicsDropShadowEffect::connect(self, static_cast<void (QGraphicsDropShadowEffect::*)(const QColor&)>(&QGraphicsDropShadowEffect::colorChanged), self, [=](const QColor& color) {
		const QColor& color_ret = color;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&color_ret);
		miqt_exec_callback_QGraphicsDropShadowEffect_colorChanged(slot, sigval1);
	});
}

struct miqt_string QGraphicsDropShadowEffect_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsDropShadowEffect::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsDropShadowEffect_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsDropShadowEffect::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsDropShadowEffect_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsDropShadowEffect::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsDropShadowEffect_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsDropShadowEffect::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QGraphicsDropShadowEffect_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QGraphicsDropShadowEffect_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::metaObject();

}

bool QGraphicsDropShadowEffect_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QGraphicsDropShadowEffect_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::qt_metacast(param1);

}

bool QGraphicsDropShadowEffect_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QGraphicsDropShadowEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QGraphicsDropShadowEffect_override_virtual_boundingRectFor(void* self, intptr_t slot) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__boundingRectFor = slot;
	return true;
}

QRectF* QGraphicsDropShadowEffect_virtualbase_boundingRectFor(const void* self, QRectF* rect) {

	return new QRectF(( (const VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::boundingRectFor(*rect));

}

bool QGraphicsDropShadowEffect_override_virtual_draw(void* self, intptr_t slot) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__draw = slot;
	return true;
}

void QGraphicsDropShadowEffect_virtualbase_draw(void* self, QPainter* painter) {

	( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::draw(painter);

}

bool QGraphicsDropShadowEffect_override_virtual_sourceChanged(void* self, intptr_t slot) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__sourceChanged = slot;
	return true;
}

void QGraphicsDropShadowEffect_virtualbase_sourceChanged(void* self, int flags) {

	( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::sourceChanged(static_cast<VirtualQGraphicsDropShadowEffect::ChangeFlags>(flags));

}

bool QGraphicsDropShadowEffect_override_virtual_event(void* self, intptr_t slot) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QGraphicsDropShadowEffect_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::event(event);

}

bool QGraphicsDropShadowEffect_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QGraphicsDropShadowEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::eventFilter(watched, event);

}

bool QGraphicsDropShadowEffect_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QGraphicsDropShadowEffect_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::timerEvent(event);

}

bool QGraphicsDropShadowEffect_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QGraphicsDropShadowEffect_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::childEvent(event);

}

bool QGraphicsDropShadowEffect_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QGraphicsDropShadowEffect_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::customEvent(event);

}

bool QGraphicsDropShadowEffect_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QGraphicsDropShadowEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::connectNotify(*signal);

}

bool QGraphicsDropShadowEffect_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QGraphicsDropShadowEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::disconnectNotify(*signal);

}

const QMetaObject* QGraphicsDropShadowEffect_staticMetaObject() { return &QGraphicsDropShadowEffect::staticMetaObject; }
void QGraphicsDropShadowEffect_protectedbase_updateBoundingRect(bool* _dynamic_cast_ok, void* self) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateBoundingRect();

}

bool QGraphicsDropShadowEffect_protectedbase_sourceIsPixmap(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sourceIsPixmap();

}

QRectF* QGraphicsDropShadowEffect_protectedbase_sourceBoundingRect(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QRectF(self_cast->sourceBoundingRect());

}

void QGraphicsDropShadowEffect_protectedbase_drawSource(bool* _dynamic_cast_ok, void* self, QPainter* painter) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->drawSource(painter);

}

QPixmap* QGraphicsDropShadowEffect_protectedbase_sourcePixmap(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QPixmap(self_cast->sourcePixmap());

}

QObject* QGraphicsDropShadowEffect_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QGraphicsDropShadowEffect_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QGraphicsDropShadowEffect_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QGraphicsDropShadowEffect_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQGraphicsDropShadowEffect* self_cast = dynamic_cast<VirtualQGraphicsDropShadowEffect*>( (QGraphicsDropShadowEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QGraphicsDropShadowEffect_delete(QGraphicsDropShadowEffect* self) {
	delete self;
}

class VirtualQGraphicsOpacityEffect final : public QGraphicsOpacityEffect {
public:

	VirtualQGraphicsOpacityEffect(): QGraphicsOpacityEffect() {};
	VirtualQGraphicsOpacityEffect(QObject* parent): QGraphicsOpacityEffect(parent) {};

	virtual ~VirtualQGraphicsOpacityEffect() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QGraphicsOpacityEffect::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QGraphicsOpacityEffect_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsOpacityEffect_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QGraphicsOpacityEffect::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QGraphicsOpacityEffect_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsOpacityEffect_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QGraphicsOpacityEffect::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QGraphicsOpacityEffect_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsOpacityEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__draw = 0;

	// Subclass to allow providing a Go implementation
	virtual void draw(QPainter* painter) override {
		if (handle__draw == 0) {
			QGraphicsOpacityEffect::draw(painter);
			return;
		}
		
		QPainter* sigval1 = painter;

		miqt_exec_callback_QGraphicsOpacityEffect_draw(this, handle__draw, sigval1);

		
	}

	friend void QGraphicsOpacityEffect_virtualbase_draw(void* self, QPainter* painter);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__boundingRectFor = 0;

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRectFor(const QRectF& sourceRect) const override {
		if (handle__boundingRectFor == 0) {
			return QGraphicsOpacityEffect::boundingRectFor(sourceRect);
		}
		
		const QRectF& sourceRect_ret = sourceRect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&sourceRect_ret);

		QRectF* callback_return_value = miqt_exec_callback_QGraphicsOpacityEffect_boundingRectFor(this, handle__boundingRectFor, sigval1);

		return *callback_return_value;
	}

	friend QRectF* QGraphicsOpacityEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__sourceChanged = 0;

	// Subclass to allow providing a Go implementation
	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (handle__sourceChanged == 0) {
			QGraphicsOpacityEffect::sourceChanged(flags);
			return;
		}
		
		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		miqt_exec_callback_QGraphicsOpacityEffect_sourceChanged(this, handle__sourceChanged, sigval1);

		
	}

	friend void QGraphicsOpacityEffect_virtualbase_sourceChanged(void* self, int flags);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QGraphicsOpacityEffect::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QGraphicsOpacityEffect_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsOpacityEffect_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QGraphicsOpacityEffect::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QGraphicsOpacityEffect_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsOpacityEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QGraphicsOpacityEffect::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QGraphicsOpacityEffect_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QGraphicsOpacityEffect_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QGraphicsOpacityEffect::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QGraphicsOpacityEffect_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QGraphicsOpacityEffect_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QGraphicsOpacityEffect::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QGraphicsOpacityEffect_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QGraphicsOpacityEffect_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QGraphicsOpacityEffect::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QGraphicsOpacityEffect_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QGraphicsOpacityEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QGraphicsOpacityEffect::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QGraphicsOpacityEffect_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QGraphicsOpacityEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsOpacityEffect_protectedbase_updateBoundingRect(bool* _dynamic_cast_ok, void* self);
	friend bool QGraphicsOpacityEffect_protectedbase_sourceIsPixmap(bool* _dynamic_cast_ok, const void* self);
	friend QRectF* QGraphicsOpacityEffect_protectedbase_sourceBoundingRect(bool* _dynamic_cast_ok, const void* self);
	friend void QGraphicsOpacityEffect_protectedbase_drawSource(bool* _dynamic_cast_ok, void* self, QPainter* painter);
	friend QPixmap* QGraphicsOpacityEffect_protectedbase_sourcePixmap(bool* _dynamic_cast_ok, const void* self);
	friend QObject* QGraphicsOpacityEffect_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsOpacityEffect_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsOpacityEffect_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QGraphicsOpacityEffect_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QGraphicsOpacityEffect* QGraphicsOpacityEffect_new() {
	return new VirtualQGraphicsOpacityEffect();
}

QGraphicsOpacityEffect* QGraphicsOpacityEffect_new2(QObject* parent) {
	return new VirtualQGraphicsOpacityEffect(parent);
}

void QGraphicsOpacityEffect_virtbase(QGraphicsOpacityEffect* src, QGraphicsEffect** outptr_QGraphicsEffect) {
	*outptr_QGraphicsEffect = static_cast<QGraphicsEffect*>(src);
}

QMetaObject* QGraphicsOpacityEffect_metaObject(const QGraphicsOpacityEffect* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsOpacityEffect_metacast(QGraphicsOpacityEffect* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsOpacityEffect_metacall(QGraphicsOpacityEffect* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsOpacityEffect_tr(const char* s) {
	QString _ret = QGraphicsOpacityEffect::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsOpacityEffect_trUtf8(const char* s) {
	QString _ret = QGraphicsOpacityEffect::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

double QGraphicsOpacityEffect_opacity(const QGraphicsOpacityEffect* self) {
	qreal _ret = self->opacity();
	return static_cast<double>(_ret);
}

QBrush* QGraphicsOpacityEffect_opacityMask(const QGraphicsOpacityEffect* self) {
	return new QBrush(self->opacityMask());
}

void QGraphicsOpacityEffect_setOpacity(QGraphicsOpacityEffect* self, double opacity) {
	self->setOpacity(static_cast<qreal>(opacity));
}

void QGraphicsOpacityEffect_setOpacityMask(QGraphicsOpacityEffect* self, QBrush* mask) {
	self->setOpacityMask(*mask);
}

void QGraphicsOpacityEffect_opacityChanged(QGraphicsOpacityEffect* self, double opacity) {
	self->opacityChanged(static_cast<qreal>(opacity));
}

void QGraphicsOpacityEffect_connect_opacityChanged(QGraphicsOpacityEffect* self, intptr_t slot) {
	VirtualQGraphicsOpacityEffect::connect(self, static_cast<void (QGraphicsOpacityEffect::*)(qreal)>(&QGraphicsOpacityEffect::opacityChanged), self, [=](qreal opacity) {
		qreal opacity_ret = opacity;
		double sigval1 = static_cast<double>(opacity_ret);
		miqt_exec_callback_QGraphicsOpacityEffect_opacityChanged(slot, sigval1);
	});
}

void QGraphicsOpacityEffect_opacityMaskChanged(QGraphicsOpacityEffect* self, QBrush* mask) {
	self->opacityMaskChanged(*mask);
}

void QGraphicsOpacityEffect_connect_opacityMaskChanged(QGraphicsOpacityEffect* self, intptr_t slot) {
	VirtualQGraphicsOpacityEffect::connect(self, static_cast<void (QGraphicsOpacityEffect::*)(const QBrush&)>(&QGraphicsOpacityEffect::opacityMaskChanged), self, [=](const QBrush& mask) {
		const QBrush& mask_ret = mask;
		// Cast returned reference into pointer
		QBrush* sigval1 = const_cast<QBrush*>(&mask_ret);
		miqt_exec_callback_QGraphicsOpacityEffect_opacityMaskChanged(slot, sigval1);
	});
}

struct miqt_string QGraphicsOpacityEffect_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsOpacityEffect::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsOpacityEffect_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsOpacityEffect::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsOpacityEffect_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsOpacityEffect::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsOpacityEffect_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsOpacityEffect::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QGraphicsOpacityEffect_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QGraphicsOpacityEffect_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::metaObject();

}

bool QGraphicsOpacityEffect_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QGraphicsOpacityEffect_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::qt_metacast(param1);

}

bool QGraphicsOpacityEffect_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QGraphicsOpacityEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QGraphicsOpacityEffect_override_virtual_draw(void* self, intptr_t slot) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__draw = slot;
	return true;
}

void QGraphicsOpacityEffect_virtualbase_draw(void* self, QPainter* painter) {

	( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::draw(painter);

}

bool QGraphicsOpacityEffect_override_virtual_boundingRectFor(void* self, intptr_t slot) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__boundingRectFor = slot;
	return true;
}

QRectF* QGraphicsOpacityEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect) {

	return new QRectF(( (const VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::boundingRectFor(*sourceRect));

}

bool QGraphicsOpacityEffect_override_virtual_sourceChanged(void* self, intptr_t slot) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__sourceChanged = slot;
	return true;
}

void QGraphicsOpacityEffect_virtualbase_sourceChanged(void* self, int flags) {

	( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::sourceChanged(static_cast<VirtualQGraphicsOpacityEffect::ChangeFlags>(flags));

}

bool QGraphicsOpacityEffect_override_virtual_event(void* self, intptr_t slot) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QGraphicsOpacityEffect_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::event(event);

}

bool QGraphicsOpacityEffect_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QGraphicsOpacityEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::eventFilter(watched, event);

}

bool QGraphicsOpacityEffect_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QGraphicsOpacityEffect_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::timerEvent(event);

}

bool QGraphicsOpacityEffect_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QGraphicsOpacityEffect_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::childEvent(event);

}

bool QGraphicsOpacityEffect_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QGraphicsOpacityEffect_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::customEvent(event);

}

bool QGraphicsOpacityEffect_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QGraphicsOpacityEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::connectNotify(*signal);

}

bool QGraphicsOpacityEffect_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QGraphicsOpacityEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::disconnectNotify(*signal);

}

const QMetaObject* QGraphicsOpacityEffect_staticMetaObject() { return &QGraphicsOpacityEffect::staticMetaObject; }
void QGraphicsOpacityEffect_protectedbase_updateBoundingRect(bool* _dynamic_cast_ok, void* self) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateBoundingRect();

}

bool QGraphicsOpacityEffect_protectedbase_sourceIsPixmap(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sourceIsPixmap();

}

QRectF* QGraphicsOpacityEffect_protectedbase_sourceBoundingRect(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QRectF(self_cast->sourceBoundingRect());

}

void QGraphicsOpacityEffect_protectedbase_drawSource(bool* _dynamic_cast_ok, void* self, QPainter* painter) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->drawSource(painter);

}

QPixmap* QGraphicsOpacityEffect_protectedbase_sourcePixmap(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QPixmap(self_cast->sourcePixmap());

}

QObject* QGraphicsOpacityEffect_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QGraphicsOpacityEffect_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QGraphicsOpacityEffect_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QGraphicsOpacityEffect_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQGraphicsOpacityEffect* self_cast = dynamic_cast<VirtualQGraphicsOpacityEffect*>( (QGraphicsOpacityEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QGraphicsOpacityEffect_delete(QGraphicsOpacityEffect* self) {
	delete self;
}

