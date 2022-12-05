<?php
// wylogowanie
session_start();
session_destroy();
header('location:./');
