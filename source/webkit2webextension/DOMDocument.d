module webkit2webextension.DOMDocument;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMAttr;
private import webkit2webextension.DOMCDATASection;
private import webkit2webextension.DOMCSSStyleDeclaration;
private import webkit2webextension.DOMComment;
private import webkit2webextension.DOMDOMImplementation;
private import webkit2webextension.DOMDOMWindow;
private import webkit2webextension.DOMDocumentFragment;
private import webkit2webextension.DOMDocumentType;
private import webkit2webextension.DOMElement;
private import webkit2webextension.DOMEntityReference;
private import webkit2webextension.DOMEvent;
private import webkit2webextension.DOMHTMLCollection;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.DOMHTMLHeadElement;
private import webkit2webextension.DOMHTMLScriptElement;
private import webkit2webextension.DOMNode;
private import webkit2webextension.DOMNodeFilterIF;
private import webkit2webextension.DOMNodeIterator;
private import webkit2webextension.DOMNodeList;
private import webkit2webextension.DOMProcessingInstruction;
private import webkit2webextension.DOMRange;
private import webkit2webextension.DOMStyleSheetList;
private import webkit2webextension.DOMText;
private import webkit2webextension.DOMTreeWalker;
private import webkit2webextension.DOMXPathExpression;
private import webkit2webextension.DOMXPathNSResolverIF;
private import webkit2webextension.DOMXPathResult;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMDocument : DOMNode
{
	/** the main Gtk struct */
	protected WebKitDOMDocument* webKitDOMDocument;

	/** Get the main Gtk struct */
	public WebKitDOMDocument* getDOMDocumentStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMDocument;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMDocument;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMDocument* webKitDOMDocument, bool ownedRef = false)
	{
		this.webKitDOMDocument = webKitDOMDocument;
		super(cast(WebKitDOMNode*)webKitDOMDocument, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_document_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     source = A #WebKitDOMNode
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode adoptNode(DOMNode source)
	{
		GError* err = null;

		auto __p = webkit_dom_document_adopt_node(webKitDOMDocument, (source is null) ? null : source.getDOMNodeStruct(), &err);

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
	 *     x = A #glong
	 *     y = A #glong
	 *
	 * Returns: A #WebKitDOMRange
	 *
	 * Since: 2.16
	 */
	public DOMRange caretRangeFromPoint(glong x, glong y)
	{
		auto __p = webkit_dom_document_caret_range_from_point(webKitDOMDocument, x, y);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMRange)(cast(WebKitDOMRange*) __p, true);
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
	 *
	 * Throws: GException on failure.
	 */
	public DOMAttr createAttribute(string name)
	{
		GError* err = null;

		auto __p = webkit_dom_document_create_attribute(webKitDOMDocument, Str.toStringz(name), &err);

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
	 *
	 * Returns: A #WebKitDOMAttr
	 *
	 * Throws: GException on failure.
	 */
	public DOMAttr createAttributeNs(string namespaceURI, string qualifiedName)
	{
		GError* err = null;

		auto __p = webkit_dom_document_create_attribute_ns(webKitDOMDocument, Str.toStringz(namespaceURI), Str.toStringz(qualifiedName), &err);

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
	 *     data = A #gchar
	 *
	 * Returns: A #WebKitDOMCDATASection
	 *
	 * Throws: GException on failure.
	 */
	public DOMCDATASection createCdataSection(string data)
	{
		GError* err = null;

		auto __p = webkit_dom_document_create_cdata_section(webKitDOMDocument, Str.toStringz(data), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMCDATASection)(cast(WebKitDOMCDATASection*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     data = A #gchar
	 *
	 * Returns: A #WebKitDOMComment
	 */
	public DOMComment createComment(string data)
	{
		auto __p = webkit_dom_document_create_comment(webKitDOMDocument, Str.toStringz(data));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMComment)(cast(WebKitDOMComment*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMCSSStyleDeclaration
	 */
	public DOMCSSStyleDeclaration createCssStyleDeclaration()
	{
		auto __p = webkit_dom_document_create_css_style_declaration(webKitDOMDocument);

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
	 * Returns: A #WebKitDOMDocumentFragment
	 */
	public DOMDocumentFragment createDocumentFragment()
	{
		auto __p = webkit_dom_document_create_document_fragment(webKitDOMDocument);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMDocumentFragment)(cast(WebKitDOMDocumentFragment*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     tagName = A #gchar
	 *
	 * Returns: A #WebKitDOMElement
	 *
	 * Throws: GException on failure.
	 */
	public DOMElement createElement(string tagName)
	{
		GError* err = null;

		auto __p = webkit_dom_document_create_element(webKitDOMDocument, Str.toStringz(tagName), &err);

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
	 *     namespaceURI = A #gchar
	 *     qualifiedName = A #gchar
	 *
	 * Returns: A #WebKitDOMElement
	 *
	 * Throws: GException on failure.
	 */
	public DOMElement createElementNs(string namespaceURI, string qualifiedName)
	{
		GError* err = null;

		auto __p = webkit_dom_document_create_element_ns(webKitDOMDocument, Str.toStringz(namespaceURI), Str.toStringz(qualifiedName), &err);

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
	 * This function has been removed from the DOM spec and it just returns %NULL.
	 *
	 * Params:
	 *     name = A #gchar
	 *
	 * Returns: A #WebKitDOMEntityReference
	 *
	 * Throws: GException on failure.
	 */
	public DOMEntityReference createEntityReference(string name)
	{
		GError* err = null;

		auto __p = webkit_dom_document_create_entity_reference(webKitDOMDocument, Str.toStringz(name), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMEntityReference)(cast(WebKitDOMEntityReference*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     eventType = A #gchar
	 *
	 * Returns: A #WebKitDOMEvent
	 *
	 * Throws: GException on failure.
	 */
	public DOMEvent createEvent(string eventType)
	{
		GError* err = null;

		auto __p = webkit_dom_document_create_event(webKitDOMDocument, Str.toStringz(eventType), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMEvent)(cast(WebKitDOMEvent*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     expression = A #gchar
	 *     resolver = A #WebKitDOMXPathNSResolver
	 *
	 * Returns: A #WebKitDOMXPathExpression
	 *
	 * Throws: GException on failure.
	 */
	public DOMXPathExpression createExpression(string expression, DOMXPathNSResolverIF resolver)
	{
		GError* err = null;

		auto __p = webkit_dom_document_create_expression(webKitDOMDocument, Str.toStringz(expression), (resolver is null) ? null : resolver.getDOMXPathNSResolverStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMXPathExpression)(cast(WebKitDOMXPathExpression*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     root = A #WebKitDOMNode
	 *     whatToShow = A #gulong
	 *     filter = A #WebKitDOMNodeFilter
	 *     expandEntityReferences = A #gboolean
	 *
	 * Returns: A #WebKitDOMNodeIterator
	 *
	 * Throws: GException on failure.
	 */
	public DOMNodeIterator createNodeIterator(DOMNode root, gulong whatToShow, DOMNodeFilterIF filter, bool expandEntityReferences)
	{
		GError* err = null;

		auto __p = webkit_dom_document_create_node_iterator(webKitDOMDocument, (root is null) ? null : root.getDOMNodeStruct(), whatToShow, (filter is null) ? null : filter.getDOMNodeFilterStruct(), expandEntityReferences, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNodeIterator)(cast(WebKitDOMNodeIterator*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     nodeResolver = A #WebKitDOMNode
	 *
	 * Returns: A #WebKitDOMXPathNSResolver
	 */
	public DOMXPathNSResolverIF createNsResolver(DOMNode nodeResolver)
	{
		auto __p = webkit_dom_document_create_ns_resolver(webKitDOMDocument, (nodeResolver is null) ? null : nodeResolver.getDOMNodeStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMXPathNSResolverIF)(cast(WebKitDOMXPathNSResolver*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     target = A #gchar
	 *     data = A #gchar
	 *
	 * Returns: A #WebKitDOMProcessingInstruction
	 *
	 * Throws: GException on failure.
	 */
	public DOMProcessingInstruction createProcessingInstruction(string target, string data)
	{
		GError* err = null;

		auto __p = webkit_dom_document_create_processing_instruction(webKitDOMDocument, Str.toStringz(target), Str.toStringz(data), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMProcessingInstruction)(cast(WebKitDOMProcessingInstruction*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMRange
	 */
	public DOMRange createRange()
	{
		auto __p = webkit_dom_document_create_range(webKitDOMDocument);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMRange)(cast(WebKitDOMRange*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     data = A #gchar
	 *
	 * Returns: A #WebKitDOMText
	 */
	public DOMText createTextNode(string data)
	{
		auto __p = webkit_dom_document_create_text_node(webKitDOMDocument, Str.toStringz(data));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMText)(cast(WebKitDOMText*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     root = A #WebKitDOMNode
	 *     whatToShow = A #gulong
	 *     filter = A #WebKitDOMNodeFilter
	 *     expandEntityReferences = A #gboolean
	 *
	 * Returns: A #WebKitDOMTreeWalker
	 *
	 * Throws: GException on failure.
	 */
	public DOMTreeWalker createTreeWalker(DOMNode root, gulong whatToShow, DOMNodeFilterIF filter, bool expandEntityReferences)
	{
		GError* err = null;

		auto __p = webkit_dom_document_create_tree_walker(webKitDOMDocument, (root is null) ? null : root.getDOMNodeStruct(), whatToShow, (filter is null) ? null : filter.getDOMNodeFilterStruct(), expandEntityReferences, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMTreeWalker)(cast(WebKitDOMTreeWalker*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     x = A #glong
	 *     y = A #glong
	 *
	 * Returns: A #WebKitDOMElement
	 */
	public DOMElement elementFromPoint(glong x, glong y)
	{
		auto __p = webkit_dom_document_element_from_point(webKitDOMDocument, x, y);

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
	 *     expression = A #gchar
	 *     contextNode = A #WebKitDOMNode
	 *     resolver = A #WebKitDOMXPathNSResolver
	 *     type = A #gushort
	 *     inResult = A #WebKitDOMXPathResult
	 *
	 * Returns: A #WebKitDOMXPathResult
	 *
	 * Throws: GException on failure.
	 */
	public DOMXPathResult evaluate(string expression, DOMNode contextNode, DOMXPathNSResolverIF resolver, ushort type, DOMXPathResult inResult)
	{
		GError* err = null;

		auto __p = webkit_dom_document_evaluate(webKitDOMDocument, Str.toStringz(expression), (contextNode is null) ? null : contextNode.getDOMNodeStruct(), (resolver is null) ? null : resolver.getDOMXPathNSResolverStruct(), type, (inResult is null) ? null : inResult.getDOMXPathResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMXPathResult)(cast(WebKitDOMXPathResult*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     command = A #gchar
	 *     userInterface = A #gboolean
	 *     value = A #gchar
	 *
	 * Returns: A #gboolean
	 */
	public bool execCommand(string command, bool userInterface, string value)
	{
		return webkit_dom_document_exec_command(webKitDOMDocument, Str.toStringz(command), userInterface, Str.toStringz(value)) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Since: 2.16
	 */
	public void exitPointerLock()
	{
		webkit_dom_document_exit_pointer_lock(webKitDOMDocument);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMElement
	 */
	public DOMElement getActiveElement()
	{
		auto __p = webkit_dom_document_get_active_element(webKitDOMDocument);

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
	 * Returns: A #WebKitDOMHTMLCollection
	 */
	public DOMHTMLCollection getAnchors()
	{
		auto __p = webkit_dom_document_get_anchors(webKitDOMDocument);

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
	 * Returns: A #WebKitDOMHTMLCollection
	 */
	public DOMHTMLCollection getApplets()
	{
		auto __p = webkit_dom_document_get_applets(webKitDOMDocument);

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
	 * Returns: A #WebKitDOMHTMLElement
	 */
	public DOMHTMLElement getBody()
	{
		auto __p = webkit_dom_document_get_body(webKitDOMDocument);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLElement)(cast(WebKitDOMHTMLElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getCharacterSet()
	{
		auto retStr = webkit_dom_document_get_character_set(webKitDOMDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getCharset()
	{
		auto retStr = webkit_dom_document_get_charset(webKitDOMDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gulong
	 *
	 * Since: 2.16
	 */
	public gulong getChildElementCount()
	{
		return webkit_dom_document_get_child_element_count(webKitDOMDocument);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMHTMLCollection
	 *
	 * Since: 2.16
	 */
	public DOMHTMLCollection getChildren()
	{
		auto __p = webkit_dom_document_get_children(webKitDOMDocument);

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
	 * Returns: A #gchar
	 *
	 * Since: 2.14
	 */
	public string getCompatMode()
	{
		auto retStr = webkit_dom_document_get_compat_mode(webKitDOMDocument);

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
	 * Since: 2.16
	 */
	public string getContentType()
	{
		auto retStr = webkit_dom_document_get_content_type(webKitDOMDocument);

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
	 * Throws: GException on failure.
	 */
	public string getCookie()
	{
		GError* err = null;

		auto retStr = webkit_dom_document_get_cookie(webKitDOMDocument, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMHTMLScriptElement
	 *
	 * Since: 2.16
	 */
	public DOMHTMLScriptElement getCurrentScript()
	{
		auto __p = webkit_dom_document_get_current_script(webKitDOMDocument);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLScriptElement)(cast(WebKitDOMHTMLScriptElement*) __p);
	}

	/**
	 * Returns: A #gchar
	 */
	public string getDefaultCharset()
	{
		auto retStr = webkit_dom_document_get_default_charset(webKitDOMDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMDOMWindow
	 */
	public DOMDOMWindow getDefaultView()
	{
		auto __p = webkit_dom_document_get_default_view(webKitDOMDocument);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMDOMWindow)(cast(WebKitDOMDOMWindow*) __p, true);
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
	public string getDesignMode()
	{
		auto retStr = webkit_dom_document_get_design_mode(webKitDOMDocument);

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
	 * Since: 2.16
	 */
	public string getDir()
	{
		auto retStr = webkit_dom_document_get_dir(webKitDOMDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMDocumentType
	 */
	public DOMDocumentType getDoctype()
	{
		auto __p = webkit_dom_document_get_doctype(webKitDOMDocument);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMDocumentType)(cast(WebKitDOMDocumentType*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMElement
	 */
	public DOMElement getDocumentElement()
	{
		auto __p = webkit_dom_document_get_document_element(webKitDOMDocument);

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
	public string getDocumentUri()
	{
		auto retStr = webkit_dom_document_get_document_uri(webKitDOMDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getDomain()
	{
		auto retStr = webkit_dom_document_get_domain(webKitDOMDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     elementId = A #gchar
	 *
	 * Returns: A #WebKitDOMElement
	 */
	public DOMElement getElementById(string elementId)
	{
		auto __p = webkit_dom_document_get_element_by_id(webKitDOMDocument, Str.toStringz(elementId));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMElement)(cast(WebKitDOMElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_document_get_elements_by_class_name_as_html_collection() instead.
	 *
	 * Params:
	 *     className = a #gchar with the tag name
	 *
	 * Returns: a #WebKitDOMNodeList
	 */
	public DOMNodeList getElementsByClassName(string className)
	{
		auto __p = webkit_dom_document_get_elements_by_class_name(webKitDOMDocument, Str.toStringz(className));

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
	 *     classNames = A #gchar
	 *
	 * Returns: A #WebKitDOMHTMLCollection
	 *
	 * Since: 2.12
	 */
	public DOMHTMLCollection getElementsByClassNameAsHtmlCollection(string classNames)
	{
		auto __p = webkit_dom_document_get_elements_by_class_name_as_html_collection(webKitDOMDocument, Str.toStringz(classNames));

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
	 * Params:
	 *     elementName = A #gchar
	 *
	 * Returns: A #WebKitDOMNodeList
	 */
	public DOMNodeList getElementsByName(string elementName)
	{
		auto __p = webkit_dom_document_get_elements_by_name(webKitDOMDocument, Str.toStringz(elementName));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNodeList)(cast(WebKitDOMNodeList*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_document_get_elements_by_tag_name_as_html_collection() instead.
	 *
	 * Params:
	 *     tagName = a #gchar with the tag name
	 *
	 * Returns: a #WebKitDOMNodeList
	 */
	public DOMNodeList getElementsByTagName(string tagName)
	{
		auto __p = webkit_dom_document_get_elements_by_tag_name(webKitDOMDocument, Str.toStringz(tagName));

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
	 *     tagname = A #gchar
	 *
	 * Returns: A #WebKitDOMHTMLCollection
	 *
	 * Since: 2.12
	 */
	public DOMHTMLCollection getElementsByTagNameAsHtmlCollection(string tagname)
	{
		auto __p = webkit_dom_document_get_elements_by_tag_name_as_html_collection(webKitDOMDocument, Str.toStringz(tagname));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLCollection)(cast(WebKitDOMHTMLCollection*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_document_get_elements_by_tag_name_ns_as_html_collection() instead.
	 *
	 * Params:
	 *     namespaceUri = a #gchar with the namespace URI
	 *     tagName = a #gchar with the tag name
	 *
	 * Returns: a #WebKitDOMNodeList
	 */
	public DOMNodeList getElementsByTagNameNs(string namespaceUri, string tagName)
	{
		auto __p = webkit_dom_document_get_elements_by_tag_name_ns(webKitDOMDocument, Str.toStringz(namespaceUri), Str.toStringz(tagName));

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
		auto __p = webkit_dom_document_get_elements_by_tag_name_ns_as_html_collection(webKitDOMDocument, Str.toStringz(namespaceURI), Str.toStringz(localName));

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
	 * Returns: A #WebKitDOMHTMLCollection
	 *
	 * Since: 2.14
	 */
	public DOMHTMLCollection getEmbeds()
	{
		auto __p = webkit_dom_document_get_embeds(webKitDOMDocument);

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
	 *
	 * Since: 2.16
	 */
	public DOMElement getFirstElementChild()
	{
		auto __p = webkit_dom_document_get_first_element_child(webKitDOMDocument);

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
	 * Returns: A #WebKitDOMHTMLCollection
	 */
	public DOMHTMLCollection getForms()
	{
		auto __p = webkit_dom_document_get_forms(webKitDOMDocument);

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
	 * Returns: A #WebKitDOMHTMLHeadElement
	 */
	public DOMHTMLHeadElement getHead()
	{
		auto __p = webkit_dom_document_get_head(webKitDOMDocument);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLHeadElement)(cast(WebKitDOMHTMLHeadElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 *
	 * Since: 2.16
	 */
	public bool getHidden()
	{
		return webkit_dom_document_get_hidden(webKitDOMDocument) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMHTMLCollection
	 */
	public DOMHTMLCollection getImages()
	{
		auto __p = webkit_dom_document_get_images(webKitDOMDocument);

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
	 * Returns: A #WebKitDOMDOMImplementation
	 */
	public DOMDOMImplementation getImplementation()
	{
		auto __p = webkit_dom_document_get_implementation(webKitDOMDocument);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMDOMImplementation)(cast(WebKitDOMDOMImplementation*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getInputEncoding()
	{
		auto retStr = webkit_dom_document_get_input_encoding(webKitDOMDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMElement
	 *
	 * Since: 2.16
	 */
	public DOMElement getLastElementChild()
	{
		auto __p = webkit_dom_document_get_last_element_child(webKitDOMDocument);

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
	public string getLastModified()
	{
		auto retStr = webkit_dom_document_get_last_modified(webKitDOMDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMHTMLCollection
	 */
	public DOMHTMLCollection getLinks()
	{
		auto __p = webkit_dom_document_get_links(webKitDOMDocument);

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
	 * Returns: A #gchar
	 *
	 * Since: 2.16
	 */
	public string getOrigin()
	{
		auto retStr = webkit_dom_document_get_origin(webKitDOMDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     element = A #WebKitDOMElement
	 *     pseudoElement = A #gchar
	 *
	 * Returns: A #WebKitDOMCSSStyleDeclaration
	 */
	public DOMCSSStyleDeclaration getOverrideStyle(DOMElement element, string pseudoElement)
	{
		auto __p = webkit_dom_document_get_override_style(webKitDOMDocument, (element is null) ? null : element.getDOMElementStruct(), Str.toStringz(pseudoElement));

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
	 * Returns: A #WebKitDOMHTMLCollection
	 *
	 * Since: 2.14
	 */
	public DOMHTMLCollection getPlugins()
	{
		auto __p = webkit_dom_document_get_plugins(webKitDOMDocument);

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
	 *
	 * Since: 2.16
	 */
	public DOMElement getPointerLockElement()
	{
		auto __p = webkit_dom_document_get_pointer_lock_element(webKitDOMDocument);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMElement)(cast(WebKitDOMElement*) __p);
	}

	/**
	 * This function has been removed and does nothing.
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getPreferredStylesheetSet()
	{
		auto retStr = webkit_dom_document_get_preferred_stylesheet_set(webKitDOMDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getReadyState()
	{
		auto retStr = webkit_dom_document_get_ready_state(webKitDOMDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getReferrer()
	{
		auto retStr = webkit_dom_document_get_referrer(webKitDOMDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMHTMLCollection
	 *
	 * Since: 2.14
	 */
	public DOMHTMLCollection getScripts()
	{
		auto __p = webkit_dom_document_get_scripts(webKitDOMDocument);

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
	 *
	 * Since: 2.16
	 */
	public DOMElement getScrollingElement()
	{
		auto __p = webkit_dom_document_get_scrolling_element(webKitDOMDocument);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMElement)(cast(WebKitDOMElement*) __p);
	}

	/**
	 * This function has been removed and does nothing.
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getSelectedStylesheetSet()
	{
		auto retStr = webkit_dom_document_get_selected_stylesheet_set(webKitDOMDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMStyleSheetList
	 */
	public DOMStyleSheetList getStyleSheets()
	{
		auto __p = webkit_dom_document_get_style_sheets(webKitDOMDocument);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMStyleSheetList)(cast(WebKitDOMStyleSheetList*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getTitle()
	{
		auto retStr = webkit_dom_document_get_title(webKitDOMDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getUrl()
	{
		auto retStr = webkit_dom_document_get_url(webKitDOMDocument);

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
	 * Since: 2.16
	 */
	public string getVisibilityState()
	{
		auto retStr = webkit_dom_document_get_visibility_state(webKitDOMDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMElement
	 *
	 * Since: 2.16
	 */
	public DOMElement getWebkitCurrentFullscreenElement()
	{
		auto __p = webkit_dom_document_get_webkit_current_fullscreen_element(webKitDOMDocument);

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
	 * Returns: A #WebKitDOMElement
	 *
	 * Since: 2.16
	 */
	public DOMElement getWebkitFullscreenElement()
	{
		auto __p = webkit_dom_document_get_webkit_fullscreen_element(webKitDOMDocument);

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
	 * Returns: A #gboolean
	 *
	 * Since: 2.16
	 */
	public bool getWebkitFullscreenEnabled()
	{
		return webkit_dom_document_get_webkit_fullscreen_enabled(webKitDOMDocument) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 *
	 * Since: 2.16
	 */
	public bool getWebkitFullscreenKeyboardInputAllowed()
	{
		return webkit_dom_document_get_webkit_fullscreen_keyboard_input_allowed(webKitDOMDocument) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 *
	 * Since: 2.16
	 */
	public bool getWebkitIsFullscreen()
	{
		return webkit_dom_document_get_webkit_is_fullscreen(webKitDOMDocument) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getXmlEncoding()
	{
		auto retStr = webkit_dom_document_get_xml_encoding(webKitDOMDocument);

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
	public bool getXmlStandalone()
	{
		return webkit_dom_document_get_xml_standalone(webKitDOMDocument) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getXmlVersion()
	{
		auto retStr = webkit_dom_document_get_xml_version(webKitDOMDocument);

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
	public bool hasFocus()
	{
		return webkit_dom_document_has_focus(webKitDOMDocument) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     importedNode = A #WebKitDOMNode
	 *     deep = A #gboolean
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode importNode(DOMNode importedNode, bool deep)
	{
		GError* err = null;

		auto __p = webkit_dom_document_import_node(webKitDOMDocument, (importedNode is null) ? null : importedNode.getDOMNodeStruct(), deep, &err);

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
	 *     command = A #gchar
	 *
	 * Returns: A #gboolean
	 */
	public bool queryCommandEnabled(string command)
	{
		return webkit_dom_document_query_command_enabled(webKitDOMDocument, Str.toStringz(command)) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     command = A #gchar
	 *
	 * Returns: A #gboolean
	 */
	public bool queryCommandIndeterm(string command)
	{
		return webkit_dom_document_query_command_indeterm(webKitDOMDocument, Str.toStringz(command)) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     command = A #gchar
	 *
	 * Returns: A #gboolean
	 */
	public bool queryCommandState(string command)
	{
		return webkit_dom_document_query_command_state(webKitDOMDocument, Str.toStringz(command)) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     command = A #gchar
	 *
	 * Returns: A #gboolean
	 */
	public bool queryCommandSupported(string command)
	{
		return webkit_dom_document_query_command_supported(webKitDOMDocument, Str.toStringz(command)) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     command = A #gchar
	 *
	 * Returns: A #gchar
	 */
	public string queryCommandValue(string command)
	{
		auto retStr = webkit_dom_document_query_command_value(webKitDOMDocument, Str.toStringz(command));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
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

		auto __p = webkit_dom_document_query_selector(webKitDOMDocument, Str.toStringz(selectors), &err);

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

		auto __p = webkit_dom_document_query_selector_all(webKitDOMDocument, Str.toStringz(selectors), &err);

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
	 * Params:
	 *     value = A #WebKitDOMHTMLElement
	 *
	 * Throws: GException on failure.
	 */
	public void setBody(DOMHTMLElement value)
	{
		GError* err = null;

		webkit_dom_document_set_body(webKitDOMDocument, (value is null) ? null : value.getDOMHTMLElementStruct(), &err);

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
	public void setCharset(string value)
	{
		webkit_dom_document_set_charset(webKitDOMDocument, Str.toStringz(value));
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
	public void setCookie(string value)
	{
		GError* err = null;

		webkit_dom_document_set_cookie(webKitDOMDocument, Str.toStringz(value), &err);

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
	 * Since: 2.14
	 */
	public void setDesignMode(string value)
	{
		webkit_dom_document_set_design_mode(webKitDOMDocument, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 *
	 * Since: 2.16
	 */
	public void setDir(string value)
	{
		webkit_dom_document_set_dir(webKitDOMDocument, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setDocumentUri(string value)
	{
		webkit_dom_document_set_document_uri(webKitDOMDocument, Str.toStringz(value));
	}

	/**
	 * This function has been removed and does nothing.
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setSelectedStylesheetSet(string value)
	{
		webkit_dom_document_set_selected_stylesheet_set(webKitDOMDocument, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setTitle(string value)
	{
		webkit_dom_document_set_title(webKitDOMDocument, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 *
	 * Throws: GException on failure.
	 */
	public void setXmlStandalone(bool value)
	{
		GError* err = null;

		webkit_dom_document_set_xml_standalone(webKitDOMDocument, value, &err);

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
	public void setXmlVersion(string value)
	{
		GError* err = null;

		webkit_dom_document_set_xml_version(webKitDOMDocument, Str.toStringz(value), &err);

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
	 * Since: 2.16
	 */
	public void webkitCancelFullscreen()
	{
		webkit_dom_document_webkit_cancel_fullscreen(webKitDOMDocument);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Since: 2.16
	 */
	public void webkitExitFullscreen()
	{
		webkit_dom_document_webkit_exit_fullscreen(webKitDOMDocument);
	}
}
