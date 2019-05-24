//
//  NYPopularNetworkManager.swift
//  ThinkSNSPlus
//
//  Created by ningye on 2019/5/18.
//  Copyright © 2019 ZhiYiCX. All rights reserved.
//

import UIKit
import Alamofire

class NYPopularNetworkManager {
    
}

// MARK: --热门内容 - 圈子
extension NYPopularNetworkManager {
    
    /// 热门内容- 包含 10明星
    /// PopularNetworkRequest
    ///   - complete: 结果
    class func getPopularData(complete: @escaping ([StarsHotModel]?, String?, Bool) -> Void) {
        // 1.请求 url
        var request = PopularNetworkRequest().starsHot
        request.urlPath = request.fullPathWith(replacers: [])
        // 3.发起请求
        RequestNetworkData.share.text(request: request) { (networkResult) in
            switch networkResult {
            case .error(_):
                complete(nil, "网络请求错误", false)
            case .failure(let failure):
                complete(nil, failure.message, false)
            case .success(let data):
                complete(data.models, nil, true)
            }
        }
    }
    
    /// 热门内容- 批量获取明星
    /// PopularNetworkRequest
    ///   - complete: 结果
    class func getStarsListData(complete: @escaping ([StarsHotModel]?, String?, Bool) -> Void) {
        // 1.请求 url
        var request = PopularNetworkRequest().starsList
        request.urlPath = request.fullPathWith(replacers: [])
        // 3.发起请求
        RequestNetworkData.share.text(request: request) { (networkResult) in
            switch networkResult {
            case .error(_):
                complete(nil, "网络请求错误", false)
            case .failure(let failure):
                complete(nil, failure.message, false)
            case .success(let data):
                complete(data.models, nil, true)
            }
        }
    }
    
    /// 热门内容- 批量获取频道
    /// PopularNetworkRequest
    ///   - complete: 结果
    class func getChannelsListData(complete: @escaping ([ChannelsModel]?, String?, Bool) -> Void) {
        // 1.请求 url
        var request = PopularNetworkRequest().channelsList
        request.urlPath = request.fullPathWith(replacers: [])
        // 3.发起请求
        RequestNetworkData.share.text(request: request) { (networkResult) in
            switch networkResult {
            case .error(_):
                complete(nil, "网络请求错误", false)
            case .failure(let failure):
                complete(nil, failure.message, false)
            case .success(let data):
                complete(data.models, nil, true)
            }
        }
    }

}