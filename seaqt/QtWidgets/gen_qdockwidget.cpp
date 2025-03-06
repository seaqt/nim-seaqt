#include <QAction>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDockWidget>
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
#include <QStyleOptionDockWidget>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qdockwidget.h>
#include "gen_qdockwidget.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QDockWidget_featuresChanged(intptr_t, int);
void miqt_exec_callback_QDockWidget_topLevelChanged(intptr_t, bool);
void miqt_exec_callback_QDockWidget_allowedAreasChanged(intptr_t, int);
void miqt_exec_callback_QDockWidget_visibilityChanged(intptr_t, bool);
void miqt_exec_callback_QDockWidget_dockLocationChanged(intptr_t, int);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQDockWidget final : public QDockWidget {
	struct QDockWidget_VTable* vtbl;
public:

	VirtualQDockWidget(struct QDockWidget_VTable* vtbl, QWidget* parent): QDockWidget(parent), vtbl(vtbl) {};
	VirtualQDockWidget(struct QDockWidget_VTable* vtbl, const QString& title): QDockWidget(title), vtbl(vtbl) {};
	VirtualQDockWidget(struct QDockWidget_VTable* vtbl): QDockWidget(), vtbl(vtbl) {};
	VirtualQDockWidget(struct QDockWidget_VTable* vtbl, const QString& title, QWidget* parent): QDockWidget(title, parent), vtbl(vtbl) {};
	VirtualQDockWidget(struct QDockWidget_VTable* vtbl, const QString& title, QWidget* parent, Qt::WindowFlags flags): QDockWidget(title, parent, flags), vtbl(vtbl) {};
	VirtualQDockWidget(struct QDockWidget_VTable* vtbl, QWidget* parent, Qt::WindowFlags flags): QDockWidget(parent, flags), vtbl(vtbl) {};

	virtual ~VirtualQDockWidget() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDockWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QDockWidget_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDockWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QDockWidget_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDockWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDockWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QDockWidget::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_changeEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDockWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDockWidget::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDockWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QDockWidget_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionDockWidget* option) const override {
		if (vtbl->initStyleOption == 0) {
			QDockWidget::initStyleOption(option);
			return;
		}

		QStyleOptionDockWidget* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_initStyleOption(const void* self, QStyleOptionDockWidget* option);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDockWidget::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QDockWidget_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDockWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDockWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QDockWidget_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDockWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QDockWidget_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDockWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDockWidget_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDockWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QDockWidget_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDockWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QDockWidget_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDockWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDockWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDockWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDockWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDockWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QDockWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDockWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDockWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDockWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDockWidget::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDockWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDockWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QDockWidget::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDockWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDockWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDockWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDockWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDockWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDockWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDockWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDockWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDockWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDockWidget::nativeEvent(eventType, message, result);
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

	friend bool QDockWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDockWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDockWidget_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDockWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDockWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QDockWidget_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDockWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QDockWidget_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDockWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDockWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QDockWidget_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDockWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QDockWidget_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDockWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDockWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDockWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDockWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDockWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDockWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDockWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QDockWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QDockWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QDockWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QDockWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QDockWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QDockWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QDockWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QDockWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QDockWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QDockWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QDockWidget* QDockWidget_new(struct QDockWidget_VTable* vtbl, QWidget* parent) {
	return new VirtualQDockWidget(vtbl, parent);
}

QDockWidget* QDockWidget_new2(struct QDockWidget_VTable* vtbl, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new VirtualQDockWidget(vtbl, title_QString);
}

QDockWidget* QDockWidget_new3(struct QDockWidget_VTable* vtbl) {
	return new VirtualQDockWidget(vtbl);
}

QDockWidget* QDockWidget_new4(struct QDockWidget_VTable* vtbl, struct miqt_string title, QWidget* parent) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new VirtualQDockWidget(vtbl, title_QString, parent);
}

QDockWidget* QDockWidget_new5(struct QDockWidget_VTable* vtbl, struct miqt_string title, QWidget* parent, int flags) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new VirtualQDockWidget(vtbl, title_QString, parent, static_cast<Qt::WindowFlags>(flags));
}

QDockWidget* QDockWidget_new6(struct QDockWidget_VTable* vtbl, QWidget* parent, int flags) {
	return new VirtualQDockWidget(vtbl, parent, static_cast<Qt::WindowFlags>(flags));
}

