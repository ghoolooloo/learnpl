// 这是单行注释

/* 这是一个，多行注释。
/* Swift 的多行注释可以嵌套在其它的多行注释之中。*/
 通过运用嵌套多行注释，你可以快速方便的注释掉一大段代码，即使这段代码之中已经含有了多行注释块。*/


/* MARK: 标志
 * XCODE 支持给注释代码作标记，这些标记会列在 XCODE 的跳转栏里，支持的标记为：
 *   MARK: 普通标记
 *   TODO: TODO 标记
 *   FIXME: FIXME 标记
 */
 

/* Swift 的一些特性：
 * 支持playgrounds技术，这允许程序员试验Swift代码并立即看到结果，而又没有构建和运行应用程序的开支。
 * 全局作用域中的代码会被自动当做程序的入口点，所以你也不需要main函数。
 * 编译器对性能优化，编程语言对开发优化。
 */
 

// 导入外部模块
import UIKit


// 分号
// Swift 并不强制要求你在每条语句的结尾处使用分号，但在同一行内写多条独立的语句时必需使用分号。
let cat = "🐱"; print(cat)


// Swift2.0 println() 及 print() 已经整合成 print()。
print("Hello, world") // 这是原本的 println()，会自动换行
print("Hello, world", appendNewLine: false) // 如果不要自动进入下一行，需设定进入下一行为 false。或者
print("Hello, world", terminator:"")


// 变量 (var) 的值设置后可以随意改变
var myVariable = 42
myVariable = 50
// 常量 (let) 的值设置后不能改变
let myConstant = 3.1415926
var øπΩ = "value" // 可以支持 unicode 变量名
let π = 3.1415926
let `var` = "abc"  // 使用保留字为常量名或变量名时，必须使用“`”将其包围
var welcomeMessage: String   // 声明时没有带初始值，则只能显式指定变量类型
let explicitDouble: Double = 70   // 明确指定常量类型为 Double ，否则编译器将自动推断变量类型
var x = 0.0, y = 0.0, z = 0.0  // 可以在一行中声明多个常量或者多个变量，用逗号隔开
var red, green, blue: Double  // 可以在一行中定义多个同样类型的变量，用逗号分割，并在最后一个变量名之后添加类型标注


// 条件编译
// 使用 -D 定义编译开关
#if false
    print("Not printed")
    let buildValue = 3
#else
    let buildValue = 7
#endif
print("Build value: \(buildValue)") // Build value: 7


// 整数
// Swift 提供了8，16，32和64位的有符号和无符号整数类型。Int8、Int16、Int32、Int64、UInt8、UInt16、UInt32、UInt64
// Int（缺省整型）：在32位平台上，Int和Int32长度相同；在64位平台上，Int和Int64长度相同。
// UInt：在32位平台上，UInt和UInt32长度相同；在64位平台上，UInt和UInt64长度相同。
let decimalInteger = 17         // 十进制的17
let binaryInteger = 0b10001     // 二进制的17
let octalInteger = 0o21         // 八进制的17
let hexadecimalInteger = 0x11   // 十六进制的17

// 你可以访问不同整数类型的min和max属性来获取对应类型的最小值和最大值：
let minValue = UInt8.min  // minValue 为 0，是 UInt8 类型
let maxValue = UInt8.max  // maxValue 为 255，是 UInt8 类型
// min和max所传回值的类型，正是其所对的整数类型


// 浮点数
// Double表示64位浮点数，至少有15位数字。（缺省浮点型）
// Float表示32位浮点数，只有6位数字。
// 小数点两边必须有至少一个十进制数字（或者是十六进制的数字）
let decimalFloat = 125.0        // 十进制浮点数
let decimalFloatWithExp = 1.25e-2      // 十进制带指数形式的浮点数（小数部分如果为0可以连小数点一起省略）。e可以是大写或小写
let hexadecimalFloat = 0xF.3p0  // 十六进制浮点数必须有一个指数，通过大写或者小写的 p 来指定（小数部分如果为0可以连小数点一起省略）。相当于基数和2^exp的乘积
let anotherPi = 3 + 0.14159  // 如果表达式中同时出现了整数和浮点数字面量，会被推断为Double类型。（数字字面量本身没有明确的类型。它们的类型只在编译器需要求值的时候被推测。）

// 整数和浮点数都可以添加额外的零并且包含下划线，并不会影响字面量
let intValue = 0007 // 十进制整数7
let paddedDouble = 000123.456  // 十进制浮点数123.456
let largeIntValue = 77_000 // 77000
let justOverOneMillion = 1_000_000.000_000_1


// 布尔值
// Swift 的布尔类型叫做Bool。它有两个布尔字面量，true和false
let orangesAreOrange = true


// 字符串和字符
// Swift 的 String 类型是值类型。如果您创建了一个新的字符串，那么当其进行赋值操作，或在函数/方法中传递时，都会对已有字符串值创建新副本。
// 在实际编译时，Swift 编译器会优化字符串的使用，使实际的复制只发生在绝对必要的情况下，这意味着您将字符串作为值类型的同时可以获得极高的性能。
let someString = "Some string literal value"  // 字符串字面量默认会推断为 String 类型
let exclamationMark: Character = "!"          // 字符变量或常量也是通过字符串字面量来初始化的，但要显式指定为 Character 类型。
var emptyString = ""               // 空字符串字面量
var anotherEmptyString = String()  // 与 emptyString 等价
if emptyString.isEmpty {  // 通过 isEmpty属性来判断该字符串是否为空
    print("Nothing to see here")
}

// 字符串可以通过一个值类型为 Character 的数组来初始化：
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)  // 打印输出："Cat!🐱"

// Swift 的String类型是基于 Unicode 标量 建立的，并支持访问字符的多种 Unicode 表示形式（representations）。
// Unicode 标量是对应字符或者修饰符的唯一的21位数字，例如U+0061表示小写的拉丁字母(LATIN SMALL LETTER A)("a")。
// Unicode 标题的范围是U+0000到U+D7FF，以及U+E000到U+10FFFF。Unicode 标量不包括 Unicode 代理项(surrogate pair) 码位（其码位范围是U+D800到U+DFFF）。
// 转义字符：\0(空字符)、\\(反斜线)、\t(水平制表符)、\n(换行符)、\r(回车符)、\"(双引号)、\'(单引号)。
// Unicode 标量：\u{n}（u为小写），其中n为任意一到八位十六进制数且可用的 Unicode 位码。
let dollarSign = "\u{24}"             // $, Unicode 标量 U+0024
let sparklingHeart = "\u{1F496}"      // 💖, Unicode 标量 U+1F496

// 扩展的字形簇(Extended Grapheme Clusters)
// 每个 Swift 的 Character 类型代表一个扩展的字形簇。 一个扩展的字形簇是一个或多个可生成人类可读的字符 Unicode 标量的有序排列。
let eAcute: Character = "\u{E9}"                         // é
let combinedEAcute: Character = "\u{65}\u{301}"          // 也表示字母 é，实际上由标量 e 后面加上标量 ́

// 获取字符串中字符的个数，使用 count 属性。
// 在 Swift 中，使用扩展的字符簇作为 Character 值来连接或改变字符串时，并不一定会更改字符串的字符数量。
// 这意味着不同的字符以及相同字符的不同表示方式，可能需要不同数量的内存空间来存储。所以 Swift 中的字符在一个字符串中并不一定占用相同数量的内存空间。
var word = "cafe"
print("the number of characters in \(word) is \(word.characters.count)")
// 打印输出 "the number of characters in cafe is 4"
word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301
print("the number of characters in \(word) is \(word.characters.count)")
// 打印输出 "the number of characters in café is 4"。，因为第四个字符是é，而不是 e

// 字符串/字符可以用等于操作符(==)和不等于操作符(!=)来比较。
// 如果两个字符串（或者两个字符）的扩展的字形簇是规范地（canonically）相等的，那就认为它们是相等的。即，它们要有相同的语义和外形，即使它们由不同的 Unicode 标量组成。
let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"  // "Voulez-vous un café?" 使用 LATIN SMALL LETTER E WITH ACUTE
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"  // "Voulez-vous un café?" 使用 LATIN SMALL LETTER E 和 COMBINING ACUTE ACCENT
if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}
// 打印输出 "These two strings are considered equal"

// 调用字符串的hasPrefix(_:)/hasSuffix(_:)方法来检查字符串是否拥有特定前缀/后缀，两个方法均接收一个String类型的参数，并返回一个布尔值。
let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        ++act1SceneCount
    }
}
print("There are \(act1SceneCount) scenes in Act 1")
// 打印输出 "There are 5 scenes in Act 1"
var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        ++mansionCount
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        ++cellCount
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
// 打印输出 "6 mansion scenes; 2 cell scenes"

// Swift 中，能否更改字符串的值，取决于其被定义为常量还是变量。
var variableString = "Horse"
variableString += " and carriage"  // variableString 现在为 "Horse and carriage"
let constantString = "Highlander"
constantString += " and another Highlander"  // 这会报告一个编译错误 (compile-time error) - 常量字符串不可以被修改。

// 可通过for-in循环来遍历字符串中的characters属性来获取每一个字符的值：
for character in "Dog!🐶".characters {
    print(character)
}
// D
// o
// g
// !
// 🐶

// 每一个String值都有一个关联的索引类型 —— String.Index（一个结构体），它对应着字符串中的每一个 Character 的位置。
let greeting = "Guten Tag!"
// startIndex 表示 String 的第一个 Character 的索引
greeting[greeting.startIndex]                // G
// endIndex 表示 String 的最后一个Character的后一个位置的索引。
// predecessor() 获取前面一个索引
greeting[greeting.endIndex.predecessor()]    // !
// successor() 获取后面一个索引
greeting[greeting.startIndex.successor()]    // u
// advancedBy(n)：n 如果是正数，则表示获取之后第n个索引。n 如果是负数，则表示获取之前第n个索引。
greeting[greeting.startIndex.advancedBy(7)]  // a
greeting[greeting.endIndex]   // error
greeting.endIndex.successor() // error

// 使用characters属性的indices属性会创建一个包含全部索引的范围(Range)，用来在一个字符串中访问单个字符：
for index in greeting.characters.indices {
   print("\(greeting[index]) ", terminator: "")
}
// 打印输出 "G u t e n   T a g ! "

// 字符串可以通过加法运算符（+）连接起来创建一个新的字符串：
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2  // welcome 现在等于 "hello there"
var instruction = "look over"
instruction += string2  // instruction 现在等于 "look over there"
let exclamationMark: Character = "!"
welcome.append(exclamationMark)  // append()方法将一个字符附加到一个字符串变量的尾部。welcome 现在等于 "hello there!"
// 不能将一个字符串或者字符添加到一个已经存在的字符变量上，因为字符变量只能包含一个字符。

var welcome = "hello"
// 调用insert(_:atIndex:)方法可以在一个字符串的指定索引插入一个字符：
welcome.insert("!", atIndex: welcome.endIndex)  // welcome 现在等于 "hello!"
// 调用insertContentsOf(_:at:)方法可以在一个字符串的指定索引插入一个字符串：
welcome.insertContentsOf(" there".characters, at: welcome.endIndex.predecessor())  // welcome 现在等于 "hello there!"
// 调用removeAtIndex(_:)方法可以在一个字符串的指定索引删除一个字符：
welcome.removeAtIndex(welcome.endIndex.predecessor())  // welcome 现在等于 "hello there"
// 调用removeRange(_:)方法可以在一个字符串的指定索引删除一个子字符串：
let range = welcome.endIndex.advancedBy(-6)..<welcome.endIndex
welcome.removeRange(range)  // welcome 现在等于 "hello"

// 字符串插值（string interpolation）
let piText = "Pi = \(π), Pi 2 = \(π * 2)"
// 插值中不能包含非转义反斜杠 (\)，并且不能包含回车或换行符。

