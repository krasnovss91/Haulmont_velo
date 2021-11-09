-- $Id$
-- $Description:

alter table DF_RESOLUTION_CARD rename to DF_RESOLUTION_WAITING_COMPLETE;

alter table DF_RESOLUTION_WAITING_COMPLETE drop constraint FK_DF_RESOLUTION_CARD_CARD;
alter table DF_RESOLUTION_WAITING_COMPLETE drop constraint FK_DF_RESOLUTION_CARD_CARD_TO_RESOLUTION;

alter table DF_RESOLUTION_WAITING_COMPLETE add constraint FK_DF_RESOLUTION_WAITING_COMPLETE_CARD foreign key (CARD_ID) references WF_CARD(ID);
alter table DF_RESOLUTION_WAITING_COMPLETE add constraint FK_DF_RESOLUTION_WAITING_COMPLETE_CARD_TO_RESOLUTION foreign key (CARD_TO_RESOLUTION_ID) references WF_CARD(ID);