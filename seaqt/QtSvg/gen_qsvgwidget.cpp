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
#include <QSvgRenderer>
#include <QSvgWidget>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qsvgwidget.h>
#include "gen_qsvgwidget.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSvgWidget final : public QSvgWidget {
	struct QSvgWidget_VTable* vtbl;
public:

	VirtualQSvgWidget(struct QSvgWidget_VTable* vtbl, QWidget* parent): QSvgWidget(parent), vtbl(vtbl) {};
	VirtualQSvgWidget(struct QSvgWidget_VTable* vtbl): QSvgWidget(), vtbl(vtbl) {};
	VirtualQSvgWidget(struct QSvgWidget_VTable* vtbl, const QString& file): QSvgWidget(file), vtbl(vtbl) {};
	VirtualQSvgWidget(struct QSvgWidget_VTable* vtbl, const QString& file, QWidget* parent): QSvgWidget(file, parent), vtbl(vtbl) {};

	virtual ~VirtualQSvgWidget() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSvgWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QSvgWidget_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSvgWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QSvgWidget_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSvgWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSvgWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSvgWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QSvgWidget_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QSvgWidget::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QSvgWidget::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QSvgWidget_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QSvgWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QSvgWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QSvgWidget_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QSvgWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSvgWidget_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QSvgWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QSvgWidget_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QSvgWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QSvgWidget_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSvgWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSvgWidget_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QSvgWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QSvgWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QSvgWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QSvgWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QSvgWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QSvgWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QSvgWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QSvgWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QSvgWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QSvgWidget::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QSvgWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QSvgWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QSvgWidget::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QSvgWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QSvgWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QSvgWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QSvgWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QSvgWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QSvgWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QSvgWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QSvgWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QSvgWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QSvgWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QSvgWidget::nativeEvent(eventType, message, result);
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

	friend bool QSvgWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QSvgWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QSvgWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSvgWidget_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QSvgWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QSvgWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QSvgWidget_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QSvgWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QSvgWidget_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QSvgWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QSvgWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QSvgWidget_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QSvgWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSvgWidget_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSvgWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSvgWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSvgWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSvgWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSvgWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSvgWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSvgWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QSvgWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSvgWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QSvgWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QSvgWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QSvgWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QSvgWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QSvgWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QSvgWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QSvgWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QSvgWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QSvgWidget* QSvgWidget_new(struct QSvgWidget_VTable* vtbl, QWidget* parent) {
	return new VirtualQSvgWidget(vtbl, parent);
}

QSvgWidget* QSvgWidget_new2(struct QSvgWidget_VTable* vtbl) {
	return new VirtualQSvgWidget(vtbl);
}

QSvgWidget* QSvgWidget_new3(struct QSvgWidget_VTable* vtbl, struct miqt_string file) {
	QString file_QString = QString::fromUtf8(file.data, file.len);
	return new VirtualQSvgWidget(vtbl, file_QString);
}

QSvgWidget* QSvgWidget_new4(struct QSvgWidget_VTable* vtbl, struct miqt_string file, QWidget* parent) {
	QString file_QString = QString::fromUtf8(file.data, file.len);
	return new VirtualQSvgWidget(vtbl, file_QString, parent);
}

void QSvgWidget_virtbase(QSvgWidget* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QSvgWidget_metaObject(const QSvgWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSvgWidget_metacast(QSvgWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSvgWidget_metacall(QSvgWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSvgWidget_tr(const char* s) {
	QString _ret = QSvgWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSvgWidget_trUtf8(const char* s) {
	QString _ret = QSvgWidget::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSvgRenderer* QSvgWidget_renderer(const QSvgWidget* self) {
	return self->renderer();
}

QSize* QSvgWidget_sizeHint(const QSvgWidget* self) {
	return new QSize(self->sizeHint());
}

void QSvgWidget_load(QSvgWidget* self, struct miqt_string file) {
	QString file_QString = QString::fromUtf8(file.data, file.len);
	self->load(file_QString);
}

void QSvgWidget_loadWithContents(QSvgWidget* self, struct miqt_string contents) {
	QByteArray contents_QByteArray(contents.data, contents.len);
	self->load(contents_QByteArray);
}

struct miqt_string QSvgWidget_tr2(const char* s, const char* c) {
	QString _ret = QSvgWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSvgWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QSvgWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSvgWidget_trUtf82(const char* s, const char* c) {
	QString _ret = QSvgWidget::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSvgWidget_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSvgWidget::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSvgWidget_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSvgWidget*)(self) )->QSvgWidget::metaObject();

}

void* QSvgWidget_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSvgWidget*)(self) )->QSvgWidget::qt_metacast(param1);

}

int QSvgWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSvgWidget*)(self) )->QSvgWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QSvgWidget_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQSvgWidget*)(self) )->QSvgWidget::sizeHint());

}

