# Module 164 11.06.2023

Pour démarrer le projet, plusieurs étapes sont requises. Je vais les expliquer ci-dessous.

Premièrement, il faut installé un serveur MySql comme laragon (heidi.sql), uwamp, xamp ou mamp, pycharm et python. Puis démarré le serveur MySql.

Déplacer le projet dans les projets pycharm pour pouvoir l'ouvrir dans pycharm.

Ensuite, dans "pycharm" dans l'onglet APP_FILMS_164 puis dans database, il faut importer ma base de données grâce 
au fichier 1_ImportationDumpSql.py.

Lorsque le fichier est séléctionné, cliquer avec le bouton droit de la souris sur le nom du fichier et choisissez le bouton "run"
ou avec la commande clavier : CTRL-MAJ-F10.

Si à ce stade vous avez des erreurs, ouvrez le fichier .env qui se trouve à la racine du projet et vérifier les indications de connexion pour la base de données.

Une fois la base de données importée, testez sa connection. Pour ce faire, il faut ouvrir le fichier 2_test_connection_bd.py qui se trouve dans l'onglet database. 

Puis, lancez le fichier avec le bouton "run" en faisant un clique droit sur le nom du dossier ou avec la commande clavier CTRL-MAJ-F10 comme effectué pour le premier fichier.

Pour démarrer le site, ouvrez le fichier run_mon_app.py qui se trouve à la racine du projet. cliquez sur l'onglet di fichier puis choisissez l'option "run" ou lancez le fichier avec la commande clavier CTRL-MAJ-F10.

Pour acceder au site, allez dans le menu déroulant du run, vous y trouverez un lien "http://127.0.0.1:5005", cliquez dessus et une page internet s'ouvrira. 

Vous pouvez maintenant naviger sur le site, ajouter, modifier ou supprimer les données présentent.

