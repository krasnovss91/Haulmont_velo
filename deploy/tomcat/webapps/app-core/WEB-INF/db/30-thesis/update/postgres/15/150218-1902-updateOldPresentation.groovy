/*
 * Copyright (c) 2019 LTD Haulmont Samara. All Rights Reserved.
 * Haulmont Samara proprietary and confidential.
 * Use is subject to license terms.
 */

import com.haulmont.bali.util.Dom4j
import com.haulmont.cuba.core.EntityManager
import com.haulmont.cuba.core.Persistence
import com.haulmont.cuba.core.Transaction
import com.haulmont.cuba.core.global.AppBeans
import com.haulmont.cuba.security.entity.Presentation
import org.apache.commons.collections4.CollectionUtils
import org.apache.commons.lang.StringUtils
import org.dom4j.Document
import org.dom4j.DocumentHelper
import org.dom4j.Element

/**
 *
 * @author kovalenko
 * @version $Id$
 */

postUpdate.add({
    Transaction tx = AppBeans.get(Persistence.class).createTransaction();
    EntityManager em = AppBeans.get(Persistence.class).getEntityManager();
    List<Presentation> presentations;
    List listComponents=new ArrayList();
    listComponents.add('[df$SimpleDoc.browse].cardsTable');
    listComponents.add('[tm$Task.browse].cardsTable');
    listComponents.add('[df$Contract.browse].cardsTable');
    try {
        presentations = em.createQuery("select p from sec\$Presentation p where p.componentId in :listComponents").setParameter("listComponents",listComponents).getResultList();
        if(CollectionUtils.isNotEmpty(presentations)) {
            for (Presentation presentation:presentations){
                Document doc;
                if (!StringUtils.isEmpty(presentation.getXml())) {
                    doc = Dom4j.readDocument(presentation.getXml());
                } else {
                    doc = DocumentHelper.createDocument();
                    doc.setRootElement(doc.addElement("presentation"));
                }
                Element root= doc.getRootElement();
                final Element columnsElem = root.element("columns");

                boolean haveProject=false;
                for (Element colElem : Dom4j.elements(columnsElem, "columns")) {
                    if("project".equals(colElem.attributeValue("id"))){
                        haveProject=true;
                        break;
                    }
                }
                if(!haveProject){
                    Element projectNode=DocumentHelper.createElement("columns")
                    projectNode.addAttribute("id","project")
                    projectNode.addAttribute("visible","false")
                    columnsElem.add(projectNode);
                }
                presentation.setXml(Dom4j.writeDocument(doc,false))
                em.merge(presentation)
            }
        }
        tx.commit();
    } finally {
        tx.end();
    }
})