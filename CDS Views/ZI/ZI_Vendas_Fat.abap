@AbapCatalog.sqlViewName: 'ZIVENDASFAT'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Vendas Faturamento'

define view ZI_Vendas_Fat
  as select from    vbap                  as SItem
    inner join      vbak                  as SHead   on SItem.vbeln = SHead.vbeln
    left outer join vbrp                  as OrdBill on  SItem.vbeln = OrdBill.aubel
                                                     and SItem.posnr = OrdBill.aupos
    left outer join vbep                  as Sched   on  SItem.vbeln = Sched.vbeln
                                                     and SItem.posnr = Sched.posnr
                                                     and Sched.etenr = '0001'
    left outer join vbkd                  as OrdHdr  on  SItem.vbeln = OrdHdr.vbeln
                                                     and OrdHdr.posnr = '000000'
    left outer join I_PaymentTermsText    as PayTxt  on  OrdHdr.zterm      = PayTxt.PaymentTerms
                                                     and PayTxt.Language = $session.system_language
    left outer join tvgrt                 as GrpTxt  on  SHead.vkgrp  = GrpTxt.vkgrp
                                                     and GrpTxt.spras = $session.system_language
    left outer join prcd_elements         as KZPVS   on  SHead.knumv = KZPVS.knumv
                                                     and SItem.posnr = KZPVS.kposn
                                                     and KZPVS.kschl = 'ZPVS'
    left outer join prcd_elements         as KZPVSH  on  SHead.knumv = KZPVSH.knumv
                                                     and KZPVSH.kposn = '000000'
                                                     and KZPVSH.kschl = 'ZPVS'
    left outer join prcd_elements         as KZMRP   on  SHead.knumv = KZMRP.knumv
                                                     and SItem.posnr = KZMRP.kposn
                                                     and KZMRP.kschl = 'ZMRP'
    left outer join prcd_elements         as KZMRPH  on  SHead.knumv = KZMRPH.knumv
                                                     and KZMRPH.kposn = '000000'
                                                     and KZMRPH.kschl = 'ZMRP'
    left outer join prcd_elements         as KYMIX   on  SHead.knumv = KYMIX.knumv
                                                     and SItem.posnr = KYMIX.kposn
                                                     and KYMIX.kschl = 'YMIX'
    left outer join prcd_elements         as KYMIXH  on  SHead.knumv = KYMIXH.knumv
                                                     and KYMIXH.kposn = '000000'
                                                     and KYMIXH.kschl = 'YMIX'
    left outer join prcd_elements         as KYTOT   on  SHead.knumv = KYTOT.knumv
                                                     and SItem.posnr = KYTOT.kposn
                                                     and KYTOT.kschl = 'YTOT'
    left outer join prcd_elements         as KYTOTH  on  SHead.knumv = KYTOTH.knumv
                                                     and KYTOTH.kposn = '000000'
                                                     and KYTOTH.kschl = 'YTOT'
    left outer join prcd_elements         as KYAFA   on  SHead.knumv = KYAFA.knumv
                                                     and SItem.posnr = KYAFA.kposn
                                                     and KYAFA.kschl = 'YAFA'
    left outer join prcd_elements         as KYAFAH  on  SHead.knumv = KYAFAH.knumv
                                                     and KYAFAH.kposn = '000000'
                                                     and KYAFAH.kschl = 'YAFA'
    left outer join prcd_elements         as KYAFI   on  SHead.knumv = KYAFI.knumv
                                                     and SItem.posnr = KYAFI.kposn
                                                     and KYAFI.kschl = 'YAFI'
    left outer join prcd_elements         as KYAFIH  on  SHead.knumv = KYAFIH.knumv
                                                     and KYAFIH.kposn = '000000'
                                                     and KYAFIH.kschl = 'YAFI'
    left outer join prcd_elements         as KYCST   on  SHead.knumv = KYCST.knumv
                                                     and SItem.posnr = KYCST.kposn
                                                     and KYCST.kschl = 'YCST'
    left outer join prcd_elements         as KYCSTH  on  SHead.knumv = KYCSTH.knumv
                                                     and KYCSTH.kposn = '000000'
                                                     and KYCSTH.kschl = 'YCST'
    left outer join prcd_elements         as KTarifa on  SHead.knumv = KTarifa.knumv
                                                     and SItem.posnr = KTarifa.kposn
                                                     and KTarifa.kschl = 'YDEC'
    left outer join prcd_elements         as KTarifaH on  SHead.knumv = KTarifaH.knumv
                                                     and KTarifaH.kposn = '000000'
                                                     and KTarifaH.kschl = 'YDEC'
    left outer join prcd_elements         as KZFRE   on  SHead.knumv = KZFRE.knumv
                                                     and SItem.posnr = KZFRE.kposn
                                                     and KZFRE.kschl = 'ZFRE'
    left outer join prcd_elements         as KZFREH  on  SHead.knumv = KZFREH.knumv
                                                     and KZFREH.kposn = '000000'
                                                     and KZFREH.kschl = 'ZFRE'
    left outer join prcd_elements         as KZADA   on  SHead.knumv = KZADA.knumv
                                                     and SItem.posnr = KZADA.kposn
                                                     and KZADA.kschl = 'ZADA'
    left outer join prcd_elements         as KZADAH  on  SHead.knumv = KZADAH.knumv
                                                     and KZADAH.kposn = '000000'
                                                     and KZADAH.kschl = 'ZADA'
    left outer join prcd_elements         as KZPED   on  SHead.knumv = KZPED.knumv
                                                     and SItem.posnr = KZPED.kposn
                                                     and KZPED.kschl = 'ZPED'
    left outer join prcd_elements         as KZPEDH  on  SHead.knumv = KZPEDH.knumv
                                                     and KZPEDH.kposn = '000000'
                                                     and KZPEDH.kschl = 'ZPED'
    left outer join I_BillingDocumentItem as BillItem on  SItem.vbeln = BillItem.SalesDocument
                                                     and SItem.posnr = BillItem.SalesDocumentItem
    left outer join I_BillingDocument     as BillHead on  BillItem.BillingDocument = BillHead.BillingDocument
                                                     and BillHead.CancelledBillingDocument = ''
    left outer join j_1bnflin             as NfLin   on BillItem.BillingDocument = NfLin.refkey
    left outer join j_1bnfdoc             as NfHdr   on NfLin.docnum = NfHdr.docnum
    left outer join vbrk                  as BHdr    on BillItem.BillingDocument = BHdr.vbeln
    left outer join kna1                             on SHead.kunnr = kna1.kunnr
    left outer join tvko                  as Tvko    on SHead.vkorg = Tvko.vkorg

