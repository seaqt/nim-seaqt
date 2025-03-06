#include <QActionEvent>
#include <QByteArray>
#include <QCalendar>
#include <QCalendarWidget>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDate>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMap>
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
#include <QTabletEvent>
#include <QTextCharFormat>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qcalendarwidget.h>
#include "gen_qcalendarwidget.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QCalendarWidget_selectionChanged(intptr_t);
void miqt_exec_callback_QCalendarWidget_clicked(intptr_t, QDate*);
void miqt_exec_callback_QCalendarWidget_activated(intptr_t, QDate*);
void miqt_exec_callback_QCalendarWidget_currentPageChanged(intptr_t, int, int);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQCalendarWidget final : public QCalendarWidget {
	struct QCalendarWidget_VTable* vtbl;
public:

	VirtualQCalendarWidget(struct QCalendarWidget_VTable* vtbl, QWidget* parent): QCalendarWidget(parent), vtbl(vtbl) {};
	VirtualQCalendarWidget(struct QCalendarWidget_VTable* vtbl): QCalendarWidget(), vtbl(vtbl) {};

	virtual ~VirtualQCalendarWidget() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QCalendarWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QCalendarWidget_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QCalendarWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QCalendarWidget_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QCalendarWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QCalendarWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QCalendarWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QCalendarWidget_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QCalendarWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QCalendarWidget_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QCalendarWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QCalendarWidget_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QCalendarWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QCalendarWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QCalendarWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QCalendarWidget::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QCalendarWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintCell(QPainter* painter, const QRect& rect, const QDate& date) const override {
		if (vtbl->paintCell == 0) {
			QCalendarWidget::paintCell(painter, rect, date);
			return;
		}

		QPainter* sigval1 = painter;
		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval2 = const_cast<QRect*>(&rect_ret);
		const QDate& date_ret = date;
		// Cast returned reference into pointer
		QDate* sigval3 = const_cast<QDate*>(&date_ret);

		vtbl->paintCell(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QCalendarWidget_virtualbase_paintCell(const void* self, QPainter* painter, QRect* rect, QDate* date);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QCalendarWidget::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QCalendarWidget_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QCalendarWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QCalendarWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QCalendarWidget_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QCalendarWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QCalendarWidget_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QCalendarWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QCalendarWidget_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QCalendarWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QCalendarWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QCalendarWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QCalendarWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QCalendarWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QCalendarWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QCalendarWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QCalendarWidget::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QCalendarWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QCalendarWidget::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QCalendarWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QCalendarWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QCalendarWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QCalendarWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QCalendarWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QCalendarWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QCalendarWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QCalendarWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QCalendarWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QCalendarWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QCalendarWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QCalendarWidget::nativeEvent(eventType, message, result);
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

	friend bool QCalendarWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QCalendarWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QCalendarWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QCalendarWidget_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QCalendarWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QCalendarWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QCalendarWidget_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QCalendarWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QCalendarWidget_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QCalendarWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QCalendarWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QCalendarWidget_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QCalendarWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QCalendarWidget_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QCalendarWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QCalendarWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QCalendarWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QCalendarWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QCalendarWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QCalendarWidget_protectedbase_updateCell(bool* _dynamic_cast_ok, void* self, QDate* date);
	friend void QCalendarWidget_protectedbase_updateCells(bool* _dynamic_cast_ok, void* self);
	friend void QCalendarWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QCalendarWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QCalendarWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QCalendarWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QCalendarWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QCalendarWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QCalendarWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QCalendarWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QCalendarWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QCalendarWidget* QCalendarWidget_new(struct QCalendarWidget_VTable* vtbl, QWidget* parent) {
	return new VirtualQCalendarWidget(vtbl, parent);
}

QCalendarWidget* QCalendarWidget_new2(struct QCalendarWidget_VTable* vtbl) {
	return new VirtualQCalendarWidget(vtbl);
}

void QCalendarWidget_virtbase(QCalendarWidget* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QCalendarWidget_metaObject(const QCalendarWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QCalendarWidget_metacast(QCalendarWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QCalendarWidget_metacall(QCalendarWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QCalendarWidget_tr(const char* s) {
	QString _ret = QCalendarWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCalendarWidget_trUtf8(const char* s) {
	QString _ret = QCalendarWidget::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QCalendarWidget_sizeHint(const QCalendarWidget* self) {
	return new QSize(self->sizeHint());
}

QSize* QCalendarWidget_minimumSizeHint(const QCalendarWidget* self) {
	return new QSize(self->minimumSizeHint());
}

QDate* QCalendarWidget_selectedDate(const QCalendarWidget* self) {
	return new QDate(self->selectedDate());
}

int QCalendarWidget_yearShown(const QCalendarWidget* self) {
	return self->yearShown();
}

int QCalendarWidget_monthShown(const QCalendarWidget* self) {
	return self->monthShown();
}

QDate* QCalendarWidget_minimumDate(const QCalendarWidget* self) {
	return new QDate(self->minimumDate());
}

void QCalendarWidget_setMinimumDate(QCalendarWidget* self, QDate* date) {
	self->setMinimumDate(*date);
}

QDate* QCalendarWidget_maximumDate(const QCalendarWidget* self) {
	return new QDate(self->maximumDate());
}

void QCalendarWidget_setMaximumDate(QCalendarWidget* self, QDate* date) {
	self->setMaximumDate(*date);
}

int QCalendarWidget_firstDayOfWeek(const QCalendarWidget* self) {
	Qt::DayOfWeek _ret = self->firstDayOfWeek();
	return static_cast<int>(_ret);
}

void QCalendarWidget_setFirstDayOfWeek(QCalendarWidget* self, int dayOfWeek) {
	self->setFirstDayOfWeek(static_cast<Qt::DayOfWeek>(dayOfWeek));
}

bool QCalendarWidget_isNavigationBarVisible(const QCalendarWidget* self) {
	return self->isNavigationBarVisible();
}

bool QCalendarWidget_isGridVisible(const QCalendarWidget* self) {
	return self->isGridVisible();
}

QCalendar* QCalendarWidget_calendar(const QCalendarWidget* self) {
	return new QCalendar(self->calendar());
}

void QCalendarWidget_setCalendar(QCalendarWidget* self, QCalendar* calendar) {
	self->setCalendar(*calendar);
}

int QCalendarWidget_selectionMode(const QCalendarWidget* self) {
	QCalendarWidget::SelectionMode _ret = self->selectionMode();
	return static_cast<int>(_ret);
}

void QCalendarWidget_setSelectionMode(QCalendarWidget* self, int mode) {
	self->setSelectionMode(static_cast<QCalendarWidget::SelectionMode>(mode));
}

int QCalendarWidget_horizontalHeaderFormat(const QCalendarWidget* self) {
	QCalendarWidget::HorizontalHeaderFormat _ret = self->horizontalHeaderFormat();
	return static_cast<int>(_ret);
}

void QCalendarWidget_setHorizontalHeaderFormat(QCalendarWidget* self, int format) {
	self->setHorizontalHeaderFormat(static_cast<QCalendarWidget::HorizontalHeaderFormat>(format));
}

int QCalendarWidget_verticalHeaderFormat(const QCalendarWidget* self) {
	QCalendarWidget::VerticalHeaderFormat _ret = self->verticalHeaderFormat();
	return static_cast<int>(_ret);
}

void QCalendarWidget_setVerticalHeaderFormat(QCalendarWidget* self, int format) {
	self->setVerticalHeaderFormat(static_cast<QCalendarWidget::VerticalHeaderFormat>(format));
}

QTextCharFormat* QCalendarWidget_headerTextFormat(const QCalendarWidget* self) {
	return new QTextCharFormat(self->headerTextFormat());
}

void QCalendarWidget_setHeaderTextFormat(QCalendarWidget* self, QTextCharFormat* format) {
	self->setHeaderTextFormat(*format);
}

QTextCharFormat* QCalendarWidget_weekdayTextFormat(const QCalendarWidget* self, int dayOfWeek) {
	return new QTextCharFormat(self->weekdayTextFormat(static_cast<Qt::DayOfWeek>(dayOfWeek)));
}

void QCalendarWidget_setWeekdayTextFormat(QCalendarWidget* self, int dayOfWeek, QTextCharFormat* format) {
	self->setWeekdayTextFormat(static_cast<Qt::DayOfWeek>(dayOfWeek), *format);
}

struct miqt_map /* of QDate* to QTextCharFormat* */  QCalendarWidget_dateTextFormat(const QCalendarWidget* self) {
	QMap<QDate, QTextCharFormat> _ret = self->dateTextFormat();
	// Convert QMap<> from C++ memory to manually-managed C memory
	QDate** _karr = static_cast<QDate**>(malloc(sizeof(QDate*) * _ret.size()));
	QTextCharFormat** _varr = static_cast<QTextCharFormat**>(malloc(sizeof(QTextCharFormat*) * _ret.size()));
	int _ctr = 0;
	for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
		_karr[_ctr] = new QDate(_itr->first);
		_varr[_ctr] = new QTextCharFormat(_itr->second);
		_ctr++;
	}
	struct miqt_map _out;
	_out.len = _ret.size();
	_out.keys = static_cast<void*>(_karr);
	_out.values = static_cast<void*>(_varr);
	return _out;
}

QTextCharFormat* QCalendarWidget_dateTextFormatWithDate(const QCalendarWidget* self, QDate* date) {
	return new QTextCharFormat(self->dateTextFormat(*date));
}

void QCalendarWidget_setDateTextFormat(QCalendarWidget* self, QDate* date, QTextCharFormat* format) {
	self->setDateTextFormat(*date, *format);
}

bool QCalendarWidget_isDateEditEnabled(const QCalendarWidget* self) {
	return self->isDateEditEnabled();
}

void QCalendarWidget_setDateEditEnabled(QCalendarWidget* self, bool enable) {
	self->setDateEditEnabled(enable);
}

int QCalendarWidget_dateEditAcceptDelay(const QCalendarWidget* self) {
	return self->dateEditAcceptDelay();
}

void QCalendarWidget_setDateEditAcceptDelay(QCalendarWidget* self, int delay) {
	self->setDateEditAcceptDelay(static_cast<int>(delay));
}

void QCalendarWidget_setSelectedDate(QCalendarWidget* self, QDate* date) {
	self->setSelectedDate(*date);
}

void QCalendarWidget_setDateRange(QCalendarWidget* self, QDate* min, QDate* max) {
	self->setDateRange(*min, *max);
}

void QCalendarWidget_setCurrentPage(QCalendarWidget* self, int year, int month) {
	self->setCurrentPage(static_cast<int>(year), static_cast<int>(month));
}

void QCalendarWidget_setGridVisible(QCalendarWidget* self, bool show) {
	self->setGridVisible(show);
}

void QCalendarWidget_setNavigationBarVisible(QCalendarWidget* self, bool visible) {
	self->setNavigationBarVisible(visible);
}

void QCalendarWidget_showNextMonth(QCalendarWidget* self) {
	self->showNextMonth();
}

void QCalendarWidget_showPreviousMonth(QCalendarWidget* self) {
	self->showPreviousMonth();
}

void QCalendarWidget_showNextYear(QCalendarWidget* self) {
	self->showNextYear();
}

void QCalendarWidget_showPreviousYear(QCalendarWidget* self) {
	self->showPreviousYear();
}

void QCalendarWidget_showSelectedDate(QCalendarWidget* self) {
	self->showSelectedDate();
}

void QCalendarWidget_showToday(QCalendarWidget* self) {
	self->showToday();
}

void QCalendarWidget_selectionChanged(QCalendarWidget* self) {
	self->selectionChanged();
}

void QCalendarWidget_connect_selectionChanged(QCalendarWidget* self, intptr_t slot) {
	VirtualQCalendarWidget::connect(self, static_cast<void (QCalendarWidget::*)()>(&QCalendarWidget::selectionChanged), self, [=]() {
		miqt_exec_callback_QCalendarWidget_selectionChanged(slot);
	});
}

void QCalendarWidget_clicked(QCalendarWidget* self, QDate* date) {
	self->clicked(*date);
}

void QCalendarWidget_connect_clicked(QCalendarWidget* self, intptr_t slot) {
	VirtualQCalendarWidget::connect(self, static_cast<void (QCalendarWidget::*)(const QDate&)>(&QCalendarWidget::clicked), self, [=](const QDate& date) {
		const QDate& date_ret = date;
		// Cast returned reference into pointer
		QDate* sigval1 = const_cast<QDate*>(&date_ret);
		miqt_exec_callback_QCalendarWidget_clicked(slot, sigval1);
	});
}

void QCalendarWidget_activated(QCalendarWidget* self, QDate* date) {
	self->activated(*date);
}

void QCalendarWidget_connect_activated(QCalendarWidget* self, intptr_t slot) {
	VirtualQCalendarWidget::connect(self, static_cast<void (QCalendarWidget::*)(const QDate&)>(&QCalendarWidget::activated), self, [=](const QDate& date) {
		const QDate& date_ret = date;
		// Cast returned reference into pointer
		QDate* sigval1 = const_cast<QDate*>(&date_ret);
		miqt_exec_callback_QCalendarWidget_activated(slot, sigval1);
	});
}

void QCalendarWidget_currentPageChanged(QCalendarWidget* self, int year, int month) {
	self->currentPageChanged(static_cast<int>(year), static_cast<int>(month));
}

void QCalendarWidget_connect_currentPageChanged(QCalendarWidget* self, intptr_t slot) {
	VirtualQCalendarWidget::connect(self, static_cast<void (QCalendarWidget::*)(int, int)>(&QCalendarWidget::currentPageChanged), self, [=](int year, int month) {
		int sigval1 = year;
		int sigval2 = month;
		miqt_exec_callback_QCalendarWidget_currentPageChanged(slot, sigval1, sigval2);
	});
}

struct miqt_string QCalendarWidget_tr2(const char* s, const char* c) {
	QString _ret = QCalendarWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCalendarWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QCalendarWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCalendarWidget_trUtf82(const char* s, const char* c) {
	QString _ret = QCalendarWidget::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCalendarWidget_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QCalendarWidget::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QCalendarWidget_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQCalendarWidget*)(self) )->QCalendarWidget::metaObject();

}

void* QCalendarWidget_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::qt_metacast(param1);

}

int QCalendarWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QCalendarWidget_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQCalendarWidget*)(self) )->QCalendarWidget::sizeHint());

}

QSize* QCalendarWidget_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQCalendarWidget*)(self) )->QCalendarWidget::minimumSizeHint());

}

