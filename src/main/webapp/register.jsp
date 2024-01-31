<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet"/>
</head>
<body>
    
    <section class="">
        <div class="d-flex flex-column justify-content-center align-items-center gap col-lg-11">

            <div class="col-lg-6 col-xl-5 col-xxl-4 text-center">
                <h1 class="mb-5 text-center second">Registeration Form</h1>
            </div>
            <form method="post" action="Register">
            	<div class="col-11 col-md-12 col-lg-12 mx-auto mx-lg-0 border border-2 border-black rounded-4 p-sm-5 p-3" >
            		
                	<div class="mt-3 d-flex align-items-center justify-content-center w-100">
                    	<label class=" col-5 col-lg-5 col-xxl-4 five">Name : </label>
                    	<input type="text" class="ms-3 col-6 col-sm-8" required placeholder="Enter Full Name" name="input1"/>
                	</div>
                	
                	<div class="mt-3 d-flex align-items-center justify-content-center w-100">
                	    <label class=" col-5 col-lg-5 col-xxl-4 five">Email : </label>
                	    <input type="text" class="ms-3 col-6  col-sm-8" required placeholder="Enter Email" name="input2"/>
                	</div>
                	
                	<div class="mt-3 d-flex align-items-center justify-content-center w-100">
                	    <label class=" col-5 col-lg-5 col-xxl-4 five">Password : </label>
                	    <input type="password" class="ms-3 col-6 col-sm-8" required placeholder="Enter Password" name="input3"/>
                	</div>
                	<div class="mt- mt-4 d-flex align-items-center justify-content-center w-100">
                	    <button class="border-0 rounded-3 px-4 py-2 btn btn-primary text-white five" type="submit">Submit</button>
                	</div>
            	</div>
            </form>
        </div>
    </section>

</body>
</html>