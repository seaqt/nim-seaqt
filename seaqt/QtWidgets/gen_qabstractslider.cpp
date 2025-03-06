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
#include <QEnterEvent>
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
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qabstractslider.h>
#include "gen_qabstractslider.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQAbstractSlider final : public QAbstractSlider {
	struct QAbstractSlider_VTable* vtbl;
public:

	VirtualQAbstractSlider(struct QAbstractSlider_VTable* vtbl, QWidget* parent): QAbstractSlider(parent), vtbl(vtbl) {};
	VirtualQAbstractSlider(struct QAbstractSlider_VTable* vtbl): QAbstractSlider(), vtbl(vtbl) {};

	virtual ~VirtualQAbstractSlider() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractSlider::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractSlider_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractSlider::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractSlider_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractSlider::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractSlider_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QAbstractSlider::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractSlider_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void sliderChange(QAbstractSlider::SliderChange change) override {
		if (vtbl->sliderChange == 0) {
			QAbstractSlider::sliderChange(change);
			return;
		}

		QAbstractSlider::SliderChange change_ret = change;
		int sigval1 = static_cast<int>(change_ret);

		vtbl->sliderChange(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_sliderChange(void* self, int change);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* ev) override {
		if (vtbl->keyPressEvent == 0) {
			QAbstractSlider::keyPressEvent(ev);
			return;
		}

		QKeyEvent* sigval1 = ev;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_keyPressEvent(void* self, QKeyEvent* ev);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QAbstractSlider::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_timerEvent(void* self, QTimerEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QAbstractSlider::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_wheelEvent(void* self, QWheelEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QAbstractSlider::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_changeEvent(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QAbstractSlider::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractSlider_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QAbstractSlider::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QAbstractSlider::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractSlider_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QAbstractSlider::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractSlider_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QAbstractSlider::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractSlider_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QAbstractSlider::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QAbstractSlider_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QAbstractSlider::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QAbstractSlider_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QAbstractSlider::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QAbstractSlider::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QAbstractSlider::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QAbstractSlider::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QAbstractSlider::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QAbstractSlider::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QAbstractSlider::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QAbstractSlider::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QAbstractSlider::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QAbstractSlider::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QAbstractSlider::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QAbstractSlider::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QAbstractSlider::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QAbstractSlider::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QAbstractSlider::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QAbstractSlider::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QAbstractSlider::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QAbstractSlider::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QAbstractSlider::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QAbstractSlider::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QAbstractSlider::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QAbstractSlider::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QAbstractSlider::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		qintptr* result_ret = result;
		intptr_t* sigval3 = (intptr_t*)(result_ret);

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractSlider_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QAbstractSlider::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractSlider_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QAbstractSlider::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QAbstractSlider::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QAbstractSlider_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QAbstractSlider::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QAbstractSlider_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QAbstractSlider::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QAbstractSlider::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QAbstractSlider_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QAbstractSlider::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractSlider_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractSlider::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractSlider_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractSlider::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractSlider::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractSlider::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractSlider::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QAbstractSlider_protectedbase_setRepeatAction(void* self, int action);
	friend int QAbstractSlider_protectedbase_repeatAction(const void* self);
	friend void QAbstractSlider_protectedbase_setRepeatAction2(void* self, int action, int thresholdTime);
	friend void QAbstractSlider_protectedbase_setRepeatAction3(void* self, int action, int thresholdTime, int repeatTime);
	friend void QAbstractSlider_protectedbase_updateMicroFocus(void* self);
	friend void QAbstractSlider_protectedbase_create(void* self);
	friend void QAbstractSlider_protectedbase_destroy(void* self);
	friend bool QAbstractSlider_protectedbase_focusNextChild(void* self);
	friend bool QAbstractSlider_protectedbase_focusPreviousChild(void* self);
	friend QObject* QAbstractSlider_protectedbase_sender(const void* self);
	friend int QAbstractSlider_protectedbase_senderSignalIndex(const void* self);
	friend int QAbstractSlider_protectedbase_receivers(const void* self, const char* signal);
	friend bool QAbstractSlider_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QAbstractSlider* QAbstractSlider_new(struct QAbstractSlider_VTable* vtbl, QWidget* parent) {
	return new VirtualQAbstractSlider(vtbl, parent);
}

QAbstractSlider* QAbstractSlider_new2(struct QAbstractSlider_VTable* vtbl) {
	return new VirtualQAbstractSlider(vtbl);
}

void QAbstractSlider_virtbase(QAbstractSlider* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QAbstractSlider_metaObject(const QAbstractSlider* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractSlider_metacast(QAbstractSlider* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractSlider_metacall(QAbstractSlider* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractSlider_tr(const char* s) {
	QString _ret = QAbstractSlider::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAbstractSlider_orientation(const QAbstractSlider* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

void QAbstractSlider_setMinimum(QAbstractSlider* self, int minimum) {
	self->setMinimum(static_cast<int>(minimum));
}

int QAbstractSlider_minimum(const QAbstractSlider* self) {
	return self->minimum();
}

void QAbstractSlider_setMaximum(QAbstractSlider* self, int maximum) {
	self->setMaximum(static_cast<int>(maximum));
}

int QAbstractSlider_maximum(const QAbstractSlider* self) {
	return self->maximum();
}

void QAbstractSlider_setSingleStep(QAbstractSlider* self, int singleStep) {
	self->setSingleStep(static_cast<int>(singleStep));
}

int QAbstractSlider_singleStep(const QAbstractSlider* self) {
	return self->singleStep();
}

void QAbstractSlider_setPageStep(QAbstractSlider* self, int pageStep) {
	self->setPageStep(static_cast<int>(pageStep));
}

int QAbstractSlider_pageStep(const QAbstractSlider* self) {
	return self->pageStep();
}

void QAbstractSlider_setTracking(QAbstractSlider* self, bool enable) {
	self->setTracking(enable);
}

bool QAbstractSlider_hasTracking(const QAbstractSlider* self) {
	return self->hasTracking();
}

void QAbstractSlider_setSliderDown(QAbstractSlider* self, bool sliderDown) {
	self->setSliderDown(sliderDown);
}

bool QAbstractSlider_isSliderDown(const QAbstractSlider* self) {
	return self->isSliderDown();
}

void QAbstractSlider_setSliderPosition(QAbstractSlider* self, int sliderPosition) {
	self->setSliderPosition(static_cast<int>(sliderPosition));
}

int QAbstractSlider_sliderPosition(const QAbstractSlider* self) {
	return self->sliderPosition();
}

void QAbstractSlider_setInvertedAppearance(QAbstractSlider* self, bool invertedAppearance) {
	self->setInvertedAppearance(invertedAppearance);
}

bool QAbstractSlider_invertedAppearance(const QAbstractSlider* self) {
	return self->invertedAppearance();
}

void QAbstractSlider_setInvertedControls(QAbstractSlider* self, bool invertedControls) {
	self->setInvertedControls(invertedControls);
}

bool QAbstractSlider_invertedControls(const QAbstractSlider* self) {
	return self->invertedControls();
}

int QAbstractSlider_value(const QAbstractSlider* self) {
	return self->value();
}

void QAbstractSlider_triggerAction(QAbstractSlider* self, int action) {
	self->triggerAction(static_cast<QAbstractSlider::SliderAction>(action));
}

void QAbstractSlider_setValue(QAbstractSlider* self, int value) {
	self->setValue(static_cast<int>(value));
}

void QAbstractSlider_setOrientation(QAbstractSlider* self, int orientation) {
	self->setOrientation(static_cast<Qt::Orientation>(orientation));
}

void QAbstractSlider_setRange(QAbstractSlider* self, int min, int max) {
	self->setRange(static_cast<int>(min), static_cast<int>(max));
}

void QAbstractSlider_valueChanged(QAbstractSlider* self, int value) {
	self->valueChanged(static_cast<int>(value));
}

void QAbstractSlider_connect_valueChanged(QAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int value) {
			int sigval1 = value;
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractSlider::connect(self, static_cast<void (QAbstractSlider::*)(int)>(&QAbstractSlider::valueChanged), self, local_caller{slot, callback, release});
}

void QAbstractSlider_sliderPressed(QAbstractSlider* self) {
	self->sliderPressed();
}

void QAbstractSlider_connect_sliderPressed(QAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAbstractSlider::connect(self, static_cast<void (QAbstractSlider::*)()>(&QAbstractSlider::sliderPressed), self, local_caller{slot, callback, release});
}

void QAbstractSlider_sliderMoved(QAbstractSlider* self, int position) {
	self->sliderMoved(static_cast<int>(position));
}

void QAbstractSlider_connect_sliderMoved(QAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int position) {
			int sigval1 = position;
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractSlider::connect(self, static_cast<void (QAbstractSlider::*)(int)>(&QAbstractSlider::sliderMoved), self, local_caller{slot, callback, release});
}

void QAbstractSlider_sliderReleased(QAbstractSlider* self) {
	self->sliderReleased();
}

void QAbstractSlider_connect_sliderReleased(QAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAbstractSlider::connect(self, static_cast<void (QAbstractSlider::*)()>(&QAbstractSlider::sliderReleased), self, local_caller{slot, callback, release});
}

void QAbstractSlider_rangeChanged(QAbstractSlider* self, int min, int max) {
	self->rangeChanged(static_cast<int>(min), static_cast<int>(max));
}

void QAbstractSlider_connect_rangeChanged(QAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int min, int max) {
			int sigval1 = min;
			int sigval2 = max;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQAbstractSlider::connect(self, static_cast<void (QAbstractSlider::*)(int, int)>(&QAbstractSlider::rangeChanged), self, local_caller{slot, callback, release});
}

void QAbstractSlider_actionTriggered(QAbstractSlider* self, int action) {
	self->actionTriggered(static_cast<int>(action));
}

void QAbstractSlider_connect_actionTriggered(QAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int action) {
			int sigval1 = action;
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractSlider::connect(self, static_cast<void (QAbstractSlider::*)(int)>(&QAbstractSlider::actionTriggered), self, local_caller{slot, callback, release});
}

struct miqt_string QAbstractSlider_tr2(const char* s, const char* c) {
	QString _ret = QAbstractSlider::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractSlider_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractSlider::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAbstractSlider_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAbstractSlider*)(self) )->QAbstractSlider::metaObject();

}

void* QAbstractSlider_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::qt_metacast(param1);

}

int QAbstractSlider_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QAbstractSlider_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::event(e);

}

void QAbstractSlider_virtualbase_sliderChange(void* self, int change) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::sliderChange(static_cast<VirtualQAbstractSlider::SliderChange>(change));

}

void QAbstractSlider_virtualbase_keyPressEvent(void* self, QKeyEvent* ev) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::keyPressEvent(ev);

}

void QAbstractSlider_virtualbase_timerEvent(void* self, QTimerEvent* param1) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::timerEvent(param1);

}

void QAbstractSlider_virtualbase_wheelEvent(void* self, QWheelEvent* e) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::wheelEvent(e);

}

void QAbstractSlider_virtualbase_changeEvent(void* self, QEvent* e) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::changeEvent(e);

}

int QAbstractSlider_virtualbase_devType(const void* self) {

	return ( (const VirtualQAbstractSlider*)(self) )->QAbstractSlider::devType();

}

void QAbstractSlider_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::setVisible(visible);

}

QSize* QAbstractSlider_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQAbstractSlider*)(self) )->QAbstractSlider::sizeHint());

}

