@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Test'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZSB_AG_I_TAB
  as select from zsb_ag_tab
{
    key id,
        name,
        description,
        custom_field,
        category,
        priority,
        email,
        valid_from,
        valid_to,
        @Semantics.quantity.unitOfMeasure: 'unit'
        quantity,
        unit,
        is_active,
        status,
        @Semantics.amount.currencyCode: 'currency'
        amount,
        currency,
        created_by,
        created_at,
        last_changed_by,
        last_changed_at
}
