package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main8")
public class Controller08 {

    @RequestMapping("sub1")
    public void method1(Model model) {
        // 요청 분석/가공
        // 비즈니스 로직 처리
        // 결과를 model 에 담고
        model.addAttribute("name1", "value1");
        model.addAttribute("name2", "value2");
        // view 로 포워딩 (/WEB-INF/view/main8/sub1.jsp)

    }

    @RequestMapping("sub2")
    public void method2(Model model) {
        model.addAttribute("city", "서울");
        model.addAttribute("address", "신촌");
    }

    @RequestMapping("sub3")
    public void method3(Model model) {
        model.addAttribute("name", "...");
        model.addAttribute("age", 15);
    }

    @RequestMapping("sub4")
    public void method4(Model model) {
        // model attribute 의 name : String
        // model attribute 의 value : Object

        // 따라서 model attribute 의 value 는 무엇이든 될 수 있다.
        // 자주 사용하는 타입
        // String, 기본타입(wrapper)
        // 배열, List, Map
        // JavaBeans

        // 배열
        model.addAttribute("car",
                new String[]{"tesla", "kia", "hyundai"});
    }

    @RequestMapping("sub5")
    public void method5(Model model) {
        model.addAttribute("cities",
                new String[]{"서울", "대구", "부산"});
        model.addAttribute("countries",
                new String[]{"한국", "미국", "케냐"});
    }

    @RequestMapping("sub6")
    public void method6(Model model) {
        List<String> data = List.of("java", "css", "html", "jsp");
        model.addAttribute("myList", data);

        // /main8/sub6.jsp
    }

    @RequestMapping("sub7")
    public void method7(Model model) {
        List<String> data = List.of("dd", "ss", "d");
        model.addAttribute("myList", data);

        List<Integer> numbers = List.of(10, 5, 0);
        model.addAttribute("yourList", numbers);

        // jsp 완성해서 위 6개의 값이 모두 출력되도록
    }

    @RequestMapping("sub8")
    public void method8(Model model) {
        model.addAttribute("numbers", List.of(500.0, 3.14));
        model.addAttribute("cities", List.of("서울", "런던", "뉴욕"));
    }

    @RequestMapping("sub9")
    public void method9(Model model) {
        // model attribute 의 값이 map 일 때
        Map<String, String> map = new HashMap<>();
        map.put("name", "흥민");
        map.put("age", "서른");
        map.put("address", "런던");

        model.addAttribute("myMap", map);
    }

    @RequestMapping("sub10")
    public void method10(Model model) {
        Map<String, String> names = Map.of("son", "토트넘",
                "lee", "파리",
                "kim", "뮌헨");
        model.addAttribute("names", names);

        Map<String, String> others = Map.of(
                "손흥민", "런던",
                "lee kang in", "paris");
        model.addAttribute("others", others);

        // 토트넘, 파리, 뮌헨 출력되도록
        // jsp 작성
    }
}
