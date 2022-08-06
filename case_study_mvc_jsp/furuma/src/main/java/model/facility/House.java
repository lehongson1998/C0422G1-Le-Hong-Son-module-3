package model.facility;

public class House extends Facility{
    private String standardRoom;
    private String description;
    private int numberFloor;

    public House(int id, String name, int area, int maxPeople, RentType rentTypeId, String standardRoom, String description, int numberFloor) {
        super(id, name, area, maxPeople, rentTypeId);
        this.standardRoom = standardRoom;
        this.description = description;
        this.numberFloor = numberFloor;
    }

    public House(String name, int area, int maxPeople, RentType rentTypeId, String standardRoom, String description, int numberFloor) {
        super(name, area, maxPeople, rentTypeId);
        this.standardRoom = standardRoom;
        this.description = description;
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

    public int getNumberFloor() {
        return numberFloor;
    }

    public void setNumberFloor(int numberFloor) {
        this.numberFloor = numberFloor;
    }
}
