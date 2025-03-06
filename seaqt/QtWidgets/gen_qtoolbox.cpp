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
#include <QFrame>
#include <QHideEvent>
#include <QIcon>
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
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QToolBox>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtoolbox.h>
#include "gen_qtoolbox.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QToolBox_currentChanged(intptr_t, int);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQToolBox final : public QToolBox {
	struct QToolBox_VTable* vtbl;
public:

	VirtualQToolBox(struct QToolBox_VTable* vtbl, QWidget* parent): QToolBox(parent), vtbl(vtbl) {};
	VirtualQToolBox(struct QToolBox_VTable* vtbl): QToolBox(), vtbl(vtbl) {};
	VirtualQToolBox(struct QToolBox_VTable* vtbl, QWidget* parent, Qt::WindowFlags f): QToolBox(parent, f), vtbl(vtbl) {};

	virtual ~VirtualQToolBox() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QToolBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QToolBox_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QToolBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QToolBox_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QToolBox::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolBox_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QToolBox::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QToolBox_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void itemInserted(int index) override {
		if (vtbl->itemInserted == 0) {
			QToolBox::itemInserted(index);
			return;
		}

		int sigval1 = index;

		vtbl->itemInserted(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_itemInserted(void* self, int index);

	// Subclass to allow providing a Go implementation
	virtual void itemRemoved(int index) override {
		if (vtbl->itemRemoved == 0) {
			QToolBox::itemRemoved(index);
			return;
		}

		int sigval1 = index;

		vtbl->itemRemoved(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_itemRemoved(void* self, int index);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* e) override {
		if (vtbl->showEvent == 0) {
			QToolBox::showEvent(e);
			return;
		}

		QShowEvent* sigval1 = e;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_showEvent(void* self, QShowEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QToolBox::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QToolBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QToolBox_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QToolBox::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QToolBox::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolBox_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QToolBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QToolBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QToolBox_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QToolBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolBox_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QToolBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QToolBox_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QToolBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QToolBox_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QToolBox::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QToolBox::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QToolBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QToolBox::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QToolBox::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QToolBox::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QToolBox::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QToolBox::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QToolBox::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QToolBox::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QToolBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QToolBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QToolBox::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QToolBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QToolBox::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QToolBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QToolBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QToolBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QToolBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QToolBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QToolBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QToolBox::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QToolBox::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QToolBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QToolBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolBox_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QToolBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QToolBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QToolBox_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QToolBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QToolBox_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QToolBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QToolBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QToolBox_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QToolBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QToolBox_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QToolBox::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QToolBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QToolBox::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QToolBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QToolBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QToolBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QToolBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QToolBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QToolBox_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
	friend void QToolBox_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
	friend void QToolBox_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QToolBox_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QToolBox_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QToolBox_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QToolBox_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QToolBox_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QToolBox_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QToolBox_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QToolBox_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QToolBox* QToolBox_new(struct QToolBox_VTable* vtbl, QWidget* parent) {
	return new VirtualQToolBox(vtbl, parent);
}

QToolBox* QToolBox_new2(struct QToolBox_VTable* vtbl) {
	return new VirtualQToolBox(vtbl);
}

QToolBox* QToolBox_new3(struct QToolBox_VTable* vtbl, QWidget* parent, int f) {
	return new VirtualQToolBox(vtbl, parent, static_cast<Qt::WindowFlags>(f));
}

void QToolBox_virtbase(QToolBox* src, QFrame** outptr_QFrame) {
	*outptr_QFrame = static_cast<QFrame*>(src);
}

QMetaObject* QToolBox_metaObject(const QToolBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QToolBox_metacast(QToolBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QToolBox_metacall(QToolBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QToolBox_tr(const char* s) {
	QString _ret = QToolBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolBox_trUtf8(const char* s) {
	QString _ret = QToolBox::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QToolBox_addItem(QToolBox* self, QWidget* widget, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addItem(widget, text_QString);
}

int QToolBox_addItem2(QToolBox* self, QWidget* widget, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addItem(widget, *icon, text_QString);
}

int QToolBox_insertItem(QToolBox* self, int index, QWidget* widget, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->insertItem(static_cast<int>(index), widget, text_QString);
}

int QToolBox_insertItem2(QToolBox* self, int index, QWidget* widget, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->insertItem(static_cast<int>(index), widget, *icon, text_QString);
}

void QToolBox_removeItem(QToolBox* self, int index) {
	self->removeItem(static_cast<int>(index));
}

void QToolBox_setItemEnabled(QToolBox* self, int index, bool enabled) {
	self->setItemEnabled(static_cast<int>(index), enabled);
}

bool QToolBox_isItemEnabled(const QToolBox* self, int index) {
	return self->isItemEnabled(static_cast<int>(index));
}

void QToolBox_setItemText(QToolBox* self, int index, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setItemText(static_cast<int>(index), text_QString);
}

struct miqt_string QToolBox_itemText(const QToolBox* self, int index) {
	QString _ret = self->itemText(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QToolBox_setItemIcon(QToolBox* self, int index, QIcon* icon) {
	self->setItemIcon(static_cast<int>(index), *icon);
}

QIcon* QToolBox_itemIcon(const QToolBox* self, int index) {
	return new QIcon(self->itemIcon(static_cast<int>(index)));
}

void QToolBox_setItemToolTip(QToolBox* self, int index, struct miqt_string toolTip) {
	QString toolTip_QString = QString::fromUtf8(toolTip.data, toolTip.len);
	self->setItemToolTip(static_cast<int>(index), toolTip_QString);
}

struct miqt_string QToolBox_itemToolTip(const QToolBox* self, int index) {
	QString _ret = self->itemToolTip(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QToolBox_currentIndex(const QToolBox* self) {
	return self->currentIndex();
}

QWidget* QToolBox_currentWidget(const QToolBox* self) {
	return self->currentWidget();
}

QWidget* QToolBox_widget(const QToolBox* self, int index) {
	return self->widget(static_cast<int>(index));
}

int QToolBox_indexOf(const QToolBox* self, QWidget* widget) {
	return self->indexOf(widget);
}

int QToolBox_count(const QToolBox* self) {
	return self->count();
}

void QToolBox_setCurrentIndex(QToolBox* self, int index) {
	self->setCurrentIndex(static_cast<int>(index));
}

void QToolBox_setCurrentWidget(QToolBox* self, QWidget* widget) {
	self->setCurrentWidget(widget);
}

void QToolBox_currentChanged(QToolBox* self, int index) {
	self->currentChanged(static_cast<int>(index));
}

void QToolBox_connect_currentChanged(QToolBox* self, intptr_t slot) {
	VirtualQToolBox::connect(self, static_cast<void (QToolBox::*)(int)>(&QToolBox::currentChanged), self, [=](int index) {
		int sigval1 = index;
		miqt_exec_callback_QToolBox_currentChanged(slot, sigval1);
	});
}

struct miqt_string QToolBox_tr2(const char* s, const char* c) {
	QString _ret = QToolBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QToolBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolBox_trUtf82(const char* s, const char* c) {
	QString _ret = QToolBox::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolBox_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QToolBox::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QToolBox_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQToolBox*)(self) )->QToolBox::metaObject();

}

void* QToolBox_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQToolBox*)(self) )->QToolBox::qt_metacast(param1);

}

int QToolBox_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQToolBox*)(self) )->QToolBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QToolBox_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQToolBox*)(self) )->QToolBox::event(e);

}

void QToolBox_virtualbase_itemInserted(void* self, int index) {

	( (VirtualQToolBox*)(self) )->QToolBox::itemInserted(static_cast<int>(index));

}

void QToolBox_virtualbase_itemRemoved(void* self, int index) {

	( (VirtualQToolBox*)(self) )->QToolBox::itemRemoved(static_cast<int>(index));

}

void QToolBox_virtualbase_showEvent(void* self, QShowEvent* e) {

	( (VirtualQToolBox*)(self) )->QToolBox::showEvent(e);

}

void QToolBox_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQToolBox*)(self) )->QToolBox::changeEvent(param1);

}

QSize* QToolBox_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQToolBox*)(self) )->QToolBox::sizeHint());

}

