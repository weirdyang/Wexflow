function Language() {
    "use strict";

    let self = this;

    let languages = {};
    languages["en"] = {};
    languages["fr"] = {};

    // en
    languages["en"]["help"] = "Help";
    languages["en"]["about"] = "About";
    languages["en"]["username"] = "Username";
    languages["en"]["password"] = "Password";
    languages["en"]["forgot-password"] = "Forgot Password?";
    languages["en"]["login"] = "Sign in";
    languages["en"]["valid-username"] = "Enter a valid username and password.";
    languages["en"]["wrong-credentials"] = "Wrong credentials.";
    languages["en"]["wrong-password"] = "The password is incorrect.";

    // fr
    languages["fr"]["help"] = "Aide";
    languages["fr"]["about"] = "À propos";
    languages["fr"]["username"] = "Utilisateur";
    languages["fr"]["password"] = "Mot de passe";
    languages["fr"]["forgot-password"] = "Mot de passe oublié ?";
    languages["fr"]["login"] = "Se connecter";
    languages["fr"]["valid-username"] = "Entrez un nom d'utilisateur et un mot de passe valides.";
    languages["fr"]["wrong-credentials"] = "Paramètres de connexion incorrects.";
    languages["fr"]["wrong-password"] = "Mot de passe incorrect.";

    this.get = function (keyword) {
        return languages[self.getLanguage()][keyword] || languages["en"][keyword];
    }

    this.setLanguage = function (code) {
        set("language", code);
    };

    this.getLanguage = function () {
        let code = get("language");
        if (!code) {
            return "en";
        }
        return code;
    }

    function set(key, value) {
        if (isIE()) {
            setCookie(key, value, 365);
        } else {
            window.localStorage.setItem(key, value);
        }
    }

    function get(key) {
        if (isIE()) {
            return getCookie(key);
        } else {
            return window.localStorage.getItem(key);
        }
    }

    function setCookie(cname, cvalue, exdays) {
        let d = new Date();
        d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
        let expires = "expires=" + d.toUTCString();
        document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
    }

    function getCookie(cname) {
        let name = cname + "=";
        let ca = document.cookie.split(';');
        for (let i = 0; i < ca.length; i++) {
            let c = ca[i];
            while (c.charAt(0) === ' ') {
                c = c.substring(1);
            }
            if (c.indexOf(name) === 0) {
                return c.substring(name.length, c.length);
            }
        }
        return "";
    }

    function isIE() {
        let ua = navigator.userAgent;
        /* MSIE used to detect old browsers and Trident used to newer ones*/
        let is_ie = ua.indexOf("MSIE ") > -1 || ua.indexOf("Trident/") > -1;

        return is_ie;
    }

}