// 当一个 Unicode 字符串被写进文本文件或者其他储存时，字符串中的 Unicode 标量会用 Unicode 定义的几种编码格式（encoding forms）编码。
// UTF-8 编码格式（编码字符串为8位的代码单元）， UTF-16 编码格式（编码字符串位16位的代码单元），UTF-32 编码格式（编码字符串32位的代码单元）。
// 每一个字符串中的小块编码都被称代码单元（code units）。
let dogString = "Dog‼🐶"
// 可以通过遍历String的utf8属性来访问它的UTF-8表示。 其为String.UTF8View类型的属性，UTF8View是无符号8位 (UInt8) 值的集合，每一个UInt8值都是一个字符的 UTF-8 表示：
for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("")  // 68 111 103 226 128 188 240 159 144 182
// 可以通过遍历String的utf16属性来访问它的UTF-16表示。 其为String.UTF16View类型的属性，UTF16View是无符号16位 (UInt16) 值的集合，每一个UInt16都是一个字符的 UTF-16 表示：
for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("")  // 68 111 103 8252 55357 56374
// 可以通过遍历String值的unicodeScalars属性来访问它的 Unicode 标量表示（也就是字符串的 UTF-32 编码格式）。 其为UnicodeScalarView类型的属性，UnicodeScalarView是UnicodeScalar类型的值的集合。 UnicodeScalar是21位的 Unicode 代码点。
// 每一个UnicodeScalar拥有一个value属性，可以返回对应的21位数值，用UInt32来表示：
for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: "")
}
print("")  // 68 111 103 8252 128054
for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}
// D
// o
// g
// ‼
// 🐶


// 类型别名
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
// 类型别名与原类型是完全兼容的


// 元组
// 元组（tuples）把多个值组合成一个复合值。元组内的值可以是任意类型，并不要求是相同类型。
// 元组在临时组织值的时候很有用，但是并不适合创建复杂的数据结构。如果你的数据结构并不是临时使用，请使用类或者结构体而不是元组。
let http404Error = (404, "Not Found")  // http404Error 的类型是 (Int, String)，值是 (404, "Not Found")
let (justTheStatusCode, _) = http404Error  // 可以通过模式匹配的方式提取元组中的值。提取的时候可以把要忽略的部分用下划线（_）标记
print("The status code is \(justTheStatusCode)")  // 输出 "The status code is 404"
// 还可以通过下标来访问元组中的单个元素，下标从零开始：
print("The status message is \(http404Error.1)")  // 输出 "The status message is Not Found"
let http200Status = (statusCode: 200, description: "OK")  // 可以在定义元组的时候给单个元素命名
print("The status code is \(http200Status.statusCode)")   // 输出 "The status code is 200"


// 可选类型（optionals）允许你存储两种状态的值给 Optional 变量：有效值或 nil 。
// nil不能赋值给非可选类型的变量和常量。
// Swift 中，nil不是指针，任何类型的可选状态都可以被设置为nil，不只是对象类型。
// 可在值名称后加个问号 (?) 来表示这个值是 Optional。问号 (?) 是 Swift 提供的语法糖
var someOptionalString: String? = "optional" // 可以是 nil。
var someOptionalString2: Optional<String> = "optional" // 与上面完全等价。Optional<T> 是个枚举类型
var surveyAnswer: String?  // 如果你声明一个可选常量或者变量但是没有赋值，它们会自动被设置为nil。surveyAnswer 被自动设置为 nil

if someOptionalString != nil {  // nil 可以使用“相等”(==)或“不等”(!=)来比较
    // 可选变量或常量后加一个感叹号表示确定可选值一定是有效值（非 nil），并获取该有效值。这称为可选值的强制拆包（forced unwrapping）
    // 使用!来获取一个不存在的可选值会导致运行时错误。使用!来强制拆包之前，一定要先确定可选值包含非nil的值。
    if someOptionalString!.hasPrefix("opt") {
        print("has the prefix")
    }

    let empty = someOptionalString?.isEmpty
}
someOptionalString = nil  // 可以给可选变量赋值为nil来表示它没有值

// 使用可选绑定（optional binding）来判断可选类型是否包含值，如果包含就把值赋给一个局部常量或者变量。
// 可选绑定可以用在if和while语句中。
if let someStringConstant = someOptionalString {  // someStringConstant 是 String 类型，而不是 String?
    // 通过可选绑定的常量或变量就不需要使用强制拆包来提取值了
    if !someStringConstant.hasPrefix("ok") {
        // does not have the prefix
    }
}

// 可以包含多个可选绑定在if语句中，并使用where子句做布尔值判断
if let firstNumber = Int("4"), secondNumber = Int("42") where firstNumber < secondNumber {
    print("\(firstNumber) < \(secondNumber)")
}
// prints "4 < 42"

// 隐式拆包可选类型（implicitly unwrapped optionals）
// 一个隐式拆包可选类型其实就是一个普通的可选类型，但是可以被当做非可选类型来使用，并不需要每次都使用强制拆包来获取可选值。
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // 需要感叹号来获取值
let assumedString: String! = "An implicitly unwrapped optional string."
// 或者：let assumedString: ImplicitlyUnwrappedOptional<String> = "An implicitly unwrapped optional string."
let implicitString: String = assumedString  // 不需要感叹号
// 如果你在隐式拆包可选类型没有值的时候尝试取值，会触发运行时错误。和你在没有值的普通可选类型后面加一个感叹号一样。

// 仍然可以把隐式拆包可选类型当做普通可选类型来判断它是否包含值：
if assumedString != nil {
    print(assumedString)
}
// 输出 "An implicitly unwrapped optional string."
// 如果一个变量之后可能变成nil的话请不要使用隐式解析可选类型。如果你需要在变量的生命周期中判断是否是nil的话，请使用普通可选类型。

// 仍然可以在可选绑定中使用隐式解析可选类型来检查并解析它的值：
if var definiteString = assumedString {
    print(definiteString)
}
// 输出 "An implicitly unwrapped optional string."

// 可选链（Optional Chaining）
// 可选链返回的是可选类型，而强制展开返回的是非可选类型。
// 当可选值为空时可选链只会得到 nil，然而强制展开将会触发运行时错误。
class Person {
    var residence: Residence?
}
class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
}
class Room {
    let name: String
    init(name: String) { self.name = name }
}
class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if buildingName != nil {
            return buildingName
        } else if buildingNumber != nil && street != nil {
            return "\(buildingNumber) \(street)"
        } else {
            return nil
        }
    }
}
let john = Person()
let roomCount = john.residence!.numberOfRooms  // 强制会引发运行时错误，因为 residence 是 nil。
if let roomCount2 = john.residence?.numberOfRooms { // 可选链（使用问号来替代原来的叹号）。只要使用可选链就意味着 numberOfRooms 会返回一个 Int? 而不是 Int，即使 numberOfRooms 原来是 Int。
    print("John's residence has \(roomCount2) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
// 打印 “Unable to retrieve the number of rooms.”
let someAddress = Address()
someAddress.buildingNumber = "29"
someAddress.street = "Acacia Road"
john.residence?.address = someAddress  // 可以通过可选链来设置属性值。这里，通过john.residence来设定address属性也会失败，因为john.residence当前为nil。

// 可以通过可选链式调用来调用方法，并判断是否调用成功，即使这个方法没有返回值。
if john.residence?.printNumberOfRooms() != nil {  // 该方法的返回类型会是 Void?，而不是 Void，因为通过可选链得到的返回值都是可选的。这样我们就可以使用if语句来判断能否成功调用 printNumberOfRooms() 方法，即使方法本身没有定义返回值（即返回 ()）。
    print("It was possible to print the number of rooms.")
} else {
    print("It was not possible to print the number of rooms.")
}
// 打印 “It was not possible to print the number of rooms.”

// 通过可选链式调用，我们可以在一个可选值上访问下标，并且判断下标调用是否成功：
if let firstRoomName = john.residence?[0].name {  // 赋值会失败，因为 residence 目前是 nil
    print("The first room name is \(firstRoomName).")
} else {
    print("Unable to retrieve the first room name.")
}
// 打印 “Unable to retrieve the first room name.”

// 访问可选类型的下标
var testScores = ["Dave": [86, 82, 84], "Bev": [79, 94, 81]]
testScores["Dave"]?[0] = 91
testScores["Bev"]?[0]++
testScores["Brian"]?[0] = 72
// "Dave" 数组现在是 [91, 82, 84]，"Bev" 数组现在是 [80, 94, 81]

// 连接多层可选链
//   如果访问的值不是可选的，可选链式调用将会返回可选值；
//   如果你访问的值就是可选的，可选链式调用不会让可选返回值变得“更可选”。
if let johnsStreet = john.residence?.address?.street {  // john.residence?.address?.street 类型是 String?
    print("John's street name is \(johnsStreet).")
} else {
    print("Unable to retrieve the address.")
}
// 打印 “Unable to retrieve the address.”
if let beginsWithThe =
    john.residence?.address?.buildingIdentifier()?.hasPrefix("The") {
        if beginsWithThe {
            print("John's building identifier begins with \"The\".")
        } else {
            print("John's building identifier does not begin with \"The\".")
        }
}
// 打印 “John's building identifier begins with "The".”


// 赋值运算符
var a = 5
a = 6
a += 2
// Swift 的赋值操作并不返回任何值。所以不能这样写：if x = y {...}


// 算术运算符
1 + 2       // 等于 3
5 - 3       // 等于 2
2 * 3       // 等于 6
10.0 / 2.5  // 等于 4.0
9 % 4       // 等于 1（9 = (4 × 2) + 1）
-9 % 4      // 等于 -1（-9 = (4 × -2) + -1）
8 % 2.5     // 等于 0.5
// 在对负数b求余时，b的符号会被忽略。这意味着 a % b 和 a % -b的结果是相同的。
// Swift 默认情况下不允许在数值运算中出现溢出情况。但是你可以使用 Swift 的溢出运算符来实现溢出运算（如 a &+ b）

// 当++前置的时候，先自増再返回；当++后置的时候，先返回再自增。
// 当--前置的时候，先自减再返回；当--后置的时候，先返回再自减。
var a = 0
let b = ++a // a 和 b 现在都是 1
let c = a++ // a 现在 2, 但 c 是 a 自增前的值 1


// 比较运算符
1 == 1   // true
2 != 1   // true
2 > 1    // true
1 < 2    // true
1 >= 1   // true
2 <= 1   // false
// Swift 也提供恒等===和不恒等!==这两个比较符来判断两个对象是否引用同一个对象实例。


// 条件运算符
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)  // rowHeight 现在是 90


// Nil Coalescing 运算符
// Nil Coalescing 运算符(a ?? b，相当于 a != nil ? a! : b)将对可选类型a进行判断，如果a包含一个非nil值就进行拆包，否则就返回默认值 b。
// 表达式a必须是可选类型；默认值 b 的类型必须要和 a 中存储值的类型保持一致。
// 如果 a 为非 nil 值，那么值 b 将不会被求值，即短路求值。
let defaultColorName = "red"
var userDefinedColorName: String?   //默认值为 nil
var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName 的值为空，所以 colorNameToUse 的值为 "red"。colorNameToUse 不是可选类型，而是 String。


// 闭区间运算符（a...b）定义一个包含从 a 到 b（包括 a 和 b）的所有值的区间，b 必须大于等于 a。
for index in 1...5 {
    print("\(index) * 5 = \(index * 5)")
}
// 1 * 5 = 5
// 2 * 5 = 10
// 3 * 5 = 15
// 4 * 5 = 20
// 5 * 5 = 25

// 半开区间运算符（a..<b）定义一个从 a 到 b 但不包括 b 的区间。
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("第 \(i + 1) 个人叫 \(names[i])")
}
// 第 1 个人叫 Anna
// 第 2 个人叫 Alex
// 第 3 个人叫 Brian
// 第 4 个人叫 Jack


// 逻辑运算符
// 逻辑非（!a）
// 逻辑与（a && b），短路计算
// 逻辑或（a || b），短路计算


// Swift 语言提供Arrays、Sets和Dictionaries三种基本的集合类型用来存储集合数据。
// 数组（Arrays）是有序数据的集。集合（Sets）是无序无重复数据的集。字典（Dictionaries）是无序的键值对的集。
// Array、Set 和 Dictionary 是结构体，不是类，他们作为函数参数时，是用值传递而不是指针传递。
// 如果创建一个Arrays、Sets或Dictionaries并且把它分配成一个变量，这个集合将会是可变的。这意味着我们可以在创建之后添加更多或移除已存在的数据项，或者改变集合中的数据项。如果我们把Arrays、Sets或Dictionaries分配成常量，那么它就是不可变的，它的大小和内容都不能被改变。


