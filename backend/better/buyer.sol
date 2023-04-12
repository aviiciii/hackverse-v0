//spdx-license-identifier: MIT

pragma solidity ^0.8.0;
    import "contract.sol";
contract Buyer{
    uint256   public  buyerId;
    uint256   public  productId;
    string    public  buyerAddress; 
    uint256   public  productprice;

    constructor{
        buyerId = 0;
        buyerAddress= this.address;
        
    }
    
    function createBuyer(uint256 _buyerId, string memory _buyerName, string memory _buyerAddress) public {
        buyerId = _buyerId;
        buyerAddress = _buyerAddress;
    }

    function createcontract(uint256 _productId, uint256 _buyerId, string memory _buyerName, string memory _buyerAddress) public returns(address){
        productId = _productId;
        buyerId = _buyerId;
        buyerAddress = _buyerAddress;
        return address(new Contract(_productId, _buyerId, _buyerName, _buyerAddress));
    }

    function 
}