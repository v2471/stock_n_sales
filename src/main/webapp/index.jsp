<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

  <head>
    <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>goodies</title>

        <!-- bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

          <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
          <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

          <!-- icons -->
          <script src="https://kit.fontawesome.com/788c897afd.js" crossorigin="anonymous"></script>
          <!-- fonts -->
          <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="crossorigin">
              <link href="https://fonts.googleapis.com/css2?family=ZCOOL+QingKe+HuangYou&display=swap" rel="stylesheet">
                <!-- source -->
                <link rel="stylesheet" href="index.css"></head>

                <body>
                  <header class="head">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                      </button>
                      <a class="navbar-brand" href="#">name</a>

                      <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                        <ul class="navbar-nav mr-auto mt-2 mt-lg-0 nav-list">
                          <li class="nav-item active nav-list-items">
                            <a class="nav-link" href="#">Home</a>
                          </li>
                          <li class="nav-item nav-list-items">
                            <a class="nav-link" href="#">Link</a>
                          </li>
                          <li class="nav-item nav-list-items">
                            <a class="nav-link" href="#">Disabled</a>
                          </li>
                          <li class="nav-item nav-list-items">
                            <p class="nav-link">Today's date: <%= (new java.util.Date()).toLocaleString()%> </p>
                          </li>
                          </ul>
                        </div>
                      </nav>

                      <div class="content container-fluid col-lg-8">
                        <ul class="list-group">
                          <li class="list-group-item  d-flex justify-content-between align-items-center  bg-light">
                            <a href="add.jsp" class="text-success">Add Stock</a>
                            <span class="badge bg-success rounded-pill">
                              <i class="fa-solid fa-circle-plus align-right"></i>
                            </span>
                          </li>
                          <li class="list-group-item d-flex justify-content-between align-items-center bg-light">
                            <a href="#" class="text-info">Sales</a>
                            <span class="badge bg-info rounded-pill">
                              <i class="fa-solid fa-file-invoice-dollar"></i>
                            </span>
                          </li>
                          <li class="list-group-item d-flex justify-content-between align-items-center bg-light">
                            <a href="#">View Report</a>
                            <span class="badge bg-primary rounded-pill">
                              <i class="fa-solid fa-file"></i>
                            </span>
                          </li>
                        </ul>
                      </div>
                    </header>

                  </body>

                </html>
