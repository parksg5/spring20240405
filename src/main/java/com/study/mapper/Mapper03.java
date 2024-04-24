package com.study.mapper;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean258Employees;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface Mapper03 {

    @Delete("""
            DELETE FROM Customers
            WHERE CustomerID = 1
            """)
    int deleteOneCustomer();

    @Delete("""
            DELETE FROM Customers
            WHERE CustomerID = #{id}
            """)
    int deleteOneCustomerById(int id);

    @Delete("""
            DELETE FROM Employees
            WHERE EmployeeID = #{eid}
            """)
    int deleteOneEmployeeById(int eid);


    @Insert("""
            INSERT INTO Customers
            (CustomerName, ContactName, Address, City, PostalCode, Country)
            VALUES 
            (#{name},#{contactName},#{address},#{city},#{postalCode},#{country})
            """)
    int insertCustomer(MyBean254Customer customer);


    @Insert("""
            INSERT INTO Employees
            (LastName, FirstName, BirthDate, Photo, Notes)
            VALUES 
            (#{lastName},#{firstName},#{birthDate},#{photo},#{notes})
            """)
    int insertEmployee(MyBean258Employees employee);


    @Update("""
            UPDATE Employees
            SET
            LastName = #{lastName},
            FirstName = #{firstName},
            BirthDate = #{birthDate},
            Photo = #{photo},
            Notes = #{notes}
            WHERE EmployeeID = #{id}
            """)
    int updateEmployee(MyBean258Employees employee);

    @Update("""
            UPDATE Customers
            SET
                CustomerName = #{name},
                ContactName = #{contactName},
                Address = #{address},
                City = #{city},
                PostalCode = #{postalCode},
                Country = #{country}
            WHERE CustomerID = #{id}
            """)
    int updateCustomer(MyBean254Customer customer);
}
