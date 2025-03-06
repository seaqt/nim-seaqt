#include <QAction>
#include <QActionEvent>
#include <QBackingStore>
#include <QBitmap>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QCursor>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QFont>
#include <QFontInfo>
#include <QFontMetrics>
#include <QGraphicsEffect>
#include <QGraphicsProxyWidget>
#include <QHideEvent>
#include <QIcon>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QKeySequence>
#include <QLayout>
#include <QList>
#include <QLocale>
#include <QMargins>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPalette>
#include <QPixmap>
#include <QPoint>
#include <QRect>
#include <QRegion>
#include <QResizeEvent>
#include <QScreen>
#include <QShowEvent>
#include <QSize>
#include <QSizePolicy>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyle>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <QWidgetData>
#include <QWindow>
#include <qwidget.h>
#include "gen_qwidget.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

QWidgetData* QWidgetData_new(QWidgetData* param1) {
	return new QWidgetData(*param1);
}

void QWidgetData_operatorAssign(QWidgetData* self, QWidgetData* param1) {
	self->operator=(*param1);
}

void QWidgetData_delete(QWidgetData* self) {
	delete self;
}

class VirtualQWidget final : public QWidget {
	struct QWidget_VTable* vtbl;
public:

	VirtualQWidget(struct QWidget_VTable* vtbl, QWidget* parent): QWidget(parent), vtbl(vtbl) {};
	VirtualQWidget(struct QWidget_VTable* vtbl): QWidget(), vtbl(vtbl) {};
	VirtualQWidget(struct QWidget_VTable* vtbl, QWidget* parent, Qt::WindowFlags f): QWidget(parent, f), vtbl(vtbl) {};

	virtual ~VirtualQWidget() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QWidget_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QWidget_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QWidget::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QWidget_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWidget_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWidget_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QWidget_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QWidget_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QWidget_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QWidget_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QWidget::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QWidget::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QWidget::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QWidget::nativeEvent(eventType, message, result);
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

	friend bool QWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QWidget_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QWidget_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QWidget_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QWidget_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QWidget_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QWidget_protectedbase_updateMicroFocus(void* self);
	friend void QWidget_protectedbase_create(void* self);
	friend void QWidget_protectedbase_destroy(void* self);
	friend bool QWidget_protectedbase_focusNextChild(void* self);
	friend bool QWidget_protectedbase_focusPreviousChild(void* self);
	friend void QWidget_protectedbase_create1(void* self, uintptr_t param1);
	friend void QWidget_protectedbase_create2(void* self, uintptr_t param1, bool initializeWindow);
	friend void QWidget_protectedbase_create3(void* self, uintptr_t param1, bool initializeWindow, bool destroyOldWindow);
	friend void QWidget_protectedbase_destroy1(void* self, bool destroyWindow);
	friend void QWidget_protectedbase_destroy2(void* self, bool destroyWindow, bool destroySubWindows);
	friend QObject* QWidget_protectedbase_sender(const void* self);
	friend int QWidget_protectedbase_senderSignalIndex(const void* self);
	friend int QWidget_protectedbase_receivers(const void* self, const char* signal);
	friend bool QWidget_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QWidget* QWidget_new(struct QWidget_VTable* vtbl, QWidget* parent) {
	return new VirtualQWidget(vtbl, parent);
}

QWidget* QWidget_new2(struct QWidget_VTable* vtbl) {
	return new VirtualQWidget(vtbl);
}

QWidget* QWidget_new3(struct QWidget_VTable* vtbl, QWidget* parent, int f) {
	return new VirtualQWidget(vtbl, parent, static_cast<Qt::WindowFlags>(f));
}

void QWidget_virtbase(QWidget* src, QObject** outptr_QObject, QPaintDevice** outptr_QPaintDevice) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QPaintDevice = static_cast<QPaintDevice*>(src);
}

