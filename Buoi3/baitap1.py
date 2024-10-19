from pymongo import MongoClient
from datetime import datetime
client = MongoClient("mongodb://localhost:27017")
db=client['tiktok']
client.drop_database("tiktokABC")
user_collection=db["user"]
videos_collection=db['videos']
user_data=[{ 'user_id': 1, 'username': 'user1', 'full_name': 'Nguyen Van A', 'followers': 1500, 'following': 200 },
    { 'user_id': 2, 'username': 'user2', 'full_name': 'Tran Thi B', 'followers': 2000, 'following': 300 },
    { 'user_id': 3, 'username': 'user3', 'full_name': 'Le Van C', 'followers': 500, 'following': 100 }
]
user_collection.insert_many(user_data) 
videos_data = [
    { 'video_id': 1, 'user_id': 1, 'title': 'Video 1', 'views': 10000, 'likes': 500, 'created_at': datetime(2024, 1, 1) },
    { 'video_id': 2, 'user_id': 2, 'title': 'Video 2', 'views': 20000, 'likes': 1500, 'created_at': datetime(2024, 1, 5) },
    { 'video_id': 3, 'user_id': 3, 'title': 'Video 3', 'views': 5000, 'likes': 200, 'created_at': datetime(2024, 1, 10) }
]
videos_collection.insert_many(videos_data)  # Thêm dữ liệu video
print("all")
for user in user_collection.find():
    print(user)
#5.2 tìm video có view cao ác
mosted_viewed_video= videos_collection.find().sort("view",-1).limit(1)
for user in mosted_viewed_video:
    print(user)
#5.3
# 5.1: Xem tất cả người dùng
print("Tất cả người dùng:")
for user in user_collection.find():
    print(user)

# 5.2: Tìm video có nhiều lượt xem nhất
most_viewed_video = videos_collection.find().sort('views', -1).limit(1)
print("\nVideo có nhiều lượt xem nhất:")
for video in most_viewed_video:
    print(video)

# 5.3: Tìm tất cả video của người dùng có username là "user1"
print("\nTất cả video của người dùng 'user1':")
user_videos = videos_collection.find({'user_id': 1})
for video in user_videos:
    print(video)

# Bước 6: Cập nhật dữ liệu
# Cập nhật số người theo dõi của người dùng với `user_id` là 1 lên 2000
user_collection.update_one({'user_id': 1}, {'$set': {'followers': 2000}})

# Bước 7: Xóa video có `video_id` là 3
videos_collection.delete_one({'video_id': 3})

# Bước 8: Xem lại dữ liệu sau khi cập nhật và xóa
print("\nDữ liệu người dùng sau khi cập nhật:")
for user in user_collection.find():
    print(user)

print("\nDữ liệu video sau khi xóa:")
for video in videos_collection.find():
    print(video)