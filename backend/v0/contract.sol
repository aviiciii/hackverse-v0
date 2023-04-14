// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// product contract
contract Product {

    // create in struct
    struct ProductStruct {
        uint256 id;
        string name;
        uint256 price;
        uint256 quantity;
        bool status;
    }
    
    // create in mapping
    mapping(uint256 => ProductStruct) public productStructs;

    // create in event
    event ProductCreated(
        uint256 id,
        string name,
        uint256 price,
        uint256 quantity,
        bool status
    );

    // update in event
    event ProductUpdated(
        uint256 id,
        string name,
        uint256 price,
        uint256 quantity,
        bool status
    );

    // delete in event
    event ProductDeleted(
        uint256 id,
        string name,
        uint256 price,
        uint256 quantity,
        bool status
    );

    // create in function
    function createProduct(
        uint256 _id,
        string memory _name,
        uint256 _price,
        uint256 _quantity,
        bool _status
    ) public {
        productStructs[_id] = ProductStruct(
            _id,
            _name,
            _price,
            _quantity,
            _status
        );
        emit ProductCreated(_id, _name, _price, _quantity, _status);
    }

    // update in function
    function updateProduct(
        uint256 _id,
        string memory _name,
        uint256 _price,
        uint256 _quantity,
        bool _status
    ) public {
        productStructs[_id].name = _name;
        productStructs[_id].price = _price;
        productStructs[_id].quantity = _quantity;
        productStructs[_id].status = _status;
        emit ProductUpdated(_id, _name, _price, _quantity, _status);
    }

    // delete in function
    function deleteProduct(uint256 _id) public {
        string memory _name = productStructs[_id].name;
        uint256 _price = productStructs[_id].price;
        uint256 _quantity = productStructs[_id].quantity;
        bool _status = productStructs[_id].status;
        delete productStructs[_id];
        emit ProductDeleted(_id, _name, _price, _quantity, _status);
    }

    // create in function
    function getProduct(uint256 _id)
        public
        view
        returns (
            uint256,
            string memory,
            uint256,
            uint256,
            bool
        )
    {
        return (
            productStructs[_id].id,
            productStructs[_id].name,
            productStructs[_id].price,
            productStructs[_id].quantity,
            productStructs[_id].status
        );
    }
    
}