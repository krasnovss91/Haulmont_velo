create unique index IDX_SYS_CATEGORY_UNIQ_NAME_ENTITY_TYPE on SYS_CATEGORY (NAME, ENTITY_TYPE) where DELETE_TS is null;