@AbapCatalog.sqlViewName: 'ZCVFATCELUL'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Faturamento por Células (YSD0002)'
@Metadata.ignorePropagatedAnnotations: true
@OData.publish: true

define view ZC_Fat_Celulas
  as select from ZI_Fat_Celulas
{
  key Doc_Vendas,
  key SalesDocumentItem,
  key coalesce( BillingDocument, '' )                                              as BillingDocument,
  key coalesce( BillingDocumentItem, '' )                                          as BillingDocumentItem,
      Regional,
      Regional_Descricao,
      Celula,
      Vendedor,
      Criado_Por,
      Data_Pedido,
      Hora_Pedido,
      Cliente,
      Grupo_Clientes,
      Grupo_Preco,
      Razao_Social,
      Cod_Municipio,
      Localidade,
      Regiao,
      Micro,
      Meso,
      Codigo_Postal,
      Cod_Material,
      Qtde_L20,
      Qtd_Amb,
      Nr_NF,
      Fatura,
      case
        when Data_Faturamento is not null and Data_Faturamento <> '00000000' then Data_Faturamento
        else Data_Pedido
      end                                                                            as Data_Faturamento,
      case
        when Hora_Faturamento is not null then Hora_Faturamento
        else Hora_Pedido
      end                                                                            as Hora_Faturamento,
      Data_Pedido                                                                    as Data_Filtro,
      Tipo_Documento,
      Incoterm,
      Condicao_Pagamento,
      Org_Vendas,
      Empresa,
      Local_Expedicao,
      Bandeira,
      Status_Faturamento,
      Faturado,
      ZPV1,
      ZPVS,
      ZMRP,
      ZFRE,
      ZADA,
      YAFA,
      YAFI,
      YDEC,
      Faturamento,
      Valor_ICMS_ST,
      Valor_NF
}
