#include <QAbstractButton>
#include <QActionEvent>
#include <QButtonGroup>
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
#include <QIcon>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QKeySequence>
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
#include <qabstractbutton.h>
#include "gen_qabstractbutton.h"
class VirtualQAbstractButton final : public QAbstractButton {
	const QAbstractButton_VTable* vtbl;
	void* vdata;
public:
	friend const QAbstractButton_VTable* QAbstractButton_vtbl(const VirtualQAbstractButton* self);
	friend void* QAbstractButton_vdata(const VirtualQAbstractButton* self);
	friend void QAbstractButton_setVdata(VirtualQAbstractButton* self, void* vdata);

	VirtualQAbstractButton(const QAbstractButton_VTable* vtbl, void* vdata, QWidget* parent): QAbstractButton(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQAbstractButton(const QAbstractButton_VTable* vtbl, void* vdata): QAbstractButton(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAbstractButton() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractButton::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractButton_virtualbase_metaObject(const VirtualQAbstractButton* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractButton::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractButton_virtualbase_metacast(VirtualQAbstractButton* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractButton::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractButton_virtualbase_metacall(VirtualQAbstractButton* self, int param1, int param2, void** param3);

	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(this, sigval1);

	}

	virtual bool hitButton(const QPoint& pos) const override {
		if (vtbl->hitButton == 0) {
			return QAbstractButton::hitButton(pos);
		}

		const QPoint& pos_ret = pos;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&pos_ret);

		bool callback_return_value = vtbl->hitButton(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractButton_virtualbase_hitButton(const VirtualQAbstractButton* self, QPoint* pos);

	virtual void checkStateSet() override {
		if (vtbl->checkStateSet == 0) {
			QAbstractButton::checkStateSet();
			return;
		}


		vtbl->checkStateSet(this);

	}

	friend void QAbstractButton_virtualbase_checkStateSet(VirtualQAbstractButton* self);

	virtual void nextCheckState() override {
		if (vtbl->nextCheckState == 0) {
			QAbstractButton::nextCheckState();
			return;
		}


		vtbl->nextCheckState(this);

	}

	friend void QAbstractButton_virtualbase_nextCheckState(VirtualQAbstractButton* self);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QAbstractButton::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractButton_virtualbase_event(VirtualQAbstractButton* self, QEvent* e);

	virtual void keyPressEvent(QKeyEvent* e) override {
		if (vtbl->keyPressEvent == 0) {
			QAbstractButton::keyPressEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_keyPressEvent(VirtualQAbstractButton* self, QKeyEvent* e);

	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QAbstractButton::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_keyReleaseEvent(VirtualQAbstractButton* self, QKeyEvent* e);

	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QAbstractButton::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_mousePressEvent(VirtualQAbstractButton* self, QMouseEvent* e);

	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QAbstractButton::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_mouseReleaseEvent(VirtualQAbstractButton* self, QMouseEvent* e);

	virtual void mouseMoveEvent(QMouseEvent* e) override {
		if (vtbl->mouseMoveEvent == 0) {
			QAbstractButton::mouseMoveEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_mouseMoveEvent(VirtualQAbstractButton* self, QMouseEvent* e);

	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QAbstractButton::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_focusInEvent(VirtualQAbstractButton* self, QFocusEvent* e);

	virtual void focusOutEvent(QFocusEvent* e) override {
		if (vtbl->focusOutEvent == 0) {
			QAbstractButton::focusOutEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_focusOutEvent(VirtualQAbstractButton* self, QFocusEvent* e);

	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QAbstractButton::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_changeEvent(VirtualQAbstractButton* self, QEvent* e);

	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QAbstractButton::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_timerEvent(VirtualQAbstractButton* self, QTimerEvent* e);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QAbstractButton::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractButton_virtualbase_devType(const VirtualQAbstractButton* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QAbstractButton::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_setVisible(VirtualQAbstractButton* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QAbstractButton::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractButton_virtualbase_sizeHint(const VirtualQAbstractButton* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QAbstractButton::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractButton_virtualbase_minimumSizeHint(const VirtualQAbstractButton* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QAbstractButton::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractButton_virtualbase_heightForWidth(const VirtualQAbstractButton* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QAbstractButton::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QAbstractButton_virtualbase_hasHeightForWidth(const VirtualQAbstractButton* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QAbstractButton::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QAbstractButton_virtualbase_paintEngine(const VirtualQAbstractButton* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QAbstractButton::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_mouseDoubleClickEvent(VirtualQAbstractButton* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QAbstractButton::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_wheelEvent(VirtualQAbstractButton* self, QWheelEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QAbstractButton::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_enterEvent(VirtualQAbstractButton* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QAbstractButton::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_leaveEvent(VirtualQAbstractButton* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QAbstractButton::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_moveEvent(VirtualQAbstractButton* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QAbstractButton::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_resizeEvent(VirtualQAbstractButton* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QAbstractButton::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_closeEvent(VirtualQAbstractButton* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QAbstractButton::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_contextMenuEvent(VirtualQAbstractButton* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QAbstractButton::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_tabletEvent(VirtualQAbstractButton* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QAbstractButton::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_actionEvent(VirtualQAbstractButton* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QAbstractButton::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_dragEnterEvent(VirtualQAbstractButton* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QAbstractButton::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_dragMoveEvent(VirtualQAbstractButton* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QAbstractButton::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_dragLeaveEvent(VirtualQAbstractButton* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QAbstractButton::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_dropEvent(VirtualQAbstractButton* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QAbstractButton::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_showEvent(VirtualQAbstractButton* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QAbstractButton::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_hideEvent(VirtualQAbstractButton* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QAbstractButton::nativeEvent(eventType, message, result);
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

	friend bool QAbstractButton_virtualbase_nativeEvent(VirtualQAbstractButton* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QAbstractButton::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractButton_virtualbase_metric(const VirtualQAbstractButton* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QAbstractButton::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_initPainter(const VirtualQAbstractButton* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QAbstractButton::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QAbstractButton_virtualbase_redirected(const VirtualQAbstractButton* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QAbstractButton::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QAbstractButton_virtualbase_sharedPainter(const VirtualQAbstractButton* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QAbstractButton::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_inputMethodEvent(VirtualQAbstractButton* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QAbstractButton::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QAbstractButton_virtualbase_inputMethodQuery(const VirtualQAbstractButton* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QAbstractButton::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractButton_virtualbase_focusNextPrevChild(VirtualQAbstractButton* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractButton::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractButton_virtualbase_eventFilter(VirtualQAbstractButton* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractButton::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_childEvent(VirtualQAbstractButton* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractButton::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_customEvent(VirtualQAbstractButton* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractButton::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_connectNotify(VirtualQAbstractButton* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractButton::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAbstractButton_virtualbase_disconnectNotify(VirtualQAbstractButton* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QAbstractButton_protectedbase_updateMicroFocus(VirtualQAbstractButton* self);
	friend void QAbstractButton_protectedbase_create(VirtualQAbstractButton* self);
	friend void QAbstractButton_protectedbase_destroy(VirtualQAbstractButton* self);
	friend bool QAbstractButton_protectedbase_focusNextChild(VirtualQAbstractButton* self);
	friend bool QAbstractButton_protectedbase_focusPreviousChild(VirtualQAbstractButton* self);
	friend QObject* QAbstractButton_protectedbase_sender(const VirtualQAbstractButton* self);
	friend int QAbstractButton_protectedbase_senderSignalIndex(const VirtualQAbstractButton* self);
	friend int QAbstractButton_protectedbase_receivers(const VirtualQAbstractButton* self, const char* signal);
	friend bool QAbstractButton_protectedbase_isSignalConnected(const VirtualQAbstractButton* self, QMetaMethod* signal);
};

VirtualQAbstractButton* QAbstractButton_new(const QAbstractButton_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQAbstractButton(vtbl, vdata, parent);
}

VirtualQAbstractButton* QAbstractButton_new2(const QAbstractButton_VTable* vtbl, void* vdata) {
	return new VirtualQAbstractButton(vtbl, vdata);
}

void QAbstractButton_virtbase(QAbstractButton* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QAbstractButton_metaObject(const QAbstractButton* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractButton_metacast(QAbstractButton* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractButton_metacall(QAbstractButton* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractButton_tr(const char* s) {
	QString _ret = QAbstractButton::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractButton_setText(QAbstractButton* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

struct miqt_string QAbstractButton_text(const QAbstractButton* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractButton_setIcon(QAbstractButton* self, QIcon* icon) {
	self->setIcon(*icon);
}

QIcon* QAbstractButton_icon(const QAbstractButton* self) {
	return new QIcon(self->icon());
}

QSize* QAbstractButton_iconSize(const QAbstractButton* self) {
	return new QSize(self->iconSize());
}

void QAbstractButton_setShortcut(QAbstractButton* self, QKeySequence* key) {
	self->setShortcut(*key);
}

QKeySequence* QAbstractButton_shortcut(const QAbstractButton* self) {
	return new QKeySequence(self->shortcut());
}

void QAbstractButton_setCheckable(QAbstractButton* self, bool checkable) {
	self->setCheckable(checkable);
}

bool QAbstractButton_isCheckable(const QAbstractButton* self) {
	return self->isCheckable();
}

bool QAbstractButton_isChecked(const QAbstractButton* self) {
	return self->isChecked();
}

void QAbstractButton_setDown(QAbstractButton* self, bool down) {
	self->setDown(down);
}

bool QAbstractButton_isDown(const QAbstractButton* self) {
	return self->isDown();
}

void QAbstractButton_setAutoRepeat(QAbstractButton* self, bool autoRepeat) {
	self->setAutoRepeat(autoRepeat);
}

bool QAbstractButton_autoRepeat(const QAbstractButton* self) {
	return self->autoRepeat();
}

void QAbstractButton_setAutoRepeatDelay(QAbstractButton* self, int autoRepeatDelay) {
	self->setAutoRepeatDelay(static_cast<int>(autoRepeatDelay));
}

int QAbstractButton_autoRepeatDelay(const QAbstractButton* self) {
	return self->autoRepeatDelay();
}

void QAbstractButton_setAutoRepeatInterval(QAbstractButton* self, int autoRepeatInterval) {
	self->setAutoRepeatInterval(static_cast<int>(autoRepeatInterval));
}

int QAbstractButton_autoRepeatInterval(const QAbstractButton* self) {
	return self->autoRepeatInterval();
}

void QAbstractButton_setAutoExclusive(QAbstractButton* self, bool autoExclusive) {
	self->setAutoExclusive(autoExclusive);
}

bool QAbstractButton_autoExclusive(const QAbstractButton* self) {
	return self->autoExclusive();
}

QButtonGroup* QAbstractButton_group(const QAbstractButton* self) {
	return self->group();
}

void QAbstractButton_setIconSize(QAbstractButton* self, QSize* size) {
	self->setIconSize(*size);
}

void QAbstractButton_animateClick(QAbstractButton* self) {
	self->animateClick();
}

void QAbstractButton_click(QAbstractButton* self) {
	self->click();
}

void QAbstractButton_toggle(QAbstractButton* self) {
	self->toggle();
}

void QAbstractButton_setChecked(QAbstractButton* self, bool checked) {
	self->setChecked(checked);
}

void QAbstractButton_pressed(QAbstractButton* self) {
	self->pressed();
}

void QAbstractButton_connect_pressed(VirtualQAbstractButton* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAbstractButton::connect(self, static_cast<void (QAbstractButton::*)()>(&QAbstractButton::pressed), self, local_caller{slot, callback, release});
}

void QAbstractButton_released(QAbstractButton* self) {
	self->released();
}

void QAbstractButton_connect_released(VirtualQAbstractButton* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAbstractButton::connect(self, static_cast<void (QAbstractButton::*)()>(&QAbstractButton::released), self, local_caller{slot, callback, release});
}

void QAbstractButton_clicked(QAbstractButton* self) {
	self->clicked();
}

void QAbstractButton_connect_clicked(VirtualQAbstractButton* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAbstractButton::connect(self, static_cast<void (QAbstractButton::*)(bool)>(&QAbstractButton::clicked), self, local_caller{slot, callback, release});
}

void QAbstractButton_toggled(QAbstractButton* self, bool checked) {
	self->toggled(checked);
}

void QAbstractButton_connect_toggled(VirtualQAbstractButton* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool checked) {
			bool sigval1 = checked;
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractButton::connect(self, static_cast<void (QAbstractButton::*)(bool)>(&QAbstractButton::toggled), self, local_caller{slot, callback, release});
}

struct miqt_string QAbstractButton_tr2(const char* s, const char* c) {
	QString _ret = QAbstractButton::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractButton_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractButton::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractButton_clicked1(QAbstractButton* self, bool checked) {
	self->clicked(checked);
}

void QAbstractButton_connect_clicked1(VirtualQAbstractButton* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool checked) {
			bool sigval1 = checked;
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractButton::connect(self, static_cast<void (QAbstractButton::*)(bool)>(&QAbstractButton::clicked), self, local_caller{slot, callback, release});
}

QMetaObject* QAbstractButton_virtualbase_metaObject(const VirtualQAbstractButton* self) {

	return (QMetaObject*) self->QAbstractButton::metaObject();
}

void* QAbstractButton_virtualbase_metacast(VirtualQAbstractButton* self, const char* param1) {

	return self->QAbstractButton::qt_metacast(param1);
}

int QAbstractButton_virtualbase_metacall(VirtualQAbstractButton* self, int param1, int param2, void** param3) {

	return self->QAbstractButton::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAbstractButton_virtualbase_hitButton(const VirtualQAbstractButton* self, QPoint* pos) {

	return self->QAbstractButton::hitButton(*pos);
}

void QAbstractButton_virtualbase_checkStateSet(VirtualQAbstractButton* self) {

	self->QAbstractButton::checkStateSet();
}

void QAbstractButton_virtualbase_nextCheckState(VirtualQAbstractButton* self) {

	self->QAbstractButton::nextCheckState();
}

bool QAbstractButton_virtualbase_event(VirtualQAbstractButton* self, QEvent* e) {

	return self->QAbstractButton::event(e);
}

void QAbstractButton_virtualbase_keyPressEvent(VirtualQAbstractButton* self, QKeyEvent* e) {

	self->QAbstractButton::keyPressEvent(e);
}

void QAbstractButton_virtualbase_keyReleaseEvent(VirtualQAbstractButton* self, QKeyEvent* e) {

	self->QAbstractButton::keyReleaseEvent(e);
}

void QAbstractButton_virtualbase_mousePressEvent(VirtualQAbstractButton* self, QMouseEvent* e) {

	self->QAbstractButton::mousePressEvent(e);
}

void QAbstractButton_virtualbase_mouseReleaseEvent(VirtualQAbstractButton* self, QMouseEvent* e) {

	self->QAbstractButton::mouseReleaseEvent(e);
}

void QAbstractButton_virtualbase_mouseMoveEvent(VirtualQAbstractButton* self, QMouseEvent* e) {

	self->QAbstractButton::mouseMoveEvent(e);
}

void QAbstractButton_virtualbase_focusInEvent(VirtualQAbstractButton* self, QFocusEvent* e) {

	self->QAbstractButton::focusInEvent(e);
}

void QAbstractButton_virtualbase_focusOutEvent(VirtualQAbstractButton* self, QFocusEvent* e) {

	self->QAbstractButton::focusOutEvent(e);
}

void QAbstractButton_virtualbase_changeEvent(VirtualQAbstractButton* self, QEvent* e) {

	self->QAbstractButton::changeEvent(e);
}

void QAbstractButton_virtualbase_timerEvent(VirtualQAbstractButton* self, QTimerEvent* e) {

	self->QAbstractButton::timerEvent(e);
}

int QAbstractButton_virtualbase_devType(const VirtualQAbstractButton* self) {

	return self->QAbstractButton::devType();
}

void QAbstractButton_virtualbase_setVisible(VirtualQAbstractButton* self, bool visible) {

	self->QAbstractButton::setVisible(visible);
}

QSize* QAbstractButton_virtualbase_sizeHint(const VirtualQAbstractButton* self) {

	return new QSize(self->QAbstractButton::sizeHint());
}

QSize* QAbstractButton_virtualbase_minimumSizeHint(const VirtualQAbstractButton* self) {

	return new QSize(self->QAbstractButton::minimumSizeHint());
}

int QAbstractButton_virtualbase_heightForWidth(const VirtualQAbstractButton* self, int param1) {

	return self->QAbstractButton::heightForWidth(static_cast<int>(param1));
}

bool QAbstractButton_virtualbase_hasHeightForWidth(const VirtualQAbstractButton* self) {

	return self->QAbstractButton::hasHeightForWidth();
}

QPaintEngine* QAbstractButton_virtualbase_paintEngine(const VirtualQAbstractButton* self) {

	return self->QAbstractButton::paintEngine();
}

void QAbstractButton_virtualbase_mouseDoubleClickEvent(VirtualQAbstractButton* self, QMouseEvent* event) {

	self->QAbstractButton::mouseDoubleClickEvent(event);
}

void QAbstractButton_virtualbase_wheelEvent(VirtualQAbstractButton* self, QWheelEvent* event) {

	self->QAbstractButton::wheelEvent(event);
}

void QAbstractButton_virtualbase_enterEvent(VirtualQAbstractButton* self, QEnterEvent* event) {

	self->QAbstractButton::enterEvent(event);
}

void QAbstractButton_virtualbase_leaveEvent(VirtualQAbstractButton* self, QEvent* event) {

	self->QAbstractButton::leaveEvent(event);
}

void QAbstractButton_virtualbase_moveEvent(VirtualQAbstractButton* self, QMoveEvent* event) {

	self->QAbstractButton::moveEvent(event);
}

void QAbstractButton_virtualbase_resizeEvent(VirtualQAbstractButton* self, QResizeEvent* event) {

	self->QAbstractButton::resizeEvent(event);
}

void QAbstractButton_virtualbase_closeEvent(VirtualQAbstractButton* self, QCloseEvent* event) {

	self->QAbstractButton::closeEvent(event);
}

void QAbstractButton_virtualbase_contextMenuEvent(VirtualQAbstractButton* self, QContextMenuEvent* event) {

	self->QAbstractButton::contextMenuEvent(event);
}

void QAbstractButton_virtualbase_tabletEvent(VirtualQAbstractButton* self, QTabletEvent* event) {

	self->QAbstractButton::tabletEvent(event);
}

void QAbstractButton_virtualbase_actionEvent(VirtualQAbstractButton* self, QActionEvent* event) {

	self->QAbstractButton::actionEvent(event);
}

void QAbstractButton_virtualbase_dragEnterEvent(VirtualQAbstractButton* self, QDragEnterEvent* event) {

	self->QAbstractButton::dragEnterEvent(event);
}

void QAbstractButton_virtualbase_dragMoveEvent(VirtualQAbstractButton* self, QDragMoveEvent* event) {

	self->QAbstractButton::dragMoveEvent(event);
}

void QAbstractButton_virtualbase_dragLeaveEvent(VirtualQAbstractButton* self, QDragLeaveEvent* event) {

	self->QAbstractButton::dragLeaveEvent(event);
}

void QAbstractButton_virtualbase_dropEvent(VirtualQAbstractButton* self, QDropEvent* event) {

	self->QAbstractButton::dropEvent(event);
}

void QAbstractButton_virtualbase_showEvent(VirtualQAbstractButton* self, QShowEvent* event) {

	self->QAbstractButton::showEvent(event);
}

void QAbstractButton_virtualbase_hideEvent(VirtualQAbstractButton* self, QHideEvent* event) {

	self->QAbstractButton::hideEvent(event);
}

bool QAbstractButton_virtualbase_nativeEvent(VirtualQAbstractButton* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QAbstractButton::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QAbstractButton_virtualbase_metric(const VirtualQAbstractButton* self, int param1) {

	return self->QAbstractButton::metric(static_cast<VirtualQAbstractButton::PaintDeviceMetric>(param1));
}

void QAbstractButton_virtualbase_initPainter(const VirtualQAbstractButton* self, QPainter* painter) {

	self->QAbstractButton::initPainter(painter);
}

QPaintDevice* QAbstractButton_virtualbase_redirected(const VirtualQAbstractButton* self, QPoint* offset) {

	return self->QAbstractButton::redirected(offset);
}

QPainter* QAbstractButton_virtualbase_sharedPainter(const VirtualQAbstractButton* self) {

	return self->QAbstractButton::sharedPainter();
}

void QAbstractButton_virtualbase_inputMethodEvent(VirtualQAbstractButton* self, QInputMethodEvent* param1) {

	self->QAbstractButton::inputMethodEvent(param1);
}

QVariant* QAbstractButton_virtualbase_inputMethodQuery(const VirtualQAbstractButton* self, int param1) {

	return new QVariant(self->QAbstractButton::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QAbstractButton_virtualbase_focusNextPrevChild(VirtualQAbstractButton* self, bool next) {

	return self->QAbstractButton::focusNextPrevChild(next);
}

bool QAbstractButton_virtualbase_eventFilter(VirtualQAbstractButton* self, QObject* watched, QEvent* event) {

	return self->QAbstractButton::eventFilter(watched, event);
}

void QAbstractButton_virtualbase_childEvent(VirtualQAbstractButton* self, QChildEvent* event) {

	self->QAbstractButton::childEvent(event);
}

void QAbstractButton_virtualbase_customEvent(VirtualQAbstractButton* self, QEvent* event) {

	self->QAbstractButton::customEvent(event);
}

void QAbstractButton_virtualbase_connectNotify(VirtualQAbstractButton* self, QMetaMethod* signal) {

	self->QAbstractButton::connectNotify(*signal);
}

void QAbstractButton_virtualbase_disconnectNotify(VirtualQAbstractButton* self, QMetaMethod* signal) {

	self->QAbstractButton::disconnectNotify(*signal);
}

const QMetaObject* QAbstractButton_staticMetaObject() { return &QAbstractButton::staticMetaObject; }

const QAbstractButton_VTable* QAbstractButton_vtbl(const VirtualQAbstractButton* self) { return self->vtbl; }
void* QAbstractButton_vdata(const VirtualQAbstractButton* self) { return self->vdata; }
void QAbstractButton_setVdata(VirtualQAbstractButton* self, void* vdata) { self->vdata = vdata; }

void QAbstractButton_protectedbase_updateMicroFocus(VirtualQAbstractButton* self) {
	self->updateMicroFocus();
}

void QAbstractButton_protectedbase_create(VirtualQAbstractButton* self) {
	self->create();
}

void QAbstractButton_protectedbase_destroy(VirtualQAbstractButton* self) {
	self->destroy();
}

bool QAbstractButton_protectedbase_focusNextChild(VirtualQAbstractButton* self) {
	return self->focusNextChild();
}

bool QAbstractButton_protectedbase_focusPreviousChild(VirtualQAbstractButton* self) {
	return self->focusPreviousChild();
}

QObject* QAbstractButton_protectedbase_sender(const VirtualQAbstractButton* self) {
	return self->sender();
}

int QAbstractButton_protectedbase_senderSignalIndex(const VirtualQAbstractButton* self) {
	return self->senderSignalIndex();
}

int QAbstractButton_protectedbase_receivers(const VirtualQAbstractButton* self, const char* signal) {
	return self->receivers(signal);
}

bool QAbstractButton_protectedbase_isSignalConnected(const VirtualQAbstractButton* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAbstractButton_delete(QAbstractButton* self) {
	delete self;
}

