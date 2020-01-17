class DailyHoroscope::API
    
    def get_prediction(sign)
       response = RestClient.post("https://605991:2d6f7e27a1930d6df2e64faa86014887@json.astrologyapi.com/v1/sun_sign_prediction/daily/#{sign}", "")
        results = JSON.parse(response.body)
        more = results["prediction"]
        puts more["personal_life"]
    end 

end



