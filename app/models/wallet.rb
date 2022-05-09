class Wallet < ApplicationRecord

    def is_count_used?
        if self.count == 1
            return true
        else
            return false
        end
    end

    def use
        self.count =1
    end
end
