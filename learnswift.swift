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

// 类型转换
// 在Swift中，值永远不会被隐式转换为其他类型。如果你需要把一个值转换成其他类型，请调用构造器显式转换。
let label = "some text " + String(myVariable)
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine  // pi 等于 3.14159，所以被推测为 Double 类型
let integerPi = Int(pi)  // pi被截断小数部分，integerPi 等于 3，所以被推测为 Int 类型


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
if let someStringConstant = someOptionalString {
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


// Swift 支持可保存任何数据类型(Class, Int, struct, 等)的变量
var anyObjectVar: AnyObject = 7
anyObjectVar = "Changed value to a string, not good practice, but possible."


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


// 闭包
var numbers = [1, 2, 6]

// 函数是闭包的一个特例 ({})

// 闭包实例
// `->` 分隔了闭包的参数和返回值
// `in` 分隔了闭包头 (包括参数及返回值) 和闭包体
// 下面例子中，`map` 的参数是一个函数类型，它的功能是把数组里的元素作为参数，逐个调用 `map` 参数传递进来的函数。
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

// 当闭包的参数类型和返回值都是己知的情况下，且只有一个语句作为其返回值时，我们可以简化闭包的写法
numbers = numbers.map({ number in 3 * number })
// 我们也可以使用 $0, $1 来指代第 1 个，第 2 个参数，上面的语句最终可简写为如下形式
// numbers = numbers.map({ $0 * 3 })

print(numbers) // [3, 6, 18]

// 简洁的闭包
numbers = sorted(numbers) { $0 > $1 }
// 函数的最后一个参数可以放在括号之外，上面的语句是这个语句的简写形式
// numbers = sorted(numbers, { $0 > $1 })

print(numbers) // [18, 6, 3]

// 超级简洁的闭包，因为 `<` 是个操作符函数
numbers = sorted(numbers, < )

print(numbers) // [3, 6, 18]


// 错误处理
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
    defer {
      // 不管是否抛出错误，总是会执行的代码。通常在这里释放获取的资源
    } // 可以有多个defer 语句，他们的执行顺序会和栈一样，后进先出。
    // ...
}

// 捕获错误
do {
    let theResult = try canThrowAnError() // 可能会抛出错误的表达式
    // 如果没有错误抛出，将继续执行的代码。否则，不会被执行
} catch {
    // 捕获抛出的错误，并处理它
}

// catch 支持模式匹配
do {
    let theResult = try canThrowAnError()
} catch MyError.NotExist {
    // deal with not exist
} catch MyError.OutOfRange {
    // deal with out of range
}

// 不处理错误
// 某个方法或者函数虽然声明会抛出异常，但是我确信在这个上下文中是绝对不会抛出任何错误的。这种情况下 我们可以使用 try!
// try! functionThrowErrorNil()
// 如果使用 try!，但方法或者函数还是抛出了错误，那么你会得到一个运行时错误 (runtime error)，程序将停止执行。 


// 断言
let age = -3
assert(age >= 0, "A person's age cannot be less than zero")
// 因为 age < 0，所以断言会触发，第二个参数（可选）表示的调试信息被输出到控制台，程序终止。


//
// MARK: 结构体
//

// 结构体和类非常类似，可以有属性和方法

struct NamesTable {
    let names = [String]()

    // 自定义下标运算符
    subscript(index: Int) -> String {
        return names[index]
    }
}

// 结构体有一个自动生成的隐含的命名构造函数
let namesTable = NamesTable(names: ["Me", "Them"])
let name = namesTable[1]
print("Name is \(name)") // Name is Them

//
// MARK: 类
//

// 类和结构体的有三个访问控制级别，他们分别是 internal (默认), public, private
// internal: 模块内部可以访问
// public: 其他模块可以访问
// private: 只有定义这个类或结构体的源文件才能访问

public class Shape {
    public func getArea() -> Int {
        return 0;
    }
}

// 类的所有方法和属性都是 public 的
// 如果你只是需要把数据保存在一个结构化的实例里面，应该用结构体

internal class Rect: Shape {
    // 值属性 (Stored properties)
    var sideLength: Int = 1

    // 计算属性 (Computed properties)
    private var perimeter: Int {
        get {
            return 4 * sideLength
        }
        set {
            // `newValue` 是个隐含的变量，它表示将要设置进来的新值
            sideLength = newValue / 4
        }
    }

    // 延时加载的属性，只有这个属性第一次被引用时才进行初始化，而不是定义时就初始化
    // subShape 值为 nil ，直到 subShape 第一次被引用时才初始化为一个 Rect 实例
    lazy var subShape = Rect(sideLength: 4)

    // 监控属性值的变化。
    // 当我们需要在属性值改变时做一些事情，可以使用 `willSet` 和 `didSet` 来设置监控函数
    // `willSet`: 值改变之前被调用
    // `didSet`: 值改变之后被调用
    var identifier: String = "defaultID" {
        // `willSet` 的参数是即将设置的新值，参数名可以指定，如果没有指定，就是 `newValue`
        willSet(someIdentifier) {
            print(someIdentifier)
        }
        // `didSet` 的参数是已经被覆盖掉的旧的值，参数名也可以指定，如果没有指定，就是 `oldValue`
        didSet {
            print(oldValue)
        }
    }

