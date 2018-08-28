package com.value.amazon;

import com.entity.amazon.Ec2InstanceEntity;
import com.value.BaseValue;

import java.util.ArrayList;
import java.util.List;

public class Ec2InstanceValue extends BaseValue {
    @Override
    public List<Ec2InstanceEntity> getValues() {
        ArrayList instances = new ArrayList();
        Ec2InstanceEntity ec21 = new Ec2InstanceEntity();
        ec21.setType("t2.nano");
        ec21.setDescription("1 CPU / 0.5 GB / EBS");
        Ec2InstanceEntity ec22 = new Ec2InstanceEntity();
        ec21.setType("t2.micro");
        ec21.setDescription("1 CPU / 1 GB / EBS");
        instances.add(ec21);
        instances.add(ec22);

        return instances;
    }
}
