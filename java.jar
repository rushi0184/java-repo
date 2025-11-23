import com.sun.net.httpserver.HttpServer;
import java.io.OutputStream;

public class hello {
    public static void main(String[] args) throws Exception {
        HttpServer server = HttpServer.create(new java.net.InetSocketAddress(8080), 0);

        server.createContext("/", (exchange -> {
            String response = "Hello from Java HTTP server!";
            exchange.sendResponseHeaders(200, response.getBytes().length);
            OutputStream os = exchange.getResponseBody();
            os.write(response.getBytes());
            os.close();
        }));

        server.setExecutor(null);
        server.start();

        System.out.println("Server running on port 8080");
    }
}
