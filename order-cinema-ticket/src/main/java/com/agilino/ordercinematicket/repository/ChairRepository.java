package com.agilino.ordercinematicket.repository;

import com.agilino.ordercinematicket.model.Chair;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface ChairRepository extends JpaRepository<Chair, UUID> {


    @Query(value =
            "select c from Chair c " +
            "inner join Department d on d.id = c.department.id and c.department.id = :departmentId " +
            "inner join Time t on t.department.id  =c.department.id  and t.id =:timeId"
          )
    List<Chair> findByDepartmentId(UUID departmentId, UUID timeId);
}
