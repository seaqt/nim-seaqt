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

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQGraphicsEffect final : public QGraphicsEffect {
	struct QGraphicsEffect_VTable* vtbl;
public:

	VirtualQGraphicsEffect(struct QGraphicsEffect_VTable* vtbl): QGraphicsEffect(), vtbl(vtbl) {};
	VirtualQGraphicsEffect(struct QGraphicsEffect_VTable* vtbl, QObject* parent): QGraphicsEffect(parent), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsEffect() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsEffect_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsEffect_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsEffect::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRectFor(const QRectF& sourceRect) const override {
		if (vtbl->boundingRectFor == 0) {
			return QGraphicsEffect::boundingRectFor(sourceRect);
		}

		const QRectF& sourceRect_ret = sourceRect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&sourceRect_ret);

		QRectF* callback_return_value = vtbl->boundingRectFor(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QRectF* QGraphicsEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect);

	// Subclass to allow providing a Go implementation
	virtual void draw(QPainter* painter) override {
		if (vtbl->draw == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QPainter* sigval1 = painter;

		vtbl->draw(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (vtbl->sourceChanged == 0) {
			QGraphicsEffect::sourceChanged(flags);
			return;
		}

		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		vtbl->sourceChanged(vtbl, this, sigval1);

	}

	friend void QGraphicsEffect_virtualbase_sourceChanged(void* self, int flags);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsEffect_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsEffect_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsEffect_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsEffect_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

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

QGraphicsEffect* QGraphicsEffect_new(struct QGraphicsEffect_VTable* vtbl) {
	return new VirtualQGraphicsEffect(vtbl);
}

QGraphicsEffect* QGraphicsEffect_new2(struct QGraphicsEffect_VTable* vtbl, QObject* parent) {
	return new VirtualQGraphicsEffect(vtbl, parent);
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

void QGraphicsEffect_connect_enabledChanged(QGraphicsEffect* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool enabled) {
			bool sigval1 = enabled;
			callback(slot, sigval1);
		}
	};
	VirtualQGraphicsEffect::connect(self, static_cast<void (QGraphicsEffect::*)(bool)>(&QGraphicsEffect::enabledChanged), self, local_caller{slot, callback, release});
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

QMetaObject* QGraphicsEffect_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::metaObject();

}

void* QGraphicsEffect_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::qt_metacast(param1);

}

int QGraphicsEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QRectF* QGraphicsEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect) {

	return new QRectF(( (const VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::boundingRectFor(*sourceRect));

}

void QGraphicsEffect_virtualbase_sourceChanged(void* self, int flags) {

	( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::sourceChanged(static_cast<VirtualQGraphicsEffect::ChangeFlags>(flags));

}

bool QGraphicsEffect_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::event(event);

}

bool QGraphicsEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::eventFilter(watched, event);

}

void QGraphicsEffect_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::timerEvent(event);

}

void QGraphicsEffect_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::childEvent(event);

}

void QGraphicsEffect_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::customEvent(event);

}

void QGraphicsEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsEffect*)(self) )->QGraphicsEffect::connectNotify(*signal);

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
	struct QGraphicsColorizeEffect_VTable* vtbl;
