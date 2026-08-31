import ballerina/log;
import ballerina/mcp;
import ballerina/http;
import ballerina/io;

http:Client apiClient = check new ("https://choreoapis.dev/jan28/graphql-service/v1.0");
listener mcp:Listener mcpListener = check new (9090);

@mcp:ServiceConfig {
    info: {
        name: "graphql-service",
        version: "v1.0"
    }
}
service mcp:Service /graphql_service on mcpListener {

    @mcp:Tool {
        description: "Executes POST on /*"
    }
    remote function operation1PostDefault() returns json|error {
        io:println("This is after updating to bal component");
        log:printInfo("Proxying request to: " + string `/*`);
        json response = check apiClient->post(string `/*`, {});
        return response;
    }

}