    // 命名构造函数 (designated inits)，它必须初始化所有的成员变量，
    // 然后调用父类的命名构造函数继续初始化父类的所有变量。
    init(sideLength: Int) {
        self.sideLength = sideLength
        // 必须显式地在构造函数最后调用父类的构造函数 super.init
        super.init()
    }

    func shrink() {
        if sideLength > 0 {
            --sideLength
        }
    }

    // 函数重载使用 override 关键字
    override func getArea() -> Int {
        return sideLength * sideLength
    }
}

// 类 `Square` 从 `Rect` 继承
class Square: Rect {
    // 便捷构造函数 (convenience inits) 是调用自己的命名构造函数 (designated inits) 的构造函数
    // Square 自动继承了父类的命名构造函数
    convenience init() {
        self.init(sideLength: 5)
    }
    // 关于构造函数的继承，有以下几个规则：
    // 1. 如果你没有实现任何命名构造函数，那么你就继承了父类的所有命名构造函数
    // 2. 如果你重载了父类的所有命名构造函数，那么你就自动继承了所有的父类快捷构造函数
    // 3. 如果你没有实现任何构造函数，那么你继承了父类的所有构造函数，包括命名构造函数和便捷构造函数
}

var mySquare = Square()
print(mySquare.getArea()) // 25
mySquare.shrink()
print(mySquare.sideLength) // 4

// 类型转换
let aShape = mySquare as Shape

// 使用三个等号来比较是不是同一个实例
if mySquare === aShape {
    print("Yep, it's mySquare")
}

class Circle: Shape {
    var radius: Int
    override func getArea() -> Int {
        return 3 * radius * radius
    }

    // optional 构造函数，可能会返回 nil
    init?(radius: Int) {
        self.radius = radius
        super.init()

        if radius <= 0 {
            return nil
        }
    }
}

// 根据 Swift 类型推断，myCircle 是 Optional<Circle> 类型的变量
var myCircle = Circle(radius: 1)
print(myCircle?.getArea())    // Optional(3)
print(myCircle!.getArea())    // 3
var myEmptyCircle = Circle(radius: -1)
print(myEmptyCircle?.getArea())    // "nil"
if let circle = myEmptyCircle {
    // 此语句不会输出，因为 myEmptyCircle 变量值为 nil
    print("circle is not nil")
}


//
// MARK: 枚举
//

// 枚举可以像类一样，拥有方法

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func getIcon() -> String {
        switch self {
        case .Spades: return "♤"
        case .Hearts: return "♡"
        case .Diamonds: return "♢"
        case .Clubs: return "♧"
        }
    }
}

// 当变量类型明确指定为某个枚举类型时，赋值时可以省略枚举类型
var suitValue: Suit = .Hearts

// 非整型的枚举类型需要在定义时赋值
enum BookName: String {
    case John = "John"
    case Luke = "Luke"
}
print("Name: \(BookName.John.rawValue)")

// 与特定数据类型关联的枚举
enum Furniture {
    // 和 Int 型数据关联的枚举记录
    case Desk(height: Int)
    // 和 String, Int 关联的枚举记录
    case Chair(brand: String, height: Int)

    func description() -> String {
        switch self {
        case .Desk(let height):
            return "Desk with \(height) cm"
        case .Chair(let brand, let height):
            return "Chair of \(brand) with \(height) cm"
        }
    }
}

var desk: Furniture = .Desk(height: 80)
print(desk.description())     // "Desk with 80 cm"
var chair = Furniture.Chair(brand: "Foo", height: 40)
print(chair.description())    // "Chair of Foo with 40 cm"


//
// MARK: 协议
// 与 Java 的 interface 类似
//

// 协议可以让遵循同一协议的类型实例拥有相同的属性，方法，类方法，操作符或下标运算符等
// 下面代码定义一个协议，这个协议包含一个名为 enabled 的计算属性且包含 buildShape 方法
protocol ShapeGenerator {
    var enabled: Bool { get set }
    func buildShape() -> Shape
}

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


//
// MARK: 其它
//

// 扩展: 给一个已经存在的数据类型添加功能

// 给 Square 类添加 `Printable` 协议的实现，现在其支持 `Printable` 协议
extension Square: Printable {
    var description: String {
        return "Area: \(self.getArea()) - ID: \(self.identifier)"
    }
}

print("Square: \(mySquare)")  // Area: 16 - ID: defaultID

// 也可以给系统内置类型添加功能支持
extension Int {
    var customProperty: String {
        return "This is \(self)"
    }

    func multiplyBy(num: Int) -> Int {
        return num * self
    }
}

print(7.customProperty) // "This is 7"
print(14.multiplyBy(3)) // 42

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

