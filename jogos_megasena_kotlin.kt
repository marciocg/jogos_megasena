// kotlinc jogos_megasena_kotlin.kt -include-runtime -d jogos_megasena_kotlin.jar
// java -jar jogos_megasena_kotlin.jar

import java.io.PrintWriter

fun main() {
    var c = 0
    var n1 = 1
    val arq = PrintWriter("jogos_megasena.txt")

    for (n1 in n1..55) {
        var n2 = n1 + 1
        for (n2 in n2..56) {
            var n3 = n2 + 1
            for (n3 in n3..57) {
                var n4 = n3 +1
                for (n4 in n4..58) {
                    var n5 = n4 + 1
                    for (n5 in n5..59) {
                        var n6 = n5 +1
                        for (n6 in n6..60) {
                            c += 1
                            // arq.append("%02d".format(n1) + "%02d".format(n2) + "%02d".format(n3) + "%02d".format(n4) + "%02d".format(n5) + "%02d".format(n6) + "\n")
			                arq.append(n1.toString().padStart(2, '0') + n2.toString().padStart(2, '0') + n3.toString().padStart(2, '0') + n4.toString().padStart(2, '0') + n5.toString().padStart(2, '0') + n6.toString().padStart(2, '0') + "\n")
                        }
                    }
                }
            }

        }
    }
    arq.close()
    println(c)
}
