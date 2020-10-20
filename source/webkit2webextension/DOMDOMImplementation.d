module webkit2webextension.DOMDOMImplementation;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMCSSStyleSheet;
private import webkit2webextension.DOMDocument;
private import webkit2webextension.DOMDocumentType;
private import webkit2webextension.DOMHTMLDocument;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMDOMImplementation : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMDOMImplementation* webKitDOMDOMImplementation;

	/** Get the main Gtk struct */
	public WebKitDOMDOMImplementation* getDOMDOMImplementationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMDOMImplementation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMDOMImplementation;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMDOMImplementation* webKitDOMDOMImplementation, bool ownedRef = false)
	{
		this.webKitDOMDOMImplementation = webKitDOMDOMImplementation;
		super(cast(WebKitDOMObject*)webKitDOMDOMImplementation, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_dom_implementation_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     title = A #gchar
	 *     media = A #gchar
	 *
	 * Returns: A #WebKitDOMCSSStyleSheet
	 *
	 * Throws: GException on failure.
	 */
	public DOMCSSStyleSheet createCssStyleSheet(string title, string media)
	{
		GError* err = null;

		auto __p = webkit_dom_dom_implementation_create_css_style_sheet(webKitDOMDOMImplementation, Str.toStringz(title), Str.toStringz(media), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMCSSStyleSheet)(cast(WebKitDOMCSSStyleSheet*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     namespaceURI = A #gchar
	 *     qualifiedName = A #gchar
	 *     doctype = A #WebKitDOMDocumentType
	 *
	 * Returns: A #WebKitDOMDocument
	 *
	 * Throws: GException on failure.
	 */
	public DOMDocument createDocument(string namespaceURI, string qualifiedName, DOMDocumentType doctype)
	{
		GError* err = null;

		auto __p = webkit_dom_dom_implementation_create_document(webKitDOMDOMImplementation, Str.toStringz(namespaceURI), Str.toStringz(qualifiedName), (doctype is null) ? null : doctype.getDOMDocumentTypeStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

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
	 * Params:
	 *     qualifiedName = A #gchar
	 *     publicId = A #gchar
	 *     systemId = A #gchar
	 *
	 * Returns: A #WebKitDOMDocumentType
	 *
	 * Throws: GException on failure.
	 */
	public DOMDocumentType createDocumentType(string qualifiedName, string publicId, string systemId)
	{
		GError* err = null;

		auto __p = webkit_dom_dom_implementation_create_document_type(webKitDOMDOMImplementation, Str.toStringz(qualifiedName), Str.toStringz(publicId), Str.toStringz(systemId), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

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
	 * Params:
	 *     title = A #gchar
	 *
	 * Returns: A #WebKitDOMHTMLDocument
	 */
	public DOMHTMLDocument createHtmlDocument(string title)
	{
		auto __p = webkit_dom_dom_implementation_create_html_document(webKitDOMDOMImplementation, Str.toStringz(title));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLDocument)(cast(WebKitDOMHTMLDocument*) __p);
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
	public bool hasFeature(string feature, string version_)
	{
		return webkit_dom_dom_implementation_has_feature(webKitDOMDOMImplementation, Str.toStringz(feature), Str.toStringz(version_)) != 0;
	}
}
