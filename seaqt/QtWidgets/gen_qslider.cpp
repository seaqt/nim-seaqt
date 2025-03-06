#include <QAbstractSlider>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
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
#include <QSlider>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionSlider>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qslider.h>
#include "gen_qslider.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSlider final : public QSlider {
	struct QSlider_VTable* vtbl;
public:

	VirtualQSlider(struct QSlider_VTable* vtbl, QWidget* parent): QSlider(parent), vtbl(vtbl) {};
	VirtualQSlider(struct QSlider_VTable* vtbl): QSlider(), vtbl(vtbl) {};
	VirtualQSlider(struct QSlider_VTable* vtbl, Qt::Orientation orientation): QSlider(orientation), vtbl(vtbl) {};
	VirtualQSlider(struct QSlider_VTable* vtbl, Qt::Orientation orientation, QWidget* parent): QSlider(orientation, parent), vtbl(vtbl) {};

	virtual ~VirtualQSlider() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSlider::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QSlider_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSlider::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QSlider_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSlider::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSlider_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSlider::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSlider_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QSlider::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSlider_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSlider::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSlider_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* ev) override {
		if (vtbl->paintEvent == 0) {
			QSlider::paintEvent(ev);
			return;
		}

		QPaintEvent* sigval1 = ev;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_paintEvent(void* self, QPaintEvent* ev);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* ev) override {
		if (vtbl->mousePressEvent == 0) {
			QSlider::mousePressEvent(ev);
			return;
		}

		QMouseEvent* sigval1 = ev;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_mousePressEvent(void* self, QMouseEvent* ev);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* ev) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QSlider::mouseReleaseEvent(ev);
			return;
		}

		QMouseEvent* sigval1 = ev;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* ev);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* ev) override {
		if (vtbl->mouseMoveEvent == 0) {
			QSlider::mouseMoveEvent(ev);
			return;
		}

		QMouseEvent* sigval1 = ev;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_mouseMoveEvent(void* self, QMouseEvent* ev);

	// Subclass to allow providing a Go implementation
	virtual void sliderChange(QAbstractSlider::SliderChange change) override {
		if (vtbl->sliderChange == 0) {
			QSlider::sliderChange(change);
			return;
		}

		QAbstractSlider::SliderChange change_ret = change;
		int sigval1 = static_cast<int>(change_ret);

		vtbl->sliderChange(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_sliderChange(void* self, int change);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* ev) override {
		if (vtbl->keyPressEvent == 0) {
			QSlider::keyPressEvent(ev);
			return;
		}

		QKeyEvent* sigval1 = ev;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_keyPressEvent(void* self, QKeyEvent* ev);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QSlider::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_timerEvent(void* self, QTimerEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QSlider::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_wheelEvent(void* self, QWheelEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QSlider::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_changeEvent(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QSlider::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QSlider_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QSlider::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QSlider::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSlider_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QSlider::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QSlider_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QSlider::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QSlider_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QSlider::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QSlider::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QSlider::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QSlider::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QSlider::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QSlider::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QSlider::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QSlider::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QSlider::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QSlider::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QSlider::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QSlider::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QSlider::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QSlider::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QSlider::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QSlider::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QSlider::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QSlider::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QSlider::nativeEvent(eventType, message, result);
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

	friend bool QSlider_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QSlider::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSlider_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QSlider::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QSlider::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QSlider_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QSlider::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QSlider_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QSlider::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QSlider::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QSlider_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QSlider::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSlider_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSlider::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSlider_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSlider::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSlider::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSlider::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSlider::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QSlider_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSlider_protectedbase_initStyleOption(const void* self, QStyleOptionSlider* option);
	friend void QSlider_protectedbase_setRepeatAction(void* self, int action);
	friend int QSlider_protectedbase_repeatAction(const void* self);
	friend void QSlider_protectedbase_updateMicroFocus(void* self);
	friend void QSlider_protectedbase_create(void* self);
	friend void QSlider_protectedbase_destroy(void* self);
	friend bool QSlider_protectedbase_focusNextChild(void* self);
	friend bool QSlider_protectedbase_focusPreviousChild(void* self);
	friend QObject* QSlider_protectedbase_sender(const void* self);
	friend int QSlider_protectedbase_senderSignalIndex(const void* self);
	friend int QSlider_protectedbase_receivers(const void* self, const char* signal);
	friend bool QSlider_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QSlider* QSlider_new(struct QSlider_VTable* vtbl, QWidget* parent) {
	return new VirtualQSlider(vtbl, parent);
}

QSlider* QSlider_new2(struct QSlider_VTable* vtbl) {
	return new VirtualQSlider(vtbl);
}

QSlider* QSlider_new3(struct QSlider_VTable* vtbl, int orientation) {
	return new VirtualQSlider(vtbl, static_cast<Qt::Orientation>(orientation));
}

QSlider* QSlider_new4(struct QSlider_VTable* vtbl, int orientation, QWidget* parent) {
	return new VirtualQSlider(vtbl, static_cast<Qt::Orientation>(orientation), parent);
}

void QSlider_virtbase(QSlider* src, QAbstractSlider** outptr_QAbstractSlider) {
	*outptr_QAbstractSlider = static_cast<QAbstractSlider*>(src);
}

QMetaObject* QSlider_metaObject(const QSlider* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSlider_metacast(QSlider* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSlider_metacall(QSlider* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSlider_tr(const char* s) {
	QString _ret = QSlider::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSlider_trUtf8(const char* s) {
	QString _ret = QSlider::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QSlider_sizeHint(const QSlider* self) {
	return new QSize(self->sizeHint());
}

QSize* QSlider_minimumSizeHint(const QSlider* self) {
	return new QSize(self->minimumSizeHint());
}

void QSlider_setTickPosition(QSlider* self, int position) {
	self->setTickPosition(static_cast<QSlider::TickPosition>(position));
}

int QSlider_tickPosition(const QSlider* self) {
	QSlider::TickPosition _ret = self->tickPosition();
	return static_cast<int>(_ret);
}

void QSlider_setTickInterval(QSlider* self, int ti) {
	self->setTickInterval(static_cast<int>(ti));
}

int QSlider_tickInterval(const QSlider* self) {
	return self->tickInterval();
}

bool QSlider_event(QSlider* self, QEvent* event) {
	return self->event(event);
}

struct miqt_string QSlider_tr2(const char* s, const char* c) {
	QString _ret = QSlider::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSlider_tr3(const char* s, const char* c, int n) {
	QString _ret = QSlider::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSlider_trUtf82(const char* s, const char* c) {
	QString _ret = QSlider::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSlider_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSlider::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSlider_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSlider*)(self) )->QSlider::metaObject();

}

void* QSlider_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSlider*)(self) )->QSlider::qt_metacast(param1);

}

int QSlider_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSlider*)(self) )->QSlider::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QSlider_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQSlider*)(self) )->QSlider::sizeHint());

}

QSize* QSlider_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQSlider*)(self) )->QSlider::minimumSizeHint());

}

