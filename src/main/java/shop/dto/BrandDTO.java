package shop.dto;

import shop.entity.Brand;

/**
 * Created by Dema on 11.06.2017.
 */
public class BrandDTO {

    private int id;

    private String name;

    public BrandDTO() {
    }

    public BrandDTO(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return "BrandDTO{" +
                "name='" + name + '\'' +
                '}';
    }

    public static Brand convertToEntity(BrandDTO brandDTO){
        return new Brand(brandDTO.getName());
    }

    public static BrandDTO convertToDTO(Brand brand){
        return new BrandDTO(brand.getId(), brand.getName());
    }


}
