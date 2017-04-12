package shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import shop.entity.Sale;

public interface SaleDao extends JpaRepository<Sale, Integer>{

}
