#include <QAbstractSlider>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDial>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionSlider>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qdial.h>
#include "gen_qdial.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQDial final : public QDial {
	struct QDial_VTable* vtbl;
public:

	VirtualQDial(struct QDial_VTable* vtbl, QWidget* parent): QDial(parent), vtbl(vtbl) {};
	VirtualQDial(struct QDial_VTable* vtbl): QDial(), vtbl(vtbl) {};

	virtual ~VirtualQDial() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDial::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QDial_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDial::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QDial_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDial::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDial_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDial::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QDial_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDial::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QDial_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QDial::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QDial_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* re) override {
		if (vtbl->resizeEvent == 0) {
			QDial::resizeEvent(re);
			return;
		}

		QResizeEvent* sigval1 = re;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_resizeEvent(void* self, QResizeEvent* re);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* pe) override {
		if (vtbl->paintEvent == 0) {
			QDial::paintEvent(pe);
			return;
		}

		QPaintEvent* sigval1 = pe;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_paintEvent(void* self, QPaintEvent* pe);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* me) override {
		if (vtbl->mousePressEvent == 0) {
			QDial::mousePressEvent(me);
			return;
		}

		QMouseEvent* sigval1 = me;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_mousePressEvent(void* self, QMouseEvent* me);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* me) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDial::mouseReleaseEvent(me);
			return;
		}

		QMouseEvent* sigval1 = me;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* me);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* me) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDial::mouseMoveEvent(me);
			return;
		}

		QMouseEvent* sigval1 = me;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_mouseMoveEvent(void* self, QMouseEvent* me);

	// Subclass to allow providing a Go implementation
	virtual void sliderChange(QAbstractSlider::SliderChange change) override {
		if (vtbl->sliderChange == 0) {
			QDial::sliderChange(change);
			return;
		}

		QAbstractSlider::SliderChange change_ret = change;
		int sigval1 = static_cast<int>(change_ret);

		vtbl->sliderChange(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_sliderChange(void* self, int change);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* ev) override {
		if (vtbl->keyPressEvent == 0) {
			QDial::keyPressEvent(ev);
			return;
		}

		QKeyEvent* sigval1 = ev;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_keyPressEvent(void* self, QKeyEvent* ev);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QDial::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_timerEvent(void* self, QTimerEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QDial::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_wheelEvent(void* self, QWheelEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QDial::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_changeEvent(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDial::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QDial_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDial::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDial::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDial_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDial::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QDial_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDial::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QDial_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDial::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDial::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDial::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDial::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDial::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDial::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDial::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDial::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDial::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDial::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDial::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDial::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDial::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDial::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDial::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDial::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDial::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDial::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QDial_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDial::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDial_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDial::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDial::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QDial_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDial::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QDial_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDial::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDial::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QDial_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDial::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QDial_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDial::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDial_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDial::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDial::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDial::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDial::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QDial_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QDial_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionSlider* option);
	friend void QDial_protectedbase_setRepeatAction(bool* _dynamic_cast_ok, void* self, int action);
	friend int QDial_protectedbase_repeatAction(bool* _dynamic_cast_ok, const void* self);
	friend void QDial_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QDial_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QDial_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QDial_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QDial_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QDial_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QDial_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QDial_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QDial_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QDial* QDial_new(struct QDial_VTable* vtbl, QWidget* parent) {
	return new VirtualQDial(vtbl, parent);
}

QDial* QDial_new2(struct QDial_VTable* vtbl) {
	return new VirtualQDial(vtbl);
}

void QDial_virtbase(QDial* src, QAbstractSlider** outptr_QAbstractSlider) {
	*outptr_QAbstractSlider = static_cast<QAbstractSlider*>(src);
}

QMetaObject* QDial_metaObject(const QDial* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDial_metacast(QDial* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDial_metacall(QDial* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDial_tr(const char* s) {
	QString _ret = QDial::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDial_trUtf8(const char* s) {
	QString _ret = QDial::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QDial_wrapping(const QDial* self) {
	return self->wrapping();
}

int QDial_notchSize(const QDial* self) {
	return self->notchSize();
}

void QDial_setNotchTarget(QDial* self, double target) {
	self->setNotchTarget(static_cast<double>(target));
}

double QDial_notchTarget(const QDial* self) {
	qreal _ret = self->notchTarget();
	return static_cast<double>(_ret);
}

bool QDial_notchesVisible(const QDial* self) {
	return self->notchesVisible();
}

QSize* QDial_sizeHint(const QDial* self) {
	return new QSize(self->sizeHint());
}

QSize* QDial_minimumSizeHint(const QDial* self) {
	return new QSize(self->minimumSizeHint());
}

void QDial_setNotchesVisible(QDial* self, bool visible) {
	self->setNotchesVisible(visible);
}

void QDial_setWrapping(QDial* self, bool on) {
	self->setWrapping(on);
}

struct miqt_string QDial_tr2(const char* s, const char* c) {
	QString _ret = QDial::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDial_tr3(const char* s, const char* c, int n) {
	QString _ret = QDial::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDial_trUtf82(const char* s, const char* c) {
	QString _ret = QDial::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDial_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QDial::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QDial_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQDial*)(self) )->QDial::metaObject();

}

void* QDial_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQDial*)(self) )->QDial::qt_metacast(param1);

}

int QDial_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQDial*)(self) )->QDial::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QDial_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQDial*)(self) )->QDial::sizeHint());

}

