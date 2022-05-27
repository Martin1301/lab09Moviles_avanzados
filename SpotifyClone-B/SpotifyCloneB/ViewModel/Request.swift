//
//  Request.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 7/05/22.
//

import Foundation

class Request {
    
    let token = "BQD7MW02MIwF_d5kAXpD-ut93trqUkR-3-qMKy5ZApGSEQIMdGVyI48Tl43DYTStu0A-y1FKTSkttIM1ubihSEwkdS3Cx8fDV_rGSLLhpdfjg1bl_tErw4V82sB2lD09fi8uLQp_mD7wIVMh5dNtmpMS_OGWD9lhE4JlUn0v0WXSqEymsFafYA"
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    func getDataFromAPI(url: String) async -> Data? {
        do {
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(url)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
    
}
