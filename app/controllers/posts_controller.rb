class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy, :upvote]
    #makes it so that you cant just go to /new when youre not logged in, and devise redirects you to sign up first.
    before_action :authenticate_user!, except: [:index, :show]
    
    def index
        #display posts with the params sent through the search bar
       
        #display the posts with by the params sent through clicking a tag
        if params[:tag]
            @posts = Post.all.order("created_at DESC").tagged_with(params[:tag])
        elsif params[:search]
            @posts = Post.all.order("created_at DESC").tagged_with(params[:search])
        elsif params[:user]
            #will eventually be for user's profile page
            @user = User.find(params[:user_id])
            @posts=@user.posts
        else
            @posts = Post.all.order("created_at DESC")
        end
        
    end
    
    def show
        @post = Post.find(params[:id])

    end
    
    def new
        @post=current_user.posts.build  #builds a new post under the current user profile
        @post.feedbacks.build
        @post.ideas.build
        @post.crowdfundings.build
        @post.feedbacks.options.build
    end
    
    def create
        #builds a new post under the current user profile given the post params the user has entered (i think, lol)
        @post=current_user.posts.build(post_params)
        #if the post can be saved
        if @post.save
            #the post will be redirected to the post show page
            redirect_to @post, notice: "Successfully created new Post"
        else
            #will render the new form
            render 'new'
        end
    end
    
    def edit
    end
    
    def update
        if @post.update(post_params)
            redirect_to @post, notice: "pin was successfully updated"
        else
            render 'edit'
        end
    
    end
    
    def destroy
        @post.destroy
        redirect_to root_path
    end

    def choose_type

    end
    
    def upvote
        @post.upvote_by current_user
        redirect_to :back
    end
        
    private
    #Saves a version of the Post class that exists with the parameters equal to this post's ID. so for example, apollo.com/posts/2/ would mean :id == 2, so Post.find(params[:id]) would get you the 2nd instance of Post
    def find_post
        @post = Post.find(params[:id])
    end
    
    def post_params
        params.require(:post).permit(:id, :title, :content, :image, :tag_list, feedbacks_attributes: [:id, :question, :_destroy], crowdfundings_attributes: [:id, :amount, :_destroy], ideas_attributes: [:id, :content, :_destroy])
    end
end