QSize* QAbstractSlider_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQAbstractSlider*)(self) )->QAbstractSlider::minimumSizeHint());

}

int QAbstractSlider_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQAbstractSlider*)(self) )->QAbstractSlider::heightForWidth(static_cast<int>(param1));

}

bool QAbstractSlider_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQAbstractSlider*)(self) )->QAbstractSlider::hasHeightForWidth();

}

QPaintEngine* QAbstractSlider_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQAbstractSlider*)(self) )->QAbstractSlider::paintEngine();

}

void QAbstractSlider_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::mousePressEvent(event);

}

void QAbstractSlider_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::mouseReleaseEvent(event);

}

void QAbstractSlider_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::mouseDoubleClickEvent(event);

}

void QAbstractSlider_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::mouseMoveEvent(event);

}

void QAbstractSlider_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::keyReleaseEvent(event);

}

void QAbstractSlider_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::focusInEvent(event);

}

void QAbstractSlider_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::focusOutEvent(event);

}

void QAbstractSlider_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::enterEvent(event);

}

void QAbstractSlider_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::leaveEvent(event);

}

void QAbstractSlider_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::paintEvent(event);

}

void QAbstractSlider_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::moveEvent(event);

}

void QAbstractSlider_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::resizeEvent(event);

}

void QAbstractSlider_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::closeEvent(event);

}

