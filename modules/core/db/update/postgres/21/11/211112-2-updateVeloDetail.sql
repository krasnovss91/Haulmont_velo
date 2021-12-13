alter table VELO3_VELO_DETAIL rename column avaliable_for_order to avaliable_for_order__u73183 ;
alter table VELO3_VELO_DETAIL add column AVAILABLE_FOR_ORDER boolean ;
alter table VELO3_VELO_DETAIL alter column NAME set data type varchar(255) ;
