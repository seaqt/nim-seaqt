#include <QAbstractButton>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QCommandLinkButton>
#include <QContextMenuEvent>
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
#include <qcommandlinkbutton.h>
#include "gen_qcommandlinkbutton.h"
class VirtualQCommandLinkButton final : public QCommandLinkButton {
	const QCommandLinkButton_VTable* vtbl;
	void* vdata;
public:
	friend const QCommandLinkButton_VTable* QCommandLinkButton_vtbl(const VirtualQCommandLinkButton* self);
	friend void* QCommandLinkButton_vdata(const VirtualQCommandLinkButton* self);
	friend void QCommandLinkButton_setVdata(VirtualQCommandLinkButton* self, void* vdata);

	VirtualQCommandLinkButton(const QCommandLinkButton_VTable* vtbl, void* vdata, QWidget* parent): QCommandLinkButton(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQCommandLinkButton(const QCommandLinkButton_VTable* vtbl, void* vdata): QCommandLinkButton(), vtbl(vtbl), vdata(vdata) {}
	VirtualQCommandLinkButton(const QCommandLinkButton_VTable* vtbl, void* vdata, const QString& text): QCommandLinkButton(text), vtbl(vtbl), vdata(vdata) {}
	VirtualQCommandLinkButton(const QCommandLinkButton_VTable* vtbl, void* vdata, const QString& text, const QString& description): QCommandLinkButton(text, description), vtbl(vtbl), vdata(vdata) {}
	VirtualQCommandLinkButton(const QCommandLinkButton_VTable* vtbl, void* vdata, const QString& text, QWidget* parent): QCommandLinkButton(text, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQCommandLinkButton(const QCommandLinkButton_VTable* vtbl, void* vdata, const QString& text, const QString& description, QWidget* parent): QCommandLinkButton(text, description, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQCommandLinkButton() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QCommandLinkButton::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QCommandLinkButton_virtualbase_metaObject(const VirtualQCommandLinkButton* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QCommandLinkButton::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QCommandLinkButton_virtualbase_metacast(VirtualQCommandLinkButton* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QCommandLinkButton::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QCommandLinkButton_virtualbase_metacall(VirtualQCommandLinkButton* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QCommandLinkButton::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QCommandLinkButton_virtualbase_sizeHint(const VirtualQCommandLinkButton* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QCommandLinkButton::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QCommandLinkButton_virtualbase_heightForWidth(const VirtualQCommandLinkButton* self, int param1);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QCommandLinkButton::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QCommandLinkButton_virtualbase_minimumSizeHint(const VirtualQCommandLinkButton* self);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QCommandLinkButton::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QCommandLinkButton_virtualbase_event(VirtualQCommandLinkButton* self, QEvent* e);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QCommandLinkButton::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_paintEvent(VirtualQCommandLinkButton* self, QPaintEvent* param1);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QCommandLinkButton::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_keyPressEvent(VirtualQCommandLinkButton* self, QKeyEvent* param1);

	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QCommandLinkButton::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_focusInEvent(VirtualQCommandLinkButton* self, QFocusEvent* param1);

	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QCommandLinkButton::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_focusOutEvent(VirtualQCommandLinkButton* self, QFocusEvent* param1);

	virtual bool hitButton(const QPoint& pos) const override {
		if (vtbl->hitButton == 0) {
			return QCommandLinkButton::hitButton(pos);
		}

		const QPoint& pos_ret = pos;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&pos_ret);

		bool callback_return_value = vtbl->hitButton(this, sigval1);

		return callback_return_value;
	}

	friend bool QCommandLinkButton_virtualbase_hitButton(const VirtualQCommandLinkButton* self, QPoint* pos);

	virtual void checkStateSet() override {
		if (vtbl->checkStateSet == 0) {
			QCommandLinkButton::checkStateSet();
			return;
		}


		vtbl->checkStateSet(this);

	}

	friend void QCommandLinkButton_virtualbase_checkStateSet(VirtualQCommandLinkButton* self);

	virtual void nextCheckState() override {
		if (vtbl->nextCheckState == 0) {
			QCommandLinkButton::nextCheckState();
			return;
		}


		vtbl->nextCheckState(this);

	}

	friend void QCommandLinkButton_virtualbase_nextCheckState(VirtualQCommandLinkButton* self);

	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QCommandLinkButton::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_keyReleaseEvent(VirtualQCommandLinkButton* self, QKeyEvent* e);

	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QCommandLinkButton::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_mousePressEvent(VirtualQCommandLinkButton* self, QMouseEvent* e);

	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QCommandLinkButton::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_mouseReleaseEvent(VirtualQCommandLinkButton* self, QMouseEvent* e);

	virtual void mouseMoveEvent(QMouseEvent* e) override {
		if (vtbl->mouseMoveEvent == 0) {
			QCommandLinkButton::mouseMoveEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_mouseMoveEvent(VirtualQCommandLinkButton* self, QMouseEvent* e);

	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QCommandLinkButton::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_changeEvent(VirtualQCommandLinkButton* self, QEvent* e);

	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QCommandLinkButton::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_timerEvent(VirtualQCommandLinkButton* self, QTimerEvent* e);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QCommandLinkButton::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QCommandLinkButton_virtualbase_devType(const VirtualQCommandLinkButton* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QCommandLinkButton::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_setVisible(VirtualQCommandLinkButton* self, bool visible);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QCommandLinkButton::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QCommandLinkButton_virtualbase_hasHeightForWidth(const VirtualQCommandLinkButton* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QCommandLinkButton::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QCommandLinkButton_virtualbase_paintEngine(const VirtualQCommandLinkButton* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QCommandLinkButton::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_mouseDoubleClickEvent(VirtualQCommandLinkButton* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QCommandLinkButton::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_wheelEvent(VirtualQCommandLinkButton* self, QWheelEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QCommandLinkButton::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_enterEvent(VirtualQCommandLinkButton* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QCommandLinkButton::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_leaveEvent(VirtualQCommandLinkButton* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QCommandLinkButton::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_moveEvent(VirtualQCommandLinkButton* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QCommandLinkButton::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_resizeEvent(VirtualQCommandLinkButton* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QCommandLinkButton::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_closeEvent(VirtualQCommandLinkButton* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QCommandLinkButton::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_contextMenuEvent(VirtualQCommandLinkButton* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QCommandLinkButton::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_tabletEvent(VirtualQCommandLinkButton* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QCommandLinkButton::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_actionEvent(VirtualQCommandLinkButton* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QCommandLinkButton::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_dragEnterEvent(VirtualQCommandLinkButton* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QCommandLinkButton::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_dragMoveEvent(VirtualQCommandLinkButton* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QCommandLinkButton::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_dragLeaveEvent(VirtualQCommandLinkButton* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QCommandLinkButton::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_dropEvent(VirtualQCommandLinkButton* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QCommandLinkButton::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_showEvent(VirtualQCommandLinkButton* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QCommandLinkButton::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_hideEvent(VirtualQCommandLinkButton* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QCommandLinkButton::nativeEvent(eventType, message, result);
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

	friend bool QCommandLinkButton_virtualbase_nativeEvent(VirtualQCommandLinkButton* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QCommandLinkButton::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QCommandLinkButton_virtualbase_metric(const VirtualQCommandLinkButton* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QCommandLinkButton::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_initPainter(const VirtualQCommandLinkButton* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QCommandLinkButton::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QCommandLinkButton_virtualbase_redirected(const VirtualQCommandLinkButton* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QCommandLinkButton::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QCommandLinkButton_virtualbase_sharedPainter(const VirtualQCommandLinkButton* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QCommandLinkButton::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_inputMethodEvent(VirtualQCommandLinkButton* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QCommandLinkButton::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QCommandLinkButton_virtualbase_inputMethodQuery(const VirtualQCommandLinkButton* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QCommandLinkButton::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QCommandLinkButton_virtualbase_focusNextPrevChild(VirtualQCommandLinkButton* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QCommandLinkButton::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QCommandLinkButton_virtualbase_eventFilter(VirtualQCommandLinkButton* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QCommandLinkButton::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_childEvent(VirtualQCommandLinkButton* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QCommandLinkButton::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_customEvent(VirtualQCommandLinkButton* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QCommandLinkButton::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_connectNotify(VirtualQCommandLinkButton* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QCommandLinkButton::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_disconnectNotify(VirtualQCommandLinkButton* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QCommandLinkButton_protectedbase_initStyleOption(const VirtualQCommandLinkButton* self, QStyleOptionButton* option);
	friend void QCommandLinkButton_protectedbase_updateMicroFocus(VirtualQCommandLinkButton* self);
	friend void QCommandLinkButton_protectedbase_create(VirtualQCommandLinkButton* self);
	friend void QCommandLinkButton_protectedbase_destroy(VirtualQCommandLinkButton* self);
	friend bool QCommandLinkButton_protectedbase_focusNextChild(VirtualQCommandLinkButton* self);
	friend bool QCommandLinkButton_protectedbase_focusPreviousChild(VirtualQCommandLinkButton* self);
	friend QObject* QCommandLinkButton_protectedbase_sender(const VirtualQCommandLinkButton* self);
	friend int QCommandLinkButton_protectedbase_senderSignalIndex(const VirtualQCommandLinkButton* self);
	friend int QCommandLinkButton_protectedbase_receivers(const VirtualQCommandLinkButton* self, const char* signal);
	friend bool QCommandLinkButton_protectedbase_isSignalConnected(const VirtualQCommandLinkButton* self, QMetaMethod* signal);
};

VirtualQCommandLinkButton* QCommandLinkButton_new(const QCommandLinkButton_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQCommandLinkButton(vtbl, vdata, parent);
}

VirtualQCommandLinkButton* QCommandLinkButton_new2(const QCommandLinkButton_VTable* vtbl, void* vdata) {
	return new VirtualQCommandLinkButton(vtbl, vdata);
}

VirtualQCommandLinkButton* QCommandLinkButton_new3(const QCommandLinkButton_VTable* vtbl, void* vdata, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQCommandLinkButton(vtbl, vdata, text_QString);
}

VirtualQCommandLinkButton* QCommandLinkButton_new4(const QCommandLinkButton_VTable* vtbl, void* vdata, struct miqt_string text, struct miqt_string description) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString description_QString = QString::fromUtf8(description.data, description.len);
	return new VirtualQCommandLinkButton(vtbl, vdata, text_QString, description_QString);
}

VirtualQCommandLinkButton* QCommandLinkButton_new5(const QCommandLinkButton_VTable* vtbl, void* vdata, struct miqt_string text, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQCommandLinkButton(vtbl, vdata, text_QString, parent);
}

VirtualQCommandLinkButton* QCommandLinkButton_new6(const QCommandLinkButton_VTable* vtbl, void* vdata, struct miqt_string text, struct miqt_string description, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString description_QString = QString::fromUtf8(description.data, description.len);
	return new VirtualQCommandLinkButton(vtbl, vdata, text_QString, description_QString, parent);
}

void QCommandLinkButton_virtbase(QCommandLinkButton* src, QPushButton** outptr_QPushButton) {
	*outptr_QPushButton = static_cast<QPushButton*>(src);
}

QMetaObject* QCommandLinkButton_metaObject(const QCommandLinkButton* self) {
	return (QMetaObject*) self->metaObject();
}

void* QCommandLinkButton_metacast(QCommandLinkButton* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QCommandLinkButton_metacall(QCommandLinkButton* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QCommandLinkButton_tr(const char* s) {
	QString _ret = QCommandLinkButton::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCommandLinkButton_trUtf8(const char* s) {
	QString _ret = QCommandLinkButton::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCommandLinkButton_description(const QCommandLinkButton* self) {
	QString _ret = self->description();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QCommandLinkButton_setDescription(QCommandLinkButton* self, struct miqt_string description) {
	QString description_QString = QString::fromUtf8(description.data, description.len);
	self->setDescription(description_QString);
}

struct miqt_string QCommandLinkButton_tr2(const char* s, const char* c) {
	QString _ret = QCommandLinkButton::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCommandLinkButton_tr3(const char* s, const char* c, int n) {
	QString _ret = QCommandLinkButton::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCommandLinkButton_trUtf82(const char* s, const char* c) {
	QString _ret = QCommandLinkButton::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCommandLinkButton_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QCommandLinkButton::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QCommandLinkButton_virtualbase_metaObject(const VirtualQCommandLinkButton* self) {

	return (QMetaObject*) self->QCommandLinkButton::metaObject();
}

void* QCommandLinkButton_virtualbase_metacast(VirtualQCommandLinkButton* self, const char* param1) {

	return self->QCommandLinkButton::qt_metacast(param1);
}

int QCommandLinkButton_virtualbase_metacall(VirtualQCommandLinkButton* self, int param1, int param2, void** param3) {

	return self->QCommandLinkButton::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QCommandLinkButton_virtualbase_sizeHint(const VirtualQCommandLinkButton* self) {

	return new QSize(self->QCommandLinkButton::sizeHint());
}

int QCommandLinkButton_virtualbase_heightForWidth(const VirtualQCommandLinkButton* self, int param1) {

	return self->QCommandLinkButton::heightForWidth(static_cast<int>(param1));
}

QSize* QCommandLinkButton_virtualbase_minimumSizeHint(const VirtualQCommandLinkButton* self) {

	return new QSize(self->QCommandLinkButton::minimumSizeHint());
}

bool QCommandLinkButton_virtualbase_event(VirtualQCommandLinkButton* self, QEvent* e) {

	return self->QCommandLinkButton::event(e);
}

void QCommandLinkButton_virtualbase_paintEvent(VirtualQCommandLinkButton* self, QPaintEvent* param1) {

	self->QCommandLinkButton::paintEvent(param1);
}

void QCommandLinkButton_virtualbase_keyPressEvent(VirtualQCommandLinkButton* self, QKeyEvent* param1) {

	self->QCommandLinkButton::keyPressEvent(param1);
}

void QCommandLinkButton_virtualbase_focusInEvent(VirtualQCommandLinkButton* self, QFocusEvent* param1) {

	self->QCommandLinkButton::focusInEvent(param1);
}

void QCommandLinkButton_virtualbase_focusOutEvent(VirtualQCommandLinkButton* self, QFocusEvent* param1) {

	self->QCommandLinkButton::focusOutEvent(param1);
}

bool QCommandLinkButton_virtualbase_hitButton(const VirtualQCommandLinkButton* self, QPoint* pos) {

	return self->QCommandLinkButton::hitButton(*pos);
}

void QCommandLinkButton_virtualbase_checkStateSet(VirtualQCommandLinkButton* self) {

	self->QCommandLinkButton::checkStateSet();
}

void QCommandLinkButton_virtualbase_nextCheckState(VirtualQCommandLinkButton* self) {

	self->QCommandLinkButton::nextCheckState();
}

void QCommandLinkButton_virtualbase_keyReleaseEvent(VirtualQCommandLinkButton* self, QKeyEvent* e) {

	self->QCommandLinkButton::keyReleaseEvent(e);
}

void QCommandLinkButton_virtualbase_mousePressEvent(VirtualQCommandLinkButton* self, QMouseEvent* e) {

	self->QCommandLinkButton::mousePressEvent(e);
}

void QCommandLinkButton_virtualbase_mouseReleaseEvent(VirtualQCommandLinkButton* self, QMouseEvent* e) {

	self->QCommandLinkButton::mouseReleaseEvent(e);
}

void QCommandLinkButton_virtualbase_mouseMoveEvent(VirtualQCommandLinkButton* self, QMouseEvent* e) {

	self->QCommandLinkButton::mouseMoveEvent(e);
}

void QCommandLinkButton_virtualbase_changeEvent(VirtualQCommandLinkButton* self, QEvent* e) {

	self->QCommandLinkButton::changeEvent(e);
}

void QCommandLinkButton_virtualbase_timerEvent(VirtualQCommandLinkButton* self, QTimerEvent* e) {

	self->QCommandLinkButton::timerEvent(e);
}

int QCommandLinkButton_virtualbase_devType(const VirtualQCommandLinkButton* self) {

	return self->QCommandLinkButton::devType();
}

void QCommandLinkButton_virtualbase_setVisible(VirtualQCommandLinkButton* self, bool visible) {

	self->QCommandLinkButton::setVisible(visible);
}

bool QCommandLinkButton_virtualbase_hasHeightForWidth(const VirtualQCommandLinkButton* self) {

	return self->QCommandLinkButton::hasHeightForWidth();
}

QPaintEngine* QCommandLinkButton_virtualbase_paintEngine(const VirtualQCommandLinkButton* self) {

	return self->QCommandLinkButton::paintEngine();
}

void QCommandLinkButton_virtualbase_mouseDoubleClickEvent(VirtualQCommandLinkButton* self, QMouseEvent* event) {

	self->QCommandLinkButton::mouseDoubleClickEvent(event);
}

void QCommandLinkButton_virtualbase_wheelEvent(VirtualQCommandLinkButton* self, QWheelEvent* event) {

	self->QCommandLinkButton::wheelEvent(event);
}

void QCommandLinkButton_virtualbase_enterEvent(VirtualQCommandLinkButton* self, QEvent* event) {

	self->QCommandLinkButton::enterEvent(event);
}

void QCommandLinkButton_virtualbase_leaveEvent(VirtualQCommandLinkButton* self, QEvent* event) {

	self->QCommandLinkButton::leaveEvent(event);
}

void QCommandLinkButton_virtualbase_moveEvent(VirtualQCommandLinkButton* self, QMoveEvent* event) {

	self->QCommandLinkButton::moveEvent(event);
}

void QCommandLinkButton_virtualbase_resizeEvent(VirtualQCommandLinkButton* self, QResizeEvent* event) {

	self->QCommandLinkButton::resizeEvent(event);
}

void QCommandLinkButton_virtualbase_closeEvent(VirtualQCommandLinkButton* self, QCloseEvent* event) {

	self->QCommandLinkButton::closeEvent(event);
}

void QCommandLinkButton_virtualbase_contextMenuEvent(VirtualQCommandLinkButton* self, QContextMenuEvent* event) {

	self->QCommandLinkButton::contextMenuEvent(event);
}

void QCommandLinkButton_virtualbase_tabletEvent(VirtualQCommandLinkButton* self, QTabletEvent* event) {

	self->QCommandLinkButton::tabletEvent(event);
}

void QCommandLinkButton_virtualbase_actionEvent(VirtualQCommandLinkButton* self, QActionEvent* event) {

	self->QCommandLinkButton::actionEvent(event);
}

void QCommandLinkButton_virtualbase_dragEnterEvent(VirtualQCommandLinkButton* self, QDragEnterEvent* event) {

	self->QCommandLinkButton::dragEnterEvent(event);
}

void QCommandLinkButton_virtualbase_dragMoveEvent(VirtualQCommandLinkButton* self, QDragMoveEvent* event) {

	self->QCommandLinkButton::dragMoveEvent(event);
}

void QCommandLinkButton_virtualbase_dragLeaveEvent(VirtualQCommandLinkButton* self, QDragLeaveEvent* event) {

	self->QCommandLinkButton::dragLeaveEvent(event);
}

void QCommandLinkButton_virtualbase_dropEvent(VirtualQCommandLinkButton* self, QDropEvent* event) {

	self->QCommandLinkButton::dropEvent(event);
}

void QCommandLinkButton_virtualbase_showEvent(VirtualQCommandLinkButton* self, QShowEvent* event) {

	self->QCommandLinkButton::showEvent(event);
}

void QCommandLinkButton_virtualbase_hideEvent(VirtualQCommandLinkButton* self, QHideEvent* event) {

	self->QCommandLinkButton::hideEvent(event);
}

bool QCommandLinkButton_virtualbase_nativeEvent(VirtualQCommandLinkButton* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QCommandLinkButton::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QCommandLinkButton_virtualbase_metric(const VirtualQCommandLinkButton* self, int param1) {

	return self->QCommandLinkButton::metric(static_cast<VirtualQCommandLinkButton::PaintDeviceMetric>(param1));
}

void QCommandLinkButton_virtualbase_initPainter(const VirtualQCommandLinkButton* self, QPainter* painter) {

	self->QCommandLinkButton::initPainter(painter);
}

QPaintDevice* QCommandLinkButton_virtualbase_redirected(const VirtualQCommandLinkButton* self, QPoint* offset) {

	return self->QCommandLinkButton::redirected(offset);
}

QPainter* QCommandLinkButton_virtualbase_sharedPainter(const VirtualQCommandLinkButton* self) {

	return self->QCommandLinkButton::sharedPainter();
}

void QCommandLinkButton_virtualbase_inputMethodEvent(VirtualQCommandLinkButton* self, QInputMethodEvent* param1) {

	self->QCommandLinkButton::inputMethodEvent(param1);
}

QVariant* QCommandLinkButton_virtualbase_inputMethodQuery(const VirtualQCommandLinkButton* self, int param1) {

	return new QVariant(self->QCommandLinkButton::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QCommandLinkButton_virtualbase_focusNextPrevChild(VirtualQCommandLinkButton* self, bool next) {

	return self->QCommandLinkButton::focusNextPrevChild(next);
}

bool QCommandLinkButton_virtualbase_eventFilter(VirtualQCommandLinkButton* self, QObject* watched, QEvent* event) {

	return self->QCommandLinkButton::eventFilter(watched, event);
}

void QCommandLinkButton_virtualbase_childEvent(VirtualQCommandLinkButton* self, QChildEvent* event) {

	self->QCommandLinkButton::childEvent(event);
}

void QCommandLinkButton_virtualbase_customEvent(VirtualQCommandLinkButton* self, QEvent* event) {

	self->QCommandLinkButton::customEvent(event);
}

void QCommandLinkButton_virtualbase_connectNotify(VirtualQCommandLinkButton* self, QMetaMethod* signal) {

	self->QCommandLinkButton::connectNotify(*signal);
}

void QCommandLinkButton_virtualbase_disconnectNotify(VirtualQCommandLinkButton* self, QMetaMethod* signal) {

	self->QCommandLinkButton::disconnectNotify(*signal);
}

const QMetaObject* QCommandLinkButton_staticMetaObject() { return &QCommandLinkButton::staticMetaObject; }

const QCommandLinkButton_VTable* QCommandLinkButton_vtbl(const VirtualQCommandLinkButton* self) { return self->vtbl; }
void* QCommandLinkButton_vdata(const VirtualQCommandLinkButton* self) { return self->vdata; }
void QCommandLinkButton_setVdata(VirtualQCommandLinkButton* self, void* vdata) { self->vdata = vdata; }

void QCommandLinkButton_protectedbase_initStyleOption(const VirtualQCommandLinkButton* self, QStyleOptionButton* option) {
	self->initStyleOption(option);
}

void QCommandLinkButton_protectedbase_updateMicroFocus(VirtualQCommandLinkButton* self) {
	self->updateMicroFocus();
}

void QCommandLinkButton_protectedbase_create(VirtualQCommandLinkButton* self) {
	self->create();
}

void QCommandLinkButton_protectedbase_destroy(VirtualQCommandLinkButton* self) {
	self->destroy();
}

bool QCommandLinkButton_protectedbase_focusNextChild(VirtualQCommandLinkButton* self) {
	return self->focusNextChild();
}

bool QCommandLinkButton_protectedbase_focusPreviousChild(VirtualQCommandLinkButton* self) {
	return self->focusPreviousChild();
}

QObject* QCommandLinkButton_protectedbase_sender(const VirtualQCommandLinkButton* self) {
	return self->sender();
}

int QCommandLinkButton_protectedbase_senderSignalIndex(const VirtualQCommandLinkButton* self) {
	return self->senderSignalIndex();
}

int QCommandLinkButton_protectedbase_receivers(const VirtualQCommandLinkButton* self, const char* signal) {
	return self->receivers(signal);
}

bool QCommandLinkButton_protectedbase_isSignalConnected(const VirtualQCommandLinkButton* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QCommandLinkButton_delete(QCommandLinkButton* self) {
	delete self;
}

