class WalletController < ApplicationController
  def show
    @wallet = Wallet.find(params[:id])
    logger.debug("スタート")
    sleep(10)
    logger.debug("終了")
    if @wallet.is_count_used?
      flash.now[:count] = '使用済みです'
    else
      @wallet.use
      flash.now[:count] = '使用しました'
    end
    @wallet.save
  end
end
