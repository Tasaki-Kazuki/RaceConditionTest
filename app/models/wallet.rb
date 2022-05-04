class Wallet < ApplicationRecord

    def is_count_used?
        if self.count == 1
            return true
        else
            return false
        end
    end

    def use
        logger.debug("スタート")
        # sleep(10)
        logger.debug("終了")
        self.count =1
    end
end
