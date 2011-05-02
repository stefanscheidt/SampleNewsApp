package samplenewsapp.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooEntity(finders = { "findNewsItemsByItemNumberGreaterThan" })
@RooJson
public class NewsItem {

    @NotNull
    private Long itemNumber;

    @NotNull
    private String title;

    @NotNull
    private String subtitle;

    @NotNull
    @Size(max = 1000)
    private String text;
}
