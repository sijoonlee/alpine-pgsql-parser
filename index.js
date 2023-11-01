const { parse, deparse } = require('pgsql-parser');

const result = parse('SELECT * FROM tableA;');

console.log(JSON.stringify(result))

const deparsed = deparse(result)

console.log(deparsed)