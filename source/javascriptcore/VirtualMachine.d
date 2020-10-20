module javascriptcore.VirtualMachine;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import javascriptcore.c.functions;
public  import javascriptcore.c.types;


/**
 * JSCVirtualMachine represents a group of JSCContext<!-- -->s. It allows
 * concurrent JavaScript execution by creating a different instance of
 * JSCVirtualMachine in each thread.
 * 
 * To create a group of JSCContext<!-- -->s pass the same JSCVirtualMachine
 * instance to every JSCContext constructor.
 */
public class VirtualMachine : ObjectG
{
	/** the main Gtk struct */
	protected JSCVirtualMachine* jSCVirtualMachine;

	/** Get the main Gtk struct */
	public JSCVirtualMachine* getVirtualMachineStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return jSCVirtualMachine;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)jSCVirtualMachine;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (JSCVirtualMachine* jSCVirtualMachine, bool ownedRef = false)
	{
		this.jSCVirtualMachine = jSCVirtualMachine;
		super(cast(GObject*)jSCVirtualMachine, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return jsc_virtual_machine_get_type();
	}

	/**
	 * Create a new #JSCVirtualMachine.
	 *
	 * Returns: the newly created #JSCVirtualMachine.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = jsc_virtual_machine_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(JSCVirtualMachine*) __p, true);
	}
}