QSize* QDial_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQDial*)(self) )->QDial::minimumSizeHint());

}

bool QDial_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQDial*)(self) )->QDial::event(e);

}

void QDial_virtualbase_resizeEvent(void* self, QResizeEvent* re) {

	( (VirtualQDial*)(self) )->QDial::resizeEvent(re);

}

void QDial_virtualbase_paintEvent(void* self, QPaintEvent* pe) {

	( (VirtualQDial*)(self) )->QDial::paintEvent(pe);

}

void QDial_virtualbase_mousePressEvent(void* self, QMouseEvent* me) {

	( (VirtualQDial*)(self) )->QDial::mousePressEvent(me);

}

void QDial_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* me) {

	( (VirtualQDial*)(self) )->QDial::mouseReleaseEvent(me);

}

void QDial_virtualbase_mouseMoveEvent(void* self, QMouseEvent* me) {

	( (VirtualQDial*)(self) )->QDial::mouseMoveEvent(me);

}

void QDial_virtualbase_sliderChange(void* self, int change) {

	( (VirtualQDial*)(self) )->QDial::sliderChange(static_cast<VirtualQDial::SliderChange>(change));

}

void QDial_virtualbase_keyPressEvent(void* self, QKeyEvent* ev) {

	( (VirtualQDial*)(self) )->QDial::keyPressEvent(ev);

}

void QDial_virtualbase_timerEvent(void* self, QTimerEvent* param1) {

	( (VirtualQDial*)(self) )->QDial::timerEvent(param1);

}

void QDial_virtualbase_wheelEvent(void* self, QWheelEvent* e) {

	( (VirtualQDial*)(self) )->QDial::wheelEvent(e);

}

void QDial_virtualbase_changeEvent(void* self, QEvent* e) {

	( (VirtualQDial*)(self) )->QDial::changeEvent(e);

}

int QDial_virtualbase_devType(const void* self) {

	return ( (const VirtualQDial*)(self) )->QDial::devType();

}

void QDial_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQDial*)(self) )->QDial::setVisible(visible);

}

int QDial_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQDial*)(self) )->QDial::heightForWidth(static_cast<int>(param1));

}

bool QDial_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQDial*)(self) )->QDial::hasHeightForWidth();

}

QPaintEngine* QDial_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQDial*)(self) )->QDial::paintEngine();

}

void QDial_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQDial*)(self) )->QDial::mouseDoubleClickEvent(event);

}

void QDial_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQDial*)(self) )->QDial::keyReleaseEvent(event);

}

void QDial_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQDial*)(self) )->QDial::focusInEvent(event);

}

