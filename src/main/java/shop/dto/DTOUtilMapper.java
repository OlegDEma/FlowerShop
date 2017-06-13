package shop.dto;

import shop.entity.Brand;
import shop.dto.BrandDTO;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Dema on 11.06.2017.
 */
public class DTOUtilMapper {

    public static List<BrandDTO> brandsToBrandsDTO(List<Brand> brands) {

        List<BrandDTO> brandDTOs = new ArrayList<BrandDTO>();

        for (Brand brand : brands) {
            BrandDTO brandDTO = new BrandDTO();

            brandDTO.setName(brand.getName());
            brandDTO.setId(brand.getId());


            brandDTOs.add(brandDTO);

        }

        return brandDTOs;

    }
}
