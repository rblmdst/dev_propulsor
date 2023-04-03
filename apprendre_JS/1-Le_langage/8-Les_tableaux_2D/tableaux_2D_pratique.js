/*On souhaite écrire un programme permettant 
de calculer la moyenne générale des notes obtenues dans trois 
(3) épreuves par quarante (utiliser 4 pour les tests) élèves.

Ecrire un programme qui demandera pour chaque élève 
son nom puis ses notes obtenues dans les différentes épreuves.

Après avoir renseigné toutes les notes obtenues par les élèves dans les différentes matières, on affichera pour chaque élève son nom et sa moyenne obtenue.

Ex d'affichage d'une ligne :  
"Sonia a une moyenne générale de 2.83/5".
Les épreuves sont notées sur 5 (contrôler la saisie).
*/
/*
tabNom : nom des eleves
tabNotes: notes des eleves
recuperation des valeurs
somme des notes de chaque eleves => Moyenne
*/
const NBR_ELV =  4;
const NBR_EPR = 3;
const MAX = 5

let noms = []
let notes = []


for(let i = 0; i < NBR_ELV; i ++) {
    const nom = prompt("Saisir le nom de l'eleve #" + (i+1));
    noms.push(nom);
    
    notes[i] = []
    for (let j = 0; j < NBR_EPR; j++) {
        let note = +prompt("Saisir la note de l'eleve ''"+ nom + "' dans la matiere #" + (j+1));
        
        while(note < 0 || note >5) {
            note = +prompt("Saisir la note de l'eleve ''"+ nom + "' dans la matiere #" + (j+1));
        }
        
        notes[i][j] = note;
    }
}

// console.log(noms)
// console.table(notes)

for(let i = 0; i < NBR_ELV; i++) {
    const nom = noms[i];
    const notesElev = notes[i];
    const moyenneElev = moyenne(notesElev, MAX)
    console.log(nom + " a une moyenne générale de " + moyenneElev +"/", MAX)  
    // "Sonia a une moyenne générale de 2.83/5".
}

function moyenne(tab, max) {
    const somme = tab.reduce((accu, curr) => { return accu + curr}, 0)
    return somme / max
}