void QSvgWidget_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::paintEvent(event);

}

int QSvgWidget_virtualbase_devType(const void* self) {

	return ( (const VirtualQSvgWidget*)(self) )->QSvgWidget::devType();

}

void QSvgWidget_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::setVisible(visible);

}

QSize* QSvgWidget_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQSvgWidget*)(self) )->QSvgWidget::minimumSizeHint());

}

int QSvgWidget_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQSvgWidget*)(self) )->QSvgWidget::heightForWidth(static_cast<int>(param1));

}

bool QSvgWidget_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQSvgWidget*)(self) )->QSvgWidget::hasHeightForWidth();

}

QPaintEngine* QSvgWidget_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQSvgWidget*)(self) )->QSvgWidget::paintEngine();

}

bool QSvgWidget_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQSvgWidget*)(self) )->QSvgWidget::event(event);

}

void QSvgWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::mousePressEvent(event);

}

void QSvgWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::mouseReleaseEvent(event);

}

void QSvgWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::mouseDoubleClickEvent(event);

}

void QSvgWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::mouseMoveEvent(event);

}

void QSvgWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::wheelEvent(event);

}

void QSvgWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::keyPressEvent(event);

}

void QSvgWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::keyReleaseEvent(event);

}

void QSvgWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::focusInEvent(event);

}

void QSvgWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::focusOutEvent(event);

}

void QSvgWidget_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::enterEvent(event);

}

void QSvgWidget_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::leaveEvent(event);

}

void QSvgWidget_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::moveEvent(event);

}

void QSvgWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::resizeEvent(event);

}

void QSvgWidget_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::closeEvent(event);

}

void QSvgWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::contextMenuEvent(event);

}

void QSvgWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::tabletEvent(event);

}

void QSvgWidget_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::actionEvent(event);

}

void QSvgWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::dragEnterEvent(event);

}

void QSvgWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::dragMoveEvent(event);

}

void QSvgWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::dragLeaveEvent(event);

}

void QSvgWidget_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::dropEvent(event);

}

void QSvgWidget_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::showEvent(event);

}

void QSvgWidget_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::hideEvent(event);

}

bool QSvgWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQSvgWidget*)(self) )->QSvgWidget::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

void QSvgWidget_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::changeEvent(param1);

}

int QSvgWidget_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQSvgWidget*)(self) )->QSvgWidget::metric(static_cast<VirtualQSvgWidget::PaintDeviceMetric>(param1));

}

void QSvgWidget_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQSvgWidget*)(self) )->QSvgWidget::initPainter(painter);

}

QPaintDevice* QSvgWidget_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQSvgWidget*)(self) )->QSvgWidget::redirected(offset);

}

QPainter* QSvgWidget_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQSvgWidget*)(self) )->QSvgWidget::sharedPainter();

}

void QSvgWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::inputMethodEvent(param1);

}

QVariant* QSvgWidget_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQSvgWidget*)(self) )->QSvgWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QSvgWidget_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQSvgWidget*)(self) )->QSvgWidget::focusNextPrevChild(next);

}

bool QSvgWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSvgWidget*)(self) )->QSvgWidget::eventFilter(watched, event);

}

void QSvgWidget_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::timerEvent(event);

}

void QSvgWidget_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::childEvent(event);

}

void QSvgWidget_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::customEvent(event);

}

void QSvgWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::connectNotify(*signal);

}

void QSvgWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSvgWidget*)(self) )->QSvgWidget::disconnectNotify(*signal);

}

const QMetaObject* QSvgWidget_staticMetaObject() { return &QSvgWidget::staticMetaObject; }
void QSvgWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQSvgWidget* self_cast = dynamic_cast<VirtualQSvgWidget*>( (QSvgWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QSvgWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQSvgWidget* self_cast = dynamic_cast<VirtualQSvgWidget*>( (QSvgWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QSvgWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQSvgWidget* self_cast = dynamic_cast<VirtualQSvgWidget*>( (QSvgWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QSvgWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQSvgWidget* self_cast = dynamic_cast<VirtualQSvgWidget*>( (QSvgWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QSvgWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQSvgWidget* self_cast = dynamic_cast<VirtualQSvgWidget*>( (QSvgWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QSvgWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSvgWidget* self_cast = dynamic_cast<VirtualQSvgWidget*>( (QSvgWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QSvgWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSvgWidget* self_cast = dynamic_cast<VirtualQSvgWidget*>( (QSvgWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QSvgWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQSvgWidget* self_cast = dynamic_cast<VirtualQSvgWidget*>( (QSvgWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QSvgWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQSvgWidget* self_cast = dynamic_cast<VirtualQSvgWidget*>( (QSvgWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QSvgWidget_delete(QSvgWidget* self) {
	delete self;
}

