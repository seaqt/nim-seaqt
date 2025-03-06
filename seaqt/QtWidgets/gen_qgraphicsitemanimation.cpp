#include <QChildEvent>
#include <QEvent>
#include <QGraphicsItem>
#include <QGraphicsItemAnimation>
#include <QList>
#include <QMatrix>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPair>
#include <QPointF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimeLine>
#include <QTimerEvent>
#include <QTransform>
#include <qgraphicsitemanimation.h>
#include "gen_qgraphicsitemanimation.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQGraphicsItemAnimation final : public QGraphicsItemAnimation {
	struct QGraphicsItemAnimation_VTable* vtbl;
public:

	VirtualQGraphicsItemAnimation(struct QGraphicsItemAnimation_VTable* vtbl): QGraphicsItemAnimation(), vtbl(vtbl) {};
	VirtualQGraphicsItemAnimation(struct QGraphicsItemAnimation_VTable* vtbl, QObject* parent): QGraphicsItemAnimation(parent), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsItemAnimation() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsItemAnimation::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsItemAnimation_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsItemAnimation::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsItemAnimation_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsItemAnimation::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsItemAnimation_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void beforeAnimationStep(qreal step) override {
		if (vtbl->beforeAnimationStep == 0) {
			QGraphicsItemAnimation::beforeAnimationStep(step);
			return;
		}

		qreal step_ret = step;
		double sigval1 = static_cast<double>(step_ret);

		vtbl->beforeAnimationStep(vtbl, this, sigval1);

	}

	friend void QGraphicsItemAnimation_virtualbase_beforeAnimationStep(void* self, double step);

	// Subclass to allow providing a Go implementation
	virtual void afterAnimationStep(qreal step) override {
		if (vtbl->afterAnimationStep == 0) {
			QGraphicsItemAnimation::afterAnimationStep(step);
			return;
		}

		qreal step_ret = step;
		double sigval1 = static_cast<double>(step_ret);

		vtbl->afterAnimationStep(vtbl, this, sigval1);

	}

	friend void QGraphicsItemAnimation_virtualbase_afterAnimationStep(void* self, double step);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsItemAnimation::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsItemAnimation_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsItemAnimation::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsItemAnimation_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsItemAnimation::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsItemAnimation_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsItemAnimation::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsItemAnimation_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsItemAnimation::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsItemAnimation_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsItemAnimation::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsItemAnimation_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsItemAnimation::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsItemAnimation_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QGraphicsItemAnimation_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsItemAnimation_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsItemAnimation_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QGraphicsItemAnimation_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QGraphicsItemAnimation* QGraphicsItemAnimation_new(struct QGraphicsItemAnimation_VTable* vtbl) {
	return new VirtualQGraphicsItemAnimation(vtbl);
}

QGraphicsItemAnimation* QGraphicsItemAnimation_new2(struct QGraphicsItemAnimation_VTable* vtbl, QObject* parent) {
	return new VirtualQGraphicsItemAnimation(vtbl, parent);
}

