package shop.dto;

/**
 * Created by Dema on 17.06.2017.
 */
public class ModelDTO {

    private int id;

    private String nameOfModel;

    public ModelDTO(String nameOfModel) {
        this.nameOfModel = nameOfModel;
    }

    public ModelDTO() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameOfModel() {
        return nameOfModel;
    }

    public void setNameOfModel(String nameOfModel) {
        this.nameOfModel = nameOfModel;
    }

    @Override
    public String toString() {
        return "ModelDTO{" +
                "id=" + id +
                ", nameOfModel='" + nameOfModel + '\'' +
                '}';
    }
}
