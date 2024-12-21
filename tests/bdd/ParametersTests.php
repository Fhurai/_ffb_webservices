<?php

if (file_exists("./utilities/Tests.php"))
    require_once "./utilities/Tests.php";
else if (file_exists("../utilities/Tests.php"))
    require_once "../utilities/Tests.php";

if (file_exists("../../src/table/RatingsTable.php"))
    require_once "../../src/table/RatingsTable.php";
else if (file_exists("../src/table/RatingsTable.php"))
    require_once "../src/table/RatingsTable.php";

if (file_exists("../../src/table/ScoresTable"))
    require_once "../../src/table/ScoresTable.php";
else if (file_exists("../src/table/ScoresTable.php"))
    require_once "../src/table/ScoresTable.php";

    if (file_exists("../../src/table/ActionsTable"))
    require_once "../../src/table/ActionsTable.php";
else if (file_exists("../src/table/ActionsTable.php"))
    require_once "../src/table/ActionsTable.php";

    if (file_exists("../../src/table/TagTypesTable"))
    require_once "../../src/table/TagTypesTable.php";
else if (file_exists("../src/table/TagTypesTable.php"))
    require_once "../src/table/TagTypesTable.php";

/**
 * Parameters tests class.
 */
class ParametersTests extends Tests
{
    /**
     * Implied constructor.
     */
    public function __construct()
    {
        parent::__construct();
        
        // Do all tests.
        $this->testsRatings();
        $this->testsScores();
        $this->testsActions();
        $this->testsTagTypes();
    }

