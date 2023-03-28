script {
    use 0x1::HelloWorld;

    fun main() {
        let five = HelloWorld::gimme_five();

        std::debug::print<u8>(&five);
    }
}
