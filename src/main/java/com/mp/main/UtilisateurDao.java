package com.mp.main;

import java.util.List;

public interface UtilisateurDao {
    void ajouter( User utilisateur );
    List<User> lister();
}
