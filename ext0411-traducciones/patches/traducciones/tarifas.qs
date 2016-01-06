
/** @class_declaration traducciones */
/////////////////////////////////////////////////////////////////
//// TRADUCCIONES ///////////////////////////////////////////////
class traducciones extends oficial
{
  function traducciones(context)
  {
    oficial(context);
  }
  function init()
  {
    return this.ctx.traducciones_init();
  }
  function traducirTarifa()
  {
    return this.ctx.traducciones_traducirTarifa();
  }
}
//// TRADUCCIONES ///////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

/** @class_definition traducciones */
/////////////////////////////////////////////////////////////////
//// TRADUCCIONES ///////////////////////////////////////////////
function traducciones_init()
{
  connect(this.child("pbnTraducir"), "clicked()", this, "iface.traducirTarifa");
}

function traducciones_traducirTarifa()
{
  return flfactppal.iface.pub_traducir("tarifas", "nombre", this.cursor().valueBuffer("codtarifa"));
}

//// TRADUCCIONES ///////////////////////////////////////////////
/////////////////////////////////////////////////////////////////