void QAbstractSlider_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::contextMenuEvent(event);

}

void QAbstractSlider_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::tabletEvent(event);

}

void QAbstractSlider_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::actionEvent(event);

}

void QAbstractSlider_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::dragEnterEvent(event);

}

void QAbstractSlider_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::dragMoveEvent(event);

}

void QAbstractSlider_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::dragLeaveEvent(event);

}

void QAbstractSlider_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::dropEvent(event);

}

void QAbstractSlider_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::showEvent(event);

}

void QAbstractSlider_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::hideEvent(event);

}

bool QAbstractSlider_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

int QAbstractSlider_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQAbstractSlider*)(self) )->QAbstractSlider::metric(static_cast<VirtualQAbstractSlider::PaintDeviceMetric>(param1));

}

void QAbstractSlider_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQAbstractSlider*)(self) )->QAbstractSlider::initPainter(painter);

}

QPaintDevice* QAbstractSlider_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQAbstractSlider*)(self) )->QAbstractSlider::redirected(offset);

}

QPainter* QAbstractSlider_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQAbstractSlider*)(self) )->QAbstractSlider::sharedPainter();

}

void QAbstractSlider_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::inputMethodEvent(param1);

}

QVariant* QAbstractSlider_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQAbstractSlider*)(self) )->QAbstractSlider::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QAbstractSlider_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::focusNextPrevChild(next);

}

