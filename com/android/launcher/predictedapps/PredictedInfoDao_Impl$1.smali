.class Lcom/android/launcher/predictedapps/PredictedInfoDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/predictedapps/PredictedInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/android/launcher/predictedapps/PredictedInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/predictedapps/PredictedInfoDao_Impl;


# direct methods
.method public constructor <init>(Lcom/android/launcher/predictedapps/PredictedInfoDao_Impl;Landroidx/room/RoomDatabase;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/predictedapps/PredictedInfoDao_Impl$1;->this$0:Lcom/android/launcher/predictedapps/PredictedInfoDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/android/launcher/predictedapps/PredictedInfo;)V
    .registers 6

    iget p0, p2, Lcom/android/launcher/predictedapps/PredictedInfo;->mId:I

    int-to-long v0, p0

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lcom/android/launcher/predictedapps/PredictedInfo;->mComponent:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p0, :cond_10

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_13

    :cond_10
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_13
    const/4 p0, 0x3

    iget v0, p2, Lcom/android/launcher/predictedapps/PredictedInfo;->mLaunchCount:I

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/launcher/predictedapps/PredictedInfo;->mIgnored:Z

    const/4 v0, 0x4

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x5

    iget-wide v0, p2, Lcom/android/launcher/predictedapps/PredictedInfo;->mIgnoreTime:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/android/launcher/predictedapps/PredictedInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/predictedapps/PredictedInfoDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/android/launcher/predictedapps/PredictedInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 1

    const-string p0, "INSERT OR ABORT INTO `predicted_info` (`_id`,`component`,`launch_count`,`disable`,`disable_time`) VALUES (nullif(?, 0),?,?,?,?)"

    return-object p0
.end method
