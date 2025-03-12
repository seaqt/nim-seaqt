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
#include <QPageSetupDialog>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
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
#include <qpagesetupdialog.h>
#include "gen_qpagesetupdialog.h"
class VirtualQPageSetupDialog final : public QPageSetupDialog {
	const QPageSetupDialog_VTable* vtbl;
	void* vdata;
public:
	friend const QPageSetupDialog_VTable* QPageSetupDialog_vtbl(const VirtualQPageSetupDialog* self);
	friend void* QPageSetupDialog_vdata(const VirtualQPageSetupDialog* self);
	friend void QPageSetupDialog_setVdata(VirtualQPageSetupDialog* self, void* vdata);

	VirtualQPageSetupDialog(const QPageSetupDialog_VTable* vtbl, void* vdata, QWidget* parent): QPageSetupDialog(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQPageSetupDialog(const QPageSetupDialog_VTable* vtbl, void* vdata, QPrinter* printer): QPageSetupDialog(printer), vtbl(vtbl), vdata(vdata) {}
	VirtualQPageSetupDialog(const QPageSetupDialog_VTable* vtbl, void* vdata): QPageSetupDialog(), vtbl(vtbl), vdata(vdata) {}
	VirtualQPageSetupDialog(const QPageSetupDialog_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent): QPageSetupDialog(printer, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPageSetupDialog() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPageSetupDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QPageSetupDialog_virtualbase_metaObject(const VirtualQPageSetupDialog* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPageSetupDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QPageSetupDialog_virtualbase_metacast(VirtualQPageSetupDialog* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPageSetupDialog::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPageSetupDialog_virtualbase_metacall(VirtualQPageSetupDialog* self, int param1, int param2, void** param3);

	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QPageSetupDialog::exec();
		}


		int callback_return_value = vtbl->exec(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPageSetupDialog_virtualbase_exec(VirtualQPageSetupDialog* self);

	virtual void done(int result) override {
		if (vtbl->done == 0) {
			QPageSetupDialog::done(result);
			return;
		}

		int sigval1 = result;

		vtbl->done(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_done(VirtualQPageSetupDialog* self, int result);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QPageSetupDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_setVisible(VirtualQPageSetupDialog* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QPageSetupDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QPageSetupDialog_virtualbase_sizeHint(const VirtualQPageSetupDialog* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QPageSetupDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QPageSetupDialog_virtualbase_minimumSizeHint(const VirtualQPageSetupDialog* self);

	virtual void open() override {
		if (vtbl->open == 0) {
			QPageSetupDialog::open();
			return;
		}


		vtbl->open(this);

	}

	friend void QPageSetupDialog_virtualbase_open(VirtualQPageSetupDialog* self);

	virtual void accept() override {
		if (vtbl->accept == 0) {
			QPageSetupDialog::accept();
			return;
		}


		vtbl->accept(this);

	}

	friend void QPageSetupDialog_virtualbase_accept(VirtualQPageSetupDialog* self);

	virtual void reject() override {
		if (vtbl->reject == 0) {
			QPageSetupDialog::reject();
			return;
		}


		vtbl->reject(this);

	}

	friend void QPageSetupDialog_virtualbase_reject(VirtualQPageSetupDialog* self);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QPageSetupDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_keyPressEvent(VirtualQPageSetupDialog* self, QKeyEvent* param1);

	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QPageSetupDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_closeEvent(VirtualQPageSetupDialog* self, QCloseEvent* param1);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QPageSetupDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_showEvent(VirtualQPageSetupDialog* self, QShowEvent* param1);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QPageSetupDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_resizeEvent(VirtualQPageSetupDialog* self, QResizeEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QPageSetupDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_contextMenuEvent(VirtualQPageSetupDialog* self, QContextMenuEvent* param1);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QPageSetupDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPageSetupDialog_virtualbase_eventFilter(VirtualQPageSetupDialog* self, QObject* param1, QEvent* param2);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPageSetupDialog::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPageSetupDialog_virtualbase_devType(const VirtualQPageSetupDialog* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QPageSetupDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPageSetupDialog_virtualbase_heightForWidth(const VirtualQPageSetupDialog* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QPageSetupDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QPageSetupDialog_virtualbase_hasHeightForWidth(const VirtualQPageSetupDialog* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPageSetupDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QPageSetupDialog_virtualbase_paintEngine(const VirtualQPageSetupDialog* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPageSetupDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QPageSetupDialog_virtualbase_event(VirtualQPageSetupDialog* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QPageSetupDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_mousePressEvent(VirtualQPageSetupDialog* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QPageSetupDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_mouseReleaseEvent(VirtualQPageSetupDialog* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QPageSetupDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_mouseDoubleClickEvent(VirtualQPageSetupDialog* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QPageSetupDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_mouseMoveEvent(VirtualQPageSetupDialog* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QPageSetupDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_wheelEvent(VirtualQPageSetupDialog* self, QWheelEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QPageSetupDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_keyReleaseEvent(VirtualQPageSetupDialog* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QPageSetupDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_focusInEvent(VirtualQPageSetupDialog* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QPageSetupDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_focusOutEvent(VirtualQPageSetupDialog* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QPageSetupDialog::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_enterEvent(VirtualQPageSetupDialog* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QPageSetupDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_leaveEvent(VirtualQPageSetupDialog* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QPageSetupDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_paintEvent(VirtualQPageSetupDialog* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QPageSetupDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_moveEvent(VirtualQPageSetupDialog* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QPageSetupDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_tabletEvent(VirtualQPageSetupDialog* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QPageSetupDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_actionEvent(VirtualQPageSetupDialog* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QPageSetupDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_dragEnterEvent(VirtualQPageSetupDialog* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QPageSetupDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_dragMoveEvent(VirtualQPageSetupDialog* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QPageSetupDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_dragLeaveEvent(VirtualQPageSetupDialog* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QPageSetupDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_dropEvent(VirtualQPageSetupDialog* self, QDropEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QPageSetupDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_hideEvent(VirtualQPageSetupDialog* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QPageSetupDialog::nativeEvent(eventType, message, result);
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

	friend bool QPageSetupDialog_virtualbase_nativeEvent(VirtualQPageSetupDialog* self, struct miqt_string eventType, void* message, long* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QPageSetupDialog::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_changeEvent(VirtualQPageSetupDialog* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QPageSetupDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPageSetupDialog_virtualbase_metric(const VirtualQPageSetupDialog* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPageSetupDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_initPainter(const VirtualQPageSetupDialog* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPageSetupDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QPageSetupDialog_virtualbase_redirected(const VirtualQPageSetupDialog* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPageSetupDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QPageSetupDialog_virtualbase_sharedPainter(const VirtualQPageSetupDialog* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QPageSetupDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_inputMethodEvent(VirtualQPageSetupDialog* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QPageSetupDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QPageSetupDialog_virtualbase_inputMethodQuery(const VirtualQPageSetupDialog* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QPageSetupDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QPageSetupDialog_virtualbase_focusNextPrevChild(VirtualQPageSetupDialog* self, bool next);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPageSetupDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_timerEvent(VirtualQPageSetupDialog* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPageSetupDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_childEvent(VirtualQPageSetupDialog* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPageSetupDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_customEvent(VirtualQPageSetupDialog* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPageSetupDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_connectNotify(VirtualQPageSetupDialog* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPageSetupDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_disconnectNotify(VirtualQPageSetupDialog* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QPageSetupDialog_protectedbase_adjustPosition(VirtualQPageSetupDialog* self, QWidget* param1);
	friend void QPageSetupDialog_protectedbase_updateMicroFocus(VirtualQPageSetupDialog* self);
	friend void QPageSetupDialog_protectedbase_create(VirtualQPageSetupDialog* self);
	friend void QPageSetupDialog_protectedbase_destroy(VirtualQPageSetupDialog* self);
	friend bool QPageSetupDialog_protectedbase_focusNextChild(VirtualQPageSetupDialog* self);
	friend bool QPageSetupDialog_protectedbase_focusPreviousChild(VirtualQPageSetupDialog* self);
	friend QObject* QPageSetupDialog_protectedbase_sender(const VirtualQPageSetupDialog* self);
	friend int QPageSetupDialog_protectedbase_senderSignalIndex(const VirtualQPageSetupDialog* self);
	friend int QPageSetupDialog_protectedbase_receivers(const VirtualQPageSetupDialog* self, const char* signal);
	friend bool QPageSetupDialog_protectedbase_isSignalConnected(const VirtualQPageSetupDialog* self, QMetaMethod* signal);
};

VirtualQPageSetupDialog* QPageSetupDialog_new(const QPageSetupDialog_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQPageSetupDialog(vtbl, vdata, parent);
}

VirtualQPageSetupDialog* QPageSetupDialog_new2(const QPageSetupDialog_VTable* vtbl, void* vdata, QPrinter* printer) {
	return new VirtualQPageSetupDialog(vtbl, vdata, printer);
}

VirtualQPageSetupDialog* QPageSetupDialog_new3(const QPageSetupDialog_VTable* vtbl, void* vdata) {
	return new VirtualQPageSetupDialog(vtbl, vdata);
}

VirtualQPageSetupDialog* QPageSetupDialog_new4(const QPageSetupDialog_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent) {
	return new VirtualQPageSetupDialog(vtbl, vdata, printer, parent);
}

void QPageSetupDialog_virtbase(QPageSetupDialog* src, QDialog** outptr_QDialog) {
	*outptr_QDialog = static_cast<QDialog*>(src);
}

QMetaObject* QPageSetupDialog_metaObject(const QPageSetupDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPageSetupDialog_metacast(QPageSetupDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPageSetupDialog_metacall(QPageSetupDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPageSetupDialog_tr(const char* s) {
	QString _ret = QPageSetupDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPageSetupDialog_trUtf8(const char* s) {
	QString _ret = QPageSetupDialog::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QPageSetupDialog_exec(QPageSetupDialog* self) {
	return self->exec();
}

void QPageSetupDialog_done(QPageSetupDialog* self, int result) {
	self->done(static_cast<int>(result));
}

QPrinter* QPageSetupDialog_printer(QPageSetupDialog* self) {
	return self->printer();
}

struct miqt_string QPageSetupDialog_tr2(const char* s, const char* c) {
	QString _ret = QPageSetupDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPageSetupDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QPageSetupDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPageSetupDialog_trUtf82(const char* s, const char* c) {
	QString _ret = QPageSetupDialog::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPageSetupDialog_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QPageSetupDialog::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPageSetupDialog_virtualbase_metaObject(const VirtualQPageSetupDialog* self) {

	return (QMetaObject*) self->QPageSetupDialog::metaObject();
}

void* QPageSetupDialog_virtualbase_metacast(VirtualQPageSetupDialog* self, const char* param1) {

	return self->QPageSetupDialog::qt_metacast(param1);
}

int QPageSetupDialog_virtualbase_metacall(VirtualQPageSetupDialog* self, int param1, int param2, void** param3) {

	return self->QPageSetupDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QPageSetupDialog_virtualbase_exec(VirtualQPageSetupDialog* self) {

	return self->QPageSetupDialog::exec();
}

void QPageSetupDialog_virtualbase_done(VirtualQPageSetupDialog* self, int result) {

	self->QPageSetupDialog::done(static_cast<int>(result));
}

void QPageSetupDialog_virtualbase_setVisible(VirtualQPageSetupDialog* self, bool visible) {

	self->QPageSetupDialog::setVisible(visible);
}

QSize* QPageSetupDialog_virtualbase_sizeHint(const VirtualQPageSetupDialog* self) {

	return new QSize(self->QPageSetupDialog::sizeHint());
}

QSize* QPageSetupDialog_virtualbase_minimumSizeHint(const VirtualQPageSetupDialog* self) {

	return new QSize(self->QPageSetupDialog::minimumSizeHint());
}

void QPageSetupDialog_virtualbase_open(VirtualQPageSetupDialog* self) {

	self->QPageSetupDialog::open();
}

void QPageSetupDialog_virtualbase_accept(VirtualQPageSetupDialog* self) {

	self->QPageSetupDialog::accept();
}

void QPageSetupDialog_virtualbase_reject(VirtualQPageSetupDialog* self) {

	self->QPageSetupDialog::reject();
}

void QPageSetupDialog_virtualbase_keyPressEvent(VirtualQPageSetupDialog* self, QKeyEvent* param1) {

	self->QPageSetupDialog::keyPressEvent(param1);
}

void QPageSetupDialog_virtualbase_closeEvent(VirtualQPageSetupDialog* self, QCloseEvent* param1) {

	self->QPageSetupDialog::closeEvent(param1);
}

void QPageSetupDialog_virtualbase_showEvent(VirtualQPageSetupDialog* self, QShowEvent* param1) {

	self->QPageSetupDialog::showEvent(param1);
}

void QPageSetupDialog_virtualbase_resizeEvent(VirtualQPageSetupDialog* self, QResizeEvent* param1) {

	self->QPageSetupDialog::resizeEvent(param1);
}

void QPageSetupDialog_virtualbase_contextMenuEvent(VirtualQPageSetupDialog* self, QContextMenuEvent* param1) {

	self->QPageSetupDialog::contextMenuEvent(param1);
}

bool QPageSetupDialog_virtualbase_eventFilter(VirtualQPageSetupDialog* self, QObject* param1, QEvent* param2) {

	return self->QPageSetupDialog::eventFilter(param1, param2);
}

int QPageSetupDialog_virtualbase_devType(const VirtualQPageSetupDialog* self) {

	return self->QPageSetupDialog::devType();
}

int QPageSetupDialog_virtualbase_heightForWidth(const VirtualQPageSetupDialog* self, int param1) {

	return self->QPageSetupDialog::heightForWidth(static_cast<int>(param1));
}

bool QPageSetupDialog_virtualbase_hasHeightForWidth(const VirtualQPageSetupDialog* self) {

	return self->QPageSetupDialog::hasHeightForWidth();
}

QPaintEngine* QPageSetupDialog_virtualbase_paintEngine(const VirtualQPageSetupDialog* self) {

	return self->QPageSetupDialog::paintEngine();
}

bool QPageSetupDialog_virtualbase_event(VirtualQPageSetupDialog* self, QEvent* event) {

	return self->QPageSetupDialog::event(event);
}

void QPageSetupDialog_virtualbase_mousePressEvent(VirtualQPageSetupDialog* self, QMouseEvent* event) {

	self->QPageSetupDialog::mousePressEvent(event);
}

void QPageSetupDialog_virtualbase_mouseReleaseEvent(VirtualQPageSetupDialog* self, QMouseEvent* event) {

	self->QPageSetupDialog::mouseReleaseEvent(event);
}

void QPageSetupDialog_virtualbase_mouseDoubleClickEvent(VirtualQPageSetupDialog* self, QMouseEvent* event) {

	self->QPageSetupDialog::mouseDoubleClickEvent(event);
}

void QPageSetupDialog_virtualbase_mouseMoveEvent(VirtualQPageSetupDialog* self, QMouseEvent* event) {

	self->QPageSetupDialog::mouseMoveEvent(event);
}

void QPageSetupDialog_virtualbase_wheelEvent(VirtualQPageSetupDialog* self, QWheelEvent* event) {

	self->QPageSetupDialog::wheelEvent(event);
}

void QPageSetupDialog_virtualbase_keyReleaseEvent(VirtualQPageSetupDialog* self, QKeyEvent* event) {

	self->QPageSetupDialog::keyReleaseEvent(event);
}

void QPageSetupDialog_virtualbase_focusInEvent(VirtualQPageSetupDialog* self, QFocusEvent* event) {

	self->QPageSetupDialog::focusInEvent(event);
}

void QPageSetupDialog_virtualbase_focusOutEvent(VirtualQPageSetupDialog* self, QFocusEvent* event) {

	self->QPageSetupDialog::focusOutEvent(event);
}

void QPageSetupDialog_virtualbase_enterEvent(VirtualQPageSetupDialog* self, QEvent* event) {

	self->QPageSetupDialog::enterEvent(event);
}

void QPageSetupDialog_virtualbase_leaveEvent(VirtualQPageSetupDialog* self, QEvent* event) {

	self->QPageSetupDialog::leaveEvent(event);
}

void QPageSetupDialog_virtualbase_paintEvent(VirtualQPageSetupDialog* self, QPaintEvent* event) {

	self->QPageSetupDialog::paintEvent(event);
}

void QPageSetupDialog_virtualbase_moveEvent(VirtualQPageSetupDialog* self, QMoveEvent* event) {

	self->QPageSetupDialog::moveEvent(event);
}

void QPageSetupDialog_virtualbase_tabletEvent(VirtualQPageSetupDialog* self, QTabletEvent* event) {

	self->QPageSetupDialog::tabletEvent(event);
}

void QPageSetupDialog_virtualbase_actionEvent(VirtualQPageSetupDialog* self, QActionEvent* event) {

	self->QPageSetupDialog::actionEvent(event);
}

void QPageSetupDialog_virtualbase_dragEnterEvent(VirtualQPageSetupDialog* self, QDragEnterEvent* event) {

	self->QPageSetupDialog::dragEnterEvent(event);
}

void QPageSetupDialog_virtualbase_dragMoveEvent(VirtualQPageSetupDialog* self, QDragMoveEvent* event) {

	self->QPageSetupDialog::dragMoveEvent(event);
}

void QPageSetupDialog_virtualbase_dragLeaveEvent(VirtualQPageSetupDialog* self, QDragLeaveEvent* event) {

	self->QPageSetupDialog::dragLeaveEvent(event);
}

void QPageSetupDialog_virtualbase_dropEvent(VirtualQPageSetupDialog* self, QDropEvent* event) {

	self->QPageSetupDialog::dropEvent(event);
}

void QPageSetupDialog_virtualbase_hideEvent(VirtualQPageSetupDialog* self, QHideEvent* event) {

	self->QPageSetupDialog::hideEvent(event);
}

bool QPageSetupDialog_virtualbase_nativeEvent(VirtualQPageSetupDialog* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QPageSetupDialog::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

void QPageSetupDialog_virtualbase_changeEvent(VirtualQPageSetupDialog* self, QEvent* param1) {

	self->QPageSetupDialog::changeEvent(param1);
}

int QPageSetupDialog_virtualbase_metric(const VirtualQPageSetupDialog* self, int param1) {

	return self->QPageSetupDialog::metric(static_cast<VirtualQPageSetupDialog::PaintDeviceMetric>(param1));
}

void QPageSetupDialog_virtualbase_initPainter(const VirtualQPageSetupDialog* self, QPainter* painter) {

	self->QPageSetupDialog::initPainter(painter);
}

QPaintDevice* QPageSetupDialog_virtualbase_redirected(const VirtualQPageSetupDialog* self, QPoint* offset) {

	return self->QPageSetupDialog::redirected(offset);
}

QPainter* QPageSetupDialog_virtualbase_sharedPainter(const VirtualQPageSetupDialog* self) {

	return self->QPageSetupDialog::sharedPainter();
}

void QPageSetupDialog_virtualbase_inputMethodEvent(VirtualQPageSetupDialog* self, QInputMethodEvent* param1) {

	self->QPageSetupDialog::inputMethodEvent(param1);
}

QVariant* QPageSetupDialog_virtualbase_inputMethodQuery(const VirtualQPageSetupDialog* self, int param1) {

	return new QVariant(self->QPageSetupDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QPageSetupDialog_virtualbase_focusNextPrevChild(VirtualQPageSetupDialog* self, bool next) {

	return self->QPageSetupDialog::focusNextPrevChild(next);
}

void QPageSetupDialog_virtualbase_timerEvent(VirtualQPageSetupDialog* self, QTimerEvent* event) {

	self->QPageSetupDialog::timerEvent(event);
}

void QPageSetupDialog_virtualbase_childEvent(VirtualQPageSetupDialog* self, QChildEvent* event) {

	self->QPageSetupDialog::childEvent(event);
}

void QPageSetupDialog_virtualbase_customEvent(VirtualQPageSetupDialog* self, QEvent* event) {

	self->QPageSetupDialog::customEvent(event);
}

void QPageSetupDialog_virtualbase_connectNotify(VirtualQPageSetupDialog* self, QMetaMethod* signal) {

	self->QPageSetupDialog::connectNotify(*signal);
}

void QPageSetupDialog_virtualbase_disconnectNotify(VirtualQPageSetupDialog* self, QMetaMethod* signal) {

	self->QPageSetupDialog::disconnectNotify(*signal);
}

const QMetaObject* QPageSetupDialog_staticMetaObject() { return &QPageSetupDialog::staticMetaObject; }

const QPageSetupDialog_VTable* QPageSetupDialog_vtbl(const VirtualQPageSetupDialog* self) { return self->vtbl; }
void* QPageSetupDialog_vdata(const VirtualQPageSetupDialog* self) { return self->vdata; }
void QPageSetupDialog_setVdata(VirtualQPageSetupDialog* self, void* vdata) { self->vdata = vdata; }

void QPageSetupDialog_protectedbase_adjustPosition(VirtualQPageSetupDialog* self, QWidget* param1) {
	self->adjustPosition(param1);
}

void QPageSetupDialog_protectedbase_updateMicroFocus(VirtualQPageSetupDialog* self) {
	self->updateMicroFocus();
}

void QPageSetupDialog_protectedbase_create(VirtualQPageSetupDialog* self) {
	self->create();
}

void QPageSetupDialog_protectedbase_destroy(VirtualQPageSetupDialog* self) {
	self->destroy();
}

bool QPageSetupDialog_protectedbase_focusNextChild(VirtualQPageSetupDialog* self) {
	return self->focusNextChild();
}

bool QPageSetupDialog_protectedbase_focusPreviousChild(VirtualQPageSetupDialog* self) {
	return self->focusPreviousChild();
}

QObject* QPageSetupDialog_protectedbase_sender(const VirtualQPageSetupDialog* self) {
	return self->sender();
}

int QPageSetupDialog_protectedbase_senderSignalIndex(const VirtualQPageSetupDialog* self) {
	return self->senderSignalIndex();
}

int QPageSetupDialog_protectedbase_receivers(const VirtualQPageSetupDialog* self, const char* signal) {
	return self->receivers(signal);
}

bool QPageSetupDialog_protectedbase_isSignalConnected(const VirtualQPageSetupDialog* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPageSetupDialog_delete(QPageSetupDialog* self) {
	delete self;
}

