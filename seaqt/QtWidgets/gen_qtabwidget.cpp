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
#include <QIcon>
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
#include <QStyleOptionTabWidgetFrame>
#include <QTabBar>
#include <QTabWidget>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtabwidget.h>
#include "gen_qtabwidget.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQTabWidget final : public QTabWidget {
	struct QTabWidget_VTable* vtbl;
public:

	VirtualQTabWidget(struct QTabWidget_VTable* vtbl, QWidget* parent): QTabWidget(parent), vtbl(vtbl) {};
	VirtualQTabWidget(struct QTabWidget_VTable* vtbl): QTabWidget(), vtbl(vtbl) {};

	virtual ~VirtualQTabWidget() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTabWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QTabWidget_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTabWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QTabWidget_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTabWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTabWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QTabWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QTabWidget_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QTabWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QTabWidget_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int width) const override {
		if (vtbl->heightForWidth == 0) {
			return QTabWidget::heightForWidth(width);
		}

		int sigval1 = width;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTabWidget_virtualbase_heightForWidth(const void* self, int width);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QTabWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QTabWidget_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void tabInserted(int index) override {
		if (vtbl->tabInserted == 0) {
			QTabWidget::tabInserted(index);
			return;
		}

		int sigval1 = index;

		vtbl->tabInserted(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_tabInserted(void* self, int index);

	// Subclass to allow providing a Go implementation
	virtual void tabRemoved(int index) override {
		if (vtbl->tabRemoved == 0) {
			QTabWidget::tabRemoved(index);
			return;
		}

		int sigval1 = index;

		vtbl->tabRemoved(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_tabRemoved(void* self, int index);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QTabWidget::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_showEvent(void* self, QShowEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QTabWidget::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_resizeEvent(void* self, QResizeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QTabWidget::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QTabWidget::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QTabWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QTabWidget::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTabWidget_virtualbase_event(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionTabWidgetFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QTabWidget::initStyleOption(option);
			return;
		}

		QStyleOptionTabWidgetFrame* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_initStyleOption(const void* self, QStyleOptionTabWidgetFrame* option);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QTabWidget::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTabWidget_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QTabWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QTabWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QTabWidget_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QTabWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QTabWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QTabWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QTabWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QTabWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QTabWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QTabWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QTabWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QTabWidget::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QTabWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QTabWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QTabWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QTabWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QTabWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QTabWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QTabWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QTabWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QTabWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QTabWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QTabWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QTabWidget::nativeEvent(eventType, message, result);
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

	friend bool QTabWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QTabWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTabWidget_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QTabWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QTabWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QTabWidget_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QTabWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QTabWidget_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QTabWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QTabWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QTabWidget_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QTabWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTabWidget_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTabWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTabWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTabWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTabWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTabWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTabWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTabWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QTabWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QTabWidget_protectedbase_setTabBar(bool* _dynamic_cast_ok, void* self, QTabBar* tabBar);
	friend void QTabWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QTabWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QTabWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QTabWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QTabWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QTabWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QTabWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QTabWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QTabWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QTabWidget* QTabWidget_new(struct QTabWidget_VTable* vtbl, QWidget* parent) {
	return new VirtualQTabWidget(vtbl, parent);
}

QTabWidget* QTabWidget_new2(struct QTabWidget_VTable* vtbl) {
	return new VirtualQTabWidget(vtbl);
}

void QTabWidget_virtbase(QTabWidget* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QTabWidget_metaObject(const QTabWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTabWidget_metacast(QTabWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTabWidget_metacall(QTabWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTabWidget_tr(const char* s) {
	QString _ret = QTabWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QTabWidget_addTab(QTabWidget* self, QWidget* widget, struct miqt_string param2) {
	QString param2_QString = QString::fromUtf8(param2.data, param2.len);
	return self->addTab(widget, param2_QString);
}

int QTabWidget_addTab2(QTabWidget* self, QWidget* widget, QIcon* icon, struct miqt_string label) {
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return self->addTab(widget, *icon, label_QString);
}

int QTabWidget_insertTab(QTabWidget* self, int index, QWidget* widget, struct miqt_string param3) {
	QString param3_QString = QString::fromUtf8(param3.data, param3.len);
	return self->insertTab(static_cast<int>(index), widget, param3_QString);
}

int QTabWidget_insertTab2(QTabWidget* self, int index, QWidget* widget, QIcon* icon, struct miqt_string label) {
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return self->insertTab(static_cast<int>(index), widget, *icon, label_QString);
}

void QTabWidget_removeTab(QTabWidget* self, int index) {
	self->removeTab(static_cast<int>(index));
}

bool QTabWidget_isTabEnabled(const QTabWidget* self, int index) {
	return self->isTabEnabled(static_cast<int>(index));
}

void QTabWidget_setTabEnabled(QTabWidget* self, int index, bool enabled) {
	self->setTabEnabled(static_cast<int>(index), enabled);
}

bool QTabWidget_isTabVisible(const QTabWidget* self, int index) {
	return self->isTabVisible(static_cast<int>(index));
}

void QTabWidget_setTabVisible(QTabWidget* self, int index, bool visible) {
	self->setTabVisible(static_cast<int>(index), visible);
}

struct miqt_string QTabWidget_tabText(const QTabWidget* self, int index) {
	QString _ret = self->tabText(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTabWidget_setTabText(QTabWidget* self, int index, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setTabText(static_cast<int>(index), text_QString);
}

QIcon* QTabWidget_tabIcon(const QTabWidget* self, int index) {
	return new QIcon(self->tabIcon(static_cast<int>(index)));
}

void QTabWidget_setTabIcon(QTabWidget* self, int index, QIcon* icon) {
	self->setTabIcon(static_cast<int>(index), *icon);
}

void QTabWidget_setTabToolTip(QTabWidget* self, int index, struct miqt_string tip) {
	QString tip_QString = QString::fromUtf8(tip.data, tip.len);
	self->setTabToolTip(static_cast<int>(index), tip_QString);
}

struct miqt_string QTabWidget_tabToolTip(const QTabWidget* self, int index) {
	QString _ret = self->tabToolTip(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTabWidget_setTabWhatsThis(QTabWidget* self, int index, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setTabWhatsThis(static_cast<int>(index), text_QString);
}

struct miqt_string QTabWidget_tabWhatsThis(const QTabWidget* self, int index) {
	QString _ret = self->tabWhatsThis(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QTabWidget_currentIndex(const QTabWidget* self) {
	return self->currentIndex();
}

QWidget* QTabWidget_currentWidget(const QTabWidget* self) {
	return self->currentWidget();
}

QWidget* QTabWidget_widget(const QTabWidget* self, int index) {
	return self->widget(static_cast<int>(index));
}

int QTabWidget_indexOf(const QTabWidget* self, QWidget* widget) {
	return self->indexOf(widget);
}

int QTabWidget_count(const QTabWidget* self) {
	return self->count();
}

int QTabWidget_tabPosition(const QTabWidget* self) {
	QTabWidget::TabPosition _ret = self->tabPosition();
	return static_cast<int>(_ret);
}

void QTabWidget_setTabPosition(QTabWidget* self, int position) {
	self->setTabPosition(static_cast<QTabWidget::TabPosition>(position));
}

bool QTabWidget_tabsClosable(const QTabWidget* self) {
	return self->tabsClosable();
}

void QTabWidget_setTabsClosable(QTabWidget* self, bool closeable) {
	self->setTabsClosable(closeable);
}

bool QTabWidget_isMovable(const QTabWidget* self) {
	return self->isMovable();
}

void QTabWidget_setMovable(QTabWidget* self, bool movable) {
	self->setMovable(movable);
}

int QTabWidget_tabShape(const QTabWidget* self) {
	QTabWidget::TabShape _ret = self->tabShape();
	return static_cast<int>(_ret);
}

void QTabWidget_setTabShape(QTabWidget* self, int s) {
	self->setTabShape(static_cast<QTabWidget::TabShape>(s));
}

QSize* QTabWidget_sizeHint(const QTabWidget* self) {
	return new QSize(self->sizeHint());
}

QSize* QTabWidget_minimumSizeHint(const QTabWidget* self) {
	return new QSize(self->minimumSizeHint());
}

int QTabWidget_heightForWidth(const QTabWidget* self, int width) {
	return self->heightForWidth(static_cast<int>(width));
}

bool QTabWidget_hasHeightForWidth(const QTabWidget* self) {
	return self->hasHeightForWidth();
}

void QTabWidget_setCornerWidget(QTabWidget* self, QWidget* w) {
	self->setCornerWidget(w);
}

QWidget* QTabWidget_cornerWidget(const QTabWidget* self) {
	return self->cornerWidget();
}

int QTabWidget_elideMode(const QTabWidget* self) {
	Qt::TextElideMode _ret = self->elideMode();
	return static_cast<int>(_ret);
}

void QTabWidget_setElideMode(QTabWidget* self, int mode) {
	self->setElideMode(static_cast<Qt::TextElideMode>(mode));
}

QSize* QTabWidget_iconSize(const QTabWidget* self) {
	return new QSize(self->iconSize());
}

void QTabWidget_setIconSize(QTabWidget* self, QSize* size) {
	self->setIconSize(*size);
}

bool QTabWidget_usesScrollButtons(const QTabWidget* self) {
	return self->usesScrollButtons();
}

void QTabWidget_setUsesScrollButtons(QTabWidget* self, bool useButtons) {
	self->setUsesScrollButtons(useButtons);
}

bool QTabWidget_documentMode(const QTabWidget* self) {
	return self->documentMode();
}

void QTabWidget_setDocumentMode(QTabWidget* self, bool set) {
	self->setDocumentMode(set);
}

bool QTabWidget_tabBarAutoHide(const QTabWidget* self) {
	return self->tabBarAutoHide();
}

void QTabWidget_setTabBarAutoHide(QTabWidget* self, bool enabled) {
	self->setTabBarAutoHide(enabled);
}

void QTabWidget_clear(QTabWidget* self) {
	self->clear();
}

QTabBar* QTabWidget_tabBar(const QTabWidget* self) {
	return self->tabBar();
}

void QTabWidget_setCurrentIndex(QTabWidget* self, int index) {
	self->setCurrentIndex(static_cast<int>(index));
}

void QTabWidget_setCurrentWidget(QTabWidget* self, QWidget* widget) {
	self->setCurrentWidget(widget);
}

void QTabWidget_currentChanged(QTabWidget* self, int index) {
	self->currentChanged(static_cast<int>(index));
}

void QTabWidget_connect_currentChanged(QTabWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQTabWidget::connect(self, static_cast<void (QTabWidget::*)(int)>(&QTabWidget::currentChanged), self, local_caller{slot, callback, release});
}

void QTabWidget_tabCloseRequested(QTabWidget* self, int index) {
	self->tabCloseRequested(static_cast<int>(index));
}

void QTabWidget_connect_tabCloseRequested(QTabWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQTabWidget::connect(self, static_cast<void (QTabWidget::*)(int)>(&QTabWidget::tabCloseRequested), self, local_caller{slot, callback, release});
}

void QTabWidget_tabBarClicked(QTabWidget* self, int index) {
	self->tabBarClicked(static_cast<int>(index));
}

void QTabWidget_connect_tabBarClicked(QTabWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQTabWidget::connect(self, static_cast<void (QTabWidget::*)(int)>(&QTabWidget::tabBarClicked), self, local_caller{slot, callback, release});
}

void QTabWidget_tabBarDoubleClicked(QTabWidget* self, int index) {
	self->tabBarDoubleClicked(static_cast<int>(index));
}

void QTabWidget_connect_tabBarDoubleClicked(QTabWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQTabWidget::connect(self, static_cast<void (QTabWidget::*)(int)>(&QTabWidget::tabBarDoubleClicked), self, local_caller{slot, callback, release});
}

struct miqt_string QTabWidget_tr2(const char* s, const char* c) {
	QString _ret = QTabWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTabWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QTabWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTabWidget_setCornerWidget2(QTabWidget* self, QWidget* w, int corner) {
	self->setCornerWidget(w, static_cast<Qt::Corner>(corner));
}

QWidget* QTabWidget_cornerWidget1(const QTabWidget* self, int corner) {
	return self->cornerWidget(static_cast<Qt::Corner>(corner));
}

QMetaObject* QTabWidget_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQTabWidget*)(self) )->QTabWidget::metaObject();

}

void* QTabWidget_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQTabWidget*)(self) )->QTabWidget::qt_metacast(param1);

}

int QTabWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQTabWidget*)(self) )->QTabWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QTabWidget_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQTabWidget*)(self) )->QTabWidget::sizeHint());

}

QSize* QTabWidget_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQTabWidget*)(self) )->QTabWidget::minimumSizeHint());

}

int QTabWidget_virtualbase_heightForWidth(const void* self, int width) {

	return ( (const VirtualQTabWidget*)(self) )->QTabWidget::heightForWidth(static_cast<int>(width));

}

bool QTabWidget_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQTabWidget*)(self) )->QTabWidget::hasHeightForWidth();

}

