<?php

namespace App\Services;

use Illuminate\Support\Facades\Route;

class FormHelper
{
/**
 * Open a form tag.
 *
 * @param array $options
 * @return string
 */

 public static function open(array $options)
 {
     if (!isset($options['route'][0])) {
         throw new \InvalidArgumentException("The 'route' key must be specified and should contain at least one element.");
     }

     $route = $options['route'][0];
     $params = $options['route'][1] ?? [];

     if (!is_array($params)) {
         $params = [$params];
     }

     if (!Route::has($route)) {
         throw new \InvalidArgumentException("Route [{$route}] not defined.");
     }

     try {
         $action = route($route, $params);
     } catch (\Exception $e) {
         throw new \InvalidArgumentException("Error generating route for [{$route}] with parameters " . json_encode($params) . ": " . $e->getMessage());
     }

     $method = strtoupper($options['method']);
     $methodField = ($method !== 'GET' && $method !== 'POST') ? method_field($method) : '';
     $methodAttribute = in_array($method, ['GET', 'POST']) ? $method : 'POST';

     // Debug output
     logger()->info('Form action: ' . $action);
     logger()->info('Method: ' . $method);
     logger()->info('Parameters: ' . json_encode($params));

     return '<form action="' . e($action) . '" method="' . strtolower($methodAttribute) . '">' . $methodField . csrf_field();
 }



    /**
     * Close the form tag.
     *
     * @return string
     */
    public static function close()
    {
        return '</form>';
    }

    /**
     * Generate an input field.
     *
     * @param string $name
     * @param mixed $value
     * @param array $options
     * @return string
     */
    public static function text($name, $value = null, array $options = [])
    {
        $attributes = '';
        foreach ($options as $key => $val) {
            $attributes .= "{$key}=\"{$val}\" ";
        }
        return "<input name=\"{$name}\" value=\"{$value}\" type=\"text\" " . trim($attributes) . ">";
    }

    /**
     * Generate a submit button.
     *
     * @param string $value
     * @param array $options
     * @return string
     */
    public static function submit($value, array $options = [])
    {
        $attributes = '';
        foreach ($options as $key => $val) {
            $attributes .= "{$key}=\"{$val}\" ";
        }
        return "<input type=\"submit\" value=\"{$value}\" " . trim($attributes) . ">";
    }
}