public:

	VirtualQGraphicsColorizeEffect(struct QGraphicsColorizeEffect_VTable* vtbl): QGraphicsColorizeEffect(), vtbl(vtbl) {};
	VirtualQGraphicsColorizeEffect(struct QGraphicsColorizeEffect_VTable* vtbl, QObject* parent): QGraphicsColorizeEffect(parent), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsColorizeEffect() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsColorizeEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsColorizeEffect_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsColorizeEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsColorizeEffect_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsColorizeEffect::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsColorizeEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void draw(QPainter* painter) override {
		if (vtbl->draw == 0) {
			QGraphicsColorizeEffect::draw(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->draw(vtbl, this, sigval1);

	}

	friend void QGraphicsColorizeEffect_virtualbase_draw(void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRectFor(const QRectF& sourceRect) const override {
		if (vtbl->boundingRectFor == 0) {
			return QGraphicsColorizeEffect::boundingRectFor(sourceRect);
		}

		const QRectF& sourceRect_ret = sourceRect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&sourceRect_ret);

		QRectF* callback_return_value = vtbl->boundingRectFor(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QRectF* QGraphicsColorizeEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect);

	// Subclass to allow providing a Go implementation
	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (vtbl->sourceChanged == 0) {
			QGraphicsColorizeEffect::sourceChanged(flags);
			return;
		}

		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		vtbl->sourceChanged(vtbl, this, sigval1);

	}

	friend void QGraphicsColorizeEffect_virtualbase_sourceChanged(void* self, int flags);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsColorizeEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsColorizeEffect_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsColorizeEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsColorizeEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsColorizeEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsColorizeEffect_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsColorizeEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsColorizeEffect_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsColorizeEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsColorizeEffect_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsColorizeEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsColorizeEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsColorizeEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

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

QGraphicsColorizeEffect* QGraphicsColorizeEffect_new(struct QGraphicsColorizeEffect_VTable* vtbl) {
	return new VirtualQGraphicsColorizeEffect(vtbl);
}

QGraphicsColorizeEffect* QGraphicsColorizeEffect_new2(struct QGraphicsColorizeEffect_VTable* vtbl, QObject* parent) {
	return new VirtualQGraphicsColorizeEffect(vtbl, parent);
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

void QGraphicsColorizeEffect_connect_colorChanged(QGraphicsColorizeEffect* self, intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QColor*);
		void operator()(const QColor& color) {
			const QColor& color_ret = color;
			// Cast returned reference into pointer
			QColor* sigval1 = const_cast<QColor*>(&color_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQGraphicsColorizeEffect::connect(self, static_cast<void (QGraphicsColorizeEffect::*)(const QColor&)>(&QGraphicsColorizeEffect::colorChanged), self, local_caller{slot, callback, release});
}

void QGraphicsColorizeEffect_strengthChanged(QGraphicsColorizeEffect* self, double strength) {
	self->strengthChanged(static_cast<qreal>(strength));
}

void QGraphicsColorizeEffect_connect_strengthChanged(QGraphicsColorizeEffect* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, double);
		void operator()(qreal strength) {
			qreal strength_ret = strength;
			double sigval1 = static_cast<double>(strength_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQGraphicsColorizeEffect::connect(self, static_cast<void (QGraphicsColorizeEffect::*)(qreal)>(&QGraphicsColorizeEffect::strengthChanged), self, local_caller{slot, callback, release});
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

QMetaObject* QGraphicsColorizeEffect_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::metaObject();

}

void* QGraphicsColorizeEffect_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::qt_metacast(param1);

}

int QGraphicsColorizeEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QGraphicsColorizeEffect_virtualbase_draw(void* self, QPainter* painter) {

	( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::draw(painter);

}

QRectF* QGraphicsColorizeEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect) {

	return new QRectF(( (const VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::boundingRectFor(*sourceRect));

}

void QGraphicsColorizeEffect_virtualbase_sourceChanged(void* self, int flags) {

	( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::sourceChanged(static_cast<VirtualQGraphicsColorizeEffect::ChangeFlags>(flags));

}

bool QGraphicsColorizeEffect_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::event(event);

}

bool QGraphicsColorizeEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::eventFilter(watched, event);

}

void QGraphicsColorizeEffect_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::timerEvent(event);

}

void QGraphicsColorizeEffect_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::childEvent(event);

}

void QGraphicsColorizeEffect_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::customEvent(event);

}

void QGraphicsColorizeEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsColorizeEffect*)(self) )->QGraphicsColorizeEffect::connectNotify(*signal);

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
	struct QGraphicsBlurEffect_VTable* vtbl;
