package com.example.service;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class CalculatorTest {

    private final Calculator calculator = new Calculator();

    @Test
    void testAdd() {
        assertEquals(7, calculator.add(3, 4));
    }

    @Test
    void testSubtract() {
        assertEquals(1, calculator.subtract(5, 4));
    }

    @Test
    void testMultiply() {
        assertEquals(20, calculator.multiply(4, 5));
    }

    @Test
    void testDivide() {
        assertEquals(2.0, calculator.divide(6, 3));
    }

    @Test
    void testDivideByZero() {
        assertThrows(ArithmeticException.class, () -> calculator.divide(4, 0));
    }
}
