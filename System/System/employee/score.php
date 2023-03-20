<?php
expWeights=30;
levelWeights=4;

function calculateScore($experience, $rexperience, $expWeights, $levelWeights) {
    $score = 0;
    foreach ($rexperience as $experience) {
        if (in_array($experience, $experience)) {
            $level = $experience[$experience];
            $score += $expWeights[$experience] * $levelWeights[$level];
        }
    }
    return $score;
}

?>