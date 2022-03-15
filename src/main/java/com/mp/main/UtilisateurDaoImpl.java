package com.mp.main;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UtilisateurDaoImpl implements UtilisateurDao {
    private DaoFactory daoFactory;

    UtilisateurDaoImpl(DaoFactory daoFactory) {
        this.daoFactory = daoFactory;
    }

    public void ajouter(User user) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = connexion.prepareStatement("INSERT INTO users(email, f_name, l_name, Role, password, account_status) VALUES(?, ?, ?, ?, ?, ?);");
            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getNom());
            preparedStatement.setString(3, user.getPrenom());
            preparedStatement.setInt(4, 2);
            preparedStatement.setString(5, user.getPassword());
            preparedStatement.setInt(6, 0);

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public List<User> lister() {
        List<User> utilisateurs = new ArrayList<User>();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;

        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT email, f_name, l_name FROM users;");

            while (resultat.next()) {
                String nom = resultat.getString("f_name");
                String prenom = resultat.getString("l_name");
                String email = resultat.getString("email");
                String password = resultat.getString("password");

                User utilisateur = new User(nom, prenom, email, password);

                utilisateurs.add(utilisateur);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return utilisateurs;
    }

}
