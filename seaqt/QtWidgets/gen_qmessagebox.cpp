#include <QAbstractButton>
#include <QActionEvent>
#include <QByteArray>
#include <QCheckBox>
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
#include <QList>
#include <QMessageBox>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPixmap>
#include <QPoint>
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
#include <qmessagebox.h>
#include "gen_qmessagebox.h"
class VirtualQMessageBox final : public QMessageBox {
	const QMessageBox_VTable* vtbl;
	void* vdata;
public:
	friend const QMessageBox_VTable* QMessageBox_vtbl(const VirtualQMessageBox* self);
	friend void* QMessageBox_vdata(const VirtualQMessageBox* self);
	friend void QMessageBox_setVdata(VirtualQMessageBox* self, void* vdata);

	VirtualQMessageBox(const QMessageBox_VTable* vtbl, void* vdata, QWidget* parent): QMessageBox(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQMessageBox(const QMessageBox_VTable* vtbl, void* vdata): QMessageBox(), vtbl(vtbl), vdata(vdata) {}
	VirtualQMessageBox(const QMessageBox_VTable* vtbl, void* vdata, QMessageBox::Icon icon, const QString& title, const QString& text): QMessageBox(icon, title, text), vtbl(vtbl), vdata(vdata) {}
	VirtualQMessageBox(const QMessageBox_VTable* vtbl, void* vdata, const QString& title, const QString& text, QMessageBox::Icon icon, int button0, int button1, int button2): QMessageBox(title, text, icon, button0, button1, button2), vtbl(vtbl), vdata(vdata) {}
	VirtualQMessageBox(const QMessageBox_VTable* vtbl, void* vdata, QMessageBox::Icon icon, const QString& title, const QString& text, QMessageBox::StandardButtons buttons): QMessageBox(icon, title, text, buttons), vtbl(vtbl), vdata(vdata) {}
	VirtualQMessageBox(const QMessageBox_VTable* vtbl, void* vdata, QMessageBox::Icon icon, const QString& title, const QString& text, QMessageBox::StandardButtons buttons, QWidget* parent): QMessageBox(icon, title, text, buttons, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQMessageBox(const QMessageBox_VTable* vtbl, void* vdata, QMessageBox::Icon icon, const QString& title, const QString& text, QMessageBox::StandardButtons buttons, QWidget* parent, Qt::WindowFlags flags): QMessageBox(icon, title, text, buttons, parent, flags), vtbl(vtbl), vdata(vdata) {}
	VirtualQMessageBox(const QMessageBox_VTable* vtbl, void* vdata, const QString& title, const QString& text, QMessageBox::Icon icon, int button0, int button1, int button2, QWidget* parent): QMessageBox(title, text, icon, button0, button1, button2, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQMessageBox(const QMessageBox_VTable* vtbl, void* vdata, const QString& title, const QString& text, QMessageBox::Icon icon, int button0, int button1, int button2, QWidget* parent, Qt::WindowFlags f): QMessageBox(title, text, icon, button0, button1, button2, parent, f), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQMessageBox() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMessageBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QMessageBox_virtualbase_metaObject(const VirtualQMessageBox* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMessageBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QMessageBox_virtualbase_metacast(VirtualQMessageBox* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMessageBox::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMessageBox_virtualbase_metacall(VirtualQMessageBox* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QMessageBox::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QMessageBox_virtualbase_event(VirtualQMessageBox* self, QEvent* e);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QMessageBox::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_resizeEvent(VirtualQMessageBox* self, QResizeEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QMessageBox::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_showEvent(VirtualQMessageBox* self, QShowEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QMessageBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_closeEvent(VirtualQMessageBox* self, QCloseEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QMessageBox::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_keyPressEvent(VirtualQMessageBox* self, QKeyEvent* event);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QMessageBox::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_changeEvent(VirtualQMessageBox* self, QEvent* event);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QMessageBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QMessageBox_virtualbase_setVisible(VirtualQMessageBox* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QMessageBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMessageBox_virtualbase_sizeHint(const VirtualQMessageBox* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QMessageBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMessageBox_virtualbase_minimumSizeHint(const VirtualQMessageBox* self);

	virtual void open() override {
		if (vtbl->open == 0) {
			QMessageBox::open();
			return;
		}


		vtbl->open(this);

	}

	friend void QMessageBox_virtualbase_open(VirtualQMessageBox* self);

	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QMessageBox::exec();
		}


		int callback_return_value = vtbl->exec(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QMessageBox_virtualbase_exec(VirtualQMessageBox* self);

	virtual void done(int param1) override {
		if (vtbl->done == 0) {
			QMessageBox::done(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->done(this, sigval1);

	}

	friend void QMessageBox_virtualbase_done(VirtualQMessageBox* self, int param1);

	virtual void accept() override {
		if (vtbl->accept == 0) {
			QMessageBox::accept();
			return;
		}


		vtbl->accept(this);

	}

	friend void QMessageBox_virtualbase_accept(VirtualQMessageBox* self);

	virtual void reject() override {
		if (vtbl->reject == 0) {
			QMessageBox::reject();
			return;
		}


		vtbl->reject(this);

	}

	friend void QMessageBox_virtualbase_reject(VirtualQMessageBox* self);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QMessageBox::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_contextMenuEvent(VirtualQMessageBox* self, QContextMenuEvent* param1);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QMessageBox::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMessageBox_virtualbase_eventFilter(VirtualQMessageBox* self, QObject* param1, QEvent* param2);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QMessageBox::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QMessageBox_virtualbase_devType(const VirtualQMessageBox* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QMessageBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMessageBox_virtualbase_heightForWidth(const VirtualQMessageBox* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QMessageBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QMessageBox_virtualbase_hasHeightForWidth(const VirtualQMessageBox* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QMessageBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QMessageBox_virtualbase_paintEngine(const VirtualQMessageBox* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QMessageBox::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_mousePressEvent(VirtualQMessageBox* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QMessageBox::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_mouseReleaseEvent(VirtualQMessageBox* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QMessageBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_mouseDoubleClickEvent(VirtualQMessageBox* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QMessageBox::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_mouseMoveEvent(VirtualQMessageBox* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QMessageBox::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_wheelEvent(VirtualQMessageBox* self, QWheelEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QMessageBox::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_keyReleaseEvent(VirtualQMessageBox* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QMessageBox::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_focusInEvent(VirtualQMessageBox* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QMessageBox::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_focusOutEvent(VirtualQMessageBox* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QMessageBox::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_enterEvent(VirtualQMessageBox* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QMessageBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_leaveEvent(VirtualQMessageBox* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QMessageBox::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_paintEvent(VirtualQMessageBox* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QMessageBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_moveEvent(VirtualQMessageBox* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QMessageBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_tabletEvent(VirtualQMessageBox* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QMessageBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_actionEvent(VirtualQMessageBox* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QMessageBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_dragEnterEvent(VirtualQMessageBox* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QMessageBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_dragMoveEvent(VirtualQMessageBox* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QMessageBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_dragLeaveEvent(VirtualQMessageBox* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QMessageBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_dropEvent(VirtualQMessageBox* self, QDropEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QMessageBox::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_hideEvent(VirtualQMessageBox* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QMessageBox::nativeEvent(eventType, message, result);
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

	friend bool QMessageBox_virtualbase_nativeEvent(VirtualQMessageBox* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QMessageBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMessageBox_virtualbase_metric(const VirtualQMessageBox* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QMessageBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QMessageBox_virtualbase_initPainter(const VirtualQMessageBox* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QMessageBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QMessageBox_virtualbase_redirected(const VirtualQMessageBox* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QMessageBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QMessageBox_virtualbase_sharedPainter(const VirtualQMessageBox* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QMessageBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_inputMethodEvent(VirtualQMessageBox* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QMessageBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QMessageBox_virtualbase_inputMethodQuery(const VirtualQMessageBox* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QMessageBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QMessageBox_virtualbase_focusNextPrevChild(VirtualQMessageBox* self, bool next);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMessageBox::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_timerEvent(VirtualQMessageBox* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMessageBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_childEvent(VirtualQMessageBox* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMessageBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QMessageBox_virtualbase_customEvent(VirtualQMessageBox* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMessageBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QMessageBox_virtualbase_connectNotify(VirtualQMessageBox* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMessageBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QMessageBox_virtualbase_disconnectNotify(VirtualQMessageBox* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QMessageBox_protectedbase_adjustPosition(VirtualQMessageBox* self, QWidget* param1);
	friend void QMessageBox_protectedbase_updateMicroFocus(VirtualQMessageBox* self);
	friend void QMessageBox_protectedbase_create(VirtualQMessageBox* self);
	friend void QMessageBox_protectedbase_destroy(VirtualQMessageBox* self);
	friend bool QMessageBox_protectedbase_focusNextChild(VirtualQMessageBox* self);
	friend bool QMessageBox_protectedbase_focusPreviousChild(VirtualQMessageBox* self);
	friend QObject* QMessageBox_protectedbase_sender(const VirtualQMessageBox* self);
	friend int QMessageBox_protectedbase_senderSignalIndex(const VirtualQMessageBox* self);
	friend int QMessageBox_protectedbase_receivers(const VirtualQMessageBox* self, const char* signal);
	friend bool QMessageBox_protectedbase_isSignalConnected(const VirtualQMessageBox* self, QMetaMethod* signal);
};

VirtualQMessageBox* QMessageBox_new(const QMessageBox_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQMessageBox(vtbl, vdata, parent);
}

VirtualQMessageBox* QMessageBox_new2(const QMessageBox_VTable* vtbl, void* vdata) {
	return new VirtualQMessageBox(vtbl, vdata);
}

VirtualQMessageBox* QMessageBox_new3(const QMessageBox_VTable* vtbl, void* vdata, int icon, struct miqt_string title, struct miqt_string text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQMessageBox(vtbl, vdata, static_cast<QMessageBox::Icon>(icon), title_QString, text_QString);
}

VirtualQMessageBox* QMessageBox_new4(const QMessageBox_VTable* vtbl, void* vdata, struct miqt_string title, struct miqt_string text, int icon, int button0, int button1, int button2) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQMessageBox(vtbl, vdata, title_QString, text_QString, static_cast<QMessageBox::Icon>(icon), static_cast<int>(button0), static_cast<int>(button1), static_cast<int>(button2));
}

VirtualQMessageBox* QMessageBox_new5(const QMessageBox_VTable* vtbl, void* vdata, int icon, struct miqt_string title, struct miqt_string text, int buttons) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQMessageBox(vtbl, vdata, static_cast<QMessageBox::Icon>(icon), title_QString, text_QString, static_cast<QMessageBox::StandardButtons>(buttons));
}

VirtualQMessageBox* QMessageBox_new6(const QMessageBox_VTable* vtbl, void* vdata, int icon, struct miqt_string title, struct miqt_string text, int buttons, QWidget* parent) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQMessageBox(vtbl, vdata, static_cast<QMessageBox::Icon>(icon), title_QString, text_QString, static_cast<QMessageBox::StandardButtons>(buttons), parent);
}

VirtualQMessageBox* QMessageBox_new7(const QMessageBox_VTable* vtbl, void* vdata, int icon, struct miqt_string title, struct miqt_string text, int buttons, QWidget* parent, int flags) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQMessageBox(vtbl, vdata, static_cast<QMessageBox::Icon>(icon), title_QString, text_QString, static_cast<QMessageBox::StandardButtons>(buttons), parent, static_cast<Qt::WindowFlags>(flags));
}

VirtualQMessageBox* QMessageBox_new8(const QMessageBox_VTable* vtbl, void* vdata, struct miqt_string title, struct miqt_string text, int icon, int button0, int button1, int button2, QWidget* parent) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQMessageBox(vtbl, vdata, title_QString, text_QString, static_cast<QMessageBox::Icon>(icon), static_cast<int>(button0), static_cast<int>(button1), static_cast<int>(button2), parent);
}

VirtualQMessageBox* QMessageBox_new9(const QMessageBox_VTable* vtbl, void* vdata, struct miqt_string title, struct miqt_string text, int icon, int button0, int button1, int button2, QWidget* parent, int f) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQMessageBox(vtbl, vdata, title_QString, text_QString, static_cast<QMessageBox::Icon>(icon), static_cast<int>(button0), static_cast<int>(button1), static_cast<int>(button2), parent, static_cast<Qt::WindowFlags>(f));
}

void QMessageBox_virtbase(QMessageBox* src, QDialog** outptr_QDialog) {
	*outptr_QDialog = static_cast<QDialog*>(src);
}

QMetaObject* QMessageBox_metaObject(const QMessageBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMessageBox_metacast(QMessageBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMessageBox_metacall(QMessageBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMessageBox_tr(const char* s) {
	QString _ret = QMessageBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMessageBox_trUtf8(const char* s) {
	QString _ret = QMessageBox::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMessageBox_addButton(QMessageBox* self, QAbstractButton* button, int role) {
	self->addButton(button, static_cast<QMessageBox::ButtonRole>(role));
}

QPushButton* QMessageBox_addButton2(QMessageBox* self, struct miqt_string text, int role) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addButton(text_QString, static_cast<QMessageBox::ButtonRole>(role));
}

QPushButton* QMessageBox_addButtonWithButton(QMessageBox* self, int button) {
	return self->addButton(static_cast<QMessageBox::StandardButton>(button));
}

void QMessageBox_removeButton(QMessageBox* self, QAbstractButton* button) {
	self->removeButton(button);
}

struct miqt_array /* of QAbstractButton* */  QMessageBox_buttons(const QMessageBox* self) {
	QList<QAbstractButton *> _ret = self->buttons();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAbstractButton** _arr = static_cast<QAbstractButton**>(malloc(sizeof(QAbstractButton*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QMessageBox_buttonRole(const QMessageBox* self, QAbstractButton* button) {
	QMessageBox::ButtonRole _ret = self->buttonRole(button);
	return static_cast<int>(_ret);
}

void QMessageBox_setStandardButtons(QMessageBox* self, int buttons) {
	self->setStandardButtons(static_cast<QMessageBox::StandardButtons>(buttons));
}

int QMessageBox_standardButtons(const QMessageBox* self) {
	QMessageBox::StandardButtons _ret = self->standardButtons();
	return static_cast<int>(_ret);
}

int QMessageBox_standardButton(const QMessageBox* self, QAbstractButton* button) {
	QMessageBox::StandardButton _ret = self->standardButton(button);
	return static_cast<int>(_ret);
}

QAbstractButton* QMessageBox_button(const QMessageBox* self, int which) {
	return self->button(static_cast<QMessageBox::StandardButton>(which));
}

QPushButton* QMessageBox_defaultButton(const QMessageBox* self) {
	return self->defaultButton();
}

void QMessageBox_setDefaultButton(QMessageBox* self, QPushButton* button) {
	self->setDefaultButton(button);
}

void QMessageBox_setDefaultButtonWithButton(QMessageBox* self, int button) {
	self->setDefaultButton(static_cast<QMessageBox::StandardButton>(button));
}

QAbstractButton* QMessageBox_escapeButton(const QMessageBox* self) {
	return self->escapeButton();
}

void QMessageBox_setEscapeButton(QMessageBox* self, QAbstractButton* button) {
	self->setEscapeButton(button);
}

void QMessageBox_setEscapeButtonWithButton(QMessageBox* self, int button) {
	self->setEscapeButton(static_cast<QMessageBox::StandardButton>(button));
}

QAbstractButton* QMessageBox_clickedButton(const QMessageBox* self) {
	return self->clickedButton();
}

struct miqt_string QMessageBox_text(const QMessageBox* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMessageBox_setText(QMessageBox* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

int QMessageBox_icon(const QMessageBox* self) {
	QMessageBox::Icon _ret = self->icon();
	return static_cast<int>(_ret);
}

void QMessageBox_setIcon(QMessageBox* self, int icon) {
	self->setIcon(static_cast<QMessageBox::Icon>(icon));
}

QPixmap* QMessageBox_iconPixmap(const QMessageBox* self) {
	return new QPixmap(self->iconPixmap());
}

void QMessageBox_setIconPixmap(QMessageBox* self, QPixmap* pixmap) {
	self->setIconPixmap(*pixmap);
}

int QMessageBox_textFormat(const QMessageBox* self) {
	Qt::TextFormat _ret = self->textFormat();
	return static_cast<int>(_ret);
}

void QMessageBox_setTextFormat(QMessageBox* self, int format) {
	self->setTextFormat(static_cast<Qt::TextFormat>(format));
}

void QMessageBox_setTextInteractionFlags(QMessageBox* self, int flags) {
	self->setTextInteractionFlags(static_cast<Qt::TextInteractionFlags>(flags));
}

int QMessageBox_textInteractionFlags(const QMessageBox* self) {
	Qt::TextInteractionFlags _ret = self->textInteractionFlags();
	return static_cast<int>(_ret);
}

void QMessageBox_setCheckBox(QMessageBox* self, QCheckBox* cb) {
	self->setCheckBox(cb);
}

QCheckBox* QMessageBox_checkBox(const QMessageBox* self) {
	return self->checkBox();
}

int QMessageBox_information(QWidget* parent, struct miqt_string title, struct miqt_string text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QMessageBox::StandardButton _ret = QMessageBox::information(parent, title_QString, text_QString);
	return static_cast<int>(_ret);
}

int QMessageBox_question(QWidget* parent, struct miqt_string title, struct miqt_string text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QMessageBox::StandardButton _ret = QMessageBox::question(parent, title_QString, text_QString);
	return static_cast<int>(_ret);
}

int QMessageBox_warning(QWidget* parent, struct miqt_string title, struct miqt_string text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QMessageBox::StandardButton _ret = QMessageBox::warning(parent, title_QString, text_QString);
	return static_cast<int>(_ret);
}

int QMessageBox_critical(QWidget* parent, struct miqt_string title, struct miqt_string text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QMessageBox::StandardButton _ret = QMessageBox::critical(parent, title_QString, text_QString);
	return static_cast<int>(_ret);
}

void QMessageBox_about(QWidget* parent, struct miqt_string title, struct miqt_string text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QMessageBox::about(parent, title_QString, text_QString);
}

void QMessageBox_aboutQt(QWidget* parent) {
	QMessageBox::aboutQt(parent);
}

int QMessageBox_information2(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return QMessageBox::information(parent, title_QString, text_QString, static_cast<int>(button0));
}

int QMessageBox_information3(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	return QMessageBox::information(parent, title_QString, text_QString, button0Text_QString);
}

int QMessageBox_information4(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QMessageBox::StandardButton _ret = QMessageBox::information(parent, title_QString, text_QString, static_cast<QMessageBox::StandardButton>(button0));
	return static_cast<int>(_ret);
}

int QMessageBox_question2(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return QMessageBox::question(parent, title_QString, text_QString, static_cast<int>(button0));
}

int QMessageBox_question3(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	return QMessageBox::question(parent, title_QString, text_QString, button0Text_QString);
}

int QMessageBox_question4(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return QMessageBox::question(parent, title_QString, text_QString, static_cast<QMessageBox::StandardButton>(button0), static_cast<QMessageBox::StandardButton>(button1));
}

int QMessageBox_warning2(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return QMessageBox::warning(parent, title_QString, text_QString, static_cast<int>(button0), static_cast<int>(button1));
}

int QMessageBox_warning3(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	return QMessageBox::warning(parent, title_QString, text_QString, button0Text_QString);
}

int QMessageBox_warning4(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return QMessageBox::warning(parent, title_QString, text_QString, static_cast<QMessageBox::StandardButton>(button0), static_cast<QMessageBox::StandardButton>(button1));
}

int QMessageBox_critical2(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return QMessageBox::critical(parent, title_QString, text_QString, static_cast<int>(button0), static_cast<int>(button1));
}

int QMessageBox_critical3(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	return QMessageBox::critical(parent, title_QString, text_QString, button0Text_QString);
}

int QMessageBox_critical4(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return QMessageBox::critical(parent, title_QString, text_QString, static_cast<QMessageBox::StandardButton>(button0), static_cast<QMessageBox::StandardButton>(button1));
}

struct miqt_string QMessageBox_buttonText(const QMessageBox* self, int button) {
	QString _ret = self->buttonText(static_cast<int>(button));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMessageBox_setButtonText(QMessageBox* self, int button, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setButtonText(static_cast<int>(button), text_QString);
}

struct miqt_string QMessageBox_informativeText(const QMessageBox* self) {
	QString _ret = self->informativeText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMessageBox_setInformativeText(QMessageBox* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setInformativeText(text_QString);
}

struct miqt_string QMessageBox_detailedText(const QMessageBox* self) {
	QString _ret = self->detailedText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMessageBox_setDetailedText(QMessageBox* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setDetailedText(text_QString);
}

void QMessageBox_setWindowTitle(QMessageBox* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->setWindowTitle(title_QString);
}

void QMessageBox_setWindowModality(QMessageBox* self, int windowModality) {
	self->setWindowModality(static_cast<Qt::WindowModality>(windowModality));
}

QPixmap* QMessageBox_standardIcon(int icon) {
	return new QPixmap(QMessageBox::standardIcon(static_cast<QMessageBox::Icon>(icon)));
}

void QMessageBox_buttonClicked(QMessageBox* self, QAbstractButton* button) {
	self->buttonClicked(button);
}

void QMessageBox_connect_buttonClicked(VirtualQMessageBox* self, intptr_t slot, void (*callback)(intptr_t, QAbstractButton*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAbstractButton*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAbstractButton*);
		void operator()(QAbstractButton* button) {
			QAbstractButton* sigval1 = button;
			callback(slot, sigval1);
		}
	};
	VirtualQMessageBox::connect(self, static_cast<void (QMessageBox::*)(QAbstractButton*)>(&QMessageBox::buttonClicked), self, local_caller{slot, callback, release});
}

struct miqt_string QMessageBox_tr2(const char* s, const char* c) {
	QString _ret = QMessageBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMessageBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QMessageBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMessageBox_trUtf82(const char* s, const char* c) {
	QString _ret = QMessageBox::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMessageBox_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMessageBox::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QMessageBox_information42(QWidget* parent, struct miqt_string title, struct miqt_string text, int buttons) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QMessageBox::StandardButton _ret = QMessageBox::information(parent, title_QString, text_QString, static_cast<QMessageBox::StandardButtons>(buttons));
	return static_cast<int>(_ret);
}

int QMessageBox_information5(QWidget* parent, struct miqt_string title, struct miqt_string text, int buttons, int defaultButton) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QMessageBox::StandardButton _ret = QMessageBox::information(parent, title_QString, text_QString, static_cast<QMessageBox::StandardButtons>(buttons), static_cast<QMessageBox::StandardButton>(defaultButton));
	return static_cast<int>(_ret);
}

int QMessageBox_question42(QWidget* parent, struct miqt_string title, struct miqt_string text, int buttons) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QMessageBox::StandardButton _ret = QMessageBox::question(parent, title_QString, text_QString, static_cast<QMessageBox::StandardButtons>(buttons));
	return static_cast<int>(_ret);
}

int QMessageBox_question5(QWidget* parent, struct miqt_string title, struct miqt_string text, int buttons, int defaultButton) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QMessageBox::StandardButton _ret = QMessageBox::question(parent, title_QString, text_QString, static_cast<QMessageBox::StandardButtons>(buttons), static_cast<QMessageBox::StandardButton>(defaultButton));
	return static_cast<int>(_ret);
}

int QMessageBox_warning42(QWidget* parent, struct miqt_string title, struct miqt_string text, int buttons) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QMessageBox::StandardButton _ret = QMessageBox::warning(parent, title_QString, text_QString, static_cast<QMessageBox::StandardButtons>(buttons));
	return static_cast<int>(_ret);
}

int QMessageBox_warning5(QWidget* parent, struct miqt_string title, struct miqt_string text, int buttons, int defaultButton) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QMessageBox::StandardButton _ret = QMessageBox::warning(parent, title_QString, text_QString, static_cast<QMessageBox::StandardButtons>(buttons), static_cast<QMessageBox::StandardButton>(defaultButton));
	return static_cast<int>(_ret);
}

int QMessageBox_critical42(QWidget* parent, struct miqt_string title, struct miqt_string text, int buttons) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QMessageBox::StandardButton _ret = QMessageBox::critical(parent, title_QString, text_QString, static_cast<QMessageBox::StandardButtons>(buttons));
	return static_cast<int>(_ret);
}

int QMessageBox_critical5(QWidget* parent, struct miqt_string title, struct miqt_string text, int buttons, int defaultButton) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QMessageBox::StandardButton _ret = QMessageBox::critical(parent, title_QString, text_QString, static_cast<QMessageBox::StandardButtons>(buttons), static_cast<QMessageBox::StandardButton>(defaultButton));
	return static_cast<int>(_ret);
}

void QMessageBox_aboutQt2(QWidget* parent, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QMessageBox::aboutQt(parent, title_QString);
}

int QMessageBox_information52(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return QMessageBox::information(parent, title_QString, text_QString, static_cast<int>(button0), static_cast<int>(button1));
}

int QMessageBox_information6(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1, int button2) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return QMessageBox::information(parent, title_QString, text_QString, static_cast<int>(button0), static_cast<int>(button1), static_cast<int>(button2));
}

int QMessageBox_information53(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	QString button1Text_QString = QString::fromUtf8(button1Text.data, button1Text.len);
	return QMessageBox::information(parent, title_QString, text_QString, button0Text_QString, button1Text_QString);
}

int QMessageBox_information62(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	QString button1Text_QString = QString::fromUtf8(button1Text.data, button1Text.len);
	QString button2Text_QString = QString::fromUtf8(button2Text.data, button2Text.len);
	return QMessageBox::information(parent, title_QString, text_QString, button0Text_QString, button1Text_QString, button2Text_QString);
}

int QMessageBox_information7(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text, int defaultButtonNumber) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	QString button1Text_QString = QString::fromUtf8(button1Text.data, button1Text.len);
	QString button2Text_QString = QString::fromUtf8(button2Text.data, button2Text.len);
	return QMessageBox::information(parent, title_QString, text_QString, button0Text_QString, button1Text_QString, button2Text_QString, static_cast<int>(defaultButtonNumber));
}

int QMessageBox_information8(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text, int defaultButtonNumber, int escapeButtonNumber) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	QString button1Text_QString = QString::fromUtf8(button1Text.data, button1Text.len);
	QString button2Text_QString = QString::fromUtf8(button2Text.data, button2Text.len);
	return QMessageBox::information(parent, title_QString, text_QString, button0Text_QString, button1Text_QString, button2Text_QString, static_cast<int>(defaultButtonNumber), static_cast<int>(escapeButtonNumber));
}

int QMessageBox_information54(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QMessageBox::StandardButton _ret = QMessageBox::information(parent, title_QString, text_QString, static_cast<QMessageBox::StandardButton>(button0), static_cast<QMessageBox::StandardButton>(button1));
	return static_cast<int>(_ret);
}

int QMessageBox_question52(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return QMessageBox::question(parent, title_QString, text_QString, static_cast<int>(button0), static_cast<int>(button1));
}

int QMessageBox_question6(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1, int button2) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return QMessageBox::question(parent, title_QString, text_QString, static_cast<int>(button0), static_cast<int>(button1), static_cast<int>(button2));
}

int QMessageBox_question53(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	QString button1Text_QString = QString::fromUtf8(button1Text.data, button1Text.len);
	return QMessageBox::question(parent, title_QString, text_QString, button0Text_QString, button1Text_QString);
}

int QMessageBox_question62(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	QString button1Text_QString = QString::fromUtf8(button1Text.data, button1Text.len);
	QString button2Text_QString = QString::fromUtf8(button2Text.data, button2Text.len);
	return QMessageBox::question(parent, title_QString, text_QString, button0Text_QString, button1Text_QString, button2Text_QString);
}

int QMessageBox_question7(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text, int defaultButtonNumber) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	QString button1Text_QString = QString::fromUtf8(button1Text.data, button1Text.len);
	QString button2Text_QString = QString::fromUtf8(button2Text.data, button2Text.len);
	return QMessageBox::question(parent, title_QString, text_QString, button0Text_QString, button1Text_QString, button2Text_QString, static_cast<int>(defaultButtonNumber));
}

int QMessageBox_question8(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text, int defaultButtonNumber, int escapeButtonNumber) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	QString button1Text_QString = QString::fromUtf8(button1Text.data, button1Text.len);
	QString button2Text_QString = QString::fromUtf8(button2Text.data, button2Text.len);
	return QMessageBox::question(parent, title_QString, text_QString, button0Text_QString, button1Text_QString, button2Text_QString, static_cast<int>(defaultButtonNumber), static_cast<int>(escapeButtonNumber));
}

int QMessageBox_warning6(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1, int button2) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return QMessageBox::warning(parent, title_QString, text_QString, static_cast<int>(button0), static_cast<int>(button1), static_cast<int>(button2));
}

int QMessageBox_warning52(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	QString button1Text_QString = QString::fromUtf8(button1Text.data, button1Text.len);
	return QMessageBox::warning(parent, title_QString, text_QString, button0Text_QString, button1Text_QString);
}

int QMessageBox_warning62(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	QString button1Text_QString = QString::fromUtf8(button1Text.data, button1Text.len);
	QString button2Text_QString = QString::fromUtf8(button2Text.data, button2Text.len);
	return QMessageBox::warning(parent, title_QString, text_QString, button0Text_QString, button1Text_QString, button2Text_QString);
}

int QMessageBox_warning7(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text, int defaultButtonNumber) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	QString button1Text_QString = QString::fromUtf8(button1Text.data, button1Text.len);
	QString button2Text_QString = QString::fromUtf8(button2Text.data, button2Text.len);
	return QMessageBox::warning(parent, title_QString, text_QString, button0Text_QString, button1Text_QString, button2Text_QString, static_cast<int>(defaultButtonNumber));
}

int QMessageBox_warning8(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text, int defaultButtonNumber, int escapeButtonNumber) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	QString button1Text_QString = QString::fromUtf8(button1Text.data, button1Text.len);
	QString button2Text_QString = QString::fromUtf8(button2Text.data, button2Text.len);
	return QMessageBox::warning(parent, title_QString, text_QString, button0Text_QString, button1Text_QString, button2Text_QString, static_cast<int>(defaultButtonNumber), static_cast<int>(escapeButtonNumber));
}

int QMessageBox_critical6(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1, int button2) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return QMessageBox::critical(parent, title_QString, text_QString, static_cast<int>(button0), static_cast<int>(button1), static_cast<int>(button2));
}

int QMessageBox_critical52(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	QString button1Text_QString = QString::fromUtf8(button1Text.data, button1Text.len);
	return QMessageBox::critical(parent, title_QString, text_QString, button0Text_QString, button1Text_QString);
}

int QMessageBox_critical62(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	QString button1Text_QString = QString::fromUtf8(button1Text.data, button1Text.len);
	QString button2Text_QString = QString::fromUtf8(button2Text.data, button2Text.len);
	return QMessageBox::critical(parent, title_QString, text_QString, button0Text_QString, button1Text_QString, button2Text_QString);
}

int QMessageBox_critical7(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text, int defaultButtonNumber) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	QString button1Text_QString = QString::fromUtf8(button1Text.data, button1Text.len);
	QString button2Text_QString = QString::fromUtf8(button2Text.data, button2Text.len);
	return QMessageBox::critical(parent, title_QString, text_QString, button0Text_QString, button1Text_QString, button2Text_QString, static_cast<int>(defaultButtonNumber));
}

int QMessageBox_critical8(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text, int defaultButtonNumber, int escapeButtonNumber) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString button0Text_QString = QString::fromUtf8(button0Text.data, button0Text.len);
	QString button1Text_QString = QString::fromUtf8(button1Text.data, button1Text.len);
	QString button2Text_QString = QString::fromUtf8(button2Text.data, button2Text.len);
	return QMessageBox::critical(parent, title_QString, text_QString, button0Text_QString, button1Text_QString, button2Text_QString, static_cast<int>(defaultButtonNumber), static_cast<int>(escapeButtonNumber));
}

QMetaObject* QMessageBox_virtualbase_metaObject(const VirtualQMessageBox* self) {

	return (QMetaObject*) self->QMessageBox::metaObject();
}

void* QMessageBox_virtualbase_metacast(VirtualQMessageBox* self, const char* param1) {

	return self->QMessageBox::qt_metacast(param1);
}

int QMessageBox_virtualbase_metacall(VirtualQMessageBox* self, int param1, int param2, void** param3) {

	return self->QMessageBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QMessageBox_virtualbase_event(VirtualQMessageBox* self, QEvent* e) {

	return self->QMessageBox::event(e);
}

void QMessageBox_virtualbase_resizeEvent(VirtualQMessageBox* self, QResizeEvent* event) {

	self->QMessageBox::resizeEvent(event);
}

void QMessageBox_virtualbase_showEvent(VirtualQMessageBox* self, QShowEvent* event) {

	self->QMessageBox::showEvent(event);
}

void QMessageBox_virtualbase_closeEvent(VirtualQMessageBox* self, QCloseEvent* event) {

	self->QMessageBox::closeEvent(event);
}

void QMessageBox_virtualbase_keyPressEvent(VirtualQMessageBox* self, QKeyEvent* event) {

	self->QMessageBox::keyPressEvent(event);
}

void QMessageBox_virtualbase_changeEvent(VirtualQMessageBox* self, QEvent* event) {

	self->QMessageBox::changeEvent(event);
}

void QMessageBox_virtualbase_setVisible(VirtualQMessageBox* self, bool visible) {

	self->QMessageBox::setVisible(visible);
}

QSize* QMessageBox_virtualbase_sizeHint(const VirtualQMessageBox* self) {

	return new QSize(self->QMessageBox::sizeHint());
}

QSize* QMessageBox_virtualbase_minimumSizeHint(const VirtualQMessageBox* self) {

	return new QSize(self->QMessageBox::minimumSizeHint());
}

void QMessageBox_virtualbase_open(VirtualQMessageBox* self) {

	self->QMessageBox::open();
}

int QMessageBox_virtualbase_exec(VirtualQMessageBox* self) {

	return self->QMessageBox::exec();
}

void QMessageBox_virtualbase_done(VirtualQMessageBox* self, int param1) {

	self->QMessageBox::done(static_cast<int>(param1));
}

void QMessageBox_virtualbase_accept(VirtualQMessageBox* self) {

	self->QMessageBox::accept();
}

void QMessageBox_virtualbase_reject(VirtualQMessageBox* self) {

	self->QMessageBox::reject();
}

void QMessageBox_virtualbase_contextMenuEvent(VirtualQMessageBox* self, QContextMenuEvent* param1) {

	self->QMessageBox::contextMenuEvent(param1);
}

bool QMessageBox_virtualbase_eventFilter(VirtualQMessageBox* self, QObject* param1, QEvent* param2) {

	return self->QMessageBox::eventFilter(param1, param2);
}

int QMessageBox_virtualbase_devType(const VirtualQMessageBox* self) {

	return self->QMessageBox::devType();
}

int QMessageBox_virtualbase_heightForWidth(const VirtualQMessageBox* self, int param1) {

	return self->QMessageBox::heightForWidth(static_cast<int>(param1));
}

bool QMessageBox_virtualbase_hasHeightForWidth(const VirtualQMessageBox* self) {

	return self->QMessageBox::hasHeightForWidth();
}

QPaintEngine* QMessageBox_virtualbase_paintEngine(const VirtualQMessageBox* self) {

	return self->QMessageBox::paintEngine();
}

void QMessageBox_virtualbase_mousePressEvent(VirtualQMessageBox* self, QMouseEvent* event) {

	self->QMessageBox::mousePressEvent(event);
}

void QMessageBox_virtualbase_mouseReleaseEvent(VirtualQMessageBox* self, QMouseEvent* event) {

	self->QMessageBox::mouseReleaseEvent(event);
}

void QMessageBox_virtualbase_mouseDoubleClickEvent(VirtualQMessageBox* self, QMouseEvent* event) {

	self->QMessageBox::mouseDoubleClickEvent(event);
}

void QMessageBox_virtualbase_mouseMoveEvent(VirtualQMessageBox* self, QMouseEvent* event) {

	self->QMessageBox::mouseMoveEvent(event);
}

void QMessageBox_virtualbase_wheelEvent(VirtualQMessageBox* self, QWheelEvent* event) {

	self->QMessageBox::wheelEvent(event);
}

void QMessageBox_virtualbase_keyReleaseEvent(VirtualQMessageBox* self, QKeyEvent* event) {

	self->QMessageBox::keyReleaseEvent(event);
}

void QMessageBox_virtualbase_focusInEvent(VirtualQMessageBox* self, QFocusEvent* event) {

	self->QMessageBox::focusInEvent(event);
}

void QMessageBox_virtualbase_focusOutEvent(VirtualQMessageBox* self, QFocusEvent* event) {

	self->QMessageBox::focusOutEvent(event);
}

void QMessageBox_virtualbase_enterEvent(VirtualQMessageBox* self, QEvent* event) {

	self->QMessageBox::enterEvent(event);
}

void QMessageBox_virtualbase_leaveEvent(VirtualQMessageBox* self, QEvent* event) {

	self->QMessageBox::leaveEvent(event);
}

void QMessageBox_virtualbase_paintEvent(VirtualQMessageBox* self, QPaintEvent* event) {

	self->QMessageBox::paintEvent(event);
}

void QMessageBox_virtualbase_moveEvent(VirtualQMessageBox* self, QMoveEvent* event) {

	self->QMessageBox::moveEvent(event);
}

void QMessageBox_virtualbase_tabletEvent(VirtualQMessageBox* self, QTabletEvent* event) {

	self->QMessageBox::tabletEvent(event);
}

void QMessageBox_virtualbase_actionEvent(VirtualQMessageBox* self, QActionEvent* event) {

	self->QMessageBox::actionEvent(event);
}

void QMessageBox_virtualbase_dragEnterEvent(VirtualQMessageBox* self, QDragEnterEvent* event) {

	self->QMessageBox::dragEnterEvent(event);
}

void QMessageBox_virtualbase_dragMoveEvent(VirtualQMessageBox* self, QDragMoveEvent* event) {

	self->QMessageBox::dragMoveEvent(event);
}

void QMessageBox_virtualbase_dragLeaveEvent(VirtualQMessageBox* self, QDragLeaveEvent* event) {

	self->QMessageBox::dragLeaveEvent(event);
}

void QMessageBox_virtualbase_dropEvent(VirtualQMessageBox* self, QDropEvent* event) {

	self->QMessageBox::dropEvent(event);
}

void QMessageBox_virtualbase_hideEvent(VirtualQMessageBox* self, QHideEvent* event) {

	self->QMessageBox::hideEvent(event);
}

bool QMessageBox_virtualbase_nativeEvent(VirtualQMessageBox* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QMessageBox::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QMessageBox_virtualbase_metric(const VirtualQMessageBox* self, int param1) {

	return self->QMessageBox::metric(static_cast<VirtualQMessageBox::PaintDeviceMetric>(param1));
}

void QMessageBox_virtualbase_initPainter(const VirtualQMessageBox* self, QPainter* painter) {

	self->QMessageBox::initPainter(painter);
}

QPaintDevice* QMessageBox_virtualbase_redirected(const VirtualQMessageBox* self, QPoint* offset) {

	return self->QMessageBox::redirected(offset);
}

QPainter* QMessageBox_virtualbase_sharedPainter(const VirtualQMessageBox* self) {

	return self->QMessageBox::sharedPainter();
}

void QMessageBox_virtualbase_inputMethodEvent(VirtualQMessageBox* self, QInputMethodEvent* param1) {

	self->QMessageBox::inputMethodEvent(param1);
}

QVariant* QMessageBox_virtualbase_inputMethodQuery(const VirtualQMessageBox* self, int param1) {

	return new QVariant(self->QMessageBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QMessageBox_virtualbase_focusNextPrevChild(VirtualQMessageBox* self, bool next) {

	return self->QMessageBox::focusNextPrevChild(next);
}

void QMessageBox_virtualbase_timerEvent(VirtualQMessageBox* self, QTimerEvent* event) {

	self->QMessageBox::timerEvent(event);
}

void QMessageBox_virtualbase_childEvent(VirtualQMessageBox* self, QChildEvent* event) {

	self->QMessageBox::childEvent(event);
}

void QMessageBox_virtualbase_customEvent(VirtualQMessageBox* self, QEvent* event) {

	self->QMessageBox::customEvent(event);
}

void QMessageBox_virtualbase_connectNotify(VirtualQMessageBox* self, QMetaMethod* signal) {

	self->QMessageBox::connectNotify(*signal);
}

void QMessageBox_virtualbase_disconnectNotify(VirtualQMessageBox* self, QMetaMethod* signal) {

	self->QMessageBox::disconnectNotify(*signal);
}

const QMetaObject* QMessageBox_staticMetaObject() { return &QMessageBox::staticMetaObject; }

const QMessageBox_VTable* QMessageBox_vtbl(const VirtualQMessageBox* self) { return self->vtbl; }
void* QMessageBox_vdata(const VirtualQMessageBox* self) { return self->vdata; }
void QMessageBox_setVdata(VirtualQMessageBox* self, void* vdata) { self->vdata = vdata; }

void QMessageBox_protectedbase_adjustPosition(VirtualQMessageBox* self, QWidget* param1) {
	self->adjustPosition(param1);
}

void QMessageBox_protectedbase_updateMicroFocus(VirtualQMessageBox* self) {
	self->updateMicroFocus();
}

void QMessageBox_protectedbase_create(VirtualQMessageBox* self) {
	self->create();
}

void QMessageBox_protectedbase_destroy(VirtualQMessageBox* self) {
	self->destroy();
}

bool QMessageBox_protectedbase_focusNextChild(VirtualQMessageBox* self) {
	return self->focusNextChild();
}

bool QMessageBox_protectedbase_focusPreviousChild(VirtualQMessageBox* self) {
	return self->focusPreviousChild();
}

QObject* QMessageBox_protectedbase_sender(const VirtualQMessageBox* self) {
	return self->sender();
}

int QMessageBox_protectedbase_senderSignalIndex(const VirtualQMessageBox* self) {
	return self->senderSignalIndex();
}

int QMessageBox_protectedbase_receivers(const VirtualQMessageBox* self, const char* signal) {
	return self->receivers(signal);
}

bool QMessageBox_protectedbase_isSignalConnected(const VirtualQMessageBox* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QMessageBox_delete(QMessageBox* self) {
	delete self;
}

