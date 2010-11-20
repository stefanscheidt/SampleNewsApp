
Sample iPhone News App
======================

Content
-------

**backend**

Spring Roo based backend with REST JSON API to news items.

Prerequisites for running the service: JDK 1.6, Maven 3

Start backend service on localhost port 8080:

    cd backend/SampleNewsApp
    mvn clean install jetty:run

Use the service:

    curl -H "Accept: application/json" "http://localhost:8080/samplenewsapp/newsitems"
    curl -H "Accept: application/json" "http://localhost:8080/samplenewsapp/newsitems?find=BySerNoGreaterThan&serNo=4"
    
**frontend**

Xcode project "SampleNewsApp".

This project contains a copy of the TouchJSON library.
See TouchJSON-README.markdown for details.
