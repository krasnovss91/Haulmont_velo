/*
 * Copyright (c) 2021 LTD Haulmont Samara. All Rights Reserved.
 * Haulmont Samara proprietary and confidential.
 * Use is subject to license terms.
 */

package com.company.velo3.web.ui.velodetail;

import com.company.velo3.entity.VeloDetail;
import com.haulmont.cuba.gui.components.Action;
import com.haulmont.cuba.gui.components.Component;
import com.haulmont.cuba.gui.components.DialogAction;
import com.haulmont.cuba.gui.data.GroupDatasource;
import com.haulmont.thesis.web.ui.task.TaskEditor;

import javax.inject.Inject;
import java.util.UUID;

public class ExtTaskEditor extends TaskEditor  {
    @Inject
    private GroupDatasource<VeloDetail, UUID> veloDetailsDs;

    @Override
    public boolean validateAll() {
        boolean b = super.validateAll();
        if (b) {
            if (veloDetailsDs.getItems().size() > 10) {
                showOptionDialog("Внимание!","У вас более 10 строк! Сохранить или отменить?",MessageType.CONFIRMATION, new Action[]{
                        new DialogAction(DialogAction.Type.YES,true){
                            @Override
                            public void actionPerform(Component component){
                                close(COMMIT_ACTION_ID);
                            }
                        },
                        new DialogAction(DialogAction.Type.NO){
                            @Override
                            public void actionPerform(Component component){

                            }
                        }
                });
                return false;
            }
        }
        return b;
    }


}