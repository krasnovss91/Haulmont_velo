package com.company.velo3.web.ui;

import com.company.velo3.entity.VeloDetail;
import com.haulmont.cuba.gui.Notifications;
import com.haulmont.cuba.gui.app.security.group.GroupsDatasource;
import com.haulmont.cuba.gui.components.Action;
import com.haulmont.cuba.gui.components.Component;
import com.haulmont.cuba.gui.components.DialogAction;
import com.haulmont.cuba.gui.components.actions.AddAction;
import com.haulmont.cuba.gui.screen.StandardEditor;
import com.haulmont.cuba.gui.screen.Subscribe;
import com.haulmont.thesis.web.ui.task.TaskEditor;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.Map;

public class ExtTaskEditor extends TaskEditor {

    @Inject
    private GroupsDatasource veloDeiailsDs;

    @Named("veloDetailsTable.add")
    private AddAction addAction;

    @Inject
    private Notifications notifications;

    /*
    @Subscribe
    public void onBeforeCommitChanges(StandardEditor.BeforeCommitChangesEvent event){
        if (veloDeiailsDs.getItems().size() > 10){
            notifications.create().withCaption("Не более 10 строк!");
            event.preventCommit();
        }
    }
     */
    @Override
    public boolean validateAll() {
        boolean b = super.validateAll();
        if (b) {
            if (veloDeiailsDs.getItems().size() > 10) {
              showOptionDialog("Внимание!","Не более 10 строк!",MessageType.CONFIRMATION, new Action[]{
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