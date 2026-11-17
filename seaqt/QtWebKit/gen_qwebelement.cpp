#include <QList>
#include <QPainter>
#include <QRect>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <QWebElement>
#include <QWebElementCollection>
#define WORKAROUND_INNER_CLASS_DEFINITION_QWebElementCollection__const_iterator
#define WORKAROUND_INNER_CLASS_DEFINITION_QWebElementCollection__iterator
#include <qwebelement.h>
#include "gen_qwebelement.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWebElement* QWebElement_new() {
	return new (std::nothrow) QWebElement();
}

QWebElement* QWebElement_new_from(QWebElement* from) {
	return new (std::nothrow) QWebElement(*from);
}

void QWebElement_operatorAssign(QWebElement* self, QWebElement* from) {
	self->operator=(*from);
}

bool QWebElement_operatorEqual(const QWebElement* self, QWebElement* o) {
	return (*self == *o);
}

bool QWebElement_operatorNotEqual(const QWebElement* self, QWebElement* o) {
	return (*self != *o);
}

bool QWebElement_isNull(const QWebElement* self) {
	return self->isNull();
}

QWebElementCollection* QWebElement_findAll(const QWebElement* self, struct seaqt_string selectorQuery) {
	QString selectorQuery_QString = QString::fromUtf8(selectorQuery.data, selectorQuery.len);
	return new QWebElementCollection(self->findAll(selectorQuery_QString));
}

QWebElement* QWebElement_findFirst(const QWebElement* self, struct seaqt_string selectorQuery) {
	QString selectorQuery_QString = QString::fromUtf8(selectorQuery.data, selectorQuery.len);
	return new QWebElement(self->findFirst(selectorQuery_QString));
}

void QWebElement_setPlainText(QWebElement* self, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setPlainText(text_QString);
}

