#include <QChildEvent>
#include <QColor>
#include <QEvent>
#include <QFont>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QSyntaxHighlighter>
#include <QTextBlock>
#include <QTextBlockUserData>
#include <QTextCharFormat>
#include <QTextDocument>
#include <QTimerEvent>
#include <qsyntaxhighlighter.h>
#include "gen_qsyntaxhighlighter.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSyntaxHighlighter final : public QSyntaxHighlighter {
	struct QSyntaxHighlighter_VTable* vtbl;
public:

	VirtualQSyntaxHighlighter(struct QSyntaxHighlighter_VTable* vtbl, QObject* parent): QSyntaxHighlighter(parent), vtbl(vtbl) {};
	VirtualQSyntaxHighlighter(struct QSyntaxHighlighter_VTable* vtbl, QTextDocument* parent): QSyntaxHighlighter(parent), vtbl(vtbl) {};

	virtual ~VirtualQSyntaxHighlighter() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSyntaxHighlighter::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QSyntaxHighlighter_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSyntaxHighlighter::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QSyntaxHighlighter_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSyntaxHighlighter::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSyntaxHighlighter_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void highlightBlock(const QString& text) override {
		if (vtbl->highlightBlock == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;

		vtbl->highlightBlock(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSyntaxHighlighter::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSyntaxHighlighter_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSyntaxHighlighter::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSyntaxHighlighter_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSyntaxHighlighter::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QSyntaxHighlighter_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSyntaxHighlighter::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QSyntaxHighlighter_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSyntaxHighlighter::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QSyntaxHighlighter_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSyntaxHighlighter::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QSyntaxHighlighter_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSyntaxHighlighter::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QSyntaxHighlighter_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSyntaxHighlighter_protectedbase_setFormat(void* self, int start, int count, QTextCharFormat* format);
	friend void QSyntaxHighlighter_protectedbase_setFormat2(void* self, int start, int count, QColor* color);
	friend void QSyntaxHighlighter_protectedbase_setFormat3(void* self, int start, int count, QFont* font);
	friend QTextCharFormat* QSyntaxHighlighter_protectedbase_format(const void* self, int pos);
	friend int QSyntaxHighlighter_protectedbase_previousBlockState(const void* self);
	friend int QSyntaxHighlighter_protectedbase_currentBlockState(const void* self);
	friend void QSyntaxHighlighter_protectedbase_setCurrentBlockState(void* self, int newState);
	friend void QSyntaxHighlighter_protectedbase_setCurrentBlockUserData(void* self, QTextBlockUserData* data);
	friend QTextBlockUserData* QSyntaxHighlighter_protectedbase_currentBlockUserData(const void* self);
	friend QTextBlock* QSyntaxHighlighter_protectedbase_currentBlock(const void* self);
	friend QObject* QSyntaxHighlighter_protectedbase_sender(const void* self);
	friend int QSyntaxHighlighter_protectedbase_senderSignalIndex(const void* self);
	friend int QSyntaxHighlighter_protectedbase_receivers(const void* self, const char* signal);
	friend bool QSyntaxHighlighter_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QSyntaxHighlighter* QSyntaxHighlighter_new(struct QSyntaxHighlighter_VTable* vtbl, QObject* parent) {
	return new VirtualQSyntaxHighlighter(vtbl, parent);
}

QSyntaxHighlighter* QSyntaxHighlighter_new2(struct QSyntaxHighlighter_VTable* vtbl, QTextDocument* parent) {
	return new VirtualQSyntaxHighlighter(vtbl, parent);
}

void QSyntaxHighlighter_virtbase(QSyntaxHighlighter* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSyntaxHighlighter_metaObject(const QSyntaxHighlighter* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSyntaxHighlighter_metacast(QSyntaxHighlighter* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSyntaxHighlighter_metacall(QSyntaxHighlighter* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSyntaxHighlighter_tr(const char* s) {
	QString _ret = QSyntaxHighlighter::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSyntaxHighlighter_setDocument(QSyntaxHighlighter* self, QTextDocument* doc) {
	self->setDocument(doc);
}

QTextDocument* QSyntaxHighlighter_document(const QSyntaxHighlighter* self) {
	return self->document();
}

void QSyntaxHighlighter_rehighlight(QSyntaxHighlighter* self) {
	self->rehighlight();
}

void QSyntaxHighlighter_rehighlightBlock(QSyntaxHighlighter* self, QTextBlock* block) {
	self->rehighlightBlock(*block);
}

struct miqt_string QSyntaxHighlighter_tr2(const char* s, const char* c) {
	QString _ret = QSyntaxHighlighter::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSyntaxHighlighter_tr3(const char* s, const char* c, int n) {
	QString _ret = QSyntaxHighlighter::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSyntaxHighlighter_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSyntaxHighlighter*)(self) )->QSyntaxHighlighter::metaObject();

}

void* QSyntaxHighlighter_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSyntaxHighlighter*)(self) )->QSyntaxHighlighter::qt_metacast(param1);

}

int QSyntaxHighlighter_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSyntaxHighlighter*)(self) )->QSyntaxHighlighter::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QSyntaxHighlighter_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQSyntaxHighlighter*)(self) )->QSyntaxHighlighter::event(event);

}

