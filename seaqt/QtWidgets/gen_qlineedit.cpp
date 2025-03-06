#include <QAction>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QCompleter>
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
#include <QLineEdit>
#include <QMargins>
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
#include <QRect>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QValidator>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qlineedit.h>
#include "gen_qlineedit.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQLineEdit final : public QLineEdit {
	struct QLineEdit_VTable* vtbl;
public:

	VirtualQLineEdit(struct QLineEdit_VTable* vtbl, QWidget* parent): QLineEdit(parent), vtbl(vtbl) {};
	VirtualQLineEdit(struct QLineEdit_VTable* vtbl): QLineEdit(), vtbl(vtbl) {};
	VirtualQLineEdit(struct QLineEdit_VTable* vtbl, const QString& param1): QLineEdit(param1), vtbl(vtbl) {};
	VirtualQLineEdit(struct QLineEdit_VTable* vtbl, const QString& param1, QWidget* parent): QLineEdit(param1, parent), vtbl(vtbl) {};

	virtual ~VirtualQLineEdit() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QLineEdit::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QLineEdit_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QLineEdit::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QLineEdit_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QLineEdit::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QLineEdit_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QLineEdit::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QLineEdit_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QLineEdit::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QLineEdit_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QLineEdit::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QLineEdit::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QLineEdit::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QLineEdit::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QLineEdit::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QLineEdit::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_focusInEvent(void* self, QFocusEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QLineEdit::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QLineEdit::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QLineEdit::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* e) override {
		if (vtbl->dragMoveEvent == 0) {
			QLineEdit::dragMoveEvent(e);
			return;
		}

		QDragMoveEvent* sigval1 = e;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* e) override {
		if (vtbl->dragLeaveEvent == 0) {
			QLineEdit::dragLeaveEvent(e);
			return;
		}

		QDragLeaveEvent* sigval1 = e;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QLineEdit::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_dropEvent(void* self, QDropEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QLineEdit::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QLineEdit::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QLineEdit::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QLineEdit::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QLineEdit_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QLineEdit::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QLineEdit_virtualbase_event(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QLineEdit::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QLineEdit_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QLineEdit::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QLineEdit::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QLineEdit_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QLineEdit::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QLineEdit_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QLineEdit::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QLineEdit_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QLineEdit::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QLineEdit::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QLineEdit::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QLineEdit::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QLineEdit::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QLineEdit::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QLineEdit::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QLineEdit::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QLineEdit::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QLineEdit::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QLineEdit::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QLineEdit::nativeEvent(eventType, message, result);
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

	friend bool QLineEdit_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QLineEdit::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QLineEdit_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QLineEdit::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QLineEdit::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QLineEdit_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QLineEdit::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QLineEdit_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QLineEdit::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QLineEdit_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QLineEdit::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QLineEdit_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QLineEdit::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QLineEdit::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QLineEdit::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QLineEdit::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QLineEdit::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QLineEdit_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QLineEdit_protectedbase_initStyleOption(const void* self, QStyleOptionFrame* option);
	friend QRect* QLineEdit_protectedbase_cursorRect(const void* self);
	friend void QLineEdit_protectedbase_updateMicroFocus(void* self);
	friend void QLineEdit_protectedbase_create(void* self);
	friend void QLineEdit_protectedbase_destroy(void* self);
	friend bool QLineEdit_protectedbase_focusNextChild(void* self);
	friend bool QLineEdit_protectedbase_focusPreviousChild(void* self);
	friend QObject* QLineEdit_protectedbase_sender(const void* self);
	friend int QLineEdit_protectedbase_senderSignalIndex(const void* self);
	friend int QLineEdit_protectedbase_receivers(const void* self, const char* signal);
	friend bool QLineEdit_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QLineEdit* QLineEdit_new(struct QLineEdit_VTable* vtbl, QWidget* parent) {
	return new VirtualQLineEdit(vtbl, parent);
}

QLineEdit* QLineEdit_new2(struct QLineEdit_VTable* vtbl) {
	return new VirtualQLineEdit(vtbl);
}

QLineEdit* QLineEdit_new3(struct QLineEdit_VTable* vtbl, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	return new VirtualQLineEdit(vtbl, param1_QString);
}

QLineEdit* QLineEdit_new4(struct QLineEdit_VTable* vtbl, struct miqt_string param1, QWidget* parent) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	return new VirtualQLineEdit(vtbl, param1_QString, parent);
}

void QLineEdit_virtbase(QLineEdit* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QLineEdit_metaObject(const QLineEdit* self) {
	return (QMetaObject*) self->metaObject();
}

void* QLineEdit_metacast(QLineEdit* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QLineEdit_metacall(QLineEdit* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QLineEdit_tr(const char* s) {
	QString _ret = QLineEdit::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLineEdit_trUtf8(const char* s) {
	QString _ret = QLineEdit::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLineEdit_text(const QLineEdit* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLineEdit_displayText(const QLineEdit* self) {
	QString _ret = self->displayText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLineEdit_placeholderText(const QLineEdit* self) {
	QString _ret = self->placeholderText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QLineEdit_setPlaceholderText(QLineEdit* self, struct miqt_string placeholderText) {
	QString placeholderText_QString = QString::fromUtf8(placeholderText.data, placeholderText.len);
	self->setPlaceholderText(placeholderText_QString);
}

int QLineEdit_maxLength(const QLineEdit* self) {
	return self->maxLength();
}

void QLineEdit_setMaxLength(QLineEdit* self, int maxLength) {
	self->setMaxLength(static_cast<int>(maxLength));
}

void QLineEdit_setFrame(QLineEdit* self, bool frame) {
	self->setFrame(frame);
}

bool QLineEdit_hasFrame(const QLineEdit* self) {
	return self->hasFrame();
}

void QLineEdit_setClearButtonEnabled(QLineEdit* self, bool enable) {
	self->setClearButtonEnabled(enable);
}

bool QLineEdit_isClearButtonEnabled(const QLineEdit* self) {
	return self->isClearButtonEnabled();
}

int QLineEdit_echoMode(const QLineEdit* self) {
	QLineEdit::EchoMode _ret = self->echoMode();
	return static_cast<int>(_ret);
}

void QLineEdit_setEchoMode(QLineEdit* self, int echoMode) {
	self->setEchoMode(static_cast<QLineEdit::EchoMode>(echoMode));
}

bool QLineEdit_isReadOnly(const QLineEdit* self) {
	return self->isReadOnly();
}

void QLineEdit_setReadOnly(QLineEdit* self, bool readOnly) {
	self->setReadOnly(readOnly);
}

void QLineEdit_setValidator(QLineEdit* self, QValidator* validator) {
	self->setValidator(validator);
}

QValidator* QLineEdit_validator(const QLineEdit* self) {
	return (QValidator*) self->validator();
}

void QLineEdit_setCompleter(QLineEdit* self, QCompleter* completer) {
	self->setCompleter(completer);
}

QCompleter* QLineEdit_completer(const QLineEdit* self) {
	return self->completer();
}

QSize* QLineEdit_sizeHint(const QLineEdit* self) {
	return new QSize(self->sizeHint());
}

QSize* QLineEdit_minimumSizeHint(const QLineEdit* self) {
	return new QSize(self->minimumSizeHint());
}

int QLineEdit_cursorPosition(const QLineEdit* self) {
	return self->cursorPosition();
}

void QLineEdit_setCursorPosition(QLineEdit* self, int cursorPosition) {
	self->setCursorPosition(static_cast<int>(cursorPosition));
}

int QLineEdit_cursorPositionAt(QLineEdit* self, QPoint* pos) {
	return self->cursorPositionAt(*pos);
}

void QLineEdit_setAlignment(QLineEdit* self, int flag) {
	self->setAlignment(static_cast<Qt::Alignment>(flag));
}

int QLineEdit_alignment(const QLineEdit* self) {
	Qt::Alignment _ret = self->alignment();
	return static_cast<int>(_ret);
}

void QLineEdit_cursorForward(QLineEdit* self, bool mark) {
	self->cursorForward(mark);
}

void QLineEdit_cursorBackward(QLineEdit* self, bool mark) {
	self->cursorBackward(mark);
}

void QLineEdit_cursorWordForward(QLineEdit* self, bool mark) {
	self->cursorWordForward(mark);
}

void QLineEdit_cursorWordBackward(QLineEdit* self, bool mark) {
	self->cursorWordBackward(mark);
}

void QLineEdit_backspace(QLineEdit* self) {
	self->backspace();
}

void QLineEdit_del(QLineEdit* self) {
	self->del();
}

void QLineEdit_home(QLineEdit* self, bool mark) {
	self->home(mark);
}

void QLineEdit_end(QLineEdit* self, bool mark) {
	self->end(mark);
}

bool QLineEdit_isModified(const QLineEdit* self) {
	return self->isModified();
}

void QLineEdit_setModified(QLineEdit* self, bool modified) {
	self->setModified(modified);
}

void QLineEdit_setSelection(QLineEdit* self, int param1, int param2) {
	self->setSelection(static_cast<int>(param1), static_cast<int>(param2));
}

bool QLineEdit_hasSelectedText(const QLineEdit* self) {
	return self->hasSelectedText();
}

struct miqt_string QLineEdit_selectedText(const QLineEdit* self) {
	QString _ret = self->selectedText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QLineEdit_selectionStart(const QLineEdit* self) {
	return self->selectionStart();
}

int QLineEdit_selectionEnd(const QLineEdit* self) {
	return self->selectionEnd();
}

int QLineEdit_selectionLength(const QLineEdit* self) {
	return self->selectionLength();
}

bool QLineEdit_isUndoAvailable(const QLineEdit* self) {
	return self->isUndoAvailable();
}

bool QLineEdit_isRedoAvailable(const QLineEdit* self) {
	return self->isRedoAvailable();
}

void QLineEdit_setDragEnabled(QLineEdit* self, bool b) {
	self->setDragEnabled(b);
}

bool QLineEdit_dragEnabled(const QLineEdit* self) {
	return self->dragEnabled();
}

void QLineEdit_setCursorMoveStyle(QLineEdit* self, int style) {
	self->setCursorMoveStyle(static_cast<Qt::CursorMoveStyle>(style));
}

int QLineEdit_cursorMoveStyle(const QLineEdit* self) {
	Qt::CursorMoveStyle _ret = self->cursorMoveStyle();
	return static_cast<int>(_ret);
}

struct miqt_string QLineEdit_inputMask(const QLineEdit* self) {
	QString _ret = self->inputMask();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QLineEdit_setInputMask(QLineEdit* self, struct miqt_string inputMask) {
	QString inputMask_QString = QString::fromUtf8(inputMask.data, inputMask.len);
	self->setInputMask(inputMask_QString);
}

bool QLineEdit_hasAcceptableInput(const QLineEdit* self) {
	return self->hasAcceptableInput();
}

void QLineEdit_setTextMargins(QLineEdit* self, int left, int top, int right, int bottom) {
	self->setTextMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

void QLineEdit_setTextMarginsWithMargins(QLineEdit* self, QMargins* margins) {
	self->setTextMargins(*margins);
}

void QLineEdit_getTextMargins(const QLineEdit* self, int* left, int* top, int* right, int* bottom) {
	self->getTextMargins(static_cast<int*>(left), static_cast<int*>(top), static_cast<int*>(right), static_cast<int*>(bottom));
}

QMargins* QLineEdit_textMargins(const QLineEdit* self) {
	return new QMargins(self->textMargins());
}

void QLineEdit_addAction(QLineEdit* self, QAction* action, int position) {
	self->addAction(action, static_cast<QLineEdit::ActionPosition>(position));
}

QAction* QLineEdit_addAction2(QLineEdit* self, QIcon* icon, int position) {
	return self->addAction(*icon, static_cast<QLineEdit::ActionPosition>(position));
}

void QLineEdit_setText(QLineEdit* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

void QLineEdit_clear(QLineEdit* self) {
	self->clear();
}

void QLineEdit_selectAll(QLineEdit* self) {
	self->selectAll();
}

void QLineEdit_undo(QLineEdit* self) {
	self->undo();
}

void QLineEdit_redo(QLineEdit* self) {
	self->redo();
}

void QLineEdit_cut(QLineEdit* self) {
	self->cut();
}

void QLineEdit_copy(const QLineEdit* self) {
	self->copy();
}

void QLineEdit_paste(QLineEdit* self) {
	self->paste();
}

void QLineEdit_deselect(QLineEdit* self) {
	self->deselect();
}

void QLineEdit_insert(QLineEdit* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->insert(param1_QString);
}

QMenu* QLineEdit_createStandardContextMenu(QLineEdit* self) {
	return self->createStandardContextMenu();
}

void QLineEdit_textChanged(QLineEdit* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->textChanged(param1_QString);
}

void QLineEdit_connect_textChanged(QLineEdit* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& param1) {
			const QString param1_ret = param1;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray param1_b = param1_ret.toUtf8();
			struct miqt_string param1_ms;
			param1_ms.len = param1_b.length();
			param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
			memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
			struct miqt_string sigval1 = param1_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQLineEdit::connect(self, static_cast<void (QLineEdit::*)(const QString&)>(&QLineEdit::textChanged), self, local_caller{slot, callback, release});
}

void QLineEdit_textEdited(QLineEdit* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->textEdited(param1_QString);
}

void QLineEdit_connect_textEdited(QLineEdit* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& param1) {
			const QString param1_ret = param1;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray param1_b = param1_ret.toUtf8();
			struct miqt_string param1_ms;
			param1_ms.len = param1_b.length();
			param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
			memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
			struct miqt_string sigval1 = param1_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQLineEdit::connect(self, static_cast<void (QLineEdit::*)(const QString&)>(&QLineEdit::textEdited), self, local_caller{slot, callback, release});
}

void QLineEdit_cursorPositionChanged(QLineEdit* self, int param1, int param2) {
	self->cursorPositionChanged(static_cast<int>(param1), static_cast<int>(param2));
}

void QLineEdit_connect_cursorPositionChanged(QLineEdit* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int param1, int param2) {
			int sigval1 = param1;
			int sigval2 = param2;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQLineEdit::connect(self, static_cast<void (QLineEdit::*)(int, int)>(&QLineEdit::cursorPositionChanged), self, local_caller{slot, callback, release});
}

void QLineEdit_returnPressed(QLineEdit* self) {
	self->returnPressed();
}

void QLineEdit_connect_returnPressed(QLineEdit* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQLineEdit::connect(self, static_cast<void (QLineEdit::*)()>(&QLineEdit::returnPressed), self, local_caller{slot, callback, release});
}

void QLineEdit_editingFinished(QLineEdit* self) {
	self->editingFinished();
}

void QLineEdit_connect_editingFinished(QLineEdit* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQLineEdit::connect(self, static_cast<void (QLineEdit::*)()>(&QLineEdit::editingFinished), self, local_caller{slot, callback, release});
}

void QLineEdit_selectionChanged(QLineEdit* self) {
	self->selectionChanged();
}

void QLineEdit_connect_selectionChanged(QLineEdit* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQLineEdit::connect(self, static_cast<void (QLineEdit::*)()>(&QLineEdit::selectionChanged), self, local_caller{slot, callback, release});
}

void QLineEdit_inputRejected(QLineEdit* self) {
	self->inputRejected();
}

void QLineEdit_connect_inputRejected(QLineEdit* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQLineEdit::connect(self, static_cast<void (QLineEdit::*)()>(&QLineEdit::inputRejected), self, local_caller{slot, callback, release});
}

QVariant* QLineEdit_inputMethodQuery(const QLineEdit* self, int param1) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

QVariant* QLineEdit_inputMethodQuery2(const QLineEdit* self, int property, QVariant* argument) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(property), *argument));
}

bool QLineEdit_event(QLineEdit* self, QEvent* param1) {
	return self->event(param1);
}

struct miqt_string QLineEdit_tr2(const char* s, const char* c) {
	QString _ret = QLineEdit::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLineEdit_tr3(const char* s, const char* c, int n) {
	QString _ret = QLineEdit::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLineEdit_trUtf82(const char* s, const char* c) {
	QString _ret = QLineEdit::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLineEdit_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QLineEdit::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QLineEdit_cursorForward2(QLineEdit* self, bool mark, int steps) {
	self->cursorForward(mark, static_cast<int>(steps));
}

void QLineEdit_cursorBackward2(QLineEdit* self, bool mark, int steps) {
	self->cursorBackward(mark, static_cast<int>(steps));
}

QMetaObject* QLineEdit_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQLineEdit*)(self) )->QLineEdit::metaObject();

}

void* QLineEdit_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQLineEdit*)(self) )->QLineEdit::qt_metacast(param1);

}

int QLineEdit_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQLineEdit*)(self) )->QLineEdit::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QLineEdit_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQLineEdit*)(self) )->QLineEdit::sizeHint());

}

QSize* QLineEdit_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQLineEdit*)(self) )->QLineEdit::minimumSizeHint());

}

