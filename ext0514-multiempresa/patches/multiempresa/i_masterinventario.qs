
/** @class_declaration multi */
/////////////////////////////////////////////////////////////////
//// MULTIEMPRESA ///////////////////////////////////////////////
class multi extends oficial
{
  function multi(context)
  {
    oficial(context);
  }
  function obtenerParamInforme(): Array {
    return this.ctx.multi_obtenerParamInforme();
  }
}
//// MULTIEMPRESA ///////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

/** @class_definition multi */
/////////////////////////////////////////////////////////////////
//// MULTIEMPRESA ///////////////////////////////////////////////
function multi_obtenerParamInforme(): Array {
  var pI: Array = this.iface.__obtenerParamInforme();
  var idEmpresa: String = flfactppal.iface.pub_valorDefectoEmpresa("id");
  if (pI.whereFijo != "")
  {
    pI.whereFijo += " AND ";
  }
  pI.whereFijo += "empresa.id = " + idEmpresa;

  return pI;
}
//// MULTIEMPRESA ///////////////////////////////////////////////
/////////////////////////////////////////////////////////////////
