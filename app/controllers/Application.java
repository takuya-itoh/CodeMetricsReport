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

    public static void index() {
        render();
    }

	public static void show(File xml) {
		
		File xsl = new File(Play.applicationPath + "/CodeMetricsReport.xsl");
		
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
}