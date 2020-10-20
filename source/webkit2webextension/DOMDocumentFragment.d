module webkit2webextension.DOMDocumentFragment;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMElement;
private import webkit2webextension.DOMHTMLCollection;
private import webkit2webextension.DOMNode;
private import webkit2webextension.DOMNodeList;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMDocumentFragment : DOMNode
{
	/** the main Gtk struct */
	protected WebKitDOMDocumentFragment* webKitDOMDocumentFragment;

	/** Get the main Gtk struct */
	public WebKitDOMDocumentFragment* getDOMDocumentFragmentStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMDocumentFragment;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMDocumentFragment;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMDocumentFragment* webKitDOMDocumentFragment, bool ownedRef = false)
	{
		this.webKitDOMDocumentFragment = webKitDOMDocumentFragment;
		super(cast(WebKitDOMNode*)webKitDOMDocumentFragment, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_document_fragment_get_type();
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
		return webkit_dom_document_fragment_get_child_element_count(webKitDOMDocumentFragment);
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
		auto __p = webkit_dom_document_fragment_get_children(webKitDOMDocumentFragment);

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
	 *     elementId = A #gchar
	 *
	 * Returns: A #WebKitDOMElement
	 *
	 * Since: 2.16
	 */
	public DOMElement getElementById(string elementId)
	{
		auto __p = webkit_dom_document_fragment_get_element_by_id(webKitDOMDocumentFragment, Str.toStringz(elementId));

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
	public DOMElement getFirstElementChild()
	{
		auto __p = webkit_dom_document_fragment_get_first_element_child(webKitDOMDocumentFragment);

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
	public DOMElement getLastElementChild()
	{
		auto __p = webkit_dom_document_fragment_get_last_element_child(webKitDOMDocumentFragment);

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
	 * Returns: A #WebKitDOMElement
	 *
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public DOMElement querySelector(string selectors)
	{
		GError* err = null;

		auto __p = webkit_dom_document_fragment_query_selector(webKitDOMDocumentFragment, Str.toStringz(selectors), &err);

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
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public DOMNodeList querySelectorAll(string selectors)
	{
		GError* err = null;

		auto __p = webkit_dom_document_fragment_query_selector_all(webKitDOMDocumentFragment, Str.toStringz(selectors), &err);

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
}