void QToolBox_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQToolBox*)(self) )->QToolBox::paintEvent(param1);

}

int QToolBox_virtualbase_devType(const void* self) {

	return ( (const VirtualQToolBox*)(self) )->QToolBox::devType();

}

void QToolBox_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQToolBox*)(self) )->QToolBox::setVisible(visible);

}

QSize* QToolBox_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQToolBox*)(self) )->QToolBox::minimumSizeHint());

}

int QToolBox_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQToolBox*)(self) )->QToolBox::heightForWidth(static_cast<int>(param1));

}

bool QToolBox_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQToolBox*)(self) )->QToolBox::hasHeightForWidth();

}

QPaintEngine* QToolBox_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQToolBox*)(self) )->QToolBox::paintEngine();

}

void QToolBox_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::mousePressEvent(event);

}

void QToolBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::mouseReleaseEvent(event);

}

void QToolBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::mouseDoubleClickEvent(event);

}

void QToolBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::mouseMoveEvent(event);

}

void QToolBox_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::wheelEvent(event);

}

void QToolBox_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::keyPressEvent(event);

}

void QToolBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::keyReleaseEvent(event);

}

void QToolBox_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::focusInEvent(event);

}

void QToolBox_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::focusOutEvent(event);

}

void QToolBox_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::enterEvent(event);

}

