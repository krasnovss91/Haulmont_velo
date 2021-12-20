package com.company.velo3.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;

@Table(name = "VELO3_VELO_DETAIL")
@Entity(name = "velo3$VeloDetail")
@NamePattern("%s|name")
public class VeloDetail extends StandardEntity {
    private static final long serialVersionUID = -1819387409355705490L;

    @Column(name = "NAME")
    protected String name;

    @Column(name = "COST")
    protected Integer cost;

    @Column(name = "AVAILABLE_FOR_ORDER")
    protected Boolean availableForOrder;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "EX_TASK_ID")
    protected ExTask exTask;

    public ExTask getExTask() {
        return exTask;
    }

    public void setExTask(ExTask exTask) {
        this.exTask = exTask;
    }

    public Boolean getAvailableForOrder() {
        return availableForOrder;
    }

    public void setAvailableForOrder(Boolean availableForOrder) {
        this.availableForOrder = availableForOrder;
    }

    public Integer getCost() {
        return cost;
    }

    public void setCost(Integer cost) {
        this.cost = cost;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}