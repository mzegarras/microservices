package com.example.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

import com.example.dao.ProductDao;
import com.example.model.Product;

@Repository
public class ProductDaoImpl  implements ProductDao {

	
	@Autowired
	 JdbcTemplate jdbcTemplate;
	
	public class TestMapper implements RowMapper<Product> {
		@Override
		public Product mapRow(ResultSet rs, int arg1) throws SQLException {
			Product product = new Product();
			product.setId(rs.getInt("id"));
			product.setGuid(rs.getString("guid"));
			product.setName(rs.getString("name"));
			product.setCounter_lastupdate(rs.getInt("counterLastUpdate"));
			product.setDelete(rs.getInt("delete"));
			return product;
		}
	}
	@Override
	public List<Product> lstProduct() {
		SimpleJdbcCall usp_listAll;
		usp_listAll = new SimpleJdbcCall(jdbcTemplate.getDataSource())
				//.withCatalogName("carsofwirebd")
				.withProcedureName("usp_getProduct")
				.returningResultSet("results", new TestMapper())
				.withoutProcedureColumnMetaDataAccess();
		usp_listAll.compile();
		MapSqlParameterSource params = new MapSqlParameterSource();

		Map<String, Object> results = usp_listAll.execute(params);
		List<Product> listado = (List<Product>) results.get("results");

		return listado;
	}

}
