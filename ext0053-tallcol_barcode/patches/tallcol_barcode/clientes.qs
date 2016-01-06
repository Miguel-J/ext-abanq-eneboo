
/** @class_declaration barCode */
/////////////////////////////////////////////////////////////////
//// BARCODE ////////////////////////////////////////////////
class barCode extends oficial
{
  function barCode(context)
  {
    oficial(context);
  }
  function columnasVentas()
  {
    return this.ctx.barCode_columnasVentas();
  }
}
//// BARCODE ////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

/** @class_definition barCode */
/////////////////////////////////////////////////////////////////
//// BARCODE ////////////////////////////////////////////////
function barCode_columnasVentas()
{
  return ["codigo", "fecha", "referencia", "descripcion", "talla", "color", "pvpunitario", "cantidad", "pvpsindto", "pvptotal"];
}
//// BARCODE ////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////