bool QSlider_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQSlider*)(self) )->QSlider::event(event);

}

void QSlider_virtualbase_paintEvent(void* self, QPaintEvent* ev) {

	( (VirtualQSlider*)(self) )->QSlider::paintEvent(ev);

}

void QSlider_virtualbase_mousePressEvent(void* self, QMouseEvent* ev) {

	( (VirtualQSlider*)(self) )->QSlider::mousePressEvent(ev);

}

void QSlider_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* ev) {

	( (VirtualQSlider*)(self) )->QSlider::mouseReleaseEvent(ev);

}

void QSlider_virtualbase_mouseMoveEvent(void* self, QMouseEvent* ev) {

	( (VirtualQSlider*)(self) )->QSlider::mouseMoveEvent(ev);

}

void QSlider_virtualbase_sliderChange(void* self, int change) {

	( (VirtualQSlider*)(self) )->QSlider::sliderChange(static_cast<VirtualQSlider::SliderChange>(change));

}

void QSlider_virtualbase_keyPressEvent(void* self, QKeyEvent* ev) {

	( (VirtualQSlider*)(self) )->QSlider::keyPressEvent(ev);

}

void QSlider_virtualbase_timerEvent(void* self, QTimerEvent* param1) {

	( (VirtualQSlider*)(self) )->QSlider::timerEvent(param1);

}

void QSlider_virtualbase_wheelEvent(void* self, QWheelEvent* e) {

	( (VirtualQSlider*)(self) )->QSlider::wheelEvent(e);

}

void QSlider_virtualbase_changeEvent(void* self, QEvent* e) {

	( (VirtualQSlider*)(self) )->QSlider::changeEvent(e);

}

int QSlider_virtualbase_devType(const void* self) {

	return ( (const VirtualQSlider*)(self) )->QSlider::devType();

}

void QSlider_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQSlider*)(self) )->QSlider::setVisible(visible);

}

int QSlider_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQSlider*)(self) )->QSlider::heightForWidth(static_cast<int>(param1));

}

bool QSlider_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQSlider*)(self) )->QSlider::hasHeightForWidth();

}

QPaintEngine* QSlider_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQSlider*)(self) )->QSlider::paintEngine();

}

void QSlider_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::mouseDoubleClickEvent(event);

}

