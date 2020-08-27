package com.microsoft.example.models;


import java.util.Date;

/**
 * Clasa de entitate ce modeleaza baza de date al unui zbor aerian.
 */

public class PlaneSchedule {


    private String code;


    private String airport;


    private String destination;


    private Date arrival;


    private Date departure;


    private String status;


    private Plane plane;

    public PlaneSchedule() {
        this.code = "";
    }

    public PlaneSchedule(String code, String airport, String destination, Date arrival, Date departure, String status, Plane plane) {
        this.code = code;
        this.airport = airport;
        this.arrival = arrival;
        this.destination = destination;
        this.departure = departure;
        this.status = status;
        this.plane = plane;
    }

    @Override
    public String toString() {
        return "PlaneSchedule{" +
                "code='" + code + '\'' +
                ", airport='" + airport + '\'' +
                ", destination='" + destination + '\'' +
                ", arrival=" + arrival +
                ", departure=" + departure +
                ", status='" + status + '\'' +
                ", plane=" + plane +
                '}';
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getAirport() {
        return airport;
    }

    public void setAirport(String airport) {
        this.airport = airport;
    }

    public Date getArrival() {
        return arrival;
    }

    public void setArrival(Date arrival) {
        this.arrival = arrival;
    }

    public Date getDeparture() {
        return departure;
    }

    public void setDeparture(Date departure) {
        this.departure = departure;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Plane getPlane() {
        return plane;
    }

    public void setPlane(Plane plane) {
        this.plane = plane;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }
}
