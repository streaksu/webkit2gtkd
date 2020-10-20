module webkit2.ColorChooserRequest;

private import gdk.RGBA;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * Whenever the user interacts with an &lt;input type='color' /&gt;
 * HTML element, WebKit will need to show a dialog to choose a color. For that
 * to happen in a general way, instead of just opening a #GtkColorChooser
 * (which might be not desirable in some cases, which could prefer to use their
 * own color chooser dialog), WebKit will fire the
 * #WebKitWebView::run-color-chooser signal with a #WebKitColorChooserRequest
 * object, which will allow the client application to specify the color to be
 * selected, to inspect the details of the request (e.g. to get initial color)
 * and to cancel the request, in case nothing was selected.
 * 
 * In case the client application does not wish to handle this signal,
 * WebKit will provide a default handler which will asynchronously run
 * a regular #GtkColorChooserDialog for the user to interact with.
 */
public class ColorChooserRequest : ObjectG
{
	/** the main Gtk struct */
	protected WebKitColorChooserRequest* webKitColorChooserRequest;

	/** Get the main Gtk struct */
	public WebKitColorChooserRequest* getColorChooserRequestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitColorChooserRequest;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitColorChooserRequest;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitColorChooserRequest* webKitColorChooserRequest, bool ownedRef = false)
	{
		this.webKitColorChooserRequest = webKitColorChooserRequest;
		super(cast(GObject*)webKitColorChooserRequest, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_color_chooser_request_get_type();
	}

	/**
	 * Cancels @request and the input element changes to use the initial color
	 * it has before the request started.
	 * The signal #WebKitColorChooserRequest::finished
	 * is emitted to notify that the request has finished.
	 *
	 * Since: 2.8
	 */
	public void cancel()
	{
		webkit_color_chooser_request_cancel(webKitColorChooserRequest);
	}

	/**
	 * Finishes @request and the input element keeps the current value of
	 * #WebKitColorChooserRequest:rgba.
	 * The signal #WebKitColorChooserRequest::finished
	 * is emitted to notify that the request has finished.
	 *
	 * Since: 2.8
	 */
	public void finish()
	{
		webkit_color_chooser_request_finish(webKitColorChooserRequest);
	}

	/**
	 * Gets the bounding box of the color input element.
	 *
	 * Params:
	 *     rect = a #GdkRectangle to fill in with the element area
	 *
	 * Since: 2.8
	 */
	public void getElementRectangle(out GdkRectangle rect)
	{
		webkit_color_chooser_request_get_element_rectangle(webKitColorChooserRequest, &rect);
	}

	/**
	 * Gets the current #GdkRGBA color of @request
	 *
	 * Params:
	 *     rgba = a #GdkRGBA to fill in with the current color.
	 *
	 * Since: 2.8
	 */
	public void getRgba(out RGBA rgba)
	{
		GdkRGBA* outrgba = sliceNew!GdkRGBA();

		webkit_color_chooser_request_get_rgba(webKitColorChooserRequest, outrgba);

		rgba = ObjectG.getDObject!(RGBA)(outrgba, true);
	}

	/**
	 * Sets the current #GdkRGBA color of @request
	 *
	 * Params:
	 *     rgba = a pointer #GdkRGBA
	 *
	 * Since: 2.8
	 */
	public void setRgba(RGBA rgba)
	{
		webkit_color_chooser_request_set_rgba(webKitColorChooserRequest, (rgba is null) ? null : rgba.getRGBAStruct());
	}

	/**
	 * Emitted when the @request finishes. This signal can be emitted because the
	 * user completed the @request calling webkit_color_chooser_request_finish(),
	 * or cancelled it with webkit_color_chooser_request_cancel() or because the
	 * color input element is removed from the DOM.
	 *
	 * Since: 2.8
	 */
	gulong addOnFinished(void delegate(ColorChooserRequest) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "finished", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
