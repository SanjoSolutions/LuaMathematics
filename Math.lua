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

local function round(value, numberOfDigitsAfterTheDecimalSeparator)
  if numberOfDigitsAfterTheDecimalSeparator == nil then
    numberOfDigitsAfterTheDecimalSeparator = 0
  end
  local a = 10 ^ numberOfDigitsAfterTheDecimalSeparator
  return math.floor(value * a + 0.5) / a
end

local function sign(value)
  if value < 0 then
    return -1
  elseif value == 0 then
    return 0
  else
    return 1
  end
end

Math = {
  add = add,
  sum = sum,
  multiply = multiply,
  product = product,
  round = round,
  sign = sign
}
