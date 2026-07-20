@AbapCatalog.sqlViewName: 'ZIFATCELUL'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Faturamento por Células'

define view ZI_Fat_Celulas
  as select from    vbap                  as SItem
    inner join      vbak                  as SHead   on SItem.vbeln = SHead.vbeln
    left outer join vbuk                  as OrdStat on SHead.vbeln = OrdStat.vbeln
    left outer join vbup                  as ItemStat on  SItem.vbeln = ItemStat.vbeln
                                                     and SItem.posnr = ItemStat.posnr
    left outer join I_SalesDocumentItem   as Sdi     on  SItem.vbeln = Sdi.SalesDocument
                                                     and SItem.posnr = Sdi.SalesDocumentItem
    left outer join vbrp                  as OrdBill on  SItem.vbeln = OrdBill.aubel
                                                     and SItem.posnr = OrdBill.aupos
    left outer join I_BillingDocumentItem as Item    on  SItem.vbeln = Item.SalesDocument
                                                     and SItem.posnr = Item.SalesDocumentItem
    left outer join I_BillingDocument     as Head    on  Item.BillingDocument          = Head.BillingDocument
                                                     and Head.CancelledBillingDocument = ''
    left outer join vbrk                  as BHdr    on Head.BillingDocument = BHdr.vbeln
    left outer join vbrp                  as BItem   on  Item.BillingDocument     = BItem.vbeln
                                                     and Item.BillingDocumentItem = BItem.posnr
    left outer join vbkd                  as OrdHdr  on  SItem.vbeln = OrdHdr.vbeln
                                                     and OrdHdr.posnr = '000000'
    left outer join vbkd                  as OrdItm  on  SItem.vbeln = OrdItm.vbeln
                                                     and SItem.posnr = OrdItm.posnr
    left outer join vbfa                  as DocFlow on  Item.BillingDocument     = DocFlow.vbeln
                                                     and Item.BillingDocumentItem = DocFlow.posnn
                                                     and DocFlow.vbtyp_n          = 'M'
                                                     and DocFlow.vbtyp_v          = 'J'
    left outer join lips                  as DlvItm  on  DocFlow.vbelv = DlvItm.vbeln
                                                     and DocFlow.posnv = DlvItm.posnr
    left outer join j_1bnflin             as NfLin   on Item.BillingDocument = NfLin.refkey
    left outer join j_1bnfdoc             as NfHdr   on NfLin.docnum = NfHdr.docnum
    left outer join tvgrt                 as CelTxt  on  SHead.vkgrp  = CelTxt.vkgrp
                                                     and CelTxt.spras = $session.system_language
    left outer join tvkbt                 as RegTxt  on  SHead.vkbur  = RegTxt.vkbur
                                                     and RegTxt.spras = $session.system_language
    left outer join prcd_elements            as KZPV1   on  SHead.knumv = KZPV1.knumv
                                                     and SItem.posnr = KZPV1.kposn
                                                     and KZPV1.kschl = 'ZPV1'
    left outer join prcd_elements            as KZPV1H  on  SHead.knumv = KZPV1H.knumv
                                                     and KZPV1H.kposn = '000000'
                                                     and KZPV1H.kschl = 'ZPV1'
    left outer join prcd_elements            as KZPVS   on  SHead.knumv = KZPVS.knumv
                                                     and SItem.posnr = KZPVS.kposn
                                                     and KZPVS.kschl = 'ZPVS'
    left outer join prcd_elements            as KZPVSH  on  SHead.knumv = KZPVSH.knumv
                                                     and KZPVSH.kposn = '000000'
                                                     and KZPVSH.kschl = 'ZPVS'
    left outer join prcd_elements            as KZMRP   on  SHead.knumv = KZMRP.knumv
                                                     and SItem.posnr = KZMRP.kposn
                                                     and KZMRP.kschl = 'ZMRP'
    left outer join prcd_elements            as KZMRPH  on  SHead.knumv = KZMRPH.knumv
                                                     and KZMRPH.kposn = '000000'
                                                     and KZMRPH.kschl = 'ZMRP'
    left outer join prcd_elements            as KZADA   on  SHead.knumv = KZADA.knumv
                                                     and SItem.posnr = KZADA.kposn
                                                     and KZADA.kschl = 'ZADA'
    left outer join prcd_elements            as KZADAH  on  SHead.knumv = KZADAH.knumv
                                                     and KZADAH.kposn = '000000'
                                                     and KZADAH.kschl = 'ZADA'
    left outer join prcd_elements            as KZFRE   on  SHead.knumv = KZFRE.knumv
                                                     and SItem.posnr = KZFRE.kposn
                                                     and KZFRE.kschl = 'ZFRE'
    left outer join prcd_elements            as KZFREH  on  SHead.knumv = KZFREH.knumv
                                                     and KZFREH.kposn = '000000'
                                                     and KZFREH.kschl = 'ZFRE'
    left outer join prcd_elements            as KYAFA   on  SHead.knumv = KYAFA.knumv
                                                     and SItem.posnr = KYAFA.kposn
                                                     and KYAFA.kschl = 'YAFA'
    left outer join prcd_elements            as KYAFAH  on  SHead.knumv = KYAFAH.knumv
                                                     and KYAFAH.kposn = '000000'
                                                     and KYAFAH.kschl = 'YAFA'
    left outer join prcd_elements            as KYAFI   on  SHead.knumv = KYAFI.knumv
                                                     and SItem.posnr = KYAFI.kposn
                                                     and KYAFI.kschl = 'YAFI'
    left outer join prcd_elements            as KYAFIH  on  SHead.knumv = KYAFIH.knumv
                                                     and KYAFIH.kposn = '000000'
                                                     and KYAFIH.kschl = 'YAFI'
    left outer join prcd_elements            as KYDEC   on  SHead.knumv = KYDEC.knumv
                                                     and SItem.posnr = KYDEC.kposn
                                                     and KYDEC.kschl = 'YDEC'
    left outer join prcd_elements            as KYDECH  on  SHead.knumv = KYDECH.knumv
                                                     and KYDECH.kposn = '000000'
                                                     and KYDECH.kschl = 'YDEC'
    left outer join prcd_elements            as KICMI   on  BHdr.knumv               = KICMI.knumv
                                                     and Item.BillingDocumentItem = KICMI.kposn
                                                     and KICMI.kschl              = 'ICMI'
    left outer join prcd_elements            as KICS3   on  BHdr.knumv               = KICS3.knumv
                                                     and Item.BillingDocumentItem = KICS3.kposn
                                                     and KICS3.kschl              = 'ICS3'
    left outer join kna1                             on kna1.kunnr = coalesce( Head.SoldToParty, SHead.kunnr )
    left outer join knvv                  as KnvvSal on  KnvvSal.kunnr = coalesce( Head.SoldToParty, SHead.kunnr )
                                                     and KnvvSal.vkorg = coalesce( Head.SalesOrganization, SHead.vkorg )
                                                     and KnvvSal.vtweg = coalesce( Head.DistributionChannel, SHead.vtweg )
                                                     and KnvvSal.spart = coalesce( Head.Division, SHead.spart )
    left outer join I_CustomerSalesArea   as CustSal on  CustSal.Customer           = coalesce( Head.SoldToParty, SHead.kunnr )
                                                     and CustSal.SalesOrganization   = coalesce( Head.SalesOrganization, SHead.vkorg )
                                                     and CustSal.DistributionChannel = coalesce( Head.DistributionChannel, SHead.vtweg )
                                                     and CustSal.Division            = coalesce( Head.Division, SHead.spart )
    left outer join tvko                  as Tvko    on SHead.vkorg = Tvko.vkorg

