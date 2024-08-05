package com.example;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class sumFunction extends SimpleTagSupport {
	private List<Item> items;
	private String property;

	public void setItems(List<Item> items) {
		this.items = items;
	}

	public void setProperty(String property) {
		this.property = property;
	}

	@Override
	public void doTag() throws JspException, IOException {
		double sum = 0;
		for (Item item : items) {
			sum += (Double) item.getProperty(property);
		}
		getJspContext().getOut().write(Double.toString(sum));
	}
}
