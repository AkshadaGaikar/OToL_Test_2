connection: cert
# include all views in this project
include: midt_connection_cert
include:  

explore: data_intelligence_ar{

  join: billing{
    type: left_outer
    sql_on: sales_order.sales_document_vbeln=billing.sales_document_aubel
    relationship: one_to_many
 }
} 