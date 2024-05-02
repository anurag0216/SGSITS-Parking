<?php 
if(isset($_GET['otp']))
{
	$otp = $_GET['otp'];
	
	//echo("ID = $id");
	include 'conn.php';
	$sql = "SELECT * FROM requests where otp= \"$otp\"";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) 
	{
		$row = $result->fetch_assoc();
		
		$name=$row['customer'];
		$otp = $row['otp'];
		
		$sql = "UPDATE `requests` SET `otp` = '' WHERE `otp` = '$otp'";
		//   echo($sql);
		if ($conn->query($sql) === TRUE) {
			$res['status'] = 1;
			$res['name'] = $row['customer'];
			$res['time'] = $row['hours'];
			$res['cost'] = $row['cost'];
			$res['slot'] = $row['slots'];
			$res['pid'] = $row['parking_id'];
			$resJSON = json_encode($res);
			echo($resJSON);
		
			//$status = "1";
		} else {
			//$status = "Error: " . $sql . "<br>" . $conn->error;
		}
		
	}
	else
	{
		
				$res['status'] = -1;
				$resJSON = json_encode($res);
				echo($resJSON);
	}
	
}



?>