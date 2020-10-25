package sk.it.controller;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@RequestMapping("/customer")
@Controller
public class CustomerController {

    @InitBinder
    public void initBinder(WebDataBinder dataBinder){
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);

    }


    @RequestMapping("/showForm")
    public String printHello(Model theModel) {
        // create attribute message with parameter Hello spring
        theModel.addAttribute("customer", new Customer());

        //use parameter to welcome jsp
        return "customer-form";
    }

    @RequestMapping("/processForm")
    public String processForm( // vyzaduje hodnutu customer a stejto hodnoty sa vytvory theCustomer
                               @Valid @ModelAttribute("customer") Customer theCustomer,
                               BindingResult theBindingResult) {

        System.out.println("name customer " + theCustomer.getFirstName() + " last Name " + theCustomer.getLastName());

        if (theBindingResult.hasErrors()) {
            System.out.println("I have errors");
            return "customer-form";
        } else {
            System.out.println("I don't have errors");
            return "customer-confirmation";
        }

    }
}