module webkit2webextension.DOMHTMLElement;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMElement;
private import webkit2webextension.DOMHTMLCollection;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLElement : DOMElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLElement* webKitDOMHTMLElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLElement* getDOMHTMLElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLElement* webKitDOMHTMLElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLElement = webKitDOMHTMLElement;
		super(cast(WebKitDOMElement*)webKitDOMHTMLElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void click()
	{
		webkit_dom_html_element_click(webKitDOMHTMLElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getAccessKey()
	{
		auto retStr = webkit_dom_html_element_get_access_key(webKitDOMHTMLElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_element_get_children() instead.
	 *
	 * Returns: A #WebKitDOMHTMLCollection
	 */
	public override DOMHTMLCollection getChildren()
	{
		auto __p = webkit_dom_html_element_get_children(webKitDOMHTMLElement);

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
	public string getContentEditable()
	{
		auto retStr = webkit_dom_html_element_get_content_editable(webKitDOMHTMLElement);

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
	public string getDir()
	{
		auto retStr = webkit_dom_html_element_get_dir(webKitDOMHTMLElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
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
	public bool getDraggable()
	{
		return webkit_dom_html_element_get_draggable(webKitDOMHTMLElement) != 0;
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
		return webkit_dom_html_element_get_hidden(webKitDOMHTMLElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_element_get_inner_html() instead.
	 *
	 * Returns: a #gchar
	 */
	public override string getInnerHtml()
	{
		auto retStr = webkit_dom_html_element_get_inner_html(webKitDOMHTMLElement);

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
	public string getInnerText()
	{
		auto retStr = webkit_dom_html_element_get_inner_text(webKitDOMHTMLElement);

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
	public bool getIsContentEditable()
	{
		return webkit_dom_html_element_get_is_content_editable(webKitDOMHTMLElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getLang()
	{
		auto retStr = webkit_dom_html_element_get_lang(webKitDOMHTMLElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_element_get_outer_html() instead.
	 *
	 * Returns: a #gchar
	 */
	public override string getOuterHtml()
	{
		auto retStr = webkit_dom_html_element_get_outer_html(webKitDOMHTMLElement);

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
	public string getOuterText()
	{
		auto retStr = webkit_dom_html_element_get_outer_text(webKitDOMHTMLElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
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
	public bool getSpellcheck()
	{
		return webkit_dom_html_element_get_spellcheck(webKitDOMHTMLElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getTabIndex()
	{
		return webkit_dom_html_element_get_tab_index(webKitDOMHTMLElement);
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
		auto retStr = webkit_dom_html_element_get_title(webKitDOMHTMLElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
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
	public bool getTranslate()
	{
		return webkit_dom_html_element_get_translate(webKitDOMHTMLElement) != 0;
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
	public string getWebkitdropzone()
	{
		auto retStr = webkit_dom_html_element_get_webkitdropzone(webKitDOMHTMLElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setAccessKey(string value)
	{
		webkit_dom_html_element_set_access_key(webKitDOMHTMLElement, Str.toStringz(value));
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
	public void setContentEditable(string value)
	{
		GError* err = null;

		webkit_dom_html_element_set_content_editable(webKitDOMHTMLElement, Str.toStringz(value), &err);

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
	public void setDir(string value)
	{
		webkit_dom_html_element_set_dir(webKitDOMHTMLElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 *
	 * Since: 2.16
	 */
	public void setDraggable(bool value)
	{
		webkit_dom_html_element_set_draggable(webKitDOMHTMLElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 *
	 * Since: 2.16
	 */
	public void setHidden(bool value)
	{
		webkit_dom_html_element_set_hidden(webKitDOMHTMLElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_element_set_inner_html() instead.
	 *
	 * Params:
	 *     contents = a #gchar with contents to set
	 *
	 * Throws: GException on failure.
	 */
	public override void setInnerHtml(string contents)
	{
		GError* err = null;

		webkit_dom_html_element_set_inner_html(webKitDOMHTMLElement, Str.toStringz(contents), &err);

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
	public void setInnerText(string value)
	{
		GError* err = null;

		webkit_dom_html_element_set_inner_text(webKitDOMHTMLElement, Str.toStringz(value), &err);

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
	public void setLang(string value)
	{
		webkit_dom_html_element_set_lang(webKitDOMHTMLElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_element_set_outer_html() instead.
	 *
	 * Params:
	 *     contents = a #gchar with contents to set
	 *
	 * Throws: GException on failure.
	 */
	public override void setOuterHtml(string contents)
	{
		GError* err = null;

		webkit_dom_html_element_set_outer_html(webKitDOMHTMLElement, Str.toStringz(contents), &err);

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
	public void setOuterText(string value)
	{
		GError* err = null;

		webkit_dom_html_element_set_outer_text(webKitDOMHTMLElement, Str.toStringz(value), &err);

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
	 *     value = A #gboolean
	 *
	 * Since: 2.16
	 */
	public void setSpellcheck(bool value)
	{
		webkit_dom_html_element_set_spellcheck(webKitDOMHTMLElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setTabIndex(glong value)
	{
		webkit_dom_html_element_set_tab_index(webKitDOMHTMLElement, value);
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
		webkit_dom_html_element_set_title(webKitDOMHTMLElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 *
	 * Since: 2.16
	 */
	public void setTranslate(bool value)
	{
		webkit_dom_html_element_set_translate(webKitDOMHTMLElement, value);
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
	public void setWebkitdropzone(string value)
	{
		webkit_dom_html_element_set_webkitdropzone(webKitDOMHTMLElement, Str.toStringz(value));
	}
}
