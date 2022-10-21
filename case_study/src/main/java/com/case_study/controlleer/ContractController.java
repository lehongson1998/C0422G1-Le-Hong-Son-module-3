package com.case_study.controlleer;

import com.case_study.dto.contract.ContractDetailDto;
import com.case_study.model.contract.Contract;
import com.case_study.model.contract.ContractDetail;
import com.case_study.service.IContractService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.*;

@Controller
@RequestMapping("/contract")
public class ContractController {
    @Autowired
    private IContractService contractService;

    @GetMapping("")
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView("contract/list");
        return modelAndView;
    }

    @GetMapping("/list")
    public ModelAndView listFacility(@PageableDefault(size = 5) Pageable pageable,
                                     @RequestParam Optional<String> facilityName) {
        ModelAndView modelAndView = new ModelAndView("contract/list");
        String keyName = facilityName.orElse("");
        Page<Contract> contractPage = contractService.listContract(keyName, pageable);
        Map<Long, Double> map = new HashMap<>();
        double totalMoney;
        try {
            for (Contract c : contractPage) {
                totalMoney = 0;
                for (ContractDetail cd : c.getContractDetail()) {
                    totalMoney += cd.getQuantity() * cd.getAttachFacility().getCost();
                }
                map.put(c.getId(), totalMoney);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        modelAndView.addObject("attachFacility", contractService.listAttachFacility());
        modelAndView.addObject("contractDetailDto", new ContractDetailDto());
        modelAndView.addObject("total", map);
        modelAndView.addObject("contractPage", contractPage);
        modelAndView.addObject("keyName", keyName);
        return modelAndView;
    }

    @PostMapping("/createContractDetail")
    public String createContractDetail(@ModelAttribute @Valid ContractDetailDto contractDetailDto,
                                       BindingResult bindingResult,
                                       RedirectAttributes redirectAttributes) {
        new ContractDetailDto().validate(contractDetailDto, bindingResult);
        if (bindingResult.hasErrors()) {
            redirectAttributes.addFlashAttribute("msg", "thêm mới dịch vụ đi kèm thành công");
            return "redirect:/contract/list";
        }
        ContractDetail contractDetail = new ContractDetail();
        BeanUtils.copyProperties(contractDetailDto, contractDetail);
        contractService.saveContractDetail(contractDetail);
        redirectAttributes.addFlashAttribute("msg", "thêm mới dịch vụ đi kèm thành công");
        return "redirect:/contract/list";
    }
}
