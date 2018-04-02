package com.ccsn.api.model.util;

import javax.persistence.*;

/**
 * Created by Sabina on 3/12/2018.
 */
//@Entity
//@Table(name = "languages")
public class Language {

    public Language() {
    }

    //@Id
    //@GeneratedValue(strategy = GenerationType.AUTO)
    //@Column(name = "id", columnDefinition = "serial")
    private int id;

    //@Column(name = "code")
    private String code;

    //@Column(name = "name")
    private String name;

    //@Column(name = "target_code")
    private String targetCode;
}
