//
//  PolicyViewModel.swift
//  SeSACTON_iOS
//
//  Created by JW on 2023/05/30.
//
import UIKit

struct PolicyData {
    let policyMainLabel: String
    let policyFrom: String
    let policyTagVector : String
}

let policyCellData1 = PolicyData(policyMainLabel: "서울시 임신 출산 건강 관리 지원", policyFrom: "서울시여성가족재단", policyTagVector:"안녕하세요")
let policyCellData2 = PolicyData(policyMainLabel: "가끔 엄마도 쉬고 싶을 때 '서초엄마힐링센터' 추천", policyFrom: "서초구 가족센터", policyTagVector:"안녕하세요")
let policyCellData3 = PolicyData(policyMainLabel: "서울시", policyFrom: "서울시여성가족재단", policyTagVector:"안녕하세요")
let policyCellData4 = PolicyData(policyMainLabel: "서울시", policyFrom: "서울시여성가족재단", policyTagVector:"안녕하세요")
let policyCellData5 = PolicyData(policyMainLabel: "서울시", policyFrom: "서울시여성가족재단", policyTagVector:"안녕하세요")

let dummyData = [policyCellData1, policyCellData2, policyCellData3, policyCellData4,policyCellData4]
