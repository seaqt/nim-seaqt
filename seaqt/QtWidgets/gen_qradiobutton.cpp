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
#include <QRadioButton>
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
#include <qradiobutton.h>
#include "gen_qradiobutton.h"
class VirtualQRadioButton final : public QRadioButton {
	const QRadioButton_VTable* vtbl;
	void* vdata;
public:
	friend const QRadioButton_VTable* QRadioButton_vtbl(const VirtualQRadioButton* self);
	friend void* QRadioButton_vdata(const VirtualQRadioButton* self);
	friend void QRadioButton_setVdata(VirtualQRadioButton* self, void* vdata);

	VirtualQRadioButton(const QRadioButton_VTable* vtbl, void* vdata, QWidget* parent): QRadioButton(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQRadioButton(const QRadioButton_VTable* vtbl, void* vdata): QRadioButton(), vtbl(vtbl), vdata(vdata) {}
	VirtualQRadioButton(const QRadioButton_VTable* vtbl, void* vdata, const QString& text): QRadioButton(text), vtbl(vtbl), vdata(vdata) {}
	VirtualQRadioButton(const QRadioButton_VTable* vtbl, void* vdata, const QString& text, QWidget* parent): QRadioButton(text, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQRadioButton() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRadioButton::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QRadioButton_virtualbase_metaObject(const VirtualQRadioButton* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRadioButton::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QRadioButton_virtualbase_metacast(VirtualQRadioButton* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRadioButton::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QRadioButton_virtualbase_metacall(VirtualQRadioButton* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QRadioButton::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QRadioButton_virtualbase_sizeHint(const VirtualQRadioButton* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QRadioButton::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QRadioButton_virtualbase_minimumSizeHint(const VirtualQRadioButton* self);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QRadioButton::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QRadioButton_virtualbase_event(VirtualQRadioButton* self, QEvent* e);

	virtual bool hitButton(const QPoint& param1) const override {
		if (vtbl->hitButton == 0) {
			return QRadioButton::hitButton(param1);
		}

		const QPoint& param1_ret = param1;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&param1_ret);

		bool callback_return_value = vtbl->hitButton(this, sigval1);

		return callback_return_value;
	}

	friend bool QRadioButton_virtualbase_hitButton(const VirtualQRadioButton* self, QPoint* param1);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QRadioButton::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_paintEvent(VirtualQRadioButton* self, QPaintEvent* param1);

	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QRadioButton::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_mouseMoveEvent(VirtualQRadioButton* self, QMouseEvent* param1);

	virtual void initStyleOption(QStyleOptionButton* button) const override {
		if (vtbl->initStyleOption == 0) {
			QRadioButton::initStyleOption(button);
			return;
		}

		QStyleOptionButton* sigval1 = button;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QRadioButton_virtualbase_initStyleOption(const VirtualQRadioButton* self, QStyleOptionButton* button);

	virtual void checkStateSet() override {
		if (vtbl->checkStateSet == 0) {
			QRadioButton::checkStateSet();
			return;
		}


		vtbl->checkStateSet(this);

	}

	friend void QRadioButton_virtualbase_checkStateSet(VirtualQRadioButton* self);

	virtual void nextCheckState() override {
		if (vtbl->nextCheckState == 0) {
			QRadioButton::nextCheckState();
			return;
		}


		vtbl->nextCheckState(this);

	}

	friend void QRadioButton_virtualbase_nextCheckState(VirtualQRadioButton* self);

	virtual void keyPressEvent(QKeyEvent* e) override {
		if (vtbl->keyPressEvent == 0) {
			QRadioButton::keyPressEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_keyPressEvent(VirtualQRadioButton* self, QKeyEvent* e);

	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QRadioButton::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_keyReleaseEvent(VirtualQRadioButton* self, QKeyEvent* e);

	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QRadioButton::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_mousePressEvent(VirtualQRadioButton* self, QMouseEvent* e);

	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QRadioButton::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_mouseReleaseEvent(VirtualQRadioButton* self, QMouseEvent* e);

	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QRadioButton::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_focusInEvent(VirtualQRadioButton* self, QFocusEvent* e);

	virtual void focusOutEvent(QFocusEvent* e) override {
		if (vtbl->focusOutEvent == 0) {
			QRadioButton::focusOutEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_focusOutEvent(VirtualQRadioButton* self, QFocusEvent* e);

	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QRadioButton::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_changeEvent(VirtualQRadioButton* self, QEvent* e);

	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QRadioButton::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_timerEvent(VirtualQRadioButton* self, QTimerEvent* e);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QRadioButton::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QRadioButton_virtualbase_devType(const VirtualQRadioButton* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QRadioButton::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QRadioButton_virtualbase_setVisible(VirtualQRadioButton* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QRadioButton::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QRadioButton_virtualbase_heightForWidth(const VirtualQRadioButton* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QRadioButton::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QRadioButton_virtualbase_hasHeightForWidth(const VirtualQRadioButton* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QRadioButton::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QRadioButton_virtualbase_paintEngine(const VirtualQRadioButton* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QRadioButton::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_mouseDoubleClickEvent(VirtualQRadioButton* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QRadioButton::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_wheelEvent(VirtualQRadioButton* self, QWheelEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QRadioButton::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_enterEvent(VirtualQRadioButton* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QRadioButton::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_leaveEvent(VirtualQRadioButton* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QRadioButton::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_moveEvent(VirtualQRadioButton* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QRadioButton::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_resizeEvent(VirtualQRadioButton* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QRadioButton::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_closeEvent(VirtualQRadioButton* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QRadioButton::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_contextMenuEvent(VirtualQRadioButton* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QRadioButton::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_tabletEvent(VirtualQRadioButton* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QRadioButton::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_actionEvent(VirtualQRadioButton* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QRadioButton::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_dragEnterEvent(VirtualQRadioButton* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QRadioButton::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_dragMoveEvent(VirtualQRadioButton* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QRadioButton::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_dragLeaveEvent(VirtualQRadioButton* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QRadioButton::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_dropEvent(VirtualQRadioButton* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QRadioButton::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_showEvent(VirtualQRadioButton* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QRadioButton::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_hideEvent(VirtualQRadioButton* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QRadioButton::nativeEvent(eventType, message, result);
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

	friend bool QRadioButton_virtualbase_nativeEvent(VirtualQRadioButton* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QRadioButton::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QRadioButton_virtualbase_metric(const VirtualQRadioButton* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QRadioButton::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QRadioButton_virtualbase_initPainter(const VirtualQRadioButton* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QRadioButton::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QRadioButton_virtualbase_redirected(const VirtualQRadioButton* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QRadioButton::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QRadioButton_virtualbase_sharedPainter(const VirtualQRadioButton* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QRadioButton::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_inputMethodEvent(VirtualQRadioButton* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QRadioButton::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QRadioButton_virtualbase_inputMethodQuery(const VirtualQRadioButton* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QRadioButton::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QRadioButton_virtualbase_focusNextPrevChild(VirtualQRadioButton* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRadioButton::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QRadioButton_virtualbase_eventFilter(VirtualQRadioButton* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRadioButton::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_childEvent(VirtualQRadioButton* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRadioButton::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QRadioButton_virtualbase_customEvent(VirtualQRadioButton* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRadioButton::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QRadioButton_virtualbase_connectNotify(VirtualQRadioButton* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRadioButton::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QRadioButton_virtualbase_disconnectNotify(VirtualQRadioButton* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QRadioButton_protectedbase_updateMicroFocus(VirtualQRadioButton* self);
	friend void QRadioButton_protectedbase_create(VirtualQRadioButton* self);
	friend void QRadioButton_protectedbase_destroy(VirtualQRadioButton* self);
	friend bool QRadioButton_protectedbase_focusNextChild(VirtualQRadioButton* self);
	friend bool QRadioButton_protectedbase_focusPreviousChild(VirtualQRadioButton* self);
	friend QObject* QRadioButton_protectedbase_sender(const VirtualQRadioButton* self);
	friend int QRadioButton_protectedbase_senderSignalIndex(const VirtualQRadioButton* self);
	friend int QRadioButton_protectedbase_receivers(const VirtualQRadioButton* self, const char* signal);
	friend bool QRadioButton_protectedbase_isSignalConnected(const VirtualQRadioButton* self, QMetaMethod* signal);
};

VirtualQRadioButton* QRadioButton_new(const QRadioButton_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQRadioButton(vtbl, vdata, parent);
}

VirtualQRadioButton* QRadioButton_new2(const QRadioButton_VTable* vtbl, void* vdata) {
	return new VirtualQRadioButton(vtbl, vdata);
}

VirtualQRadioButton* QRadioButton_new3(const QRadioButton_VTable* vtbl, void* vdata, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQRadioButton(vtbl, vdata, text_QString);
}

VirtualQRadioButton* QRadioButton_new4(const QRadioButton_VTable* vtbl, void* vdata, struct miqt_string text, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQRadioButton(vtbl, vdata, text_QString, parent);
}

void QRadioButton_virtbase(QRadioButton* src, QAbstractButton** outptr_QAbstractButton) {
	*outptr_QAbstractButton = static_cast<QAbstractButton*>(src);
}

QMetaObject* QRadioButton_metaObject(const QRadioButton* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRadioButton_metacast(QRadioButton* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRadioButton_metacall(QRadioButton* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QRadioButton_tr(const char* s) {
	QString _ret = QRadioButton::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QRadioButton_sizeHint(const QRadioButton* self) {
	return new QSize(self->sizeHint());
}

QSize* QRadioButton_minimumSizeHint(const QRadioButton* self) {
	return new QSize(self->minimumSizeHint());
}

struct miqt_string QRadioButton_tr2(const char* s, const char* c) {
	QString _ret = QRadioButton::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRadioButton_tr3(const char* s, const char* c, int n) {
	QString _ret = QRadioButton::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QRadioButton_virtualbase_metaObject(const VirtualQRadioButton* self) {

	return (QMetaObject*) self->QRadioButton::metaObject();
}

void* QRadioButton_virtualbase_metacast(VirtualQRadioButton* self, const char* param1) {

	return self->QRadioButton::qt_metacast(param1);
}

int QRadioButton_virtualbase_metacall(VirtualQRadioButton* self, int param1, int param2, void** param3) {

	return self->QRadioButton::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QRadioButton_virtualbase_sizeHint(const VirtualQRadioButton* self) {

	return new QSize(self->QRadioButton::sizeHint());
}

QSize* QRadioButton_virtualbase_minimumSizeHint(const VirtualQRadioButton* self) {

	return new QSize(self->QRadioButton::minimumSizeHint());
}

bool QRadioButton_virtualbase_event(VirtualQRadioButton* self, QEvent* e) {

	return self->QRadioButton::event(e);
}

bool QRadioButton_virtualbase_hitButton(const VirtualQRadioButton* self, QPoint* param1) {

	return self->QRadioButton::hitButton(*param1);
}

void QRadioButton_virtualbase_paintEvent(VirtualQRadioButton* self, QPaintEvent* param1) {

	self->QRadioButton::paintEvent(param1);
}

void QRadioButton_virtualbase_mouseMoveEvent(VirtualQRadioButton* self, QMouseEvent* param1) {

	self->QRadioButton::mouseMoveEvent(param1);
}

void QRadioButton_virtualbase_initStyleOption(const VirtualQRadioButton* self, QStyleOptionButton* button) {

	self->QRadioButton::initStyleOption(button);
}

void QRadioButton_virtualbase_checkStateSet(VirtualQRadioButton* self) {

	self->QRadioButton::checkStateSet();
}

void QRadioButton_virtualbase_nextCheckState(VirtualQRadioButton* self) {

	self->QRadioButton::nextCheckState();
}

void QRadioButton_virtualbase_keyPressEvent(VirtualQRadioButton* self, QKeyEvent* e) {

	self->QRadioButton::keyPressEvent(e);
}

void QRadioButton_virtualbase_keyReleaseEvent(VirtualQRadioButton* self, QKeyEvent* e) {

	self->QRadioButton::keyReleaseEvent(e);
}

void QRadioButton_virtualbase_mousePressEvent(VirtualQRadioButton* self, QMouseEvent* e) {

	self->QRadioButton::mousePressEvent(e);
}

void QRadioButton_virtualbase_mouseReleaseEvent(VirtualQRadioButton* self, QMouseEvent* e) {

	self->QRadioButton::mouseReleaseEvent(e);
}

void QRadioButton_virtualbase_focusInEvent(VirtualQRadioButton* self, QFocusEvent* e) {

	self->QRadioButton::focusInEvent(e);
}

void QRadioButton_virtualbase_focusOutEvent(VirtualQRadioButton* self, QFocusEvent* e) {

	self->QRadioButton::focusOutEvent(e);
}

void QRadioButton_virtualbase_changeEvent(VirtualQRadioButton* self, QEvent* e) {

	self->QRadioButton::changeEvent(e);
}

void QRadioButton_virtualbase_timerEvent(VirtualQRadioButton* self, QTimerEvent* e) {

	self->QRadioButton::timerEvent(e);
}

int QRadioButton_virtualbase_devType(const VirtualQRadioButton* self) {

	return self->QRadioButton::devType();
}

void QRadioButton_virtualbase_setVisible(VirtualQRadioButton* self, bool visible) {

	self->QRadioButton::setVisible(visible);
}

int QRadioButton_virtualbase_heightForWidth(const VirtualQRadioButton* self, int param1) {

	return self->QRadioButton::heightForWidth(static_cast<int>(param1));
}

bool QRadioButton_virtualbase_hasHeightForWidth(const VirtualQRadioButton* self) {

	return self->QRadioButton::hasHeightForWidth();
}

QPaintEngine* QRadioButton_virtualbase_paintEngine(const VirtualQRadioButton* self) {

	return self->QRadioButton::paintEngine();
}

void QRadioButton_virtualbase_mouseDoubleClickEvent(VirtualQRadioButton* self, QMouseEvent* event) {

	self->QRadioButton::mouseDoubleClickEvent(event);
}

void QRadioButton_virtualbase_wheelEvent(VirtualQRadioButton* self, QWheelEvent* event) {

	self->QRadioButton::wheelEvent(event);
}

void QRadioButton_virtualbase_enterEvent(VirtualQRadioButton* self, QEnterEvent* event) {

	self->QRadioButton::enterEvent(event);
}

void QRadioButton_virtualbase_leaveEvent(VirtualQRadioButton* self, QEvent* event) {

	self->QRadioButton::leaveEvent(event);
}

void QRadioButton_virtualbase_moveEvent(VirtualQRadioButton* self, QMoveEvent* event) {

	self->QRadioButton::moveEvent(event);
}

void QRadioButton_virtualbase_resizeEvent(VirtualQRadioButton* self, QResizeEvent* event) {

	self->QRadioButton::resizeEvent(event);
}

void QRadioButton_virtualbase_closeEvent(VirtualQRadioButton* self, QCloseEvent* event) {

	self->QRadioButton::closeEvent(event);
}

void QRadioButton_virtualbase_contextMenuEvent(VirtualQRadioButton* self, QContextMenuEvent* event) {

	self->QRadioButton::contextMenuEvent(event);
}

void QRadioButton_virtualbase_tabletEvent(VirtualQRadioButton* self, QTabletEvent* event) {

	self->QRadioButton::tabletEvent(event);
}

void QRadioButton_virtualbase_actionEvent(VirtualQRadioButton* self, QActionEvent* event) {

	self->QRadioButton::actionEvent(event);
}

void QRadioButton_virtualbase_dragEnterEvent(VirtualQRadioButton* self, QDragEnterEvent* event) {

	self->QRadioButton::dragEnterEvent(event);
}

void QRadioButton_virtualbase_dragMoveEvent(VirtualQRadioButton* self, QDragMoveEvent* event) {

	self->QRadioButton::dragMoveEvent(event);
}

void QRadioButton_virtualbase_dragLeaveEvent(VirtualQRadioButton* self, QDragLeaveEvent* event) {

	self->QRadioButton::dragLeaveEvent(event);
}

void QRadioButton_virtualbase_dropEvent(VirtualQRadioButton* self, QDropEvent* event) {

	self->QRadioButton::dropEvent(event);
}

void QRadioButton_virtualbase_showEvent(VirtualQRadioButton* self, QShowEvent* event) {

	self->QRadioButton::showEvent(event);
}

void QRadioButton_virtualbase_hideEvent(VirtualQRadioButton* self, QHideEvent* event) {

	self->QRadioButton::hideEvent(event);
}

bool QRadioButton_virtualbase_nativeEvent(VirtualQRadioButton* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QRadioButton::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QRadioButton_virtualbase_metric(const VirtualQRadioButton* self, int param1) {

	return self->QRadioButton::metric(static_cast<VirtualQRadioButton::PaintDeviceMetric>(param1));
}

void QRadioButton_virtualbase_initPainter(const VirtualQRadioButton* self, QPainter* painter) {

	self->QRadioButton::initPainter(painter);
}

QPaintDevice* QRadioButton_virtualbase_redirected(const VirtualQRadioButton* self, QPoint* offset) {

	return self->QRadioButton::redirected(offset);
}

QPainter* QRadioButton_virtualbase_sharedPainter(const VirtualQRadioButton* self) {

	return self->QRadioButton::sharedPainter();
}

void QRadioButton_virtualbase_inputMethodEvent(VirtualQRadioButton* self, QInputMethodEvent* param1) {

	self->QRadioButton::inputMethodEvent(param1);
}

QVariant* QRadioButton_virtualbase_inputMethodQuery(const VirtualQRadioButton* self, int param1) {

	return new QVariant(self->QRadioButton::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QRadioButton_virtualbase_focusNextPrevChild(VirtualQRadioButton* self, bool next) {

	return self->QRadioButton::focusNextPrevChild(next);
}

bool QRadioButton_virtualbase_eventFilter(VirtualQRadioButton* self, QObject* watched, QEvent* event) {

	return self->QRadioButton::eventFilter(watched, event);
}

void QRadioButton_virtualbase_childEvent(VirtualQRadioButton* self, QChildEvent* event) {

	self->QRadioButton::childEvent(event);
}

void QRadioButton_virtualbase_customEvent(VirtualQRadioButton* self, QEvent* event) {

	self->QRadioButton::customEvent(event);
}

void QRadioButton_virtualbase_connectNotify(VirtualQRadioButton* self, QMetaMethod* signal) {

	self->QRadioButton::connectNotify(*signal);
}

void QRadioButton_virtualbase_disconnectNotify(VirtualQRadioButton* self, QMetaMethod* signal) {

	self->QRadioButton::disconnectNotify(*signal);
}

const QMetaObject* QRadioButton_staticMetaObject() { return &QRadioButton::staticMetaObject; }

const QRadioButton_VTable* QRadioButton_vtbl(const VirtualQRadioButton* self) { return self->vtbl; }
void* QRadioButton_vdata(const VirtualQRadioButton* self) { return self->vdata; }
void QRadioButton_setVdata(VirtualQRadioButton* self, void* vdata) { self->vdata = vdata; }

void QRadioButton_protectedbase_updateMicroFocus(VirtualQRadioButton* self) {
	self->updateMicroFocus();
}

void QRadioButton_protectedbase_create(VirtualQRadioButton* self) {
	self->create();
}

void QRadioButton_protectedbase_destroy(VirtualQRadioButton* self) {
	self->destroy();
}

bool QRadioButton_protectedbase_focusNextChild(VirtualQRadioButton* self) {
	return self->focusNextChild();
}

bool QRadioButton_protectedbase_focusPreviousChild(VirtualQRadioButton* self) {
	return self->focusPreviousChild();
}

QObject* QRadioButton_protectedbase_sender(const VirtualQRadioButton* self) {
	return self->sender();
}

int QRadioButton_protectedbase_senderSignalIndex(const VirtualQRadioButton* self) {
	return self->senderSignalIndex();
}

int QRadioButton_protectedbase_receivers(const VirtualQRadioButton* self, const char* signal) {
	return self->receivers(signal);
}

bool QRadioButton_protectedbase_isSignalConnected(const VirtualQRadioButton* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QRadioButton_delete(QRadioButton* self) {
	delete self;
}

