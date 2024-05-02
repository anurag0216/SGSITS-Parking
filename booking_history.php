<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        h2 {
            font-size: 24px;
            margin: 20px 0;
            text-align: center;
        }
        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #333;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <?php
    session_start();

    // Check if the user is logged in
    if (!$_SESSION['driver_email']) {
        header("location: index.php");
    }
    $user_email = $_SESSION['driver_email'];

    // Replace these values with your database credentials
    $host = "localhost";
    $username = "root";
    $password = "root";
    $database = "sgsits_parking";

    // Create a database connection
    $connection = mysqli_connect($host, $username, $password, $database, 3307);

    // Check if the connection was successful
    if (!$connection) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Define your SQL query to fetch the required data
    $sql = "SELECT slots, hours AS hr, time FROM requests WHERE customer = '$user_email'";

    // Execute the SQL query
    $result = mysqli_query($connection, $sql);

    // Check if the query was successful
    if (mysqli_num_rows($result) > 0) {
        echo '<h2>Booking History</h2>';
        echo '<table>';
        echo '<tr><th>Serial No</th><th>Slots</th><th>Hours</th><th>Time</th></tr>';
        $serial_no = 1; // Initialize serial number
        while ($row = mysqli_fetch_assoc($result)) {
            echo '<tr>';
            echo '<td>' . $serial_no . '</td>'; // Add serial number
            echo '<td>' . $row['slots'] . '</td>';
            echo '<td>' . $row['hr'] . '</td>';
            echo '<td>' . $row['time'] . '</td>';
            echo '</tr>';
            $serial_no++; // Increment the serial number
        }
        echo '</table>';
    } else {
        echo '<h2>Booking History</h2>';
        echo '<p>No bookings found.</p>';
    }

    // Close the database connection
    mysqli_close($connection);
    ?>
</body>
</html>