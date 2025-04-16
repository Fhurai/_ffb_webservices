<?php

require_once __DIR__ . "/NamedEntityBuilder.php";
require_once __DIR__ . "/../entity/Character.php";

class CharacterBuilder extends NamedEntityBuilder
{

    /**
     * @var Character
     */
    protected $obj;

    /**
     * Resets the Character object to a new instance.
     */
    public function reset(): void
    {
        // Initialize a new Character object
        $this->obj = new Character();
    }

    /**
     * Sets the fandom ID for the Character object.
     *
     * @param int|Fandom $arg The fandom ID as an integer or a Fandom object.
     * @return CharacterBuilder The current instance of CharacterBuilder.
     */
    public function withFandomId(int|Fandom $arg): CharacterBuilder
    {
        // Check if the argument is an integer
        if (is_int($arg)) {
            // Set the fandom ID
            $this->obj->setFandomId($arg);
        }
        // Check if the argument is a Fandom object
        else if ($arg instanceof Fandom) {
            // Set the fandom ID from the Fandom object
            $this->obj->setFandomId($arg->getId());
        }
        return $this;
    }

    /**
     * Sets the fandom for the Character object.
     *
     * @param Fandom $fandom The Fandom object.
     * @return CharacterBuilder The current instance of CharacterBuilder.
     */
    public function withFandom(Fandom $fandom): CharacterBuilder
    {
        // Set the fandom object
        $this->obj->setFandom($fandom);
        // Set the fandom ID from the Fandom object
        return $this->withFandomId($fandom);
    }
}
