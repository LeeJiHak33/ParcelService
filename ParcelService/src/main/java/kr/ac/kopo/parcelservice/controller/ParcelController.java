package kr.ac.kopo.parcelservice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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

	@RequestMapping("/list")
	public String list(Model model) {
		List<Parcel> list = service.list();

		model.addAttribute("list", list);

		return path + "list";
	}

	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable int id) {
		service.delete(id);

		return "redirect:../list";
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
	
	@GetMapping("/update/{id}")
	public String update(@PathVariable int id, Model model) {
		Parcel item = service.item(id);
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@PostMapping("/update/{id}")
	public String update(@PathVariable int id, Parcel item) {
		item.setId(id);
		service.update(item);
		
		return "redirect:../list";
	}

}