// 数组
var shoppingList = ["catfish", "water", "lemons", "baking powder"]
shoppingList[1] = "bottle of water"  // 替换第二个元素的值
shoppingList[1...3] = ["Bananas", "Apples"]  // shoppingList 现在变成3项：["catfish", "Bananas", "Apples"]。"bottle of water"、"lemons"、"baking powder" 三项被换成了 "Bananas"、"Apples" 两项。
let emptyArray = [String]() // 使用 let 定义常量，此时 emptyArray 数组不能添加或删除内容
let emptyArray2 = Array<String>() // 与上一语句等价，上一语句更常用
var emptyMutableArray = [String]() // 使用 var 定义变量，可以向 emptyMutableArray 添加数组元素
var explicitEmptyMutableStringArray: [String] = [] // 与上一语句等价
shoppingList = []  // 现在 shoppingList 变成空数组了
// 创建一个带有默认值的数组：
var threeDoubles = [Double](count: 3, repeatedValue:0.0)  // threeDoubles 是一种 [Double] 数组，等价于 [0.0, 0.0, 0.0]
var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)  // anotherThreeDoubles 被推断为 [Double]，等价于 [2.5, 2.5, 2.5]
// 数组连接：
var sixDoubles = threeDoubles + anotherThreeDoubles  // sixDoubles 被推断为 [Double]，等价于 [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
shoppingList.append("Flour")  // 可以使用append(_:)方法在数组后面添加新的数据项
shoppingList.insert("Maple Syrup", atIndex: 0) // 调用数组的insert(_:atIndex:)方法来在某个具体索引值之前添加数据项。"Maple Syrup" 现在是这个数组中的第一项。
let mapleSyrup = shoppingList.removeAtIndex(0) // removeAtIndex(_:)方法把数组在特定索引值中存储的数据项移除并且返回这个被移除的数据项。现在 "Chocolate Spread" 又变成数组的第一个项。
let flour = shoppingList.removeLast()  // 把数组中的最后一项移除，并返回被移除的数据项
// 使用数组的只读属性count来获取数组中的数据项数量：
print("The shopping list contains \(shoppingList.count) items.")  // 输出 "The shopping list contains 3 items."

// 使用布尔值属性isEmpty检查count属性的值是否为 0：
if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}
// 打印 "The shopping list is not empty."

// 遍历数组
for item in shoppingList {
    print(item)
}

// 如果我们同时需要每个数据项的值和索引值，可以使用enumerate()方法来进行数组遍历。enumerate()返回一个由每一个数据项索引值和数据值组成的元组：
for (index, value) in shoppingList.enumerate() {
    print("Item \(String(index + 1)): \(value)")
}


// 集合
// 一个类型为了存储在集合中，该类型必须是可哈希化的。也就是说，符合 Swift 标准库中的Hashable协议。符合Hashable协议的类型需要提供一个类型为Int的可读属性hashValue。
// 由类型的hashValue属性返回的值不需要在同一程序的不同执行周期或者不同程序之间保持相同。
// 一个哈希值是Int类型的，相等的对象哈希值必须相同，比如a==b,因此必须a.hashValue == b.hashValue。
// Swift 的所有基本类型（比如String、Int、Double和Bool）默认都是可哈希化的，可以作为集合的值的类型或者字典的键的类型。没有关联值的枚举量默认也是可哈希化的。
var letters = Set<Character>()  // 创建一个空集合
print("letters is of type Set<Character> with \(letters.count) items.")  // 通过只读 count 属性获得集合包含的元素个数。
letters.insert("a")    // letters 现在含有1个 Character 类型的值
etters = []  // letters 现在是一个空的 Set, 但是它依然是 Set<Character> 类型
var favoriteGenres: Set = ["Rock", "Classical", "Hip hop", "Jazz"]
// 等价于：var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

if favoriteGenres.isEmpty {  // 布尔属性isEmpty检查count属性是否为0
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}
// 打印 "I have particular music preferences."

// 可以通过调用Set的remove(_:)方法去删除一个元素，如果该值是该Set的一个元素则删除该元素并且返回被删除的元素值，否则如果该Set不包含该值，则返回nil。
// 另外，Set中的所有元素可以通过它的removeAll()方法删除。
if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}
// 打印 "Rock? I'm over it."

// 使用contains(_:)方法去检查Set中是否包含一个特定的值：
if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}
// 打印 "It's too funky in here."

// 遍历一个集合
for genre in favoriteGenres {
    print("\(genre)")
}
// Classical
// Jazz
// Hip hop

// Swift 的 Set 类型没有确定的顺序，为了按照特定顺序来遍历一个 Set 中的值可以使用 sort() 方法，它将根据提供的序列返回一个有序集合:
for genre in favoriteGenres.sort() {
    print("\(genre)")
}
// Classical
// Hip hop
// Jazz

// 集合操作
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
oddDigits.union(evenDigits).sort()  // 并集：[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersect(evenDigits).sort()  // 交集：[]
oddDigits.subtract(singleDigitPrimeNumbers).sort()  // 差集：[1, 9]
oddDigits.exclusiveOr(singleDigitPrimeNumbers).sort()  // 不在交集中的元素：[1, 2, 9]

// 集合关系
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]
houseAnimals.isSubsetOf(farmAnimals)  // 包含于：true
houseAnimals.isStrictSubsetOf(farmAnimals)  // 真包含于：true
farmAnimals.isSupersetOf(houseAnimals)  // 包含：true
farmAnimals.isStrictSupersetOf(houseAnimals)  // 真包含：true
farmAnimals.isDisjointWith(cityAnimals) // 判断两个集合是否没有交集：true
houseAnimals == farmAnimals // 运算符(==)来判断两个集合是否包含全部相同的值：false


// 字典
// 一个字典的Key类型必须遵循Hashable协议，就像Set的元素类型。
let emptyDictionary = [String: Float]() // 空的[String: Float]字典
let emptyDictionary2 = Dictionary<String, Float>() // 同上
var namesOfIntegers: [Int: String] = [:] // 空的[Int: String]字典
namesOfIntegers[16] = "sixteen"  // namesOfIntegers 现在包含一个键值对。修改字典，如果 key 不存在，自动添加一个字典元素
namesOfIntegers = [:]  // namesOfIntegers 又成为了一个 [Int: String] 类型的空字典
var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]  // 用字典字面量创建字典
// 等价于：var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print("The dictionary of airports contains \(airports.count) items.")  // 通过字典的只读属性count来获取某个字典的数据项数量
if airports.isEmpty {  // 使用布尔属性isEmpty来检查字典的count属性是否等于0
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary is not empty.")
}
airports["LHR"] = "London"  // 新增。airports 字典现在有三个数据项
airports["LHR"] = "London Heathrow"  // 更新。"LHR"对应的值被改为 "London Heathrow
// 使用下标语法来在字典中检索特定键对应的值时，因为有可能指定的键有可能并不存在，所以字典的下标访问会返回对应值的类型的可选类型。如果这个字典包含请求键所对应的值，下标会返回一个包含这个存在值的可选值，否则将返回nil
airports["LHR"] = nil   // 可以使用下标语法来通过给某个键的对应值赋值为nil来从字典里移除一个键值对。LHR 现在被移除了。

// 字典的 updateValue(_:forKey:) 方法在指定键不存在时会新增该键值或者在存在时更新已存在的值。如果是新增则返回 nil，否则返回更新前的旧值，即返回的是一个可选类型值。
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {  // 这里使用了可选绑定，因此不需要显式的拆包
    print("The old value for DUB was \(oldValue).")
}
// 输出 "The old value for DUB was Dublin.

// removeValueForKey(_:)方法也可以用来在字典中移除键值对。这个方法在键值对存在的情况下会移除该键值对并且返回被移除的值或者在没有值的情况下返回nil：
if let removedValue = airports.removeValueForKey("DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}
// prints "The removed airport's name is Dublin Airport."

// 遍历字典
for (airportCode, airportName) in airports {  // 每一个字典中的数据项都以(key, value)元组形式返回
    print("\(airportCode): \(airportName)")
}

// 通过访问keys或者values属性，我们也可以遍历字典的键或者值：
for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
for airportName in airports.values {
    print("Airport name: \(airportName)")
}

// 可以使用keys或者values属性构造一个新数组：
let airportCodes = [String](airports.keys)    // airportCodes 是 ["YYZ", "LHR"]
let airportNames = [String](airports.values)  // airportNames 是 ["Toronto Pearson", "London Heathrow"]

// Swift 的字典类型是无序集合类型。为了以特定的顺序遍历字典的键或值，可以对字典的keys或values属性使用sort()方法。


// for-in 循环用来遍历一个集合（例如区间、数组、集合、字典、字符串等）里面的所有元素。
for index in 1...5 {  // index 被隐式声明
    print("\(index) times 5 is \(index * 5)")
}
// 1 times 5 is 5
// 2 times 5 is 10
// 3 times 5 is 15
// 4 times 5 is 20
// 5 times 5 is 25

let base = 3
let power = 10
var answer = 1
for _ in 1...power {  // 可以使用下划线（_）替代变量名来忽略对值的访问
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")
// 输出 "3 to the power of 10 is 59049"


// for 循环
for var index = 0; index < 3; ++index {
    print("index is \(index)")
}
// index is 0
// index is 1
// index is 2


// while 循环
var i = 1
while i < 1000 {
    i *= 2
}


// repeat-while 循环
repeat {
    print("hello")
} while 1 == 2  // 条件为 false 时退出循环


// if 语句
var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
}
// 输出 "It's very cold. Consider wearing a scarf."

// if-else 语句
if temperatureInFahrenheit >= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
// 输出 "It's not that cold. Wear a t-shirt."

// if-else-if 语句
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
// 输出 "It's very cold. Consider wearing a scarf."


// guard 语句
// guard 更象一个断言，只要当条件不满足时，才会执行 else 块中代码。而断言是直接终止程序。
func greet(person: [String: String]) {
    guard let name = person["name"] else {  // name的作用域是从声明开始到函数结尾。如果是使用 if let，则作用域只在 if 语句中
        return
    }
    print("Hello \(name)")
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    print("I hope the weather is nice in \(location).")
}
greet(["name": "John"])
// prints "Hello John!"
// prints "I hope the weather is nice near you."
greet(["name": "Jane", "location": "Cupertino"])
// prints "Hello Jane!"
// prints "I hope the weather is nice in Cupertino."


// 检测 API 可用性
if #available(iOS 9, OSX 10.10, *) {  // 最后一个参数，*，是必须写的，用于处理未来潜在的平台
    // 代码仅会在 iOS 9 及更高版本的系统或者在 OS X v10.10 及更高版本的系统上执行。
} else {
    // 使用先前版本的 iOS 和 OS X 的 API
}


// Switch 语句
// switch语句会尝试把某个值与若干个模式（pattern）进行匹配。根据第一个匹配成功的模式，switch语句会执行对应的代码。
// switch语句必须是完备的。这就是说，每一个可能的值都必须至少有一个 case 分支与之对应。在某些不可能涵盖所有值的情况下，你可以使用默认（default）分支满足该要求，这个默认分支必须在switch语句的最后面。
let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
    // 当匹配的 case 分支中的代码执行完毕后，程序会终止switch语句，而不会继续执行下一个 case 分支。
case "cucumber", "watercress":  // 一个 case 也可以包含多个模式，用逗号把它们分开
    let vegetableComment = "That would make a good tea sandwich."
case let localScopeValue where localScopeValue.hasSuffix("pepper"):  // 当且仅当where语句的条件为true时，匹配到的 case 分支才会被执行。
    let vegetableComment = "Is it a spicy \(localScopeValue)?"
default: 
    let vegetableComment = "Everything tastes good in soup."
}

// case 分支的模式也可以是一个值的区间。
let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
// 输出 "There are dozens of moons orbiting Saturn."

// 可以使用元组在同一个switch语句中测试多个值。元组中的元素可以是值，也可以是区间。
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("(0, 0) is at the origin")
case (_, 0):  // 使用下划线（_）来匹配任意的值
    print("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
    print("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}
// 输出 "(1, 1) is inside the box"

// case 分支的模式允许将匹配的值绑定到一个局部常量或变量。这些局部常量或变量的作用域是当前分支。
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}
// 输出 "on the x-axis with an x value of 2"
// 这个switch语句不包含默认分支。这是因为最后一个分支 case let(x, y) 声明了一个可以匹配余下所有值的元组。这使得switch语句已经完备了，因此不需要再书写默认分支。

// fallthrough关键字会使得当前分支执行完后，继续执行下一分支。fallthrough关键字不会检查它下一个将会落入执行的 case 中的匹配条件。
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)
// 输出 "The number 5 is a prime number, and also an integer."