struct seaqt_string QWebElement_toPlainText(const QWebElement* self) {
	QString _ret = self->toPlainText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebElement_setOuterXml(QWebElement* self, struct seaqt_string markup) {
	QString markup_QString = QString::fromUtf8(markup.data, markup.len);
	self->setOuterXml(markup_QString);
}

struct seaqt_string QWebElement_toOuterXml(const QWebElement* self) {
	QString _ret = self->toOuterXml();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebElement_setInnerXml(QWebElement* self, struct seaqt_string markup) {
	QString markup_QString = QString::fromUtf8(markup.data, markup.len);
	self->setInnerXml(markup_QString);
}

struct seaqt_string QWebElement_toInnerXml(const QWebElement* self) {
	QString _ret = self->toInnerXml();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebElement_setAttribute(QWebElement* self, struct seaqt_string name, struct seaqt_string value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString value_QString = QString::fromUtf8(value.data, value.len);
	self->setAttribute(name_QString, value_QString);
}

void QWebElement_setAttributeNS(QWebElement* self, struct seaqt_string namespaceUri, struct seaqt_string name, struct seaqt_string value) {
	QString namespaceUri_QString = QString::fromUtf8(namespaceUri.data, namespaceUri.len);
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString value_QString = QString::fromUtf8(value.data, value.len);
	self->setAttributeNS(namespaceUri_QString, name_QString, value_QString);
}

struct seaqt_string QWebElement_attribute_name(const QWebElement* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString _ret = self->attribute(name_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebElement_attributeNS_namespaceUri_name(const QWebElement* self, struct seaqt_string namespaceUri, struct seaqt_string name) {
	QString namespaceUri_QString = QString::fromUtf8(namespaceUri.data, namespaceUri.len);
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString _ret = self->attributeNS(namespaceUri_QString, name_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QWebElement_hasAttribute(const QWebElement* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->hasAttribute(name_QString);
}

bool QWebElement_hasAttributeNS(const QWebElement* self, struct seaqt_string namespaceUri, struct seaqt_string name) {
	QString namespaceUri_QString = QString::fromUtf8(namespaceUri.data, namespaceUri.len);
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->hasAttributeNS(namespaceUri_QString, name_QString);
}

void QWebElement_removeAttribute(QWebElement* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->removeAttribute(name_QString);
}

void QWebElement_removeAttributeNS(QWebElement* self, struct seaqt_string namespaceUri, struct seaqt_string name) {
	QString namespaceUri_QString = QString::fromUtf8(namespaceUri.data, namespaceUri.len);
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->removeAttributeNS(namespaceUri_QString, name_QString);
}

bool QWebElement_hasAttributes(const QWebElement* self) {
	return self->hasAttributes();
}

struct seaqt_array /* of struct seaqt_string */  QWebElement_attributeNames(const QWebElement* self) {
	QStringList _ret = self->attributeNames();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of struct seaqt_string */  QWebElement_classes(const QWebElement* self) {
	QStringList _ret = self->classes();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QWebElement_hasClass(const QWebElement* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->hasClass(name_QString);
}

void QWebElement_addClass(QWebElement* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->addClass(name_QString);
}

void QWebElement_removeClass(QWebElement* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->removeClass(name_QString);
}

void QWebElement_toggleClass(QWebElement* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->toggleClass(name_QString);
}

bool QWebElement_hasFocus(const QWebElement* self) {
	return self->hasFocus();
}

void QWebElement_setFocus(QWebElement* self) {
	self->setFocus();
}

QRect* QWebElement_geometry(const QWebElement* self) {
	return new QRect(self->geometry());
}

struct seaqt_string QWebElement_tagName(const QWebElement* self) {
	QString _ret = self->tagName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebElement_prefix(const QWebElement* self) {
	QString _ret = self->prefix();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebElement_localName(const QWebElement* self) {
	QString _ret = self->localName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebElement_namespaceUri(const QWebElement* self) {
	QString _ret = self->namespaceUri();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWebElement* QWebElement_parent(const QWebElement* self) {
	return new QWebElement(self->parent());
}

QWebElement* QWebElement_firstChild(const QWebElement* self) {
	return new QWebElement(self->firstChild());
}

QWebElement* QWebElement_lastChild(const QWebElement* self) {
	return new QWebElement(self->lastChild());
}

QWebElement* QWebElement_nextSibling(const QWebElement* self) {
	return new QWebElement(self->nextSibling());
}

QWebElement* QWebElement_previousSibling(const QWebElement* self) {
	return new QWebElement(self->previousSibling());
}

QWebElement* QWebElement_document(const QWebElement* self) {
	return new QWebElement(self->document());
}

void QWebElement_appendInside_markup(QWebElement* self, struct seaqt_string markup) {
	QString markup_QString = QString::fromUtf8(markup.data, markup.len);
	self->appendInside(markup_QString);
}

void QWebElement_appendInside_element(QWebElement* self, QWebElement* element) {
	self->appendInside(*element);
}

void QWebElement_prependInside_markup(QWebElement* self, struct seaqt_string markup) {
	QString markup_QString = QString::fromUtf8(markup.data, markup.len);
	self->prependInside(markup_QString);
}

void QWebElement_prependInside_element(QWebElement* self, QWebElement* element) {
	self->prependInside(*element);
}

void QWebElement_appendOutside_markup(QWebElement* self, struct seaqt_string markup) {
	QString markup_QString = QString::fromUtf8(markup.data, markup.len);
	self->appendOutside(markup_QString);
}

void QWebElement_appendOutside_element(QWebElement* self, QWebElement* element) {
	self->appendOutside(*element);
}

void QWebElement_prependOutside_markup(QWebElement* self, struct seaqt_string markup) {
	QString markup_QString = QString::fromUtf8(markup.data, markup.len);
	self->prependOutside(markup_QString);
}

void QWebElement_prependOutside_element(QWebElement* self, QWebElement* element) {
	self->prependOutside(*element);
}

void QWebElement_encloseContentsWith_element(QWebElement* self, QWebElement* element) {
	self->encloseContentsWith(*element);
}

void QWebElement_encloseContentsWith_markup(QWebElement* self, struct seaqt_string markup) {
	QString markup_QString = QString::fromUtf8(markup.data, markup.len);
	self->encloseContentsWith(markup_QString);
}

void QWebElement_encloseWith_markup(QWebElement* self, struct seaqt_string markup) {
	QString markup_QString = QString::fromUtf8(markup.data, markup.len);
	self->encloseWith(markup_QString);
}

void QWebElement_encloseWith_element(QWebElement* self, QWebElement* element) {
	self->encloseWith(*element);
}

void QWebElement_replace_markup(QWebElement* self, struct seaqt_string markup) {
	QString markup_QString = QString::fromUtf8(markup.data, markup.len);
	self->replace(markup_QString);
}

void QWebElement_replace_element(QWebElement* self, QWebElement* element) {
	self->replace(*element);
}

QWebElement* QWebElement_clone(const QWebElement* self) {
	return new QWebElement(self->clone());
}

QWebElement* QWebElement_takeFromDocument(QWebElement* self) {
	QWebElement& _ret = self->takeFromDocument();
	// Cast returned reference into pointer
	return &_ret;
}

void QWebElement_removeFromDocument(QWebElement* self) {
	self->removeFromDocument();
}

void QWebElement_removeAllChildren(QWebElement* self) {
	self->removeAllChildren();
}

QVariant* QWebElement_evaluateJavaScript(QWebElement* self, struct seaqt_string scriptSource) {
	QString scriptSource_QString = QString::fromUtf8(scriptSource.data, scriptSource.len);
	return new QVariant(self->evaluateJavaScript(scriptSource_QString));
}

struct seaqt_string QWebElement_styleProperty(const QWebElement* self, struct seaqt_string name, int strategy) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString _ret = self->styleProperty(name_QString, static_cast<QWebElement::StyleResolveStrategy>(strategy));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebElement_setStyleProperty(QWebElement* self, struct seaqt_string name, struct seaqt_string value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString value_QString = QString::fromUtf8(value.data, value.len);
	self->setStyleProperty(name_QString, value_QString);
}

void QWebElement_render_painter(QWebElement* self, QPainter* painter) {
	self->render(painter);
}

void QWebElement_render_painter_clipRect(QWebElement* self, QPainter* painter, QRect* clipRect) {
	self->render(painter, *clipRect);
}

struct seaqt_string QWebElement_attribute_name_defaultValue(const QWebElement* self, struct seaqt_string name, struct seaqt_string defaultValue) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString defaultValue_QString = QString::fromUtf8(defaultValue.data, defaultValue.len);
	QString _ret = self->attribute(name_QString, defaultValue_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebElement_attributeNS_namespaceUri_name_defaultValue(const QWebElement* self, struct seaqt_string namespaceUri, struct seaqt_string name, struct seaqt_string defaultValue) {
	QString namespaceUri_QString = QString::fromUtf8(namespaceUri.data, namespaceUri.len);
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString defaultValue_QString = QString::fromUtf8(defaultValue.data, defaultValue.len);
	QString _ret = self->attributeNS(namespaceUri_QString, name_QString, defaultValue_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  QWebElement_attributeNames_namespaceUri(const QWebElement* self, struct seaqt_string namespaceUri) {
	QString namespaceUri_QString = QString::fromUtf8(namespaceUri.data, namespaceUri.len);
	QStringList _ret = self->attributeNames(namespaceUri_QString);
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QWebElement_delete(QWebElement* self) {
	delete self;
}

QWebElementCollection* QWebElementCollection_new() {
	return new (std::nothrow) QWebElementCollection();
}

QWebElementCollection* QWebElementCollection_new_contextElement_query(QWebElement* contextElement, struct seaqt_string query) {
	QString query_QString = QString::fromUtf8(query.data, query.len);
	return new (std::nothrow) QWebElementCollection(*contextElement, query_QString);
}

QWebElementCollection* QWebElementCollection_new_from(QWebElementCollection* from) {
	return new (std::nothrow) QWebElementCollection(*from);
}

void QWebElementCollection_operatorAssign(QWebElementCollection* self, QWebElementCollection* from) {
	self->operator=(*from);
}

QWebElementCollection* QWebElementCollection_operatorPlus(const QWebElementCollection* self, QWebElementCollection* other) {
	return new QWebElementCollection(self->operator+(*other));
}

QWebElementCollection* QWebElementCollection_operatorPlusAssign(QWebElementCollection* self, QWebElementCollection* other) {
	QWebElementCollection& _ret = self->operator+=(*other);
	// Cast returned reference into pointer
	return &_ret;
}

void QWebElementCollection_append(QWebElementCollection* self, QWebElementCollection* collection) {
	self->append(*collection);
}

int QWebElementCollection_count(const QWebElementCollection* self) {
	return self->count();
}

QWebElement* QWebElementCollection_at(const QWebElementCollection* self, int i) {
	return new QWebElement(self->at(static_cast<int>(i)));
}

QWebElement* QWebElementCollection_operatorSubscript(const QWebElementCollection* self, int i) {
	return new QWebElement(self->operator[](static_cast<int>(i)));
}

QWebElement* QWebElementCollection_first(const QWebElementCollection* self) {
	return new QWebElement(self->first());
}

QWebElement* QWebElementCollection_last(const QWebElementCollection* self) {
	return new QWebElement(self->last());
}

struct seaqt_array /* of QWebElement* */  QWebElementCollection_toList(const QWebElementCollection* self) {
	QList<QWebElement> _ret = self->toList();
	// Convert QList<> from C++ memory to manually-managed C memory
	QWebElement** _arr = static_cast<QWebElement**>(malloc(sizeof(QWebElement*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QWebElement(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QWebElementCollection__const_iterator* QWebElementCollection_begin_const(const QWebElementCollection* self) {
	return new QWebElementCollection::const_iterator(self->begin());
}

QWebElementCollection__const_iterator* QWebElementCollection_end_const(const QWebElementCollection* self) {
	return new QWebElementCollection::const_iterator(self->end());
}

QWebElementCollection__const_iterator* QWebElementCollection_constBegin(const QWebElementCollection* self) {
	return new QWebElementCollection::const_iterator(self->constBegin());
}

QWebElementCollection__const_iterator* QWebElementCollection_constEnd(const QWebElementCollection* self) {
	return new QWebElementCollection::const_iterator(self->constEnd());
}

QWebElementCollection__iterator* QWebElementCollection_begin(QWebElementCollection* self) {
	return new QWebElementCollection::iterator(self->begin());
}

QWebElementCollection__iterator* QWebElementCollection_end(QWebElementCollection* self) {
	return new QWebElementCollection::iterator(self->end());
}

void QWebElementCollection_delete(QWebElementCollection* self) {
	delete self;
}

QWebElementCollection__const_iterator* QWebElementCollection__const_iterator_new_collection__index(QWebElementCollection* collection_, int index) {
	return new (std::nothrow) QWebElementCollection__const_iterator(collection_, static_cast<int>(index));
}

QWebElementCollection__const_iterator* QWebElementCollection__const_iterator_new_from(QWebElementCollection__const_iterator* from) {
	return new (std::nothrow) QWebElementCollection__const_iterator(*from);
}

QWebElement* QWebElementCollection__const_iterator_operatorMultiply(const QWebElementCollection__const_iterator* self) {
	return new QWebElement(self->operator*());
}

bool QWebElementCollection__const_iterator_operatorEqual(const QWebElementCollection__const_iterator* self, QWebElementCollection__const_iterator* o) {
	return (*self == *o);
}

bool QWebElementCollection__const_iterator_operatorNotEqual(const QWebElementCollection__const_iterator* self, QWebElementCollection__const_iterator* o) {
	return (*self != *o);
}

bool QWebElementCollection__const_iterator_operatorLesser(const QWebElementCollection__const_iterator* self, QWebElementCollection__const_iterator* o) {
	return (*self < *o);
}

bool QWebElementCollection__const_iterator_operatorLesserOrEqual(const QWebElementCollection__const_iterator* self, QWebElementCollection__const_iterator* o) {
	return (*self <= *o);
}

bool QWebElementCollection__const_iterator_operatorGreater(const QWebElementCollection__const_iterator* self, QWebElementCollection__const_iterator* o) {
	return (*self > *o);
}

bool QWebElementCollection__const_iterator_operatorGreaterOrEqual(const QWebElementCollection__const_iterator* self, QWebElementCollection__const_iterator* o) {
	return (*self >= *o);
}

QWebElementCollection__const_iterator* QWebElementCollection__const_iterator_operatorPlusPlus(QWebElementCollection__const_iterator* self) {
	QWebElementCollection::const_iterator& _ret = self->operator++();
	// Cast returned reference into pointer
	return &_ret;
}

QWebElementCollection__const_iterator* QWebElementCollection__const_iterator_operatorPlusPlus_int(QWebElementCollection__const_iterator* self, int param1) {
	return new QWebElementCollection::const_iterator(self->operator++(static_cast<int>(param1)));
}

QWebElementCollection__const_iterator* QWebElementCollection__const_iterator_operatorMinusMinus(QWebElementCollection__const_iterator* self) {
	QWebElementCollection::const_iterator& _ret = self->operator--();
	// Cast returned reference into pointer
	return &_ret;
}

QWebElementCollection__const_iterator* QWebElementCollection__const_iterator_operatorMinusMinus_int(QWebElementCollection__const_iterator* self, int param1) {
	return new QWebElementCollection::const_iterator(self->operator--(static_cast<int>(param1)));
}

QWebElementCollection__const_iterator* QWebElementCollection__const_iterator_operatorPlusAssign(QWebElementCollection__const_iterator* self, int j) {
	QWebElementCollection::const_iterator& _ret = self->operator+=(static_cast<int>(j));
	// Cast returned reference into pointer
	return &_ret;
}

QWebElementCollection__const_iterator* QWebElementCollection__const_iterator_operatorMinusAssign(QWebElementCollection__const_iterator* self, int j) {
	QWebElementCollection::const_iterator& _ret = self->operator-=(static_cast<int>(j));
	// Cast returned reference into pointer
	return &_ret;
}

QWebElementCollection__const_iterator* QWebElementCollection__const_iterator_operatorPlus(const QWebElementCollection__const_iterator* self, int j) {
	return new QWebElementCollection::const_iterator(self->operator+(static_cast<int>(j)));
}

QWebElementCollection__const_iterator* QWebElementCollection__const_iterator_operatorMinus_int(const QWebElementCollection__const_iterator* self, int j) {
	return new QWebElementCollection::const_iterator(self->operator-(static_cast<int>(j)));
}

int QWebElementCollection__const_iterator_operatorMinus_QWebElementCollection_const_iterator(const QWebElementCollection__const_iterator* self, QWebElementCollection__const_iterator* j) {
	return self->operator-(*j);
}

void QWebElementCollection__const_iterator_delete(QWebElementCollection__const_iterator* self) {
	delete self;
}

QWebElementCollection__iterator* QWebElementCollection__iterator_new_collection__index(QWebElementCollection* collection_, int index) {
	return new (std::nothrow) QWebElementCollection__iterator(collection_, static_cast<int>(index));
}

QWebElementCollection__iterator* QWebElementCollection__iterator_new_from(QWebElementCollection__iterator* from) {
	return new (std::nothrow) QWebElementCollection__iterator(*from);
}

QWebElement* QWebElementCollection__iterator_operatorMultiply(const QWebElementCollection__iterator* self) {
	return new QWebElement(self->operator*());
}

bool QWebElementCollection__iterator_operatorEqual(const QWebElementCollection__iterator* self, QWebElementCollection__iterator* o) {
	return (*self == *o);
}

bool QWebElementCollection__iterator_operatorNotEqual(const QWebElementCollection__iterator* self, QWebElementCollection__iterator* o) {
	return (*self != *o);
}

bool QWebElementCollection__iterator_operatorLesser(const QWebElementCollection__iterator* self, QWebElementCollection__iterator* o) {
	return (*self < *o);
}

bool QWebElementCollection__iterator_operatorLesserOrEqual(const QWebElementCollection__iterator* self, QWebElementCollection__iterator* o) {
	return (*self <= *o);
}

bool QWebElementCollection__iterator_operatorGreater(const QWebElementCollection__iterator* self, QWebElementCollection__iterator* o) {
	return (*self > *o);
}

bool QWebElementCollection__iterator_operatorGreaterOrEqual(const QWebElementCollection__iterator* self, QWebElementCollection__iterator* o) {
	return (*self >= *o);
}

QWebElementCollection__iterator* QWebElementCollection__iterator_operatorPlusPlus(QWebElementCollection__iterator* self) {
	QWebElementCollection::iterator& _ret = self->operator++();
	// Cast returned reference into pointer
	return &_ret;
}

QWebElementCollection__iterator* QWebElementCollection__iterator_operatorPlusPlus_int(QWebElementCollection__iterator* self, int param1) {
	return new QWebElementCollection::iterator(self->operator++(static_cast<int>(param1)));
}

QWebElementCollection__iterator* QWebElementCollection__iterator_operatorMinusMinus(QWebElementCollection__iterator* self) {
	QWebElementCollection::iterator& _ret = self->operator--();
	// Cast returned reference into pointer
	return &_ret;
}

QWebElementCollection__iterator* QWebElementCollection__iterator_operatorMinusMinus_int(QWebElementCollection__iterator* self, int param1) {
	return new QWebElementCollection::iterator(self->operator--(static_cast<int>(param1)));
}

QWebElementCollection__iterator* QWebElementCollection__iterator_operatorPlusAssign(QWebElementCollection__iterator* self, int j) {
	QWebElementCollection::iterator& _ret = self->operator+=(static_cast<int>(j));
	// Cast returned reference into pointer
	return &_ret;
}

QWebElementCollection__iterator* QWebElementCollection__iterator_operatorMinusAssign(QWebElementCollection__iterator* self, int j) {
	QWebElementCollection::iterator& _ret = self->operator-=(static_cast<int>(j));
	// Cast returned reference into pointer
	return &_ret;
}

QWebElementCollection__iterator* QWebElementCollection__iterator_operatorPlus(const QWebElementCollection__iterator* self, int j) {
	return new QWebElementCollection::iterator(self->operator+(static_cast<int>(j)));
}

QWebElementCollection__iterator* QWebElementCollection__iterator_operatorMinus_int(const QWebElementCollection__iterator* self, int j) {
	return new QWebElementCollection::iterator(self->operator-(static_cast<int>(j)));
}

int QWebElementCollection__iterator_operatorMinus_QWebElementCollection_iterator(const QWebElementCollection__iterator* self, QWebElementCollection__iterator* j) {
	return self->operator-(*j);
}

void QWebElementCollection__iterator_delete(QWebElementCollection__iterator* self) {
	delete self;
}