void QToolBox_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::leaveEvent(event);

}

void QToolBox_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::moveEvent(event);

}

void QToolBox_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::resizeEvent(event);

}

void QToolBox_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::closeEvent(event);

}

void QToolBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::contextMenuEvent(event);

}

void QToolBox_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::tabletEvent(event);

}

void QToolBox_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::actionEvent(event);

}

void QToolBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::dragEnterEvent(event);

}

void QToolBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::dragMoveEvent(event);

}

void QToolBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::dragLeaveEvent(event);

}

void QToolBox_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::dropEvent(event);

}

void QToolBox_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::hideEvent(event);

}

bool QToolBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQToolBox*)(self) )->QToolBox::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QToolBox_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQToolBox*)(self) )->QToolBox::metric(static_cast<VirtualQToolBox::PaintDeviceMetric>(param1));

}

void QToolBox_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQToolBox*)(self) )->QToolBox::initPainter(painter);

}

QPaintDevice* QToolBox_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQToolBox*)(self) )->QToolBox::redirected(offset);

}

QPainter* QToolBox_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQToolBox*)(self) )->QToolBox::sharedPainter();

}

void QToolBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQToolBox*)(self) )->QToolBox::inputMethodEvent(param1);

}

QVariant* QToolBox_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQToolBox*)(self) )->QToolBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QToolBox_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQToolBox*)(self) )->QToolBox::focusNextPrevChild(next);

}

bool QToolBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQToolBox*)(self) )->QToolBox::eventFilter(watched, event);

}

void QToolBox_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::timerEvent(event);

}

void QToolBox_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::childEvent(event);

}

void QToolBox_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQToolBox*)(self) )->QToolBox::customEvent(event);

}

void QToolBox_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQToolBox*)(self) )->QToolBox::connectNotify(*signal);

}

void QToolBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQToolBox*)(self) )->QToolBox::disconnectNotify(*signal);

}

const QMetaObject* QToolBox_staticMetaObject() { return &QToolBox::staticMetaObject; }
void QToolBox_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1) {
	VirtualQToolBox* self_cast = dynamic_cast<VirtualQToolBox*>( (QToolBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->drawFrame(param1);

}

void QToolBox_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option) {
	VirtualQToolBox* self_cast = dynamic_cast<VirtualQToolBox*>( (QToolBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initStyleOption(option);

}

void QToolBox_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQToolBox* self_cast = dynamic_cast<VirtualQToolBox*>( (QToolBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QToolBox_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQToolBox* self_cast = dynamic_cast<VirtualQToolBox*>( (QToolBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QToolBox_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQToolBox* self_cast = dynamic_cast<VirtualQToolBox*>( (QToolBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QToolBox_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQToolBox* self_cast = dynamic_cast<VirtualQToolBox*>( (QToolBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QToolBox_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQToolBox* self_cast = dynamic_cast<VirtualQToolBox*>( (QToolBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QToolBox_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQToolBox* self_cast = dynamic_cast<VirtualQToolBox*>( (QToolBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QToolBox_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQToolBox* self_cast = dynamic_cast<VirtualQToolBox*>( (QToolBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QToolBox_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQToolBox* self_cast = dynamic_cast<VirtualQToolBox*>( (QToolBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QToolBox_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQToolBox* self_cast = dynamic_cast<VirtualQToolBox*>( (QToolBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QToolBox_delete(QToolBox* self) {
	delete self;
}

