
/** @class_declaration puntostpv */
/////////////////////////////////////////////////////////////////
//// PUNTOS TPV /////////////////////////////////////////////////
class puntostpv extends ivaIncluido
{
  function puntostpv(context)
  {
    ivaIncluido(context);
  }
  function extension(nE)
  {
    return this.ctx.puntostpv_extension(nE);
  }
}
//// PUNTOS TPV /////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

/** @class_definition puntostpv */
/////////////////////////////////////////////////////////////////
//// PUNTOS TPV /////////////////////////////////////////////////
function puntostpv_extension(nE)
{
  var _i = this.iface;
  if (nE == "puntos_tpv") {
    return true;
  }
  return _i.__extension(nE);
}
//// PUNTOS TPV /////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////