QMetaObject* QWidget_metaObject(const QWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWidget_metacast(QWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWidget_metacall(QWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWidget_tr(const char* s) {
	QString _ret = QWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWidget_trUtf8(const char* s) {
	QString _ret = QWidget::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QWidget_devType(const QWidget* self) {
	return self->devType();
}

uintptr_t QWidget_winId(const QWidget* self) {
	WId _ret = self->winId();
	return static_cast<uintptr_t>(_ret);
}

void QWidget_createWinId(QWidget* self) {
	self->createWinId();
}

uintptr_t QWidget_internalWinId(const QWidget* self) {
	WId _ret = self->internalWinId();
	return static_cast<uintptr_t>(_ret);
}

uintptr_t QWidget_effectiveWinId(const QWidget* self) {
	WId _ret = self->effectiveWinId();
	return static_cast<uintptr_t>(_ret);
}

QStyle* QWidget_style(const QWidget* self) {
	return self->style();
}

void QWidget_setStyle(QWidget* self, QStyle* style) {
	self->setStyle(style);
}

bool QWidget_isTopLevel(const QWidget* self) {
	return self->isTopLevel();
}

bool QWidget_isWindow(const QWidget* self) {
	return self->isWindow();
}

bool QWidget_isModal(const QWidget* self) {
	return self->isModal();
}

int QWidget_windowModality(const QWidget* self) {
	Qt::WindowModality _ret = self->windowModality();
	return static_cast<int>(_ret);
}

void QWidget_setWindowModality(QWidget* self, int windowModality) {
	self->setWindowModality(static_cast<Qt::WindowModality>(windowModality));
}

bool QWidget_isEnabled(const QWidget* self) {
	return self->isEnabled();
}

bool QWidget_isEnabledTo(const QWidget* self, QWidget* param1) {
	return self->isEnabledTo(param1);
}

bool QWidget_isEnabledToTLW(const QWidget* self) {
	return self->isEnabledToTLW();
}

void QWidget_setEnabled(QWidget* self, bool enabled) {
	self->setEnabled(enabled);
}

void QWidget_setDisabled(QWidget* self, bool disabled) {
	self->setDisabled(disabled);
}

void QWidget_setWindowModified(QWidget* self, bool windowModified) {
	self->setWindowModified(windowModified);
}

QRect* QWidget_frameGeometry(const QWidget* self) {
	return new QRect(self->frameGeometry());
}

QRect* QWidget_geometry(const QWidget* self) {
	const QRect& _ret = self->geometry();
	// Cast returned reference into pointer
	return const_cast<QRect*>(&_ret);
}

QRect* QWidget_normalGeometry(const QWidget* self) {
	return new QRect(self->normalGeometry());
}

int QWidget_x(const QWidget* self) {
	return self->x();
}

int QWidget_y(const QWidget* self) {
	return self->y();
}

QPoint* QWidget_pos(const QWidget* self) {
	return new QPoint(self->pos());
}

QSize* QWidget_frameSize(const QWidget* self) {
	return new QSize(self->frameSize());
}

QSize* QWidget_size(const QWidget* self) {
	return new QSize(self->size());
}

int QWidget_width(const QWidget* self) {
	return self->width();
}

int QWidget_height(const QWidget* self) {
	return self->height();
}

QRect* QWidget_rect(const QWidget* self) {
	return new QRect(self->rect());
}

QRect* QWidget_childrenRect(const QWidget* self) {
	return new QRect(self->childrenRect());
}

QRegion* QWidget_childrenRegion(const QWidget* self) {
	return new QRegion(self->childrenRegion());
}

QSize* QWidget_minimumSize(const QWidget* self) {
	return new QSize(self->minimumSize());
}

QSize* QWidget_maximumSize(const QWidget* self) {
	return new QSize(self->maximumSize());
}

int QWidget_minimumWidth(const QWidget* self) {
	return self->minimumWidth();
}

int QWidget_minimumHeight(const QWidget* self) {
	return self->minimumHeight();
}

int QWidget_maximumWidth(const QWidget* self) {
	return self->maximumWidth();
}

int QWidget_maximumHeight(const QWidget* self) {
	return self->maximumHeight();
}

void QWidget_setMinimumSize(QWidget* self, QSize* minimumSize) {
	self->setMinimumSize(*minimumSize);
}

void QWidget_setMinimumSize2(QWidget* self, int minw, int minh) {
	self->setMinimumSize(static_cast<int>(minw), static_cast<int>(minh));
}

void QWidget_setMaximumSize(QWidget* self, QSize* maximumSize) {
	self->setMaximumSize(*maximumSize);
}

void QWidget_setMaximumSize2(QWidget* self, int maxw, int maxh) {
	self->setMaximumSize(static_cast<int>(maxw), static_cast<int>(maxh));
}

void QWidget_setMinimumWidth(QWidget* self, int minw) {
	self->setMinimumWidth(static_cast<int>(minw));
}

void QWidget_setMinimumHeight(QWidget* self, int minh) {
	self->setMinimumHeight(static_cast<int>(minh));
}

void QWidget_setMaximumWidth(QWidget* self, int maxw) {
	self->setMaximumWidth(static_cast<int>(maxw));
}

void QWidget_setMaximumHeight(QWidget* self, int maxh) {
	self->setMaximumHeight(static_cast<int>(maxh));
}

QSize* QWidget_sizeIncrement(const QWidget* self) {
	return new QSize(self->sizeIncrement());
}

void QWidget_setSizeIncrement(QWidget* self, QSize* sizeIncrement) {
	self->setSizeIncrement(*sizeIncrement);
}

void QWidget_setSizeIncrement2(QWidget* self, int w, int h) {
	self->setSizeIncrement(static_cast<int>(w), static_cast<int>(h));
}

QSize* QWidget_baseSize(const QWidget* self) {
	return new QSize(self->baseSize());
}

void QWidget_setBaseSize(QWidget* self, QSize* baseSize) {
	self->setBaseSize(*baseSize);
}

void QWidget_setBaseSize2(QWidget* self, int basew, int baseh) {
	self->setBaseSize(static_cast<int>(basew), static_cast<int>(baseh));
}

void QWidget_setFixedSize(QWidget* self, QSize* fixedSize) {
	self->setFixedSize(*fixedSize);
}

void QWidget_setFixedSize2(QWidget* self, int w, int h) {
	self->setFixedSize(static_cast<int>(w), static_cast<int>(h));
}

void QWidget_setFixedWidth(QWidget* self, int w) {
	self->setFixedWidth(static_cast<int>(w));
}

void QWidget_setFixedHeight(QWidget* self, int h) {
	self->setFixedHeight(static_cast<int>(h));
}

QPoint* QWidget_mapToGlobal(const QWidget* self, QPoint* param1) {
	return new QPoint(self->mapToGlobal(*param1));
}

QPoint* QWidget_mapFromGlobal(const QWidget* self, QPoint* param1) {
	return new QPoint(self->mapFromGlobal(*param1));
}

QPoint* QWidget_mapToParent(const QWidget* self, QPoint* param1) {
	return new QPoint(self->mapToParent(*param1));
}

QPoint* QWidget_mapFromParent(const QWidget* self, QPoint* param1) {
	return new QPoint(self->mapFromParent(*param1));
}

QPoint* QWidget_mapTo(const QWidget* self, QWidget* param1, QPoint* param2) {
	return new QPoint(self->mapTo(param1, *param2));
}

QPoint* QWidget_mapFrom(const QWidget* self, QWidget* param1, QPoint* param2) {
	return new QPoint(self->mapFrom(param1, *param2));
}

QWidget* QWidget_window(const QWidget* self) {
	return self->window();
}

QWidget* QWidget_nativeParentWidget(const QWidget* self) {
	return self->nativeParentWidget();
}

QWidget* QWidget_topLevelWidget(const QWidget* self) {
	return self->topLevelWidget();
}

QPalette* QWidget_palette(const QWidget* self) {
	const QPalette& _ret = self->palette();
	// Cast returned reference into pointer
	return const_cast<QPalette*>(&_ret);
}

void QWidget_setPalette(QWidget* self, QPalette* palette) {
	self->setPalette(*palette);
}

void QWidget_setBackgroundRole(QWidget* self, int backgroundRole) {
	self->setBackgroundRole(static_cast<QPalette::ColorRole>(backgroundRole));
}

int QWidget_backgroundRole(const QWidget* self) {
	QPalette::ColorRole _ret = self->backgroundRole();
	return static_cast<int>(_ret);
}

void QWidget_setForegroundRole(QWidget* self, int foregroundRole) {
	self->setForegroundRole(static_cast<QPalette::ColorRole>(foregroundRole));
}

int QWidget_foregroundRole(const QWidget* self) {
	QPalette::ColorRole _ret = self->foregroundRole();
	return static_cast<int>(_ret);
}

QFont* QWidget_font(const QWidget* self) {
	const QFont& _ret = self->font();
	// Cast returned reference into pointer
	return const_cast<QFont*>(&_ret);
}

void QWidget_setFont(QWidget* self, QFont* font) {
	self->setFont(*font);
}

QFontMetrics* QWidget_fontMetrics(const QWidget* self) {
	return new QFontMetrics(self->fontMetrics());
}

QFontInfo* QWidget_fontInfo(const QWidget* self) {
	return new QFontInfo(self->fontInfo());
}

QCursor* QWidget_cursor(const QWidget* self) {
	return new QCursor(self->cursor());
}

void QWidget_setCursor(QWidget* self, QCursor* cursor) {
	self->setCursor(*cursor);
}

void QWidget_unsetCursor(QWidget* self) {
	self->unsetCursor();
}

void QWidget_setMouseTracking(QWidget* self, bool enable) {
	self->setMouseTracking(enable);
}

bool QWidget_hasMouseTracking(const QWidget* self) {
	return self->hasMouseTracking();
}

bool QWidget_underMouse(const QWidget* self) {
	return self->underMouse();
}

void QWidget_setTabletTracking(QWidget* self, bool enable) {
	self->setTabletTracking(enable);
}

bool QWidget_hasTabletTracking(const QWidget* self) {
	return self->hasTabletTracking();
}

void QWidget_setMask(QWidget* self, QBitmap* mask) {
	self->setMask(*mask);
}

void QWidget_setMaskWithMask(QWidget* self, QRegion* mask) {
	self->setMask(*mask);
}

QRegion* QWidget_mask(const QWidget* self) {
	return new QRegion(self->mask());
}

void QWidget_clearMask(QWidget* self) {
	self->clearMask();
}

void QWidget_render(QWidget* self, QPaintDevice* target) {
	self->render(target);
}

void QWidget_renderWithPainter(QWidget* self, QPainter* painter) {
	self->render(painter);
}

QPixmap* QWidget_grab(QWidget* self) {
	return new QPixmap(self->grab());
}

QGraphicsEffect* QWidget_graphicsEffect(const QWidget* self) {
	return self->graphicsEffect();
}

void QWidget_setGraphicsEffect(QWidget* self, QGraphicsEffect* effect) {
	self->setGraphicsEffect(effect);
}

void QWidget_grabGesture(QWidget* self, int type) {
	self->grabGesture(static_cast<Qt::GestureType>(type));
}

void QWidget_ungrabGesture(QWidget* self, int type) {
	self->ungrabGesture(static_cast<Qt::GestureType>(type));
}

void QWidget_setWindowTitle(QWidget* self, struct miqt_string windowTitle) {
	QString windowTitle_QString = QString::fromUtf8(windowTitle.data, windowTitle.len);
	self->setWindowTitle(windowTitle_QString);
}

void QWidget_setStyleSheet(QWidget* self, struct miqt_string styleSheet) {
	QString styleSheet_QString = QString::fromUtf8(styleSheet.data, styleSheet.len);
	self->setStyleSheet(styleSheet_QString);
}

struct miqt_string QWidget_styleSheet(const QWidget* self) {
	QString _ret = self->styleSheet();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWidget_windowTitle(const QWidget* self) {
	QString _ret = self->windowTitle();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWidget_setWindowIcon(QWidget* self, QIcon* icon) {
	self->setWindowIcon(*icon);
}

QIcon* QWidget_windowIcon(const QWidget* self) {
	return new QIcon(self->windowIcon());
}

void QWidget_setWindowIconText(QWidget* self, struct miqt_string windowIconText) {
	QString windowIconText_QString = QString::fromUtf8(windowIconText.data, windowIconText.len);
	self->setWindowIconText(windowIconText_QString);
}

struct miqt_string QWidget_windowIconText(const QWidget* self) {
	QString _ret = self->windowIconText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWidget_setWindowRole(QWidget* self, struct miqt_string windowRole) {
	QString windowRole_QString = QString::fromUtf8(windowRole.data, windowRole.len);
	self->setWindowRole(windowRole_QString);
}

struct miqt_string QWidget_windowRole(const QWidget* self) {
	QString _ret = self->windowRole();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWidget_setWindowFilePath(QWidget* self, struct miqt_string filePath) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	self->setWindowFilePath(filePath_QString);
}

struct miqt_string QWidget_windowFilePath(const QWidget* self) {
	QString _ret = self->windowFilePath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWidget_setWindowOpacity(QWidget* self, double level) {
	self->setWindowOpacity(static_cast<qreal>(level));
}

double QWidget_windowOpacity(const QWidget* self) {
	qreal _ret = self->windowOpacity();
	return static_cast<double>(_ret);
}

bool QWidget_isWindowModified(const QWidget* self) {
	return self->isWindowModified();
}

void QWidget_setToolTip(QWidget* self, struct miqt_string toolTip) {
	QString toolTip_QString = QString::fromUtf8(toolTip.data, toolTip.len);
	self->setToolTip(toolTip_QString);
}

struct miqt_string QWidget_toolTip(const QWidget* self) {
	QString _ret = self->toolTip();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWidget_setToolTipDuration(QWidget* self, int msec) {
	self->setToolTipDuration(static_cast<int>(msec));
}

int QWidget_toolTipDuration(const QWidget* self) {
	return self->toolTipDuration();
}

void QWidget_setStatusTip(QWidget* self, struct miqt_string statusTip) {
	QString statusTip_QString = QString::fromUtf8(statusTip.data, statusTip.len);
	self->setStatusTip(statusTip_QString);
}

struct miqt_string QWidget_statusTip(const QWidget* self) {
	QString _ret = self->statusTip();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWidget_setWhatsThis(QWidget* self, struct miqt_string whatsThis) {
	QString whatsThis_QString = QString::fromUtf8(whatsThis.data, whatsThis.len);
	self->setWhatsThis(whatsThis_QString);
}

struct miqt_string QWidget_whatsThis(const QWidget* self) {
	QString _ret = self->whatsThis();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWidget_accessibleName(const QWidget* self) {
	QString _ret = self->accessibleName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWidget_setAccessibleName(QWidget* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setAccessibleName(name_QString);
}

struct miqt_string QWidget_accessibleDescription(const QWidget* self) {
	QString _ret = self->accessibleDescription();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWidget_setAccessibleDescription(QWidget* self, struct miqt_string description) {
	QString description_QString = QString::fromUtf8(description.data, description.len);
	self->setAccessibleDescription(description_QString);
}

void QWidget_setLayoutDirection(QWidget* self, int direction) {
	self->setLayoutDirection(static_cast<Qt::LayoutDirection>(direction));
}

int QWidget_layoutDirection(const QWidget* self) {
	Qt::LayoutDirection _ret = self->layoutDirection();
	return static_cast<int>(_ret);
}

void QWidget_unsetLayoutDirection(QWidget* self) {
	self->unsetLayoutDirection();
}

void QWidget_setLocale(QWidget* self, QLocale* locale) {
	self->setLocale(*locale);
}

QLocale* QWidget_locale(const QWidget* self) {
	return new QLocale(self->locale());
}

void QWidget_unsetLocale(QWidget* self) {
	self->unsetLocale();
}

bool QWidget_isRightToLeft(const QWidget* self) {
	return self->isRightToLeft();
}

bool QWidget_isLeftToRight(const QWidget* self) {
	return self->isLeftToRight();
}

void QWidget_setFocus(QWidget* self) {
	self->setFocus();
}

bool QWidget_isActiveWindow(const QWidget* self) {
	return self->isActiveWindow();
}

void QWidget_activateWindow(QWidget* self) {
	self->activateWindow();
}

void QWidget_clearFocus(QWidget* self) {
	self->clearFocus();
}

void QWidget_setFocusWithReason(QWidget* self, int reason) {
	self->setFocus(static_cast<Qt::FocusReason>(reason));
}

int QWidget_focusPolicy(const QWidget* self) {
	Qt::FocusPolicy _ret = self->focusPolicy();
	return static_cast<int>(_ret);
}

void QWidget_setFocusPolicy(QWidget* self, int policy) {
	self->setFocusPolicy(static_cast<Qt::FocusPolicy>(policy));
}

bool QWidget_hasFocus(const QWidget* self) {
	return self->hasFocus();
}

void QWidget_setTabOrder(QWidget* param1, QWidget* param2) {
	QWidget::setTabOrder(param1, param2);
}

void QWidget_setFocusProxy(QWidget* self, QWidget* focusProxy) {
	self->setFocusProxy(focusProxy);
}

QWidget* QWidget_focusProxy(const QWidget* self) {
	return self->focusProxy();
}

int QWidget_contextMenuPolicy(const QWidget* self) {
	Qt::ContextMenuPolicy _ret = self->contextMenuPolicy();
	return static_cast<int>(_ret);
}

void QWidget_setContextMenuPolicy(QWidget* self, int policy) {
	self->setContextMenuPolicy(static_cast<Qt::ContextMenuPolicy>(policy));
}

void QWidget_grabMouse(QWidget* self) {
	self->grabMouse();
}

void QWidget_grabMouseWithQCursor(QWidget* self, QCursor* param1) {
	self->grabMouse(*param1);
}

void QWidget_releaseMouse(QWidget* self) {
	self->releaseMouse();
}

void QWidget_grabKeyboard(QWidget* self) {
	self->grabKeyboard();
}

void QWidget_releaseKeyboard(QWidget* self) {
	self->releaseKeyboard();
}

int QWidget_grabShortcut(QWidget* self, QKeySequence* key) {
	return self->grabShortcut(*key);
}

void QWidget_releaseShortcut(QWidget* self, int id) {
	self->releaseShortcut(static_cast<int>(id));
}

void QWidget_setShortcutEnabled(QWidget* self, int id) {
	self->setShortcutEnabled(static_cast<int>(id));
}

void QWidget_setShortcutAutoRepeat(QWidget* self, int id) {
	self->setShortcutAutoRepeat(static_cast<int>(id));
}

QWidget* QWidget_mouseGrabber() {
	return QWidget::mouseGrabber();
}

QWidget* QWidget_keyboardGrabber() {
	return QWidget::keyboardGrabber();
}

bool QWidget_updatesEnabled(const QWidget* self) {
	return self->updatesEnabled();
}

void QWidget_setUpdatesEnabled(QWidget* self, bool enable) {
	self->setUpdatesEnabled(enable);
}

QGraphicsProxyWidget* QWidget_graphicsProxyWidget(const QWidget* self) {
	return self->graphicsProxyWidget();
}

void QWidget_update(QWidget* self) {
	self->update();
}

void QWidget_repaint(QWidget* self) {
	self->repaint();
}

void QWidget_update2(QWidget* self, int x, int y, int w, int h) {
	self->update(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h));
}

void QWidget_updateWithQRect(QWidget* self, QRect* param1) {
	self->update(*param1);
}

void QWidget_updateWithQRegion(QWidget* self, QRegion* param1) {
	self->update(*param1);
}

void QWidget_repaint2(QWidget* self, int x, int y, int w, int h) {
	self->repaint(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h));
}

void QWidget_repaintWithQRect(QWidget* self, QRect* param1) {
	self->repaint(*param1);
}

void QWidget_repaintWithQRegion(QWidget* self, QRegion* param1) {
	self->repaint(*param1);
}

void QWidget_setVisible(QWidget* self, bool visible) {
	self->setVisible(visible);
}

void QWidget_setHidden(QWidget* self, bool hidden) {
	self->setHidden(hidden);
}

void QWidget_show(QWidget* self) {
	self->show();
}

void QWidget_hide(QWidget* self) {
	self->hide();
}

void QWidget_showMinimized(QWidget* self) {
	self->showMinimized();
}

void QWidget_showMaximized(QWidget* self) {
	self->showMaximized();
}

void QWidget_showFullScreen(QWidget* self) {
	self->showFullScreen();
}

void QWidget_showNormal(QWidget* self) {
	self->showNormal();
}

bool QWidget_close(QWidget* self) {
	return self->close();
}

void QWidget_raise(QWidget* self) {
	self->raise();
}

void QWidget_lower(QWidget* self) {
	self->lower();
}

void QWidget_stackUnder(QWidget* self, QWidget* param1) {
	self->stackUnder(param1);
}

void QWidget_move(QWidget* self, int x, int y) {
	self->move(static_cast<int>(x), static_cast<int>(y));
}

void QWidget_moveWithQPoint(QWidget* self, QPoint* param1) {
	self->move(*param1);
}

void QWidget_resize(QWidget* self, int w, int h) {
	self->resize(static_cast<int>(w), static_cast<int>(h));
}

void QWidget_resizeWithQSize(QWidget* self, QSize* param1) {
	self->resize(*param1);
}

void QWidget_setGeometry(QWidget* self, int x, int y, int w, int h) {
	self->setGeometry(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h));
}

void QWidget_setGeometryWithGeometry(QWidget* self, QRect* geometry) {
	self->setGeometry(*geometry);
}

struct miqt_string QWidget_saveGeometry(const QWidget* self) {
	QByteArray _qb = self->saveGeometry();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

bool QWidget_restoreGeometry(QWidget* self, struct miqt_string geometry) {
	QByteArray geometry_QByteArray(geometry.data, geometry.len);
	return self->restoreGeometry(geometry_QByteArray);
}

void QWidget_adjustSize(QWidget* self) {
	self->adjustSize();
}

bool QWidget_isVisible(const QWidget* self) {
	return self->isVisible();
}

bool QWidget_isVisibleTo(const QWidget* self, QWidget* param1) {
	return self->isVisibleTo(param1);
}

bool QWidget_isHidden(const QWidget* self) {
	return self->isHidden();
}

bool QWidget_isMinimized(const QWidget* self) {
	return self->isMinimized();
}

bool QWidget_isMaximized(const QWidget* self) {
	return self->isMaximized();
}

bool QWidget_isFullScreen(const QWidget* self) {
	return self->isFullScreen();
}

int QWidget_windowState(const QWidget* self) {
	Qt::WindowStates _ret = self->windowState();
	return static_cast<int>(_ret);
}

void QWidget_setWindowState(QWidget* self, int state) {
	self->setWindowState(static_cast<Qt::WindowStates>(state));
}

void QWidget_overrideWindowState(QWidget* self, int state) {
	self->overrideWindowState(static_cast<Qt::WindowStates>(state));
}

QSize* QWidget_sizeHint(const QWidget* self) {
	return new QSize(self->sizeHint());
}

QSize* QWidget_minimumSizeHint(const QWidget* self) {
	return new QSize(self->minimumSizeHint());
}

QSizePolicy* QWidget_sizePolicy(const QWidget* self) {
	return new QSizePolicy(self->sizePolicy());
}

void QWidget_setSizePolicy(QWidget* self, QSizePolicy* sizePolicy) {
	self->setSizePolicy(*sizePolicy);
}

void QWidget_setSizePolicy2(QWidget* self, int horizontal, int vertical) {
	self->setSizePolicy(static_cast<QSizePolicy::Policy>(horizontal), static_cast<QSizePolicy::Policy>(vertical));
}

int QWidget_heightForWidth(const QWidget* self, int param1) {
	return self->heightForWidth(static_cast<int>(param1));
}

bool QWidget_hasHeightForWidth(const QWidget* self) {
	return self->hasHeightForWidth();
}

QRegion* QWidget_visibleRegion(const QWidget* self) {
	return new QRegion(self->visibleRegion());
}

void QWidget_setContentsMargins(QWidget* self, int left, int top, int right, int bottom) {
	self->setContentsMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

void QWidget_setContentsMarginsWithMargins(QWidget* self, QMargins* margins) {
	self->setContentsMargins(*margins);
}

void QWidget_getContentsMargins(const QWidget* self, int* left, int* top, int* right, int* bottom) {
	self->getContentsMargins(static_cast<int*>(left), static_cast<int*>(top), static_cast<int*>(right), static_cast<int*>(bottom));
}

QMargins* QWidget_contentsMargins(const QWidget* self) {
	return new QMargins(self->contentsMargins());
}

QRect* QWidget_contentsRect(const QWidget* self) {
	return new QRect(self->contentsRect());
}

QLayout* QWidget_layout(const QWidget* self) {
	return self->layout();
}

void QWidget_setLayout(QWidget* self, QLayout* layout) {
	self->setLayout(layout);
}

void QWidget_updateGeometry(QWidget* self) {
	self->updateGeometry();
}

void QWidget_setParent(QWidget* self, QWidget* parent) {
	self->setParent(parent);
}

void QWidget_setParent2(QWidget* self, QWidget* parent, int f) {
	self->setParent(parent, static_cast<Qt::WindowFlags>(f));
}

void QWidget_scroll(QWidget* self, int dx, int dy) {
	self->scroll(static_cast<int>(dx), static_cast<int>(dy));
}

void QWidget_scroll2(QWidget* self, int dx, int dy, QRect* param3) {
	self->scroll(static_cast<int>(dx), static_cast<int>(dy), *param3);
}

QWidget* QWidget_focusWidget(const QWidget* self) {
	return self->focusWidget();
}

QWidget* QWidget_nextInFocusChain(const QWidget* self) {
	return self->nextInFocusChain();
}

QWidget* QWidget_previousInFocusChain(const QWidget* self) {
	return self->previousInFocusChain();
}

bool QWidget_acceptDrops(const QWidget* self) {
	return self->acceptDrops();
}

void QWidget_setAcceptDrops(QWidget* self, bool on) {
	self->setAcceptDrops(on);
}

void QWidget_addAction(QWidget* self, QAction* action) {
	self->addAction(action);
}

void QWidget_addActions(QWidget* self, struct miqt_array /* of QAction* */  actions) {
	QList<QAction *> actions_QList;
	actions_QList.reserve(actions.len);
	QAction** actions_arr = static_cast<QAction**>(actions.data);
	for(size_t i = 0; i < actions.len; ++i) {
		actions_QList.push_back(actions_arr[i]);
	}
	self->addActions(actions_QList);
}

void QWidget_insertActions(QWidget* self, QAction* before, struct miqt_array /* of QAction* */  actions) {
	QList<QAction *> actions_QList;
	actions_QList.reserve(actions.len);
	QAction** actions_arr = static_cast<QAction**>(actions.data);
	for(size_t i = 0; i < actions.len; ++i) {
		actions_QList.push_back(actions_arr[i]);
	}
	self->insertActions(before, actions_QList);
}

void QWidget_insertAction(QWidget* self, QAction* before, QAction* action) {
	self->insertAction(before, action);
}

void QWidget_removeAction(QWidget* self, QAction* action) {
	self->removeAction(action);
}

struct miqt_array /* of QAction* */  QWidget_actions(const QWidget* self) {
	QList<QAction *> _ret = self->actions();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAction** _arr = static_cast<QAction**>(malloc(sizeof(QAction*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QWidget* QWidget_parentWidget(const QWidget* self) {
	return self->parentWidget();
}

void QWidget_setWindowFlags(QWidget* self, int type) {
	self->setWindowFlags(static_cast<Qt::WindowFlags>(type));
}

int QWidget_windowFlags(const QWidget* self) {
	Qt::WindowFlags _ret = self->windowFlags();
	return static_cast<int>(_ret);
}

void QWidget_setWindowFlag(QWidget* self, int param1) {
	self->setWindowFlag(static_cast<Qt::WindowType>(param1));
}

void QWidget_overrideWindowFlags(QWidget* self, int type) {
	self->overrideWindowFlags(static_cast<Qt::WindowFlags>(type));
}

int QWidget_windowType(const QWidget* self) {
	Qt::WindowType _ret = self->windowType();
	return static_cast<int>(_ret);
}

QWidget* QWidget_find(uintptr_t param1) {
	return QWidget::find(static_cast<WId>(param1));
}

QWidget* QWidget_childAt(const QWidget* self, int x, int y) {
	return self->childAt(static_cast<int>(x), static_cast<int>(y));
}

QWidget* QWidget_childAtWithQPoint(const QWidget* self, QPoint* p) {
	return self->childAt(*p);
}

void QWidget_setAttribute(QWidget* self, int param1) {
	self->setAttribute(static_cast<Qt::WidgetAttribute>(param1));
}

bool QWidget_testAttribute(const QWidget* self, int param1) {
	return self->testAttribute(static_cast<Qt::WidgetAttribute>(param1));
}

QPaintEngine* QWidget_paintEngine(const QWidget* self) {
	return self->paintEngine();
}

void QWidget_ensurePolished(const QWidget* self) {
	self->ensurePolished();
}

bool QWidget_isAncestorOf(const QWidget* self, QWidget* child) {
	return self->isAncestorOf(child);
}

bool QWidget_autoFillBackground(const QWidget* self) {
	return self->autoFillBackground();
}

void QWidget_setAutoFillBackground(QWidget* self, bool enabled) {
	self->setAutoFillBackground(enabled);
}

QBackingStore* QWidget_backingStore(const QWidget* self) {
	return self->backingStore();
}

QWindow* QWidget_windowHandle(const QWidget* self) {
	return self->windowHandle();
}

QScreen* QWidget_screen(const QWidget* self) {
	return self->screen();
}

QWidget* QWidget_createWindowContainer(QWindow* window) {
	return QWidget::createWindowContainer(window);
}

void QWidget_windowTitleChanged(QWidget* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->windowTitleChanged(title_QString);
}

void QWidget_connect_windowTitleChanged(QWidget* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& title) {
			const QString title_ret = title;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray title_b = title_ret.toUtf8();
			struct miqt_string title_ms;
			title_ms.len = title_b.length();
			title_ms.data = static_cast<char*>(malloc(title_ms.len));
			memcpy(title_ms.data, title_b.data(), title_ms.len);
			struct miqt_string sigval1 = title_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQWidget::connect(self, static_cast<void (QWidget::*)(const QString&)>(&QWidget::windowTitleChanged), self, local_caller{slot, callback, release});
}

void QWidget_windowIconChanged(QWidget* self, QIcon* icon) {
	self->windowIconChanged(*icon);
}

void QWidget_connect_windowIconChanged(QWidget* self, intptr_t slot, void (*callback)(intptr_t, QIcon*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QIcon*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QIcon*);
		void operator()(const QIcon& icon) {
			const QIcon& icon_ret = icon;
			// Cast returned reference into pointer
			QIcon* sigval1 = const_cast<QIcon*>(&icon_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQWidget::connect(self, static_cast<void (QWidget::*)(const QIcon&)>(&QWidget::windowIconChanged), self, local_caller{slot, callback, release});
}

void QWidget_windowIconTextChanged(QWidget* self, struct miqt_string iconText) {
	QString iconText_QString = QString::fromUtf8(iconText.data, iconText.len);
	self->windowIconTextChanged(iconText_QString);
}

void QWidget_connect_windowIconTextChanged(QWidget* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& iconText) {
			const QString iconText_ret = iconText;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray iconText_b = iconText_ret.toUtf8();
			struct miqt_string iconText_ms;
			iconText_ms.len = iconText_b.length();
			iconText_ms.data = static_cast<char*>(malloc(iconText_ms.len));
			memcpy(iconText_ms.data, iconText_b.data(), iconText_ms.len);
			struct miqt_string sigval1 = iconText_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQWidget::connect(self, static_cast<void (QWidget::*)(const QString&)>(&QWidget::windowIconTextChanged), self, local_caller{slot, callback, release});
}

void QWidget_customContextMenuRequested(QWidget* self, QPoint* pos) {
	self->customContextMenuRequested(*pos);
}

void QWidget_connect_customContextMenuRequested(QWidget* self, intptr_t slot, void (*callback)(intptr_t, QPoint*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QPoint*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QPoint*);
		void operator()(const QPoint& pos) {
			const QPoint& pos_ret = pos;
			// Cast returned reference into pointer
			QPoint* sigval1 = const_cast<QPoint*>(&pos_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQWidget::connect(self, static_cast<void (QWidget::*)(const QPoint&)>(&QWidget::customContextMenuRequested), self, local_caller{slot, callback, release});
}

QVariant* QWidget_inputMethodQuery(const QWidget* self, int param1) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

int QWidget_inputMethodHints(const QWidget* self) {
	Qt::InputMethodHints _ret = self->inputMethodHints();
	return static_cast<int>(_ret);
}

void QWidget_setInputMethodHints(QWidget* self, int hints) {
	self->setInputMethodHints(static_cast<Qt::InputMethodHints>(hints));
}

struct miqt_string QWidget_tr2(const char* s, const char* c) {
	QString _ret = QWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWidget_trUtf82(const char* s, const char* c) {
	QString _ret = QWidget::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWidget_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWidget::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWidget_render2(QWidget* self, QPaintDevice* target, QPoint* targetOffset) {
	self->render(target, *targetOffset);
}

void QWidget_render3(QWidget* self, QPaintDevice* target, QPoint* targetOffset, QRegion* sourceRegion) {
	self->render(target, *targetOffset, *sourceRegion);
}

void QWidget_render4(QWidget* self, QPaintDevice* target, QPoint* targetOffset, QRegion* sourceRegion, int renderFlags) {
	self->render(target, *targetOffset, *sourceRegion, static_cast<QWidget::RenderFlags>(renderFlags));
}

void QWidget_render22(QWidget* self, QPainter* painter, QPoint* targetOffset) {
	self->render(painter, *targetOffset);
}

void QWidget_render32(QWidget* self, QPainter* painter, QPoint* targetOffset, QRegion* sourceRegion) {
	self->render(painter, *targetOffset, *sourceRegion);
}

void QWidget_render42(QWidget* self, QPainter* painter, QPoint* targetOffset, QRegion* sourceRegion, int renderFlags) {
	self->render(painter, *targetOffset, *sourceRegion, static_cast<QWidget::RenderFlags>(renderFlags));
}

QPixmap* QWidget_grab1(QWidget* self, QRect* rectangle) {
	return new QPixmap(self->grab(*rectangle));
}

void QWidget_grabGesture2(QWidget* self, int type, int flags) {
	self->grabGesture(static_cast<Qt::GestureType>(type), static_cast<Qt::GestureFlags>(flags));
}

int QWidget_grabShortcut2(QWidget* self, QKeySequence* key, int context) {
	return self->grabShortcut(*key, static_cast<Qt::ShortcutContext>(context));
}

void QWidget_setShortcutEnabled2(QWidget* self, int id, bool enable) {
	self->setShortcutEnabled(static_cast<int>(id), enable);
}

void QWidget_setShortcutAutoRepeat2(QWidget* self, int id, bool enable) {
	self->setShortcutAutoRepeat(static_cast<int>(id), enable);
}

void QWidget_setWindowFlag2(QWidget* self, int param1, bool on) {
	self->setWindowFlag(static_cast<Qt::WindowType>(param1), on);
}

void QWidget_setAttribute2(QWidget* self, int param1, bool on) {
	self->setAttribute(static_cast<Qt::WidgetAttribute>(param1), on);
}

QWidget* QWidget_createWindowContainer2(QWindow* window, QWidget* parent) {
	return QWidget::createWindowContainer(window, parent);
}

QWidget* QWidget_createWindowContainer3(QWindow* window, QWidget* parent, int flags) {
	return QWidget::createWindowContainer(window, parent, static_cast<Qt::WindowFlags>(flags));
}

QMetaObject* QWidget_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQWidget*)(self) )->QWidget::metaObject();

}

void* QWidget_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQWidget*)(self) )->QWidget::qt_metacast(param1);

}

int QWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQWidget*)(self) )->QWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

int QWidget_virtualbase_devType(const void* self) {

	return ( (const VirtualQWidget*)(self) )->QWidget::devType();

}

void QWidget_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQWidget*)(self) )->QWidget::setVisible(visible);

}

QSize* QWidget_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQWidget*)(self) )->QWidget::sizeHint());

}

QSize* QWidget_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQWidget*)(self) )->QWidget::minimumSizeHint());

}

int QWidget_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQWidget*)(self) )->QWidget::heightForWidth(static_cast<int>(param1));

}

bool QWidget_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQWidget*)(self) )->QWidget::hasHeightForWidth();

}

