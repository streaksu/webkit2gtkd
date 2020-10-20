module webkit2webextension.DOMElement;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMAttr;
private import webkit2webextension.DOMCSSStyleDeclaration;
private import webkit2webextension.DOMClientRect;
private import webkit2webextension.DOMClientRectList;
private import webkit2webextension.DOMDOMTokenList;
private import webkit2webextension.DOMHTMLCollection;
private import webkit2webextension.DOMNamedNodeMap;
private import webkit2webextension.DOMNode;
private import webkit2webextension.DOMNodeList;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMElement : DOMNode
{
	/** the main Gtk struct */
	protected WebKitDOMElement* webKitDOMElement;

	/** Get the main Gtk struct */
	public WebKitDOMElement* getDOMElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMElement* webKitDOMElement, bool ownedRef = false)
	{
		this.webKitDOMElement = webKitDOMElement;
		super(cast(WebKitDOMNode*)webKitDOMElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void blur()
	{
		webkit_dom_element_blur(webKitDOMElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     selectors = A #gchar
	 *
	 * Returns: A #WebKitDOMElement
	 *
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public DOMElement closest(string selectors)
	{
		GError* err = null;

		auto __p = webkit_dom_element_closest(webKitDOMElement, Str.toStringz(selectors), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMElement)(cast(WebKitDOMElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void focus()
	{
		webkit_dom_element_focus(webKitDOMElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     name = A #gchar
	 *
	 * Returns: A #gchar
	 */
	public string getAttribute(string name)
	{
		auto retStr = webkit_dom_element_get_attribute(webKitDOMElement, Str.toStringz(name));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     name = A #gchar
	 *
	 * Returns: A #WebKitDOMAttr
	 */
	public DOMAttr getAttributeNode(string name)
	{
		auto __p = webkit_dom_element_get_attribute_node(webKitDOMElement, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMAttr)(cast(WebKitDOMAttr*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     namespaceURI = A #gchar
	 *     localName = A #gchar
	 *
	 * Returns: A #WebKitDOMAttr
	 */
	public DOMAttr getAttributeNodeNs(string namespaceURI, string localName)
	{
		auto __p = webkit_dom_element_get_attribute_node_ns(webKitDOMElement, Str.toStringz(namespaceURI), Str.toStringz(localName));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMAttr)(cast(WebKitDOMAttr*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     namespaceURI = A #gchar
	 *     localName = A #gchar
	 *
	 * Returns: A #gchar
	 */
	public string getAttributeNs(string namespaceURI, string localName)
	{
		auto retStr = webkit_dom_element_get_attribute_ns(webKitDOMElement, Str.toStringz(namespaceURI), Str.toStringz(localName));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNamedNodeMap
	 */
	public DOMNamedNodeMap getAttributes()
	{
		auto __p = webkit_dom_element_get_attributes(webKitDOMElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNamedNodeMap)(cast(WebKitDOMNamedNodeMap*) __p, true);
	}

	/**
	 * Returns a #WebKitDOMClientRect representing the size and position of @self
	 * relative to the viewport.
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMClientRect
	 *
	 * Since: 2.18
	 */
	public DOMClientRect getBoundingClientRect()
	{
		auto __p = webkit_dom_element_get_bounding_client_rect(webKitDOMElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMClientRect)(cast(WebKitDOMClientRect*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gulong
	 */
	public gulong getChildElementCount()
	{
		return webkit_dom_element_get_child_element_count(webKitDOMElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMHTMLCollection
	 *
	 * Since: 2.10
	 */
	public DOMHTMLCollection getChildren()
	{
		auto __p = webkit_dom_element_get_children(webKitDOMElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLCollection)(cast(WebKitDOMHTMLCollection*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMDOMTokenList
	 *
	 * Since: 2.16
	 */
	public DOMDOMTokenList getClassList()
	{
		auto __p = webkit_dom_element_get_class_list(webKitDOMElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMDOMTokenList)(cast(WebKitDOMDOMTokenList*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getClassName()
	{
		auto retStr = webkit_dom_element_get_class_name(webKitDOMElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gdouble
	 */
	public double getClientHeight()
	{
		return webkit_dom_element_get_client_height(webKitDOMElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gdouble
	 */
	public double getClientLeft()
	{
		return webkit_dom_element_get_client_left(webKitDOMElement);
	}

	/**
	 * Returns a collection of #WebKitDOMClientRect objects, each of which describe
	 * the size and position of a CSS border box relative to the viewport.
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMClientRectList
	 *
	 * Since: 2.18
	 */
	public DOMClientRectList getClientRects()
	{
		auto __p = webkit_dom_element_get_client_rects(webKitDOMElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMClientRectList)(cast(WebKitDOMClientRectList*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gdouble
	 */
	public double getClientTop()
	{
		return webkit_dom_element_get_client_top(webKitDOMElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gdouble
	 */
	public double getClientWidth()
	{
		return webkit_dom_element_get_client_width(webKitDOMElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_element_get_elements_by_class_name_as_html_collection() instead.
	 *
	 * Params:
	 *     className = a #gchar with the tag name
	 *
	 * Returns: a #WebKitDOMNodeList
	 */
	public DOMNodeList getElementsByClassName(string className)
	{
		auto __p = webkit_dom_element_get_elements_by_class_name(webKitDOMElement, Str.toStringz(className));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNodeList)(cast(WebKitDOMNodeList*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     name = A #gchar
	 *
	 * Returns: A #WebKitDOMHTMLCollection
	 *
	 * Since: 2.12
	 */
	public DOMHTMLCollection getElementsByClassNameAsHtmlCollection(string name)
	{
		auto __p = webkit_dom_element_get_elements_by_class_name_as_html_collection(webKitDOMElement, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLCollection)(cast(WebKitDOMHTMLCollection*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_element_get_elements_by_tag_name_as_html_collection() instead.
	 *
	 * Params:
	 *     tagName = a #gchar with the tag name
	 *
	 * Returns: a #WebKitDOMNodeList
	 */
	public DOMNodeList getElementsByTagName(string tagName)
	{
		auto __p = webkit_dom_element_get_elements_by_tag_name(webKitDOMElement, Str.toStringz(tagName));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNodeList)(cast(WebKitDOMNodeList*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     name = A #gchar
	 *
	 * Returns: A #WebKitDOMHTMLCollection
	 *
	 * Since: 2.12
	 */
	public DOMHTMLCollection getElementsByTagNameAsHtmlCollection(string name)
	{
		auto __p = webkit_dom_element_get_elements_by_tag_name_as_html_collection(webKitDOMElement, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLCollection)(cast(WebKitDOMHTMLCollection*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_element_get_elements_by_tag_name_ns_as_html_collection() instead.
	 *
	 * Params:
	 *     namespaceUri = a #gchar with the namespace URI
	 *     tagName = a #gchar with the tag name
	 *
	 * Returns: a #WebKitDOMNodeList
	 */
	public DOMNodeList getElementsByTagNameNs(string namespaceUri, string tagName)
	{
		auto __p = webkit_dom_element_get_elements_by_tag_name_ns(webKitDOMElement, Str.toStringz(namespaceUri), Str.toStringz(tagName));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNodeList)(cast(WebKitDOMNodeList*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     namespaceURI = A #gchar
	 *     localName = A #gchar
	 *
	 * Returns: A #WebKitDOMHTMLCollection
	 *
	 * Since: 2.12
	 */
	public DOMHTMLCollection getElementsByTagNameNsAsHtmlCollection(string namespaceURI, string localName)
	{
		auto __p = webkit_dom_element_get_elements_by_tag_name_ns_as_html_collection(webKitDOMElement, Str.toStringz(namespaceURI), Str.toStringz(localName));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLCollection)(cast(WebKitDOMHTMLCollection*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMElement
	 */
	public DOMElement getFirstElementChild()
	{
		auto __p = webkit_dom_element_get_first_element_child(webKitDOMElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMElement)(cast(WebKitDOMElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getId()
	{
		auto retStr = webkit_dom_element_get_id(webKitDOMElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 *
	 * Since: 2.8
	 */
	public string getInnerHtml()
	{
		auto retStr = webkit_dom_element_get_inner_html(webKitDOMElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMElement
	 */
	public DOMElement getLastElementChild()
	{
		auto __p = webkit_dom_element_get_last_element_child(webKitDOMElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMElement)(cast(WebKitDOMElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 *
	 * Since: 2.14
	 */
	public override string getLocalName()
	{
		auto retStr = webkit_dom_element_get_local_name(webKitDOMElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 *
	 * Since: 2.14
	 */
	public override string getNamespaceUri()
	{
		auto retStr = webkit_dom_element_get_namespace_uri(webKitDOMElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMElement
	 */
	public DOMElement getNextElementSibling()
	{
		auto __p = webkit_dom_element_get_next_element_sibling(webKitDOMElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMElement)(cast(WebKitDOMElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gdouble
	 */
	public double getOffsetHeight()
	{
		return webkit_dom_element_get_offset_height(webKitDOMElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gdouble
	 */
	public double getOffsetLeft()
	{
		return webkit_dom_element_get_offset_left(webKitDOMElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMElement
	 */
	public DOMElement getOffsetParent()
	{
		auto __p = webkit_dom_element_get_offset_parent(webKitDOMElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMElement)(cast(WebKitDOMElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gdouble
	 */
	public double getOffsetTop()
	{
		return webkit_dom_element_get_offset_top(webKitDOMElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gdouble
	 */
	public double getOffsetWidth()
	{
		return webkit_dom_element_get_offset_width(webKitDOMElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 *
	 * Since: 2.8
	 */
	public string getOuterHtml()
	{
		auto retStr = webkit_dom_element_get_outer_html(webKitDOMElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 *
	 * Since: 2.14
	 */
	public override string getPrefix()
	{
		auto retStr = webkit_dom_element_get_prefix(webKitDOMElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMElement
	 */
	public DOMElement getPreviousElementSibling()
	{
		auto __p = webkit_dom_element_get_previous_element_sibling(webKitDOMElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMElement)(cast(WebKitDOMElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getScrollHeight()
	{
		return webkit_dom_element_get_scroll_height(webKitDOMElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getScrollLeft()
	{
		return webkit_dom_element_get_scroll_left(webKitDOMElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getScrollTop()
	{
		return webkit_dom_element_get_scroll_top(webKitDOMElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getScrollWidth()
	{
		return webkit_dom_element_get_scroll_width(webKitDOMElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMCSSStyleDeclaration
	 */
	public DOMCSSStyleDeclaration getStyle()
	{
		auto __p = webkit_dom_element_get_style(webKitDOMElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMCSSStyleDeclaration)(cast(WebKitDOMCSSStyleDeclaration*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getTagName()
	{
		auto retStr = webkit_dom_element_get_tag_name(webKitDOMElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * CSS Regions support has been removed. This function does nothing.
	 *
	 * Returns: %NULL
	 */
	public string getWebkitRegionOverset()
	{
		auto retStr = webkit_dom_element_get_webkit_region_overset(webKitDOMElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     name = A #gchar
	 *
	 * Returns: A #gboolean
	 */
	public bool hasAttribute(string name)
	{
		return webkit_dom_element_has_attribute(webKitDOMElement, Str.toStringz(name)) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     namespaceURI = A #gchar
	 *     localName = A #gchar
	 *
	 * Returns: A #gboolean
	 */
	public bool hasAttributeNs(string namespaceURI, string localName)
	{
		return webkit_dom_element_has_attribute_ns(webKitDOMElement, Str.toStringz(namespaceURI), Str.toStringz(localName)) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool hasAttributes()
	{
		return webkit_dom_element_has_attributes(webKitDOMElement) != 0;
	}

	/** */
	public bool htmlInputElementGetAutoFilled()
	{
		return webkit_dom_element_html_input_element_get_auto_filled(webKitDOMElement) != 0;
	}

	/**
	 * Get whether @element is an HTML text input element that has been edited by a user action.
	 *
	 * Returns: whether @element has been edited by a user action.
	 *
	 * Since: 2.22
	 */
	public bool htmlInputElementIsUserEdited()
	{
		return webkit_dom_element_html_input_element_is_user_edited(webKitDOMElement) != 0;
	}

	/**
	 * Set whether the element is an HTML input element that has been filled automatically.
	 * If @element is not an HTML input element this function does nothing.
	 *
	 * Params:
	 *     autoFilled = value to set
	 *
	 * Since: 2.22
	 */
	public void htmlInputElementSetAutoFilled(bool autoFilled)
	{
		webkit_dom_element_html_input_element_set_auto_filled(webKitDOMElement, autoFilled);
	}

	/**
	 * Set the value of an HTML input element as if it had been edited by
	 * the user, triggering a change event. If @element is not an HTML input
	 * element this function does nothing.
	 *
	 * Params:
	 *     value = the text to set
	 *
	 * Since: 2.22
	 */
	public void htmlInputElementSetEditingValue(string value)
	{
		webkit_dom_element_html_input_element_set_editing_value(webKitDOMElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     where = A #gchar
	 *     element = A #WebKitDOMElement
	 *
	 * Returns: A #WebKitDOMElement
	 *
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public DOMElement insertAdjacentElement(string where, DOMElement element)
	{
		GError* err = null;

		auto __p = webkit_dom_element_insert_adjacent_element(webKitDOMElement, Str.toStringz(where), (element is null) ? null : element.getDOMElementStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMElement)(cast(WebKitDOMElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     where = A #gchar
	 *     html = A #gchar
	 *
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public void insertAdjacentHtml(string where, string html)
	{
		GError* err = null;

		webkit_dom_element_insert_adjacent_html(webKitDOMElement, Str.toStringz(where), Str.toStringz(html), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     where = A #gchar
	 *     text = A #gchar
	 *
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public void insertAdjacentText(string where, string text)
	{
		GError* err = null;

		webkit_dom_element_insert_adjacent_text(webKitDOMElement, Str.toStringz(where), Str.toStringz(text), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     selectors = A #gchar
	 *
	 * Returns: A #gboolean
	 *
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public bool matches(string selectors)
	{
		GError* err = null;

		auto __p = webkit_dom_element_matches(webKitDOMElement, Str.toStringz(selectors), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     selectors = A #gchar
	 *
	 * Returns: A #WebKitDOMElement
	 *
	 * Throws: GException on failure.
	 */
	public DOMElement querySelector(string selectors)
	{
		GError* err = null;

		auto __p = webkit_dom_element_query_selector(webKitDOMElement, Str.toStringz(selectors), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMElement)(cast(WebKitDOMElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     selectors = A #gchar
	 *
	 * Returns: A #WebKitDOMNodeList
	 *
	 * Throws: GException on failure.
	 */
	public DOMNodeList querySelectorAll(string selectors)
	{
		GError* err = null;

		auto __p = webkit_dom_element_query_selector_all(webKitDOMElement, Str.toStringz(selectors), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNodeList)(cast(WebKitDOMNodeList*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public void remove()
	{
		GError* err = null;

		webkit_dom_element_remove(webKitDOMElement, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     name = A #gchar
	 */
	public void removeAttribute(string name)
	{
		webkit_dom_element_remove_attribute(webKitDOMElement, Str.toStringz(name));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     oldAttr = A #WebKitDOMAttr
	 *
	 * Returns: A #WebKitDOMAttr
	 *
	 * Throws: GException on failure.
	 */
	public DOMAttr removeAttributeNode(DOMAttr oldAttr)
	{
		GError* err = null;

		auto __p = webkit_dom_element_remove_attribute_node(webKitDOMElement, (oldAttr is null) ? null : oldAttr.getDOMAttrStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMAttr)(cast(WebKitDOMAttr*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     namespaceURI = A #gchar
	 *     localName = A #gchar
	 */
	public void removeAttributeNs(string namespaceURI, string localName)
	{
		webkit_dom_element_remove_attribute_ns(webKitDOMElement, Str.toStringz(namespaceURI), Str.toStringz(localName));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Since: 2.16
	 */
	public void requestPointerLock()
	{
		webkit_dom_element_request_pointer_lock(webKitDOMElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     lines = A #glong
	 */
	public void scrollByLines(glong lines)
	{
		webkit_dom_element_scroll_by_lines(webKitDOMElement, lines);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     pages = A #glong
	 */
	public void scrollByPages(glong pages)
	{
		webkit_dom_element_scroll_by_pages(webKitDOMElement, pages);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     alignWithTop = A #gboolean
	 */
	public void scrollIntoView(bool alignWithTop)
	{
		webkit_dom_element_scroll_into_view(webKitDOMElement, alignWithTop);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     centerIfNeeded = A #gboolean
	 */
	public void scrollIntoViewIfNeeded(bool centerIfNeeded)
	{
		webkit_dom_element_scroll_into_view_if_needed(webKitDOMElement, centerIfNeeded);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     name = A #gchar
	 *     value = A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public void setAttribute(string name, string value)
	{
		GError* err = null;

		webkit_dom_element_set_attribute(webKitDOMElement, Str.toStringz(name), Str.toStringz(value), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     newAttr = A #WebKitDOMAttr
	 *
	 * Returns: A #WebKitDOMAttr
	 *
	 * Throws: GException on failure.
	 */
	public DOMAttr setAttributeNode(DOMAttr newAttr)
	{
		GError* err = null;

		auto __p = webkit_dom_element_set_attribute_node(webKitDOMElement, (newAttr is null) ? null : newAttr.getDOMAttrStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMAttr)(cast(WebKitDOMAttr*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     newAttr = A #WebKitDOMAttr
	 *
	 * Returns: A #WebKitDOMAttr
	 *
	 * Throws: GException on failure.
	 */
	public DOMAttr setAttributeNodeNs(DOMAttr newAttr)
	{
		GError* err = null;

		auto __p = webkit_dom_element_set_attribute_node_ns(webKitDOMElement, (newAttr is null) ? null : newAttr.getDOMAttrStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMAttr)(cast(WebKitDOMAttr*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     namespaceURI = A #gchar
	 *     qualifiedName = A #gchar
	 *     value = A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public void setAttributeNs(string namespaceURI, string qualifiedName, string value)
	{
		GError* err = null;

		webkit_dom_element_set_attribute_ns(webKitDOMElement, Str.toStringz(namespaceURI), Str.toStringz(qualifiedName), Str.toStringz(value), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setClassName(string value)
	{
		webkit_dom_element_set_class_name(webKitDOMElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setId(string value)
	{
		webkit_dom_element_set_id(webKitDOMElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 *
	 * Since: 2.8
	 *
	 * Throws: GException on failure.
	 */
	public void setInnerHtml(string value)
	{
		GError* err = null;

		webkit_dom_element_set_inner_html(webKitDOMElement, Str.toStringz(value), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 *
	 * Since: 2.8
	 *
	 * Throws: GException on failure.
	 */
	public void setOuterHtml(string value)
	{
		GError* err = null;

		webkit_dom_element_set_outer_html(webKitDOMElement, Str.toStringz(value), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setScrollLeft(glong value)
	{
		webkit_dom_element_set_scroll_left(webKitDOMElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setScrollTop(glong value)
	{
		webkit_dom_element_set_scroll_top(webKitDOMElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     selectors = A #gchar
	 *
	 * Returns: A #gboolean
	 *
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public bool webkitMatchesSelector(string selectors)
	{
		GError* err = null;

		auto __p = webkit_dom_element_webkit_matches_selector(webKitDOMElement, Str.toStringz(selectors), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Since: 2.16
	 */
	public void webkitRequestFullscreen()
	{
		webkit_dom_element_webkit_request_fullscreen(webKitDOMElement);
	}
}
