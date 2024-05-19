<?php

if (!function_exists('form_open')) {
    /**
     * Generate a form opening tag.
     *
     * @param array $options
     * @return string
     */
    function form_open(array $options = [])
    {
        $method = strtoupper($options['method'] ?? 'POST');
        $attributes = isset($options['attributes']) ? stringify_attributes($options['attributes']) : '';
        $form = "<form action=\"{$options['action']}\" method=\"$method\" $attributes>";
        if (in_array($method, ['PUT', 'PATCH', 'DELETE'])) {
            $form .= method_field($method);
        }
        if ($method !== 'GET' && csrf_field()) {
            $form .= csrf_field();
        }
        return $form;
    }
}

if (!function_exists('form_close')) {
    /**
     * Generate a form closing tag.
     *
     * @return string
     */
    function form_close()
    {
        return '</form>';
    }
}

if (!function_exists('form_input')) {
    /**
     * Generate an input field.
     *
     * @param string $type
     * @param string $name
     * @param mixed $value
     * @param array $attributes
     * @return string
     */
    function form_input($type, $name, $value = null, $attributes = [])
    {
        $attributes = stringify_attributes($attributes);
        return "<input type=\"$type\" name=\"$name\" value=\"$value\" $attributes>";
    }
}

if (!function_exists('stringify_attributes')) {
    /**
     * Stringify HTML attributes.
     *
     * @param array $attributes
     * @return string
     */
    function stringify_attributes(array $attributes = [])
    {
        $output = '';
        foreach ($attributes as $key => $value) {
            $output .= $key . '="' . $value . '" ';
        }
        return trim($output);
    }
}
