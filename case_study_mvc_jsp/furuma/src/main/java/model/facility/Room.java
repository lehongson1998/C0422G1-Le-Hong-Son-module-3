package model.facility;

public class Room extends Facility{
    private String facilityFree;

    public Room(int id, String name, int area, int maxPeople, RentType rentTypeId, String facilityFree) {
        super(id, name, area, maxPeople, rentTypeId);
        this.facilityFree = facilityFree;
    }

    public Room(String name, int area, int maxPeople, RentType rentTypeId) {
        super(name, area, maxPeople, rentTypeId);
    }

    public String getFacilityFree() {
        return facilityFree;
    }

    public void setFacilityFree(String facilityFree) {
        this.facilityFree = facilityFree;
    }
}
