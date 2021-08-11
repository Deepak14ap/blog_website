<?php include 'includes/header.php'; ?> 
<?php
    //Create DB Object
    $db=new Database();
    //Check URL for category
    if(isset($_GET['category'])){//if category given in url then show only those posts
        $category=$_GET['category'];
        //Create Query
        $query= "SELECT * from posts where category=".$category."ORDER by id";
        //Run Query
        $posts=$db->select($query);
    }else{//not given category so show all the posts, this is the case in headre when you click all posts
        //Create Query
        $query= "SELECT * from posts ORDER by id DESC";

        //Run Query
        $posts=$db->select($query);
    }
    

    

    //Create Query
    $query= "SELECT * from categories";//these queries will be used in footer for dynamically displaying categories

    //Run Query
    $categories=$db->select($query);

?>

<?php if($posts): ?>
    <?php while($row=$posts->fetch_assoc()):?>
        <div class="blog-post">
            <h2 class="blog-post-title"><?php echo $row['title'];?></h2>
            <p class="blog-post-meta"><?php echo formatDate($row['date']).' by ';?><a href="#"><?php echo $row['author'];?></a></p>
                <?php echo shortenText($row['body']);?>
            <a  class="readmore" href="post.php?id=<?php echo urlencode($row['id']); ?>">Read More</a>
        </div><!-- /.blog-post -->
    <?php endwhile;?>   


<?php else : ?>
    <p>There are no posts yet</p>
<?php endif ; ?>
<?php include 'includes/footer.php'; ?> 
        