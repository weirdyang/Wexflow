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
    languages["en"]["browse"] = "Browse";
    languages["en"]["diagram"] = "Diagram";
    languages["en"]["graph"] = "Graph";
    languages["en"]["json"] = "JSON";
    languages["en"]["xml"] = "XML";
    languages["en"]["export"] = "Export";
    languages["en"]["import"] = "Import";
    languages["en"]["newworkflow"] = "New Workflow";
    languages["en"]["searchtasks"] = "Search tasks";
    languages["en"]["task-id"] = "Id";
    languages["en"]["task-desc"] = "Description";
    languages["en"]["task-enabled"] = "Enabled";
    languages["en"]["btn-new-setting"] = "New setting";
    languages["en"]["wf-remove-setting"] = "Delete";
    languages["en"]["task-doc"] = "Open task documentation";
    languages["en"]["task-settings"] = "Task settings";
    languages["en"]["wf-settings-label"] = "Workflow settings";
    languages["en"]["savehelp"] = "Ctrl+S to save.";
    languages["en"]["wfid-label"] = "Id";
    languages["en"]["wfname-label"] = "Name";
    languages["en"]["wfdesc-label"] = "Description";
    languages["en"]["wflaunchtype-label"] = "LaunchType";
    languages["en"]["wfperiod-label"] = "Period";
    languages["en"]["wfcronexp-label"] = "Cron expression";
    languages["en"]["wfenabled-label"] = "Enabled";
    languages["en"]["wfapproval-label"] = "Approval";
    languages["en"]["wfenablepj-label"] = "Enable parallel jobs";
    languages["en"]["wf-local-vars-label"] = "Local variables";
    languages["en"]["wf-add-var"] = "New variable";
    languages["en"]["removeblock"] = "Delete tasks";
    languages["en"]["removeworkflow"] = "Delete workflow";
    languages["en"]["wf-remove-var"] = "Delete";
    languages["en"]["confirm-delete-tasks"] = "Are you sure you want to delete all the tasks?";
    languages["en"]["confirm-delete-workflow"] = "Are you sure you want to delete this workflow?";
    languages["en"]["confirm-delete-setting"] = "Are you sure you want to remove this setting?";
    languages["en"]["confirm-delete-task"] = "Are you sure you want to delete this task?";
    languages["en"]["confirm-cron"] = "The cron expression format is not valid.\nRead the documentation?";
    languages["en"]["confirm-delete-var"] = "Are you sure you want to delete this variable?";
    languages["en"]["confirm-delete-workflows"] = "Are you sure you want to delete selected workflows?";
    languages["en"]["toast-task-names-error"] = "An error occured while retrieving task names.";
    languages["en"]["toast-workflow-id-error"] = "An error occured while getting a new workflow id.";
    languages["en"]["toast-workflow-deleted"] = "Workflow deleted with success.";
    languages["en"]["toast-workflow-delete-error"] = "An error occured while deleting the workflow.";
    languages["en"]["toast-settings-error"] = "An error occured while retrieving settings.";
    languages["en"]["toast-save-workflow-diag"] = "Workflow saved and loaded with success from diagram view.";
    languages["en"]["toast-save-workflow-diag-error"] = "An error occured while saving the workflow from diagram view.";
    languages["en"]["toast-workflow-name"] = "Enter a name for this workflow.";
    languages["en"]["toast-workflow-launchType"] = "Select a launchType for this workflow.";
    languages["en"]["toast-workflow-period"] = "Enter a period for this workflow.";
    languages["en"]["toast-workflow-cron"] = "Enter a cron expression for this workflow.";
    languages["en"]["toast-workflow-period-error"] = "The period format is not valid. The valid format is: dd.hh:mm:ss";
    languages["en"]["toast-workflow-id"] = "The workflow id is already in use. Enter another one.";
    languages["en"]["toast-workflow-id-error"] = "Enter a valid workflow id.";
    languages["en"]["toast-save-workflow-json"] = "Workflow saved and loaded with success from JSON view.";
    languages["en"]["toast-save-workflow-json-error"] = "An error occured while saving the workflow from JSON view.";
    languages["en"]["toast-save-workflow-xml"] = "Workflow saved and loaded with success from XML view.";
    languages["en"]["toast-save-workflow-xml-error"] = "An error occured while saving the workflow from XML view.";
    languages["en"]["toast-graph-error"] = "An error occurred while retrieving the graph.";
    languages["en"]["toast-graph-save-error"] = "You must save the workflow to view the graph.";
    languages["en"]["toast-workflows-deleted"] = "Workflows deleted with success.";
    languages["en"]["toast-workflows-delete-error"] = "An error occured while deleting workflows.";
    languages["en"]["toast-workflows-delete-info"] = "Select workflows to delete.";
    languages["en"]["toast-open-workflow-info"] = "Choose a workflow to open.";
    languages["en"]["toast-upload-error"] = "An error occured while uploading the file: ";
    languages["en"]["toast-upload-success"] = " loaded with success.";
    languages["en"]["toast-upload-not-valid"] = " is not valid.";
    languages["en"]["wf-open"] = "Open";
    languages["en"]["wfs-delete"] = "Delete";
    languages["en"]["open-wfs-msg"] = "Ctrl+O to open this window.";
    languages["en"]["search-workflows"] = "Search workflows";

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
    languages["fr"]["browse"] = "Parcourir";
    languages["fr"]["diagram"] = "Diagramme";
    languages["fr"]["graph"] = "Graphe";
    languages["fr"]["json"] = "JSON";
    languages["fr"]["xml"] = "XML";
    languages["fr"]["export"] = "Exporter";
    languages["fr"]["import"] = "Importer";
    languages["fr"]["newworkflow"] = "Nouveau Workflow";
    languages["fr"]["searchtasks"] = "Rechercher des tâches";
    languages["fr"]["task-id"] = "Id";
    languages["fr"]["task-desc"] = "Description";
    languages["fr"]["task-enabled"] = "Activée";
    languages["fr"]["btn-new-setting"] = "Nouveau paramètre";
    languages["fr"]["wf-remove-setting"] = "Supprimer";
    languages["fr"]["task-doc"] = "Ouvrir la documentation de la tâche";
    languages["fr"]["task-settings"] = "Paramètres de la tâche";
    languages["fr"]["wf-settings-label"] = "Paramètres";
    languages["fr"]["savehelp"] = "Ctrl+S pour sauvegarder.";
    languages["fr"]["wfid-label"] = "Id";
    languages["fr"]["wfname-label"] = "Nom";
    languages["fr"]["wfdesc-label"] = "Description";
    languages["fr"]["wflaunchtype-label"] = "LaunchType";
    languages["fr"]["wfperiod-label"] = "Période";
    languages["fr"]["wfcronexp-label"] = "Expression cron";
    languages["fr"]["wfenabled-label"] = "Activé";
    languages["fr"]["wfapproval-label"] = "Approbation";
    languages["fr"]["wfenablepj-label"] = "Activer les jobs parallels";
    languages["fr"]["wf-local-vars-label"] = "Variables locales";
    languages["fr"]["wf-add-var"] = "Nouvelle variable";
    languages["fr"]["removeblock"] = "Supprimer les tâches";
    languages["fr"]["removeworkflow"] = "Supprimer le workflow";
    languages["fr"]["wf-remove-var"] = "Supprimer";
    languages["fr"]["confirm-delete-tasks"] = "Êtes-vous sûr de vouloir supprimer toutes les tâches ?";
    languages["fr"]["confirm-delete-workflow"] = "Êtes-vous sûr de vouloir supprimer ce workflow ?";
    languages["fr"]["confirm-delete-setting"] = "Êtes-vous sûr de vouloir supprimer ce paramètre ?";
    languages["fr"]["confirm-delete-task"] = "Êtes-vous sûr de vouloir supprimer cette tâche ?";
    languages["fr"]["confirm-cron"] = "L'expression cron n'est pas valide.\nConsulter la documentation?";
    languages["fr"]["confirm-delete-var"] = "Êtes-vous sûr de vouloir supprimer cette variable ?";
    languages["fr"]["confirm-delete-workflows"] = "Êtes-vous sûr de vouloir supprimer les workflows sélectionnés?";
    languages["fr"]["toast-task-names-error"] = "Une erreur s'est produite lors de la récupération des tâches.";
    languages["fr"]["toast-workflow-id-error"] = "Une erreur s'est produite lors de la récupération d'un nouveau workflow id.";
    languages["fr"]["toast-workflow-deleted"] = "Workflow supprimé avec succès.";
    languages["fr"]["toast-workflow-delete-error"] = "Une erreur s'est prosuite lors de la suppression du workflow.";
    languages["fr"]["toast-settings-error"] = "Une erreur s'est produite lors de la récupération des paramètres.";
    languages["fr"]["toast-save-workflow-diag"] = "Workflow sauvegardé et chargé avec succès depuis la vue diagramme.";
    languages["fr"]["toast-save-workflow-diag-error"] = "Une erreur s'est produite lors de la sauvegarde du workflow depuis la vue diagramme.";
    languages["fr"]["toast-workflow-name"] = "Entrez un nom pour ce workflow.";
    languages["fr"]["toast-workflow-launchType"] = "Sélectionnez un launchType pour ce workflow.";
    languages["fr"]["toast-workflow-period"] = "Entrez une période pour ce workflow.";
    languages["fr"]["toast-workflow-cron"] = "Entrez une expression cron pour ce workflow.";
    languages["fr"]["toast-workflow-period-error"] = "La période n'est pas valide. Le format valide est : dd.hh:mm:ss";
    languages["fr"]["toast-workflow-id"] = "Le workflow id est déjà utilisé. Entrez-en un nouveau.";
    languages["fr"]["toast-workflow-id-error"] = "Entrez un workflow id valide.";
    languages["fr"]["toast-save-workflow-json"] = "Workflow sauvegardé et chargé avec succès depuis la vue  JSON.";
    languages["fr"]["toast-save-workflow-json-error"] = "Une erreur s'est produite lors de la sauvegarde du workflow depuis la vue JSON.";
    languages["fr"]["toast-save-workflow-xml"] = "Workflow sauvegardé et chargé avec succès depuis la vue  XML.";
    languages["fr"]["toast-save-workflow-xml-error"] = "Une erreur s'est produite lors de la sauvegarde du workflow depuis la vue XML.";
    languages["fr"]["toast-graph-error"] = "Une erreur s'est produite lors de la récupération du graphe.";
    languages["fr"]["toast-graph-save-error"] = "Vous devez enregistrer le workflow pour voir le graphe.";
    languages["fr"]["toast-workflows-deleted"] = "Workflows supprimés avec succès.";
    languages["fr"]["toast-workflows-delete-error"] = "Une erreur s'est produite lors de la suppression des workflows.";
    languages["fr"]["toast-workflows-delete-info"] = "Sélectionnez des workflows à supprimer.";
    languages["fr"]["toast-open-workflow-info"] = "Choissez un workflow à ouvrir.";
    languages["fr"]["toast-upload-error"] = "Une erreur s'est produite lors de l'upload du fichier : ";
    languages["fr"]["toast-upload-success"] = " chargé avec succès.";
    languages["fr"]["toast-upload-not-valid"] = " n'est pas valide.";
    languages["fr"]["wf-open"] = "Ouvrir";
    languages["fr"]["wfs-delete"] = "Supprimer";
    languages["fr"]["open-wfs-msg"] = "Ctrl+O pour ouvrir cette fenêtre.";
    languages["fr"]["search-workflows"] = "Rechercher de workflows";

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