<?php include 'includes/header.php'?>
<?php
    $id=$_GET['id'];
    //Create DB Object
    $db=new Database();

    //Create Query
    $query= "SELECT * from categories where id=".$id;

    //Run Query
    $category=$db->select($query)->fetch_assoc();

    //Create Query
    $query= "SELECT * from categories";

    //Run Query
    $categories=$db->select($query);
?>

<?php
	if(isset($_POST['submit'])){
		//Assign Vars
		$name = mysqli_real_escape_string($db->link, $_POST['name']);
		//Simple Validation
		if($name == ''){
			//Set Error
			$error = 'Please fill out all required fields';
		} else {
			$query = "UPDATE categories
					SET 
					name = '$name'		
					WHERE id =".$id;
			
			$update_row = $db->update($query);
		}
	}
?>
<?php
	if(isset($_POST['delete'])){
		$query = "DELETE FROM categories WHERE id = ".$id;
		
		$delete_row = $db->delete($query);
	}
?>
<form method="post" action="edit_category.php?id=<?php echo $id; ?>">
  <div class="form-group">
    <label>Category Name</label>
    <input type="text" name="name" class="form-control" placeholder="Enter Category" value="<?php echo $category['name'];?>">
  </div>
  <div>
  <input type="submit" name="submit" class="btn btn-default" value="Submit">
  <a href="index.php" class="btn btn-default">Cancel</a>
  <input type="submit" name="delete" class="btn btn-danger" value="Delete">
  </div>
  <br>
</form>
<?php include 'includes/footer.php'?>