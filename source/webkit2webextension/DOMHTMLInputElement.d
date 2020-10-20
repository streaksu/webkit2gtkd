module webkit2webextension.DOMHTMLInputElement;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMFileList;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.DOMHTMLFormElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLInputElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLInputElement* webKitDOMHTMLInputElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLInputElement* getDOMHTMLInputElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLInputElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLInputElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLInputElement* webKitDOMHTMLInputElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLInputElement = webKitDOMHTMLInputElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLInputElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_input_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getAccept()
	{
		auto retStr = webkit_dom_html_input_element_get_accept(webKitDOMHTMLInputElement);

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
	public string getAlign()
	{
		auto retStr = webkit_dom_html_input_element_get_align(webKitDOMHTMLInputElement);

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
	public string getAlt()
	{
		auto retStr = webkit_dom_html_input_element_get_alt(webKitDOMHTMLInputElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_element_html_input_element_get_auto_filled() instead.
	 *
	 * Returns: A #gboolean
	 *
	 * Since: 2.16
	 */
	public bool getAutoFilled()
	{
		return webkit_dom_html_input_element_get_auto_filled(webKitDOMHTMLInputElement) != 0;
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
		return webkit_dom_html_input_element_get_autofocus(webKitDOMHTMLInputElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_html_input_element_get_capture_type() instead.
	 *
	 * Returns: A #gboolean
	 */
	public bool getCapture()
	{
		return webkit_dom_html_input_element_get_capture(webKitDOMHTMLInputElement) != 0;
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
	public string getCaptureType()
	{
		auto retStr = webkit_dom_html_input_element_get_capture_type(webKitDOMHTMLInputElement);

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
	public bool getChecked()
	{
		return webkit_dom_html_input_element_get_checked(webKitDOMHTMLInputElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getDefaultChecked()
	{
		return webkit_dom_html_input_element_get_default_checked(webKitDOMHTMLInputElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getDefaultValue()
	{
		auto retStr = webkit_dom_html_input_element_get_default_value(webKitDOMHTMLInputElement);

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
	public bool getDisabled()
	{
		return webkit_dom_html_input_element_get_disabled(webKitDOMHTMLInputElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMFileList
	 */
	public DOMFileList getFiles()
	{
		auto __p = webkit_dom_html_input_element_get_files(webKitDOMHTMLInputElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMFileList)(cast(WebKitDOMFileList*) __p, true);
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
		auto __p = webkit_dom_html_input_element_get_form(webKitDOMHTMLInputElement);

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
	public gulong getHeight()
	{
		return webkit_dom_html_input_element_get_height(webKitDOMHTMLInputElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getIndeterminate()
	{
		return webkit_dom_html_input_element_get_indeterminate(webKitDOMHTMLInputElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getInputType()
	{
		auto retStr = webkit_dom_html_input_element_get_input_type(webKitDOMHTMLInputElement);

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
	public glong getMaxLength()
	{
		return webkit_dom_html_input_element_get_max_length(webKitDOMHTMLInputElement);
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
		return webkit_dom_html_input_element_get_multiple(webKitDOMHTMLInputElement) != 0;
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
		auto retStr = webkit_dom_html_input_element_get_name(webKitDOMHTMLInputElement);

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
	public bool getReadOnly()
	{
		return webkit_dom_html_input_element_get_read_only(webKitDOMHTMLInputElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gulong
	 */
	public gulong getSize()
	{
		return webkit_dom_html_input_element_get_size(webKitDOMHTMLInputElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getSrc()
	{
		auto retStr = webkit_dom_html_input_element_get_src(webKitDOMHTMLInputElement);

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
		auto retStr = webkit_dom_html_input_element_get_use_map(webKitDOMHTMLInputElement);

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
	public string getValue()
	{
		auto retStr = webkit_dom_html_input_element_get_value(webKitDOMHTMLInputElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gulong
	 */
	public gulong getWidth()
	{
		return webkit_dom_html_input_element_get_width(webKitDOMHTMLInputElement);
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
		return webkit_dom_html_input_element_get_will_validate(webKitDOMHTMLInputElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_element_html_input_element_is_user_edited() instead.
	 *
	 * Returns: A #gboolean
	 */
	public bool isEdited()
	{
		return webkit_dom_html_input_element_is_edited(webKitDOMHTMLInputElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void select()
	{
		webkit_dom_html_input_element_select(webKitDOMHTMLInputElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setAccept(string value)
	{
		webkit_dom_html_input_element_set_accept(webKitDOMHTMLInputElement, Str.toStringz(value));
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
		webkit_dom_html_input_element_set_align(webKitDOMHTMLInputElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setAlt(string value)
	{
		webkit_dom_html_input_element_set_alt(webKitDOMHTMLInputElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_element_html_input_element_set_auto_filled() instead.
	 *
	 * Params:
	 *     value = A #gboolean
	 *
	 * Since: 2.16
	 */
	public void setAutoFilled(bool value)
	{
		webkit_dom_html_input_element_set_auto_filled(webKitDOMHTMLInputElement, value);
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
		webkit_dom_html_input_element_set_autofocus(webKitDOMHTMLInputElement, value);
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
	public void setCaptureType(string value)
	{
		webkit_dom_html_input_element_set_capture_type(webKitDOMHTMLInputElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setChecked(bool value)
	{
		webkit_dom_html_input_element_set_checked(webKitDOMHTMLInputElement, value);
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
	public void setDefaultChecked(bool value)
	{
		webkit_dom_html_input_element_set_default_checked(webKitDOMHTMLInputElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setDefaultValue(string value)
	{
		webkit_dom_html_input_element_set_default_value(webKitDOMHTMLInputElement, Str.toStringz(value));
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
		webkit_dom_html_input_element_set_disabled(webKitDOMHTMLInputElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use webkit_dom_element_html_input_element_set_editing_value() instead.
	 *
	 * Params:
	 *     value = A #gchar
	 *
	 * Since: 2.16
	 */
	public void setEditingValue(string value)
	{
		webkit_dom_html_input_element_set_editing_value(webKitDOMHTMLInputElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #WebKitDOMFileList
	 */
	public void setFiles(DOMFileList value)
	{
		webkit_dom_html_input_element_set_files(webKitDOMHTMLInputElement, (value is null) ? null : value.getDOMFileListStruct());
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gulong
	 */
	public void setHeight(gulong value)
	{
		webkit_dom_html_input_element_set_height(webKitDOMHTMLInputElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setIndeterminate(bool value)
	{
		webkit_dom_html_input_element_set_indeterminate(webKitDOMHTMLInputElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setInputType(string value)
	{
		webkit_dom_html_input_element_set_input_type(webKitDOMHTMLInputElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 *
	 * Throws: GException on failure.
	 */
	public void setMaxLength(glong value)
	{
		GError* err = null;

		webkit_dom_html_input_element_set_max_length(webKitDOMHTMLInputElement, value, &err);

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
		webkit_dom_html_input_element_set_multiple(webKitDOMHTMLInputElement, value);
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
		webkit_dom_html_input_element_set_name(webKitDOMHTMLInputElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setReadOnly(bool value)
	{
		webkit_dom_html_input_element_set_read_only(webKitDOMHTMLInputElement, value);
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
	public void setSize(gulong value)
	{
		GError* err = null;

		webkit_dom_html_input_element_set_size(webKitDOMHTMLInputElement, value, &err);

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
	public void setSrc(string value)
	{
		webkit_dom_html_input_element_set_src(webKitDOMHTMLInputElement, Str.toStringz(value));
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
		webkit_dom_html_input_element_set_use_map(webKitDOMHTMLInputElement, Str.toStringz(value));
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
		webkit_dom_html_input_element_set_value(webKitDOMHTMLInputElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gulong
	 */
	public void setWidth(gulong value)
	{
		webkit_dom_html_input_element_set_width(webKitDOMHTMLInputElement, value);
	}
}