void QDial_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQDial*)(self) )->QDial::focusOutEvent(event);

}

void QDial_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQDial*)(self) )->QDial::enterEvent(event);

}

void QDial_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQDial*)(self) )->QDial::leaveEvent(event);

}

void QDial_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQDial*)(self) )->QDial::moveEvent(event);

}

void QDial_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQDial*)(self) )->QDial::closeEvent(event);

}

void QDial_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQDial*)(self) )->QDial::contextMenuEvent(event);

}

void QDial_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQDial*)(self) )->QDial::tabletEvent(event);

}

void QDial_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQDial*)(self) )->QDial::actionEvent(event);

}

void QDial_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQDial*)(self) )->QDial::dragEnterEvent(event);

}

void QDial_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQDial*)(self) )->QDial::dragMoveEvent(event);

}

void QDial_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQDial*)(self) )->QDial::dragLeaveEvent(event);

}

void QDial_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQDial*)(self) )->QDial::dropEvent(event);

}

void QDial_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQDial*)(self) )->QDial::showEvent(event);

}

void QDial_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQDial*)(self) )->QDial::hideEvent(event);

}

bool QDial_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQDial*)(self) )->QDial::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QDial_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQDial*)(self) )->QDial::metric(static_cast<VirtualQDial::PaintDeviceMetric>(param1));

}

void QDial_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQDial*)(self) )->QDial::initPainter(painter);

}

QPaintDevice* QDial_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQDial*)(self) )->QDial::redirected(offset);

}

QPainter* QDial_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQDial*)(self) )->QDial::sharedPainter();

}

void QDial_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQDial*)(self) )->QDial::inputMethodEvent(param1);

}

QVariant* QDial_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQDial*)(self) )->QDial::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QDial_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQDial*)(self) )->QDial::focusNextPrevChild(next);

}

bool QDial_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQDial*)(self) )->QDial::eventFilter(watched, event);

}

void QDial_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQDial*)(self) )->QDial::childEvent(event);

}

void QDial_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQDial*)(self) )->QDial::customEvent(event);

}

void QDial_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQDial*)(self) )->QDial::connectNotify(*signal);

}

void QDial_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQDial*)(self) )->QDial::disconnectNotify(*signal);

}

const QMetaObject* QDial_staticMetaObject() { return &QDial::staticMetaObject; }
void QDial_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionSlider* option) {
	VirtualQDial* self_cast = dynamic_cast<VirtualQDial*>( (QDial*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initStyleOption(option);

}

void QDial_protectedbase_setRepeatAction(bool* _dynamic_cast_ok, void* self, int action) {
	VirtualQDial* self_cast = dynamic_cast<VirtualQDial*>( (QDial*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setRepeatAction(static_cast<VirtualQDial::SliderAction>(action));

}

int QDial_protectedbase_repeatAction(bool* _dynamic_cast_ok, const void* self) {
	VirtualQDial* self_cast = dynamic_cast<VirtualQDial*>( (QDial*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return (int)(0);
	}
	
	*_dynamic_cast_ok = true;
	
	VirtualQDial::SliderAction _ret = self_cast->repeatAction();
	return static_cast<int>(_ret);

}

void QDial_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQDial* self_cast = dynamic_cast<VirtualQDial*>( (QDial*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QDial_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQDial* self_cast = dynamic_cast<VirtualQDial*>( (QDial*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QDial_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQDial* self_cast = dynamic_cast<VirtualQDial*>( (QDial*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QDial_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQDial* self_cast = dynamic_cast<VirtualQDial*>( (QDial*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QDial_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQDial* self_cast = dynamic_cast<VirtualQDial*>( (QDial*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QDial_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQDial* self_cast = dynamic_cast<VirtualQDial*>( (QDial*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QDial_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQDial* self_cast = dynamic_cast<VirtualQDial*>( (QDial*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QDial_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQDial* self_cast = dynamic_cast<VirtualQDial*>( (QDial*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QDial_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQDial* self_cast = dynamic_cast<VirtualQDial*>( (QDial*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QDial_delete(QDial* self) {
	delete self;
}