void QTabWidget_virtualbase_tabInserted(void* self, int index) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::tabInserted(static_cast<int>(index));

}

void QTabWidget_virtualbase_tabRemoved(void* self, int index) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::tabRemoved(static_cast<int>(index));

}

void QTabWidget_virtualbase_showEvent(void* self, QShowEvent* param1) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::showEvent(param1);

}

void QTabWidget_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::resizeEvent(param1);

}

void QTabWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::keyPressEvent(param1);

}

void QTabWidget_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::paintEvent(param1);

}

void QTabWidget_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::changeEvent(param1);

}

bool QTabWidget_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQTabWidget*)(self) )->QTabWidget::event(param1);

}

void QTabWidget_virtualbase_initStyleOption(const void* self, QStyleOptionTabWidgetFrame* option) {

	( (const VirtualQTabWidget*)(self) )->QTabWidget::initStyleOption(option);

}

int QTabWidget_virtualbase_devType(const void* self) {

	return ( (const VirtualQTabWidget*)(self) )->QTabWidget::devType();

}

void QTabWidget_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::setVisible(visible);

}

QPaintEngine* QTabWidget_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQTabWidget*)(self) )->QTabWidget::paintEngine();

}

void QTabWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::mousePressEvent(event);

}

void QTabWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::mouseReleaseEvent(event);

}

void QTabWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::mouseDoubleClickEvent(event);

}

void QTabWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::mouseMoveEvent(event);

}

void QTabWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::wheelEvent(event);

}

void QTabWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::keyReleaseEvent(event);

}

void QTabWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::focusInEvent(event);

}

void QTabWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::focusOutEvent(event);

}

void QTabWidget_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::enterEvent(event);

}

void QTabWidget_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::leaveEvent(event);

}

void QTabWidget_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::moveEvent(event);

}

void QTabWidget_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::closeEvent(event);

}

void QTabWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::contextMenuEvent(event);

}

void QTabWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::tabletEvent(event);

}

void QTabWidget_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::actionEvent(event);

}

void QTabWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::dragEnterEvent(event);

}

void QTabWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::dragMoveEvent(event);

}

void QTabWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::dragLeaveEvent(event);

}

void QTabWidget_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::dropEvent(event);

}

void QTabWidget_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::hideEvent(event);

}

bool QTabWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQTabWidget*)(self) )->QTabWidget::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

int QTabWidget_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQTabWidget*)(self) )->QTabWidget::metric(static_cast<VirtualQTabWidget::PaintDeviceMetric>(param1));

}

void QTabWidget_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQTabWidget*)(self) )->QTabWidget::initPainter(painter);

}

