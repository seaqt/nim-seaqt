#include <QAbstractButton>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QIcon>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMenu>
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
#include <QStyleOptionButton>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qpushbutton.h>
#include "gen_qpushbutton.h"
class VirtualQPushButton final : public QPushButton {
	const QPushButton_VTable* vtbl;
	void* vdata;
public:
	friend const QPushButton_VTable* QPushButton_vtbl(const VirtualQPushButton* self);
	friend void* QPushButton_vdata(const VirtualQPushButton* self);
	friend void QPushButton_setVdata(VirtualQPushButton* self, void* vdata);

	VirtualQPushButton(const QPushButton_VTable* vtbl, void* vdata, QWidget* parent): QPushButton(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQPushButton(const QPushButton_VTable* vtbl, void* vdata): QPushButton(), vtbl(vtbl), vdata(vdata) {}
	VirtualQPushButton(const QPushButton_VTable* vtbl, void* vdata, const QString& text): QPushButton(text), vtbl(vtbl), vdata(vdata) {}
	VirtualQPushButton(const QPushButton_VTable* vtbl, void* vdata, const QIcon& icon, const QString& text): QPushButton(icon, text), vtbl(vtbl), vdata(vdata) {}
	VirtualQPushButton(const QPushButton_VTable* vtbl, void* vdata, const QString& text, QWidget* parent): QPushButton(text, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQPushButton(const QPushButton_VTable* vtbl, void* vdata, const QIcon& icon, const QString& text, QWidget* parent): QPushButton(icon, text, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPushButton() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPushButton::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QPushButton_virtualbase_metaObject(const VirtualQPushButton* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPushButton::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QPushButton_virtualbase_metacast(VirtualQPushButton* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPushButton::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPushButton_virtualbase_metacall(VirtualQPushButton* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QPushButton::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QPushButton_virtualbase_sizeHint(const VirtualQPushButton* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QPushButton::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QPushButton_virtualbase_minimumSizeHint(const VirtualQPushButton* self);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QPushButton::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QPushButton_virtualbase_event(VirtualQPushButton* self, QEvent* e);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QPushButton::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_paintEvent(VirtualQPushButton* self, QPaintEvent* param1);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QPushButton::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_keyPressEvent(VirtualQPushButton* self, QKeyEvent* param1);

	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QPushButton::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_focusInEvent(VirtualQPushButton* self, QFocusEvent* param1);

	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QPushButton::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_focusOutEvent(VirtualQPushButton* self, QFocusEvent* param1);

	virtual bool hitButton(const QPoint& pos) const override {
		if (vtbl->hitButton == 0) {
			return QPushButton::hitButton(pos);
		}

		const QPoint& pos_ret = pos;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&pos_ret);

		bool callback_return_value = vtbl->hitButton(this, sigval1);

		return callback_return_value;
	}

	friend bool QPushButton_virtualbase_hitButton(const VirtualQPushButton* self, QPoint* pos);

	virtual void checkStateSet() override {
		if (vtbl->checkStateSet == 0) {
			QPushButton::checkStateSet();
			return;
		}


		vtbl->checkStateSet(this);

	}

	friend void QPushButton_virtualbase_checkStateSet(VirtualQPushButton* self);

	virtual void nextCheckState() override {
		if (vtbl->nextCheckState == 0) {
			QPushButton::nextCheckState();
			return;
		}


		vtbl->nextCheckState(this);

	}

	friend void QPushButton_virtualbase_nextCheckState(VirtualQPushButton* self);

	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QPushButton::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_keyReleaseEvent(VirtualQPushButton* self, QKeyEvent* e);

	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QPushButton::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_mousePressEvent(VirtualQPushButton* self, QMouseEvent* e);

	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QPushButton::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_mouseReleaseEvent(VirtualQPushButton* self, QMouseEvent* e);

	virtual void mouseMoveEvent(QMouseEvent* e) override {
		if (vtbl->mouseMoveEvent == 0) {
			QPushButton::mouseMoveEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_mouseMoveEvent(VirtualQPushButton* self, QMouseEvent* e);

	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QPushButton::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_changeEvent(VirtualQPushButton* self, QEvent* e);

	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QPushButton::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_timerEvent(VirtualQPushButton* self, QTimerEvent* e);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPushButton::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPushButton_virtualbase_devType(const VirtualQPushButton* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QPushButton::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QPushButton_virtualbase_setVisible(VirtualQPushButton* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QPushButton::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPushButton_virtualbase_heightForWidth(const VirtualQPushButton* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QPushButton::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QPushButton_virtualbase_hasHeightForWidth(const VirtualQPushButton* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPushButton::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QPushButton_virtualbase_paintEngine(const VirtualQPushButton* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QPushButton::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_mouseDoubleClickEvent(VirtualQPushButton* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QPushButton::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_wheelEvent(VirtualQPushButton* self, QWheelEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QPushButton::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_enterEvent(VirtualQPushButton* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QPushButton::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_leaveEvent(VirtualQPushButton* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QPushButton::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_moveEvent(VirtualQPushButton* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QPushButton::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_resizeEvent(VirtualQPushButton* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QPushButton::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_closeEvent(VirtualQPushButton* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QPushButton::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_contextMenuEvent(VirtualQPushButton* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QPushButton::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_tabletEvent(VirtualQPushButton* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QPushButton::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_actionEvent(VirtualQPushButton* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QPushButton::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_dragEnterEvent(VirtualQPushButton* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QPushButton::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_dragMoveEvent(VirtualQPushButton* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QPushButton::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_dragLeaveEvent(VirtualQPushButton* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QPushButton::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_dropEvent(VirtualQPushButton* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QPushButton::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_showEvent(VirtualQPushButton* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QPushButton::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_hideEvent(VirtualQPushButton* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QPushButton::nativeEvent(eventType, message, result);
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

	friend bool QPushButton_virtualbase_nativeEvent(VirtualQPushButton* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QPushButton::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPushButton_virtualbase_metric(const VirtualQPushButton* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPushButton::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QPushButton_virtualbase_initPainter(const VirtualQPushButton* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPushButton::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QPushButton_virtualbase_redirected(const VirtualQPushButton* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPushButton::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QPushButton_virtualbase_sharedPainter(const VirtualQPushButton* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QPushButton::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_inputMethodEvent(VirtualQPushButton* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QPushButton::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QPushButton_virtualbase_inputMethodQuery(const VirtualQPushButton* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QPushButton::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QPushButton_virtualbase_focusNextPrevChild(VirtualQPushButton* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPushButton::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPushButton_virtualbase_eventFilter(VirtualQPushButton* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPushButton::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_childEvent(VirtualQPushButton* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPushButton::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QPushButton_virtualbase_customEvent(VirtualQPushButton* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPushButton::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QPushButton_virtualbase_connectNotify(VirtualQPushButton* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPushButton::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QPushButton_virtualbase_disconnectNotify(VirtualQPushButton* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QPushButton_protectedbase_initStyleOption(const VirtualQPushButton* self, QStyleOptionButton* option);
	friend void QPushButton_protectedbase_updateMicroFocus(VirtualQPushButton* self);
	friend void QPushButton_protectedbase_create(VirtualQPushButton* self);
	friend void QPushButton_protectedbase_destroy(VirtualQPushButton* self);
	friend bool QPushButton_protectedbase_focusNextChild(VirtualQPushButton* self);
	friend bool QPushButton_protectedbase_focusPreviousChild(VirtualQPushButton* self);
	friend QObject* QPushButton_protectedbase_sender(const VirtualQPushButton* self);
	friend int QPushButton_protectedbase_senderSignalIndex(const VirtualQPushButton* self);
	friend int QPushButton_protectedbase_receivers(const VirtualQPushButton* self, const char* signal);
	friend bool QPushButton_protectedbase_isSignalConnected(const VirtualQPushButton* self, QMetaMethod* signal);
};

VirtualQPushButton* QPushButton_new(const QPushButton_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQPushButton(vtbl, vdata, parent);
}

VirtualQPushButton* QPushButton_new2(const QPushButton_VTable* vtbl, void* vdata) {
	return new VirtualQPushButton(vtbl, vdata);
}

VirtualQPushButton* QPushButton_new3(const QPushButton_VTable* vtbl, void* vdata, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQPushButton(vtbl, vdata, text_QString);
}

VirtualQPushButton* QPushButton_new4(const QPushButton_VTable* vtbl, void* vdata, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQPushButton(vtbl, vdata, *icon, text_QString);
}

VirtualQPushButton* QPushButton_new5(const QPushButton_VTable* vtbl, void* vdata, struct miqt_string text, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQPushButton(vtbl, vdata, text_QString, parent);
}

VirtualQPushButton* QPushButton_new6(const QPushButton_VTable* vtbl, void* vdata, QIcon* icon, struct miqt_string text, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQPushButton(vtbl, vdata, *icon, text_QString, parent);
}

void QPushButton_virtbase(QPushButton* src, QAbstractButton** outptr_QAbstractButton) {
	*outptr_QAbstractButton = static_cast<QAbstractButton*>(src);
}

QMetaObject* QPushButton_metaObject(const QPushButton* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPushButton_metacast(QPushButton* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPushButton_metacall(QPushButton* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPushButton_tr(const char* s) {
	QString _ret = QPushButton::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPushButton_trUtf8(const char* s) {
	QString _ret = QPushButton::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QPushButton_sizeHint(const QPushButton* self) {
	return new QSize(self->sizeHint());
}

QSize* QPushButton_minimumSizeHint(const QPushButton* self) {
	return new QSize(self->minimumSizeHint());
}

bool QPushButton_autoDefault(const QPushButton* self) {
	return self->autoDefault();
}

void QPushButton_setAutoDefault(QPushButton* self, bool autoDefault) {
	self->setAutoDefault(autoDefault);
}

bool QPushButton_isDefault(const QPushButton* self) {
	return self->isDefault();
}

void QPushButton_setDefault(QPushButton* self, bool defaultVal) {
	self->setDefault(defaultVal);
}

void QPushButton_setMenu(QPushButton* self, QMenu* menu) {
	self->setMenu(menu);
}

QMenu* QPushButton_menu(const QPushButton* self) {
	return self->menu();
}

void QPushButton_setFlat(QPushButton* self, bool flat) {
	self->setFlat(flat);
}

bool QPushButton_isFlat(const QPushButton* self) {
	return self->isFlat();
}

void QPushButton_showMenu(QPushButton* self) {
	self->showMenu();
}

struct miqt_string QPushButton_tr2(const char* s, const char* c) {
	QString _ret = QPushButton::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPushButton_tr3(const char* s, const char* c, int n) {
	QString _ret = QPushButton::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPushButton_trUtf82(const char* s, const char* c) {
	QString _ret = QPushButton::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPushButton_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QPushButton::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPushButton_virtualbase_metaObject(const VirtualQPushButton* self) {

	return (QMetaObject*) self->QPushButton::metaObject();
}

void* QPushButton_virtualbase_metacast(VirtualQPushButton* self, const char* param1) {

	return self->QPushButton::qt_metacast(param1);
}

int QPushButton_virtualbase_metacall(VirtualQPushButton* self, int param1, int param2, void** param3) {

	return self->QPushButton::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QPushButton_virtualbase_sizeHint(const VirtualQPushButton* self) {

	return new QSize(self->QPushButton::sizeHint());
}

QSize* QPushButton_virtualbase_minimumSizeHint(const VirtualQPushButton* self) {

	return new QSize(self->QPushButton::minimumSizeHint());
}

bool QPushButton_virtualbase_event(VirtualQPushButton* self, QEvent* e) {

	return self->QPushButton::event(e);
}

void QPushButton_virtualbase_paintEvent(VirtualQPushButton* self, QPaintEvent* param1) {

	self->QPushButton::paintEvent(param1);
}

void QPushButton_virtualbase_keyPressEvent(VirtualQPushButton* self, QKeyEvent* param1) {

	self->QPushButton::keyPressEvent(param1);
}

void QPushButton_virtualbase_focusInEvent(VirtualQPushButton* self, QFocusEvent* param1) {

	self->QPushButton::focusInEvent(param1);
}

void QPushButton_virtualbase_focusOutEvent(VirtualQPushButton* self, QFocusEvent* param1) {

	self->QPushButton::focusOutEvent(param1);
}

bool QPushButton_virtualbase_hitButton(const VirtualQPushButton* self, QPoint* pos) {

	return self->QPushButton::hitButton(*pos);
}

void QPushButton_virtualbase_checkStateSet(VirtualQPushButton* self) {

	self->QPushButton::checkStateSet();
}

void QPushButton_virtualbase_nextCheckState(VirtualQPushButton* self) {

	self->QPushButton::nextCheckState();
}

void QPushButton_virtualbase_keyReleaseEvent(VirtualQPushButton* self, QKeyEvent* e) {

	self->QPushButton::keyReleaseEvent(e);
}

void QPushButton_virtualbase_mousePressEvent(VirtualQPushButton* self, QMouseEvent* e) {

	self->QPushButton::mousePressEvent(e);
}

void QPushButton_virtualbase_mouseReleaseEvent(VirtualQPushButton* self, QMouseEvent* e) {

	self->QPushButton::mouseReleaseEvent(e);
}

void QPushButton_virtualbase_mouseMoveEvent(VirtualQPushButton* self, QMouseEvent* e) {

	self->QPushButton::mouseMoveEvent(e);
}

void QPushButton_virtualbase_changeEvent(VirtualQPushButton* self, QEvent* e) {

	self->QPushButton::changeEvent(e);
}

void QPushButton_virtualbase_timerEvent(VirtualQPushButton* self, QTimerEvent* e) {

	self->QPushButton::timerEvent(e);
}

int QPushButton_virtualbase_devType(const VirtualQPushButton* self) {

	return self->QPushButton::devType();
}

void QPushButton_virtualbase_setVisible(VirtualQPushButton* self, bool visible) {

	self->QPushButton::setVisible(visible);
}

int QPushButton_virtualbase_heightForWidth(const VirtualQPushButton* self, int param1) {

	return self->QPushButton::heightForWidth(static_cast<int>(param1));
}

bool QPushButton_virtualbase_hasHeightForWidth(const VirtualQPushButton* self) {

	return self->QPushButton::hasHeightForWidth();
}

QPaintEngine* QPushButton_virtualbase_paintEngine(const VirtualQPushButton* self) {

	return self->QPushButton::paintEngine();
}

void QPushButton_virtualbase_mouseDoubleClickEvent(VirtualQPushButton* self, QMouseEvent* event) {

	self->QPushButton::mouseDoubleClickEvent(event);
}

void QPushButton_virtualbase_wheelEvent(VirtualQPushButton* self, QWheelEvent* event) {

	self->QPushButton::wheelEvent(event);
}

void QPushButton_virtualbase_enterEvent(VirtualQPushButton* self, QEvent* event) {

	self->QPushButton::enterEvent(event);
}

void QPushButton_virtualbase_leaveEvent(VirtualQPushButton* self, QEvent* event) {

	self->QPushButton::leaveEvent(event);
}

void QPushButton_virtualbase_moveEvent(VirtualQPushButton* self, QMoveEvent* event) {

	self->QPushButton::moveEvent(event);
}

void QPushButton_virtualbase_resizeEvent(VirtualQPushButton* self, QResizeEvent* event) {

	self->QPushButton::resizeEvent(event);
}

void QPushButton_virtualbase_closeEvent(VirtualQPushButton* self, QCloseEvent* event) {

	self->QPushButton::closeEvent(event);
}

void QPushButton_virtualbase_contextMenuEvent(VirtualQPushButton* self, QContextMenuEvent* event) {

	self->QPushButton::contextMenuEvent(event);
}

void QPushButton_virtualbase_tabletEvent(VirtualQPushButton* self, QTabletEvent* event) {

	self->QPushButton::tabletEvent(event);
}

void QPushButton_virtualbase_actionEvent(VirtualQPushButton* self, QActionEvent* event) {

	self->QPushButton::actionEvent(event);
}

void QPushButton_virtualbase_dragEnterEvent(VirtualQPushButton* self, QDragEnterEvent* event) {

	self->QPushButton::dragEnterEvent(event);
}

void QPushButton_virtualbase_dragMoveEvent(VirtualQPushButton* self, QDragMoveEvent* event) {

	self->QPushButton::dragMoveEvent(event);
}

void QPushButton_virtualbase_dragLeaveEvent(VirtualQPushButton* self, QDragLeaveEvent* event) {

	self->QPushButton::dragLeaveEvent(event);
}

void QPushButton_virtualbase_dropEvent(VirtualQPushButton* self, QDropEvent* event) {

	self->QPushButton::dropEvent(event);
}

void QPushButton_virtualbase_showEvent(VirtualQPushButton* self, QShowEvent* event) {

	self->QPushButton::showEvent(event);
}

void QPushButton_virtualbase_hideEvent(VirtualQPushButton* self, QHideEvent* event) {

	self->QPushButton::hideEvent(event);
}

bool QPushButton_virtualbase_nativeEvent(VirtualQPushButton* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QPushButton::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QPushButton_virtualbase_metric(const VirtualQPushButton* self, int param1) {

	return self->QPushButton::metric(static_cast<VirtualQPushButton::PaintDeviceMetric>(param1));
}

void QPushButton_virtualbase_initPainter(const VirtualQPushButton* self, QPainter* painter) {

	self->QPushButton::initPainter(painter);
}

QPaintDevice* QPushButton_virtualbase_redirected(const VirtualQPushButton* self, QPoint* offset) {

	return self->QPushButton::redirected(offset);
}

QPainter* QPushButton_virtualbase_sharedPainter(const VirtualQPushButton* self) {

	return self->QPushButton::sharedPainter();
}

void QPushButton_virtualbase_inputMethodEvent(VirtualQPushButton* self, QInputMethodEvent* param1) {

	self->QPushButton::inputMethodEvent(param1);
}

QVariant* QPushButton_virtualbase_inputMethodQuery(const VirtualQPushButton* self, int param1) {

	return new QVariant(self->QPushButton::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QPushButton_virtualbase_focusNextPrevChild(VirtualQPushButton* self, bool next) {

	return self->QPushButton::focusNextPrevChild(next);
}

bool QPushButton_virtualbase_eventFilter(VirtualQPushButton* self, QObject* watched, QEvent* event) {

	return self->QPushButton::eventFilter(watched, event);
}

void QPushButton_virtualbase_childEvent(VirtualQPushButton* self, QChildEvent* event) {

	self->QPushButton::childEvent(event);
}

void QPushButton_virtualbase_customEvent(VirtualQPushButton* self, QEvent* event) {

	self->QPushButton::customEvent(event);
}

void QPushButton_virtualbase_connectNotify(VirtualQPushButton* self, QMetaMethod* signal) {

	self->QPushButton::connectNotify(*signal);
}

void QPushButton_virtualbase_disconnectNotify(VirtualQPushButton* self, QMetaMethod* signal) {

	self->QPushButton::disconnectNotify(*signal);
}

const QMetaObject* QPushButton_staticMetaObject() { return &QPushButton::staticMetaObject; }

const QPushButton_VTable* QPushButton_vtbl(const VirtualQPushButton* self) { return self->vtbl; }
void* QPushButton_vdata(const VirtualQPushButton* self) { return self->vdata; }
void QPushButton_setVdata(VirtualQPushButton* self, void* vdata) { self->vdata = vdata; }

void QPushButton_protectedbase_initStyleOption(const VirtualQPushButton* self, QStyleOptionButton* option) {
	self->initStyleOption(option);
}

void QPushButton_protectedbase_updateMicroFocus(VirtualQPushButton* self) {
	self->updateMicroFocus();
}

void QPushButton_protectedbase_create(VirtualQPushButton* self) {
	self->create();
}

void QPushButton_protectedbase_destroy(VirtualQPushButton* self) {
	self->destroy();
}

bool QPushButton_protectedbase_focusNextChild(VirtualQPushButton* self) {
	return self->focusNextChild();
}

bool QPushButton_protectedbase_focusPreviousChild(VirtualQPushButton* self) {
	return self->focusPreviousChild();
}

QObject* QPushButton_protectedbase_sender(const VirtualQPushButton* self) {
	return self->sender();
}

int QPushButton_protectedbase_senderSignalIndex(const VirtualQPushButton* self) {
	return self->senderSignalIndex();
}

int QPushButton_protectedbase_receivers(const VirtualQPushButton* self, const char* signal) {
	return self->receivers(signal);
}

bool QPushButton_protectedbase_isSignalConnected(const VirtualQPushButton* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPushButton_delete(QPushButton* self) {
	delete self;
}