void QLineEdit_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::mousePressEvent(param1);

}

void QLineEdit_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::mouseMoveEvent(param1);

}

void QLineEdit_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::mouseReleaseEvent(param1);

}

void QLineEdit_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::mouseDoubleClickEvent(param1);

}

void QLineEdit_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::keyPressEvent(param1);

}

void QLineEdit_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::focusInEvent(param1);

}

void QLineEdit_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::focusOutEvent(param1);

}

void QLineEdit_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::paintEvent(param1);

}

void QLineEdit_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::dragEnterEvent(param1);

}

void QLineEdit_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::dragMoveEvent(e);

}

void QLineEdit_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::dragLeaveEvent(e);

}

void QLineEdit_virtualbase_dropEvent(void* self, QDropEvent* param1) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::dropEvent(param1);

}

void QLineEdit_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::changeEvent(param1);

}

void QLineEdit_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::contextMenuEvent(param1);

}

void QLineEdit_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::inputMethodEvent(param1);

}

QVariant* QLineEdit_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQLineEdit*)(self) )->QLineEdit::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QLineEdit_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQLineEdit*)(self) )->QLineEdit::event(param1);

}

int QLineEdit_virtualbase_devType(const void* self) {

	return ( (const VirtualQLineEdit*)(self) )->QLineEdit::devType();

}

