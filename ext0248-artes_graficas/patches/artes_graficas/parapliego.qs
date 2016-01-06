/***************************************************************************
                 parapliego.qs  -  description
                             -------------------
    begin                : mar abr 02 2008
    copyright            : (C) 2008 by InfoSiAL S.L.
    email                : mail@infosial.com
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

/** @file */

////////////////////////////////////////////////////////////////////////////
//// DECLARACION ///////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////

/** @class_declaration interna */
//////////////////////////////////////////////////////////////////
//// INTERNA /////////////////////////////////////////////////////
class interna
{
  var ctx: Object;
  function interna(context)
  {
    this.ctx = context;
  }
  function init()
  {
    return this.ctx.interna_init();
  }
}
//// INTERNA /////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////

/** @class_declaration oficial */
//////////////////////////////////////////////////////////////////
//// OFICIAL /////////////////////////////////////////////////////
class oficial extends interna
{
  function oficial(context)
  {
    interna(context);
  }
  function cargarDatos()
  {
    return this.ctx.oficial_cargarDatos();
  }
  function mostrarGrafico(nodoPliego: FLDomNode)
  {
    return this.ctx.oficial_mostrarGrafico(nodoPliego);
  }
}
//// OFICIAL /////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////

/** @class_declaration head */
/////////////////////////////////////////////////////////////////
//// DESARROLLO /////////////////////////////////////////////////
class head extends oficial
{
  function head(context)
  {
    oficial(context);
  }
}
//// DESARROLLO /////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

/** @class_declaration ifaceCtx */
/////////////////////////////////////////////////////////////////
//// INTERFACE  /////////////////////////////////////////////////
class ifaceCtx extends head
{
  function ifaceCtx(context)
  {
    head(context);
  }
}

const iface = new ifaceCtx(this);
//// INTERFACE  /////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

/** @class_definition interna */
////////////////////////////////////////////////////////////////////////////
//// DEFINICION ////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////
//// INTERNA /////////////////////////////////////////////////////
function interna_init()
{
  debug(1);
  this.iface.cargarDatos();

}
//// INTERNA /////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

/** @class_definition oficial */
//////////////////////////////////////////////////////////////////
//// OFICIAL /////////////////////////////////////////////////////
function oficial_cargarDatos()
{
  debug(2);
  var util: FLUtil = new FLUtil;
  var cursor: FLSqlCursor = this.cursor();

  var xmlParamPliego: FLDomDocument = new FLDomDocument;
  if (!xmlParamPliego.setContent(cursor.valueBuffer("xml"))) {
    MessageBox.warning(util.translate("scripts", "Error al cargar los datos del pliego"), MessageBox.Ok, MessageBox.NoButton);
    return;
  }
  debug(xmlParamPliego.toString(4));
  this.iface.mostrarGrafico(xmlParamPliego.firstChild());
}

function oficial_mostrarGrafico(nodoPliego: FLDomNode)
{
  debug(3);
  var cursor: FLSqlCursor = this.cursor();
  var dimPI: String = cursor.valueBuffer("anchopi") + "x" + cursor.valueBuffer("altopi");

  flfacturac.iface.pub_mostrarTrabajosPliego(this.child("lblDiagPliego"), nodoPliego, dimPI);
}
//// OFICIAL /////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

/** @class_definition head */
/////////////////////////////////////////////////////////////////
//// DESARROLLO /////////////////////////////////////////////////

//// DESARROLLO /////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////