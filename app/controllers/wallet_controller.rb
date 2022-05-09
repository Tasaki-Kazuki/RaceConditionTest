class WalletController < ApplicationController
  def show
    @wallet = Wallet.find(params[:id])
    Thread.new do
      @wallet.with_lock do
        logger.debug("スタート")
        sleep(10)
        if @wallet.is_count_used?
          logger.debug('使用済みです')
          logger.debug(@wallet.count)
        else
          @wallet.use
          logger.debug('使用しました')
          logger.debug(@wallet.count)
        end
        @wallet.save
        logger.debug("終了")
      end
    end
  end
end