QPaintDevice* QTabWidget_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQTabWidget*)(self) )->QTabWidget::redirected(offset);

}

QPainter* QTabWidget_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQTabWidget*)(self) )->QTabWidget::sharedPainter();

}

void QTabWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::inputMethodEvent(param1);

}

QVariant* QTabWidget_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQTabWidget*)(self) )->QTabWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QTabWidget_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQTabWidget*)(self) )->QTabWidget::focusNextPrevChild(next);

}

bool QTabWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQTabWidget*)(self) )->QTabWidget::eventFilter(watched, event);

}

void QTabWidget_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::timerEvent(event);

}

void QTabWidget_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::childEvent(event);

}

void QTabWidget_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::customEvent(event);

}

void QTabWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::connectNotify(*signal);

}

void QTabWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTabWidget*)(self) )->QTabWidget::disconnectNotify(*signal);

}

const QMetaObject* QTabWidget_staticMetaObject() { return &QTabWidget::staticMetaObject; }
void QTabWidget_protectedbase_setTabBar(bool* _dynamic_cast_ok, void* self, QTabBar* tabBar) {
	VirtualQTabWidget* self_cast = dynamic_cast<VirtualQTabWidget*>( (QTabWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setTabBar(tabBar);

}

void QTabWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQTabWidget* self_cast = dynamic_cast<VirtualQTabWidget*>( (QTabWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QTabWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQTabWidget* self_cast = dynamic_cast<VirtualQTabWidget*>( (QTabWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QTabWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQTabWidget* self_cast = dynamic_cast<VirtualQTabWidget*>( (QTabWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QTabWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQTabWidget* self_cast = dynamic_cast<VirtualQTabWidget*>( (QTabWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QTabWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQTabWidget* self_cast = dynamic_cast<VirtualQTabWidget*>( (QTabWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QTabWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQTabWidget* self_cast = dynamic_cast<VirtualQTabWidget*>( (QTabWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QTabWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQTabWidget* self_cast = dynamic_cast<VirtualQTabWidget*>( (QTabWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QTabWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQTabWidget* self_cast = dynamic_cast<VirtualQTabWidget*>( (QTabWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QTabWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQTabWidget* self_cast = dynamic_cast<VirtualQTabWidget*>( (QTabWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QTabWidget_delete(QTabWidget* self) {
	delete self;
}

