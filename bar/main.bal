// import ballerina/log;
// import ballerina/mcp;
// import ballerina/http;
import ballerina/io;
import ballerina/os;

// http:Client apiClient = check new ("https://choreoapis.dev/jan28/wso2-meta-graphql/v1.0");
// listener mcp:Listener mcpListener = check new (9090);

// @mcp:ServiceConfig {
//     info: {
//         name: "wso2 meta graphql",
//         version: "v1.0"
//     }
// }
// service mcp:Service /wso2_meta_graphql on mcpListener {

//     @mcp:Tool {
//         description: "Executes POST on /*"
//     }
//     remote function operation1PostDefault() returns json|error {
//         log:printInfo("Proxying request to: " + string `/*`);
//         json response = check apiClient->post(string `/*`, {});
//         return response;
//     }

// }

public function main() {
    io:println(os:getEnv("SOURCE_COMPONENT_ID"));
}