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
#include <QPrintPreviewWidget>
#include <QPrinter>
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
#include <qprintpreviewwidget.h>
#include "gen_qprintpreviewwidget.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QPrintPreviewWidget_paintRequested(intptr_t, QPrinter*);
void miqt_exec_callback_QPrintPreviewWidget_previewChanged(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQPrintPreviewWidget final : public QPrintPreviewWidget {
	struct QPrintPreviewWidget_VTable* vtbl;
public:

	VirtualQPrintPreviewWidget(struct QPrintPreviewWidget_VTable* vtbl, QWidget* parent): QPrintPreviewWidget(parent), vtbl(vtbl) {};
	VirtualQPrintPreviewWidget(struct QPrintPreviewWidget_VTable* vtbl, QPrinter* printer): QPrintPreviewWidget(printer), vtbl(vtbl) {};
	VirtualQPrintPreviewWidget(struct QPrintPreviewWidget_VTable* vtbl): QPrintPreviewWidget(), vtbl(vtbl) {};
	VirtualQPrintPreviewWidget(struct QPrintPreviewWidget_VTable* vtbl, QPrinter* printer, QWidget* parent): QPrintPreviewWidget(printer, parent), vtbl(vtbl) {};
	VirtualQPrintPreviewWidget(struct QPrintPreviewWidget_VTable* vtbl, QPrinter* printer, QWidget* parent, Qt::WindowFlags flags): QPrintPreviewWidget(printer, parent, flags), vtbl(vtbl) {};
	VirtualQPrintPreviewWidget(struct QPrintPreviewWidget_VTable* vtbl, QWidget* parent, Qt::WindowFlags flags): QPrintPreviewWidget(parent, flags), vtbl(vtbl) {};

	virtual ~VirtualQPrintPreviewWidget() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPrintPreviewWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QPrintPreviewWidget_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPrintPreviewWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QPrintPreviewWidget_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPrintPreviewWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QPrintPreviewWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPrintPreviewWidget::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewWidget_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QPrintPreviewWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QPrintPreviewWidget_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QPrintPreviewWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QPrintPreviewWidget_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QPrintPreviewWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewWidget_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QPrintPreviewWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QPrintPreviewWidget_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPrintPreviewWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QPrintPreviewWidget_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPrintPreviewWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QPrintPreviewWidget_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QPrintPreviewWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QPrintPreviewWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QPrintPreviewWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QPrintPreviewWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QPrintPreviewWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QPrintPreviewWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QPrintPreviewWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QPrintPreviewWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QPrintPreviewWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QPrintPreviewWidget::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QPrintPreviewWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QPrintPreviewWidget::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QPrintPreviewWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QPrintPreviewWidget::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QPrintPreviewWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QPrintPreviewWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QPrintPreviewWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QPrintPreviewWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QPrintPreviewWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QPrintPreviewWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QPrintPreviewWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QPrintPreviewWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QPrintPreviewWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QPrintPreviewWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QPrintPreviewWidget::nativeEvent(eventType, message, result);
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

	friend bool QPrintPreviewWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QPrintPreviewWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QPrintPreviewWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewWidget_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPrintPreviewWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPrintPreviewWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QPrintPreviewWidget_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPrintPreviewWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QPrintPreviewWidget_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QPrintPreviewWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QPrintPreviewWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QPrintPreviewWidget_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QPrintPreviewWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QPrintPreviewWidget_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPrintPreviewWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPrintPreviewWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPrintPreviewWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPrintPreviewWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPrintPreviewWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPrintPreviewWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPrintPreviewWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QPrintPreviewWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QPrintPreviewWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QPrintPreviewWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QPrintPreviewWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QPrintPreviewWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QPrintPreviewWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QPrintPreviewWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QPrintPreviewWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QPrintPreviewWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QPrintPreviewWidget* QPrintPreviewWidget_new(struct QPrintPreviewWidget_VTable* vtbl, QWidget* parent) {
	return new VirtualQPrintPreviewWidget(vtbl, parent);
}

QPrintPreviewWidget* QPrintPreviewWidget_new2(struct QPrintPreviewWidget_VTable* vtbl, QPrinter* printer) {
	return new VirtualQPrintPreviewWidget(vtbl, printer);
}

QPrintPreviewWidget* QPrintPreviewWidget_new3(struct QPrintPreviewWidget_VTable* vtbl) {
	return new VirtualQPrintPreviewWidget(vtbl);
}

QPrintPreviewWidget* QPrintPreviewWidget_new4(struct QPrintPreviewWidget_VTable* vtbl, QPrinter* printer, QWidget* parent) {
	return new VirtualQPrintPreviewWidget(vtbl, printer, parent);
}

QPrintPreviewWidget* QPrintPreviewWidget_new5(struct QPrintPreviewWidget_VTable* vtbl, QPrinter* printer, QWidget* parent, int flags) {
	return new VirtualQPrintPreviewWidget(vtbl, printer, parent, static_cast<Qt::WindowFlags>(flags));
}

QPrintPreviewWidget* QPrintPreviewWidget_new6(struct QPrintPreviewWidget_VTable* vtbl, QWidget* parent, int flags) {
	return new VirtualQPrintPreviewWidget(vtbl, parent, static_cast<Qt::WindowFlags>(flags));
}

void QPrintPreviewWidget_virtbase(QPrintPreviewWidget* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QPrintPreviewWidget_metaObject(const QPrintPreviewWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPrintPreviewWidget_metacast(QPrintPreviewWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPrintPreviewWidget_metacall(QPrintPreviewWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPrintPreviewWidget_tr(const char* s) {
	QString _ret = QPrintPreviewWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

double QPrintPreviewWidget_zoomFactor(const QPrintPreviewWidget* self) {
	qreal _ret = self->zoomFactor();
	return static_cast<double>(_ret);
}

int QPrintPreviewWidget_orientation(const QPrintPreviewWidget* self) {
	QPageLayout::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

int QPrintPreviewWidget_viewMode(const QPrintPreviewWidget* self) {
	QPrintPreviewWidget::ViewMode _ret = self->viewMode();
	return static_cast<int>(_ret);
}

int QPrintPreviewWidget_zoomMode(const QPrintPreviewWidget* self) {
	QPrintPreviewWidget::ZoomMode _ret = self->zoomMode();
	return static_cast<int>(_ret);
}

int QPrintPreviewWidget_currentPage(const QPrintPreviewWidget* self) {
	return self->currentPage();
}

int QPrintPreviewWidget_pageCount(const QPrintPreviewWidget* self) {
	return self->pageCount();
}

void QPrintPreviewWidget_setVisible(QPrintPreviewWidget* self, bool visible) {
	self->setVisible(visible);
}

void QPrintPreviewWidget_print(QPrintPreviewWidget* self) {
	self->print();
}

void QPrintPreviewWidget_zoomIn(QPrintPreviewWidget* self) {
	self->zoomIn();
}

void QPrintPreviewWidget_zoomOut(QPrintPreviewWidget* self) {
	self->zoomOut();
}

void QPrintPreviewWidget_setZoomFactor(QPrintPreviewWidget* self, double zoomFactor) {
	self->setZoomFactor(static_cast<qreal>(zoomFactor));
}

void QPrintPreviewWidget_setOrientation(QPrintPreviewWidget* self, int orientation) {
	self->setOrientation(static_cast<QPageLayout::Orientation>(orientation));
}

void QPrintPreviewWidget_setViewMode(QPrintPreviewWidget* self, int viewMode) {
	self->setViewMode(static_cast<QPrintPreviewWidget::ViewMode>(viewMode));
}

void QPrintPreviewWidget_setZoomMode(QPrintPreviewWidget* self, int zoomMode) {
	self->setZoomMode(static_cast<QPrintPreviewWidget::ZoomMode>(zoomMode));
}

void QPrintPreviewWidget_setCurrentPage(QPrintPreviewWidget* self, int pageNumber) {
	self->setCurrentPage(static_cast<int>(pageNumber));
}

void QPrintPreviewWidget_fitToWidth(QPrintPreviewWidget* self) {
	self->fitToWidth();
}

void QPrintPreviewWidget_fitInView(QPrintPreviewWidget* self) {
	self->fitInView();
}

void QPrintPreviewWidget_setLandscapeOrientation(QPrintPreviewWidget* self) {
	self->setLandscapeOrientation();
}

void QPrintPreviewWidget_setPortraitOrientation(QPrintPreviewWidget* self) {
	self->setPortraitOrientation();
}

void QPrintPreviewWidget_setSinglePageViewMode(QPrintPreviewWidget* self) {
	self->setSinglePageViewMode();
}

void QPrintPreviewWidget_setFacingPagesViewMode(QPrintPreviewWidget* self) {
	self->setFacingPagesViewMode();
}

void QPrintPreviewWidget_setAllPagesViewMode(QPrintPreviewWidget* self) {
	self->setAllPagesViewMode();
}

void QPrintPreviewWidget_updatePreview(QPrintPreviewWidget* self) {
	self->updatePreview();
}

void QPrintPreviewWidget_paintRequested(QPrintPreviewWidget* self, QPrinter* printer) {
	self->paintRequested(printer);
}

void QPrintPreviewWidget_connect_paintRequested(QPrintPreviewWidget* self, intptr_t slot) {
	VirtualQPrintPreviewWidget::connect(self, static_cast<void (QPrintPreviewWidget::*)(QPrinter*)>(&QPrintPreviewWidget::paintRequested), self, [=](QPrinter* printer) {
		QPrinter* sigval1 = printer;
		miqt_exec_callback_QPrintPreviewWidget_paintRequested(slot, sigval1);
	});
}

void QPrintPreviewWidget_previewChanged(QPrintPreviewWidget* self) {
	self->previewChanged();
}

void QPrintPreviewWidget_connect_previewChanged(QPrintPreviewWidget* self, intptr_t slot) {
	VirtualQPrintPreviewWidget::connect(self, static_cast<void (QPrintPreviewWidget::*)()>(&QPrintPreviewWidget::previewChanged), self, [=]() {
		miqt_exec_callback_QPrintPreviewWidget_previewChanged(slot);
	});
}

struct miqt_string QPrintPreviewWidget_tr2(const char* s, const char* c) {
	QString _ret = QPrintPreviewWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPrintPreviewWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QPrintPreviewWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPrintPreviewWidget_zoomIn1(QPrintPreviewWidget* self, double zoom) {
	self->zoomIn(static_cast<qreal>(zoom));
}

void QPrintPreviewWidget_zoomOut1(QPrintPreviewWidget* self, double zoom) {
	self->zoomOut(static_cast<qreal>(zoom));
}

QMetaObject* QPrintPreviewWidget_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::metaObject();

}

void* QPrintPreviewWidget_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::qt_metacast(param1);

}

int QPrintPreviewWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QPrintPreviewWidget_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::setVisible(visible);

}

int QPrintPreviewWidget_virtualbase_devType(const void* self) {

	return ( (const VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::devType();

}

QSize* QPrintPreviewWidget_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::sizeHint());

}

QSize* QPrintPreviewWidget_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::minimumSizeHint());

}

int QPrintPreviewWidget_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::heightForWidth(static_cast<int>(param1));

}

bool QPrintPreviewWidget_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::hasHeightForWidth();

}

QPaintEngine* QPrintPreviewWidget_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::paintEngine();

}

bool QPrintPreviewWidget_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::event(event);

}

void QPrintPreviewWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::mousePressEvent(event);

}

void QPrintPreviewWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::mouseReleaseEvent(event);

}

void QPrintPreviewWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::mouseDoubleClickEvent(event);

}

void QPrintPreviewWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::mouseMoveEvent(event);

}

void QPrintPreviewWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::wheelEvent(event);

}

void QPrintPreviewWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::keyPressEvent(event);

}

void QPrintPreviewWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::keyReleaseEvent(event);

}

void QPrintPreviewWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::focusInEvent(event);

}

void QPrintPreviewWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::focusOutEvent(event);

}

void QPrintPreviewWidget_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::enterEvent(event);

}

void QPrintPreviewWidget_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::leaveEvent(event);

}

void QPrintPreviewWidget_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::paintEvent(event);

}

void QPrintPreviewWidget_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::moveEvent(event);

}

void QPrintPreviewWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::resizeEvent(event);

}

void QPrintPreviewWidget_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::closeEvent(event);

}

void QPrintPreviewWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::contextMenuEvent(event);

}

void QPrintPreviewWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::tabletEvent(event);

}

void QPrintPreviewWidget_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::actionEvent(event);

}

void QPrintPreviewWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::dragEnterEvent(event);

}

void QPrintPreviewWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::dragMoveEvent(event);

}

void QPrintPreviewWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::dragLeaveEvent(event);

}

void QPrintPreviewWidget_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::dropEvent(event);

}

void QPrintPreviewWidget_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::showEvent(event);

}

void QPrintPreviewWidget_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::hideEvent(event);

}

bool QPrintPreviewWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

void QPrintPreviewWidget_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::changeEvent(param1);

}

int QPrintPreviewWidget_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::metric(static_cast<VirtualQPrintPreviewWidget::PaintDeviceMetric>(param1));

}

void QPrintPreviewWidget_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::initPainter(painter);

}

QPaintDevice* QPrintPreviewWidget_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::redirected(offset);

}

QPainter* QPrintPreviewWidget_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::sharedPainter();

}

void QPrintPreviewWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::inputMethodEvent(param1);

}

QVariant* QPrintPreviewWidget_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QPrintPreviewWidget_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::focusNextPrevChild(next);

}

bool QPrintPreviewWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::eventFilter(watched, event);

}

void QPrintPreviewWidget_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::timerEvent(event);

}

void QPrintPreviewWidget_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::childEvent(event);

}

void QPrintPreviewWidget_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::customEvent(event);

}

void QPrintPreviewWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::connectNotify(*signal);

}

void QPrintPreviewWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQPrintPreviewWidget*)(self) )->QPrintPreviewWidget::disconnectNotify(*signal);

}

