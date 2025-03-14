<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/entity/Action.php';

class ActionTest extends TestCase
{
    public function testConstructorInitializesProperties()
    {
        $id = 1;
        $name = 'Test Action';
        $action = new Action($id, $name);

        $this->assertSame($id, $action->getId());
        $this->assertSame($name, $action->getName());
    }
}