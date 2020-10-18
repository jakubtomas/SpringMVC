package sk.it.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("")
@Controller
public class HomeController {

    @RequestMapping("")
    public String printHello(Model model) {
        // create attribute message with parameter Hello spring
        model.addAttribute("message", "Hello spring send from /hello/showForm address ");

        //use parameter to welcome jsp
        return "welcome";
    }
}