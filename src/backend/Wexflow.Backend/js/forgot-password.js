function ForgotPassword() {
    "use strict";

    // lang
    let language = new Language();

    function updateLanguage() {
        let code = language.getLanguage();
        if (code === "en") {
            document.getElementById("lang").title = "French";
            document.getElementById("lang-img").src = "images/fr.png";
        } else if (code === "fr") {
            document.getElementById("lang").title = "English";
            document.getElementById("lang-img").src = "images/en.png";
        }
        document.getElementById("help").innerHTML = language.get("help");
        document.getElementById("about").innerHTML = language.get("about");
        document.getElementById("lbl-username").innerHTML = language.get("username");
        document.getElementById("btn-submit").value = language.get("submit");
    }
    updateLanguage();

    document.getElementById("lang").onclick = function () {
        let code = language.getLanguage();
        if (code === "en") {
            language.setLanguage("fr");
        } else if (code === "fr") {
            language.setLanguage("en");
        }
        updateLanguage();
    };

    var uri = Common.trimEnd(Settings.Uri, "/");
    var txtUsername = document.getElementById("txt-username");
    var btnSubmit = document.getElementById("btn-submit");

    btnSubmit.onclick = function () {
        sendEmail();
    };

    txtUsername.onkeyup = function (e) {
        e.preventDefault();
        if (e.keyCode === 13) {
            sendEmail();
        }
    };

    function sendEmail() {
        btnSubmit.disabled = true;

        var username = txtUsername.value;

        if (username === "") {
            Common.toastInfo(language.get("enter-username"));
            btnSubmit.disabled = false;
            return;
        }

        Common.post(uri + "/resetPassword?u=" + encodeURIComponent(username), function (val) {
            if (val === true) {
                Common.toastSuccess(language.get("fp-success") + username);
                setTimeout(function () {
                    Common.redirectToLoginPage();
                }, 5000);
            } else {
                Common.toastError(language.get("fp-error"));
                btnSubmit.disabled = false;
            }
        });
    }

}