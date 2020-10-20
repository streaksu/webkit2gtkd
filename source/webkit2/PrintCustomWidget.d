module webkit2.PrintCustomWidget;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.PageSetup;
private import gtk.PrintSettings;
private import gtk.Widget;
private import std.algorithm;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * A WebKitPrintCustomWidget allows to embed a custom widget in the print
 * dialog by connecting to the #WebKitPrintOperation::create-custom-widget
 * signal, creating a new WebKitPrintCustomWidget with
 * webkit_print_custom_widget_new() and returning it from there. You can later
 * use webkit_print_operation_run_dialog() to display the dialog.
 *
 * Since: 2.16
 */
public class PrintCustomWidget : ObjectG
{
	/** the main Gtk struct */
	protected WebKitPrintCustomWidget* webKitPrintCustomWidget;

	/** Get the main Gtk struct */
	public WebKitPrintCustomWidget* getPrintCustomWidgetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitPrintCustomWidget;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitPrintCustomWidget;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitPrintCustomWidget* webKitPrintCustomWidget, bool ownedRef = false)
	{
		this.webKitPrintCustomWidget = webKitPrintCustomWidget;
		super(cast(GObject*)webKitPrintCustomWidget, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_print_custom_widget_get_type();
	}

	/**
	 * Create a new #WebKitPrintCustomWidget with given @widget and @title. The @widget
	 * ownership is taken and it is destroyed together with the dialog even if this
	 * object could still be alive at that point. You typically want to pass a container
	 * widget with multiple widgets in it.
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *     title = a @widget's title
	 *
	 * Returns: a new #WebKitPrintOperation.
	 *
	 * Since: 2.16
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget widget, string title)
	{
		auto __p = webkit_print_custom_widget_new((widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(title));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitPrintCustomWidget*) __p, true);
	}

	/**
	 * Return the value of #WebKitPrintCustomWidget:title property for the given
	 * @print_custom_widget object.
	 *
	 * Returns: Title of the @print_custom_widget.
	 *
	 * Since: 2.16
	 */
	public string getTitle()
	{
		return Str.toString(webkit_print_custom_widget_get_title(webKitPrintCustomWidget));
	}

	/**
	 * Return the value of #WebKitPrintCustomWidget:widget property for the given
	 * @print_custom_widget object. The returned value will always be valid if called
	 * from #WebKitPrintCustomWidget::apply or #WebKitPrintCustomWidget::update
	 * callbacks, but it will be %NULL if called after the
	 * #WebKitPrintCustomWidget::apply signal is emitted.
	 *
	 * Returns: a #GtkWidget.
	 *
	 * Since: 2.16
	 */
	public Widget getWidget()
	{
		auto __p = webkit_print_custom_widget_get_widget(webKitPrintCustomWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Emitted right before the printing will start. You should read the information
	 * from the widget and update the content based on it if necessary. The widget
	 * is not guaranteed to be valid at a later time.
	 *
	 * Since: 2.16
	 */
	gulong addOnApply(void delegate(PrintCustomWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "apply", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted after change of selected printer in the dialog. The actual page setup
	 * and print settings are available and the custom widget can actualize itself
	 * according to their values.
	 *
	 * Params:
	 *     pageSetup = actual page setup
	 *     printSettings = actual print settings
	 *
	 * Since: 2.16
	 */
	gulong addOnUpdate(void delegate(PageSetup, PrintSettings, PrintCustomWidget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "update", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