QPaintEngine* QWidget_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQWidget*)(self) )->QWidget::paintEngine();

}

bool QWidget_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQWidget*)(self) )->QWidget::event(event);

}

void QWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::mousePressEvent(event);

}

void QWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::mouseReleaseEvent(event);

}

void QWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::mouseDoubleClickEvent(event);

}

void QWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::mouseMoveEvent(event);

}

void QWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::wheelEvent(event);

}

void QWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::keyPressEvent(event);

}

void QWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::keyReleaseEvent(event);

}

void QWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::focusInEvent(event);

}

void QWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::focusOutEvent(event);

}

void QWidget_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::enterEvent(event);

}

void QWidget_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::leaveEvent(event);

}

void QWidget_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::paintEvent(event);

}

void QWidget_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::moveEvent(event);

}

void QWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::resizeEvent(event);

}

void QWidget_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::closeEvent(event);

}

void QWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::contextMenuEvent(event);

}

void QWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::tabletEvent(event);

}

void QWidget_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::actionEvent(event);

}

void QWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::dragEnterEvent(event);

}

void QWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::dragMoveEvent(event);

}

void QWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::dragLeaveEvent(event);

}

void QWidget_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::dropEvent(event);

}

void QWidget_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::showEvent(event);

}

void QWidget_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::hideEvent(event);

}