bool QAbstractSlider_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::eventFilter(watched, event);

}

void QAbstractSlider_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::childEvent(event);

}

void QAbstractSlider_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::customEvent(event);

}

void QAbstractSlider_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::connectNotify(*signal);

}

void QAbstractSlider_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAbstractSlider*)(self) )->QAbstractSlider::disconnectNotify(*signal);

}

const QMetaObject* QAbstractSlider_staticMetaObject() { return &QAbstractSlider::staticMetaObject; }
void QAbstractSlider_protectedbase_setRepeatAction(void* self, int action) {
	VirtualQAbstractSlider* self_cast = static_cast<VirtualQAbstractSlider*>( (QAbstractSlider*)(self) );
	
	self_cast->setRepeatAction(static_cast<VirtualQAbstractSlider::SliderAction>(action));

}

int QAbstractSlider_protectedbase_repeatAction(const void* self) {
	VirtualQAbstractSlider* self_cast = static_cast<VirtualQAbstractSlider*>( (QAbstractSlider*)(self) );
	
	VirtualQAbstractSlider::SliderAction _ret = self_cast->repeatAction();
	return static_cast<int>(_ret);

}

void QAbstractSlider_protectedbase_setRepeatAction2(void* self, int action, int thresholdTime) {
	VirtualQAbstractSlider* self_cast = static_cast<VirtualQAbstractSlider*>( (QAbstractSlider*)(self) );
	
	self_cast->setRepeatAction(static_cast<VirtualQAbstractSlider::SliderAction>(action), static_cast<int>(thresholdTime));

}

void QAbstractSlider_protectedbase_setRepeatAction3(void* self, int action, int thresholdTime, int repeatTime) {
	VirtualQAbstractSlider* self_cast = static_cast<VirtualQAbstractSlider*>( (QAbstractSlider*)(self) );
	
	self_cast->setRepeatAction(static_cast<VirtualQAbstractSlider::SliderAction>(action), static_cast<int>(thresholdTime), static_cast<int>(repeatTime));

}

void QAbstractSlider_protectedbase_updateMicroFocus(void* self) {
	VirtualQAbstractSlider* self_cast = static_cast<VirtualQAbstractSlider*>( (QAbstractSlider*)(self) );
	
	self_cast->updateMicroFocus();

}

void QAbstractSlider_protectedbase_create(void* self) {
	VirtualQAbstractSlider* self_cast = static_cast<VirtualQAbstractSlider*>( (QAbstractSlider*)(self) );
	
	self_cast->create();

}

void QAbstractSlider_protectedbase_destroy(void* self) {
	VirtualQAbstractSlider* self_cast = static_cast<VirtualQAbstractSlider*>( (QAbstractSlider*)(self) );
	
	self_cast->destroy();

}

bool QAbstractSlider_protectedbase_focusNextChild(void* self) {
	VirtualQAbstractSlider* self_cast = static_cast<VirtualQAbstractSlider*>( (QAbstractSlider*)(self) );
	
	return self_cast->focusNextChild();

}

bool QAbstractSlider_protectedbase_focusPreviousChild(void* self) {
	VirtualQAbstractSlider* self_cast = static_cast<VirtualQAbstractSlider*>( (QAbstractSlider*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QAbstractSlider_protectedbase_sender(const void* self) {
	VirtualQAbstractSlider* self_cast = static_cast<VirtualQAbstractSlider*>( (QAbstractSlider*)(self) );
	
	return self_cast->sender();

}

int QAbstractSlider_protectedbase_senderSignalIndex(const void* self) {
	VirtualQAbstractSlider* self_cast = static_cast<VirtualQAbstractSlider*>( (QAbstractSlider*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QAbstractSlider_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQAbstractSlider* self_cast = static_cast<VirtualQAbstractSlider*>( (QAbstractSlider*)(self) );
	
	return self_cast->receivers(signal);

}

bool QAbstractSlider_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQAbstractSlider* self_cast = static_cast<VirtualQAbstractSlider*>( (QAbstractSlider*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QAbstractSlider_delete(QAbstractSlider* self) {
	delete self;
}

