module webkit2webextension.DOMNode;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import javascriptcore.Value;
private import webkit2webextension.DOMDocument;
private import webkit2webextension.DOMElement;
private import webkit2webextension.DOMEventTargetIF;
private import webkit2webextension.DOMEventTargetT;
private import webkit2webextension.DOMNodeList;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMNode : DOMObject, DOMEventTargetIF
{
	/** the main Gtk struct */
	protected WebKitDOMNode* webKitDOMNode;

	/** Get the main Gtk struct */
	public WebKitDOMNode* getDOMNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMNode* webKitDOMNode, bool ownedRef = false)
	{
		this.webKitDOMNode = webKitDOMNode;
		super(cast(WebKitDOMObject*)webKitDOMNode, ownedRef);
	}

	// add the DOMEventTarget capabilities
	mixin DOMEventTargetT!(WebKitDOMNode);


	/** */
	public static GType getType()
	{
		return webkit_dom_node_get_type();
	}

	/**
	 * Get the #WebKitDOMNode for the DOM node referenced by @value.
	 *
	 * Params:
	 *     value = a #JSCValue
	 *
	 * Returns: a #WebKitDOMNode, or %NULL if @value doesn't reference a DOM node.
	 *
	 * Since: 2.22
	 */
	public static DOMNode forJsValue(Value value)
	{
		auto __p = webkit_dom_node_for_js_value((value is null) ? null : value.getValueStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     newChild = A #WebKitDOMNode
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode appendChild(DOMNode newChild)
	{
		GError* err = null;

		auto __p = webkit_dom_node_append_child(webKitDOMNode, (newChild is null) ? null : newChild.getDOMNodeStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_node_clone_node_with_error() instead.
	 *
	 * Params:
	 *     deep = A #gboolean
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode cloneNode(bool deep)
	{
		GError* err = null;

		auto __p = webkit_dom_node_clone_node(webKitDOMNode, deep, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     deep = A #gboolean
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode cloneNodeWithError(bool deep)
	{
		GError* err = null;

		auto __p = webkit_dom_node_clone_node_with_error(webKitDOMNode, deep, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     other = A #WebKitDOMNode
	 *
	 * Returns: A #gushort
	 */
	public ushort compareDocumentPosition(DOMNode other)
	{
		return webkit_dom_node_compare_document_position(webKitDOMNode, (other is null) ? null : other.getDOMNodeStruct());
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     other = A #WebKitDOMNode
	 *
	 * Returns: A #gboolean
	 */
	public bool contains(DOMNode other)
	{
		return webkit_dom_node_contains(webKitDOMNode, (other is null) ? null : other.getDOMNodeStruct()) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getBaseUri()
	{
		auto retStr = webkit_dom_node_get_base_uri(webKitDOMNode);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNodeList
	 */
	public DOMNodeList getChildNodes()
	{
		auto __p = webkit_dom_node_get_child_nodes(webKitDOMNode);

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
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode getFirstChild()
	{
		auto __p = webkit_dom_node_get_first_child(webKitDOMNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode getLastChild()
	{
		auto __p = webkit_dom_node_get_last_child(webKitDOMNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_attr_get_local_name() or webkit_dom_element_get_local_name() instead.
	 *
	 * Returns: A #gchar
	 */
	public string getLocalName()
	{
		auto retStr = webkit_dom_node_get_local_name(webKitDOMNode);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_attr_get_namespace_uri() or webkit_dom_element_get_namespace_uri() instead.
	 *
	 * Returns: A #gchar
	 */
	public string getNamespaceUri()
	{
		auto retStr = webkit_dom_node_get_namespace_uri(webKitDOMNode);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode getNextSibling()
	{
		auto __p = webkit_dom_node_get_next_sibling(webKitDOMNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getNodeName()
	{
		auto retStr = webkit_dom_node_get_node_name(webKitDOMNode);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gushort
	 */
	public ushort getNodeType()
	{
		return webkit_dom_node_get_node_type(webKitDOMNode);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getNodeValue()
	{
		auto retStr = webkit_dom_node_get_node_value(webKitDOMNode);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMDocument
	 */
	public DOMDocument getOwnerDocument()
	{
		auto __p = webkit_dom_node_get_owner_document(webKitDOMNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMDocument)(cast(WebKitDOMDocument*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMElement
	 */
	public DOMElement getParentElement()
	{
		auto __p = webkit_dom_node_get_parent_element(webKitDOMNode);

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
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode getParentNode()
	{
		auto __p = webkit_dom_node_get_parent_node(webKitDOMNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_attr_get_prefix() or webkit_dom_element_get_prefix() instead.
	 *
	 * Returns: A #gchar
	 */
	public string getPrefix()
	{
		auto retStr = webkit_dom_node_get_prefix(webKitDOMNode);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode getPreviousSibling()
	{
		auto __p = webkit_dom_node_get_previous_sibling(webKitDOMNode);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getTextContent()
	{
		auto retStr = webkit_dom_node_get_text_content(webKitDOMNode);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool hasChildNodes()
	{
		return webkit_dom_node_has_child_nodes(webKitDOMNode) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     newChild = A #WebKitDOMNode
	 *     refChild = A #WebKitDOMNode
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode insertBefore(DOMNode newChild, DOMNode refChild)
	{
		GError* err = null;

		auto __p = webkit_dom_node_insert_before(webKitDOMNode, (newChild is null) ? null : newChild.getDOMNodeStruct(), (refChild is null) ? null : refChild.getDOMNodeStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     namespaceURI = A #gchar
	 *
	 * Returns: A #gboolean
	 */
	public bool isDefaultNamespace(string namespaceURI)
	{
		return webkit_dom_node_is_default_namespace(webKitDOMNode, Str.toStringz(namespaceURI)) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     other = A #WebKitDOMNode
	 *
	 * Returns: A #gboolean
	 */
	public bool isEqualNode(DOMNode other)
	{
		return webkit_dom_node_is_equal_node(webKitDOMNode, (other is null) ? null : other.getDOMNodeStruct()) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     other = A #WebKitDOMNode
	 *
	 * Returns: A #gboolean
	 */
	public bool isSameNode(DOMNode other)
	{
		return webkit_dom_node_is_same_node(webKitDOMNode, (other is null) ? null : other.getDOMNodeStruct()) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     feature = A #gchar
	 *     version_ = A #gchar
	 *
	 * Returns: A #gboolean
	 */
	public bool isSupported(string feature, string version_)
	{
		return webkit_dom_node_is_supported(webKitDOMNode, Str.toStringz(feature), Str.toStringz(version_)) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     prefix = A #gchar
	 *
	 * Returns: A #gchar
	 */
	public string lookupNamespaceUri(string prefix)
	{
		auto retStr = webkit_dom_node_lookup_namespace_uri(webKitDOMNode, Str.toStringz(prefix));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     namespaceURI = A #gchar
	 *
	 * Returns: A #gchar
	 */
	public string lookupPrefix(string namespaceURI)
	{
		auto retStr = webkit_dom_node_lookup_prefix(webKitDOMNode, Str.toStringz(namespaceURI));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void normalize()
	{
		webkit_dom_node_normalize(webKitDOMNode);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     oldChild = A #WebKitDOMNode
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode removeChild(DOMNode oldChild)
	{
		GError* err = null;

		auto __p = webkit_dom_node_remove_child(webKitDOMNode, (oldChild is null) ? null : oldChild.getDOMNodeStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     newChild = A #WebKitDOMNode
	 *     oldChild = A #WebKitDOMNode
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode replaceChild(DOMNode newChild, DOMNode oldChild)
	{
		GError* err = null;

		auto __p = webkit_dom_node_replace_child(webKitDOMNode, (newChild is null) ? null : newChild.getDOMNodeStruct(), (oldChild is null) ? null : oldChild.getDOMNodeStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public void setNodeValue(string value)
	{
		GError* err = null;

		webkit_dom_node_set_node_value(webKitDOMNode, Str.toStringz(value), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}

	/** */
	public void setPrefix(string value)
	{
		GError* err = null;

		webkit_dom_node_set_prefix(webKitDOMNode, Str.toStringz(value), &err);

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
	 * Throws: GException on failure.
	 */
	public void setTextContent(string value)
	{
		GError* err = null;

		webkit_dom_node_set_text_content(webKitDOMNode, Str.toStringz(value), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}
}
