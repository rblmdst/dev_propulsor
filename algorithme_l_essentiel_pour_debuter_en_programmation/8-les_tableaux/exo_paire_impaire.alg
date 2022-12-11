<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Paire_Impaire" courant="AFFICHER impair"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" totalBoucles="5000000" epaisseurPoint="2" nbDecimales="8" arrondiAuto="vrai" epaisseurLigne="2" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#tab" algoitem="tab EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#pair" algoitem="pair EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#impair" algoitem="impair EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="12#i#0#9" algoitem="POUR i ALLANT_DE 0 A 9">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#Veuillez saisir la valeur numéro #0" algoitem="AFFICHER &quot;Veuillez saisir la valeur numéro &quot;"/>
            <item code="20#i+1#0" algoitem="AFFICHERCALCUL i+1"/>
            <item code="2#tab#i" algoitem="LIRE tab[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="5#pair#0#pasliste" algoitem="pair PREND_LA_VALEUR 0"/>
        <item code="5#impair#0#pasliste" algoitem="impair PREND_LA_VALEUR 0"/>
        <item code="12#i#0#9" algoitem="POUR i ALLANT_DE 0 A 9">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#tab[i]%2==0" algoitem="SI (tab[i]%2==0) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#pair#pair+1#pasliste" algoitem="pair PREND_LA_VALEUR pair+1"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="5#impair#impair+1#pasliste" algoitem="impair PREND_LA_VALEUR impair+1"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Total valeurs paires : #0" algoitem="AFFICHER &quot;Total valeurs paires : &quot;"/>
        <item code="3#pair#0#pasliste" algoitem="AFFICHER pair"/>
        <item code="4#, Total valeurs impaires : #0" algoitem="AFFICHER &quot;, Total valeurs impaires : &quot;"/>
        <item code="3#impair#0#pasliste" algoitem="AFFICHER impair"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
