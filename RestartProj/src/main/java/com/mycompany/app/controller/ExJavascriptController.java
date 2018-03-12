package com.mycompany.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ExJavascriptController {

	@RequestMapping(value="/exTest", method=RequestMethod.GET)
	public String ExHtmlCss(Model model) {
		
		return "exJqueryHigh/exJqueryHigh09";
	}
}
