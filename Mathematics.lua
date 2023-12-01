local addOnName = 'Mathematics'
local version = '2.0.1'

if _G.Library then
  if not Library.isRegistered(addOnName, version) then
    local Array = Library.retrieve('Array', '^2.0.1')

    --- @class Mathematics
    local Mathematics = {}

    function Mathematics.add(a, b)
      return a + b
    end

    function Mathematics.sum(list)
      return Array.reduce(list, Mathematics.add, 0)
    end

    function Mathematics.multiply(a, b)
      return a * b
    end

    function Mathematics.product(list)
      return Array.reduce(list, Mathematics.multiply, 1)
    end

    function Mathematics.round(value, numberOfDigitsAfterTheDecimalSeparator)
      if numberOfDigitsAfterTheDecimalSeparator == nil then
        numberOfDigitsAfterTheDecimalSeparator = 0
      end
      local a = 10 ^ numberOfDigitsAfterTheDecimalSeparator
      return math.floor(value * a + 0.5) / a
    end

    function Mathematics.sign(value)
      if value < 0 then
        return -1
      elseif value == 0 then
        return 0
      else
        return 1
      end
    end

    function Mathematics.euclideanDistance(nodeA, nodeB)
      return math.sqrt(
        math.pow(nodeB.x - nodeA.x, 2) +
          math.pow(nodeB.y - nodeA.y, 2) +
          math.pow(nodeB.z - nodeA.z, 2)
      )
    end

    function Mathematics.euclideanDistance2D(nodeA, nodeB)
      return math.sqrt(
        math.pow(nodeB.x - nodeA.x, 2) +
          math.pow(nodeB.y - nodeA.y, 2)
      )
    end

    function Mathematics.manhattanDistance(nodeA, nodeB)
      return (
        math.abs(nodeB.x - nodeA.x) +
          math.abs(nodeB.y - nodeA.y) +
          math.abs(nodeB.z - nodeA.z)
      )
    end

    function Mathematics.manhattanDistance2D(nodeA, nodeB)
      return (
        math.abs(nodeB.x - nodeA.x) +
          math.abs(nodeB.y - nodeA.y)
      )
    end

    function Mathematics.average(values)
      return sum(values) / Array.length(values)
    end

    Library.register(addOnName, version, Mathematics)
  end
else
  error(addOnName .. ' requires Library. It seems absent.')
end
