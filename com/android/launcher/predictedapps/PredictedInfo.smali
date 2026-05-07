.class public Lcom/android/launcher/predictedapps/PredictedInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "predicted_info"
.end annotation


# static fields
.field public static final COLUMN_COMPONENT:Ljava/lang/String; = "component"

.field public static final COLUMN_DISABLED:Ljava/lang/String; = "disable"

.field public static final COLUMN_DISABLE_TIME:Ljava/lang/String; = "disable_time"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LAUNCH_COUNT:Ljava/lang/String; = "launch_count"

.field public static final TABLE_NAME:Ljava/lang/String; = "predicted_info"


# instance fields
.field public mComponent:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "component"
    .end annotation
.end field

.field public mId:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field public mIgnoreTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "disable_time"
    .end annotation
.end field

.field public mIgnored:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "disable"
    .end annotation
.end field

.field public mLaunchCount:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "launch_count"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/android/launcher/predictedapps/PredictedInfo;
    .registers 4

    new-instance v0, Lcom/android/launcher/predictedapps/PredictedInfo;

    invoke-direct {v0}, Lcom/android/launcher/predictedapps/PredictedInfo;-><init>()V

    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher/predictedapps/PredictedInfo;->mId:I

    const-string v1, "component"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher/predictedapps/PredictedInfo;->mComponent:Ljava/lang/String;

    const-string v1, "launch_count"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher/predictedapps/PredictedInfo;->mLaunchCount:I

    const-string v1, "disable"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    iput-boolean v2, v0, Lcom/android/launcher/predictedapps/PredictedInfo;->mIgnored:Z

    const-string v1, "disable_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    int-to-long v1, p0

    iput-wide v1, v0, Lcom/android/launcher/predictedapps/PredictedInfo;->mIgnoreTime:J

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "PredictedInfo{mComponent=\'"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/predictedapps/PredictedInfo;->mComponent:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mLaunchCount="

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/predictedapps/PredictedInfo;->mLaunchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIgnored="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/predictedapps/PredictedInfo;->mIgnored:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIgnoreTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/launcher/predictedapps/PredictedInfo;->mIgnoreTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
