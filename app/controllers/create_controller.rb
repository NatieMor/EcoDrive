class CreateController < ApplicationController

    def create
        @bateria = Bateria.new(bateria_params)
        @marca = Marca.new(marca_params)
        @carga = Carga.new(carga_params)
        @tecnologia = Tecnologia.new(tecnologia_params)
        @carracteristica = Carracteristica.new(carracteristica_params)
        @auto = Auto.new(auto_params)
    
        respond_to do |format|
        if @bateria.save
            format.html { redirect_to auto_url(@bateria), notice: "se creo exitosamento." }
            format.json { render :show, status: :created, location: @bateria }
        else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @bateria.errors, status: :unprocessable_entity }
        end

        if @marca.save
            format.html { redirect_to auto_url(@marca), notice: "se creo exitosamento." }
            format.json { render :show, status: :created, location:@marca}
        else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @marca.errors, status: :unprocessable_entity }
        end
        if @carga.save
            format.html { redirect_to auto_url(@carga), notice: "se creo exitosamento." }
            format.json { render :show, status: :created, location:@carga}
        else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @carga.errors, status: :unprocessable_entity }
        end
        if @tecnologia.save
            format.html { redirect_to auto_url(@tecnologia), notice: "se creo exitosamento." }
            format.json { render :show, status: :created, location:@tecnologia}
        else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @tecnologia.errors, status: :unprocessable_entity }
        end
        if @carracteristica.save
            format.html { redirect_to auto_url(@carracteristica), notice: "se creo exitosamento." }
            format.json { render :show, status: :created, location:@carracteristica}
        else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @carracteristica.errors, status: :unprocessable_entity }
        end

        end
    end
end
