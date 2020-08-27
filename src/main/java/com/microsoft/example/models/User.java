package com.microsoft.example.models;


import java.util.Date;
import java.util.Objects;
import java.util.Random;

/**
 * Clasa de entitate ce memoreaza datele generale ale utilizatorilor.
 */

public abstract class User {

    private final String id;

    private final String name;

    private final Date dob;

    private final Date joiningDate;

    private Account account;


    public User() {
        Random random = new Random();
        int rnd = random.nextInt(99999999);
        this.id = String.valueOf(rnd);
        this.name = "";
        this.dob = new Date();
        this.joiningDate = new Date();
    }

    public User(String name, Date dob, Account account) {
        Random random = new Random();
        int rnd = random.nextInt(99999999);
        this.id = String.valueOf(rnd);
        this.name = name;
        this.dob = dob;
        this.joiningDate =  new Date();
        this.account = account;
    }

    public User(String id, String name, Date dob, Account account) {
        this.id = id;
        this.name = name;
        this.dob = dob;
        this.joiningDate =  new Date();
        this.account = account;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof User)) return false;
        User user = (User) o;
        return getId().equals(user.getId()) &&
                getName().equals(user.getName()) &&
                getDob().equals(user.getDob()) &&
                getJoiningDate().equals(user.getJoiningDate()) &&
                getAccount().equals(user.getAccount());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId(), getName(), getDob(), getJoiningDate(), getAccount());
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", dob=" + dob +
                ", joiningDate=" + joiningDate +
                '}';
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Date getDob() {
        return dob;
    }

    public Date getJoiningDate() {
        return joiningDate;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }


}
