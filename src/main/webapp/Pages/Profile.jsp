<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
    />
    <title>Profile - Brand</title>
    <link
      rel="stylesheet"
      href="../css/profil_assets/bootstrap/css/bootstrap.min.css?h=81031c597b710e11aee3122e1bd58298"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.12.0/css/all.css"
    />
  </head>
  <body id="page-top">
    <div id="wrapper">
      <!-- Start: Sidebar -->
      <nav
        class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0"
        style="background: rgb(28, 57, 142)"
      >
        <div class="container-fluid d-flex flex-column p-0">
          <a
            class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0"
            href="Dashboard.jsp"
            ><div class="sidebar-brand-icon rotate-n-15">
              <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3"><span>BRAND</span></div></a
          >
          <hr class="sidebar-divider my-0" />
          <ul
            class="navbar-nav text-light"
            id="accordionSidebar"
            style="height: 390px; margin-top: 32px"
          >
            <li class="nav-item">
              <a class="nav-link" href="index.html"
                ><i class="fas fa-tachometer-alt"></i
                ><span>&nbsp;Tableau de bord</span></a
              >
            </li>
            <hr class="sidebar-divider" />
            <div class="sidebar-heading">
              <p class="mb-0">gestion de club</p>
            </div>
            <li class="nav-item">
              <a class="nav-link" href="tables.html"
                ><i class="fas fa-table"></i
                ><span>&nbsp;Liste des utilisateurs</span></a
              >
            </li>
            <li class="nav-item">
              <a class="nav-link" href="tables.html"
                ><i class="fas fa-user-friends"></i
                ><span>&nbsp;Liste des abonn&eacutees</span></a
              >
            </li>
            <li class="nav-item">
              <a class="nav-link" href="tables.html"
                ><i class="fas fa-hand-holding-heart"></i
                ><span>Activit&eacutes</span></a
              >
            </li>
            <li class="nav-item">
              <a class="nav-link" href="tables.html"
                ><i class="fas fa-user-clock"></i
                ><span>Demandes d'adhesion</span></a
              >
            </li>
            <hr class="sidebar-divider" />
          </ul>
          <div class="text-center d-none d-md-inline">
            <button
              class="btn rounded-circle border-0"
              id="sidebarToggle"
              type="button"
            ></button>
          </div>
        </div>
      </nav>
      <!-- End: Sidebar -->
      <div class="d-flex flex-column" id="content-wrapper">
        <div id="content">
          <nav
            class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top"
          >
            <div class="container-fluid">
              <button
                class="btn btn-link d-md-none rounded-circle me-3"
                id="sidebarToggleTop"
                type="button"
              >
                <i class="fas fa-bars"></i>
              </button>
              <h3 class="text-dark mb-0">Bonjour Fatima,</h3>
              <ul class="navbar-nav flex-nowrap ms-auto">
                <li class="nav-item dropdown d-sm-none no-arrow">
                  <a
                    class="dropdown-toggle nav-link"
                    aria-expanded="false"
                    data-bs-toggle="dropdown"
                    href="#"
                    ><i class="fas fa-search"></i
                  ></a>
                  <div
                    class="dropdown-menu dropdown-menu-end p-3 animated--grow-in"
                    aria-labelledby="searchDropdown"
                  >
                    <form class="me-auto navbar-search w-100">
                      <div class="input-group">
                        <input
                          class="bg-light form-control border-0 small"
                          type="text"
                          placeholder="Search for ..."
                        />
                        <div class="input-group-append">
                          <button class="btn btn-primary py-0" type="button">
                            <i class="fas fa-search"></i>
                          </button>
                        </div>
                      </div>
                    </form>
                  </div>
                </li>
                <li class="nav-item dropdown no-arrow mx-1">
                  <div
                    class="shadow dropdown-list dropdown-menu dropdown-menu-end"
                    aria-labelledby="alertsDropdown"
                  ></div>
                </li>
                <div class="d-none d-sm-block topbar-divider"></div>
                <li class="nav-item dropdown no-arrow">
                  <div class="nav-item dropdown no-arrow">
                    <a
                      class="dropdown-toggle nav-link"
                      aria-expanded="false"
                      data-bs-toggle="dropdown"
                      href="#"
                      ><span class="d-none d-lg-inline me-2 text-gray-600 small"
                        >Fatima El hadeg</span
                      ><img
                        class="border rounded-circle img-profile"
                        src="../css/profil_assets/img/avatars/avatar1.jpeg?h=0ecc82101fb9a10ca459432faa8c0656"
                    /></a>
                    <div
                      class="dropdown-menu shadow dropdown-menu-end animated--grow-in"
                    >
                      <a class="dropdown-item" href="#"
                        ><i
                          class="fas fa-user fa-sm fa-fw me-2 text-gray-400"
                        ></i
                        >&nbsp;Profil</a
                      >
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#"
                        ><i
                          class="fas fa-sign-out-alt fa-sm fa-fw me-2 text-gray-400"
                        ></i
                        >&nbsp;Quitter</a
                      >
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </nav>
          <div class="container-fluid">
            <h3 class="text-dark mb-4">Profil</h3>
            <div class="row mb-3">
              <div class="col-lg-4">
                <div class="card mb-3">
                  <div class="card-body text-center shadow">
                    <img
                      class="rounded-circle mb-3 mt-4"
                      src="../css/profil_assets/img/dogs/image2.jpeg?h=a0a7d00bcd8e4f84f4d8ce636a8f94d4"
                      width="160"
                      height="160"
                    />
                    <div class="mb-3">
                      <button class="btn btn-primary btn-sm" type="button">
                        Changer Image
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-8">
                <div class="row mb-3 d-none">
                  <div class="col">
                    <div class="card textwhite bg-primary text-white shadow">
                      <div class="card-body">
                        <div class="row mb-2">
                          <div class="col">
                            <p class="m-0">Peformance</p>
                            <p class="m-0"><strong>65.2%</strong></p>
                          </div>
                          <div class="col-auto">
                            <i class="fas fa-rocket fa-2x"></i>
                          </div>
                        </div>
                        <p class="text-white-50 small m-0">
                          <i class="fas fa-arrow-up"></i>&nbsp;5% since last
                          month
                        </p>
                      </div>
                    </div>
                  </div>
                  <div class="col">
                    <div class="card textwhite bg-success text-white shadow">
                      <div class="card-body">
                        <div class="row mb-2">
                          <div class="col">
                            <p class="m-0">Peformance</p>
                            <p class="m-0"><strong>65.2%</strong></p>
                          </div>
                          <div class="col-auto">
                            <i class="fas fa-rocket fa-2x"></i>
                          </div>
                        </div>
                        <p class="text-white-50 small m-0">
                          <i class="fas fa-arrow-up"></i>&nbsp;5% since last
                          month
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col">
                    <div class="card shadow mb-3">
                      <div class="card-header py-3">
                        <p class="text-primary m-0 fw-bold">User Settings</p>
                      </div>
                      <div class="card-body">
                        <form>
                          <div class="row">
                            <div class="col">
                              <div class="mb-3">
                                <label class="form-label" for="first_name"
                                  ><strong>Pr&eacutenom</strong></label
                                ><input
                                  class="form-control"
                                  type="text"
                                  id="first_name"
                                  placeholder="Fatima"
                                  name="first_name"
                                />
                              </div>
                            </div>
                            <div class="col">
                              <div class="mb-3">
                                <label class="form-label" for="last_name"
                                  ><strong>Nom</strong></label
                                ><input
                                  class="form-control"
                                  type="text"
                                  id="last_name"
                                  placeholder="El hadeg"
                                  name="last_name"
                                />
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col">
                              <div class="mb-3">
                                <label class="form-label" for="email"
                                  ><strong>Email </strong></label
                                ><input
                                  class="form-control"
                                  type="email"
                                  id="email"
                                  placeholder="user@example.com"
                                  name="email"
                                />
                              </div>
                            </div>
                            <div class="col">
                              <div class="mb-3">
                                <label class="form-label" for="username"
                                  ><strong>Mot de passe</strong></label
                                ><input
                                  class="form-control"
                                  type="text"
                                  id="username"
                                  placeholder="user.name"
                                  name="username"
                                />
                              </div>
                            </div>
                          </div>
                          <div class="mb-3">
                            <button
                              class="btn btn-primary btn-sm"
                              type="submit"
                            >
                              Enregistrer
                            </button>
                          </div>
                        </form>
                      </div>
                    </div>
                    <div class="card shadow">
                      <div class="card-header py-3">
                        <p class="text-primary m-0 fw-bold">Contact </p>
                      </div>
                      <div class="card-body">
                        <form>
                          <div class="mb-3">
                            <label class="form-label" for="address"
                              ><strong>Addresse</strong></label
                            ><input
                              class="form-control"
                              type="text"
                              id="address"
                              placeholder="Sunset Blvd, 38"
                              name="address"
                            />
                          </div>
                          <div class="row">
                            <div class="col">
                              <div class="mb-3">
                                <label class="form-label" for="city"
                                  ><strong>Ville</strong></label
                                ><input
                                  class="form-control"
                                  type="text"
                                  id="city"
                                  placeholder="Los Angeles"
                                  name="city"
                                />
                              </div>
                            </div>
                            <div class="col">
                              <div class="mb-3">
                                <label class="form-label" for="country"
                                  ><strong>Pays</strong></label
                                ><input
                                  class="form-control"
                                  type="text"
                                  id="country"
                                  placeholder="USA"
                                  name="country"
                                />
                              </div>
                            </div>
                          </div>
                          <div class="mb-3">
                            <button
                              class="btn btn-primary btn-sm"
                              type="submit"
                            >
                              Enregistrer&nbsp;
                            </button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <footer class="bg-white sticky-footer">
          <div class="container my-auto">
            <div class="text-center my-auto copyright">
              <span>Copyright © Brand 2022</span>
            </div>
          </div>
        </footer>
      </div>
      <a class="border rounded d-inline scroll-to-top" href="#page-top"
        ><i class="fas fa-angle-up"></i
      ></a>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../css/profil_assets/js/script.min.js?h=4d952d21517087db850f0bbc41a815ca"></script>
  </body>
</html>
