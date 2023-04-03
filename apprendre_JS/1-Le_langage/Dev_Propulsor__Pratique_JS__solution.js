const notes = [4, 10, 1];

// -  paramètre un tableau et retourne une chaîne de caractère en respectant le format demandé.
const toString = (tab) => {
  const temp = tab.join(", ")
  return "[" + temp + "]"
}
// -  paramètre un tableau et retourne un tableau trié par ordre décroissant sans altérer le tableau original.
const sort = (tab) => {
  // copy
  const clone = [];

  tab.forEach(elt => {
    clone.push(elt)
  });

  clone.sort((a, b) => {
    if (a > b) {
      return -1;
    } else if (a < b) {
      return 1;
    }
    return 0
  })

  return clone
}

// -  paramètre un tableau et retourne la somme de toutes les valeurs contenues dans ce tableau.
const somme = (tab) => {
  let result = 0;
  tab.forEach(elt => {
    result = result + elt
  })
  return result;
  // return tab.reduce((acc, curr) => { return acc + curr}, 0)
}

console.log(somme([2, 3, 5, 6]))

// - Utiliser le résultat de la fonction de calcul de la somme pour calculer la moyenne.
// moyenne = somme / notes.length

// -  paramètre un tableau et retourne le maximum des valeurs contenues dans le tableau.
const maximum = (tab) => {
  let max = tab[0];
  tab.forEach(elt => {
    if (elt > max) {
      max = elt
    }
  })
  return max
}

// -  paramètre un tableau puis retourne l'index du maximum des valeurs contenu dans le tableau.
const indexMaximum = (tab) => {
  let max = tab[0]
  let indexMax = 0

  tab.forEach((elt, index) => {
    if (elt > max) {
      max = elt;
      indexMax = index;
    }
  })
  return indexMax
}

// - Une fonction de formatage générale
const format = (original, trie,
  total,
  moyenneGen,
  meilleureNote,
  indexMax) => {

  console.log("== RÉSUMÉ ==");
  console.log("Original : ", original);
  console.log("Trie : ", trie);
  console.log("Somme Total : ", total);
  console.log("Moyenne Générale : ", moyenneGen);
  console.log("Meilleure Note : ", meilleureNote);
  console.log("Index Meilleure Élève : ", indexMax);
}

const summarize = (tab) => {
  const original = toString(tab)
  const trie = sort(tab)
  const total = somme(tab)
  const moyenneGen = total / tab.length
  const meilleureNote = maximum(tab)
  const indexMax = indexMaximum(tab)

  const result = format(original, trie, total, moyenneGen,  meilleureNote, indexMax)
  console.log(result)
}

summarize(notes)

/*
const notes = [4, 1, 9, 2];
summarize(notes);

== RÉSUMÉ ==
Original : [4, 1, 9, 2]
Trie : [9, 4, 2, 1]
Somme Total : 16
Moyenne Générale : 4
Meilleure Note : 9
Index Meilleure Élève : 2
*/
