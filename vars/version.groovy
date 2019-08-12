def version() {
    def matcher = readFile('pom.xml') =~ '<reporty.version>(.+?)</reporty.version>'
    matcher ? matcher[0][1] : null
}
