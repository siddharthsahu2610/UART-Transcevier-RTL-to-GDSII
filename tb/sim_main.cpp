#include <iostream>
#include <memory>
#include "Vuart_top_tb.h"
#include "verilated.h"

int main(int argc, char** argv) {
    auto contextp = std::make_unique<VerilatedContext>();
    contextp->commandArgs(argc, argv);
    contextp->traceEverOn(true);

    auto top = std::make_unique<Vuart_top_tb>(contextp.get());

    while (!contextp->gotFinish()) {
        contextp->timeInc(1);
        top->eval();
    }

    top->final();
    return 0;
}
