package shop.dto;

import shop.entity.Brand;
import shop.dto.BrandDTO;
import shop.entity.Product;

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

    public static List<ProductDTO> productsToProductsDTO(List<Product> products) {

        List<ProductDTO> productDTOs = new ArrayList<ProductDTO>();

        for (Product product : products) {
            ProductDTO productDTO = new ProductDTO();

            productDTO.setName(product.getName());
            productDTO.setId(product.getId());
            productDTO.setImage(product.getImage());
            productDTO.setPrice(product.getPrice());
            productDTO.setModel(product.getModel().getNameOfModel());


            productDTOs.add(productDTO);

        }

        return productDTOs;

    }
}
