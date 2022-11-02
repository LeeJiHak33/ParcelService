package kr.ac.kopo.parcelservice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.parcelservice.model.Product;
import kr.ac.kopo.parcelservice.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	final String path = "product/";

	@Autowired
	ProductService service;

	@GetMapping("/add")
	public String add(Model model) {
		return path + "add";
	}

	@PostMapping("/add")
	public String add(Product item) {
		service.add(item);
		return "redirect:list";
	}

	@RequestMapping("/list")
	public String list(Model model) {
		List<Product> list = service.list();

		model.addAttribute("list", list);

		return path + "list";
	}

	@GetMapping("/update/{id}")
	public String update(@PathVariable int id, Model model) {
		Product item = service.item(id);

		model.addAttribute("item", item);

		return path + "update";
	}

	@PostMapping("/update/{id}")
	public String update(@PathVariable int id, Product item) {
		item.setId(id);
		service.update(item);
		return "redirect:../list";
	}

	@GetMapping("/delete/{id}")
	public String delete(@PathVariable int id, Model model) {
		service.delete(id);
		return "redirect:../list";
	}
}
