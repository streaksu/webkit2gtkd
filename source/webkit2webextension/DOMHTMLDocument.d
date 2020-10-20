module webkit2webextension.DOMHTMLDocument;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMDocument;
private import webkit2webextension.DOMHTMLCollection;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLDocument : DOMDocument
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLDocument* webKitDOMHTMLDocument;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLDocument* getDOMHTMLDocumentStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLDocument;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLDocument;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLDocument* webKitDOMHTMLDocument, bool ownedRef = false)
	{
		this.webKitDOMHTMLDocument = webKitDOMHTMLDocument;
		super(cast(WebKitDOMDocument*)webKitDOMHTMLDocument, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_document_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void captureEvents()
	{
		webkit_dom_html_document_capture_events(webKitDOMHTMLDocument);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void clear()
	{
		webkit_dom_html_document_clear(webKitDOMHTMLDocument);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void close()
	{
		webkit_dom_html_document_close(webKitDOMHTMLDocument);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getAlinkColor()
	{
		auto retStr = webkit_dom_html_document_get_alink_color(webKitDOMHTMLDocument);

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
	public string getBgColor()
	{
		auto retStr = webkit_dom_html_document_get_bg_color(webKitDOMHTMLDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_document_get_compat_mode() instead.
	 *
	 * Returns: A #gchar
	 */
	public override string getCompatMode()
	{
		auto retStr = webkit_dom_html_document_get_compat_mode(webKitDOMHTMLDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_document_get_design_mode() instead.
	 *
	 * Returns: A #gchar
	 */
	public override string getDesignMode()
	{
		auto retStr = webkit_dom_html_document_get_design_mode(webKitDOMHTMLDocument);

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
	public override string getDir()
	{
		auto retStr = webkit_dom_html_document_get_dir(webKitDOMHTMLDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_document_get_embeds() instead.
	 *
	 * Returns: A #WebKitDOMHTMLCollection
	 */
	public override DOMHTMLCollection getEmbeds()
	{
		auto __p = webkit_dom_html_document_get_embeds(webKitDOMHTMLDocument);

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
	 */
	public string getFgColor()
	{
		auto retStr = webkit_dom_html_document_get_fg_color(webKitDOMHTMLDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getHeight()
	{
		return webkit_dom_html_document_get_height(webKitDOMHTMLDocument);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getLinkColor()
	{
		auto retStr = webkit_dom_html_document_get_link_color(webKitDOMHTMLDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_document_get_plugins() instead.
	 *
	 * Returns: A #WebKitDOMHTMLCollection
	 */
	public override DOMHTMLCollection getPlugins()
	{
		auto __p = webkit_dom_html_document_get_plugins(webKitDOMHTMLDocument);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLCollection)(cast(WebKitDOMHTMLCollection*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_document_get_scripts() instead.
	 *
	 * Returns: A #WebKitDOMHTMLCollection
	 */
	public override DOMHTMLCollection getScripts()
	{
		auto __p = webkit_dom_html_document_get_scripts(webKitDOMHTMLDocument);

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
	 */
	public string getVlinkColor()
	{
		auto retStr = webkit_dom_html_document_get_vlink_color(webKitDOMHTMLDocument);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getWidth()
	{
		return webkit_dom_html_document_get_width(webKitDOMHTMLDocument);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void releaseEvents()
	{
		webkit_dom_html_document_release_events(webKitDOMHTMLDocument);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setAlinkColor(string value)
	{
		webkit_dom_html_document_set_alink_color(webKitDOMHTMLDocument, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setBgColor(string value)
	{
		webkit_dom_html_document_set_bg_color(webKitDOMHTMLDocument, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_document_set_design_mode() instead.
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public override void setDesignMode(string value)
	{
		webkit_dom_html_document_set_design_mode(webKitDOMHTMLDocument, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public override void setDir(string value)
	{
		webkit_dom_html_document_set_dir(webKitDOMHTMLDocument, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setFgColor(string value)
	{
		webkit_dom_html_document_set_fg_color(webKitDOMHTMLDocument, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setLinkColor(string value)
	{
		webkit_dom_html_document_set_link_color(webKitDOMHTMLDocument, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setVlinkColor(string value)
	{
		webkit_dom_html_document_set_vlink_color(webKitDOMHTMLDocument, Str.toStringz(value));
	}
}
