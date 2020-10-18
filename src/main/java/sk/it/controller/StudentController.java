package sk.it.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {

    @RequestMapping("/showForm")
    public String showForm(Model theModel){

        // create new a student object
        Student theStudent = new Student();

        // add student object to the model
        theModel.addAttribute("student", theStudent);
        return "student-form";
    }


    @RequestMapping("/processForm") // model student data Student Object
    public String processForm(@ModelAttribute("student") Student theStudent){

        // model student je object Student a mama pristup v student-confirmation

        System.out.println("the Student " + theStudent.getFirstName() + " second name "
                + theStudent.getLastName());
        return "student-confirmation";
    }

}