void QLineEdit_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::setVisible(visible);

}

int QLineEdit_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQLineEdit*)(self) )->QLineEdit::heightForWidth(static_cast<int>(param1));

}

bool QLineEdit_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQLineEdit*)(self) )->QLineEdit::hasHeightForWidth();

}

QPaintEngine* QLineEdit_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQLineEdit*)(self) )->QLineEdit::paintEngine();

}

void QLineEdit_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::wheelEvent(event);

}

void QLineEdit_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::keyReleaseEvent(event);

}

void QLineEdit_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::enterEvent(event);

}

void QLineEdit_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::leaveEvent(event);

}

void QLineEdit_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::moveEvent(event);

}

void QLineEdit_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::resizeEvent(event);

}

void QLineEdit_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::closeEvent(event);

}

void QLineEdit_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::tabletEvent(event);

}

void QLineEdit_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::actionEvent(event);

}

void QLineEdit_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::showEvent(event);

}

void QLineEdit_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::hideEvent(event);

}

bool QLineEdit_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQLineEdit*)(self) )->QLineEdit::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QLineEdit_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQLineEdit*)(self) )->QLineEdit::metric(static_cast<VirtualQLineEdit::PaintDeviceMetric>(param1));

}

void QLineEdit_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQLineEdit*)(self) )->QLineEdit::initPainter(painter);

}

