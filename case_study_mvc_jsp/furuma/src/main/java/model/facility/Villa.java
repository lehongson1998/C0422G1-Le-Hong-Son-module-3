package model.facility;

public class Villa extends Facility{
    private String standardRoom;
    private String description;
    private double poolArea;
    private int numberFloor;

    public Villa(int id, String name, int area, int maxPeople, RentType rentTypeId, String standardRoom, String description, double poolArea, int numberFloor) {
        super(id, name, area, maxPeople, rentTypeId);
        this.standardRoom = standardRoom;
        this.description = description;
        this.poolArea = poolArea;
        this.numberFloor = numberFloor;
    }

    public Villa(String name, int area, int maxPeople, RentType rentTypeId, String standardRoom, String description, double poolArea, int numberFloor) {
        super(name, area, maxPeople, rentTypeId);
        this.standardRoom = standardRoom;
        this.description = description;
        this.poolArea = poolArea;
        this.numberFloor = numberFloor;
    }

    public String getStandardRoom() {
        return standardRoom;
    }

    public void setStandardRoom(String standardRoom) {
        this.standardRoom = standardRoom;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPoolArea() {
        return poolArea;
    }

    public void setPoolArea(double poolArea) {
        this.poolArea = poolArea;
    }

    public int getNumberFloor() {
        return numberFloor;
    }

    public void setNumberFloor(int numberFloor) {
        this.numberFloor = numberFloor;
    }
}
