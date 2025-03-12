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
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QList>
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
#include <QSplitter>
#include <QSplitterHandle>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qsplitter.h>
#include "gen_qsplitter.h"
class VirtualQSplitter final : public QSplitter {
	const QSplitter_VTable* vtbl;
	void* vdata;
public:
	friend const QSplitter_VTable* QSplitter_vtbl(const VirtualQSplitter* self);
	friend void* QSplitter_vdata(const VirtualQSplitter* self);
	friend void QSplitter_setVdata(VirtualQSplitter* self, void* vdata);

	VirtualQSplitter(const QSplitter_VTable* vtbl, void* vdata, QWidget* parent): QSplitter(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQSplitter(const QSplitter_VTable* vtbl, void* vdata): QSplitter(), vtbl(vtbl), vdata(vdata) {}
	VirtualQSplitter(const QSplitter_VTable* vtbl, void* vdata, Qt::Orientation param1): QSplitter(param1), vtbl(vtbl), vdata(vdata) {}
	VirtualQSplitter(const QSplitter_VTable* vtbl, void* vdata, Qt::Orientation param1, QWidget* parent): QSplitter(param1, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSplitter() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSplitter::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSplitter_virtualbase_metaObject(const VirtualQSplitter* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSplitter::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSplitter_virtualbase_metacast(VirtualQSplitter* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSplitter::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSplitter_virtualbase_metacall(VirtualQSplitter* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSplitter::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSplitter_virtualbase_sizeHint(const VirtualQSplitter* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QSplitter::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSplitter_virtualbase_minimumSizeHint(const VirtualQSplitter* self);

	virtual QSplitterHandle* createHandle() override {
		if (vtbl->createHandle == 0) {
			return QSplitter::createHandle();
		}


		QSplitterHandle* callback_return_value = vtbl->createHandle(this);

		return callback_return_value;
	}

	friend QSplitterHandle* QSplitter_virtualbase_createHandle(VirtualQSplitter* self);

	virtual void childEvent(QChildEvent* param1) override {
		if (vtbl->childEvent == 0) {
			QSplitter::childEvent(param1);
			return;
		}

		QChildEvent* sigval1 = param1;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_childEvent(VirtualQSplitter* self, QChildEvent* param1);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QSplitter::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSplitter_virtualbase_event(VirtualQSplitter* self, QEvent* param1);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QSplitter::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_resizeEvent(VirtualQSplitter* self, QResizeEvent* param1);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QSplitter::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_changeEvent(VirtualQSplitter* self, QEvent* param1);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QSplitter::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_paintEvent(VirtualQSplitter* self, QPaintEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QSplitter::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QSplitter_virtualbase_devType(const VirtualQSplitter* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QSplitter::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QSplitter_virtualbase_setVisible(VirtualQSplitter* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QSplitter::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSplitter_virtualbase_heightForWidth(const VirtualQSplitter* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QSplitter::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QSplitter_virtualbase_hasHeightForWidth(const VirtualQSplitter* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QSplitter::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QSplitter_virtualbase_paintEngine(const VirtualQSplitter* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QSplitter::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_mousePressEvent(VirtualQSplitter* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QSplitter::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_mouseReleaseEvent(VirtualQSplitter* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QSplitter::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_mouseDoubleClickEvent(VirtualQSplitter* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QSplitter::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_mouseMoveEvent(VirtualQSplitter* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QSplitter::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_wheelEvent(VirtualQSplitter* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QSplitter::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_keyPressEvent(VirtualQSplitter* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QSplitter::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_keyReleaseEvent(VirtualQSplitter* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QSplitter::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_focusInEvent(VirtualQSplitter* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QSplitter::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_focusOutEvent(VirtualQSplitter* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QSplitter::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_enterEvent(VirtualQSplitter* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QSplitter::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_leaveEvent(VirtualQSplitter* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QSplitter::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_moveEvent(VirtualQSplitter* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QSplitter::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_closeEvent(VirtualQSplitter* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QSplitter::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_contextMenuEvent(VirtualQSplitter* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QSplitter::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_tabletEvent(VirtualQSplitter* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QSplitter::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_actionEvent(VirtualQSplitter* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QSplitter::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_dragEnterEvent(VirtualQSplitter* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QSplitter::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_dragMoveEvent(VirtualQSplitter* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QSplitter::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_dragLeaveEvent(VirtualQSplitter* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QSplitter::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_dropEvent(VirtualQSplitter* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QSplitter::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_showEvent(VirtualQSplitter* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QSplitter::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_hideEvent(VirtualQSplitter* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QSplitter::nativeEvent(eventType, message, result);
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

	friend bool QSplitter_virtualbase_nativeEvent(VirtualQSplitter* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QSplitter::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSplitter_virtualbase_metric(const VirtualQSplitter* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QSplitter::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QSplitter_virtualbase_initPainter(const VirtualQSplitter* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QSplitter::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QSplitter_virtualbase_redirected(const VirtualQSplitter* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QSplitter::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QSplitter_virtualbase_sharedPainter(const VirtualQSplitter* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QSplitter::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_inputMethodEvent(VirtualQSplitter* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QSplitter::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QSplitter_virtualbase_inputMethodQuery(const VirtualQSplitter* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QSplitter::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QSplitter_virtualbase_focusNextPrevChild(VirtualQSplitter* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSplitter::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSplitter_virtualbase_eventFilter(VirtualQSplitter* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSplitter::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_timerEvent(VirtualQSplitter* self, QTimerEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSplitter::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSplitter_virtualbase_customEvent(VirtualQSplitter* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSplitter::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSplitter_virtualbase_connectNotify(VirtualQSplitter* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSplitter::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSplitter_virtualbase_disconnectNotify(VirtualQSplitter* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSplitter_protectedbase_moveSplitter(VirtualQSplitter* self, int pos, int index);
	friend void QSplitter_protectedbase_setRubberBand(VirtualQSplitter* self, int position);
	friend int QSplitter_protectedbase_closestLegalPosition(VirtualQSplitter* self, int param1, int param2);
	friend void QSplitter_protectedbase_drawFrame(VirtualQSplitter* self, QPainter* param1);
	friend void QSplitter_protectedbase_initStyleOption(const VirtualQSplitter* self, QStyleOptionFrame* option);
	friend void QSplitter_protectedbase_updateMicroFocus(VirtualQSplitter* self);
	friend void QSplitter_protectedbase_create(VirtualQSplitter* self);
	friend void QSplitter_protectedbase_destroy(VirtualQSplitter* self);
	friend bool QSplitter_protectedbase_focusNextChild(VirtualQSplitter* self);
	friend bool QSplitter_protectedbase_focusPreviousChild(VirtualQSplitter* self);
	friend QObject* QSplitter_protectedbase_sender(const VirtualQSplitter* self);
	friend int QSplitter_protectedbase_senderSignalIndex(const VirtualQSplitter* self);
	friend int QSplitter_protectedbase_receivers(const VirtualQSplitter* self, const char* signal);
	friend bool QSplitter_protectedbase_isSignalConnected(const VirtualQSplitter* self, QMetaMethod* signal);
};

VirtualQSplitter* QSplitter_new(const QSplitter_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQSplitter(vtbl, vdata, parent);
}

VirtualQSplitter* QSplitter_new2(const QSplitter_VTable* vtbl, void* vdata) {
	return new VirtualQSplitter(vtbl, vdata);
}

VirtualQSplitter* QSplitter_new3(const QSplitter_VTable* vtbl, void* vdata, int param1) {
	return new VirtualQSplitter(vtbl, vdata, static_cast<Qt::Orientation>(param1));
}

VirtualQSplitter* QSplitter_new4(const QSplitter_VTable* vtbl, void* vdata, int param1, QWidget* parent) {
	return new VirtualQSplitter(vtbl, vdata, static_cast<Qt::Orientation>(param1), parent);
}

void QSplitter_virtbase(QSplitter* src, QFrame** outptr_QFrame) {
	*outptr_QFrame = static_cast<QFrame*>(src);
}

QMetaObject* QSplitter_metaObject(const QSplitter* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSplitter_metacast(QSplitter* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSplitter_metacall(QSplitter* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSplitter_tr(const char* s) {
	QString _ret = QSplitter::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplitter_trUtf8(const char* s) {
	QString _ret = QSplitter::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSplitter_addWidget(QSplitter* self, QWidget* widget) {
	self->addWidget(widget);
}

void QSplitter_insertWidget(QSplitter* self, int index, QWidget* widget) {
	self->insertWidget(static_cast<int>(index), widget);
}

QWidget* QSplitter_replaceWidget(QSplitter* self, int index, QWidget* widget) {
	return self->replaceWidget(static_cast<int>(index), widget);
}

void QSplitter_setOrientation(QSplitter* self, int orientation) {
	self->setOrientation(static_cast<Qt::Orientation>(orientation));
}

int QSplitter_orientation(const QSplitter* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

void QSplitter_setChildrenCollapsible(QSplitter* self, bool childrenCollapsible) {
	self->setChildrenCollapsible(childrenCollapsible);
}

bool QSplitter_childrenCollapsible(const QSplitter* self) {
	return self->childrenCollapsible();
}

void QSplitter_setCollapsible(QSplitter* self, int index, bool param2) {
	self->setCollapsible(static_cast<int>(index), param2);
}

bool QSplitter_isCollapsible(const QSplitter* self, int index) {
	return self->isCollapsible(static_cast<int>(index));
}

void QSplitter_setOpaqueResize(QSplitter* self) {
	self->setOpaqueResize();
}

bool QSplitter_opaqueResize(const QSplitter* self) {
	return self->opaqueResize();
}

void QSplitter_refresh(QSplitter* self) {
	self->refresh();
}

QSize* QSplitter_sizeHint(const QSplitter* self) {
	return new QSize(self->sizeHint());
}

QSize* QSplitter_minimumSizeHint(const QSplitter* self) {
	return new QSize(self->minimumSizeHint());
}

struct miqt_array /* of int */  QSplitter_sizes(const QSplitter* self) {
	QList<int> _ret = self->sizes();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QSplitter_setSizes(QSplitter* self, struct miqt_array /* of int */  list) {
	QList<int> list_QList;
	list_QList.reserve(list.len);
	int* list_arr = static_cast<int*>(list.data);
	for(size_t i = 0; i < list.len; ++i) {
		list_QList.push_back(static_cast<int>(list_arr[i]));
	}
	self->setSizes(list_QList);
}

struct miqt_string QSplitter_saveState(const QSplitter* self) {
	QByteArray _qb = self->saveState();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

bool QSplitter_restoreState(QSplitter* self, struct miqt_string state) {
	QByteArray state_QByteArray(state.data, state.len);
	return self->restoreState(state_QByteArray);
}

int QSplitter_handleWidth(const QSplitter* self) {
	return self->handleWidth();
}

void QSplitter_setHandleWidth(QSplitter* self, int handleWidth) {
	self->setHandleWidth(static_cast<int>(handleWidth));
}

int QSplitter_indexOf(const QSplitter* self, QWidget* w) {
	return self->indexOf(w);
}

QWidget* QSplitter_widget(const QSplitter* self, int index) {
	return self->widget(static_cast<int>(index));
}

int QSplitter_count(const QSplitter* self) {
	return self->count();
}

void QSplitter_getRange(const QSplitter* self, int index, int* param2, int* param3) {
	self->getRange(static_cast<int>(index), static_cast<int*>(param2), static_cast<int*>(param3));
}

QSplitterHandle* QSplitter_handle(const QSplitter* self, int index) {
	return self->handle(static_cast<int>(index));
}

void QSplitter_setStretchFactor(QSplitter* self, int index, int stretch) {
	self->setStretchFactor(static_cast<int>(index), static_cast<int>(stretch));
}

void QSplitter_splitterMoved(QSplitter* self, int pos, int index) {
	self->splitterMoved(static_cast<int>(pos), static_cast<int>(index));
}

void QSplitter_connect_splitterMoved(VirtualQSplitter* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int pos, int index) {
			int sigval1 = pos;
			int sigval2 = index;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQSplitter::connect(self, static_cast<void (QSplitter::*)(int, int)>(&QSplitter::splitterMoved), self, local_caller{slot, callback, release});
}

struct miqt_string QSplitter_tr2(const char* s, const char* c) {
	QString _ret = QSplitter::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplitter_tr3(const char* s, const char* c, int n) {
	QString _ret = QSplitter::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplitter_trUtf82(const char* s, const char* c) {
	QString _ret = QSplitter::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplitter_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSplitter::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSplitter_setOpaqueResize1(QSplitter* self, bool opaque) {
	self->setOpaqueResize(opaque);
}

QMetaObject* QSplitter_virtualbase_metaObject(const VirtualQSplitter* self) {

	return (QMetaObject*) self->QSplitter::metaObject();
}

void* QSplitter_virtualbase_metacast(VirtualQSplitter* self, const char* param1) {

	return self->QSplitter::qt_metacast(param1);
}

int QSplitter_virtualbase_metacall(VirtualQSplitter* self, int param1, int param2, void** param3) {

	return self->QSplitter::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QSplitter_virtualbase_sizeHint(const VirtualQSplitter* self) {

	return new QSize(self->QSplitter::sizeHint());
}

QSize* QSplitter_virtualbase_minimumSizeHint(const VirtualQSplitter* self) {

	return new QSize(self->QSplitter::minimumSizeHint());
}

QSplitterHandle* QSplitter_virtualbase_createHandle(VirtualQSplitter* self) {

	return self->QSplitter::createHandle();
}

void QSplitter_virtualbase_childEvent(VirtualQSplitter* self, QChildEvent* param1) {

	self->QSplitter::childEvent(param1);
}

bool QSplitter_virtualbase_event(VirtualQSplitter* self, QEvent* param1) {

	return self->QSplitter::event(param1);
}

void QSplitter_virtualbase_resizeEvent(VirtualQSplitter* self, QResizeEvent* param1) {

	self->QSplitter::resizeEvent(param1);
}

void QSplitter_virtualbase_changeEvent(VirtualQSplitter* self, QEvent* param1) {

	self->QSplitter::changeEvent(param1);
}

void QSplitter_virtualbase_paintEvent(VirtualQSplitter* self, QPaintEvent* param1) {

	self->QSplitter::paintEvent(param1);
}

int QSplitter_virtualbase_devType(const VirtualQSplitter* self) {

	return self->QSplitter::devType();
}

void QSplitter_virtualbase_setVisible(VirtualQSplitter* self, bool visible) {

	self->QSplitter::setVisible(visible);
}

int QSplitter_virtualbase_heightForWidth(const VirtualQSplitter* self, int param1) {

	return self->QSplitter::heightForWidth(static_cast<int>(param1));
}

bool QSplitter_virtualbase_hasHeightForWidth(const VirtualQSplitter* self) {

	return self->QSplitter::hasHeightForWidth();
}

QPaintEngine* QSplitter_virtualbase_paintEngine(const VirtualQSplitter* self) {

	return self->QSplitter::paintEngine();
}

void QSplitter_virtualbase_mousePressEvent(VirtualQSplitter* self, QMouseEvent* event) {

	self->QSplitter::mousePressEvent(event);
}

void QSplitter_virtualbase_mouseReleaseEvent(VirtualQSplitter* self, QMouseEvent* event) {

	self->QSplitter::mouseReleaseEvent(event);
}

void QSplitter_virtualbase_mouseDoubleClickEvent(VirtualQSplitter* self, QMouseEvent* event) {

	self->QSplitter::mouseDoubleClickEvent(event);
}

void QSplitter_virtualbase_mouseMoveEvent(VirtualQSplitter* self, QMouseEvent* event) {

	self->QSplitter::mouseMoveEvent(event);
}

void QSplitter_virtualbase_wheelEvent(VirtualQSplitter* self, QWheelEvent* event) {

	self->QSplitter::wheelEvent(event);
}

void QSplitter_virtualbase_keyPressEvent(VirtualQSplitter* self, QKeyEvent* event) {

	self->QSplitter::keyPressEvent(event);
}

void QSplitter_virtualbase_keyReleaseEvent(VirtualQSplitter* self, QKeyEvent* event) {

	self->QSplitter::keyReleaseEvent(event);
}

void QSplitter_virtualbase_focusInEvent(VirtualQSplitter* self, QFocusEvent* event) {

	self->QSplitter::focusInEvent(event);
}

void QSplitter_virtualbase_focusOutEvent(VirtualQSplitter* self, QFocusEvent* event) {

	self->QSplitter::focusOutEvent(event);
}

void QSplitter_virtualbase_enterEvent(VirtualQSplitter* self, QEvent* event) {

	self->QSplitter::enterEvent(event);
}

void QSplitter_virtualbase_leaveEvent(VirtualQSplitter* self, QEvent* event) {

	self->QSplitter::leaveEvent(event);
}

void QSplitter_virtualbase_moveEvent(VirtualQSplitter* self, QMoveEvent* event) {

	self->QSplitter::moveEvent(event);
}

void QSplitter_virtualbase_closeEvent(VirtualQSplitter* self, QCloseEvent* event) {

	self->QSplitter::closeEvent(event);
}

void QSplitter_virtualbase_contextMenuEvent(VirtualQSplitter* self, QContextMenuEvent* event) {

	self->QSplitter::contextMenuEvent(event);
}

void QSplitter_virtualbase_tabletEvent(VirtualQSplitter* self, QTabletEvent* event) {

	self->QSplitter::tabletEvent(event);
}

void QSplitter_virtualbase_actionEvent(VirtualQSplitter* self, QActionEvent* event) {

	self->QSplitter::actionEvent(event);
}

void QSplitter_virtualbase_dragEnterEvent(VirtualQSplitter* self, QDragEnterEvent* event) {

	self->QSplitter::dragEnterEvent(event);
}

void QSplitter_virtualbase_dragMoveEvent(VirtualQSplitter* self, QDragMoveEvent* event) {

	self->QSplitter::dragMoveEvent(event);
}

void QSplitter_virtualbase_dragLeaveEvent(VirtualQSplitter* self, QDragLeaveEvent* event) {

	self->QSplitter::dragLeaveEvent(event);
}

void QSplitter_virtualbase_dropEvent(VirtualQSplitter* self, QDropEvent* event) {

	self->QSplitter::dropEvent(event);
}

void QSplitter_virtualbase_showEvent(VirtualQSplitter* self, QShowEvent* event) {

	self->QSplitter::showEvent(event);
}

void QSplitter_virtualbase_hideEvent(VirtualQSplitter* self, QHideEvent* event) {

	self->QSplitter::hideEvent(event);
}

bool QSplitter_virtualbase_nativeEvent(VirtualQSplitter* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QSplitter::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QSplitter_virtualbase_metric(const VirtualQSplitter* self, int param1) {

	return self->QSplitter::metric(static_cast<VirtualQSplitter::PaintDeviceMetric>(param1));
}

void QSplitter_virtualbase_initPainter(const VirtualQSplitter* self, QPainter* painter) {

	self->QSplitter::initPainter(painter);
}

QPaintDevice* QSplitter_virtualbase_redirected(const VirtualQSplitter* self, QPoint* offset) {

	return self->QSplitter::redirected(offset);
}

QPainter* QSplitter_virtualbase_sharedPainter(const VirtualQSplitter* self) {

	return self->QSplitter::sharedPainter();
}

void QSplitter_virtualbase_inputMethodEvent(VirtualQSplitter* self, QInputMethodEvent* param1) {

	self->QSplitter::inputMethodEvent(param1);
}

QVariant* QSplitter_virtualbase_inputMethodQuery(const VirtualQSplitter* self, int param1) {

	return new QVariant(self->QSplitter::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QSplitter_virtualbase_focusNextPrevChild(VirtualQSplitter* self, bool next) {

	return self->QSplitter::focusNextPrevChild(next);
}

bool QSplitter_virtualbase_eventFilter(VirtualQSplitter* self, QObject* watched, QEvent* event) {

	return self->QSplitter::eventFilter(watched, event);
}

void QSplitter_virtualbase_timerEvent(VirtualQSplitter* self, QTimerEvent* event) {

	self->QSplitter::timerEvent(event);
}

void QSplitter_virtualbase_customEvent(VirtualQSplitter* self, QEvent* event) {

	self->QSplitter::customEvent(event);
}

void QSplitter_virtualbase_connectNotify(VirtualQSplitter* self, QMetaMethod* signal) {

	self->QSplitter::connectNotify(*signal);
}

void QSplitter_virtualbase_disconnectNotify(VirtualQSplitter* self, QMetaMethod* signal) {

	self->QSplitter::disconnectNotify(*signal);
}

const QMetaObject* QSplitter_staticMetaObject() { return &QSplitter::staticMetaObject; }

const QSplitter_VTable* QSplitter_vtbl(const VirtualQSplitter* self) { return self->vtbl; }
void* QSplitter_vdata(const VirtualQSplitter* self) { return self->vdata; }
void QSplitter_setVdata(VirtualQSplitter* self, void* vdata) { self->vdata = vdata; }

void QSplitter_protectedbase_moveSplitter(VirtualQSplitter* self, int pos, int index) {
	self->moveSplitter(static_cast<int>(pos), static_cast<int>(index));
}

void QSplitter_protectedbase_setRubberBand(VirtualQSplitter* self, int position) {
	self->setRubberBand(static_cast<int>(position));
}

int QSplitter_protectedbase_closestLegalPosition(VirtualQSplitter* self, int param1, int param2) {
	return self->closestLegalPosition(static_cast<int>(param1), static_cast<int>(param2));
}

void QSplitter_protectedbase_drawFrame(VirtualQSplitter* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QSplitter_protectedbase_initStyleOption(const VirtualQSplitter* self, QStyleOptionFrame* option) {
	self->initStyleOption(option);
}

void QSplitter_protectedbase_updateMicroFocus(VirtualQSplitter* self) {
	self->updateMicroFocus();
}

void QSplitter_protectedbase_create(VirtualQSplitter* self) {
	self->create();
}

void QSplitter_protectedbase_destroy(VirtualQSplitter* self) {
	self->destroy();
}

bool QSplitter_protectedbase_focusNextChild(VirtualQSplitter* self) {
	return self->focusNextChild();
}

bool QSplitter_protectedbase_focusPreviousChild(VirtualQSplitter* self) {
	return self->focusPreviousChild();
}

QObject* QSplitter_protectedbase_sender(const VirtualQSplitter* self) {
	return self->sender();
}

int QSplitter_protectedbase_senderSignalIndex(const VirtualQSplitter* self) {
	return self->senderSignalIndex();
}

int QSplitter_protectedbase_receivers(const VirtualQSplitter* self, const char* signal) {
	return self->receivers(signal);
}

bool QSplitter_protectedbase_isSignalConnected(const VirtualQSplitter* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSplitter_delete(QSplitter* self) {
	delete self;
}

class VirtualQSplitterHandle final : public QSplitterHandle {
	const QSplitterHandle_VTable* vtbl;
	void* vdata;
public:
	friend const QSplitterHandle_VTable* QSplitterHandle_vtbl(const VirtualQSplitterHandle* self);
	friend void* QSplitterHandle_vdata(const VirtualQSplitterHandle* self);
	friend void QSplitterHandle_setVdata(VirtualQSplitterHandle* self, void* vdata);

	VirtualQSplitterHandle(const QSplitterHandle_VTable* vtbl, void* vdata, Qt::Orientation o, QSplitter* parent): QSplitterHandle(o, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSplitterHandle() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSplitterHandle::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSplitterHandle_virtualbase_metaObject(const VirtualQSplitterHandle* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSplitterHandle::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSplitterHandle_virtualbase_metacast(VirtualQSplitterHandle* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSplitterHandle::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSplitterHandle_virtualbase_metacall(VirtualQSplitterHandle* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSplitterHandle::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSplitterHandle_virtualbase_sizeHint(const VirtualQSplitterHandle* self);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QSplitterHandle::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_paintEvent(VirtualQSplitterHandle* self, QPaintEvent* param1);

	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QSplitterHandle::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_mouseMoveEvent(VirtualQSplitterHandle* self, QMouseEvent* param1);

	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QSplitterHandle::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_mousePressEvent(VirtualQSplitterHandle* self, QMouseEvent* param1);

	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QSplitterHandle::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_mouseReleaseEvent(VirtualQSplitterHandle* self, QMouseEvent* param1);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QSplitterHandle::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_resizeEvent(VirtualQSplitterHandle* self, QResizeEvent* param1);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QSplitterHandle::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSplitterHandle_virtualbase_event(VirtualQSplitterHandle* self, QEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QSplitterHandle::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QSplitterHandle_virtualbase_devType(const VirtualQSplitterHandle* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QSplitterHandle::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_setVisible(VirtualQSplitterHandle* self, bool visible);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QSplitterHandle::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSplitterHandle_virtualbase_minimumSizeHint(const VirtualQSplitterHandle* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QSplitterHandle::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSplitterHandle_virtualbase_heightForWidth(const VirtualQSplitterHandle* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QSplitterHandle::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QSplitterHandle_virtualbase_hasHeightForWidth(const VirtualQSplitterHandle* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QSplitterHandle::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QSplitterHandle_virtualbase_paintEngine(const VirtualQSplitterHandle* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QSplitterHandle::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_mouseDoubleClickEvent(VirtualQSplitterHandle* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QSplitterHandle::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_wheelEvent(VirtualQSplitterHandle* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QSplitterHandle::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_keyPressEvent(VirtualQSplitterHandle* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QSplitterHandle::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_keyReleaseEvent(VirtualQSplitterHandle* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QSplitterHandle::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_focusInEvent(VirtualQSplitterHandle* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QSplitterHandle::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_focusOutEvent(VirtualQSplitterHandle* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QSplitterHandle::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_enterEvent(VirtualQSplitterHandle* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QSplitterHandle::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_leaveEvent(VirtualQSplitterHandle* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QSplitterHandle::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_moveEvent(VirtualQSplitterHandle* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QSplitterHandle::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_closeEvent(VirtualQSplitterHandle* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QSplitterHandle::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_contextMenuEvent(VirtualQSplitterHandle* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QSplitterHandle::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_tabletEvent(VirtualQSplitterHandle* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QSplitterHandle::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_actionEvent(VirtualQSplitterHandle* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QSplitterHandle::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_dragEnterEvent(VirtualQSplitterHandle* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QSplitterHandle::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_dragMoveEvent(VirtualQSplitterHandle* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QSplitterHandle::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_dragLeaveEvent(VirtualQSplitterHandle* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QSplitterHandle::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_dropEvent(VirtualQSplitterHandle* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QSplitterHandle::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_showEvent(VirtualQSplitterHandle* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QSplitterHandle::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_hideEvent(VirtualQSplitterHandle* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QSplitterHandle::nativeEvent(eventType, message, result);
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

	friend bool QSplitterHandle_virtualbase_nativeEvent(VirtualQSplitterHandle* self, struct miqt_string eventType, void* message, long* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QSplitterHandle::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_changeEvent(VirtualQSplitterHandle* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QSplitterHandle::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSplitterHandle_virtualbase_metric(const VirtualQSplitterHandle* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QSplitterHandle::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_initPainter(const VirtualQSplitterHandle* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QSplitterHandle::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QSplitterHandle_virtualbase_redirected(const VirtualQSplitterHandle* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QSplitterHandle::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QSplitterHandle_virtualbase_sharedPainter(const VirtualQSplitterHandle* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QSplitterHandle::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_inputMethodEvent(VirtualQSplitterHandle* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QSplitterHandle::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QSplitterHandle_virtualbase_inputMethodQuery(const VirtualQSplitterHandle* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QSplitterHandle::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QSplitterHandle_virtualbase_focusNextPrevChild(VirtualQSplitterHandle* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSplitterHandle::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSplitterHandle_virtualbase_eventFilter(VirtualQSplitterHandle* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSplitterHandle::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_timerEvent(VirtualQSplitterHandle* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSplitterHandle::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_childEvent(VirtualQSplitterHandle* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSplitterHandle::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_customEvent(VirtualQSplitterHandle* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSplitterHandle::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_connectNotify(VirtualQSplitterHandle* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSplitterHandle::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSplitterHandle_virtualbase_disconnectNotify(VirtualQSplitterHandle* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSplitterHandle_protectedbase_moveSplitter(VirtualQSplitterHandle* self, int p);
	friend int QSplitterHandle_protectedbase_closestLegalPosition(VirtualQSplitterHandle* self, int p);
	friend void QSplitterHandle_protectedbase_updateMicroFocus(VirtualQSplitterHandle* self);
	friend void QSplitterHandle_protectedbase_create(VirtualQSplitterHandle* self);
	friend void QSplitterHandle_protectedbase_destroy(VirtualQSplitterHandle* self);
	friend bool QSplitterHandle_protectedbase_focusNextChild(VirtualQSplitterHandle* self);
	friend bool QSplitterHandle_protectedbase_focusPreviousChild(VirtualQSplitterHandle* self);
	friend QObject* QSplitterHandle_protectedbase_sender(const VirtualQSplitterHandle* self);
	friend int QSplitterHandle_protectedbase_senderSignalIndex(const VirtualQSplitterHandle* self);
	friend int QSplitterHandle_protectedbase_receivers(const VirtualQSplitterHandle* self, const char* signal);
	friend bool QSplitterHandle_protectedbase_isSignalConnected(const VirtualQSplitterHandle* self, QMetaMethod* signal);
};

VirtualQSplitterHandle* QSplitterHandle_new(const QSplitterHandle_VTable* vtbl, void* vdata, int o, QSplitter* parent) {
	return new VirtualQSplitterHandle(vtbl, vdata, static_cast<Qt::Orientation>(o), parent);
}

void QSplitterHandle_virtbase(QSplitterHandle* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QSplitterHandle_metaObject(const QSplitterHandle* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSplitterHandle_metacast(QSplitterHandle* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSplitterHandle_metacall(QSplitterHandle* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSplitterHandle_tr(const char* s) {
	QString _ret = QSplitterHandle::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplitterHandle_trUtf8(const char* s) {
	QString _ret = QSplitterHandle::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSplitterHandle_setOrientation(QSplitterHandle* self, int o) {
	self->setOrientation(static_cast<Qt::Orientation>(o));
}

int QSplitterHandle_orientation(const QSplitterHandle* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

bool QSplitterHandle_opaqueResize(const QSplitterHandle* self) {
	return self->opaqueResize();
}

QSplitter* QSplitterHandle_splitter(const QSplitterHandle* self) {
	return self->splitter();
}

QSize* QSplitterHandle_sizeHint(const QSplitterHandle* self) {
	return new QSize(self->sizeHint());
}

struct miqt_string QSplitterHandle_tr2(const char* s, const char* c) {
	QString _ret = QSplitterHandle::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplitterHandle_tr3(const char* s, const char* c, int n) {
	QString _ret = QSplitterHandle::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplitterHandle_trUtf82(const char* s, const char* c) {
	QString _ret = QSplitterHandle::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplitterHandle_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSplitterHandle::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSplitterHandle_virtualbase_metaObject(const VirtualQSplitterHandle* self) {

	return (QMetaObject*) self->QSplitterHandle::metaObject();
}

void* QSplitterHandle_virtualbase_metacast(VirtualQSplitterHandle* self, const char* param1) {

	return self->QSplitterHandle::qt_metacast(param1);
}

int QSplitterHandle_virtualbase_metacall(VirtualQSplitterHandle* self, int param1, int param2, void** param3) {

	return self->QSplitterHandle::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QSplitterHandle_virtualbase_sizeHint(const VirtualQSplitterHandle* self) {

	return new QSize(self->QSplitterHandle::sizeHint());
}

void QSplitterHandle_virtualbase_paintEvent(VirtualQSplitterHandle* self, QPaintEvent* param1) {

	self->QSplitterHandle::paintEvent(param1);
}

void QSplitterHandle_virtualbase_mouseMoveEvent(VirtualQSplitterHandle* self, QMouseEvent* param1) {

	self->QSplitterHandle::mouseMoveEvent(param1);
}

void QSplitterHandle_virtualbase_mousePressEvent(VirtualQSplitterHandle* self, QMouseEvent* param1) {

	self->QSplitterHandle::mousePressEvent(param1);
}

void QSplitterHandle_virtualbase_mouseReleaseEvent(VirtualQSplitterHandle* self, QMouseEvent* param1) {

	self->QSplitterHandle::mouseReleaseEvent(param1);
}

void QSplitterHandle_virtualbase_resizeEvent(VirtualQSplitterHandle* self, QResizeEvent* param1) {

	self->QSplitterHandle::resizeEvent(param1);
}

bool QSplitterHandle_virtualbase_event(VirtualQSplitterHandle* self, QEvent* param1) {

	return self->QSplitterHandle::event(param1);
}

int QSplitterHandle_virtualbase_devType(const VirtualQSplitterHandle* self) {

	return self->QSplitterHandle::devType();
}

void QSplitterHandle_virtualbase_setVisible(VirtualQSplitterHandle* self, bool visible) {

	self->QSplitterHandle::setVisible(visible);
}

QSize* QSplitterHandle_virtualbase_minimumSizeHint(const VirtualQSplitterHandle* self) {

	return new QSize(self->QSplitterHandle::minimumSizeHint());
}

int QSplitterHandle_virtualbase_heightForWidth(const VirtualQSplitterHandle* self, int param1) {

	return self->QSplitterHandle::heightForWidth(static_cast<int>(param1));
}

bool QSplitterHandle_virtualbase_hasHeightForWidth(const VirtualQSplitterHandle* self) {

	return self->QSplitterHandle::hasHeightForWidth();
}

QPaintEngine* QSplitterHandle_virtualbase_paintEngine(const VirtualQSplitterHandle* self) {

	return self->QSplitterHandle::paintEngine();
}

void QSplitterHandle_virtualbase_mouseDoubleClickEvent(VirtualQSplitterHandle* self, QMouseEvent* event) {

	self->QSplitterHandle::mouseDoubleClickEvent(event);
}

void QSplitterHandle_virtualbase_wheelEvent(VirtualQSplitterHandle* self, QWheelEvent* event) {

	self->QSplitterHandle::wheelEvent(event);
}

void QSplitterHandle_virtualbase_keyPressEvent(VirtualQSplitterHandle* self, QKeyEvent* event) {

	self->QSplitterHandle::keyPressEvent(event);
}

void QSplitterHandle_virtualbase_keyReleaseEvent(VirtualQSplitterHandle* self, QKeyEvent* event) {

	self->QSplitterHandle::keyReleaseEvent(event);
}

void QSplitterHandle_virtualbase_focusInEvent(VirtualQSplitterHandle* self, QFocusEvent* event) {

	self->QSplitterHandle::focusInEvent(event);
}

void QSplitterHandle_virtualbase_focusOutEvent(VirtualQSplitterHandle* self, QFocusEvent* event) {

	self->QSplitterHandle::focusOutEvent(event);
}

void QSplitterHandle_virtualbase_enterEvent(VirtualQSplitterHandle* self, QEvent* event) {

	self->QSplitterHandle::enterEvent(event);
}

void QSplitterHandle_virtualbase_leaveEvent(VirtualQSplitterHandle* self, QEvent* event) {

	self->QSplitterHandle::leaveEvent(event);
}

void QSplitterHandle_virtualbase_moveEvent(VirtualQSplitterHandle* self, QMoveEvent* event) {

	self->QSplitterHandle::moveEvent(event);
}

void QSplitterHandle_virtualbase_closeEvent(VirtualQSplitterHandle* self, QCloseEvent* event) {

	self->QSplitterHandle::closeEvent(event);
}

void QSplitterHandle_virtualbase_contextMenuEvent(VirtualQSplitterHandle* self, QContextMenuEvent* event) {

	self->QSplitterHandle::contextMenuEvent(event);
}

void QSplitterHandle_virtualbase_tabletEvent(VirtualQSplitterHandle* self, QTabletEvent* event) {

	self->QSplitterHandle::tabletEvent(event);
}

void QSplitterHandle_virtualbase_actionEvent(VirtualQSplitterHandle* self, QActionEvent* event) {

	self->QSplitterHandle::actionEvent(event);
}

void QSplitterHandle_virtualbase_dragEnterEvent(VirtualQSplitterHandle* self, QDragEnterEvent* event) {

	self->QSplitterHandle::dragEnterEvent(event);
}

void QSplitterHandle_virtualbase_dragMoveEvent(VirtualQSplitterHandle* self, QDragMoveEvent* event) {

	self->QSplitterHandle::dragMoveEvent(event);
}

void QSplitterHandle_virtualbase_dragLeaveEvent(VirtualQSplitterHandle* self, QDragLeaveEvent* event) {

	self->QSplitterHandle::dragLeaveEvent(event);
}

void QSplitterHandle_virtualbase_dropEvent(VirtualQSplitterHandle* self, QDropEvent* event) {

	self->QSplitterHandle::dropEvent(event);
}

void QSplitterHandle_virtualbase_showEvent(VirtualQSplitterHandle* self, QShowEvent* event) {

	self->QSplitterHandle::showEvent(event);
}

void QSplitterHandle_virtualbase_hideEvent(VirtualQSplitterHandle* self, QHideEvent* event) {

	self->QSplitterHandle::hideEvent(event);
}

bool QSplitterHandle_virtualbase_nativeEvent(VirtualQSplitterHandle* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QSplitterHandle::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

void QSplitterHandle_virtualbase_changeEvent(VirtualQSplitterHandle* self, QEvent* param1) {

	self->QSplitterHandle::changeEvent(param1);
}

int QSplitterHandle_virtualbase_metric(const VirtualQSplitterHandle* self, int param1) {

	return self->QSplitterHandle::metric(static_cast<VirtualQSplitterHandle::PaintDeviceMetric>(param1));
}

void QSplitterHandle_virtualbase_initPainter(const VirtualQSplitterHandle* self, QPainter* painter) {

	self->QSplitterHandle::initPainter(painter);
}

QPaintDevice* QSplitterHandle_virtualbase_redirected(const VirtualQSplitterHandle* self, QPoint* offset) {

	return self->QSplitterHandle::redirected(offset);
}

QPainter* QSplitterHandle_virtualbase_sharedPainter(const VirtualQSplitterHandle* self) {

	return self->QSplitterHandle::sharedPainter();
}

void QSplitterHandle_virtualbase_inputMethodEvent(VirtualQSplitterHandle* self, QInputMethodEvent* param1) {

	self->QSplitterHandle::inputMethodEvent(param1);
}

QVariant* QSplitterHandle_virtualbase_inputMethodQuery(const VirtualQSplitterHandle* self, int param1) {

	return new QVariant(self->QSplitterHandle::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QSplitterHandle_virtualbase_focusNextPrevChild(VirtualQSplitterHandle* self, bool next) {

	return self->QSplitterHandle::focusNextPrevChild(next);
}

bool QSplitterHandle_virtualbase_eventFilter(VirtualQSplitterHandle* self, QObject* watched, QEvent* event) {

	return self->QSplitterHandle::eventFilter(watched, event);
}

void QSplitterHandle_virtualbase_timerEvent(VirtualQSplitterHandle* self, QTimerEvent* event) {

	self->QSplitterHandle::timerEvent(event);
}

void QSplitterHandle_virtualbase_childEvent(VirtualQSplitterHandle* self, QChildEvent* event) {

	self->QSplitterHandle::childEvent(event);
}

void QSplitterHandle_virtualbase_customEvent(VirtualQSplitterHandle* self, QEvent* event) {

	self->QSplitterHandle::customEvent(event);
}

void QSplitterHandle_virtualbase_connectNotify(VirtualQSplitterHandle* self, QMetaMethod* signal) {

	self->QSplitterHandle::connectNotify(*signal);
}

void QSplitterHandle_virtualbase_disconnectNotify(VirtualQSplitterHandle* self, QMetaMethod* signal) {

	self->QSplitterHandle::disconnectNotify(*signal);
}

const QMetaObject* QSplitterHandle_staticMetaObject() { return &QSplitterHandle::staticMetaObject; }

const QSplitterHandle_VTable* QSplitterHandle_vtbl(const VirtualQSplitterHandle* self) { return self->vtbl; }
void* QSplitterHandle_vdata(const VirtualQSplitterHandle* self) { return self->vdata; }
void QSplitterHandle_setVdata(VirtualQSplitterHandle* self, void* vdata) { self->vdata = vdata; }

void QSplitterHandle_protectedbase_moveSplitter(VirtualQSplitterHandle* self, int p) {
	self->moveSplitter(static_cast<int>(p));
}

int QSplitterHandle_protectedbase_closestLegalPosition(VirtualQSplitterHandle* self, int p) {
	return self->closestLegalPosition(static_cast<int>(p));
}

void QSplitterHandle_protectedbase_updateMicroFocus(VirtualQSplitterHandle* self) {
	self->updateMicroFocus();
}

void QSplitterHandle_protectedbase_create(VirtualQSplitterHandle* self) {
	self->create();
}

void QSplitterHandle_protectedbase_destroy(VirtualQSplitterHandle* self) {
	self->destroy();
}

bool QSplitterHandle_protectedbase_focusNextChild(VirtualQSplitterHandle* self) {
	return self->focusNextChild();
}

bool QSplitterHandle_protectedbase_focusPreviousChild(VirtualQSplitterHandle* self) {
	return self->focusPreviousChild();
}

QObject* QSplitterHandle_protectedbase_sender(const VirtualQSplitterHandle* self) {
	return self->sender();
}

int QSplitterHandle_protectedbase_senderSignalIndex(const VirtualQSplitterHandle* self) {
	return self->senderSignalIndex();
}

int QSplitterHandle_protectedbase_receivers(const VirtualQSplitterHandle* self, const char* signal) {
	return self->receivers(signal);
}

bool QSplitterHandle_protectedbase_isSignalConnected(const VirtualQSplitterHandle* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSplitterHandle_delete(QSplitterHandle* self) {
	delete self;
}

