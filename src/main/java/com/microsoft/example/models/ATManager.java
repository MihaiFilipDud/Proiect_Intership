package com.microsoft.example.models;


import java.util.Date;

/**
 * Clasa de entitate ce modeleaza baza de date al unui manager de trafic aerian.
 */

public class ATManager extends User{


    private String company;

    public  ATManager(){}

    public ATManager(String name, Date dob, Account account, String company){
        super(name, dob, account);
        this.company = company;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof ATManager)) return false;
        if (!super.equals(o)) return false;
        ATManager atManager = (ATManager) o;
        return getCompany().equals(atManager.getCompany());
    }

    @Override
    public String toString() {
        return "ATManager{" +
                "company='" + company + '\'' +
                "} " + super.toString();
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }


}