bool QWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQWidget*)(self) )->QWidget::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

void QWidget_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQWidget*)(self) )->QWidget::changeEvent(param1);

}

int QWidget_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQWidget*)(self) )->QWidget::metric(static_cast<VirtualQWidget::PaintDeviceMetric>(param1));

}

void QWidget_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQWidget*)(self) )->QWidget::initPainter(painter);

}

QPaintDevice* QWidget_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQWidget*)(self) )->QWidget::redirected(offset);

}

QPainter* QWidget_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQWidget*)(self) )->QWidget::sharedPainter();

}

void QWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQWidget*)(self) )->QWidget::inputMethodEvent(param1);

}

QVariant* QWidget_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQWidget*)(self) )->QWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QWidget_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQWidget*)(self) )->QWidget::focusNextPrevChild(next);

}

bool QWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQWidget*)(self) )->QWidget::eventFilter(watched, event);

}

void QWidget_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::timerEvent(event);

}

void QWidget_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::childEvent(event);

}

void QWidget_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQWidget*)(self) )->QWidget::customEvent(event);

}

void QWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWidget*)(self) )->QWidget::connectNotify(*signal);

}

void QWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWidget*)(self) )->QWidget::disconnectNotify(*signal);

}

const QMetaObject* QWidget_staticMetaObject() { return &QWidget::staticMetaObject; }
void QWidget_protectedbase_updateMicroFocus(void* self) {
	VirtualQWidget* self_cast = static_cast<VirtualQWidget*>( (QWidget*)(self) );
	
	self_cast->updateMicroFocus();

}