const QMetaObject* QPrintPreviewWidget_staticMetaObject() { return &QPrintPreviewWidget::staticMetaObject; }
void QPrintPreviewWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQPrintPreviewWidget* self_cast = dynamic_cast<VirtualQPrintPreviewWidget*>( (QPrintPreviewWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QPrintPreviewWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQPrintPreviewWidget* self_cast = dynamic_cast<VirtualQPrintPreviewWidget*>( (QPrintPreviewWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QPrintPreviewWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQPrintPreviewWidget* self_cast = dynamic_cast<VirtualQPrintPreviewWidget*>( (QPrintPreviewWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QPrintPreviewWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQPrintPreviewWidget* self_cast = dynamic_cast<VirtualQPrintPreviewWidget*>( (QPrintPreviewWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QPrintPreviewWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQPrintPreviewWidget* self_cast = dynamic_cast<VirtualQPrintPreviewWidget*>( (QPrintPreviewWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QPrintPreviewWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQPrintPreviewWidget* self_cast = dynamic_cast<VirtualQPrintPreviewWidget*>( (QPrintPreviewWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QPrintPreviewWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQPrintPreviewWidget* self_cast = dynamic_cast<VirtualQPrintPreviewWidget*>( (QPrintPreviewWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QPrintPreviewWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQPrintPreviewWidget* self_cast = dynamic_cast<VirtualQPrintPreviewWidget*>( (QPrintPreviewWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QPrintPreviewWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQPrintPreviewWidget* self_cast = dynamic_cast<VirtualQPrintPreviewWidget*>( (QPrintPreviewWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QPrintPreviewWidget_delete(QPrintPreviewWidget* self) {
	delete self;
}

