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
let anotherPi = 3 + 0.14159  // 如果表达式中同时出现了整数和浮点数，会被推断为Double类型

// 整数和浮点数都可以添加额外的零并且包含下划线，并不会影响字面量
let intValue = 0007 // 十进制整数7
let paddedDouble = 000123.456  // 十进制浮点数123.456
let largeIntValue = 77_000 // 77000
let justOverOneMillion = 1_000_000.000_000_1


// 字符串插值（string interpolation）
let piText = "Pi = \(π), Pi 2 = \(π * 2)"


// 类型转换
// 在Swift中，值永远不会被隐式转换为其他类型。如果你需要把一个值转换成其他类型，请调用构造器显式转换。
let label = "some text " + String(myVariable)
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine  // pi 等于 3.14159，所以被推测为 Double 类型
let integerPi = Int(pi)  // integerPi 等于 3，所以被推测为 Int 类型


/*
    Optionals 是 Swift 的新特性，它允许你存储两种状态的值给 Optional 变量：有效值或 None 。
    可在值名称后加个问号 （？） 来表示这个值是 Optional。

    Swift 要求所有的 Optinal 属性都必须有明确的值，如果为空，则必须明确设定为 nil

    Optional<T> 是个枚举类型
*/
var someOptionalString: String? = "optional" // 可以是 nil
// 下面的语句和上面完全等价，上面的写法更推荐，因为它更简洁，问号 (?) 是 Swift 提供的语法糖
var someOptionalString2: Optional<String> = "optional"

if someOptionalString != nil {
    // 变量不为空
    if someOptionalString!.hasPrefix("opt") {
        print("has the prefix")
    }

    let empty = someOptionalString?.isEmpty
}
someOptionalString = nil

/*
    使用 （！） 可以解决无法访问optional值的运行错误。若要使用 （！）来强制解析，一定要确保 Optional 里不是 nil参数。
*/

// 显式解包 optional 变量
var unwrappedString: String! = "Value is expected."
// 下面语句和上面完全等价，感叹号 (!) 是个后缀运算符，这也是个语法糖
var unwrappedString2: ImplicitlyUnwrappedOptional<String> = "Value is expected."

if let someOptionalStringConstant = someOptionalString {
    // 由于变量 someOptinalString 有值，不为空，所以 if 条件为真
    if !someOptionalStringConstant.hasPrefix("ok") {
        // does not have the prefix
    }
}

// Swift 支持可保存任何数据类型的变量
// AnyObject == id
// 和 Objective-C `id` 不一样, AnyObject 可以保存任何类型的值 (Class, Int, struct, 等)
var anyObjectVar: AnyObject = 7
anyObjectVar = "Changed value to a string, not good practice, but possible."



//
// Mark: 数组与字典（关联数组）
//

/*
    Array 和 Dictionary 是结构体，不是类，他们作为函数参数时，是用值传递而不是指针传递。
    可以用 `var` 和 `let` 来定义变量和常量。
*/

// Array
var shoppingList = ["catfish", "water", "lemons"]
shoppingList[1] = "bottle of water"
let emptyArray = [String]() // 使用 let 定义常量，此时 emptyArray 数组不能添加或删除内容
let emptyArray2 = Array<String>() // 与上一语句等价，上一语句更常用
var emptyMutableArray = [String]() // 使用 var 定义变量，可以向 emptyMutableArray 添加数组元素
var explicitEmptyMutableStringArray: [String] = [] // 与上一语句等价

// 字典
var occupations = [
    "Malcolm": "Captain",
    "kaylee": "Mechanic"
]
occupations["Jayne"] = "Public Relations"   // 修改字典，如果 key 不存在，自动添加一个字典元素
let emptyDictionary = [String: Float]() // 使用 let 定义字典常量，字典常量不能修改里面的值
let emptyDictionary2 = Dictionary<String, Float>() // 与上一语句类型等价，上一语句更常用
var emptyMutableDictionary = [String: Float]() // 使用 var 定义字典变量
var explicitEmptyMutableDictionary: [String: Float] = [:] // 与上一语句类型等价


//
// MARK: 控制流
//

// 数组的 for 循环
let myArray = [1, 1, 2, 3, 5]
for value in myArray {
    if value == 1 {
        print("One!")
    } else {
        print("Not one!")
    }
}

// 字典的 for 循环
var dict = ["one": 1, "two": 2]
for (key, value) in dict {
    print("\(key): \(value)")
}

// 区间的 loop 循环：其中 `...` 表示闭环区间，即[-1, 3]；`..<` 表示半开闭区间，即[-1,3)
for i in -1...shoppingList.count {
    print(i)
}
shoppingList[1...2] = ["steak", "peacons"]
// 可以使用 `..<` 来去掉最后一个元素

// while 循环
var i = 1
while i < 1000 {
    i *= 2
}

// do-while 循环
do {
    print("hello")
} while 1 == 2

// Switch 语句
// Swift 里的 Switch 语句功能异常强大，结合枚举类型，可以实现非常简洁的代码，可以把 switch 语句想象成 `if` 的语法糖
// 它支持字符串，类实例或原生数据类型 (Int, Double, etc)
let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
case let localScopeValue where localScopeValue.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(localScopeValue)?"
default: // 在 Swift 里，switch 语句的 case 必须处理所有可能的情况，如果 case 无法全部处理，则必须包含 default语句
    let vegetableComment = "Everything tastes good in soup."
}


//
// MARK: 函数
//

// 函数是一个 first-class 类型，他们可以嵌套，可以作为函数参数传递

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
greet("Bob", "Tuesday")

// 函数参数前带 `#` 表示外部参数名和内部参数名使用同一个名称。
// 第二个参数表示外部参数名使用 `externalParamName` ，内部参数名使用 `localParamName`
func greet2(#requiredName: String, externalParamName localParamName: String) -> String {
    return "Hello \(requiredName), the day is \(localParamName)"
}
greet2(requiredName:"John", externalParamName: "Sunday")    // 调用时，使用命名参数来指定参数的值

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

// 可变参数
func setup(numbers: Int...) {
    // 可变参数是个数组
    let number = numbers[0]
    let argCount = numbers.count
}

// 函数变量以及函数作为返回值返回
func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

// 强制进行指针传递 (引用传递)，使用 `inout` 关键字修饰函数参数
func swapTwoInts(inout a: Int, inout b: Int) {
    let tempA = a
    a = b
    b = tempA
}
var someIntA = 7
var someIntB = 3
swapTwoInts(&someIntA, &someIntB)
print(someIntB) // 7


//
// MARK: 闭包
//
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

