<template>
    <div>
        <h2>Posts</h2>
        <form @submit.prevent="addPost">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="enter title" v-model="post.title" required/>
            </div>
            <div class="form-group">
                <textarea type="text" class="form-control" placeholder="enter body" v-model="post.body" required></textarea>
            </div>
            <button type="submit" class="btn btn-success">Insert</button>

        </form>
        <ul class="pagination">
            <li v-bind:class="[{disabled:!pagination.prev_page_url}]"><a href="#" @click="fetchPosts(pagination.prev_page_url)">prev</a></li>
            <li class="disabled"><a>Page {{pagination.currrent_page}} of {{pagination.last_page}}</a></li>
            <li v-bind:class="[{disabled:!pagination.next_page_url}]"><a href="#" @click="fetchPosts(pagination.next_page_url)">next</a></li>
        </ul>
        <div class="jumbotron" v-for="post in posts">
            <h3>{{post.title}}</h3>
            {{post.body}}
           <hr>
            <button @click="deletepost(post.postId)">delete</button>
            <button @click="editpost(post.postId,post.title,post.body)">edit</button>

        </div>

    </div>

</template>

<script>
    export default{
        data(){
            return{
                posts:[],
                post:{
                    postId:'',
                    title:'',
                    body:''
                },
                postId:'',
                pagination:{},
                edit:false
            }

        },
        created(){
            this.fetchPosts();
        },
        methods:{
            fetchPosts(page_url){
                page_url= page_url ||'api/posts';
                let vm=this;
                fetch(page_url)
                    .then(res=>res.json())
                    .then(res=>{
                   this.posts=res.data;
                   // console.log(res);
                   vm.makePagination(res.meta,res.links);

            }).catch(err=>console.log(err));
            },
            makePagination(meta,links){
                let pagination={
                    currrent_page:meta.current_page,
                    last_page:meta.last_page,
                    next_page_url:links.next,
                    prev_page_url:links.prev,

                }
                this.pagination=pagination;

            },
            addPost(){
                if(this.edit==true){
                    fetch('api/post',{
                        method:'put',
                        body:JSON.stringify(this.post),
                        headers:{
                            'content-type':'application/json'
                        }
                    }).then(res=>res.json())
                .then(res=>{
                        this.post.title='';
                    this.post.body='';
                    this.post.postId='';
                    this.edit=false;
                    alert('Post Edited Successfully');
                    this.fetchPosts();
                })
                .catch(err=> console.log(err));
                }
                else {
                    fetch('api/post',{
                        method:'post',
                        body:JSON.stringify(this.post),
                        headers:{
                            'content-type':'application/json'
                        }
                    }).then(res=>res.json())
                .then(res=>{
                        this.post.title='';
                    this.post.body='';
                    this.post.postId='';
                    alert('Post Added Successfully');
                    this.fetchPosts();
                })
                .catch(err=> console.log(err));

                }


            },
            editpost(id,title,body){
                this.edit=true;
                this.post.postId=id;
                this.post.title=title;
                this.post.body=body;
            },
            deletepost(id){
                if(confirm('Aru you sure ?')){
                    fetch(`api/post/${id}`,{
                        method:'delete'
                    }).then(res=>res.json())
                    .then(res=>{

                        alert('Post Deleted Successfully');
                        this.fetchPosts();
                    })
                        .catch(err=> console.log(err));
                }

            }
        }

    }


</script>