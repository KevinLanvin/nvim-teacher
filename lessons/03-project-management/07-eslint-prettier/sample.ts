// This file is intentionally badly formatted.
// Open it in nvim, then save it — Prettier will reformat it automatically.
// (Requires prettier to be installed in the project. If auto-format doesn't
//  trigger on save, use <leader>cf to force it manually.)

const   greeting =    'hello'
const   name='world'

function  greet(  msg:string ,  target : string ){
  console.log(   msg+' '+target  )
  return msg+' '+target
}

const result=greet(greeting,name)

const numbers=[1,2,3,4,5]
const doubled=numbers.map((n)=>{return n*2})

// unused variable — ESLint will flag this
const unused = 'nobody references me'

export { greet, result, doubled }
