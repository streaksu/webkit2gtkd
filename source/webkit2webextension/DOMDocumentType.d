module webkit2webextension.DOMDocumentType;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMNamedNodeMap;
private import webkit2webextension.DOMNode;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMDocumentType : DOMNode
{
	/** the main Gtk struct */
	protected WebKitDOMDocumentType* webKitDOMDocumentType;

	/** Get the main Gtk struct */
	public WebKitDOMDocumentType* getDOMDocumentTypeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMDocumentType;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMDocumentType;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMDocumentType* webKitDOMDocumentType, bool ownedRef = false)
	{
		this.webKitDOMDocumentType = webKitDOMDocumentType;
		super(cast(WebKitDOMNode*)webKitDOMDocumentType, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_document_type_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNamedNodeMap
	 */
	public DOMNamedNodeMap getEntities()
	{
		auto __p = webkit_dom_document_type_get_entities(webKitDOMDocumentType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNamedNodeMap)(cast(WebKitDOMNamedNodeMap*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getInternalSubset()
	{
		auto retStr = webkit_dom_document_type_get_internal_subset(webKitDOMDocumentType);

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
	public string getName()
	{
		auto retStr = webkit_dom_document_type_get_name(webKitDOMDocumentType);

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
	public DOMNamedNodeMap getNotations()
	{
		auto __p = webkit_dom_document_type_get_notations(webKitDOMDocumentType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNamedNodeMap)(cast(WebKitDOMNamedNodeMap*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getPublicId()
	{
		auto retStr = webkit_dom_document_type_get_public_id(webKitDOMDocumentType);

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
	public string getSystemId()
	{
		auto retStr = webkit_dom_document_type_get_system_id(webKitDOMDocumentType);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
