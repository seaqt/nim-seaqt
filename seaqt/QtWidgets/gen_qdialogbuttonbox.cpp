#include <QAbstractButton>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDialogButtonBox>
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
#include <qdialogbuttonbox.h>
#include "gen_qdialogbuttonbox.h"
class VirtualQDialogButtonBox final : public QDialogButtonBox {
	const QDialogButtonBox_VTable* vtbl;
	void* vdata;
public:
	friend const QDialogButtonBox_VTable* QDialogButtonBox_vtbl(const VirtualQDialogButtonBox* self);
	friend void* QDialogButtonBox_vdata(const VirtualQDialogButtonBox* self);
	friend void QDialogButtonBox_setVdata(VirtualQDialogButtonBox* self, void* vdata);

	VirtualQDialogButtonBox(const QDialogButtonBox_VTable* vtbl, void* vdata, QWidget* parent): QDialogButtonBox(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQDialogButtonBox(const QDialogButtonBox_VTable* vtbl, void* vdata): QDialogButtonBox(), vtbl(vtbl), vdata(vdata) {}
	VirtualQDialogButtonBox(const QDialogButtonBox_VTable* vtbl, void* vdata, Qt::Orientation orientation): QDialogButtonBox(orientation), vtbl(vtbl), vdata(vdata) {}
	VirtualQDialogButtonBox(const QDialogButtonBox_VTable* vtbl, void* vdata, QDialogButtonBox::StandardButtons buttons): QDialogButtonBox(buttons), vtbl(vtbl), vdata(vdata) {}
	VirtualQDialogButtonBox(const QDialogButtonBox_VTable* vtbl, void* vdata, QDialogButtonBox::StandardButtons buttons, Qt::Orientation orientation): QDialogButtonBox(buttons, orientation), vtbl(vtbl), vdata(vdata) {}
	VirtualQDialogButtonBox(const QDialogButtonBox_VTable* vtbl, void* vdata, Qt::Orientation orientation, QWidget* parent): QDialogButtonBox(orientation, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQDialogButtonBox(const QDialogButtonBox_VTable* vtbl, void* vdata, QDialogButtonBox::StandardButtons buttons, QWidget* parent): QDialogButtonBox(buttons, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQDialogButtonBox(const QDialogButtonBox_VTable* vtbl, void* vdata, QDialogButtonBox::StandardButtons buttons, Qt::Orientation orientation, QWidget* parent): QDialogButtonBox(buttons, orientation, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQDialogButtonBox() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDialogButtonBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QDialogButtonBox_virtualbase_metaObject(const VirtualQDialogButtonBox* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDialogButtonBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QDialogButtonBox_virtualbase_metacast(VirtualQDialogButtonBox* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDialogButtonBox::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDialogButtonBox_virtualbase_metacall(VirtualQDialogButtonBox* self, int param1, int param2, void** param3);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QDialogButtonBox::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_changeEvent(VirtualQDialogButtonBox* self, QEvent* event);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDialogButtonBox::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QDialogButtonBox_virtualbase_event(VirtualQDialogButtonBox* self, QEvent* event);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDialogButtonBox::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QDialogButtonBox_virtualbase_devType(const VirtualQDialogButtonBox* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDialogButtonBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_setVisible(VirtualQDialogButtonBox* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDialogButtonBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QDialogButtonBox_virtualbase_sizeHint(const VirtualQDialogButtonBox* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDialogButtonBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QDialogButtonBox_virtualbase_minimumSizeHint(const VirtualQDialogButtonBox* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDialogButtonBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDialogButtonBox_virtualbase_heightForWidth(const VirtualQDialogButtonBox* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDialogButtonBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QDialogButtonBox_virtualbase_hasHeightForWidth(const VirtualQDialogButtonBox* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDialogButtonBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QDialogButtonBox_virtualbase_paintEngine(const VirtualQDialogButtonBox* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDialogButtonBox::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_mousePressEvent(VirtualQDialogButtonBox* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDialogButtonBox::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_mouseReleaseEvent(VirtualQDialogButtonBox* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDialogButtonBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_mouseDoubleClickEvent(VirtualQDialogButtonBox* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDialogButtonBox::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_mouseMoveEvent(VirtualQDialogButtonBox* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDialogButtonBox::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_wheelEvent(VirtualQDialogButtonBox* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QDialogButtonBox::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_keyPressEvent(VirtualQDialogButtonBox* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDialogButtonBox::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_keyReleaseEvent(VirtualQDialogButtonBox* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDialogButtonBox::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_focusInEvent(VirtualQDialogButtonBox* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDialogButtonBox::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_focusOutEvent(VirtualQDialogButtonBox* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDialogButtonBox::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_enterEvent(VirtualQDialogButtonBox* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDialogButtonBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_leaveEvent(VirtualQDialogButtonBox* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDialogButtonBox::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_paintEvent(VirtualQDialogButtonBox* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDialogButtonBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_moveEvent(VirtualQDialogButtonBox* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QDialogButtonBox::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_resizeEvent(VirtualQDialogButtonBox* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDialogButtonBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_closeEvent(VirtualQDialogButtonBox* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDialogButtonBox::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_contextMenuEvent(VirtualQDialogButtonBox* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDialogButtonBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_tabletEvent(VirtualQDialogButtonBox* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDialogButtonBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_actionEvent(VirtualQDialogButtonBox* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDialogButtonBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_dragEnterEvent(VirtualQDialogButtonBox* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDialogButtonBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_dragMoveEvent(VirtualQDialogButtonBox* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDialogButtonBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_dragLeaveEvent(VirtualQDialogButtonBox* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDialogButtonBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_dropEvent(VirtualQDialogButtonBox* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDialogButtonBox::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_showEvent(VirtualQDialogButtonBox* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDialogButtonBox::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_hideEvent(VirtualQDialogButtonBox* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDialogButtonBox::nativeEvent(eventType, message, result);
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

	friend bool QDialogButtonBox_virtualbase_nativeEvent(VirtualQDialogButtonBox* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDialogButtonBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDialogButtonBox_virtualbase_metric(const VirtualQDialogButtonBox* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDialogButtonBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_initPainter(const VirtualQDialogButtonBox* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDialogButtonBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QDialogButtonBox_virtualbase_redirected(const VirtualQDialogButtonBox* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDialogButtonBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QDialogButtonBox_virtualbase_sharedPainter(const VirtualQDialogButtonBox* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDialogButtonBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_inputMethodEvent(VirtualQDialogButtonBox* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDialogButtonBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QDialogButtonBox_virtualbase_inputMethodQuery(const VirtualQDialogButtonBox* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDialogButtonBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QDialogButtonBox_virtualbase_focusNextPrevChild(VirtualQDialogButtonBox* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDialogButtonBox::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDialogButtonBox_virtualbase_eventFilter(VirtualQDialogButtonBox* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDialogButtonBox::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_timerEvent(VirtualQDialogButtonBox* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDialogButtonBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_childEvent(VirtualQDialogButtonBox* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDialogButtonBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_customEvent(VirtualQDialogButtonBox* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDialogButtonBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_connectNotify(VirtualQDialogButtonBox* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDialogButtonBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QDialogButtonBox_virtualbase_disconnectNotify(VirtualQDialogButtonBox* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QDialogButtonBox_protectedbase_updateMicroFocus(VirtualQDialogButtonBox* self);
	friend void QDialogButtonBox_protectedbase_create(VirtualQDialogButtonBox* self);
	friend void QDialogButtonBox_protectedbase_destroy(VirtualQDialogButtonBox* self);
	friend bool QDialogButtonBox_protectedbase_focusNextChild(VirtualQDialogButtonBox* self);
	friend bool QDialogButtonBox_protectedbase_focusPreviousChild(VirtualQDialogButtonBox* self);
	friend QObject* QDialogButtonBox_protectedbase_sender(const VirtualQDialogButtonBox* self);
	friend int QDialogButtonBox_protectedbase_senderSignalIndex(const VirtualQDialogButtonBox* self);
	friend int QDialogButtonBox_protectedbase_receivers(const VirtualQDialogButtonBox* self, const char* signal);
	friend bool QDialogButtonBox_protectedbase_isSignalConnected(const VirtualQDialogButtonBox* self, QMetaMethod* signal);
};

VirtualQDialogButtonBox* QDialogButtonBox_new(const QDialogButtonBox_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQDialogButtonBox(vtbl, vdata, parent);
}

VirtualQDialogButtonBox* QDialogButtonBox_new2(const QDialogButtonBox_VTable* vtbl, void* vdata) {
	return new VirtualQDialogButtonBox(vtbl, vdata);
}

VirtualQDialogButtonBox* QDialogButtonBox_new3(const QDialogButtonBox_VTable* vtbl, void* vdata, int orientation) {
	return new VirtualQDialogButtonBox(vtbl, vdata, static_cast<Qt::Orientation>(orientation));
}

VirtualQDialogButtonBox* QDialogButtonBox_new4(const QDialogButtonBox_VTable* vtbl, void* vdata, int buttons) {
	return new VirtualQDialogButtonBox(vtbl, vdata, static_cast<QDialogButtonBox::StandardButtons>(buttons));
}

VirtualQDialogButtonBox* QDialogButtonBox_new5(const QDialogButtonBox_VTable* vtbl, void* vdata, int buttons, int orientation) {
	return new VirtualQDialogButtonBox(vtbl, vdata, static_cast<QDialogButtonBox::StandardButtons>(buttons), static_cast<Qt::Orientation>(orientation));
}

VirtualQDialogButtonBox* QDialogButtonBox_new6(const QDialogButtonBox_VTable* vtbl, void* vdata, int orientation, QWidget* parent) {
	return new VirtualQDialogButtonBox(vtbl, vdata, static_cast<Qt::Orientation>(orientation), parent);
}

VirtualQDialogButtonBox* QDialogButtonBox_new7(const QDialogButtonBox_VTable* vtbl, void* vdata, int buttons, QWidget* parent) {
	return new VirtualQDialogButtonBox(vtbl, vdata, static_cast<QDialogButtonBox::StandardButtons>(buttons), parent);
}

VirtualQDialogButtonBox* QDialogButtonBox_new8(const QDialogButtonBox_VTable* vtbl, void* vdata, int buttons, int orientation, QWidget* parent) {
	return new VirtualQDialogButtonBox(vtbl, vdata, static_cast<QDialogButtonBox::StandardButtons>(buttons), static_cast<Qt::Orientation>(orientation), parent);
}

void QDialogButtonBox_virtbase(QDialogButtonBox* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QDialogButtonBox_metaObject(const QDialogButtonBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDialogButtonBox_metacast(QDialogButtonBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDialogButtonBox_metacall(QDialogButtonBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDialogButtonBox_tr(const char* s) {
	QString _ret = QDialogButtonBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDialogButtonBox_trUtf8(const char* s) {
	QString _ret = QDialogButtonBox::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDialogButtonBox_setOrientation(QDialogButtonBox* self, int orientation) {
	self->setOrientation(static_cast<Qt::Orientation>(orientation));
}

int QDialogButtonBox_orientation(const QDialogButtonBox* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

void QDialogButtonBox_addButton(QDialogButtonBox* self, QAbstractButton* button, int role) {
	self->addButton(button, static_cast<QDialogButtonBox::ButtonRole>(role));
}

QPushButton* QDialogButtonBox_addButton2(QDialogButtonBox* self, struct miqt_string text, int role) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addButton(text_QString, static_cast<QDialogButtonBox::ButtonRole>(role));
}

QPushButton* QDialogButtonBox_addButtonWithButton(QDialogButtonBox* self, int button) {
	return self->addButton(static_cast<QDialogButtonBox::StandardButton>(button));
}

void QDialogButtonBox_removeButton(QDialogButtonBox* self, QAbstractButton* button) {
	self->removeButton(button);
}

void QDialogButtonBox_clear(QDialogButtonBox* self) {
	self->clear();
}

struct miqt_array /* of QAbstractButton* */  QDialogButtonBox_buttons(const QDialogButtonBox* self) {
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

int QDialogButtonBox_buttonRole(const QDialogButtonBox* self, QAbstractButton* button) {
	QDialogButtonBox::ButtonRole _ret = self->buttonRole(button);
	return static_cast<int>(_ret);
}

void QDialogButtonBox_setStandardButtons(QDialogButtonBox* self, int buttons) {
	self->setStandardButtons(static_cast<QDialogButtonBox::StandardButtons>(buttons));
}

int QDialogButtonBox_standardButtons(const QDialogButtonBox* self) {
	QDialogButtonBox::StandardButtons _ret = self->standardButtons();
	return static_cast<int>(_ret);
}

int QDialogButtonBox_standardButton(const QDialogButtonBox* self, QAbstractButton* button) {
	QDialogButtonBox::StandardButton _ret = self->standardButton(button);
	return static_cast<int>(_ret);
}

QPushButton* QDialogButtonBox_button(const QDialogButtonBox* self, int which) {
	return self->button(static_cast<QDialogButtonBox::StandardButton>(which));
}

void QDialogButtonBox_setCenterButtons(QDialogButtonBox* self, bool center) {
	self->setCenterButtons(center);
}

bool QDialogButtonBox_centerButtons(const QDialogButtonBox* self) {
	return self->centerButtons();
}

void QDialogButtonBox_clicked(QDialogButtonBox* self, QAbstractButton* button) {
	self->clicked(button);
}

void QDialogButtonBox_connect_clicked(VirtualQDialogButtonBox* self, intptr_t slot, void (*callback)(intptr_t, QAbstractButton*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAbstractButton*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAbstractButton*);
		void operator()(QAbstractButton* button) {
			QAbstractButton* sigval1 = button;
			callback(slot, sigval1);
		}
	};
	VirtualQDialogButtonBox::connect(self, static_cast<void (QDialogButtonBox::*)(QAbstractButton*)>(&QDialogButtonBox::clicked), self, local_caller{slot, callback, release});
}

void QDialogButtonBox_accepted(QDialogButtonBox* self) {
	self->accepted();
}

void QDialogButtonBox_connect_accepted(VirtualQDialogButtonBox* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQDialogButtonBox::connect(self, static_cast<void (QDialogButtonBox::*)()>(&QDialogButtonBox::accepted), self, local_caller{slot, callback, release});
}

void QDialogButtonBox_helpRequested(QDialogButtonBox* self) {
	self->helpRequested();
}

void QDialogButtonBox_connect_helpRequested(VirtualQDialogButtonBox* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQDialogButtonBox::connect(self, static_cast<void (QDialogButtonBox::*)()>(&QDialogButtonBox::helpRequested), self, local_caller{slot, callback, release});
}

void QDialogButtonBox_rejected(QDialogButtonBox* self) {
	self->rejected();
}

void QDialogButtonBox_connect_rejected(VirtualQDialogButtonBox* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQDialogButtonBox::connect(self, static_cast<void (QDialogButtonBox::*)()>(&QDialogButtonBox::rejected), self, local_caller{slot, callback, release});
}

struct miqt_string QDialogButtonBox_tr2(const char* s, const char* c) {
	QString _ret = QDialogButtonBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDialogButtonBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QDialogButtonBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDialogButtonBox_trUtf82(const char* s, const char* c) {
	QString _ret = QDialogButtonBox::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDialogButtonBox_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QDialogButtonBox::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QDialogButtonBox_virtualbase_metaObject(const VirtualQDialogButtonBox* self) {

	return (QMetaObject*) self->QDialogButtonBox::metaObject();
}

void* QDialogButtonBox_virtualbase_metacast(VirtualQDialogButtonBox* self, const char* param1) {

	return self->QDialogButtonBox::qt_metacast(param1);
}

int QDialogButtonBox_virtualbase_metacall(VirtualQDialogButtonBox* self, int param1, int param2, void** param3) {

	return self->QDialogButtonBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QDialogButtonBox_virtualbase_changeEvent(VirtualQDialogButtonBox* self, QEvent* event) {

	self->QDialogButtonBox::changeEvent(event);
}

bool QDialogButtonBox_virtualbase_event(VirtualQDialogButtonBox* self, QEvent* event) {

	return self->QDialogButtonBox::event(event);
}

int QDialogButtonBox_virtualbase_devType(const VirtualQDialogButtonBox* self) {

	return self->QDialogButtonBox::devType();
}

void QDialogButtonBox_virtualbase_setVisible(VirtualQDialogButtonBox* self, bool visible) {

	self->QDialogButtonBox::setVisible(visible);
}

QSize* QDialogButtonBox_virtualbase_sizeHint(const VirtualQDialogButtonBox* self) {

	return new QSize(self->QDialogButtonBox::sizeHint());
}

QSize* QDialogButtonBox_virtualbase_minimumSizeHint(const VirtualQDialogButtonBox* self) {

	return new QSize(self->QDialogButtonBox::minimumSizeHint());
}

int QDialogButtonBox_virtualbase_heightForWidth(const VirtualQDialogButtonBox* self, int param1) {

	return self->QDialogButtonBox::heightForWidth(static_cast<int>(param1));
}

bool QDialogButtonBox_virtualbase_hasHeightForWidth(const VirtualQDialogButtonBox* self) {

	return self->QDialogButtonBox::hasHeightForWidth();
}

QPaintEngine* QDialogButtonBox_virtualbase_paintEngine(const VirtualQDialogButtonBox* self) {

	return self->QDialogButtonBox::paintEngine();
}

void QDialogButtonBox_virtualbase_mousePressEvent(VirtualQDialogButtonBox* self, QMouseEvent* event) {

	self->QDialogButtonBox::mousePressEvent(event);
}

void QDialogButtonBox_virtualbase_mouseReleaseEvent(VirtualQDialogButtonBox* self, QMouseEvent* event) {

	self->QDialogButtonBox::mouseReleaseEvent(event);
}

void QDialogButtonBox_virtualbase_mouseDoubleClickEvent(VirtualQDialogButtonBox* self, QMouseEvent* event) {

	self->QDialogButtonBox::mouseDoubleClickEvent(event);
}

void QDialogButtonBox_virtualbase_mouseMoveEvent(VirtualQDialogButtonBox* self, QMouseEvent* event) {

	self->QDialogButtonBox::mouseMoveEvent(event);
}

void QDialogButtonBox_virtualbase_wheelEvent(VirtualQDialogButtonBox* self, QWheelEvent* event) {

	self->QDialogButtonBox::wheelEvent(event);
}

void QDialogButtonBox_virtualbase_keyPressEvent(VirtualQDialogButtonBox* self, QKeyEvent* event) {

	self->QDialogButtonBox::keyPressEvent(event);
}

void QDialogButtonBox_virtualbase_keyReleaseEvent(VirtualQDialogButtonBox* self, QKeyEvent* event) {

	self->QDialogButtonBox::keyReleaseEvent(event);
}

void QDialogButtonBox_virtualbase_focusInEvent(VirtualQDialogButtonBox* self, QFocusEvent* event) {

	self->QDialogButtonBox::focusInEvent(event);
}

void QDialogButtonBox_virtualbase_focusOutEvent(VirtualQDialogButtonBox* self, QFocusEvent* event) {

	self->QDialogButtonBox::focusOutEvent(event);
}

void QDialogButtonBox_virtualbase_enterEvent(VirtualQDialogButtonBox* self, QEvent* event) {

	self->QDialogButtonBox::enterEvent(event);
}

void QDialogButtonBox_virtualbase_leaveEvent(VirtualQDialogButtonBox* self, QEvent* event) {

	self->QDialogButtonBox::leaveEvent(event);
}

void QDialogButtonBox_virtualbase_paintEvent(VirtualQDialogButtonBox* self, QPaintEvent* event) {

	self->QDialogButtonBox::paintEvent(event);
}

void QDialogButtonBox_virtualbase_moveEvent(VirtualQDialogButtonBox* self, QMoveEvent* event) {

	self->QDialogButtonBox::moveEvent(event);
}

void QDialogButtonBox_virtualbase_resizeEvent(VirtualQDialogButtonBox* self, QResizeEvent* event) {

	self->QDialogButtonBox::resizeEvent(event);
}

void QDialogButtonBox_virtualbase_closeEvent(VirtualQDialogButtonBox* self, QCloseEvent* event) {

	self->QDialogButtonBox::closeEvent(event);
}

void QDialogButtonBox_virtualbase_contextMenuEvent(VirtualQDialogButtonBox* self, QContextMenuEvent* event) {

	self->QDialogButtonBox::contextMenuEvent(event);
}

void QDialogButtonBox_virtualbase_tabletEvent(VirtualQDialogButtonBox* self, QTabletEvent* event) {

	self->QDialogButtonBox::tabletEvent(event);
}

void QDialogButtonBox_virtualbase_actionEvent(VirtualQDialogButtonBox* self, QActionEvent* event) {

	self->QDialogButtonBox::actionEvent(event);
}

void QDialogButtonBox_virtualbase_dragEnterEvent(VirtualQDialogButtonBox* self, QDragEnterEvent* event) {

	self->QDialogButtonBox::dragEnterEvent(event);
}

void QDialogButtonBox_virtualbase_dragMoveEvent(VirtualQDialogButtonBox* self, QDragMoveEvent* event) {

	self->QDialogButtonBox::dragMoveEvent(event);
}

void QDialogButtonBox_virtualbase_dragLeaveEvent(VirtualQDialogButtonBox* self, QDragLeaveEvent* event) {

	self->QDialogButtonBox::dragLeaveEvent(event);
}

void QDialogButtonBox_virtualbase_dropEvent(VirtualQDialogButtonBox* self, QDropEvent* event) {

	self->QDialogButtonBox::dropEvent(event);
}

void QDialogButtonBox_virtualbase_showEvent(VirtualQDialogButtonBox* self, QShowEvent* event) {

	self->QDialogButtonBox::showEvent(event);
}

void QDialogButtonBox_virtualbase_hideEvent(VirtualQDialogButtonBox* self, QHideEvent* event) {

	self->QDialogButtonBox::hideEvent(event);
}

bool QDialogButtonBox_virtualbase_nativeEvent(VirtualQDialogButtonBox* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QDialogButtonBox::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QDialogButtonBox_virtualbase_metric(const VirtualQDialogButtonBox* self, int param1) {

	return self->QDialogButtonBox::metric(static_cast<VirtualQDialogButtonBox::PaintDeviceMetric>(param1));
}

void QDialogButtonBox_virtualbase_initPainter(const VirtualQDialogButtonBox* self, QPainter* painter) {

	self->QDialogButtonBox::initPainter(painter);
}

QPaintDevice* QDialogButtonBox_virtualbase_redirected(const VirtualQDialogButtonBox* self, QPoint* offset) {

	return self->QDialogButtonBox::redirected(offset);
}

QPainter* QDialogButtonBox_virtualbase_sharedPainter(const VirtualQDialogButtonBox* self) {

	return self->QDialogButtonBox::sharedPainter();
}

void QDialogButtonBox_virtualbase_inputMethodEvent(VirtualQDialogButtonBox* self, QInputMethodEvent* param1) {

	self->QDialogButtonBox::inputMethodEvent(param1);
}

QVariant* QDialogButtonBox_virtualbase_inputMethodQuery(const VirtualQDialogButtonBox* self, int param1) {

	return new QVariant(self->QDialogButtonBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QDialogButtonBox_virtualbase_focusNextPrevChild(VirtualQDialogButtonBox* self, bool next) {

	return self->QDialogButtonBox::focusNextPrevChild(next);
}

bool QDialogButtonBox_virtualbase_eventFilter(VirtualQDialogButtonBox* self, QObject* watched, QEvent* event) {

	return self->QDialogButtonBox::eventFilter(watched, event);
}

void QDialogButtonBox_virtualbase_timerEvent(VirtualQDialogButtonBox* self, QTimerEvent* event) {

	self->QDialogButtonBox::timerEvent(event);
}

void QDialogButtonBox_virtualbase_childEvent(VirtualQDialogButtonBox* self, QChildEvent* event) {

	self->QDialogButtonBox::childEvent(event);
}

void QDialogButtonBox_virtualbase_customEvent(VirtualQDialogButtonBox* self, QEvent* event) {

	self->QDialogButtonBox::customEvent(event);
}

void QDialogButtonBox_virtualbase_connectNotify(VirtualQDialogButtonBox* self, QMetaMethod* signal) {

	self->QDialogButtonBox::connectNotify(*signal);
}

void QDialogButtonBox_virtualbase_disconnectNotify(VirtualQDialogButtonBox* self, QMetaMethod* signal) {

	self->QDialogButtonBox::disconnectNotify(*signal);
}

const QMetaObject* QDialogButtonBox_staticMetaObject() { return &QDialogButtonBox::staticMetaObject; }

const QDialogButtonBox_VTable* QDialogButtonBox_vtbl(const VirtualQDialogButtonBox* self) { return self->vtbl; }
void* QDialogButtonBox_vdata(const VirtualQDialogButtonBox* self) { return self->vdata; }
void QDialogButtonBox_setVdata(VirtualQDialogButtonBox* self, void* vdata) { self->vdata = vdata; }

void QDialogButtonBox_protectedbase_updateMicroFocus(VirtualQDialogButtonBox* self) {
	self->updateMicroFocus();
}

void QDialogButtonBox_protectedbase_create(VirtualQDialogButtonBox* self) {
	self->create();
}

void QDialogButtonBox_protectedbase_destroy(VirtualQDialogButtonBox* self) {
	self->destroy();
}

bool QDialogButtonBox_protectedbase_focusNextChild(VirtualQDialogButtonBox* self) {
	return self->focusNextChild();
}

bool QDialogButtonBox_protectedbase_focusPreviousChild(VirtualQDialogButtonBox* self) {
	return self->focusPreviousChild();
}

QObject* QDialogButtonBox_protectedbase_sender(const VirtualQDialogButtonBox* self) {
	return self->sender();
}

int QDialogButtonBox_protectedbase_senderSignalIndex(const VirtualQDialogButtonBox* self) {
	return self->senderSignalIndex();
}

int QDialogButtonBox_protectedbase_receivers(const VirtualQDialogButtonBox* self, const char* signal) {
	return self->receivers(signal);
}

bool QDialogButtonBox_protectedbase_isSignalConnected(const VirtualQDialogButtonBox* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDialogButtonBox_delete(QDialogButtonBox* self) {
	delete self;
}