{
  key SItem.vbeln                                                                  as Doc_Vendas,
  key SItem.posnr                                                                  as SalesDocumentItem,
  key Item.BillingDocument,
  key Item.BillingDocumentItem,

      SHead.vkbur                                                                    as Regional,
      RegTxt.bezei                                                                   as Regional_Descricao,
      SHead.vkgrp                                                                    as Celula,
      CelTxt.bezei                                                                   as Vendedor,
      SHead.ernam                                                                    as Criado_Por,
      SHead.erdat                                                                    as Data_Pedido,
      SHead.erzet                                                                    as Hora_Pedido,
      cast(
        ltrim( coalesce( Head.SoldToParty, SHead.kunnr ), '0' )
        as abap.char( 10 )
      )                                                                              as Cliente,
      CustSal.CustomerGroup                                                          as Grupo_Clientes,
      OrdItm.konda                                                                   as Grupo_Preco,
      kna1.name1                                                                     as Razao_Social,
      kna1.cityc                                                                     as Cod_Municipio,
      kna1.ort01                                                                     as Localidade,
      kna1.regio                                                                     as Regiao,
      kna1.lzone                                                                     as Micro,
      KnvvSal.bzirk                                                                  as Meso,
      kna1.pstlz                                                                     as Codigo_Postal,
      cast(
        ltrim( coalesce( Item.Material, SItem.matnr ), '0' )
        as abap.char( 18 )
      )                                                                              as Cod_Material,

      @DefaultAggregation: #SUM
      coalesce( Item.BillingQuantity, SItem.kwmeng )                                 as Qtde_L20,

      @DefaultAggregation: #SUM
      DlvItm.lgmng                                                                   as Qtd_Amb,

      coalesce( BHdr.xblnr, NfHdr.nfenum )                                           as Nr_NF,
      Item.BillingDocument                                                           as Fatura,
      NfHdr.credat                                                                   as Data_Faturamento,
      NfHdr.cretim                                                                   as Hora_Faturamento,
      Head.BillingDocumentType                                                       as Tipo_Documento,
      OrdHdr.inco1                                                                   as Incoterm,
      OrdHdr.zterm                                                                   as Condicao_Pagamento,
      coalesce( BHdr.vkorg, coalesce( Head.SalesOrganization, SHead.vkorg ) )         as Org_Vendas,
      coalesce( Head.CompanyCode, Tvko.bukrs )                                       as Empresa,
      coalesce( BItem.vstel, SItem.vstel )                                           as Local_Expedicao,
      kna1.katr1                                                                     as Bandeira,

      case ItemStat.fksta
        when 'A' then 'A'
        when 'B' then 'B'
        when 'C' then 'C'
        else
          case Sdi.OrderRelatedBillingStatus
            when 'A' then 'A'
            when 'B' then 'B'
            when 'C' then 'C'
            else
              case OrdStat.fkstk
                when 'A' then 'A'
                when 'B' then 'B'
                when 'C' then 'C'
                else
                  case
                    when Item.BillingDocument is not null then 'C'
                    when OrdBill.aubel is not null then 'C'
                    else 'A'
                  end
              end
          end
      end                                                                            as Status_Faturamento,

      case ItemStat.fksta
        when 'B' then 'PARCIAL'
        when 'C' then 'SIM'
        else
          case Sdi.OrderRelatedBillingStatus
            when 'B' then 'PARCIAL'
            when 'C' then 'SIM'
            else
              case OrdStat.fkstk
                when 'B' then 'PARCIAL'
                when 'C' then 'SIM'
                else
                  case
                    when Item.BillingDocument is not null then 'SIM'
                    when OrdBill.aubel is not null then 'SIM'
                    else 'NAO'
                  end
              end
          end
      end                                                                            as Faturado,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KZPV1.kbetr, coalesce( KZPV1.kwert, coalesce( KZPV1H.kbetr, coalesce( KZPV1H.kwert, cast( 0 as abap.dec(23,2) ) ) ) ) )
        as abap.dec(23,2)
      )                                                                              as ZPV1,

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

      @DefaultAggregation: #SUM
      cast(
        coalesce( KZFRE.kbetr, coalesce( KZFRE.kwert, coalesce( KZFREH.kbetr, coalesce( KZFREH.kwert, cast( 0 as abap.dec(23,2) ) ) ) ) )
        as abap.dec(23,2)
      )                                                                              as ZFRE,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KZADA.kwert, coalesce( KZADA.kbetr, coalesce( KZADAH.kwert, coalesce( KZADAH.kbetr, cast( 0 as abap.dec(23,2) ) ) ) ) )
        as abap.dec(23,2)
      )                                                                              as ZADA,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KYAFA.kbetr, coalesce( KYAFA.kwert, coalesce( KYAFAH.kbetr, coalesce( KYAFAH.kwert, cast( 0 as abap.dec(23,2) ) ) ) ) )
        as abap.dec(23,2)
      )                                                                              as YAFA,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KYAFI.kbetr, coalesce( KYAFI.kwert, coalesce( KYAFIH.kbetr, coalesce( KYAFIH.kwert, cast( 0 as abap.dec(23,2) ) ) ) ) )
        as abap.dec(23,2)
      )                                                                              as YAFI,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KYDEC.kbetr, coalesce( KYDEC.kwert, coalesce( KYDECH.kbetr, coalesce( KYDECH.kwert, cast( 0 as abap.dec(23,2) ) ) ) ) )
        as abap.dec(23,2)
      )                                                                              as YDEC,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KICMI.kwert, coalesce( KICMI.kbetr, cast( 0 as abap.dec(23,2) ) ) )
        as abap.dec(23,2)
      )                                                                              as Faturamento,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KICS3.kwert, coalesce( KICS3.kbetr, cast( 0 as abap.dec(23,2) ) ) )
        as abap.dec(23,2)
      )                                                                              as Valor_ICMS_ST,

      @DefaultAggregation: #SUM
      cast(
        coalesce( KICMI.kwert, coalesce( KICMI.kbetr, cast( 0 as abap.dec(23,2) ) ) )
        + coalesce( KICS3.kwert, coalesce( KICS3.kbetr, cast( 0 as abap.dec(23,2) ) ) )
        as abap.dec(23,2)
      )                                                                              as Valor_NF

}
where
       (
            SHead.vkbur is null
         or SHead.vkbur <> 'SERV'
       )
  and  (
            Item.BillingDocument is null
         or (
                  Head.BillingDocument is not null
              and (
                       BHdr.fksto is null
                    or BHdr.fksto = ''
                  )
              and  Head.BillingDocumentType <> 'YVOC'
              and  Head.BillingDocumentType <> 'YVOE'
              and  Head.BillingDocumentType <> 'S1'
            )
       )
