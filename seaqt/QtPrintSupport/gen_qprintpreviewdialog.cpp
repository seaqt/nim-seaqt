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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQPrintPreviewDialog final : public QPrintPreviewDialog {
	struct QPrintPreviewDialog_VTable* vtbl;
public:

	VirtualQPrintPreviewDialog(struct QPrintPreviewDialog_VTable* vtbl, QWidget* parent): QPrintPreviewDialog(parent), vtbl(vtbl) {};
	VirtualQPrintPreviewDialog(struct QPrintPreviewDialog_VTable* vtbl): QPrintPreviewDialog(), vtbl(vtbl) {};
	VirtualQPrintPreviewDialog(struct QPrintPreviewDialog_VTable* vtbl, QPrinter* printer): QPrintPreviewDialog(printer), vtbl(vtbl) {};
	VirtualQPrintPreviewDialog(struct QPrintPreviewDialog_VTable* vtbl, QWidget* parent, Qt::WindowFlags flags): QPrintPreviewDialog(parent, flags), vtbl(vtbl) {};
	VirtualQPrintPreviewDialog(struct QPrintPreviewDialog_VTable* vtbl, QPrinter* printer, QWidget* parent): QPrintPreviewDialog(printer, parent), vtbl(vtbl) {};
	VirtualQPrintPreviewDialog(struct QPrintPreviewDialog_VTable* vtbl, QPrinter* printer, QWidget* parent, Qt::WindowFlags flags): QPrintPreviewDialog(printer, parent, flags), vtbl(vtbl) {};

	virtual ~VirtualQPrintPreviewDialog() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPrintPreviewDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QPrintPreviewDialog_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPrintPreviewDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QPrintPreviewDialog_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPrintPreviewDialog::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QPrintPreviewDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual void done(int result) override {
		if (vtbl->done == 0) {
			QPrintPreviewDialog::done(result);
			return;
		}

		int sigval1 = result;

		vtbl->done(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_done(void* self, int result);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QPrintPreviewDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QPrintPreviewDialog_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QPrintPreviewDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QPrintPreviewDialog_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void open() override {
		if (vtbl->open == 0) {
			QPrintPreviewDialog::open();
			return;
		}


		vtbl->open(vtbl, this);

	}

	friend void QPrintPreviewDialog_virtualbase_open(void* self);

	// Subclass to allow providing a Go implementation
	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QPrintPreviewDialog::exec();
		}


		int callback_return_value = vtbl->exec(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewDialog_virtualbase_exec(void* self);

	// Subclass to allow providing a Go implementation
	virtual void accept() override {
		if (vtbl->accept == 0) {
			QPrintPreviewDialog::accept();
			return;
		}


		vtbl->accept(vtbl, this);

	}

	friend void QPrintPreviewDialog_virtualbase_accept(void* self);

	// Subclass to allow providing a Go implementation
	virtual void reject() override {
		if (vtbl->reject == 0) {
			QPrintPreviewDialog::reject();
			return;
		}


		vtbl->reject(vtbl, this);

	}

	friend void QPrintPreviewDialog_virtualbase_reject(void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QPrintPreviewDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QPrintPreviewDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QPrintPreviewDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_showEvent(void* self, QShowEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QPrintPreviewDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QPrintPreviewDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QPrintPreviewDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPrintPreviewDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPrintPreviewDialog::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewDialog_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QPrintPreviewDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewDialog_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QPrintPreviewDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QPrintPreviewDialog_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPrintPreviewDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QPrintPreviewDialog_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPrintPreviewDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QPrintPreviewDialog_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QPrintPreviewDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QPrintPreviewDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QPrintPreviewDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QPrintPreviewDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QPrintPreviewDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QPrintPreviewDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QPrintPreviewDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QPrintPreviewDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QPrintPreviewDialog::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QPrintPreviewDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QPrintPreviewDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QPrintPreviewDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QPrintPreviewDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QPrintPreviewDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QPrintPreviewDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QPrintPreviewDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QPrintPreviewDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QPrintPreviewDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QPrintPreviewDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
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
		qintptr* result_ret = result;
		intptr_t* sigval3 = (intptr_t*)(result_ret);

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QPrintPreviewDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QPrintPreviewDialog::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QPrintPreviewDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintPreviewDialog_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPrintPreviewDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPrintPreviewDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QPrintPreviewDialog_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPrintPreviewDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QPrintPreviewDialog_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QPrintPreviewDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QPrintPreviewDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QPrintPreviewDialog_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QPrintPreviewDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QPrintPreviewDialog_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPrintPreviewDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPrintPreviewDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPrintPreviewDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPrintPreviewDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPrintPreviewDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QPrintPreviewDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QPrintPreviewDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1);
	friend void QPrintPreviewDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QPrintPreviewDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QPrintPreviewDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QPrintPreviewDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QPrintPreviewDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QPrintPreviewDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QPrintPreviewDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QPrintPreviewDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QPrintPreviewDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QPrintPreviewDialog* QPrintPreviewDialog_new(struct QPrintPreviewDialog_VTable* vtbl, QWidget* parent) {
	return new VirtualQPrintPreviewDialog(vtbl, parent);
}

QPrintPreviewDialog* QPrintPreviewDialog_new2(struct QPrintPreviewDialog_VTable* vtbl) {
	return new VirtualQPrintPreviewDialog(vtbl);
}

QPrintPreviewDialog* QPrintPreviewDialog_new3(struct QPrintPreviewDialog_VTable* vtbl, QPrinter* printer) {
	return new VirtualQPrintPreviewDialog(vtbl, printer);
}

QPrintPreviewDialog* QPrintPreviewDialog_new4(struct QPrintPreviewDialog_VTable* vtbl, QWidget* parent, int flags) {
	return new VirtualQPrintPreviewDialog(vtbl, parent, static_cast<Qt::WindowFlags>(flags));
}

QPrintPreviewDialog* QPrintPreviewDialog_new5(struct QPrintPreviewDialog_VTable* vtbl, QPrinter* printer, QWidget* parent) {
	return new VirtualQPrintPreviewDialog(vtbl, printer, parent);
}

QPrintPreviewDialog* QPrintPreviewDialog_new6(struct QPrintPreviewDialog_VTable* vtbl, QPrinter* printer, QWidget* parent, int flags) {
	return new VirtualQPrintPreviewDialog(vtbl, printer, parent, static_cast<Qt::WindowFlags>(flags));
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

void QPrintPreviewDialog_connect_paintRequested(QPrintPreviewDialog* self, intptr_t slot, void (*callback)(intptr_t, QPrinter*), void (*release)(intptr_t)) {
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

QMetaObject* QPrintPreviewDialog_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::metaObject();

}

void* QPrintPreviewDialog_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::qt_metacast(param1);

}

int QPrintPreviewDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QPrintPreviewDialog_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::setVisible(visible);

}

void QPrintPreviewDialog_virtualbase_done(void* self, int result) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::done(static_cast<int>(result));

}

QSize* QPrintPreviewDialog_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::sizeHint());

}

