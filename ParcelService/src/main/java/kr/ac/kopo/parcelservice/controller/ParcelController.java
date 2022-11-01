package kr.ac.kopo.parcelservice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.parcelservice.model.Parcel;
import kr.ac.kopo.parcelservice.service.ParcelService;

@Controller
@RequestMapping("/parcel")
public class ParcelController {
	final String path = "parcel/";

	@Autowired
	ParcelService service;

	@RequestMapping(value = "/list")
	public String list(Model model) {
		List<Parcel> list = service.list();

		model.addAttribute("list", list);

		return path + "list";
	}

	@RequestMapping(value = "/delete")
	public String delete(int id) {
		service.delete(id);

		return "redirect:list";
	}
	
	@GetMapping("/add")
	public String add(Model model) {
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(Parcel item) {
		service.add(item);
		
		return "redirect:list";
	}
	
	@GetMapping("/update")
	public String update(int id, Model model) {
		Parcel item = service.item(id);
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@PostMapping("/update")
	public String update(Parcel item) {
		service.update(item);
		
		return "redirect:list";
	}

}
