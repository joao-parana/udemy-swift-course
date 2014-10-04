# Lição 1

## O bê-a-bá da linguagem Swift

### Inicialmente vou apresentar uma visão geral e posteriormente entrarei em detalhes sobre estas características que são muito importantes. 

### Os conceitos apresentados aqui são usados na maioria das linguagens 
### de programação e podem ser facilmente adaptadas em outras gramáticas 
### tais com :
* `Action Script` do Flash Player, 
* `Java Script` que roda nos Browsers, 
* `Action Script` (Microsoft) ou 
* `Java` (Oracle) 


Use o comando import do `Swift` no inicio do arquivo / playground indicando os módulos 
que serão usados. Por exemplo, para testar as funções disponíveis na API do iPhone use :

```swift
import UIKit
```

Comentários são usados pelos programadores e profissionais de tecnologia da Informação que tenham acesso ao código fonte. Os computadores simppesmente ignoram estas infromações.

Os comentários funcionam assim:

```swift
// this is a single line comment using two slashes.
 
/* this is also a comment,
   but written over multiple lines */
```

Uma característica interessante da Linguagem SWIFT é que podemos aninhar um comentário dentro do outro.

Uma tarefa para você é imaginar em qual situação isso seria útil.

veja um exemplo:

```swift 
/* multiline comments
   /* can be nested! */
   so that you can block out code containing multiline comments
*/
```

Estou falando desse assunto logo no início do curso pois considero muito importante que façamos comentários esclarecedores nos programas para que possamos consultá-los no futuro e entender o que nosso programa está fazendo.

Seu programa deve conter comentários sobre a dinâmica de execução e uso dos recursos que possam ajudar a resolver um problema no futuro. 

Afinal de contas, quando você estiver de férias no Caribe, não vai querer que teu chefe te ligue para você explicar porque a rotina de calculo de desconto tem uma variável chamada condiçãoEspecial e como ela é usada no seu programa.

Isso é apenas um exemplo real que pode ocorrer por falta de comentário no programa.

### Variáveis

As variáveis Swift são declaradas com a palavra `var` seguida por um `nome` que identifique-a, um `tipo` e um `valor`.

Por exemplo: Uma variável de ponto flutuante de dupla precisão pode ser definida assim:

```swift
var explicitDouble: Double = 70
```
 
if the type is omitted, Swift will infer it from the variable's initial value

```swift
var implicitInteger = 70
var implicitDouble = 70.0
```

Podemos usar caracteres na codificação UTF-8

```swift
var 国 = "日本"
var π = 3.1416 
```

e também ícones emoji (como aqueles usados no Facebook, Twitter, etc.)


```swift
var 🔓 = "DESPROTEGIDO"
var 🔒 = "BLOQUEADO"
let reload = "🔄"
let play = "▶️"

```
 
Swift constants are declared with "let" followed by a name, a type, and a value

```swift
let numberOfBananas: Int = 10
```
 
if the type is omitted, Swift will infer it from the constant's value

```swift
let numberOfApples = 3
let numberOfOranges = 5
```

values of variables and constants can be interpolated in strings as follows

```swift
let appleSummary = "I have \(numberOfApples) apples."
let fruitSummary = "I have \(numberOfApples + numberOfOranges) pieces of fruit."
 
```

code can be placed anywhere, making it global within the namespace


```swift
// println("Hello, world")
```

a função println exibe o resultado no painal a direita
```swift
// println("Hello, Jane!")
``` 

definindo um array (Lista de valores de um certo tipo de dado definido)

```swift
var fruits = ["mango", "kiwi", "avocado"]
```
 
example of if statement; .isEmpty, .count

```swift
if fruits.isEmpty {
  //  println("No fruits in my array.")
} else {
  //  println("There are \(fruits.count) items in my array")
} 
```

define a dictionary with four items, each with a person's name and age

```swift
let people = ["Anna": 67, "Beto": 8, "Jack": 33, "Sam": 25]
```
 
now we use Swift's flexible enumerator system to extract both values in a single loop 

```swift
for (name, age) in people {
  //  println("\(name) is \(age) years old.")
}
```
 
functions and methods are declared with the "func" syntax
the return type is specified with ->

```swift
func sayHello(personName: String) -> String {
    let greeting = "Hello, " + personName + "!"
    return greeting
} 
```
E são usadas desta forma:

```swift
// println("Hello, Jane!")
// println(sayHello("Jane"))
```
 
parameter names can be made external and required for calling
the external name can be the same as the parameter name by
prefixing with an octothorpe (#)
or can be defined separately.

```swift
func sayAge(#personName: String, personAge Age: Int) -> String {
    let result = "\(personName) is \(Age) years old."
    return result
}
```
we can also specify the name of the parameter

```swift
// println(sayAge(personName: "Jane", personAge: 42))
```


