package com.lnt.core.daos;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

/**
 * Abstract class BaseDAO
 */
public abstract class BaseDAO {
	private DataSource dataSource = null;
	private NamedParameterJdbcTemplate namedParamJdbcTemplate = null;
	protected JdbcTemplate jdbcTemplateObject = null;	
	
	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(final DataSource dataSource) {
		this.dataSource = dataSource;
		if (namedParamJdbcTemplate == null) {
			namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
		}
		if(jdbcTemplateObject==null) {
			jdbcTemplateObject = new JdbcTemplate(dataSource);
		}
	}

	public JdbcTemplate getJdbcTemplateObject() {
		return jdbcTemplateObject;
	}

	public void setJdbcTemplateObject(JdbcTemplate jdbcTemplateObject) {
		this.jdbcTemplateObject = jdbcTemplateObject;
		
		
	}

	public NamedParameterJdbcTemplate getNamedParamJdbcTemplate() {
		return namedParamJdbcTemplate;
	}

}