function getConsonants(str) {
    var m = str.match(/[bcdfghjklmnpqrstvxzwy]/gi);
    return m === null ? 0 : m.length;
} // count consonants

console.log(getConsonants("happy"));