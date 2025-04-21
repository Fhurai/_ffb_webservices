<?php

class ApiClient
{
    private string $authHeader;

    public function __construct(string $prefix = '', string $token = '')
    {
        $this->authHeader = $token ? "{$prefix} {$token}" : '';
    }

    public function fetchData(string $url): string
    {
        $headers = [
            'Content-Type: application/json',
            'Accept: application/json',
        ];

        if ($this->authHeader) {
            $headers[] = "Authorization: {$this->authHeader}";
        }

        $ch = curl_init($url);
        curl_setopt_array($ch, [
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTPHEADER => $headers,
        ]);

        $response = curl_exec($ch);
        if (curl_errno($ch)) {
            $error = curl_error($ch);
            curl_close($ch);
            throw new FfbEndpointException('Curl error: ' . $error);
        }

        curl_close($ch);
        return $response;
    }

    public function fetchDataWithContent(string $url, string $method, stdClass $data = new stdClass()): string
    {
        $ch = curl_init($url);
        $payload = json_encode($data);

        $headers = [
            'Content-Type: application/json',
            'Accept: application/json',
            'Content-Length: ' . strlen($payload),
        ];

        if ($this->authHeader) {
            $headers[] = "Authorization: {$this->authHeader}";
        }

        curl_setopt_array($ch, [
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_CUSTOMREQUEST => strtoupper($method),
            CURLOPT_POSTFIELDS => $payload,
            CURLOPT_HTTPHEADER => $headers,
        ]);

        $response = curl_exec($ch);
        if (curl_errno($ch)) {
            $error = curl_error($ch);
            curl_close($ch);
            throw new FfbEndpointException('Curl error: ' . $error);
        }

        curl_close($ch);
        return $response;
    }
}
