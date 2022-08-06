package model.facility;

public abstract class Facility {
    private int id;
    private String name;
    private int area;
    private int maxPeople;
    private RentType rentTypeId;

    public Facility(int id, String name, int area, int maxPeople, RentType rentTypeId) {
        this.id = id;
        this.name = name;
        this.area = area;
        this.maxPeople = maxPeople;
        this.rentTypeId = rentTypeId;
    }

    public Facility(String name, int area, int maxPeople, RentType rentTypeId) {
        this.name = name;
        this.area = area;
        this.maxPeople = maxPeople;
        this.rentTypeId = rentTypeId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public int getMaxPeople() {
        return maxPeople;
    }

    public void setMaxPeople(int maxPeople) {
        this.maxPeople = maxPeople;
    }

    public RentType getRentTypeId() {
        return rentTypeId;
    }

    public void setRentTypeId(RentType rentTypeId) {
        this.rentTypeId = rentTypeId;
    }
}
