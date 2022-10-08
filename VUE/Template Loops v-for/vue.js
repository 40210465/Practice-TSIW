let app = Vue.createApp({

data() {
    return {
        COMMENT_ERROR : '*It´s not allowed empty comments !!',
        ID_COMMENT : 1,
        comments: []
    }
},
methods: {
    AddComment(){
      const comment = document.getElementById('comment').value;
      const comment_ = document.querySelector('#comment');
      const message = document.querySelector('.message');

      if(comment === ''){
        comment_.style.borderColor = "red"
        comment_.style.backgroundColor = "#D74646AD"
        message.style.opacity = '1'
        message.animate([{opacity:0},{opacity:1}],{duration:350});
      }
      else{
        this.comments.push({id:this.ID_COMMENT++, content:`${comment}`})
        comment_.style.backgroundColor = "" //otherwise will set the default value with ""
        comment_.style.borderColor = ""
        message.style.opacity = 0;
        console.log(this.comments);
      }
    }
},

})

app.mount('#App')