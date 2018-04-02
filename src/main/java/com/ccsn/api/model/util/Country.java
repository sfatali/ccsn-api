package com.ccsn.api.model.util;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Sabina on 3/12/2018.
 */
//@Entity
//@Table(name = "countries")
public class Country {

    public Country() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(columnDefinition = "serial")
    private int id;

    @Column
    private String code;

    @Column
    private String name;

    @Column(name = "language_code")
    private Language language;
}