// continue语句告诉一个循环体立刻停止本次循环迭代，重新开始下次循环迭代
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
for character in puzzleInput.characters {
    switch character {
    case "a", "e", "i", "o", "u", " ":
        continue
    default:
        puzzleOutput.append(character)
    }
}
print(puzzleOutput)
// 输出 "grtmndsthnklk"


// break语句会立刻结束一个switch代码块或者一个循环体的执行
let numberSymbol: Character = "三"  // 简体中文里的数字 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break  // 因为每一个 case 分支都必须包含至少一条语句，不包含语句的分支是错误的。因此，在确实需要显式忽略该分支时，就使用break
}
if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value could not be found for \(numberSymbol).")
}
// 输出 "The integer value of 三 is 3."


// 带标签的语句
// 标签只能标记在一个循环体或者 switch 代码块之前，且与循环或switch语句的关键字在同一行。当 break 或者 continue 后跟上这个标签，可以控制该标签代表对象的中断或者执行。
let finalSquare = 25
var board = [Int](count: finalSquare + 1, repeatedValue: 0)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0
gameLoop: while square != finalSquare {
    if ++diceRoll == 7 { diceRoll = 1 }
    switch square + diceRoll {
    case finalSquare:
        // 到达最后一个方块，游戏结束
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        // 超出最后一个方块，再掷一次骰子
        continue gameLoop
    default:
        // 本次移动有效
        square += diceRoll
        square += board[square]
    }
}
print("Game over!")


// 函数
// 函数是一个 first-class 类型，他们可以嵌套定义，可以作为函数参数传递

//函数参数都有一个外部参数名（external parameter name）和一个局部参数名（local parameter name）。外部参数名用于在函数调用时标注传递给函数的参数，局部参数名在函数的实现内部使用。
// 在没有显式指定外部参数名下，第一个参数默认只有局部参数名，没有外部参数名；第二个以及随后的参数使用其局部参数名作为外部参数名。
// 所有参数必须有独一无二的局部参数名，但是多个参数可以有相同的外部参数名。
// 函数文档可使用 reStructedText 格式直接写在函数的头部
/**
    A greet operation

    - A bullet in docs
    - Another bullet in the docs

    :param: name A name
    :param: day A day
    :returns: A string containing the name and day value.
*/
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet("Bob", day: "Tuesday")  // 有指定外部参数名（不管是显式还是隐式指定），在函数调用时必须使用外部参数名

// 可以在局部参数名前显式指定外部参数名，中间以空格分隔。例如 to 和 and 分别是第一个参数和第二个参数的外部参数名。
func sayHello(to person: String, and anotherPerson: String) -> String {
    return "Hello \(person) and \(anotherPerson)!"
}
print(sayHello(to: "Bill", and: "Ted"))  // prints "Hello Bill and Ted!"

// 如果你不想为第二个及后续的参数设置外部参数名，用一个下划线（_）代替一个明确的外部参数名。
func someFunction(firstParameterName: Int, _ secondParameterName: Int) {
    // function body goes here
    // firstParameterName and secondParameterName refer to
    // the argument values for the first and second parameters
}
someFunction(1, 2)  // 两个参数现在都没有指定外部参数名，因此，函数调用时不能使用外部参数名

// 可以在函数体中为每个参数定义默认值（Deafult Values）。当默认值被定义后，调用这个函数时可以忽略这个参数。
// 带默认值的参数可以位于参数列表的任何位置，但建议放在参数列表的最后。
func someFunction(parameterWithDefault: Int = 12) {
    // function body goes here
    // if no arguments are passed to the function call,
    // value of parameterWithDefault is 12
}
someFunction(6) // parameterWithDefault is 6
someFunction() // parameterWithDefault is 12

// 可变参数
// 一个可变参数（variadic parameter）可以接受零个或多个值。一个函数最多只能有一个可变参数。
func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)   // returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMean(3, 8.25, 18.75)  // returns 10.0, which is the arithmetic mean of these three numbers
// 如果函数有一个或多个带默认值的参数，而且还有一个可变参数，那么把可变参数放在参数表的最后。

// 函数参数默认是常量。试图在函数体中更改参数值将会导致编译错误。
// 通过在参数名前加关键字 var 来定义变量参数。可以在函数体中更改变量参数的值。
func alignRight(var string: String, totalLength: Int, pad: Character) -> String {
    let amountToPad = totalLength - string.characters.count
    if amountToPad < 1 {
        return string
    }
    let padString = String(pad)
    for _ in 1...amountToPad {
        string = padString + string
    }
    return string
}
let originalString = "hello"
let paddedString = alignRight(originalString, totalLength: 10, pad: "-")
// paddedString is equal to "-----hello"
// originalString is still equal to "hello"

// 如果对函数参数的更改，在函数结束后仍然存在，则要使用 inout 参数。
// 如果你用 inout 标记一个参数，这个参数不能被 var 或者 let 标记。
func swapTwoInts(inout a: Int, inout _ b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
// 只能传递变量给输入输出参数。你不能传入常量或者字面量（literal value），因为这些量是不能被修改的。
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)  // 当传入的参数作为输入输出参数时，需要在参数名前加&符，表示这个值可以被函数修改
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)"  // prints "someInt is now 107, and anotherInt is now 3"
// 输入输出参数不能有默认值，而且也不能是可变参数。


// 无返回值函数
// 没有定义返回类型的函数实际上会返回一个特殊的值 —— Void。它其实是一个空的元组（tuple），没有任何元素，可以写成()。
func sayGoodbye(personName: String) {
    print("Goodbye, \(personName)!")
}
sayGoodbye("Dave")  // prints "Goodbye, Dave!"

// 函数可以通过元组 (tuple) 返回多个值
func getGasPrices() -> (Double, Double, Double) {
    return (3.59, 3.69, 3.79)
}
let pricesTuple = getGasPrices()
let price = pricesTuple.2 // 3.79
// 通过下划线 (_) 来忽略不关心的值
let (_, price1, _) = pricesTuple // price1 == 3.69
print(price1 == pricesTuple.1) // true
print("Gas price: \(price)")

// 可以返回可选元组
func minMax(array: [Int]) -> (min: Int, max: Int)? {  // 返回的元组也可以带有元素名
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
if let bounds = minMax([8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")  // 通过元素名称来访问，而不是通过整数索引
}
// prints "min is -6 and max is 109"

// 函数类型
func addTwoInts(a: Int, _ b: Int) -> Int {
    return a + b
}
var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2, 3))")  // prints "Result: 5"
func multiplyTwoInts(a: Int, _ b: Int) -> Int {
    return a * b
}
mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2, 3))")  // prints "Result: 6"
let anotherMathFunction = addTwoInts  // 类型推断

// 函数类型作为参数类型
func printMathResult(mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)  // prints "Result: 8"

// 函数类型作为返回类型，以及嵌套函数
func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }  // 嵌套函数
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backwards ? stepBackward : stepForward
}
var currentValue = -4
let moveNearerToZero = chooseStepFunction(currentValue > 0)
// moveNearerToZero now refers to the nested stepForward() function
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")
// -4...
// -3...
// -2...
// -1...
// zero!


// 闭包是自包含的函数代码块，可以在代码中被传递和使用。闭包是引用类型的。
// 闭包有三种形式：
//   全局函数，是一个有名字但不会捕获任何值的闭包；
//   嵌套函数，是一个有名字并可以捕获其包围函数内所有的参数以及定义的常量和变量的闭包；
//   闭包表达式，是一个利用轻量级语法所写的可以捕获其上下文中变量或常量值的匿名闭包。

// 闭包表达式
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
var reversed = names.sort({ (s1: String, s2: String) -> Bool in
    return s1 > s2
})

// 闭包表达式可以使用常量、变量和inout类型作为参数，但不能提供默认值。也可以在参数列表的最后使用可变参数。元组也可以作为参数和返回值。

// 当闭包表达式的参数类型和返回值都可以通过类型推断，我们可以省略参数的类型和返回类型。
// 这里sort()的参数必须是 (String, String) -> Bool 类型的函数。
reversed = names.sort( { s1, s2 in return s1 > s2 } )
// 闭包表达式体只有一条语句时，可以省略 return：
reversed = names.sort( { s1, s2 in s1 > s2 } )
// 闭包表达式中可以使用 $0、$1、……， 来指代第 1 个、第 2 个参数、……。因此，参数也可以省略：
reversed = names.sort( { $0 > $1 } )
// Swift 的 String 类型定义了（>）运算符就是闭包表达式要做的事情：
reversed = names.sort(>)

// 尾随闭包（Trailing Closures）
// 当闭包表达式作为函数的最后一个参数时，可以将这个尾随闭包书写在函数参数列表括号之后：
reversed = names.sort() { $0 > $1 }
// 如果函数只有闭包表达式一个参数，当使用尾随闭包时，可以把()省略掉：
reversed = names.sort { $0 > $1 }

// 捕获值（Capturing Values）
func makeIncrementor(forIncrement amount: Int) -> () -> Int {  // 返回值是一个不带参数的函数
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount  // 嵌套函数可以捕获其包围函数的所有参数以及定义的常量和变量
        return runningTotal
    }
    return incrementor
}
// 捕获引用保证了runningTotal和amount变量在调用完makeIncrementer后不会消失，并且保证了在下一次执行incrementer函数时，runningTotal依旧存在。
let incrementByTen = makeIncrementor(forIncrement: 10)
incrementByTen()  // 返回的值为10
incrementByTen()  // 返回的值为20
incrementByTen()  // 返回的值为30
// 如果您创建了另一个incrementor，它会有属于它自己的一个全新、独立的runningTotal变量的引用：
let incrementBySeven = makeIncrementor(forIncrement: 7)
incrementBySeven()  // 返回的值为7
// 再次调用原来的incrementByTen会在原来的变量runningTotal上继续增加值，该变量和incrementBySeven中捕获的变量没有任何联系：
incrementByTen()  // 返回的值为40

// 闭包是引用类型。无论将闭包赋值给一个常量还是变量，实际上都是将常量或变量的值设置为对应闭包的引用。
// 这也意味着如果将闭包赋值给了两个不同的常量或变量，两个值都会指向同一个闭包：
let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()  // 返回的值为50

// 逃逸闭包(Escaping Closures)
// 当一个闭包作为参数传到一个函数中，但是这个闭包在函数返回之后才被执行，我们称该闭包从函数中逃逸。
var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: () -> Void) {
    completionHandlers.append(completionHandler)
}  // 闭包 completionHandler 被保存在一个函数外部定义的数组中，在 someFunctionWithEscapingClosure 返回后还可以执行。

// 非逃逸闭包(Nonescaping Closures)
// 当你定义接受闭包作为参数的函数时，你可以在闭包参数名之前标注 @noescape，用来指明这个闭包是不允许“逃逸”出这个函数的，即确保闭包在函数结束之后就没用了，从而可以进行一些比较激进的优化。
func someFunctionWithNoescapeClosure(@noescape closure: () -> Void) {  // () -> Void 表示没有参数，没有返回值的函数
    closure()
}
// 标注 @noescape 的闭包参数不能被保存在一个函数外部定义的变量中，否则会获得一个编译错误。

// 将闭包标注为 @noescape 使你能在闭包中隐式地引用 self：
class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100   // 逃逸闭包在调用时可能会引入同名的标识符，因此，不能省略 self
        someFunctionWithNoescapeClosure { x = 200 }  // 可以隐式地引用 self
    }
}
let instance = SomeClass()
instance.doSomething()
print(instance.x)  // prints "200"
completionHandlers.first?()
print(instance.x)  // prints "100"

// 延迟求值
// 闭包让你能够延迟求值，因为代码段不会被执行直到你调用这个闭包。
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)  // prints "5"
let customerProvider = { customersInLine.removeAtIndex(0) }
print(customersInLine.count)  // prints "5"
print("Now serving \(customerProvider())!")  // prints "Now serving Chris!"
print(customersInLine.count)  // prints "4"

