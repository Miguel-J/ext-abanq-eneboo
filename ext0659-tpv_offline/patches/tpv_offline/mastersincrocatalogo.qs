
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
  var util: FLUtil = new FLUtil;
  this.iface.__init();

  if (!flfact_tpv.iface.pub_valorDefectoTPV("bdoffline")) {
    MessageBox.warning(util.translate("scripts", "El formulario de sincronizaciones de cat�logo s�lo tiene sentido cuando la base de datos local es una BD offline"), MessageBox.Ok, MessageBox.NoButton);
    this.close();
  }
}
//// TPV OFF LINE////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////
