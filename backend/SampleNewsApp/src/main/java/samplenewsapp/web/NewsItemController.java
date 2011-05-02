package samplenewsapp.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import samplenewsapp.domain.NewsItem;

@RooWebScaffold(path = "newsitems", formBackingObject = NewsItem.class)
@RequestMapping("/newsitems")
@Controller
public class NewsItemController {

    // work around for https://jira.springsource.org/browse/ROO-2362
    @RequestMapping(params = "find=ByItemNumberGreaterThan", method = RequestMethod.GET)
    public String findNewsItemsByItemNumberGreaterThan(@RequestParam("itemNumber") Long itemNumber, Model model) {
        model.addAttribute("newsitems", NewsItem.findNewsItemsByItemNumberGreaterThan(itemNumber).getResultList());
        return "newsitems/list";
    }

}