QPaintDevice* QLineEdit_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQLineEdit*)(self) )->QLineEdit::redirected(offset);

}

QPainter* QLineEdit_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQLineEdit*)(self) )->QLineEdit::sharedPainter();

}

bool QLineEdit_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQLineEdit*)(self) )->QLineEdit::focusNextPrevChild(next);

}

bool QLineEdit_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQLineEdit*)(self) )->QLineEdit::eventFilter(watched, event);

}

void QLineEdit_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::timerEvent(event);

}

void QLineEdit_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::childEvent(event);

}

void QLineEdit_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::customEvent(event);

}

void QLineEdit_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::connectNotify(*signal);

}

void QLineEdit_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQLineEdit*)(self) )->QLineEdit::disconnectNotify(*signal);

}

const QMetaObject* QLineEdit_staticMetaObject() { return &QLineEdit::staticMetaObject; }
void QLineEdit_protectedbase_initStyleOption(const void* self, QStyleOptionFrame* option) {
	VirtualQLineEdit* self_cast = static_cast<VirtualQLineEdit*>( (QLineEdit*)(self) );
	
	self_cast->initStyleOption(option);

}

QRect* QLineEdit_protectedbase_cursorRect(const void* self) {
	VirtualQLineEdit* self_cast = static_cast<VirtualQLineEdit*>( (QLineEdit*)(self) );
	
	return new QRect(self_cast->cursorRect());

}

