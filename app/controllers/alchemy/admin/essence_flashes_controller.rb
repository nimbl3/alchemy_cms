module Alchemy
  class Admin::EssenceFlashesController < Alchemy::ApplicationController
    unloadable
    layout 'alchemy'
  
    filter_access_to :update
  
    def update
      @essence_flash = EssenceFlash.find(params[:id])
      @essence_flash.update_attributes(params[:essence_flash])
      render :update do |page|
        page << "Alchemy.closeCurrentWindow(); Alchemy.reloadPreview()"
      end
    end
  
  end
end