
/** @class_declaration incoterms */
/////////////////////////////////////////////////////////////////
//// INCOTERMS //////////////////////////////////////////////////
class incoterms extends oficial
{
  function incoterms(context)
  {
    oficial(context);
  }
  function datosPedido(curPresupuesto: FLSqlCursor): Boolean {
    return this.ctx.incoterms_datosPedido(curPresupuesto);
  }
}
//// INCOTERMS //////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

/** @class_definition incoterms */
/////////////////////////////////////////////////////////////////
//// INCOTERMS //////////////////////////////////////////////////
function incoterms_datosPedido(curPresupuesto)
{
  if (!this.iface.__datosPedido(curPresupuesto)) {
    return false;
  }
  with(this.iface.curPedido) {
    setValueBuffer("incoterm", curPresupuesto.valueBuffer("incoterm"));
  }

  return true;
}
//// INCOTERMS //////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////