void QLineEdit_protectedbase_updateMicroFocus(void* self) {
	VirtualQLineEdit* self_cast = static_cast<VirtualQLineEdit*>( (QLineEdit*)(self) );
	
	self_cast->updateMicroFocus();

}

void QLineEdit_protectedbase_create(void* self) {
	VirtualQLineEdit* self_cast = static_cast<VirtualQLineEdit*>( (QLineEdit*)(self) );
	
	self_cast->create();

}

void QLineEdit_protectedbase_destroy(void* self) {
	VirtualQLineEdit* self_cast = static_cast<VirtualQLineEdit*>( (QLineEdit*)(self) );
	
	self_cast->destroy();

}

bool QLineEdit_protectedbase_focusNextChild(void* self) {
	VirtualQLineEdit* self_cast = static_cast<VirtualQLineEdit*>( (QLineEdit*)(self) );
	
	return self_cast->focusNextChild();

}

bool QLineEdit_protectedbase_focusPreviousChild(void* self) {
	VirtualQLineEdit* self_cast = static_cast<VirtualQLineEdit*>( (QLineEdit*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QLineEdit_protectedbase_sender(const void* self) {
	VirtualQLineEdit* self_cast = static_cast<VirtualQLineEdit*>( (QLineEdit*)(self) );
	
	return self_cast->sender();

}

int QLineEdit_protectedbase_senderSignalIndex(const void* self) {
	VirtualQLineEdit* self_cast = static_cast<VirtualQLineEdit*>( (QLineEdit*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QLineEdit_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQLineEdit* self_cast = static_cast<VirtualQLineEdit*>( (QLineEdit*)(self) );
	
	return self_cast->receivers(signal);

}

bool QLineEdit_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQLineEdit* self_cast = static_cast<VirtualQLineEdit*>( (QLineEdit*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QLineEdit_delete(QLineEdit* self) {
	delete self;
}