// 自动闭包（Autoclosures）
// 自动闭包是一种自动创建的闭包，它能将一个普通的表达式包装成闭包：
func serveCustomer(@autoclosure customerProvider: () -> String) {  // 通过将参数标记为 @autoclosure 来接收一个自动闭包
    print("Now serving \(customerProvider())!")
}
serveCustomer(customersInLine.removeAtIndex(0))  // prints "Now serving Alex!"
// 如果参数没有标记 @autoclosure，则需要使用显式闭包：serveCustomer( { customersInLine.removeAtIndex(0) } )
// @autoclosure特性暗含了@noescape特性。如果你想让这个闭包可以“逃逸”，则应该使用@autoclosure(escaping)特性：
var customerProviders: [() -> String] = []
func collectCustomerProviders(@autoclosure(escaping) customerProvider: () -> String) {
    customerProviders.append(customerProvider)
}
collectCustomerProviders(customersInLine.removeAtIndex(0))  // 没有调用传入的 customerProvider 闭包，而是将闭包追加到了 customerProviders 数组中
collectCustomerProviders(customersInLine.removeAtIndex(0))
print("Collected \(customerProviders.count) closures.")  // prints "Collected 3 closures."
for customerProvider in customerProviders {
    print("Now serving \(customerProvider())!")  // 调用闭包
}


// 错误处理
// Swift 中有4种处理错误的方式。你可以把函数抛出的错误通过声明 throws 来传递给调用此函数的代码、用do-catch语句处理错误、将错误作为可选类型处理、或者断言此错误根本不会发生。
// 相对于可选类型只能表达存在与缺失，错误处理可以推断失败的原因，并传播至程序的其他部分。
// 自定义错误类型。在 Swift 中，enum 是最好的自定义错误类型的方法：
enum MyError: ErrorType {  
    case NotExist
    case OutOfRange
}

// 一个函数可以通过在声明中添加 throws 关键词来声明它可能抛出错误：
func canThrowAnError() throws -> String {
    // ...
    throw MyError.NotExist // 抛出错误
    // ...
    defer {  // 即使没有涉及到错误处理，也可以使用defer语句。
      // defer语句将在当前的作用域退出之前执行。
      // 不管是否抛出错误，总是会执行的代码。通常在这里做一些清理工作。
      // defer 语句中的代码不能包含任何控制转移语句，例如break或是return语句，或是抛出一个错误。
    } // 可以有多个defer 语句，他们的执行顺序与定义的顺序相反。
    // ...
}

// 捕获错误
/* do-catch 语法：
do {
    try expression
    statements
} catch pattern 1 {
    statements
} catch pattern 2 where condition {
    statements
} */
do {
    let theResult = try canThrowAnError() // 可能会抛出错误的表达式
    // 如果没有错误抛出，将继续执行的代码。否则，不会被执行
} catch {
    // 捕获抛出的错误，并处理它
}
// 如果希望错误继续传递下去，则可以去掉do-catch语句，但 try 仍必须使用。
// 如果调用 canThrowAnError() 的函数没有声明 throws，则该函数必须处理抛出的错误，而不能将错误继续传递下去。

// catch 支持模式匹配
do {
    let theResult = try canThrowAnError()
} catch MyError.NotExist {
    // deal with not exist
} catch MyError.OutOfRange {
    // deal with out of range
}

// 可以使用 try? 通过将错误转换成一个可选值来处理错误。如果在求值 try? 表达式时一个错误被抛出，那么表达式的值就是 nil。
func someThrowingFunction() throws -> Int {
    // ...
}

let x = try? someThrowingFunction()

let y: Int?
do {
    y = try someThrowingFunction()
} catch {
    y = nil
}
// 如果someThrowingFunction()抛出一个错误，x和y的值是nil。否则x和y的值就是该函数的返回值。注意，无论someThrowingFunction()的返回值类型是什么类型，x和y都是这个类型的可选类型。

// 某个方法或者函数虽然声明会抛出异常，但是我确信在这个上下文中是绝对不会抛出错误的。这种情况下 我们可以使用 try! 来禁用错误传递。这会把调用包装在一个断言不会有错误抛出的运行时断言中。如果实际上抛出了错误，你会得到一个运行时错误。
let photo = try! loadImage("./Resources/John Appleseed.jpg")


// 断言
let age = -3
assert(age >= 0, "A person's age cannot be less than zero")
// 因为 age < 0，所以断言会触发，第二个参数（可选）表示的调试信息被输出到控制台，程序终止。


// 结构体和类
// Swift 中类和结构体的共同点：
//   定义属性用于存储值
//   定义方法用于提供功能
//   定义附属脚本用于访问值
//   定义构造器用于生成初始化值
//   通过扩展以增加默认实现的功能
//   实现协议以提供某种标准功能
// 与结构体相比，类还有如下的附加功能：
//   继承允许一个类继承另一个类的特征
//   类型转换允许在运行时检查和解释一个类实例的类型
//   析构器允许一个类实例释放任何其所被分配的资源
//   引用计数允许对一个类的多次引用
struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}
// 如果结构体或类的所有属性都有默认值，同时没有自定义的构造器，也没有从父类中继承构造器，那么 Swift 会给这些结构体或类提供一个默认构造器。这个默认构造器将简单地创建一个所有属性值都设置为默认值的实例。
// 这个限制可以防止当你已经定义了一个进行额外必要设置的复杂构造器之后，别人还是错误地使用了一个自动生成的构造器。
// 假如你希望默认构造器、逐一属性构造器以及你自己的自定义构造器都能用来创建实例，可以将自定义的构造器写到扩展（extension）中。
// 通过定义直接绑定的值称为默认值，而通过构造器绑定的值称为初始值。
let someResolution = Resolution()
let someVideoMode = VideoMode()
// 使用点语法（dot syntax），你可以访问实例的属性：
print("The width of someResolution is \(someResolution.width)")  // 输出 "The width of someResolution is 0"
someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")  // 输出 "The width of someVideoMode is now 1280"

// 如果结构体没有提供自定义的构造器，也没有从父类中继承构造器，它们将自动获得一个以所有存储属性为参数的构造器（逐一属性构造器），用于初始化新结构体实例中成员的属性。而类则没有这样的隐含构造器。
let hd = Resolution(width: 1920, height: 1080)

// 结构体是值类型，而类是引用类型。
// 实际上，在 Swift 中，所有的基本类型：整数（Integer）、浮点数（floating-point）、布尔值（Boolean）、字符串（string)、数组（array）和字典（dictionary），都是值类型，并且在底层都是以结构体的形式所实现。 
var cinema = hd  // cinema的值其实是hd的一个拷贝副本，而不是hd本身
let alsoSomeVideoMode = someVideoMode  // alsoSomeVideoMode 和 someVideoMode 实际上引用的是相同的VideoMode实例
// 对于值类型，编译器在底层只在绝对必要时才执行实际的拷贝，Swift 管理所有的值拷贝以确保性能最优化。

// 存储属性就是存储在特定类或结构体的实例里的一个常量或变量，存储属性只能用于类和结构体。
struct FixedLengthRange {
    var firstValue: Int
    let length: Int  // 常量存储属性可以在构造器中初始化
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)  // 该区间表示整数0，1，2
rangeOfThreeItems.firstValue = 6  // 该区间现在表示整数6，7，8
let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)  // 创建了一个结构体的实例并将其赋值给一个常量，则无法修改该实例的任何属性，即使定义了变量存储属性
// rangeOfFourItems.firstValue = 6  // 尽管 firstValue 是个变量属性，这里还是会报错
// 这种行为是由于结构体（struct）属于值类型。当值类型的实例被声明为常量的时候，它的所有属性也就成了常量。
// 属于引用类型的类（class）则不一样。把一个引用类型的实例赋给一个常量后，仍然可以修改该实例的变量属性。

// 延迟存储属性是指当第一次被调用的时候才会计算其初始值的属性。在属性声明前使用lazy来标示一个延迟存储属性。延迟存储属性必须声明成变量（使用var关键字）。
class DataImporter { // DataImporter 是一个负责将外部文件中的数据导入的类。这个类的初始化会消耗不少时间。
    var fileName = "data.txt"
    // 这里会提供数据导入功能
}
class DataManager {
    lazy var importer = DataImporter()  // 在初始化之前，importer 的值是 nil
    var data = [String]()
    // 这里会提供数据管理功能
}
let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")  
// DataImporter 实例的 importer 属性还没有被创建。importer属性只有在第一次被访问的时候才被创建，比如访问它的属性fileName时：
print(manager.importer.fileName)  // DataImporter 实例的 importer 属性现在被创建了
// 输出 "data.txt”
// 如果一个被标记为lazy的属性在没有初始化时就同时被多个线程访问，则无法保证该属性只会被初始化一次。

// 计算属性不直接存储值，而是提供一个 getter 和一个可选的 setter，来间接获取和设置其他属性或变量的值。计算属性可以用于类、结构体和枚举。
struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {  // center 是计算属性
        get {  // center 属性的 getter
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {  // center 属性的 setter。
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
        // 如果省略setter的参数。则使用默认参数名称 newValue：
        /* set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        } */
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
    size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center  // 调用 center 属性的 getter 来获取它的值
square.center = Point(x: 15.0, y: 15.0)  // 调用 center 属性的 setter 来修改属性 origin 的 x 和 y 的值
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")  // 输出 "square.origin is now at (10.0, 10.0)”

// 只有 getter 没有 setter 的计算属性就是只读计算属性。只读计算属性总是返回一个值，可以通过点运算符访问，但不能设置新的值。只读计算属性的声明可以去掉get关键字和花括号：
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {  // volume 是只读计算属性。必须使用 var 关键字定义计算属性，包括只读计算属性，因为它们的值不是固定的。volume 的值依赖于 width、height 和 depth，还是会变化的。
        return width * height * depth
    }
}
let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")
// 输出 "the volume of fourByFiveByTwo is 40.0"

// 属性观察器监控和响应属性值的变化，每次属性被设置值的时候都会调用属性观察器，甚至新值和当前值相同的时候也不例外。
// 为存储型属性设置默认值或者在构造器中为其赋值时，它们的值是被直接设置的，不会触发任何属性观察者。
// 但是，父类的属性在子类的构造器中被赋值时，它在父类中的willSet和didSet观察器会被调用。
// 可以为除了延迟存储属性之外的其他存储属性添加属性观察器，也可以通过重写属性的方式为继承的属性（包括存储属性和计算属性）添加属性观察器。
// 不需要为非重写的计算属性添加属性观察器，因为可以通过它的 setter 直接监控和响应值的变化。
// 可以为属性添加如下的一个或多个观察器：
//   willSet 在新的值被设置之前调用。willSet 观察器会将新的属性值作为常量参数传入，可以为这个参数显式指定一个名称，否则使用默认名称 newValue；
//   didSet 在新的值被设置之后立即调用。didSet 观察器会将旧的属性值作为参数传入，可以为该参数显式命名或者使用默认参数名 oldValue。
// 如果在一个属性的 didSet 观察器里为它赋值，这个值会替换之前设置的值，但这不会造成属性观察器被再次调用。
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {  // 使用默认的参数名 oldValue
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps
stepCounter.totalSteps = 896
// About to set totalSteps to 896
// Added 536 steps

// 计算属性和属性观察器所描述的功能也可以用于全局变量和局部变量。
// 全局的常量或变量都是延迟计算的，跟延迟存储属性相似，不同的地方在于，全局的常量或变量不需要标记lazy修饰符。
// 局部范围的常量或变量从不延迟计算，跟不延迟存储属性相似。

// 类型属性用于定义某个类型所有实例共享的数据。
// 存储型类型属性可以是变量或常量，计算型类型属性跟实例的计算型属性一样只能定义成变量属性。
// 跟实例的存储型属性不同，必须给存储型类型属性指定默认值，因为类型本身没有构造器，也就无法在初始化过程中使用构造器给类型属性赋值。
// 存储型类型属性是延迟初始化的，它们只有在第一次被访问的时候才会被初始化。即使它们被多个线程同时访问，系统也保证只会对其进行一次初始化，并且不需要对其使用 lazy 修饰符。
struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}
enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}
class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideableComputedTypeProperty: Int {  // 关键字 class 表示这是一个类型的属性、方法或下标，且允许子类对父类的实现进行重写。static 相当于 final class。class 只能用在类中。
        return 107
    }
}
print(SomeStructure.storedTypeProperty)  // 输出 "Some value."
SomeStructure.storedTypeProperty = "Another value."
print(SomeStructure.storedTypeProperty)  // 输出 "Another value.”
print(SomeEnumeration.computedTypeProperty)  // 输出 "6"
print(SomeClass.computedTypeProperty)  // 输出 "27"

// 方法是与某些特定类型相关联的函数。类、结构体、枚举都可以定义实例方法和类型方法。

