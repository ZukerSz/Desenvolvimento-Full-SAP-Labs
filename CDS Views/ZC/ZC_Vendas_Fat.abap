@AbapCatalog.sqlViewName: 'ZCVENDASFAT'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vendas Faturamento'
@Metadata.ignorePropagatedAnnotations: true
@OData.publish: true

define view ZC_Vendas_Fat
  as select from ZI_Vendas_Fat
{
  key Doc_Vendas,
  key SalesDocumentItem,
      Unidade,
      Regional,
      Local_Expedicao,
      Material,
      Quantidade,
      Data_Pedido,
      Hora,
      Cond_Pagamento,
      Data_Carregamento,
      case
        when Data_Faturamento is not null and Data_Faturamento <> '00000000' then Data_Faturamento
        else Data_Pedido
      end                                                                            as Data_Faturamento,
      case
        when Hora_Faturamento is not null and Hora_Faturamento <> '000000' then Hora_Faturamento
        else Hora
      end                                                                            as Hora_Faturamento,
      Data_Pedido                                                                    as Data_Filtro,
      Cod_Vendedor,
      Vendedor,
      CIF_FOB,
      Org_Vendas,
      Empresa,
      Faturado,
      ZPVS,
      ZMRP,
      Cliente,
      Grp_Preco_Cliente,
      Tarifa,
      @DefaultAggregation: #SUM
      cast(
        YTOT - (
          coalesce( YAFI, coalesce( YAFA, cast( 0 as abap.dec(23,2) ) ) )
          + Tarifa
          + YCST
        )
        as abap.dec(23,2)
      )                                                                              as Tarifa_Venda,
      YMIX,
      YTOT,
      Valor_Frete,
      Custo_Financeiro,
      Custo_Pedagio,
      Regiao,
      Bloq_Faturamento
}
