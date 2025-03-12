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
class VirtualQGraphicsEffect final : public QGraphicsEffect {
	const QGraphicsEffect_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsEffect_VTable* QGraphicsEffect_vtbl(const VirtualQGraphicsEffect* self);
	friend void* QGraphicsEffect_vdata(const VirtualQGraphicsEffect* self);
	friend void QGraphicsEffect_setVdata(VirtualQGraphicsEffect* self, void* vdata);

	VirtualQGraphicsEffect(const QGraphicsEffect_VTable* vtbl, void* vdata): QGraphicsEffect(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsEffect(const QGraphicsEffect_VTable* vtbl, void* vdata, QObject* parent): QGraphicsEffect(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsEffect() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsEffect_virtualbase_metaObject(const VirtualQGraphicsEffect* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsEffect_virtualbase_metacast(VirtualQGraphicsEffect* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsEffect::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsEffect_virtualbase_metacall(VirtualQGraphicsEffect* self, int param1, int param2, void** param3);

	virtual QRectF boundingRectFor(const QRectF& sourceRect) const override {
		if (vtbl->boundingRectFor == 0) {
			return QGraphicsEffect::boundingRectFor(sourceRect);
		}

		const QRectF& sourceRect_ret = sourceRect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&sourceRect_ret);

		QRectF* callback_return_value = vtbl->boundingRectFor(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsEffect_virtualbase_boundingRectFor(const VirtualQGraphicsEffect* self, QRectF* sourceRect);

	virtual void draw(QPainter* painter) override {
		if (vtbl->draw == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QPainter* sigval1 = painter;

		vtbl->draw(this, sigval1);

	}

	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (vtbl->sourceChanged == 0) {
			QGraphicsEffect::sourceChanged(flags);
			return;
		}

		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		vtbl->sourceChanged(this, sigval1);

	}

	friend void QGraphicsEffect_virtualbase_sourceChanged(VirtualQGraphicsEffect* self, int flags);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsEffect_virtualbase_event(VirtualQGraphicsEffect* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsEffect_virtualbase_eventFilter(VirtualQGraphicsEffect* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGraphicsEffect_virtualbase_timerEvent(VirtualQGraphicsEffect* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGraphicsEffect_virtualbase_childEvent(VirtualQGraphicsEffect* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGraphicsEffect_virtualbase_customEvent(VirtualQGraphicsEffect* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGraphicsEffect_virtualbase_connectNotify(VirtualQGraphicsEffect* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGraphicsEffect_virtualbase_disconnectNotify(VirtualQGraphicsEffect* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsEffect_protectedbase_updateBoundingRect(VirtualQGraphicsEffect* self);
	friend bool QGraphicsEffect_protectedbase_sourceIsPixmap(const VirtualQGraphicsEffect* self);
	friend QRectF* QGraphicsEffect_protectedbase_sourceBoundingRect(const VirtualQGraphicsEffect* self);
	friend void QGraphicsEffect_protectedbase_drawSource(VirtualQGraphicsEffect* self, QPainter* painter);
	friend QPixmap* QGraphicsEffect_protectedbase_sourcePixmap(const VirtualQGraphicsEffect* self);
	friend QRectF* QGraphicsEffect_protectedbase_sourceBoundingRect1(const VirtualQGraphicsEffect* self, int system);
	friend QPixmap* QGraphicsEffect_protectedbase_sourcePixmap1(const VirtualQGraphicsEffect* self, int system);
	friend QPixmap* QGraphicsEffect_protectedbase_sourcePixmap2(const VirtualQGraphicsEffect* self, int system, QPoint* offset);
	friend QPixmap* QGraphicsEffect_protectedbase_sourcePixmap3(const VirtualQGraphicsEffect* self, int system, QPoint* offset, int mode);
	friend QObject* QGraphicsEffect_protectedbase_sender(const VirtualQGraphicsEffect* self);
	friend int QGraphicsEffect_protectedbase_senderSignalIndex(const VirtualQGraphicsEffect* self);
	friend int QGraphicsEffect_protectedbase_receivers(const VirtualQGraphicsEffect* self, const char* signal);
	friend bool QGraphicsEffect_protectedbase_isSignalConnected(const VirtualQGraphicsEffect* self, QMetaMethod* signal);
};

VirtualQGraphicsEffect* QGraphicsEffect_new(const QGraphicsEffect_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsEffect(vtbl, vdata);
}

VirtualQGraphicsEffect* QGraphicsEffect_new2(const QGraphicsEffect_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQGraphicsEffect(vtbl, vdata, parent);
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

void QGraphicsEffect_connect_enabledChanged(VirtualQGraphicsEffect* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
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

QMetaObject* QGraphicsEffect_virtualbase_metaObject(const VirtualQGraphicsEffect* self) {

	return (QMetaObject*) self->QGraphicsEffect::metaObject();
}

void* QGraphicsEffect_virtualbase_metacast(VirtualQGraphicsEffect* self, const char* param1) {

	return self->QGraphicsEffect::qt_metacast(param1);
}

int QGraphicsEffect_virtualbase_metacall(VirtualQGraphicsEffect* self, int param1, int param2, void** param3) {

	return self->QGraphicsEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QRectF* QGraphicsEffect_virtualbase_boundingRectFor(const VirtualQGraphicsEffect* self, QRectF* sourceRect) {

	return new QRectF(self->QGraphicsEffect::boundingRectFor(*sourceRect));
}

void QGraphicsEffect_virtualbase_sourceChanged(VirtualQGraphicsEffect* self, int flags) {

	self->QGraphicsEffect::sourceChanged(static_cast<VirtualQGraphicsEffect::ChangeFlags>(flags));
}

bool QGraphicsEffect_virtualbase_event(VirtualQGraphicsEffect* self, QEvent* event) {

	return self->QGraphicsEffect::event(event);
}

bool QGraphicsEffect_virtualbase_eventFilter(VirtualQGraphicsEffect* self, QObject* watched, QEvent* event) {

	return self->QGraphicsEffect::eventFilter(watched, event);
}

void QGraphicsEffect_virtualbase_timerEvent(VirtualQGraphicsEffect* self, QTimerEvent* event) {

	self->QGraphicsEffect::timerEvent(event);
}

void QGraphicsEffect_virtualbase_childEvent(VirtualQGraphicsEffect* self, QChildEvent* event) {

	self->QGraphicsEffect::childEvent(event);
}

void QGraphicsEffect_virtualbase_customEvent(VirtualQGraphicsEffect* self, QEvent* event) {

	self->QGraphicsEffect::customEvent(event);
}

void QGraphicsEffect_virtualbase_connectNotify(VirtualQGraphicsEffect* self, QMetaMethod* signal) {

	self->QGraphicsEffect::connectNotify(*signal);
}

void QGraphicsEffect_virtualbase_disconnectNotify(VirtualQGraphicsEffect* self, QMetaMethod* signal) {

	self->QGraphicsEffect::disconnectNotify(*signal);
}

const QMetaObject* QGraphicsEffect_staticMetaObject() { return &QGraphicsEffect::staticMetaObject; }

const QGraphicsEffect_VTable* QGraphicsEffect_vtbl(const VirtualQGraphicsEffect* self) { return self->vtbl; }
void* QGraphicsEffect_vdata(const VirtualQGraphicsEffect* self) { return self->vdata; }
void QGraphicsEffect_setVdata(VirtualQGraphicsEffect* self, void* vdata) { self->vdata = vdata; }

void QGraphicsEffect_protectedbase_updateBoundingRect(VirtualQGraphicsEffect* self) {
	self->updateBoundingRect();
}

bool QGraphicsEffect_protectedbase_sourceIsPixmap(const VirtualQGraphicsEffect* self) {
	return self->sourceIsPixmap();
}

QRectF* QGraphicsEffect_protectedbase_sourceBoundingRect(const VirtualQGraphicsEffect* self) {
	return new QRectF(self->sourceBoundingRect());
}

void QGraphicsEffect_protectedbase_drawSource(VirtualQGraphicsEffect* self, QPainter* painter) {
	self->drawSource(painter);
}

QPixmap* QGraphicsEffect_protectedbase_sourcePixmap(const VirtualQGraphicsEffect* self) {
	return new QPixmap(self->sourcePixmap());
}

QRectF* QGraphicsEffect_protectedbase_sourceBoundingRect1(const VirtualQGraphicsEffect* self, int system) {
	return new QRectF(self->sourceBoundingRect(static_cast<Qt::CoordinateSystem>(system)));
}

QPixmap* QGraphicsEffect_protectedbase_sourcePixmap1(const VirtualQGraphicsEffect* self, int system) {
	return new QPixmap(self->sourcePixmap(static_cast<Qt::CoordinateSystem>(system)));
}

QPixmap* QGraphicsEffect_protectedbase_sourcePixmap2(const VirtualQGraphicsEffect* self, int system, QPoint* offset) {
	return new QPixmap(self->sourcePixmap(static_cast<Qt::CoordinateSystem>(system), offset));
}

QPixmap* QGraphicsEffect_protectedbase_sourcePixmap3(const VirtualQGraphicsEffect* self, int system, QPoint* offset, int mode) {
	return new QPixmap(self->sourcePixmap(static_cast<Qt::CoordinateSystem>(system), offset, static_cast<VirtualQGraphicsEffect::PixmapPadMode>(mode)));
}

QObject* QGraphicsEffect_protectedbase_sender(const VirtualQGraphicsEffect* self) {
	return self->sender();
}

int QGraphicsEffect_protectedbase_senderSignalIndex(const VirtualQGraphicsEffect* self) {
	return self->senderSignalIndex();
}

int QGraphicsEffect_protectedbase_receivers(const VirtualQGraphicsEffect* self, const char* signal) {
	return self->receivers(signal);
}

bool QGraphicsEffect_protectedbase_isSignalConnected(const VirtualQGraphicsEffect* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGraphicsEffect_delete(QGraphicsEffect* self) {
	delete self;
}

class VirtualQGraphicsColorizeEffect final : public QGraphicsColorizeEffect {
	const QGraphicsColorizeEffect_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsColorizeEffect_VTable* QGraphicsColorizeEffect_vtbl(const VirtualQGraphicsColorizeEffect* self);
	friend void* QGraphicsColorizeEffect_vdata(const VirtualQGraphicsColorizeEffect* self);
	friend void QGraphicsColorizeEffect_setVdata(VirtualQGraphicsColorizeEffect* self, void* vdata);

	VirtualQGraphicsColorizeEffect(const QGraphicsColorizeEffect_VTable* vtbl, void* vdata): QGraphicsColorizeEffect(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsColorizeEffect(const QGraphicsColorizeEffect_VTable* vtbl, void* vdata, QObject* parent): QGraphicsColorizeEffect(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsColorizeEffect() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsColorizeEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsColorizeEffect_virtualbase_metaObject(const VirtualQGraphicsColorizeEffect* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsColorizeEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsColorizeEffect_virtualbase_metacast(VirtualQGraphicsColorizeEffect* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsColorizeEffect::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsColorizeEffect_virtualbase_metacall(VirtualQGraphicsColorizeEffect* self, int param1, int param2, void** param3);

	virtual void draw(QPainter* painter) override {
		if (vtbl->draw == 0) {
			QGraphicsColorizeEffect::draw(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->draw(this, sigval1);

	}

	friend void QGraphicsColorizeEffect_virtualbase_draw(VirtualQGraphicsColorizeEffect* self, QPainter* painter);

	virtual QRectF boundingRectFor(const QRectF& sourceRect) const override {
		if (vtbl->boundingRectFor == 0) {
			return QGraphicsColorizeEffect::boundingRectFor(sourceRect);
		}

		const QRectF& sourceRect_ret = sourceRect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&sourceRect_ret);

		QRectF* callback_return_value = vtbl->boundingRectFor(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsColorizeEffect_virtualbase_boundingRectFor(const VirtualQGraphicsColorizeEffect* self, QRectF* sourceRect);

	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (vtbl->sourceChanged == 0) {
			QGraphicsColorizeEffect::sourceChanged(flags);
			return;
		}

		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		vtbl->sourceChanged(this, sigval1);

	}

	friend void QGraphicsColorizeEffect_virtualbase_sourceChanged(VirtualQGraphicsColorizeEffect* self, int flags);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsColorizeEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsColorizeEffect_virtualbase_event(VirtualQGraphicsColorizeEffect* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsColorizeEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsColorizeEffect_virtualbase_eventFilter(VirtualQGraphicsColorizeEffect* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsColorizeEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGraphicsColorizeEffect_virtualbase_timerEvent(VirtualQGraphicsColorizeEffect* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsColorizeEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGraphicsColorizeEffect_virtualbase_childEvent(VirtualQGraphicsColorizeEffect* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsColorizeEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGraphicsColorizeEffect_virtualbase_customEvent(VirtualQGraphicsColorizeEffect* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsColorizeEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGraphicsColorizeEffect_virtualbase_connectNotify(VirtualQGraphicsColorizeEffect* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsColorizeEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGraphicsColorizeEffect_virtualbase_disconnectNotify(VirtualQGraphicsColorizeEffect* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsColorizeEffect_protectedbase_updateBoundingRect(VirtualQGraphicsColorizeEffect* self);
	friend bool QGraphicsColorizeEffect_protectedbase_sourceIsPixmap(const VirtualQGraphicsColorizeEffect* self);
	friend QRectF* QGraphicsColorizeEffect_protectedbase_sourceBoundingRect(const VirtualQGraphicsColorizeEffect* self);
	friend void QGraphicsColorizeEffect_protectedbase_drawSource(VirtualQGraphicsColorizeEffect* self, QPainter* painter);
	friend QPixmap* QGraphicsColorizeEffect_protectedbase_sourcePixmap(const VirtualQGraphicsColorizeEffect* self);
	friend QObject* QGraphicsColorizeEffect_protectedbase_sender(const VirtualQGraphicsColorizeEffect* self);
	friend int QGraphicsColorizeEffect_protectedbase_senderSignalIndex(const VirtualQGraphicsColorizeEffect* self);
	friend int QGraphicsColorizeEffect_protectedbase_receivers(const VirtualQGraphicsColorizeEffect* self, const char* signal);
	friend bool QGraphicsColorizeEffect_protectedbase_isSignalConnected(const VirtualQGraphicsColorizeEffect* self, QMetaMethod* signal);
};

VirtualQGraphicsColorizeEffect* QGraphicsColorizeEffect_new(const QGraphicsColorizeEffect_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsColorizeEffect(vtbl, vdata);
}

VirtualQGraphicsColorizeEffect* QGraphicsColorizeEffect_new2(const QGraphicsColorizeEffect_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQGraphicsColorizeEffect(vtbl, vdata, parent);
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

void QGraphicsColorizeEffect_connect_colorChanged(VirtualQGraphicsColorizeEffect* self, intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t)) {
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

void QGraphicsColorizeEffect_connect_strengthChanged(VirtualQGraphicsColorizeEffect* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
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

QMetaObject* QGraphicsColorizeEffect_virtualbase_metaObject(const VirtualQGraphicsColorizeEffect* self) {

	return (QMetaObject*) self->QGraphicsColorizeEffect::metaObject();
}

void* QGraphicsColorizeEffect_virtualbase_metacast(VirtualQGraphicsColorizeEffect* self, const char* param1) {

	return self->QGraphicsColorizeEffect::qt_metacast(param1);
}

int QGraphicsColorizeEffect_virtualbase_metacall(VirtualQGraphicsColorizeEffect* self, int param1, int param2, void** param3) {

	return self->QGraphicsColorizeEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QGraphicsColorizeEffect_virtualbase_draw(VirtualQGraphicsColorizeEffect* self, QPainter* painter) {

	self->QGraphicsColorizeEffect::draw(painter);
}

QRectF* QGraphicsColorizeEffect_virtualbase_boundingRectFor(const VirtualQGraphicsColorizeEffect* self, QRectF* sourceRect) {

	return new QRectF(self->QGraphicsColorizeEffect::boundingRectFor(*sourceRect));
}

void QGraphicsColorizeEffect_virtualbase_sourceChanged(VirtualQGraphicsColorizeEffect* self, int flags) {

	self->QGraphicsColorizeEffect::sourceChanged(static_cast<VirtualQGraphicsColorizeEffect::ChangeFlags>(flags));
}

bool QGraphicsColorizeEffect_virtualbase_event(VirtualQGraphicsColorizeEffect* self, QEvent* event) {

	return self->QGraphicsColorizeEffect::event(event);
}

bool QGraphicsColorizeEffect_virtualbase_eventFilter(VirtualQGraphicsColorizeEffect* self, QObject* watched, QEvent* event) {

	return self->QGraphicsColorizeEffect::eventFilter(watched, event);
}

void QGraphicsColorizeEffect_virtualbase_timerEvent(VirtualQGraphicsColorizeEffect* self, QTimerEvent* event) {

	self->QGraphicsColorizeEffect::timerEvent(event);
}

void QGraphicsColorizeEffect_virtualbase_childEvent(VirtualQGraphicsColorizeEffect* self, QChildEvent* event) {

	self->QGraphicsColorizeEffect::childEvent(event);
}

void QGraphicsColorizeEffect_virtualbase_customEvent(VirtualQGraphicsColorizeEffect* self, QEvent* event) {

	self->QGraphicsColorizeEffect::customEvent(event);
}

void QGraphicsColorizeEffect_virtualbase_connectNotify(VirtualQGraphicsColorizeEffect* self, QMetaMethod* signal) {

	self->QGraphicsColorizeEffect::connectNotify(*signal);
}

void QGraphicsColorizeEffect_virtualbase_disconnectNotify(VirtualQGraphicsColorizeEffect* self, QMetaMethod* signal) {

	self->QGraphicsColorizeEffect::disconnectNotify(*signal);
}

const QMetaObject* QGraphicsColorizeEffect_staticMetaObject() { return &QGraphicsColorizeEffect::staticMetaObject; }

const QGraphicsColorizeEffect_VTable* QGraphicsColorizeEffect_vtbl(const VirtualQGraphicsColorizeEffect* self) { return self->vtbl; }
void* QGraphicsColorizeEffect_vdata(const VirtualQGraphicsColorizeEffect* self) { return self->vdata; }
void QGraphicsColorizeEffect_setVdata(VirtualQGraphicsColorizeEffect* self, void* vdata) { self->vdata = vdata; }

void QGraphicsColorizeEffect_protectedbase_updateBoundingRect(VirtualQGraphicsColorizeEffect* self) {
	self->updateBoundingRect();
}

bool QGraphicsColorizeEffect_protectedbase_sourceIsPixmap(const VirtualQGraphicsColorizeEffect* self) {
	return self->sourceIsPixmap();
}

QRectF* QGraphicsColorizeEffect_protectedbase_sourceBoundingRect(const VirtualQGraphicsColorizeEffect* self) {
	return new QRectF(self->sourceBoundingRect());
}

void QGraphicsColorizeEffect_protectedbase_drawSource(VirtualQGraphicsColorizeEffect* self, QPainter* painter) {
	self->drawSource(painter);
}

QPixmap* QGraphicsColorizeEffect_protectedbase_sourcePixmap(const VirtualQGraphicsColorizeEffect* self) {
	return new QPixmap(self->sourcePixmap());
}

QObject* QGraphicsColorizeEffect_protectedbase_sender(const VirtualQGraphicsColorizeEffect* self) {
	return self->sender();
}

int QGraphicsColorizeEffect_protectedbase_senderSignalIndex(const VirtualQGraphicsColorizeEffect* self) {
	return self->senderSignalIndex();
}

int QGraphicsColorizeEffect_protectedbase_receivers(const VirtualQGraphicsColorizeEffect* self, const char* signal) {
	return self->receivers(signal);
}

bool QGraphicsColorizeEffect_protectedbase_isSignalConnected(const VirtualQGraphicsColorizeEffect* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGraphicsColorizeEffect_delete(QGraphicsColorizeEffect* self) {
	delete self;
}

class VirtualQGraphicsBlurEffect final : public QGraphicsBlurEffect {
	const QGraphicsBlurEffect_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsBlurEffect_VTable* QGraphicsBlurEffect_vtbl(const VirtualQGraphicsBlurEffect* self);
	friend void* QGraphicsBlurEffect_vdata(const VirtualQGraphicsBlurEffect* self);
	friend void QGraphicsBlurEffect_setVdata(VirtualQGraphicsBlurEffect* self, void* vdata);

	VirtualQGraphicsBlurEffect(const QGraphicsBlurEffect_VTable* vtbl, void* vdata): QGraphicsBlurEffect(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsBlurEffect(const QGraphicsBlurEffect_VTable* vtbl, void* vdata, QObject* parent): QGraphicsBlurEffect(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsBlurEffect() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsBlurEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsBlurEffect_virtualbase_metaObject(const VirtualQGraphicsBlurEffect* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsBlurEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsBlurEffect_virtualbase_metacast(VirtualQGraphicsBlurEffect* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsBlurEffect::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsBlurEffect_virtualbase_metacall(VirtualQGraphicsBlurEffect* self, int param1, int param2, void** param3);

	virtual QRectF boundingRectFor(const QRectF& rect) const override {
		if (vtbl->boundingRectFor == 0) {
			return QGraphicsBlurEffect::boundingRectFor(rect);
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		QRectF* callback_return_value = vtbl->boundingRectFor(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsBlurEffect_virtualbase_boundingRectFor(const VirtualQGraphicsBlurEffect* self, QRectF* rect);

	virtual void draw(QPainter* painter) override {
		if (vtbl->draw == 0) {
			QGraphicsBlurEffect::draw(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->draw(this, sigval1);

	}

	friend void QGraphicsBlurEffect_virtualbase_draw(VirtualQGraphicsBlurEffect* self, QPainter* painter);

	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (vtbl->sourceChanged == 0) {
			QGraphicsBlurEffect::sourceChanged(flags);
			return;
		}

		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		vtbl->sourceChanged(this, sigval1);

	}

	friend void QGraphicsBlurEffect_virtualbase_sourceChanged(VirtualQGraphicsBlurEffect* self, int flags);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsBlurEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsBlurEffect_virtualbase_event(VirtualQGraphicsBlurEffect* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsBlurEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsBlurEffect_virtualbase_eventFilter(VirtualQGraphicsBlurEffect* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsBlurEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGraphicsBlurEffect_virtualbase_timerEvent(VirtualQGraphicsBlurEffect* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsBlurEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGraphicsBlurEffect_virtualbase_childEvent(VirtualQGraphicsBlurEffect* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsBlurEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGraphicsBlurEffect_virtualbase_customEvent(VirtualQGraphicsBlurEffect* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsBlurEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGraphicsBlurEffect_virtualbase_connectNotify(VirtualQGraphicsBlurEffect* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsBlurEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGraphicsBlurEffect_virtualbase_disconnectNotify(VirtualQGraphicsBlurEffect* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsBlurEffect_protectedbase_updateBoundingRect(VirtualQGraphicsBlurEffect* self);
	friend bool QGraphicsBlurEffect_protectedbase_sourceIsPixmap(const VirtualQGraphicsBlurEffect* self);
	friend QRectF* QGraphicsBlurEffect_protectedbase_sourceBoundingRect(const VirtualQGraphicsBlurEffect* self);
	friend void QGraphicsBlurEffect_protectedbase_drawSource(VirtualQGraphicsBlurEffect* self, QPainter* painter);
	friend QPixmap* QGraphicsBlurEffect_protectedbase_sourcePixmap(const VirtualQGraphicsBlurEffect* self);
	friend QObject* QGraphicsBlurEffect_protectedbase_sender(const VirtualQGraphicsBlurEffect* self);
	friend int QGraphicsBlurEffect_protectedbase_senderSignalIndex(const VirtualQGraphicsBlurEffect* self);
	friend int QGraphicsBlurEffect_protectedbase_receivers(const VirtualQGraphicsBlurEffect* self, const char* signal);
	friend bool QGraphicsBlurEffect_protectedbase_isSignalConnected(const VirtualQGraphicsBlurEffect* self, QMetaMethod* signal);
};

VirtualQGraphicsBlurEffect* QGraphicsBlurEffect_new(const QGraphicsBlurEffect_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsBlurEffect(vtbl, vdata);
}

VirtualQGraphicsBlurEffect* QGraphicsBlurEffect_new2(const QGraphicsBlurEffect_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQGraphicsBlurEffect(vtbl, vdata, parent);
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

void QGraphicsBlurEffect_connect_blurRadiusChanged(VirtualQGraphicsBlurEffect* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
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

void QGraphicsBlurEffect_connect_blurHintsChanged(VirtualQGraphicsBlurEffect* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
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

QMetaObject* QGraphicsBlurEffect_virtualbase_metaObject(const VirtualQGraphicsBlurEffect* self) {

	return (QMetaObject*) self->QGraphicsBlurEffect::metaObject();
}

void* QGraphicsBlurEffect_virtualbase_metacast(VirtualQGraphicsBlurEffect* self, const char* param1) {

	return self->QGraphicsBlurEffect::qt_metacast(param1);
}

int QGraphicsBlurEffect_virtualbase_metacall(VirtualQGraphicsBlurEffect* self, int param1, int param2, void** param3) {

	return self->QGraphicsBlurEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QRectF* QGraphicsBlurEffect_virtualbase_boundingRectFor(const VirtualQGraphicsBlurEffect* self, QRectF* rect) {

	return new QRectF(self->QGraphicsBlurEffect::boundingRectFor(*rect));
}

void QGraphicsBlurEffect_virtualbase_draw(VirtualQGraphicsBlurEffect* self, QPainter* painter) {

	self->QGraphicsBlurEffect::draw(painter);
}

void QGraphicsBlurEffect_virtualbase_sourceChanged(VirtualQGraphicsBlurEffect* self, int flags) {

	self->QGraphicsBlurEffect::sourceChanged(static_cast<VirtualQGraphicsBlurEffect::ChangeFlags>(flags));
}

bool QGraphicsBlurEffect_virtualbase_event(VirtualQGraphicsBlurEffect* self, QEvent* event) {

	return self->QGraphicsBlurEffect::event(event);
}

bool QGraphicsBlurEffect_virtualbase_eventFilter(VirtualQGraphicsBlurEffect* self, QObject* watched, QEvent* event) {

	return self->QGraphicsBlurEffect::eventFilter(watched, event);
}

void QGraphicsBlurEffect_virtualbase_timerEvent(VirtualQGraphicsBlurEffect* self, QTimerEvent* event) {

	self->QGraphicsBlurEffect::timerEvent(event);
}

void QGraphicsBlurEffect_virtualbase_childEvent(VirtualQGraphicsBlurEffect* self, QChildEvent* event) {

	self->QGraphicsBlurEffect::childEvent(event);
}

void QGraphicsBlurEffect_virtualbase_customEvent(VirtualQGraphicsBlurEffect* self, QEvent* event) {

	self->QGraphicsBlurEffect::customEvent(event);
}

void QGraphicsBlurEffect_virtualbase_connectNotify(VirtualQGraphicsBlurEffect* self, QMetaMethod* signal) {

	self->QGraphicsBlurEffect::connectNotify(*signal);
}

void QGraphicsBlurEffect_virtualbase_disconnectNotify(VirtualQGraphicsBlurEffect* self, QMetaMethod* signal) {

	self->QGraphicsBlurEffect::disconnectNotify(*signal);
}

const QMetaObject* QGraphicsBlurEffect_staticMetaObject() { return &QGraphicsBlurEffect::staticMetaObject; }

const QGraphicsBlurEffect_VTable* QGraphicsBlurEffect_vtbl(const VirtualQGraphicsBlurEffect* self) { return self->vtbl; }
void* QGraphicsBlurEffect_vdata(const VirtualQGraphicsBlurEffect* self) { return self->vdata; }
void QGraphicsBlurEffect_setVdata(VirtualQGraphicsBlurEffect* self, void* vdata) { self->vdata = vdata; }

void QGraphicsBlurEffect_protectedbase_updateBoundingRect(VirtualQGraphicsBlurEffect* self) {
	self->updateBoundingRect();
}

bool QGraphicsBlurEffect_protectedbase_sourceIsPixmap(const VirtualQGraphicsBlurEffect* self) {
	return self->sourceIsPixmap();
}

QRectF* QGraphicsBlurEffect_protectedbase_sourceBoundingRect(const VirtualQGraphicsBlurEffect* self) {
	return new QRectF(self->sourceBoundingRect());
}

void QGraphicsBlurEffect_protectedbase_drawSource(VirtualQGraphicsBlurEffect* self, QPainter* painter) {
	self->drawSource(painter);
}

QPixmap* QGraphicsBlurEffect_protectedbase_sourcePixmap(const VirtualQGraphicsBlurEffect* self) {
	return new QPixmap(self->sourcePixmap());
}

QObject* QGraphicsBlurEffect_protectedbase_sender(const VirtualQGraphicsBlurEffect* self) {
	return self->sender();
}

int QGraphicsBlurEffect_protectedbase_senderSignalIndex(const VirtualQGraphicsBlurEffect* self) {
	return self->senderSignalIndex();
}

int QGraphicsBlurEffect_protectedbase_receivers(const VirtualQGraphicsBlurEffect* self, const char* signal) {
	return self->receivers(signal);
}

bool QGraphicsBlurEffect_protectedbase_isSignalConnected(const VirtualQGraphicsBlurEffect* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGraphicsBlurEffect_delete(QGraphicsBlurEffect* self) {
	delete self;
}

class VirtualQGraphicsDropShadowEffect final : public QGraphicsDropShadowEffect {
	const QGraphicsDropShadowEffect_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsDropShadowEffect_VTable* QGraphicsDropShadowEffect_vtbl(const VirtualQGraphicsDropShadowEffect* self);
	friend void* QGraphicsDropShadowEffect_vdata(const VirtualQGraphicsDropShadowEffect* self);
	friend void QGraphicsDropShadowEffect_setVdata(VirtualQGraphicsDropShadowEffect* self, void* vdata);

	VirtualQGraphicsDropShadowEffect(const QGraphicsDropShadowEffect_VTable* vtbl, void* vdata): QGraphicsDropShadowEffect(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsDropShadowEffect(const QGraphicsDropShadowEffect_VTable* vtbl, void* vdata, QObject* parent): QGraphicsDropShadowEffect(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsDropShadowEffect() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsDropShadowEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsDropShadowEffect_virtualbase_metaObject(const VirtualQGraphicsDropShadowEffect* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsDropShadowEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsDropShadowEffect_virtualbase_metacast(VirtualQGraphicsDropShadowEffect* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsDropShadowEffect::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsDropShadowEffect_virtualbase_metacall(VirtualQGraphicsDropShadowEffect* self, int param1, int param2, void** param3);

	virtual QRectF boundingRectFor(const QRectF& rect) const override {
		if (vtbl->boundingRectFor == 0) {
			return QGraphicsDropShadowEffect::boundingRectFor(rect);
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		QRectF* callback_return_value = vtbl->boundingRectFor(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsDropShadowEffect_virtualbase_boundingRectFor(const VirtualQGraphicsDropShadowEffect* self, QRectF* rect);

	virtual void draw(QPainter* painter) override {
		if (vtbl->draw == 0) {
			QGraphicsDropShadowEffect::draw(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->draw(this, sigval1);

	}

	friend void QGraphicsDropShadowEffect_virtualbase_draw(VirtualQGraphicsDropShadowEffect* self, QPainter* painter);

	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (vtbl->sourceChanged == 0) {
			QGraphicsDropShadowEffect::sourceChanged(flags);
			return;
		}

		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		vtbl->sourceChanged(this, sigval1);

	}

	friend void QGraphicsDropShadowEffect_virtualbase_sourceChanged(VirtualQGraphicsDropShadowEffect* self, int flags);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsDropShadowEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsDropShadowEffect_virtualbase_event(VirtualQGraphicsDropShadowEffect* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsDropShadowEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsDropShadowEffect_virtualbase_eventFilter(VirtualQGraphicsDropShadowEffect* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsDropShadowEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGraphicsDropShadowEffect_virtualbase_timerEvent(VirtualQGraphicsDropShadowEffect* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsDropShadowEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGraphicsDropShadowEffect_virtualbase_childEvent(VirtualQGraphicsDropShadowEffect* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsDropShadowEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGraphicsDropShadowEffect_virtualbase_customEvent(VirtualQGraphicsDropShadowEffect* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsDropShadowEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGraphicsDropShadowEffect_virtualbase_connectNotify(VirtualQGraphicsDropShadowEffect* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsDropShadowEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGraphicsDropShadowEffect_virtualbase_disconnectNotify(VirtualQGraphicsDropShadowEffect* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsDropShadowEffect_protectedbase_updateBoundingRect(VirtualQGraphicsDropShadowEffect* self);
	friend bool QGraphicsDropShadowEffect_protectedbase_sourceIsPixmap(const VirtualQGraphicsDropShadowEffect* self);
	friend QRectF* QGraphicsDropShadowEffect_protectedbase_sourceBoundingRect(const VirtualQGraphicsDropShadowEffect* self);
	friend void QGraphicsDropShadowEffect_protectedbase_drawSource(VirtualQGraphicsDropShadowEffect* self, QPainter* painter);
	friend QPixmap* QGraphicsDropShadowEffect_protectedbase_sourcePixmap(const VirtualQGraphicsDropShadowEffect* self);
	friend QObject* QGraphicsDropShadowEffect_protectedbase_sender(const VirtualQGraphicsDropShadowEffect* self);
	friend int QGraphicsDropShadowEffect_protectedbase_senderSignalIndex(const VirtualQGraphicsDropShadowEffect* self);
	friend int QGraphicsDropShadowEffect_protectedbase_receivers(const VirtualQGraphicsDropShadowEffect* self, const char* signal);
	friend bool QGraphicsDropShadowEffect_protectedbase_isSignalConnected(const VirtualQGraphicsDropShadowEffect* self, QMetaMethod* signal);
};

VirtualQGraphicsDropShadowEffect* QGraphicsDropShadowEffect_new(const QGraphicsDropShadowEffect_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsDropShadowEffect(vtbl, vdata);
}

VirtualQGraphicsDropShadowEffect* QGraphicsDropShadowEffect_new2(const QGraphicsDropShadowEffect_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQGraphicsDropShadowEffect(vtbl, vdata, parent);
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

void QGraphicsDropShadowEffect_connect_offsetChanged(VirtualQGraphicsDropShadowEffect* self, intptr_t slot, void (*callback)(intptr_t, QPointF*), void (*release)(intptr_t)) {
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

void QGraphicsDropShadowEffect_connect_blurRadiusChanged(VirtualQGraphicsDropShadowEffect* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
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

void QGraphicsDropShadowEffect_connect_colorChanged(VirtualQGraphicsDropShadowEffect* self, intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t)) {
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

QMetaObject* QGraphicsDropShadowEffect_virtualbase_metaObject(const VirtualQGraphicsDropShadowEffect* self) {

	return (QMetaObject*) self->QGraphicsDropShadowEffect::metaObject();
}

void* QGraphicsDropShadowEffect_virtualbase_metacast(VirtualQGraphicsDropShadowEffect* self, const char* param1) {

	return self->QGraphicsDropShadowEffect::qt_metacast(param1);
}

int QGraphicsDropShadowEffect_virtualbase_metacall(VirtualQGraphicsDropShadowEffect* self, int param1, int param2, void** param3) {

	return self->QGraphicsDropShadowEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QRectF* QGraphicsDropShadowEffect_virtualbase_boundingRectFor(const VirtualQGraphicsDropShadowEffect* self, QRectF* rect) {

	return new QRectF(self->QGraphicsDropShadowEffect::boundingRectFor(*rect));
}

void QGraphicsDropShadowEffect_virtualbase_draw(VirtualQGraphicsDropShadowEffect* self, QPainter* painter) {

	self->QGraphicsDropShadowEffect::draw(painter);
}

void QGraphicsDropShadowEffect_virtualbase_sourceChanged(VirtualQGraphicsDropShadowEffect* self, int flags) {

	self->QGraphicsDropShadowEffect::sourceChanged(static_cast<VirtualQGraphicsDropShadowEffect::ChangeFlags>(flags));
}

bool QGraphicsDropShadowEffect_virtualbase_event(VirtualQGraphicsDropShadowEffect* self, QEvent* event) {

	return self->QGraphicsDropShadowEffect::event(event);
}

bool QGraphicsDropShadowEffect_virtualbase_eventFilter(VirtualQGraphicsDropShadowEffect* self, QObject* watched, QEvent* event) {

	return self->QGraphicsDropShadowEffect::eventFilter(watched, event);
}

void QGraphicsDropShadowEffect_virtualbase_timerEvent(VirtualQGraphicsDropShadowEffect* self, QTimerEvent* event) {

	self->QGraphicsDropShadowEffect::timerEvent(event);
}

void QGraphicsDropShadowEffect_virtualbase_childEvent(VirtualQGraphicsDropShadowEffect* self, QChildEvent* event) {

	self->QGraphicsDropShadowEffect::childEvent(event);
}

void QGraphicsDropShadowEffect_virtualbase_customEvent(VirtualQGraphicsDropShadowEffect* self, QEvent* event) {

	self->QGraphicsDropShadowEffect::customEvent(event);
}

void QGraphicsDropShadowEffect_virtualbase_connectNotify(VirtualQGraphicsDropShadowEffect* self, QMetaMethod* signal) {

	self->QGraphicsDropShadowEffect::connectNotify(*signal);
}

void QGraphicsDropShadowEffect_virtualbase_disconnectNotify(VirtualQGraphicsDropShadowEffect* self, QMetaMethod* signal) {

	self->QGraphicsDropShadowEffect::disconnectNotify(*signal);
}

const QMetaObject* QGraphicsDropShadowEffect_staticMetaObject() { return &QGraphicsDropShadowEffect::staticMetaObject; }

const QGraphicsDropShadowEffect_VTable* QGraphicsDropShadowEffect_vtbl(const VirtualQGraphicsDropShadowEffect* self) { return self->vtbl; }
void* QGraphicsDropShadowEffect_vdata(const VirtualQGraphicsDropShadowEffect* self) { return self->vdata; }
void QGraphicsDropShadowEffect_setVdata(VirtualQGraphicsDropShadowEffect* self, void* vdata) { self->vdata = vdata; }

void QGraphicsDropShadowEffect_protectedbase_updateBoundingRect(VirtualQGraphicsDropShadowEffect* self) {
	self->updateBoundingRect();
}

bool QGraphicsDropShadowEffect_protectedbase_sourceIsPixmap(const VirtualQGraphicsDropShadowEffect* self) {
	return self->sourceIsPixmap();
}

QRectF* QGraphicsDropShadowEffect_protectedbase_sourceBoundingRect(const VirtualQGraphicsDropShadowEffect* self) {
	return new QRectF(self->sourceBoundingRect());
}

void QGraphicsDropShadowEffect_protectedbase_drawSource(VirtualQGraphicsDropShadowEffect* self, QPainter* painter) {
	self->drawSource(painter);
}

QPixmap* QGraphicsDropShadowEffect_protectedbase_sourcePixmap(const VirtualQGraphicsDropShadowEffect* self) {
	return new QPixmap(self->sourcePixmap());
}

QObject* QGraphicsDropShadowEffect_protectedbase_sender(const VirtualQGraphicsDropShadowEffect* self) {
	return self->sender();
}

int QGraphicsDropShadowEffect_protectedbase_senderSignalIndex(const VirtualQGraphicsDropShadowEffect* self) {
	return self->senderSignalIndex();
}

int QGraphicsDropShadowEffect_protectedbase_receivers(const VirtualQGraphicsDropShadowEffect* self, const char* signal) {
	return self->receivers(signal);
}

bool QGraphicsDropShadowEffect_protectedbase_isSignalConnected(const VirtualQGraphicsDropShadowEffect* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGraphicsDropShadowEffect_delete(QGraphicsDropShadowEffect* self) {
	delete self;
}

class VirtualQGraphicsOpacityEffect final : public QGraphicsOpacityEffect {
	const QGraphicsOpacityEffect_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsOpacityEffect_VTable* QGraphicsOpacityEffect_vtbl(const VirtualQGraphicsOpacityEffect* self);
	friend void* QGraphicsOpacityEffect_vdata(const VirtualQGraphicsOpacityEffect* self);
	friend void QGraphicsOpacityEffect_setVdata(VirtualQGraphicsOpacityEffect* self, void* vdata);

	VirtualQGraphicsOpacityEffect(const QGraphicsOpacityEffect_VTable* vtbl, void* vdata): QGraphicsOpacityEffect(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsOpacityEffect(const QGraphicsOpacityEffect_VTable* vtbl, void* vdata, QObject* parent): QGraphicsOpacityEffect(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsOpacityEffect() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsOpacityEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsOpacityEffect_virtualbase_metaObject(const VirtualQGraphicsOpacityEffect* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsOpacityEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsOpacityEffect_virtualbase_metacast(VirtualQGraphicsOpacityEffect* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsOpacityEffect::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsOpacityEffect_virtualbase_metacall(VirtualQGraphicsOpacityEffect* self, int param1, int param2, void** param3);

	virtual void draw(QPainter* painter) override {
		if (vtbl->draw == 0) {
			QGraphicsOpacityEffect::draw(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->draw(this, sigval1);

	}

	friend void QGraphicsOpacityEffect_virtualbase_draw(VirtualQGraphicsOpacityEffect* self, QPainter* painter);

	virtual QRectF boundingRectFor(const QRectF& sourceRect) const override {
		if (vtbl->boundingRectFor == 0) {
			return QGraphicsOpacityEffect::boundingRectFor(sourceRect);
		}

		const QRectF& sourceRect_ret = sourceRect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&sourceRect_ret);

		QRectF* callback_return_value = vtbl->boundingRectFor(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QGraphicsOpacityEffect_virtualbase_boundingRectFor(const VirtualQGraphicsOpacityEffect* self, QRectF* sourceRect);

	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (vtbl->sourceChanged == 0) {
			QGraphicsOpacityEffect::sourceChanged(flags);
			return;
		}

		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		vtbl->sourceChanged(this, sigval1);

	}

	friend void QGraphicsOpacityEffect_virtualbase_sourceChanged(VirtualQGraphicsOpacityEffect* self, int flags);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsOpacityEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsOpacityEffect_virtualbase_event(VirtualQGraphicsOpacityEffect* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsOpacityEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsOpacityEffect_virtualbase_eventFilter(VirtualQGraphicsOpacityEffect* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsOpacityEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGraphicsOpacityEffect_virtualbase_timerEvent(VirtualQGraphicsOpacityEffect* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsOpacityEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGraphicsOpacityEffect_virtualbase_childEvent(VirtualQGraphicsOpacityEffect* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsOpacityEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGraphicsOpacityEffect_virtualbase_customEvent(VirtualQGraphicsOpacityEffect* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsOpacityEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGraphicsOpacityEffect_virtualbase_connectNotify(VirtualQGraphicsOpacityEffect* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsOpacityEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGraphicsOpacityEffect_virtualbase_disconnectNotify(VirtualQGraphicsOpacityEffect* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsOpacityEffect_protectedbase_updateBoundingRect(VirtualQGraphicsOpacityEffect* self);
	friend bool QGraphicsOpacityEffect_protectedbase_sourceIsPixmap(const VirtualQGraphicsOpacityEffect* self);
	friend QRectF* QGraphicsOpacityEffect_protectedbase_sourceBoundingRect(const VirtualQGraphicsOpacityEffect* self);
	friend void QGraphicsOpacityEffect_protectedbase_drawSource(VirtualQGraphicsOpacityEffect* self, QPainter* painter);
	friend QPixmap* QGraphicsOpacityEffect_protectedbase_sourcePixmap(const VirtualQGraphicsOpacityEffect* self);
	friend QObject* QGraphicsOpacityEffect_protectedbase_sender(const VirtualQGraphicsOpacityEffect* self);
	friend int QGraphicsOpacityEffect_protectedbase_senderSignalIndex(const VirtualQGraphicsOpacityEffect* self);
	friend int QGraphicsOpacityEffect_protectedbase_receivers(const VirtualQGraphicsOpacityEffect* self, const char* signal);
	friend bool QGraphicsOpacityEffect_protectedbase_isSignalConnected(const VirtualQGraphicsOpacityEffect* self, QMetaMethod* signal);
};

VirtualQGraphicsOpacityEffect* QGraphicsOpacityEffect_new(const QGraphicsOpacityEffect_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsOpacityEffect(vtbl, vdata);
}

VirtualQGraphicsOpacityEffect* QGraphicsOpacityEffect_new2(const QGraphicsOpacityEffect_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQGraphicsOpacityEffect(vtbl, vdata, parent);
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

void QGraphicsOpacityEffect_connect_opacityChanged(VirtualQGraphicsOpacityEffect* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
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

void QGraphicsOpacityEffect_connect_opacityMaskChanged(VirtualQGraphicsOpacityEffect* self, intptr_t slot, void (*callback)(intptr_t, QBrush*), void (*release)(intptr_t)) {
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

QMetaObject* QGraphicsOpacityEffect_virtualbase_metaObject(const VirtualQGraphicsOpacityEffect* self) {

	return (QMetaObject*) self->QGraphicsOpacityEffect::metaObject();
}

void* QGraphicsOpacityEffect_virtualbase_metacast(VirtualQGraphicsOpacityEffect* self, const char* param1) {

	return self->QGraphicsOpacityEffect::qt_metacast(param1);
}

int QGraphicsOpacityEffect_virtualbase_metacall(VirtualQGraphicsOpacityEffect* self, int param1, int param2, void** param3) {

	return self->QGraphicsOpacityEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QGraphicsOpacityEffect_virtualbase_draw(VirtualQGraphicsOpacityEffect* self, QPainter* painter) {

	self->QGraphicsOpacityEffect::draw(painter);
}

QRectF* QGraphicsOpacityEffect_virtualbase_boundingRectFor(const VirtualQGraphicsOpacityEffect* self, QRectF* sourceRect) {

	return new QRectF(self->QGraphicsOpacityEffect::boundingRectFor(*sourceRect));
}

void QGraphicsOpacityEffect_virtualbase_sourceChanged(VirtualQGraphicsOpacityEffect* self, int flags) {

	self->QGraphicsOpacityEffect::sourceChanged(static_cast<VirtualQGraphicsOpacityEffect::ChangeFlags>(flags));
}

bool QGraphicsOpacityEffect_virtualbase_event(VirtualQGraphicsOpacityEffect* self, QEvent* event) {

	return self->QGraphicsOpacityEffect::event(event);
}

bool QGraphicsOpacityEffect_virtualbase_eventFilter(VirtualQGraphicsOpacityEffect* self, QObject* watched, QEvent* event) {

	return self->QGraphicsOpacityEffect::eventFilter(watched, event);
}

void QGraphicsOpacityEffect_virtualbase_timerEvent(VirtualQGraphicsOpacityEffect* self, QTimerEvent* event) {

	self->QGraphicsOpacityEffect::timerEvent(event);
}

void QGraphicsOpacityEffect_virtualbase_childEvent(VirtualQGraphicsOpacityEffect* self, QChildEvent* event) {

	self->QGraphicsOpacityEffect::childEvent(event);
}

void QGraphicsOpacityEffect_virtualbase_customEvent(VirtualQGraphicsOpacityEffect* self, QEvent* event) {

	self->QGraphicsOpacityEffect::customEvent(event);
}

void QGraphicsOpacityEffect_virtualbase_connectNotify(VirtualQGraphicsOpacityEffect* self, QMetaMethod* signal) {

	self->QGraphicsOpacityEffect::connectNotify(*signal);
}

void QGraphicsOpacityEffect_virtualbase_disconnectNotify(VirtualQGraphicsOpacityEffect* self, QMetaMethod* signal) {

	self->QGraphicsOpacityEffect::disconnectNotify(*signal);
}

const QMetaObject* QGraphicsOpacityEffect_staticMetaObject() { return &QGraphicsOpacityEffect::staticMetaObject; }

const QGraphicsOpacityEffect_VTable* QGraphicsOpacityEffect_vtbl(const VirtualQGraphicsOpacityEffect* self) { return self->vtbl; }
void* QGraphicsOpacityEffect_vdata(const VirtualQGraphicsOpacityEffect* self) { return self->vdata; }
void QGraphicsOpacityEffect_setVdata(VirtualQGraphicsOpacityEffect* self, void* vdata) { self->vdata = vdata; }

void QGraphicsOpacityEffect_protectedbase_updateBoundingRect(VirtualQGraphicsOpacityEffect* self) {
	self->updateBoundingRect();
}

bool QGraphicsOpacityEffect_protectedbase_sourceIsPixmap(const VirtualQGraphicsOpacityEffect* self) {
	return self->sourceIsPixmap();
}

QRectF* QGraphicsOpacityEffect_protectedbase_sourceBoundingRect(const VirtualQGraphicsOpacityEffect* self) {
	return new QRectF(self->sourceBoundingRect());
}

void QGraphicsOpacityEffect_protectedbase_drawSource(VirtualQGraphicsOpacityEffect* self, QPainter* painter) {
	self->drawSource(painter);
}

QPixmap* QGraphicsOpacityEffect_protectedbase_sourcePixmap(const VirtualQGraphicsOpacityEffect* self) {
	return new QPixmap(self->sourcePixmap());
}

QObject* QGraphicsOpacityEffect_protectedbase_sender(const VirtualQGraphicsOpacityEffect* self) {
	return self->sender();
}

int QGraphicsOpacityEffect_protectedbase_senderSignalIndex(const VirtualQGraphicsOpacityEffect* self) {
	return self->senderSignalIndex();
}

int QGraphicsOpacityEffect_protectedbase_receivers(const VirtualQGraphicsOpacityEffect* self, const char* signal) {
	return self->receivers(signal);
}

bool QGraphicsOpacityEffect_protectedbase_isSignalConnected(const VirtualQGraphicsOpacityEffect* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGraphicsOpacityEffect_delete(QGraphicsOpacityEffect* self) {
	delete self;
}