// 实例方法
class Counter {
    var count = 0
    func increment() {
        ++count
    }
    func incrementBy(amount: Int, numberOfTimes: Int) {
        count += amount * numberOfTimes
    }
    func reset() {
        count = 0
    }
}
let counter = Counter()  // 初始计数值是0
counter.increment()  // 计数值现在是1
counter.incrementBy(5, numberOfTimes: 3)  // counter 的值现在是 16
counter.reset()  // 计数值现在是0

// 类型的每一个实例都有一个隐含属性叫做 self，self 完全等同于该实例本身。
struct Point {
    var x = 0.0, y = 0.0
    func isToTheRightOfX(x: Double) -> Bool {
        return self.x > x
    }
}

// 结构体和枚举是值类型。默认情况下，值类型的属性不能在它的实例方法中被修改。
// 但是，可以为实例方法加上 mutating 关键字，然后就可以在方法内部改变结构体和枚举的属性值。
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveByX(deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveByX(2.0, y: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")  // 打印输出: "The point is now at (3.0, 4.0)"
let fixedPoint = Point(x: 3.0, y: 3.0)  // 不能在结构体类型的常量上调用可变方法
// fixedPoint.moveByX(2.0, y: 3.0)  // 这里将会报告一个错误

// mutating 方法还可以给 self 属性赋予一个全新的实例，这个新实例会替换现存实例。
struct Point2 {
    var x = 0.0, y = 0.0
    mutating func moveByX(deltaX: Double, y deltaY: Double) {
        self = Point2(x: x + deltaX, y: y + deltaY)
    }
}

// 枚举的可变方法可以把self设置为同一枚举类型中不同的成员：
enum TriStateSwitch {
    case Off, Low, High
    mutating func next() {
        switch self {
        case Off:
            self = Low
        case Low:
            self = High
        case High:
            self = Off
        }
    }
}
var ovenLight = TriStateSwitch.Low
ovenLight.next()  // ovenLight 现在等于 .High
ovenLight.next()  // ovenLight 现在等于 .Off

// 类型方法
struct LevelTracker {
    static var highestUnlockedLevel = 1
    static func unlockLevel(level: Int) { // 以 static 开头的为类型方法
        if level > highestUnlockedLevel { highestUnlockedLevel = level }
    }
    static func levelIsUnlocked(level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    var currentLevel = 1
    mutating func advanceToLevel(level: Int) -> Bool {
        if LevelTracker.levelIsUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}
class Player {
    var tracker = LevelTracker()
    let playerName: String
    func completedLevel(level: Int) {
        LevelTracker.unlockLevel(level + 1)
        tracker.advanceToLevel(level + 1)
    }
    init(name: String) {
        playerName = name
    }
}
// 在类型方法的方法体（body）中，self指向这个类型本身，而不是类型的某个实例。这意味着你可以用self来消除类型属性和类型方法参数之间的歧义（类似于我们在前面处理实例属性和实例方法参数时做的那样）。

// 下标 （subscripts）可以定义在类、结构体和枚举中，是访问集合（collection），列表（list）或序列（sequence）中元素的快捷方式。它允许你通过在实例名称后面的方括号中传入一个或者多个索引值来对实例进行存取。
struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {  // 只读下标
        return multiplier * index
    }
}
let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")  // 输出 "six times three is 18"

// 一个类型可以定义多个下标，通过不同入参的数量和类型进行重载。

// 下标不限于一维，它可以接受任意数量的入参，并且这些入参可以是任意类型。下标的返回值也可以是任意类型。下标可以使用变量参数和可变参数，但不能使用输入输出参数，也不能给参数设置默认值。
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(count: rows * columns, repeatedValue: 0.0)
    }
    func indexIsValidForRow(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double {  // 可读写下标
        get {
            assert(indexIsValidForRow(row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValidForRow(row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}
var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 1] = 1.5
matrix[1, 0] = 3.2

// 当 S 类继承 P 类时，S 类叫子类（subclass），P 类叫超类（或父类，superclass）。另外，不继承于其它类的类，称之为基类（base class）。
// Swift 中的类并不是从一个通用的基类继承而来。如果你不为定义的类指定一个超类的话，这个类就自动成为基类。
class Vehicle {  // 基类
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // 什么也不做-因为车辆不一定会有噪音
    }
}
class Bicycle: Vehicle {  // 子类
    var hasBasket = false  // 子类新增的属性
}

// 重写（overriding）是指子类可以为继承来的实例方法、类方法、实例属性或下标提供自己定制的实现。类型的属性、方法或下标要将 static 换成 class 修饰符才可以被重写。
// 在子类中可以通过 super 来访问超类版本的方法，属性或下标：super.someMethod()、super.someProperty、super[someIndex]。

// 重写方法
class Train: Vehicle {
    override func makeNoise() {  // 重写父类 Vehicle 中继承下来的 makeNoise() 方法。override 不能省略。
        print("Choo Choo")
    }
}
let train = Train()
train.makeNoise()  // 打印 "Choo Choo"

// 重写属性。可以重写继承来的实例属性或类型属性。
// 可以将一个继承来的只读属性重写为一个读写属性，只需要在重写版本的属性里提供 getter 和 setter 即可。但是，你不可以将一个继承来的读写属性重写为一个只读属性。
// 如果你在重写属性中提供了 setter，那么你也一定要提供 getter。如果你不想在重写版本中的 getter 里修改继承来的属性值，你可以直接通过super.someProperty来返回继承来的值，其中someProperty是你要重写的属性的名字。
class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}
let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")  // Car: traveling at 25.0 miles per hour in gear 3
// 可以通过重写属性为一个继承来的属性添加属性观察器。
class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}
// 不可以为继承来的常量存储型属性或继承来的只读计算型属性添加属性观察器。这些属性的值是不可以被设置的，所以，为它们提供willSet或didSet实现是不恰当。
// 不可以同时提供重写的 setter 和重写的属性观察器。如果你想观察属性值的变化，并且你已经为那个属性提供了定制的 setter，那么你在 setter 中就可以观察到任何值变化了。
let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")  // AutomaticCar: traveling at 35.0 miles per hour in gear 4

// 可以通过把方法，属性或下标标记为 final 来防止它们被重写。
// 可以通过在关键字 class 前添加 final 修饰符来将整个类标记为 final 的。这样的类是不可被继承的，试图继承这样的类会导致编译报错。

// Swift 中构造器以关键字 init 表示：
struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}
let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)  // boilingPointOfWater.temperatureInCelsius 是 100.0
let freezingPointOfWater = Celsius(fromKelvin: 273.15)    // freezingPointOfWater.temperatureInCelsius 是 0.0

// 与函数或方法不同，如果在定义构造器时没有提供参数的外部名字，Swift 会为构造器的每个参数（包括第一个参数）自动生成一个跟内部名字相同的外部名。
// 因此，构造器的参数总是带外部名字的，调用时要提供外部参数名字。如果不希望为构造器的某个参数提供外部名字，可以使用下划线(_)来：
struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    init(_ celsius: Double){
        temperatureInCelsius = celsius
    }
}
let bodyTemperature = Celsius(37.0)  // bodyTemperature.temperatureInCelsius 为 37.0

// 如果你定制的类型包含一个逻辑上允许取值为空的存储型属性，无论是因为它无法在初始化时赋值，还是因为它在之后某个时间点可以赋值为空，你都需要将它定义为可选类型。可选类型的属性将自动绑定默认值为nil。
class SurveyQuestion {
    let text: String
    var response: String?
    init(text: String) {
        self.text = text  // 常量属性可以在定义它的类的构造器中初始化（不能在子类的构造器中初始化）。一旦常量属性被初始化，它将永远不可更改。
    }
    func ask() {
        print(text)
    }
}
let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
cheeseQuestion.ask()  // 输出 "Do you like cheese?"
cheeseQuestion.response = "Yes, I do like cheese."

// 构造器可以通过调用其它构造器来完成实例的部分构造过程。这一过程称为构造器代理。
// 值类型（结构体和枚举类型）可以使用 self.init 在自定义的构造器中引用类型中的其它构造器。并且你只能在构造器内部调用 self.init。
struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

// 类的构造器分成两种：指定构造器和便利构造器。便利构造器要在 init 前加 convenience。
// 每一个类都必须拥有至少一个指定构造器。在某些情况下，可通过继承了父类中的指定构造器而满足了这个条件。
// 指定构造器必须调用其直接父类的的指定构造器。
// 便利构造器必须调用同一类中定义的其它构造器。
// 便利构造器必须最终导致一个指定构造器被调用。
class Food {
    var name: String
    init(name: String) {  // 指定构造器
        self.name = name
    }
    convenience init() {  // 便利构造器。自动提供的默认构造器总是指定构造器，但自定义的无参构造器，则可以是指定构造器，也可以是便利构造器。
        self.init(name: "[Unnamed]")
    }
}

// Swift 中的子类默认情况下不会继承父类的构造器。
// 假设为子类中引入的所有新属性都提供了默认值，则如果子类没有定义任何指定构造器，它将自动继承所有父类的指定构造器。
// 即使属性没有默认值，子类只要实现了父类的所有指定构造器（无论是通过自动继承过来的，还是提供了自定义实现），就会自动继承父类的所有便利构造器。

// 当你在编写一个和父类中指定构造器相匹配的子类构造器时，实际上是在重写父类的这个指定构造器。因此，你必须在定义子类构造器时带上 override 修饰符。即使你重写的是系统自动提供的默认构造器，也需要带上 override 修饰符
// 如果你编写了一个和父类便利构造器相匹配的子类构造器，由于子类不能直接调用父类的便利构造器。也就是说，便利构造器不存在重写行为，因此不需要加 override。
// 子类可以在初始化时修改继承来的变量属性，但是不能修改继承来的常量属性。
class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {  // 子类可以将父类的指定构造器重写为便利构造器。
        self.init(name: name, quantity: 1)
    }
}
// 尽管RecipeIngredient将父类的指定构造器重写为了便利构造器，它依然提供了父类的所有指定构造器的实现。因此，RecipeIngredient会自动继承父类的所有便利构造器。即继承了父类 Food 的便利构造器 init()。这个继承版本的init()在功能上跟Food提供的版本是一样的，只是它会代理到RecipeIngredient版本的init(name: String)而不是Food提供的版本。
class ShoppingListItem: RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purchased ? " ✔" : " ✘"
        return output
    }
}
// 由于 ShoppingListItem 为自己引入的所有属性都提供了默认值，并且没有定义任何构造器，它将自动继承所有父类中的指定构造器和便利构造器。

// 如果一个类、结构体或枚举类型的对象，在构造过程中有可能失败，则为其定义一个或多个可失败构造器，其语法为在init关键字后面加添问号(init?)。
// 可失败构造器的参数名和参数类型，不能与其它非可失败构造器的参数名，及其参数类型相同。
// 可通过return nil语句来表明可失败构造器在何种情况下应该“失败”，但不要用关键字return来表明构造成功。因为构造器不支持返回值。
struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty { return nil }  // 失败情况
        self.species = species
    }
}
let someCreature = Animal(species: "Giraffe")  // someCreature 的类型是 Animal? 而不是 Animal

// 带原始值的枚举类型会自带一个可失败构造器init?(rawValue:)，该可失败构造器有一个名为rawValue的参数，其类型和枚举类型的原始值类型一致。
// 如果该参数的值能够和某个枚举成员的原始值匹配，则该构造器会构造相应的枚举成员，否则构造失败。
enum TemperatureUnit: Character {
    case Kelvin = "K", Celsius = "C", Fahrenheit = "F"
}
let fahrenheitUnit = TemperatureUnit(rawValue: "F")
if fahrenheitUnit != nil {
    print("This is a defined temperature unit, so initialization succeeded.")
}
// 打印 "This is a defined temperature unit, so initialization succeeded."
let unknownUnit = TemperatureUnit(rawValue: "X")
if unknownUnit == nil {
    print("This is not a defined temperature unit, so initialization failed.")
}
// 打印 "This is not a defined temperature unit, so initialization failed."

// 值类型（结构体或枚举）的可失败构造器，可以在构造过程中的任意时间点触发构造失败。
// 而类的可失败构造器只能在类引入的所有存储型属性被初始化后，以及构造器代理调用完成后，才能触发构造失败。
class Product {
    let name: String!  // 隐式拆包可选字符串类型，它有默认值 nilS
    init?(name: String) {
        self.name = name
        if name.isEmpty { return nil }
    }
}

