$barre =  "-------------------------------------------------------------------" 
$presentation = "Script de personnalisation des PC de l’entreprise :"
$n = "";

Write-Output $barre;
Write-Output $presentation;
Write-Output $barre;
Write-Output $n;

$num = Read-Host "Veuillez entrer le numéro de poste (entre 1 et 24)"

while (($num -gt 24) -or ($num -lt 1)) {
    Write-Output $n
    $num = Read-Host "Veuillez entrer le numéro de poste (entre 1 et 24)"
    Write-Output $n
}


Write-Output $n;
$nom = "PC-poste-" + $num

$texte = "=> Modification du nom de l’ordinateur en " + '"'  + $nom + '"'
Write-Output $texte

Rename-Computer -NewName $nom

$restart = Read-Host "Voulez-vous redémarrer maintenant le PC pour que le changement soit effectif ? (o/N) "


if ($restart -eq "o") {

    Restart-Computer

}