package sk.it.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@RequestMapping("/hello") // add to ulr address
@Controller // controller
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

        //read the request parameter from the HTML form
        String name = request.getParameter("name"); // get Parameter name
        name = name.toUpperCase(); // work with parameter

        // create attribute  message with value
        model.addAttribute("message", "your name is " + name + "!");
        return "formData"; // return data into jsp file
    }

    @RequestMapping("/processFormThree") // vyzadujem parameter name
    public String processFormThree(@RequestParam("studentName") String name, Model model){

        // Spring automaticky zoberie parameter a priradi ho k name this is Magic
        name = name.toUpperCase();
        String result = "Yooo!  " + name;
        model.addAttribute("studentName", result);
        model.addAttribute("message", "this is message from processFormThree hello ");
        return "submit-form";
    }
}
