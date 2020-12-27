local function add(a, b)
    return a + b
end

local function sum(list)
    return Array.reduce(list, add, 0)
end

local function multiply(a, b)
    return a * b
end

local function product(list)
    return Array.reduce(list, multiply, 1)
end

local function round(value)
    local result
    local firstDigitAfterDecimalSeparator = math.floor((value - math.floor(value)) * 10)
    if firstDigitAfterDecimalSeparator >= 5 then
        result = math.ceil(value)
    else
        result = math.floor(value)
    end
    return result
end

Math = {
    add = add,
    sum = sum,
    multiply = multiply,
    product = product,
    round = round
}
