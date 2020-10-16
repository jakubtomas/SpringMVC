package sk.it.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
@Controller
public class FormController {

    @RequestMapping("/showForm")
    public String showForm(){
        return "form";
    }

    @RequestMapping("/processForm")
    public String processForm(){
        return "formData";
    }

    @RequestMapping("processFormVersionTwo")
    public String print(HttpServletRequest request, Model model){

        String name = request.getParameter("name"); // get Parameter name
        name = name.toUpperCase(); // work with parameter

        model.addAttribute("message", "your name is " + name + "!");
        return "formData"; // return data into jsp file
    }
}
