window.onload = function () {
    "use strict";

    let updateLanguage = function (language) {
        document.getElementById("lnk-dashboard").innerHTML = language.get("lnk-dashboard");
        document.getElementById("lnk-manager").innerHTML = language.get("lnk-manager");
        document.getElementById("lnk-designer").innerHTML = language.get("lnk-designer");
        document.getElementById("lnk-history").innerHTML = language.get("lnk-history");
        document.getElementById("lnk-users").innerHTML = language.get("lnk-users");
        document.getElementById("lnk-profiles").innerHTML = language.get("lnk-profiles");
        document.getElementById("spn-logout").innerHTML = language.get("spn-logout");
    };

    let language = new Language("lang", updateLanguage);
    language.init();

    let uri = Common.trimEnd(Settings.Uri, "/");
    let lnkRecords = document.getElementById("lnk-records");
    let lnkManager = document.getElementById("lnk-manager");
    let lnkDesigner = document.getElementById("lnk-designer");
    let lnkApproval = document.getElementById("lnk-approval");
    let lnkUsers = document.getElementById("lnk-users");
    let lnkProfiles = document.getElementById("lnk-profiles");
    let lnkNotifications = document.getElementById("lnk-notifications");
    let imgNotifications = document.getElementById("img-notifications");
    let username = "";
    let auth = "";

    let suser = getUser();

    if (suser === null || suser === "") {
        Common.redirectToLoginPage();
    } else {
        let user = JSON.parse(suser);

        username = user.Username;
        let password = user.Password;
        auth = "Basic " + btoa(username + ":" + password);

        Common.get(uri + "/user?username=" + encodeURIComponent(user.Username),
            function (u) {
                if (user.Password !== u.Password) {
                    Common.redirectToLoginPage();
                } else {
                    if (u.UserProfile === 0 || u.UserProfile === 1) {
                        Common.get(uri + "/hasNotifications?a=" + encodeURIComponent(user.Username), function (hasNotifications) {
                            lnkRecords.style.display = "inline";
                            lnkManager.style.display = "inline";
                            lnkDesigner.style.display = "inline";
                            lnkApproval.style.display = "inline";
                            lnkUsers.style.display = "inline";
                            lnkNotifications.style.display = "inline";

                            if (u.UserProfile === 0) {
                                lnkProfiles.style.display = "inline";
                            }

                            if (hasNotifications === true) {
                                imgNotifications.src = "images/notification-active.png";
                            } else {
                                imgNotifications.src = "images/notification.png";
                            }

                            let btnLogout = document.getElementById("btn-logout");
                            document.getElementById("page-header").style.display = "block";
                            document.getElementById("page-content").style.display = "block";

                            btnLogout.onclick = function () {
                                deleteUser();
                                Common.redirectToLoginPage();
                            };
                            document.getElementById("spn-username").innerHTML = " (" + u.Username + ")";

                            //searchText.onkeyup = function (event) {
                            //    event.preventDefault();

                            //    if (event.keyCode === 13) { // Enter
                            //        loadNotifications();
                            //    }

                            //    return false;
                            //};

                            loadNotifications();

                        }, function () { }, auth);
                    } else {
                        Common.redirectToLoginPage();
                    }

                }
            }, function () { }, auth);

        function loadNotifications() {
            // TODO
        }
    }

};