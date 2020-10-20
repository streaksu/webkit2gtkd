module webkit2.PrintOperation;

private import glib.ConstructionException;
private import glib.ErrorG;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.PageSetup;
private import gtk.PrintSettings;
private import gtk.Window;
private import std.algorithm;
private import webkit2.PrintCustomWidget;
private import webkit2.WebView;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * A #WebKitPrintOperation controls a print operation in WebKit. With
 * a similar API to #GtkPrintOperation, it lets you set the print
 * settings with webkit_print_operation_set_print_settings() or
 * display the print dialog with webkit_print_operation_run_dialog().
 */
public class PrintOperation : ObjectG
{
	/** the main Gtk struct */
	protected WebKitPrintOperation* webKitPrintOperation;

	/** Get the main Gtk struct */
	public WebKitPrintOperation* getPrintOperationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitPrintOperation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitPrintOperation;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitPrintOperation* webKitPrintOperation, bool ownedRef = false)
	{
		this.webKitPrintOperation = webKitPrintOperation;
		super(cast(GObject*)webKitPrintOperation, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_print_operation_get_type();
	}

	/**
	 * Create a new #WebKitPrintOperation to print @web_view contents.
	 *
	 * Params:
	 *     webView = a #WebKitWebView
	 *
	 * Returns: a new #WebKitPrintOperation.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(WebView webView)
	{
		auto __p = webkit_print_operation_new((webView is null) ? null : webView.getWebViewStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitPrintOperation*) __p, true);
	}

	/**
	 * Return the current page setup of @print_operation. It returns %NULL until
	 * either webkit_print_operation_set_page_setup() or webkit_print_operation_run_dialog()
	 * have been called.
	 *
	 * Returns: the current #GtkPageSetup of @print_operation.
	 */
	public PageSetup getPageSetup()
	{
		auto __p = webkit_print_operation_get_page_setup(webKitPrintOperation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PageSetup)(cast(GtkPageSetup*) __p);
	}

	/**
	 * Return the current print settings of @print_operation. It returns %NULL until
	 * either webkit_print_operation_set_print_settings() or webkit_print_operation_run_dialog()
	 * have been called.
	 *
	 * Returns: the current #GtkPrintSettings of @print_operation.
	 */
	public PrintSettings getPrintSettings()
	{
		auto __p = webkit_print_operation_get_print_settings(webKitPrintOperation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PrintSettings)(cast(GtkPrintSettings*) __p);
	}

	/**
	 * Start a print operation using current print settings and page setup
	 * without showing the print dialog. If either print settings or page setup
	 * are not set with webkit_print_operation_set_print_settings() and
	 * webkit_print_operation_set_page_setup(), the default options will be used
	 * and the print job will be sent to the default printer.
	 * The #WebKitPrintOperation::finished signal is emitted when the printing
	 * operation finishes. If an error occurs while printing the signal
	 * #WebKitPrintOperation::failed is emitted before #WebKitPrintOperation::finished.
	 */
	public void print()
	{
		webkit_print_operation_print(webKitPrintOperation);
	}

	/**
	 * Run the print dialog and start printing using the options selected by
	 * the user. This method returns when the print dialog is closed.
	 * If the print dialog is cancelled %WEBKIT_PRINT_OPERATION_RESPONSE_CANCEL
	 * is returned. If the user clicks on the print button, %WEBKIT_PRINT_OPERATION_RESPONSE_PRINT
	 * is returned and the print operation starts. In this case, the #WebKitPrintOperation::finished
	 * signal is emitted when the operation finishes. If an error occurs while printing, the signal
	 * #WebKitPrintOperation::failed is emitted before #WebKitPrintOperation::finished.
	 * If the print dialog is not cancelled current print settings and page setup of @print_operation
	 * are updated with options selected by the user when Print button is pressed in print dialog.
	 * You can get the updated print settings and page setup by calling
	 * webkit_print_operation_get_print_settings() and webkit_print_operation_get_page_setup()
	 * after this method.
	 *
	 * Params:
	 *     parent = transient parent of the print dialog
	 *
	 * Returns: the #WebKitPrintOperationResponse of the print dialog
	 */
	public WebKitPrintOperationResponse runDialog(Window parent)
	{
		return webkit_print_operation_run_dialog(webKitPrintOperation, (parent is null) ? null : parent.getWindowStruct());
	}

	/**
	 * Set the current page setup of @print_operation. Current page setup is used for the
	 * initial values of the print dialog when webkit_print_operation_run_dialog() is called.
	 *
	 * Params:
	 *     pageSetup = a #GtkPageSetup to set
	 */
	public void setPageSetup(PageSetup pageSetup)
	{
		webkit_print_operation_set_page_setup(webKitPrintOperation, (pageSetup is null) ? null : pageSetup.getPageSetupStruct());
	}

	/**
	 * Set the current print settings of @print_operation. Current print settings are used for
	 * the initial values of the print dialog when webkit_print_operation_run_dialog() is called.
	 *
	 * Params:
	 *     printSettings = a #GtkPrintSettings to set
	 */
	public void setPrintSettings(PrintSettings printSettings)
	{
		webkit_print_operation_set_print_settings(webKitPrintOperation, (printSettings is null) ? null : printSettings.getPrintSettingsStruct());
	}

	/**
	 * Emitted when displaying the print dialog with webkit_print_operation_run_dialog().
	 * The returned #WebKitPrintCustomWidget will be added to the print dialog and
	 * it will be owned by the @print_operation. However, the object is guaranteed
	 * to be alive until the #WebKitPrintCustomWidget::apply is emitted.
	 *
	 * Returns: A #WebKitPrintCustomWidget that will be embedded in the dialog.
	 *
	 * Since: 2.16
	 */
	gulong addOnCreateCustomWidget(PrintCustomWidget delegate(PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "create-custom-widget", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when an error occurs while printing. The given @error, of the domain
	 * %WEBKIT_PRINT_ERROR, contains further details of the failure.
	 * The #WebKitPrintOperation::finished signal is emitted after this one.
	 *
	 * Params:
	 *     error = the #GError that was triggered
	 */
	gulong addOnFailed(void delegate(ErrorG, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "failed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the print operation has finished doing everything
	 * required for printing.
	 */
	gulong addOnFinished(void delegate(PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "finished", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