void QWidget_protectedbase_create(void* self) {
	VirtualQWidget* self_cast = static_cast<VirtualQWidget*>( (QWidget*)(self) );
	
	self_cast->create();

}

void QWidget_protectedbase_destroy(void* self) {
	VirtualQWidget* self_cast = static_cast<VirtualQWidget*>( (QWidget*)(self) );
	
	self_cast->destroy();

}

bool QWidget_protectedbase_focusNextChild(void* self) {
	VirtualQWidget* self_cast = static_cast<VirtualQWidget*>( (QWidget*)(self) );
	
	return self_cast->focusNextChild();

}

bool QWidget_protectedbase_focusPreviousChild(void* self) {
	VirtualQWidget* self_cast = static_cast<VirtualQWidget*>( (QWidget*)(self) );
	
	return self_cast->focusPreviousChild();

}

void QWidget_protectedbase_create1(void* self, uintptr_t param1) {
	VirtualQWidget* self_cast = static_cast<VirtualQWidget*>( (QWidget*)(self) );
	
	self_cast->create(static_cast<WId>(param1));

}

void QWidget_protectedbase_create2(void* self, uintptr_t param1, bool initializeWindow) {
	VirtualQWidget* self_cast = static_cast<VirtualQWidget*>( (QWidget*)(self) );
	
	self_cast->create(static_cast<WId>(param1), initializeWindow);

}

