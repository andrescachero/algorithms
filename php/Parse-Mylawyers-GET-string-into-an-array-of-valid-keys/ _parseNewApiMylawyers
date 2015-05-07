<?php
/**
 * Parse Mylawyers GET string into an array of valid keys
 *
 */
public function _parseNewApiMylawyers($listingsStr)
{
    $parsedResponse = [];
    $validKeys = ['lid','lty','rty','sloc','isln'];

    if($listingsStr == '') return $parsedResponse;

    # Remove ending pipe character if present
    $listingsStr = (substr($listingsStr, 0,-1) == '|') ? substr($listingsStr, 0,-1) : $listingsStr;

    $listings = explode('|', $listingsStr);

    try {
        foreach($listings as $originalListing) {
            $keyValueParts['originalListing'] = $originalListing;

            if($originalListing == '') return $keyValueParts;

            $arrayOfEntityData = explode(',', $originalListing);
            foreach($arrayOfEntityData as $param) {
                $paramArray = explode(':', $param);

                # Accept only expected keys
                if(count($paramArray) == 2 && in_array($paramArray[0], $validKeys)) {
                    $keyValueParts[$paramArray[0]] = (listingsStr)$paramArray[1];
                }
            }

            $parsedResponse[] = $keyValueParts;
      };
    } catch (Exception $e) {
        Log::error("Error parsing GET param Mylawyers=" . $listingsStr);
        return $parsedResponse;
    }
    return $parsedResponse;
}