void QSlider_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::keyReleaseEvent(event);

}

void QSlider_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::focusInEvent(event);

}

void QSlider_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::focusOutEvent(event);

}

void QSlider_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::enterEvent(event);

}

void QSlider_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::leaveEvent(event);

}

void QSlider_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::moveEvent(event);

}

void QSlider_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::resizeEvent(event);

}

void QSlider_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::closeEvent(event);

}

void QSlider_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::contextMenuEvent(event);

}

void QSlider_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::tabletEvent(event);

}

void QSlider_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::actionEvent(event);

}

void QSlider_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::dragEnterEvent(event);

}

void QSlider_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::dragMoveEvent(event);

}

void QSlider_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::dragLeaveEvent(event);

}

void QSlider_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::dropEvent(event);

}

void QSlider_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::showEvent(event);

}

void QSlider_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::hideEvent(event);

}

bool QSlider_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQSlider*)(self) )->QSlider::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QSlider_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQSlider*)(self) )->QSlider::metric(static_cast<VirtualQSlider::PaintDeviceMetric>(param1));

}

void QSlider_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQSlider*)(self) )->QSlider::initPainter(painter);

}

QPaintDevice* QSlider_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQSlider*)(self) )->QSlider::redirected(offset);

}

QPainter* QSlider_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQSlider*)(self) )->QSlider::sharedPainter();

}

void QSlider_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQSlider*)(self) )->QSlider::inputMethodEvent(param1);

}

QVariant* QSlider_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQSlider*)(self) )->QSlider::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QSlider_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQSlider*)(self) )->QSlider::focusNextPrevChild(next);

}

bool QSlider_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSlider*)(self) )->QSlider::eventFilter(watched, event);

}

void QSlider_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::childEvent(event);

}

void QSlider_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSlider*)(self) )->QSlider::customEvent(event);

}

void QSlider_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSlider*)(self) )->QSlider::connectNotify(*signal);

}

void QSlider_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSlider*)(self) )->QSlider::disconnectNotify(*signal);

}

const QMetaObject* QSlider_staticMetaObject() { return &QSlider::staticMetaObject; }
void QSlider_protectedbase_initStyleOption(const void* self, QStyleOptionSlider* option) {
	VirtualQSlider* self_cast = static_cast<VirtualQSlider*>( (QSlider*)(self) );
	
	self_cast->initStyleOption(option);

}

void QSlider_protectedbase_setRepeatAction(void* self, int action) {
	VirtualQSlider* self_cast = static_cast<VirtualQSlider*>( (QSlider*)(self) );
	
	self_cast->setRepeatAction(static_cast<VirtualQSlider::SliderAction>(action));

}

int QSlider_protectedbase_repeatAction(const void* self) {
	VirtualQSlider* self_cast = static_cast<VirtualQSlider*>( (QSlider*)(self) );
	
	VirtualQSlider::SliderAction _ret = self_cast->repeatAction();
	return static_cast<int>(_ret);

}

void QSlider_protectedbase_updateMicroFocus(void* self) {
	VirtualQSlider* self_cast = static_cast<VirtualQSlider*>( (QSlider*)(self) );
	
	self_cast->updateMicroFocus();

}

void QSlider_protectedbase_create(void* self) {
	VirtualQSlider* self_cast = static_cast<VirtualQSlider*>( (QSlider*)(self) );
	
	self_cast->create();

}

void QSlider_protectedbase_destroy(void* self) {
	VirtualQSlider* self_cast = static_cast<VirtualQSlider*>( (QSlider*)(self) );
	
	self_cast->destroy();

}

bool QSlider_protectedbase_focusNextChild(void* self) {
	VirtualQSlider* self_cast = static_cast<VirtualQSlider*>( (QSlider*)(self) );
	
	return self_cast->focusNextChild();

}

bool QSlider_protectedbase_focusPreviousChild(void* self) {
	VirtualQSlider* self_cast = static_cast<VirtualQSlider*>( (QSlider*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QSlider_protectedbase_sender(const void* self) {
	VirtualQSlider* self_cast = static_cast<VirtualQSlider*>( (QSlider*)(self) );
	
	return self_cast->sender();

}

int QSlider_protectedbase_senderSignalIndex(const void* self) {
	VirtualQSlider* self_cast = static_cast<VirtualQSlider*>( (QSlider*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QSlider_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQSlider* self_cast = static_cast<VirtualQSlider*>( (QSlider*)(self) );
	
	return self_cast->receivers(signal);

}

bool QSlider_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQSlider* self_cast = static_cast<VirtualQSlider*>( (QSlider*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QSlider_delete(QSlider* self) {
	delete self;
}

