
/** @class_declaration artesG */
/////////////////////////////////////////////////////////////////
//// ARTES GRAFICAS /////////////////////////////////////////////
class artesG extends oficial
{
  function artesG(context)
  {
    oficial(context);
  }
  function init()
  {
    return this.ctx.artesG_init();
  }
}
//// ARTES GRAFICAS /////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

/** @class_definition artesG */
/////////////////////////////////////////////////////////////////
//// ARTES GR�FICAS /////////////////////////////////////////////
function artesG_init()
{
  debug(1);
  this.iface.__init();

  if (this.child("lblNoHayParametros")) {
    debug(2);
    this.child("lblNoHayParametros").close();
  }
}
//// ARTES GR�FICAS /////////////////////////////////////////////
/////////////////////////////////////////////////////////////////