    /**
     * Rating tests method.
     * @return void
     */
    public function testsRatings(): void
    {
        // Table creation for tests.
        $ratingsTable = new RatingsTable("tests");

        // Case get() without problem.
        $parameter = $ratingsTable->get(1);
        $this->addEqualsCheck("Ratings_GET_id", 1, $parameter->getId());
        $this->addEqualsCheck("Ratings_GET_name", "K+ / 7", $parameter->getName());

        // Case get() with exception.
        try {
            $parameter = $ratingsTable->get(6);
            $this->addEqualsCheck("Ratings_GET_exception",1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Ratings_GET_exception", FfbTableException::class, $e::class);
        }

        // Search complete
        $parameters = $ratingsTable->search();
        $this->addEqualsCheck("Ratings_SEARCH_complete_count", 5, count($parameters));
        $this->addEqualsCheck("Ratings_SEARCH_complete_min", 0, $parameters[0]->getId());
        $this->addEqualsCheck("Ratings_SEARCH_complete_max", 4, $parameters[count($parameters) - 1]->getId());

        // Search with conditions
        $parameters = $ratingsTable->search(["conditions" => ["name" => "LIKE 'K%'"]]);
        $this->addEqualsCheck("Ratings_SEARCH_conditions_count", 2, count($parameters));
        $this->addEqualsCheck("Ratings_SEARCH_conditions_min", 0, $parameters[0]->getId());
        $this->addEqualsCheck("Ratings_SEARCH_conditions_max", 1, $parameters[count($parameters) - 1]->getId());

        // Search with order
        $parameters = $ratingsTable->search(["order" => ["property" => ["name"], "direction" => "DESC"]]);
        $this->addEqualsCheck("Ratings_SEARCH_order_count", 5, count($parameters));
        $this->addEqualsCheck("Ratings_SEARCH_order_min", 2, $parameters[0]->getId());
        $this->addEqualsCheck("Ratings_SEARCH_order_max", 0, $parameters[count($parameters) - 1]->getId());

        // Search with filter
        $parameters = $ratingsTable->search(["filter" => ["limit" => 2, "offset" => 3]]);
        $this->addEqualsCheck("Ratings_SEARCH_filter_count", 3, count($parameters));
        $this->addEqualsCheck("Ratings_SEARCH_filter_min", 2, $parameters[0]->getId());
        $this->addEqualsCheck("Ratings_SEARCH_filter_max", 4, $parameters[count($parameters) - 1]->getId());

        // Search with conditions & order
        $parameters = $ratingsTable->search(["conditions" => ["name" => "LIKE 'M%'"], "order" => ["property" => ["name"], "direction" => "DESC"]]);
        $this->addEqualsCheck("Ratings_SEARCH_order_conditions_count", 2, count($parameters));
        $this->addEqualsCheck("Ratings_SEARCH_order_conditions_min", 4, $parameters[0]->getId());
        $this->addEqualsCheck("Ratings_SEARCH_order_conditions_max", 3, $parameters[count($parameters) - 1]->getId());

        // Search with filter & order
        $parameters = $ratingsTable->search(["filter" => ["limit" => 2, "offset" => 3], "order" => ["property" => ["id"], "direction" => "DESC"]]);
        $this->addEqualsCheck("Ratings_SEARCH_order_filter_count", 3, count($parameters));
        $this->addEqualsCheck("Ratings_SEARCH_order_filter_min", 2, $parameters[0]->getId());
        $this->addEqualsCheck("Ratings_SEARCH_order_filter_max", 0, $parameters[count($parameters) - 1]->getId());
    }

    /**
     * Scores tests method.
     * @return void
     */
    public function testsScores(): void
    {
        // Table creation for tests.
        $scoresTable = new ScoresTable("tests");

        // Case get() without problem.
        $parameter = $scoresTable->get(1);
        $this->addEqualsCheck("Scores_GET_id", 1, $parameter->getId());
        $this->addEqualsCheck("Scores_GET_name", "Poor", $parameter->getName());

        // Case get() with exception.
        try {
            $parameter = $scoresTable->get(6);
            $this->addEqualsCheck("Scores_GET_exception",1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Scores_GET_exception", FfbTableException::class, $e::class);
        }

        // Search complete
        $parameters = $scoresTable->search();
        $this->addEqualsCheck("Scores_SEARCH_complete_count", 6, count($parameters));
        $this->addEqualsCheck("Scores_SEARCH_complete_min", 0, $parameters[0]->getId());
        $this->addEqualsCheck("Scores_SEARCH_complete_max", 5, $parameters[count($parameters) - 1]->getId());

        // Search with conditions
        $parameters = $scoresTable->search(["conditions" => ["name" => "LIKE '%acceptable%'"]]);
        $this->addEqualsCheck("Scores_SEARCH_conditions_count", 2, count($parameters));
        $this->addEqualsCheck("Scores_SEARCH_conditions_min", 0, $parameters[0]->getId());
        $this->addEqualsCheck("Scores_SEARCH_conditions_max", 3, $parameters[count($parameters) - 1]->getId());

        // Search with order
        $parameters = $scoresTable->search(["order" => ["property" => ["name"], "direction" => "DESC"]]);
        $this->addEqualsCheck("Scores_SEARCH_order_count", 6, count($parameters));
        $this->addEqualsCheck("Scores_SEARCH_order_min", 0, $parameters[0]->getId());
        $this->addEqualsCheck("Scores_SEARCH_order_max", 3, $parameters[count($parameters) - 1]->getId());

        // Search with filter
        $parameters = $scoresTable->search(["filter" => ["limit" => 2, "offset" => 3]]);
        $this->addEqualsCheck("Scores_SEARCH_filter_count", 3, count($parameters));
        $this->addEqualsCheck("Scores_SEARCH_filter_min", 2, $parameters[0]->getId());
        $this->addEqualsCheck("Scores_SEARCH_filter_max", 4, $parameters[count($parameters) - 1]->getId());

        // Search with conditions & order
        $parameters = $scoresTable->search(["conditions" => ["name" => "LIKE '%oo%'"], "order" => ["property" => ["name"], "direction" => "DESC"]]);
        $this->addEqualsCheck("Scores_SEARCH_order_conditions_count", 2, count($parameters));
        $this->addEqualsCheck("Scores_SEARCH_order_conditions_min", 1, $parameters[0]->getId());
        $this->addEqualsCheck("Scores_SEARCH_order_conditions_max", 4, $parameters[count($parameters) - 1]->getId());

        // Search with filter & order
        $parameters = $scoresTable->search(["filter" => ["limit" => 2, "offset" => 3], "order" => ["property" => ["id"], "direction" => "DESC"]]);
        $this->addEqualsCheck("Scores_SEARCH_order_filter_count", 3, count($parameters));
        $this->addEqualsCheck("Scores_SEARCH_order_filter_min", 3, $parameters[0]->getId());
        $this->addEqualsCheck("Scores_SEARCH_order_filter_max", 1, $parameters[count($parameters) - 1]->getId());
    }

    /**
     * Actions tests method.
     * @return void
     */
    public function testsActions(): void
    {
        // Table creation for tests.
        $actionsTable = new ActionsTable("tests");

        // Case get() without problem.
        $parameter = $actionsTable->get(1);
        $this->addEqualsCheck("Actions_GET_id", 1, $parameter->getId());
        $this->addEqualsCheck("Actions_GET_name", "CREATION", $parameter->getName());

        // Case get() with exception.
        try {
            $parameter = $actionsTable->get(6);
            $this->addEqualsCheck("Actions_GET_exception",1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("Actions_GET_exception", FfbTableException::class, $e::class);
        }

        // Search complete
        $parameters = $actionsTable->search();
        $this->addEqualsCheck("Actions_SEARCH_complete_count", 5, count($parameters));
        $this->addEqualsCheck("Actions_SEARCH_complete_min", 1, $parameters[0]->getId());
        $this->addEqualsCheck("Actions_SEARCH_complete_max", 5, $parameters[count($parameters) - 1]->getId());

        // Search with conditions
        $parameters = $actionsTable->search(["conditions" => ["name" => "LIKE 'RE%'"]]);
        $this->addEqualsCheck("Actions_SEARCH_conditions_count", 2, count($parameters));
        $this->addEqualsCheck("Actions_SEARCH_conditions_min", 4, $parameters[0]->getId());
        $this->addEqualsCheck("Actions_SEARCH_conditions_max", 5, $parameters[count($parameters) - 1]->getId());

        // Search with order
        $parameters = $actionsTable->search(["order" => ["property" => ["name"], "direction" => "DESC"]]);
        $this->addEqualsCheck("Actions_SEARCH_order_count", 5, count($parameters));
        $this->addEqualsCheck("Actions_SEARCH_order_min", 2, $parameters[0]->getId());
        $this->addEqualsCheck("Actions_SEARCH_order_max", 1, $parameters[count($parameters) - 1]->getId());

        // Search with filter
        $parameters = $actionsTable->search(["filter" => ["limit" => 2, "offset" => 3]]);
        $this->addEqualsCheck("Actions_SEARCH_filter_count", 3, count($parameters));
        $this->addEqualsCheck("Actions_SEARCH_filter_min", 3, $parameters[0]->getId());
        $this->addEqualsCheck("Actions_SEARCH_filter_max", 5, $parameters[count($parameters) - 1]->getId());

        // Search with conditions & order
        $parameters = $actionsTable->search(["conditions" => ["name" => "LIKE '%TE%'"], "order" => ["property" => ["name"], "direction" => "ASC"]]);
        $this->addEqualsCheck("Actions_SEARCH_order_conditions_count", 2, count($parameters));
        $this->addEqualsCheck("Actions_SEARCH_order_conditions_min", 3, $parameters[0]->getId());
        $this->addEqualsCheck("Actions_SEARCH_order_conditions_max", 2, $parameters[count($parameters) - 1]->getId());

        // Search with filter & order
        $parameters = $actionsTable->search(["filter" => ["limit" => 2, "offset" => 3], "order" => ["property" => ["id"], "direction" => "DESC"]]);
        $this->addEqualsCheck("Actions_SEARCH_order_filter_count", 3, count($parameters));
        $this->addEqualsCheck("Actions_SEARCH_order_filter_min", 3, $parameters[0]->getId());
        $this->addEqualsCheck("Actions_SEARCH_order_filter_max", 1, $parameters[count($parameters) - 1]->getId());
    }

    /**
     * Tag Types tests methods.
     * @return void
     */
    public function testsTagTypes(): void
    {
        // Table creation for tests.
        $tagTypesTable = new TagTypesTable("tests");

        // Case get() without problem.
        $parameter = $tagTypesTable->get(1);
        $this->addEqualsCheck("TagTypes_GET_id", 1, $parameter->getId());
        $this->addEqualsCheck("TagTypes_GET_name", "Genre", $parameter->getName());

        // Case get() with exception.
        try {
            $parameter = $tagTypesTable->get(6);
            $this->addEqualsCheck("TagTypes_GET_exception",1, 0);
        } catch (Throwable $e) {
            $this->addEqualsCheck("TagTypes_GET_exception", FfbTableException::class, $e::class);
        }

        // Search complete
        $parameters = $tagTypesTable->search();
        $this->addEqualsCheck("TagTypes_SEARCH_complete_count", 4, count($parameters));
        $this->addEqualsCheck("TagTypes_SEARCH_complete_min", 1, $parameters[0]->getId());
        $this->addEqualsCheck("TagTypes_SEARCH_complete_max", 4, $parameters[count($parameters) - 1]->getId());

        // Search with conditions
        $parameters = $tagTypesTable->search(["conditions" => ["name" => "LIKE 'Relation%'"]]);
        $this->addEqualsCheck("TagTypes_SEARCH_conditions_count", 1, count($parameters));
        $this->addEqualsCheck("TagTypes_SEARCH_conditions_min", 3, $parameters[0]->getId());
        $this->addEqualsCheck("TagTypes_SEARCH_conditions_max", 3, $parameters[count($parameters) - 1]->getId());

        // Search with order
        $parameters = $tagTypesTable->search(["order" => ["property" => ["name"], "direction" => "DESC"]]);
        $this->addEqualsCheck("TagTypes_SEARCH_order_count", 4, count($parameters));
        $this->addEqualsCheck("TagTypes_SEARCH_order_min", 2, $parameters[0]->getId());
        $this->addEqualsCheck("TagTypes_SEARCH_order_max", 1, $parameters[count($parameters) - 1]->getId());

        // Search with filter
        $parameters = $tagTypesTable->search(["filter" => ["limit" => 2, "offset" => 3]]);
        $this->addEqualsCheck("TagTypes_SEARCH_filter_count", 2, count($parameters));
        $this->addEqualsCheck("TagTypes_SEARCH_filter_min", 3, $parameters[0]->getId());
        $this->addEqualsCheck("TagTypes_SEARCH_filter_max", 4, $parameters[count($parameters) - 1]->getId());

        // Search with conditions & order
        $parameters = $tagTypesTable->search(["conditions" => ["name" => "LIKE '%el%'"], "order" => ["property" => ["name"], "direction" => "ASC"]]);
        $this->addEqualsCheck("TagTypes_SEARCH_order_conditions_count", 2, count($parameters));
        $this->addEqualsCheck("TagTypes_SEARCH_order_conditions_min", 3, $parameters[0]->getId());
        $this->addEqualsCheck("TagTypes_SEARCH_order_conditions_max", 2, $parameters[count($parameters) - 1]->getId());

        // Search with filter & order
        $parameters = $tagTypesTable->search(["filter" => ["limit" => 2, "offset" => 3], "order" => ["property" => ["id"], "direction" => "DESC"]]);
        $this->addEqualsCheck("TagTypes_SEARCH_order_filter_count", 2, count($parameters));
        $this->addEqualsCheck("TagTypes_SEARCH_order_filter_min", 2, $parameters[0]->getId());
        $this->addEqualsCheck("TagTypes_SEARCH_order_filter_max", 1, $parameters[count($parameters) - 1]->getId());
    }
}