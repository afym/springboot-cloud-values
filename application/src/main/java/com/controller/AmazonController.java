package com.controller;

import com.entity.amazon.Ec2InstanceEntity;
import com.value.amazon.Ec2InstanceValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
@RestController
public class AmazonController {
    @RequestMapping("/aws/instances")
    public List<Ec2InstanceEntity> get() {
        return new Ec2InstanceValue().getValues();
    }
}