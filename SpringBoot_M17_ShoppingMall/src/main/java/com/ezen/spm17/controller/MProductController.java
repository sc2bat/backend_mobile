package com.ezen.spm17.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ezen.spm17.service.productService;

@Controller
public class MProductController {
	private ModelAndView mav;
	private HashMap<String, Object> paramMap;
	
	@Autowired
	productService ps;
	
	
	@RequestMapping("/mobilemain")
	public ModelAndView main(HttpServletRequest request, Model model) {
		mav = new ModelAndView();
		paramMap = new HashMap<String, Object>();
		paramMap.put("ref_cursor_best", null);
		paramMap.put("ref_cursor_new", null);
		
		ps.getBestNewProduct(paramMap);
		
		ArrayList<HashMap<String, Object>> bestList = (ArrayList<HashMap<String, Object>>)paramMap.get("ref_cursor_best");
		ArrayList<HashMap<String, Object>> newList = (ArrayList<HashMap<String, Object>>)paramMap.get("ref_cursor_new");
		
		mav.addObject("bestProductList", bestList);
		mav.addObject("newProductList", newList);
		
		mav.setViewName("mobile/mobile_main");
		
		return mav;
	}
}
