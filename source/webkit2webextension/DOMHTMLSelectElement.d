module webkit2webextension.DOMHTMLSelectElement;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.DOMHTMLFormElement;
private import webkit2webextension.DOMHTMLOptionsCollection;
private import webkit2webextension.DOMNode;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLSelectElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLSelectElement* webKitDOMHTMLSelectElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLSelectElement* getDOMHTMLSelectElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLSelectElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLSelectElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLSelectElement* webKitDOMHTMLSelectElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLSelectElement = webKitDOMHTMLSelectElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLSelectElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_select_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     element = A #WebKitDOMHTMLElement
	 *     before = A #WebKitDOMHTMLElement
	 *
	 * Throws: GException on failure.
	 */
	public void add(DOMHTMLElement element, DOMHTMLElement before)
	{
		GError* err = null;

		webkit_dom_html_select_element_add(webKitDOMHTMLSelectElement, (element is null) ? null : element.getDOMHTMLElementStruct(), (before is null) ? null : before.getDOMHTMLElementStruct(), &err);

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
	 * Returns: A #gboolean
	 */
	public bool getAutofocus()
	{
		return webkit_dom_html_select_element_get_autofocus(webKitDOMHTMLSelectElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getDisabled()
	{
		return webkit_dom_html_select_element_get_disabled(webKitDOMHTMLSelectElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMHTMLFormElement
	 */
	public DOMHTMLFormElement getForm()
	{
		auto __p = webkit_dom_html_select_element_get_form(webKitDOMHTMLSelectElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLFormElement)(cast(WebKitDOMHTMLFormElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gulong
	 */
	public gulong getLength()
	{
		return webkit_dom_html_select_element_get_length(webKitDOMHTMLSelectElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getMultiple()
	{
		return webkit_dom_html_select_element_get_multiple(webKitDOMHTMLSelectElement) != 0;
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
		auto retStr = webkit_dom_html_select_element_get_name(webKitDOMHTMLSelectElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMHTMLOptionsCollection
	 */
	public DOMHTMLOptionsCollection getOptions()
	{
		auto __p = webkit_dom_html_select_element_get_options(webKitDOMHTMLSelectElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLOptionsCollection)(cast(WebKitDOMHTMLOptionsCollection*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getSelectType()
	{
		auto retStr = webkit_dom_html_select_element_get_select_type(webKitDOMHTMLSelectElement);

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
	public glong getSelectedIndex()
	{
		return webkit_dom_html_select_element_get_selected_index(webKitDOMHTMLSelectElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getSize()
	{
		return webkit_dom_html_select_element_get_size(webKitDOMHTMLSelectElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getValue()
	{
		auto retStr = webkit_dom_html_select_element_get_value(webKitDOMHTMLSelectElement);

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
	public bool getWillValidate()
	{
		return webkit_dom_html_select_element_get_will_validate(webKitDOMHTMLSelectElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     index = A #gulong
	 *
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode item(gulong index)
	{
		auto __p = webkit_dom_html_select_element_item(webKitDOMHTMLSelectElement, index);

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
	 *     name = A #gchar
	 *
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode namedItem(string name)
	{
		auto __p = webkit_dom_html_select_element_named_item(webKitDOMHTMLSelectElement, Str.toStringz(name));

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
	 *     index = A #glong
	 */
	public void remove(glong index)
	{
		webkit_dom_html_select_element_remove(webKitDOMHTMLSelectElement, index);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setAutofocus(bool value)
	{
		webkit_dom_html_select_element_set_autofocus(webKitDOMHTMLSelectElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setDisabled(bool value)
	{
		webkit_dom_html_select_element_set_disabled(webKitDOMHTMLSelectElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gulong
	 *
	 * Throws: GException on failure.
	 */
	public void setLength(gulong value)
	{
		GError* err = null;

		webkit_dom_html_select_element_set_length(webKitDOMHTMLSelectElement, value, &err);

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
	 */
	public void setMultiple(bool value)
	{
		webkit_dom_html_select_element_set_multiple(webKitDOMHTMLSelectElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setName(string value)
	{
		webkit_dom_html_select_element_set_name(webKitDOMHTMLSelectElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setSelectedIndex(glong value)
	{
		webkit_dom_html_select_element_set_selected_index(webKitDOMHTMLSelectElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setSize(glong value)
	{
		webkit_dom_html_select_element_set_size(webKitDOMHTMLSelectElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setValue(string value)
	{
		webkit_dom_html_select_element_set_value(webKitDOMHTMLSelectElement, Str.toStringz(value));
	}
}