// 如果你代理到的其他可失败构造器触发构造失败，整个构造过程将立即终止，接下来的任何构造代码不会再被执行。
class CartItem: Product {
    let quantity: Int!
    init?(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
        if quantity < 1 { return nil }
    }
}

// 子类中重写父类的可失败构造器，也可以用子类的非可失败构造器重写一个父类的可失败构造器，反之则不行。
class Document {
    var name: String?
    // 该构造器创建了一个 name 属性的值为 nil 的 document 实例
    init() {}
    // 该构造器创建了一个 name 属性的值为非空字符串的 document 实例
    init?(name: String) {
        self.name = name
        if name.isEmpty { return nil }
    }
}
class AutomaticallyNamedDocument: Document {
    override init() {
        super.init()
        self.name = "[Untitled]"
    }
    override init(name: String) {  // 子类用另一种方式处理了空字符串的情况，所以不再需要一个可失败构造器
        super.init()
        if name.isEmpty {
            self.name = "[Untitled]"
        } else {
            self.name = name
        }
    }
}
// 你可以在子类的非可失败构造器中使用强制解包来调用父类的可失败构造器。
class UntitledDocument: Document {
    override init() {
        super.init(name: "[Untitled]")!  // 如果在调用父类的可失败构造器init?(name:)时传入的是空字符串，那么强制拆包操作会引发运行时错误。
    }
}

// 除了使用 init? 来构造可失败构造器外，还可以使用 init! 来构造可失败构造器。该可失败构造器将会构建一个对应类型的隐式拆包可选类型的对象。
// 可以在init?中代理到init!，反之亦然。还可以用init代理到init!，不过，一旦init!构造失败，则会触发一个断言。

// 在类的构造器前添加required修饰符表明所有该类的子类都必须实现该构造器，即必需构造器：
class SomeClass {
    required init() {
        // 构造器的实现代码
    }
}
// 在子类重写父类的必要构造器时，必须在子类的构造器前也添加required修饰符，表明该构造器要求也应用于继承链后面的子类。在重写父类中必要的指定构造器时，不需要添加override修饰符：
class SomeSubclass: SomeClass {
    required init() {
        // 构造器的实现代码
    }
}

// 通过闭包或函数设置属性的默认值
class SomeClass {
    let someProperty: SomeType = {
        // 在这个闭包中给 someProperty 创建一个默认值
        // someValue 必须和 SomeType 类型相同
        return someValue
    }()  // 注意闭包结尾的大括号后面接了一对空的小括号。这用来告诉 Swift 立即执行此闭包。
}
// 使用闭包来初始化属性，请记住在闭包执行时，实例的其它部分都还没有初始化。这意味着你不能在闭包里访问其它属性，即使这些属性有默认值。同样，你也不能使用隐式的self属性，或者调用任何实例方法。

// 析构器只适用于类，当一个类的实例被释放之前，析构器会被立即自动调用（不能主动调用析构器）。析构器用关键字deinit来标示。每个类最多只能有一个析构器，而且析构器不带任何参数。
// Swift 会自动释放不再需要的实例以释放资源，除非是需要手动清理的资源才需要使用析构器。
// 子类继承了父类的析构器，并且在子类析构器实现的最后，父类的析构器会被自动调用。即使子类没有提供自己的析构器，父类的析构器也同样会被调用。
// 因为直到实例的析构器被调用后，实例才会被释放，所以析构器中还是可以访问实例的所有属性的。
class Bank {
    static var coinsInBank = 10_000
    static func vendCoins(var numberOfCoinsToVend: Int) -> Int {
        numberOfCoinsToVend = min(numberOfCoinsToVend, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    static func receiveCoins(coins: Int) {
        coinsInBank += coins
    }
}
class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.vendCoins(coins)
    }
    func winCoins(coins: Int) {
        coinsInPurse += Bank.vendCoins(coins)
    }
    deinit {
        Bank.receiveCoins(coinsInPurse)
    }
}
var playerOne: Player? = Player(coins: 100)
print("A new player has joined the game with \(playerOne!.coinsInPurse) coins")  // 打印 "A new player has joined the game with 100 coins"
print("There are now \(Bank.coinsInBank) coins left in the bank")  // 打印 "There are now 9900 coins left in the bank"
playerOne!.winCoins(2_000)
print("PlayerOne won 2000 coins & now has \(playerOne!.coinsInPurse) coins")  // 输出 "PlayerOne won 2000 coins & now has 2100 coins"
print("The bank now only has \(Bank.coinsInBank) coins left")  // 输出 "The bank now only has 7900 coins left"
playerOne = nil
print("PlayerOne has left the game")  // 打印 "PlayerOne has left the game"
print("The bank now has \(Bank.coinsInBank) coins")  // 打印 "The bank now has 10000 coins"

// Swift 使用自动引用计数（ARC）机制来跟踪和管理你的应用程序的内存。与垃圾回收机制不同，ARC 在检测到对象没有强引用时就会立即回收，而垃圾回收机制只会在内存不足时才会触发回收。
// 引用计数仅仅应用于类的实例。结构体和枚举类型是值类型，不是引用类型，也不是通过引用的方式存储和传递。
// 将实例赋值给属性、常量或变量，它们都会创建此实例的强引用。只要强引用还在，实例是不允许被销毁的。
// Swift 提供了两种办法用来解决在使用类的属性时所遇到的循环强引用问题：弱引用（weak reference）和无主引用（unowned reference）。
// 对于生命周期中会变为nil的实例使用弱引用。相反地，对于初始化赋值后再也不会被赋值为nil的实例，使用无主引用。

// 在变量声明之前加上 weak 关键字，该变量就变成弱引用。弱引用必须被声明为变量，而且必须声明可选类型，因为弱引用可能没有值。弱引用会被 ARC 销毁。
// ARC 会在弱引用的实例被销毁后自动将其赋值为 nil。
class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is being deinitialized") }
}
class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
    weak var tenant: Person?
    deinit { print("Apartment \(unit) is being deinitialized") }
}

// 在声明变量时，在前面加上关键字unowned表示这是一个无主引用。无主引用是永远有值的。因此，总是被定义为非可选类型。
class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name) is being deinitialized") }
}
class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { print("Card #\(number) is being deinitialized") }
}

// 两个属性都必须有值，并且初始化完成后永远不会为nil的场景：
class Country {
    let name: String
    var capitalCity: City!  // 隐式拆包可选属性
    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
}
class City {
    let name: String
    unowned let country: Country  // 无主引用
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
}


// 枚举
// 枚举是值类型。
// Swift 的枚举成员在被创建时不会被赋予一个默认的整型值。在上面的CompassPoint例子中，North、South、East和West不会被隐式地赋值为0、1、2和3，它们就表示自己。
enum CompassPoint {
    case North
    case South
    case East
    case West
}

// 多个成员值可以出现在同一行上，用逗号隔开：
enum Planet {
    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

// 每个枚举定义了一个全新的类型。
var directionToHead = CompassPoint.West
// 一旦directionToHead被声明为CompassPoint类型，你可以使用更简短的点语法将其设置为另一个CompassPoint的值：
directionToHead = .East
// 或者：var directionToHead: CompassPoint = .East
// 可以使用switch语句匹配单个枚举值：
switch directionToHead {
    case .North:
        print("Lots of planets have a north")
    case .South:
        print("Watch out for penguins")
    case .East:
        print("Where the sun rises")
    case .West:
        print("Where the skies are blue")
}

// 关联值（Associated Values）
enum Barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}
var productBarcode = Barcode.UPCA(8, 85909, 51226, 3)
// 上面的例子创建了一个名为productBarcode的变量，并将Barcode.UPCA赋值给它，关联的元组值为(8, 85909, 51226, 3)。

// 可以在 switch 的 case 分支代码中提取每个关联值作为一个常量（用let前缀）或者作为一个变量（用var前缀）来使用：
switch productBarcode {
case .UPCA(let numberSystem, let manufacturer, let product, let check):
    print("UPC-A: \(numberSystem), \(manufacturer), \(product), \(check).")
case .QRCode(let productCode):
    print("QR code: \(productCode).")
}
// 如果一个枚举成员的所有关联值都被提取为常量，或者都被提取为变量，为了简洁，可以只在成员名称前标注一个let或者var：
switch productBarcode {
case let .UPCA(numberSystem, manufacturer, product, check):
    print("UPC-A: \(numberSystem), \(manufacturer), \(product), \(check).")
case let .QRCode(productCode):
    print("QR code: \(productCode).")
}

// 原始值（Raw Values）
// 可以给枚举成员赋予一个值（称为“原始”值），原始值的类型可以是字符串、字符、整型或浮点数。所有枚举量的原始值类型必须相同，且每个原始值在枚举声明中必须是唯一的。
enum ASCIIControlCharacter: Character {
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}
// 原始值和关联值是不同的。原始值是在定义枚举时被预先填充的值。对于一个特定的枚举成员，它的原始值始终不变。关联值是创建一个基于枚举成员的常量或变量时才设置的值，枚举成员的关联值可以变化。
// 在使用原始值为整数或者字符串类型的枚举时，不需要显式地为每一个枚举成员设置原始值，Swift 将会自动为你赋值。
enum Planet: Int  // 使用整型原始值
    // 如果第一个枚举成员没有设置原始值，其原始值将为0。以后每个枚举量依次增加 1。例如：Planet.Venus 的隐式原始值为2，依次类推。
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}
enum CompassPoint: String {  // 当使用字符串作为枚举类型的原始值时，每个枚举成员的隐式原始值为该枚举成员的名称。
    case North, South, East, West
}
// 使用枚举成员的rawValue属性可以访问该枚举成员的原始值：
let earthsOrder = Planet.Earth.rawValue  // earthsOrder 值为 3
let sunsetDirection = CompassPoint.West.rawValue  // sunsetDirection 值为 "West"

