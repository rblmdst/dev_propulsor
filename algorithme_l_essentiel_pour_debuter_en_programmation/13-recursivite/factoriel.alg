<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Factoriel" courant="AFFICHER &quot; est : &quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" epaisseurPoint="2" nbDecimales="8" arrondiAuto="vrai" totalBoucles="5000000" totalAffichages="1000" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES">
        <item code="201#factoriel#nbre" algoitem="FONCTION factoriel(nbre)">
            <item code="202#declarationsvariablesfonction" algoitem="VARIABLES_FONCTION"/>
            <item code="203#debutfonction" algoitem="DEBUT_FONCTION"/>
            <item code="6#nbre &lt;= 1" algoitem="SI (nbre &lt;= 1) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="205#1" algoitem="RENVOYER 1"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="205#nbre * factoriel(nbre - 1)" algoitem="RENVOYER nbre * factoriel(nbre - 1)"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="204#finfonction" algoitem="FIN_FONCTION"/>
        </item>
    </item>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#x" algoitem="x EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Veuiilez saisir le nombre dont vous souhaitez calculer le factoriel #0" algoitem="AFFICHER &quot;Veuiilez saisir le nombre dont vous souhaitez calculer le factoriel &quot;"/>
        <item code="2#x#pasliste" algoitem="LIRE x"/>
        <item code="4#Le factoriel de  #0" algoitem="AFFICHER &quot;Le factoriel de  &quot;"/>
        <item code="3#x#0#pasliste" algoitem="AFFICHER x"/>
        <item code="4# est : #0" algoitem="AFFICHER &quot; est : &quot;"/>
        <item code="20#factoriel(x)#0" algoitem="AFFICHERCALCUL factoriel(x)"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
