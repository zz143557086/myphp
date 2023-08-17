<?php

namespace app\prototype\controller;

interface Prototype
{
    public function shallowClone();
    public function deepClone();
}