// 如果在定义枚举类型的时候使用了原始值，那么将会自动获得一个构造器，它接收一个叫做rawValue的参数，参数类型为原始值类型，返回值则是枚举成员或nil。
let possiblePlanet = Planet(rawValue: 7)  // possiblePlanet 类型为 Planet?，值为 Planet.Uranus
let positionToFind = 9
if let somePlanet = Planet(rawValue: positionToFind) {
    switch somePlanet {
    case .Earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
} else {
    print("There isn't a planet at position \(positionToFind)")
}
// 输出 "There isn't a planet at position 9

// 递归枚举（recursive enumeration）是一种枚举类型，它的枚举量使用该枚举类型的实例作为关联值。
enum ArithmeticExpression {
    case Number(Int)
    indirect case Addition(ArithmeticExpression, ArithmeticExpression)  // indirect 表明枚举量 Addition 递归使用 ArithmeticExpression 的实例作为它的关联值
    indirect case Multiplication(ArithmeticExpression, ArithmeticExpression)
}
// 在枚举类型开头加上indirect关键字来表明它的所有成员都是可递归的：
indirect enum ArithmeticExpression {
    case Number(Int)
    case Addition(ArithmeticExpression, ArithmeticExpression)
    case Multiplication(ArithmeticExpression, ArithmeticExpression)
}

// 要操作具有递归性质的数据结构，使用递归函数是一种直截了当的方式：
func evaluate(expression: ArithmeticExpression) -> Int {
    switch expression {
    case .Number(let value):
        return value
    case .Addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .Multiplication(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}
// 计算 (5 + 4) * 2
let five = ArithmeticExpression.Number(5)
let four = ArithmeticExpression.Number(4)
let sum = ArithmeticExpression.Addition(five, four)
let product = ArithmeticExpression.Multiplication(sum, ArithmeticExpression.Number(2))
print(evaluate(product))  // 输出 "18"


// Swift 为不确定类型提供了两种特殊的类型别名：
//   AnyObject：表示任何类类型的实例。
//   Any：表示任何类型，包括函数类型。
var anyObjectVar: AnyObject = 7
anyObjectVar = "Changed value to a string, not good practice, but possible."

// 可以在 switch 表达式的 case 中使用 is 和 as 操作符来找出只知道是 Any 或 AnyObject 类型的常量或变量的具体类型。
var things = [Any]()
things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((3.0, 5.0))
things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
things.append({ (name: String) -> String in "Hello, \(name)" })
for thing in things {
    switch thing {
    case 0 as Int:
        print("zero as an Int")
    case 0 as Double:
        print("zero as a Double")
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("a positive double value of \(someDouble)")
    case is Double:
        print("some other double value that I don't want to print")
    case let someString as String:
        print("a string value of \"\(someString)\"")
    case let (x, y) as (Double, Double):
        print("an (x, y) point at \(x), \(y)")
    case let movie as Movie:
        print("a movie called '\(movie.name)', dir. \(movie.director)")
    case let stringConverter as String -> String:
        print(stringConverter("Michael"))
    default:
        print("something else")
    }
}
// zero as an Int
// zero as a Double
// an integer value of 42
// a positive double value of 3.14159
// a string value of "hello"
// an (x, y) point at 3.0, 5.0
// a movie called 'Ghostbusters', dir. Ivan Reitman
// Hello, Michael


// 检查类型
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}
class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}
let library = [  // 数组 library 的类型被推断为 [MediaItem]
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]
var movieCount = 0
var songCount = 0
for item in library {
    if item is Movie {  // 用类型检查操作符（is）来检查一个实例是否属于特定子类型。若实例属于那个子类型，类型检查操作符返回 true，否则返回 false。
        ++movieCount
    } else if item is Song {
        ++songCount
    }
}
print("Media library contains \(movieCount) movies and \(songCount) songs")  // 打印 “Media library contains 2 movies and 3 songs”


// 类型转换
// 在Swift中，值永远不会被隐式转换为其他类型。如果你需要把一个值转换成其他类型，请调用构造器显式转换。
let label = "some text " + String(myVariable)
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine  // pi 等于 3.14159，所以被推测为 Double 类型
let integerPi = Int(pi)  // pi被截断小数部分，integerPi 等于 3，所以被推测为 Int 类型


// 向下转型有两种方式：
//   as?：总是返回一个可选值，并且若下转是不可能的，可选值将是 nil。这使你能够检查向下转型是否成功。
//   as!：向下转型的同时进行强制拆包。只有你可以确定向下转型一定会成功时，才使用强制形式（as!）。当你试图向下转型为一个不正确的类型时，强制形式的类型转换会触发一个运行时错误。
for item in library {
    if let movie = item as? Movie {
        print("Movie: '\(movie.name)', dir. \(movie.director)")
    } else if let song = item as? Song {
        print("Song: '\(song.name)', by \(song.artist)")
    }
}
// Movie: 'Casablanca', dir. Michael Curtiz
// Song: 'Blue Suede Shoes', by Elvis Presley
// Movie: 'Citizen Kane', dir. Orson Welles
// Song: 'The One And Only', by Chesney Hawkes
// Song: 'Never Gonna Give You Up', by Rick Astley

let someObjects: [AnyObject] = [
    Movie(name: "2001: A Space Odyssey", director: "Stanley Kubrick"),
    Movie(name: "Moon", director: "Duncan Jones"),
    Movie(name: "Alien", director: "Ridley Scott")
]
for object in someObjects {
    let movie = object as! Movie
    print("Movie: '\(movie.name)', dir. \(movie.director)")
}
// Movie: '2001: A Space Odyssey', dir. Stanley Kubrick
// Movie: 'Moon', dir. Duncan Jones
// Movie: 'Alien', dir. Ridley Scott
for movie in someObjects as! [Movie] {
    print("Movie: '\(movie.name)', dir. \(movie.director)")
}
// Movie: '2001: A Space Odyssey', dir. Stanley Kubrick
// Movie: 'Moon', dir. Duncan Jones
// Movie: 'Alien', dir. Ridley Scott


// 嵌套类型
// 枚举、结构体和类都是可以互相嵌套的。
struct BlackjackCard {
    // 嵌套的 Suit 枚举
    enum Suit: Character {
       case Spades = "♠", Hearts = "♡", Diamonds = "♢", Clubs = "♣"
    }
    // 嵌套的 Rank 枚举
    enum Rank: Int {
       case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten
       case Jack, Queen, King, Ace
       struct Values {
           let first: Int, second: Int?
       }
       var values: Values {
        switch self {
        case .Ace:
            return Values(first: 1, second: 11)
        case .Jack, .Queen, .King:
            return Values(first: 10, second: nil)
        default:
            return Values(first: self.rawValue, second: nil)
            }
       }
    }
    // BlackjackCard 的属性和方法
    let rank: Rank, suit: Suit
    var description: String {
        var output = "suit is \(suit.rawValue),"
        output += " value is \(rank.values.first)"
        if let second = rank.values.second {
            output += " or \(second)"
        }
        return output
    }
}
// 在外部引用嵌套类型时，在嵌套类型的类型名前加上其外部类型的类型名作为前缀：
let heartsSymbol = BlackjackCard.Suit.Hearts.rawValue  // 红心符号为 “♡”


// 协议
// 协议可以让遵循同一协议的类型实例拥有相同的实例属性、类属性、方法、类方法、操作符或下标运算符等
protocol FullyNamed {
    var fullName: String { get }  // 如果协议只要求属性是只读的，那么该属性不仅可以是只读的，如果代码需要的话，还可以是可写的。
}
struct Person: FullyNamed {
    var fullName: String  // 协议中的属性既可以实现为计算属性，也可以实现为存储属性
}
let john = Person(fullName: "John Appleseed")  // john.fullName 为 "John Appleseed"

// 协议方法
protocol RandomNumberGenerator {
    func random() -> Double
}
class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c) % m)
        return lastRandom / m
    }
}
let generator = LinearCongruentialGenerator()
print("Here's a random number: \(generator.random())")  // 打印 “Here's a random number: 0.37464991998171”
print("And another one: \(generator.random())")  // 打印 “And another one: 0.729023776863283”

// 在协议中定义类型属性和类型方法的时候，总是使用 static 关键字作为前缀。当类类型采纳协议时，除了 static 关键字，还可以使用 class 关键字作为前缀：
protocol SomeProtocol {
    static var someTypeProperty: Int { get set }
    static func someTypeMethod()
}

// 可以在协议中定义具有可变参数的方法，和普通方法的定义方式相同。但是，不支持为协议中的方法的参数提供默认值。

// 如果你在协议中定义了一个实例方法，该方法会改变采纳该协议的类型的实例，那么在定义协议时需要在方法前加 mutating 关键字。
// 实现协议中的 mutating 方法时，若是类类型，则不用写 mutating 关键字。而对于结构体和枚举，则必须写 mutating 关键字。
protocol Togglable {
    mutating func toggle()
}
enum OnOffSwitch: Togglable {
    case Off, On
    mutating func toggle() {
        switch self {
        case Off:
            self = On
        case On:
            self = Off
        }
    }
}
var lightSwitch = OnOffSwitch.Off
lightSwitch.toggle()  // lightSwitch 现在的值为 .On

// 协议构造器
protocol SomeProtocol {
    init(someParameter: Int)
}
class SomeSuperClass : SomeProtocol {
    required init(someParameter: Int) {  // 在采纳协议的类中实现构造器，无论是作为指定构造器，还是作为便利构造器。无论哪种情况，你都必须为构造器实现标上 required 修饰符：
        // 这里是构造器的实现部分
    }
}
// 如果类已经被标记为 final，那么不需要在协议构造器的实现中使用 required 修饰符，因为 final 类不能有子类。
class SomeSubClass: SomeSuperClass {
    // 如果一个子类重写了父类的指定构造器，并且该构造器满足了某个协议的要求，那么该构造器的实现需要同时标注 required 和 override 修饰符
    required override init() {
        // 这里是构造器的实现部分
    }
}

// 协议是一种类型，可以像其他普通类型一样使用。


// 协议声明时可以添加 @objc 前缀，添加 @objc 前缀后，
// 可以使用 is, as, as? 等来检查协议兼容性
// 需要注意，添加 @objc 前缀后，协议就只能被类来实现，
// 结构体和枚举不能实现加了 @objc 的前缀
// 只有添加了 @objc 前缀的协议才能声明 optional 方法
// 一个类实现一个带 optional 方法的协议时，可以实现或不实现这个方法
// optional 方法可以使用 optional 规则来调用
@objc protocol TransformShape {
    optional func reshaped()
    optional func canReshape() -> Bool
}

class MyShape: Rect {
    var delegate: TransformShape?

    func grow() {
        sideLength += 2

        // 在 optional 属性，方法或下标运算符后面加一个问号，可以优雅地忽略 nil 值，返回 nil。
        // 这样就不会引起运行时错误 (runtime error)
        if let allow = self.delegate?.canReshape?() {
            // 注意语句中的问号
            self.delegate?.reshaped?()
        }
    }
}


// 扩展（Extensions）
// 扩展就是为一个已有的类、结构体（包括内置类型）、枚举类型或者协议类型添加新功能，但是不能重写已有的功能。这包括在没有权限获取原始源代码的情况下扩展类型的能力（即 逆向建模 ）。
// 如果通过扩展为一个已有类型添加新功能，那么新功能对该类型的所有已有实例都是可用的，即使它们是在这个扩展定义之前创建的。

// 可以通过扩展来扩展一个已有类型，使其采纳一个或多个协议：
extension SomeType: SomeProtocol, AnotherProctocol {
    // 协议实现写到这里
}

// 扩展可以为已有类型添加计算型实例属性和计算型类型属性。
extension Double {
    var km: Double { return self * 1_000.0 }
    var m : Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}
let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")  // 打印 “One inch is 0.0254 meters”
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")  // 打印 “Three feet is 0.914399970739201 meters”
// 扩展可以添加新的计算型属性，但是不可以添加存储型属性，也不可以为已有属性添加属性观察器。

// 扩展能为类添加新的便利构造器，但是它们不能为类添加新的指定构造器或析构器。指定构造器和析构器必须总是由原始的类实现来提供。
extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

// 扩展可以为已有类型添加新的实例方法和类型方法
extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
    mutating func square() {
        self = self * self
    }
}

// 扩展可以为已有类型添加新下标
extension Int {
    subscript(var digitIndex: Int) -> Int {  // 该下标 [n] 返回十进制数字从右向左数的第 n 个数字
        var decimalBase = 1
        while digitIndex > 0 {
            decimalBase *= 10
            --digitIndex
        }
        return (self / decimalBase) % 10
    }
}
746381295[0]  // 返回 5
746381295[1]  // 返回 9
746381295[2]  // 返回 2
746381295[8]  // 返回 7
746381295[9]  // 返回 0，下标越界。等同于：
0746381295[9]

// 扩展可以为已有的类、结构体和枚举添加新的嵌套类型：
extension Int {
    enum Kind {
        case Negative, Zero, Positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .Zero
        case let x where x > 0:
            return .Positive
        default:
            return .Negative
        }
    }
}
func printIntegerKinds(numbers: [Int]) {
    for number in numbers {
        switch number.kind {
        case .Negative:
            print("- ", terminator: "")
        case .Zero:
            print("0 ", terminator: "")
        case .Positive:
            print("+ ", terminator: "")
        }
    }
    print("")
}
printIntegerKinds([3, 19, -27, 0, -6, 0, 7])  // 打印 “+ + - 0 - 0 +”


// 泛型: 和 Java 及 C# 的泛型类似，使用 `where` 关键字来限制类型。
// 如果只有一个类型限制，可以省略 `where` 关键字
func findIndex<T: Equatable>(array: [T], valueToFind: T) -> Int? {
    for (index, value) in enumerate(array) {
        if value == valueToFind {
            return index
        }
    }
    return nil
}
let foundAtIndex = findIndex([1, 2, 3, 4], 3)
print(foundAtIndex == 2) // true

// 自定义运算符:
// 自定义运算符可以以下面的字符打头:
//      / = - + * % < > ! & | ^ . ~
// 甚至是 Unicode 的数学运算符等
prefix operator !!! {}

// 定义一个前缀运算符，使矩形的边长放大三倍
prefix func !!! (inout shape: Square) -> Square {
    shape.sideLength *= 3
    return shape
}

// 当前值
print(mySquare.sideLength) // 4

// 使用自定义的 !!! 运算符来把矩形边长放大三倍
!!!mySquare
print(mySquare.sideLength) // 12

// 运算符也可以是泛型
infix operator <-> {}
func <-><T: Equatable> (inout a: T, inout b: T) {
    let c = a
    a = b
    b = c
}

var foo: Float = 10
var bar: Float = 20

foo <-> bar
print("foo is \(foo), bar is \(bar)") // "foo is 20.0, bar is 10.0"

