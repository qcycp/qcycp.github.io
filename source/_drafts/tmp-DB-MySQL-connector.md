---
title: tmp_DB_MySQL_connector
tags:
---
mysql connector c++
===

使用mysql connector c++插入資料
1. state->executeUpdate("insert into pet values ('1321', 'nick.cheng', '100', '0', 'done')");

2.
PreparedStatement *prep_stmt;
prep_stmt = con->prepareStatement("INSERT INTO report (week, name, completed, status, content) VALUES (?, ?, ?, ?, ?)");
prep_stmt->setString(1, WEEK);
prep_stmt->setString(2, NAME);
prep_stmt->setString(3, COMPLETED);
prep_stmt->setString(4, STATUS);
prep_stmt->setString(5, THISWEEK_CONTENT);
prep_stmt->executeUpdate();
con->commit();

3.
#include <mysql_connection.h>
#include <mysql_driver.h>
#include <cppconn/statement.h>
#include <cppconn/prepared_statement.h>
using namespace sql;

void RunConnectMySQL() 
{
    mysql::MySQL_Driver *driver;
    Connection *con;
    Statement *state;
    ResultSet *result;
    // init driver
    driver = sql::mysql::get_mysql_driver_instance();
    // create connection
    con = driver->connect("tcp://127.0.0.1:3306", "root", "123456");
    state = con->createStatement();
    state->execute("use WR"); // set database
    result = state->executeQuery("select * from pet"); // query
    // output query
    while(result->next())
    { 
        string name = result->getString("name");
        cout << name << endl;
    }
    delete state;
    delete con;
}