# Lição 1

## O bê-a-bá da linguagem Swift

### Inicialmente vou apresentar uma visão geral e posteriormente entrarei em detalhes sobre estas características que são muito importantes. 

## Lição 1 - A) Módulos, Comentários e Variáveis

### Os conceitos apresentados aqui são usados na maioria das linguagens de programação e podem ser facilmente adaptadas em outras gramáticas tais com :
* `Action Script` usada no Flash Player da Adobe, 
* `Java Script` que roda nos Browsers (IE, Firefox, Chrome, Safari, etc.), 
* `TypeScript` (open source mantido pela Microsoft),
* `HAXE` (http://haxe.org) ou 
* `Java` (Oracle) 
* Diversas outras linguagens orientadas a objeto


Use o comando import do `Swift` no inicio do arquivo / playground indicando os módulos 
que serão usados. Por exemplo, para testar as funções disponíveis na API do iPhone use :

```swift
import UIKit
```

Comentários são usados pelos programadores e profissionais de tecnologia da Informação que tenham acesso ao código fonte. Os computadores simplesmente ignoram estas informações. 

Mas então qual a importância deles ? 

Os comentários funcionam assim:

```swift
// this is a single line comment using two slashes.
 
/* this is also a comment,
   but written over multiple lines */
```

Uma característica interessante da Linguagem SWIFT é que podemos aninhar um comentário dentro do outro.

veja um exemplo:

```swift 
/* multiline comments
   /* can be nested! */
   so that you can block out code containing multiline comments
*/
```
__Uma tarefa para você:__  Imaginar em quais situações comentários aninhados poderia ser útil num programa.

Eu disse anteriormente que os computadores ignoram os comentários. 

Mas então qual a importância deles ? Simples ! Eles ajudam os programadores a entender o que se passa no programa, qual a lógica usada, qual a abordagem da implementação, quais padrões foram usados, etc. 

Mas porque começar um curso de programação com isso ?

Bem, então vejamos, eu estou falando desse assunto logo no início do curso pois considero muito importante que façamos comentários esclarecedores nos programas para que possamos consultá-los no futuro e entender o que nosso programa está fazendo.

Seu programa deve conter comentários sobre a dinâmica de execução e uso dos recursos de forma que possam ajudar a resolver um problema que provavelmente aparecerá no futuro.  

Afinal de contas, quando você estiver de férias no Caribe, não vai querer que teu chefe te ligue para você explicar porque a rotina de calculo de desconto tem uma variável chamada `condiçãoEspecial` e como ela é usada no seu programa.

Isso é apenas um exemplo real que pode ocorrer por falta de comentário no programa.

### Variáveis

As variáveis Swift são declaradas com a palavra `var` seguida por um `nome` que identifique-a, um `tipo` e um `valor`.

Por exemplo: Uma variável de ponto flutuante de dupla precisão pode ser definida assim:

```swift
var explicitDouble: Double = 70
```
 
Uma das características marcantes da linguagem Swift que é suportada também no TypeScript é a seguinte:
Se o tipo é omitido o compilador Swift irá inferir o tipo baseado no valor inicial atribuido.

Exemplo:

```swift
var implicitInteger = 70
var implicitDouble = 70.0
```


Como na linguagem Java podemos usar caracteres na codificação UTF-8.

Veja um exemplo:

```swift
var 国 = "日本"
var π = 3.1416 
var r = 2
var circleArea = 2 * π * r
```

e também ícones emoji (como aqueles usados no Facebook, Twitter, etc.)


```swift
var 🔓 = "DESPROTEGIDO"
var 🔒 = "BLOQUEADO"
let reload = "🔄"
let play = "▶️"

```
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />









## Lição 1 - B) - Constantes (conceito de Imutáveis) e Interpolação em Strings
 
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

## Lição 1 - C) - Global Namespace (Espaço de nomes Global) 

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