void QDockWidget_virtbase(QDockWidget* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QDockWidget_metaObject(const QDockWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDockWidget_metacast(QDockWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDockWidget_metacall(QDockWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDockWidget_tr(const char* s) {
	QString _ret = QDockWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWidget* QDockWidget_widget(const QDockWidget* self) {
	return self->widget();
}

void QDockWidget_setWidget(QDockWidget* self, QWidget* widget) {
	self->setWidget(widget);
}

void QDockWidget_setFeatures(QDockWidget* self, int features) {
	self->setFeatures(static_cast<QDockWidget::DockWidgetFeatures>(features));
}

int QDockWidget_features(const QDockWidget* self) {
	QDockWidget::DockWidgetFeatures _ret = self->features();
	return static_cast<int>(_ret);
}

void QDockWidget_setFloating(QDockWidget* self, bool floating) {
	self->setFloating(floating);
}

bool QDockWidget_isFloating(const QDockWidget* self) {
	return self->isFloating();
}

void QDockWidget_setAllowedAreas(QDockWidget* self, int areas) {
	self->setAllowedAreas(static_cast<Qt::DockWidgetAreas>(areas));
}

int QDockWidget_allowedAreas(const QDockWidget* self) {
	Qt::DockWidgetAreas _ret = self->allowedAreas();
	return static_cast<int>(_ret);
}

void QDockWidget_setTitleBarWidget(QDockWidget* self, QWidget* widget) {
	self->setTitleBarWidget(widget);
}

QWidget* QDockWidget_titleBarWidget(const QDockWidget* self) {
	return self->titleBarWidget();
}

bool QDockWidget_isAreaAllowed(const QDockWidget* self, int area) {
	return self->isAreaAllowed(static_cast<Qt::DockWidgetArea>(area));
}

QAction* QDockWidget_toggleViewAction(const QDockWidget* self) {
	return self->toggleViewAction();
}

void QDockWidget_featuresChanged(QDockWidget* self, int features) {
	self->featuresChanged(static_cast<QDockWidget::DockWidgetFeatures>(features));
}

void QDockWidget_connect_featuresChanged(QDockWidget* self, intptr_t slot) {
	VirtualQDockWidget::connect(self, static_cast<void (QDockWidget::*)(QDockWidget::DockWidgetFeatures)>(&QDockWidget::featuresChanged), self, [=](QDockWidget::DockWidgetFeatures features) {
		QDockWidget::DockWidgetFeatures features_ret = features;
		int sigval1 = static_cast<int>(features_ret);
		miqt_exec_callback_QDockWidget_featuresChanged(slot, sigval1);
	});
}

void QDockWidget_topLevelChanged(QDockWidget* self, bool topLevel) {
	self->topLevelChanged(topLevel);
}

void QDockWidget_connect_topLevelChanged(QDockWidget* self, intptr_t slot) {
	VirtualQDockWidget::connect(self, static_cast<void (QDockWidget::*)(bool)>(&QDockWidget::topLevelChanged), self, [=](bool topLevel) {
		bool sigval1 = topLevel;
		miqt_exec_callback_QDockWidget_topLevelChanged(slot, sigval1);
	});
}

void QDockWidget_allowedAreasChanged(QDockWidget* self, int allowedAreas) {
	self->allowedAreasChanged(static_cast<Qt::DockWidgetAreas>(allowedAreas));
}

void QDockWidget_connect_allowedAreasChanged(QDockWidget* self, intptr_t slot) {
	VirtualQDockWidget::connect(self, static_cast<void (QDockWidget::*)(Qt::DockWidgetAreas)>(&QDockWidget::allowedAreasChanged), self, [=](Qt::DockWidgetAreas allowedAreas) {
		Qt::DockWidgetAreas allowedAreas_ret = allowedAreas;
		int sigval1 = static_cast<int>(allowedAreas_ret);
		miqt_exec_callback_QDockWidget_allowedAreasChanged(slot, sigval1);
	});
}

void QDockWidget_visibilityChanged(QDockWidget* self, bool visible) {
	self->visibilityChanged(visible);
}

void QDockWidget_connect_visibilityChanged(QDockWidget* self, intptr_t slot) {
	VirtualQDockWidget::connect(self, static_cast<void (QDockWidget::*)(bool)>(&QDockWidget::visibilityChanged), self, [=](bool visible) {
		bool sigval1 = visible;
		miqt_exec_callback_QDockWidget_visibilityChanged(slot, sigval1);
	});
}

void QDockWidget_dockLocationChanged(QDockWidget* self, int area) {
	self->dockLocationChanged(static_cast<Qt::DockWidgetArea>(area));
}

void QDockWidget_connect_dockLocationChanged(QDockWidget* self, intptr_t slot) {
	VirtualQDockWidget::connect(self, static_cast<void (QDockWidget::*)(Qt::DockWidgetArea)>(&QDockWidget::dockLocationChanged), self, [=](Qt::DockWidgetArea area) {
		Qt::DockWidgetArea area_ret = area;
		int sigval1 = static_cast<int>(area_ret);
		miqt_exec_callback_QDockWidget_dockLocationChanged(slot, sigval1);
	});
}

struct miqt_string QDockWidget_tr2(const char* s, const char* c) {
	QString _ret = QDockWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDockWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QDockWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QDockWidget_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQDockWidget*)(self) )->QDockWidget::metaObject();

}

void* QDockWidget_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQDockWidget*)(self) )->QDockWidget::qt_metacast(param1);

}

int QDockWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQDockWidget*)(self) )->QDockWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QDockWidget_virtualbase_changeEvent(void* self, QEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::changeEvent(event);

}

void QDockWidget_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::closeEvent(event);

}

void QDockWidget_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::paintEvent(event);

}

bool QDockWidget_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQDockWidget*)(self) )->QDockWidget::event(event);

}

void QDockWidget_virtualbase_initStyleOption(const void* self, QStyleOptionDockWidget* option) {

	( (const VirtualQDockWidget*)(self) )->QDockWidget::initStyleOption(option);

}

int QDockWidget_virtualbase_devType(const void* self) {

	return ( (const VirtualQDockWidget*)(self) )->QDockWidget::devType();

}

void QDockWidget_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::setVisible(visible);

}

QSize* QDockWidget_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQDockWidget*)(self) )->QDockWidget::sizeHint());

}

QSize* QDockWidget_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQDockWidget*)(self) )->QDockWidget::minimumSizeHint());

}

int QDockWidget_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQDockWidget*)(self) )->QDockWidget::heightForWidth(static_cast<int>(param1));

}

bool QDockWidget_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQDockWidget*)(self) )->QDockWidget::hasHeightForWidth();

}

QPaintEngine* QDockWidget_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQDockWidget*)(self) )->QDockWidget::paintEngine();

}

void QDockWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::mousePressEvent(event);

}

void QDockWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::mouseReleaseEvent(event);

}

void QDockWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::mouseDoubleClickEvent(event);

}

void QDockWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::mouseMoveEvent(event);

}

void QDockWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::wheelEvent(event);

}

void QDockWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::keyPressEvent(event);

}

void QDockWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::keyReleaseEvent(event);

}

void QDockWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::focusInEvent(event);

}

void QDockWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::focusOutEvent(event);

}

void QDockWidget_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::enterEvent(event);

}

void QDockWidget_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::leaveEvent(event);

}

void QDockWidget_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::moveEvent(event);

}

void QDockWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::resizeEvent(event);

}

void QDockWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::contextMenuEvent(event);

}

void QDockWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::tabletEvent(event);

}

void QDockWidget_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::actionEvent(event);

}

void QDockWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::dragEnterEvent(event);

}

void QDockWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::dragMoveEvent(event);

}

void QDockWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::dragLeaveEvent(event);

}

void QDockWidget_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::dropEvent(event);

}

void QDockWidget_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::showEvent(event);

}

void QDockWidget_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::hideEvent(event);

}

bool QDockWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQDockWidget*)(self) )->QDockWidget::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

int QDockWidget_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQDockWidget*)(self) )->QDockWidget::metric(static_cast<VirtualQDockWidget::PaintDeviceMetric>(param1));

}

void QDockWidget_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQDockWidget*)(self) )->QDockWidget::initPainter(painter);

}

QPaintDevice* QDockWidget_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQDockWidget*)(self) )->QDockWidget::redirected(offset);

}

QPainter* QDockWidget_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQDockWidget*)(self) )->QDockWidget::sharedPainter();

}

void QDockWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::inputMethodEvent(param1);

}

QVariant* QDockWidget_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQDockWidget*)(self) )->QDockWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QDockWidget_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQDockWidget*)(self) )->QDockWidget::focusNextPrevChild(next);

}

bool QDockWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQDockWidget*)(self) )->QDockWidget::eventFilter(watched, event);

}

void QDockWidget_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::timerEvent(event);

}

void QDockWidget_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::childEvent(event);

}

void QDockWidget_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::customEvent(event);

}

void QDockWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::connectNotify(*signal);

}

void QDockWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQDockWidget*)(self) )->QDockWidget::disconnectNotify(*signal);

}

const QMetaObject* QDockWidget_staticMetaObject() { return &QDockWidget::staticMetaObject; }
void QDockWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQDockWidget* self_cast = dynamic_cast<VirtualQDockWidget*>( (QDockWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QDockWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQDockWidget* self_cast = dynamic_cast<VirtualQDockWidget*>( (QDockWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QDockWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQDockWidget* self_cast = dynamic_cast<VirtualQDockWidget*>( (QDockWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QDockWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQDockWidget* self_cast = dynamic_cast<VirtualQDockWidget*>( (QDockWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QDockWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQDockWidget* self_cast = dynamic_cast<VirtualQDockWidget*>( (QDockWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QDockWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQDockWidget* self_cast = dynamic_cast<VirtualQDockWidget*>( (QDockWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QDockWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQDockWidget* self_cast = dynamic_cast<VirtualQDockWidget*>( (QDockWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QDockWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQDockWidget* self_cast = dynamic_cast<VirtualQDockWidget*>( (QDockWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QDockWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQDockWidget* self_cast = dynamic_cast<VirtualQDockWidget*>( (QDockWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QDockWidget_delete(QDockWidget* self) {
	delete self;
}

