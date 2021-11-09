package com.company.velo3.web.ui.velodetail;

import com.haulmont.cuba.gui.screen.*;
import com.company.velo3.entity.VeloDetail;

@UiController("velo3$VeloDetail.browse")
@UiDescriptor("velo-detail-browse.xml")
@LookupComponent("table")
@LoadDataBeforeShow
public class VeloDetailBrowse extends MasterDetailScreen<VeloDetail> {
}