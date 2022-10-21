package com.case_study.controlleer;

import com.case_study.dto.customer.CustomerDto;
import com.case_study.model.customer.Customer;
import com.case_study.model.customer.TypeCustomer;
import com.case_study.service.ICustomerService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.Optional;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    private ICustomerService iCustomerService;

    @GetMapping("")
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView("customer/list");
        return modelAndView;
    }

    @GetMapping("/list")
    public ModelAndView listFacility(@PageableDefault(size = 5) Pageable pageable,
                                     @RequestParam Optional<String> name,
                                     @RequestParam Optional<String> typeCustomer) {
        ModelAndView modelAndView = new ModelAndView("customer/list");
        String keyName = name.orElse("");
        String keyTypeCustomer = typeCustomer.orElse("");
        modelAndView.addObject("customerPage", iCustomerService.findAllCustomer(keyName, keyTypeCustomer, pageable));
        modelAndView.addObject("keyName", keyName);
        modelAndView.addObject("keyTypeCustomer", keyTypeCustomer);
        return modelAndView;
    }

    @GetMapping("/formCreate")
    public ModelAndView formCreate() {
        ModelAndView modelAndView = new ModelAndView("customer/create");
        modelAndView.addObject("customerDto", new CustomerDto());
        modelAndView.addObject("customerType", iCustomerService.findAllTypeCustomer());
        return modelAndView;
    }

    @PostMapping("/create")
    public String createCustomer(@ModelAttribute @Valid CustomerDto customerDto,
                                 BindingResult bindingResult,
                                 RedirectAttributes redirectAttributes,
                                 Model model) {
        new CustomerDto().validate(customerDto, bindingResult);
        model.addAttribute("customerDto", customerDto);
        if (bindingResult.hasErrors()) {
            model.addAttribute("customerType",
                    iCustomerService.findAllTypeCustomer());
            return "customer/create";
        }
        Customer customer = new Customer();
        BeanUtils.copyProperties(customerDto, customer);
        TypeCustomer typeCustomer = new TypeCustomer();
        typeCustomer.setTypeCustomerId(customerDto.getTypeCustomerDto().getId());
        customer.setTypeCustomer(typeCustomer);
        iCustomerService.saveCustomer(customer);
        redirectAttributes.addFlashAttribute("msg", "create success");
        return "redirect:/customer/list";
    }

    @GetMapping("/formEdit/{id}")
    public String formEdit(Model model,
                           @PathVariable Long id){
        Customer customer = iCustomerService.findByIdCustomer(id);
        model.addAttribute("customerType", iCustomerService.findAllTypeCustomer());
        CustomerDto customerDto = new CustomerDto();
        BeanUtils.copyProperties(customer, customerDto);
        model.addAttribute("customerDto", customerDto);
        return "customer/edit";
    }

    @PostMapping("/edit")
    public String editCustomer(@ModelAttribute @Valid CustomerDto customerDto,
                               BindingResult bindingResult,
                               RedirectAttributes redirectAttributes,
                               Model model){
        new CustomerDto().validate(customerDto, bindingResult);
        model.addAttribute("customerDto", customerDto);
        if (bindingResult.hasErrors()) {
            model.addAttribute("customerType",
                    iCustomerService.findAllTypeCustomer());
            return "customer/edit";
        }
        Customer customer = new Customer();
        BeanUtils.copyProperties(customerDto, customer);
        TypeCustomer typeCustomer = new TypeCustomer();
        typeCustomer.setTypeCustomerId(customerDto.getTypeCustomerDto().getId());
        customer.setTypeCustomer(typeCustomer);
        iCustomerService.saveCustomer(customer);
        redirectAttributes.addFlashAttribute("msg", "edit success");
        return "redirect:/customer/list";
    }

    @PostMapping("/delete")
    public String deleteCustomer(@RequestParam Long id){
        iCustomerService.deleteCustomer(id);
        return "redirect:/customer/list";
    }
}