bool QCalendarWidget_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::event(event);

}

bool QCalendarWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::eventFilter(watched, event);

}

void QCalendarWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::mousePressEvent(event);

}

void QCalendarWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::resizeEvent(event);

}

void QCalendarWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::keyPressEvent(event);

}

void QCalendarWidget_virtualbase_paintCell(const void* self, QPainter* painter, QRect* rect, QDate* date) {

	( (const VirtualQCalendarWidget*)(self) )->QCalendarWidget::paintCell(painter, *rect, *date);

}

int QCalendarWidget_virtualbase_devType(const void* self) {

	return ( (const VirtualQCalendarWidget*)(self) )->QCalendarWidget::devType();

}

void QCalendarWidget_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::setVisible(visible);

}

int QCalendarWidget_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQCalendarWidget*)(self) )->QCalendarWidget::heightForWidth(static_cast<int>(param1));

}

bool QCalendarWidget_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQCalendarWidget*)(self) )->QCalendarWidget::hasHeightForWidth();

}

QPaintEngine* QCalendarWidget_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQCalendarWidget*)(self) )->QCalendarWidget::paintEngine();

}

void QCalendarWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::mouseReleaseEvent(event);

}

void QCalendarWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::mouseDoubleClickEvent(event);

}

void QCalendarWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::mouseMoveEvent(event);

}

void QCalendarWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::wheelEvent(event);

}

void QCalendarWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::keyReleaseEvent(event);

}

void QCalendarWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::focusInEvent(event);

}

void QCalendarWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::focusOutEvent(event);

}

void QCalendarWidget_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::enterEvent(event);

}

void QCalendarWidget_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::leaveEvent(event);

}

void QCalendarWidget_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::paintEvent(event);

}

void QCalendarWidget_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::moveEvent(event);

}

void QCalendarWidget_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::closeEvent(event);

}

void QCalendarWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::contextMenuEvent(event);

}

void QCalendarWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::tabletEvent(event);

}

void QCalendarWidget_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::actionEvent(event);

}

void QCalendarWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::dragEnterEvent(event);

}

void QCalendarWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::dragMoveEvent(event);

}

void QCalendarWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::dragLeaveEvent(event);

}

void QCalendarWidget_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::dropEvent(event);

}

void QCalendarWidget_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::showEvent(event);

}

void QCalendarWidget_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::hideEvent(event);

}

bool QCalendarWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

void QCalendarWidget_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::changeEvent(param1);

}

int QCalendarWidget_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQCalendarWidget*)(self) )->QCalendarWidget::metric(static_cast<VirtualQCalendarWidget::PaintDeviceMetric>(param1));

}