bool QSyntaxHighlighter_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSyntaxHighlighter*)(self) )->QSyntaxHighlighter::eventFilter(watched, event);

}

void QSyntaxHighlighter_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQSyntaxHighlighter*)(self) )->QSyntaxHighlighter::timerEvent(event);

}

void QSyntaxHighlighter_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSyntaxHighlighter*)(self) )->QSyntaxHighlighter::childEvent(event);

}

void QSyntaxHighlighter_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSyntaxHighlighter*)(self) )->QSyntaxHighlighter::customEvent(event);

}

void QSyntaxHighlighter_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSyntaxHighlighter*)(self) )->QSyntaxHighlighter::connectNotify(*signal);

}

void QSyntaxHighlighter_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSyntaxHighlighter*)(self) )->QSyntaxHighlighter::disconnectNotify(*signal);

}

const QMetaObject* QSyntaxHighlighter_staticMetaObject() { return &QSyntaxHighlighter::staticMetaObject; }
void QSyntaxHighlighter_protectedbase_setFormat(void* self, int start, int count, QTextCharFormat* format) {
	VirtualQSyntaxHighlighter* self_cast = static_cast<VirtualQSyntaxHighlighter*>( (QSyntaxHighlighter*)(self) );
	
	self_cast->setFormat(static_cast<int>(start), static_cast<int>(count), *format);

}

void QSyntaxHighlighter_protectedbase_setFormat2(void* self, int start, int count, QColor* color) {
	VirtualQSyntaxHighlighter* self_cast = static_cast<VirtualQSyntaxHighlighter*>( (QSyntaxHighlighter*)(self) );
	
	self_cast->setFormat(static_cast<int>(start), static_cast<int>(count), *color);

}

void QSyntaxHighlighter_protectedbase_setFormat3(void* self, int start, int count, QFont* font) {
	VirtualQSyntaxHighlighter* self_cast = static_cast<VirtualQSyntaxHighlighter*>( (QSyntaxHighlighter*)(self) );
	
	self_cast->setFormat(static_cast<int>(start), static_cast<int>(count), *font);

}

QTextCharFormat* QSyntaxHighlighter_protectedbase_format(const void* self, int pos) {
	VirtualQSyntaxHighlighter* self_cast = static_cast<VirtualQSyntaxHighlighter*>( (QSyntaxHighlighter*)(self) );
	
	return new QTextCharFormat(self_cast->format(static_cast<int>(pos)));

}

int QSyntaxHighlighter_protectedbase_previousBlockState(const void* self) {
	VirtualQSyntaxHighlighter* self_cast = static_cast<VirtualQSyntaxHighlighter*>( (QSyntaxHighlighter*)(self) );
	
	return self_cast->previousBlockState();

}

int QSyntaxHighlighter_protectedbase_currentBlockState(const void* self) {
	VirtualQSyntaxHighlighter* self_cast = static_cast<VirtualQSyntaxHighlighter*>( (QSyntaxHighlighter*)(self) );
	
	return self_cast->currentBlockState();

}

void QSyntaxHighlighter_protectedbase_setCurrentBlockState(void* self, int newState) {
	VirtualQSyntaxHighlighter* self_cast = static_cast<VirtualQSyntaxHighlighter*>( (QSyntaxHighlighter*)(self) );
	
	self_cast->setCurrentBlockState(static_cast<int>(newState));

}

void QSyntaxHighlighter_protectedbase_setCurrentBlockUserData(void* self, QTextBlockUserData* data) {
	VirtualQSyntaxHighlighter* self_cast = static_cast<VirtualQSyntaxHighlighter*>( (QSyntaxHighlighter*)(self) );
	
	self_cast->setCurrentBlockUserData(data);

}

QTextBlockUserData* QSyntaxHighlighter_protectedbase_currentBlockUserData(const void* self) {
	VirtualQSyntaxHighlighter* self_cast = static_cast<VirtualQSyntaxHighlighter*>( (QSyntaxHighlighter*)(self) );
	
	return self_cast->currentBlockUserData();

}

QTextBlock* QSyntaxHighlighter_protectedbase_currentBlock(const void* self) {
	VirtualQSyntaxHighlighter* self_cast = static_cast<VirtualQSyntaxHighlighter*>( (QSyntaxHighlighter*)(self) );
	
	return new QTextBlock(self_cast->currentBlock());

}

QObject* QSyntaxHighlighter_protectedbase_sender(const void* self) {
	VirtualQSyntaxHighlighter* self_cast = static_cast<VirtualQSyntaxHighlighter*>( (QSyntaxHighlighter*)(self) );
	
	return self_cast->sender();

}

int QSyntaxHighlighter_protectedbase_senderSignalIndex(const void* self) {
	VirtualQSyntaxHighlighter* self_cast = static_cast<VirtualQSyntaxHighlighter*>( (QSyntaxHighlighter*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QSyntaxHighlighter_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQSyntaxHighlighter* self_cast = static_cast<VirtualQSyntaxHighlighter*>( (QSyntaxHighlighter*)(self) );
	
	return self_cast->receivers(signal);

}

bool QSyntaxHighlighter_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQSyntaxHighlighter* self_cast = static_cast<VirtualQSyntaxHighlighter*>( (QSyntaxHighlighter*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QSyntaxHighlighter_delete(QSyntaxHighlighter* self) {
	delete self;
}

