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
#include <QKeySequence>
#include <QKeySequenceEdit>
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
#include <qkeysequenceedit.h>
#include "gen_qkeysequenceedit.h"
class VirtualQKeySequenceEdit final : public QKeySequenceEdit {
	const QKeySequenceEdit_VTable* vtbl;
	void* vdata;
public:
	friend const QKeySequenceEdit_VTable* QKeySequenceEdit_vtbl(const VirtualQKeySequenceEdit* self);
	friend void* QKeySequenceEdit_vdata(const VirtualQKeySequenceEdit* self);
	friend void QKeySequenceEdit_setVdata(VirtualQKeySequenceEdit* self, void* vdata);

	VirtualQKeySequenceEdit(const QKeySequenceEdit_VTable* vtbl, void* vdata, QWidget* parent): QKeySequenceEdit(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQKeySequenceEdit(const QKeySequenceEdit_VTable* vtbl, void* vdata): QKeySequenceEdit(), vtbl(vtbl), vdata(vdata) {}
	VirtualQKeySequenceEdit(const QKeySequenceEdit_VTable* vtbl, void* vdata, const QKeySequence& keySequence): QKeySequenceEdit(keySequence), vtbl(vtbl), vdata(vdata) {}
	VirtualQKeySequenceEdit(const QKeySequenceEdit_VTable* vtbl, void* vdata, const QKeySequence& keySequence, QWidget* parent): QKeySequenceEdit(keySequence, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQKeySequenceEdit() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QKeySequenceEdit::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QKeySequenceEdit_virtualbase_metaObject(const VirtualQKeySequenceEdit* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QKeySequenceEdit::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QKeySequenceEdit_virtualbase_metacast(VirtualQKeySequenceEdit* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QKeySequenceEdit::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QKeySequenceEdit_virtualbase_metacall(VirtualQKeySequenceEdit* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QKeySequenceEdit::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QKeySequenceEdit_virtualbase_event(VirtualQKeySequenceEdit* self, QEvent* param1);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QKeySequenceEdit::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_keyPressEvent(VirtualQKeySequenceEdit* self, QKeyEvent* param1);

	virtual void keyReleaseEvent(QKeyEvent* param1) override {
		if (vtbl->keyReleaseEvent == 0) {
			QKeySequenceEdit::keyReleaseEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_keyReleaseEvent(VirtualQKeySequenceEdit* self, QKeyEvent* param1);

	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QKeySequenceEdit::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_timerEvent(VirtualQKeySequenceEdit* self, QTimerEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QKeySequenceEdit::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QKeySequenceEdit_virtualbase_devType(const VirtualQKeySequenceEdit* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QKeySequenceEdit::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_setVisible(VirtualQKeySequenceEdit* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QKeySequenceEdit::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QKeySequenceEdit_virtualbase_sizeHint(const VirtualQKeySequenceEdit* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QKeySequenceEdit::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QKeySequenceEdit_virtualbase_minimumSizeHint(const VirtualQKeySequenceEdit* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QKeySequenceEdit::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QKeySequenceEdit_virtualbase_heightForWidth(const VirtualQKeySequenceEdit* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QKeySequenceEdit::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QKeySequenceEdit_virtualbase_hasHeightForWidth(const VirtualQKeySequenceEdit* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QKeySequenceEdit::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QKeySequenceEdit_virtualbase_paintEngine(const VirtualQKeySequenceEdit* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QKeySequenceEdit::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_mousePressEvent(VirtualQKeySequenceEdit* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QKeySequenceEdit::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_mouseReleaseEvent(VirtualQKeySequenceEdit* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QKeySequenceEdit::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_mouseDoubleClickEvent(VirtualQKeySequenceEdit* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QKeySequenceEdit::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_mouseMoveEvent(VirtualQKeySequenceEdit* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QKeySequenceEdit::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_wheelEvent(VirtualQKeySequenceEdit* self, QWheelEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QKeySequenceEdit::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_focusInEvent(VirtualQKeySequenceEdit* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QKeySequenceEdit::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_focusOutEvent(VirtualQKeySequenceEdit* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QKeySequenceEdit::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_enterEvent(VirtualQKeySequenceEdit* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QKeySequenceEdit::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_leaveEvent(VirtualQKeySequenceEdit* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QKeySequenceEdit::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_paintEvent(VirtualQKeySequenceEdit* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QKeySequenceEdit::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_moveEvent(VirtualQKeySequenceEdit* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QKeySequenceEdit::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_resizeEvent(VirtualQKeySequenceEdit* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QKeySequenceEdit::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_closeEvent(VirtualQKeySequenceEdit* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QKeySequenceEdit::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_contextMenuEvent(VirtualQKeySequenceEdit* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QKeySequenceEdit::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_tabletEvent(VirtualQKeySequenceEdit* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QKeySequenceEdit::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_actionEvent(VirtualQKeySequenceEdit* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QKeySequenceEdit::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_dragEnterEvent(VirtualQKeySequenceEdit* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QKeySequenceEdit::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_dragMoveEvent(VirtualQKeySequenceEdit* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QKeySequenceEdit::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_dragLeaveEvent(VirtualQKeySequenceEdit* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QKeySequenceEdit::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_dropEvent(VirtualQKeySequenceEdit* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QKeySequenceEdit::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_showEvent(VirtualQKeySequenceEdit* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QKeySequenceEdit::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_hideEvent(VirtualQKeySequenceEdit* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QKeySequenceEdit::nativeEvent(eventType, message, result);
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

	friend bool QKeySequenceEdit_virtualbase_nativeEvent(VirtualQKeySequenceEdit* self, struct miqt_string eventType, void* message, long* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QKeySequenceEdit::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_changeEvent(VirtualQKeySequenceEdit* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QKeySequenceEdit::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QKeySequenceEdit_virtualbase_metric(const VirtualQKeySequenceEdit* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QKeySequenceEdit::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_initPainter(const VirtualQKeySequenceEdit* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QKeySequenceEdit::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QKeySequenceEdit_virtualbase_redirected(const VirtualQKeySequenceEdit* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QKeySequenceEdit::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QKeySequenceEdit_virtualbase_sharedPainter(const VirtualQKeySequenceEdit* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QKeySequenceEdit::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_inputMethodEvent(VirtualQKeySequenceEdit* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QKeySequenceEdit::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QKeySequenceEdit_virtualbase_inputMethodQuery(const VirtualQKeySequenceEdit* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QKeySequenceEdit::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QKeySequenceEdit_virtualbase_focusNextPrevChild(VirtualQKeySequenceEdit* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QKeySequenceEdit::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QKeySequenceEdit_virtualbase_eventFilter(VirtualQKeySequenceEdit* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QKeySequenceEdit::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_childEvent(VirtualQKeySequenceEdit* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QKeySequenceEdit::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_customEvent(VirtualQKeySequenceEdit* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QKeySequenceEdit::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_connectNotify(VirtualQKeySequenceEdit* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QKeySequenceEdit::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QKeySequenceEdit_virtualbase_disconnectNotify(VirtualQKeySequenceEdit* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QKeySequenceEdit_protectedbase_updateMicroFocus(VirtualQKeySequenceEdit* self);
	friend void QKeySequenceEdit_protectedbase_create(VirtualQKeySequenceEdit* self);
	friend void QKeySequenceEdit_protectedbase_destroy(VirtualQKeySequenceEdit* self);
	friend bool QKeySequenceEdit_protectedbase_focusNextChild(VirtualQKeySequenceEdit* self);
	friend bool QKeySequenceEdit_protectedbase_focusPreviousChild(VirtualQKeySequenceEdit* self);
	friend QObject* QKeySequenceEdit_protectedbase_sender(const VirtualQKeySequenceEdit* self);
	friend int QKeySequenceEdit_protectedbase_senderSignalIndex(const VirtualQKeySequenceEdit* self);
	friend int QKeySequenceEdit_protectedbase_receivers(const VirtualQKeySequenceEdit* self, const char* signal);
	friend bool QKeySequenceEdit_protectedbase_isSignalConnected(const VirtualQKeySequenceEdit* self, QMetaMethod* signal);
};

VirtualQKeySequenceEdit* QKeySequenceEdit_new(const QKeySequenceEdit_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQKeySequenceEdit(vtbl, vdata, parent);
}

VirtualQKeySequenceEdit* QKeySequenceEdit_new2(const QKeySequenceEdit_VTable* vtbl, void* vdata) {
	return new VirtualQKeySequenceEdit(vtbl, vdata);
}

VirtualQKeySequenceEdit* QKeySequenceEdit_new3(const QKeySequenceEdit_VTable* vtbl, void* vdata, QKeySequence* keySequence) {
	return new VirtualQKeySequenceEdit(vtbl, vdata, *keySequence);
}

VirtualQKeySequenceEdit* QKeySequenceEdit_new4(const QKeySequenceEdit_VTable* vtbl, void* vdata, QKeySequence* keySequence, QWidget* parent) {
	return new VirtualQKeySequenceEdit(vtbl, vdata, *keySequence, parent);
}

void QKeySequenceEdit_virtbase(QKeySequenceEdit* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QKeySequenceEdit_metaObject(const QKeySequenceEdit* self) {
	return (QMetaObject*) self->metaObject();
}

void* QKeySequenceEdit_metacast(QKeySequenceEdit* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QKeySequenceEdit_metacall(QKeySequenceEdit* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QKeySequenceEdit_tr(const char* s) {
	QString _ret = QKeySequenceEdit::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QKeySequenceEdit_trUtf8(const char* s) {
	QString _ret = QKeySequenceEdit::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QKeySequence* QKeySequenceEdit_keySequence(const QKeySequenceEdit* self) {
	return new QKeySequence(self->keySequence());
}

void QKeySequenceEdit_setKeySequence(QKeySequenceEdit* self, QKeySequence* keySequence) {
	self->setKeySequence(*keySequence);
}

void QKeySequenceEdit_clear(QKeySequenceEdit* self) {
	self->clear();
}

void QKeySequenceEdit_editingFinished(QKeySequenceEdit* self) {
	self->editingFinished();
}

void QKeySequenceEdit_connect_editingFinished(VirtualQKeySequenceEdit* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQKeySequenceEdit::connect(self, static_cast<void (QKeySequenceEdit::*)()>(&QKeySequenceEdit::editingFinished), self, local_caller{slot, callback, release});
}

void QKeySequenceEdit_keySequenceChanged(QKeySequenceEdit* self, QKeySequence* keySequence) {
	self->keySequenceChanged(*keySequence);
}

void QKeySequenceEdit_connect_keySequenceChanged(VirtualQKeySequenceEdit* self, intptr_t slot, void (*callback)(intptr_t, QKeySequence*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QKeySequence*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QKeySequence*);
		void operator()(const QKeySequence& keySequence) {
			const QKeySequence& keySequence_ret = keySequence;
			// Cast returned reference into pointer
			QKeySequence* sigval1 = const_cast<QKeySequence*>(&keySequence_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQKeySequenceEdit::connect(self, static_cast<void (QKeySequenceEdit::*)(const QKeySequence&)>(&QKeySequenceEdit::keySequenceChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QKeySequenceEdit_tr2(const char* s, const char* c) {
	QString _ret = QKeySequenceEdit::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QKeySequenceEdit_tr3(const char* s, const char* c, int n) {
	QString _ret = QKeySequenceEdit::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QKeySequenceEdit_trUtf82(const char* s, const char* c) {
	QString _ret = QKeySequenceEdit::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QKeySequenceEdit_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QKeySequenceEdit::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QKeySequenceEdit_virtualbase_metaObject(const VirtualQKeySequenceEdit* self) {

	return (QMetaObject*) self->QKeySequenceEdit::metaObject();
}

void* QKeySequenceEdit_virtualbase_metacast(VirtualQKeySequenceEdit* self, const char* param1) {

	return self->QKeySequenceEdit::qt_metacast(param1);
}

int QKeySequenceEdit_virtualbase_metacall(VirtualQKeySequenceEdit* self, int param1, int param2, void** param3) {

	return self->QKeySequenceEdit::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QKeySequenceEdit_virtualbase_event(VirtualQKeySequenceEdit* self, QEvent* param1) {

	return self->QKeySequenceEdit::event(param1);
}

void QKeySequenceEdit_virtualbase_keyPressEvent(VirtualQKeySequenceEdit* self, QKeyEvent* param1) {

	self->QKeySequenceEdit::keyPressEvent(param1);
}

void QKeySequenceEdit_virtualbase_keyReleaseEvent(VirtualQKeySequenceEdit* self, QKeyEvent* param1) {

	self->QKeySequenceEdit::keyReleaseEvent(param1);
}

void QKeySequenceEdit_virtualbase_timerEvent(VirtualQKeySequenceEdit* self, QTimerEvent* param1) {

	self->QKeySequenceEdit::timerEvent(param1);
}

int QKeySequenceEdit_virtualbase_devType(const VirtualQKeySequenceEdit* self) {

	return self->QKeySequenceEdit::devType();
}

void QKeySequenceEdit_virtualbase_setVisible(VirtualQKeySequenceEdit* self, bool visible) {

	self->QKeySequenceEdit::setVisible(visible);
}

QSize* QKeySequenceEdit_virtualbase_sizeHint(const VirtualQKeySequenceEdit* self) {

	return new QSize(self->QKeySequenceEdit::sizeHint());
}

QSize* QKeySequenceEdit_virtualbase_minimumSizeHint(const VirtualQKeySequenceEdit* self) {

	return new QSize(self->QKeySequenceEdit::minimumSizeHint());
}

int QKeySequenceEdit_virtualbase_heightForWidth(const VirtualQKeySequenceEdit* self, int param1) {

	return self->QKeySequenceEdit::heightForWidth(static_cast<int>(param1));
}

bool QKeySequenceEdit_virtualbase_hasHeightForWidth(const VirtualQKeySequenceEdit* self) {

	return self->QKeySequenceEdit::hasHeightForWidth();
}

QPaintEngine* QKeySequenceEdit_virtualbase_paintEngine(const VirtualQKeySequenceEdit* self) {

	return self->QKeySequenceEdit::paintEngine();
}

void QKeySequenceEdit_virtualbase_mousePressEvent(VirtualQKeySequenceEdit* self, QMouseEvent* event) {

	self->QKeySequenceEdit::mousePressEvent(event);
}

void QKeySequenceEdit_virtualbase_mouseReleaseEvent(VirtualQKeySequenceEdit* self, QMouseEvent* event) {

	self->QKeySequenceEdit::mouseReleaseEvent(event);
}

void QKeySequenceEdit_virtualbase_mouseDoubleClickEvent(VirtualQKeySequenceEdit* self, QMouseEvent* event) {

	self->QKeySequenceEdit::mouseDoubleClickEvent(event);
}

void QKeySequenceEdit_virtualbase_mouseMoveEvent(VirtualQKeySequenceEdit* self, QMouseEvent* event) {

	self->QKeySequenceEdit::mouseMoveEvent(event);
}

void QKeySequenceEdit_virtualbase_wheelEvent(VirtualQKeySequenceEdit* self, QWheelEvent* event) {

	self->QKeySequenceEdit::wheelEvent(event);
}

void QKeySequenceEdit_virtualbase_focusInEvent(VirtualQKeySequenceEdit* self, QFocusEvent* event) {

	self->QKeySequenceEdit::focusInEvent(event);
}

void QKeySequenceEdit_virtualbase_focusOutEvent(VirtualQKeySequenceEdit* self, QFocusEvent* event) {

	self->QKeySequenceEdit::focusOutEvent(event);
}

void QKeySequenceEdit_virtualbase_enterEvent(VirtualQKeySequenceEdit* self, QEvent* event) {

	self->QKeySequenceEdit::enterEvent(event);
}

void QKeySequenceEdit_virtualbase_leaveEvent(VirtualQKeySequenceEdit* self, QEvent* event) {

	self->QKeySequenceEdit::leaveEvent(event);
}

void QKeySequenceEdit_virtualbase_paintEvent(VirtualQKeySequenceEdit* self, QPaintEvent* event) {

	self->QKeySequenceEdit::paintEvent(event);
}

void QKeySequenceEdit_virtualbase_moveEvent(VirtualQKeySequenceEdit* self, QMoveEvent* event) {

	self->QKeySequenceEdit::moveEvent(event);
}

void QKeySequenceEdit_virtualbase_resizeEvent(VirtualQKeySequenceEdit* self, QResizeEvent* event) {

	self->QKeySequenceEdit::resizeEvent(event);
}

void QKeySequenceEdit_virtualbase_closeEvent(VirtualQKeySequenceEdit* self, QCloseEvent* event) {

	self->QKeySequenceEdit::closeEvent(event);
}

void QKeySequenceEdit_virtualbase_contextMenuEvent(VirtualQKeySequenceEdit* self, QContextMenuEvent* event) {

	self->QKeySequenceEdit::contextMenuEvent(event);
}

void QKeySequenceEdit_virtualbase_tabletEvent(VirtualQKeySequenceEdit* self, QTabletEvent* event) {

	self->QKeySequenceEdit::tabletEvent(event);
}

void QKeySequenceEdit_virtualbase_actionEvent(VirtualQKeySequenceEdit* self, QActionEvent* event) {

	self->QKeySequenceEdit::actionEvent(event);
}

void QKeySequenceEdit_virtualbase_dragEnterEvent(VirtualQKeySequenceEdit* self, QDragEnterEvent* event) {

	self->QKeySequenceEdit::dragEnterEvent(event);
}

void QKeySequenceEdit_virtualbase_dragMoveEvent(VirtualQKeySequenceEdit* self, QDragMoveEvent* event) {

	self->QKeySequenceEdit::dragMoveEvent(event);
}

void QKeySequenceEdit_virtualbase_dragLeaveEvent(VirtualQKeySequenceEdit* self, QDragLeaveEvent* event) {

	self->QKeySequenceEdit::dragLeaveEvent(event);
}

void QKeySequenceEdit_virtualbase_dropEvent(VirtualQKeySequenceEdit* self, QDropEvent* event) {

	self->QKeySequenceEdit::dropEvent(event);
}

void QKeySequenceEdit_virtualbase_showEvent(VirtualQKeySequenceEdit* self, QShowEvent* event) {

	self->QKeySequenceEdit::showEvent(event);
}

void QKeySequenceEdit_virtualbase_hideEvent(VirtualQKeySequenceEdit* self, QHideEvent* event) {

	self->QKeySequenceEdit::hideEvent(event);
}

bool QKeySequenceEdit_virtualbase_nativeEvent(VirtualQKeySequenceEdit* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QKeySequenceEdit::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

void QKeySequenceEdit_virtualbase_changeEvent(VirtualQKeySequenceEdit* self, QEvent* param1) {

	self->QKeySequenceEdit::changeEvent(param1);
}

int QKeySequenceEdit_virtualbase_metric(const VirtualQKeySequenceEdit* self, int param1) {

	return self->QKeySequenceEdit::metric(static_cast<VirtualQKeySequenceEdit::PaintDeviceMetric>(param1));
}

void QKeySequenceEdit_virtualbase_initPainter(const VirtualQKeySequenceEdit* self, QPainter* painter) {

	self->QKeySequenceEdit::initPainter(painter);
}

QPaintDevice* QKeySequenceEdit_virtualbase_redirected(const VirtualQKeySequenceEdit* self, QPoint* offset) {

	return self->QKeySequenceEdit::redirected(offset);
}

QPainter* QKeySequenceEdit_virtualbase_sharedPainter(const VirtualQKeySequenceEdit* self) {

	return self->QKeySequenceEdit::sharedPainter();
}

void QKeySequenceEdit_virtualbase_inputMethodEvent(VirtualQKeySequenceEdit* self, QInputMethodEvent* param1) {

	self->QKeySequenceEdit::inputMethodEvent(param1);
}

QVariant* QKeySequenceEdit_virtualbase_inputMethodQuery(const VirtualQKeySequenceEdit* self, int param1) {

	return new QVariant(self->QKeySequenceEdit::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QKeySequenceEdit_virtualbase_focusNextPrevChild(VirtualQKeySequenceEdit* self, bool next) {

	return self->QKeySequenceEdit::focusNextPrevChild(next);
}

bool QKeySequenceEdit_virtualbase_eventFilter(VirtualQKeySequenceEdit* self, QObject* watched, QEvent* event) {

	return self->QKeySequenceEdit::eventFilter(watched, event);
}

void QKeySequenceEdit_virtualbase_childEvent(VirtualQKeySequenceEdit* self, QChildEvent* event) {

	self->QKeySequenceEdit::childEvent(event);
}

void QKeySequenceEdit_virtualbase_customEvent(VirtualQKeySequenceEdit* self, QEvent* event) {

	self->QKeySequenceEdit::customEvent(event);
}

void QKeySequenceEdit_virtualbase_connectNotify(VirtualQKeySequenceEdit* self, QMetaMethod* signal) {

	self->QKeySequenceEdit::connectNotify(*signal);
}

void QKeySequenceEdit_virtualbase_disconnectNotify(VirtualQKeySequenceEdit* self, QMetaMethod* signal) {

	self->QKeySequenceEdit::disconnectNotify(*signal);
}

const QMetaObject* QKeySequenceEdit_staticMetaObject() { return &QKeySequenceEdit::staticMetaObject; }

const QKeySequenceEdit_VTable* QKeySequenceEdit_vtbl(const VirtualQKeySequenceEdit* self) { return self->vtbl; }
void* QKeySequenceEdit_vdata(const VirtualQKeySequenceEdit* self) { return self->vdata; }
void QKeySequenceEdit_setVdata(VirtualQKeySequenceEdit* self, void* vdata) { self->vdata = vdata; }

void QKeySequenceEdit_protectedbase_updateMicroFocus(VirtualQKeySequenceEdit* self) {
	self->updateMicroFocus();
}

void QKeySequenceEdit_protectedbase_create(VirtualQKeySequenceEdit* self) {
	self->create();
}

void QKeySequenceEdit_protectedbase_destroy(VirtualQKeySequenceEdit* self) {
	self->destroy();
}

bool QKeySequenceEdit_protectedbase_focusNextChild(VirtualQKeySequenceEdit* self) {
	return self->focusNextChild();
}

bool QKeySequenceEdit_protectedbase_focusPreviousChild(VirtualQKeySequenceEdit* self) {
	return self->focusPreviousChild();
}

QObject* QKeySequenceEdit_protectedbase_sender(const VirtualQKeySequenceEdit* self) {
	return self->sender();
}

int QKeySequenceEdit_protectedbase_senderSignalIndex(const VirtualQKeySequenceEdit* self) {
	return self->senderSignalIndex();
}

int QKeySequenceEdit_protectedbase_receivers(const VirtualQKeySequenceEdit* self, const char* signal) {
	return self->receivers(signal);
}

bool QKeySequenceEdit_protectedbase_isSignalConnected(const VirtualQKeySequenceEdit* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QKeySequenceEdit_delete(QKeySequenceEdit* self) {
	delete self;
}

