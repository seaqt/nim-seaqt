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
#include <QLabel>
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
#include <QProgressBar>
#include <QProgressDialog>
#include <QPushButton>
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
#include <qprogressdialog.h>
#include "gen_qprogressdialog.h"
class VirtualQProgressDialog final : public QProgressDialog {
	const QProgressDialog_VTable* vtbl;
	void* vdata;
public:
	friend const QProgressDialog_VTable* QProgressDialog_vtbl(const VirtualQProgressDialog* self);
	friend void* QProgressDialog_vdata(const VirtualQProgressDialog* self);
	friend void QProgressDialog_setVdata(VirtualQProgressDialog* self, void* vdata);

	VirtualQProgressDialog(const QProgressDialog_VTable* vtbl, void* vdata, QWidget* parent): QProgressDialog(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQProgressDialog(const QProgressDialog_VTable* vtbl, void* vdata): QProgressDialog(), vtbl(vtbl), vdata(vdata) {}
	VirtualQProgressDialog(const QProgressDialog_VTable* vtbl, void* vdata, const QString& labelText, const QString& cancelButtonText, int minimum, int maximum): QProgressDialog(labelText, cancelButtonText, minimum, maximum), vtbl(vtbl), vdata(vdata) {}
	VirtualQProgressDialog(const QProgressDialog_VTable* vtbl, void* vdata, QWidget* parent, Qt::WindowFlags flags): QProgressDialog(parent, flags), vtbl(vtbl), vdata(vdata) {}
	VirtualQProgressDialog(const QProgressDialog_VTable* vtbl, void* vdata, const QString& labelText, const QString& cancelButtonText, int minimum, int maximum, QWidget* parent): QProgressDialog(labelText, cancelButtonText, minimum, maximum, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQProgressDialog(const QProgressDialog_VTable* vtbl, void* vdata, const QString& labelText, const QString& cancelButtonText, int minimum, int maximum, QWidget* parent, Qt::WindowFlags flags): QProgressDialog(labelText, cancelButtonText, minimum, maximum, parent, flags), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQProgressDialog() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QProgressDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QProgressDialog_virtualbase_metaObject(const VirtualQProgressDialog* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QProgressDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QProgressDialog_virtualbase_metacast(VirtualQProgressDialog* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QProgressDialog::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressDialog_virtualbase_metacall(VirtualQProgressDialog* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QProgressDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QProgressDialog_virtualbase_sizeHint(const VirtualQProgressDialog* self);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QProgressDialog::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_resizeEvent(VirtualQProgressDialog* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QProgressDialog::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_closeEvent(VirtualQProgressDialog* self, QCloseEvent* event);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QProgressDialog::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_changeEvent(VirtualQProgressDialog* self, QEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QProgressDialog::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_showEvent(VirtualQProgressDialog* self, QShowEvent* event);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QProgressDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_setVisible(VirtualQProgressDialog* self, bool visible);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QProgressDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QProgressDialog_virtualbase_minimumSizeHint(const VirtualQProgressDialog* self);

	virtual void open() override {
		if (vtbl->open == 0) {
			QProgressDialog::open();
			return;
		}


		vtbl->open(this);

	}

	friend void QProgressDialog_virtualbase_open(VirtualQProgressDialog* self);

	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QProgressDialog::exec();
		}


		int callback_return_value = vtbl->exec(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressDialog_virtualbase_exec(VirtualQProgressDialog* self);

	virtual void done(int param1) override {
		if (vtbl->done == 0) {
			QProgressDialog::done(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->done(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_done(VirtualQProgressDialog* self, int param1);

	virtual void accept() override {
		if (vtbl->accept == 0) {
			QProgressDialog::accept();
			return;
		}


		vtbl->accept(this);

	}

	friend void QProgressDialog_virtualbase_accept(VirtualQProgressDialog* self);

	virtual void reject() override {
		if (vtbl->reject == 0) {
			QProgressDialog::reject();
			return;
		}


		vtbl->reject(this);

	}

	friend void QProgressDialog_virtualbase_reject(VirtualQProgressDialog* self);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QProgressDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_keyPressEvent(VirtualQProgressDialog* self, QKeyEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QProgressDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_contextMenuEvent(VirtualQProgressDialog* self, QContextMenuEvent* param1);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QProgressDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QProgressDialog_virtualbase_eventFilter(VirtualQProgressDialog* self, QObject* param1, QEvent* param2);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QProgressDialog::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressDialog_virtualbase_devType(const VirtualQProgressDialog* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QProgressDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressDialog_virtualbase_heightForWidth(const VirtualQProgressDialog* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QProgressDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QProgressDialog_virtualbase_hasHeightForWidth(const VirtualQProgressDialog* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QProgressDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QProgressDialog_virtualbase_paintEngine(const VirtualQProgressDialog* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QProgressDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QProgressDialog_virtualbase_event(VirtualQProgressDialog* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QProgressDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_mousePressEvent(VirtualQProgressDialog* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QProgressDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_mouseReleaseEvent(VirtualQProgressDialog* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QProgressDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_mouseDoubleClickEvent(VirtualQProgressDialog* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QProgressDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_mouseMoveEvent(VirtualQProgressDialog* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QProgressDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_wheelEvent(VirtualQProgressDialog* self, QWheelEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QProgressDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_keyReleaseEvent(VirtualQProgressDialog* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QProgressDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_focusInEvent(VirtualQProgressDialog* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QProgressDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_focusOutEvent(VirtualQProgressDialog* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QProgressDialog::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_enterEvent(VirtualQProgressDialog* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QProgressDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_leaveEvent(VirtualQProgressDialog* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QProgressDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_paintEvent(VirtualQProgressDialog* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QProgressDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_moveEvent(VirtualQProgressDialog* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QProgressDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_tabletEvent(VirtualQProgressDialog* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QProgressDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_actionEvent(VirtualQProgressDialog* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QProgressDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_dragEnterEvent(VirtualQProgressDialog* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QProgressDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_dragMoveEvent(VirtualQProgressDialog* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QProgressDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_dragLeaveEvent(VirtualQProgressDialog* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QProgressDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_dropEvent(VirtualQProgressDialog* self, QDropEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QProgressDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_hideEvent(VirtualQProgressDialog* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QProgressDialog::nativeEvent(eventType, message, result);
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

	friend bool QProgressDialog_virtualbase_nativeEvent(VirtualQProgressDialog* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QProgressDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressDialog_virtualbase_metric(const VirtualQProgressDialog* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QProgressDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_initPainter(const VirtualQProgressDialog* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QProgressDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QProgressDialog_virtualbase_redirected(const VirtualQProgressDialog* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QProgressDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QProgressDialog_virtualbase_sharedPainter(const VirtualQProgressDialog* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QProgressDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_inputMethodEvent(VirtualQProgressDialog* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QProgressDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QProgressDialog_virtualbase_inputMethodQuery(const VirtualQProgressDialog* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QProgressDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QProgressDialog_virtualbase_focusNextPrevChild(VirtualQProgressDialog* self, bool next);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QProgressDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_timerEvent(VirtualQProgressDialog* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QProgressDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_childEvent(VirtualQProgressDialog* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QProgressDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_customEvent(VirtualQProgressDialog* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QProgressDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_connectNotify(VirtualQProgressDialog* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QProgressDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QProgressDialog_virtualbase_disconnectNotify(VirtualQProgressDialog* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QProgressDialog_protectedbase_forceShow(VirtualQProgressDialog* self);
	friend void QProgressDialog_protectedbase_adjustPosition(VirtualQProgressDialog* self, QWidget* param1);
	friend void QProgressDialog_protectedbase_updateMicroFocus(VirtualQProgressDialog* self);
	friend void QProgressDialog_protectedbase_create(VirtualQProgressDialog* self);
	friend void QProgressDialog_protectedbase_destroy(VirtualQProgressDialog* self);
	friend bool QProgressDialog_protectedbase_focusNextChild(VirtualQProgressDialog* self);
	friend bool QProgressDialog_protectedbase_focusPreviousChild(VirtualQProgressDialog* self);
	friend QObject* QProgressDialog_protectedbase_sender(const VirtualQProgressDialog* self);
	friend int QProgressDialog_protectedbase_senderSignalIndex(const VirtualQProgressDialog* self);
	friend int QProgressDialog_protectedbase_receivers(const VirtualQProgressDialog* self, const char* signal);
	friend bool QProgressDialog_protectedbase_isSignalConnected(const VirtualQProgressDialog* self, QMetaMethod* signal);
};

VirtualQProgressDialog* QProgressDialog_new(const QProgressDialog_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQProgressDialog(vtbl, vdata, parent);
}

VirtualQProgressDialog* QProgressDialog_new2(const QProgressDialog_VTable* vtbl, void* vdata) {
	return new VirtualQProgressDialog(vtbl, vdata);
}

VirtualQProgressDialog* QProgressDialog_new3(const QProgressDialog_VTable* vtbl, void* vdata, struct miqt_string labelText, struct miqt_string cancelButtonText, int minimum, int maximum) {
	QString labelText_QString = QString::fromUtf8(labelText.data, labelText.len);
	QString cancelButtonText_QString = QString::fromUtf8(cancelButtonText.data, cancelButtonText.len);
	return new VirtualQProgressDialog(vtbl, vdata, labelText_QString, cancelButtonText_QString, static_cast<int>(minimum), static_cast<int>(maximum));
}

VirtualQProgressDialog* QProgressDialog_new4(const QProgressDialog_VTable* vtbl, void* vdata, QWidget* parent, int flags) {
	return new VirtualQProgressDialog(vtbl, vdata, parent, static_cast<Qt::WindowFlags>(flags));
}

VirtualQProgressDialog* QProgressDialog_new5(const QProgressDialog_VTable* vtbl, void* vdata, struct miqt_string labelText, struct miqt_string cancelButtonText, int minimum, int maximum, QWidget* parent) {
	QString labelText_QString = QString::fromUtf8(labelText.data, labelText.len);
	QString cancelButtonText_QString = QString::fromUtf8(cancelButtonText.data, cancelButtonText.len);
	return new VirtualQProgressDialog(vtbl, vdata, labelText_QString, cancelButtonText_QString, static_cast<int>(minimum), static_cast<int>(maximum), parent);
}

VirtualQProgressDialog* QProgressDialog_new6(const QProgressDialog_VTable* vtbl, void* vdata, struct miqt_string labelText, struct miqt_string cancelButtonText, int minimum, int maximum, QWidget* parent, int flags) {
	QString labelText_QString = QString::fromUtf8(labelText.data, labelText.len);
	QString cancelButtonText_QString = QString::fromUtf8(cancelButtonText.data, cancelButtonText.len);
	return new VirtualQProgressDialog(vtbl, vdata, labelText_QString, cancelButtonText_QString, static_cast<int>(minimum), static_cast<int>(maximum), parent, static_cast<Qt::WindowFlags>(flags));
}

void QProgressDialog_virtbase(QProgressDialog* src, QDialog** outptr_QDialog) {
	*outptr_QDialog = static_cast<QDialog*>(src);
}

QMetaObject* QProgressDialog_metaObject(const QProgressDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QProgressDialog_metacast(QProgressDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QProgressDialog_metacall(QProgressDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QProgressDialog_tr(const char* s) {
	QString _ret = QProgressDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProgressDialog_setLabel(QProgressDialog* self, QLabel* label) {
	self->setLabel(label);
}

void QProgressDialog_setCancelButton(QProgressDialog* self, QPushButton* button) {
	self->setCancelButton(button);
}

void QProgressDialog_setBar(QProgressDialog* self, QProgressBar* bar) {
	self->setBar(bar);
}

bool QProgressDialog_wasCanceled(const QProgressDialog* self) {
	return self->wasCanceled();
}

int QProgressDialog_minimum(const QProgressDialog* self) {
	return self->minimum();
}

int QProgressDialog_maximum(const QProgressDialog* self) {
	return self->maximum();
}

int QProgressDialog_value(const QProgressDialog* self) {
	return self->value();
}

QSize* QProgressDialog_sizeHint(const QProgressDialog* self) {
	return new QSize(self->sizeHint());
}

struct miqt_string QProgressDialog_labelText(const QProgressDialog* self) {
	QString _ret = self->labelText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QProgressDialog_minimumDuration(const QProgressDialog* self) {
	return self->minimumDuration();
}

void QProgressDialog_setAutoReset(QProgressDialog* self, bool reset) {
	self->setAutoReset(reset);
}

bool QProgressDialog_autoReset(const QProgressDialog* self) {
	return self->autoReset();
}

void QProgressDialog_setAutoClose(QProgressDialog* self, bool close) {
	self->setAutoClose(close);
}

bool QProgressDialog_autoClose(const QProgressDialog* self) {
	return self->autoClose();
}

void QProgressDialog_cancel(QProgressDialog* self) {
	self->cancel();
}

void QProgressDialog_reset(QProgressDialog* self) {
	self->reset();
}

void QProgressDialog_setMaximum(QProgressDialog* self, int maximum) {
	self->setMaximum(static_cast<int>(maximum));
}

void QProgressDialog_setMinimum(QProgressDialog* self, int minimum) {
	self->setMinimum(static_cast<int>(minimum));
}

void QProgressDialog_setRange(QProgressDialog* self, int minimum, int maximum) {
	self->setRange(static_cast<int>(minimum), static_cast<int>(maximum));
}

void QProgressDialog_setValue(QProgressDialog* self, int progress) {
	self->setValue(static_cast<int>(progress));
}

void QProgressDialog_setLabelText(QProgressDialog* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setLabelText(text_QString);
}

void QProgressDialog_setCancelButtonText(QProgressDialog* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setCancelButtonText(text_QString);
}

void QProgressDialog_setMinimumDuration(QProgressDialog* self, int ms) {
	self->setMinimumDuration(static_cast<int>(ms));
}

void QProgressDialog_canceled(QProgressDialog* self) {
	self->canceled();
}

void QProgressDialog_connect_canceled(VirtualQProgressDialog* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQProgressDialog::connect(self, static_cast<void (QProgressDialog::*)()>(&QProgressDialog::canceled), self, local_caller{slot, callback, release});
}

struct miqt_string QProgressDialog_tr2(const char* s, const char* c) {
	QString _ret = QProgressDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProgressDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QProgressDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QProgressDialog_virtualbase_metaObject(const VirtualQProgressDialog* self) {

	return (QMetaObject*) self->QProgressDialog::metaObject();
}

void* QProgressDialog_virtualbase_metacast(VirtualQProgressDialog* self, const char* param1) {

	return self->QProgressDialog::qt_metacast(param1);
}

int QProgressDialog_virtualbase_metacall(VirtualQProgressDialog* self, int param1, int param2, void** param3) {

	return self->QProgressDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QProgressDialog_virtualbase_sizeHint(const VirtualQProgressDialog* self) {

	return new QSize(self->QProgressDialog::sizeHint());
}

void QProgressDialog_virtualbase_resizeEvent(VirtualQProgressDialog* self, QResizeEvent* event) {

	self->QProgressDialog::resizeEvent(event);
}

void QProgressDialog_virtualbase_closeEvent(VirtualQProgressDialog* self, QCloseEvent* event) {

	self->QProgressDialog::closeEvent(event);
}

void QProgressDialog_virtualbase_changeEvent(VirtualQProgressDialog* self, QEvent* event) {

	self->QProgressDialog::changeEvent(event);
}

void QProgressDialog_virtualbase_showEvent(VirtualQProgressDialog* self, QShowEvent* event) {

	self->QProgressDialog::showEvent(event);
}

void QProgressDialog_virtualbase_setVisible(VirtualQProgressDialog* self, bool visible) {

	self->QProgressDialog::setVisible(visible);
}

QSize* QProgressDialog_virtualbase_minimumSizeHint(const VirtualQProgressDialog* self) {

	return new QSize(self->QProgressDialog::minimumSizeHint());
}

void QProgressDialog_virtualbase_open(VirtualQProgressDialog* self) {

	self->QProgressDialog::open();
}

int QProgressDialog_virtualbase_exec(VirtualQProgressDialog* self) {

	return self->QProgressDialog::exec();
}

void QProgressDialog_virtualbase_done(VirtualQProgressDialog* self, int param1) {

	self->QProgressDialog::done(static_cast<int>(param1));
}

void QProgressDialog_virtualbase_accept(VirtualQProgressDialog* self) {

	self->QProgressDialog::accept();
}

void QProgressDialog_virtualbase_reject(VirtualQProgressDialog* self) {

	self->QProgressDialog::reject();
}

void QProgressDialog_virtualbase_keyPressEvent(VirtualQProgressDialog* self, QKeyEvent* param1) {

	self->QProgressDialog::keyPressEvent(param1);
}

void QProgressDialog_virtualbase_contextMenuEvent(VirtualQProgressDialog* self, QContextMenuEvent* param1) {

	self->QProgressDialog::contextMenuEvent(param1);
}

bool QProgressDialog_virtualbase_eventFilter(VirtualQProgressDialog* self, QObject* param1, QEvent* param2) {

	return self->QProgressDialog::eventFilter(param1, param2);
}

int QProgressDialog_virtualbase_devType(const VirtualQProgressDialog* self) {

	return self->QProgressDialog::devType();
}

int QProgressDialog_virtualbase_heightForWidth(const VirtualQProgressDialog* self, int param1) {

	return self->QProgressDialog::heightForWidth(static_cast<int>(param1));
}

bool QProgressDialog_virtualbase_hasHeightForWidth(const VirtualQProgressDialog* self) {

	return self->QProgressDialog::hasHeightForWidth();
}

QPaintEngine* QProgressDialog_virtualbase_paintEngine(const VirtualQProgressDialog* self) {

	return self->QProgressDialog::paintEngine();
}

bool QProgressDialog_virtualbase_event(VirtualQProgressDialog* self, QEvent* event) {

	return self->QProgressDialog::event(event);
}

void QProgressDialog_virtualbase_mousePressEvent(VirtualQProgressDialog* self, QMouseEvent* event) {

	self->QProgressDialog::mousePressEvent(event);
}

void QProgressDialog_virtualbase_mouseReleaseEvent(VirtualQProgressDialog* self, QMouseEvent* event) {

	self->QProgressDialog::mouseReleaseEvent(event);
}

void QProgressDialog_virtualbase_mouseDoubleClickEvent(VirtualQProgressDialog* self, QMouseEvent* event) {

	self->QProgressDialog::mouseDoubleClickEvent(event);
}

void QProgressDialog_virtualbase_mouseMoveEvent(VirtualQProgressDialog* self, QMouseEvent* event) {

	self->QProgressDialog::mouseMoveEvent(event);
}

void QProgressDialog_virtualbase_wheelEvent(VirtualQProgressDialog* self, QWheelEvent* event) {

	self->QProgressDialog::wheelEvent(event);
}

void QProgressDialog_virtualbase_keyReleaseEvent(VirtualQProgressDialog* self, QKeyEvent* event) {

	self->QProgressDialog::keyReleaseEvent(event);
}

void QProgressDialog_virtualbase_focusInEvent(VirtualQProgressDialog* self, QFocusEvent* event) {

	self->QProgressDialog::focusInEvent(event);
}

void QProgressDialog_virtualbase_focusOutEvent(VirtualQProgressDialog* self, QFocusEvent* event) {

	self->QProgressDialog::focusOutEvent(event);
}

void QProgressDialog_virtualbase_enterEvent(VirtualQProgressDialog* self, QEnterEvent* event) {

	self->QProgressDialog::enterEvent(event);
}

void QProgressDialog_virtualbase_leaveEvent(VirtualQProgressDialog* self, QEvent* event) {

	self->QProgressDialog::leaveEvent(event);
}

void QProgressDialog_virtualbase_paintEvent(VirtualQProgressDialog* self, QPaintEvent* event) {

	self->QProgressDialog::paintEvent(event);
}

void QProgressDialog_virtualbase_moveEvent(VirtualQProgressDialog* self, QMoveEvent* event) {

	self->QProgressDialog::moveEvent(event);
}

void QProgressDialog_virtualbase_tabletEvent(VirtualQProgressDialog* self, QTabletEvent* event) {

	self->QProgressDialog::tabletEvent(event);
}

void QProgressDialog_virtualbase_actionEvent(VirtualQProgressDialog* self, QActionEvent* event) {

	self->QProgressDialog::actionEvent(event);
}

void QProgressDialog_virtualbase_dragEnterEvent(VirtualQProgressDialog* self, QDragEnterEvent* event) {

	self->QProgressDialog::dragEnterEvent(event);
}

void QProgressDialog_virtualbase_dragMoveEvent(VirtualQProgressDialog* self, QDragMoveEvent* event) {

	self->QProgressDialog::dragMoveEvent(event);
}

void QProgressDialog_virtualbase_dragLeaveEvent(VirtualQProgressDialog* self, QDragLeaveEvent* event) {

	self->QProgressDialog::dragLeaveEvent(event);
}

void QProgressDialog_virtualbase_dropEvent(VirtualQProgressDialog* self, QDropEvent* event) {

	self->QProgressDialog::dropEvent(event);
}

void QProgressDialog_virtualbase_hideEvent(VirtualQProgressDialog* self, QHideEvent* event) {

	self->QProgressDialog::hideEvent(event);
}

bool QProgressDialog_virtualbase_nativeEvent(VirtualQProgressDialog* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QProgressDialog::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QProgressDialog_virtualbase_metric(const VirtualQProgressDialog* self, int param1) {

	return self->QProgressDialog::metric(static_cast<VirtualQProgressDialog::PaintDeviceMetric>(param1));
}

void QProgressDialog_virtualbase_initPainter(const VirtualQProgressDialog* self, QPainter* painter) {

	self->QProgressDialog::initPainter(painter);
}

QPaintDevice* QProgressDialog_virtualbase_redirected(const VirtualQProgressDialog* self, QPoint* offset) {

	return self->QProgressDialog::redirected(offset);
}

QPainter* QProgressDialog_virtualbase_sharedPainter(const VirtualQProgressDialog* self) {

	return self->QProgressDialog::sharedPainter();
}

void QProgressDialog_virtualbase_inputMethodEvent(VirtualQProgressDialog* self, QInputMethodEvent* param1) {

	self->QProgressDialog::inputMethodEvent(param1);
}

QVariant* QProgressDialog_virtualbase_inputMethodQuery(const VirtualQProgressDialog* self, int param1) {

	return new QVariant(self->QProgressDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QProgressDialog_virtualbase_focusNextPrevChild(VirtualQProgressDialog* self, bool next) {

	return self->QProgressDialog::focusNextPrevChild(next);
}

void QProgressDialog_virtualbase_timerEvent(VirtualQProgressDialog* self, QTimerEvent* event) {

	self->QProgressDialog::timerEvent(event);
}

void QProgressDialog_virtualbase_childEvent(VirtualQProgressDialog* self, QChildEvent* event) {

	self->QProgressDialog::childEvent(event);
}

void QProgressDialog_virtualbase_customEvent(VirtualQProgressDialog* self, QEvent* event) {

	self->QProgressDialog::customEvent(event);
}

void QProgressDialog_virtualbase_connectNotify(VirtualQProgressDialog* self, QMetaMethod* signal) {

	self->QProgressDialog::connectNotify(*signal);
}

void QProgressDialog_virtualbase_disconnectNotify(VirtualQProgressDialog* self, QMetaMethod* signal) {

	self->QProgressDialog::disconnectNotify(*signal);
}

const QMetaObject* QProgressDialog_staticMetaObject() { return &QProgressDialog::staticMetaObject; }

const QProgressDialog_VTable* QProgressDialog_vtbl(const VirtualQProgressDialog* self) { return self->vtbl; }
void* QProgressDialog_vdata(const VirtualQProgressDialog* self) { return self->vdata; }
void QProgressDialog_setVdata(VirtualQProgressDialog* self, void* vdata) { self->vdata = vdata; }

void QProgressDialog_protectedbase_forceShow(VirtualQProgressDialog* self) {
	self->forceShow();
}

void QProgressDialog_protectedbase_adjustPosition(VirtualQProgressDialog* self, QWidget* param1) {
	self->adjustPosition(param1);
}

void QProgressDialog_protectedbase_updateMicroFocus(VirtualQProgressDialog* self) {
	self->updateMicroFocus();
}

void QProgressDialog_protectedbase_create(VirtualQProgressDialog* self) {
	self->create();
}

void QProgressDialog_protectedbase_destroy(VirtualQProgressDialog* self) {
	self->destroy();
}

bool QProgressDialog_protectedbase_focusNextChild(VirtualQProgressDialog* self) {
	return self->focusNextChild();
}

bool QProgressDialog_protectedbase_focusPreviousChild(VirtualQProgressDialog* self) {
	return self->focusPreviousChild();
}

QObject* QProgressDialog_protectedbase_sender(const VirtualQProgressDialog* self) {
	return self->sender();
}

int QProgressDialog_protectedbase_senderSignalIndex(const VirtualQProgressDialog* self) {
	return self->senderSignalIndex();
}

int QProgressDialog_protectedbase_receivers(const VirtualQProgressDialog* self, const char* signal) {
	return self->receivers(signal);
}

bool QProgressDialog_protectedbase_isSignalConnected(const VirtualQProgressDialog* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QProgressDialog_delete(QProgressDialog* self) {
	delete self;
}

