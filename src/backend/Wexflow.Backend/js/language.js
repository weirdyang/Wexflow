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
    languages["en"]["submit"] = "Submit";
    languages["en"]["enter-username"] = "Enter a username.";
    languages["en"]["fp-error"] = "An error occured while sending the email.";
    languages["en"]["fp-success"] = "An email with a new password was sent to: ";
    languages["en"]["lnk-dashboard"] = "Dashboard";
    languages["en"]["lnk-manager"] = "Manager";
    languages["en"]["lnk-designer"] = "Designer";
    languages["en"]["lnk-history"] = "History";
    languages["en"]["lnk-users"] = "Users";
    languages["en"]["lnk-profiles"] = "Profiles";
    languages["en"]["spn-logout"] = "Logout";
    languages["en"]["status-pending-label"] = "Pending";
    languages["en"]["status-running-label"] = "Running";
    languages["en"]["status-done-label"] = "Done";
    languages["en"]["status-failed-label"] = "Failed";
    languages["en"]["status-warning-label"] = "Warning";
    languages["en"]["status-disapproved-label"] = "Rejected";
    languages["en"]["status-stopped-label"] = "Stopped";
    languages["en"]["lbl-show"] = "Show";
    languages["en"]["lbl-entries"] = "entries";
    languages["en"]["spn-entries-count-label"] = "Total entries: ";
    languages["en"]["lbl-from"] = "from";
    languages["en"]["lbl-to"] = "to";
    languages["en"]["btn-search"] = "Search";
    languages["en"]["new-user-action"] = "New user";
    languages["en"]["save-action"] = "Save";
    languages["en"]["delete-action"] = "Delete";
    languages["en"]["tr-createdOn-label"] = "Created on";
    languages["en"]["tr-modifiedOn-label"] = "Modified on";
    languages["en"]["userprofile-slct-label"] = "User profile";
    languages["en"]["email-text-label"] = "Email";
    languages["en"]["change-password"] = "Change password";
    languages["en"]["old-password-text-label"] = "Old password";
    languages["en"]["lbl-new-password"] = "New password";
    languages["en"]["confirm-password-text-label"] = "Confirm password";
    languages["en"]["wf-start"] = "Start";
    languages["en"]["wf-pause"] = "Suspend";
    languages["en"]["wf-resume"] = "Resume";
    languages["en"]["wf-stop"] = "Stop";
    languages["en"]["wf-approve"] = "Approve";
    languages["en"]["wf-reject"] = "Reject";
    languages["en"]["op-not-supported"] = "This operation is not supported.";
    languages["en"]["job-part-1"] = "The job ";
    languages["en"]["job-approved"] = " was approved.";
    languages["en"]["job-rejected"] = " was rejected.";
    languages["en"]["workflows-server-error"] = "An error occured while retrieving workflows. Check that Wexflow server is running correctly."
    languages["en"]["job-approved-error-part-1"] = "An error occured while approving the job ";
    languages["en"]["job-rejected-error-part-1"] = "An error occured while rejecting the job ";
    languages["en"]["job-approved-error-part-2"] = " of the workflow ";
    languages["en"]["th-wf-id"] = "Id";
    languages["en"]["th-wf-n"] = "Name";
    languages["en"]["th-wf-lt"] = "LaunchType";
    languages["en"]["th-wf-e"] = "Enabled";
    languages["en"]["th-wf-a"] = "Approval";
    languages["en"]["th-wf-d"] = "Description";
    languages["en"]["th-job-id"] = "Job Id";
    languages["en"]["th-job-startedOn"] = "Started on";


    // 
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
    languages["fr"]["submit"] = "Soumettre";
    languages["fr"]["enter-username"] = "Enterez un nom d'utilisateur.";
    languages["fr"]["fp-error"] = "Une erreur est survenue lors de l'envoi de l'Email.";
    languages["fr"]["fp-success"] = "Un Email avec un nouveau password a été envoyé à : ";
    languages["fr"]["lnk-dashboard"] = "Tableau de bord";
    languages["fr"]["lnk-manager"] = "Manager";
    languages["fr"]["lnk-designer"] = "Concepteur";
    languages["fr"]["lnk-history"] = "Historique";
    languages["fr"]["lnk-users"] = "Utilisateurs";
    languages["fr"]["lnk-profiles"] = "Profiles";
    languages["fr"]["spn-logout"] = "Se déconnecter";
    languages["fr"]["status-pending-label"] = "En attente";
    languages["fr"]["status-running-label"] = "En cours";
    languages["fr"]["status-done-label"] = "Terminé";
    languages["fr"]["status-failed-label"] = "Échoué";
    languages["fr"]["status-warning-label"] = "Avertissement";
    languages["fr"]["status-disapproved-label"] = "Rejeté";
    languages["fr"]["status-stopped-label"] = "Arrêté";
    languages["fr"]["lbl-show"] = "Monter";
    languages["fr"]["lbl-entries"] = "entrées";
    languages["fr"]["spn-entries-count-label"] = "Nombre d'entrées : ";
    languages["fr"]["lbl-from"] = "de";
    languages["fr"]["lbl-to"] = "à";
    languages["fr"]["btn-search"] = "Rechercher";
    languages["fr"]["new-user-action"] = "Nouvel utilisateur";
    languages["fr"]["save-action"] = "Sauvegarder";
    languages["fr"]["delete-action"] = "Supprimer";
    languages["fr"]["tr-createdOn-label"] = "Créé le";
    languages["fr"]["tr-modifiedOn-label"] = "Modifié le";
    languages["fr"]["userprofile-slct-label"] = "Profile";
    languages["fr"]["email-text-label"] = "Email";
    languages["fr"]["change-password"] = "Changer le mot de passe";
    languages["fr"]["old-password-text-label"] = "Ancien mot de passe";
    languages["fr"]["lbl-new-password"] = "Nouveau mot de passe";
    languages["fr"]["confirm-password-text-label"] = "Confirmer le mot de passe";
    languages["fr"]["wf-start"] = "Démarrer";
    languages["fr"]["wf-pause"] = "Pause";
    languages["fr"]["wf-resume"] = "Reprendre";
    languages["fr"]["wf-stop"] = "Arrêter";
    languages["fr"]["wf-approve"] = "Approuver";
    languages["fr"]["wf-reject"] = "Rejeter";
    languages["fr"]["op-not-supported"] = "Cette opération n'est pas supportée.";
    languages["fr"]["job-part-1"] = "Le job ";
    languages["fr"]["job-approved"] = " a été approuvé.";
    languages["fr"]["job-rejected"] = " a été rejeté.";
    languages["fr"]["workflows-server-error"] = "Une erreur s'est produite lors de la récupération de workflows. Vérifiez que le serveur tourne."
    languages["fr"]["job-approved-error-part-1"] = "Une erreur s'est produite lors de l'approbation du job ";
    languages["fr"]["job-rejected-error-part-1"] = "Une erreur s'est produite lors du rejet du job ";
    languages["fr"]["job-approved-error-part-2"] = " du workflow ";
    languages["fr"]["th-wf-id"] = "Id";
    languages["fr"]["th-wf-n"] = "Nom";
    languages["fr"]["th-wf-lt"] = "LaunchType";
    languages["fr"]["th-wf-e"] = "Activé";
    languages["fr"]["th-wf-a"] = "Approbation";
    languages["fr"]["th-wf-d"] = "Description";
    languages["fr"]["th-job-id"] = "Job Id";
    languages["fr"]["th-job-startedOn"] = "Démarré le";

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