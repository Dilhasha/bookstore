import ballerina/http;
import ballerinax/mysql;
import ballerinax/mysql.driver as _;

final http:Client isbnClient = check new ("localhost:9091");
final mysql:Client bookStoreDbClient = check new (host, user, password, database, port);
