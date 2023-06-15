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

let policyCellData1 = PolicyData(policyMainLabel: "서울시 임신 출산 건강 관리 지원", policyFrom: "서울시여성가족재단", policyTagVector:"출산")
let policyCellData2 = PolicyData(policyMainLabel: "가끔 엄마도 쉬고 싶을 때 '서초엄마힐링센터' 추천", policyFrom: "서초구 가족센터", policyTagVector:"양육")
let policyCellData3 = PolicyData(policyMainLabel: "미혼모부 양육지원", policyFrom: "강서구청 가족정책과", policyTagVector:"양육")
let policyCellData4 = PolicyData(policyMainLabel: "산모 신생아 건강관리 지원사업", policyFrom: "중앙부처복지사업", policyTagVector:"출산")
let policyCellData5 = PolicyData(policyMainLabel: "장애인 가정 출산지원금 지원", policyFrom: "증량주청 장애인복지과", policyTagVector:"출산")

let dummyData = [policyCellData1, policyCellData2, policyCellData3, policyCellData4,policyCellData4]
