module webkit2webextension.DOMCSSStyleDeclaration;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMCSSRule;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMCSSStyleDeclaration : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMCSSStyleDeclaration* webKitDOMCSSStyleDeclaration;

	/** Get the main Gtk struct */
	public WebKitDOMCSSStyleDeclaration* getDOMCSSStyleDeclarationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMCSSStyleDeclaration;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMCSSStyleDeclaration;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMCSSStyleDeclaration* webKitDOMCSSStyleDeclaration, bool ownedRef = false)
	{
		this.webKitDOMCSSStyleDeclaration = webKitDOMCSSStyleDeclaration;
		super(cast(WebKitDOMObject*)webKitDOMCSSStyleDeclaration, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_css_style_declaration_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getCssText()
	{
		auto retStr = webkit_dom_css_style_declaration_get_css_text(webKitDOMCSSStyleDeclaration);

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
	public gulong getLength()
	{
		return webkit_dom_css_style_declaration_get_length(webKitDOMCSSStyleDeclaration);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMCSSRule
	 */
	public DOMCSSRule getParentRule()
	{
		auto __p = webkit_dom_css_style_declaration_get_parent_rule(webKitDOMCSSStyleDeclaration);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMCSSRule)(cast(WebKitDOMCSSRule*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     propertyName = A #gchar
	 *
	 * Returns: A #gchar
	 */
	public string getPropertyPriority(string propertyName)
	{
		auto retStr = webkit_dom_css_style_declaration_get_property_priority(webKitDOMCSSStyleDeclaration, Str.toStringz(propertyName));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     propertyName = A #gchar
	 *
	 * Returns: A #gchar
	 */
	public string getPropertyShorthand(string propertyName)
	{
		auto retStr = webkit_dom_css_style_declaration_get_property_shorthand(webKitDOMCSSStyleDeclaration, Str.toStringz(propertyName));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     propertyName = A #gchar
	 *
	 * Returns: A #gchar
	 */
	public string getPropertyValue(string propertyName)
	{
		auto retStr = webkit_dom_css_style_declaration_get_property_value(webKitDOMCSSStyleDeclaration, Str.toStringz(propertyName));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     propertyName = A #gchar
	 *
	 * Returns: A #gboolean
	 */
	public bool isPropertyImplicit(string propertyName)
	{
		return webkit_dom_css_style_declaration_is_property_implicit(webKitDOMCSSStyleDeclaration, Str.toStringz(propertyName)) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     index = A #gulong
	 *
	 * Returns: A #gchar
	 */
	public string item(gulong index)
	{
		auto retStr = webkit_dom_css_style_declaration_item(webKitDOMCSSStyleDeclaration, index);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     propertyName = A #gchar
	 *
	 * Returns: A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public string removeProperty(string propertyName)
	{
		GError* err = null;

		auto retStr = webkit_dom_css_style_declaration_remove_property(webKitDOMCSSStyleDeclaration, Str.toStringz(propertyName), &err);

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
	 * Params:
	 *     value = A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public void setCssText(string value)
	{
		GError* err = null;

		webkit_dom_css_style_declaration_set_css_text(webKitDOMCSSStyleDeclaration, Str.toStringz(value), &err);

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
	 *     propertyName = A #gchar
	 *     value = A #gchar
	 *     priority = A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public void setProperty(string propertyName, string value, string priority)
	{
		GError* err = null;

		webkit_dom_css_style_declaration_set_property(webKitDOMCSSStyleDeclaration, Str.toStringz(propertyName), Str.toStringz(value), Str.toStringz(priority), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}
}
