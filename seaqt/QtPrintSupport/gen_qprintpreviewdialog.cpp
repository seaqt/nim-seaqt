#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDialog>
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
#include <QPrintPreviewDialog>
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
#include <qprintpreviewdialog.h>
#include "gen_qprintpreviewdialog.h"
class VirtualQPrintPreviewDialog final : public QPrintPreviewDialog {
	const QPrintPreviewDialog_VTable* vtbl;
	void* vdata;
public:
	friend const QPrintPreviewDialog_VTable* QPrintPreviewDialog_vtbl(const VirtualQPrintPreviewDialog* self);
	friend void* QPrintPreviewDialog_vdata(const VirtualQPrintPreviewDialog* self);
	friend void QPrintPreviewDialog_setVdata(VirtualQPrintPreviewDialog* self, void* vdata);

	VirtualQPrintPreviewDialog(const QPrintPreviewDialog_VTable* vtbl, void* vdata, QWidget* parent): QPrintPreviewDialog(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrintPreviewDialog(const QPrintPreviewDialog_VTable* vtbl, void* vdata): QPrintPreviewDialog(), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrintPreviewDialog(const QPrintPreviewDialog_VTable* vtbl, void* vdata, QPrinter* printer): QPrintPreviewDialog(printer), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrintPreviewDialog(const QPrintPreviewDialog_VTable* vtbl, void* vdata, QWidget* parent, Qt::WindowFlags flags): QPrintPreviewDialog(parent, flags), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrintPreviewDialog(const QPrintPreviewDialog_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent): QPrintPreviewDialog(printer, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrintPreviewDialog(const QPrintPreviewDialog_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent, Qt::WindowFlags flags): QPrintPreviewDialog(printer, parent, flags), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPrintPreviewDialog() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPrintPreviewDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QPrintPreviewDialog_virtualbase_metaObject(const VirtualQPrintPreviewDialog* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPrintPreviewDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QPrintPreviewDialog_virtualbase_metacast(VirtualQPrintPreviewDialog* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPrintPreviewDialog::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewDialog_virtualbase_metacall(VirtualQPrintPreviewDialog* self, int param1, int param2, void** param3);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QPrintPreviewDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_setVisible(VirtualQPrintPreviewDialog* self, bool visible);

	virtual void done(int result) override {
		if (vtbl->done == 0) {
			QPrintPreviewDialog::done(result);
			return;
		}

		int sigval1 = result;

		vtbl->done(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_done(VirtualQPrintPreviewDialog* self, int result);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QPrintPreviewDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QPrintPreviewDialog_virtualbase_sizeHint(const VirtualQPrintPreviewDialog* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QPrintPreviewDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QPrintPreviewDialog_virtualbase_minimumSizeHint(const VirtualQPrintPreviewDialog* self);

	virtual void open() override {
		if (vtbl->open == 0) {
			QPrintPreviewDialog::open();
			return;
		}


		vtbl->open(this);

	}

	friend void QPrintPreviewDialog_virtualbase_open(VirtualQPrintPreviewDialog* self);

	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QPrintPreviewDialog::exec();
		}


		int callback_return_value = vtbl->exec(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewDialog_virtualbase_exec(VirtualQPrintPreviewDialog* self);

	virtual void accept() override {
		if (vtbl->accept == 0) {
			QPrintPreviewDialog::accept();
			return;
		}


		vtbl->accept(this);

	}

	friend void QPrintPreviewDialog_virtualbase_accept(VirtualQPrintPreviewDialog* self);

	virtual void reject() override {
		if (vtbl->reject == 0) {
			QPrintPreviewDialog::reject();
			return;
		}


		vtbl->reject(this);

	}

	friend void QPrintPreviewDialog_virtualbase_reject(VirtualQPrintPreviewDialog* self);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QPrintPreviewDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_keyPressEvent(VirtualQPrintPreviewDialog* self, QKeyEvent* param1);

	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QPrintPreviewDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_closeEvent(VirtualQPrintPreviewDialog* self, QCloseEvent* param1);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QPrintPreviewDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_showEvent(VirtualQPrintPreviewDialog* self, QShowEvent* param1);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QPrintPreviewDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_resizeEvent(VirtualQPrintPreviewDialog* self, QResizeEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QPrintPreviewDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_contextMenuEvent(VirtualQPrintPreviewDialog* self, QContextMenuEvent* param1);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QPrintPreviewDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPrintPreviewDialog_virtualbase_eventFilter(VirtualQPrintPreviewDialog* self, QObject* param1, QEvent* param2);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPrintPreviewDialog::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewDialog_virtualbase_devType(const VirtualQPrintPreviewDialog* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QPrintPreviewDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewDialog_virtualbase_heightForWidth(const VirtualQPrintPreviewDialog* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QPrintPreviewDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QPrintPreviewDialog_virtualbase_hasHeightForWidth(const VirtualQPrintPreviewDialog* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPrintPreviewDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QPrintPreviewDialog_virtualbase_paintEngine(const VirtualQPrintPreviewDialog* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPrintPreviewDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QPrintPreviewDialog_virtualbase_event(VirtualQPrintPreviewDialog* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QPrintPreviewDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_mousePressEvent(VirtualQPrintPreviewDialog* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QPrintPreviewDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_mouseReleaseEvent(VirtualQPrintPreviewDialog* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QPrintPreviewDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_mouseDoubleClickEvent(VirtualQPrintPreviewDialog* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QPrintPreviewDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_mouseMoveEvent(VirtualQPrintPreviewDialog* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QPrintPreviewDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_wheelEvent(VirtualQPrintPreviewDialog* self, QWheelEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QPrintPreviewDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_keyReleaseEvent(VirtualQPrintPreviewDialog* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QPrintPreviewDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_focusInEvent(VirtualQPrintPreviewDialog* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QPrintPreviewDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_focusOutEvent(VirtualQPrintPreviewDialog* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QPrintPreviewDialog::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_enterEvent(VirtualQPrintPreviewDialog* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QPrintPreviewDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_leaveEvent(VirtualQPrintPreviewDialog* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QPrintPreviewDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_paintEvent(VirtualQPrintPreviewDialog* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QPrintPreviewDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_moveEvent(VirtualQPrintPreviewDialog* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QPrintPreviewDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_tabletEvent(VirtualQPrintPreviewDialog* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QPrintPreviewDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_actionEvent(VirtualQPrintPreviewDialog* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QPrintPreviewDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_dragEnterEvent(VirtualQPrintPreviewDialog* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QPrintPreviewDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_dragMoveEvent(VirtualQPrintPreviewDialog* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QPrintPreviewDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_dragLeaveEvent(VirtualQPrintPreviewDialog* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QPrintPreviewDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_dropEvent(VirtualQPrintPreviewDialog* self, QDropEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QPrintPreviewDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_hideEvent(VirtualQPrintPreviewDialog* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QPrintPreviewDialog::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QPrintPreviewDialog_virtualbase_nativeEvent(VirtualQPrintPreviewDialog* self, struct miqt_string eventType, void* message, long* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QPrintPreviewDialog::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_changeEvent(VirtualQPrintPreviewDialog* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QPrintPreviewDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewDialog_virtualbase_metric(const VirtualQPrintPreviewDialog* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPrintPreviewDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_initPainter(const VirtualQPrintPreviewDialog* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPrintPreviewDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QPrintPreviewDialog_virtualbase_redirected(const VirtualQPrintPreviewDialog* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPrintPreviewDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QPrintPreviewDialog_virtualbase_sharedPainter(const VirtualQPrintPreviewDialog* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QPrintPreviewDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_inputMethodEvent(VirtualQPrintPreviewDialog* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QPrintPreviewDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QPrintPreviewDialog_virtualbase_inputMethodQuery(const VirtualQPrintPreviewDialog* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QPrintPreviewDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QPrintPreviewDialog_virtualbase_focusNextPrevChild(VirtualQPrintPreviewDialog* self, bool next);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPrintPreviewDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_timerEvent(VirtualQPrintPreviewDialog* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPrintPreviewDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_childEvent(VirtualQPrintPreviewDialog* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPrintPreviewDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_customEvent(VirtualQPrintPreviewDialog* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPrintPreviewDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_connectNotify(VirtualQPrintPreviewDialog* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPrintPreviewDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_disconnectNotify(VirtualQPrintPreviewDialog* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QPrintPreviewDialog_protectedbase_adjustPosition(VirtualQPrintPreviewDialog* self, QWidget* param1);
	friend void QPrintPreviewDialog_protectedbase_updateMicroFocus(VirtualQPrintPreviewDialog* self);
	friend void QPrintPreviewDialog_protectedbase_create(VirtualQPrintPreviewDialog* self);
	friend void QPrintPreviewDialog_protectedbase_destroy(VirtualQPrintPreviewDialog* self);
	friend bool QPrintPreviewDialog_protectedbase_focusNextChild(VirtualQPrintPreviewDialog* self);
	friend bool QPrintPreviewDialog_protectedbase_focusPreviousChild(VirtualQPrintPreviewDialog* self);
	friend QObject* QPrintPreviewDialog_protectedbase_sender(const VirtualQPrintPreviewDialog* self);
	friend int QPrintPreviewDialog_protectedbase_senderSignalIndex(const VirtualQPrintPreviewDialog* self);
	friend int QPrintPreviewDialog_protectedbase_receivers(const VirtualQPrintPreviewDialog* self, const char* signal);
	friend bool QPrintPreviewDialog_protectedbase_isSignalConnected(const VirtualQPrintPreviewDialog* self, QMetaMethod* signal);
};

VirtualQPrintPreviewDialog* QPrintPreviewDialog_new(const QPrintPreviewDialog_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQPrintPreviewDialog(vtbl, vdata, parent);
}

VirtualQPrintPreviewDialog* QPrintPreviewDialog_new2(const QPrintPreviewDialog_VTable* vtbl, void* vdata) {
	return new VirtualQPrintPreviewDialog(vtbl, vdata);
}

VirtualQPrintPreviewDialog* QPrintPreviewDialog_new3(const QPrintPreviewDialog_VTable* vtbl, void* vdata, QPrinter* printer) {
	return new VirtualQPrintPreviewDialog(vtbl, vdata, printer);
}

VirtualQPrintPreviewDialog* QPrintPreviewDialog_new4(const QPrintPreviewDialog_VTable* vtbl, void* vdata, QWidget* parent, int flags) {
	return new VirtualQPrintPreviewDialog(vtbl, vdata, parent, static_cast<Qt::WindowFlags>(flags));
}

VirtualQPrintPreviewDialog* QPrintPreviewDialog_new5(const QPrintPreviewDialog_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent) {
	return new VirtualQPrintPreviewDialog(vtbl, vdata, printer, parent);
}

VirtualQPrintPreviewDialog* QPrintPreviewDialog_new6(const QPrintPreviewDialog_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent, int flags) {
	return new VirtualQPrintPreviewDialog(vtbl, vdata, printer, parent, static_cast<Qt::WindowFlags>(flags));
}

void QPrintPreviewDialog_virtbase(QPrintPreviewDialog* src, QDialog** outptr_QDialog) {
	*outptr_QDialog = static_cast<QDialog*>(src);
}

QMetaObject* QPrintPreviewDialog_metaObject(const QPrintPreviewDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPrintPreviewDialog_metacast(QPrintPreviewDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPrintPreviewDialog_metacall(QPrintPreviewDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPrintPreviewDialog_tr(const char* s) {
	QString _ret = QPrintPreviewDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPrintPreviewDialog_trUtf8(const char* s) {
	QString _ret = QPrintPreviewDialog::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QPrinter* QPrintPreviewDialog_printer(QPrintPreviewDialog* self) {
	return self->printer();
}

void QPrintPreviewDialog_setVisible(QPrintPreviewDialog* self, bool visible) {
	self->setVisible(visible);
}

void QPrintPreviewDialog_done(QPrintPreviewDialog* self, int result) {
	self->done(static_cast<int>(result));
}

void QPrintPreviewDialog_paintRequested(QPrintPreviewDialog* self, QPrinter* printer) {
	self->paintRequested(printer);
}

void QPrintPreviewDialog_connect_paintRequested(VirtualQPrintPreviewDialog* self, intptr_t slot, void (*callback)(intptr_t, QPrinter*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QPrinter*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QPrinter*);
		void operator()(QPrinter* printer) {
			QPrinter* sigval1 = printer;
			callback(slot, sigval1);
		}
	};
	VirtualQPrintPreviewDialog::connect(self, static_cast<void (QPrintPreviewDialog::*)(QPrinter*)>(&QPrintPreviewDialog::paintRequested), self, local_caller{slot, callback, release});
}

struct miqt_string QPrintPreviewDialog_tr2(const char* s, const char* c) {
	QString _ret = QPrintPreviewDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPrintPreviewDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QPrintPreviewDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPrintPreviewDialog_trUtf82(const char* s, const char* c) {
	QString _ret = QPrintPreviewDialog::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPrintPreviewDialog_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QPrintPreviewDialog::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPrintPreviewDialog_virtualbase_metaObject(const VirtualQPrintPreviewDialog* self) {

	return (QMetaObject*) self->QPrintPreviewDialog::metaObject();
}

void* QPrintPreviewDialog_virtualbase_metacast(VirtualQPrintPreviewDialog* self, const char* param1) {

	return self->QPrintPreviewDialog::qt_metacast(param1);
}

int QPrintPreviewDialog_virtualbase_metacall(VirtualQPrintPreviewDialog* self, int param1, int param2, void** param3) {

	return self->QPrintPreviewDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QPrintPreviewDialog_virtualbase_setVisible(VirtualQPrintPreviewDialog* self, bool visible) {

	self->QPrintPreviewDialog::setVisible(visible);
}

void QPrintPreviewDialog_virtualbase_done(VirtualQPrintPreviewDialog* self, int result) {

	self->QPrintPreviewDialog::done(static_cast<int>(result));
}

QSize* QPrintPreviewDialog_virtualbase_sizeHint(const VirtualQPrintPreviewDialog* self) {

	return new QSize(self->QPrintPreviewDialog::sizeHint());
}

QSize* QPrintPreviewDialog_virtualbase_minimumSizeHint(const VirtualQPrintPreviewDialog* self) {

	return new QSize(self->QPrintPreviewDialog::minimumSizeHint());
}

void QPrintPreviewDialog_virtualbase_open(VirtualQPrintPreviewDialog* self) {

	self->QPrintPreviewDialog::open();
}

int QPrintPreviewDialog_virtualbase_exec(VirtualQPrintPreviewDialog* self) {

	return self->QPrintPreviewDialog::exec();
}

void QPrintPreviewDialog_virtualbase_accept(VirtualQPrintPreviewDialog* self) {

	self->QPrintPreviewDialog::accept();
}

void QPrintPreviewDialog_virtualbase_reject(VirtualQPrintPreviewDialog* self) {

	self->QPrintPreviewDialog::reject();
}

void QPrintPreviewDialog_virtualbase_keyPressEvent(VirtualQPrintPreviewDialog* self, QKeyEvent* param1) {

	self->QPrintPreviewDialog::keyPressEvent(param1);
}

void QPrintPreviewDialog_virtualbase_closeEvent(VirtualQPrintPreviewDialog* self, QCloseEvent* param1) {

	self->QPrintPreviewDialog::closeEvent(param1);
}

void QPrintPreviewDialog_virtualbase_showEvent(VirtualQPrintPreviewDialog* self, QShowEvent* param1) {

	self->QPrintPreviewDialog::showEvent(param1);
}

void QPrintPreviewDialog_virtualbase_resizeEvent(VirtualQPrintPreviewDialog* self, QResizeEvent* param1) {

	self->QPrintPreviewDialog::resizeEvent(param1);
}

void QPrintPreviewDialog_virtualbase_contextMenuEvent(VirtualQPrintPreviewDialog* self, QContextMenuEvent* param1) {

	self->QPrintPreviewDialog::contextMenuEvent(param1);
}

bool QPrintPreviewDialog_virtualbase_eventFilter(VirtualQPrintPreviewDialog* self, QObject* param1, QEvent* param2) {

	return self->QPrintPreviewDialog::eventFilter(param1, param2);
}

int QPrintPreviewDialog_virtualbase_devType(const VirtualQPrintPreviewDialog* self) {

	return self->QPrintPreviewDialog::devType();
}

int QPrintPreviewDialog_virtualbase_heightForWidth(const VirtualQPrintPreviewDialog* self, int param1) {

	return self->QPrintPreviewDialog::heightForWidth(static_cast<int>(param1));
}

bool QPrintPreviewDialog_virtualbase_hasHeightForWidth(const VirtualQPrintPreviewDialog* self) {

	return self->QPrintPreviewDialog::hasHeightForWidth();
}

QPaintEngine* QPrintPreviewDialog_virtualbase_paintEngine(const VirtualQPrintPreviewDialog* self) {

	return self->QPrintPreviewDialog::paintEngine();
}

bool QPrintPreviewDialog_virtualbase_event(VirtualQPrintPreviewDialog* self, QEvent* event) {

	return self->QPrintPreviewDialog::event(event);
}

void QPrintPreviewDialog_virtualbase_mousePressEvent(VirtualQPrintPreviewDialog* self, QMouseEvent* event) {

	self->QPrintPreviewDialog::mousePressEvent(event);
}

void QPrintPreviewDialog_virtualbase_mouseReleaseEvent(VirtualQPrintPreviewDialog* self, QMouseEvent* event) {

	self->QPrintPreviewDialog::mouseReleaseEvent(event);
}

void QPrintPreviewDialog_virtualbase_mouseDoubleClickEvent(VirtualQPrintPreviewDialog* self, QMouseEvent* event) {

	self->QPrintPreviewDialog::mouseDoubleClickEvent(event);
}

void QPrintPreviewDialog_virtualbase_mouseMoveEvent(VirtualQPrintPreviewDialog* self, QMouseEvent* event) {

	self->QPrintPreviewDialog::mouseMoveEvent(event);
}

void QPrintPreviewDialog_virtualbase_wheelEvent(VirtualQPrintPreviewDialog* self, QWheelEvent* event) {

	self->QPrintPreviewDialog::wheelEvent(event);
}

void QPrintPreviewDialog_virtualbase_keyReleaseEvent(VirtualQPrintPreviewDialog* self, QKeyEvent* event) {

	self->QPrintPreviewDialog::keyReleaseEvent(event);
}

void QPrintPreviewDialog_virtualbase_focusInEvent(VirtualQPrintPreviewDialog* self, QFocusEvent* event) {

	self->QPrintPreviewDialog::focusInEvent(event);
}

void QPrintPreviewDialog_virtualbase_focusOutEvent(VirtualQPrintPreviewDialog* self, QFocusEvent* event) {

	self->QPrintPreviewDialog::focusOutEvent(event);
}

void QPrintPreviewDialog_virtualbase_enterEvent(VirtualQPrintPreviewDialog* self, QEvent* event) {

	self->QPrintPreviewDialog::enterEvent(event);
}

void QPrintPreviewDialog_virtualbase_leaveEvent(VirtualQPrintPreviewDialog* self, QEvent* event) {

	self->QPrintPreviewDialog::leaveEvent(event);
}

void QPrintPreviewDialog_virtualbase_paintEvent(VirtualQPrintPreviewDialog* self, QPaintEvent* event) {

	self->QPrintPreviewDialog::paintEvent(event);
}

void QPrintPreviewDialog_virtualbase_moveEvent(VirtualQPrintPreviewDialog* self, QMoveEvent* event) {

	self->QPrintPreviewDialog::moveEvent(event);
}

void QPrintPreviewDialog_virtualbase_tabletEvent(VirtualQPrintPreviewDialog* self, QTabletEvent* event) {

	self->QPrintPreviewDialog::tabletEvent(event);
}

void QPrintPreviewDialog_virtualbase_actionEvent(VirtualQPrintPreviewDialog* self, QActionEvent* event) {

	self->QPrintPreviewDialog::actionEvent(event);
}

void QPrintPreviewDialog_virtualbase_dragEnterEvent(VirtualQPrintPreviewDialog* self, QDragEnterEvent* event) {

	self->QPrintPreviewDialog::dragEnterEvent(event);
}

void QPrintPreviewDialog_virtualbase_dragMoveEvent(VirtualQPrintPreviewDialog* self, QDragMoveEvent* event) {

	self->QPrintPreviewDialog::dragMoveEvent(event);
}

void QPrintPreviewDialog_virtualbase_dragLeaveEvent(VirtualQPrintPreviewDialog* self, QDragLeaveEvent* event) {

	self->QPrintPreviewDialog::dragLeaveEvent(event);
}

void QPrintPreviewDialog_virtualbase_dropEvent(VirtualQPrintPreviewDialog* self, QDropEvent* event) {

	self->QPrintPreviewDialog::dropEvent(event);
}

void QPrintPreviewDialog_virtualbase_hideEvent(VirtualQPrintPreviewDialog* self, QHideEvent* event) {

	self->QPrintPreviewDialog::hideEvent(event);
}

bool QPrintPreviewDialog_virtualbase_nativeEvent(VirtualQPrintPreviewDialog* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QPrintPreviewDialog::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

void QPrintPreviewDialog_virtualbase_changeEvent(VirtualQPrintPreviewDialog* self, QEvent* param1) {

	self->QPrintPreviewDialog::changeEvent(param1);
}

int QPrintPreviewDialog_virtualbase_metric(const VirtualQPrintPreviewDialog* self, int param1) {

	return self->QPrintPreviewDialog::metric(static_cast<VirtualQPrintPreviewDialog::PaintDeviceMetric>(param1));
}

void QPrintPreviewDialog_virtualbase_initPainter(const VirtualQPrintPreviewDialog* self, QPainter* painter) {

	self->QPrintPreviewDialog::initPainter(painter);
}

QPaintDevice* QPrintPreviewDialog_virtualbase_redirected(const VirtualQPrintPreviewDialog* self, QPoint* offset) {

	return self->QPrintPreviewDialog::redirected(offset);
}

QPainter* QPrintPreviewDialog_virtualbase_sharedPainter(const VirtualQPrintPreviewDialog* self) {

	return self->QPrintPreviewDialog::sharedPainter();
}

void QPrintPreviewDialog_virtualbase_inputMethodEvent(VirtualQPrintPreviewDialog* self, QInputMethodEvent* param1) {

	self->QPrintPreviewDialog::inputMethodEvent(param1);
}

QVariant* QPrintPreviewDialog_virtualbase_inputMethodQuery(const VirtualQPrintPreviewDialog* self, int param1) {

	return new QVariant(self->QPrintPreviewDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QPrintPreviewDialog_virtualbase_focusNextPrevChild(VirtualQPrintPreviewDialog* self, bool next) {

	return self->QPrintPreviewDialog::focusNextPrevChild(next);
}

void QPrintPreviewDialog_virtualbase_timerEvent(VirtualQPrintPreviewDialog* self, QTimerEvent* event) {

	self->QPrintPreviewDialog::timerEvent(event);
}

void QPrintPreviewDialog_virtualbase_childEvent(VirtualQPrintPreviewDialog* self, QChildEvent* event) {

	self->QPrintPreviewDialog::childEvent(event);
}

void QPrintPreviewDialog_virtualbase_customEvent(VirtualQPrintPreviewDialog* self, QEvent* event) {

	self->QPrintPreviewDialog::customEvent(event);
}

void QPrintPreviewDialog_virtualbase_connectNotify(VirtualQPrintPreviewDialog* self, QMetaMethod* signal) {

	self->QPrintPreviewDialog::connectNotify(*signal);
}

void QPrintPreviewDialog_virtualbase_disconnectNotify(VirtualQPrintPreviewDialog* self, QMetaMethod* signal) {

	self->QPrintPreviewDialog::disconnectNotify(*signal);
}

const QMetaObject* QPrintPreviewDialog_staticMetaObject() { return &QPrintPreviewDialog::staticMetaObject; }

const QPrintPreviewDialog_VTable* QPrintPreviewDialog_vtbl(const VirtualQPrintPreviewDialog* self) { return self->vtbl; }
void* QPrintPreviewDialog_vdata(const VirtualQPrintPreviewDialog* self) { return self->vdata; }
void QPrintPreviewDialog_setVdata(VirtualQPrintPreviewDialog* self, void* vdata) { self->vdata = vdata; }

void QPrintPreviewDialog_protectedbase_adjustPosition(VirtualQPrintPreviewDialog* self, QWidget* param1) {
	self->adjustPosition(param1);
}

void QPrintPreviewDialog_protectedbase_updateMicroFocus(VirtualQPrintPreviewDialog* self) {
	self->updateMicroFocus();
}

void QPrintPreviewDialog_protectedbase_create(VirtualQPrintPreviewDialog* self) {
	self->create();
}

void QPrintPreviewDialog_protectedbase_destroy(VirtualQPrintPreviewDialog* self) {
	self->destroy();
}

bool QPrintPreviewDialog_protectedbase_focusNextChild(VirtualQPrintPreviewDialog* self) {
	return self->focusNextChild();
}

bool QPrintPreviewDialog_protectedbase_focusPreviousChild(VirtualQPrintPreviewDialog* self) {
	return self->focusPreviousChild();
}

QObject* QPrintPreviewDialog_protectedbase_sender(const VirtualQPrintPreviewDialog* self) {
	return self->sender();
}

int QPrintPreviewDialog_protectedbase_senderSignalIndex(const VirtualQPrintPreviewDialog* self) {
	return self->senderSignalIndex();
}

int QPrintPreviewDialog_protectedbase_receivers(const VirtualQPrintPreviewDialog* self, const char* signal) {
	return self->receivers(signal);
}

bool QPrintPreviewDialog_protectedbase_isSignalConnected(const VirtualQPrintPreviewDialog* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPrintPreviewDialog_delete(QPrintPreviewDialog* self) {
	delete self;
}

