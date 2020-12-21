    /************************************* DM-MINIC *************************************/

Authors: Amadou Siaka Sangaré
	 Mariam Telly


	Dans notre fichier minic.ml se trouve la syntaxe abstraite. Des commentaires détaillés y sont pour tout expliquer. Nous disposons d'un lexer minipreprocessor.mll qui permet dans un premier temps de ramener toutes les déclarations de variables au début du fichier, ainsi nous pouvons déclarer des variables entre les définition de fonctions.Il permet egalement de rajouter le symbole "&@@&" qui sera interprété comme le token END pour marquer la fin des déclarations de variables et éviter certains conflits.

	Apres avoir passer le fichier au preprocesseur, on le donne ensuite au miniclexer.mll 



