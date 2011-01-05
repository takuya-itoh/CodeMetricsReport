package controllers;

import play.*;
import play.mvc.*;

import java.io.File;
import java.io.FileInputStream;
import java.util.*;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import models.*;

public class Application extends Controller {
	
    private static String ALERT_ONLY_XSL_FILE_NAME = "CodeMetricsReportAlertOnly.xsl";
    private static String ALMOST_ALL_XSL_FILE_NAME = "CodeMetricsReportAlmostAll.xsl";

    public static void index() {
    	render();
    }

    public static void show(File xml, String format) {
    	
    	File xsl = new File(Play.applicationPath + "/" + getXslFileName(format));
		
    	try {
			
    		TransformerFactory factory = TransformerFactory.newInstance();
			
    		StreamSource xmlsrc = new StreamSource(new FileInputStream(xml));
    		StreamSource xslsrc = new StreamSource(new FileInputStream(xsl));
			
    		Transformer transformer = factory.newTransformer(xslsrc);	
			
    		Properties prop = new Properties();
    		prop.setProperty("encoding", "UTF-8");
    		transformer.setOutputProperties(prop);
			
    		response.setContentTypeIfNotSet("text/html; charset=UTF-8");
    		transformer.transform(xmlsrc, new StreamResult(response.out));
			
    	} catch (Exception e) {
    		e.printStackTrace();
    	}	
    }
    
    private static String getXslFileName(String format) {
    	
    	if ("AlertOnly".equals(format)) {
    		
    		return ALERT_ONLY_XSL_FILE_NAME;
    		
    	} else if ("AlmostAll".equals(format)) {
    		
    		return ALMOST_ALL_XSL_FILE_NAME;
    	}
    	
    	return ALERT_ONLY_XSL_FILE_NAME;
    }
}