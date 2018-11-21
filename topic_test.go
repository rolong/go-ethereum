package ethereum

import (
	"testing"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/crypto"
	"fmt"
)
func Test_empty_hash(t *testing.T) {
	fmt.Println("Empty Hash: ", crypto.Keccak256Hash(nil).Hex())
}

func Test_03(t *testing.T){
	var index [64]byte
	index[31] = 1 // Map元素的KEY值
	index[63] = 2 // 属性编号

	hash := common.BytesToHash(crypto.Keccak256(index[:]))
	fmt.Println("Index: ", common.Bytes2Hex(index[:]))
	fmt.Println("Key  : ", hash.Hex())
}
