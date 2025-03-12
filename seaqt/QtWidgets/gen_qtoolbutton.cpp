#include <QAbstractButton>
#include <QAction>
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
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionToolButton>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QToolButton>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtoolbutton.h>
#include "gen_qtoolbutton.h"
class VirtualQToolButton final : public QToolButton {
	const QToolButton_VTable* vtbl;
	void* vdata;
public:
	friend const QToolButton_VTable* QToolButton_vtbl(const VirtualQToolButton* self);
	friend void* QToolButton_vdata(const VirtualQToolButton* self);
	friend void QToolButton_setVdata(VirtualQToolButton* self, void* vdata);

	VirtualQToolButton(const QToolButton_VTable* vtbl, void* vdata, QWidget* parent): QToolButton(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQToolButton(const QToolButton_VTable* vtbl, void* vdata): QToolButton(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQToolButton() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QToolButton::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QToolButton_virtualbase_metaObject(const VirtualQToolButton* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QToolButton::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QToolButton_virtualbase_metacast(VirtualQToolButton* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QToolButton::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolButton_virtualbase_metacall(VirtualQToolButton* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QToolButton::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QToolButton_virtualbase_sizeHint(const VirtualQToolButton* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QToolButton::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QToolButton_virtualbase_minimumSizeHint(const VirtualQToolButton* self);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QToolButton::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QToolButton_virtualbase_event(VirtualQToolButton* self, QEvent* e);

	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QToolButton::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_mousePressEvent(VirtualQToolButton* self, QMouseEvent* param1);

	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QToolButton::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_mouseReleaseEvent(VirtualQToolButton* self, QMouseEvent* param1);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QToolButton::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_paintEvent(VirtualQToolButton* self, QPaintEvent* param1);

	virtual void actionEvent(QActionEvent* param1) override {
		if (vtbl->actionEvent == 0) {
			QToolButton::actionEvent(param1);
			return;
		}

		QActionEvent* sigval1 = param1;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_actionEvent(VirtualQToolButton* self, QActionEvent* param1);

	virtual void enterEvent(QEvent* param1) override {
		if (vtbl->enterEvent == 0) {
			QToolButton::enterEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_enterEvent(VirtualQToolButton* self, QEvent* param1);

	virtual void leaveEvent(QEvent* param1) override {
		if (vtbl->leaveEvent == 0) {
			QToolButton::leaveEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_leaveEvent(VirtualQToolButton* self, QEvent* param1);

	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QToolButton::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_timerEvent(VirtualQToolButton* self, QTimerEvent* param1);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QToolButton::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_changeEvent(VirtualQToolButton* self, QEvent* param1);

	virtual bool hitButton(const QPoint& pos) const override {
		if (vtbl->hitButton == 0) {
			return QToolButton::hitButton(pos);
		}

		const QPoint& pos_ret = pos;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&pos_ret);

		bool callback_return_value = vtbl->hitButton(this, sigval1);

		return callback_return_value;
	}

	friend bool QToolButton_virtualbase_hitButton(const VirtualQToolButton* self, QPoint* pos);

	virtual void nextCheckState() override {
		if (vtbl->nextCheckState == 0) {
			QToolButton::nextCheckState();
			return;
		}


		vtbl->nextCheckState(this);

	}

	friend void QToolButton_virtualbase_nextCheckState(VirtualQToolButton* self);

	virtual void checkStateSet() override {
		if (vtbl->checkStateSet == 0) {
			QToolButton::checkStateSet();
			return;
		}


		vtbl->checkStateSet(this);

	}

	friend void QToolButton_virtualbase_checkStateSet(VirtualQToolButton* self);

	virtual void keyPressEvent(QKeyEvent* e) override {
		if (vtbl->keyPressEvent == 0) {
			QToolButton::keyPressEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_keyPressEvent(VirtualQToolButton* self, QKeyEvent* e);

	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QToolButton::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_keyReleaseEvent(VirtualQToolButton* self, QKeyEvent* e);

	virtual void mouseMoveEvent(QMouseEvent* e) override {
		if (vtbl->mouseMoveEvent == 0) {
			QToolButton::mouseMoveEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_mouseMoveEvent(VirtualQToolButton* self, QMouseEvent* e);

	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QToolButton::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_focusInEvent(VirtualQToolButton* self, QFocusEvent* e);

	virtual void focusOutEvent(QFocusEvent* e) override {
		if (vtbl->focusOutEvent == 0) {
			QToolButton::focusOutEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_focusOutEvent(VirtualQToolButton* self, QFocusEvent* e);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QToolButton::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolButton_virtualbase_devType(const VirtualQToolButton* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QToolButton::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QToolButton_virtualbase_setVisible(VirtualQToolButton* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QToolButton::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolButton_virtualbase_heightForWidth(const VirtualQToolButton* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QToolButton::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QToolButton_virtualbase_hasHeightForWidth(const VirtualQToolButton* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QToolButton::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QToolButton_virtualbase_paintEngine(const VirtualQToolButton* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QToolButton::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_mouseDoubleClickEvent(VirtualQToolButton* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QToolButton::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_wheelEvent(VirtualQToolButton* self, QWheelEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QToolButton::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_moveEvent(VirtualQToolButton* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QToolButton::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_resizeEvent(VirtualQToolButton* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QToolButton::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_closeEvent(VirtualQToolButton* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QToolButton::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_contextMenuEvent(VirtualQToolButton* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QToolButton::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_tabletEvent(VirtualQToolButton* self, QTabletEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QToolButton::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_dragEnterEvent(VirtualQToolButton* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QToolButton::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_dragMoveEvent(VirtualQToolButton* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QToolButton::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_dragLeaveEvent(VirtualQToolButton* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QToolButton::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_dropEvent(VirtualQToolButton* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QToolButton::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_showEvent(VirtualQToolButton* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QToolButton::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_hideEvent(VirtualQToolButton* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QToolButton::nativeEvent(eventType, message, result);
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

	friend bool QToolButton_virtualbase_nativeEvent(VirtualQToolButton* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QToolButton::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolButton_virtualbase_metric(const VirtualQToolButton* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QToolButton::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QToolButton_virtualbase_initPainter(const VirtualQToolButton* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QToolButton::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QToolButton_virtualbase_redirected(const VirtualQToolButton* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QToolButton::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QToolButton_virtualbase_sharedPainter(const VirtualQToolButton* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QToolButton::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_inputMethodEvent(VirtualQToolButton* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QToolButton::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QToolButton_virtualbase_inputMethodQuery(const VirtualQToolButton* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QToolButton::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QToolButton_virtualbase_focusNextPrevChild(VirtualQToolButton* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QToolButton::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QToolButton_virtualbase_eventFilter(VirtualQToolButton* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QToolButton::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_childEvent(VirtualQToolButton* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QToolButton::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QToolButton_virtualbase_customEvent(VirtualQToolButton* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QToolButton::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QToolButton_virtualbase_connectNotify(VirtualQToolButton* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QToolButton::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QToolButton_virtualbase_disconnectNotify(VirtualQToolButton* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QToolButton_protectedbase_initStyleOption(const VirtualQToolButton* self, QStyleOptionToolButton* option);
	friend void QToolButton_protectedbase_updateMicroFocus(VirtualQToolButton* self);
	friend void QToolButton_protectedbase_create(VirtualQToolButton* self);
	friend void QToolButton_protectedbase_destroy(VirtualQToolButton* self);
	friend bool QToolButton_protectedbase_focusNextChild(VirtualQToolButton* self);
	friend bool QToolButton_protectedbase_focusPreviousChild(VirtualQToolButton* self);
	friend QObject* QToolButton_protectedbase_sender(const VirtualQToolButton* self);
	friend int QToolButton_protectedbase_senderSignalIndex(const VirtualQToolButton* self);
	friend int QToolButton_protectedbase_receivers(const VirtualQToolButton* self, const char* signal);
	friend bool QToolButton_protectedbase_isSignalConnected(const VirtualQToolButton* self, QMetaMethod* signal);
};

VirtualQToolButton* QToolButton_new(const QToolButton_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQToolButton(vtbl, vdata, parent);
}

VirtualQToolButton* QToolButton_new2(const QToolButton_VTable* vtbl, void* vdata) {
	return new VirtualQToolButton(vtbl, vdata);
}

void QToolButton_virtbase(QToolButton* src, QAbstractButton** outptr_QAbstractButton) {
	*outptr_QAbstractButton = static_cast<QAbstractButton*>(src);
}

QMetaObject* QToolButton_metaObject(const QToolButton* self) {
	return (QMetaObject*) self->metaObject();
}

void* QToolButton_metacast(QToolButton* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QToolButton_metacall(QToolButton* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QToolButton_tr(const char* s) {
	QString _ret = QToolButton::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolButton_trUtf8(const char* s) {
	QString _ret = QToolButton::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QToolButton_sizeHint(const QToolButton* self) {
	return new QSize(self->sizeHint());
}

QSize* QToolButton_minimumSizeHint(const QToolButton* self) {
	return new QSize(self->minimumSizeHint());
}

int QToolButton_toolButtonStyle(const QToolButton* self) {
	Qt::ToolButtonStyle _ret = self->toolButtonStyle();
	return static_cast<int>(_ret);
}

int QToolButton_arrowType(const QToolButton* self) {
	Qt::ArrowType _ret = self->arrowType();
	return static_cast<int>(_ret);
}

void QToolButton_setArrowType(QToolButton* self, int type) {
	self->setArrowType(static_cast<Qt::ArrowType>(type));
}

void QToolButton_setMenu(QToolButton* self, QMenu* menu) {
	self->setMenu(menu);
}

QMenu* QToolButton_menu(const QToolButton* self) {
	return self->menu();
}

void QToolButton_setPopupMode(QToolButton* self, int mode) {
	self->setPopupMode(static_cast<QToolButton::ToolButtonPopupMode>(mode));
}

int QToolButton_popupMode(const QToolButton* self) {
	QToolButton::ToolButtonPopupMode _ret = self->popupMode();
	return static_cast<int>(_ret);
}

QAction* QToolButton_defaultAction(const QToolButton* self) {
	return self->defaultAction();
}

void QToolButton_setAutoRaise(QToolButton* self, bool enable) {
	self->setAutoRaise(enable);
}

bool QToolButton_autoRaise(const QToolButton* self) {
	return self->autoRaise();
}

void QToolButton_showMenu(QToolButton* self) {
	self->showMenu();
}

void QToolButton_setToolButtonStyle(QToolButton* self, int style) {
	self->setToolButtonStyle(static_cast<Qt::ToolButtonStyle>(style));
}

void QToolButton_setDefaultAction(QToolButton* self, QAction* defaultAction) {
	self->setDefaultAction(defaultAction);
}

void QToolButton_triggered(QToolButton* self, QAction* param1) {
	self->triggered(param1);
}

void QToolButton_connect_triggered(VirtualQToolButton* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAction*);
		void operator()(QAction* param1) {
			QAction* sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQToolButton::connect(self, static_cast<void (QToolButton::*)(QAction*)>(&QToolButton::triggered), self, local_caller{slot, callback, release});
}

struct miqt_string QToolButton_tr2(const char* s, const char* c) {
	QString _ret = QToolButton::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolButton_tr3(const char* s, const char* c, int n) {
	QString _ret = QToolButton::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolButton_trUtf82(const char* s, const char* c) {
	QString _ret = QToolButton::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolButton_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QToolButton::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QToolButton_virtualbase_metaObject(const VirtualQToolButton* self) {

	return (QMetaObject*) self->QToolButton::metaObject();
}

void* QToolButton_virtualbase_metacast(VirtualQToolButton* self, const char* param1) {

	return self->QToolButton::qt_metacast(param1);
}

int QToolButton_virtualbase_metacall(VirtualQToolButton* self, int param1, int param2, void** param3) {

	return self->QToolButton::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QToolButton_virtualbase_sizeHint(const VirtualQToolButton* self) {

	return new QSize(self->QToolButton::sizeHint());
}

QSize* QToolButton_virtualbase_minimumSizeHint(const VirtualQToolButton* self) {

	return new QSize(self->QToolButton::minimumSizeHint());
}

bool QToolButton_virtualbase_event(VirtualQToolButton* self, QEvent* e) {

	return self->QToolButton::event(e);
}

void QToolButton_virtualbase_mousePressEvent(VirtualQToolButton* self, QMouseEvent* param1) {

	self->QToolButton::mousePressEvent(param1);
}

void QToolButton_virtualbase_mouseReleaseEvent(VirtualQToolButton* self, QMouseEvent* param1) {

	self->QToolButton::mouseReleaseEvent(param1);
}

void QToolButton_virtualbase_paintEvent(VirtualQToolButton* self, QPaintEvent* param1) {

	self->QToolButton::paintEvent(param1);
}

void QToolButton_virtualbase_actionEvent(VirtualQToolButton* self, QActionEvent* param1) {

	self->QToolButton::actionEvent(param1);
}

void QToolButton_virtualbase_enterEvent(VirtualQToolButton* self, QEvent* param1) {

	self->QToolButton::enterEvent(param1);
}

void QToolButton_virtualbase_leaveEvent(VirtualQToolButton* self, QEvent* param1) {

	self->QToolButton::leaveEvent(param1);
}

void QToolButton_virtualbase_timerEvent(VirtualQToolButton* self, QTimerEvent* param1) {

	self->QToolButton::timerEvent(param1);
}

void QToolButton_virtualbase_changeEvent(VirtualQToolButton* self, QEvent* param1) {

	self->QToolButton::changeEvent(param1);
}

bool QToolButton_virtualbase_hitButton(const VirtualQToolButton* self, QPoint* pos) {

	return self->QToolButton::hitButton(*pos);
}

void QToolButton_virtualbase_nextCheckState(VirtualQToolButton* self) {

	self->QToolButton::nextCheckState();
}

void QToolButton_virtualbase_checkStateSet(VirtualQToolButton* self) {

	self->QToolButton::checkStateSet();
}

void QToolButton_virtualbase_keyPressEvent(VirtualQToolButton* self, QKeyEvent* e) {

	self->QToolButton::keyPressEvent(e);
}

void QToolButton_virtualbase_keyReleaseEvent(VirtualQToolButton* self, QKeyEvent* e) {

	self->QToolButton::keyReleaseEvent(e);
}

void QToolButton_virtualbase_mouseMoveEvent(VirtualQToolButton* self, QMouseEvent* e) {

	self->QToolButton::mouseMoveEvent(e);
}

void QToolButton_virtualbase_focusInEvent(VirtualQToolButton* self, QFocusEvent* e) {

	self->QToolButton::focusInEvent(e);
}

void QToolButton_virtualbase_focusOutEvent(VirtualQToolButton* self, QFocusEvent* e) {

	self->QToolButton::focusOutEvent(e);
}

int QToolButton_virtualbase_devType(const VirtualQToolButton* self) {

	return self->QToolButton::devType();
}

void QToolButton_virtualbase_setVisible(VirtualQToolButton* self, bool visible) {

	self->QToolButton::setVisible(visible);
}

int QToolButton_virtualbase_heightForWidth(const VirtualQToolButton* self, int param1) {

	return self->QToolButton::heightForWidth(static_cast<int>(param1));
}

bool QToolButton_virtualbase_hasHeightForWidth(const VirtualQToolButton* self) {

	return self->QToolButton::hasHeightForWidth();
}

QPaintEngine* QToolButton_virtualbase_paintEngine(const VirtualQToolButton* self) {

	return self->QToolButton::paintEngine();
}

void QToolButton_virtualbase_mouseDoubleClickEvent(VirtualQToolButton* self, QMouseEvent* event) {

	self->QToolButton::mouseDoubleClickEvent(event);
}

void QToolButton_virtualbase_wheelEvent(VirtualQToolButton* self, QWheelEvent* event) {

	self->QToolButton::wheelEvent(event);
}

void QToolButton_virtualbase_moveEvent(VirtualQToolButton* self, QMoveEvent* event) {

	self->QToolButton::moveEvent(event);
}

void QToolButton_virtualbase_resizeEvent(VirtualQToolButton* self, QResizeEvent* event) {

	self->QToolButton::resizeEvent(event);
}

void QToolButton_virtualbase_closeEvent(VirtualQToolButton* self, QCloseEvent* event) {

	self->QToolButton::closeEvent(event);
}

void QToolButton_virtualbase_contextMenuEvent(VirtualQToolButton* self, QContextMenuEvent* event) {

	self->QToolButton::contextMenuEvent(event);
}

void QToolButton_virtualbase_tabletEvent(VirtualQToolButton* self, QTabletEvent* event) {

	self->QToolButton::tabletEvent(event);
}

void QToolButton_virtualbase_dragEnterEvent(VirtualQToolButton* self, QDragEnterEvent* event) {

	self->QToolButton::dragEnterEvent(event);
}

void QToolButton_virtualbase_dragMoveEvent(VirtualQToolButton* self, QDragMoveEvent* event) {

	self->QToolButton::dragMoveEvent(event);
}

void QToolButton_virtualbase_dragLeaveEvent(VirtualQToolButton* self, QDragLeaveEvent* event) {

	self->QToolButton::dragLeaveEvent(event);
}

void QToolButton_virtualbase_dropEvent(VirtualQToolButton* self, QDropEvent* event) {

	self->QToolButton::dropEvent(event);
}

void QToolButton_virtualbase_showEvent(VirtualQToolButton* self, QShowEvent* event) {

	self->QToolButton::showEvent(event);
}

void QToolButton_virtualbase_hideEvent(VirtualQToolButton* self, QHideEvent* event) {

	self->QToolButton::hideEvent(event);
}

bool QToolButton_virtualbase_nativeEvent(VirtualQToolButton* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QToolButton::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QToolButton_virtualbase_metric(const VirtualQToolButton* self, int param1) {

	return self->QToolButton::metric(static_cast<VirtualQToolButton::PaintDeviceMetric>(param1));
}

void QToolButton_virtualbase_initPainter(const VirtualQToolButton* self, QPainter* painter) {

	self->QToolButton::initPainter(painter);
}

QPaintDevice* QToolButton_virtualbase_redirected(const VirtualQToolButton* self, QPoint* offset) {

	return self->QToolButton::redirected(offset);
}

QPainter* QToolButton_virtualbase_sharedPainter(const VirtualQToolButton* self) {

	return self->QToolButton::sharedPainter();
}

void QToolButton_virtualbase_inputMethodEvent(VirtualQToolButton* self, QInputMethodEvent* param1) {

	self->QToolButton::inputMethodEvent(param1);
}

QVariant* QToolButton_virtualbase_inputMethodQuery(const VirtualQToolButton* self, int param1) {

	return new QVariant(self->QToolButton::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QToolButton_virtualbase_focusNextPrevChild(VirtualQToolButton* self, bool next) {

	return self->QToolButton::focusNextPrevChild(next);
}

bool QToolButton_virtualbase_eventFilter(VirtualQToolButton* self, QObject* watched, QEvent* event) {

	return self->QToolButton::eventFilter(watched, event);
}

void QToolButton_virtualbase_childEvent(VirtualQToolButton* self, QChildEvent* event) {

	self->QToolButton::childEvent(event);
}

void QToolButton_virtualbase_customEvent(VirtualQToolButton* self, QEvent* event) {

	self->QToolButton::customEvent(event);
}

void QToolButton_virtualbase_connectNotify(VirtualQToolButton* self, QMetaMethod* signal) {

	self->QToolButton::connectNotify(*signal);
}

void QToolButton_virtualbase_disconnectNotify(VirtualQToolButton* self, QMetaMethod* signal) {

	self->QToolButton::disconnectNotify(*signal);
}

const QMetaObject* QToolButton_staticMetaObject() { return &QToolButton::staticMetaObject; }

const QToolButton_VTable* QToolButton_vtbl(const VirtualQToolButton* self) { return self->vtbl; }
void* QToolButton_vdata(const VirtualQToolButton* self) { return self->vdata; }
void QToolButton_setVdata(VirtualQToolButton* self, void* vdata) { self->vdata = vdata; }

void QToolButton_protectedbase_initStyleOption(const VirtualQToolButton* self, QStyleOptionToolButton* option) {
	self->initStyleOption(option);
}

void QToolButton_protectedbase_updateMicroFocus(VirtualQToolButton* self) {
	self->updateMicroFocus();
}

void QToolButton_protectedbase_create(VirtualQToolButton* self) {
	self->create();
}

void QToolButton_protectedbase_destroy(VirtualQToolButton* self) {
	self->destroy();
}

bool QToolButton_protectedbase_focusNextChild(VirtualQToolButton* self) {
	return self->focusNextChild();
}

bool QToolButton_protectedbase_focusPreviousChild(VirtualQToolButton* self) {
	return self->focusPreviousChild();
}

QObject* QToolButton_protectedbase_sender(const VirtualQToolButton* self) {
	return self->sender();
}

int QToolButton_protectedbase_senderSignalIndex(const VirtualQToolButton* self) {
	return self->senderSignalIndex();
}

int QToolButton_protectedbase_receivers(const VirtualQToolButton* self, const char* signal) {
	return self->receivers(signal);
}

bool QToolButton_protectedbase_isSignalConnected(const VirtualQToolButton* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QToolButton_delete(QToolButton* self) {
	delete self;
}

