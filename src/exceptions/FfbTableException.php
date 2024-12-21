<?php

class FfbTableException extends Exception{

    /**
     * Implied Constructor.
     * @param array $
     */
    public function __construct(){
        $args = func_get_args();
        $count = func_num_args();

        if(method_exists($this,$function = "constructorWith" . $count)){
            call_user_func_array(array($this,$function), $args);
        }
    }

    /**
     * Constructor with only message.
     * @param string $message Current message
     * @return void
     */
    public function constructorWith1(string $message): void {
        parent::__construct($message, 500, null);
    }

    /**
     * Constructor with message and code.
     * @param string $message Current message
     * @param int $code Return code
     * @return void
     */
    public function constructorWith2(string $message, int $code): void{
        parent::__construct($message, $code, null);
    }

    /**
     * Constructor with message, code and previous throwable.
     * @param string $message Current message
     * @param int $code Return code
     * @param Throwable $previous Previous throwable.
     * @return void
     */
    public function constructorWith3(string $message, int $code, Throwable $previous): void{
        parent::__construct($message, $code, $previous);
    }
}