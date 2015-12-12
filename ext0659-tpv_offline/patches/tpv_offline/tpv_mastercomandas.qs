
/** @class_declaration offline */
/////////////////////////////////////////////////////////////////
//// TPV OFF LINE////////////////////////////////////////////////
class offline extends oficial
{
  function offline(context)
  {
    oficial(context);
  }
  function init()
  {
    return this.ctx.offline_init();
  }
}
//// TPV OFF LINE////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

/** @class_definition offline */
/////////////////////////////////////////////////////////////////
//// TPV OFF LINE////////////////////////////////////////////////
function offline_init()
{
  this.iface.__init();
  if (flfact_tpv.iface.pub_valorDefectoTPV("bdoffline")) {
    var aCampos: Array = ["codigo", "sincronizada", "estado", "fecha", "hora", "codtpv_puntoventa", "codtpv_agente", "neto", "totaliva", "total", "pagado", "pendiente"];

    this.iface.tdbRecords.setOrderCols(aCampos);
    this.iface.tdbRecords.refresh();
  }
}
//// TPV OFF LINE////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

