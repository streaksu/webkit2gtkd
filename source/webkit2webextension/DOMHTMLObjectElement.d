module webkit2webextension.DOMHTMLObjectElement;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMDocument;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.DOMHTMLFormElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLObjectElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLObjectElement* webKitDOMHTMLObjectElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLObjectElement* getDOMHTMLObjectElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLObjectElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLObjectElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLObjectElement* webKitDOMHTMLObjectElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLObjectElement = webKitDOMHTMLObjectElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLObjectElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_object_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getAlign()
	{
		auto retStr = webkit_dom_html_object_element_get_align(webKitDOMHTMLObjectElement);

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
	public string getArchive()
	{
		auto retStr = webkit_dom_html_object_element_get_archive(webKitDOMHTMLObjectElement);

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
	public string getBorder()
	{
		auto retStr = webkit_dom_html_object_element_get_border(webKitDOMHTMLObjectElement);

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
	public string getCode()
	{
		auto retStr = webkit_dom_html_object_element_get_code(webKitDOMHTMLObjectElement);

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
	public string getCodeBase()
	{
		auto retStr = webkit_dom_html_object_element_get_code_base(webKitDOMHTMLObjectElement);

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
	public string getCodeType()
	{
		auto retStr = webkit_dom_html_object_element_get_code_type(webKitDOMHTMLObjectElement);

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
	public DOMDocument getContentDocument()
	{
		auto __p = webkit_dom_html_object_element_get_content_document(webKitDOMHTMLObjectElement);

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
	 * Returns: A #gchar
	 */
	public string getData()
	{
		auto retStr = webkit_dom_html_object_element_get_data(webKitDOMHTMLObjectElement);

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
	public bool getDeclare()
	{
		return webkit_dom_html_object_element_get_declare(webKitDOMHTMLObjectElement) != 0;
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
		auto __p = webkit_dom_html_object_element_get_form(webKitDOMHTMLObjectElement);

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
	 * Returns: A #gchar
	 */
	public string getHeight()
	{
		auto retStr = webkit_dom_html_object_element_get_height(webKitDOMHTMLObjectElement);

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
	public glong getHspace()
	{
		return webkit_dom_html_object_element_get_hspace(webKitDOMHTMLObjectElement);
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
		auto retStr = webkit_dom_html_object_element_get_name(webKitDOMHTMLObjectElement);

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
	public string getStandby()
	{
		auto retStr = webkit_dom_html_object_element_get_standby(webKitDOMHTMLObjectElement);

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
	public string getTypeAttr()
	{
		auto retStr = webkit_dom_html_object_element_get_type_attr(webKitDOMHTMLObjectElement);

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
	public string getUseMap()
	{
		auto retStr = webkit_dom_html_object_element_get_use_map(webKitDOMHTMLObjectElement);

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
	public glong getVspace()
	{
		return webkit_dom_html_object_element_get_vspace(webKitDOMHTMLObjectElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getWidth()
	{
		auto retStr = webkit_dom_html_object_element_get_width(webKitDOMHTMLObjectElement);

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
	public void setAlign(string value)
	{
		webkit_dom_html_object_element_set_align(webKitDOMHTMLObjectElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setArchive(string value)
	{
		webkit_dom_html_object_element_set_archive(webKitDOMHTMLObjectElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setBorder(string value)
	{
		webkit_dom_html_object_element_set_border(webKitDOMHTMLObjectElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setCode(string value)
	{
		webkit_dom_html_object_element_set_code(webKitDOMHTMLObjectElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setCodeBase(string value)
	{
		webkit_dom_html_object_element_set_code_base(webKitDOMHTMLObjectElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setCodeType(string value)
	{
		webkit_dom_html_object_element_set_code_type(webKitDOMHTMLObjectElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setData(string value)
	{
		webkit_dom_html_object_element_set_data(webKitDOMHTMLObjectElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setDeclare(bool value)
	{
		webkit_dom_html_object_element_set_declare(webKitDOMHTMLObjectElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setHeight(string value)
	{
		webkit_dom_html_object_element_set_height(webKitDOMHTMLObjectElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setHspace(glong value)
	{
		webkit_dom_html_object_element_set_hspace(webKitDOMHTMLObjectElement, value);
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
		webkit_dom_html_object_element_set_name(webKitDOMHTMLObjectElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setStandby(string value)
	{
		webkit_dom_html_object_element_set_standby(webKitDOMHTMLObjectElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setTypeAttr(string value)
	{
		webkit_dom_html_object_element_set_type_attr(webKitDOMHTMLObjectElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setUseMap(string value)
	{
		webkit_dom_html_object_element_set_use_map(webKitDOMHTMLObjectElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setVspace(glong value)
	{
		webkit_dom_html_object_element_set_vspace(webKitDOMHTMLObjectElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setWidth(string value)
	{
		webkit_dom_html_object_element_set_width(webKitDOMHTMLObjectElement, Str.toStringz(value));
	}
}
