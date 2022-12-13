const NBR_MATIERES = 3
const NBR_ELEVES = 2
const NOTE_MAX = 5

const notes = []
const nomEleves = []
for (let ligne=0; ligne< NBR_ELEVES; ligne++) {
    const notesEleves = new Array(NBR_MATIERES)
    notes.push(notesEleves)
    const nom = prompt(`Veuillez saisir le nom de l'élève ${ligne + 1}`)
    nomEleves.push(nom)
    
    for (let colonne=0; colonne< NBR_MATIERES; colonne++) { 
        let temp = +prompt(`Veuillez saisir la note de l'élève ${nom} dans l'épreuve ${colonne + 1}`)
        while(temp < 0 || temp > NOTE_MAX ) {
          temp = +prompt(`Veuillez saisir la note de l'élève ${nom} dans l'épreuve ${colonne + 1}`)
        }
        notes[ligne][colonne] = temp
    }
}

// Ouvrez la console(CTL+SHIFT+I) pour voir le contenu du tableau des notes
console.table(notes)
for (let ligne=0; ligne< NBR_ELEVES; ligne++) {
    const nom = nomEleves[ligne]
    let somme = 0
    
    for (let colonne=0; colonne< NBR_MATIERES; colonne++) { 
        somme = somme + notes[ligne][colonne]
    }
    console.log(`${nom} a une moyenne générale de : ${somme/NBR_MATIERES}/${NOTE_MAX}`)
}

//console.table(notes)