void QCalendarWidget_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQCalendarWidget*)(self) )->QCalendarWidget::initPainter(painter);

}

QPaintDevice* QCalendarWidget_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQCalendarWidget*)(self) )->QCalendarWidget::redirected(offset);

}

QPainter* QCalendarWidget_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQCalendarWidget*)(self) )->QCalendarWidget::sharedPainter();

}

void QCalendarWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::inputMethodEvent(param1);

}

QVariant* QCalendarWidget_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQCalendarWidget*)(self) )->QCalendarWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QCalendarWidget_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::focusNextPrevChild(next);

}

void QCalendarWidget_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::timerEvent(event);

}

void QCalendarWidget_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::childEvent(event);

}

void QCalendarWidget_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::customEvent(event);

}

void QCalendarWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::connectNotify(*signal);

}

void QCalendarWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQCalendarWidget*)(self) )->QCalendarWidget::disconnectNotify(*signal);

}

const QMetaObject* QCalendarWidget_staticMetaObject() { return &QCalendarWidget::staticMetaObject; }
void QCalendarWidget_protectedbase_updateCell(bool* _dynamic_cast_ok, void* self, QDate* date) {
	VirtualQCalendarWidget* self_cast = dynamic_cast<VirtualQCalendarWidget*>( (QCalendarWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateCell(*date);

}

void QCalendarWidget_protectedbase_updateCells(bool* _dynamic_cast_ok, void* self) {
	VirtualQCalendarWidget* self_cast = dynamic_cast<VirtualQCalendarWidget*>( (QCalendarWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateCells();

}

void QCalendarWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQCalendarWidget* self_cast = dynamic_cast<VirtualQCalendarWidget*>( (QCalendarWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QCalendarWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQCalendarWidget* self_cast = dynamic_cast<VirtualQCalendarWidget*>( (QCalendarWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QCalendarWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQCalendarWidget* self_cast = dynamic_cast<VirtualQCalendarWidget*>( (QCalendarWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QCalendarWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQCalendarWidget* self_cast = dynamic_cast<VirtualQCalendarWidget*>( (QCalendarWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QCalendarWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQCalendarWidget* self_cast = dynamic_cast<VirtualQCalendarWidget*>( (QCalendarWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QCalendarWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQCalendarWidget* self_cast = dynamic_cast<VirtualQCalendarWidget*>( (QCalendarWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QCalendarWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQCalendarWidget* self_cast = dynamic_cast<VirtualQCalendarWidget*>( (QCalendarWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QCalendarWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQCalendarWidget* self_cast = dynamic_cast<VirtualQCalendarWidget*>( (QCalendarWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QCalendarWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQCalendarWidget* self_cast = dynamic_cast<VirtualQCalendarWidget*>( (QCalendarWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QCalendarWidget_delete(QCalendarWidget* self) {
	delete self;
}

