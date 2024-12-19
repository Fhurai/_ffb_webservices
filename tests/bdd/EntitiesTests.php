<?php

if (file_exists("./utilities/Tests.php"))
    require_once "./utilities/Tests.php";
else if (file_exists("../utilities/Tests.php"))
    require_once "../utilities/Tests.php";

class EntitiesTests extends Tests
{
    /**
     * Implied constructor.
     */
    public function __construct()
    {
        parent::__construct();

        $this->testsUsers();
        $this->testsLinks();
    }

    public function testsUsers(): void
    {

    }

    public function testsLinks(): void
    {

    }
}