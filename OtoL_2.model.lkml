connection:"midt_prod_connect"
include: "/Views/**/*.view"

explore: OD_Monthly_2{
from: od_monthly_bookings_agg

  join: OD_GDS{
   type: left_outer
   sql_on: ${OD_Monthly_2.GDS_ID}=${OD_GDS.GDS_ID} ;;
   sql_where: ${OD_GDS.GDS_TYPE_CODE}='00' ;;
   relationship: many_to_one
 }

  join: OD_Market{
   type: left_outer
   sql_on: ${OD_Monthly_2.Airport_Pair_Dir}=${OD_Market.AIRPP_ID} ;;
   sql_where: ${OD_Market.CLIENT_ID}=2 ;;
   relationship: many_to_one
 }
}