public:

	VirtualQGraphicsBlurEffect(struct QGraphicsBlurEffect_VTable* vtbl): QGraphicsBlurEffect(), vtbl(vtbl) {};
	VirtualQGraphicsBlurEffect(struct QGraphicsBlurEffect_VTable* vtbl, QObject* parent): QGraphicsBlurEffect(parent), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsBlurEffect() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsBlurEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsBlurEffect_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsBlurEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsBlurEffect_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsBlurEffect::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsBlurEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRectFor(const QRectF& rect) const override {
		if (vtbl->boundingRectFor == 0) {
			return QGraphicsBlurEffect::boundingRectFor(rect);
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		QRectF* callback_return_value = vtbl->boundingRectFor(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QRectF* QGraphicsBlurEffect_virtualbase_boundingRectFor(const void* self, QRectF* rect);

	// Subclass to allow providing a Go implementation
	virtual void draw(QPainter* painter) override {
		if (vtbl->draw == 0) {
			QGraphicsBlurEffect::draw(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->draw(vtbl, this, sigval1);

	}

	friend void QGraphicsBlurEffect_virtualbase_draw(void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (vtbl->sourceChanged == 0) {
			QGraphicsBlurEffect::sourceChanged(flags);
			return;
		}

		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		vtbl->sourceChanged(vtbl, this, sigval1);

	}

	friend void QGraphicsBlurEffect_virtualbase_sourceChanged(void* self, int flags);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsBlurEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsBlurEffect_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsBlurEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsBlurEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsBlurEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsBlurEffect_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsBlurEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsBlurEffect_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsBlurEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsBlurEffect_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsBlurEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsBlurEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsBlurEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

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

QGraphicsBlurEffect* QGraphicsBlurEffect_new(struct QGraphicsBlurEffect_VTable* vtbl) {
	return new VirtualQGraphicsBlurEffect(vtbl);
}

QGraphicsBlurEffect* QGraphicsBlurEffect_new2(struct QGraphicsBlurEffect_VTable* vtbl, QObject* parent) {
	return new VirtualQGraphicsBlurEffect(vtbl, parent);
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

void QGraphicsBlurEffect_connect_blurRadiusChanged(QGraphicsBlurEffect* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, double);
		void operator()(qreal blurRadius) {
			qreal blurRadius_ret = blurRadius;
			double sigval1 = static_cast<double>(blurRadius_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQGraphicsBlurEffect::connect(self, static_cast<void (QGraphicsBlurEffect::*)(qreal)>(&QGraphicsBlurEffect::blurRadiusChanged), self, local_caller{slot, callback, release});
}

void QGraphicsBlurEffect_blurHintsChanged(QGraphicsBlurEffect* self, int hints) {
	self->blurHintsChanged(static_cast<QGraphicsBlurEffect::BlurHints>(hints));
}

void QGraphicsBlurEffect_connect_blurHintsChanged(QGraphicsBlurEffect* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QGraphicsBlurEffect::BlurHints hints) {
			QGraphicsBlurEffect::BlurHints hints_ret = hints;
			int sigval1 = static_cast<int>(hints_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQGraphicsBlurEffect::connect(self, static_cast<void (QGraphicsBlurEffect::*)(QGraphicsBlurEffect::BlurHints)>(&QGraphicsBlurEffect::blurHintsChanged), self, local_caller{slot, callback, release});
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

QMetaObject* QGraphicsBlurEffect_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::metaObject();

}

void* QGraphicsBlurEffect_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::qt_metacast(param1);

}

int QGraphicsBlurEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QRectF* QGraphicsBlurEffect_virtualbase_boundingRectFor(const void* self, QRectF* rect) {

	return new QRectF(( (const VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::boundingRectFor(*rect));

}

void QGraphicsBlurEffect_virtualbase_draw(void* self, QPainter* painter) {

	( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::draw(painter);

}

void QGraphicsBlurEffect_virtualbase_sourceChanged(void* self, int flags) {

	( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::sourceChanged(static_cast<VirtualQGraphicsBlurEffect::ChangeFlags>(flags));

}

bool QGraphicsBlurEffect_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::event(event);

}

bool QGraphicsBlurEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::eventFilter(watched, event);

}

void QGraphicsBlurEffect_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::timerEvent(event);

}

void QGraphicsBlurEffect_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::childEvent(event);

}

void QGraphicsBlurEffect_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::customEvent(event);

}

void QGraphicsBlurEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsBlurEffect*)(self) )->QGraphicsBlurEffect::connectNotify(*signal);

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
	struct QGraphicsDropShadowEffect_VTable* vtbl;
public:

	VirtualQGraphicsDropShadowEffect(struct QGraphicsDropShadowEffect_VTable* vtbl): QGraphicsDropShadowEffect(), vtbl(vtbl) {};
	VirtualQGraphicsDropShadowEffect(struct QGraphicsDropShadowEffect_VTable* vtbl, QObject* parent): QGraphicsDropShadowEffect(parent), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsDropShadowEffect() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsDropShadowEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsDropShadowEffect_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsDropShadowEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsDropShadowEffect_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsDropShadowEffect::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsDropShadowEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRectFor(const QRectF& rect) const override {
		if (vtbl->boundingRectFor == 0) {
			return QGraphicsDropShadowEffect::boundingRectFor(rect);
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		QRectF* callback_return_value = vtbl->boundingRectFor(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QRectF* QGraphicsDropShadowEffect_virtualbase_boundingRectFor(const void* self, QRectF* rect);

	// Subclass to allow providing a Go implementation
	virtual void draw(QPainter* painter) override {
		if (vtbl->draw == 0) {
			QGraphicsDropShadowEffect::draw(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->draw(vtbl, this, sigval1);

	}

	friend void QGraphicsDropShadowEffect_virtualbase_draw(void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (vtbl->sourceChanged == 0) {
			QGraphicsDropShadowEffect::sourceChanged(flags);
			return;
		}

		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		vtbl->sourceChanged(vtbl, this, sigval1);

	}

	friend void QGraphicsDropShadowEffect_virtualbase_sourceChanged(void* self, int flags);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsDropShadowEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsDropShadowEffect_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsDropShadowEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsDropShadowEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsDropShadowEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsDropShadowEffect_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsDropShadowEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsDropShadowEffect_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsDropShadowEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsDropShadowEffect_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsDropShadowEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsDropShadowEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsDropShadowEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

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

QGraphicsDropShadowEffect* QGraphicsDropShadowEffect_new(struct QGraphicsDropShadowEffect_VTable* vtbl) {
	return new VirtualQGraphicsDropShadowEffect(vtbl);
}

QGraphicsDropShadowEffect* QGraphicsDropShadowEffect_new2(struct QGraphicsDropShadowEffect_VTable* vtbl, QObject* parent) {
	return new VirtualQGraphicsDropShadowEffect(vtbl, parent);
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

void QGraphicsDropShadowEffect_connect_offsetChanged(QGraphicsDropShadowEffect* self, intptr_t slot, void (*callback)(intptr_t, QPointF*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QPointF*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QPointF*);
		void operator()(const QPointF& offset) {
			const QPointF& offset_ret = offset;
			// Cast returned reference into pointer
			QPointF* sigval1 = const_cast<QPointF*>(&offset_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQGraphicsDropShadowEffect::connect(self, static_cast<void (QGraphicsDropShadowEffect::*)(const QPointF&)>(&QGraphicsDropShadowEffect::offsetChanged), self, local_caller{slot, callback, release});
}

void QGraphicsDropShadowEffect_blurRadiusChanged(QGraphicsDropShadowEffect* self, double blurRadius) {
	self->blurRadiusChanged(static_cast<qreal>(blurRadius));
}

void QGraphicsDropShadowEffect_connect_blurRadiusChanged(QGraphicsDropShadowEffect* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, double);
		void operator()(qreal blurRadius) {
			qreal blurRadius_ret = blurRadius;
			double sigval1 = static_cast<double>(blurRadius_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQGraphicsDropShadowEffect::connect(self, static_cast<void (QGraphicsDropShadowEffect::*)(qreal)>(&QGraphicsDropShadowEffect::blurRadiusChanged), self, local_caller{slot, callback, release});
}

void QGraphicsDropShadowEffect_colorChanged(QGraphicsDropShadowEffect* self, QColor* color) {
	self->colorChanged(*color);
}

void QGraphicsDropShadowEffect_connect_colorChanged(QGraphicsDropShadowEffect* self, intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QColor*);
		void operator()(const QColor& color) {
			const QColor& color_ret = color;
			// Cast returned reference into pointer
			QColor* sigval1 = const_cast<QColor*>(&color_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQGraphicsDropShadowEffect::connect(self, static_cast<void (QGraphicsDropShadowEffect::*)(const QColor&)>(&QGraphicsDropShadowEffect::colorChanged), self, local_caller{slot, callback, release});
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

QMetaObject* QGraphicsDropShadowEffect_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::metaObject();

}

void* QGraphicsDropShadowEffect_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::qt_metacast(param1);

}

int QGraphicsDropShadowEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QRectF* QGraphicsDropShadowEffect_virtualbase_boundingRectFor(const void* self, QRectF* rect) {

	return new QRectF(( (const VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::boundingRectFor(*rect));

}

void QGraphicsDropShadowEffect_virtualbase_draw(void* self, QPainter* painter) {

	( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::draw(painter);

}

void QGraphicsDropShadowEffect_virtualbase_sourceChanged(void* self, int flags) {

	( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::sourceChanged(static_cast<VirtualQGraphicsDropShadowEffect::ChangeFlags>(flags));

}

bool QGraphicsDropShadowEffect_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::event(event);

}

bool QGraphicsDropShadowEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::eventFilter(watched, event);

}

void QGraphicsDropShadowEffect_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::timerEvent(event);

}

void QGraphicsDropShadowEffect_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::childEvent(event);

}

void QGraphicsDropShadowEffect_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::customEvent(event);

}

void QGraphicsDropShadowEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsDropShadowEffect*)(self) )->QGraphicsDropShadowEffect::connectNotify(*signal);

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
	struct QGraphicsOpacityEffect_VTable* vtbl;
public:

	VirtualQGraphicsOpacityEffect(struct QGraphicsOpacityEffect_VTable* vtbl): QGraphicsOpacityEffect(), vtbl(vtbl) {};
	VirtualQGraphicsOpacityEffect(struct QGraphicsOpacityEffect_VTable* vtbl, QObject* parent): QGraphicsOpacityEffect(parent), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsOpacityEffect() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsOpacityEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsOpacityEffect_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsOpacityEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsOpacityEffect_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsOpacityEffect::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsOpacityEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void draw(QPainter* painter) override {
		if (vtbl->draw == 0) {
			QGraphicsOpacityEffect::draw(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->draw(vtbl, this, sigval1);

	}

	friend void QGraphicsOpacityEffect_virtualbase_draw(void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRectFor(const QRectF& sourceRect) const override {
		if (vtbl->boundingRectFor == 0) {
			return QGraphicsOpacityEffect::boundingRectFor(sourceRect);
		}

		const QRectF& sourceRect_ret = sourceRect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&sourceRect_ret);

		QRectF* callback_return_value = vtbl->boundingRectFor(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QRectF* QGraphicsOpacityEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect);

	// Subclass to allow providing a Go implementation
	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (vtbl->sourceChanged == 0) {
			QGraphicsOpacityEffect::sourceChanged(flags);
			return;
		}

		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		vtbl->sourceChanged(vtbl, this, sigval1);

	}

	friend void QGraphicsOpacityEffect_virtualbase_sourceChanged(void* self, int flags);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsOpacityEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsOpacityEffect_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsOpacityEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsOpacityEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsOpacityEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsOpacityEffect_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsOpacityEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsOpacityEffect_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsOpacityEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsOpacityEffect_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsOpacityEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsOpacityEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsOpacityEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

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

QGraphicsOpacityEffect* QGraphicsOpacityEffect_new(struct QGraphicsOpacityEffect_VTable* vtbl) {
	return new VirtualQGraphicsOpacityEffect(vtbl);
}

QGraphicsOpacityEffect* QGraphicsOpacityEffect_new2(struct QGraphicsOpacityEffect_VTable* vtbl, QObject* parent) {
	return new VirtualQGraphicsOpacityEffect(vtbl, parent);
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

void QGraphicsOpacityEffect_connect_opacityChanged(QGraphicsOpacityEffect* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, double);
		void operator()(qreal opacity) {
			qreal opacity_ret = opacity;
			double sigval1 = static_cast<double>(opacity_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQGraphicsOpacityEffect::connect(self, static_cast<void (QGraphicsOpacityEffect::*)(qreal)>(&QGraphicsOpacityEffect::opacityChanged), self, local_caller{slot, callback, release});
}

void QGraphicsOpacityEffect_opacityMaskChanged(QGraphicsOpacityEffect* self, QBrush* mask) {
	self->opacityMaskChanged(*mask);
}

void QGraphicsOpacityEffect_connect_opacityMaskChanged(QGraphicsOpacityEffect* self, intptr_t slot, void (*callback)(intptr_t, QBrush*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QBrush*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QBrush*);
		void operator()(const QBrush& mask) {
			const QBrush& mask_ret = mask;
			// Cast returned reference into pointer
			QBrush* sigval1 = const_cast<QBrush*>(&mask_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQGraphicsOpacityEffect::connect(self, static_cast<void (QGraphicsOpacityEffect::*)(const QBrush&)>(&QGraphicsOpacityEffect::opacityMaskChanged), self, local_caller{slot, callback, release});
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

QMetaObject* QGraphicsOpacityEffect_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::metaObject();

}

void* QGraphicsOpacityEffect_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::qt_metacast(param1);

}

int QGraphicsOpacityEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QGraphicsOpacityEffect_virtualbase_draw(void* self, QPainter* painter) {

	( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::draw(painter);

}

QRectF* QGraphicsOpacityEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect) {

	return new QRectF(( (const VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::boundingRectFor(*sourceRect));

}

void QGraphicsOpacityEffect_virtualbase_sourceChanged(void* self, int flags) {

	( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::sourceChanged(static_cast<VirtualQGraphicsOpacityEffect::ChangeFlags>(flags));

}

bool QGraphicsOpacityEffect_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::event(event);

}

bool QGraphicsOpacityEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::eventFilter(watched, event);

}

void QGraphicsOpacityEffect_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::timerEvent(event);

}

void QGraphicsOpacityEffect_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::childEvent(event);

}

void QGraphicsOpacityEffect_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::customEvent(event);

}

void QGraphicsOpacityEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsOpacityEffect*)(self) )->QGraphicsOpacityEffect::connectNotify(*signal);

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

