// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package samplenewsapp.web;

import java.lang.String;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;
import samplenewsapp.domain.NewsItem;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(new NewsItemConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
    static class samplenewsapp.web.ApplicationConversionServiceFactoryBean.NewsItemConverter implements Converter<NewsItem, String>  {
        public String convert(NewsItem newsItem) {
        return new StringBuilder().append(newsItem.getItemNumber()).append(" ").append(newsItem.getTitle()).append(" ").append(newsItem.getSubtitle()).append(" ").append(newsItem.getText()).toString();
        }
        
    }
    
}
