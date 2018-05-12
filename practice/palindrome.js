function checkPalindrom(word) {
    return word == word.split('').reverse().join('');
}

console.log(checkPalindrom("anns"));