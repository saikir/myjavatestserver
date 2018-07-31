package com.learning.myFirstApp;

import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;

import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpServer;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args ) throws IOException
    {
    	HttpServer server = HttpServer.create(new InetSocketAddress(8080), 0);
    	server.createContext("/", new MyHandler());
    	server.setExecutor(null);
    	server.start();
    }
    
    static class MyHandler implements HttpHandler{

		public void handle(HttpExchange t) throws IOException {
			String response = "<h1>Yo Bro!!"+"The current docker version is"+System.getenv("DOCKERIMAGE")+"</h1>";
			t.sendResponseHeaders(200, response.length());
			OutputStream os = t.getResponseBody();
			os.write(response.getBytes());
			os.close();
		}
    	
    }
}
