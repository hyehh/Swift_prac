//
//  main.swift
//  Day01
//
//  Created by Hyeji on 2021/07/15.
//

// 이 부분 import 해줘야 macOS - Command Line Tool 사용이 가능!!
import Foundation

// comment
/*
 comment
 */

// 문자 출력
print("안녕하세요")

// 숫자 출력
print(123)

// 계산 출력
print(123 + 456)

// 상수와 변수
/*
 상수 : 한 번 선언된 값에 대해 변경이 불가능
 let variableName: type = value
 */

let intLetNum1: Int = 200
let intLetNum2 = 100
let intLetNum3: Int
intLetNum3 = 400
let sum: Int
sum = intLetNum1 + intLetNum2
let numA = 30, numB = 50 // 같은 줄에서 여러 상수 선언 가능!

/*
 변수 : 한 번 선언된 값이 있어도 변경이 가능
 var variableName: type = value
 */

var intLetNum4: Int = 300
intLetNum4 = 500
var nickName: String
nickName = "유비"
// nickName = 4 -> String으로 nickName에 대한 type을 선언한 경우 Int로 변경 불가!
var nickName2 = "유비"
// nickName = 3 -> 이 때 역시, 위에서 String으로 자동 type 생성해주기 때문에 Int로 변경 불가!
var aNum = 9, bNum = 10 // 같은 줄에서 여러 변수 선언 가능!

// type 출력하기
let studentName = "홍길동"
print(type(of: studentName))

// 문자열 보간법 (String Interpolation)
// java ver.
print("name : " + studentName)
// python ver.
print("name :", studentName)
// swift ver.
print("name : \(studentName)")

let age: Int = 10
print("저는 \(age)살 입니다.")
print("저의 형은 \(age + 4)살 입니다.")

var name1 = "유비"
var age1 = 34
var gender1 = "남자"
print("회원의 이름은 \(name1)이고 나이는 \(age1)이며 성별은 \(gender1)입니다.")

// Data type
// Bool type (true, false)
var someBool: Bool = true

// Int type
var someInt: Int = -100
someInt = 100_000 // 출력하면 100000임! 보기 편하기 위해 저렇게 작성할 수 있음

// Float type (자릿수 소수점 이하 6글자)
var someFloat: Float = 2.333

// Double type (자릿수 소수점 이하 15글자)
var someDouble: Double = 3.12433

// Character Type (한 글자로 표현하는 것 - 두 글자 이상인 단어 안 됨! / 한 개의 이모지 가능)
var someCharacter: Character = "a"
someCharacter = "❤️"
print(someCharacter)

// String Type
var someString: String = "😝😝😝😝😝"
print(someString)
// 문자의 default 타입은 character가 아닌 stirng!
var temp = "b"
print(type(of: temp))

// 데이터 타입 변환 (Double -> Int)
let doubleNum = 3.99999
print(Int(doubleNum))
// 반올림하여 변환 (round 사용)
print(Int(round(doubleNum)))

// 쌍따옴표 3개
var someMultiString = """
1234
abcd
가나다라
"""
print(someMultiString)

// 문자열과 특수문자
// \n, \t, \", \'
print("aa\tbb\ncc")
print("\"Imagination is more than the knowledge\" - Einstein")

var name: String
var size: Int
var weight: Double
var bag: Bool
var color: Character

name = "맥북프로"
size = 16
weight = 2.56
bag = false
color = "은"

print("이름 : \(name)")
print("크기 : \(size)")
print("무게 : \(weight)")
print("가방 : \(bag)")
print("색상 : \(color)")

// 문자열 수정
var variableString = "Horse"
variableString += " and carriage"
print(variableString)

// 변수 데이터 자체를 변경시키길 원한다면 += 보다 append 사용할 것!
var string1 = "hello"
var string2 = " there"
string1.append(string2)
print(string1)

// 문자 길이
let str = "1,234,567,890"
print(str.count)

// if문
if str.count == 0{
    print("Data가 없습니다.")
}else{
    print("Data의 길이는 \(str.count)입니다.")
}

// Any, nil
/*
 Any : Swift에서 모든 타입을 지칭하는 키워드 (권장 x)
       Any 타입 작성 시 반드시 Any라고 적어줘야 함!
       Any 타입은 Any 타입끼리만 사칙 연산이 가능함!
 nil : null, Null, None
 */
var someAny: Any = 100
print(type(of: someAny))
someAny = "Type"
print(type(of: someAny))
someAny = 132.33
print(type(of: someAny))

var someDouble1: Double = 11.1
print(someAny as! Double + someDouble1)

/*
 Optional Value (Null Safety)
 -> ?를 적지 않는다면 nil 값 사용 불가능
    ?는 정의할 떼 !는 optional을 풀 때 사용!
 */
var someNil: String?
someNil = nil

// Tuple
// Tuple 사용 전
var dialCode = 82
var isoCode = "KR"
var countryName = "Korea"

print(dialCode, isoCode, countryName)

// Tuple 사용 후
var country = (82, "KR", "Korea")
print(type(of: country))
print(country)
print(country.0, country.1, country.2)

var country1 = (dialCode1 : 82, isoCode1 : "KR", countryName1 : "Korea")
print(type(of: country1))
print(country1)
print(country1.dialCode1, country1.isoCode1, country1.countryName1)

// 나만의 Type만들기 (Type 별칭)
typealias myInt = Int
let age2: myInt = 20
print(type(of: age2))

// 여러 개 Type이 있는 나만의 Type 만들기 (Tuple 사용)
typealias person = (name: String, height: Int, marriage: Bool)
var p1: person = ("hyehh", 158, false)
print(p1)
print(type(of: p1))

// Tuple을 사용하여 직사각형의 넓이와 둘레를 출력
typealias Rectangle = (name: String, width: Int, height: Int, area: Int, boarder: Int)
var r1: Rectangle = ("직사각형", 5, 6, 0, 0)
r1.area = r1.width * r1.height
r1.boarder = r1.width + r1.height
print(r1)


