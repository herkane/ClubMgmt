<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!-- End: Navigation with Button -->
  
    <div class="container">
      <div class="card shadow-lg o-hidden border-0 my-5" style="margin-top:1rem! important">
        <div class="card-body p-0">
          <div class="row">
            <div class="col-lg-7">
              <div class="p-5">
                <div class="text-center">
                  <h4 class="text-dark mb-4">Create an Account!</h4>
                </div>
                <form class="user">
                  <div class="row mb-3">
                    <div class="col-sm-6 mb-3 mb-sm-0">
                      <input
                        class="form-control form-control-user"
                        type="text"
                        id="exampleFirstName"
                        placeholder="First Name"
                        name="first_name"
                      />
                    </div>
                    <div class="col-sm-6">
                      <input
                        class="form-control form-control-user"
                        type="text"
                        id="exampleFirstName"
                        placeholder="Last Name"
                        name="last_name"
                      />
                    </div>
                  </div>
                  <div class="mb-3">
                    <input
                      class="form-control form-control-user"
                      type="email"
                      id="exampleInputEmail"
                      aria-describedby="emailHelp"
                      placeholder="Email Address"
                      name="email"
                    />
                  </div>
                  <div class="row mb-3">
                    <div class="col-sm-6 mb-3 mb-sm-0">
                      <input
                        class="form-control form-control-user"
                        type="password"
                        id="examplePasswordInput"
                        placeholder="Password"
                        name="password"
                      />
                    </div>
                    <div class="col-sm-6">
                      <input
                        class="form-control form-control-user"
                        type="password"
                        id="exampleRepeatPasswordInput"
                        placeholder="Repeat Password"
                        name="password_repeat"
                      />
                    </div>
                  </div>
                  
                  
                  
                  
                  
                  
                  
                  
                  
                
                  
                  <div style="text-align:-webkit-center;">
                  <div class="card mb-3" style="width: 190px; align-items:center; text-align:-webkit-center">
                    <div class="card-body text-center shadow"style="  padding: 0px;padding-top: 0px;padding-left: 0px;padding-bottom: 0px;width: 190px;height: 237.942px;border-radius: 0px; ">
                      <div class="form-input">
  						 <div class="preview" >
                     
                     
                      <img id="file-ip-1-preview"
                        class="rounded-circle mb-3 mt-4"
                        src="../css/signin_assets/img/welcome.svg?h=13daa808663ca5c8df5445f7b9775855&quot"
                        width="160"
                        height="160"
                      
                        
                        /> 
                       </div>
                      
                      <div class="mb-3">
                      <label for="file-ip-1" style="color: black" class="btn btn-secondary btn-sm">Upload Image</label>
                        <input id="file-ip-1" class="btn btn-secondary btn-sm" type="file" style="background-color:grey; opacity: 0" onchange="showPreview(event);" accept="image/*">
                      </div>
                    </div>
                  </div>
                  </div>
                  
                    
                  
                  
                  <button
                    class="btn btn-primary d-block btn-user w-100"
                    type="submit"
                    style="border-radius:5px"
                  >
                    Register Account
                  </button>
                </form>
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                <div class="text-center">
                  <a class="small" href="signin.jsp"
                    >Already have an account? Login!</a>
                </div>
              </div>
            </div>
            <div class="col-lg-5 d-none d-lg-flex">
              <div
                class="flex-grow-1 bg-register-image"
                style="
                  background: url(&quot;../css/signin_assets/img/welcome.svg?h=16522e3cb12ac0dd75f76d37416b5125&quot;) center / contain no-repeat;"></div>
            </div>
          </div>
        </div>
      </div>
      
      
      
      
      
    </div>