QSize* QPrintPreviewDialog_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::minimumSizeHint());

}

void QPrintPreviewDialog_virtualbase_open(void* self) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::open();

}

int QPrintPreviewDialog_virtualbase_exec(void* self) {

	return ( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::exec();

}

void QPrintPreviewDialog_virtualbase_accept(void* self) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::accept();

}

void QPrintPreviewDialog_virtualbase_reject(void* self) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::reject();

}

void QPrintPreviewDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::keyPressEvent(param1);

}

void QPrintPreviewDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::closeEvent(param1);

}

void QPrintPreviewDialog_virtualbase_showEvent(void* self, QShowEvent* param1) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::showEvent(param1);

}

void QPrintPreviewDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::resizeEvent(param1);

}

void QPrintPreviewDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::contextMenuEvent(param1);

}

bool QPrintPreviewDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {

	return ( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::eventFilter(param1, param2);

}

int QPrintPreviewDialog_virtualbase_devType(const void* self) {

	return ( (const VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::devType();

}

int QPrintPreviewDialog_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::heightForWidth(static_cast<int>(param1));

}

bool QPrintPreviewDialog_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::hasHeightForWidth();

}

QPaintEngine* QPrintPreviewDialog_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::paintEngine();

}

bool QPrintPreviewDialog_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::event(event);

}

void QPrintPreviewDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::mousePressEvent(event);

}

void QPrintPreviewDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::mouseReleaseEvent(event);

}

void QPrintPreviewDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::mouseDoubleClickEvent(event);

}

void QPrintPreviewDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::mouseMoveEvent(event);

}

void QPrintPreviewDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::wheelEvent(event);

}

void QPrintPreviewDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::keyReleaseEvent(event);

}

void QPrintPreviewDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::focusInEvent(event);

}

void QPrintPreviewDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::focusOutEvent(event);

}

void QPrintPreviewDialog_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::enterEvent(event);

}

void QPrintPreviewDialog_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::leaveEvent(event);

}

void QPrintPreviewDialog_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::paintEvent(event);

}

void QPrintPreviewDialog_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::moveEvent(event);

}

void QPrintPreviewDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::tabletEvent(event);

}

void QPrintPreviewDialog_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::actionEvent(event);

}

void QPrintPreviewDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::dragEnterEvent(event);

}

void QPrintPreviewDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::dragMoveEvent(event);

}

void QPrintPreviewDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::dragLeaveEvent(event);

}

void QPrintPreviewDialog_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::dropEvent(event);

}

void QPrintPreviewDialog_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::hideEvent(event);

}

bool QPrintPreviewDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

void QPrintPreviewDialog_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::changeEvent(param1);

}

int QPrintPreviewDialog_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::metric(static_cast<VirtualQPrintPreviewDialog::PaintDeviceMetric>(param1));

}

void QPrintPreviewDialog_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::initPainter(painter);

}

QPaintDevice* QPrintPreviewDialog_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::redirected(offset);

}

QPainter* QPrintPreviewDialog_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::sharedPainter();

}

void QPrintPreviewDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::inputMethodEvent(param1);

}

QVariant* QPrintPreviewDialog_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QPrintPreviewDialog_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::focusNextPrevChild(next);

}

void QPrintPreviewDialog_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::timerEvent(event);

}

void QPrintPreviewDialog_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::childEvent(event);

}

void QPrintPreviewDialog_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::customEvent(event);

}

void QPrintPreviewDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::connectNotify(*signal);

}

void QPrintPreviewDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQPrintPreviewDialog*)(self) )->QPrintPreviewDialog::disconnectNotify(*signal);

}

const QMetaObject* QPrintPreviewDialog_staticMetaObject() { return &QPrintPreviewDialog::staticMetaObject; }
void QPrintPreviewDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1) {
	VirtualQPrintPreviewDialog* self_cast = dynamic_cast<VirtualQPrintPreviewDialog*>( (QPrintPreviewDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->adjustPosition(param1);

}

void QPrintPreviewDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQPrintPreviewDialog* self_cast = dynamic_cast<VirtualQPrintPreviewDialog*>( (QPrintPreviewDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QPrintPreviewDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQPrintPreviewDialog* self_cast = dynamic_cast<VirtualQPrintPreviewDialog*>( (QPrintPreviewDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QPrintPreviewDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQPrintPreviewDialog* self_cast = dynamic_cast<VirtualQPrintPreviewDialog*>( (QPrintPreviewDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QPrintPreviewDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQPrintPreviewDialog* self_cast = dynamic_cast<VirtualQPrintPreviewDialog*>( (QPrintPreviewDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QPrintPreviewDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQPrintPreviewDialog* self_cast = dynamic_cast<VirtualQPrintPreviewDialog*>( (QPrintPreviewDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QPrintPreviewDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQPrintPreviewDialog* self_cast = dynamic_cast<VirtualQPrintPreviewDialog*>( (QPrintPreviewDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QPrintPreviewDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQPrintPreviewDialog* self_cast = dynamic_cast<VirtualQPrintPreviewDialog*>( (QPrintPreviewDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QPrintPreviewDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQPrintPreviewDialog* self_cast = dynamic_cast<VirtualQPrintPreviewDialog*>( (QPrintPreviewDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QPrintPreviewDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQPrintPreviewDialog* self_cast = dynamic_cast<VirtualQPrintPreviewDialog*>( (QPrintPreviewDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QPrintPreviewDialog_delete(QPrintPreviewDialog* self) {
	delete self;
}