void QGraphicsItemAnimation_virtbase(QGraphicsItemAnimation* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QGraphicsItemAnimation_metaObject(const QGraphicsItemAnimation* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsItemAnimation_metacast(QGraphicsItemAnimation* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsItemAnimation_metacall(QGraphicsItemAnimation* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsItemAnimation_tr(const char* s) {
	QString _ret = QGraphicsItemAnimation::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsItemAnimation_trUtf8(const char* s) {
	QString _ret = QGraphicsItemAnimation::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QGraphicsItem* QGraphicsItemAnimation_item(const QGraphicsItemAnimation* self) {
	return self->item();
}

void QGraphicsItemAnimation_setItem(QGraphicsItemAnimation* self, QGraphicsItem* item) {
	self->setItem(item);
}

QTimeLine* QGraphicsItemAnimation_timeLine(const QGraphicsItemAnimation* self) {
	return self->timeLine();
}

void QGraphicsItemAnimation_setTimeLine(QGraphicsItemAnimation* self, QTimeLine* timeLine) {
	self->setTimeLine(timeLine);
}

QPointF* QGraphicsItemAnimation_posAt(const QGraphicsItemAnimation* self, double step) {
	return new QPointF(self->posAt(static_cast<qreal>(step)));
}

struct miqt_array /* of struct miqt_map  tuple of double and QPointF*   */  QGraphicsItemAnimation_posList(const QGraphicsItemAnimation* self) {
	QList<QPair<qreal, QPointF>> _ret = self->posList();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_map /* tuple of double and QPointF* */ * _arr = static_cast<struct miqt_map /* tuple of double and QPointF* */ *>(malloc(sizeof(struct miqt_map /* tuple of double and QPointF* */ ) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QPair<double, QPointF> _lv_ret = _ret[i];
		// Convert QPair<> from C++ memory to manually-managed C memory
		double* _lv_first_arr = static_cast<double*>(malloc(sizeof(double)));
		QPointF** _lv_second_arr = static_cast<QPointF**>(malloc(sizeof(QPointF*)));
		_lv_first_arr[0] = _lv_ret.first;
		_lv_second_arr[0] = new QPointF(_lv_ret.second);
		struct miqt_map _lv_out;
		_lv_out.len = 1;
		_lv_out.keys = static_cast<void*>(_lv_first_arr);
		_lv_out.values = static_cast<void*>(_lv_second_arr);
		_arr[i] = _lv_out;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QGraphicsItemAnimation_setPosAt(QGraphicsItemAnimation* self, double step, QPointF* pos) {
	self->setPosAt(static_cast<qreal>(step), *pos);
}

QMatrix* QGraphicsItemAnimation_matrixAt(const QGraphicsItemAnimation* self, double step) {
	return new QMatrix(self->matrixAt(static_cast<qreal>(step)));
}

QTransform* QGraphicsItemAnimation_transformAt(const QGraphicsItemAnimation* self, double step) {
	return new QTransform(self->transformAt(static_cast<qreal>(step)));
}

double QGraphicsItemAnimation_rotationAt(const QGraphicsItemAnimation* self, double step) {
	qreal _ret = self->rotationAt(static_cast<qreal>(step));
	return static_cast<double>(_ret);
}

struct miqt_array /* of struct miqt_map  tuple of double and double   */  QGraphicsItemAnimation_rotationList(const QGraphicsItemAnimation* self) {
	QList<QPair<qreal, qreal>> _ret = self->rotationList();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_map /* tuple of double and double */ * _arr = static_cast<struct miqt_map /* tuple of double and double */ *>(malloc(sizeof(struct miqt_map /* tuple of double and double */ ) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QPair<double, double> _lv_ret = _ret[i];
		// Convert QPair<> from C++ memory to manually-managed C memory
		double* _lv_first_arr = static_cast<double*>(malloc(sizeof(double)));
		double* _lv_second_arr = static_cast<double*>(malloc(sizeof(double)));
		_lv_first_arr[0] = _lv_ret.first;
		_lv_second_arr[0] = _lv_ret.second;
		struct miqt_map _lv_out;
		_lv_out.len = 1;
		_lv_out.keys = static_cast<void*>(_lv_first_arr);
		_lv_out.values = static_cast<void*>(_lv_second_arr);
		_arr[i] = _lv_out;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QGraphicsItemAnimation_setRotationAt(QGraphicsItemAnimation* self, double step, double angle) {
	self->setRotationAt(static_cast<qreal>(step), static_cast<qreal>(angle));
}

double QGraphicsItemAnimation_xTranslationAt(const QGraphicsItemAnimation* self, double step) {
	qreal _ret = self->xTranslationAt(static_cast<qreal>(step));
	return static_cast<double>(_ret);
}

double QGraphicsItemAnimation_yTranslationAt(const QGraphicsItemAnimation* self, double step) {
	qreal _ret = self->yTranslationAt(static_cast<qreal>(step));
	return static_cast<double>(_ret);
}

struct miqt_array /* of struct miqt_map  tuple of double and QPointF*   */  QGraphicsItemAnimation_translationList(const QGraphicsItemAnimation* self) {
	QList<QPair<qreal, QPointF>> _ret = self->translationList();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_map /* tuple of double and QPointF* */ * _arr = static_cast<struct miqt_map /* tuple of double and QPointF* */ *>(malloc(sizeof(struct miqt_map /* tuple of double and QPointF* */ ) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QPair<double, QPointF> _lv_ret = _ret[i];
		// Convert QPair<> from C++ memory to manually-managed C memory
		double* _lv_first_arr = static_cast<double*>(malloc(sizeof(double)));
		QPointF** _lv_second_arr = static_cast<QPointF**>(malloc(sizeof(QPointF*)));
		_lv_first_arr[0] = _lv_ret.first;
		_lv_second_arr[0] = new QPointF(_lv_ret.second);
		struct miqt_map _lv_out;
		_lv_out.len = 1;
		_lv_out.keys = static_cast<void*>(_lv_first_arr);
		_lv_out.values = static_cast<void*>(_lv_second_arr);
		_arr[i] = _lv_out;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QGraphicsItemAnimation_setTranslationAt(QGraphicsItemAnimation* self, double step, double dx, double dy) {
	self->setTranslationAt(static_cast<qreal>(step), static_cast<qreal>(dx), static_cast<qreal>(dy));
}

double QGraphicsItemAnimation_verticalScaleAt(const QGraphicsItemAnimation* self, double step) {
	qreal _ret = self->verticalScaleAt(static_cast<qreal>(step));
	return static_cast<double>(_ret);
}

double QGraphicsItemAnimation_horizontalScaleAt(const QGraphicsItemAnimation* self, double step) {
	qreal _ret = self->horizontalScaleAt(static_cast<qreal>(step));
	return static_cast<double>(_ret);
}

struct miqt_array /* of struct miqt_map  tuple of double and QPointF*   */  QGraphicsItemAnimation_scaleList(const QGraphicsItemAnimation* self) {
	QList<QPair<qreal, QPointF>> _ret = self->scaleList();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_map /* tuple of double and QPointF* */ * _arr = static_cast<struct miqt_map /* tuple of double and QPointF* */ *>(malloc(sizeof(struct miqt_map /* tuple of double and QPointF* */ ) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QPair<double, QPointF> _lv_ret = _ret[i];
		// Convert QPair<> from C++ memory to manually-managed C memory
		double* _lv_first_arr = static_cast<double*>(malloc(sizeof(double)));
		QPointF** _lv_second_arr = static_cast<QPointF**>(malloc(sizeof(QPointF*)));
		_lv_first_arr[0] = _lv_ret.first;
		_lv_second_arr[0] = new QPointF(_lv_ret.second);
		struct miqt_map _lv_out;
		_lv_out.len = 1;
		_lv_out.keys = static_cast<void*>(_lv_first_arr);
		_lv_out.values = static_cast<void*>(_lv_second_arr);
		_arr[i] = _lv_out;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QGraphicsItemAnimation_setScaleAt(QGraphicsItemAnimation* self, double step, double sx, double sy) {
	self->setScaleAt(static_cast<qreal>(step), static_cast<qreal>(sx), static_cast<qreal>(sy));
}

double QGraphicsItemAnimation_verticalShearAt(const QGraphicsItemAnimation* self, double step) {
	qreal _ret = self->verticalShearAt(static_cast<qreal>(step));
	return static_cast<double>(_ret);
}

double QGraphicsItemAnimation_horizontalShearAt(const QGraphicsItemAnimation* self, double step) {
	qreal _ret = self->horizontalShearAt(static_cast<qreal>(step));
	return static_cast<double>(_ret);
}

struct miqt_array /* of struct miqt_map  tuple of double and QPointF*   */  QGraphicsItemAnimation_shearList(const QGraphicsItemAnimation* self) {
	QList<QPair<qreal, QPointF>> _ret = self->shearList();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_map /* tuple of double and QPointF* */ * _arr = static_cast<struct miqt_map /* tuple of double and QPointF* */ *>(malloc(sizeof(struct miqt_map /* tuple of double and QPointF* */ ) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QPair<double, QPointF> _lv_ret = _ret[i];
		// Convert QPair<> from C++ memory to manually-managed C memory
		double* _lv_first_arr = static_cast<double*>(malloc(sizeof(double)));
		QPointF** _lv_second_arr = static_cast<QPointF**>(malloc(sizeof(QPointF*)));
		_lv_first_arr[0] = _lv_ret.first;
		_lv_second_arr[0] = new QPointF(_lv_ret.second);
		struct miqt_map _lv_out;
		_lv_out.len = 1;
		_lv_out.keys = static_cast<void*>(_lv_first_arr);
		_lv_out.values = static_cast<void*>(_lv_second_arr);
		_arr[i] = _lv_out;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QGraphicsItemAnimation_setShearAt(QGraphicsItemAnimation* self, double step, double sh, double sv) {
	self->setShearAt(static_cast<qreal>(step), static_cast<qreal>(sh), static_cast<qreal>(sv));
}

void QGraphicsItemAnimation_clear(QGraphicsItemAnimation* self) {
	self->clear();
}

void QGraphicsItemAnimation_setStep(QGraphicsItemAnimation* self, double x) {
	self->setStep(static_cast<qreal>(x));
}

void QGraphicsItemAnimation_reset(QGraphicsItemAnimation* self) {
	self->reset();
}

struct miqt_string QGraphicsItemAnimation_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsItemAnimation::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsItemAnimation_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsItemAnimation::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsItemAnimation_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsItemAnimation::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsItemAnimation_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsItemAnimation::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGraphicsItemAnimation_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGraphicsItemAnimation*)(self) )->QGraphicsItemAnimation::metaObject();

}

void* QGraphicsItemAnimation_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGraphicsItemAnimation*)(self) )->QGraphicsItemAnimation::qt_metacast(param1);

}

int QGraphicsItemAnimation_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGraphicsItemAnimation*)(self) )->QGraphicsItemAnimation::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QGraphicsItemAnimation_virtualbase_beforeAnimationStep(void* self, double step) {

	( (VirtualQGraphicsItemAnimation*)(self) )->QGraphicsItemAnimation::beforeAnimationStep(static_cast<qreal>(step));

}

void QGraphicsItemAnimation_virtualbase_afterAnimationStep(void* self, double step) {

	( (VirtualQGraphicsItemAnimation*)(self) )->QGraphicsItemAnimation::afterAnimationStep(static_cast<qreal>(step));

}

bool QGraphicsItemAnimation_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGraphicsItemAnimation*)(self) )->QGraphicsItemAnimation::event(event);

}

bool QGraphicsItemAnimation_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGraphicsItemAnimation*)(self) )->QGraphicsItemAnimation::eventFilter(watched, event);

}

void QGraphicsItemAnimation_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGraphicsItemAnimation*)(self) )->QGraphicsItemAnimation::timerEvent(event);

}

void QGraphicsItemAnimation_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGraphicsItemAnimation*)(self) )->QGraphicsItemAnimation::childEvent(event);

}

void QGraphicsItemAnimation_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsItemAnimation*)(self) )->QGraphicsItemAnimation::customEvent(event);

}

void QGraphicsItemAnimation_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsItemAnimation*)(self) )->QGraphicsItemAnimation::connectNotify(*signal);

}

void QGraphicsItemAnimation_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsItemAnimation*)(self) )->QGraphicsItemAnimation::disconnectNotify(*signal);

}

const QMetaObject* QGraphicsItemAnimation_staticMetaObject() { return &QGraphicsItemAnimation::staticMetaObject; }
QObject* QGraphicsItemAnimation_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsItemAnimation* self_cast = dynamic_cast<VirtualQGraphicsItemAnimation*>( (QGraphicsItemAnimation*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QGraphicsItemAnimation_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGraphicsItemAnimation* self_cast = dynamic_cast<VirtualQGraphicsItemAnimation*>( (QGraphicsItemAnimation*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QGraphicsItemAnimation_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQGraphicsItemAnimation* self_cast = dynamic_cast<VirtualQGraphicsItemAnimation*>( (QGraphicsItemAnimation*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QGraphicsItemAnimation_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQGraphicsItemAnimation* self_cast = dynamic_cast<VirtualQGraphicsItemAnimation*>( (QGraphicsItemAnimation*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QGraphicsItemAnimation_delete(QGraphicsItemAnimation* self) {
	delete self;
}

