package samplenewsapp.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import samplenewsapp.domain.NewsItem;

@RooWebScaffold(path = "newsitems", formBackingObject = NewsItem.class)
@RequestMapping("/newsitems")
@Controller
public class NewsItemController {

    @RequestMapping(params = "find=BySerNoGreaterThan", method = RequestMethod.GET, headers = "Accept=application/json")
    @ResponseBody
    @SuppressWarnings("unchecked")
    public String findNewsItemsBySerNoGreaterThanJson(@RequestParam("serNo") Long serNo, Model model) {
        return NewsItem
                .toJsonArray(NewsItem.findNewsItemsBySerNoGreaterThan(serNo).getResultList());
    }

}
