<% 
    String email=(String) session.getAttribute("email"); 
    String phone=(String) session.getAttribute("phone"); 
    String profession=(String) session.getAttribute("profession"); 
    String experience=(String) session.getAttribute("experience"); 
    String rate=(String) session.getAttribute("rate"); 
    String totalProject=(String) session.getAttribute("totalProject"); 
    String english_level=(String) session.getAttribute("english_level"); 
    String availability=(String) session.getAttribute("availability"); 
    String bio=(String) session.getAttribute("bio"); 
    String profileImg=(String) session.getAttribute("profileImg"); 
%>


<style>
    .profile-container {
        margin: 0 auto;
        max-width: 700px;
        padding: 20px;
        background-color: aliceblue;
    }

    .profile-header {
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .profile-photo {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        object-fit: cover;
    }

    .profile-info {
        margin-left: 20px;
    }

    .profile-name {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 10px;
    }

    .profile-bio {
        font-size: 16px;
    }

    .edit-profile-btn {
        background-color: blueviolet;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .profile-section {
        margin-bottom: 20px;
    }

    .toggle-btn {
        background-color: blueviolet;
        color: white;
        padding: 8px 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .toggle-btn:hover {
        background-color: blueviolet;
    }
    .profile-img {
        position: relative;
        display: inline-block;
    }

    .profile-img .profile-photo {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        object-fit: cover;
        transition: transform 0.3s ease;
    }

    .profile-img:hover .profile-photo {
        transform: scale(1.05);
    }
    

    .edit-form{
        width: 500px;
        padding: 30px;
        background-color: white;
        border-radius: 12px;
    }
    .edit-form h1{
        text-align: center;
        margin: 30px auto;
    }
    .edit-form form{
        width: 100%;
    }
    .edit-form form label{
        font-size: 18px;
        padding: 4px auto;
    }
    .edit-form form input{
        width: 100%;
        padding: 8px;
        border: none;
        border-bottom: 1px solid blueviolet;
        margin: 4px auto;
        outline: none;
    }
    .edit-form form button{
        background-color: blueviolet;
        border: none;
        border-radius: 30px;
        font-size: 18px;
        padding: 10px;
        width: 100%;
        display: block;
        color: white;
        margin-top: 20px;
    }

    .edit-form{
        display: flex;
        flex-direction: column;
        justify-content: center;
        margin: 20px auto;
    }
    .editProfiles{

        display: none;
    }

</style>

<div class="profile" id="edit-profiles">

    <div class="profile-container">
        <div class="profile-header">

            <div class="profile-img">
                <img src="img/<%=profileImg%>" alt="Profile Photo" class="profile-photo">
                
            </div>
            <div class="profile-info">
                <h2 class="profile-name">${name}</h2>
                <p class="profile-bio">${bio}</p>
            </div>
            <button class="edit-profile-btn" id="edit-profile-btn">Edit Profile</button>
        </div>
        <div class="profile-details" id="profileDetails">
            <div class="profile-section" id="section1">
                <h3>Email</h3>
                <p id="email">${email}</p>
                <h3>Phone</h3>
                <p id="phone">${phone}</p>
                <h3>Profession</h3>
                <p id="profession">${profession}</p>
                <h3>Experience</h3>
                <p id="experience">${experience}</p>
                <button class="toggle-btn">Show More</button>
            </div>
            <div class="profile-section" id="section2" style="display: none;">

                <h3>Hourly Rate</h3>
                <p id="rate">${rate}$/hr</p>
                <h3>Total Projects</h3>
                <p id="totalProjects">${totalProject}</p>
                <h3>english_level</h3>
                <p id="totalProjects">${english_level}</p>
                <h3>availability</h3>
                <p id="totalProjects">${availability}</p>
                <button class="toggle-btn">Show Less</button>
            </div>
        </div>
        <a href="Logout"><b style=" font-size: 20px;">Logout</b></a>

    </div>

</div>

<div class="editProfiles" id="editProfiles">
    <div class="edit-form">
        <h1>Update your profile information</h1>
        <br><br>
        <form action="update_details" method="post" enctype="multipart/form-data">
            <label for="name">Enter your Full name here</label><br>
            <input type="name" name="upname" id="name" value="${name}"><br><br>

            <label for="email">Enter your email here</label><br>
            <input type="email" name="upemail" id="email" value="${email}"><br><br>

            <label for="phone">Enter your Phone No</label><br>
            <input type="text" name="upphone" id="phone" value="${phone}"><br><br>  

            <label for="profession">Enter your profession</label><br>
            <input type="text" name="upprofession" id="profession" value="${profession}"><br><br>

            <label for="experience">Enter your experience (year)</label><br>
            <input type="text" name="upexperience" id="experience" value="${experience}"><br><br>

            <label for="rate">Enter your rate ($ / hour)</label><br>
            <input type="text" name="uprate" id="rate" value="${rate}"><br><br>

            <label for="totalProject">Enter your totalProject</label><br>
            <input type="text" name="uptotalProject" id="totalProject" value="${totalProject}"><br><br>

            <label for="english_level">Enter your english_level</label><br>
            <select name="upenglish_level" id="english_level">
                <option value="none">${english_level}</option>
                <option value="Basic">Basic</option>
                <option value="Medium">Medium</option>
                <option value="Expert">Expert</option>
            </select><br><br>

            <label for="availability">Enter your availability</label><br>
            <input type="text" name="upavailability" id="availability" value="${availability}"><br><br>

            <label for="bio">Enter your bio</label><br>
            <textarea name="upbio" rows="7" cols="65" id="bio" >${bio}</textarea><br><br>
            <label for="pimg">Update your profile</label><br>
            <input type="file" id="pimg" accept="image/*" name="pimage">
            <br>

            <button type="submit" id="saveEdit">save</button>
        </form>
    </div>
</div>









<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
    $(document).ready(function () {
        const changeImageBtn = $('.change-image-btn');
        const imageUploadInput = $('#image-upload');

        changeImageBtn.on('click', function (e) {
            e.stopPropagation(); // Stop event propagation to prevent double triggering
            imageUploadInput.click();
        });


    });
    $(document).ready(function () {
        $(".toggle-btn").click(function () {
            $(this).closest(".profile-section").toggle();
            $(this).closest(".profile-section").siblings(".profile-section").toggle();
        });
    });

    $(document).ready(function () {
        $("#edit-profile-btn").click(function () {
            $("#edit-profiles").hide();
            $("#editProfiles").show();
        })

    })

</script>