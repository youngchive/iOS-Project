//
//  Database.swift
//  TripPin!
//
//  Created by hansung on 2023/06/20.
//

import Foundation
// Database.swift
enum DbAction{
    case Add, Delete, Modify // 데이터베이스 변경의 유형
}
protocol Database{
    // 생성자, 데이터베이스에 변경이 생기면 parentNotification를 호출하여 부모에게 알림
    init(parentNotification: ((Plan?, DbAction?) -> Void)? )

    // fromDate ~ toDate 사이의 Plan을 읽어 parentNotification를 호출하여 부모에게 알림
    func queryPlan(fromDate: Date, toDate: Date)

    // 데이터베이스에 plan을 변경하고 parentNotification를 호출하여 부모에게 알림
    func saveChange(plan: Plan, action: DbAction)
}
