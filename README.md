# CA_test_automation_framework

Etapes récupération des informations pour le fichier de config

${ACCESS_KEY}      [à mettre dans un fichier de config à part, ne pas publier]
${USERNAME}        [à mettre dans un fichier de config à part, ne pas publier]
${REMOTE_URL}      https://${USERNAME}:${ACCESS_KEY}@ondemand.eu-central-1.saucelabs.com:443/wd/hub
${APP}             storage:f0a08710-1518-4b6c-a9b9-4d3faa32a476
${DEVICE_NAME}      Android GoogleAPI Emulator
${PLATFORM_VERSION}     16
${AUTOMATION_NAME}     UiAutomator2
${W3C}              True
${APP_PACKAGE}      com.saucelabs.mydemoapp.android
${APP_ACTIVITY}     com.saucelabs.mydemoapp.android.view.activities.SplashActivity
${NEW_COMMAND_TIMEOUT}     300

où trouver les applications disponibles ? 

ACCESS_KEY => clé d'accès: c'est l'autorisation pour se connecter à sauce lab
Account > user settings > access key
USERNAME => Account > user settings
REMOTE_URL => adresse URL du serveur APPIUM distant (celui qui exécute les tests)
APP => le nom ou l'id de l'application: attention pour utiliser APPIUM 2 il faut utiliser storage:id app ou storage:nom de l'app
obsolète: sauce-storage:id app
DEVICE_NAME => nom de l'appareil utilisé
PLATFORM_VERSION => version d'android utilisée
AUTOMATION_NAME => moteur d'automatisation APPIUM
W3C => norme utilisée par Selenium et Appium pour communiquer avec les navigateurs et devices mobiles
APP_PACKAGE => l'identifiant unique de l'application
app managment > liste apps > cliquer sur l'application 
APP_ACTIVITY => c'est un écran ou une interface utilisateur spécifique d'une application (chaque page Login, Accueil etc.. correspond a une activity)

Pour trouver l'activity du package suivre la procédure:
1- lancer un émulateur en local
2- adb devices pour vérifier que le device est bien lancé
3- installer .apk dans le device
4- lancer la commande shell: adb shell pm dump <com.nom.application> 
ex: adb shell pm dump com.saucelabs.mydemoapp.android | find "Activity" 

retour :
Activity Resolver Table: e5a1c8c com.saucelabs.mydemoapp.android/.view.activities.SplashActivity filter 158ffd5
 [vérifier installation de adb si erreurs]

NEW_COMMAND_TIMEOUT => définit le temps maximum en seconds pendant lequel le serveur Appium attendra une nouvelle commande
venant du script avant de fermer la session automatiquement
