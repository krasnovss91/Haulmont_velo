package com.company.velo3.entity;

import com.haulmont.chile.core.annotations.MetaProperty;
import com.haulmont.cuba.core.entity.annotation.Extends;
import com.haulmont.thesis.core.entity.Task;

import javax.persistence.*;

@javax.persistence.DiscriminatorValue("1200")
@Table(name = "VELO3_EX_TASK")
@Entity(name = "velo3$ExTask")
@Extends(Task.class)
@PrimaryKeyJoinColumn(name = "TASK_ID", referencedColumnName = "ID")
public class ExTask extends Task {
    private static final long serialVersionUID = -33366648791230089L;

    @Column(name = "AMOUNT")
    protected Integer amount;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "VELO_DETAIL_ID")
    protected VeloDetail veloDetail;

    @MetaProperty
    public Integer getTotalCost(){return amount * veloDetail.getCost();}

    public VeloDetail getVeloDetail() {
        return veloDetail;
    }

    public void setVeloDetail(VeloDetail veloDetail) {
        this.veloDetail = veloDetail;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }
}