{
  key SItem.vbeln                                                                  as Doc_Vendas,
  key SItem.posnr                                                                  as SalesDocumentItem,

      SItem.vrkme                                                                    as Unidade,
      SHead.vkbur                                                                    as Regional,
      SItem.vstel                                                                    as Local_Expedicao,
      cast(
        ltrim( SItem.matnr, '0' )
        as abap.char( 18 )
      )                                                                              as Material,

      @Semantics.quantity.unitOfMeasure: 'Unidade'
      @DefaultAggregation: #SUM
      SItem.kwmeng                                                                   as Quantidade,

      @Semantics.calendar.dayOfDate: true
      SHead.erdat                                                                    as Data_Pedido,
      SHead.erzet                                                                    as Hora,
      PayTxt.PaymentTermsName                                                        as Cond_Pagamento,
      Sched.lddat                                                                    as Data_Carregamento,

      @Semantics.calendar.dayOfDate: true
      cast(
        coalesce( NfHdr.credat, BillHead.BillingDocumentDate )
        as abap.dats
      )                                                                              as Data_Faturamento,
      coalesce( NfHdr.cretim, BHdr.erzet )                                           as Hora_Faturamento,
      SHead.vkgrp                                                                    as Cod_Vendedor,
      GrpTxt.bezei                                                                   as Vendedor,
      OrdHdr.inco1                                                                   as CIF_FOB,
      SHead.vkorg                                                                    as Org_Vendas,
      Tvko.bukrs                                                                     as Empresa,

      case
        when OrdBill.aubel is not null then 'SIM'
        else 'NAO'
      end                                                                            as Faturado,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KZPVS.kbetr, coalesce( KZPVS.kwert, coalesce( KZPVSH.kbetr, coalesce( KZPVSH.kwert, cast( 0 as abap.dec(23,2) ) ) ) ) )
        as abap.dec(23,2)
      )                                                                              as ZPVS,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KZMRP.kbetr, coalesce( KZMRP.kwert, coalesce( KZMRPH.kbetr, coalesce( KZMRPH.kwert, cast( 0 as abap.dec(23,2) ) ) ) ) )
        as abap.dec(23,2)
      )                                                                              as ZMRP,

      cast(
        ltrim( SHead.kunnr, '0' )
        as abap.char( 10 )
      )                                                                              as Cliente,
      cast(
        ltrim( OrdHdr.konda, '0' )
        as abap.char( 2 )
      )                                                                              as Grp_Preco_Cliente,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KTarifa.kbetr, coalesce( KTarifa.kwert, coalesce( KTarifaH.kbetr, coalesce( KTarifaH.kwert, cast( 0 as abap.dec(23,2) ) ) ) ) )
        as abap.dec(23,2)
      )                                                                              as Tarifa,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KYMIX.kbetr, coalesce( KYMIX.kwert, coalesce( KYMIXH.kbetr, coalesce( KYMIXH.kwert, cast( 0 as abap.dec(23,2) ) ) ) ) )
        as abap.dec(23,2)
      )                                                                              as YMIX,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KYTOT.kbetr, coalesce( KYTOT.kwert, coalesce( KYTOTH.kbetr, coalesce( KYTOTH.kwert, cast( 0 as abap.dec(23,2) ) ) ) ) )
        as abap.dec(23,2)
      )                                                                              as YTOT,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KYAFA.kbetr, coalesce( KYAFA.kwert, coalesce( KYAFAH.kbetr, KYAFAH.kwert ) ) )
        as abap.dec(23,2)
      )                                                                              as YAFA,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KYAFI.kbetr, coalesce( KYAFI.kwert, coalesce( KYAFIH.kbetr, KYAFIH.kwert ) ) )
        as abap.dec(23,2)
      )                                                                              as YAFI,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KYCST.kbetr, coalesce( KYCST.kwert, coalesce( KYCSTH.kbetr, coalesce( KYCSTH.kwert, cast( 0 as abap.dec(23,2) ) ) ) ) )
        as abap.dec(23,2)
      )                                                                              as YCST,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KZFRE.kbetr, coalesce( KZFRE.kwert, coalesce( KZFREH.kbetr, coalesce( KZFREH.kwert, cast( 0 as abap.dec(23,2) ) ) ) ) )
        as abap.dec(23,2)
      )                                                                              as Valor_Frete,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KZADA.kwert, coalesce( KZADA.kbetr, coalesce( KZADAH.kwert, coalesce( KZADAH.kbetr, cast( 0 as abap.dec(23,2) ) ) ) ) )
        as abap.dec(23,2)
      )                                                                              as Custo_Financeiro,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KZPED.kbetr, coalesce( KZPED.kwert, coalesce( KZPEDH.kbetr, coalesce( KZPEDH.kwert, cast( 0 as abap.dec(23,2) ) ) ) ) )
        as abap.dec(23,2)
      )                                                                              as Custo_Pedagio,

      kna1.regio                                                                     as Regiao,
      SHead.faksk                                                                    as Bloq_Faturamento

}
where
  SItem.abgru = ''
