package com.company.velo3.entity;

import com.haulmont.chile.core.annotations.MetaProperty;
import com.haulmont.cuba.core.entity.annotation.Extends;
import com.haulmont.thesis.core.entity.Task;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@javax.persistence.DiscriminatorValue("1200")
@Table(name = "VELO3_EX_TASK")
@Entity(name = "velo3$ExTask")
@Extends(Task.class)
@PrimaryKeyJoinColumn(name = "TASK_ID", referencedColumnName = "ID")
public class ExTask extends Task {
    private static final long serialVersionUID = -33366648791230089L;

    @Column(name = "AMOUNT")
    protected Integer amount;

    @OneToMany(mappedBy = "exTask")
    protected List<VeloDetail> veloDetail;

    public void setVeloDetail(List<VeloDetail> veloDetail) {
        this.veloDetail = veloDetail;
    }

    public List<VeloDetail> getVeloDetail() {
        return veloDetail;
    }

    @MetaProperty
    public Integer getTotalCost(){
       // return amount * veloDetail.getCost();
        List<Integer> costs = new ArrayList<>();
        for (VeloDetail detail: veloDetail){
            costs.add(detail.getCost());
        }
        return amount * (costs.stream().mapToInt(i -> i).sum());
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }
}