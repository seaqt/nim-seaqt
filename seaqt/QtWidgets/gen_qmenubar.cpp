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
#include <QEnterEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QIcon>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMenu>
#include <QMenuBar>
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
#include <QRect>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionMenuItem>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qmenubar.h>
#include "gen_qmenubar.h"
class VirtualQMenuBar final : public QMenuBar {
	const QMenuBar_VTable* vtbl;
	void* vdata;
public:
	friend const QMenuBar_VTable* QMenuBar_vtbl(const VirtualQMenuBar* self);
	friend void* QMenuBar_vdata(const VirtualQMenuBar* self);
	friend void QMenuBar_setVdata(VirtualQMenuBar* self, void* vdata);

	VirtualQMenuBar(const QMenuBar_VTable* vtbl, void* vdata, QWidget* parent): QMenuBar(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQMenuBar(const QMenuBar_VTable* vtbl, void* vdata): QMenuBar(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQMenuBar() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMenuBar::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QMenuBar_virtualbase_metaObject(const VirtualQMenuBar* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMenuBar::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QMenuBar_virtualbase_metacast(VirtualQMenuBar* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMenuBar::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMenuBar_virtualbase_metacall(VirtualQMenuBar* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QMenuBar::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMenuBar_virtualbase_sizeHint(const VirtualQMenuBar* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QMenuBar::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMenuBar_virtualbase_minimumSizeHint(const VirtualQMenuBar* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QMenuBar::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMenuBar_virtualbase_heightForWidth(const VirtualQMenuBar* self, int param1);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QMenuBar::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QMenuBar_virtualbase_setVisible(VirtualQMenuBar* self, bool visible);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QMenuBar::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_changeEvent(VirtualQMenuBar* self, QEvent* param1);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QMenuBar::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_keyPressEvent(VirtualQMenuBar* self, QKeyEvent* param1);

	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QMenuBar::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_mouseReleaseEvent(VirtualQMenuBar* self, QMouseEvent* param1);

	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QMenuBar::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_mousePressEvent(VirtualQMenuBar* self, QMouseEvent* param1);

	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QMenuBar::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_mouseMoveEvent(VirtualQMenuBar* self, QMouseEvent* param1);

	virtual void leaveEvent(QEvent* param1) override {
		if (vtbl->leaveEvent == 0) {
			QMenuBar::leaveEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_leaveEvent(VirtualQMenuBar* self, QEvent* param1);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QMenuBar::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_paintEvent(VirtualQMenuBar* self, QPaintEvent* param1);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QMenuBar::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_resizeEvent(VirtualQMenuBar* self, QResizeEvent* param1);

	virtual void actionEvent(QActionEvent* param1) override {
		if (vtbl->actionEvent == 0) {
			QMenuBar::actionEvent(param1);
			return;
		}

		QActionEvent* sigval1 = param1;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_actionEvent(VirtualQMenuBar* self, QActionEvent* param1);

	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QMenuBar::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_focusOutEvent(VirtualQMenuBar* self, QFocusEvent* param1);

	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QMenuBar::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_focusInEvent(VirtualQMenuBar* self, QFocusEvent* param1);

	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QMenuBar::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_timerEvent(VirtualQMenuBar* self, QTimerEvent* param1);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QMenuBar::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMenuBar_virtualbase_eventFilter(VirtualQMenuBar* self, QObject* param1, QEvent* param2);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QMenuBar::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QMenuBar_virtualbase_event(VirtualQMenuBar* self, QEvent* param1);

	virtual void initStyleOption(QStyleOptionMenuItem* option, const QAction* action) const override {
		if (vtbl->initStyleOption == 0) {
			QMenuBar::initStyleOption(option, action);
			return;
		}

		QStyleOptionMenuItem* sigval1 = option;
		QAction* sigval2 = (QAction*) action;

		vtbl->initStyleOption(this, sigval1, sigval2);

	}

	friend void QMenuBar_virtualbase_initStyleOption(const VirtualQMenuBar* self, QStyleOptionMenuItem* option, QAction* action);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QMenuBar::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QMenuBar_virtualbase_devType(const VirtualQMenuBar* self);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QMenuBar::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QMenuBar_virtualbase_hasHeightForWidth(const VirtualQMenuBar* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QMenuBar::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QMenuBar_virtualbase_paintEngine(const VirtualQMenuBar* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QMenuBar::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_mouseDoubleClickEvent(VirtualQMenuBar* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QMenuBar::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_wheelEvent(VirtualQMenuBar* self, QWheelEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QMenuBar::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_keyReleaseEvent(VirtualQMenuBar* self, QKeyEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QMenuBar::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_enterEvent(VirtualQMenuBar* self, QEnterEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QMenuBar::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_moveEvent(VirtualQMenuBar* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QMenuBar::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_closeEvent(VirtualQMenuBar* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QMenuBar::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_contextMenuEvent(VirtualQMenuBar* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QMenuBar::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_tabletEvent(VirtualQMenuBar* self, QTabletEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QMenuBar::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_dragEnterEvent(VirtualQMenuBar* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QMenuBar::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_dragMoveEvent(VirtualQMenuBar* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QMenuBar::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_dragLeaveEvent(VirtualQMenuBar* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QMenuBar::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_dropEvent(VirtualQMenuBar* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QMenuBar::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_showEvent(VirtualQMenuBar* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QMenuBar::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_hideEvent(VirtualQMenuBar* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QMenuBar::nativeEvent(eventType, message, result);
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

	friend bool QMenuBar_virtualbase_nativeEvent(VirtualQMenuBar* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QMenuBar::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMenuBar_virtualbase_metric(const VirtualQMenuBar* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QMenuBar::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QMenuBar_virtualbase_initPainter(const VirtualQMenuBar* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QMenuBar::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QMenuBar_virtualbase_redirected(const VirtualQMenuBar* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QMenuBar::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QMenuBar_virtualbase_sharedPainter(const VirtualQMenuBar* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QMenuBar::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_inputMethodEvent(VirtualQMenuBar* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QMenuBar::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QMenuBar_virtualbase_inputMethodQuery(const VirtualQMenuBar* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QMenuBar::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QMenuBar_virtualbase_focusNextPrevChild(VirtualQMenuBar* self, bool next);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMenuBar::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_childEvent(VirtualQMenuBar* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMenuBar::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QMenuBar_virtualbase_customEvent(VirtualQMenuBar* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMenuBar::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QMenuBar_virtualbase_connectNotify(VirtualQMenuBar* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMenuBar::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QMenuBar_virtualbase_disconnectNotify(VirtualQMenuBar* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QMenuBar_protectedbase_updateMicroFocus(VirtualQMenuBar* self);
	friend void QMenuBar_protectedbase_create(VirtualQMenuBar* self);
	friend void QMenuBar_protectedbase_destroy(VirtualQMenuBar* self);
	friend bool QMenuBar_protectedbase_focusNextChild(VirtualQMenuBar* self);
	friend bool QMenuBar_protectedbase_focusPreviousChild(VirtualQMenuBar* self);
	friend QObject* QMenuBar_protectedbase_sender(const VirtualQMenuBar* self);
	friend int QMenuBar_protectedbase_senderSignalIndex(const VirtualQMenuBar* self);
	friend int QMenuBar_protectedbase_receivers(const VirtualQMenuBar* self, const char* signal);
	friend bool QMenuBar_protectedbase_isSignalConnected(const VirtualQMenuBar* self, QMetaMethod* signal);
};

VirtualQMenuBar* QMenuBar_new(const QMenuBar_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQMenuBar(vtbl, vdata, parent);
}

VirtualQMenuBar* QMenuBar_new2(const QMenuBar_VTable* vtbl, void* vdata) {
	return new VirtualQMenuBar(vtbl, vdata);
}

void QMenuBar_virtbase(QMenuBar* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QMenuBar_metaObject(const QMenuBar* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMenuBar_metacast(QMenuBar* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMenuBar_metacall(QMenuBar* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMenuBar_tr(const char* s) {
	QString _ret = QMenuBar::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAction* QMenuBar_addMenu(QMenuBar* self, QMenu* menu) {
	return self->addMenu(menu);
}

QMenu* QMenuBar_addMenuWithTitle(QMenuBar* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return self->addMenu(title_QString);
}

QMenu* QMenuBar_addMenu2(QMenuBar* self, QIcon* icon, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return self->addMenu(*icon, title_QString);
}

QAction* QMenuBar_addSeparator(QMenuBar* self) {
	return self->addSeparator();
}

QAction* QMenuBar_insertSeparator(QMenuBar* self, QAction* before) {
	return self->insertSeparator(before);
}

QAction* QMenuBar_insertMenu(QMenuBar* self, QAction* before, QMenu* menu) {
	return self->insertMenu(before, menu);
}

void QMenuBar_clear(QMenuBar* self) {
	self->clear();
}

QAction* QMenuBar_activeAction(const QMenuBar* self) {
	return self->activeAction();
}

void QMenuBar_setActiveAction(QMenuBar* self, QAction* action) {
	self->setActiveAction(action);
}

void QMenuBar_setDefaultUp(QMenuBar* self, bool defaultUp) {
	self->setDefaultUp(defaultUp);
}

bool QMenuBar_isDefaultUp(const QMenuBar* self) {
	return self->isDefaultUp();
}

QSize* QMenuBar_sizeHint(const QMenuBar* self) {
	return new QSize(self->sizeHint());
}

QSize* QMenuBar_minimumSizeHint(const QMenuBar* self) {
	return new QSize(self->minimumSizeHint());
}

int QMenuBar_heightForWidth(const QMenuBar* self, int param1) {
	return self->heightForWidth(static_cast<int>(param1));
}

QRect* QMenuBar_actionGeometry(const QMenuBar* self, QAction* param1) {
	return new QRect(self->actionGeometry(param1));
}

QAction* QMenuBar_actionAt(const QMenuBar* self, QPoint* param1) {
	return self->actionAt(*param1);
}

void QMenuBar_setCornerWidget(QMenuBar* self, QWidget* w) {
	self->setCornerWidget(w);
}

QWidget* QMenuBar_cornerWidget(const QMenuBar* self) {
	return self->cornerWidget();
}

bool QMenuBar_isNativeMenuBar(const QMenuBar* self) {
	return self->isNativeMenuBar();
}

void QMenuBar_setNativeMenuBar(QMenuBar* self, bool nativeMenuBar) {
	self->setNativeMenuBar(nativeMenuBar);
}

void QMenuBar_setVisible(QMenuBar* self, bool visible) {
	self->setVisible(visible);
}

void QMenuBar_triggered(QMenuBar* self, QAction* action) {
	self->triggered(action);
}

void QMenuBar_connect_triggered(VirtualQMenuBar* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAction*);
		void operator()(QAction* action) {
			QAction* sigval1 = action;
			callback(slot, sigval1);
		}
	};
	VirtualQMenuBar::connect(self, static_cast<void (QMenuBar::*)(QAction*)>(&QMenuBar::triggered), self, local_caller{slot, callback, release});
}

void QMenuBar_hovered(QMenuBar* self, QAction* action) {
	self->hovered(action);
}

void QMenuBar_connect_hovered(VirtualQMenuBar* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAction*);
		void operator()(QAction* action) {
			QAction* sigval1 = action;
			callback(slot, sigval1);
		}
	};
	VirtualQMenuBar::connect(self, static_cast<void (QMenuBar::*)(QAction*)>(&QMenuBar::hovered), self, local_caller{slot, callback, release});
}

struct miqt_string QMenuBar_tr2(const char* s, const char* c) {
	QString _ret = QMenuBar::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMenuBar_tr3(const char* s, const char* c, int n) {
	QString _ret = QMenuBar::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMenuBar_setCornerWidget2(QMenuBar* self, QWidget* w, int corner) {
	self->setCornerWidget(w, static_cast<Qt::Corner>(corner));
}

QWidget* QMenuBar_cornerWidget1(const QMenuBar* self, int corner) {
	return self->cornerWidget(static_cast<Qt::Corner>(corner));
}

QMetaObject* QMenuBar_virtualbase_metaObject(const VirtualQMenuBar* self) {

	return (QMetaObject*) self->QMenuBar::metaObject();
}

void* QMenuBar_virtualbase_metacast(VirtualQMenuBar* self, const char* param1) {

	return self->QMenuBar::qt_metacast(param1);
}

int QMenuBar_virtualbase_metacall(VirtualQMenuBar* self, int param1, int param2, void** param3) {

	return self->QMenuBar::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QMenuBar_virtualbase_sizeHint(const VirtualQMenuBar* self) {

	return new QSize(self->QMenuBar::sizeHint());
}

QSize* QMenuBar_virtualbase_minimumSizeHint(const VirtualQMenuBar* self) {

	return new QSize(self->QMenuBar::minimumSizeHint());
}

int QMenuBar_virtualbase_heightForWidth(const VirtualQMenuBar* self, int param1) {

	return self->QMenuBar::heightForWidth(static_cast<int>(param1));
}

void QMenuBar_virtualbase_setVisible(VirtualQMenuBar* self, bool visible) {

	self->QMenuBar::setVisible(visible);
}

void QMenuBar_virtualbase_changeEvent(VirtualQMenuBar* self, QEvent* param1) {

	self->QMenuBar::changeEvent(param1);
}

void QMenuBar_virtualbase_keyPressEvent(VirtualQMenuBar* self, QKeyEvent* param1) {

	self->QMenuBar::keyPressEvent(param1);
}

void QMenuBar_virtualbase_mouseReleaseEvent(VirtualQMenuBar* self, QMouseEvent* param1) {

	self->QMenuBar::mouseReleaseEvent(param1);
}

void QMenuBar_virtualbase_mousePressEvent(VirtualQMenuBar* self, QMouseEvent* param1) {

	self->QMenuBar::mousePressEvent(param1);
}

void QMenuBar_virtualbase_mouseMoveEvent(VirtualQMenuBar* self, QMouseEvent* param1) {

	self->QMenuBar::mouseMoveEvent(param1);
}

void QMenuBar_virtualbase_leaveEvent(VirtualQMenuBar* self, QEvent* param1) {

	self->QMenuBar::leaveEvent(param1);
}

void QMenuBar_virtualbase_paintEvent(VirtualQMenuBar* self, QPaintEvent* param1) {

	self->QMenuBar::paintEvent(param1);
}

void QMenuBar_virtualbase_resizeEvent(VirtualQMenuBar* self, QResizeEvent* param1) {

	self->QMenuBar::resizeEvent(param1);
}

void QMenuBar_virtualbase_actionEvent(VirtualQMenuBar* self, QActionEvent* param1) {

	self->QMenuBar::actionEvent(param1);
}

void QMenuBar_virtualbase_focusOutEvent(VirtualQMenuBar* self, QFocusEvent* param1) {

	self->QMenuBar::focusOutEvent(param1);
}

void QMenuBar_virtualbase_focusInEvent(VirtualQMenuBar* self, QFocusEvent* param1) {

	self->QMenuBar::focusInEvent(param1);
}

void QMenuBar_virtualbase_timerEvent(VirtualQMenuBar* self, QTimerEvent* param1) {

	self->QMenuBar::timerEvent(param1);
}

bool QMenuBar_virtualbase_eventFilter(VirtualQMenuBar* self, QObject* param1, QEvent* param2) {

	return self->QMenuBar::eventFilter(param1, param2);
}

bool QMenuBar_virtualbase_event(VirtualQMenuBar* self, QEvent* param1) {

	return self->QMenuBar::event(param1);
}

void QMenuBar_virtualbase_initStyleOption(const VirtualQMenuBar* self, QStyleOptionMenuItem* option, QAction* action) {

	self->QMenuBar::initStyleOption(option, action);
}

int QMenuBar_virtualbase_devType(const VirtualQMenuBar* self) {

	return self->QMenuBar::devType();
}

bool QMenuBar_virtualbase_hasHeightForWidth(const VirtualQMenuBar* self) {

	return self->QMenuBar::hasHeightForWidth();
}

QPaintEngine* QMenuBar_virtualbase_paintEngine(const VirtualQMenuBar* self) {

	return self->QMenuBar::paintEngine();
}

void QMenuBar_virtualbase_mouseDoubleClickEvent(VirtualQMenuBar* self, QMouseEvent* event) {

	self->QMenuBar::mouseDoubleClickEvent(event);
}

void QMenuBar_virtualbase_wheelEvent(VirtualQMenuBar* self, QWheelEvent* event) {

	self->QMenuBar::wheelEvent(event);
}

void QMenuBar_virtualbase_keyReleaseEvent(VirtualQMenuBar* self, QKeyEvent* event) {

	self->QMenuBar::keyReleaseEvent(event);
}

void QMenuBar_virtualbase_enterEvent(VirtualQMenuBar* self, QEnterEvent* event) {

	self->QMenuBar::enterEvent(event);
}

void QMenuBar_virtualbase_moveEvent(VirtualQMenuBar* self, QMoveEvent* event) {

	self->QMenuBar::moveEvent(event);
}

void QMenuBar_virtualbase_closeEvent(VirtualQMenuBar* self, QCloseEvent* event) {

	self->QMenuBar::closeEvent(event);
}

void QMenuBar_virtualbase_contextMenuEvent(VirtualQMenuBar* self, QContextMenuEvent* event) {

	self->QMenuBar::contextMenuEvent(event);
}

void QMenuBar_virtualbase_tabletEvent(VirtualQMenuBar* self, QTabletEvent* event) {

	self->QMenuBar::tabletEvent(event);
}

void QMenuBar_virtualbase_dragEnterEvent(VirtualQMenuBar* self, QDragEnterEvent* event) {

	self->QMenuBar::dragEnterEvent(event);
}

void QMenuBar_virtualbase_dragMoveEvent(VirtualQMenuBar* self, QDragMoveEvent* event) {

	self->QMenuBar::dragMoveEvent(event);
}

void QMenuBar_virtualbase_dragLeaveEvent(VirtualQMenuBar* self, QDragLeaveEvent* event) {

	self->QMenuBar::dragLeaveEvent(event);
}

void QMenuBar_virtualbase_dropEvent(VirtualQMenuBar* self, QDropEvent* event) {

	self->QMenuBar::dropEvent(event);
}

void QMenuBar_virtualbase_showEvent(VirtualQMenuBar* self, QShowEvent* event) {

	self->QMenuBar::showEvent(event);
}

void QMenuBar_virtualbase_hideEvent(VirtualQMenuBar* self, QHideEvent* event) {

	self->QMenuBar::hideEvent(event);
}

bool QMenuBar_virtualbase_nativeEvent(VirtualQMenuBar* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QMenuBar::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QMenuBar_virtualbase_metric(const VirtualQMenuBar* self, int param1) {

	return self->QMenuBar::metric(static_cast<VirtualQMenuBar::PaintDeviceMetric>(param1));
}

void QMenuBar_virtualbase_initPainter(const VirtualQMenuBar* self, QPainter* painter) {

	self->QMenuBar::initPainter(painter);
}

QPaintDevice* QMenuBar_virtualbase_redirected(const VirtualQMenuBar* self, QPoint* offset) {

	return self->QMenuBar::redirected(offset);
}

QPainter* QMenuBar_virtualbase_sharedPainter(const VirtualQMenuBar* self) {

	return self->QMenuBar::sharedPainter();
}

void QMenuBar_virtualbase_inputMethodEvent(VirtualQMenuBar* self, QInputMethodEvent* param1) {

	self->QMenuBar::inputMethodEvent(param1);
}

QVariant* QMenuBar_virtualbase_inputMethodQuery(const VirtualQMenuBar* self, int param1) {

	return new QVariant(self->QMenuBar::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QMenuBar_virtualbase_focusNextPrevChild(VirtualQMenuBar* self, bool next) {

	return self->QMenuBar::focusNextPrevChild(next);
}

void QMenuBar_virtualbase_childEvent(VirtualQMenuBar* self, QChildEvent* event) {

	self->QMenuBar::childEvent(event);
}

void QMenuBar_virtualbase_customEvent(VirtualQMenuBar* self, QEvent* event) {

	self->QMenuBar::customEvent(event);
}

void QMenuBar_virtualbase_connectNotify(VirtualQMenuBar* self, QMetaMethod* signal) {

	self->QMenuBar::connectNotify(*signal);
}

void QMenuBar_virtualbase_disconnectNotify(VirtualQMenuBar* self, QMetaMethod* signal) {

	self->QMenuBar::disconnectNotify(*signal);
}

const QMetaObject* QMenuBar_staticMetaObject() { return &QMenuBar::staticMetaObject; }

const QMenuBar_VTable* QMenuBar_vtbl(const VirtualQMenuBar* self) { return self->vtbl; }
void* QMenuBar_vdata(const VirtualQMenuBar* self) { return self->vdata; }
void QMenuBar_setVdata(VirtualQMenuBar* self, void* vdata) { self->vdata = vdata; }

void QMenuBar_protectedbase_updateMicroFocus(VirtualQMenuBar* self) {
	self->updateMicroFocus();
}

void QMenuBar_protectedbase_create(VirtualQMenuBar* self) {
	self->create();
}

void QMenuBar_protectedbase_destroy(VirtualQMenuBar* self) {
	self->destroy();
}

bool QMenuBar_protectedbase_focusNextChild(VirtualQMenuBar* self) {
	return self->focusNextChild();
}

bool QMenuBar_protectedbase_focusPreviousChild(VirtualQMenuBar* self) {
	return self->focusPreviousChild();
}

QObject* QMenuBar_protectedbase_sender(const VirtualQMenuBar* self) {
	return self->sender();
}

int QMenuBar_protectedbase_senderSignalIndex(const VirtualQMenuBar* self) {
	return self->senderSignalIndex();
}

int QMenuBar_protectedbase_receivers(const VirtualQMenuBar* self, const char* signal) {
	return self->receivers(signal);
}

bool QMenuBar_protectedbase_isSignalConnected(const VirtualQMenuBar* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QMenuBar_delete(QMenuBar* self) {
	delete self;
}