void QWidget_protectedbase_create3(void* self, uintptr_t param1, bool initializeWindow, bool destroyOldWindow) {
	VirtualQWidget* self_cast = static_cast<VirtualQWidget*>( (QWidget*)(self) );
	
	self_cast->create(static_cast<WId>(param1), initializeWindow, destroyOldWindow);

}

void QWidget_protectedbase_destroy1(void* self, bool destroyWindow) {
	VirtualQWidget* self_cast = static_cast<VirtualQWidget*>( (QWidget*)(self) );
	
	self_cast->destroy(destroyWindow);

}

void QWidget_protectedbase_destroy2(void* self, bool destroyWindow, bool destroySubWindows) {
	VirtualQWidget* self_cast = static_cast<VirtualQWidget*>( (QWidget*)(self) );
	
	self_cast->destroy(destroyWindow, destroySubWindows);

}

QObject* QWidget_protectedbase_sender(const void* self) {
	VirtualQWidget* self_cast = static_cast<VirtualQWidget*>( (QWidget*)(self) );
	
	return self_cast->sender();

}

int QWidget_protectedbase_senderSignalIndex(const void* self) {
	VirtualQWidget* self_cast = static_cast<VirtualQWidget*>( (QWidget*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QWidget_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQWidget* self_cast = static_cast<VirtualQWidget*>( (QWidget*)(self) );
	
	return self_cast->receivers(signal);

}

bool QWidget_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQWidget* self_cast = static_cast<VirtualQWidget*>( (QWidget*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QWidget_delete(QWidget* self) {
	delete self;
}

