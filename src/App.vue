<script>
import WordList from './WordList.js'
/*
let worddict=
['いち',
'に',
'さん',
'よん',
'ご',
'ろく',
'なな']
*/
let worddict = WordList
for (let i=0; i<worddict.length; i++){
    worddict.splice(i,1,{id:i, item: worddict[i]})
}
export default{
  components:{
    WordList
  },
  data(){
    return{
      ngword: 'Click to show NG word',
      counter: 0,
      wordlist: worddict
    }
  },
  methods:{
    changeword(){
      if (this.wordlist.length>0){
        let ng = this.wordlist[Math.floor(Math.random()*this.wordlist.length)]
        this.ngword = ng.item
        this.wordlist = this.wordlist.filter((t)=> t!==ng)
        this.counter++
      }
      else{
        this.ngword = 'End of Game\nreload to play again'
      } 
    }
  }
}
</script>

<template>
  <header>
    <div>NGワードゲーム</div>
    <div>{{counter}}</div>
  </header>

  <main>
    <button @click="changeword">{{ngword}}</button>
  </main>
</template>

<style scoped>
header {
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content:space-between;
  font-size: 5vw;
}

main{
  display: flex;
  align-items: center;
  justify-content: center;
  line-height: 5vh;
}

button{
  background-color: white;
  color: blueviolet;
  display: block;
  overflow: hidden;
  font-size: 10vw;
  box-sizing: border-box;
  width: 100vw;
  height: 75vh;
}
</style>