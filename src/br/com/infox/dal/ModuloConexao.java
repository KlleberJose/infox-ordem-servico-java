/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.infox.dal;

import java.sql.*;

/**
 *
 * @author Klleber ADDJ
 */
public class ModuloConexao {

//  Estabelece conexão com o banco
    public static Connection conector() {

        Connection conexao = null;
        String driver = "com.mysql.cj.jdbc.Driver";

        String url = "jdbc:mysql://localhost:3306/dbinfox";
        String user = "root";
        String password = "";

        try {

            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;

        } catch (Exception e) {

            return null;
        }
    }

}
