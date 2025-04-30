<?php

require_once __DIR__ . "/NamedEntityBuilder.php";
require_once __DIR__ . "/../entity/Character.php";

/**
 * CharacterBuilder is responsible for constructing and configuring Character objects.
 * It extends the NamedEntityBuilder to inherit common builder functionalities.
 */
final class CharacterBuilder extends NamedEntityBuilder
{

    /**
     * @var Character The Character object being built.
     */
    protected $obj;

    /**
     * Resets the Character object to a new instance.
     * This method is typically called to start building a new Character object.
     */
    public function reset(): void
    {
        // Initialize a new Character object
        $this->obj = new Character();
    }

    /**
     * Sets the fandom ID for the Character object.
     * Accepts either an integer representing the fandom ID or a Fandom object.
     *
     * @param  int|Fandom|null $arg The fandom ID as an integer or a Fandom object.
     * @return CharacterBuilder The current instance of CharacterBuilder for method chaining.
     */
    public function withFandomId(int|Fandom|null $arg): CharacterBuilder
    {
        if($arg === null) {
            throw new FfbException('Fandom ID cannot be null');
        }
        // Check if the argument is an integer
        if (is_int($arg)) {
            // Set the fandom ID
            $this->obj->setFandomId($arg);
        }
        // Check if the argument is a Fandom object
        elseif ($arg instanceof Fandom) {
            // Set the fandom ID from the Fandom object
            $this->obj->setFandomId($arg->getId());
        }
        return $this;
    }

    /**
     * Sets the fandom for the Character object.
     * This method also sets the fandom ID by calling withFandomId().
     *
     * @param  Fandom $fandom The Fandom object to associate with the Character.
     * @return CharacterBuilder The current instance of CharacterBuilder for method chaining.
     */
    public function withFandom(Fandom $fandom): CharacterBuilder
    {
        // Set the fandom object
        $this->obj->setFandom($fandom);
        // Set the fandom ID from the Fandom object
        return $this->withFandomId($fandom);
    }
}
