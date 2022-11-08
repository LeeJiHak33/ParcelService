package kr.ac.kopo.parcelservice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.parcelservice.model.Sender;
import kr.ac.kopo.parcelservice.service.SenderService;

@Controller
@RequestMapping("/sender")
public class SenderController {
	final String path = "sender/";

	@Autowired
	SenderService service;

	@RequestMapping("/list")
	public String list(Model model) {
		List<Sender> list = service.list();

		model.addAttribute("list", list);

		return path + "list";
	}

	@GetMapping("/add")
	public String add(Model model) {
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(Sender item) {
		service.add(item);
		
		return "redirect:list";
	}
	
	@GetMapping("/update/{id}")
	public String update(@PathVariable String id, Model model) {
		Sender item = service.item(id);
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@PostMapping("/update/{id}")
	public String update(@PathVariable String id, Sender item) {
		item.setId(id);
		service.update(item);
	
		return "redirect:../list";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable String id) {
		service.delete(id);

		return "redirect:../list";
	}
}
