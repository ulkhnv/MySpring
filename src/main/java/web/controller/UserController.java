package web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import web.model.User;
import web.service.UserService;

@Controller
@RequestMapping("/")
public class UserController {

    @Autowired
    private UserService service;

    @RequestMapping(value = "users", method = RequestMethod.GET)
    public String getUserList(ModelMap model) {
        model.addAttribute("users",service.listUsers());
        return "userList";
    }

    @RequestMapping(value = "add" , method = RequestMethod.GET)
    public String getAddMenu(ModelMap model) {
        model.addAttribute("user", new User());
        return "add";
    }

    @RequestMapping(value = "add" , method = RequestMethod.POST)
    public String saveUser(@ModelAttribute("user") User user) {
        service.add(user);
        return "redirect:/users";
    }

    @RequestMapping(value = "delete" , method = RequestMethod.POST)
    public String deleteUser(@RequestParam(name = "id") Long id) {
        service.delete(id);
        return "redirect:/users";
    }

    @RequestMapping(value = "update" , method = RequestMethod.GET)
    public String getUpdateMenu(@RequestParam(name = "id") Long id, ModelMap model) {
        User user = service.getUserById(id);
        model.addAttribute("id",id);
        model.addAttribute("name",user.getName());
        model.addAttribute("surname",user.getSurname());
        model.addAttribute("user", new User());
        return "update";
    }

    @RequestMapping(value = "update" , method = RequestMethod.POST)
    public String updateUser(@RequestParam(name = "id") Long id,
                             @RequestParam(name = "name") String name,
                             @RequestParam(name = "surname") String surname) {
        service.update(new User(id,name,surname));
        return "redirect:/users";
    }



}
