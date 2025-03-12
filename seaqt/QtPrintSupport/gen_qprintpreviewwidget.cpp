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
class VirtualQPrintPreviewWidget final : public QPrintPreviewWidget {
	const QPrintPreviewWidget_VTable* vtbl;
	void* vdata;
public:
	friend const QPrintPreviewWidget_VTable* QPrintPreviewWidget_vtbl(const VirtualQPrintPreviewWidget* self);
	friend void* QPrintPreviewWidget_vdata(const VirtualQPrintPreviewWidget* self);
	friend void QPrintPreviewWidget_setVdata(VirtualQPrintPreviewWidget* self, void* vdata);

	VirtualQPrintPreviewWidget(const QPrintPreviewWidget_VTable* vtbl, void* vdata, QWidget* parent): QPrintPreviewWidget(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrintPreviewWidget(const QPrintPreviewWidget_VTable* vtbl, void* vdata, QPrinter* printer): QPrintPreviewWidget(printer), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrintPreviewWidget(const QPrintPreviewWidget_VTable* vtbl, void* vdata): QPrintPreviewWidget(), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrintPreviewWidget(const QPrintPreviewWidget_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent): QPrintPreviewWidget(printer, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrintPreviewWidget(const QPrintPreviewWidget_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent, Qt::WindowFlags flags): QPrintPreviewWidget(printer, parent, flags), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrintPreviewWidget(const QPrintPreviewWidget_VTable* vtbl, void* vdata, QWidget* parent, Qt::WindowFlags flags): QPrintPreviewWidget(parent, flags), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPrintPreviewWidget() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPrintPreviewWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QPrintPreviewWidget_virtualbase_metaObject(const VirtualQPrintPreviewWidget* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPrintPreviewWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QPrintPreviewWidget_virtualbase_metacast(VirtualQPrintPreviewWidget* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPrintPreviewWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewWidget_virtualbase_metacall(VirtualQPrintPreviewWidget* self, int param1, int param2, void** param3);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QPrintPreviewWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_setVisible(VirtualQPrintPreviewWidget* self, bool visible);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPrintPreviewWidget::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewWidget_virtualbase_devType(const VirtualQPrintPreviewWidget* self);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QPrintPreviewWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QPrintPreviewWidget_virtualbase_sizeHint(const VirtualQPrintPreviewWidget* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QPrintPreviewWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QPrintPreviewWidget_virtualbase_minimumSizeHint(const VirtualQPrintPreviewWidget* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QPrintPreviewWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewWidget_virtualbase_heightForWidth(const VirtualQPrintPreviewWidget* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QPrintPreviewWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QPrintPreviewWidget_virtualbase_hasHeightForWidth(const VirtualQPrintPreviewWidget* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPrintPreviewWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QPrintPreviewWidget_virtualbase_paintEngine(const VirtualQPrintPreviewWidget* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPrintPreviewWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QPrintPreviewWidget_virtualbase_event(VirtualQPrintPreviewWidget* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QPrintPreviewWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_mousePressEvent(VirtualQPrintPreviewWidget* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QPrintPreviewWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_mouseReleaseEvent(VirtualQPrintPreviewWidget* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QPrintPreviewWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_mouseDoubleClickEvent(VirtualQPrintPreviewWidget* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QPrintPreviewWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_mouseMoveEvent(VirtualQPrintPreviewWidget* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QPrintPreviewWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_wheelEvent(VirtualQPrintPreviewWidget* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QPrintPreviewWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_keyPressEvent(VirtualQPrintPreviewWidget* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QPrintPreviewWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_keyReleaseEvent(VirtualQPrintPreviewWidget* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QPrintPreviewWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_focusInEvent(VirtualQPrintPreviewWidget* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QPrintPreviewWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_focusOutEvent(VirtualQPrintPreviewWidget* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QPrintPreviewWidget::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_enterEvent(VirtualQPrintPreviewWidget* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QPrintPreviewWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_leaveEvent(VirtualQPrintPreviewWidget* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QPrintPreviewWidget::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_paintEvent(VirtualQPrintPreviewWidget* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QPrintPreviewWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_moveEvent(VirtualQPrintPreviewWidget* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QPrintPreviewWidget::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_resizeEvent(VirtualQPrintPreviewWidget* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QPrintPreviewWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_closeEvent(VirtualQPrintPreviewWidget* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QPrintPreviewWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_contextMenuEvent(VirtualQPrintPreviewWidget* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QPrintPreviewWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_tabletEvent(VirtualQPrintPreviewWidget* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QPrintPreviewWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_actionEvent(VirtualQPrintPreviewWidget* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QPrintPreviewWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_dragEnterEvent(VirtualQPrintPreviewWidget* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QPrintPreviewWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_dragMoveEvent(VirtualQPrintPreviewWidget* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QPrintPreviewWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_dragLeaveEvent(VirtualQPrintPreviewWidget* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QPrintPreviewWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_dropEvent(VirtualQPrintPreviewWidget* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QPrintPreviewWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_showEvent(VirtualQPrintPreviewWidget* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QPrintPreviewWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_hideEvent(VirtualQPrintPreviewWidget* self, QHideEvent* event);

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

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QPrintPreviewWidget_virtualbase_nativeEvent(VirtualQPrintPreviewWidget* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QPrintPreviewWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_changeEvent(VirtualQPrintPreviewWidget* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QPrintPreviewWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewWidget_virtualbase_metric(const VirtualQPrintPreviewWidget* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPrintPreviewWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_initPainter(const VirtualQPrintPreviewWidget* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPrintPreviewWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QPrintPreviewWidget_virtualbase_redirected(const VirtualQPrintPreviewWidget* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPrintPreviewWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QPrintPreviewWidget_virtualbase_sharedPainter(const VirtualQPrintPreviewWidget* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QPrintPreviewWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_inputMethodEvent(VirtualQPrintPreviewWidget* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QPrintPreviewWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QPrintPreviewWidget_virtualbase_inputMethodQuery(const VirtualQPrintPreviewWidget* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QPrintPreviewWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QPrintPreviewWidget_virtualbase_focusNextPrevChild(VirtualQPrintPreviewWidget* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPrintPreviewWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPrintPreviewWidget_virtualbase_eventFilter(VirtualQPrintPreviewWidget* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPrintPreviewWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_timerEvent(VirtualQPrintPreviewWidget* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPrintPreviewWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_childEvent(VirtualQPrintPreviewWidget* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPrintPreviewWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_customEvent(VirtualQPrintPreviewWidget* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPrintPreviewWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_connectNotify(VirtualQPrintPreviewWidget* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPrintPreviewWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QPrintPreviewWidget_virtualbase_disconnectNotify(VirtualQPrintPreviewWidget* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QPrintPreviewWidget_protectedbase_updateMicroFocus(VirtualQPrintPreviewWidget* self);
	friend void QPrintPreviewWidget_protectedbase_create(VirtualQPrintPreviewWidget* self);
	friend void QPrintPreviewWidget_protectedbase_destroy(VirtualQPrintPreviewWidget* self);
	friend bool QPrintPreviewWidget_protectedbase_focusNextChild(VirtualQPrintPreviewWidget* self);
	friend bool QPrintPreviewWidget_protectedbase_focusPreviousChild(VirtualQPrintPreviewWidget* self);
	friend QObject* QPrintPreviewWidget_protectedbase_sender(const VirtualQPrintPreviewWidget* self);
	friend int QPrintPreviewWidget_protectedbase_senderSignalIndex(const VirtualQPrintPreviewWidget* self);
	friend int QPrintPreviewWidget_protectedbase_receivers(const VirtualQPrintPreviewWidget* self, const char* signal);
	friend bool QPrintPreviewWidget_protectedbase_isSignalConnected(const VirtualQPrintPreviewWidget* self, QMetaMethod* signal);
};

VirtualQPrintPreviewWidget* QPrintPreviewWidget_new(const QPrintPreviewWidget_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQPrintPreviewWidget(vtbl, vdata, parent);
}

VirtualQPrintPreviewWidget* QPrintPreviewWidget_new2(const QPrintPreviewWidget_VTable* vtbl, void* vdata, QPrinter* printer) {
	return new VirtualQPrintPreviewWidget(vtbl, vdata, printer);
}

VirtualQPrintPreviewWidget* QPrintPreviewWidget_new3(const QPrintPreviewWidget_VTable* vtbl, void* vdata) {
	return new VirtualQPrintPreviewWidget(vtbl, vdata);
}

VirtualQPrintPreviewWidget* QPrintPreviewWidget_new4(const QPrintPreviewWidget_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent) {
	return new VirtualQPrintPreviewWidget(vtbl, vdata, printer, parent);
}

VirtualQPrintPreviewWidget* QPrintPreviewWidget_new5(const QPrintPreviewWidget_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent, int flags) {
	return new VirtualQPrintPreviewWidget(vtbl, vdata, printer, parent, static_cast<Qt::WindowFlags>(flags));
}

VirtualQPrintPreviewWidget* QPrintPreviewWidget_new6(const QPrintPreviewWidget_VTable* vtbl, void* vdata, QWidget* parent, int flags) {
	return new VirtualQPrintPreviewWidget(vtbl, vdata, parent, static_cast<Qt::WindowFlags>(flags));
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

void QPrintPreviewWidget_connect_paintRequested(VirtualQPrintPreviewWidget* self, intptr_t slot, void (*callback)(intptr_t, QPrinter*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QPrinter*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QPrinter*);
		void operator()(QPrinter* printer) {
			QPrinter* sigval1 = printer;
			callback(slot, sigval1);
		}
	};
	VirtualQPrintPreviewWidget::connect(self, static_cast<void (QPrintPreviewWidget::*)(QPrinter*)>(&QPrintPreviewWidget::paintRequested), self, local_caller{slot, callback, release});
}

void QPrintPreviewWidget_previewChanged(QPrintPreviewWidget* self) {
	self->previewChanged();
}

void QPrintPreviewWidget_connect_previewChanged(VirtualQPrintPreviewWidget* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQPrintPreviewWidget::connect(self, static_cast<void (QPrintPreviewWidget::*)()>(&QPrintPreviewWidget::previewChanged), self, local_caller{slot, callback, release});
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

QMetaObject* QPrintPreviewWidget_virtualbase_metaObject(const VirtualQPrintPreviewWidget* self) {

	return (QMetaObject*) self->QPrintPreviewWidget::metaObject();
}

void* QPrintPreviewWidget_virtualbase_metacast(VirtualQPrintPreviewWidget* self, const char* param1) {

	return self->QPrintPreviewWidget::qt_metacast(param1);
}

int QPrintPreviewWidget_virtualbase_metacall(VirtualQPrintPreviewWidget* self, int param1, int param2, void** param3) {

	return self->QPrintPreviewWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QPrintPreviewWidget_virtualbase_setVisible(VirtualQPrintPreviewWidget* self, bool visible) {

	self->QPrintPreviewWidget::setVisible(visible);
}

int QPrintPreviewWidget_virtualbase_devType(const VirtualQPrintPreviewWidget* self) {

	return self->QPrintPreviewWidget::devType();
}

QSize* QPrintPreviewWidget_virtualbase_sizeHint(const VirtualQPrintPreviewWidget* self) {

	return new QSize(self->QPrintPreviewWidget::sizeHint());
}

QSize* QPrintPreviewWidget_virtualbase_minimumSizeHint(const VirtualQPrintPreviewWidget* self) {

	return new QSize(self->QPrintPreviewWidget::minimumSizeHint());
}

int QPrintPreviewWidget_virtualbase_heightForWidth(const VirtualQPrintPreviewWidget* self, int param1) {

	return self->QPrintPreviewWidget::heightForWidth(static_cast<int>(param1));
}

bool QPrintPreviewWidget_virtualbase_hasHeightForWidth(const VirtualQPrintPreviewWidget* self) {

	return self->QPrintPreviewWidget::hasHeightForWidth();
}

QPaintEngine* QPrintPreviewWidget_virtualbase_paintEngine(const VirtualQPrintPreviewWidget* self) {

	return self->QPrintPreviewWidget::paintEngine();
}

bool QPrintPreviewWidget_virtualbase_event(VirtualQPrintPreviewWidget* self, QEvent* event) {

	return self->QPrintPreviewWidget::event(event);
}

void QPrintPreviewWidget_virtualbase_mousePressEvent(VirtualQPrintPreviewWidget* self, QMouseEvent* event) {

	self->QPrintPreviewWidget::mousePressEvent(event);
}

void QPrintPreviewWidget_virtualbase_mouseReleaseEvent(VirtualQPrintPreviewWidget* self, QMouseEvent* event) {

	self->QPrintPreviewWidget::mouseReleaseEvent(event);
}

void QPrintPreviewWidget_virtualbase_mouseDoubleClickEvent(VirtualQPrintPreviewWidget* self, QMouseEvent* event) {

	self->QPrintPreviewWidget::mouseDoubleClickEvent(event);
}

void QPrintPreviewWidget_virtualbase_mouseMoveEvent(VirtualQPrintPreviewWidget* self, QMouseEvent* event) {

	self->QPrintPreviewWidget::mouseMoveEvent(event);
}

void QPrintPreviewWidget_virtualbase_wheelEvent(VirtualQPrintPreviewWidget* self, QWheelEvent* event) {

	self->QPrintPreviewWidget::wheelEvent(event);
}

void QPrintPreviewWidget_virtualbase_keyPressEvent(VirtualQPrintPreviewWidget* self, QKeyEvent* event) {

	self->QPrintPreviewWidget::keyPressEvent(event);
}

void QPrintPreviewWidget_virtualbase_keyReleaseEvent(VirtualQPrintPreviewWidget* self, QKeyEvent* event) {

	self->QPrintPreviewWidget::keyReleaseEvent(event);
}

void QPrintPreviewWidget_virtualbase_focusInEvent(VirtualQPrintPreviewWidget* self, QFocusEvent* event) {

	self->QPrintPreviewWidget::focusInEvent(event);
}

void QPrintPreviewWidget_virtualbase_focusOutEvent(VirtualQPrintPreviewWidget* self, QFocusEvent* event) {

	self->QPrintPreviewWidget::focusOutEvent(event);
}

void QPrintPreviewWidget_virtualbase_enterEvent(VirtualQPrintPreviewWidget* self, QEnterEvent* event) {

	self->QPrintPreviewWidget::enterEvent(event);
}

void QPrintPreviewWidget_virtualbase_leaveEvent(VirtualQPrintPreviewWidget* self, QEvent* event) {

	self->QPrintPreviewWidget::leaveEvent(event);
}

void QPrintPreviewWidget_virtualbase_paintEvent(VirtualQPrintPreviewWidget* self, QPaintEvent* event) {

	self->QPrintPreviewWidget::paintEvent(event);
}

void QPrintPreviewWidget_virtualbase_moveEvent(VirtualQPrintPreviewWidget* self, QMoveEvent* event) {

	self->QPrintPreviewWidget::moveEvent(event);
}

void QPrintPreviewWidget_virtualbase_resizeEvent(VirtualQPrintPreviewWidget* self, QResizeEvent* event) {

	self->QPrintPreviewWidget::resizeEvent(event);
}

void QPrintPreviewWidget_virtualbase_closeEvent(VirtualQPrintPreviewWidget* self, QCloseEvent* event) {

	self->QPrintPreviewWidget::closeEvent(event);
}

void QPrintPreviewWidget_virtualbase_contextMenuEvent(VirtualQPrintPreviewWidget* self, QContextMenuEvent* event) {

	self->QPrintPreviewWidget::contextMenuEvent(event);
}

void QPrintPreviewWidget_virtualbase_tabletEvent(VirtualQPrintPreviewWidget* self, QTabletEvent* event) {

	self->QPrintPreviewWidget::tabletEvent(event);
}

void QPrintPreviewWidget_virtualbase_actionEvent(VirtualQPrintPreviewWidget* self, QActionEvent* event) {

	self->QPrintPreviewWidget::actionEvent(event);
}

void QPrintPreviewWidget_virtualbase_dragEnterEvent(VirtualQPrintPreviewWidget* self, QDragEnterEvent* event) {

	self->QPrintPreviewWidget::dragEnterEvent(event);
}

void QPrintPreviewWidget_virtualbase_dragMoveEvent(VirtualQPrintPreviewWidget* self, QDragMoveEvent* event) {

	self->QPrintPreviewWidget::dragMoveEvent(event);
}

void QPrintPreviewWidget_virtualbase_dragLeaveEvent(VirtualQPrintPreviewWidget* self, QDragLeaveEvent* event) {

	self->QPrintPreviewWidget::dragLeaveEvent(event);
}

void QPrintPreviewWidget_virtualbase_dropEvent(VirtualQPrintPreviewWidget* self, QDropEvent* event) {

	self->QPrintPreviewWidget::dropEvent(event);
}

void QPrintPreviewWidget_virtualbase_showEvent(VirtualQPrintPreviewWidget* self, QShowEvent* event) {

	self->QPrintPreviewWidget::showEvent(event);
}

void QPrintPreviewWidget_virtualbase_hideEvent(VirtualQPrintPreviewWidget* self, QHideEvent* event) {

	self->QPrintPreviewWidget::hideEvent(event);
}

bool QPrintPreviewWidget_virtualbase_nativeEvent(VirtualQPrintPreviewWidget* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QPrintPreviewWidget::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

void QPrintPreviewWidget_virtualbase_changeEvent(VirtualQPrintPreviewWidget* self, QEvent* param1) {

	self->QPrintPreviewWidget::changeEvent(param1);
}

int QPrintPreviewWidget_virtualbase_metric(const VirtualQPrintPreviewWidget* self, int param1) {

	return self->QPrintPreviewWidget::metric(static_cast<VirtualQPrintPreviewWidget::PaintDeviceMetric>(param1));
}

void QPrintPreviewWidget_virtualbase_initPainter(const VirtualQPrintPreviewWidget* self, QPainter* painter) {

	self->QPrintPreviewWidget::initPainter(painter);
}

QPaintDevice* QPrintPreviewWidget_virtualbase_redirected(const VirtualQPrintPreviewWidget* self, QPoint* offset) {

	return self->QPrintPreviewWidget::redirected(offset);
}

QPainter* QPrintPreviewWidget_virtualbase_sharedPainter(const VirtualQPrintPreviewWidget* self) {

	return self->QPrintPreviewWidget::sharedPainter();
}

void QPrintPreviewWidget_virtualbase_inputMethodEvent(VirtualQPrintPreviewWidget* self, QInputMethodEvent* param1) {

	self->QPrintPreviewWidget::inputMethodEvent(param1);
}

QVariant* QPrintPreviewWidget_virtualbase_inputMethodQuery(const VirtualQPrintPreviewWidget* self, int param1) {

	return new QVariant(self->QPrintPreviewWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QPrintPreviewWidget_virtualbase_focusNextPrevChild(VirtualQPrintPreviewWidget* self, bool next) {

	return self->QPrintPreviewWidget::focusNextPrevChild(next);
}

bool QPrintPreviewWidget_virtualbase_eventFilter(VirtualQPrintPreviewWidget* self, QObject* watched, QEvent* event) {

	return self->QPrintPreviewWidget::eventFilter(watched, event);
}

void QPrintPreviewWidget_virtualbase_timerEvent(VirtualQPrintPreviewWidget* self, QTimerEvent* event) {

	self->QPrintPreviewWidget::timerEvent(event);
}

void QPrintPreviewWidget_virtualbase_childEvent(VirtualQPrintPreviewWidget* self, QChildEvent* event) {

	self->QPrintPreviewWidget::childEvent(event);
}

void QPrintPreviewWidget_virtualbase_customEvent(VirtualQPrintPreviewWidget* self, QEvent* event) {

	self->QPrintPreviewWidget::customEvent(event);
}

void QPrintPreviewWidget_virtualbase_connectNotify(VirtualQPrintPreviewWidget* self, QMetaMethod* signal) {

	self->QPrintPreviewWidget::connectNotify(*signal);
}

void QPrintPreviewWidget_virtualbase_disconnectNotify(VirtualQPrintPreviewWidget* self, QMetaMethod* signal) {

	self->QPrintPreviewWidget::disconnectNotify(*signal);
}

const QMetaObject* QPrintPreviewWidget_staticMetaObject() { return &QPrintPreviewWidget::staticMetaObject; }

const QPrintPreviewWidget_VTable* QPrintPreviewWidget_vtbl(const VirtualQPrintPreviewWidget* self) { return self->vtbl; }
void* QPrintPreviewWidget_vdata(const VirtualQPrintPreviewWidget* self) { return self->vdata; }
void QPrintPreviewWidget_setVdata(VirtualQPrintPreviewWidget* self, void* vdata) { self->vdata = vdata; }

void QPrintPreviewWidget_protectedbase_updateMicroFocus(VirtualQPrintPreviewWidget* self) {
	self->updateMicroFocus();
}

void QPrintPreviewWidget_protectedbase_create(VirtualQPrintPreviewWidget* self) {
	self->create();
}

void QPrintPreviewWidget_protectedbase_destroy(VirtualQPrintPreviewWidget* self) {
	self->destroy();
}

bool QPrintPreviewWidget_protectedbase_focusNextChild(VirtualQPrintPreviewWidget* self) {
	return self->focusNextChild();
}

bool QPrintPreviewWidget_protectedbase_focusPreviousChild(VirtualQPrintPreviewWidget* self) {
	return self->focusPreviousChild();
}

QObject* QPrintPreviewWidget_protectedbase_sender(const VirtualQPrintPreviewWidget* self) {
	return self->sender();
}

int QPrintPreviewWidget_protectedbase_senderSignalIndex(const VirtualQPrintPreviewWidget* self) {
	return self->senderSignalIndex();
}

int QPrintPreviewWidget_protectedbase_receivers(const VirtualQPrintPreviewWidget* self, const char* signal) {
	return self->receivers(signal);
}

bool QPrintPreviewWidget_protectedbase_isSignalConnected(const VirtualQPrintPreviewWidget* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPrintPreviewWidget_delete(QPrintPreviewWidget* self) {
	delete self;
}

