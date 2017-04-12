package shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import shop.entity.Brand;

public interface BrandDao extends JpaRepository<Brand, Integer>{

}
