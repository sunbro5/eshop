package cz.jan.product.repository;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Version;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name="PRODUCT")
public class ProductEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="ID")
    private Long id;

    @Column(name="NAME", nullable=false)
    private String name;

    @Column(name="QUANTITY", nullable=false)
    private Long quantity;

    @Column(name="PRICE_PER_UNIT", nullable=false, scale = 2)
    private BigDecimal pricePerUnit;

    @Column(name="ACTIVE", nullable=false)
    private Boolean active;

    @Version
    @Column(name="VERSION")
    private Long version;

}
