// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package samplenewsapp.domain;

import java.util.List;
import java.util.Random;
import org.springframework.stereotype.Component;
import samplenewsapp.domain.NewsItem;

privileged aspect NewsItemDataOnDemand_Roo_DataOnDemand {
    
    declare @type: NewsItemDataOnDemand: @Component;
    
    private Random NewsItemDataOnDemand.rnd = new java.security.SecureRandom();
    
    private List<NewsItem> NewsItemDataOnDemand.data;
    
    public NewsItem NewsItemDataOnDemand.getNewTransientNewsItem(int index) {
        samplenewsapp.domain.NewsItem obj = new samplenewsapp.domain.NewsItem();
        setItemNumber(obj, index);
        setTitle(obj, index);
        setSubtitle(obj, index);
        setText(obj, index);
        return obj;
    }
    
    private void NewsItemDataOnDemand.setItemNumber(NewsItem obj, int index) {
        java.lang.Long itemNumber = new Integer(index).longValue();
        obj.setItemNumber(itemNumber);
    }
    
    private void NewsItemDataOnDemand.setTitle(NewsItem obj, int index) {
        java.lang.String title = "title_" + index;
        obj.setTitle(title);
    }
    
    private void NewsItemDataOnDemand.setSubtitle(NewsItem obj, int index) {
        java.lang.String subtitle = "subtitle_" + index;
        obj.setSubtitle(subtitle);
    }
    
    private void NewsItemDataOnDemand.setText(NewsItem obj, int index) {
        java.lang.String text = "text_" + index;
        if (text.length() > 1000) {
            text = text.substring(0, 1000);
        }
        obj.setText(text);
    }
    
    public NewsItem NewsItemDataOnDemand.getSpecificNewsItem(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        NewsItem obj = data.get(index);
        return NewsItem.findNewsItem(obj.getId());
    }
    
    public NewsItem NewsItemDataOnDemand.getRandomNewsItem() {
        init();
        NewsItem obj = data.get(rnd.nextInt(data.size()));
        return NewsItem.findNewsItem(obj.getId());
    }
    
    public boolean NewsItemDataOnDemand.modifyNewsItem(NewsItem obj) {
        return false;
    }
    
    public void NewsItemDataOnDemand.init() {
        data = samplenewsapp.domain.NewsItem.findNewsItemEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'NewsItem' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new java.util.ArrayList<samplenewsapp.domain.NewsItem>();
        for (int i = 0; i < 10; i++) {
            samplenewsapp.domain.NewsItem obj = getNewTransientNewsItem(i);
            obj.persist();
            obj.flush();
            data.add(obj);
        }
    }
    
}
